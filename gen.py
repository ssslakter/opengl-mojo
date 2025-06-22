# %%
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from typing import List, Optional, Dict, Set, Tuple
from urllib.request import urlopen
import re

type_map = {
    "void": "NoneType",
    "intptr_t": "Int",
    "char": "c_char",
    "unsigned char": "c_uint",
    "int": "c_int",
    "unsigned int": "c_uint",
    "short": "c_short",
    "unsigned short": "c_ushort",
    "long": "c_long",
    "long long": "c_long_long",
    "size_t": "c_size_t",
    "ssize_t": "c_ssize_t",
    "float": "c_float",
    "float_t": "c_float",
    "double": "c_double",
    "uint8_t": "UInt8",
    "Uint8": "UInt8",
    "uint16_t": "UInt16",
    "Uint16": "UInt16",
    "uint32_t": "UInt32",
    "Uint32": "UInt32",
    "uint64_t": "UInt64",
    "Uint64": "UInt64",
    "int8_t": "Int8",
    "Sint8": "Int8",
    "int16_t": "Int16",
    "Sint16": "Int16",
    "int32_t": "Int32",
    "Sint32": "Int32",
    "int64_t": "Int64",
    "Sint64": "Int64",
    "bool": "Bool",
}

def to_camel_case(s: str) -> str:
    return s[0].lower() + s[1:] if s else s


@dataclass
class Type:
    name: str
    type: str
    ptr: bool = False
    struct: bool = False

    @classmethod
    def from_string(cls, name: str, type_str: str) -> "Type":
        """Factory method to create a Type from name and type string"""
        if not type_str and "struct" in name:
            clean_name = name.replace("struct ", "")
            return cls(name=clean_name, type="", struct=True)

        type_str = type_str.replace("typedef ", "").replace("khronos_", "").strip()
        type_str = re.sub(r"void\s*\*", "OpaquePointer", type_str)

        if "struct" in type_str:
            clean_type = type_str.replace("struct ", "").replace("*", "").strip()
            is_ptr = "*" in type_str
            return cls(name=name, type=clean_type, struct=True, ptr=is_ptr)

        return cls(name=name, type=type_map.get(type_str, type_str))

    def __str__(self):
        template = '''
@fieldwise_init
struct {name}(Copyable, Movable):
    """An opaque handle to a {name}."""
    pass
'''
        if self.ptr and self.struct:
            res = template.format(name=self.type)
            res += f"\nalias {self.name} = Ptr[{self.type}]"
            return res
        if self.struct:
            return template.format(name=self.name)
        return f"alias {self.name} = {self.type}"


@dataclass
class Enum:
    """OpenGL enum"""

    name: str
    value: str

    def __str__(self):
        return f"alias {self.name} = {self.value}"


@dataclass
class CommandParam:
    """Parameter of OpenGL command"""

    name: str
    type: str
    mut: bool
    ptrs: int
    vecs: Optional[str] = None

    def __str__(self):
        """Converts command parameter to Mojo function argument"""
        type = type_map.get(self.type, self.type)
        if self.ptrs > 0:
            type = f"Ptr[{type}]"
        return f"{self.name}: {type}"


@dataclass
class Command:
    """OpenGL command"""

    name: str
    return_type: str
    params: List[CommandParam] = field(default_factory=list)

    def __str__(self):
        """Converts command to Mojo function declaration"""
        res = (
            f'alias {self.ptr_name()} = fn({", ".join([str(p) for p in self.params])})'
        )
        if self.return_type != "void":
            res += f" -> {self.return_type}"
        return res

    def ptr_name(self): return f"fptr_{self.name}"
    def var_name(self): return to_camel_case(self.name[2:])
    def load_code(self):
        return f"{self.var_name()} = self.load_proc('{self.name}', load).bitcast[{self.ptr_name()}]()[]"


@dataclass
class Feature:
    """OpenGL feature"""

    api: str
    name: str
    number: str
    require: Set[str] = field(default_factory=set)
    remove: Set[str] = field(default_factory=set)

    @classmethod
    def from_xml(cls, xml: ET.Element) -> "Feature":
        require = set(el.attrib.get("name") for el in xml.findall("require/*"))
        remove = set(el.attrib.get("name") for el in xml.findall("remove/*"))
        return cls(
            api=xml.attrib.get("api"),
            name=xml.attrib.get("name"),
            number=xml.attrib.get("number"),
            require=require,
            remove=remove,
        )

    def __add__(self, other: "Feature") -> "Feature":
        assert self.api == other.api
        return Feature(
            api=self.api,
            name=self.name,
            number=self.number,
            require=self.require | other.require,
            remove=self.remove | other.remove,
        )


