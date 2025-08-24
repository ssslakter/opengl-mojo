from pathlib import Path
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from typing import List, Optional, Dict, Set, Tuple
from urllib.request import urlopen
import re

type_map = {
    "void": "NoneType",
    "intptr_t": "c_size_t",
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
    "uint16_t": "UInt16",
    "uint32_t": "UInt32",
    "uint64_t": "UInt64",
    "int8_t": "Int8",
    "int16_t": "Int16",
    "int32_t": "Int32",
    "int64_t": "Int64",
}

# Extra useful groups (enums) that are not used in the commands from the specification
extra_groups = [
    "AlphaFunction",
    "AttribMask",
    "ContextFlagMask",
    "ContextProfileMask",
    "ConvolutionTargetEXT",
    "DepthStencilTextureMode",
    "FogCoordinatePointerType",
    "FogMode",
    "MatrixMode",
    "MeshMode1",
    "MeshMode2",
    "PathColorFormat",
    "PathFillMode",
    "PathFontStyle",
    "PathGenMode",
    "PathTransformType",
    "PixelCopyType",
    "SpecialNumbers",
    "TextureCompareMode",
    "TextureEnvMode",
    "TextureEnvParameter",
    "TextureMagFilter",
    "TextureMinFilter",
    "TextureSwizzle",
    "TextureWrapMode",
]


def to_snake_case(string: str) -> str:
    string = re.sub(r'(\d)D\b', r'_\1d', string)
    return re.sub(
        r"(?<=[a-z0-9])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])", "_", string
    ).lower()


@dataclass
class Type:
    name: str
    type: str
    ptr: bool = False
    struct: bool = False

    @classmethod
    def from_xml(cls, type_elem: ET.Element) -> "Type":
        """Factory method to create a Type from name and type string"""
        name = type_elem.find("name").text
        type_str = type_elem.text
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
class EnumItem:
    """OpenGL enum item"""

    name: str
    value: str
    groups: List[str] = field(default_factory=list)

    @classmethod
    def from_xml(cls, enum_elem: ET.Element) -> "EnumItem":
        name = enum_elem.get("name")
        value = enum_elem.get("value")
        return cls(
            name=name, value=value, groups=enum_elem.attrib.get("group", "").split(",")
        )

    @property
    def mojo_name(self):
        return self.name.removeprefix("GL_")

    def __str__(self):
        return f"alias {self.mojo_name} = {self.value}"


enums_template = """
@fieldwise_init
@register_passable('trivial')
struct {name}(Intable):
    var value: {dtype}
    
    {aliases}
    
    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)
"""


def generate_enum(name: str, registry: "OpenGLRegistry") -> str:
    if not name:
        return ""
    dtype = registry.current_groups[name]
    dtype = dtype.type if dtype else "GLenum"
    aliases = "\n    ".join(
        f"alias {e.mojo_name} = {name}({e.value})"
        for e in registry.enums.values()
        if name in e.groups
    )
    if not aliases:
        return ""
    res = enums_template.format(name=name, dtype=dtype, aliases=aliases)
    if dtype == "GLbitfield":
        res += """
    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)
"""
    return res


@dataclass
class CommandEl:
    """Element of OpenGL command"""

    type: str
    group: str


@dataclass
class ReturnType(CommandEl):
    """Return type of OpenGL command"""

    @classmethod
    def from_xml(cls, proto_el: ET.Element) -> "ReturnType":
        return cls(
            type=getattr(proto_el.find("ptype"), "text", None),
            group=proto_el.attrib.get("group"),
        )

    def __bool__(self):
        return bool(self.type)

    def __str__(self):
        return self.group or self.type


