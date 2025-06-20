import xml.etree.ElementTree as ET
from urllib.request import urlopen

URL = 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml'

with urlopen(URL) as src:
    spec = src.read().decode('utf-8')
    root = ET.fromstring(spec)
    
    

def translate_enum_value(val: ET.Element):
    return f'alias {val.attrib["name"]} = {val.attrib["value"]}'
    
def translate_enum(el: ET.Element) -> str:
    # TODO research if enums without group have useful ones
    if 'group' not in el.attrib:
        return ''
    name = el.attrib['group']
    body = '\n    '.join([translate_enum_value(val) for val in el.findall('enum')])
    return (
f'''
@register_passable("trivial")
struct {name}:
    var value: UInt32

    @always_inline
    fn __init__(out self, value: Int):
        self.value = value

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    {body}
''')
    


def get_core(root: ET.Element):
    for parent in root.findall(".//extension/.."):
        for ext in parent.findall("extension"):
            parent.remove(ext)
    return root
    

def translate_specs(out_file: str):
    with open(out_file, 'w') as f:
        core = get_core(root)
        for child in core:
            if child.tag == 'enums':
                f.write(translate_enum(child))


translate_specs('out.mojo')