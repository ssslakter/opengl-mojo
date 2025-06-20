import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from typing import List, Optional, Dict, Set, Tuple
from urllib.request import urlopen


type_map = {
    'void': 'NoneType',
    'intptr_t': 'Int',
    'char': 'c_char',
    'unsigned char': 'c_uint',
    'int': 'c_int',
    'unsigned int': 'c_uint',
    'short': 'c_short',
    'unsigned short': 'c_ushort',
    'long': 'c_long',
    'long long': 'c_long_long',
    'size_t': 'c_size_t',
    'ssize_t': 'c_ssize_t',
    'float': 'c_float',
    'double': 'c_double',
    'uint8_t': 'UInt8',
    'Uint8': 'UInt8', 
    'uint16_t': 'UInt16',
    'Uint16': 'UInt16', 
    'uint32_t': 'UInt32',
    'Uint32': 'UInt32', 
    'uint64_t': 'UInt64',
    'Uint64': 'UInt64', 
    'int8_t': 'Int8',
    'Sint8': 'Int8', 
    'int16_t': 'Int16',
    'Sint16': 'Int16', 
    'int32_t': 'Int32',
    'Sint32': 'Int32', 
    'int64_t': 'Int64',
    'Sint64': 'Int64', 
    'bool': 'Bool',
    }



@dataclass
class Enum:
    name: str
    value: str
    group: Optional[str] = None
    comment: Optional[str] = None


@dataclass
class CommandParam:
    """Parameter of OpenGL command"""
    name: str
    param_type: str
    
    def __str__(self):
        return f'{self.name}: {self.param_type}'

@dataclass
class Command:
    """OpenGL command"""
    name: str
    return_type: str
    params: List[CommandParam] = field(default_factory=list)

    def __str__(self):
        return f'fn {self.name}({", ".join([str(p) for p in self.params])}) -> {self.return_type}'

@dataclass
class Enum:
    """OpenGL enum"""
    name: str
    value: str
    
    def __str__(self):
        return f'alias {self.name} = {self.value}'

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
        
        self.types: Dict[str, str] = {}
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
            name_elem = type_elem.find("name")
            if name_elem is not None and name_elem.text:
                self.types[name_elem.text] = type_elem.text or ''

    def parse_enums(self):
        for enum_elem in self.root.findall("enums/enum"):
            name = enum_elem.get("name")
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
            for param_elem in cmd_elem.findall("param"):
                param_name_elem = param_elem.find("name")
                param_name = param_name_elem.text if param_name_elem is not None else "NONAME"
                full_param_type = ET.tostring(param_elem, method='text', encoding='unicode').strip()
                params.append(CommandParam(name=param_name, param_type=full_param_type))

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


if __name__ == '__main__':
    URL = 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml'

    with urlopen(URL) as src:
        spec = src.read().decode('utf-8')
        root = ET.fromstring(spec)
    registry = OpenGLRegistry(root)
    
    with open('out.mojo', 'w') as f:
        for type in registry.types.values():
            f.write(f'{type}\n')
        for enum in registry.enums.values():
            f.write(f'{enum}\n')
        for cmd in registry.commands.values():
            f.write(f'{cmd}\n')