@dataclass
class CommandParam(CommandEl):
    """Parameter of OpenGL command"""

    name: str
    ptrs: int
    kind: str

    @classmethod
    def from_xml(cls, param_elem: ET.Element) -> "CommandParam":
        match_variable = re.compile(
            r"^\s*(?P<const_spec>const\s+)?(?P<type>(?:_cl_event|\w+))\s*(?P<raw_ptrs>.*?)\s*(?P<name>\w+)\s*;?\s*$"
        )
        match = match_variable.match(
            ET.tostring(param_elem, method="text", encoding="unicode")
            .replace("struct", "")
            .strip()
        )
        param_name = match.group("name")
        if param_name in ["ref", "in"]:
            param_name += "_"
        return cls(
            name=param_name,
            type=match.group("type"),
            ptrs=match.group("raw_ptrs") + (match.group("const_spec") or ""),
            group=param_elem.attrib.get("group"),
            kind=param_elem.attrib.get("kind"),
        )

    def to_mojo_arg(self, anon=False):
        """Converts command parameter to Mojo function argument"""
        if anon:
            return self.to_mojo_arg_inner()
        name = to_snake_case(self.name)
        type = self.to_mojo_arg_inner().split(": ")[1]
        if "GLchar" in type:
            type = re.sub(r"Ptr\[\s*GLchar[^\]]*\]", "String", type)
            name = 'owned ' + name
            if "Ptr" in type: 
                type = "List[String]"
            name = name.replace("owned", "mut")
            # name = name.replace("owned", "var") # changed in latest mojo version
        if type == "GLboolean":
            type = type.replace("GLboolean", "Bool")
        return f"{name}: {type}"

    def to_mojo_arg_inner(self):
        """Converts command parameter to Mojo function argument"""
        type = self.group or type_map.get(self.type, self.type)
        if not self.ptrs:
            return f"{to_snake_case(self.name)}: {type}"
        ptr_tokens = re.findall(r"\*\s*(const)?", self.ptrs)
        for const_modifier in reversed(ptr_tokens):
            is_mutable = not bool(const_modifier)
            type = f"Ptr[{type}, mut = {is_mutable}]"
        return f"{to_snake_case(self.name)}: {type}"

    def get_call_expr(self) -> str:
        """Returns the expression for calling the function pointer"""
        snake_name = to_snake_case(self.name)
        if "GLchar" in self.type:
            return f"{snake_name}.unsafe_cstr_ptr()"
        if "Bool" in self.to_mojo_arg():
            return f"GLboolean(Int({snake_name}))"
        return snake_name


@dataclass
class Command:
    """OpenGL command"""

    name: str
    return_type: ReturnType
    params: List[CommandParam] = field(default_factory=list)

    @classmethod
    def from_xml(cls, cmd_elem: ET.Element) -> "Command":
        proto_elem = cmd_elem.find("proto")
        if proto_elem is None:
            raise ValueError(f"Command {cmd_elem.find('name').text} has no proto")

        return_type = ReturnType.from_xml(proto_elem)

        params = [
            CommandParam.from_xml(param_elem)
            for param_elem in cmd_elem.findall("param")
        ]
        return cls(
            name=proto_elem.find("name").text, return_type=return_type, params=params
        )

    def __str__(self):
        """Converts command to Mojo function declaration"""
        return f"""
@always_inline
{self._fn_str()}:{self.fn_body()}
    """

    def _fn_str(self, anon=False):
        res = "fn"
        if not anon:
            res += f" {self.mojo_name()}"
        res += f"({', '.join(p.to_mojo_arg(anon=anon) for p in self.params)})"
        if self.return_type:
            res += f" -> {self.return_type}"
        return res
    
    def fn_body(self):
        call_args = [p.get_call_expr() for p in self.params]
        str_list = [p for p in self.params if 'List' in p.to_mojo_arg()]
        if not str_list: return f'return _{self.name}_ptr.get_or_create_ptr()[]({', '.join(call_args)})'
        str_list = str_list[0]
        call_args[call_args.index(str_list.get_call_expr())] = 'c_list.steal_data().origin_cast[mut=False, origin=ImmutableAnyOrigin]()'
        return f'''\n    var c_list = [str.unsafe_cstr_ptr().origin_cast[origin=ImmutableAnyOrigin]() for ref str in {to_snake_case(str_list.name)}]
    return _{self.name}_ptr.get_or_create_ptr()[]({', '.join(call_args)})
    '''

    def fn_global(self):
        return f"alias _{self.name}_ptr = _Global['{self.name}', {self.ptr_name()}, init_fn_ptr[{self.ptr_name()}]]()"

    def ptr_name(self):
        return f"fptr_{self.name}"

    def ptr_decl(self):
        return f"alias {self.ptr_name()} = {self._fn_str(anon=True)}"

    def mojo_name(self):
        return f"{to_snake_case(self.name.removeprefix('gl'))}"

    def fn_init(self):
        return f"_{self.name}_ptr.get_or_create_ptr()[] = load_proc[{self.ptr_name()}]('{self.name}', load)"


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

    def init_fns(self, registry: "OpenGLRegistry") -> str:
        return f'''
fn init_{self.name.lower()}(load: LoadProc) raises:
    {'\n    '.join(f.fn_init() for f in registry.current_commands if f.name in self.require)}
    '''


def parse_types(root: ET.Element) -> Dict[str, Type]:
    types = {}
    for type_elem in root.findall("types/type"):
        # Skip vendor extension types
        if type_elem.find("apientry") is not None:
            continue
        name_elem = type_elem.find("name")
        if name_elem is not None and name_elem.text:
            type = Type.from_xml(type_elem)
            types[type.name] = type
    return types


