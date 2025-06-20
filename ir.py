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


@dataclass
class Type:
    name: str
    type: str

    def __str__(self):
        if "TODO" in self.type:
            return f"# alias {self.name} = {self.type}"
        return f"alias {self.name} = {self.type}"

    @classmethod
    def init(cls, name: str, type_str: str):
        if not type_str:
            return cls(name=name, type="")
        type_str = type_str.replace("typedef ", "").replace("khronos_", "")
        return cls(name=name, type=type_map.get(type_str.strip(), "#TODO"))


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
    vecs: List[int]

    def __str__(self):
        type = type_map.get(self.type, self.type)
        if self.ptrs>0: type = f"Ptr[{type}]"
        return f"{self.name}: {type}"


@dataclass
class Command:
    """OpenGL command"""
    name: str
    return_type: str
    params: List[CommandParam] = field(default_factory=list)

    def __str__(self):
        res = f'fn {self.name}({", ".join([str(p) for p in self.params])})'
        if self.return_type != "void":
            res += f" -> {self.return_type}"
        res += ":\n"
        res += f"    pass\n"
        return res


@dataclass
class Feature:
    """OpenGL feature"""
    api: str
    name: str
    number: str
    required_enums: Set[str] = field(default_factory=set)
    required_commands: Set[str] = field(default_factory=set)
    removed_enums: Set[str] = field(default_factory=set)
    removed_commands: Set[str] = field(default_factory=set)


class OpenGLRegistry:
    def __init__(self, root: ET.Element):
        self.root = root

        self.types: Dict[str, Type] = {}
        self.enums: Dict[str, Enum] = {}
        self.commands: Dict[str, Command] = {}
        self.features: Dict[str, Feature] = {}

        print("Parsing XML...")
        self.parse_types()
        self.parse_enums()
        self.parse_commands()
        self.parse_features()
        print("Done.")

    def parse_types(self):
        for type_elem in self.root.findall("types/type"):
            # Skip vendor extension types
            if type_elem.find("apientry") is not None:
                continue
            name_elem = type_elem.find("name")
            if name_elem is not None and name_elem.text:
                self.types[name_elem.text] = Type.init(name_elem.text, type_elem.text)

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
                r"^(?P<mut>const )?(?P<type>.+) (?P<ptrs>(?:\*const|\*)*)(?P<name>\w+?)(?:\[(?P<vecs>.*?)\])?$"
            )
            for param_elem in cmd_elem.findall("param"):
                param_name_elem = param_elem.find("name")
                param_name = (
                    param_name_elem.text if param_name_elem is not None else "NONAME"
                )
                match = match_variable.match(
                    ET.tostring(param_elem, method="text", encoding="unicode").strip()
                )
                if param_name == 'ref': param_name = 'ref_'
                params.append(
                    CommandParam(
                        name=param_name,
                        type=match.group("type"),
                        mut=match.group("mut") is not None,
                        ptrs=match.group("ptrs").count("*"),
                        vecs=match.group("vecs"),
                    )
                )

            self.commands[name] = Command(name=name, return_type=return_type, params=params)


    def parse_features(self):
        for feature_elem in self.root.findall("feature"):
            name = feature_elem.get("name")
            api = feature_elem.get("api")
            number = feature_elem.get("number")

            if not (name and api and number):
                continue

            feature = Feature(api=api, name=name, number=number)

            for require_elem in feature_elem.findall("require"):
                for enum_elem in require_elem.findall("enum"):
                    feature.required_enums.add(enum_elem.get("name"))
                for cmd_elem in require_elem.findall("command"):
                    feature.required_commands.add(cmd_elem.get("name"))

            for remove_elem in feature_elem.findall("remove"):
                if remove_elem.get("profile") == "core":
                    for enum_elem in remove_elem.findall("enum"):
                        feature.removed_enums.add(enum_elem.get("name"))
                    for cmd_elem in remove_elem.findall("command"):
                        feature.removed_commands.add(cmd_elem.get("name"))

            self.features[name] = feature


URL = "https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml"

with urlopen(URL) as src:
    spec = src.read().decode("utf-8")
    root = ET.fromstring(spec)
registry = OpenGLRegistry(root)

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

alias Ptr = stdlib.memory.UnsafePointer        
        
from sys.ffi import _Global, _OwnedDLHandle, _get_dylib_function, c_char, c_uchar, c_int, c_uint, c_short, c_ushort, c_long, c_long_long, c_size_t, c_ssize_t, c_float, c_double

# ========= TYPES =========\n\n"""
    )
    for type in registry.types.values():
        f.write(f"{type}\n")
    f.write(
        """
# ========= ENUMS =========\n\n"""
    )
    for enum in registry.enums.values():
        f.write(f"{enum}\n")
    f.write(
        """
# ========= COMMANDS =========\n\n"""
    )
    for cmd in registry.commands.values():
        f.write(f"{cmd}\n")
