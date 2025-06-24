from memory import UnsafePointer
from sys import sizeof
import sdl
from opengl import *


def main():
    sdl.init(sdl.InitFlags.INIT_VIDEO | sdl.InitFlags.INIT_EVENTS)
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_PROFILE_MASK, Int(sdl.GLProfile.GL_CONTEXT_PROFILE_CORE))
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_MAJOR_VERSION, 4)
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_MINOR_VERSION, 2)
    sdl.gl_set_attribute(sdl.GLAttr.GL_DOUBLEBUFFER, 1)
    
    window = sdl.create_window("SDL Window", 1024, 768, sdl.WindowFlags.WINDOW_RESIZABLE | sdl.WindowFlags.WINDOW_OPENGL | sdl.WindowFlags.WINDOW_TRANSPARENT)

    context = sdl.gl_create_context(window)
    if not context:
        raise Error("Failed to create OpenGL context. Unsupported OpenGL version.")
    
    sdl.gl_make_current(window, context)

    init_opengl(sdl.gl_get_proc_address)
    
    gl.viewport(0, 0, 1024, 768)
    
    var running = True
    while running:
        var event = sdl.Event(UInt32(0))
        while sdl.poll_event(Ptr(to=event)):
            if event[sdl.CommonEvent].type == Int(sdl.EventType.EVENT_QUIT):
                running = False
                break
        
        gl.clear_color(0.1, 0.2, 0.5, .5)
        gl.clear(ClearBufferMask.COLOR_BUFFER_BIT)
        sdl.gl_swap_window(window)
    

    sdl.quit()