# %%
class OpenGLRegistry:
    def __init__(self, root: ET.Element):
        self.root = root
        self.apis = set(feat.attrib["api"] for feat in root.findall("feature"))

        self.types: Dict[str, Type] = {}
        self.enums: Dict[str, Enum] = {}
        self.commands: Dict[str, Command] = {}
        self.features = {
            api: [
                Feature.from_xml(feat)
                for feat in root.findall(f"feature[@api='{api}']")
            ]
            for api in self.apis
        }

        print("Parsing XML...")
        self.parse_types()
        self.parse_enums()
        self.parse_commands()
        print("Done.")

    def parse_types(self):
        for type_elem in self.root.findall("types/type"):
            # Skip vendor extension types
            if type_elem.find("apientry") is not None:
                continue
            name_elem = type_elem.find("name")
            if name_elem is not None and name_elem.text:
                self.types[name_elem.text] = Type.from_string(
                    name_elem.text, type_elem.text
                )

    def parse_enums(self):
        for enum_elem in self.root.findall("enums/enum"):
            name = enum_elem.attrib.get("alias") or enum_elem.get("name")
            value = enum_elem.get("value")
            if name and value:
                self.enums[name] = Enum(name=name, value=value)

    def parse_commands(self):
        for cmd_elem in self.root.findall("commands/command"):
            proto_elem = cmd_elem.find("proto")
            if proto_elem is None:
                continue

            name_elem = proto_elem.find("name")
            ptype_elem = proto_elem.find("ptype")

            name = name_elem.text if name_elem is not None else "NONAME"
            return_type = ptype_elem.text if ptype_elem is not None else "void"

            params = []
            # FIXME: I think const pointers must be handled differently
            match_variable = re.compile(
                r"^(?P<mut>const )?(?P<type>\w+)\s*(?P<ptrs>(?:\*const|\*)*)\s*(?P<name>\w+?)(?:\[(?P<vecs>.*?)\])?$"
            )
            for param_elem in cmd_elem.findall("param"):
                param_name_elem = param_elem.find("name")
                param_name = (
                    param_name_elem.text if param_name_elem is not None else "NONAME"
                )
                match = match_variable.match(
                    ET.tostring(param_elem, method="text", encoding="unicode")
                    .replace("struct", "")
                    .strip()
                )
                if param_name in ["ref", "in"]:
                    param_name += "_"
                vecs_group = match.group("vecs")
                params.append(
                    CommandParam(
                        name=param_name,
                        type=match.group("type"),
                        mut=match.group("mut") is not None,
                        ptrs=match.group("ptrs").count("*"),
                        vecs=vecs_group if vecs_group else None,
                    )
                )

            self.commands[name] = Command(
                name=name, return_type=return_type, params=params
            )


# %%
URL = "https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml"

with urlopen(URL) as src:
    spec = src.read().decode("utf-8")
    root = ET.fromstring(spec)

registry = OpenGLRegistry(root)


def resolve_opengl_symbols(
    api: str, version: str = None, core: bool = True
) -> Set[str]:
    """Resolve OpenGL symbols for a given API and version"""
    features = registry.features
    if api not in features:
        raise ValueError(
            f"API {api} does not exist, valid APIs are {', '.join(features.keys())}"
        )
    if not version:
        version = features[api][-1].number
    feat = sum(
        (f for f in features[api] if f.number <= version), start=features[api][0]
    )
    if core:
        feat.require -= feat.remove
    return feat.require


# %%
symbols = resolve_opengl_symbols("gl", "4.6", core=True)
# %%

with open("out.mojo", "w") as f:
    f.write(
        """
# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #
"""
    )

    f.write(
        """
from sys.info import os_is_macos
from memory import UnsafePointer
alias Ptr = UnsafePointer
alias OpaquePointer = UnsafePointer[NoneType]

from sys.ffi import _Global, _OwnedDLHandle, _get_dylib_function, c_char, c_uchar, c_int, c_uint, c_short, c_ushort, c_long, c_long_long, c_size_t, c_ssize_t, c_float, c_double

# ========= TYPES =========\n\n"""
    )
    for type in registry.types.values():
        f.write(f"{type}\n")
    f.write(
        """
# TODO: fix this
#@parameter
#if os_is_macos():
#    alias GLhandleARB = OpaquePointer
#else:
#alias GLhandleARB = c_uint
#alias GLVULKANPROCNV = OpaquePointer
alias GLDEBUGPROC = fn(source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)
"""
    )
    f.write(
        """
# ========= ENUMS =========\n\n"""
    )
    for name, enum in registry.enums.items():
        if name not in symbols:
            continue
        f.write(f"{enum}\n")
    f.write(
        """
# ========= COMMANDS =========\n\n"""
    )
    commands = [cmd for cmd in registry.commands.values() if cmd.name in symbols]
    for cmd in commands:
        f.write(f"{cmd}\n")
    funcs = "\n".join([f"    var {cmd.var_name()}: {cmd.ptr_name()}" for cmd in commands])
    f.write(
       f''' 
alias LoadProc  = fn(owned proc: String) -> fn() -> None

@register_passable
struct GLFuncs:
    """Functions for OpenGL."""
{funcs}

    fn __init__(out self, load: LoadProc) raises:
        self.{'\n        self.'.join([cmd.load_code() for cmd in commands])}

    @staticmethod
    fn load_proc(name: String, load: LoadProc) raises -> OpaquePointer:
        ptr = Ptr(to=load(name))
        if not ptr:
            raise Error(String("Failed to load function {{}}").format(name))
        return ptr.bitcast[NoneType]()
'''
    )