class OpenGLRegistry:
    def __init__(self, root: ET.Element):
        self.apis = set(feat.attrib["api"] for feat in root.findall("feature"))

        self.types = parse_types(root)
        self.enums = {
            enum.name: enum
            for enum in [
                EnumItem.from_xml(enum_elem) for enum_elem in root.findall("enums/enum")
            ]
        }
        self.commands = {
            cmd.name: cmd
            for cmd in [
                Command.from_xml(cmd_elem)
                for cmd_elem in root.findall("commands/command")
            ]
        }
        self.features = {
            api: [
                Feature.from_xml(feat)
                for feat in root.findall(f"feature[@api='{api}']")
            ]
            for api in self.apis
        }
        self.fix_features_require()
        self.current_features: List[Feature] = []
        self.current_commands: List[Command] = []
        self.current_groups: Dict[str, CommandEl] = {}
        self.current_types: List[Type] = []

    def fix_features_require(self):
        """Remove duplicate require in features"""
        for api, feats in self.features.items():
            all_symbols = set()
            res = []
            for f in sorted(feats, key=lambda x: x.number):
                f.require -= all_symbols
                all_symbols.update(f.require)
                res.append(f)
            self.features[api] = res

    def select_opengl_symbols(self, api: str, version: str = None, core: bool = True):
        """Select OpenGL symbols for a given API and version"""
        if api not in self.features:
            raise ValueError(
                f"API {api} does not exist, valid APIs are {', '.join(self.features.keys())}"
            )
        if not version:
            version = self.features[api][-1].number
        features = [f for f in self.features[api] if f.number <= version]
        res = sum(features, start=features[0])
        if core:
            res.require -= res.remove
        self.current_features = features
        self.current_commands = [
            cmd for cmd in self.commands.values() if cmd.name in res.require
        ]
        self.current_groups = {
            cmp.group: cmp
            for cmd in self.current_commands
            for cmp in cmd.params + [cmd.return_type]
            if cmp.group
        }
        self.current_groups.update({g: None for g in extra_groups})
        types = set(
            p.type
            for cmd in self.current_commands
            for p in [*cmd.params, cmd.return_type]
        )
        self.current_types = [self.types[t] for t in types if t in self.types]


def generate_mojo_file(registry: OpenGLRegistry, path: str):
    with open(path, "w") as f:
        f.write(
            """
# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #
"""
        )

        f.write(
            """
from memory import UnsafePointer
alias Ptr = UnsafePointer
alias OpaquePointer = UnsafePointer[NoneType]

from sys.ffi import _Global, c_char, c_int, c_uint, c_short, c_ushort, c_size_t, c_ssize_t, c_float, c_double

# ========= TYPES =========\n\n"""
        )
        for type in sorted(registry.current_types, key=lambda x: x.name):
            f.write(f"{type}\n")
        f.write(
            """
alias GLDEBUGPROC = fn(source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)
"""
        )
        f.write(
            """
# ========= ENUMS =========\n\n"""
        )
        for group in sorted(registry.current_groups):
            f.write(generate_enum(group, registry))
        f.write(
            f"""
# ========= COMMANDS =========

alias LoadProc  = fn(var proc: String) -> fn() -> None

@always_inline
fn load_proc[result_type: AnyTrivialRegType](name: String, load: LoadProc) raises -> result_type:
    var ptr = Ptr(to=load(name))
    if not ptr:
        raise Error("Failed to load function " + name)
    return ptr.bitcast[result_type]()[]
    
fn init_fn_ptr[T: AnyTrivialRegType]() -> T:
    return Ptr(to=UnsafePointer[NoneType]()).bitcast[T]()[]
"""
        )
        ptr_decls = [func.ptr_decl() for func in registry.current_commands]
        fn_globals = [func.fn_global() for func in registry.current_commands]
        func_strs = [str(func) for func in registry.current_commands]

        f.write("\n".join(ptr_decls) + "\n\n")
        f.write("\n".join(fn_globals) + "\n\n")
        f.write("\n".join(func_strs) + "\n")

        for feat in registry.current_features:
            f.write(feat.init_fns(registry))

        f.write(
            f"""
# ========= INIT =========
fn init_opengl(load: LoadProc) raises:
    {'\n    '.join([f'init_{feat.name.lower()}(load)' for feat in registry.current_features])}
    """
        )


if __name__ == "__main__":
    URL = "https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml"
    OUT_FILE = Path("out/gl.mojo")
    OUT_DIR = OUT_FILE.parent
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with open(OUT_DIR / "__init__.mojo", "w") as f:
        f.write(f"from .gl import *\n")

    print("Fetching OpenGL registry...")
    with urlopen(URL) as src:
        spec = src.read().decode("utf-8")
        root = ET.fromstring(spec)

    registry = OpenGLRegistry(root)
    print("Resolving OpenGL symbols...")
    registry.select_opengl_symbols("gl", "4.6", core=True)

    print(f"Generating Mojo bindings to {OUT_FILE}...")
    generate_mojo_file(registry, OUT_FILE)
    print("Done.")
