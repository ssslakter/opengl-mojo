# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #

from sys.info import os_is_macos
from memory import UnsafePointer

alias Ptr = UnsafePointer
alias OpaquePointer = UnsafePointer[NoneType]

from sys.ffi import _Global, c_char, c_int, c_uint, c_short, c_ushort, c_size_t, c_ssize_t, c_float, c_double

# ========= TYPES =========

alias GLbitfield = c_uint
alias GLboolean = c_uint
alias GLbyte = Int8
alias GLchar = c_char
alias GLdouble = c_double
alias GLenum = c_uint
alias GLfloat = c_float
alias GLint = c_int
alias GLint64 = Int64
alias GLintptr = c_size_t
alias GLshort = Int16
alias GLsizei = c_int
alias GLsizeiptr = c_ssize_t


@fieldwise_init
struct __GLsync(Copyable, Movable):
    """An opaque handle to a __GLsync."""

    pass


alias GLsync = Ptr[__GLsync]
alias GLubyte = UInt8
alias GLuint = c_uint
alias GLuint64 = UInt64
alias GLushort = UInt16

alias GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)

# ========= ENUMS =========


@fieldwise_init
@register_passable("trivial")
struct AlphaFunction(Intable):
    var value: GLenum

    alias NEVER = AlphaFunction(0x0200)
    alias LESS = AlphaFunction(0x0201)
    alias EQUAL = AlphaFunction(0x0202)
    alias LEQUAL = AlphaFunction(0x0203)
    alias GREATER = AlphaFunction(0x0204)
    alias NOTEQUAL = AlphaFunction(0x0205)
    alias GEQUAL = AlphaFunction(0x0206)
    alias ALWAYS = AlphaFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AtomicCounterBufferPName(Intable):
    var value: GLenum

    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = AtomicCounterBufferPName(0x90ED)
    alias ATOMIC_COUNTER_BUFFER_BINDING = AtomicCounterBufferPName(0x92C1)
    alias ATOMIC_COUNTER_BUFFER_DATA_SIZE = AtomicCounterBufferPName(0x92C4)
    alias ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = AtomicCounterBufferPName(0x92C5)
    alias ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = AtomicCounterBufferPName(0x92C6)
    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = AtomicCounterBufferPName(0x92C7)
    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = AtomicCounterBufferPName(0x92C8)
    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = AtomicCounterBufferPName(0x92C9)
    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = AtomicCounterBufferPName(0x92CA)
    alias ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = AtomicCounterBufferPName(0x92CB)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AttribMask(Intable):
    var value: GLenum

    alias CURRENT_BIT = AttribMask(0x00000001)
    alias POINT_BIT = AttribMask(0x00000002)
    alias LINE_BIT = AttribMask(0x00000004)
    alias POLYGON_BIT = AttribMask(0x00000008)
    alias POLYGON_STIPPLE_BIT = AttribMask(0x00000010)
    alias PIXEL_MODE_BIT = AttribMask(0x00000020)
    alias LIGHTING_BIT = AttribMask(0x00000040)
    alias FOG_BIT = AttribMask(0x00000080)
    alias DEPTH_BUFFER_BIT = AttribMask(0x00000100)
    alias ACCUM_BUFFER_BIT = AttribMask(0x00000200)
    alias STENCIL_BUFFER_BIT = AttribMask(0x00000400)
    alias VIEWPORT_BIT = AttribMask(0x00000800)
    alias TRANSFORM_BIT = AttribMask(0x00001000)
    alias ENABLE_BIT = AttribMask(0x00002000)
    alias COLOR_BUFFER_BIT = AttribMask(0x00004000)
    alias HINT_BIT = AttribMask(0x00008000)
    alias EVAL_BIT = AttribMask(0x00010000)
    alias LIST_BIT = AttribMask(0x00020000)
    alias TEXTURE_BIT = AttribMask(0x00040000)
    alias SCISSOR_BIT = AttribMask(0x00080000)
    alias MULTISAMPLE_BIT = AttribMask(0x20000000)
    alias MULTISAMPLE_BIT_ARB = AttribMask(0x20000000)
    alias MULTISAMPLE_BIT_EXT = AttribMask(0x20000000)
    alias MULTISAMPLE_BIT_3DFX = AttribMask(0x20000000)
    alias ALL_ATTRIB_BITS = AttribMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AttributeType(Intable):
    var value: GLenum

    alias INT = AttributeType(0x1404)
    alias UNSIGNED_INT = AttributeType(0x1405)
    alias FLOAT = AttributeType(0x1406)
    alias DOUBLE = AttributeType(0x140A)
    alias INT64_ARB = AttributeType(0x140E)
    alias INT64_NV = AttributeType(0x140E)
    alias UNSIGNED_INT64_ARB = AttributeType(0x140F)
    alias UNSIGNED_INT64_NV = AttributeType(0x140F)
    alias FLOAT_VEC2 = AttributeType(0x8B50)
    alias FLOAT_VEC2_ARB = AttributeType(0x8B50)
    alias FLOAT_VEC3 = AttributeType(0x8B51)
    alias FLOAT_VEC3_ARB = AttributeType(0x8B51)
    alias FLOAT_VEC4 = AttributeType(0x8B52)
    alias FLOAT_VEC4_ARB = AttributeType(0x8B52)
    alias INT_VEC2 = AttributeType(0x8B53)
    alias INT_VEC2_ARB = AttributeType(0x8B53)
    alias INT_VEC3 = AttributeType(0x8B54)
    alias INT_VEC3_ARB = AttributeType(0x8B54)
    alias INT_VEC4 = AttributeType(0x8B55)
    alias INT_VEC4_ARB = AttributeType(0x8B55)
    alias BOOL = AttributeType(0x8B56)
    alias BOOL_ARB = AttributeType(0x8B56)
    alias BOOL_VEC2 = AttributeType(0x8B57)
    alias BOOL_VEC2_ARB = AttributeType(0x8B57)
    alias BOOL_VEC3 = AttributeType(0x8B58)
    alias BOOL_VEC3_ARB = AttributeType(0x8B58)
    alias BOOL_VEC4 = AttributeType(0x8B59)
    alias BOOL_VEC4_ARB = AttributeType(0x8B59)
    alias FLOAT_MAT2 = AttributeType(0x8B5A)
    alias FLOAT_MAT2_ARB = AttributeType(0x8B5A)
    alias FLOAT_MAT3 = AttributeType(0x8B5B)
    alias FLOAT_MAT3_ARB = AttributeType(0x8B5B)
    alias FLOAT_MAT4 = AttributeType(0x8B5C)
    alias FLOAT_MAT4_ARB = AttributeType(0x8B5C)
    alias SAMPLER_1D = AttributeType(0x8B5D)
    alias SAMPLER_1D_ARB = AttributeType(0x8B5D)
    alias SAMPLER_2D = AttributeType(0x8B5E)
    alias SAMPLER_2D_ARB = AttributeType(0x8B5E)
    alias SAMPLER_3D = AttributeType(0x8B5F)
    alias SAMPLER_3D_ARB = AttributeType(0x8B5F)
    alias SAMPLER_3D_OES = AttributeType(0x8B5F)
    alias SAMPLER_CUBE = AttributeType(0x8B60)
    alias SAMPLER_CUBE_ARB = AttributeType(0x8B60)
    alias SAMPLER_1D_SHADOW = AttributeType(0x8B61)
    alias SAMPLER_1D_SHADOW_ARB = AttributeType(0x8B61)
    alias SAMPLER_2D_SHADOW = AttributeType(0x8B62)
    alias SAMPLER_2D_SHADOW_ARB = AttributeType(0x8B62)
    alias SAMPLER_2D_SHADOW_EXT = AttributeType(0x8B62)
    alias SAMPLER_2D_RECT = AttributeType(0x8B63)
    alias SAMPLER_2D_RECT_ARB = AttributeType(0x8B63)
    alias SAMPLER_2D_RECT_SHADOW = AttributeType(0x8B64)
    alias SAMPLER_2D_RECT_SHADOW_ARB = AttributeType(0x8B64)
    alias FLOAT_MAT2x3 = AttributeType(0x8B65)
    alias FLOAT_MAT2x3_NV = AttributeType(0x8B65)
    alias FLOAT_MAT2x4 = AttributeType(0x8B66)
    alias FLOAT_MAT2x4_NV = AttributeType(0x8B66)
    alias FLOAT_MAT3x2 = AttributeType(0x8B67)
    alias FLOAT_MAT3x2_NV = AttributeType(0x8B67)
    alias FLOAT_MAT3x4 = AttributeType(0x8B68)
    alias FLOAT_MAT3x4_NV = AttributeType(0x8B68)
    alias FLOAT_MAT4x2 = AttributeType(0x8B69)
    alias FLOAT_MAT4x2_NV = AttributeType(0x8B69)
    alias FLOAT_MAT4x3 = AttributeType(0x8B6A)
    alias FLOAT_MAT4x3_NV = AttributeType(0x8B6A)
    alias SAMPLER_BUFFER = AttributeType(0x8DC2)
    alias SAMPLER_1D_ARRAY_SHADOW = AttributeType(0x8DC3)
    alias SAMPLER_2D_ARRAY_SHADOW = AttributeType(0x8DC4)
    alias SAMPLER_CUBE_SHADOW = AttributeType(0x8DC5)
    alias UNSIGNED_INT_VEC2 = AttributeType(0x8DC6)
    alias UNSIGNED_INT_VEC3 = AttributeType(0x8DC7)
    alias UNSIGNED_INT_VEC4 = AttributeType(0x8DC8)
    alias INT_SAMPLER_1D = AttributeType(0x8DC9)
    alias INT_SAMPLER_2D = AttributeType(0x8DCA)
    alias INT_SAMPLER_3D = AttributeType(0x8DCB)
    alias INT_SAMPLER_CUBE = AttributeType(0x8DCC)
    alias INT_SAMPLER_2D_RECT = AttributeType(0x8DCD)
    alias INT_SAMPLER_1D_ARRAY = AttributeType(0x8DCE)
    alias INT_SAMPLER_2D_ARRAY = AttributeType(0x8DCF)
    alias INT_SAMPLER_BUFFER = AttributeType(0x8DD0)
    alias UNSIGNED_INT_SAMPLER_1D = AttributeType(0x8DD1)
    alias UNSIGNED_INT_SAMPLER_2D = AttributeType(0x8DD2)
    alias UNSIGNED_INT_SAMPLER_3D = AttributeType(0x8DD3)
    alias UNSIGNED_INT_SAMPLER_CUBE = AttributeType(0x8DD4)
    alias UNSIGNED_INT_SAMPLER_2D_RECT = AttributeType(0x8DD5)
    alias UNSIGNED_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DD6)
    alias UNSIGNED_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DD7)
    alias UNSIGNED_INT_SAMPLER_BUFFER = AttributeType(0x8DD8)
    alias DOUBLE_MAT2 = AttributeType(0x8F46)
    alias DOUBLE_MAT3 = AttributeType(0x8F47)
    alias DOUBLE_MAT4 = AttributeType(0x8F48)
    alias DOUBLE_MAT2x3 = AttributeType(0x8F49)
    alias DOUBLE_MAT2x4 = AttributeType(0x8F4A)
    alias DOUBLE_MAT3x2 = AttributeType(0x8F4B)
    alias DOUBLE_MAT3x4 = AttributeType(0x8F4C)
    alias DOUBLE_MAT4x2 = AttributeType(0x8F4D)
    alias DOUBLE_MAT4x3 = AttributeType(0x8F4E)
    alias INT64_VEC2_ARB = AttributeType(0x8FE9)
    alias INT64_VEC3_ARB = AttributeType(0x8FEA)
    alias INT64_VEC4_ARB = AttributeType(0x8FEB)
    alias UNSIGNED_INT64_VEC2_ARB = AttributeType(0x8FF5)
    alias UNSIGNED_INT64_VEC3_ARB = AttributeType(0x8FF6)
    alias UNSIGNED_INT64_VEC4_ARB = AttributeType(0x8FF7)
    alias DOUBLE_VEC2 = AttributeType(0x8FFC)
    alias DOUBLE_VEC3 = AttributeType(0x8FFD)
    alias DOUBLE_VEC4 = AttributeType(0x8FFE)
    alias SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900C)
    alias SAMPLER_CUBE_MAP_ARRAY_SHADOW = AttributeType(0x900D)
    alias INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900E)
    alias UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900F)
    alias IMAGE_1D = AttributeType(0x904C)
    alias IMAGE_2D = AttributeType(0x904D)
    alias IMAGE_3D = AttributeType(0x904E)
    alias IMAGE_2D_RECT = AttributeType(0x904F)
    alias IMAGE_CUBE = AttributeType(0x9050)
    alias IMAGE_BUFFER = AttributeType(0x9051)
    alias IMAGE_1D_ARRAY = AttributeType(0x9052)
    alias IMAGE_2D_ARRAY = AttributeType(0x9053)
    alias IMAGE_CUBE_MAP_ARRAY = AttributeType(0x9054)
    alias IMAGE_2D_MULTISAMPLE = AttributeType(0x9055)
    alias IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9056)
    alias INT_IMAGE_1D = AttributeType(0x9057)
    alias INT_IMAGE_2D = AttributeType(0x9058)
    alias INT_IMAGE_3D = AttributeType(0x9059)
    alias INT_IMAGE_2D_RECT = AttributeType(0x905A)
    alias INT_IMAGE_CUBE = AttributeType(0x905B)
    alias INT_IMAGE_BUFFER = AttributeType(0x905C)
    alias INT_IMAGE_1D_ARRAY = AttributeType(0x905D)
    alias INT_IMAGE_2D_ARRAY = AttributeType(0x905E)
    alias INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x905F)
    alias INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x9060)
    alias INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9061)
    alias UNSIGNED_INT_IMAGE_1D = AttributeType(0x9062)
    alias UNSIGNED_INT_IMAGE_2D = AttributeType(0x9063)
    alias UNSIGNED_INT_IMAGE_3D = AttributeType(0x9064)
    alias UNSIGNED_INT_IMAGE_2D_RECT = AttributeType(0x9065)
    alias UNSIGNED_INT_IMAGE_CUBE = AttributeType(0x9066)
    alias UNSIGNED_INT_IMAGE_BUFFER = AttributeType(0x9067)
    alias UNSIGNED_INT_IMAGE_1D_ARRAY = AttributeType(0x9068)
    alias UNSIGNED_INT_IMAGE_2D_ARRAY = AttributeType(0x9069)
    alias UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x906A)
    alias UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x906B)
    alias UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x906C)
    alias SAMPLER_2D_MULTISAMPLE = AttributeType(0x9108)
    alias INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9109)
    alias UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x910A)
    alias SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910B)
    alias INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910C)
    alias UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BindTransformFeedbackTarget(Intable):
    var value: GLenum

    alias TRANSFORM_FEEDBACK = BindTransformFeedbackTarget(0x8E22)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlendEquationModeEXT(Intable):
    var value: GLenum

    alias FUNC_ADD = BlendEquationModeEXT(0x8006)
    alias FUNC_ADD_EXT = BlendEquationModeEXT(0x8006)
    alias MIN = BlendEquationModeEXT(0x8007)
    alias MIN_EXT = BlendEquationModeEXT(0x8007)
    alias MAX = BlendEquationModeEXT(0x8008)
    alias MAX_EXT = BlendEquationModeEXT(0x8008)
    alias FUNC_SUBTRACT = BlendEquationModeEXT(0x800A)
    alias FUNC_SUBTRACT_EXT = BlendEquationModeEXT(0x800A)
    alias FUNC_REVERSE_SUBTRACT = BlendEquationModeEXT(0x800B)
    alias FUNC_REVERSE_SUBTRACT_EXT = BlendEquationModeEXT(0x800B)
    alias ALPHA_MIN_SGIX = BlendEquationModeEXT(0x8320)
    alias ALPHA_MAX_SGIX = BlendEquationModeEXT(0x8321)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlendingFactor(Intable):
    var value: GLenum

    alias ZERO = BlendingFactor(0)
    alias ONE = BlendingFactor(1)
    alias SRC_COLOR = BlendingFactor(0x0300)
    alias ONE_MINUS_SRC_COLOR = BlendingFactor(0x0301)
    alias SRC_ALPHA = BlendingFactor(0x0302)
    alias ONE_MINUS_SRC_ALPHA = BlendingFactor(0x0303)
    alias DST_ALPHA = BlendingFactor(0x0304)
    alias ONE_MINUS_DST_ALPHA = BlendingFactor(0x0305)
    alias DST_COLOR = BlendingFactor(0x0306)
    alias ONE_MINUS_DST_COLOR = BlendingFactor(0x0307)
    alias SRC_ALPHA_SATURATE = BlendingFactor(0x0308)
    alias CONSTANT_COLOR = BlendingFactor(0x8001)
    alias ONE_MINUS_CONSTANT_COLOR = BlendingFactor(0x8002)
    alias CONSTANT_ALPHA = BlendingFactor(0x8003)
    alias ONE_MINUS_CONSTANT_ALPHA = BlendingFactor(0x8004)
    alias SRC1_ALPHA = BlendingFactor(0x8589)
    alias SRC1_COLOR = BlendingFactor(0x88F9)
    alias ONE_MINUS_SRC1_COLOR = BlendingFactor(0x88FA)
    alias ONE_MINUS_SRC1_ALPHA = BlendingFactor(0x88FB)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlitFramebufferFilter(Intable):
    var value: GLenum

    alias NEAREST = BlitFramebufferFilter(0x2600)
    alias LINEAR = BlitFramebufferFilter(0x2601)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct Buffer(Intable):
    var value: GLenum

    alias COLOR = Buffer(0x1800)
    alias DEPTH = Buffer(0x1801)
    alias STENCIL = Buffer(0x1802)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferAccessARB(Intable):
    var value: GLenum

    alias READ_ONLY = BufferAccessARB(0x88B8)
    alias WRITE_ONLY = BufferAccessARB(0x88B9)
    alias READ_WRITE = BufferAccessARB(0x88BA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferPNameARB(Intable):
    var value: GLenum

    alias BUFFER_IMMUTABLE_STORAGE = BufferPNameARB(0x821F)
    alias BUFFER_STORAGE_FLAGS = BufferPNameARB(0x8220)
    alias BUFFER_SIZE = BufferPNameARB(0x8764)
    alias BUFFER_SIZE_ARB = BufferPNameARB(0x8764)
    alias BUFFER_USAGE = BufferPNameARB(0x8765)
    alias BUFFER_USAGE_ARB = BufferPNameARB(0x8765)
    alias BUFFER_ACCESS = BufferPNameARB(0x88BB)
    alias BUFFER_ACCESS_ARB = BufferPNameARB(0x88BB)
    alias BUFFER_MAPPED = BufferPNameARB(0x88BC)
    alias BUFFER_MAPPED_ARB = BufferPNameARB(0x88BC)
    alias BUFFER_ACCESS_FLAGS = BufferPNameARB(0x911F)
    alias BUFFER_MAP_LENGTH = BufferPNameARB(0x9120)
    alias BUFFER_MAP_OFFSET = BufferPNameARB(0x9121)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferPointerNameARB(Intable):
    var value: GLenum

    alias BUFFER_MAP_POINTER = BufferPointerNameARB(0x88BD)
    alias BUFFER_MAP_POINTER_ARB = BufferPointerNameARB(0x88BD)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageMask(Intable):
    var value: GLbitfield

    alias DYNAMIC_STORAGE_BIT = BufferStorageMask(0x0100)
    alias DYNAMIC_STORAGE_BIT_EXT = BufferStorageMask(0x0100)
    alias CLIENT_STORAGE_BIT = BufferStorageMask(0x0200)
    alias CLIENT_STORAGE_BIT_EXT = BufferStorageMask(0x0200)
    alias SPARSE_STORAGE_BIT_ARB = BufferStorageMask(0x0400)
    alias LGPU_SEPARATE_STORAGE_BIT_NVX = BufferStorageMask(0x0800)
    alias PER_GPU_STORAGE_BIT_NV = BufferStorageMask(0x0800)
    alias EXTERNAL_STORAGE_BIT_NVX = BufferStorageMask(0x2000)
    alias MAP_READ_BIT = BufferStorageMask(0x0001)
    alias MAP_READ_BIT_EXT = BufferStorageMask(0x0001)
    alias MAP_WRITE_BIT = BufferStorageMask(0x0002)
    alias MAP_WRITE_BIT_EXT = BufferStorageMask(0x0002)
    alias MAP_PERSISTENT_BIT = BufferStorageMask(0x0040)
    alias MAP_PERSISTENT_BIT_EXT = BufferStorageMask(0x0040)
    alias MAP_COHERENT_BIT = BufferStorageMask(0x0080)
    alias MAP_COHERENT_BIT_EXT = BufferStorageMask(0x0080)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageTarget(Intable):
    var value: GLenum

    alias ARRAY_BUFFER = BufferStorageTarget(0x8892)
    alias ELEMENT_ARRAY_BUFFER = BufferStorageTarget(0x8893)
    alias PIXEL_PACK_BUFFER = BufferStorageTarget(0x88EB)
    alias PIXEL_UNPACK_BUFFER = BufferStorageTarget(0x88EC)
    alias UNIFORM_BUFFER = BufferStorageTarget(0x8A11)
    alias TEXTURE_BUFFER = BufferStorageTarget(0x8C2A)
    alias TRANSFORM_FEEDBACK_BUFFER = BufferStorageTarget(0x8C8E)
    alias COPY_READ_BUFFER = BufferStorageTarget(0x8F36)
    alias COPY_WRITE_BUFFER = BufferStorageTarget(0x8F37)
    alias DRAW_INDIRECT_BUFFER = BufferStorageTarget(0x8F3F)
    alias SHADER_STORAGE_BUFFER = BufferStorageTarget(0x90D2)
    alias DISPATCH_INDIRECT_BUFFER = BufferStorageTarget(0x90EE)
    alias QUERY_BUFFER = BufferStorageTarget(0x9192)
    alias ATOMIC_COUNTER_BUFFER = BufferStorageTarget(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferTargetARB(Intable):
    var value: GLenum

    alias PARAMETER_BUFFER = BufferTargetARB(0x80EE)
    alias ARRAY_BUFFER = BufferTargetARB(0x8892)
    alias ELEMENT_ARRAY_BUFFER = BufferTargetARB(0x8893)
    alias PIXEL_PACK_BUFFER = BufferTargetARB(0x88EB)
    alias PIXEL_UNPACK_BUFFER = BufferTargetARB(0x88EC)
    alias UNIFORM_BUFFER = BufferTargetARB(0x8A11)
    alias TEXTURE_BUFFER = BufferTargetARB(0x8C2A)
    alias TRANSFORM_FEEDBACK_BUFFER = BufferTargetARB(0x8C8E)
    alias COPY_READ_BUFFER = BufferTargetARB(0x8F36)
    alias COPY_WRITE_BUFFER = BufferTargetARB(0x8F37)
    alias DRAW_INDIRECT_BUFFER = BufferTargetARB(0x8F3F)
    alias SHADER_STORAGE_BUFFER = BufferTargetARB(0x90D2)
    alias DISPATCH_INDIRECT_BUFFER = BufferTargetARB(0x90EE)
    alias QUERY_BUFFER = BufferTargetARB(0x9192)
    alias ATOMIC_COUNTER_BUFFER = BufferTargetARB(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferUsageARB(Intable):
    var value: GLenum

    alias STREAM_DRAW = BufferUsageARB(0x88E0)
    alias STREAM_READ = BufferUsageARB(0x88E1)
    alias STREAM_COPY = BufferUsageARB(0x88E2)
    alias STATIC_DRAW = BufferUsageARB(0x88E4)
    alias STATIC_READ = BufferUsageARB(0x88E5)
    alias STATIC_COPY = BufferUsageARB(0x88E6)
    alias DYNAMIC_DRAW = BufferUsageARB(0x88E8)
    alias DYNAMIC_READ = BufferUsageARB(0x88E9)
    alias DYNAMIC_COPY = BufferUsageARB(0x88EA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClampColorModeARB(Intable):
    var value: GLenum

    alias FALSE = ClampColorModeARB(0)
    alias TRUE = ClampColorModeARB(1)
    alias FIXED_ONLY = ClampColorModeARB(0x891D)
    alias FIXED_ONLY_ARB = ClampColorModeARB(0x891D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClampColorTargetARB(Intable):
    var value: GLenum

    alias CLAMP_VERTEX_COLOR_ARB = ClampColorTargetARB(0x891A)
    alias CLAMP_FRAGMENT_COLOR_ARB = ClampColorTargetARB(0x891B)
    alias CLAMP_READ_COLOR = ClampColorTargetARB(0x891C)
    alias CLAMP_READ_COLOR_ARB = ClampColorTargetARB(0x891C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClearBufferMask(Intable):
    var value: GLbitfield

    alias DEPTH_BUFFER_BIT = ClearBufferMask(0x00000100)
    alias ACCUM_BUFFER_BIT = ClearBufferMask(0x00000200)
    alias STENCIL_BUFFER_BIT = ClearBufferMask(0x00000400)
    alias COLOR_BUFFER_BIT = ClearBufferMask(0x00004000)
    alias COVERAGE_BUFFER_BIT_NV = ClearBufferMask(0x00008000)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlDepth(Intable):
    var value: GLenum

    alias NEGATIVE_ONE_TO_ONE = ClipControlDepth(0x935E)
    alias ZERO_TO_ONE = ClipControlDepth(0x935F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlOrigin(Intable):
    var value: GLenum

    alias LOWER_LEFT = ClipControlOrigin(0x8CA1)
    alias UPPER_LEFT = ClipControlOrigin(0x8CA2)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorBuffer(Intable):
    var value: GLenum

    alias NONE = ColorBuffer(0)
    alias FRONT_LEFT = ColorBuffer(0x0400)
    alias FRONT_RIGHT = ColorBuffer(0x0401)
    alias BACK_LEFT = ColorBuffer(0x0402)
    alias BACK_RIGHT = ColorBuffer(0x0403)
    alias FRONT = ColorBuffer(0x0404)
    alias BACK = ColorBuffer(0x0405)
    alias LEFT = ColorBuffer(0x0406)
    alias RIGHT = ColorBuffer(0x0407)
    alias FRONT_AND_BACK = ColorBuffer(0x0408)
    alias COLOR_ATTACHMENT0 = ColorBuffer(0x8CE0)
    alias COLOR_ATTACHMENT1 = ColorBuffer(0x8CE1)
    alias COLOR_ATTACHMENT2 = ColorBuffer(0x8CE2)
    alias COLOR_ATTACHMENT3 = ColorBuffer(0x8CE3)
    alias COLOR_ATTACHMENT4 = ColorBuffer(0x8CE4)
    alias COLOR_ATTACHMENT5 = ColorBuffer(0x8CE5)
    alias COLOR_ATTACHMENT6 = ColorBuffer(0x8CE6)
    alias COLOR_ATTACHMENT7 = ColorBuffer(0x8CE7)
    alias COLOR_ATTACHMENT8 = ColorBuffer(0x8CE8)
    alias COLOR_ATTACHMENT9 = ColorBuffer(0x8CE9)
    alias COLOR_ATTACHMENT10 = ColorBuffer(0x8CEA)
    alias COLOR_ATTACHMENT11 = ColorBuffer(0x8CEB)
    alias COLOR_ATTACHMENT12 = ColorBuffer(0x8CEC)
    alias COLOR_ATTACHMENT13 = ColorBuffer(0x8CED)
    alias COLOR_ATTACHMENT14 = ColorBuffer(0x8CEE)
    alias COLOR_ATTACHMENT15 = ColorBuffer(0x8CEF)
    alias COLOR_ATTACHMENT16 = ColorBuffer(0x8CF0)
    alias COLOR_ATTACHMENT17 = ColorBuffer(0x8CF1)
    alias COLOR_ATTACHMENT18 = ColorBuffer(0x8CF2)
    alias COLOR_ATTACHMENT19 = ColorBuffer(0x8CF3)
    alias COLOR_ATTACHMENT20 = ColorBuffer(0x8CF4)
    alias COLOR_ATTACHMENT21 = ColorBuffer(0x8CF5)
    alias COLOR_ATTACHMENT22 = ColorBuffer(0x8CF6)
    alias COLOR_ATTACHMENT23 = ColorBuffer(0x8CF7)
    alias COLOR_ATTACHMENT24 = ColorBuffer(0x8CF8)
    alias COLOR_ATTACHMENT25 = ColorBuffer(0x8CF9)
    alias COLOR_ATTACHMENT26 = ColorBuffer(0x8CFA)
    alias COLOR_ATTACHMENT27 = ColorBuffer(0x8CFB)
    alias COLOR_ATTACHMENT28 = ColorBuffer(0x8CFC)
    alias COLOR_ATTACHMENT29 = ColorBuffer(0x8CFD)
    alias COLOR_ATTACHMENT30 = ColorBuffer(0x8CFE)
    alias COLOR_ATTACHMENT31 = ColorBuffer(0x8CFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorPointerType(Intable):
    var value: GLenum

    alias BYTE = ColorPointerType(0x1400)
    alias UNSIGNED_BYTE = ColorPointerType(0x1401)
    alias SHORT = ColorPointerType(0x1402)
    alias UNSIGNED_SHORT = ColorPointerType(0x1403)
    alias INT = ColorPointerType(0x1404)
    alias UNSIGNED_INT = ColorPointerType(0x1405)
    alias FLOAT = ColorPointerType(0x1406)
    alias DOUBLE = ColorPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorTableTarget(Intable):
    var value: GLenum

    alias COLOR_TABLE = ColorTableTarget(0x80D0)
    alias POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D1)
    alias POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D2)
    alias PROXY_COLOR_TABLE = ColorTableTarget(0x80D3)
    alias PROXY_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D4)
    alias PROXY_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConditionalRenderMode(Intable):
    var value: GLenum

    alias QUERY_WAIT = ConditionalRenderMode(0x8E13)
    alias QUERY_NO_WAIT = ConditionalRenderMode(0x8E14)
    alias QUERY_BY_REGION_WAIT = ConditionalRenderMode(0x8E15)
    alias QUERY_BY_REGION_NO_WAIT = ConditionalRenderMode(0x8E16)
    alias QUERY_WAIT_INVERTED = ConditionalRenderMode(0x8E17)
    alias QUERY_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E18)
    alias QUERY_BY_REGION_WAIT_INVERTED = ConditionalRenderMode(0x8E19)
    alias QUERY_BY_REGION_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E1A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ContextFlagMask(Intable):
    var value: GLenum

    alias CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = ContextFlagMask(0x00000001)
    alias CONTEXT_FLAG_DEBUG_BIT = ContextFlagMask(0x00000002)
    alias CONTEXT_FLAG_DEBUG_BIT_KHR = ContextFlagMask(0x00000002)
    alias CONTEXT_FLAG_ROBUST_ACCESS_BIT = ContextFlagMask(0x00000004)
    alias CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = ContextFlagMask(0x00000004)
    alias CONTEXT_FLAG_NO_ERROR_BIT = ContextFlagMask(0x00000008)
    alias CONTEXT_FLAG_NO_ERROR_BIT_KHR = ContextFlagMask(0x00000008)
    alias CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT = ContextFlagMask(0x00000010)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ContextProfileMask(Intable):
    var value: GLenum

    alias CONTEXT_CORE_PROFILE_BIT = ContextProfileMask(0x00000001)
    alias CONTEXT_COMPATIBILITY_PROFILE_BIT = ContextProfileMask(0x00000002)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTarget(Intable):
    var value: GLenum

    alias CONVOLUTION_1D = ConvolutionTarget(0x8010)
    alias CONVOLUTION_2D = ConvolutionTarget(0x8011)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTargetEXT(Intable):
    var value: GLenum

    alias CONVOLUTION_1D = ConvolutionTargetEXT(0x8010)
    alias CONVOLUTION_1D_EXT = ConvolutionTargetEXT(0x8010)
    alias CONVOLUTION_2D = ConvolutionTargetEXT(0x8011)
    alias CONVOLUTION_2D_EXT = ConvolutionTargetEXT(0x8011)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct CopyBufferSubDataTarget(Intable):
    var value: GLenum

    alias ARRAY_BUFFER = CopyBufferSubDataTarget(0x8892)
    alias ELEMENT_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8893)
    alias PIXEL_PACK_BUFFER = CopyBufferSubDataTarget(0x88EB)
    alias PIXEL_UNPACK_BUFFER = CopyBufferSubDataTarget(0x88EC)
    alias UNIFORM_BUFFER = CopyBufferSubDataTarget(0x8A11)
    alias TEXTURE_BUFFER = CopyBufferSubDataTarget(0x8C2A)
    alias TRANSFORM_FEEDBACK_BUFFER = CopyBufferSubDataTarget(0x8C8E)
    alias COPY_READ_BUFFER = CopyBufferSubDataTarget(0x8F36)
    alias COPY_WRITE_BUFFER = CopyBufferSubDataTarget(0x8F37)
    alias DRAW_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x8F3F)
    alias SHADER_STORAGE_BUFFER = CopyBufferSubDataTarget(0x90D2)
    alias DISPATCH_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x90EE)
    alias QUERY_BUFFER = CopyBufferSubDataTarget(0x9192)
    alias ATOMIC_COUNTER_BUFFER = CopyBufferSubDataTarget(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct CopyImageSubDataTarget(Intable):
    var value: GLenum

    alias TEXTURE_1D = CopyImageSubDataTarget(0x0DE0)
    alias TEXTURE_2D = CopyImageSubDataTarget(0x0DE1)
    alias TEXTURE_3D = CopyImageSubDataTarget(0x806F)
    alias TEXTURE_RECTANGLE = CopyImageSubDataTarget(0x84F5)
    alias TEXTURE_CUBE_MAP = CopyImageSubDataTarget(0x8513)
    alias TEXTURE_1D_ARRAY = CopyImageSubDataTarget(0x8C18)
    alias TEXTURE_2D_ARRAY = CopyImageSubDataTarget(0x8C1A)
    alias RENDERBUFFER = CopyImageSubDataTarget(0x8D41)
    alias TEXTURE_CUBE_MAP_ARRAY = CopyImageSubDataTarget(0x9009)
    alias TEXTURE_2D_MULTISAMPLE = CopyImageSubDataTarget(0x9100)
    alias TEXTURE_2D_MULTISAMPLE_ARRAY = CopyImageSubDataTarget(0x9102)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugSeverity(Intable):
    var value: GLenum

    alias DONT_CARE = DebugSeverity(0x1100)
    alias DEBUG_SEVERITY_NOTIFICATION = DebugSeverity(0x826B)
    alias DEBUG_SEVERITY_HIGH = DebugSeverity(0x9146)
    alias DEBUG_SEVERITY_MEDIUM = DebugSeverity(0x9147)
    alias DEBUG_SEVERITY_LOW = DebugSeverity(0x9148)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugSource(Intable):
    var value: GLenum

    alias DONT_CARE = DebugSource(0x1100)
    alias DEBUG_SOURCE_API = DebugSource(0x8246)
    alias DEBUG_SOURCE_WINDOW_SYSTEM = DebugSource(0x8247)
    alias DEBUG_SOURCE_SHADER_COMPILER = DebugSource(0x8248)
    alias DEBUG_SOURCE_THIRD_PARTY = DebugSource(0x8249)
    alias DEBUG_SOURCE_APPLICATION = DebugSource(0x824A)
    alias DEBUG_SOURCE_OTHER = DebugSource(0x824B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugType(Intable):
    var value: GLenum

    alias DONT_CARE = DebugType(0x1100)
    alias DEBUG_TYPE_ERROR = DebugType(0x824C)
    alias DEBUG_TYPE_DEPRECATED_BEHAVIOR = DebugType(0x824D)
    alias DEBUG_TYPE_UNDEFINED_BEHAVIOR = DebugType(0x824E)
    alias DEBUG_TYPE_PORTABILITY = DebugType(0x824F)
    alias DEBUG_TYPE_PERFORMANCE = DebugType(0x8250)
    alias DEBUG_TYPE_OTHER = DebugType(0x8251)
    alias DEBUG_TYPE_MARKER = DebugType(0x8268)
    alias DEBUG_TYPE_PUSH_GROUP = DebugType(0x8269)
    alias DEBUG_TYPE_POP_GROUP = DebugType(0x826A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DepthFunction(Intable):
    var value: GLenum

    alias NEVER = DepthFunction(0x0200)
    alias LESS = DepthFunction(0x0201)
    alias EQUAL = DepthFunction(0x0202)
    alias LEQUAL = DepthFunction(0x0203)
    alias GREATER = DepthFunction(0x0204)
    alias NOTEQUAL = DepthFunction(0x0205)
    alias GEQUAL = DepthFunction(0x0206)
    alias ALWAYS = DepthFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DepthStencilTextureMode(Intable):
    var value: GLenum

    alias STENCIL_INDEX = DepthStencilTextureMode(0x1901)
    alias DEPTH_COMPONENT = DepthStencilTextureMode(0x1902)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DrawBufferMode(Intable):
    var value: GLenum

    alias NONE = DrawBufferMode(0)
    alias NONE_OES = DrawBufferMode(0)
    alias FRONT_LEFT = DrawBufferMode(0x0400)
    alias FRONT_RIGHT = DrawBufferMode(0x0401)
    alias BACK_LEFT = DrawBufferMode(0x0402)
    alias BACK_RIGHT = DrawBufferMode(0x0403)
    alias FRONT = DrawBufferMode(0x0404)
    alias BACK = DrawBufferMode(0x0405)
    alias LEFT = DrawBufferMode(0x0406)
    alias RIGHT = DrawBufferMode(0x0407)
    alias FRONT_AND_BACK = DrawBufferMode(0x0408)
    alias AUX0 = DrawBufferMode(0x0409)
    alias AUX1 = DrawBufferMode(0x040A)
    alias AUX2 = DrawBufferMode(0x040B)
    alias AUX3 = DrawBufferMode(0x040C)
    alias COLOR_ATTACHMENT0 = DrawBufferMode(0x8CE0)
    alias COLOR_ATTACHMENT0_NV = DrawBufferMode(0x8CE0)
    alias COLOR_ATTACHMENT1 = DrawBufferMode(0x8CE1)
    alias COLOR_ATTACHMENT1_NV = DrawBufferMode(0x8CE1)
    alias COLOR_ATTACHMENT2 = DrawBufferMode(0x8CE2)
    alias COLOR_ATTACHMENT2_NV = DrawBufferMode(0x8CE2)
    alias COLOR_ATTACHMENT3 = DrawBufferMode(0x8CE3)
    alias COLOR_ATTACHMENT3_NV = DrawBufferMode(0x8CE3)
    alias COLOR_ATTACHMENT4 = DrawBufferMode(0x8CE4)
    alias COLOR_ATTACHMENT4_NV = DrawBufferMode(0x8CE4)
    alias COLOR_ATTACHMENT5 = DrawBufferMode(0x8CE5)
    alias COLOR_ATTACHMENT5_NV = DrawBufferMode(0x8CE5)
    alias COLOR_ATTACHMENT6 = DrawBufferMode(0x8CE6)
    alias COLOR_ATTACHMENT6_NV = DrawBufferMode(0x8CE6)
    alias COLOR_ATTACHMENT7 = DrawBufferMode(0x8CE7)
    alias COLOR_ATTACHMENT7_NV = DrawBufferMode(0x8CE7)
    alias COLOR_ATTACHMENT8 = DrawBufferMode(0x8CE8)
    alias COLOR_ATTACHMENT8_NV = DrawBufferMode(0x8CE8)
    alias COLOR_ATTACHMENT9 = DrawBufferMode(0x8CE9)
    alias COLOR_ATTACHMENT9_NV = DrawBufferMode(0x8CE9)
    alias COLOR_ATTACHMENT10 = DrawBufferMode(0x8CEA)
    alias COLOR_ATTACHMENT10_NV = DrawBufferMode(0x8CEA)
    alias COLOR_ATTACHMENT11 = DrawBufferMode(0x8CEB)
    alias COLOR_ATTACHMENT11_NV = DrawBufferMode(0x8CEB)
    alias COLOR_ATTACHMENT12 = DrawBufferMode(0x8CEC)
    alias COLOR_ATTACHMENT12_NV = DrawBufferMode(0x8CEC)
    alias COLOR_ATTACHMENT13 = DrawBufferMode(0x8CED)
    alias COLOR_ATTACHMENT13_NV = DrawBufferMode(0x8CED)
    alias COLOR_ATTACHMENT14 = DrawBufferMode(0x8CEE)
    alias COLOR_ATTACHMENT14_NV = DrawBufferMode(0x8CEE)
    alias COLOR_ATTACHMENT15 = DrawBufferMode(0x8CEF)
    alias COLOR_ATTACHMENT15_NV = DrawBufferMode(0x8CEF)
    alias COLOR_ATTACHMENT16 = DrawBufferMode(0x8CF0)
    alias COLOR_ATTACHMENT17 = DrawBufferMode(0x8CF1)
    alias COLOR_ATTACHMENT18 = DrawBufferMode(0x8CF2)
    alias COLOR_ATTACHMENT19 = DrawBufferMode(0x8CF3)
    alias COLOR_ATTACHMENT20 = DrawBufferMode(0x8CF4)
    alias COLOR_ATTACHMENT21 = DrawBufferMode(0x8CF5)
    alias COLOR_ATTACHMENT22 = DrawBufferMode(0x8CF6)
    alias COLOR_ATTACHMENT23 = DrawBufferMode(0x8CF7)
    alias COLOR_ATTACHMENT24 = DrawBufferMode(0x8CF8)
    alias COLOR_ATTACHMENT25 = DrawBufferMode(0x8CF9)
    alias COLOR_ATTACHMENT26 = DrawBufferMode(0x8CFA)
    alias COLOR_ATTACHMENT27 = DrawBufferMode(0x8CFB)
    alias COLOR_ATTACHMENT28 = DrawBufferMode(0x8CFC)
    alias COLOR_ATTACHMENT29 = DrawBufferMode(0x8CFD)
    alias COLOR_ATTACHMENT30 = DrawBufferMode(0x8CFE)
    alias COLOR_ATTACHMENT31 = DrawBufferMode(0x8CFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DrawElementsType(Intable):
    var value: GLenum

    alias UNSIGNED_BYTE = DrawElementsType(0x1401)
    alias UNSIGNED_SHORT = DrawElementsType(0x1403)
    alias UNSIGNED_INT = DrawElementsType(0x1405)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct EnableCap(Intable):
    var value: GLenum

    alias POINT_SMOOTH = EnableCap(0x0B10)
    alias LINE_SMOOTH = EnableCap(0x0B20)
    alias LINE_STIPPLE = EnableCap(0x0B24)
    alias POLYGON_SMOOTH = EnableCap(0x0B41)
    alias POLYGON_STIPPLE = EnableCap(0x0B42)
    alias CULL_FACE = EnableCap(0x0B44)
    alias LIGHTING = EnableCap(0x0B50)
    alias COLOR_MATERIAL = EnableCap(0x0B57)
    alias FOG = EnableCap(0x0B60)
    alias DEPTH_TEST = EnableCap(0x0B71)
    alias STENCIL_TEST = EnableCap(0x0B90)
    alias NORMALIZE = EnableCap(0x0BA1)
    alias ALPHA_TEST = EnableCap(0x0BC0)
    alias DITHER = EnableCap(0x0BD0)
    alias BLEND = EnableCap(0x0BE2)
    alias INDEX_LOGIC_OP = EnableCap(0x0BF1)
    alias COLOR_LOGIC_OP = EnableCap(0x0BF2)
    alias SCISSOR_TEST = EnableCap(0x0C11)
    alias TEXTURE_GEN_S = EnableCap(0x0C60)
    alias TEXTURE_GEN_T = EnableCap(0x0C61)
    alias TEXTURE_GEN_R = EnableCap(0x0C62)
    alias TEXTURE_GEN_Q = EnableCap(0x0C63)
    alias AUTO_NORMAL = EnableCap(0x0D80)
    alias MAP1_COLOR_4 = EnableCap(0x0D90)
    alias MAP1_INDEX = EnableCap(0x0D91)
    alias MAP1_NORMAL = EnableCap(0x0D92)
    alias MAP1_TEXTURE_COORD_1 = EnableCap(0x0D93)
    alias MAP1_TEXTURE_COORD_2 = EnableCap(0x0D94)
    alias MAP1_TEXTURE_COORD_3 = EnableCap(0x0D95)
    alias MAP1_TEXTURE_COORD_4 = EnableCap(0x0D96)
    alias MAP1_VERTEX_3 = EnableCap(0x0D97)
    alias MAP1_VERTEX_4 = EnableCap(0x0D98)
    alias MAP2_COLOR_4 = EnableCap(0x0DB0)
    alias MAP2_INDEX = EnableCap(0x0DB1)
    alias MAP2_NORMAL = EnableCap(0x0DB2)
    alias MAP2_TEXTURE_COORD_1 = EnableCap(0x0DB3)
    alias MAP2_TEXTURE_COORD_2 = EnableCap(0x0DB4)
    alias MAP2_TEXTURE_COORD_3 = EnableCap(0x0DB5)
    alias MAP2_TEXTURE_COORD_4 = EnableCap(0x0DB6)
    alias MAP2_VERTEX_3 = EnableCap(0x0DB7)
    alias MAP2_VERTEX_4 = EnableCap(0x0DB8)
    alias TEXTURE_1D = EnableCap(0x0DE0)
    alias TEXTURE_2D = EnableCap(0x0DE1)
    alias POLYGON_OFFSET_POINT = EnableCap(0x2A01)
    alias POLYGON_OFFSET_LINE = EnableCap(0x2A02)
    alias CLIP_PLANE0 = EnableCap(0x3000)
    alias CLIP_DISTANCE0 = EnableCap(0x3000)
    alias CLIP_PLANE1 = EnableCap(0x3001)
    alias CLIP_DISTANCE1 = EnableCap(0x3001)
    alias CLIP_PLANE2 = EnableCap(0x3002)
    alias CLIP_DISTANCE2 = EnableCap(0x3002)
    alias CLIP_PLANE3 = EnableCap(0x3003)
    alias CLIP_DISTANCE3 = EnableCap(0x3003)
    alias CLIP_PLANE4 = EnableCap(0x3004)
    alias CLIP_DISTANCE4 = EnableCap(0x3004)
    alias CLIP_PLANE5 = EnableCap(0x3005)
    alias CLIP_DISTANCE5 = EnableCap(0x3005)
    alias CLIP_DISTANCE6 = EnableCap(0x3006)
    alias CLIP_DISTANCE7 = EnableCap(0x3007)
    alias LIGHT0 = EnableCap(0x4000)
    alias LIGHT1 = EnableCap(0x4001)
    alias LIGHT2 = EnableCap(0x4002)
    alias LIGHT3 = EnableCap(0x4003)
    alias LIGHT4 = EnableCap(0x4004)
    alias LIGHT5 = EnableCap(0x4005)
    alias LIGHT6 = EnableCap(0x4006)
    alias LIGHT7 = EnableCap(0x4007)
    alias CONVOLUTION_1D_EXT = EnableCap(0x8010)
    alias CONVOLUTION_2D_EXT = EnableCap(0x8011)
    alias SEPARABLE_2D_EXT = EnableCap(0x8012)
    alias HISTOGRAM_EXT = EnableCap(0x8024)
    alias MINMAX_EXT = EnableCap(0x802E)
    alias POLYGON_OFFSET_FILL = EnableCap(0x8037)
    alias RESCALE_NORMAL_EXT = EnableCap(0x803A)
    alias TEXTURE_3D_EXT = EnableCap(0x806F)
    alias VERTEX_ARRAY = EnableCap(0x8074)
    alias NORMAL_ARRAY = EnableCap(0x8075)
    alias COLOR_ARRAY = EnableCap(0x8076)
    alias INDEX_ARRAY = EnableCap(0x8077)
    alias TEXTURE_COORD_ARRAY = EnableCap(0x8078)
    alias EDGE_FLAG_ARRAY = EnableCap(0x8079)
    alias INTERLACE_SGIX = EnableCap(0x8094)
    alias MULTISAMPLE = EnableCap(0x809D)
    alias MULTISAMPLE_SGIS = EnableCap(0x809D)
    alias SAMPLE_ALPHA_TO_COVERAGE = EnableCap(0x809E)
    alias SAMPLE_ALPHA_TO_MASK_SGIS = EnableCap(0x809E)
    alias SAMPLE_ALPHA_TO_ONE = EnableCap(0x809F)
    alias SAMPLE_ALPHA_TO_ONE_SGIS = EnableCap(0x809F)
    alias SAMPLE_COVERAGE = EnableCap(0x80A0)
    alias SAMPLE_MASK_SGIS = EnableCap(0x80A0)
    alias TEXTURE_COLOR_TABLE_SGI = EnableCap(0x80BC)
    alias COLOR_TABLE = EnableCap(0x80D0)
    alias COLOR_TABLE_SGI = EnableCap(0x80D0)
    alias POST_CONVOLUTION_COLOR_TABLE = EnableCap(0x80D1)
    alias POST_CONVOLUTION_COLOR_TABLE_SGI = EnableCap(0x80D1)
    alias POST_COLOR_MATRIX_COLOR_TABLE = EnableCap(0x80D2)
    alias POST_COLOR_MATRIX_COLOR_TABLE_SGI = EnableCap(0x80D2)
    alias TEXTURE_4D_SGIS = EnableCap(0x8134)
    alias PIXEL_TEX_GEN_SGIX = EnableCap(0x8139)
    alias SPRITE_SGIX = EnableCap(0x8148)
    alias REFERENCE_PLANE_SGIX = EnableCap(0x817D)
    alias IR_INSTRUMENT1_SGIX = EnableCap(0x817F)
    alias CALLIGRAPHIC_FRAGMENT_SGIX = EnableCap(0x8183)
    alias FRAMEZOOM_SGIX = EnableCap(0x818B)
    alias FOG_OFFSET_SGIX = EnableCap(0x8198)
    alias SHARED_TEXTURE_PALETTE_EXT = EnableCap(0x81FB)
    alias DEBUG_OUTPUT_SYNCHRONOUS = EnableCap(0x8242)
    alias ASYNC_HISTOGRAM_SGIX = EnableCap(0x832C)
    alias PIXEL_TEXTURE_SGIS = EnableCap(0x8353)
    alias ASYNC_TEX_IMAGE_SGIX = EnableCap(0x835C)
    alias ASYNC_DRAW_PIXELS_SGIX = EnableCap(0x835D)
    alias ASYNC_READ_PIXELS_SGIX = EnableCap(0x835E)
    alias FRAGMENT_LIGHTING_SGIX = EnableCap(0x8400)
    alias FRAGMENT_COLOR_MATERIAL_SGIX = EnableCap(0x8401)
    alias FRAGMENT_LIGHT0_SGIX = EnableCap(0x840C)
    alias FRAGMENT_LIGHT1_SGIX = EnableCap(0x840D)
    alias FRAGMENT_LIGHT2_SGIX = EnableCap(0x840E)
    alias FRAGMENT_LIGHT3_SGIX = EnableCap(0x840F)
    alias FRAGMENT_LIGHT4_SGIX = EnableCap(0x8410)
    alias FRAGMENT_LIGHT5_SGIX = EnableCap(0x8411)
    alias FRAGMENT_LIGHT6_SGIX = EnableCap(0x8412)
    alias FRAGMENT_LIGHT7_SGIX = EnableCap(0x8413)
    alias TEXTURE_RECTANGLE = EnableCap(0x84F5)
    alias TEXTURE_RECTANGLE_ARB = EnableCap(0x84F5)
    alias TEXTURE_RECTANGLE_NV = EnableCap(0x84F5)
    alias TEXTURE_CUBE_MAP = EnableCap(0x8513)
    alias TEXTURE_CUBE_MAP_ARB = EnableCap(0x8513)
    alias TEXTURE_CUBE_MAP_EXT = EnableCap(0x8513)
    alias TEXTURE_CUBE_MAP_OES = EnableCap(0x8513)
    alias PROGRAM_POINT_SIZE = EnableCap(0x8642)
    alias DEPTH_CLAMP = EnableCap(0x864F)
    alias TEXTURE_CUBE_MAP_SEAMLESS = EnableCap(0x884F)
    alias SAMPLE_SHADING = EnableCap(0x8C36)
    alias RASTERIZER_DISCARD = EnableCap(0x8C89)
    alias TEXTURE_GEN_STR_OES = EnableCap(0x8D60)
    alias PRIMITIVE_RESTART_FIXED_INDEX = EnableCap(0x8D69)
    alias FRAMEBUFFER_SRGB = EnableCap(0x8DB9)
    alias SAMPLE_MASK = EnableCap(0x8E51)
    alias FETCH_PER_SAMPLE_ARM = EnableCap(0x8F65)
    alias PRIMITIVE_RESTART = EnableCap(0x8F9D)
    alias DEBUG_OUTPUT = EnableCap(0x92E0)
    alias SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = EnableCap(0x95B1)
    alias FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = EnableCap(0x96A2)
    alias SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM = EnableCap(0x96A5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ErrorCode(Intable):
    var value: GLenum

    alias NO_ERROR = ErrorCode(0)
    alias INVALID_ENUM = ErrorCode(0x0500)
    alias INVALID_VALUE = ErrorCode(0x0501)
    alias INVALID_OPERATION = ErrorCode(0x0502)
    alias STACK_OVERFLOW = ErrorCode(0x0503)
    alias STACK_UNDERFLOW = ErrorCode(0x0504)
    alias OUT_OF_MEMORY = ErrorCode(0x0505)
    alias INVALID_FRAMEBUFFER_OPERATION = ErrorCode(0x0506)
    alias INVALID_FRAMEBUFFER_OPERATION_EXT = ErrorCode(0x0506)
    alias INVALID_FRAMEBUFFER_OPERATION_OES = ErrorCode(0x0506)
    alias TABLE_TOO_LARGE_EXT = ErrorCode(0x8031)
    alias TABLE_TOO_LARGE = ErrorCode(0x8031)
    alias TEXTURE_TOO_LARGE_EXT = ErrorCode(0x8065)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FogCoordinatePointerType(Intable):
    var value: GLenum

    alias FLOAT = FogCoordinatePointerType(0x1406)
    alias DOUBLE = FogCoordinatePointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FogMode(Intable):
    var value: GLenum

    alias EXP = FogMode(0x0800)
    alias EXP2 = FogMode(0x0801)
    alias LINEAR = FogMode(0x2601)
    alias FOG_FUNC_SGIS = FogMode(0x812A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachment(Intable):
    var value: GLenum

    alias DEPTH_STENCIL_ATTACHMENT = FramebufferAttachment(0x821A)
    alias COLOR_ATTACHMENT0 = FramebufferAttachment(0x8CE0)
    alias COLOR_ATTACHMENT1 = FramebufferAttachment(0x8CE1)
    alias COLOR_ATTACHMENT2 = FramebufferAttachment(0x8CE2)
    alias COLOR_ATTACHMENT3 = FramebufferAttachment(0x8CE3)
    alias COLOR_ATTACHMENT4 = FramebufferAttachment(0x8CE4)
    alias COLOR_ATTACHMENT5 = FramebufferAttachment(0x8CE5)
    alias COLOR_ATTACHMENT6 = FramebufferAttachment(0x8CE6)
    alias COLOR_ATTACHMENT7 = FramebufferAttachment(0x8CE7)
    alias COLOR_ATTACHMENT8 = FramebufferAttachment(0x8CE8)
    alias COLOR_ATTACHMENT9 = FramebufferAttachment(0x8CE9)
    alias COLOR_ATTACHMENT10 = FramebufferAttachment(0x8CEA)
    alias COLOR_ATTACHMENT11 = FramebufferAttachment(0x8CEB)
    alias COLOR_ATTACHMENT12 = FramebufferAttachment(0x8CEC)
    alias COLOR_ATTACHMENT13 = FramebufferAttachment(0x8CED)
    alias COLOR_ATTACHMENT14 = FramebufferAttachment(0x8CEE)
    alias COLOR_ATTACHMENT15 = FramebufferAttachment(0x8CEF)
    alias COLOR_ATTACHMENT16 = FramebufferAttachment(0x8CF0)
    alias COLOR_ATTACHMENT17 = FramebufferAttachment(0x8CF1)
    alias COLOR_ATTACHMENT18 = FramebufferAttachment(0x8CF2)
    alias COLOR_ATTACHMENT19 = FramebufferAttachment(0x8CF3)
    alias COLOR_ATTACHMENT20 = FramebufferAttachment(0x8CF4)
    alias COLOR_ATTACHMENT21 = FramebufferAttachment(0x8CF5)
    alias COLOR_ATTACHMENT22 = FramebufferAttachment(0x8CF6)
    alias COLOR_ATTACHMENT23 = FramebufferAttachment(0x8CF7)
    alias COLOR_ATTACHMENT24 = FramebufferAttachment(0x8CF8)
    alias COLOR_ATTACHMENT25 = FramebufferAttachment(0x8CF9)
    alias COLOR_ATTACHMENT26 = FramebufferAttachment(0x8CFA)
    alias COLOR_ATTACHMENT27 = FramebufferAttachment(0x8CFB)
    alias COLOR_ATTACHMENT28 = FramebufferAttachment(0x8CFC)
    alias COLOR_ATTACHMENT29 = FramebufferAttachment(0x8CFD)
    alias COLOR_ATTACHMENT30 = FramebufferAttachment(0x8CFE)
    alias COLOR_ATTACHMENT31 = FramebufferAttachment(0x8CFF)
    alias DEPTH_ATTACHMENT = FramebufferAttachment(0x8D00)
    alias STENCIL_ATTACHMENT = FramebufferAttachment(0x8D20)
    alias SHADING_RATE_ATTACHMENT_EXT = FramebufferAttachment(0x96D1)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachmentParameterName(Intable):
    var value: GLenum

    alias FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = FramebufferAttachmentParameterName(0x8210)
    alias FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = FramebufferAttachmentParameterName(0x8210)
    alias FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = FramebufferAttachmentParameterName(0x8211)
    alias FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = FramebufferAttachmentParameterName(0x8211)
    alias FRAMEBUFFER_ATTACHMENT_RED_SIZE = FramebufferAttachmentParameterName(0x8212)
    alias FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = FramebufferAttachmentParameterName(0x8213)
    alias FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = FramebufferAttachmentParameterName(0x8214)
    alias FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = FramebufferAttachmentParameterName(0x8215)
    alias FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = FramebufferAttachmentParameterName(0x8216)
    alias FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = FramebufferAttachmentParameterName(0x8217)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = FramebufferAttachmentParameterName(0x8CD0)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = FramebufferAttachmentParameterName(0x8CD0)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES = FramebufferAttachmentParameterName(0x8CD0)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = FramebufferAttachmentParameterName(0x8CD1)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = FramebufferAttachmentParameterName(0x8CD1)
    alias FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES = FramebufferAttachmentParameterName(0x8CD1)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = FramebufferAttachmentParameterName(0x8CD2)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = FramebufferAttachmentParameterName(0x8CD2)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES = FramebufferAttachmentParameterName(0x8CD2)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = FramebufferAttachmentParameterName(0x8CD3)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = FramebufferAttachmentParameterName(0x8CD3)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES = FramebufferAttachmentParameterName(0x8CD3)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = FramebufferAttachmentParameterName(0x8CD4)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = FramebufferAttachmentParameterName(0x8CD4)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = FramebufferAttachmentParameterName(0x8CD4)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = FramebufferAttachmentParameterName(0x8CD4)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = FramebufferAttachmentParameterName(0x8D6C)
    alias FRAMEBUFFER_ATTACHMENT_LAYERED = FramebufferAttachmentParameterName(0x8DA7)
    alias FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = FramebufferAttachmentParameterName(0x8DA7)
    alias FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = FramebufferAttachmentParameterName(0x8DA7)
    alias FRAMEBUFFER_ATTACHMENT_LAYERED_OES = FramebufferAttachmentParameterName(0x8DA7)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG = FramebufferAttachmentParameterName(0x913F)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = FramebufferAttachmentParameterName(0x9630)
    alias FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = FramebufferAttachmentParameterName(0x9632)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferParameterName(Intable):
    var value: GLenum

    alias FRAMEBUFFER_DEFAULT_WIDTH = FramebufferParameterName(0x9310)
    alias FRAMEBUFFER_DEFAULT_HEIGHT = FramebufferParameterName(0x9311)
    alias FRAMEBUFFER_DEFAULT_LAYERS = FramebufferParameterName(0x9312)
    alias FRAMEBUFFER_DEFAULT_SAMPLES = FramebufferParameterName(0x9313)
    alias FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FramebufferParameterName(0x9314)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferStatus(Intable):
    var value: GLenum

    alias FRAMEBUFFER_UNDEFINED = FramebufferStatus(0x8219)
    alias FRAMEBUFFER_COMPLETE = FramebufferStatus(0x8CD5)
    alias FRAMEBUFFER_INCOMPLETE_ATTACHMENT = FramebufferStatus(0x8CD6)
    alias FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = FramebufferStatus(0x8CD7)
    alias FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = FramebufferStatus(0x8CDB)
    alias FRAMEBUFFER_INCOMPLETE_READ_BUFFER = FramebufferStatus(0x8CDC)
    alias FRAMEBUFFER_UNSUPPORTED = FramebufferStatus(0x8CDD)
    alias FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = FramebufferStatus(0x8D56)
    alias FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = FramebufferStatus(0x8DA8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferTarget(Intable):
    var value: GLenum

    alias READ_FRAMEBUFFER = FramebufferTarget(0x8CA8)
    alias DRAW_FRAMEBUFFER = FramebufferTarget(0x8CA9)
    alias FRAMEBUFFER = FramebufferTarget(0x8D40)
    alias FRAMEBUFFER_OES = FramebufferTarget(0x8D40)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FrontFaceDirection(Intable):
    var value: GLenum

    alias CW = FrontFaceDirection(0x0900)
    alias CCW = FrontFaceDirection(0x0901)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetFramebufferParameter(Intable):
    var value: GLenum

    alias DOUBLEBUFFER = GetFramebufferParameter(0x0C32)
    alias STEREO = GetFramebufferParameter(0x0C33)
    alias SAMPLE_BUFFERS = GetFramebufferParameter(0x80A8)
    alias SAMPLES = GetFramebufferParameter(0x80A9)
    alias IMPLEMENTATION_COLOR_READ_TYPE = GetFramebufferParameter(0x8B9A)
    alias IMPLEMENTATION_COLOR_READ_FORMAT = GetFramebufferParameter(0x8B9B)
    alias FRAMEBUFFER_DEFAULT_WIDTH = GetFramebufferParameter(0x9310)
    alias FRAMEBUFFER_DEFAULT_HEIGHT = GetFramebufferParameter(0x9311)
    alias FRAMEBUFFER_DEFAULT_LAYERS = GetFramebufferParameter(0x9312)
    alias FRAMEBUFFER_DEFAULT_SAMPLES = GetFramebufferParameter(0x9313)
    alias FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = GetFramebufferParameter(0x9314)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetMultisamplePNameNV(Intable):
    var value: GLenum

    alias SAMPLE_POSITION = GetMultisamplePNameNV(0x8E50)
    alias SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x8E50)
    alias PROGRAMMABLE_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x9341)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetPName(Intable):
    var value: GLenum

    alias CURRENT_COLOR = GetPName(0x0B00)
    alias CURRENT_INDEX = GetPName(0x0B01)
    alias CURRENT_NORMAL = GetPName(0x0B02)
    alias CURRENT_TEXTURE_COORDS = GetPName(0x0B03)
    alias CURRENT_RASTER_COLOR = GetPName(0x0B04)
    alias CURRENT_RASTER_INDEX = GetPName(0x0B05)
    alias CURRENT_RASTER_TEXTURE_COORDS = GetPName(0x0B06)
    alias CURRENT_RASTER_POSITION = GetPName(0x0B07)
    alias CURRENT_RASTER_POSITION_VALID = GetPName(0x0B08)
    alias CURRENT_RASTER_DISTANCE = GetPName(0x0B09)
    alias POINT_SMOOTH = GetPName(0x0B10)
    alias POINT_SIZE = GetPName(0x0B11)
    alias POINT_SIZE_RANGE = GetPName(0x0B12)
    alias SMOOTH_POINT_SIZE_RANGE = GetPName(0x0B12)
    alias POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    alias SMOOTH_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    alias LINE_SMOOTH = GetPName(0x0B20)
    alias LINE_WIDTH = GetPName(0x0B21)
    alias LINE_WIDTH_RANGE = GetPName(0x0B22)
    alias SMOOTH_LINE_WIDTH_RANGE = GetPName(0x0B22)
    alias LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    alias SMOOTH_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    alias LINE_STIPPLE = GetPName(0x0B24)
    alias LINE_STIPPLE_PATTERN = GetPName(0x0B25)
    alias LINE_STIPPLE_REPEAT = GetPName(0x0B26)
    alias LIST_MODE = GetPName(0x0B30)
    alias MAX_LIST_NESTING = GetPName(0x0B31)
    alias LIST_BASE = GetPName(0x0B32)
    alias LIST_INDEX = GetPName(0x0B33)
    alias POLYGON_MODE = GetPName(0x0B40)
    alias POLYGON_SMOOTH = GetPName(0x0B41)
    alias POLYGON_STIPPLE = GetPName(0x0B42)
    alias EDGE_FLAG = GetPName(0x0B43)
    alias CULL_FACE = GetPName(0x0B44)
    alias CULL_FACE_MODE = GetPName(0x0B45)
    alias FRONT_FACE = GetPName(0x0B46)
    alias LIGHTING = GetPName(0x0B50)
    alias LIGHT_MODEL_LOCAL_VIEWER = GetPName(0x0B51)
    alias LIGHT_MODEL_TWO_SIDE = GetPName(0x0B52)
    alias LIGHT_MODEL_AMBIENT = GetPName(0x0B53)
    alias SHADE_MODEL = GetPName(0x0B54)
    alias COLOR_MATERIAL_FACE = GetPName(0x0B55)
    alias COLOR_MATERIAL_PARAMETER = GetPName(0x0B56)
    alias COLOR_MATERIAL = GetPName(0x0B57)
    alias FOG = GetPName(0x0B60)
    alias FOG_INDEX = GetPName(0x0B61)
    alias FOG_DENSITY = GetPName(0x0B62)
    alias FOG_START = GetPName(0x0B63)
    alias FOG_END = GetPName(0x0B64)
    alias FOG_MODE = GetPName(0x0B65)
    alias FOG_COLOR = GetPName(0x0B66)
    alias DEPTH_RANGE = GetPName(0x0B70)
    alias DEPTH_TEST = GetPName(0x0B71)
    alias DEPTH_WRITEMASK = GetPName(0x0B72)
    alias DEPTH_CLEAR_VALUE = GetPName(0x0B73)
    alias DEPTH_FUNC = GetPName(0x0B74)
    alias ACCUM_CLEAR_VALUE = GetPName(0x0B80)
    alias STENCIL_TEST = GetPName(0x0B90)
    alias STENCIL_CLEAR_VALUE = GetPName(0x0B91)
    alias STENCIL_FUNC = GetPName(0x0B92)
    alias STENCIL_VALUE_MASK = GetPName(0x0B93)
    alias STENCIL_FAIL = GetPName(0x0B94)
    alias STENCIL_PASS_DEPTH_FAIL = GetPName(0x0B95)
    alias STENCIL_PASS_DEPTH_PASS = GetPName(0x0B96)
    alias STENCIL_REF = GetPName(0x0B97)
    alias STENCIL_WRITEMASK = GetPName(0x0B98)
    alias MATRIX_MODE = GetPName(0x0BA0)
    alias NORMALIZE = GetPName(0x0BA1)
    alias VIEWPORT = GetPName(0x0BA2)
    alias MODELVIEW_STACK_DEPTH = GetPName(0x0BA3)
    alias MODELVIEW0_STACK_DEPTH_EXT = GetPName(0x0BA3)
    alias PROJECTION_STACK_DEPTH = GetPName(0x0BA4)
    alias TEXTURE_STACK_DEPTH = GetPName(0x0BA5)
    alias MODELVIEW_MATRIX = GetPName(0x0BA6)
    alias MODELVIEW0_MATRIX_EXT = GetPName(0x0BA6)
    alias PROJECTION_MATRIX = GetPName(0x0BA7)
    alias TEXTURE_MATRIX = GetPName(0x0BA8)
    alias ATTRIB_STACK_DEPTH = GetPName(0x0BB0)
    alias CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0BB1)
    alias ALPHA_TEST = GetPName(0x0BC0)
    alias ALPHA_TEST_QCOM = GetPName(0x0BC0)
    alias ALPHA_TEST_FUNC = GetPName(0x0BC1)
    alias ALPHA_TEST_FUNC_QCOM = GetPName(0x0BC1)
    alias ALPHA_TEST_REF = GetPName(0x0BC2)
    alias ALPHA_TEST_REF_QCOM = GetPName(0x0BC2)
    alias DITHER = GetPName(0x0BD0)
    alias BLEND_DST = GetPName(0x0BE0)
    alias BLEND_SRC = GetPName(0x0BE1)
    alias BLEND = GetPName(0x0BE2)
    alias LOGIC_OP_MODE = GetPName(0x0BF0)
    alias INDEX_LOGIC_OP = GetPName(0x0BF1)
    alias LOGIC_OP = GetPName(0x0BF1)
    alias COLOR_LOGIC_OP = GetPName(0x0BF2)
    alias AUX_BUFFERS = GetPName(0x0C00)
    alias DRAW_BUFFER = GetPName(0x0C01)
    alias DRAW_BUFFER_EXT = GetPName(0x0C01)
    alias READ_BUFFER = GetPName(0x0C02)
    alias READ_BUFFER_EXT = GetPName(0x0C02)
    alias READ_BUFFER_NV = GetPName(0x0C02)
    alias SCISSOR_BOX = GetPName(0x0C10)
    alias SCISSOR_TEST = GetPName(0x0C11)
    alias INDEX_CLEAR_VALUE = GetPName(0x0C20)
    alias INDEX_WRITEMASK = GetPName(0x0C21)
    alias COLOR_CLEAR_VALUE = GetPName(0x0C22)
    alias COLOR_WRITEMASK = GetPName(0x0C23)
    alias INDEX_MODE = GetPName(0x0C30)
    alias RGBA_MODE = GetPName(0x0C31)
    alias DOUBLEBUFFER = GetPName(0x0C32)
    alias STEREO = GetPName(0x0C33)
    alias RENDER_MODE = GetPName(0x0C40)
    alias PERSPECTIVE_CORRECTION_HINT = GetPName(0x0C50)
    alias POINT_SMOOTH_HINT = GetPName(0x0C51)
    alias LINE_SMOOTH_HINT = GetPName(0x0C52)
    alias POLYGON_SMOOTH_HINT = GetPName(0x0C53)
    alias FOG_HINT = GetPName(0x0C54)
    alias TEXTURE_GEN_S = GetPName(0x0C60)
    alias TEXTURE_GEN_T = GetPName(0x0C61)
    alias TEXTURE_GEN_R = GetPName(0x0C62)
    alias TEXTURE_GEN_Q = GetPName(0x0C63)
    alias PIXEL_MAP_I_TO_I_SIZE = GetPName(0x0CB0)
    alias PIXEL_MAP_S_TO_S_SIZE = GetPName(0x0CB1)
    alias PIXEL_MAP_I_TO_R_SIZE = GetPName(0x0CB2)
    alias PIXEL_MAP_I_TO_G_SIZE = GetPName(0x0CB3)
    alias PIXEL_MAP_I_TO_B_SIZE = GetPName(0x0CB4)
    alias PIXEL_MAP_I_TO_A_SIZE = GetPName(0x0CB5)
    alias PIXEL_MAP_R_TO_R_SIZE = GetPName(0x0CB6)
    alias PIXEL_MAP_G_TO_G_SIZE = GetPName(0x0CB7)
    alias PIXEL_MAP_B_TO_B_SIZE = GetPName(0x0CB8)
    alias PIXEL_MAP_A_TO_A_SIZE = GetPName(0x0CB9)
    alias UNPACK_SWAP_BYTES = GetPName(0x0CF0)
    alias UNPACK_LSB_FIRST = GetPName(0x0CF1)
    alias UNPACK_ROW_LENGTH = GetPName(0x0CF2)
    alias UNPACK_SKIP_ROWS = GetPName(0x0CF3)
    alias UNPACK_SKIP_PIXELS = GetPName(0x0CF4)
    alias UNPACK_ALIGNMENT = GetPName(0x0CF5)
    alias PACK_SWAP_BYTES = GetPName(0x0D00)
    alias PACK_LSB_FIRST = GetPName(0x0D01)
    alias PACK_ROW_LENGTH = GetPName(0x0D02)
    alias PACK_ROW_LENGTH_NV = GetPName(0x0D02)
    alias PACK_SKIP_ROWS = GetPName(0x0D03)
    alias PACK_SKIP_ROWS_NV = GetPName(0x0D03)
    alias PACK_SKIP_PIXELS = GetPName(0x0D04)
    alias PACK_SKIP_PIXELS_NV = GetPName(0x0D04)
    alias PACK_ALIGNMENT = GetPName(0x0D05)
    alias MAP_COLOR = GetPName(0x0D10)
    alias MAP_STENCIL = GetPName(0x0D11)
    alias INDEX_SHIFT = GetPName(0x0D12)
    alias INDEX_OFFSET = GetPName(0x0D13)
    alias RED_SCALE = GetPName(0x0D14)
    alias RED_BIAS = GetPName(0x0D15)
    alias ZOOM_X = GetPName(0x0D16)
    alias ZOOM_Y = GetPName(0x0D17)
    alias GREEN_SCALE = GetPName(0x0D18)
    alias GREEN_BIAS = GetPName(0x0D19)
    alias BLUE_SCALE = GetPName(0x0D1A)
    alias BLUE_BIAS = GetPName(0x0D1B)
    alias ALPHA_SCALE = GetPName(0x0D1C)
    alias ALPHA_BIAS = GetPName(0x0D1D)
    alias DEPTH_SCALE = GetPName(0x0D1E)
    alias DEPTH_BIAS = GetPName(0x0D1F)
    alias MAX_EVAL_ORDER = GetPName(0x0D30)
    alias MAX_LIGHTS = GetPName(0x0D31)
    alias MAX_CLIP_PLANES = GetPName(0x0D32)
    alias MAX_CLIP_DISTANCES = GetPName(0x0D32)
    alias MAX_TEXTURE_SIZE = GetPName(0x0D33)
    alias MAX_PIXEL_MAP_TABLE = GetPName(0x0D34)
    alias MAX_ATTRIB_STACK_DEPTH = GetPName(0x0D35)
    alias MAX_MODELVIEW_STACK_DEPTH = GetPName(0x0D36)
    alias MAX_NAME_STACK_DEPTH = GetPName(0x0D37)
    alias MAX_PROJECTION_STACK_DEPTH = GetPName(0x0D38)
    alias MAX_TEXTURE_STACK_DEPTH = GetPName(0x0D39)
    alias MAX_VIEWPORT_DIMS = GetPName(0x0D3A)
    alias MAX_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0D3B)
    alias SUBPIXEL_BITS = GetPName(0x0D50)
    alias INDEX_BITS = GetPName(0x0D51)
    alias RED_BITS = GetPName(0x0D52)
    alias GREEN_BITS = GetPName(0x0D53)
    alias BLUE_BITS = GetPName(0x0D54)
    alias ALPHA_BITS = GetPName(0x0D55)
    alias DEPTH_BITS = GetPName(0x0D56)
    alias STENCIL_BITS = GetPName(0x0D57)
    alias ACCUM_RED_BITS = GetPName(0x0D58)
    alias ACCUM_GREEN_BITS = GetPName(0x0D59)
    alias ACCUM_BLUE_BITS = GetPName(0x0D5A)
    alias ACCUM_ALPHA_BITS = GetPName(0x0D5B)
    alias NAME_STACK_DEPTH = GetPName(0x0D70)
    alias AUTO_NORMAL = GetPName(0x0D80)
    alias MAP1_COLOR_4 = GetPName(0x0D90)
    alias MAP1_INDEX = GetPName(0x0D91)
    alias MAP1_NORMAL = GetPName(0x0D92)
    alias MAP1_TEXTURE_COORD_1 = GetPName(0x0D93)
    alias MAP1_TEXTURE_COORD_2 = GetPName(0x0D94)
    alias MAP1_TEXTURE_COORD_3 = GetPName(0x0D95)
    alias MAP1_TEXTURE_COORD_4 = GetPName(0x0D96)
    alias MAP1_VERTEX_3 = GetPName(0x0D97)
    alias MAP1_VERTEX_4 = GetPName(0x0D98)
    alias MAP2_COLOR_4 = GetPName(0x0DB0)
    alias MAP2_INDEX = GetPName(0x0DB1)
    alias MAP2_NORMAL = GetPName(0x0DB2)
    alias MAP2_TEXTURE_COORD_1 = GetPName(0x0DB3)
    alias MAP2_TEXTURE_COORD_2 = GetPName(0x0DB4)
    alias MAP2_TEXTURE_COORD_3 = GetPName(0x0DB5)
    alias MAP2_TEXTURE_COORD_4 = GetPName(0x0DB6)
    alias MAP2_VERTEX_3 = GetPName(0x0DB7)
    alias MAP2_VERTEX_4 = GetPName(0x0DB8)
    alias MAP1_GRID_DOMAIN = GetPName(0x0DD0)
    alias MAP1_GRID_SEGMENTS = GetPName(0x0DD1)
    alias MAP2_GRID_DOMAIN = GetPName(0x0DD2)
    alias MAP2_GRID_SEGMENTS = GetPName(0x0DD3)
    alias TEXTURE_1D = GetPName(0x0DE0)
    alias TEXTURE_2D = GetPName(0x0DE1)
    alias FEEDBACK_BUFFER_SIZE = GetPName(0x0DF1)
    alias FEEDBACK_BUFFER_TYPE = GetPName(0x0DF2)
    alias SELECTION_BUFFER_SIZE = GetPName(0x0DF4)
    alias POLYGON_OFFSET_UNITS = GetPName(0x2A00)
    alias POLYGON_OFFSET_POINT = GetPName(0x2A01)
    alias POLYGON_OFFSET_LINE = GetPName(0x2A02)
    alias CLIP_PLANE0 = GetPName(0x3000)
    alias CLIP_PLANE1 = GetPName(0x3001)
    alias CLIP_PLANE2 = GetPName(0x3002)
    alias CLIP_PLANE3 = GetPName(0x3003)
    alias CLIP_PLANE4 = GetPName(0x3004)
    alias CLIP_PLANE5 = GetPName(0x3005)
    alias LIGHT0 = GetPName(0x4000)
    alias LIGHT1 = GetPName(0x4001)
    alias LIGHT2 = GetPName(0x4002)
    alias LIGHT3 = GetPName(0x4003)
    alias LIGHT4 = GetPName(0x4004)
    alias LIGHT5 = GetPName(0x4005)
    alias LIGHT6 = GetPName(0x4006)
    alias LIGHT7 = GetPName(0x4007)
    alias BLEND_COLOR = GetPName(0x8005)
    alias BLEND_COLOR_EXT = GetPName(0x8005)
    alias BLEND_EQUATION = GetPName(0x8009)
    alias BLEND_EQUATION_EXT = GetPName(0x8009)
    alias BLEND_EQUATION_OES = GetPName(0x8009)
    alias BLEND_EQUATION_RGB = GetPName(0x8009)
    alias PACK_CMYK_HINT_EXT = GetPName(0x800E)
    alias UNPACK_CMYK_HINT_EXT = GetPName(0x800F)
    alias CONVOLUTION_1D_EXT = GetPName(0x8010)
    alias CONVOLUTION_2D_EXT = GetPName(0x8011)
    alias SEPARABLE_2D_EXT = GetPName(0x8012)
    alias POST_CONVOLUTION_RED_SCALE_EXT = GetPName(0x801C)
    alias POST_CONVOLUTION_GREEN_SCALE_EXT = GetPName(0x801D)
    alias POST_CONVOLUTION_BLUE_SCALE_EXT = GetPName(0x801E)
    alias POST_CONVOLUTION_ALPHA_SCALE_EXT = GetPName(0x801F)
    alias POST_CONVOLUTION_RED_BIAS_EXT = GetPName(0x8020)
    alias POST_CONVOLUTION_GREEN_BIAS_EXT = GetPName(0x8021)
    alias POST_CONVOLUTION_BLUE_BIAS_EXT = GetPName(0x8022)
    alias POST_CONVOLUTION_ALPHA_BIAS_EXT = GetPName(0x8023)
    alias HISTOGRAM_EXT = GetPName(0x8024)
    alias MINMAX_EXT = GetPName(0x802E)
    alias POLYGON_OFFSET_FILL = GetPName(0x8037)
    alias POLYGON_OFFSET_FACTOR = GetPName(0x8038)
    alias POLYGON_OFFSET_BIAS_EXT = GetPName(0x8039)
    alias RESCALE_NORMAL_EXT = GetPName(0x803A)
    alias TEXTURE_BINDING_1D = GetPName(0x8068)
    alias TEXTURE_BINDING_2D = GetPName(0x8069)
    alias TEXTURE_3D_BINDING_EXT = GetPName(0x806A)
    alias TEXTURE_BINDING_3D = GetPName(0x806A)
    alias PACK_SKIP_IMAGES = GetPName(0x806B)
    alias PACK_SKIP_IMAGES_EXT = GetPName(0x806B)
    alias PACK_IMAGE_HEIGHT = GetPName(0x806C)
    alias PACK_IMAGE_HEIGHT_EXT = GetPName(0x806C)
    alias UNPACK_SKIP_IMAGES = GetPName(0x806D)
    alias UNPACK_SKIP_IMAGES_EXT = GetPName(0x806D)
    alias UNPACK_IMAGE_HEIGHT = GetPName(0x806E)
    alias UNPACK_IMAGE_HEIGHT_EXT = GetPName(0x806E)
    alias TEXTURE_3D_EXT = GetPName(0x806F)
    alias MAX_3D_TEXTURE_SIZE = GetPName(0x8073)
    alias MAX_3D_TEXTURE_SIZE_EXT = GetPName(0x8073)
    alias VERTEX_ARRAY = GetPName(0x8074)
    alias NORMAL_ARRAY = GetPName(0x8075)
    alias COLOR_ARRAY = GetPName(0x8076)
    alias INDEX_ARRAY = GetPName(0x8077)
    alias TEXTURE_COORD_ARRAY = GetPName(0x8078)
    alias EDGE_FLAG_ARRAY = GetPName(0x8079)
    alias VERTEX_ARRAY_SIZE = GetPName(0x807A)
    alias VERTEX_ARRAY_TYPE = GetPName(0x807B)
    alias VERTEX_ARRAY_STRIDE = GetPName(0x807C)
    alias VERTEX_ARRAY_COUNT_EXT = GetPName(0x807D)
    alias NORMAL_ARRAY_TYPE = GetPName(0x807E)
    alias NORMAL_ARRAY_STRIDE = GetPName(0x807F)
    alias NORMAL_ARRAY_COUNT_EXT = GetPName(0x8080)
    alias COLOR_ARRAY_SIZE = GetPName(0x8081)
    alias COLOR_ARRAY_TYPE = GetPName(0x8082)
    alias COLOR_ARRAY_STRIDE = GetPName(0x8083)
    alias COLOR_ARRAY_COUNT_EXT = GetPName(0x8084)
    alias INDEX_ARRAY_TYPE = GetPName(0x8085)
    alias INDEX_ARRAY_STRIDE = GetPName(0x8086)
    alias INDEX_ARRAY_COUNT_EXT = GetPName(0x8087)
    alias TEXTURE_COORD_ARRAY_SIZE = GetPName(0x8088)
    alias TEXTURE_COORD_ARRAY_TYPE = GetPName(0x8089)
    alias TEXTURE_COORD_ARRAY_STRIDE = GetPName(0x808A)
    alias TEXTURE_COORD_ARRAY_COUNT_EXT = GetPName(0x808B)
    alias EDGE_FLAG_ARRAY_STRIDE = GetPName(0x808C)
    alias EDGE_FLAG_ARRAY_COUNT_EXT = GetPName(0x808D)
    alias INTERLACE_SGIX = GetPName(0x8094)
    alias DETAIL_TEXTURE_2D_BINDING_SGIS = GetPName(0x8096)
    alias MULTISAMPLE_SGIS = GetPName(0x809D)
    alias SAMPLE_ALPHA_TO_MASK_SGIS = GetPName(0x809E)
    alias SAMPLE_ALPHA_TO_ONE_SGIS = GetPName(0x809F)
    alias SAMPLE_MASK_SGIS = GetPName(0x80A0)
    alias SAMPLE_BUFFERS = GetPName(0x80A8)
    alias SAMPLE_BUFFERS_SGIS = GetPName(0x80A8)
    alias SAMPLES = GetPName(0x80A9)
    alias SAMPLES_SGIS = GetPName(0x80A9)
    alias SAMPLE_COVERAGE_VALUE = GetPName(0x80AA)
    alias SAMPLE_MASK_VALUE_SGIS = GetPName(0x80AA)
    alias SAMPLE_COVERAGE_INVERT = GetPName(0x80AB)
    alias SAMPLE_MASK_INVERT_SGIS = GetPName(0x80AB)
    alias SAMPLE_PATTERN_SGIS = GetPName(0x80AC)
    alias COLOR_MATRIX_SGI = GetPName(0x80B1)
    alias COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B2)
    alias MAX_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B3)
    alias POST_COLOR_MATRIX_RED_SCALE_SGI = GetPName(0x80B4)
    alias POST_COLOR_MATRIX_GREEN_SCALE_SGI = GetPName(0x80B5)
    alias POST_COLOR_MATRIX_BLUE_SCALE_SGI = GetPName(0x80B6)
    alias POST_COLOR_MATRIX_ALPHA_SCALE_SGI = GetPName(0x80B7)
    alias POST_COLOR_MATRIX_RED_BIAS_SGI = GetPName(0x80B8)
    alias POST_COLOR_MATRIX_GREEN_BIAS_SGI = GetPName(0x80B9)
    alias POST_COLOR_MATRIX_BLUE_BIAS_SGI = GetPName(0x80BA)
    alias POST_COLOR_MATRIX_ALPHA_BIAS_SGI = GetPName(0x80BB)
    alias TEXTURE_COLOR_TABLE_SGI = GetPName(0x80BC)
    alias BLEND_DST_RGB = GetPName(0x80C8)
    alias BLEND_SRC_RGB = GetPName(0x80C9)
    alias BLEND_DST_ALPHA = GetPName(0x80CA)
    alias BLEND_SRC_ALPHA = GetPName(0x80CB)
    alias COLOR_TABLE_SGI = GetPName(0x80D0)
    alias POST_CONVOLUTION_COLOR_TABLE_SGI = GetPName(0x80D1)
    alias POST_COLOR_MATRIX_COLOR_TABLE_SGI = GetPName(0x80D2)
    alias MAX_ELEMENTS_VERTICES = GetPName(0x80E8)
    alias MAX_ELEMENTS_INDICES = GetPName(0x80E9)
    alias POINT_SIZE_MIN = GetPName(0x8126)
    alias POINT_SIZE_MIN_ARB = GetPName(0x8126)
    alias POINT_SIZE_MIN_EXT = GetPName(0x8126)
    alias POINT_SIZE_MIN_SGIS = GetPName(0x8126)
    alias POINT_SIZE_MAX = GetPName(0x8127)
    alias POINT_SIZE_MAX_ARB = GetPName(0x8127)
    alias POINT_SIZE_MAX_EXT = GetPName(0x8127)
    alias POINT_SIZE_MAX_SGIS = GetPName(0x8127)
    alias POINT_FADE_THRESHOLD_SIZE = GetPName(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_ARB = GetPName(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_EXT = GetPName(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_SGIS = GetPName(0x8128)
    alias DISTANCE_ATTENUATION_EXT = GetPName(0x8129)
    alias DISTANCE_ATTENUATION_SGIS = GetPName(0x8129)
    alias POINT_DISTANCE_ATTENUATION = GetPName(0x8129)
    alias POINT_DISTANCE_ATTENUATION_ARB = GetPName(0x8129)
    alias FOG_FUNC_POINTS_SGIS = GetPName(0x812B)
    alias MAX_FOG_FUNC_POINTS_SGIS = GetPName(0x812C)
    alias PACK_SKIP_VOLUMES_SGIS = GetPName(0x8130)
    alias PACK_IMAGE_DEPTH_SGIS = GetPName(0x8131)
    alias UNPACK_SKIP_VOLUMES_SGIS = GetPName(0x8132)
    alias UNPACK_IMAGE_DEPTH_SGIS = GetPName(0x8133)
    alias TEXTURE_4D_SGIS = GetPName(0x8134)
    alias MAX_4D_TEXTURE_SIZE_SGIS = GetPName(0x8138)
    alias PIXEL_TEX_GEN_SGIX = GetPName(0x8139)
    alias PIXEL_TILE_BEST_ALIGNMENT_SGIX = GetPName(0x813E)
    alias PIXEL_TILE_CACHE_INCREMENT_SGIX = GetPName(0x813F)
    alias PIXEL_TILE_WIDTH_SGIX = GetPName(0x8140)
    alias PIXEL_TILE_HEIGHT_SGIX = GetPName(0x8141)
    alias PIXEL_TILE_GRID_WIDTH_SGIX = GetPName(0x8142)
    alias PIXEL_TILE_GRID_HEIGHT_SGIX = GetPName(0x8143)
    alias PIXEL_TILE_GRID_DEPTH_SGIX = GetPName(0x8144)
    alias PIXEL_TILE_CACHE_SIZE_SGIX = GetPName(0x8145)
    alias SPRITE_SGIX = GetPName(0x8148)
    alias SPRITE_MODE_SGIX = GetPName(0x8149)
    alias SPRITE_AXIS_SGIX = GetPName(0x814A)
    alias SPRITE_TRANSLATION_SGIX = GetPName(0x814B)
    alias TEXTURE_4D_BINDING_SGIS = GetPName(0x814F)
    alias MAX_CLIPMAP_DEPTH_SGIX = GetPName(0x8177)
    alias MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetPName(0x8178)
    alias POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = GetPName(0x817B)
    alias POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = GetPName(0x817C)
    alias REFERENCE_PLANE_SGIX = GetPName(0x817D)
    alias REFERENCE_PLANE_EQUATION_SGIX = GetPName(0x817E)
    alias IR_INSTRUMENT1_SGIX = GetPName(0x817F)
    alias INSTRUMENT_MEASUREMENTS_SGIX = GetPName(0x8181)
    alias CALLIGRAPHIC_FRAGMENT_SGIX = GetPName(0x8183)
    alias FRAMEZOOM_SGIX = GetPName(0x818B)
    alias FRAMEZOOM_FACTOR_SGIX = GetPName(0x818C)
    alias MAX_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818D)
    alias GENERATE_MIPMAP_HINT_SGIS = GetPName(0x8192)
    alias DEFORMATIONS_MASK_SGIX = GetPName(0x8196)
    alias FOG_OFFSET_SGIX = GetPName(0x8198)
    alias FOG_OFFSET_VALUE_SGIX = GetPName(0x8199)
    alias LIGHT_MODEL_COLOR_CONTROL = GetPName(0x81F8)
    alias SHARED_TEXTURE_PALETTE_EXT = GetPName(0x81FB)
    alias MAJOR_VERSION = GetPName(0x821B)
    alias MINOR_VERSION = GetPName(0x821C)
    alias NUM_EXTENSIONS = GetPName(0x821D)
    alias CONTEXT_FLAGS = GetPName(0x821E)
    alias PROGRAM_PIPELINE_BINDING = GetPName(0x825A)
    alias MAX_VIEWPORTS = GetPName(0x825B)
    alias VIEWPORT_SUBPIXEL_BITS = GetPName(0x825C)
    alias VIEWPORT_BOUNDS_RANGE = GetPName(0x825D)
    alias LAYER_PROVOKING_VERTEX = GetPName(0x825E)
    alias VIEWPORT_INDEX_PROVOKING_VERTEX = GetPName(0x825F)
    alias MAX_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8263)
    alias MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = GetPName(0x8264)
    alias MAX_COMPUTE_ATOMIC_COUNTERS = GetPName(0x8265)
    alias MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8266)
    alias MAX_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826C)
    alias DEBUG_GROUP_STACK_DEPTH = GetPName(0x826D)
    alias MAX_UNIFORM_LOCATIONS = GetPName(0x826E)
    alias VERTEX_BINDING_DIVISOR = GetPName(0x82D6)
    alias VERTEX_BINDING_OFFSET = GetPName(0x82D7)
    alias VERTEX_BINDING_STRIDE = GetPName(0x82D8)
    alias MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = GetPName(0x82D9)
    alias MAX_VERTEX_ATTRIB_BINDINGS = GetPName(0x82DA)
    alias MAX_LABEL_LENGTH = GetPName(0x82E8)
    alias CONVOLUTION_HINT_SGIX = GetPName(0x8316)
    alias ASYNC_MARKER_SGIX = GetPName(0x8329)
    alias PIXEL_TEX_GEN_MODE_SGIX = GetPName(0x832B)
    alias ASYNC_HISTOGRAM_SGIX = GetPName(0x832C)
    alias MAX_ASYNC_HISTOGRAM_SGIX = GetPName(0x832D)
    alias PIXEL_TEXTURE_SGIS = GetPName(0x8353)
    alias ASYNC_TEX_IMAGE_SGIX = GetPName(0x835C)
    alias ASYNC_DRAW_PIXELS_SGIX = GetPName(0x835D)
    alias ASYNC_READ_PIXELS_SGIX = GetPName(0x835E)
    alias MAX_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835F)
    alias MAX_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x8360)
    alias MAX_ASYNC_READ_PIXELS_SGIX = GetPName(0x8361)
    alias VERTEX_PRECLIP_SGIX = GetPName(0x83EE)
    alias VERTEX_PRECLIP_HINT_SGIX = GetPName(0x83EF)
    alias FRAGMENT_LIGHTING_SGIX = GetPName(0x8400)
    alias FRAGMENT_COLOR_MATERIAL_SGIX = GetPName(0x8401)
    alias FRAGMENT_COLOR_MATERIAL_FACE_SGIX = GetPName(0x8402)
    alias FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = GetPName(0x8403)
    alias MAX_FRAGMENT_LIGHTS_SGIX = GetPName(0x8404)
    alias MAX_ACTIVE_LIGHTS_SGIX = GetPName(0x8405)
    alias LIGHT_ENV_MODE_SGIX = GetPName(0x8407)
    alias FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = GetPName(0x8408)
    alias FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = GetPName(0x8409)
    alias FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = GetPName(0x840A)
    alias FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = GetPName(0x840B)
    alias FRAGMENT_LIGHT0_SGIX = GetPName(0x840C)
    alias PACK_RESAMPLE_SGIX = GetPName(0x842E)
    alias UNPACK_RESAMPLE_SGIX = GetPName(0x842F)
    alias ALIASED_POINT_SIZE_RANGE = GetPName(0x846D)
    alias ALIASED_LINE_WIDTH_RANGE = GetPName(0x846E)
    alias ACTIVE_TEXTURE = GetPName(0x84E0)
    alias MAX_RENDERBUFFER_SIZE = GetPName(0x84E8)
    alias TEXTURE_COMPRESSION_HINT = GetPName(0x84EF)
    alias TEXTURE_BINDING_RECTANGLE = GetPName(0x84F6)
    alias TEXTURE_BINDING_RECTANGLE_ARB = GetPName(0x84F6)
    alias TEXTURE_BINDING_RECTANGLE_NV = GetPName(0x84F6)
    alias MAX_RECTANGLE_TEXTURE_SIZE = GetPName(0x84F8)
    alias MAX_TEXTURE_LOD_BIAS = GetPName(0x84FD)
    alias TEXTURE_BINDING_CUBE_MAP = GetPName(0x8514)
    alias TEXTURE_BINDING_CUBE_MAP_ARB = GetPName(0x8514)
    alias TEXTURE_BINDING_CUBE_MAP_EXT = GetPName(0x8514)
    alias TEXTURE_BINDING_CUBE_MAP_OES = GetPName(0x8514)
    alias MAX_CUBE_MAP_TEXTURE_SIZE = GetPName(0x851C)
    alias MAX_CUBE_MAP_TEXTURE_SIZE_ARB = GetPName(0x851C)
    alias MAX_CUBE_MAP_TEXTURE_SIZE_EXT = GetPName(0x851C)
    alias MAX_CUBE_MAP_TEXTURE_SIZE_OES = GetPName(0x851C)
    alias PACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A0)
    alias UNPACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A1)
    alias VERTEX_ARRAY_BINDING = GetPName(0x85B5)
    alias PROGRAM_POINT_SIZE = GetPName(0x8642)
    alias NUM_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A2)
    alias COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A3)
    alias NUM_PROGRAM_BINARY_FORMATS = GetPName(0x87FE)
    alias PROGRAM_BINARY_FORMATS = GetPName(0x87FF)
    alias STENCIL_BACK_FUNC = GetPName(0x8800)
    alias STENCIL_BACK_FAIL = GetPName(0x8801)
    alias STENCIL_BACK_PASS_DEPTH_FAIL = GetPName(0x8802)
    alias STENCIL_BACK_PASS_DEPTH_PASS = GetPName(0x8803)
    alias MAX_DRAW_BUFFERS = GetPName(0x8824)
    alias BLEND_EQUATION_ALPHA = GetPName(0x883D)
    alias MAX_VERTEX_ATTRIBS = GetPName(0x8869)
    alias MAX_TEXTURE_IMAGE_UNITS = GetPName(0x8872)
    alias ARRAY_BUFFER_BINDING = GetPName(0x8894)
    alias ELEMENT_ARRAY_BUFFER_BINDING = GetPName(0x8895)
    alias PIXEL_PACK_BUFFER_BINDING = GetPName(0x88ED)
    alias PIXEL_UNPACK_BUFFER_BINDING = GetPName(0x88EF)
    alias MAX_DUAL_SOURCE_DRAW_BUFFERS = GetPName(0x88FC)
    alias MAX_ARRAY_TEXTURE_LAYERS = GetPName(0x88FF)
    alias MIN_PROGRAM_TEXEL_OFFSET = GetPName(0x8904)
    alias MAX_PROGRAM_TEXEL_OFFSET = GetPName(0x8905)
    alias SAMPLER_BINDING = GetPName(0x8919)
    alias FRAGMENT_SHADER_ATI = GetPName(0x8920)
    alias UNIFORM_BUFFER_BINDING = GetPName(0x8A28)
    alias UNIFORM_BUFFER_START = GetPName(0x8A29)
    alias UNIFORM_BUFFER_SIZE = GetPName(0x8A2A)
    alias MAX_VERTEX_UNIFORM_BLOCKS = GetPName(0x8A2B)
    alias MAX_GEOMETRY_UNIFORM_BLOCKS = GetPName(0x8A2C)
    alias MAX_FRAGMENT_UNIFORM_BLOCKS = GetPName(0x8A2D)
    alias MAX_COMBINED_UNIFORM_BLOCKS = GetPName(0x8A2E)
    alias MAX_UNIFORM_BUFFER_BINDINGS = GetPName(0x8A2F)
    alias MAX_UNIFORM_BLOCK_SIZE = GetPName(0x8A30)
    alias MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8A31)
    alias MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8A32)
    alias MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8A33)
    alias UNIFORM_BUFFER_OFFSET_ALIGNMENT = GetPName(0x8A34)
    alias MAX_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8B49)
    alias MAX_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8B4A)
    alias MAX_VARYING_FLOATS = GetPName(0x8B4B)
    alias MAX_VARYING_COMPONENTS = GetPName(0x8B4B)
    alias MAX_VERTEX_TEXTURE_IMAGE_UNITS = GetPName(0x8B4C)
    alias MAX_COMBINED_TEXTURE_IMAGE_UNITS = GetPName(0x8B4D)
    alias FRAGMENT_SHADER_DERIVATIVE_HINT = GetPName(0x8B8B)
    alias CURRENT_PROGRAM = GetPName(0x8B8D)
    alias IMPLEMENTATION_COLOR_READ_TYPE = GetPName(0x8B9A)
    alias IMPLEMENTATION_COLOR_READ_FORMAT = GetPName(0x8B9B)
    alias TEXTURE_BINDING_1D_ARRAY = GetPName(0x8C1C)
    alias TEXTURE_BINDING_2D_ARRAY = GetPName(0x8C1D)
    alias MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = GetPName(0x8C29)
    alias MAX_TEXTURE_BUFFER_SIZE = GetPName(0x8C2B)
    alias TEXTURE_BINDING_BUFFER = GetPName(0x8C2C)
    alias TRANSFORM_FEEDBACK_BUFFER_START = GetPName(0x8C84)
    alias TRANSFORM_FEEDBACK_BUFFER_SIZE = GetPName(0x8C85)
    alias TRANSFORM_FEEDBACK_BUFFER_BINDING = GetPName(0x8C8F)
    alias MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM = GetPName(0x8C90)
    alias MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM = GetPName(0x8C91)
    alias STENCIL_BACK_REF = GetPName(0x8CA3)
    alias STENCIL_BACK_VALUE_MASK = GetPName(0x8CA4)
    alias STENCIL_BACK_WRITEMASK = GetPName(0x8CA5)
    alias DRAW_FRAMEBUFFER_BINDING = GetPName(0x8CA6)
    alias RENDERBUFFER_BINDING = GetPName(0x8CA7)
    alias READ_FRAMEBUFFER_BINDING = GetPName(0x8CAA)
    alias MAX_COLOR_ATTACHMENTS = GetPName(0x8CDF)
    alias MAX_COLOR_ATTACHMENTS_EXT = GetPName(0x8CDF)
    alias MAX_COLOR_ATTACHMENTS_NV = GetPName(0x8CDF)
    alias TEXTURE_GEN_STR_OES = GetPName(0x8D60)
    alias MAX_ELEMENT_INDEX = GetPName(0x8D6B)
    alias MAX_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8DDF)
    alias SHADER_BINARY_FORMATS = GetPName(0x8DF8)
    alias NUM_SHADER_BINARY_FORMATS = GetPName(0x8DF9)
    alias SHADER_COMPILER = GetPName(0x8DFA)
    alias MAX_VERTEX_UNIFORM_VECTORS = GetPName(0x8DFB)
    alias MAX_VARYING_VECTORS = GetPName(0x8DFC)
    alias MAX_FRAGMENT_UNIFORM_VECTORS = GetPName(0x8DFD)
    alias TIMESTAMP = GetPName(0x8E28)
    alias TIMESTAMP_EXT = GetPName(0x8E28)
    alias PROVOKING_VERTEX = GetPName(0x8E4F)
    alias MAX_SAMPLE_MASK_WORDS = GetPName(0x8E59)
    alias MAX_TESS_CONTROL_UNIFORM_BLOCKS = GetPName(0x8E89)
    alias MAX_TESS_EVALUATION_UNIFORM_BLOCKS = GetPName(0x8E8A)
    alias FETCH_PER_SAMPLE_ARM = GetPName(0x8F65)
    alias FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = GetPName(0x8F66)
    alias FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT = GetPName(0x8F6F)
    alias PRIMITIVE_RESTART_INDEX = GetPName(0x8F9E)
    alias MIN_MAP_BUFFER_ALIGNMENT = GetPName(0x90BC)
    alias SHADER_STORAGE_BUFFER_BINDING = GetPName(0x90D3)
    alias SHADER_STORAGE_BUFFER_START = GetPName(0x90D4)
    alias SHADER_STORAGE_BUFFER_SIZE = GetPName(0x90D5)
    alias MAX_VERTEX_SHADER_STORAGE_BLOCKS = GetPName(0x90D6)
    alias MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = GetPName(0x90D7)
    alias MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = GetPName(0x90D8)
    alias MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = GetPName(0x90D9)
    alias MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = GetPName(0x90DA)
    alias MAX_COMPUTE_SHADER_STORAGE_BLOCKS = GetPName(0x90DB)
    alias MAX_COMBINED_SHADER_STORAGE_BLOCKS = GetPName(0x90DC)
    alias MAX_SHADER_STORAGE_BUFFER_BINDINGS = GetPName(0x90DD)
    alias SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x90DF)
    alias MAX_COMPUTE_WORK_GROUP_INVOCATIONS = GetPName(0x90EB)
    alias DISPATCH_INDIRECT_BUFFER_BINDING = GetPName(0x90EF)
    alias TEXTURE_BINDING_2D_MULTISAMPLE = GetPName(0x9104)
    alias TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = GetPName(0x9105)
    alias MAX_COLOR_TEXTURE_SAMPLES = GetPName(0x910E)
    alias MAX_DEPTH_TEXTURE_SAMPLES = GetPName(0x910F)
    alias MAX_INTEGER_SAMPLES = GetPName(0x9110)
    alias MAX_SERVER_WAIT_TIMEOUT = GetPName(0x9111)
    alias MAX_VERTEX_OUTPUT_COMPONENTS = GetPName(0x9122)
    alias MAX_GEOMETRY_INPUT_COMPONENTS = GetPName(0x9123)
    alias MAX_GEOMETRY_OUTPUT_COMPONENTS = GetPName(0x9124)
    alias MAX_FRAGMENT_INPUT_COMPONENTS = GetPName(0x9125)
    alias CONTEXT_PROFILE_MASK = GetPName(0x9126)
    alias TEXTURE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x919F)
    alias MAX_COMPUTE_UNIFORM_BLOCKS = GetPName(0x91BB)
    alias MAX_COMPUTE_TEXTURE_IMAGE_UNITS = GetPName(0x91BC)
    alias MAX_COMPUTE_WORK_GROUP_COUNT = GetPName(0x91BE)
    alias MAX_COMPUTE_WORK_GROUP_SIZE = GetPName(0x91BF)
    alias MAX_VERTEX_ATOMIC_COUNTERS = GetPName(0x92D2)
    alias MAX_TESS_CONTROL_ATOMIC_COUNTERS = GetPName(0x92D3)
    alias MAX_TESS_EVALUATION_ATOMIC_COUNTERS = GetPName(0x92D4)
    alias MAX_GEOMETRY_ATOMIC_COUNTERS = GetPName(0x92D5)
    alias MAX_FRAGMENT_ATOMIC_COUNTERS = GetPName(0x92D6)
    alias MAX_COMBINED_ATOMIC_COUNTERS = GetPName(0x92D7)
    alias MAX_FRAMEBUFFER_WIDTH = GetPName(0x9315)
    alias MAX_FRAMEBUFFER_HEIGHT = GetPName(0x9316)
    alias MAX_FRAMEBUFFER_LAYERS = GetPName(0x9317)
    alias MAX_FRAMEBUFFER_SAMPLES = GetPName(0x9318)
    alias NUM_DEVICE_UUIDS_EXT = GetPName(0x9596)
    alias DEVICE_UUID_EXT = GetPName(0x9597)
    alias DRIVER_UUID_EXT = GetPName(0x9598)
    alias DEVICE_LUID_EXT = GetPName(0x9599)
    alias DEVICE_NODE_MASK_EXT = GetPName(0x959A)
    alias SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = GetPName(0x95B1)
    alias SHADING_RATE_IMAGE_PALETTE_COUNT_NV = GetPName(0x95B2)
    alias MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV = GetPName(0x95B6)
    alias FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = GetPName(0x96A2)
    alias SHADING_RATE_QCOM = GetPName(0x96A4)
    alias SHADING_RATE_EXT = GetPName(0x96D0)
    alias MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D7)
    alias MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D8)
    alias MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96D9)
    alias MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96DA)
    alias MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT = GetPName(0x96DB)
    alias MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT = GetPName(0x96DC)
    alias FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT = GetPName(0x96DD)
    alias FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT = GetPName(0x96DE)
    alias FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT = GetPName(0x96DF)
    alias SHADER_CORE_COUNT_ARM = GetPName(0x96F0)
    alias SHADER_CORE_ACTIVE_COUNT_ARM = GetPName(0x96F1)
    alias SHADER_CORE_PRESENT_MASK_ARM = GetPName(0x96F2)
    alias SHADER_CORE_MAX_WARP_COUNT_ARM = GetPName(0x96F3)
    alias SHADER_CORE_PIXEL_RATE_ARM = GetPName(0x96F4)
    alias SHADER_CORE_TEXEL_RATE_ARM = GetPName(0x96F5)
    alias SHADER_CORE_FMA_RATE_ARM = GetPName(0x96F6)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetTextureParameter(Intable):
    var value: GLenum

    alias TEXTURE_WIDTH = GetTextureParameter(0x1000)
    alias TEXTURE_HEIGHT = GetTextureParameter(0x1001)
    alias TEXTURE_INTERNAL_FORMAT = GetTextureParameter(0x1003)
    alias TEXTURE_COMPONENTS = GetTextureParameter(0x1003)
    alias TEXTURE_BORDER_COLOR = GetTextureParameter(0x1004)
    alias TEXTURE_BORDER_COLOR_NV = GetTextureParameter(0x1004)
    alias TEXTURE_BORDER = GetTextureParameter(0x1005)
    alias TEXTURE_MAG_FILTER = GetTextureParameter(0x2800)
    alias TEXTURE_MIN_FILTER = GetTextureParameter(0x2801)
    alias TEXTURE_WRAP_S = GetTextureParameter(0x2802)
    alias TEXTURE_WRAP_T = GetTextureParameter(0x2803)
    alias TEXTURE_RED_SIZE = GetTextureParameter(0x805C)
    alias TEXTURE_GREEN_SIZE = GetTextureParameter(0x805D)
    alias TEXTURE_BLUE_SIZE = GetTextureParameter(0x805E)
    alias TEXTURE_ALPHA_SIZE = GetTextureParameter(0x805F)
    alias TEXTURE_LUMINANCE_SIZE = GetTextureParameter(0x8060)
    alias TEXTURE_INTENSITY_SIZE = GetTextureParameter(0x8061)
    alias TEXTURE_PRIORITY = GetTextureParameter(0x8066)
    alias TEXTURE_RESIDENT = GetTextureParameter(0x8067)
    alias TEXTURE_DEPTH_EXT = GetTextureParameter(0x8071)
    alias TEXTURE_WRAP_R_EXT = GetTextureParameter(0x8072)
    alias DETAIL_TEXTURE_LEVEL_SGIS = GetTextureParameter(0x809A)
    alias DETAIL_TEXTURE_MODE_SGIS = GetTextureParameter(0x809B)
    alias DETAIL_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x809C)
    alias SHARPEN_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x80B0)
    alias SHADOW_AMBIENT_SGIX = GetTextureParameter(0x80BF)
    alias DUAL_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8124)
    alias QUAD_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8125)
    alias TEXTURE_4DSIZE_SGIS = GetTextureParameter(0x8136)
    alias TEXTURE_WRAP_Q_SGIS = GetTextureParameter(0x8137)
    alias TEXTURE_MIN_LOD_SGIS = GetTextureParameter(0x813A)
    alias TEXTURE_MAX_LOD_SGIS = GetTextureParameter(0x813B)
    alias TEXTURE_BASE_LEVEL_SGIS = GetTextureParameter(0x813C)
    alias TEXTURE_MAX_LEVEL_SGIS = GetTextureParameter(0x813D)
    alias TEXTURE_FILTER4_SIZE_SGIS = GetTextureParameter(0x8147)
    alias TEXTURE_CLIPMAP_CENTER_SGIX = GetTextureParameter(0x8171)
    alias TEXTURE_CLIPMAP_FRAME_SGIX = GetTextureParameter(0x8172)
    alias TEXTURE_CLIPMAP_OFFSET_SGIX = GetTextureParameter(0x8173)
    alias TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetTextureParameter(0x8174)
    alias TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = GetTextureParameter(0x8175)
    alias TEXTURE_CLIPMAP_DEPTH_SGIX = GetTextureParameter(0x8176)
    alias POST_TEXTURE_FILTER_BIAS_SGIX = GetTextureParameter(0x8179)
    alias POST_TEXTURE_FILTER_SCALE_SGIX = GetTextureParameter(0x817A)
    alias TEXTURE_LOD_BIAS_S_SGIX = GetTextureParameter(0x818E)
    alias TEXTURE_LOD_BIAS_T_SGIX = GetTextureParameter(0x818F)
    alias TEXTURE_LOD_BIAS_R_SGIX = GetTextureParameter(0x8190)
    alias GENERATE_MIPMAP_SGIS = GetTextureParameter(0x8191)
    alias TEXTURE_COMPARE_SGIX = GetTextureParameter(0x819A)
    alias TEXTURE_COMPARE_OPERATOR_SGIX = GetTextureParameter(0x819B)
    alias TEXTURE_LEQUAL_R_SGIX = GetTextureParameter(0x819C)
    alias TEXTURE_GEQUAL_R_SGIX = GetTextureParameter(0x819D)
    alias TEXTURE_MAX_CLAMP_S_SGIX = GetTextureParameter(0x8369)
    alias TEXTURE_MAX_CLAMP_T_SGIX = GetTextureParameter(0x836A)
    alias TEXTURE_MAX_CLAMP_R_SGIX = GetTextureParameter(0x836B)
    alias NORMAL_MAP = GetTextureParameter(0x8511)
    alias NORMAL_MAP_ARB = GetTextureParameter(0x8511)
    alias NORMAL_MAP_EXT = GetTextureParameter(0x8511)
    alias NORMAL_MAP_NV = GetTextureParameter(0x8511)
    alias NORMAL_MAP_OES = GetTextureParameter(0x8511)
    alias REFLECTION_MAP = GetTextureParameter(0x8512)
    alias REFLECTION_MAP_ARB = GetTextureParameter(0x8512)
    alias REFLECTION_MAP_EXT = GetTextureParameter(0x8512)
    alias REFLECTION_MAP_NV = GetTextureParameter(0x8512)
    alias REFLECTION_MAP_OES = GetTextureParameter(0x8512)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = GetTextureParameter(0x8F6A)
    alias SURFACE_COMPRESSION_EXT = GetTextureParameter(0x96C0)
    alias TEXTURE_Y_DEGAMMA_QCOM = GetTextureParameter(0x9710)
    alias TEXTURE_CBCR_DEGAMMA_QCOM = GetTextureParameter(0x9711)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GraphicsResetStatus(Intable):
    var value: GLenum

    alias NO_ERROR = GraphicsResetStatus(0)
    alias GUILTY_CONTEXT_RESET = GraphicsResetStatus(0x8253)
    alias INNOCENT_CONTEXT_RESET = GraphicsResetStatus(0x8254)
    alias UNKNOWN_CONTEXT_RESET = GraphicsResetStatus(0x8255)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HintMode(Intable):
    var value: GLenum

    alias DONT_CARE = HintMode(0x1100)
    alias FASTEST = HintMode(0x1101)
    alias NICEST = HintMode(0x1102)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HintTarget(Intable):
    var value: GLenum

    alias PERSPECTIVE_CORRECTION_HINT = HintTarget(0x0C50)
    alias POINT_SMOOTH_HINT = HintTarget(0x0C51)
    alias LINE_SMOOTH_HINT = HintTarget(0x0C52)
    alias POLYGON_SMOOTH_HINT = HintTarget(0x0C53)
    alias FOG_HINT = HintTarget(0x0C54)
    alias PACK_CMYK_HINT_EXT = HintTarget(0x800E)
    alias UNPACK_CMYK_HINT_EXT = HintTarget(0x800F)
    alias PHONG_HINT_WIN = HintTarget(0x80EB)
    alias CLIP_VOLUME_CLIPPING_HINT_EXT = HintTarget(0x80F0)
    alias TEXTURE_MULTI_BUFFER_HINT_SGIX = HintTarget(0x812E)
    alias GENERATE_MIPMAP_HINT = HintTarget(0x8192)
    alias GENERATE_MIPMAP_HINT_SGIS = HintTarget(0x8192)
    alias PROGRAM_BINARY_RETRIEVABLE_HINT = HintTarget(0x8257)
    alias CONVOLUTION_HINT_SGIX = HintTarget(0x8316)
    alias SCALEBIAS_HINT_SGIX = HintTarget(0x8322)
    alias LINE_QUALITY_HINT_SGIX = HintTarget(0x835B)
    alias VERTEX_PRECLIP_SGIX = HintTarget(0x83EE)
    alias VERTEX_PRECLIP_HINT_SGIX = HintTarget(0x83EF)
    alias TEXTURE_COMPRESSION_HINT = HintTarget(0x84EF)
    alias TEXTURE_COMPRESSION_HINT_ARB = HintTarget(0x84EF)
    alias VERTEX_ARRAY_STORAGE_HINT_APPLE = HintTarget(0x851F)
    alias MULTISAMPLE_FILTER_HINT_NV = HintTarget(0x8534)
    alias TRANSFORM_HINT_APPLE = HintTarget(0x85B1)
    alias TEXTURE_STORAGE_HINT_APPLE = HintTarget(0x85BC)
    alias FRAGMENT_SHADER_DERIVATIVE_HINT = HintTarget(0x8B8B)
    alias FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = HintTarget(0x8B8B)
    alias FRAGMENT_SHADER_DERIVATIVE_HINT_OES = HintTarget(0x8B8B)
    alias BINNING_CONTROL_HINT_QCOM = HintTarget(0x8FB0)
    alias PREFER_DOUBLEBUFFER_HINT_PGI = HintTarget(0x1A1F8)
    alias CONSERVE_MEMORY_HINT_PGI = HintTarget(0x1A1FD)
    alias RECLAIM_MEMORY_HINT_PGI = HintTarget(0x1A1FE)
    alias NATIVE_GRAPHICS_BEGIN_HINT_PGI = HintTarget(0x1A203)
    alias NATIVE_GRAPHICS_END_HINT_PGI = HintTarget(0x1A204)
    alias ALWAYS_FAST_HINT_PGI = HintTarget(0x1A20C)
    alias ALWAYS_SOFT_HINT_PGI = HintTarget(0x1A20D)
    alias ALLOW_DRAW_OBJ_HINT_PGI = HintTarget(0x1A20E)
    alias ALLOW_DRAW_WIN_HINT_PGI = HintTarget(0x1A20F)
    alias ALLOW_DRAW_FRG_HINT_PGI = HintTarget(0x1A210)
    alias ALLOW_DRAW_MEM_HINT_PGI = HintTarget(0x1A211)
    alias STRICT_DEPTHFUNC_HINT_PGI = HintTarget(0x1A216)
    alias STRICT_LIGHTING_HINT_PGI = HintTarget(0x1A217)
    alias STRICT_SCISSOR_HINT_PGI = HintTarget(0x1A218)
    alias FULL_STIPPLE_HINT_PGI = HintTarget(0x1A219)
    alias CLIP_NEAR_HINT_PGI = HintTarget(0x1A220)
    alias CLIP_FAR_HINT_PGI = HintTarget(0x1A221)
    alias WIDE_LINE_HINT_PGI = HintTarget(0x1A222)
    alias BACK_NORMALS_HINT_PGI = HintTarget(0x1A223)
    alias VERTEX_DATA_HINT_PGI = HintTarget(0x1A22A)
    alias VERTEX_CONSISTENT_HINT_PGI = HintTarget(0x1A22B)
    alias MATERIAL_SIDE_HINT_PGI = HintTarget(0x1A22C)
    alias MAX_VERTEX_HINT_PGI = HintTarget(0x1A22D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HistogramTarget(Intable):
    var value: GLenum

    alias HISTOGRAM = HistogramTarget(0x8024)
    alias PROXY_HISTOGRAM = HistogramTarget(0x8025)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InternalFormat(Intable):
    var value: GLenum

    alias STENCIL_INDEX = InternalFormat(0x1901)
    alias STENCIL_INDEX_OES = InternalFormat(0x1901)
    alias DEPTH_COMPONENT = InternalFormat(0x1902)
    alias RED = InternalFormat(0x1903)
    alias RED_EXT = InternalFormat(0x1903)
    alias RGB = InternalFormat(0x1907)
    alias RGBA = InternalFormat(0x1908)
    alias R3_G3_B2 = InternalFormat(0x2A10)
    alias ALPHA4 = InternalFormat(0x803B)
    alias ALPHA4_EXT = InternalFormat(0x803B)
    alias ALPHA8 = InternalFormat(0x803C)
    alias ALPHA8_EXT = InternalFormat(0x803C)
    alias ALPHA8_OES = InternalFormat(0x803C)
    alias ALPHA12 = InternalFormat(0x803D)
    alias ALPHA12_EXT = InternalFormat(0x803D)
    alias ALPHA16 = InternalFormat(0x803E)
    alias ALPHA16_EXT = InternalFormat(0x803E)
    alias LUMINANCE4 = InternalFormat(0x803F)
    alias LUMINANCE4_EXT = InternalFormat(0x803F)
    alias LUMINANCE8 = InternalFormat(0x8040)
    alias LUMINANCE8_EXT = InternalFormat(0x8040)
    alias LUMINANCE8_OES = InternalFormat(0x8040)
    alias LUMINANCE12 = InternalFormat(0x8041)
    alias LUMINANCE12_EXT = InternalFormat(0x8041)
    alias LUMINANCE16 = InternalFormat(0x8042)
    alias LUMINANCE16_EXT = InternalFormat(0x8042)
    alias LUMINANCE4_ALPHA4 = InternalFormat(0x8043)
    alias LUMINANCE4_ALPHA4_EXT = InternalFormat(0x8043)
    alias LUMINANCE4_ALPHA4_OES = InternalFormat(0x8043)
    alias LUMINANCE6_ALPHA2 = InternalFormat(0x8044)
    alias LUMINANCE6_ALPHA2_EXT = InternalFormat(0x8044)
    alias LUMINANCE8_ALPHA8 = InternalFormat(0x8045)
    alias LUMINANCE8_ALPHA8_EXT = InternalFormat(0x8045)
    alias LUMINANCE8_ALPHA8_OES = InternalFormat(0x8045)
    alias LUMINANCE12_ALPHA4 = InternalFormat(0x8046)
    alias LUMINANCE12_ALPHA4_EXT = InternalFormat(0x8046)
    alias LUMINANCE12_ALPHA12 = InternalFormat(0x8047)
    alias LUMINANCE12_ALPHA12_EXT = InternalFormat(0x8047)
    alias LUMINANCE16_ALPHA16 = InternalFormat(0x8048)
    alias LUMINANCE16_ALPHA16_EXT = InternalFormat(0x8048)
    alias INTENSITY = InternalFormat(0x8049)
    alias INTENSITY4 = InternalFormat(0x804A)
    alias INTENSITY4_EXT = InternalFormat(0x804A)
    alias INTENSITY8 = InternalFormat(0x804B)
    alias INTENSITY8_EXT = InternalFormat(0x804B)
    alias INTENSITY12 = InternalFormat(0x804C)
    alias INTENSITY12_EXT = InternalFormat(0x804C)
    alias INTENSITY16 = InternalFormat(0x804D)
    alias INTENSITY16_EXT = InternalFormat(0x804D)
    alias RGB2_EXT = InternalFormat(0x804E)
    alias RGB4 = InternalFormat(0x804F)
    alias RGB4_EXT = InternalFormat(0x804F)
    alias RGB5 = InternalFormat(0x8050)
    alias RGB5_EXT = InternalFormat(0x8050)
    alias RGB8 = InternalFormat(0x8051)
    alias RGB8_EXT = InternalFormat(0x8051)
    alias RGB8_OES = InternalFormat(0x8051)
    alias RGB10 = InternalFormat(0x8052)
    alias RGB10_EXT = InternalFormat(0x8052)
    alias RGB12 = InternalFormat(0x8053)
    alias RGB12_EXT = InternalFormat(0x8053)
    alias RGB16 = InternalFormat(0x8054)
    alias RGB16_EXT = InternalFormat(0x8054)
    alias RGBA2 = InternalFormat(0x8055)
    alias RGBA2_EXT = InternalFormat(0x8055)
    alias RGBA4 = InternalFormat(0x8056)
    alias RGBA4_EXT = InternalFormat(0x8056)
    alias RGBA4_OES = InternalFormat(0x8056)
    alias RGB5_A1 = InternalFormat(0x8057)
    alias RGB5_A1_EXT = InternalFormat(0x8057)
    alias RGB5_A1_OES = InternalFormat(0x8057)
    alias RGBA8 = InternalFormat(0x8058)
    alias RGBA8_EXT = InternalFormat(0x8058)
    alias RGBA8_OES = InternalFormat(0x8058)
    alias RGB10_A2 = InternalFormat(0x8059)
    alias RGB10_A2_EXT = InternalFormat(0x8059)
    alias RGBA12 = InternalFormat(0x805A)
    alias RGBA12_EXT = InternalFormat(0x805A)
    alias RGBA16 = InternalFormat(0x805B)
    alias RGBA16_EXT = InternalFormat(0x805B)
    alias DUAL_ALPHA4_SGIS = InternalFormat(0x8110)
    alias DUAL_ALPHA8_SGIS = InternalFormat(0x8111)
    alias DUAL_ALPHA12_SGIS = InternalFormat(0x8112)
    alias DUAL_ALPHA16_SGIS = InternalFormat(0x8113)
    alias DUAL_LUMINANCE4_SGIS = InternalFormat(0x8114)
    alias DUAL_LUMINANCE8_SGIS = InternalFormat(0x8115)
    alias DUAL_LUMINANCE12_SGIS = InternalFormat(0x8116)
    alias DUAL_LUMINANCE16_SGIS = InternalFormat(0x8117)
    alias DUAL_INTENSITY4_SGIS = InternalFormat(0x8118)
    alias DUAL_INTENSITY8_SGIS = InternalFormat(0x8119)
    alias DUAL_INTENSITY12_SGIS = InternalFormat(0x811A)
    alias DUAL_INTENSITY16_SGIS = InternalFormat(0x811B)
    alias DUAL_LUMINANCE_ALPHA4_SGIS = InternalFormat(0x811C)
    alias DUAL_LUMINANCE_ALPHA8_SGIS = InternalFormat(0x811D)
    alias QUAD_ALPHA4_SGIS = InternalFormat(0x811E)
    alias QUAD_ALPHA8_SGIS = InternalFormat(0x811F)
    alias QUAD_LUMINANCE4_SGIS = InternalFormat(0x8120)
    alias QUAD_LUMINANCE8_SGIS = InternalFormat(0x8121)
    alias QUAD_INTENSITY4_SGIS = InternalFormat(0x8122)
    alias QUAD_INTENSITY8_SGIS = InternalFormat(0x8123)
    alias DEPTH_COMPONENT16 = InternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_ARB = InternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_OES = InternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_SGIX = InternalFormat(0x81A5)
    alias DEPTH_COMPONENT24 = InternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_ARB = InternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_OES = InternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_SGIX = InternalFormat(0x81A6)
    alias DEPTH_COMPONENT32 = InternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_ARB = InternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_OES = InternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_SGIX = InternalFormat(0x81A7)
    alias COMPRESSED_RED = InternalFormat(0x8225)
    alias COMPRESSED_RG = InternalFormat(0x8226)
    alias RG = InternalFormat(0x8227)
    alias R8 = InternalFormat(0x8229)
    alias R8_EXT = InternalFormat(0x8229)
    alias R16 = InternalFormat(0x822A)
    alias R16_EXT = InternalFormat(0x822A)
    alias RG8 = InternalFormat(0x822B)
    alias RG8_EXT = InternalFormat(0x822B)
    alias RG16 = InternalFormat(0x822C)
    alias RG16_EXT = InternalFormat(0x822C)
    alias R16F = InternalFormat(0x822D)
    alias R16F_EXT = InternalFormat(0x822D)
    alias R32F = InternalFormat(0x822E)
    alias R32F_EXT = InternalFormat(0x822E)
    alias RG16F = InternalFormat(0x822F)
    alias RG16F_EXT = InternalFormat(0x822F)
    alias RG32F = InternalFormat(0x8230)
    alias RG32F_EXT = InternalFormat(0x8230)
    alias R8I = InternalFormat(0x8231)
    alias R8UI = InternalFormat(0x8232)
    alias R16I = InternalFormat(0x8233)
    alias R16UI = InternalFormat(0x8234)
    alias R32I = InternalFormat(0x8235)
    alias R32UI = InternalFormat(0x8236)
    alias RG8I = InternalFormat(0x8237)
    alias RG8UI = InternalFormat(0x8238)
    alias RG16I = InternalFormat(0x8239)
    alias RG16UI = InternalFormat(0x823A)
    alias RG32I = InternalFormat(0x823B)
    alias RG32UI = InternalFormat(0x823C)
    alias COMPRESSED_RGB_S3TC_DXT1_EXT = InternalFormat(0x83F0)
    alias COMPRESSED_RGBA_S3TC_DXT1_EXT = InternalFormat(0x83F1)
    alias COMPRESSED_RGBA_S3TC_DXT3_ANGLE = InternalFormat(0x83F2)
    alias COMPRESSED_RGBA_S3TC_DXT3_EXT = InternalFormat(0x83F2)
    alias COMPRESSED_RGBA_S3TC_DXT5_ANGLE = InternalFormat(0x83F3)
    alias COMPRESSED_RGBA_S3TC_DXT5_EXT = InternalFormat(0x83F3)
    alias COMPRESSED_RGB = InternalFormat(0x84ED)
    alias COMPRESSED_RGBA = InternalFormat(0x84EE)
    alias DEPTH_STENCIL = InternalFormat(0x84F9)
    alias DEPTH_STENCIL_EXT = InternalFormat(0x84F9)
    alias DEPTH_STENCIL_NV = InternalFormat(0x84F9)
    alias DEPTH_STENCIL_OES = InternalFormat(0x84F9)
    alias DEPTH_STENCIL_MESA = InternalFormat(0x8750)
    alias RGBA32F = InternalFormat(0x8814)
    alias RGBA32F_ARB = InternalFormat(0x8814)
    alias RGBA32F_EXT = InternalFormat(0x8814)
    alias RGB32F = InternalFormat(0x8815)
    alias RGB32F_ARB = InternalFormat(0x8815)
    alias RGB32F_EXT = InternalFormat(0x8815)
    alias RGBA16F = InternalFormat(0x881A)
    alias RGBA16F_ARB = InternalFormat(0x881A)
    alias RGBA16F_EXT = InternalFormat(0x881A)
    alias RGB16F = InternalFormat(0x881B)
    alias RGB16F_ARB = InternalFormat(0x881B)
    alias RGB16F_EXT = InternalFormat(0x881B)
    alias DEPTH24_STENCIL8 = InternalFormat(0x88F0)
    alias DEPTH24_STENCIL8_EXT = InternalFormat(0x88F0)
    alias DEPTH24_STENCIL8_OES = InternalFormat(0x88F0)
    alias R11F_G11F_B10F = InternalFormat(0x8C3A)
    alias R11F_G11F_B10F_APPLE = InternalFormat(0x8C3A)
    alias R11F_G11F_B10F_EXT = InternalFormat(0x8C3A)
    alias RGB9_E5 = InternalFormat(0x8C3D)
    alias RGB9_E5_APPLE = InternalFormat(0x8C3D)
    alias RGB9_E5_EXT = InternalFormat(0x8C3D)
    alias SRGB = InternalFormat(0x8C40)
    alias SRGB_EXT = InternalFormat(0x8C40)
    alias SRGB8 = InternalFormat(0x8C41)
    alias SRGB8_EXT = InternalFormat(0x8C41)
    alias SRGB8_NV = InternalFormat(0x8C41)
    alias SRGB_ALPHA = InternalFormat(0x8C42)
    alias SRGB_ALPHA_EXT = InternalFormat(0x8C42)
    alias SRGB8_ALPHA8 = InternalFormat(0x8C43)
    alias SRGB8_ALPHA8_EXT = InternalFormat(0x8C43)
    alias COMPRESSED_SRGB = InternalFormat(0x8C48)
    alias COMPRESSED_SRGB_ALPHA = InternalFormat(0x8C49)
    alias COMPRESSED_SRGB_S3TC_DXT1_EXT = InternalFormat(0x8C4C)
    alias COMPRESSED_SRGB_S3TC_DXT1_NV = InternalFormat(0x8C4C)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = InternalFormat(0x8C4D)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = InternalFormat(0x8C4D)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = InternalFormat(0x8C4E)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = InternalFormat(0x8C4E)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = InternalFormat(0x8C4F)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = InternalFormat(0x8C4F)
    alias DEPTH_COMPONENT32F = InternalFormat(0x8CAC)
    alias DEPTH32F_STENCIL8 = InternalFormat(0x8CAD)
    alias STENCIL_INDEX1 = InternalFormat(0x8D46)
    alias STENCIL_INDEX1_EXT = InternalFormat(0x8D46)
    alias STENCIL_INDEX1_OES = InternalFormat(0x8D46)
    alias STENCIL_INDEX4 = InternalFormat(0x8D47)
    alias STENCIL_INDEX4_EXT = InternalFormat(0x8D47)
    alias STENCIL_INDEX4_OES = InternalFormat(0x8D47)
    alias STENCIL_INDEX8 = InternalFormat(0x8D48)
    alias STENCIL_INDEX8_EXT = InternalFormat(0x8D48)
    alias STENCIL_INDEX8_OES = InternalFormat(0x8D48)
    alias STENCIL_INDEX16 = InternalFormat(0x8D49)
    alias STENCIL_INDEX16_EXT = InternalFormat(0x8D49)
    alias RGB565_OES = InternalFormat(0x8D62)
    alias RGB565 = InternalFormat(0x8D62)
    alias ETC1_RGB8_OES = InternalFormat(0x8D64)
    alias RGBA32UI = InternalFormat(0x8D70)
    alias RGBA32UI_EXT = InternalFormat(0x8D70)
    alias RGB32UI = InternalFormat(0x8D71)
    alias RGB32UI_EXT = InternalFormat(0x8D71)
    alias ALPHA32UI_EXT = InternalFormat(0x8D72)
    alias INTENSITY32UI_EXT = InternalFormat(0x8D73)
    alias LUMINANCE32UI_EXT = InternalFormat(0x8D74)
    alias LUMINANCE_ALPHA32UI_EXT = InternalFormat(0x8D75)
    alias RGBA16UI = InternalFormat(0x8D76)
    alias RGBA16UI_EXT = InternalFormat(0x8D76)
    alias RGB16UI = InternalFormat(0x8D77)
    alias RGB16UI_EXT = InternalFormat(0x8D77)
    alias ALPHA16UI_EXT = InternalFormat(0x8D78)
    alias INTENSITY16UI_EXT = InternalFormat(0x8D79)
    alias LUMINANCE16UI_EXT = InternalFormat(0x8D7A)
    alias LUMINANCE_ALPHA16UI_EXT = InternalFormat(0x8D7B)
    alias RGBA8UI = InternalFormat(0x8D7C)
    alias RGBA8UI_EXT = InternalFormat(0x8D7C)
    alias RGB8UI = InternalFormat(0x8D7D)
    alias RGB8UI_EXT = InternalFormat(0x8D7D)
    alias ALPHA8UI_EXT = InternalFormat(0x8D7E)
    alias INTENSITY8UI_EXT = InternalFormat(0x8D7F)
    alias LUMINANCE8UI_EXT = InternalFormat(0x8D80)
    alias LUMINANCE_ALPHA8UI_EXT = InternalFormat(0x8D81)
    alias RGBA32I = InternalFormat(0x8D82)
    alias RGBA32I_EXT = InternalFormat(0x8D82)
    alias RGB32I = InternalFormat(0x8D83)
    alias RGB32I_EXT = InternalFormat(0x8D83)
    alias ALPHA32I_EXT = InternalFormat(0x8D84)
    alias INTENSITY32I_EXT = InternalFormat(0x8D85)
    alias LUMINANCE32I_EXT = InternalFormat(0x8D86)
    alias LUMINANCE_ALPHA32I_EXT = InternalFormat(0x8D87)
    alias RGBA16I = InternalFormat(0x8D88)
    alias RGBA16I_EXT = InternalFormat(0x8D88)
    alias RGB16I = InternalFormat(0x8D89)
    alias RGB16I_EXT = InternalFormat(0x8D89)
    alias ALPHA16I_EXT = InternalFormat(0x8D8A)
    alias INTENSITY16I_EXT = InternalFormat(0x8D8B)
    alias LUMINANCE16I_EXT = InternalFormat(0x8D8C)
    alias LUMINANCE_ALPHA16I_EXT = InternalFormat(0x8D8D)
    alias RGBA8I = InternalFormat(0x8D8E)
    alias RGBA8I_EXT = InternalFormat(0x8D8E)
    alias RGB8I = InternalFormat(0x8D8F)
    alias RGB8I_EXT = InternalFormat(0x8D8F)
    alias ALPHA8I_EXT = InternalFormat(0x8D90)
    alias INTENSITY8I_EXT = InternalFormat(0x8D91)
    alias LUMINANCE8I_EXT = InternalFormat(0x8D92)
    alias LUMINANCE_ALPHA8I_EXT = InternalFormat(0x8D93)
    alias DEPTH_COMPONENT32F_NV = InternalFormat(0x8DAB)
    alias DEPTH32F_STENCIL8_NV = InternalFormat(0x8DAC)
    alias COMPRESSED_RED_RGTC1 = InternalFormat(0x8DBB)
    alias COMPRESSED_RED_RGTC1_EXT = InternalFormat(0x8DBB)
    alias COMPRESSED_SIGNED_RED_RGTC1 = InternalFormat(0x8DBC)
    alias COMPRESSED_SIGNED_RED_RGTC1_EXT = InternalFormat(0x8DBC)
    alias COMPRESSED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBD)
    alias COMPRESSED_RG_RGTC2 = InternalFormat(0x8DBD)
    alias COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBE)
    alias COMPRESSED_SIGNED_RG_RGTC2 = InternalFormat(0x8DBE)
    alias COMPRESSED_RGBA_BPTC_UNORM = InternalFormat(0x8E8C)
    alias COMPRESSED_RGBA_BPTC_UNORM_ARB = InternalFormat(0x8E8C)
    alias COMPRESSED_RGBA_BPTC_UNORM_EXT = InternalFormat(0x8E8C)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM = InternalFormat(0x8E8D)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = InternalFormat(0x8E8D)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = InternalFormat(0x8E8D)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT = InternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = InternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = InternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = InternalFormat(0x8E8F)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = InternalFormat(0x8E8F)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = InternalFormat(0x8E8F)
    alias R8_SNORM = InternalFormat(0x8F94)
    alias RG8_SNORM = InternalFormat(0x8F95)
    alias RGB8_SNORM = InternalFormat(0x8F96)
    alias RGBA8_SNORM = InternalFormat(0x8F97)
    alias R16_SNORM = InternalFormat(0x8F98)
    alias R16_SNORM_EXT = InternalFormat(0x8F98)
    alias RG16_SNORM = InternalFormat(0x8F99)
    alias RG16_SNORM_EXT = InternalFormat(0x8F99)
    alias RGB16_SNORM = InternalFormat(0x8F9A)
    alias RGB16_SNORM_EXT = InternalFormat(0x8F9A)
    alias RGBA16_SNORM = InternalFormat(0x8F9B)
    alias RGBA16_SNORM_EXT = InternalFormat(0x8F9B)
    alias SR8_EXT = InternalFormat(0x8FBD)
    alias SRG8_EXT = InternalFormat(0x8FBE)
    alias RGB10_A2UI = InternalFormat(0x906F)
    alias COMPRESSED_R11_EAC = InternalFormat(0x9270)
    alias COMPRESSED_R11_EAC_OES = InternalFormat(0x9270)
    alias COMPRESSED_SIGNED_R11_EAC = InternalFormat(0x9271)
    alias COMPRESSED_SIGNED_R11_EAC_OES = InternalFormat(0x9271)
    alias COMPRESSED_RG11_EAC = InternalFormat(0x9272)
    alias COMPRESSED_RG11_EAC_OES = InternalFormat(0x9272)
    alias COMPRESSED_SIGNED_RG11_EAC = InternalFormat(0x9273)
    alias COMPRESSED_SIGNED_RG11_EAC_OES = InternalFormat(0x9273)
    alias COMPRESSED_RGB8_ETC2 = InternalFormat(0x9274)
    alias COMPRESSED_RGB8_ETC2_OES = InternalFormat(0x9274)
    alias COMPRESSED_SRGB8_ETC2 = InternalFormat(0x9275)
    alias COMPRESSED_SRGB8_ETC2_OES = InternalFormat(0x9275)
    alias COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9276)
    alias COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9276)
    alias COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9277)
    alias COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9277)
    alias COMPRESSED_RGBA8_ETC2_EAC = InternalFormat(0x9278)
    alias COMPRESSED_RGBA8_ETC2_EAC_OES = InternalFormat(0x9278)
    alias COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = InternalFormat(0x9279)
    alias COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = InternalFormat(0x9279)
    alias COMPRESSED_RGBA_ASTC_4x4 = InternalFormat(0x93B0)
    alias COMPRESSED_RGBA_ASTC_4x4_KHR = InternalFormat(0x93B0)
    alias COMPRESSED_RGBA_ASTC_5x4 = InternalFormat(0x93B1)
    alias COMPRESSED_RGBA_ASTC_5x4_KHR = InternalFormat(0x93B1)
    alias COMPRESSED_RGBA_ASTC_5x5 = InternalFormat(0x93B2)
    alias COMPRESSED_RGBA_ASTC_5x5_KHR = InternalFormat(0x93B2)
    alias COMPRESSED_RGBA_ASTC_6x5 = InternalFormat(0x93B3)
    alias COMPRESSED_RGBA_ASTC_6x5_KHR = InternalFormat(0x93B3)
    alias COMPRESSED_RGBA_ASTC_6x6 = InternalFormat(0x93B4)
    alias COMPRESSED_RGBA_ASTC_6x6_KHR = InternalFormat(0x93B4)
    alias COMPRESSED_RGBA_ASTC_8x5 = InternalFormat(0x93B5)
    alias COMPRESSED_RGBA_ASTC_8x5_KHR = InternalFormat(0x93B5)
    alias COMPRESSED_RGBA_ASTC_8x6 = InternalFormat(0x93B6)
    alias COMPRESSED_RGBA_ASTC_8x6_KHR = InternalFormat(0x93B6)
    alias COMPRESSED_RGBA_ASTC_8x8 = InternalFormat(0x93B7)
    alias COMPRESSED_RGBA_ASTC_8x8_KHR = InternalFormat(0x93B7)
    alias COMPRESSED_RGBA_ASTC_10x5 = InternalFormat(0x93B8)
    alias COMPRESSED_RGBA_ASTC_10x5_KHR = InternalFormat(0x93B8)
    alias COMPRESSED_RGBA_ASTC_10x6 = InternalFormat(0x93B9)
    alias COMPRESSED_RGBA_ASTC_10x6_KHR = InternalFormat(0x93B9)
    alias COMPRESSED_RGBA_ASTC_10x8 = InternalFormat(0x93BA)
    alias COMPRESSED_RGBA_ASTC_10x8_KHR = InternalFormat(0x93BA)
    alias COMPRESSED_RGBA_ASTC_10x10 = InternalFormat(0x93BB)
    alias COMPRESSED_RGBA_ASTC_10x10_KHR = InternalFormat(0x93BB)
    alias COMPRESSED_RGBA_ASTC_12x10 = InternalFormat(0x93BC)
    alias COMPRESSED_RGBA_ASTC_12x10_KHR = InternalFormat(0x93BC)
    alias COMPRESSED_RGBA_ASTC_12x12 = InternalFormat(0x93BD)
    alias COMPRESSED_RGBA_ASTC_12x12_KHR = InternalFormat(0x93BD)
    alias COMPRESSED_RGBA_ASTC_3x3x3_OES = InternalFormat(0x93C0)
    alias COMPRESSED_RGBA_ASTC_4x3x3_OES = InternalFormat(0x93C1)
    alias COMPRESSED_RGBA_ASTC_4x4x3_OES = InternalFormat(0x93C2)
    alias COMPRESSED_RGBA_ASTC_4x4x4_OES = InternalFormat(0x93C3)
    alias COMPRESSED_RGBA_ASTC_5x4x4_OES = InternalFormat(0x93C4)
    alias COMPRESSED_RGBA_ASTC_5x5x4_OES = InternalFormat(0x93C5)
    alias COMPRESSED_RGBA_ASTC_5x5x5_OES = InternalFormat(0x93C6)
    alias COMPRESSED_RGBA_ASTC_6x5x5_OES = InternalFormat(0x93C7)
    alias COMPRESSED_RGBA_ASTC_6x6x5_OES = InternalFormat(0x93C8)
    alias COMPRESSED_RGBA_ASTC_6x6x6_OES = InternalFormat(0x93C9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = InternalFormat(0x93D0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = InternalFormat(0x93D0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = InternalFormat(0x93D1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = InternalFormat(0x93D1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = InternalFormat(0x93D2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = InternalFormat(0x93D2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = InternalFormat(0x93D3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = InternalFormat(0x93D3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = InternalFormat(0x93D4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = InternalFormat(0x93D4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = InternalFormat(0x93D5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = InternalFormat(0x93D5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = InternalFormat(0x93D6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = InternalFormat(0x93D6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = InternalFormat(0x93D7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = InternalFormat(0x93D7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = InternalFormat(0x93D8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = InternalFormat(0x93D8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = InternalFormat(0x93D9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = InternalFormat(0x93D9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = InternalFormat(0x93DA)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = InternalFormat(0x93DA)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = InternalFormat(0x93DB)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = InternalFormat(0x93DB)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = InternalFormat(0x93DC)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = InternalFormat(0x93DC)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = InternalFormat(0x93DD)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = InternalFormat(0x93DD)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = InternalFormat(0x93E0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = InternalFormat(0x93E1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = InternalFormat(0x93E2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = InternalFormat(0x93E3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = InternalFormat(0x93E4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = InternalFormat(0x93E5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = InternalFormat(0x93E6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = InternalFormat(0x93E7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = InternalFormat(0x93E8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = InternalFormat(0x93E9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InternalFormatPName(Intable):
    var value: GLenum

    alias SAMPLES = InternalFormatPName(0x80A9)
    alias GENERATE_MIPMAP = InternalFormatPName(0x8191)
    alias INTERNALFORMAT_SUPPORTED = InternalFormatPName(0x826F)
    alias INTERNALFORMAT_PREFERRED = InternalFormatPName(0x8270)
    alias INTERNALFORMAT_RED_SIZE = InternalFormatPName(0x8271)
    alias INTERNALFORMAT_GREEN_SIZE = InternalFormatPName(0x8272)
    alias INTERNALFORMAT_BLUE_SIZE = InternalFormatPName(0x8273)
    alias INTERNALFORMAT_ALPHA_SIZE = InternalFormatPName(0x8274)
    alias INTERNALFORMAT_DEPTH_SIZE = InternalFormatPName(0x8275)
    alias INTERNALFORMAT_STENCIL_SIZE = InternalFormatPName(0x8276)
    alias INTERNALFORMAT_SHARED_SIZE = InternalFormatPName(0x8277)
    alias INTERNALFORMAT_RED_TYPE = InternalFormatPName(0x8278)
    alias INTERNALFORMAT_GREEN_TYPE = InternalFormatPName(0x8279)
    alias INTERNALFORMAT_BLUE_TYPE = InternalFormatPName(0x827A)
    alias INTERNALFORMAT_ALPHA_TYPE = InternalFormatPName(0x827B)
    alias INTERNALFORMAT_DEPTH_TYPE = InternalFormatPName(0x827C)
    alias INTERNALFORMAT_STENCIL_TYPE = InternalFormatPName(0x827D)
    alias MAX_WIDTH = InternalFormatPName(0x827E)
    alias MAX_HEIGHT = InternalFormatPName(0x827F)
    alias MAX_DEPTH = InternalFormatPName(0x8280)
    alias MAX_LAYERS = InternalFormatPName(0x8281)
    alias COLOR_COMPONENTS = InternalFormatPName(0x8283)
    alias COLOR_RENDERABLE = InternalFormatPName(0x8286)
    alias DEPTH_RENDERABLE = InternalFormatPName(0x8287)
    alias STENCIL_RENDERABLE = InternalFormatPName(0x8288)
    alias FRAMEBUFFER_RENDERABLE = InternalFormatPName(0x8289)
    alias FRAMEBUFFER_RENDERABLE_LAYERED = InternalFormatPName(0x828A)
    alias FRAMEBUFFER_BLEND = InternalFormatPName(0x828B)
    alias READ_PIXELS = InternalFormatPName(0x828C)
    alias READ_PIXELS_FORMAT = InternalFormatPName(0x828D)
    alias READ_PIXELS_TYPE = InternalFormatPName(0x828E)
    alias TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x828F)
    alias TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8290)
    alias GET_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x8291)
    alias GET_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8292)
    alias MIPMAP = InternalFormatPName(0x8293)
    alias AUTO_GENERATE_MIPMAP = InternalFormatPName(0x8295)
    alias COLOR_ENCODING = InternalFormatPName(0x8296)
    alias SRGB_READ = InternalFormatPName(0x8297)
    alias SRGB_WRITE = InternalFormatPName(0x8298)
    alias FILTER = InternalFormatPName(0x829A)
    alias VERTEX_TEXTURE = InternalFormatPName(0x829B)
    alias TESS_CONTROL_TEXTURE = InternalFormatPName(0x829C)
    alias TESS_EVALUATION_TEXTURE = InternalFormatPName(0x829D)
    alias GEOMETRY_TEXTURE = InternalFormatPName(0x829E)
    alias FRAGMENT_TEXTURE = InternalFormatPName(0x829F)
    alias COMPUTE_TEXTURE = InternalFormatPName(0x82A0)
    alias TEXTURE_SHADOW = InternalFormatPName(0x82A1)
    alias TEXTURE_GATHER = InternalFormatPName(0x82A2)
    alias TEXTURE_GATHER_SHADOW = InternalFormatPName(0x82A3)
    alias SHADER_IMAGE_LOAD = InternalFormatPName(0x82A4)
    alias SHADER_IMAGE_STORE = InternalFormatPName(0x82A5)
    alias SHADER_IMAGE_ATOMIC = InternalFormatPName(0x82A6)
    alias IMAGE_TEXEL_SIZE = InternalFormatPName(0x82A7)
    alias IMAGE_COMPATIBILITY_CLASS = InternalFormatPName(0x82A8)
    alias IMAGE_PIXEL_FORMAT = InternalFormatPName(0x82A9)
    alias IMAGE_PIXEL_TYPE = InternalFormatPName(0x82AA)
    alias SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = InternalFormatPName(0x82AC)
    alias SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = InternalFormatPName(0x82AD)
    alias SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = InternalFormatPName(0x82AE)
    alias SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = InternalFormatPName(0x82AF)
    alias TEXTURE_COMPRESSED_BLOCK_WIDTH = InternalFormatPName(0x82B1)
    alias TEXTURE_COMPRESSED_BLOCK_HEIGHT = InternalFormatPName(0x82B2)
    alias TEXTURE_COMPRESSED_BLOCK_SIZE = InternalFormatPName(0x82B3)
    alias CLEAR_BUFFER = InternalFormatPName(0x82B4)
    alias TEXTURE_VIEW = InternalFormatPName(0x82B5)
    alias VIEW_COMPATIBILITY_CLASS = InternalFormatPName(0x82B6)
    alias TEXTURE_COMPRESSED = InternalFormatPName(0x86A1)
    alias NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT = InternalFormatPName(0x8F6E)
    alias IMAGE_FORMAT_COMPATIBILITY_TYPE = InternalFormatPName(0x90C7)
    alias CLEAR_TEXTURE = InternalFormatPName(0x9365)
    alias NUM_SAMPLE_COUNTS = InternalFormatPName(0x9380)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InvalidateFramebufferAttachment(Intable):
    var value: GLenum

    alias COLOR = InvalidateFramebufferAttachment(0x1800)
    alias DEPTH = InvalidateFramebufferAttachment(0x1801)
    alias STENCIL = InvalidateFramebufferAttachment(0x1802)
    alias DEPTH_STENCIL_ATTACHMENT = InvalidateFramebufferAttachment(0x821A)
    alias COLOR_ATTACHMENT0 = InvalidateFramebufferAttachment(0x8CE0)
    alias COLOR_ATTACHMENT0_EXT = InvalidateFramebufferAttachment(0x8CE0)
    alias COLOR_ATTACHMENT0_NV = InvalidateFramebufferAttachment(0x8CE0)
    alias COLOR_ATTACHMENT0_OES = InvalidateFramebufferAttachment(0x8CE0)
    alias COLOR_ATTACHMENT1 = InvalidateFramebufferAttachment(0x8CE1)
    alias COLOR_ATTACHMENT1_EXT = InvalidateFramebufferAttachment(0x8CE1)
    alias COLOR_ATTACHMENT1_NV = InvalidateFramebufferAttachment(0x8CE1)
    alias COLOR_ATTACHMENT2 = InvalidateFramebufferAttachment(0x8CE2)
    alias COLOR_ATTACHMENT2_EXT = InvalidateFramebufferAttachment(0x8CE2)
    alias COLOR_ATTACHMENT2_NV = InvalidateFramebufferAttachment(0x8CE2)
    alias COLOR_ATTACHMENT3 = InvalidateFramebufferAttachment(0x8CE3)
    alias COLOR_ATTACHMENT3_EXT = InvalidateFramebufferAttachment(0x8CE3)
    alias COLOR_ATTACHMENT3_NV = InvalidateFramebufferAttachment(0x8CE3)
    alias COLOR_ATTACHMENT4 = InvalidateFramebufferAttachment(0x8CE4)
    alias COLOR_ATTACHMENT4_EXT = InvalidateFramebufferAttachment(0x8CE4)
    alias COLOR_ATTACHMENT4_NV = InvalidateFramebufferAttachment(0x8CE4)
    alias COLOR_ATTACHMENT5 = InvalidateFramebufferAttachment(0x8CE5)
    alias COLOR_ATTACHMENT5_EXT = InvalidateFramebufferAttachment(0x8CE5)
    alias COLOR_ATTACHMENT5_NV = InvalidateFramebufferAttachment(0x8CE5)
    alias COLOR_ATTACHMENT6 = InvalidateFramebufferAttachment(0x8CE6)
    alias COLOR_ATTACHMENT6_EXT = InvalidateFramebufferAttachment(0x8CE6)
    alias COLOR_ATTACHMENT6_NV = InvalidateFramebufferAttachment(0x8CE6)
    alias COLOR_ATTACHMENT7 = InvalidateFramebufferAttachment(0x8CE7)
    alias COLOR_ATTACHMENT7_EXT = InvalidateFramebufferAttachment(0x8CE7)
    alias COLOR_ATTACHMENT7_NV = InvalidateFramebufferAttachment(0x8CE7)
    alias COLOR_ATTACHMENT8 = InvalidateFramebufferAttachment(0x8CE8)
    alias COLOR_ATTACHMENT8_EXT = InvalidateFramebufferAttachment(0x8CE8)
    alias COLOR_ATTACHMENT8_NV = InvalidateFramebufferAttachment(0x8CE8)
    alias COLOR_ATTACHMENT9 = InvalidateFramebufferAttachment(0x8CE9)
    alias COLOR_ATTACHMENT9_EXT = InvalidateFramebufferAttachment(0x8CE9)
    alias COLOR_ATTACHMENT9_NV = InvalidateFramebufferAttachment(0x8CE9)
    alias COLOR_ATTACHMENT10 = InvalidateFramebufferAttachment(0x8CEA)
    alias COLOR_ATTACHMENT10_EXT = InvalidateFramebufferAttachment(0x8CEA)
    alias COLOR_ATTACHMENT10_NV = InvalidateFramebufferAttachment(0x8CEA)
    alias COLOR_ATTACHMENT11 = InvalidateFramebufferAttachment(0x8CEB)
    alias COLOR_ATTACHMENT11_EXT = InvalidateFramebufferAttachment(0x8CEB)
    alias COLOR_ATTACHMENT11_NV = InvalidateFramebufferAttachment(0x8CEB)
    alias COLOR_ATTACHMENT12 = InvalidateFramebufferAttachment(0x8CEC)
    alias COLOR_ATTACHMENT12_EXT = InvalidateFramebufferAttachment(0x8CEC)
    alias COLOR_ATTACHMENT12_NV = InvalidateFramebufferAttachment(0x8CEC)
    alias COLOR_ATTACHMENT13 = InvalidateFramebufferAttachment(0x8CED)
    alias COLOR_ATTACHMENT13_EXT = InvalidateFramebufferAttachment(0x8CED)
    alias COLOR_ATTACHMENT13_NV = InvalidateFramebufferAttachment(0x8CED)
    alias COLOR_ATTACHMENT14 = InvalidateFramebufferAttachment(0x8CEE)
    alias COLOR_ATTACHMENT14_EXT = InvalidateFramebufferAttachment(0x8CEE)
    alias COLOR_ATTACHMENT14_NV = InvalidateFramebufferAttachment(0x8CEE)
    alias COLOR_ATTACHMENT15 = InvalidateFramebufferAttachment(0x8CEF)
    alias COLOR_ATTACHMENT15_EXT = InvalidateFramebufferAttachment(0x8CEF)
    alias COLOR_ATTACHMENT15_NV = InvalidateFramebufferAttachment(0x8CEF)
    alias COLOR_ATTACHMENT16 = InvalidateFramebufferAttachment(0x8CF0)
    alias COLOR_ATTACHMENT17 = InvalidateFramebufferAttachment(0x8CF1)
    alias COLOR_ATTACHMENT18 = InvalidateFramebufferAttachment(0x8CF2)
    alias COLOR_ATTACHMENT19 = InvalidateFramebufferAttachment(0x8CF3)
    alias COLOR_ATTACHMENT20 = InvalidateFramebufferAttachment(0x8CF4)
    alias COLOR_ATTACHMENT21 = InvalidateFramebufferAttachment(0x8CF5)
    alias COLOR_ATTACHMENT22 = InvalidateFramebufferAttachment(0x8CF6)
    alias COLOR_ATTACHMENT23 = InvalidateFramebufferAttachment(0x8CF7)
    alias COLOR_ATTACHMENT24 = InvalidateFramebufferAttachment(0x8CF8)
    alias COLOR_ATTACHMENT25 = InvalidateFramebufferAttachment(0x8CF9)
    alias COLOR_ATTACHMENT26 = InvalidateFramebufferAttachment(0x8CFA)
    alias COLOR_ATTACHMENT27 = InvalidateFramebufferAttachment(0x8CFB)
    alias COLOR_ATTACHMENT28 = InvalidateFramebufferAttachment(0x8CFC)
    alias COLOR_ATTACHMENT29 = InvalidateFramebufferAttachment(0x8CFD)
    alias COLOR_ATTACHMENT30 = InvalidateFramebufferAttachment(0x8CFE)
    alias COLOR_ATTACHMENT31 = InvalidateFramebufferAttachment(0x8CFF)
    alias DEPTH_ATTACHMENT = InvalidateFramebufferAttachment(0x8D00)
    alias DEPTH_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D00)
    alias DEPTH_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D00)
    alias STENCIL_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D20)
    alias STENCIL_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D20)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct LogicOp(Intable):
    var value: GLenum

    alias CLEAR = LogicOp(0x1500)
    alias AND = LogicOp(0x1501)
    alias AND_REVERSE = LogicOp(0x1502)
    alias COPY = LogicOp(0x1503)
    alias AND_INVERTED = LogicOp(0x1504)
    alias NOOP = LogicOp(0x1505)
    alias XOR = LogicOp(0x1506)
    alias OR = LogicOp(0x1507)
    alias NOR = LogicOp(0x1508)
    alias EQUIV = LogicOp(0x1509)
    alias INVERT = LogicOp(0x150A)
    alias OR_REVERSE = LogicOp(0x150B)
    alias COPY_INVERTED = LogicOp(0x150C)
    alias OR_INVERTED = LogicOp(0x150D)
    alias NAND = LogicOp(0x150E)
    alias SET = LogicOp(0x150F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MapBufferAccessMask(Intable):
    var value: GLbitfield

    alias MAP_READ_BIT = MapBufferAccessMask(0x0001)
    alias MAP_READ_BIT_EXT = MapBufferAccessMask(0x0001)
    alias MAP_WRITE_BIT = MapBufferAccessMask(0x0002)
    alias MAP_WRITE_BIT_EXT = MapBufferAccessMask(0x0002)
    alias MAP_INVALIDATE_RANGE_BIT = MapBufferAccessMask(0x0004)
    alias MAP_INVALIDATE_RANGE_BIT_EXT = MapBufferAccessMask(0x0004)
    alias MAP_INVALIDATE_BUFFER_BIT = MapBufferAccessMask(0x0008)
    alias MAP_INVALIDATE_BUFFER_BIT_EXT = MapBufferAccessMask(0x0008)
    alias MAP_FLUSH_EXPLICIT_BIT = MapBufferAccessMask(0x0010)
    alias MAP_FLUSH_EXPLICIT_BIT_EXT = MapBufferAccessMask(0x0010)
    alias MAP_UNSYNCHRONIZED_BIT = MapBufferAccessMask(0x0020)
    alias MAP_UNSYNCHRONIZED_BIT_EXT = MapBufferAccessMask(0x0020)
    alias MAP_PERSISTENT_BIT = MapBufferAccessMask(0x0040)
    alias MAP_PERSISTENT_BIT_EXT = MapBufferAccessMask(0x0040)
    alias MAP_COHERENT_BIT = MapBufferAccessMask(0x0080)
    alias MAP_COHERENT_BIT_EXT = MapBufferAccessMask(0x0080)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MapQuery(Intable):
    var value: GLenum

    alias COEFF = MapQuery(0x0A00)
    alias ORDER = MapQuery(0x0A01)
    alias DOMAIN = MapQuery(0x0A02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MapTarget(Intable):
    var value: GLenum

    alias MAP1_COLOR_4 = MapTarget(0x0D90)
    alias MAP1_INDEX = MapTarget(0x0D91)
    alias MAP1_NORMAL = MapTarget(0x0D92)
    alias MAP1_TEXTURE_COORD_1 = MapTarget(0x0D93)
    alias MAP1_TEXTURE_COORD_2 = MapTarget(0x0D94)
    alias MAP1_TEXTURE_COORD_3 = MapTarget(0x0D95)
    alias MAP1_TEXTURE_COORD_4 = MapTarget(0x0D96)
    alias MAP1_VERTEX_3 = MapTarget(0x0D97)
    alias MAP1_VERTEX_4 = MapTarget(0x0D98)
    alias MAP2_COLOR_4 = MapTarget(0x0DB0)
    alias MAP2_INDEX = MapTarget(0x0DB1)
    alias MAP2_NORMAL = MapTarget(0x0DB2)
    alias MAP2_TEXTURE_COORD_1 = MapTarget(0x0DB3)
    alias MAP2_TEXTURE_COORD_2 = MapTarget(0x0DB4)
    alias MAP2_TEXTURE_COORD_3 = MapTarget(0x0DB5)
    alias MAP2_TEXTURE_COORD_4 = MapTarget(0x0DB6)
    alias MAP2_VERTEX_3 = MapTarget(0x0DB7)
    alias MAP2_VERTEX_4 = MapTarget(0x0DB8)
    alias GEOMETRY_DEFORMATION_SGIX = MapTarget(0x8194)
    alias TEXTURE_DEFORMATION_SGIX = MapTarget(0x8195)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MatrixMode(Intable):
    var value: GLenum

    alias MODELVIEW = MatrixMode(0x1700)
    alias MODELVIEW0_EXT = MatrixMode(0x1700)
    alias PROJECTION = MatrixMode(0x1701)
    alias TEXTURE = MatrixMode(0x1702)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MemoryBarrierMask(Intable):
    var value: GLbitfield

    alias VERTEX_ATTRIB_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000001)
    alias VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000001)
    alias ELEMENT_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000002)
    alias ELEMENT_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000002)
    alias UNIFORM_BARRIER_BIT = MemoryBarrierMask(0x00000004)
    alias UNIFORM_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000004)
    alias TEXTURE_FETCH_BARRIER_BIT = MemoryBarrierMask(0x00000008)
    alias TEXTURE_FETCH_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000008)
    alias SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = MemoryBarrierMask(0x00000010)
    alias SHADER_IMAGE_ACCESS_BARRIER_BIT = MemoryBarrierMask(0x00000020)
    alias SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000020)
    alias COMMAND_BARRIER_BIT = MemoryBarrierMask(0x00000040)
    alias COMMAND_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000040)
    alias PIXEL_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000080)
    alias PIXEL_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000080)
    alias TEXTURE_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000100)
    alias TEXTURE_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000100)
    alias BUFFER_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000200)
    alias BUFFER_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000200)
    alias FRAMEBUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000400)
    alias FRAMEBUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000400)
    alias TRANSFORM_FEEDBACK_BARRIER_BIT = MemoryBarrierMask(0x00000800)
    alias TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000800)
    alias ATOMIC_COUNTER_BARRIER_BIT = MemoryBarrierMask(0x00001000)
    alias ATOMIC_COUNTER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00001000)
    alias SHADER_STORAGE_BARRIER_BIT = MemoryBarrierMask(0x00002000)
    alias CLIENT_MAPPED_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00004000)
    alias CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00004000)
    alias QUERY_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00008000)
    alias ALL_BARRIER_BITS = MemoryBarrierMask(0xFFFFFFFF)
    alias ALL_BARRIER_BITS_EXT = MemoryBarrierMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MeshMode1(Intable):
    var value: GLenum

    alias POINT = MeshMode1(0x1B00)
    alias LINE = MeshMode1(0x1B01)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MeshMode2(Intable):
    var value: GLenum

    alias POINT = MeshMode2(0x1B00)
    alias LINE = MeshMode2(0x1B01)
    alias FILL = MeshMode2(0x1B02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MinmaxTarget(Intable):
    var value: GLenum

    alias MINMAX = MinmaxTarget(0x802E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct NormalPointerType(Intable):
    var value: GLenum

    alias BYTE = NormalPointerType(0x1400)
    alias SHORT = NormalPointerType(0x1402)
    alias INT = NormalPointerType(0x1404)
    alias FLOAT = NormalPointerType(0x1406)
    alias DOUBLE = NormalPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ObjectIdentifier(Intable):
    var value: GLenum

    alias TEXTURE = ObjectIdentifier(0x1702)
    alias VERTEX_ARRAY = ObjectIdentifier(0x8074)
    alias BUFFER = ObjectIdentifier(0x82E0)
    alias SHADER = ObjectIdentifier(0x82E1)
    alias PROGRAM = ObjectIdentifier(0x82E2)
    alias QUERY = ObjectIdentifier(0x82E3)
    alias PROGRAM_PIPELINE = ObjectIdentifier(0x82E4)
    alias SAMPLER = ObjectIdentifier(0x82E6)
    alias FRAMEBUFFER = ObjectIdentifier(0x8D40)
    alias RENDERBUFFER = ObjectIdentifier(0x8D41)
    alias TRANSFORM_FEEDBACK = ObjectIdentifier(0x8E22)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PatchParameterName(Intable):
    var value: GLenum

    alias PATCH_VERTICES = PatchParameterName(0x8E72)
    alias PATCH_DEFAULT_INNER_LEVEL = PatchParameterName(0x8E73)
    alias PATCH_DEFAULT_OUTER_LEVEL = PatchParameterName(0x8E74)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathColorFormat(Intable):
    var value: GLenum

    alias NONE = PathColorFormat(0)
    alias ALPHA = PathColorFormat(0x1906)
    alias RGB = PathColorFormat(0x1907)
    alias RGBA = PathColorFormat(0x1908)
    alias LUMINANCE = PathColorFormat(0x1909)
    alias LUMINANCE_ALPHA = PathColorFormat(0x190A)
    alias INTENSITY = PathColorFormat(0x8049)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathFillMode(Intable):
    var value: GLenum

    alias INVERT = PathFillMode(0x150A)
    alias PATH_FILL_MODE_NV = PathFillMode(0x9080)
    alias COUNT_UP_NV = PathFillMode(0x9088)
    alias COUNT_DOWN_NV = PathFillMode(0x9089)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathFontStyle(Intable):
    var value: GLenum

    alias BOLD_BIT_NV = PathFontStyle(0x01)
    alias ITALIC_BIT_NV = PathFontStyle(0x02)
    alias NONE = PathFontStyle(0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathGenMode(Intable):
    var value: GLenum

    alias NONE = PathGenMode(0)
    alias EYE_LINEAR = PathGenMode(0x2400)
    alias OBJECT_LINEAR = PathGenMode(0x2401)
    alias CONSTANT = PathGenMode(0x8576)
    alias PATH_OBJECT_BOUNDING_BOX_NV = PathGenMode(0x908A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathTransformType(Intable):
    var value: GLenum

    alias NONE = PathTransformType(0)
    alias TRANSLATE_X_NV = PathTransformType(0x908E)
    alias TRANSLATE_Y_NV = PathTransformType(0x908F)
    alias TRANSLATE_2D_NV = PathTransformType(0x9090)
    alias TRANSLATE_3D_NV = PathTransformType(0x9091)
    alias AFFINE_2D_NV = PathTransformType(0x9092)
    alias AFFINE_3D_NV = PathTransformType(0x9094)
    alias TRANSPOSE_AFFINE_2D_NV = PathTransformType(0x9096)
    alias TRANSPOSE_AFFINE_3D_NV = PathTransformType(0x9098)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PipelineParameterName(Intable):
    var value: GLenum

    alias ACTIVE_PROGRAM = PipelineParameterName(0x8259)
    alias FRAGMENT_SHADER = PipelineParameterName(0x8B30)
    alias VERTEX_SHADER = PipelineParameterName(0x8B31)
    alias INFO_LOG_LENGTH = PipelineParameterName(0x8B84)
    alias GEOMETRY_SHADER = PipelineParameterName(0x8DD9)
    alias TESS_EVALUATION_SHADER = PipelineParameterName(0x8E87)
    alias TESS_CONTROL_SHADER = PipelineParameterName(0x8E88)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelCopyType(Intable):
    var value: GLenum

    alias COLOR = PixelCopyType(0x1800)
    alias COLOR_EXT = PixelCopyType(0x1800)
    alias DEPTH = PixelCopyType(0x1801)
    alias DEPTH_EXT = PixelCopyType(0x1801)
    alias STENCIL = PixelCopyType(0x1802)
    alias STENCIL_EXT = PixelCopyType(0x1802)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelFormat(Intable):
    var value: GLenum

    alias UNSIGNED_SHORT = PixelFormat(0x1403)
    alias UNSIGNED_INT = PixelFormat(0x1405)
    alias COLOR_INDEX = PixelFormat(0x1900)
    alias STENCIL_INDEX = PixelFormat(0x1901)
    alias DEPTH_COMPONENT = PixelFormat(0x1902)
    alias RED = PixelFormat(0x1903)
    alias RED_EXT = PixelFormat(0x1903)
    alias GREEN = PixelFormat(0x1904)
    alias BLUE = PixelFormat(0x1905)
    alias ALPHA = PixelFormat(0x1906)
    alias RGB = PixelFormat(0x1907)
    alias RGBA = PixelFormat(0x1908)
    alias LUMINANCE = PixelFormat(0x1909)
    alias LUMINANCE_ALPHA = PixelFormat(0x190A)
    alias ABGR_EXT = PixelFormat(0x8000)
    alias CMYK_EXT = PixelFormat(0x800C)
    alias CMYKA_EXT = PixelFormat(0x800D)
    alias BGR = PixelFormat(0x80E0)
    alias BGR_EXT = PixelFormat(0x80E0)
    alias BGRA = PixelFormat(0x80E1)
    alias BGRA_EXT = PixelFormat(0x80E1)
    alias BGRA_IMG = PixelFormat(0x80E1)
    alias YCRCB_422_SGIX = PixelFormat(0x81BB)
    alias YCRCB_444_SGIX = PixelFormat(0x81BC)
    alias RG = PixelFormat(0x8227)
    alias RG_INTEGER = PixelFormat(0x8228)
    alias DEPTH_STENCIL = PixelFormat(0x84F9)
    alias RED_INTEGER = PixelFormat(0x8D94)
    alias GREEN_INTEGER = PixelFormat(0x8D95)
    alias BLUE_INTEGER = PixelFormat(0x8D96)
    alias RGB_INTEGER = PixelFormat(0x8D98)
    alias RGBA_INTEGER = PixelFormat(0x8D99)
    alias BGR_INTEGER = PixelFormat(0x8D9A)
    alias BGRA_INTEGER = PixelFormat(0x8D9B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelMap(Intable):
    var value: GLenum

    alias PIXEL_MAP_I_TO_I = PixelMap(0x0C70)
    alias PIXEL_MAP_S_TO_S = PixelMap(0x0C71)
    alias PIXEL_MAP_I_TO_R = PixelMap(0x0C72)
    alias PIXEL_MAP_I_TO_G = PixelMap(0x0C73)
    alias PIXEL_MAP_I_TO_B = PixelMap(0x0C74)
    alias PIXEL_MAP_I_TO_A = PixelMap(0x0C75)
    alias PIXEL_MAP_R_TO_R = PixelMap(0x0C76)
    alias PIXEL_MAP_G_TO_G = PixelMap(0x0C77)
    alias PIXEL_MAP_B_TO_B = PixelMap(0x0C78)
    alias PIXEL_MAP_A_TO_A = PixelMap(0x0C79)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelStoreParameter(Intable):
    var value: GLenum

    alias UNPACK_SWAP_BYTES = PixelStoreParameter(0x0CF0)
    alias UNPACK_LSB_FIRST = PixelStoreParameter(0x0CF1)
    alias UNPACK_ROW_LENGTH = PixelStoreParameter(0x0CF2)
    alias UNPACK_ROW_LENGTH_EXT = PixelStoreParameter(0x0CF2)
    alias UNPACK_SKIP_ROWS = PixelStoreParameter(0x0CF3)
    alias UNPACK_SKIP_ROWS_EXT = PixelStoreParameter(0x0CF3)
    alias UNPACK_SKIP_PIXELS = PixelStoreParameter(0x0CF4)
    alias UNPACK_SKIP_PIXELS_EXT = PixelStoreParameter(0x0CF4)
    alias UNPACK_ALIGNMENT = PixelStoreParameter(0x0CF5)
    alias PACK_SWAP_BYTES = PixelStoreParameter(0x0D00)
    alias PACK_LSB_FIRST = PixelStoreParameter(0x0D01)
    alias PACK_ROW_LENGTH = PixelStoreParameter(0x0D02)
    alias PACK_ROW_LENGTH_NV = PixelStoreParameter(0x0D02)
    alias PACK_SKIP_ROWS = PixelStoreParameter(0x0D03)
    alias PACK_SKIP_ROWS_NV = PixelStoreParameter(0x0D03)
    alias PACK_SKIP_PIXELS = PixelStoreParameter(0x0D04)
    alias PACK_SKIP_PIXELS_NV = PixelStoreParameter(0x0D04)
    alias PACK_ALIGNMENT = PixelStoreParameter(0x0D05)
    alias PACK_SKIP_IMAGES = PixelStoreParameter(0x806B)
    alias PACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806B)
    alias PACK_IMAGE_HEIGHT = PixelStoreParameter(0x806C)
    alias PACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806C)
    alias UNPACK_SKIP_IMAGES = PixelStoreParameter(0x806D)
    alias UNPACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806D)
    alias UNPACK_IMAGE_HEIGHT = PixelStoreParameter(0x806E)
    alias UNPACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806E)
    alias PACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8130)
    alias PACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8131)
    alias UNPACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8132)
    alias UNPACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8133)
    alias PIXEL_TILE_WIDTH_SGIX = PixelStoreParameter(0x8140)
    alias PIXEL_TILE_HEIGHT_SGIX = PixelStoreParameter(0x8141)
    alias PIXEL_TILE_GRID_WIDTH_SGIX = PixelStoreParameter(0x8142)
    alias PIXEL_TILE_GRID_HEIGHT_SGIX = PixelStoreParameter(0x8143)
    alias PIXEL_TILE_GRID_DEPTH_SGIX = PixelStoreParameter(0x8144)
    alias PIXEL_TILE_CACHE_SIZE_SGIX = PixelStoreParameter(0x8145)
    alias PACK_RESAMPLE_SGIX = PixelStoreParameter(0x842E)
    alias UNPACK_RESAMPLE_SGIX = PixelStoreParameter(0x842F)
    alias PACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A0)
    alias UNPACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A1)
    alias PACK_RESAMPLE_OML = PixelStoreParameter(0x8984)
    alias UNPACK_RESAMPLE_OML = PixelStoreParameter(0x8985)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelType(Intable):
    var value: GLenum

    alias BYTE = PixelType(0x1400)
    alias UNSIGNED_BYTE = PixelType(0x1401)
    alias SHORT = PixelType(0x1402)
    alias UNSIGNED_SHORT = PixelType(0x1403)
    alias INT = PixelType(0x1404)
    alias UNSIGNED_INT = PixelType(0x1405)
    alias FLOAT = PixelType(0x1406)
    alias HALF_FLOAT = PixelType(0x140B)
    alias HALF_FLOAT_ARB = PixelType(0x140B)
    alias HALF_FLOAT_NV = PixelType(0x140B)
    alias HALF_APPLE = PixelType(0x140B)
    alias BITMAP = PixelType(0x1A00)
    alias UNSIGNED_BYTE_3_3_2 = PixelType(0x8032)
    alias UNSIGNED_BYTE_3_3_2_EXT = PixelType(0x8032)
    alias UNSIGNED_SHORT_4_4_4_4 = PixelType(0x8033)
    alias UNSIGNED_SHORT_4_4_4_4_EXT = PixelType(0x8033)
    alias UNSIGNED_SHORT_5_5_5_1 = PixelType(0x8034)
    alias UNSIGNED_SHORT_5_5_5_1_EXT = PixelType(0x8034)
    alias UNSIGNED_INT_8_8_8_8 = PixelType(0x8035)
    alias UNSIGNED_INT_8_8_8_8_EXT = PixelType(0x8035)
    alias UNSIGNED_INT_10_10_10_2 = PixelType(0x8036)
    alias UNSIGNED_INT_10_10_10_2_EXT = PixelType(0x8036)
    alias UNSIGNED_BYTE_2_3_3_REV = PixelType(0x8362)
    alias UNSIGNED_BYTE_2_3_3_REV_EXT = PixelType(0x8362)
    alias UNSIGNED_SHORT_5_6_5 = PixelType(0x8363)
    alias UNSIGNED_SHORT_5_6_5_EXT = PixelType(0x8363)
    alias UNSIGNED_SHORT_5_6_5_REV = PixelType(0x8364)
    alias UNSIGNED_SHORT_5_6_5_REV_EXT = PixelType(0x8364)
    alias UNSIGNED_SHORT_4_4_4_4_REV = PixelType(0x8365)
    alias UNSIGNED_SHORT_4_4_4_4_REV_EXT = PixelType(0x8365)
    alias UNSIGNED_SHORT_4_4_4_4_REV_IMG = PixelType(0x8365)
    alias UNSIGNED_SHORT_1_5_5_5_REV = PixelType(0x8366)
    alias UNSIGNED_SHORT_1_5_5_5_REV_EXT = PixelType(0x8366)
    alias UNSIGNED_INT_8_8_8_8_REV = PixelType(0x8367)
    alias UNSIGNED_INT_8_8_8_8_REV_EXT = PixelType(0x8367)
    alias UNSIGNED_INT_2_10_10_10_REV = PixelType(0x8368)
    alias UNSIGNED_INT_2_10_10_10_REV_EXT = PixelType(0x8368)
    alias UNSIGNED_INT_24_8 = PixelType(0x84FA)
    alias UNSIGNED_INT_24_8_EXT = PixelType(0x84FA)
    alias UNSIGNED_INT_24_8_NV = PixelType(0x84FA)
    alias UNSIGNED_INT_24_8_OES = PixelType(0x84FA)
    alias UNSIGNED_INT_10F_11F_11F_REV = PixelType(0x8C3B)
    alias UNSIGNED_INT_10F_11F_11F_REV_APPLE = PixelType(0x8C3B)
    alias UNSIGNED_INT_10F_11F_11F_REV_EXT = PixelType(0x8C3B)
    alias UNSIGNED_INT_5_9_9_9_REV = PixelType(0x8C3E)
    alias UNSIGNED_INT_5_9_9_9_REV_APPLE = PixelType(0x8C3E)
    alias UNSIGNED_INT_5_9_9_9_REV_EXT = PixelType(0x8C3E)
    alias FLOAT_32_UNSIGNED_INT_24_8_REV = PixelType(0x8DAD)
    alias FLOAT_32_UNSIGNED_INT_24_8_REV_NV = PixelType(0x8DAD)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PointParameterNameARB(Intable):
    var value: GLenum

    alias POINT_SIZE_MIN = PointParameterNameARB(0x8126)
    alias POINT_SIZE_MIN_ARB = PointParameterNameARB(0x8126)
    alias POINT_SIZE_MIN_EXT = PointParameterNameARB(0x8126)
    alias POINT_SIZE_MIN_SGIS = PointParameterNameARB(0x8126)
    alias POINT_SIZE_MAX = PointParameterNameARB(0x8127)
    alias POINT_SIZE_MAX_ARB = PointParameterNameARB(0x8127)
    alias POINT_SIZE_MAX_EXT = PointParameterNameARB(0x8127)
    alias POINT_SIZE_MAX_SGIS = PointParameterNameARB(0x8127)
    alias POINT_FADE_THRESHOLD_SIZE = PointParameterNameARB(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_ARB = PointParameterNameARB(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_EXT = PointParameterNameARB(0x8128)
    alias POINT_FADE_THRESHOLD_SIZE_SGIS = PointParameterNameARB(0x8128)
    alias DISTANCE_ATTENUATION_EXT = PointParameterNameARB(0x8129)
    alias DISTANCE_ATTENUATION_SGIS = PointParameterNameARB(0x8129)
    alias POINT_DISTANCE_ATTENUATION = PointParameterNameARB(0x8129)
    alias POINT_DISTANCE_ATTENUATION_ARB = PointParameterNameARB(0x8129)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PolygonMode(Intable):
    var value: GLenum

    alias POINT = PolygonMode(0x1B00)
    alias LINE = PolygonMode(0x1B01)
    alias FILL = PolygonMode(0x1B02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PrecisionType(Intable):
    var value: GLenum

    alias LOW_FLOAT = PrecisionType(0x8DF0)
    alias MEDIUM_FLOAT = PrecisionType(0x8DF1)
    alias HIGH_FLOAT = PrecisionType(0x8DF2)
    alias LOW_INT = PrecisionType(0x8DF3)
    alias MEDIUM_INT = PrecisionType(0x8DF4)
    alias HIGH_INT = PrecisionType(0x8DF5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PrimitiveType(Intable):
    var value: GLenum

    alias POINTS = PrimitiveType(0x0000)
    alias LINES = PrimitiveType(0x0001)
    alias LINE_LOOP = PrimitiveType(0x0002)
    alias LINE_STRIP = PrimitiveType(0x0003)
    alias TRIANGLES = PrimitiveType(0x0004)
    alias TRIANGLE_STRIP = PrimitiveType(0x0005)
    alias TRIANGLE_FAN = PrimitiveType(0x0006)
    alias QUADS = PrimitiveType(0x0007)
    alias QUADS_EXT = PrimitiveType(0x0007)
    alias QUAD_STRIP = PrimitiveType(0x0008)
    alias POLYGON = PrimitiveType(0x0009)
    alias LINES_ADJACENCY = PrimitiveType(0x000A)
    alias LINES_ADJACENCY_ARB = PrimitiveType(0x000A)
    alias LINES_ADJACENCY_EXT = PrimitiveType(0x000A)
    alias LINE_STRIP_ADJACENCY = PrimitiveType(0x000B)
    alias LINE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000B)
    alias LINE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000B)
    alias TRIANGLES_ADJACENCY = PrimitiveType(0x000C)
    alias TRIANGLES_ADJACENCY_ARB = PrimitiveType(0x000C)
    alias TRIANGLES_ADJACENCY_EXT = PrimitiveType(0x000C)
    alias TRIANGLE_STRIP_ADJACENCY = PrimitiveType(0x000D)
    alias TRIANGLE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000D)
    alias TRIANGLE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000D)
    alias PATCHES = PrimitiveType(0x000E)
    alias PATCHES_EXT = PrimitiveType(0x000E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterface(Intable):
    var value: GLenum

    alias TRANSFORM_FEEDBACK_BUFFER = ProgramInterface(0x8C8E)
    alias UNIFORM = ProgramInterface(0x92E1)
    alias UNIFORM_BLOCK = ProgramInterface(0x92E2)
    alias PROGRAM_INPUT = ProgramInterface(0x92E3)
    alias PROGRAM_OUTPUT = ProgramInterface(0x92E4)
    alias BUFFER_VARIABLE = ProgramInterface(0x92E5)
    alias SHADER_STORAGE_BLOCK = ProgramInterface(0x92E6)
    alias VERTEX_SUBROUTINE = ProgramInterface(0x92E8)
    alias TESS_CONTROL_SUBROUTINE = ProgramInterface(0x92E9)
    alias TESS_EVALUATION_SUBROUTINE = ProgramInterface(0x92EA)
    alias GEOMETRY_SUBROUTINE = ProgramInterface(0x92EB)
    alias FRAGMENT_SUBROUTINE = ProgramInterface(0x92EC)
    alias COMPUTE_SUBROUTINE = ProgramInterface(0x92ED)
    alias VERTEX_SUBROUTINE_UNIFORM = ProgramInterface(0x92EE)
    alias TESS_CONTROL_SUBROUTINE_UNIFORM = ProgramInterface(0x92EF)
    alias TESS_EVALUATION_SUBROUTINE_UNIFORM = ProgramInterface(0x92F0)
    alias GEOMETRY_SUBROUTINE_UNIFORM = ProgramInterface(0x92F1)
    alias FRAGMENT_SUBROUTINE_UNIFORM = ProgramInterface(0x92F2)
    alias COMPUTE_SUBROUTINE_UNIFORM = ProgramInterface(0x92F3)
    alias TRANSFORM_FEEDBACK_VARYING = ProgramInterface(0x92F4)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterfacePName(Intable):
    var value: GLenum

    alias ACTIVE_RESOURCES = ProgramInterfacePName(0x92F5)
    alias MAX_NAME_LENGTH = ProgramInterfacePName(0x92F6)
    alias MAX_NUM_ACTIVE_VARIABLES = ProgramInterfacePName(0x92F7)
    alias MAX_NUM_COMPATIBLE_SUBROUTINES = ProgramInterfacePName(0x92F8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramParameterPName(Intable):
    var value: GLenum

    alias PROGRAM_BINARY_RETRIEVABLE_HINT = ProgramParameterPName(0x8257)
    alias PROGRAM_SEPARABLE = ProgramParameterPName(0x8258)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramPropertyARB(Intable):
    var value: GLenum

    alias COMPUTE_WORK_GROUP_SIZE = ProgramPropertyARB(0x8267)
    alias PROGRAM_BINARY_LENGTH = ProgramPropertyARB(0x8741)
    alias GEOMETRY_VERTICES_OUT = ProgramPropertyARB(0x8916)
    alias GEOMETRY_INPUT_TYPE = ProgramPropertyARB(0x8917)
    alias GEOMETRY_OUTPUT_TYPE = ProgramPropertyARB(0x8918)
    alias ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = ProgramPropertyARB(0x8A35)
    alias ACTIVE_UNIFORM_BLOCKS = ProgramPropertyARB(0x8A36)
    alias DELETE_STATUS = ProgramPropertyARB(0x8B80)
    alias LINK_STATUS = ProgramPropertyARB(0x8B82)
    alias VALIDATE_STATUS = ProgramPropertyARB(0x8B83)
    alias INFO_LOG_LENGTH = ProgramPropertyARB(0x8B84)
    alias ATTACHED_SHADERS = ProgramPropertyARB(0x8B85)
    alias ACTIVE_UNIFORMS = ProgramPropertyARB(0x8B86)
    alias ACTIVE_UNIFORM_MAX_LENGTH = ProgramPropertyARB(0x8B87)
    alias ACTIVE_ATTRIBUTES = ProgramPropertyARB(0x8B89)
    alias ACTIVE_ATTRIBUTE_MAX_LENGTH = ProgramPropertyARB(0x8B8A)
    alias TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = ProgramPropertyARB(0x8C76)
    alias TRANSFORM_FEEDBACK_BUFFER_MODE = ProgramPropertyARB(0x8C7F)
    alias TRANSFORM_FEEDBACK_VARYINGS = ProgramPropertyARB(0x8C83)
    alias ACTIVE_ATOMIC_COUNTER_BUFFERS = ProgramPropertyARB(0x92D9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramResourceProperty(Intable):
    var value: GLenum

    alias NUM_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4A)
    alias COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4B)
    alias UNIFORM = ProgramResourceProperty(0x92E1)
    alias IS_PER_PATCH = ProgramResourceProperty(0x92E7)
    alias NAME_LENGTH = ProgramResourceProperty(0x92F9)
    alias TYPE = ProgramResourceProperty(0x92FA)
    alias ARRAY_SIZE = ProgramResourceProperty(0x92FB)
    alias OFFSET = ProgramResourceProperty(0x92FC)
    alias BLOCK_INDEX = ProgramResourceProperty(0x92FD)
    alias ARRAY_STRIDE = ProgramResourceProperty(0x92FE)
    alias MATRIX_STRIDE = ProgramResourceProperty(0x92FF)
    alias IS_ROW_MAJOR = ProgramResourceProperty(0x9300)
    alias ATOMIC_COUNTER_BUFFER_INDEX = ProgramResourceProperty(0x9301)
    alias BUFFER_BINDING = ProgramResourceProperty(0x9302)
    alias BUFFER_DATA_SIZE = ProgramResourceProperty(0x9303)
    alias NUM_ACTIVE_VARIABLES = ProgramResourceProperty(0x9304)
    alias ACTIVE_VARIABLES = ProgramResourceProperty(0x9305)
    alias REFERENCED_BY_VERTEX_SHADER = ProgramResourceProperty(0x9306)
    alias REFERENCED_BY_TESS_CONTROL_SHADER = ProgramResourceProperty(0x9307)
    alias REFERENCED_BY_TESS_EVALUATION_SHADER = ProgramResourceProperty(0x9308)
    alias REFERENCED_BY_GEOMETRY_SHADER = ProgramResourceProperty(0x9309)
    alias REFERENCED_BY_FRAGMENT_SHADER = ProgramResourceProperty(0x930A)
    alias REFERENCED_BY_COMPUTE_SHADER = ProgramResourceProperty(0x930B)
    alias TOP_LEVEL_ARRAY_SIZE = ProgramResourceProperty(0x930C)
    alias TOP_LEVEL_ARRAY_STRIDE = ProgramResourceProperty(0x930D)
    alias LOCATION = ProgramResourceProperty(0x930E)
    alias LOCATION_INDEX = ProgramResourceProperty(0x930F)
    alias LOCATION_COMPONENT = ProgramResourceProperty(0x934A)
    alias TRANSFORM_FEEDBACK_BUFFER_INDEX = ProgramResourceProperty(0x934B)
    alias TRANSFORM_FEEDBACK_BUFFER_STRIDE = ProgramResourceProperty(0x934C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramStagePName(Intable):
    var value: GLenum

    alias ACTIVE_SUBROUTINES = ProgramStagePName(0x8DE5)
    alias ACTIVE_SUBROUTINE_UNIFORMS = ProgramStagePName(0x8DE6)
    alias ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = ProgramStagePName(0x8E47)
    alias ACTIVE_SUBROUTINE_MAX_LENGTH = ProgramStagePName(0x8E48)
    alias ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ProgramStagePName(0x8E49)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryCounterTarget(Intable):
    var value: GLenum

    alias TIMESTAMP = QueryCounterTarget(0x8E28)
    alias TIMESTAMP_EXT = QueryCounterTarget(0x8E28)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryObjectParameterName(Intable):
    var value: GLenum

    alias QUERY_TARGET = QueryObjectParameterName(0x82EA)
    alias QUERY_RESULT = QueryObjectParameterName(0x8866)
    alias QUERY_RESULT_AVAILABLE = QueryObjectParameterName(0x8867)
    alias QUERY_RESULT_NO_WAIT = QueryObjectParameterName(0x9194)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryParameterName(Intable):
    var value: GLenum

    alias QUERY_COUNTER_BITS = QueryParameterName(0x8864)
    alias CURRENT_QUERY = QueryParameterName(0x8865)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryTarget(Intable):
    var value: GLenum

    alias TRANSFORM_FEEDBACK_OVERFLOW = QueryTarget(0x82EC)
    alias VERTICES_SUBMITTED = QueryTarget(0x82EE)
    alias PRIMITIVES_SUBMITTED = QueryTarget(0x82EF)
    alias VERTEX_SHADER_INVOCATIONS = QueryTarget(0x82F0)
    alias TIME_ELAPSED = QueryTarget(0x88BF)
    alias SAMPLES_PASSED = QueryTarget(0x8914)
    alias ANY_SAMPLES_PASSED = QueryTarget(0x8C2F)
    alias PRIMITIVES_GENERATED = QueryTarget(0x8C87)
    alias TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = QueryTarget(0x8C88)
    alias ANY_SAMPLES_PASSED_CONSERVATIVE = QueryTarget(0x8D6A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ReadBufferMode(Intable):
    var value: GLenum

    alias NONE = ReadBufferMode(0)
    alias NONE_OES = ReadBufferMode(0)
    alias FRONT_LEFT = ReadBufferMode(0x0400)
    alias FRONT_RIGHT = ReadBufferMode(0x0401)
    alias BACK_LEFT = ReadBufferMode(0x0402)
    alias BACK_RIGHT = ReadBufferMode(0x0403)
    alias FRONT = ReadBufferMode(0x0404)
    alias BACK = ReadBufferMode(0x0405)
    alias LEFT = ReadBufferMode(0x0406)
    alias RIGHT = ReadBufferMode(0x0407)
    alias AUX0 = ReadBufferMode(0x0409)
    alias AUX1 = ReadBufferMode(0x040A)
    alias AUX2 = ReadBufferMode(0x040B)
    alias AUX3 = ReadBufferMode(0x040C)
    alias COLOR_ATTACHMENT0 = ReadBufferMode(0x8CE0)
    alias COLOR_ATTACHMENT1 = ReadBufferMode(0x8CE1)
    alias COLOR_ATTACHMENT2 = ReadBufferMode(0x8CE2)
    alias COLOR_ATTACHMENT3 = ReadBufferMode(0x8CE3)
    alias COLOR_ATTACHMENT4 = ReadBufferMode(0x8CE4)
    alias COLOR_ATTACHMENT5 = ReadBufferMode(0x8CE5)
    alias COLOR_ATTACHMENT6 = ReadBufferMode(0x8CE6)
    alias COLOR_ATTACHMENT7 = ReadBufferMode(0x8CE7)
    alias COLOR_ATTACHMENT8 = ReadBufferMode(0x8CE8)
    alias COLOR_ATTACHMENT9 = ReadBufferMode(0x8CE9)
    alias COLOR_ATTACHMENT10 = ReadBufferMode(0x8CEA)
    alias COLOR_ATTACHMENT11 = ReadBufferMode(0x8CEB)
    alias COLOR_ATTACHMENT12 = ReadBufferMode(0x8CEC)
    alias COLOR_ATTACHMENT13 = ReadBufferMode(0x8CED)
    alias COLOR_ATTACHMENT14 = ReadBufferMode(0x8CEE)
    alias COLOR_ATTACHMENT15 = ReadBufferMode(0x8CEF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferParameterName(Intable):
    var value: GLenum

    alias RENDERBUFFER_COVERAGE_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_SAMPLES = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_SAMPLES_ANGLE = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_SAMPLES_APPLE = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_SAMPLES_EXT = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    alias RENDERBUFFER_WIDTH = RenderbufferParameterName(0x8D42)
    alias RENDERBUFFER_WIDTH_EXT = RenderbufferParameterName(0x8D42)
    alias RENDERBUFFER_WIDTH_OES = RenderbufferParameterName(0x8D42)
    alias RENDERBUFFER_HEIGHT = RenderbufferParameterName(0x8D43)
    alias RENDERBUFFER_HEIGHT_EXT = RenderbufferParameterName(0x8D43)
    alias RENDERBUFFER_HEIGHT_OES = RenderbufferParameterName(0x8D43)
    alias RENDERBUFFER_INTERNAL_FORMAT = RenderbufferParameterName(0x8D44)
    alias RENDERBUFFER_INTERNAL_FORMAT_EXT = RenderbufferParameterName(0x8D44)
    alias RENDERBUFFER_INTERNAL_FORMAT_OES = RenderbufferParameterName(0x8D44)
    alias RENDERBUFFER_RED_SIZE = RenderbufferParameterName(0x8D50)
    alias RENDERBUFFER_RED_SIZE_EXT = RenderbufferParameterName(0x8D50)
    alias RENDERBUFFER_RED_SIZE_OES = RenderbufferParameterName(0x8D50)
    alias RENDERBUFFER_GREEN_SIZE = RenderbufferParameterName(0x8D51)
    alias RENDERBUFFER_GREEN_SIZE_EXT = RenderbufferParameterName(0x8D51)
    alias RENDERBUFFER_GREEN_SIZE_OES = RenderbufferParameterName(0x8D51)
    alias RENDERBUFFER_BLUE_SIZE = RenderbufferParameterName(0x8D52)
    alias RENDERBUFFER_BLUE_SIZE_EXT = RenderbufferParameterName(0x8D52)
    alias RENDERBUFFER_BLUE_SIZE_OES = RenderbufferParameterName(0x8D52)
    alias RENDERBUFFER_ALPHA_SIZE = RenderbufferParameterName(0x8D53)
    alias RENDERBUFFER_ALPHA_SIZE_EXT = RenderbufferParameterName(0x8D53)
    alias RENDERBUFFER_ALPHA_SIZE_OES = RenderbufferParameterName(0x8D53)
    alias RENDERBUFFER_DEPTH_SIZE = RenderbufferParameterName(0x8D54)
    alias RENDERBUFFER_DEPTH_SIZE_EXT = RenderbufferParameterName(0x8D54)
    alias RENDERBUFFER_DEPTH_SIZE_OES = RenderbufferParameterName(0x8D54)
    alias RENDERBUFFER_STENCIL_SIZE = RenderbufferParameterName(0x8D55)
    alias RENDERBUFFER_STENCIL_SIZE_EXT = RenderbufferParameterName(0x8D55)
    alias RENDERBUFFER_STENCIL_SIZE_OES = RenderbufferParameterName(0x8D55)
    alias RENDERBUFFER_COLOR_SAMPLES_NV = RenderbufferParameterName(0x8E10)
    alias RENDERBUFFER_SAMPLES_IMG = RenderbufferParameterName(0x9133)
    alias RENDERBUFFER_STORAGE_SAMPLES_AMD = RenderbufferParameterName(0x91B2)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferTarget(Intable):
    var value: GLenum

    alias RENDERBUFFER = RenderbufferTarget(0x8D41)
    alias RENDERBUFFER_OES = RenderbufferTarget(0x8D41)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterF(Intable):
    var value: GLenum

    alias TEXTURE_BORDER_COLOR = SamplerParameterF(0x1004)
    alias TEXTURE_MIN_LOD = SamplerParameterF(0x813A)
    alias TEXTURE_MAX_LOD = SamplerParameterF(0x813B)
    alias TEXTURE_MAX_ANISOTROPY = SamplerParameterF(0x84FE)
    alias TEXTURE_LOD_BIAS = SamplerParameterF(0x8501)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterF(0x8F6A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterI(Intable):
    var value: GLenum

    alias TEXTURE_MAG_FILTER = SamplerParameterI(0x2800)
    alias TEXTURE_MIN_FILTER = SamplerParameterI(0x2801)
    alias TEXTURE_WRAP_S = SamplerParameterI(0x2802)
    alias TEXTURE_WRAP_T = SamplerParameterI(0x2803)
    alias TEXTURE_WRAP_R = SamplerParameterI(0x8072)
    alias TEXTURE_COMPARE_MODE = SamplerParameterI(0x884C)
    alias TEXTURE_COMPARE_FUNC = SamplerParameterI(0x884D)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterI(0x8F6A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SeparableTarget(Intable):
    var value: GLenum

    alias SEPARABLE_2D = SeparableTarget(0x8012)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderBinaryFormat(Intable):
    var value: GLenum

    alias SGX_BINARY_IMG = ShaderBinaryFormat(0x8C0A)
    alias MALI_SHADER_BINARY_ARM = ShaderBinaryFormat(0x8F60)
    alias SHADER_BINARY_VIV = ShaderBinaryFormat(0x8FC4)
    alias SHADER_BINARY_DMP = ShaderBinaryFormat(0x9250)
    alias GCCSO_SHADER_BINARY_FJ = ShaderBinaryFormat(0x9260)
    alias SHADER_BINARY_FORMAT_SPIR_V = ShaderBinaryFormat(0x9551)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderParameterName(Intable):
    var value: GLenum

    alias SHADER_TYPE = ShaderParameterName(0x8B4F)
    alias DELETE_STATUS = ShaderParameterName(0x8B80)
    alias COMPILE_STATUS = ShaderParameterName(0x8B81)
    alias INFO_LOG_LENGTH = ShaderParameterName(0x8B84)
    alias SHADER_SOURCE_LENGTH = ShaderParameterName(0x8B88)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderType(Intable):
    var value: GLenum

    alias FRAGMENT_SHADER = ShaderType(0x8B30)
    alias FRAGMENT_SHADER_ARB = ShaderType(0x8B30)
    alias VERTEX_SHADER = ShaderType(0x8B31)
    alias VERTEX_SHADER_ARB = ShaderType(0x8B31)
    alias GEOMETRY_SHADER = ShaderType(0x8DD9)
    alias TESS_EVALUATION_SHADER = ShaderType(0x8E87)
    alias TESS_CONTROL_SHADER = ShaderType(0x8E88)
    alias COMPUTE_SHADER = ShaderType(0x91B9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SizedInternalFormat(Intable):
    var value: GLenum

    alias R3_G3_B2 = SizedInternalFormat(0x2A10)
    alias ALPHA4 = SizedInternalFormat(0x803B)
    alias ALPHA4_EXT = SizedInternalFormat(0x803B)
    alias ALPHA8 = SizedInternalFormat(0x803C)
    alias ALPHA8_EXT = SizedInternalFormat(0x803C)
    alias ALPHA8_OES = SizedInternalFormat(0x803C)
    alias ALPHA12 = SizedInternalFormat(0x803D)
    alias ALPHA12_EXT = SizedInternalFormat(0x803D)
    alias ALPHA16 = SizedInternalFormat(0x803E)
    alias ALPHA16_EXT = SizedInternalFormat(0x803E)
    alias LUMINANCE4 = SizedInternalFormat(0x803F)
    alias LUMINANCE4_EXT = SizedInternalFormat(0x803F)
    alias LUMINANCE8 = SizedInternalFormat(0x8040)
    alias LUMINANCE8_EXT = SizedInternalFormat(0x8040)
    alias LUMINANCE8_OES = SizedInternalFormat(0x8040)
    alias LUMINANCE12 = SizedInternalFormat(0x8041)
    alias LUMINANCE12_EXT = SizedInternalFormat(0x8041)
    alias LUMINANCE16 = SizedInternalFormat(0x8042)
    alias LUMINANCE16_EXT = SizedInternalFormat(0x8042)
    alias LUMINANCE4_ALPHA4 = SizedInternalFormat(0x8043)
    alias LUMINANCE4_ALPHA4_EXT = SizedInternalFormat(0x8043)
    alias LUMINANCE4_ALPHA4_OES = SizedInternalFormat(0x8043)
    alias LUMINANCE6_ALPHA2 = SizedInternalFormat(0x8044)
    alias LUMINANCE6_ALPHA2_EXT = SizedInternalFormat(0x8044)
    alias LUMINANCE8_ALPHA8 = SizedInternalFormat(0x8045)
    alias LUMINANCE8_ALPHA8_EXT = SizedInternalFormat(0x8045)
    alias LUMINANCE8_ALPHA8_OES = SizedInternalFormat(0x8045)
    alias LUMINANCE12_ALPHA4 = SizedInternalFormat(0x8046)
    alias LUMINANCE12_ALPHA4_EXT = SizedInternalFormat(0x8046)
    alias LUMINANCE12_ALPHA12 = SizedInternalFormat(0x8047)
    alias LUMINANCE12_ALPHA12_EXT = SizedInternalFormat(0x8047)
    alias LUMINANCE16_ALPHA16 = SizedInternalFormat(0x8048)
    alias LUMINANCE16_ALPHA16_EXT = SizedInternalFormat(0x8048)
    alias INTENSITY4 = SizedInternalFormat(0x804A)
    alias INTENSITY4_EXT = SizedInternalFormat(0x804A)
    alias INTENSITY8 = SizedInternalFormat(0x804B)
    alias INTENSITY8_EXT = SizedInternalFormat(0x804B)
    alias INTENSITY12 = SizedInternalFormat(0x804C)
    alias INTENSITY12_EXT = SizedInternalFormat(0x804C)
    alias INTENSITY16 = SizedInternalFormat(0x804D)
    alias INTENSITY16_EXT = SizedInternalFormat(0x804D)
    alias RGB2_EXT = SizedInternalFormat(0x804E)
    alias RGB4 = SizedInternalFormat(0x804F)
    alias RGB4_EXT = SizedInternalFormat(0x804F)
    alias RGB5 = SizedInternalFormat(0x8050)
    alias RGB5_EXT = SizedInternalFormat(0x8050)
    alias RGB8 = SizedInternalFormat(0x8051)
    alias RGB8_EXT = SizedInternalFormat(0x8051)
    alias RGB8_OES = SizedInternalFormat(0x8051)
    alias RGB10 = SizedInternalFormat(0x8052)
    alias RGB10_EXT = SizedInternalFormat(0x8052)
    alias RGB12 = SizedInternalFormat(0x8053)
    alias RGB12_EXT = SizedInternalFormat(0x8053)
    alias RGB16 = SizedInternalFormat(0x8054)
    alias RGB16_EXT = SizedInternalFormat(0x8054)
    alias RGBA2 = SizedInternalFormat(0x8055)
    alias RGBA2_EXT = SizedInternalFormat(0x8055)
    alias RGBA4 = SizedInternalFormat(0x8056)
    alias RGBA4_EXT = SizedInternalFormat(0x8056)
    alias RGBA4_OES = SizedInternalFormat(0x8056)
    alias RGB5_A1 = SizedInternalFormat(0x8057)
    alias RGB5_A1_EXT = SizedInternalFormat(0x8057)
    alias RGB5_A1_OES = SizedInternalFormat(0x8057)
    alias RGBA8 = SizedInternalFormat(0x8058)
    alias RGBA8_EXT = SizedInternalFormat(0x8058)
    alias RGBA8_OES = SizedInternalFormat(0x8058)
    alias RGB10_A2 = SizedInternalFormat(0x8059)
    alias RGB10_A2_EXT = SizedInternalFormat(0x8059)
    alias RGBA12 = SizedInternalFormat(0x805A)
    alias RGBA12_EXT = SizedInternalFormat(0x805A)
    alias RGBA16 = SizedInternalFormat(0x805B)
    alias RGBA16_EXT = SizedInternalFormat(0x805B)
    alias DEPTH_COMPONENT16 = SizedInternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_ARB = SizedInternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_OES = SizedInternalFormat(0x81A5)
    alias DEPTH_COMPONENT16_SGIX = SizedInternalFormat(0x81A5)
    alias DEPTH_COMPONENT24 = SizedInternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_ARB = SizedInternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_OES = SizedInternalFormat(0x81A6)
    alias DEPTH_COMPONENT24_SGIX = SizedInternalFormat(0x81A6)
    alias DEPTH_COMPONENT32 = SizedInternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_ARB = SizedInternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_OES = SizedInternalFormat(0x81A7)
    alias DEPTH_COMPONENT32_SGIX = SizedInternalFormat(0x81A7)
    alias R8 = SizedInternalFormat(0x8229)
    alias R8_EXT = SizedInternalFormat(0x8229)
    alias R16 = SizedInternalFormat(0x822A)
    alias R16_EXT = SizedInternalFormat(0x822A)
    alias RG8 = SizedInternalFormat(0x822B)
    alias RG8_EXT = SizedInternalFormat(0x822B)
    alias RG16 = SizedInternalFormat(0x822C)
    alias RG16_EXT = SizedInternalFormat(0x822C)
    alias R16F = SizedInternalFormat(0x822D)
    alias R16F_EXT = SizedInternalFormat(0x822D)
    alias R32F = SizedInternalFormat(0x822E)
    alias R32F_EXT = SizedInternalFormat(0x822E)
    alias RG16F = SizedInternalFormat(0x822F)
    alias RG16F_EXT = SizedInternalFormat(0x822F)
    alias RG32F = SizedInternalFormat(0x8230)
    alias RG32F_EXT = SizedInternalFormat(0x8230)
    alias R8I = SizedInternalFormat(0x8231)
    alias R8UI = SizedInternalFormat(0x8232)
    alias R16I = SizedInternalFormat(0x8233)
    alias R16UI = SizedInternalFormat(0x8234)
    alias R32I = SizedInternalFormat(0x8235)
    alias R32UI = SizedInternalFormat(0x8236)
    alias RG8I = SizedInternalFormat(0x8237)
    alias RG8UI = SizedInternalFormat(0x8238)
    alias RG16I = SizedInternalFormat(0x8239)
    alias RG16UI = SizedInternalFormat(0x823A)
    alias RG32I = SizedInternalFormat(0x823B)
    alias RG32UI = SizedInternalFormat(0x823C)
    alias COMPRESSED_RGB_S3TC_DXT1_EXT = SizedInternalFormat(0x83F0)
    alias COMPRESSED_RGBA_S3TC_DXT1_EXT = SizedInternalFormat(0x83F1)
    alias COMPRESSED_RGBA_S3TC_DXT3_ANGLE = SizedInternalFormat(0x83F2)
    alias COMPRESSED_RGBA_S3TC_DXT3_EXT = SizedInternalFormat(0x83F2)
    alias COMPRESSED_RGBA_S3TC_DXT5_ANGLE = SizedInternalFormat(0x83F3)
    alias COMPRESSED_RGBA_S3TC_DXT5_EXT = SizedInternalFormat(0x83F3)
    alias RGBA32F = SizedInternalFormat(0x8814)
    alias RGBA32F_ARB = SizedInternalFormat(0x8814)
    alias RGBA32F_EXT = SizedInternalFormat(0x8814)
    alias RGB32F = SizedInternalFormat(0x8815)
    alias RGB32F_ARB = SizedInternalFormat(0x8815)
    alias RGB32F_EXT = SizedInternalFormat(0x8815)
    alias RGBA16F = SizedInternalFormat(0x881A)
    alias RGBA16F_ARB = SizedInternalFormat(0x881A)
    alias RGBA16F_EXT = SizedInternalFormat(0x881A)
    alias RGB16F = SizedInternalFormat(0x881B)
    alias RGB16F_ARB = SizedInternalFormat(0x881B)
    alias RGB16F_EXT = SizedInternalFormat(0x881B)
    alias DEPTH24_STENCIL8 = SizedInternalFormat(0x88F0)
    alias DEPTH24_STENCIL8_EXT = SizedInternalFormat(0x88F0)
    alias DEPTH24_STENCIL8_OES = SizedInternalFormat(0x88F0)
    alias R11F_G11F_B10F = SizedInternalFormat(0x8C3A)
    alias R11F_G11F_B10F_APPLE = SizedInternalFormat(0x8C3A)
    alias R11F_G11F_B10F_EXT = SizedInternalFormat(0x8C3A)
    alias RGB9_E5 = SizedInternalFormat(0x8C3D)
    alias RGB9_E5_APPLE = SizedInternalFormat(0x8C3D)
    alias RGB9_E5_EXT = SizedInternalFormat(0x8C3D)
    alias SRGB8 = SizedInternalFormat(0x8C41)
    alias SRGB8_EXT = SizedInternalFormat(0x8C41)
    alias SRGB8_NV = SizedInternalFormat(0x8C41)
    alias SRGB8_ALPHA8 = SizedInternalFormat(0x8C43)
    alias SRGB8_ALPHA8_EXT = SizedInternalFormat(0x8C43)
    alias COMPRESSED_SRGB_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4C)
    alias COMPRESSED_SRGB_S3TC_DXT1_NV = SizedInternalFormat(0x8C4C)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4D)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = SizedInternalFormat(0x8C4D)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = SizedInternalFormat(0x8C4E)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = SizedInternalFormat(0x8C4E)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = SizedInternalFormat(0x8C4F)
    alias COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = SizedInternalFormat(0x8C4F)
    alias DEPTH_COMPONENT32F = SizedInternalFormat(0x8CAC)
    alias DEPTH32F_STENCIL8 = SizedInternalFormat(0x8CAD)
    alias STENCIL_INDEX1 = SizedInternalFormat(0x8D46)
    alias STENCIL_INDEX1_EXT = SizedInternalFormat(0x8D46)
    alias STENCIL_INDEX1_OES = SizedInternalFormat(0x8D46)
    alias STENCIL_INDEX4 = SizedInternalFormat(0x8D47)
    alias STENCIL_INDEX4_EXT = SizedInternalFormat(0x8D47)
    alias STENCIL_INDEX4_OES = SizedInternalFormat(0x8D47)
    alias STENCIL_INDEX8 = SizedInternalFormat(0x8D48)
    alias STENCIL_INDEX8_EXT = SizedInternalFormat(0x8D48)
    alias STENCIL_INDEX8_OES = SizedInternalFormat(0x8D48)
    alias STENCIL_INDEX16 = SizedInternalFormat(0x8D49)
    alias STENCIL_INDEX16_EXT = SizedInternalFormat(0x8D49)
    alias RGB565_OES = SizedInternalFormat(0x8D62)
    alias RGB565 = SizedInternalFormat(0x8D62)
    alias ETC1_RGB8_OES = SizedInternalFormat(0x8D64)
    alias RGBA32UI = SizedInternalFormat(0x8D70)
    alias RGBA32UI_EXT = SizedInternalFormat(0x8D70)
    alias RGB32UI = SizedInternalFormat(0x8D71)
    alias RGB32UI_EXT = SizedInternalFormat(0x8D71)
    alias ALPHA32UI_EXT = SizedInternalFormat(0x8D72)
    alias INTENSITY32UI_EXT = SizedInternalFormat(0x8D73)
    alias LUMINANCE32UI_EXT = SizedInternalFormat(0x8D74)
    alias LUMINANCE_ALPHA32UI_EXT = SizedInternalFormat(0x8D75)
    alias RGBA16UI = SizedInternalFormat(0x8D76)
    alias RGBA16UI_EXT = SizedInternalFormat(0x8D76)
    alias RGB16UI = SizedInternalFormat(0x8D77)
    alias RGB16UI_EXT = SizedInternalFormat(0x8D77)
    alias ALPHA16UI_EXT = SizedInternalFormat(0x8D78)
    alias INTENSITY16UI_EXT = SizedInternalFormat(0x8D79)
    alias LUMINANCE16UI_EXT = SizedInternalFormat(0x8D7A)
    alias LUMINANCE_ALPHA16UI_EXT = SizedInternalFormat(0x8D7B)
    alias RGBA8UI = SizedInternalFormat(0x8D7C)
    alias RGBA8UI_EXT = SizedInternalFormat(0x8D7C)
    alias RGB8UI = SizedInternalFormat(0x8D7D)
    alias RGB8UI_EXT = SizedInternalFormat(0x8D7D)
    alias ALPHA8UI_EXT = SizedInternalFormat(0x8D7E)
    alias INTENSITY8UI_EXT = SizedInternalFormat(0x8D7F)
    alias LUMINANCE8UI_EXT = SizedInternalFormat(0x8D80)
    alias LUMINANCE_ALPHA8UI_EXT = SizedInternalFormat(0x8D81)
    alias RGBA32I = SizedInternalFormat(0x8D82)
    alias RGBA32I_EXT = SizedInternalFormat(0x8D82)
    alias RGB32I = SizedInternalFormat(0x8D83)
    alias RGB32I_EXT = SizedInternalFormat(0x8D83)
    alias ALPHA32I_EXT = SizedInternalFormat(0x8D84)
    alias INTENSITY32I_EXT = SizedInternalFormat(0x8D85)
    alias LUMINANCE32I_EXT = SizedInternalFormat(0x8D86)
    alias LUMINANCE_ALPHA32I_EXT = SizedInternalFormat(0x8D87)
    alias RGBA16I = SizedInternalFormat(0x8D88)
    alias RGBA16I_EXT = SizedInternalFormat(0x8D88)
    alias RGB16I = SizedInternalFormat(0x8D89)
    alias RGB16I_EXT = SizedInternalFormat(0x8D89)
    alias ALPHA16I_EXT = SizedInternalFormat(0x8D8A)
    alias INTENSITY16I_EXT = SizedInternalFormat(0x8D8B)
    alias LUMINANCE16I_EXT = SizedInternalFormat(0x8D8C)
    alias LUMINANCE_ALPHA16I_EXT = SizedInternalFormat(0x8D8D)
    alias RGBA8I = SizedInternalFormat(0x8D8E)
    alias RGBA8I_EXT = SizedInternalFormat(0x8D8E)
    alias RGB8I = SizedInternalFormat(0x8D8F)
    alias RGB8I_EXT = SizedInternalFormat(0x8D8F)
    alias ALPHA8I_EXT = SizedInternalFormat(0x8D90)
    alias INTENSITY8I_EXT = SizedInternalFormat(0x8D91)
    alias LUMINANCE8I_EXT = SizedInternalFormat(0x8D92)
    alias LUMINANCE_ALPHA8I_EXT = SizedInternalFormat(0x8D93)
    alias DEPTH_COMPONENT32F_NV = SizedInternalFormat(0x8DAB)
    alias DEPTH32F_STENCIL8_NV = SizedInternalFormat(0x8DAC)
    alias COMPRESSED_RED_RGTC1 = SizedInternalFormat(0x8DBB)
    alias COMPRESSED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBB)
    alias COMPRESSED_SIGNED_RED_RGTC1 = SizedInternalFormat(0x8DBC)
    alias COMPRESSED_SIGNED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBC)
    alias COMPRESSED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBD)
    alias COMPRESSED_RG_RGTC2 = SizedInternalFormat(0x8DBD)
    alias COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBE)
    alias COMPRESSED_SIGNED_RG_RGTC2 = SizedInternalFormat(0x8DBE)
    alias COMPRESSED_RGBA_BPTC_UNORM = SizedInternalFormat(0x8E8C)
    alias COMPRESSED_RGBA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8C)
    alias COMPRESSED_RGBA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8C)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM = SizedInternalFormat(0x8E8D)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8D)
    alias COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8D)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT = SizedInternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8E)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = SizedInternalFormat(0x8E8F)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8F)
    alias COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8F)
    alias R8_SNORM = SizedInternalFormat(0x8F94)
    alias RG8_SNORM = SizedInternalFormat(0x8F95)
    alias RGB8_SNORM = SizedInternalFormat(0x8F96)
    alias RGBA8_SNORM = SizedInternalFormat(0x8F97)
    alias R16_SNORM = SizedInternalFormat(0x8F98)
    alias R16_SNORM_EXT = SizedInternalFormat(0x8F98)
    alias RG16_SNORM = SizedInternalFormat(0x8F99)
    alias RG16_SNORM_EXT = SizedInternalFormat(0x8F99)
    alias RGB16_SNORM = SizedInternalFormat(0x8F9A)
    alias RGB16_SNORM_EXT = SizedInternalFormat(0x8F9A)
    alias RGBA16_SNORM = SizedInternalFormat(0x8F9B)
    alias RGBA16_SNORM_EXT = SizedInternalFormat(0x8F9B)
    alias RGB10_A2UI = SizedInternalFormat(0x906F)
    alias COMPRESSED_R11_EAC = SizedInternalFormat(0x9270)
    alias COMPRESSED_R11_EAC_OES = SizedInternalFormat(0x9270)
    alias COMPRESSED_SIGNED_R11_EAC = SizedInternalFormat(0x9271)
    alias COMPRESSED_SIGNED_R11_EAC_OES = SizedInternalFormat(0x9271)
    alias COMPRESSED_RG11_EAC = SizedInternalFormat(0x9272)
    alias COMPRESSED_RG11_EAC_OES = SizedInternalFormat(0x9272)
    alias COMPRESSED_SIGNED_RG11_EAC = SizedInternalFormat(0x9273)
    alias COMPRESSED_SIGNED_RG11_EAC_OES = SizedInternalFormat(0x9273)
    alias COMPRESSED_RGB8_ETC2 = SizedInternalFormat(0x9274)
    alias COMPRESSED_RGB8_ETC2_OES = SizedInternalFormat(0x9274)
    alias COMPRESSED_SRGB8_ETC2 = SizedInternalFormat(0x9275)
    alias COMPRESSED_SRGB8_ETC2_OES = SizedInternalFormat(0x9275)
    alias COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9276)
    alias COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9276)
    alias COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9277)
    alias COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9277)
    alias COMPRESSED_RGBA8_ETC2_EAC = SizedInternalFormat(0x9278)
    alias COMPRESSED_RGBA8_ETC2_EAC_OES = SizedInternalFormat(0x9278)
    alias COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = SizedInternalFormat(0x9279)
    alias COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = SizedInternalFormat(0x9279)
    alias COMPRESSED_RGBA_ASTC_4x4 = SizedInternalFormat(0x93B0)
    alias COMPRESSED_RGBA_ASTC_4x4_KHR = SizedInternalFormat(0x93B0)
    alias COMPRESSED_RGBA_ASTC_5x4 = SizedInternalFormat(0x93B1)
    alias COMPRESSED_RGBA_ASTC_5x4_KHR = SizedInternalFormat(0x93B1)
    alias COMPRESSED_RGBA_ASTC_5x5 = SizedInternalFormat(0x93B2)
    alias COMPRESSED_RGBA_ASTC_5x5_KHR = SizedInternalFormat(0x93B2)
    alias COMPRESSED_RGBA_ASTC_6x5 = SizedInternalFormat(0x93B3)
    alias COMPRESSED_RGBA_ASTC_6x5_KHR = SizedInternalFormat(0x93B3)
    alias COMPRESSED_RGBA_ASTC_6x6 = SizedInternalFormat(0x93B4)
    alias COMPRESSED_RGBA_ASTC_6x6_KHR = SizedInternalFormat(0x93B4)
    alias COMPRESSED_RGBA_ASTC_8x5 = SizedInternalFormat(0x93B5)
    alias COMPRESSED_RGBA_ASTC_8x5_KHR = SizedInternalFormat(0x93B5)
    alias COMPRESSED_RGBA_ASTC_8x6 = SizedInternalFormat(0x93B6)
    alias COMPRESSED_RGBA_ASTC_8x6_KHR = SizedInternalFormat(0x93B6)
    alias COMPRESSED_RGBA_ASTC_8x8 = SizedInternalFormat(0x93B7)
    alias COMPRESSED_RGBA_ASTC_8x8_KHR = SizedInternalFormat(0x93B7)
    alias COMPRESSED_RGBA_ASTC_10x5 = SizedInternalFormat(0x93B8)
    alias COMPRESSED_RGBA_ASTC_10x5_KHR = SizedInternalFormat(0x93B8)
    alias COMPRESSED_RGBA_ASTC_10x6 = SizedInternalFormat(0x93B9)
    alias COMPRESSED_RGBA_ASTC_10x6_KHR = SizedInternalFormat(0x93B9)
    alias COMPRESSED_RGBA_ASTC_10x8 = SizedInternalFormat(0x93BA)
    alias COMPRESSED_RGBA_ASTC_10x8_KHR = SizedInternalFormat(0x93BA)
    alias COMPRESSED_RGBA_ASTC_10x10 = SizedInternalFormat(0x93BB)
    alias COMPRESSED_RGBA_ASTC_10x10_KHR = SizedInternalFormat(0x93BB)
    alias COMPRESSED_RGBA_ASTC_12x10 = SizedInternalFormat(0x93BC)
    alias COMPRESSED_RGBA_ASTC_12x10_KHR = SizedInternalFormat(0x93BC)
    alias COMPRESSED_RGBA_ASTC_12x12 = SizedInternalFormat(0x93BD)
    alias COMPRESSED_RGBA_ASTC_12x12_KHR = SizedInternalFormat(0x93BD)
    alias COMPRESSED_RGBA_ASTC_3x3x3_OES = SizedInternalFormat(0x93C0)
    alias COMPRESSED_RGBA_ASTC_4x3x3_OES = SizedInternalFormat(0x93C1)
    alias COMPRESSED_RGBA_ASTC_4x4x3_OES = SizedInternalFormat(0x93C2)
    alias COMPRESSED_RGBA_ASTC_4x4x4_OES = SizedInternalFormat(0x93C3)
    alias COMPRESSED_RGBA_ASTC_5x4x4_OES = SizedInternalFormat(0x93C4)
    alias COMPRESSED_RGBA_ASTC_5x5x4_OES = SizedInternalFormat(0x93C5)
    alias COMPRESSED_RGBA_ASTC_5x5x5_OES = SizedInternalFormat(0x93C6)
    alias COMPRESSED_RGBA_ASTC_6x5x5_OES = SizedInternalFormat(0x93C7)
    alias COMPRESSED_RGBA_ASTC_6x6x5_OES = SizedInternalFormat(0x93C8)
    alias COMPRESSED_RGBA_ASTC_6x6x6_OES = SizedInternalFormat(0x93C9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = SizedInternalFormat(0x93D0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = SizedInternalFormat(0x93D0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = SizedInternalFormat(0x93D1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = SizedInternalFormat(0x93D1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = SizedInternalFormat(0x93D2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = SizedInternalFormat(0x93D2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = SizedInternalFormat(0x93D3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = SizedInternalFormat(0x93D3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = SizedInternalFormat(0x93D4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = SizedInternalFormat(0x93D4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = SizedInternalFormat(0x93D5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = SizedInternalFormat(0x93D5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = SizedInternalFormat(0x93D6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = SizedInternalFormat(0x93D6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = SizedInternalFormat(0x93D7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = SizedInternalFormat(0x93D7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = SizedInternalFormat(0x93D8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = SizedInternalFormat(0x93D8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = SizedInternalFormat(0x93D9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = SizedInternalFormat(0x93D9)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = SizedInternalFormat(0x93DA)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = SizedInternalFormat(0x93DA)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = SizedInternalFormat(0x93DB)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = SizedInternalFormat(0x93DB)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = SizedInternalFormat(0x93DC)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = SizedInternalFormat(0x93DC)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = SizedInternalFormat(0x93DD)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = SizedInternalFormat(0x93DD)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = SizedInternalFormat(0x93E0)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = SizedInternalFormat(0x93E1)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = SizedInternalFormat(0x93E2)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = SizedInternalFormat(0x93E3)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = SizedInternalFormat(0x93E4)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = SizedInternalFormat(0x93E5)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = SizedInternalFormat(0x93E6)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = SizedInternalFormat(0x93E7)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = SizedInternalFormat(0x93E8)
    alias COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = SizedInternalFormat(0x93E9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SpecialNumbers(Intable):
    var value: GLenum

    alias FALSE = SpecialNumbers(0)
    alias NO_ERROR = SpecialNumbers(0)
    alias ZERO = SpecialNumbers(0)
    alias NONE = SpecialNumbers(0)
    alias NONE_OES = SpecialNumbers(0)
    alias TRUE = SpecialNumbers(1)
    alias ONE = SpecialNumbers(1)
    alias INVALID_INDEX = SpecialNumbers(0xFFFFFFFF)
    alias ALL_PIXELS_AMD = SpecialNumbers(0xFFFFFFFF)
    alias TIMEOUT_IGNORED = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    alias TIMEOUT_IGNORED_APPLE = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    alias VERSION_ES_CL_1_0 = SpecialNumbers(1)
    alias VERSION_ES_CM_1_1 = SpecialNumbers(1)
    alias VERSION_ES_CL_1_1 = SpecialNumbers(1)
    alias UUID_SIZE_EXT = SpecialNumbers(16)
    alias LUID_SIZE_EXT = SpecialNumbers(8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StencilFunction(Intable):
    var value: GLenum

    alias NEVER = StencilFunction(0x0200)
    alias LESS = StencilFunction(0x0201)
    alias EQUAL = StencilFunction(0x0202)
    alias LEQUAL = StencilFunction(0x0203)
    alias GREATER = StencilFunction(0x0204)
    alias NOTEQUAL = StencilFunction(0x0205)
    alias GEQUAL = StencilFunction(0x0206)
    alias ALWAYS = StencilFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StencilOp(Intable):
    var value: GLenum

    alias ZERO = StencilOp(0)
    alias INVERT = StencilOp(0x150A)
    alias KEEP = StencilOp(0x1E00)
    alias REPLACE = StencilOp(0x1E01)
    alias INCR = StencilOp(0x1E02)
    alias DECR = StencilOp(0x1E03)
    alias INCR_WRAP = StencilOp(0x8507)
    alias DECR_WRAP = StencilOp(0x8508)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StringName(Intable):
    var value: GLenum

    alias VENDOR = StringName(0x1F00)
    alias RENDERER = StringName(0x1F01)
    alias VERSION = StringName(0x1F02)
    alias EXTENSIONS = StringName(0x1F03)
    alias SHADING_LANGUAGE_VERSION = StringName(0x8B8C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SubroutineParameterName(Intable):
    var value: GLenum

    alias UNIFORM_SIZE = SubroutineParameterName(0x8A38)
    alias UNIFORM_NAME_LENGTH = SubroutineParameterName(0x8A39)
    alias NUM_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4A)
    alias COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncBehaviorFlags(Intable):
    var value: GLbitfield

    alias NONE = SyncBehaviorFlags(0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncCondition(Intable):
    var value: GLenum

    alias SYNC_GPU_COMMANDS_COMPLETE = SyncCondition(0x9117)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncObjectMask(Intable):
    var value: GLbitfield

    alias SYNC_FLUSH_COMMANDS_BIT = SyncObjectMask(0x00000001)
    alias SYNC_FLUSH_COMMANDS_BIT_APPLE = SyncObjectMask(0x00000001)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncParameterName(Intable):
    var value: GLenum

    alias OBJECT_TYPE = SyncParameterName(0x9112)
    alias SYNC_CONDITION = SyncParameterName(0x9113)
    alias SYNC_STATUS = SyncParameterName(0x9114)
    alias SYNC_FLAGS = SyncParameterName(0x9115)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncStatus(Intable):
    var value: GLenum

    alias ALREADY_SIGNALED = SyncStatus(0x911A)
    alias TIMEOUT_EXPIRED = SyncStatus(0x911B)
    alias CONDITION_SATISFIED = SyncStatus(0x911C)
    alias WAIT_FAILED = SyncStatus(0x911D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TexCoordPointerType(Intable):
    var value: GLenum

    alias SHORT = TexCoordPointerType(0x1402)
    alias INT = TexCoordPointerType(0x1404)
    alias FLOAT = TexCoordPointerType(0x1406)
    alias DOUBLE = TexCoordPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureCompareMode(Intable):
    var value: GLenum

    alias NONE = TextureCompareMode(0)
    alias COMPARE_R_TO_TEXTURE = TextureCompareMode(0x884E)
    alias COMPARE_REF_TO_TEXTURE = TextureCompareMode(0x884E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureEnvMode(Intable):
    var value: GLenum

    alias ADD = TextureEnvMode(0x0104)
    alias BLEND = TextureEnvMode(0x0BE2)
    alias REPLACE = TextureEnvMode(0x1E01)
    alias MODULATE = TextureEnvMode(0x2100)
    alias DECAL = TextureEnvMode(0x2101)
    alias REPLACE_EXT = TextureEnvMode(0x8062)
    alias TEXTURE_ENV_BIAS_SGIX = TextureEnvMode(0x80BE)
    alias COMBINE = TextureEnvMode(0x8570)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureEnvParameter(Intable):
    var value: GLenum

    alias ALPHA_SCALE = TextureEnvParameter(0x0D1C)
    alias TEXTURE_ENV_MODE = TextureEnvParameter(0x2200)
    alias TEXTURE_ENV_COLOR = TextureEnvParameter(0x2201)
    alias TEXTURE_LOD_BIAS = TextureEnvParameter(0x8501)
    alias COMBINE = TextureEnvParameter(0x8570)
    alias COMBINE_ARB = TextureEnvParameter(0x8570)
    alias COMBINE_EXT = TextureEnvParameter(0x8570)
    alias COMBINE_RGB = TextureEnvParameter(0x8571)
    alias COMBINE_RGB_ARB = TextureEnvParameter(0x8571)
    alias COMBINE_RGB_EXT = TextureEnvParameter(0x8571)
    alias COMBINE_ALPHA = TextureEnvParameter(0x8572)
    alias COMBINE_ALPHA_ARB = TextureEnvParameter(0x8572)
    alias COMBINE_ALPHA_EXT = TextureEnvParameter(0x8572)
    alias RGB_SCALE = TextureEnvParameter(0x8573)
    alias RGB_SCALE_ARB = TextureEnvParameter(0x8573)
    alias RGB_SCALE_EXT = TextureEnvParameter(0x8573)
    alias ADD_SIGNED = TextureEnvParameter(0x8574)
    alias ADD_SIGNED_ARB = TextureEnvParameter(0x8574)
    alias ADD_SIGNED_EXT = TextureEnvParameter(0x8574)
    alias INTERPOLATE = TextureEnvParameter(0x8575)
    alias INTERPOLATE_ARB = TextureEnvParameter(0x8575)
    alias INTERPOLATE_EXT = TextureEnvParameter(0x8575)
    alias CONSTANT = TextureEnvParameter(0x8576)
    alias CONSTANT_ARB = TextureEnvParameter(0x8576)
    alias CONSTANT_EXT = TextureEnvParameter(0x8576)
    alias CONSTANT_NV = TextureEnvParameter(0x8576)
    alias PRIMARY_COLOR = TextureEnvParameter(0x8577)
    alias PRIMARY_COLOR_ARB = TextureEnvParameter(0x8577)
    alias PRIMARY_COLOR_EXT = TextureEnvParameter(0x8577)
    alias PREVIOUS = TextureEnvParameter(0x8578)
    alias PREVIOUS_ARB = TextureEnvParameter(0x8578)
    alias PREVIOUS_EXT = TextureEnvParameter(0x8578)
    alias SOURCE0_RGB = TextureEnvParameter(0x8580)
    alias SOURCE0_RGB_ARB = TextureEnvParameter(0x8580)
    alias SOURCE0_RGB_EXT = TextureEnvParameter(0x8580)
    alias SRC0_RGB = TextureEnvParameter(0x8580)
    alias SOURCE1_RGB = TextureEnvParameter(0x8581)
    alias SOURCE1_RGB_ARB = TextureEnvParameter(0x8581)
    alias SOURCE1_RGB_EXT = TextureEnvParameter(0x8581)
    alias SRC1_RGB = TextureEnvParameter(0x8581)
    alias SOURCE2_RGB = TextureEnvParameter(0x8582)
    alias SOURCE2_RGB_ARB = TextureEnvParameter(0x8582)
    alias SOURCE2_RGB_EXT = TextureEnvParameter(0x8582)
    alias SRC2_RGB = TextureEnvParameter(0x8582)
    alias SOURCE3_RGB_NV = TextureEnvParameter(0x8583)
    alias SOURCE0_ALPHA = TextureEnvParameter(0x8588)
    alias SOURCE0_ALPHA_ARB = TextureEnvParameter(0x8588)
    alias SOURCE0_ALPHA_EXT = TextureEnvParameter(0x8588)
    alias SRC0_ALPHA = TextureEnvParameter(0x8588)
    alias SOURCE1_ALPHA = TextureEnvParameter(0x8589)
    alias SOURCE1_ALPHA_ARB = TextureEnvParameter(0x8589)
    alias SOURCE1_ALPHA_EXT = TextureEnvParameter(0x8589)
    alias SRC1_ALPHA = TextureEnvParameter(0x8589)
    alias SRC1_ALPHA_EXT = TextureEnvParameter(0x8589)
    alias SOURCE2_ALPHA = TextureEnvParameter(0x858A)
    alias SOURCE2_ALPHA_ARB = TextureEnvParameter(0x858A)
    alias SOURCE2_ALPHA_EXT = TextureEnvParameter(0x858A)
    alias SRC2_ALPHA = TextureEnvParameter(0x858A)
    alias SOURCE3_ALPHA_NV = TextureEnvParameter(0x858B)
    alias OPERAND0_RGB = TextureEnvParameter(0x8590)
    alias OPERAND0_RGB_ARB = TextureEnvParameter(0x8590)
    alias OPERAND0_RGB_EXT = TextureEnvParameter(0x8590)
    alias OPERAND1_RGB = TextureEnvParameter(0x8591)
    alias OPERAND1_RGB_ARB = TextureEnvParameter(0x8591)
    alias OPERAND1_RGB_EXT = TextureEnvParameter(0x8591)
    alias OPERAND2_RGB = TextureEnvParameter(0x8592)
    alias OPERAND2_RGB_ARB = TextureEnvParameter(0x8592)
    alias OPERAND2_RGB_EXT = TextureEnvParameter(0x8592)
    alias OPERAND3_RGB_NV = TextureEnvParameter(0x8593)
    alias OPERAND0_ALPHA = TextureEnvParameter(0x8598)
    alias OPERAND0_ALPHA_ARB = TextureEnvParameter(0x8598)
    alias OPERAND0_ALPHA_EXT = TextureEnvParameter(0x8598)
    alias OPERAND1_ALPHA = TextureEnvParameter(0x8599)
    alias OPERAND1_ALPHA_ARB = TextureEnvParameter(0x8599)
    alias OPERAND1_ALPHA_EXT = TextureEnvParameter(0x8599)
    alias OPERAND2_ALPHA = TextureEnvParameter(0x859A)
    alias OPERAND2_ALPHA_ARB = TextureEnvParameter(0x859A)
    alias OPERAND2_ALPHA_EXT = TextureEnvParameter(0x859A)
    alias OPERAND3_ALPHA_NV = TextureEnvParameter(0x859B)
    alias COORD_REPLACE = TextureEnvParameter(0x8862)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureMagFilter(Intable):
    var value: GLenum

    alias NEAREST = TextureMagFilter(0x2600)
    alias LINEAR = TextureMagFilter(0x2601)
    alias LINEAR_DETAIL_SGIS = TextureMagFilter(0x8097)
    alias LINEAR_DETAIL_ALPHA_SGIS = TextureMagFilter(0x8098)
    alias LINEAR_DETAIL_COLOR_SGIS = TextureMagFilter(0x8099)
    alias LINEAR_SHARPEN_SGIS = TextureMagFilter(0x80AD)
    alias LINEAR_SHARPEN_ALPHA_SGIS = TextureMagFilter(0x80AE)
    alias LINEAR_SHARPEN_COLOR_SGIS = TextureMagFilter(0x80AF)
    alias FILTER4_SGIS = TextureMagFilter(0x8146)
    alias PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMagFilter(0x8184)
    alias PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMagFilter(0x8185)
    alias PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMagFilter(0x8186)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureMinFilter(Intable):
    var value: GLenum

    alias NEAREST = TextureMinFilter(0x2600)
    alias LINEAR = TextureMinFilter(0x2601)
    alias NEAREST_MIPMAP_NEAREST = TextureMinFilter(0x2700)
    alias LINEAR_MIPMAP_NEAREST = TextureMinFilter(0x2701)
    alias NEAREST_MIPMAP_LINEAR = TextureMinFilter(0x2702)
    alias LINEAR_MIPMAP_LINEAR = TextureMinFilter(0x2703)
    alias FILTER4_SGIS = TextureMinFilter(0x8146)
    alias LINEAR_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x8170)
    alias PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMinFilter(0x8184)
    alias PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMinFilter(0x8185)
    alias PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMinFilter(0x8186)
    alias NEAREST_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844D)
    alias NEAREST_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x844E)
    alias LINEAR_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureParameterName(Intable):
    var value: GLenum

    alias TEXTURE_WIDTH = TextureParameterName(0x1000)
    alias TEXTURE_HEIGHT = TextureParameterName(0x1001)
    alias TEXTURE_INTERNAL_FORMAT = TextureParameterName(0x1003)
    alias TEXTURE_COMPONENTS = TextureParameterName(0x1003)
    alias TEXTURE_BORDER_COLOR = TextureParameterName(0x1004)
    alias TEXTURE_BORDER_COLOR_NV = TextureParameterName(0x1004)
    alias TEXTURE_BORDER = TextureParameterName(0x1005)
    alias TEXTURE_MAG_FILTER = TextureParameterName(0x2800)
    alias TEXTURE_MIN_FILTER = TextureParameterName(0x2801)
    alias TEXTURE_WRAP_S = TextureParameterName(0x2802)
    alias TEXTURE_WRAP_T = TextureParameterName(0x2803)
    alias TEXTURE_RED_SIZE = TextureParameterName(0x805C)
    alias TEXTURE_GREEN_SIZE = TextureParameterName(0x805D)
    alias TEXTURE_BLUE_SIZE = TextureParameterName(0x805E)
    alias TEXTURE_ALPHA_SIZE = TextureParameterName(0x805F)
    alias TEXTURE_LUMINANCE_SIZE = TextureParameterName(0x8060)
    alias TEXTURE_INTENSITY_SIZE = TextureParameterName(0x8061)
    alias TEXTURE_PRIORITY = TextureParameterName(0x8066)
    alias TEXTURE_PRIORITY_EXT = TextureParameterName(0x8066)
    alias TEXTURE_RESIDENT = TextureParameterName(0x8067)
    alias TEXTURE_DEPTH_EXT = TextureParameterName(0x8071)
    alias TEXTURE_WRAP_R = TextureParameterName(0x8072)
    alias TEXTURE_WRAP_R_EXT = TextureParameterName(0x8072)
    alias TEXTURE_WRAP_R_OES = TextureParameterName(0x8072)
    alias DETAIL_TEXTURE_LEVEL_SGIS = TextureParameterName(0x809A)
    alias DETAIL_TEXTURE_MODE_SGIS = TextureParameterName(0x809B)
    alias DETAIL_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x809C)
    alias SHARPEN_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x80B0)
    alias SHADOW_AMBIENT_SGIX = TextureParameterName(0x80BF)
    alias DUAL_TEXTURE_SELECT_SGIS = TextureParameterName(0x8124)
    alias QUAD_TEXTURE_SELECT_SGIS = TextureParameterName(0x8125)
    alias TEXTURE_4DSIZE_SGIS = TextureParameterName(0x8136)
    alias TEXTURE_WRAP_Q_SGIS = TextureParameterName(0x8137)
    alias TEXTURE_MIN_LOD = TextureParameterName(0x813A)
    alias TEXTURE_MIN_LOD_SGIS = TextureParameterName(0x813A)
    alias TEXTURE_MAX_LOD = TextureParameterName(0x813B)
    alias TEXTURE_MAX_LOD_SGIS = TextureParameterName(0x813B)
    alias TEXTURE_BASE_LEVEL = TextureParameterName(0x813C)
    alias TEXTURE_BASE_LEVEL_SGIS = TextureParameterName(0x813C)
    alias TEXTURE_MAX_LEVEL = TextureParameterName(0x813D)
    alias TEXTURE_MAX_LEVEL_SGIS = TextureParameterName(0x813D)
    alias TEXTURE_FILTER4_SIZE_SGIS = TextureParameterName(0x8147)
    alias TEXTURE_CLIPMAP_CENTER_SGIX = TextureParameterName(0x8171)
    alias TEXTURE_CLIPMAP_FRAME_SGIX = TextureParameterName(0x8172)
    alias TEXTURE_CLIPMAP_OFFSET_SGIX = TextureParameterName(0x8173)
    alias TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = TextureParameterName(0x8174)
    alias TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = TextureParameterName(0x8175)
    alias TEXTURE_CLIPMAP_DEPTH_SGIX = TextureParameterName(0x8176)
    alias POST_TEXTURE_FILTER_BIAS_SGIX = TextureParameterName(0x8179)
    alias POST_TEXTURE_FILTER_SCALE_SGIX = TextureParameterName(0x817A)
    alias TEXTURE_LOD_BIAS_S_SGIX = TextureParameterName(0x818E)
    alias TEXTURE_LOD_BIAS_T_SGIX = TextureParameterName(0x818F)
    alias TEXTURE_LOD_BIAS_R_SGIX = TextureParameterName(0x8190)
    alias GENERATE_MIPMAP = TextureParameterName(0x8191)
    alias GENERATE_MIPMAP_SGIS = TextureParameterName(0x8191)
    alias TEXTURE_COMPARE_SGIX = TextureParameterName(0x819A)
    alias TEXTURE_COMPARE_OPERATOR_SGIX = TextureParameterName(0x819B)
    alias TEXTURE_LEQUAL_R_SGIX = TextureParameterName(0x819C)
    alias TEXTURE_GEQUAL_R_SGIX = TextureParameterName(0x819D)
    alias TEXTURE_MAX_CLAMP_S_SGIX = TextureParameterName(0x8369)
    alias TEXTURE_MAX_CLAMP_T_SGIX = TextureParameterName(0x836A)
    alias TEXTURE_MAX_CLAMP_R_SGIX = TextureParameterName(0x836B)
    alias TEXTURE_MEMORY_LAYOUT_INTEL = TextureParameterName(0x83FF)
    alias TEXTURE_MAX_ANISOTROPY = TextureParameterName(0x84FE)
    alias TEXTURE_LOD_BIAS = TextureParameterName(0x8501)
    alias TEXTURE_COMPARE_MODE = TextureParameterName(0x884C)
    alias TEXTURE_COMPARE_FUNC = TextureParameterName(0x884D)
    alias TEXTURE_SWIZZLE_R = TextureParameterName(0x8E42)
    alias TEXTURE_SWIZZLE_G = TextureParameterName(0x8E43)
    alias TEXTURE_SWIZZLE_B = TextureParameterName(0x8E44)
    alias TEXTURE_SWIZZLE_A = TextureParameterName(0x8E45)
    alias TEXTURE_SWIZZLE_RGBA = TextureParameterName(0x8E46)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = TextureParameterName(0x8F6A)
    alias DEPTH_STENCIL_TEXTURE_MODE = TextureParameterName(0x90EA)
    alias TEXTURE_TILING_EXT = TextureParameterName(0x9580)
    alias TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM = TextureParameterName(0x96A0)
    alias TEXTURE_Y_DEGAMMA_QCOM = TextureParameterName(0x9710)
    alias TEXTURE_CBCR_DEGAMMA_QCOM = TextureParameterName(0x9711)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureSwizzle(Intable):
    var value: GLenum

    alias ZERO = TextureSwizzle(0)
    alias ONE = TextureSwizzle(1)
    alias RED = TextureSwizzle(0x1903)
    alias GREEN = TextureSwizzle(0x1904)
    alias BLUE = TextureSwizzle(0x1905)
    alias ALPHA = TextureSwizzle(0x1906)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureTarget(Intable):
    var value: GLenum

    alias TEXTURE_1D = TextureTarget(0x0DE0)
    alias TEXTURE_2D = TextureTarget(0x0DE1)
    alias PROXY_TEXTURE_1D = TextureTarget(0x8063)
    alias PROXY_TEXTURE_1D_EXT = TextureTarget(0x8063)
    alias PROXY_TEXTURE_2D = TextureTarget(0x8064)
    alias PROXY_TEXTURE_2D_EXT = TextureTarget(0x8064)
    alias TEXTURE_3D = TextureTarget(0x806F)
    alias TEXTURE_3D_EXT = TextureTarget(0x806F)
    alias TEXTURE_3D_OES = TextureTarget(0x806F)
    alias PROXY_TEXTURE_3D = TextureTarget(0x8070)
    alias PROXY_TEXTURE_3D_EXT = TextureTarget(0x8070)
    alias DETAIL_TEXTURE_2D_SGIS = TextureTarget(0x8095)
    alias TEXTURE_4D_SGIS = TextureTarget(0x8134)
    alias PROXY_TEXTURE_4D_SGIS = TextureTarget(0x8135)
    alias TEXTURE_RECTANGLE = TextureTarget(0x84F5)
    alias TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F5)
    alias TEXTURE_RECTANGLE_NV = TextureTarget(0x84F5)
    alias PROXY_TEXTURE_RECTANGLE = TextureTarget(0x84F7)
    alias PROXY_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F7)
    alias PROXY_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F7)
    alias TEXTURE_CUBE_MAP = TextureTarget(0x8513)
    alias TEXTURE_CUBE_MAP_ARB = TextureTarget(0x8513)
    alias TEXTURE_CUBE_MAP_EXT = TextureTarget(0x8513)
    alias TEXTURE_CUBE_MAP_OES = TextureTarget(0x8513)
    alias TEXTURE_CUBE_MAP_POSITIVE_X = TextureTarget(0x8515)
    alias TEXTURE_CUBE_MAP_POSITIVE_X_ARB = TextureTarget(0x8515)
    alias TEXTURE_CUBE_MAP_POSITIVE_X_EXT = TextureTarget(0x8515)
    alias TEXTURE_CUBE_MAP_POSITIVE_X_OES = TextureTarget(0x8515)
    alias TEXTURE_CUBE_MAP_NEGATIVE_X = TextureTarget(0x8516)
    alias TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = TextureTarget(0x8516)
    alias TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = TextureTarget(0x8516)
    alias TEXTURE_CUBE_MAP_NEGATIVE_X_OES = TextureTarget(0x8516)
    alias TEXTURE_CUBE_MAP_POSITIVE_Y = TextureTarget(0x8517)
    alias TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = TextureTarget(0x8517)
    alias TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = TextureTarget(0x8517)
    alias TEXTURE_CUBE_MAP_POSITIVE_Y_OES = TextureTarget(0x8517)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Y = TextureTarget(0x8518)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = TextureTarget(0x8518)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = TextureTarget(0x8518)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Y_OES = TextureTarget(0x8518)
    alias TEXTURE_CUBE_MAP_POSITIVE_Z = TextureTarget(0x8519)
    alias TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = TextureTarget(0x8519)
    alias TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = TextureTarget(0x8519)
    alias TEXTURE_CUBE_MAP_POSITIVE_Z_OES = TextureTarget(0x8519)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Z = TextureTarget(0x851A)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = TextureTarget(0x851A)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = TextureTarget(0x851A)
    alias TEXTURE_CUBE_MAP_NEGATIVE_Z_OES = TextureTarget(0x851A)
    alias PROXY_TEXTURE_CUBE_MAP = TextureTarget(0x851B)
    alias PROXY_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x851B)
    alias PROXY_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x851B)
    alias TEXTURE_1D_ARRAY = TextureTarget(0x8C18)
    alias PROXY_TEXTURE_1D_ARRAY = TextureTarget(0x8C19)
    alias PROXY_TEXTURE_1D_ARRAY_EXT = TextureTarget(0x8C19)
    alias TEXTURE_2D_ARRAY = TextureTarget(0x8C1A)
    alias PROXY_TEXTURE_2D_ARRAY = TextureTarget(0x8C1B)
    alias PROXY_TEXTURE_2D_ARRAY_EXT = TextureTarget(0x8C1B)
    alias TEXTURE_BUFFER = TextureTarget(0x8C2A)
    alias RENDERBUFFER = TextureTarget(0x8D41)
    alias TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x9009)
    alias TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x9009)
    alias TEXTURE_CUBE_MAP_ARRAY_EXT = TextureTarget(0x9009)
    alias TEXTURE_CUBE_MAP_ARRAY_OES = TextureTarget(0x9009)
    alias PROXY_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x900B)
    alias PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x900B)
    alias TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9100)
    alias PROXY_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9101)
    alias TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9102)
    alias PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9103)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureUnit(Intable):
    var value: GLenum

    alias TEXTURE0 = TextureUnit(0x84C0)
    alias TEXTURE1 = TextureUnit(0x84C1)
    alias TEXTURE2 = TextureUnit(0x84C2)
    alias TEXTURE3 = TextureUnit(0x84C3)
    alias TEXTURE4 = TextureUnit(0x84C4)
    alias TEXTURE5 = TextureUnit(0x84C5)
    alias TEXTURE6 = TextureUnit(0x84C6)
    alias TEXTURE7 = TextureUnit(0x84C7)
    alias TEXTURE8 = TextureUnit(0x84C8)
    alias TEXTURE9 = TextureUnit(0x84C9)
    alias TEXTURE10 = TextureUnit(0x84CA)
    alias TEXTURE11 = TextureUnit(0x84CB)
    alias TEXTURE12 = TextureUnit(0x84CC)
    alias TEXTURE13 = TextureUnit(0x84CD)
    alias TEXTURE14 = TextureUnit(0x84CE)
    alias TEXTURE15 = TextureUnit(0x84CF)
    alias TEXTURE16 = TextureUnit(0x84D0)
    alias TEXTURE17 = TextureUnit(0x84D1)
    alias TEXTURE18 = TextureUnit(0x84D2)
    alias TEXTURE19 = TextureUnit(0x84D3)
    alias TEXTURE20 = TextureUnit(0x84D4)
    alias TEXTURE21 = TextureUnit(0x84D5)
    alias TEXTURE22 = TextureUnit(0x84D6)
    alias TEXTURE23 = TextureUnit(0x84D7)
    alias TEXTURE24 = TextureUnit(0x84D8)
    alias TEXTURE25 = TextureUnit(0x84D9)
    alias TEXTURE26 = TextureUnit(0x84DA)
    alias TEXTURE27 = TextureUnit(0x84DB)
    alias TEXTURE28 = TextureUnit(0x84DC)
    alias TEXTURE29 = TextureUnit(0x84DD)
    alias TEXTURE30 = TextureUnit(0x84DE)
    alias TEXTURE31 = TextureUnit(0x84DF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureWrapMode(Intable):
    var value: GLenum

    alias CLAMP = TextureWrapMode(0x2900)
    alias REPEAT = TextureWrapMode(0x2901)
    alias CLAMP_TO_BORDER = TextureWrapMode(0x812D)
    alias CLAMP_TO_BORDER_ARB = TextureWrapMode(0x812D)
    alias CLAMP_TO_BORDER_EXT = TextureWrapMode(0x812D)
    alias CLAMP_TO_BORDER_NV = TextureWrapMode(0x812D)
    alias CLAMP_TO_BORDER_SGIS = TextureWrapMode(0x812D)
    alias CLAMP_TO_BORDER_OES = TextureWrapMode(0x812D)
    alias CLAMP_TO_EDGE = TextureWrapMode(0x812F)
    alias CLAMP_TO_EDGE_SGIS = TextureWrapMode(0x812F)
    alias MIRRORED_REPEAT = TextureWrapMode(0x8370)
    alias MIRRORED_REPEAT_ARB = TextureWrapMode(0x8370)
    alias MIRRORED_REPEAT_IBM = TextureWrapMode(0x8370)
    alias MIRRORED_REPEAT_OES = TextureWrapMode(0x8370)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackBufferMode(Intable):
    var value: GLenum

    alias INTERLEAVED_ATTRIBS = TransformFeedbackBufferMode(0x8C8C)
    alias SEPARATE_ATTRIBS = TransformFeedbackBufferMode(0x8C8D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackPName(Intable):
    var value: GLenum

    alias TRANSFORM_FEEDBACK_BUFFER_START = TransformFeedbackPName(0x8C84)
    alias TRANSFORM_FEEDBACK_BUFFER_SIZE = TransformFeedbackPName(0x8C85)
    alias TRANSFORM_FEEDBACK_BUFFER_BINDING = TransformFeedbackPName(0x8C8F)
    alias TRANSFORM_FEEDBACK_PAUSED = TransformFeedbackPName(0x8E23)
    alias TRANSFORM_FEEDBACK_ACTIVE = TransformFeedbackPName(0x8E24)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TriangleFace(Intable):
    var value: GLenum

    alias FRONT = TriangleFace(0x0404)
    alias BACK = TriangleFace(0x0405)
    alias FRONT_AND_BACK = TriangleFace(0x0408)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformBlockPName(Intable):
    var value: GLenum

    alias UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = UniformBlockPName(0x84F0)
    alias UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = UniformBlockPName(0x84F1)
    alias UNIFORM_BLOCK_BINDING = UniformBlockPName(0x8A3F)
    alias UNIFORM_BLOCK_DATA_SIZE = UniformBlockPName(0x8A40)
    alias UNIFORM_BLOCK_NAME_LENGTH = UniformBlockPName(0x8A41)
    alias UNIFORM_BLOCK_ACTIVE_UNIFORMS = UniformBlockPName(0x8A42)
    alias UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = UniformBlockPName(0x8A43)
    alias UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = UniformBlockPName(0x8A44)
    alias UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = UniformBlockPName(0x8A45)
    alias UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = UniformBlockPName(0x8A46)
    alias UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = UniformBlockPName(0x90EC)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformPName(Intable):
    var value: GLenum

    alias UNIFORM_TYPE = UniformPName(0x8A37)
    alias UNIFORM_SIZE = UniformPName(0x8A38)
    alias UNIFORM_NAME_LENGTH = UniformPName(0x8A39)
    alias UNIFORM_BLOCK_INDEX = UniformPName(0x8A3A)
    alias UNIFORM_OFFSET = UniformPName(0x8A3B)
    alias UNIFORM_ARRAY_STRIDE = UniformPName(0x8A3C)
    alias UNIFORM_MATRIX_STRIDE = UniformPName(0x8A3D)
    alias UNIFORM_IS_ROW_MAJOR = UniformPName(0x8A3E)
    alias UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = UniformPName(0x92DA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformType(Intable):
    var value: GLenum

    alias INT = UniformType(0x1404)
    alias UNSIGNED_INT = UniformType(0x1405)
    alias FLOAT = UniformType(0x1406)
    alias DOUBLE = UniformType(0x140A)
    alias FLOAT_VEC2 = UniformType(0x8B50)
    alias FLOAT_VEC3 = UniformType(0x8B51)
    alias FLOAT_VEC4 = UniformType(0x8B52)
    alias INT_VEC2 = UniformType(0x8B53)
    alias INT_VEC3 = UniformType(0x8B54)
    alias INT_VEC4 = UniformType(0x8B55)
    alias BOOL = UniformType(0x8B56)
    alias BOOL_VEC2 = UniformType(0x8B57)
    alias BOOL_VEC3 = UniformType(0x8B58)
    alias BOOL_VEC4 = UniformType(0x8B59)
    alias FLOAT_MAT2 = UniformType(0x8B5A)
    alias FLOAT_MAT3 = UniformType(0x8B5B)
    alias FLOAT_MAT4 = UniformType(0x8B5C)
    alias SAMPLER_1D = UniformType(0x8B5D)
    alias SAMPLER_2D = UniformType(0x8B5E)
    alias SAMPLER_3D = UniformType(0x8B5F)
    alias SAMPLER_CUBE = UniformType(0x8B60)
    alias SAMPLER_1D_SHADOW = UniformType(0x8B61)
    alias SAMPLER_2D_SHADOW = UniformType(0x8B62)
    alias SAMPLER_2D_RECT = UniformType(0x8B63)
    alias SAMPLER_2D_RECT_SHADOW = UniformType(0x8B64)
    alias FLOAT_MAT2x3 = UniformType(0x8B65)
    alias FLOAT_MAT2x4 = UniformType(0x8B66)
    alias FLOAT_MAT3x2 = UniformType(0x8B67)
    alias FLOAT_MAT3x4 = UniformType(0x8B68)
    alias FLOAT_MAT4x2 = UniformType(0x8B69)
    alias FLOAT_MAT4x3 = UniformType(0x8B6A)
    alias SAMPLER_1D_ARRAY = UniformType(0x8DC0)
    alias SAMPLER_2D_ARRAY = UniformType(0x8DC1)
    alias SAMPLER_BUFFER = UniformType(0x8DC2)
    alias SAMPLER_1D_ARRAY_SHADOW = UniformType(0x8DC3)
    alias SAMPLER_2D_ARRAY_SHADOW = UniformType(0x8DC4)
    alias SAMPLER_CUBE_SHADOW = UniformType(0x8DC5)
    alias UNSIGNED_INT_VEC2 = UniformType(0x8DC6)
    alias UNSIGNED_INT_VEC3 = UniformType(0x8DC7)
    alias UNSIGNED_INT_VEC4 = UniformType(0x8DC8)
    alias INT_SAMPLER_1D = UniformType(0x8DC9)
    alias INT_SAMPLER_2D = UniformType(0x8DCA)
    alias INT_SAMPLER_3D = UniformType(0x8DCB)
    alias INT_SAMPLER_CUBE = UniformType(0x8DCC)
    alias INT_SAMPLER_2D_RECT = UniformType(0x8DCD)
    alias INT_SAMPLER_1D_ARRAY = UniformType(0x8DCE)
    alias INT_SAMPLER_2D_ARRAY = UniformType(0x8DCF)
    alias INT_SAMPLER_BUFFER = UniformType(0x8DD0)
    alias UNSIGNED_INT_SAMPLER_1D = UniformType(0x8DD1)
    alias UNSIGNED_INT_SAMPLER_2D = UniformType(0x8DD2)
    alias UNSIGNED_INT_SAMPLER_3D = UniformType(0x8DD3)
    alias UNSIGNED_INT_SAMPLER_CUBE = UniformType(0x8DD4)
    alias UNSIGNED_INT_SAMPLER_2D_RECT = UniformType(0x8DD5)
    alias UNSIGNED_INT_SAMPLER_1D_ARRAY = UniformType(0x8DD6)
    alias UNSIGNED_INT_SAMPLER_2D_ARRAY = UniformType(0x8DD7)
    alias UNSIGNED_INT_SAMPLER_BUFFER = UniformType(0x8DD8)
    alias DOUBLE_MAT2 = UniformType(0x8F46)
    alias DOUBLE_MAT3 = UniformType(0x8F47)
    alias DOUBLE_MAT4 = UniformType(0x8F48)
    alias DOUBLE_MAT2x3 = UniformType(0x8F49)
    alias DOUBLE_MAT2x4 = UniformType(0x8F4A)
    alias DOUBLE_MAT3x2 = UniformType(0x8F4B)
    alias DOUBLE_MAT3x4 = UniformType(0x8F4C)
    alias DOUBLE_MAT4x2 = UniformType(0x8F4D)
    alias DOUBLE_MAT4x3 = UniformType(0x8F4E)
    alias DOUBLE_VEC2 = UniformType(0x8FFC)
    alias DOUBLE_VEC3 = UniformType(0x8FFD)
    alias DOUBLE_VEC4 = UniformType(0x8FFE)
    alias SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900C)
    alias SAMPLER_CUBE_MAP_ARRAY_SHADOW = UniformType(0x900D)
    alias INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900E)
    alias UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900F)
    alias SAMPLER_2D_MULTISAMPLE = UniformType(0x9108)
    alias INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x9109)
    alias UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x910A)
    alias SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910B)
    alias INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910C)
    alias UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UseProgramStageMask(Intable):
    var value: GLbitfield

    alias VERTEX_SHADER_BIT = UseProgramStageMask(0x00000001)
    alias VERTEX_SHADER_BIT_EXT = UseProgramStageMask(0x00000001)
    alias FRAGMENT_SHADER_BIT = UseProgramStageMask(0x00000002)
    alias FRAGMENT_SHADER_BIT_EXT = UseProgramStageMask(0x00000002)
    alias GEOMETRY_SHADER_BIT = UseProgramStageMask(0x00000004)
    alias GEOMETRY_SHADER_BIT_EXT = UseProgramStageMask(0x00000004)
    alias GEOMETRY_SHADER_BIT_OES = UseProgramStageMask(0x00000004)
    alias TESS_CONTROL_SHADER_BIT = UseProgramStageMask(0x00000008)
    alias TESS_CONTROL_SHADER_BIT_EXT = UseProgramStageMask(0x00000008)
    alias TESS_CONTROL_SHADER_BIT_OES = UseProgramStageMask(0x00000008)
    alias TESS_EVALUATION_SHADER_BIT = UseProgramStageMask(0x00000010)
    alias TESS_EVALUATION_SHADER_BIT_EXT = UseProgramStageMask(0x00000010)
    alias TESS_EVALUATION_SHADER_BIT_OES = UseProgramStageMask(0x00000010)
    alias COMPUTE_SHADER_BIT = UseProgramStageMask(0x00000020)
    alias MESH_SHADER_BIT_NV = UseProgramStageMask(0x00000040)
    alias TASK_SHADER_BIT_NV = UseProgramStageMask(0x00000080)
    alias ALL_SHADER_BITS = UseProgramStageMask(0xFFFFFFFF)
    alias ALL_SHADER_BITS_EXT = UseProgramStageMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct VertexArrayPName(Intable):
    var value: GLenum

    alias VERTEX_ATTRIB_RELATIVE_OFFSET = VertexArrayPName(0x82D5)
    alias VERTEX_ATTRIB_ARRAY_ENABLED = VertexArrayPName(0x8622)
    alias VERTEX_ATTRIB_ARRAY_SIZE = VertexArrayPName(0x8623)
    alias VERTEX_ATTRIB_ARRAY_STRIDE = VertexArrayPName(0x8624)
    alias VERTEX_ATTRIB_ARRAY_TYPE = VertexArrayPName(0x8625)
    alias VERTEX_ATTRIB_ARRAY_LONG = VertexArrayPName(0x874E)
    alias VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexArrayPName(0x886A)
    alias VERTEX_ATTRIB_ARRAY_INTEGER = VertexArrayPName(0x88FD)
    alias VERTEX_ATTRIB_ARRAY_DIVISOR = VertexArrayPName(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribEnum(Intable):
    var value: GLenum

    alias VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribEnum(0x8622)
    alias VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribEnum(0x8623)
    alias VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribEnum(0x8624)
    alias VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribEnum(0x8625)
    alias CURRENT_VERTEX_ATTRIB = VertexAttribEnum(0x8626)
    alias VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribEnum(0x886A)
    alias VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribEnum(0x889F)
    alias VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribEnum(0x88FD)
    alias VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribEnum(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribIType(Intable):
    var value: GLenum

    alias BYTE = VertexAttribIType(0x1400)
    alias UNSIGNED_BYTE = VertexAttribIType(0x1401)
    alias SHORT = VertexAttribIType(0x1402)
    alias UNSIGNED_SHORT = VertexAttribIType(0x1403)
    alias INT = VertexAttribIType(0x1404)
    alias UNSIGNED_INT = VertexAttribIType(0x1405)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribLType(Intable):
    var value: GLenum

    alias DOUBLE = VertexAttribLType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerPropertyARB(Intable):
    var value: GLenum

    alias VERTEX_ATTRIB_ARRAY_POINTER = VertexAttribPointerPropertyARB(0x8645)
    alias VERTEX_ATTRIB_ARRAY_POINTER_ARB = VertexAttribPointerPropertyARB(0x8645)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerType(Intable):
    var value: GLenum

    alias BYTE = VertexAttribPointerType(0x1400)
    alias UNSIGNED_BYTE = VertexAttribPointerType(0x1401)
    alias SHORT = VertexAttribPointerType(0x1402)
    alias UNSIGNED_SHORT = VertexAttribPointerType(0x1403)
    alias INT = VertexAttribPointerType(0x1404)
    alias UNSIGNED_INT = VertexAttribPointerType(0x1405)
    alias FLOAT = VertexAttribPointerType(0x1406)
    alias DOUBLE = VertexAttribPointerType(0x140A)
    alias HALF_FLOAT = VertexAttribPointerType(0x140B)
    alias FIXED = VertexAttribPointerType(0x140C)
    alias INT64_ARB = VertexAttribPointerType(0x140E)
    alias INT64_NV = VertexAttribPointerType(0x140E)
    alias UNSIGNED_INT64_ARB = VertexAttribPointerType(0x140F)
    alias UNSIGNED_INT64_NV = VertexAttribPointerType(0x140F)
    alias UNSIGNED_INT_2_10_10_10_REV = VertexAttribPointerType(0x8368)
    alias UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribPointerType(0x8368)
    alias UNSIGNED_INT_10F_11F_11F_REV = VertexAttribPointerType(0x8C3B)
    alias INT_2_10_10_10_REV = VertexAttribPointerType(0x8D9F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPropertyARB(Intable):
    var value: GLenum

    alias VERTEX_ATTRIB_BINDING = VertexAttribPropertyARB(0x82D4)
    alias VERTEX_ATTRIB_RELATIVE_OFFSET = VertexAttribPropertyARB(0x82D5)
    alias VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribPropertyARB(0x8622)
    alias VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribPropertyARB(0x8623)
    alias VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribPropertyARB(0x8624)
    alias VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribPropertyARB(0x8625)
    alias CURRENT_VERTEX_ATTRIB = VertexAttribPropertyARB(0x8626)
    alias VERTEX_ATTRIB_ARRAY_LONG = VertexAttribPropertyARB(0x874E)
    alias VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribPropertyARB(0x886A)
    alias VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribPropertyARB(0x889F)
    alias VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribPropertyARB(0x88FD)
    alias VERTEX_ATTRIB_ARRAY_INTEGER_EXT = VertexAttribPropertyARB(0x88FD)
    alias VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribPropertyARB(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribType(Intable):
    var value: GLenum

    alias BYTE = VertexAttribType(0x1400)
    alias UNSIGNED_BYTE = VertexAttribType(0x1401)
    alias SHORT = VertexAttribType(0x1402)
    alias UNSIGNED_SHORT = VertexAttribType(0x1403)
    alias INT = VertexAttribType(0x1404)
    alias UNSIGNED_INT = VertexAttribType(0x1405)
    alias FLOAT = VertexAttribType(0x1406)
    alias DOUBLE = VertexAttribType(0x140A)
    alias HALF_FLOAT = VertexAttribType(0x140B)
    alias FIXED = VertexAttribType(0x140C)
    alias UNSIGNED_INT_2_10_10_10_REV = VertexAttribType(0x8368)
    alias UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribType(0x8368)
    alias UNSIGNED_INT_10F_11F_11F_REV = VertexAttribType(0x8C3B)
    alias INT_2_10_10_10_REV = VertexAttribType(0x8D9F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexBufferObjectUsage(Intable):
    var value: GLenum

    alias STREAM_DRAW = VertexBufferObjectUsage(0x88E0)
    alias STREAM_READ = VertexBufferObjectUsage(0x88E1)
    alias STREAM_COPY = VertexBufferObjectUsage(0x88E2)
    alias STATIC_DRAW = VertexBufferObjectUsage(0x88E4)
    alias STATIC_READ = VertexBufferObjectUsage(0x88E5)
    alias STATIC_COPY = VertexBufferObjectUsage(0x88E6)
    alias DYNAMIC_DRAW = VertexBufferObjectUsage(0x88E8)
    alias DYNAMIC_READ = VertexBufferObjectUsage(0x88E9)
    alias DYNAMIC_COPY = VertexBufferObjectUsage(0x88EA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexPointerType(Intable):
    var value: GLenum

    alias SHORT = VertexPointerType(0x1402)
    alias INT = VertexPointerType(0x1404)
    alias FLOAT = VertexPointerType(0x1406)
    alias DOUBLE = VertexPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexProvokingMode(Intable):
    var value: GLenum

    alias FIRST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4D)
    alias LAST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


# ========= COMMANDS =========

alias LoadProc = fn (owned proc: String) -> fn () -> None


@always_inline
fn load_proc[result_type: AnyTrivialRegType](name: String, load: LoadProc) raises -> result_type:
    var ptr = Ptr(to=load(name))
    if not ptr:
        raise Error("Failed to load function " + name)
    return ptr.bitcast[result_type]()[]


fn init_fn_ptr[T: AnyTrivialRegType]() -> T:
    return Ptr(to=UnsafePointer[NoneType]()).bitcast[T]()[]


fn global_fn[name: String, T: AnyTrivialRegType]() -> _Global[name, T, init_fn_ptr[T]]:
    return _Global[name, T, init_fn_ptr[T]]()


alias fptr_glActiveShaderProgram = fn (pipeline: GLuint, program: GLuint)
alias fptr_glActiveTexture = fn (texture: TextureUnit)
alias fptr_glAttachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glBeginConditionalRender = fn (id: GLuint, mode: ConditionalRenderMode)
alias fptr_glBeginQuery = fn (target: QueryTarget, id: GLuint)
alias fptr_glBeginQueryIndexed = fn (target: QueryTarget, index: GLuint, id: GLuint)
alias fptr_glBeginTransformFeedback = fn (primitive_mode: PrimitiveType)
alias fptr_glBindAttribLocation = fn (program: GLuint, index: GLuint, name: Ptr[GLchar, mut=False])
alias fptr_glBindBuffer = fn (target: BufferTargetARB, buffer: GLuint)
alias fptr_glBindBufferBase = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint)
alias fptr_glBindBufferRange = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glBindBuffersBase = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False])
alias fptr_glBindBuffersRange = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], sizes: Ptr[GLsizeiptr, mut=False])
alias fptr_glBindFragDataLocation = fn (program: GLuint, color: GLuint, name: Ptr[GLchar, mut=False])
alias fptr_glBindFragDataLocationIndexed = fn (program: GLuint, color_number: GLuint, index: GLuint, name: Ptr[GLchar, mut=False])
alias fptr_glBindFramebuffer = fn (target: FramebufferTarget, framebuffer: GLuint)
alias fptr_glBindImageTexture = fn (unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat)
alias fptr_glBindImageTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=False])
alias fptr_glBindProgramPipeline = fn (pipeline: GLuint)
alias fptr_glBindRenderbuffer = fn (target: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glBindSampler = fn (unit: GLuint, sampler: GLuint)
alias fptr_glBindSamplers = fn (first: GLuint, count: GLsizei, samplers: Ptr[GLuint, mut=False])
alias fptr_glBindTexture = fn (target: TextureTarget, texture: GLuint)
alias fptr_glBindTextureUnit = fn (unit: GLuint, texture: GLuint)
alias fptr_glBindTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=False])
alias fptr_glBindTransformFeedback = fn (target: BindTransformFeedbackTarget, id: GLuint)
alias fptr_glBindVertexArray = fn (array: GLuint)
alias fptr_glBindVertexBuffer = fn (bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
alias fptr_glBindVertexBuffers = fn (first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], strides: Ptr[GLsizei, mut=False])
alias fptr_glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
alias fptr_glBlendEquation = fn (mode: BlendEquationModeEXT)
alias fptr_glBlendEquationSeparate = fn (mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
alias fptr_glBlendEquationSeparatei = fn (buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
alias fptr_glBlendEquationi = fn (buf: GLuint, mode: BlendEquationModeEXT)
alias fptr_glBlendFunc = fn (sfactor: BlendingFactor, dfactor: BlendingFactor)
alias fptr_glBlendFuncSeparate = fn (sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor)
alias fptr_glBlendFuncSeparatei = fn (buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor)
alias fptr_glBlendFunci = fn (buf: GLuint, src: BlendingFactor, dst: BlendingFactor)
alias fptr_glBlitFramebuffer = fn (src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glBlitNamedFramebuffer = fn (read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glBufferData = fn (target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, mut=False], usage: BufferUsageARB)
alias fptr_glBufferStorage = fn (target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, mut=False], flags: BufferStorageMask)
alias fptr_glBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=False])
alias fptr_glCheckFramebufferStatus = fn (target: FramebufferTarget) -> FramebufferStatus
alias fptr_glCheckNamedFramebufferStatus = fn (framebuffer: GLuint, target: FramebufferTarget) -> FramebufferStatus
alias fptr_glClampColor = fn (target: ClampColorTargetARB, clamp: ClampColorModeARB)
alias fptr_glClear = fn (mask: ClearBufferMask)
alias fptr_glClearBufferData = fn (target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClearBufferSubData = fn (target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClearBufferfi = fn (buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearBufferfv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=False])
alias fptr_glClearBufferiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=False])
alias fptr_glClearBufferuiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=False])
alias fptr_glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
alias fptr_glClearDepth = fn (depth: GLdouble)
alias fptr_glClearDepthf = fn (d: GLfloat)
alias fptr_glClearNamedBufferData = fn (buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClearNamedBufferSubData = fn (buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClearNamedFramebufferfi = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearNamedFramebufferfv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=False])
alias fptr_glClearNamedFramebufferiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=False])
alias fptr_glClearNamedFramebufferuiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=False])
alias fptr_glClearStencil = fn (s: GLint)
alias fptr_glClearTexImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClearTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False])
alias fptr_glClientWaitSync = fn (sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> SyncStatus
alias fptr_glClipControl = fn (origin: ClipControlOrigin, depth: ClipControlDepth)
alias fptr_glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean)
alias fptr_glColorMaski = fn (index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean)
alias fptr_glColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=False])
alias fptr_glColorP4ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP4uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=False])
alias fptr_glCompileShader = fn (shader: GLuint)
alias fptr_glCompressedTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCompressedTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False])
alias fptr_glCopyBufferSubData = fn (read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
alias fptr_glCopyImageSubData = fn (src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei)
alias fptr_glCopyNamedBufferSubData = fn (read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
alias fptr_glCopyTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint)
alias fptr_glCopyTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint)
alias fptr_glCopyTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCopyTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCopyTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCopyTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCreateBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glCreateFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=True])
alias fptr_glCreateProgram = fn () -> GLuint
alias fptr_glCreateProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=True])
alias fptr_glCreateQueries = fn (target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glCreateRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=True])
alias fptr_glCreateSamplers = fn (n: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glCreateShader = fn (type: ShaderType) -> GLuint
alias fptr_glCreateShaderProgramv = fn (type: ShaderType, count: GLsizei, strings: Ptr[Ptr[GLchar, mut=False], mut=False]) -> GLuint
alias fptr_glCreateTextures = fn (target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glCreateTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glCreateVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=True])
alias fptr_glCullFace = fn (mode: TriangleFace)
alias fptr_glDebugMessageCallback = fn (callback: GLDEBUGPROC, user_param: Ptr[NoneType, mut=False])
alias fptr_glDebugMessageControl = fn (source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, mut=False], enabled: GLboolean)
alias fptr_glDebugMessageInsert = fn (source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar, mut=False])
alias fptr_glDeleteBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=False])
alias fptr_glDeleteFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=False])
alias fptr_glDeleteProgram = fn (program: GLuint)
alias fptr_glDeleteProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=False])
alias fptr_glDeleteQueries = fn (n: GLsizei, ids: Ptr[GLuint, mut=False])
alias fptr_glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=False])
alias fptr_glDeleteSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, mut=False])
alias fptr_glDeleteShader = fn (shader: GLuint)
alias fptr_glDeleteSync = fn (sync: GLsync)
alias fptr_glDeleteTextures = fn (n: GLsizei, textures: Ptr[GLuint, mut=False])
alias fptr_glDeleteTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=False])
alias fptr_glDeleteVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=False])
alias fptr_glDepthFunc = fn (func: DepthFunction)
alias fptr_glDepthMask = fn (flag: GLboolean)
alias fptr_glDepthRange = fn (n: GLdouble, f: GLdouble)
alias fptr_glDepthRangeArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLdouble, mut=False])
alias fptr_glDepthRangeIndexed = fn (index: GLuint, n: GLdouble, f: GLdouble)
alias fptr_glDepthRangef = fn (n: GLfloat, f: GLfloat)
alias fptr_glDetachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glDisable = fn (cap: EnableCap)
alias fptr_glDisableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glDisableVertexAttribArray = fn (index: GLuint)
alias fptr_glDisablei = fn (target: EnableCap, index: GLuint)
alias fptr_glDispatchCompute = fn (num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint)
alias fptr_glDispatchComputeIndirect = fn (indirect: GLintptr)
alias fptr_glDrawArrays = fn (mode: PrimitiveType, first: GLint, count: GLsizei)
alias fptr_glDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=False])
alias fptr_glDrawArraysInstanced = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei)
alias fptr_glDrawArraysInstancedBaseInstance = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawBuffer = fn (buf: DrawBufferMode)
alias fptr_glDrawBuffers = fn (n: GLsizei, bufs: Ptr[DrawBufferMode, mut=False])
alias fptr_glDrawElements = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False])
alias fptr_glDrawElementsBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], basevertex: GLint)
alias fptr_glDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False])
alias fptr_glDrawElementsInstanced = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei)
alias fptr_glDrawElementsInstancedBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawElementsInstancedBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, basevertex: GLint)
alias fptr_glDrawElementsInstancedBaseVertexBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint)
alias fptr_glDrawRangeElements = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False])
alias fptr_glDrawRangeElementsBaseVertex = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], basevertex: GLint)
alias fptr_glDrawTransformFeedback = fn (mode: PrimitiveType, id: GLuint)
alias fptr_glDrawTransformFeedbackInstanced = fn (mode: PrimitiveType, id: GLuint, instancecount: GLsizei)
alias fptr_glDrawTransformFeedbackStream = fn (mode: PrimitiveType, id: GLuint, stream: GLuint)
alias fptr_glDrawTransformFeedbackStreamInstanced = fn (mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei)
alias fptr_glEnable = fn (cap: EnableCap)
alias fptr_glEnableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glEnableVertexAttribArray = fn (index: GLuint)
alias fptr_glEnablei = fn (target: EnableCap, index: GLuint)
alias fptr_glEndConditionalRender = fn ()
alias fptr_glEndQuery = fn (target: QueryTarget)
alias fptr_glEndQueryIndexed = fn (target: QueryTarget, index: GLuint)
alias fptr_glEndTransformFeedback = fn ()
alias fptr_glFenceSync = fn (condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync
alias fptr_glFinish = fn ()
alias fptr_glFlush = fn ()
alias fptr_glFlushMappedBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr)
alias fptr_glFlushMappedNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glFramebufferParameteri = fn (target: FramebufferTarget, pname: FramebufferParameterName, param: GLint)
alias fptr_glFramebufferRenderbuffer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glFramebufferTexture = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glFramebufferTexture1D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
alias fptr_glFramebufferTexture2D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
alias fptr_glFramebufferTexture3D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint)
alias fptr_glFramebufferTextureLayer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
alias fptr_glFrontFace = fn (mode: FrontFaceDirection)
alias fptr_glGenBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glGenFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=True])
alias fptr_glGenProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=True])
alias fptr_glGenQueries = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glGenRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=True])
alias fptr_glGenSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glGenTextures = fn (n: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glGenTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glGenVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=True])
alias fptr_glGenerateMipmap = fn (target: TextureTarget)
alias fptr_glGenerateTextureMipmap = fn (texture: GLuint)
alias fptr_glGetActiveAtomicCounterBufferiv = fn (program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, mut=True])
alias fptr_glGetActiveAttrib = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: Ptr[AttributeType, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveSubroutineName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveSubroutineUniformName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveSubroutineUniformiv = fn (program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, mut=True])
alias fptr_glGetActiveUniform = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: Ptr[UniformType, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniformBlockName = fn (program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_block_name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniformBlockiv = fn (program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, mut=True])
alias fptr_glGetActiveUniformName = fn (program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniformsiv = fn (program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, mut=False], pname: UniformPName, params: Ptr[GLint, mut=True])
alias fptr_glGetAttachedShaders = fn (program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, mut=True], shaders: Ptr[GLuint, mut=True])
alias fptr_glGetAttribLocation = fn (program: GLuint, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetBooleani_v = fn (target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, mut=True])
alias fptr_glGetBooleanv = fn (pname: GetPName, data: Ptr[GLboolean, mut=True])
alias fptr_glGetBufferParameteri64v = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, mut=True])
alias fptr_glGetBufferParameteriv = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, mut=True])
alias fptr_glGetBufferPointerv = fn (target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glGetCompressedTexImage = fn (target: TextureTarget, level: GLint, img: Ptr[NoneType, mut=True])
alias fptr_glGetCompressedTextureImage = fn (texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetCompressedTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetDebugMessageLog = fn (count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, mut=True], types: Ptr[DebugType, mut=True], ids: Ptr[GLuint, mut=True], severities: Ptr[DebugSeverity, mut=True], lengths: Ptr[GLsizei, mut=True], message_log: Ptr[GLchar, mut=True]) -> GLuint
alias fptr_glGetDoublei_v = fn (target: GetPName, index: GLuint, data: Ptr[GLdouble, mut=True])
alias fptr_glGetDoublev = fn (pname: GetPName, data: Ptr[GLdouble, mut=True])
alias fptr_glGetError = fn () -> ErrorCode
alias fptr_glGetFloati_v = fn (target: GetPName, index: GLuint, data: Ptr[GLfloat, mut=True])
alias fptr_glGetFloatv = fn (pname: GetPName, data: Ptr[GLfloat, mut=True])
alias fptr_glGetFragDataIndex = fn (program: GLuint, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetFragDataLocation = fn (program: GLuint, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetFramebufferAttachmentParameteriv = fn (target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetFramebufferParameteriv = fn (target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetGraphicsResetStatus = fn () -> GraphicsResetStatus
alias fptr_glGetInteger64i_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint64, mut=True])
alias fptr_glGetInteger64v = fn (pname: GetPName, data: Ptr[GLint64, mut=True])
alias fptr_glGetIntegeri_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint, mut=True])
alias fptr_glGetIntegerv = fn (pname: GetPName, data: Ptr[GLint, mut=True])
alias fptr_glGetInternalformati64v = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, mut=True])
alias fptr_glGetInternalformativ = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, mut=True])
alias fptr_glGetMultisamplefv = fn (pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, mut=True])
alias fptr_glGetNamedBufferParameteri64v = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, mut=True])
alias fptr_glGetNamedBufferParameteriv = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, mut=True])
alias fptr_glGetNamedBufferPointerv = fn (buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glGetNamedFramebufferAttachmentParameteriv = fn (framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetNamedFramebufferParameteriv = fn (framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, mut=True])
alias fptr_glGetNamedRenderbufferParameteriv = fn (renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True])
alias fptr_glGetObjectPtrLabel = fn (ptr: Ptr[NoneType, mut=False], buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True])
alias fptr_glGetProgramBinary = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], binary_format: Ptr[GLenum, mut=True], binary: Ptr[NoneType, mut=True])
alias fptr_glGetProgramInfoLog = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetProgramInterfaceiv = fn (program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, mut=True])
alias fptr_glGetProgramPipelineInfoLog = fn (pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetProgramPipelineiv = fn (pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetProgramResourceIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=False]) -> GLuint
alias fptr_glGetProgramResourceLocation = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetProgramResourceLocationIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetProgramResourceName = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetProgramResourceiv = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, mut=False], count: GLsizei, length: Ptr[GLsizei, mut=True], params: Ptr[GLint, mut=True])
alias fptr_glGetProgramStageiv = fn (program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, mut=True])
alias fptr_glGetProgramiv = fn (program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, mut=True])
alias fptr_glGetQueryBufferObjecti64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectui64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectuiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryIndexediv = fn (target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetQueryObjecti64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, mut=True])
alias fptr_glGetQueryObjectiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetQueryObjectui64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, mut=True])
alias fptr_glGetQueryObjectuiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, mut=True])
alias fptr_glGetQueryiv = fn (target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetRenderbufferParameteriv = fn (target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True])
alias fptr_glGetSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, mut=True])
alias fptr_glGetSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, mut=True])
alias fptr_glGetSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True])
alias fptr_glGetShaderInfoLog = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetShaderPrecisionFormat = fn (shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, mut=True], precision: Ptr[GLint, mut=True])
alias fptr_glGetShaderSource = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], source: Ptr[GLchar, mut=True])
alias fptr_glGetShaderiv = fn (shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetString = fn (name: StringName) -> GLubyte
alias fptr_glGetStringi = fn (name: StringName, index: GLuint) -> GLubyte
alias fptr_glGetSubroutineIndex = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=False]) -> GLuint
alias fptr_glGetSubroutineUniformLocation = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetSynciv = fn (sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, mut=True], values: Ptr[GLint, mut=True])
alias fptr_glGetTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTexLevelParameterfv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTexLevelParameteriv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTexParameterIiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTexParameterIuiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, mut=True])
alias fptr_glGetTexParameterfv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTexParameteriv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTextureLevelParameterfv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTextureLevelParameteriv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureParameterIiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureParameterIuiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, mut=True])
alias fptr_glGetTextureParameterfv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTextureParameteriv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTransformFeedbackVarying = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLsizei, mut=True], type: Ptr[AttributeType, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetTransformFeedbacki64_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, mut=True])
alias fptr_glGetTransformFeedbacki_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, mut=True])
alias fptr_glGetTransformFeedbackiv = fn (xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, mut=True])
alias fptr_glGetUniformBlockIndex = fn (program: GLuint, uniform_block_name: Ptr[GLchar, mut=False]) -> GLuint
alias fptr_glGetUniformIndices = fn (program: GLuint, uniform_count: GLsizei, uniform_names: Ptr[Ptr[GLchar, mut=False], mut=False], uniform_indices: Ptr[GLuint, mut=True])
alias fptr_glGetUniformLocation = fn (program: GLuint, name: Ptr[GLchar, mut=False]) -> GLint
alias fptr_glGetUniformSubroutineuiv = fn (shadertype: ShaderType, location: GLint, params: Ptr[GLuint, mut=True])
alias fptr_glGetUniformdv = fn (program: GLuint, location: GLint, params: Ptr[GLdouble, mut=True])
alias fptr_glGetUniformfv = fn (program: GLuint, location: GLint, params: Ptr[GLfloat, mut=True])
alias fptr_glGetUniformiv = fn (program: GLuint, location: GLint, params: Ptr[GLint, mut=True])
alias fptr_glGetUniformuiv = fn (program: GLuint, location: GLint, params: Ptr[GLuint, mut=True])
alias fptr_glGetVertexArrayIndexed64iv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, mut=True])
alias fptr_glGetVertexArrayIndexediv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True])
alias fptr_glGetVertexArrayiv = fn (vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True])
alias fptr_glGetVertexAttribIiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, mut=True])
alias fptr_glGetVertexAttribIuiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, mut=True])
alias fptr_glGetVertexAttribLdv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, mut=True])
alias fptr_glGetVertexAttribPointerv = fn (index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetVertexAttribdv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, mut=True])
alias fptr_glGetVertexAttribfv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, mut=True])
alias fptr_glGetVertexAttribiv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, mut=True])
alias fptr_glGetnColorTable = fn (target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, mut=True])
alias fptr_glGetnCompressedTexImage = fn (target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetnConvolutionFilter = fn (target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, mut=True])
alias fptr_glGetnHistogram = fn (target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True])
alias fptr_glGetnMapdv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, mut=True])
alias fptr_glGetnMapfv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, mut=True])
alias fptr_glGetnMapiv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, mut=True])
alias fptr_glGetnMinmax = fn (target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True])
alias fptr_glGetnPixelMapfv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, mut=True])
alias fptr_glGetnPixelMapuiv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, mut=True])
alias fptr_glGetnPixelMapusv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, mut=True])
alias fptr_glGetnPolygonStipple = fn (buf_size: GLsizei, pattern: Ptr[GLubyte, mut=True])
alias fptr_glGetnSeparableFilter = fn (target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, mut=True], column_buf_size: GLsizei, column: Ptr[NoneType, mut=True], span: Ptr[NoneType, mut=True])
alias fptr_glGetnTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetnUniformdv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, mut=True])
alias fptr_glGetnUniformfv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, mut=True])
alias fptr_glGetnUniformiv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, mut=True])
alias fptr_glGetnUniformuiv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, mut=True])
alias fptr_glHint = fn (target: HintTarget, mode: HintMode)
alias fptr_glInvalidateBufferData = fn (buffer: GLuint)
alias fptr_glInvalidateBufferSubData = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glInvalidateFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, mut=False])
alias fptr_glInvalidateNamedFramebufferData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, mut=False])
alias fptr_glInvalidateNamedFramebufferSubData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, mut=False], x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glInvalidateSubFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, mut=False], x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glInvalidateTexImage = fn (texture: GLuint, level: GLint)
alias fptr_glInvalidateTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glIsBuffer = fn (buffer: GLuint) -> GLboolean
alias fptr_glIsEnabled = fn (cap: EnableCap) -> GLboolean
alias fptr_glIsEnabledi = fn (target: EnableCap, index: GLuint) -> GLboolean
alias fptr_glIsFramebuffer = fn (framebuffer: GLuint) -> GLboolean
alias fptr_glIsProgram = fn (program: GLuint) -> GLboolean
alias fptr_glIsProgramPipeline = fn (pipeline: GLuint) -> GLboolean
alias fptr_glIsQuery = fn (id: GLuint) -> GLboolean
alias fptr_glIsRenderbuffer = fn (renderbuffer: GLuint) -> GLboolean
alias fptr_glIsSampler = fn (sampler: GLuint) -> GLboolean
alias fptr_glIsShader = fn (shader: GLuint) -> GLboolean
alias fptr_glIsSync = fn (sync: GLsync) -> GLboolean
alias fptr_glIsTexture = fn (texture: GLuint) -> GLboolean
alias fptr_glIsTransformFeedback = fn (id: GLuint) -> GLboolean
alias fptr_glIsVertexArray = fn (array: GLuint) -> GLboolean
alias fptr_glLineWidth = fn (width: GLfloat)
alias fptr_glLinkProgram = fn (program: GLuint)
alias fptr_glLogicOp = fn (opcode: LogicOp)
alias fptr_glMapBuffer = fn (target: BufferTargetARB, access: BufferAccessARB)
alias fptr_glMapBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glMapNamedBuffer = fn (buffer: GLuint, access: BufferAccessARB)
alias fptr_glMapNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glMemoryBarrier = fn (barriers: MemoryBarrierMask)
alias fptr_glMemoryBarrierByRegion = fn (barriers: MemoryBarrierMask)
alias fptr_glMinSampleShading = fn (value: GLfloat)
alias fptr_glMultiDrawArrays = fn (mode: PrimitiveType, first: Ptr[GLint, mut=False], count: Ptr[GLsizei, mut=False], drawcount: GLsizei)
alias fptr_glMultiDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=False], drawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawArraysIndirectCount = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=False], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElements = fn (mode: PrimitiveType, count: Ptr[GLsizei, mut=False], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=False], mut=False], drawcount: GLsizei)
alias fptr_glMultiDrawElementsBaseVertex = fn (mode: PrimitiveType, count: Ptr[GLsizei, mut=False], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=False], mut=False], drawcount: GLsizei, basevertex: Ptr[GLint, mut=False])
alias fptr_glMultiDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False], drawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElementsIndirectCount = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiTexCoordP1ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP1uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glMultiTexCoordP2ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP2uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glMultiTexCoordP3ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP3uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glMultiTexCoordP4ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP4uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glNamedBufferData = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=False], usage: VertexBufferObjectUsage)
alias fptr_glNamedBufferStorage = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=False], flags: BufferStorageMask)
alias fptr_glNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=False])
alias fptr_glNamedFramebufferDrawBuffer = fn (framebuffer: GLuint, buf: ColorBuffer)
alias fptr_glNamedFramebufferDrawBuffers = fn (framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, mut=False])
alias fptr_glNamedFramebufferParameteri = fn (framebuffer: GLuint, pname: FramebufferParameterName, param: GLint)
alias fptr_glNamedFramebufferReadBuffer = fn (framebuffer: GLuint, src: ColorBuffer)
alias fptr_glNamedFramebufferRenderbuffer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glNamedFramebufferTexture = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glNamedFramebufferTextureLayer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
alias fptr_glNamedRenderbufferStorage = fn (renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glNamedRenderbufferStorageMultisample = fn (renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glNormalP3ui = fn (type: NormalPointerType, coords: GLuint)
alias fptr_glNormalP3uiv = fn (type: NormalPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar, mut=False])
alias fptr_glObjectPtrLabel = fn (ptr: Ptr[NoneType, mut=False], length: GLsizei, label: Ptr[GLchar, mut=False])
alias fptr_glPatchParameterfv = fn (pname: PatchParameterName, values: Ptr[GLfloat, mut=False])
alias fptr_glPatchParameteri = fn (pname: PatchParameterName, value: GLint)
alias fptr_glPauseTransformFeedback = fn ()
alias fptr_glPixelStoref = fn (pname: PixelStoreParameter, param: GLfloat)
alias fptr_glPixelStorei = fn (pname: PixelStoreParameter, param: GLint)
alias fptr_glPointParameterf = fn (pname: PointParameterNameARB, param: GLfloat)
alias fptr_glPointParameterfv = fn (pname: PointParameterNameARB, params: Ptr[GLfloat, mut=False])
alias fptr_glPointParameteri = fn (pname: PointParameterNameARB, param: GLint)
alias fptr_glPointParameteriv = fn (pname: PointParameterNameARB, params: Ptr[GLint, mut=False])
alias fptr_glPointSize = fn (size: GLfloat)
alias fptr_glPolygonMode = fn (face: TriangleFace, mode: PolygonMode)
alias fptr_glPolygonOffset = fn (factor: GLfloat, units: GLfloat)
alias fptr_glPolygonOffsetClamp = fn (factor: GLfloat, units: GLfloat, clamp: GLfloat)
alias fptr_glPopDebugGroup = fn ()
alias fptr_glPrimitiveRestartIndex = fn (index: GLuint)
alias fptr_glProgramBinary = fn (program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, mut=False], length: GLsizei)
alias fptr_glProgramParameteri = fn (program: GLuint, pname: ProgramParameterPName, value: GLint)
alias fptr_glProgramUniform1d = fn (program: GLuint, location: GLint, v0: GLdouble)
alias fptr_glProgramUniform1dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniform1f = fn (program: GLuint, location: GLint, v0: GLfloat)
alias fptr_glProgramUniform1fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniform1i = fn (program: GLuint, location: GLint, v0: GLint)
alias fptr_glProgramUniform1iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glProgramUniform1ui = fn (program: GLuint, location: GLint, v0: GLuint)
alias fptr_glProgramUniform1uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glProgramUniform2d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble)
alias fptr_glProgramUniform2dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniform2f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glProgramUniform2fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniform2i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint)
alias fptr_glProgramUniform2iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glProgramUniform2ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glProgramUniform2uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glProgramUniform3d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble)
alias fptr_glProgramUniform3dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniform3f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glProgramUniform3fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniform3i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glProgramUniform3iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glProgramUniform3ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glProgramUniform3uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glProgramUniform4d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble)
alias fptr_glProgramUniform4dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniform4f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glProgramUniform4fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniform4i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glProgramUniform4iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glProgramUniform4ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glProgramUniform4uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glProgramUniformMatrix2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix2x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix2x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix2x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix2x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix3x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix3x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix3x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix3x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix4x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix4x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProgramUniformMatrix4x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glProgramUniformMatrix4x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glProvokingVertex = fn (mode: VertexProvokingMode)
alias fptr_glPushDebugGroup = fn (source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar, mut=False])
alias fptr_glQueryCounter = fn (id: GLuint, target: QueryCounterTarget)
alias fptr_glReadBuffer = fn (src: ReadBufferMode)
alias fptr_glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glReadnPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glReleaseShaderCompiler = fn ()
alias fptr_glRenderbufferStorage = fn (target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glRenderbufferStorageMultisample = fn (target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glResumeTransformFeedback = fn ()
alias fptr_glSampleCoverage = fn (value: GLfloat, invert: GLboolean)
alias fptr_glSampleMaski = fn (mask_number: GLuint, mask: GLbitfield)
alias fptr_glSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=False])
alias fptr_glSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, mut=False])
alias fptr_glSamplerParameterf = fn (sampler: GLuint, pname: SamplerParameterF, param: GLfloat)
alias fptr_glSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, mut=False])
alias fptr_glSamplerParameteri = fn (sampler: GLuint, pname: SamplerParameterI, param: GLint)
alias fptr_glSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=False])
alias fptr_glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glScissorArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLint, mut=False])
alias fptr_glScissorIndexed = fn (index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei)
alias fptr_glScissorIndexedv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glSecondaryColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glSecondaryColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=False])
alias fptr_glShaderBinary = fn (count: GLsizei, shaders: Ptr[GLuint, mut=False], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, mut=False], length: GLsizei)
alias fptr_glShaderSource = fn (shader: GLuint, count: GLsizei, string: Ptr[Ptr[GLchar, mut=False], mut=False], length: Ptr[GLint, mut=False])
alias fptr_glShaderStorageBlockBinding = fn (program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint)
alias fptr_glSpecializeShader = fn (shader: GLuint, p_entry_point: Ptr[GLchar, mut=False], num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, mut=False], p_constant_value: Ptr[GLuint, mut=False])
alias fptr_glStencilFunc = fn (func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilFuncSeparate = fn (face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilMask = fn (mask: GLuint)
alias fptr_glStencilMaskSeparate = fn (face: TriangleFace, mask: GLuint)
alias fptr_glStencilOp = fn (fail: StencilOp, zfail: StencilOp, zpass: StencilOp)
alias fptr_glStencilOpSeparate = fn (face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp)
alias fptr_glTexBuffer = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glTexBufferRange = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTexCoordP1ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP1uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glTexCoordP2ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP2uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glTexCoordP3ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP3uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glTexCoordP4ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP4uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=False])
alias fptr_glTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTexImage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTexImage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexParameterIiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=False])
alias fptr_glTexParameterIuiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, mut=False])
alias fptr_glTexParameterf = fn (target: TextureTarget, pname: TextureParameterName, param: GLfloat)
alias fptr_glTexParameterfv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, mut=False])
alias fptr_glTexParameteri = fn (target: TextureTarget, pname: TextureParameterName, param: GLint)
alias fptr_glTexParameteriv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=False])
alias fptr_glTexStorage1D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTexStorage2D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTexStorage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexStorage3D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glTexStorage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTextureBarrier = fn ()
alias fptr_glTextureBuffer = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glTextureBufferRange = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTextureParameterIiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, mut=False])
alias fptr_glTextureParameterIuiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, mut=False])
alias fptr_glTextureParameterf = fn (texture: GLuint, pname: TextureParameterName, param: GLfloat)
alias fptr_glTextureParameterfv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, mut=False])
alias fptr_glTextureParameteri = fn (texture: GLuint, pname: TextureParameterName, param: GLint)
alias fptr_glTextureParameteriv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, mut=False])
alias fptr_glTextureStorage1D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTextureStorage2D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTextureStorage2DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureStorage3D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glTextureStorage3DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False])
alias fptr_glTextureView = fn (texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint)
alias fptr_glTransformFeedbackBufferBase = fn (xfb: GLuint, index: GLuint, buffer: GLuint)
alias fptr_glTransformFeedbackBufferRange = fn (xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTransformFeedbackVaryings = fn (program: GLuint, count: GLsizei, varyings: Ptr[Ptr[GLchar, mut=False], mut=False], buffer_mode: TransformFeedbackBufferMode)
alias fptr_glUniform1d = fn (location: GLint, x: GLdouble)
alias fptr_glUniform1dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glUniform1f = fn (location: GLint, v0: GLfloat)
alias fptr_glUniform1fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glUniform1i = fn (location: GLint, v0: GLint)
alias fptr_glUniform1iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glUniform1ui = fn (location: GLint, v0: GLuint)
alias fptr_glUniform1uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glUniform2d = fn (location: GLint, x: GLdouble, y: GLdouble)
alias fptr_glUniform2dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glUniform2fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glUniform2i = fn (location: GLint, v0: GLint, v1: GLint)
alias fptr_glUniform2iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glUniform2ui = fn (location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glUniform2uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glUniform3d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glUniform3dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glUniform3fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glUniform3iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glUniform3ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glUniform3uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glUniform4d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glUniform4dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False])
alias fptr_glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glUniform4fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False])
alias fptr_glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glUniform4iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=False])
alias fptr_glUniform4ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glUniform4uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False])
alias fptr_glUniformBlockBinding = fn (program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint)
alias fptr_glUniformMatrix2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix2x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix2x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix2x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix2x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix3x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix3x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix3x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix3x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix4x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix4x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformMatrix4x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=False])
alias fptr_glUniformMatrix4x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=False])
alias fptr_glUniformSubroutinesuiv = fn (shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, mut=False])
alias fptr_glUnmapBuffer = fn (target: BufferTargetARB) -> GLboolean
alias fptr_glUnmapNamedBuffer = fn (buffer: GLuint) -> GLboolean
alias fptr_glUseProgram = fn (program: GLuint)
alias fptr_glUseProgramStages = fn (pipeline: GLuint, stages: UseProgramStageMask, program: GLuint)
alias fptr_glValidateProgram = fn (program: GLuint)
alias fptr_glValidateProgramPipeline = fn (pipeline: GLuint)
alias fptr_glVertexArrayAttribBinding = fn (vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint)
alias fptr_glVertexArrayAttribFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
alias fptr_glVertexArrayAttribIFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
alias fptr_glVertexArrayAttribLFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
alias fptr_glVertexArrayBindingDivisor = fn (vaobj: GLuint, bindingindex: GLuint, divisor: GLuint)
alias fptr_glVertexArrayElementBuffer = fn (vaobj: GLuint, buffer: GLuint)
alias fptr_glVertexArrayVertexBuffer = fn (vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
alias fptr_glVertexArrayVertexBuffers = fn (vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], strides: Ptr[GLsizei, mut=False])
alias fptr_glVertexAttrib1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttrib1dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttrib1f = fn (index: GLuint, x: GLfloat)
alias fptr_glVertexAttrib1fv = fn (index: GLuint, v: Ptr[GLfloat, mut=False])
alias fptr_glVertexAttrib1s = fn (index: GLuint, x: GLshort)
alias fptr_glVertexAttrib1sv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttrib2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttrib2dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat)
alias fptr_glVertexAttrib2fv = fn (index: GLuint, v: Ptr[GLfloat, mut=False])
alias fptr_glVertexAttrib2s = fn (index: GLuint, x: GLshort, y: GLshort)
alias fptr_glVertexAttrib2sv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttrib3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttrib3dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat)
alias fptr_glVertexAttrib3fv = fn (index: GLuint, v: Ptr[GLfloat, mut=False])
alias fptr_glVertexAttrib3s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort)
alias fptr_glVertexAttrib3sv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttrib4Nbv = fn (index: GLuint, v: Ptr[GLbyte, mut=False])
alias fptr_glVertexAttrib4Niv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttrib4Nsv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttrib4Nub = fn (index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte)
alias fptr_glVertexAttrib4Nubv = fn (index: GLuint, v: Ptr[GLubyte, mut=False])
alias fptr_glVertexAttrib4Nuiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttrib4Nusv = fn (index: GLuint, v: Ptr[GLushort, mut=False])
alias fptr_glVertexAttrib4bv = fn (index: GLuint, v: Ptr[GLbyte, mut=False])
alias fptr_glVertexAttrib4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttrib4dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
alias fptr_glVertexAttrib4fv = fn (index: GLuint, v: Ptr[GLfloat, mut=False])
alias fptr_glVertexAttrib4iv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttrib4s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort)
alias fptr_glVertexAttrib4sv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttrib4ubv = fn (index: GLuint, v: Ptr[GLubyte, mut=False])
alias fptr_glVertexAttrib4uiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttrib4usv = fn (index: GLuint, v: Ptr[GLushort, mut=False])
alias fptr_glVertexAttribBinding = fn (attribindex: GLuint, bindingindex: GLuint)
alias fptr_glVertexAttribDivisor = fn (index: GLuint, divisor: GLuint)
alias fptr_glVertexAttribFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
alias fptr_glVertexAttribI1i = fn (index: GLuint, x: GLint)
alias fptr_glVertexAttribI1iv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttribI1ui = fn (index: GLuint, x: GLuint)
alias fptr_glVertexAttribI1uiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribI2i = fn (index: GLuint, x: GLint, y: GLint)
alias fptr_glVertexAttribI2iv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttribI2ui = fn (index: GLuint, x: GLuint, y: GLuint)
alias fptr_glVertexAttribI2uiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribI3i = fn (index: GLuint, x: GLint, y: GLint, z: GLint)
alias fptr_glVertexAttribI3iv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttribI3ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint)
alias fptr_glVertexAttribI3uiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribI4bv = fn (index: GLuint, v: Ptr[GLbyte, mut=False])
alias fptr_glVertexAttribI4i = fn (index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint)
alias fptr_glVertexAttribI4iv = fn (index: GLuint, v: Ptr[GLint, mut=False])
alias fptr_glVertexAttribI4sv = fn (index: GLuint, v: Ptr[GLshort, mut=False])
alias fptr_glVertexAttribI4ubv = fn (index: GLuint, v: Ptr[GLubyte, mut=False])
alias fptr_glVertexAttribI4ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint)
alias fptr_glVertexAttribI4uiv = fn (index: GLuint, v: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribI4usv = fn (index: GLuint, v: Ptr[GLushort, mut=False])
alias fptr_glVertexAttribIFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
alias fptr_glVertexAttribIPointer = fn (index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, mut=False])
alias fptr_glVertexAttribL1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttribL1dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttribL2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttribL2dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttribL3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttribL3dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttribL4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttribL4dv = fn (index: GLuint, v: Ptr[GLdouble, mut=False])
alias fptr_glVertexAttribLFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
alias fptr_glVertexAttribLPointer = fn (index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, mut=False])
alias fptr_glVertexAttribP1ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP1uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribP2ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP2uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribP3ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP3uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribP4ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP4uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=False])
alias fptr_glVertexAttribPointer = fn (index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType, mut=False])
alias fptr_glVertexBindingDivisor = fn (bindingindex: GLuint, divisor: GLuint)
alias fptr_glVertexP2ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP2uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=False])
alias fptr_glVertexP3ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP3uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=False])
alias fptr_glVertexP4ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP4uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=False])
alias fptr_glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glViewportArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLfloat, mut=False])
alias fptr_glViewportIndexedf = fn (index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat)
alias fptr_glViewportIndexedfv = fn (index: GLuint, v: Ptr[GLfloat, mut=False])
alias fptr_glWaitSync = fn (sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64)

alias _glActiveShaderProgram_ptr = global_fn["glActiveShaderProgram", fptr_glActiveShaderProgram]()
alias _glActiveTexture_ptr = global_fn["glActiveTexture", fptr_glActiveTexture]()
alias _glAttachShader_ptr = global_fn["glAttachShader", fptr_glAttachShader]()
alias _glBeginConditionalRender_ptr = global_fn["glBeginConditionalRender", fptr_glBeginConditionalRender]()
alias _glBeginQuery_ptr = global_fn["glBeginQuery", fptr_glBeginQuery]()
alias _glBeginQueryIndexed_ptr = global_fn["glBeginQueryIndexed", fptr_glBeginQueryIndexed]()
alias _glBeginTransformFeedback_ptr = global_fn["glBeginTransformFeedback", fptr_glBeginTransformFeedback]()
alias _glBindAttribLocation_ptr = global_fn["glBindAttribLocation", fptr_glBindAttribLocation]()
alias _glBindBuffer_ptr = global_fn["glBindBuffer", fptr_glBindBuffer]()
alias _glBindBufferBase_ptr = global_fn["glBindBufferBase", fptr_glBindBufferBase]()
alias _glBindBufferRange_ptr = global_fn["glBindBufferRange", fptr_glBindBufferRange]()
alias _glBindBuffersBase_ptr = global_fn["glBindBuffersBase", fptr_glBindBuffersBase]()
alias _glBindBuffersRange_ptr = global_fn["glBindBuffersRange", fptr_glBindBuffersRange]()
alias _glBindFragDataLocation_ptr = global_fn["glBindFragDataLocation", fptr_glBindFragDataLocation]()
alias _glBindFragDataLocationIndexed_ptr = global_fn["glBindFragDataLocationIndexed", fptr_glBindFragDataLocationIndexed]()
alias _glBindFramebuffer_ptr = global_fn["glBindFramebuffer", fptr_glBindFramebuffer]()
alias _glBindImageTexture_ptr = global_fn["glBindImageTexture", fptr_glBindImageTexture]()
alias _glBindImageTextures_ptr = global_fn["glBindImageTextures", fptr_glBindImageTextures]()
alias _glBindProgramPipeline_ptr = global_fn["glBindProgramPipeline", fptr_glBindProgramPipeline]()
alias _glBindRenderbuffer_ptr = global_fn["glBindRenderbuffer", fptr_glBindRenderbuffer]()
alias _glBindSampler_ptr = global_fn["glBindSampler", fptr_glBindSampler]()
alias _glBindSamplers_ptr = global_fn["glBindSamplers", fptr_glBindSamplers]()
alias _glBindTexture_ptr = global_fn["glBindTexture", fptr_glBindTexture]()
alias _glBindTextureUnit_ptr = global_fn["glBindTextureUnit", fptr_glBindTextureUnit]()
alias _glBindTextures_ptr = global_fn["glBindTextures", fptr_glBindTextures]()
alias _glBindTransformFeedback_ptr = global_fn["glBindTransformFeedback", fptr_glBindTransformFeedback]()
alias _glBindVertexArray_ptr = global_fn["glBindVertexArray", fptr_glBindVertexArray]()
alias _glBindVertexBuffer_ptr = global_fn["glBindVertexBuffer", fptr_glBindVertexBuffer]()
alias _glBindVertexBuffers_ptr = global_fn["glBindVertexBuffers", fptr_glBindVertexBuffers]()
alias _glBlendColor_ptr = global_fn["glBlendColor", fptr_glBlendColor]()
alias _glBlendEquation_ptr = global_fn["glBlendEquation", fptr_glBlendEquation]()
alias _glBlendEquationSeparate_ptr = global_fn["glBlendEquationSeparate", fptr_glBlendEquationSeparate]()
alias _glBlendEquationSeparatei_ptr = global_fn["glBlendEquationSeparatei", fptr_glBlendEquationSeparatei]()
alias _glBlendEquationi_ptr = global_fn["glBlendEquationi", fptr_glBlendEquationi]()
alias _glBlendFunc_ptr = global_fn["glBlendFunc", fptr_glBlendFunc]()
alias _glBlendFuncSeparate_ptr = global_fn["glBlendFuncSeparate", fptr_glBlendFuncSeparate]()
alias _glBlendFuncSeparatei_ptr = global_fn["glBlendFuncSeparatei", fptr_glBlendFuncSeparatei]()
alias _glBlendFunci_ptr = global_fn["glBlendFunci", fptr_glBlendFunci]()
alias _glBlitFramebuffer_ptr = global_fn["glBlitFramebuffer", fptr_glBlitFramebuffer]()
alias _glBlitNamedFramebuffer_ptr = global_fn["glBlitNamedFramebuffer", fptr_glBlitNamedFramebuffer]()
alias _glBufferData_ptr = global_fn["glBufferData", fptr_glBufferData]()
alias _glBufferStorage_ptr = global_fn["glBufferStorage", fptr_glBufferStorage]()
alias _glBufferSubData_ptr = global_fn["glBufferSubData", fptr_glBufferSubData]()
alias _glCheckFramebufferStatus_ptr = global_fn["glCheckFramebufferStatus", fptr_glCheckFramebufferStatus]()
alias _glCheckNamedFramebufferStatus_ptr = global_fn["glCheckNamedFramebufferStatus", fptr_glCheckNamedFramebufferStatus]()
alias _glClampColor_ptr = global_fn["glClampColor", fptr_glClampColor]()
alias _glClear_ptr = global_fn["glClear", fptr_glClear]()
alias _glClearBufferData_ptr = global_fn["glClearBufferData", fptr_glClearBufferData]()
alias _glClearBufferSubData_ptr = global_fn["glClearBufferSubData", fptr_glClearBufferSubData]()
alias _glClearBufferfi_ptr = global_fn["glClearBufferfi", fptr_glClearBufferfi]()
alias _glClearBufferfv_ptr = global_fn["glClearBufferfv", fptr_glClearBufferfv]()
alias _glClearBufferiv_ptr = global_fn["glClearBufferiv", fptr_glClearBufferiv]()
alias _glClearBufferuiv_ptr = global_fn["glClearBufferuiv", fptr_glClearBufferuiv]()
alias _glClearColor_ptr = global_fn["glClearColor", fptr_glClearColor]()
alias _glClearDepth_ptr = global_fn["glClearDepth", fptr_glClearDepth]()
alias _glClearDepthf_ptr = global_fn["glClearDepthf", fptr_glClearDepthf]()
alias _glClearNamedBufferData_ptr = global_fn["glClearNamedBufferData", fptr_glClearNamedBufferData]()
alias _glClearNamedBufferSubData_ptr = global_fn["glClearNamedBufferSubData", fptr_glClearNamedBufferSubData]()
alias _glClearNamedFramebufferfi_ptr = global_fn["glClearNamedFramebufferfi", fptr_glClearNamedFramebufferfi]()
alias _glClearNamedFramebufferfv_ptr = global_fn["glClearNamedFramebufferfv", fptr_glClearNamedFramebufferfv]()
alias _glClearNamedFramebufferiv_ptr = global_fn["glClearNamedFramebufferiv", fptr_glClearNamedFramebufferiv]()
alias _glClearNamedFramebufferuiv_ptr = global_fn["glClearNamedFramebufferuiv", fptr_glClearNamedFramebufferuiv]()
alias _glClearStencil_ptr = global_fn["glClearStencil", fptr_glClearStencil]()
alias _glClearTexImage_ptr = global_fn["glClearTexImage", fptr_glClearTexImage]()
alias _glClearTexSubImage_ptr = global_fn["glClearTexSubImage", fptr_glClearTexSubImage]()
alias _glClientWaitSync_ptr = global_fn["glClientWaitSync", fptr_glClientWaitSync]()
alias _glClipControl_ptr = global_fn["glClipControl", fptr_glClipControl]()
alias _glColorMask_ptr = global_fn["glColorMask", fptr_glColorMask]()
alias _glColorMaski_ptr = global_fn["glColorMaski", fptr_glColorMaski]()
alias _glColorP3ui_ptr = global_fn["glColorP3ui", fptr_glColorP3ui]()
alias _glColorP3uiv_ptr = global_fn["glColorP3uiv", fptr_glColorP3uiv]()
alias _glColorP4ui_ptr = global_fn["glColorP4ui", fptr_glColorP4ui]()
alias _glColorP4uiv_ptr = global_fn["glColorP4uiv", fptr_glColorP4uiv]()
alias _glCompileShader_ptr = global_fn["glCompileShader", fptr_glCompileShader]()
alias _glCompressedTexImage1D_ptr = global_fn["glCompressedTexImage1D", fptr_glCompressedTexImage1D]()
alias _glCompressedTexImage2D_ptr = global_fn["glCompressedTexImage2D", fptr_glCompressedTexImage2D]()
alias _glCompressedTexImage3D_ptr = global_fn["glCompressedTexImage3D", fptr_glCompressedTexImage3D]()
alias _glCompressedTexSubImage1D_ptr = global_fn["glCompressedTexSubImage1D", fptr_glCompressedTexSubImage1D]()
alias _glCompressedTexSubImage2D_ptr = global_fn["glCompressedTexSubImage2D", fptr_glCompressedTexSubImage2D]()
alias _glCompressedTexSubImage3D_ptr = global_fn["glCompressedTexSubImage3D", fptr_glCompressedTexSubImage3D]()
alias _glCompressedTextureSubImage1D_ptr = global_fn["glCompressedTextureSubImage1D", fptr_glCompressedTextureSubImage1D]()
alias _glCompressedTextureSubImage2D_ptr = global_fn["glCompressedTextureSubImage2D", fptr_glCompressedTextureSubImage2D]()
alias _glCompressedTextureSubImage3D_ptr = global_fn["glCompressedTextureSubImage3D", fptr_glCompressedTextureSubImage3D]()
alias _glCopyBufferSubData_ptr = global_fn["glCopyBufferSubData", fptr_glCopyBufferSubData]()
alias _glCopyImageSubData_ptr = global_fn["glCopyImageSubData", fptr_glCopyImageSubData]()
alias _glCopyNamedBufferSubData_ptr = global_fn["glCopyNamedBufferSubData", fptr_glCopyNamedBufferSubData]()
alias _glCopyTexImage1D_ptr = global_fn["glCopyTexImage1D", fptr_glCopyTexImage1D]()
alias _glCopyTexImage2D_ptr = global_fn["glCopyTexImage2D", fptr_glCopyTexImage2D]()
alias _glCopyTexSubImage1D_ptr = global_fn["glCopyTexSubImage1D", fptr_glCopyTexSubImage1D]()
alias _glCopyTexSubImage2D_ptr = global_fn["glCopyTexSubImage2D", fptr_glCopyTexSubImage2D]()
alias _glCopyTexSubImage3D_ptr = global_fn["glCopyTexSubImage3D", fptr_glCopyTexSubImage3D]()
alias _glCopyTextureSubImage1D_ptr = global_fn["glCopyTextureSubImage1D", fptr_glCopyTextureSubImage1D]()
alias _glCopyTextureSubImage2D_ptr = global_fn["glCopyTextureSubImage2D", fptr_glCopyTextureSubImage2D]()
alias _glCopyTextureSubImage3D_ptr = global_fn["glCopyTextureSubImage3D", fptr_glCopyTextureSubImage3D]()
alias _glCreateBuffers_ptr = global_fn["glCreateBuffers", fptr_glCreateBuffers]()
alias _glCreateFramebuffers_ptr = global_fn["glCreateFramebuffers", fptr_glCreateFramebuffers]()
alias _glCreateProgram_ptr = global_fn["glCreateProgram", fptr_glCreateProgram]()
alias _glCreateProgramPipelines_ptr = global_fn["glCreateProgramPipelines", fptr_glCreateProgramPipelines]()
alias _glCreateQueries_ptr = global_fn["glCreateQueries", fptr_glCreateQueries]()
alias _glCreateRenderbuffers_ptr = global_fn["glCreateRenderbuffers", fptr_glCreateRenderbuffers]()
alias _glCreateSamplers_ptr = global_fn["glCreateSamplers", fptr_glCreateSamplers]()
alias _glCreateShader_ptr = global_fn["glCreateShader", fptr_glCreateShader]()
alias _glCreateShaderProgramv_ptr = global_fn["glCreateShaderProgramv", fptr_glCreateShaderProgramv]()
alias _glCreateTextures_ptr = global_fn["glCreateTextures", fptr_glCreateTextures]()
alias _glCreateTransformFeedbacks_ptr = global_fn["glCreateTransformFeedbacks", fptr_glCreateTransformFeedbacks]()
alias _glCreateVertexArrays_ptr = global_fn["glCreateVertexArrays", fptr_glCreateVertexArrays]()
alias _glCullFace_ptr = global_fn["glCullFace", fptr_glCullFace]()
alias _glDebugMessageCallback_ptr = global_fn["glDebugMessageCallback", fptr_glDebugMessageCallback]()
alias _glDebugMessageControl_ptr = global_fn["glDebugMessageControl", fptr_glDebugMessageControl]()
alias _glDebugMessageInsert_ptr = global_fn["glDebugMessageInsert", fptr_glDebugMessageInsert]()
alias _glDeleteBuffers_ptr = global_fn["glDeleteBuffers", fptr_glDeleteBuffers]()
alias _glDeleteFramebuffers_ptr = global_fn["glDeleteFramebuffers", fptr_glDeleteFramebuffers]()
alias _glDeleteProgram_ptr = global_fn["glDeleteProgram", fptr_glDeleteProgram]()
alias _glDeleteProgramPipelines_ptr = global_fn["glDeleteProgramPipelines", fptr_glDeleteProgramPipelines]()
alias _glDeleteQueries_ptr = global_fn["glDeleteQueries", fptr_glDeleteQueries]()
alias _glDeleteRenderbuffers_ptr = global_fn["glDeleteRenderbuffers", fptr_glDeleteRenderbuffers]()
alias _glDeleteSamplers_ptr = global_fn["glDeleteSamplers", fptr_glDeleteSamplers]()
alias _glDeleteShader_ptr = global_fn["glDeleteShader", fptr_glDeleteShader]()
alias _glDeleteSync_ptr = global_fn["glDeleteSync", fptr_glDeleteSync]()
alias _glDeleteTextures_ptr = global_fn["glDeleteTextures", fptr_glDeleteTextures]()
alias _glDeleteTransformFeedbacks_ptr = global_fn["glDeleteTransformFeedbacks", fptr_glDeleteTransformFeedbacks]()
alias _glDeleteVertexArrays_ptr = global_fn["glDeleteVertexArrays", fptr_glDeleteVertexArrays]()
alias _glDepthFunc_ptr = global_fn["glDepthFunc", fptr_glDepthFunc]()
alias _glDepthMask_ptr = global_fn["glDepthMask", fptr_glDepthMask]()
alias _glDepthRange_ptr = global_fn["glDepthRange", fptr_glDepthRange]()
alias _glDepthRangeArrayv_ptr = global_fn["glDepthRangeArrayv", fptr_glDepthRangeArrayv]()
alias _glDepthRangeIndexed_ptr = global_fn["glDepthRangeIndexed", fptr_glDepthRangeIndexed]()
alias _glDepthRangef_ptr = global_fn["glDepthRangef", fptr_glDepthRangef]()
alias _glDetachShader_ptr = global_fn["glDetachShader", fptr_glDetachShader]()
alias _glDisable_ptr = global_fn["glDisable", fptr_glDisable]()
alias _glDisableVertexArrayAttrib_ptr = global_fn["glDisableVertexArrayAttrib", fptr_glDisableVertexArrayAttrib]()
alias _glDisableVertexAttribArray_ptr = global_fn["glDisableVertexAttribArray", fptr_glDisableVertexAttribArray]()
alias _glDisablei_ptr = global_fn["glDisablei", fptr_glDisablei]()
alias _glDispatchCompute_ptr = global_fn["glDispatchCompute", fptr_glDispatchCompute]()
alias _glDispatchComputeIndirect_ptr = global_fn["glDispatchComputeIndirect", fptr_glDispatchComputeIndirect]()
alias _glDrawArrays_ptr = global_fn["glDrawArrays", fptr_glDrawArrays]()
alias _glDrawArraysIndirect_ptr = global_fn["glDrawArraysIndirect", fptr_glDrawArraysIndirect]()
alias _glDrawArraysInstanced_ptr = global_fn["glDrawArraysInstanced", fptr_glDrawArraysInstanced]()
alias _glDrawArraysInstancedBaseInstance_ptr = global_fn["glDrawArraysInstancedBaseInstance", fptr_glDrawArraysInstancedBaseInstance]()
alias _glDrawBuffer_ptr = global_fn["glDrawBuffer", fptr_glDrawBuffer]()
alias _glDrawBuffers_ptr = global_fn["glDrawBuffers", fptr_glDrawBuffers]()
alias _glDrawElements_ptr = global_fn["glDrawElements", fptr_glDrawElements]()
alias _glDrawElementsBaseVertex_ptr = global_fn["glDrawElementsBaseVertex", fptr_glDrawElementsBaseVertex]()
alias _glDrawElementsIndirect_ptr = global_fn["glDrawElementsIndirect", fptr_glDrawElementsIndirect]()
alias _glDrawElementsInstanced_ptr = global_fn["glDrawElementsInstanced", fptr_glDrawElementsInstanced]()
alias _glDrawElementsInstancedBaseInstance_ptr = global_fn["glDrawElementsInstancedBaseInstance", fptr_glDrawElementsInstancedBaseInstance]()
alias _glDrawElementsInstancedBaseVertex_ptr = global_fn["glDrawElementsInstancedBaseVertex", fptr_glDrawElementsInstancedBaseVertex]()
alias _glDrawElementsInstancedBaseVertexBaseInstance_ptr = global_fn["glDrawElementsInstancedBaseVertexBaseInstance", fptr_glDrawElementsInstancedBaseVertexBaseInstance]()
alias _glDrawRangeElements_ptr = global_fn["glDrawRangeElements", fptr_glDrawRangeElements]()
alias _glDrawRangeElementsBaseVertex_ptr = global_fn["glDrawRangeElementsBaseVertex", fptr_glDrawRangeElementsBaseVertex]()
alias _glDrawTransformFeedback_ptr = global_fn["glDrawTransformFeedback", fptr_glDrawTransformFeedback]()
alias _glDrawTransformFeedbackInstanced_ptr = global_fn["glDrawTransformFeedbackInstanced", fptr_glDrawTransformFeedbackInstanced]()
alias _glDrawTransformFeedbackStream_ptr = global_fn["glDrawTransformFeedbackStream", fptr_glDrawTransformFeedbackStream]()
alias _glDrawTransformFeedbackStreamInstanced_ptr = global_fn["glDrawTransformFeedbackStreamInstanced", fptr_glDrawTransformFeedbackStreamInstanced]()
alias _glEnable_ptr = global_fn["glEnable", fptr_glEnable]()
alias _glEnableVertexArrayAttrib_ptr = global_fn["glEnableVertexArrayAttrib", fptr_glEnableVertexArrayAttrib]()
alias _glEnableVertexAttribArray_ptr = global_fn["glEnableVertexAttribArray", fptr_glEnableVertexAttribArray]()
alias _glEnablei_ptr = global_fn["glEnablei", fptr_glEnablei]()
alias _glEndConditionalRender_ptr = global_fn["glEndConditionalRender", fptr_glEndConditionalRender]()
alias _glEndQuery_ptr = global_fn["glEndQuery", fptr_glEndQuery]()
alias _glEndQueryIndexed_ptr = global_fn["glEndQueryIndexed", fptr_glEndQueryIndexed]()
alias _glEndTransformFeedback_ptr = global_fn["glEndTransformFeedback", fptr_glEndTransformFeedback]()
alias _glFenceSync_ptr = global_fn["glFenceSync", fptr_glFenceSync]()
alias _glFinish_ptr = global_fn["glFinish", fptr_glFinish]()
alias _glFlush_ptr = global_fn["glFlush", fptr_glFlush]()
alias _glFlushMappedBufferRange_ptr = global_fn["glFlushMappedBufferRange", fptr_glFlushMappedBufferRange]()
alias _glFlushMappedNamedBufferRange_ptr = global_fn["glFlushMappedNamedBufferRange", fptr_glFlushMappedNamedBufferRange]()
alias _glFramebufferParameteri_ptr = global_fn["glFramebufferParameteri", fptr_glFramebufferParameteri]()
alias _glFramebufferRenderbuffer_ptr = global_fn["glFramebufferRenderbuffer", fptr_glFramebufferRenderbuffer]()
alias _glFramebufferTexture_ptr = global_fn["glFramebufferTexture", fptr_glFramebufferTexture]()
alias _glFramebufferTexture1D_ptr = global_fn["glFramebufferTexture1D", fptr_glFramebufferTexture1D]()
alias _glFramebufferTexture2D_ptr = global_fn["glFramebufferTexture2D", fptr_glFramebufferTexture2D]()
alias _glFramebufferTexture3D_ptr = global_fn["glFramebufferTexture3D", fptr_glFramebufferTexture3D]()
alias _glFramebufferTextureLayer_ptr = global_fn["glFramebufferTextureLayer", fptr_glFramebufferTextureLayer]()
alias _glFrontFace_ptr = global_fn["glFrontFace", fptr_glFrontFace]()
alias _glGenBuffers_ptr = global_fn["glGenBuffers", fptr_glGenBuffers]()
alias _glGenFramebuffers_ptr = global_fn["glGenFramebuffers", fptr_glGenFramebuffers]()
alias _glGenProgramPipelines_ptr = global_fn["glGenProgramPipelines", fptr_glGenProgramPipelines]()
alias _glGenQueries_ptr = global_fn["glGenQueries", fptr_glGenQueries]()
alias _glGenRenderbuffers_ptr = global_fn["glGenRenderbuffers", fptr_glGenRenderbuffers]()
alias _glGenSamplers_ptr = global_fn["glGenSamplers", fptr_glGenSamplers]()
alias _glGenTextures_ptr = global_fn["glGenTextures", fptr_glGenTextures]()
alias _glGenTransformFeedbacks_ptr = global_fn["glGenTransformFeedbacks", fptr_glGenTransformFeedbacks]()
alias _glGenVertexArrays_ptr = global_fn["glGenVertexArrays", fptr_glGenVertexArrays]()
alias _glGenerateMipmap_ptr = global_fn["glGenerateMipmap", fptr_glGenerateMipmap]()
alias _glGenerateTextureMipmap_ptr = global_fn["glGenerateTextureMipmap", fptr_glGenerateTextureMipmap]()
alias _glGetActiveAtomicCounterBufferiv_ptr = global_fn["glGetActiveAtomicCounterBufferiv", fptr_glGetActiveAtomicCounterBufferiv]()
alias _glGetActiveAttrib_ptr = global_fn["glGetActiveAttrib", fptr_glGetActiveAttrib]()
alias _glGetActiveSubroutineName_ptr = global_fn["glGetActiveSubroutineName", fptr_glGetActiveSubroutineName]()
alias _glGetActiveSubroutineUniformName_ptr = global_fn["glGetActiveSubroutineUniformName", fptr_glGetActiveSubroutineUniformName]()
alias _glGetActiveSubroutineUniformiv_ptr = global_fn["glGetActiveSubroutineUniformiv", fptr_glGetActiveSubroutineUniformiv]()
alias _glGetActiveUniform_ptr = global_fn["glGetActiveUniform", fptr_glGetActiveUniform]()
alias _glGetActiveUniformBlockName_ptr = global_fn["glGetActiveUniformBlockName", fptr_glGetActiveUniformBlockName]()
alias _glGetActiveUniformBlockiv_ptr = global_fn["glGetActiveUniformBlockiv", fptr_glGetActiveUniformBlockiv]()
alias _glGetActiveUniformName_ptr = global_fn["glGetActiveUniformName", fptr_glGetActiveUniformName]()
alias _glGetActiveUniformsiv_ptr = global_fn["glGetActiveUniformsiv", fptr_glGetActiveUniformsiv]()
alias _glGetAttachedShaders_ptr = global_fn["glGetAttachedShaders", fptr_glGetAttachedShaders]()
alias _glGetAttribLocation_ptr = global_fn["glGetAttribLocation", fptr_glGetAttribLocation]()
alias _glGetBooleani_v_ptr = global_fn["glGetBooleani_v", fptr_glGetBooleani_v]()
alias _glGetBooleanv_ptr = global_fn["glGetBooleanv", fptr_glGetBooleanv]()
alias _glGetBufferParameteri64v_ptr = global_fn["glGetBufferParameteri64v", fptr_glGetBufferParameteri64v]()
alias _glGetBufferParameteriv_ptr = global_fn["glGetBufferParameteriv", fptr_glGetBufferParameteriv]()
alias _glGetBufferPointerv_ptr = global_fn["glGetBufferPointerv", fptr_glGetBufferPointerv]()
alias _glGetBufferSubData_ptr = global_fn["glGetBufferSubData", fptr_glGetBufferSubData]()
alias _glGetCompressedTexImage_ptr = global_fn["glGetCompressedTexImage", fptr_glGetCompressedTexImage]()
alias _glGetCompressedTextureImage_ptr = global_fn["glGetCompressedTextureImage", fptr_glGetCompressedTextureImage]()
alias _glGetCompressedTextureSubImage_ptr = global_fn["glGetCompressedTextureSubImage", fptr_glGetCompressedTextureSubImage]()
alias _glGetDebugMessageLog_ptr = global_fn["glGetDebugMessageLog", fptr_glGetDebugMessageLog]()
alias _glGetDoublei_v_ptr = global_fn["glGetDoublei_v", fptr_glGetDoublei_v]()
alias _glGetDoublev_ptr = global_fn["glGetDoublev", fptr_glGetDoublev]()
alias _glGetError_ptr = global_fn["glGetError", fptr_glGetError]()
alias _glGetFloati_v_ptr = global_fn["glGetFloati_v", fptr_glGetFloati_v]()
alias _glGetFloatv_ptr = global_fn["glGetFloatv", fptr_glGetFloatv]()
alias _glGetFragDataIndex_ptr = global_fn["glGetFragDataIndex", fptr_glGetFragDataIndex]()
alias _glGetFragDataLocation_ptr = global_fn["glGetFragDataLocation", fptr_glGetFragDataLocation]()
alias _glGetFramebufferAttachmentParameteriv_ptr = global_fn["glGetFramebufferAttachmentParameteriv", fptr_glGetFramebufferAttachmentParameteriv]()
alias _glGetFramebufferParameteriv_ptr = global_fn["glGetFramebufferParameteriv", fptr_glGetFramebufferParameteriv]()
alias _glGetGraphicsResetStatus_ptr = global_fn["glGetGraphicsResetStatus", fptr_glGetGraphicsResetStatus]()
alias _glGetInteger64i_v_ptr = global_fn["glGetInteger64i_v", fptr_glGetInteger64i_v]()
alias _glGetInteger64v_ptr = global_fn["glGetInteger64v", fptr_glGetInteger64v]()
alias _glGetIntegeri_v_ptr = global_fn["glGetIntegeri_v", fptr_glGetIntegeri_v]()
alias _glGetIntegerv_ptr = global_fn["glGetIntegerv", fptr_glGetIntegerv]()
alias _glGetInternalformati64v_ptr = global_fn["glGetInternalformati64v", fptr_glGetInternalformati64v]()
alias _glGetInternalformativ_ptr = global_fn["glGetInternalformativ", fptr_glGetInternalformativ]()
alias _glGetMultisamplefv_ptr = global_fn["glGetMultisamplefv", fptr_glGetMultisamplefv]()
alias _glGetNamedBufferParameteri64v_ptr = global_fn["glGetNamedBufferParameteri64v", fptr_glGetNamedBufferParameteri64v]()
alias _glGetNamedBufferParameteriv_ptr = global_fn["glGetNamedBufferParameteriv", fptr_glGetNamedBufferParameteriv]()
alias _glGetNamedBufferPointerv_ptr = global_fn["glGetNamedBufferPointerv", fptr_glGetNamedBufferPointerv]()
alias _glGetNamedBufferSubData_ptr = global_fn["glGetNamedBufferSubData", fptr_glGetNamedBufferSubData]()
alias _glGetNamedFramebufferAttachmentParameteriv_ptr = global_fn["glGetNamedFramebufferAttachmentParameteriv", fptr_glGetNamedFramebufferAttachmentParameteriv]()
alias _glGetNamedFramebufferParameteriv_ptr = global_fn["glGetNamedFramebufferParameteriv", fptr_glGetNamedFramebufferParameteriv]()
alias _glGetNamedRenderbufferParameteriv_ptr = global_fn["glGetNamedRenderbufferParameteriv", fptr_glGetNamedRenderbufferParameteriv]()
alias _glGetObjectLabel_ptr = global_fn["glGetObjectLabel", fptr_glGetObjectLabel]()
alias _glGetObjectPtrLabel_ptr = global_fn["glGetObjectPtrLabel", fptr_glGetObjectPtrLabel]()
alias _glGetProgramBinary_ptr = global_fn["glGetProgramBinary", fptr_glGetProgramBinary]()
alias _glGetProgramInfoLog_ptr = global_fn["glGetProgramInfoLog", fptr_glGetProgramInfoLog]()
alias _glGetProgramInterfaceiv_ptr = global_fn["glGetProgramInterfaceiv", fptr_glGetProgramInterfaceiv]()
alias _glGetProgramPipelineInfoLog_ptr = global_fn["glGetProgramPipelineInfoLog", fptr_glGetProgramPipelineInfoLog]()
alias _glGetProgramPipelineiv_ptr = global_fn["glGetProgramPipelineiv", fptr_glGetProgramPipelineiv]()
alias _glGetProgramResourceIndex_ptr = global_fn["glGetProgramResourceIndex", fptr_glGetProgramResourceIndex]()
alias _glGetProgramResourceLocation_ptr = global_fn["glGetProgramResourceLocation", fptr_glGetProgramResourceLocation]()
alias _glGetProgramResourceLocationIndex_ptr = global_fn["glGetProgramResourceLocationIndex", fptr_glGetProgramResourceLocationIndex]()
alias _glGetProgramResourceName_ptr = global_fn["glGetProgramResourceName", fptr_glGetProgramResourceName]()
alias _glGetProgramResourceiv_ptr = global_fn["glGetProgramResourceiv", fptr_glGetProgramResourceiv]()
alias _glGetProgramStageiv_ptr = global_fn["glGetProgramStageiv", fptr_glGetProgramStageiv]()
alias _glGetProgramiv_ptr = global_fn["glGetProgramiv", fptr_glGetProgramiv]()
alias _glGetQueryBufferObjecti64v_ptr = global_fn["glGetQueryBufferObjecti64v", fptr_glGetQueryBufferObjecti64v]()
alias _glGetQueryBufferObjectiv_ptr = global_fn["glGetQueryBufferObjectiv", fptr_glGetQueryBufferObjectiv]()
alias _glGetQueryBufferObjectui64v_ptr = global_fn["glGetQueryBufferObjectui64v", fptr_glGetQueryBufferObjectui64v]()
alias _glGetQueryBufferObjectuiv_ptr = global_fn["glGetQueryBufferObjectuiv", fptr_glGetQueryBufferObjectuiv]()
alias _glGetQueryIndexediv_ptr = global_fn["glGetQueryIndexediv", fptr_glGetQueryIndexediv]()
alias _glGetQueryObjecti64v_ptr = global_fn["glGetQueryObjecti64v", fptr_glGetQueryObjecti64v]()
alias _glGetQueryObjectiv_ptr = global_fn["glGetQueryObjectiv", fptr_glGetQueryObjectiv]()
alias _glGetQueryObjectui64v_ptr = global_fn["glGetQueryObjectui64v", fptr_glGetQueryObjectui64v]()
alias _glGetQueryObjectuiv_ptr = global_fn["glGetQueryObjectuiv", fptr_glGetQueryObjectuiv]()
alias _glGetQueryiv_ptr = global_fn["glGetQueryiv", fptr_glGetQueryiv]()
alias _glGetRenderbufferParameteriv_ptr = global_fn["glGetRenderbufferParameteriv", fptr_glGetRenderbufferParameteriv]()
alias _glGetSamplerParameterIiv_ptr = global_fn["glGetSamplerParameterIiv", fptr_glGetSamplerParameterIiv]()
alias _glGetSamplerParameterIuiv_ptr = global_fn["glGetSamplerParameterIuiv", fptr_glGetSamplerParameterIuiv]()
alias _glGetSamplerParameterfv_ptr = global_fn["glGetSamplerParameterfv", fptr_glGetSamplerParameterfv]()
alias _glGetSamplerParameteriv_ptr = global_fn["glGetSamplerParameteriv", fptr_glGetSamplerParameteriv]()
alias _glGetShaderInfoLog_ptr = global_fn["glGetShaderInfoLog", fptr_glGetShaderInfoLog]()
alias _glGetShaderPrecisionFormat_ptr = global_fn["glGetShaderPrecisionFormat", fptr_glGetShaderPrecisionFormat]()
alias _glGetShaderSource_ptr = global_fn["glGetShaderSource", fptr_glGetShaderSource]()
alias _glGetShaderiv_ptr = global_fn["glGetShaderiv", fptr_glGetShaderiv]()
alias _glGetString_ptr = global_fn["glGetString", fptr_glGetString]()
alias _glGetStringi_ptr = global_fn["glGetStringi", fptr_glGetStringi]()
alias _glGetSubroutineIndex_ptr = global_fn["glGetSubroutineIndex", fptr_glGetSubroutineIndex]()
alias _glGetSubroutineUniformLocation_ptr = global_fn["glGetSubroutineUniformLocation", fptr_glGetSubroutineUniformLocation]()
alias _glGetSynciv_ptr = global_fn["glGetSynciv", fptr_glGetSynciv]()
alias _glGetTexImage_ptr = global_fn["glGetTexImage", fptr_glGetTexImage]()
alias _glGetTexLevelParameterfv_ptr = global_fn["glGetTexLevelParameterfv", fptr_glGetTexLevelParameterfv]()
alias _glGetTexLevelParameteriv_ptr = global_fn["glGetTexLevelParameteriv", fptr_glGetTexLevelParameteriv]()
alias _glGetTexParameterIiv_ptr = global_fn["glGetTexParameterIiv", fptr_glGetTexParameterIiv]()
alias _glGetTexParameterIuiv_ptr = global_fn["glGetTexParameterIuiv", fptr_glGetTexParameterIuiv]()
alias _glGetTexParameterfv_ptr = global_fn["glGetTexParameterfv", fptr_glGetTexParameterfv]()
alias _glGetTexParameteriv_ptr = global_fn["glGetTexParameteriv", fptr_glGetTexParameteriv]()
alias _glGetTextureImage_ptr = global_fn["glGetTextureImage", fptr_glGetTextureImage]()
alias _glGetTextureLevelParameterfv_ptr = global_fn["glGetTextureLevelParameterfv", fptr_glGetTextureLevelParameterfv]()
alias _glGetTextureLevelParameteriv_ptr = global_fn["glGetTextureLevelParameteriv", fptr_glGetTextureLevelParameteriv]()
alias _glGetTextureParameterIiv_ptr = global_fn["glGetTextureParameterIiv", fptr_glGetTextureParameterIiv]()
alias _glGetTextureParameterIuiv_ptr = global_fn["glGetTextureParameterIuiv", fptr_glGetTextureParameterIuiv]()
alias _glGetTextureParameterfv_ptr = global_fn["glGetTextureParameterfv", fptr_glGetTextureParameterfv]()
alias _glGetTextureParameteriv_ptr = global_fn["glGetTextureParameteriv", fptr_glGetTextureParameteriv]()
alias _glGetTextureSubImage_ptr = global_fn["glGetTextureSubImage", fptr_glGetTextureSubImage]()
alias _glGetTransformFeedbackVarying_ptr = global_fn["glGetTransformFeedbackVarying", fptr_glGetTransformFeedbackVarying]()
alias _glGetTransformFeedbacki64_v_ptr = global_fn["glGetTransformFeedbacki64_v", fptr_glGetTransformFeedbacki64_v]()
alias _glGetTransformFeedbacki_v_ptr = global_fn["glGetTransformFeedbacki_v", fptr_glGetTransformFeedbacki_v]()
alias _glGetTransformFeedbackiv_ptr = global_fn["glGetTransformFeedbackiv", fptr_glGetTransformFeedbackiv]()
alias _glGetUniformBlockIndex_ptr = global_fn["glGetUniformBlockIndex", fptr_glGetUniformBlockIndex]()
alias _glGetUniformIndices_ptr = global_fn["glGetUniformIndices", fptr_glGetUniformIndices]()
alias _glGetUniformLocation_ptr = global_fn["glGetUniformLocation", fptr_glGetUniformLocation]()
alias _glGetUniformSubroutineuiv_ptr = global_fn["glGetUniformSubroutineuiv", fptr_glGetUniformSubroutineuiv]()
alias _glGetUniformdv_ptr = global_fn["glGetUniformdv", fptr_glGetUniformdv]()
alias _glGetUniformfv_ptr = global_fn["glGetUniformfv", fptr_glGetUniformfv]()
alias _glGetUniformiv_ptr = global_fn["glGetUniformiv", fptr_glGetUniformiv]()
alias _glGetUniformuiv_ptr = global_fn["glGetUniformuiv", fptr_glGetUniformuiv]()
alias _glGetVertexArrayIndexed64iv_ptr = global_fn["glGetVertexArrayIndexed64iv", fptr_glGetVertexArrayIndexed64iv]()
alias _glGetVertexArrayIndexediv_ptr = global_fn["glGetVertexArrayIndexediv", fptr_glGetVertexArrayIndexediv]()
alias _glGetVertexArrayiv_ptr = global_fn["glGetVertexArrayiv", fptr_glGetVertexArrayiv]()
alias _glGetVertexAttribIiv_ptr = global_fn["glGetVertexAttribIiv", fptr_glGetVertexAttribIiv]()
alias _glGetVertexAttribIuiv_ptr = global_fn["glGetVertexAttribIuiv", fptr_glGetVertexAttribIuiv]()
alias _glGetVertexAttribLdv_ptr = global_fn["glGetVertexAttribLdv", fptr_glGetVertexAttribLdv]()
alias _glGetVertexAttribPointerv_ptr = global_fn["glGetVertexAttribPointerv", fptr_glGetVertexAttribPointerv]()
alias _glGetVertexAttribdv_ptr = global_fn["glGetVertexAttribdv", fptr_glGetVertexAttribdv]()
alias _glGetVertexAttribfv_ptr = global_fn["glGetVertexAttribfv", fptr_glGetVertexAttribfv]()
alias _glGetVertexAttribiv_ptr = global_fn["glGetVertexAttribiv", fptr_glGetVertexAttribiv]()
alias _glGetnColorTable_ptr = global_fn["glGetnColorTable", fptr_glGetnColorTable]()
alias _glGetnCompressedTexImage_ptr = global_fn["glGetnCompressedTexImage", fptr_glGetnCompressedTexImage]()
alias _glGetnConvolutionFilter_ptr = global_fn["glGetnConvolutionFilter", fptr_glGetnConvolutionFilter]()
alias _glGetnHistogram_ptr = global_fn["glGetnHistogram", fptr_glGetnHistogram]()
alias _glGetnMapdv_ptr = global_fn["glGetnMapdv", fptr_glGetnMapdv]()
alias _glGetnMapfv_ptr = global_fn["glGetnMapfv", fptr_glGetnMapfv]()
alias _glGetnMapiv_ptr = global_fn["glGetnMapiv", fptr_glGetnMapiv]()
alias _glGetnMinmax_ptr = global_fn["glGetnMinmax", fptr_glGetnMinmax]()
alias _glGetnPixelMapfv_ptr = global_fn["glGetnPixelMapfv", fptr_glGetnPixelMapfv]()
alias _glGetnPixelMapuiv_ptr = global_fn["glGetnPixelMapuiv", fptr_glGetnPixelMapuiv]()
alias _glGetnPixelMapusv_ptr = global_fn["glGetnPixelMapusv", fptr_glGetnPixelMapusv]()
alias _glGetnPolygonStipple_ptr = global_fn["glGetnPolygonStipple", fptr_glGetnPolygonStipple]()
alias _glGetnSeparableFilter_ptr = global_fn["glGetnSeparableFilter", fptr_glGetnSeparableFilter]()
alias _glGetnTexImage_ptr = global_fn["glGetnTexImage", fptr_glGetnTexImage]()
alias _glGetnUniformdv_ptr = global_fn["glGetnUniformdv", fptr_glGetnUniformdv]()
alias _glGetnUniformfv_ptr = global_fn["glGetnUniformfv", fptr_glGetnUniformfv]()
alias _glGetnUniformiv_ptr = global_fn["glGetnUniformiv", fptr_glGetnUniformiv]()
alias _glGetnUniformuiv_ptr = global_fn["glGetnUniformuiv", fptr_glGetnUniformuiv]()
alias _glHint_ptr = global_fn["glHint", fptr_glHint]()
alias _glInvalidateBufferData_ptr = global_fn["glInvalidateBufferData", fptr_glInvalidateBufferData]()
alias _glInvalidateBufferSubData_ptr = global_fn["glInvalidateBufferSubData", fptr_glInvalidateBufferSubData]()
alias _glInvalidateFramebuffer_ptr = global_fn["glInvalidateFramebuffer", fptr_glInvalidateFramebuffer]()
alias _glInvalidateNamedFramebufferData_ptr = global_fn["glInvalidateNamedFramebufferData", fptr_glInvalidateNamedFramebufferData]()
alias _glInvalidateNamedFramebufferSubData_ptr = global_fn["glInvalidateNamedFramebufferSubData", fptr_glInvalidateNamedFramebufferSubData]()
alias _glInvalidateSubFramebuffer_ptr = global_fn["glInvalidateSubFramebuffer", fptr_glInvalidateSubFramebuffer]()
alias _glInvalidateTexImage_ptr = global_fn["glInvalidateTexImage", fptr_glInvalidateTexImage]()
alias _glInvalidateTexSubImage_ptr = global_fn["glInvalidateTexSubImage", fptr_glInvalidateTexSubImage]()
alias _glIsBuffer_ptr = global_fn["glIsBuffer", fptr_glIsBuffer]()
alias _glIsEnabled_ptr = global_fn["glIsEnabled", fptr_glIsEnabled]()
alias _glIsEnabledi_ptr = global_fn["glIsEnabledi", fptr_glIsEnabledi]()
alias _glIsFramebuffer_ptr = global_fn["glIsFramebuffer", fptr_glIsFramebuffer]()
alias _glIsProgram_ptr = global_fn["glIsProgram", fptr_glIsProgram]()
alias _glIsProgramPipeline_ptr = global_fn["glIsProgramPipeline", fptr_glIsProgramPipeline]()
alias _glIsQuery_ptr = global_fn["glIsQuery", fptr_glIsQuery]()
alias _glIsRenderbuffer_ptr = global_fn["glIsRenderbuffer", fptr_glIsRenderbuffer]()
alias _glIsSampler_ptr = global_fn["glIsSampler", fptr_glIsSampler]()
alias _glIsShader_ptr = global_fn["glIsShader", fptr_glIsShader]()
alias _glIsSync_ptr = global_fn["glIsSync", fptr_glIsSync]()
alias _glIsTexture_ptr = global_fn["glIsTexture", fptr_glIsTexture]()
alias _glIsTransformFeedback_ptr = global_fn["glIsTransformFeedback", fptr_glIsTransformFeedback]()
alias _glIsVertexArray_ptr = global_fn["glIsVertexArray", fptr_glIsVertexArray]()
alias _glLineWidth_ptr = global_fn["glLineWidth", fptr_glLineWidth]()
alias _glLinkProgram_ptr = global_fn["glLinkProgram", fptr_glLinkProgram]()
alias _glLogicOp_ptr = global_fn["glLogicOp", fptr_glLogicOp]()
alias _glMapBuffer_ptr = global_fn["glMapBuffer", fptr_glMapBuffer]()
alias _glMapBufferRange_ptr = global_fn["glMapBufferRange", fptr_glMapBufferRange]()
alias _glMapNamedBuffer_ptr = global_fn["glMapNamedBuffer", fptr_glMapNamedBuffer]()
alias _glMapNamedBufferRange_ptr = global_fn["glMapNamedBufferRange", fptr_glMapNamedBufferRange]()
alias _glMemoryBarrier_ptr = global_fn["glMemoryBarrier", fptr_glMemoryBarrier]()
alias _glMemoryBarrierByRegion_ptr = global_fn["glMemoryBarrierByRegion", fptr_glMemoryBarrierByRegion]()
alias _glMinSampleShading_ptr = global_fn["glMinSampleShading", fptr_glMinSampleShading]()
alias _glMultiDrawArrays_ptr = global_fn["glMultiDrawArrays", fptr_glMultiDrawArrays]()
alias _glMultiDrawArraysIndirect_ptr = global_fn["glMultiDrawArraysIndirect", fptr_glMultiDrawArraysIndirect]()
alias _glMultiDrawArraysIndirectCount_ptr = global_fn["glMultiDrawArraysIndirectCount", fptr_glMultiDrawArraysIndirectCount]()
alias _glMultiDrawElements_ptr = global_fn["glMultiDrawElements", fptr_glMultiDrawElements]()
alias _glMultiDrawElementsBaseVertex_ptr = global_fn["glMultiDrawElementsBaseVertex", fptr_glMultiDrawElementsBaseVertex]()
alias _glMultiDrawElementsIndirect_ptr = global_fn["glMultiDrawElementsIndirect", fptr_glMultiDrawElementsIndirect]()
alias _glMultiDrawElementsIndirectCount_ptr = global_fn["glMultiDrawElementsIndirectCount", fptr_glMultiDrawElementsIndirectCount]()
alias _glMultiTexCoordP1ui_ptr = global_fn["glMultiTexCoordP1ui", fptr_glMultiTexCoordP1ui]()
alias _glMultiTexCoordP1uiv_ptr = global_fn["glMultiTexCoordP1uiv", fptr_glMultiTexCoordP1uiv]()
alias _glMultiTexCoordP2ui_ptr = global_fn["glMultiTexCoordP2ui", fptr_glMultiTexCoordP2ui]()
alias _glMultiTexCoordP2uiv_ptr = global_fn["glMultiTexCoordP2uiv", fptr_glMultiTexCoordP2uiv]()
alias _glMultiTexCoordP3ui_ptr = global_fn["glMultiTexCoordP3ui", fptr_glMultiTexCoordP3ui]()
alias _glMultiTexCoordP3uiv_ptr = global_fn["glMultiTexCoordP3uiv", fptr_glMultiTexCoordP3uiv]()
alias _glMultiTexCoordP4ui_ptr = global_fn["glMultiTexCoordP4ui", fptr_glMultiTexCoordP4ui]()
alias _glMultiTexCoordP4uiv_ptr = global_fn["glMultiTexCoordP4uiv", fptr_glMultiTexCoordP4uiv]()
alias _glNamedBufferData_ptr = global_fn["glNamedBufferData", fptr_glNamedBufferData]()
alias _glNamedBufferStorage_ptr = global_fn["glNamedBufferStorage", fptr_glNamedBufferStorage]()
alias _glNamedBufferSubData_ptr = global_fn["glNamedBufferSubData", fptr_glNamedBufferSubData]()
alias _glNamedFramebufferDrawBuffer_ptr = global_fn["glNamedFramebufferDrawBuffer", fptr_glNamedFramebufferDrawBuffer]()
alias _glNamedFramebufferDrawBuffers_ptr = global_fn["glNamedFramebufferDrawBuffers", fptr_glNamedFramebufferDrawBuffers]()
alias _glNamedFramebufferParameteri_ptr = global_fn["glNamedFramebufferParameteri", fptr_glNamedFramebufferParameteri]()
alias _glNamedFramebufferReadBuffer_ptr = global_fn["glNamedFramebufferReadBuffer", fptr_glNamedFramebufferReadBuffer]()
alias _glNamedFramebufferRenderbuffer_ptr = global_fn["glNamedFramebufferRenderbuffer", fptr_glNamedFramebufferRenderbuffer]()
alias _glNamedFramebufferTexture_ptr = global_fn["glNamedFramebufferTexture", fptr_glNamedFramebufferTexture]()
alias _glNamedFramebufferTextureLayer_ptr = global_fn["glNamedFramebufferTextureLayer", fptr_glNamedFramebufferTextureLayer]()
alias _glNamedRenderbufferStorage_ptr = global_fn["glNamedRenderbufferStorage", fptr_glNamedRenderbufferStorage]()
alias _glNamedRenderbufferStorageMultisample_ptr = global_fn["glNamedRenderbufferStorageMultisample", fptr_glNamedRenderbufferStorageMultisample]()
alias _glNormalP3ui_ptr = global_fn["glNormalP3ui", fptr_glNormalP3ui]()
alias _glNormalP3uiv_ptr = global_fn["glNormalP3uiv", fptr_glNormalP3uiv]()
alias _glObjectLabel_ptr = global_fn["glObjectLabel", fptr_glObjectLabel]()
alias _glObjectPtrLabel_ptr = global_fn["glObjectPtrLabel", fptr_glObjectPtrLabel]()
alias _glPatchParameterfv_ptr = global_fn["glPatchParameterfv", fptr_glPatchParameterfv]()
alias _glPatchParameteri_ptr = global_fn["glPatchParameteri", fptr_glPatchParameteri]()
alias _glPauseTransformFeedback_ptr = global_fn["glPauseTransformFeedback", fptr_glPauseTransformFeedback]()
alias _glPixelStoref_ptr = global_fn["glPixelStoref", fptr_glPixelStoref]()
alias _glPixelStorei_ptr = global_fn["glPixelStorei", fptr_glPixelStorei]()
alias _glPointParameterf_ptr = global_fn["glPointParameterf", fptr_glPointParameterf]()
alias _glPointParameterfv_ptr = global_fn["glPointParameterfv", fptr_glPointParameterfv]()
alias _glPointParameteri_ptr = global_fn["glPointParameteri", fptr_glPointParameteri]()
alias _glPointParameteriv_ptr = global_fn["glPointParameteriv", fptr_glPointParameteriv]()
alias _glPointSize_ptr = global_fn["glPointSize", fptr_glPointSize]()
alias _glPolygonMode_ptr = global_fn["glPolygonMode", fptr_glPolygonMode]()
alias _glPolygonOffset_ptr = global_fn["glPolygonOffset", fptr_glPolygonOffset]()
alias _glPolygonOffsetClamp_ptr = global_fn["glPolygonOffsetClamp", fptr_glPolygonOffsetClamp]()
alias _glPopDebugGroup_ptr = global_fn["glPopDebugGroup", fptr_glPopDebugGroup]()
alias _glPrimitiveRestartIndex_ptr = global_fn["glPrimitiveRestartIndex", fptr_glPrimitiveRestartIndex]()
alias _glProgramBinary_ptr = global_fn["glProgramBinary", fptr_glProgramBinary]()
alias _glProgramParameteri_ptr = global_fn["glProgramParameteri", fptr_glProgramParameteri]()
alias _glProgramUniform1d_ptr = global_fn["glProgramUniform1d", fptr_glProgramUniform1d]()
alias _glProgramUniform1dv_ptr = global_fn["glProgramUniform1dv", fptr_glProgramUniform1dv]()
alias _glProgramUniform1f_ptr = global_fn["glProgramUniform1f", fptr_glProgramUniform1f]()
alias _glProgramUniform1fv_ptr = global_fn["glProgramUniform1fv", fptr_glProgramUniform1fv]()
alias _glProgramUniform1i_ptr = global_fn["glProgramUniform1i", fptr_glProgramUniform1i]()
alias _glProgramUniform1iv_ptr = global_fn["glProgramUniform1iv", fptr_glProgramUniform1iv]()
alias _glProgramUniform1ui_ptr = global_fn["glProgramUniform1ui", fptr_glProgramUniform1ui]()
alias _glProgramUniform1uiv_ptr = global_fn["glProgramUniform1uiv", fptr_glProgramUniform1uiv]()
alias _glProgramUniform2d_ptr = global_fn["glProgramUniform2d", fptr_glProgramUniform2d]()
alias _glProgramUniform2dv_ptr = global_fn["glProgramUniform2dv", fptr_glProgramUniform2dv]()
alias _glProgramUniform2f_ptr = global_fn["glProgramUniform2f", fptr_glProgramUniform2f]()
alias _glProgramUniform2fv_ptr = global_fn["glProgramUniform2fv", fptr_glProgramUniform2fv]()
alias _glProgramUniform2i_ptr = global_fn["glProgramUniform2i", fptr_glProgramUniform2i]()
alias _glProgramUniform2iv_ptr = global_fn["glProgramUniform2iv", fptr_glProgramUniform2iv]()
alias _glProgramUniform2ui_ptr = global_fn["glProgramUniform2ui", fptr_glProgramUniform2ui]()
alias _glProgramUniform2uiv_ptr = global_fn["glProgramUniform2uiv", fptr_glProgramUniform2uiv]()
alias _glProgramUniform3d_ptr = global_fn["glProgramUniform3d", fptr_glProgramUniform3d]()
alias _glProgramUniform3dv_ptr = global_fn["glProgramUniform3dv", fptr_glProgramUniform3dv]()
alias _glProgramUniform3f_ptr = global_fn["glProgramUniform3f", fptr_glProgramUniform3f]()
alias _glProgramUniform3fv_ptr = global_fn["glProgramUniform3fv", fptr_glProgramUniform3fv]()
alias _glProgramUniform3i_ptr = global_fn["glProgramUniform3i", fptr_glProgramUniform3i]()
alias _glProgramUniform3iv_ptr = global_fn["glProgramUniform3iv", fptr_glProgramUniform3iv]()
alias _glProgramUniform3ui_ptr = global_fn["glProgramUniform3ui", fptr_glProgramUniform3ui]()
alias _glProgramUniform3uiv_ptr = global_fn["glProgramUniform3uiv", fptr_glProgramUniform3uiv]()
alias _glProgramUniform4d_ptr = global_fn["glProgramUniform4d", fptr_glProgramUniform4d]()
alias _glProgramUniform4dv_ptr = global_fn["glProgramUniform4dv", fptr_glProgramUniform4dv]()
alias _glProgramUniform4f_ptr = global_fn["glProgramUniform4f", fptr_glProgramUniform4f]()
alias _glProgramUniform4fv_ptr = global_fn["glProgramUniform4fv", fptr_glProgramUniform4fv]()
alias _glProgramUniform4i_ptr = global_fn["glProgramUniform4i", fptr_glProgramUniform4i]()
alias _glProgramUniform4iv_ptr = global_fn["glProgramUniform4iv", fptr_glProgramUniform4iv]()
alias _glProgramUniform4ui_ptr = global_fn["glProgramUniform4ui", fptr_glProgramUniform4ui]()
alias _glProgramUniform4uiv_ptr = global_fn["glProgramUniform4uiv", fptr_glProgramUniform4uiv]()
alias _glProgramUniformMatrix2dv_ptr = global_fn["glProgramUniformMatrix2dv", fptr_glProgramUniformMatrix2dv]()
alias _glProgramUniformMatrix2fv_ptr = global_fn["glProgramUniformMatrix2fv", fptr_glProgramUniformMatrix2fv]()
alias _glProgramUniformMatrix2x3dv_ptr = global_fn["glProgramUniformMatrix2x3dv", fptr_glProgramUniformMatrix2x3dv]()
alias _glProgramUniformMatrix2x3fv_ptr = global_fn["glProgramUniformMatrix2x3fv", fptr_glProgramUniformMatrix2x3fv]()
alias _glProgramUniformMatrix2x4dv_ptr = global_fn["glProgramUniformMatrix2x4dv", fptr_glProgramUniformMatrix2x4dv]()
alias _glProgramUniformMatrix2x4fv_ptr = global_fn["glProgramUniformMatrix2x4fv", fptr_glProgramUniformMatrix2x4fv]()
alias _glProgramUniformMatrix3dv_ptr = global_fn["glProgramUniformMatrix3dv", fptr_glProgramUniformMatrix3dv]()
alias _glProgramUniformMatrix3fv_ptr = global_fn["glProgramUniformMatrix3fv", fptr_glProgramUniformMatrix3fv]()
alias _glProgramUniformMatrix3x2dv_ptr = global_fn["glProgramUniformMatrix3x2dv", fptr_glProgramUniformMatrix3x2dv]()
alias _glProgramUniformMatrix3x2fv_ptr = global_fn["glProgramUniformMatrix3x2fv", fptr_glProgramUniformMatrix3x2fv]()
alias _glProgramUniformMatrix3x4dv_ptr = global_fn["glProgramUniformMatrix3x4dv", fptr_glProgramUniformMatrix3x4dv]()
alias _glProgramUniformMatrix3x4fv_ptr = global_fn["glProgramUniformMatrix3x4fv", fptr_glProgramUniformMatrix3x4fv]()
alias _glProgramUniformMatrix4dv_ptr = global_fn["glProgramUniformMatrix4dv", fptr_glProgramUniformMatrix4dv]()
alias _glProgramUniformMatrix4fv_ptr = global_fn["glProgramUniformMatrix4fv", fptr_glProgramUniformMatrix4fv]()
alias _glProgramUniformMatrix4x2dv_ptr = global_fn["glProgramUniformMatrix4x2dv", fptr_glProgramUniformMatrix4x2dv]()
alias _glProgramUniformMatrix4x2fv_ptr = global_fn["glProgramUniformMatrix4x2fv", fptr_glProgramUniformMatrix4x2fv]()
alias _glProgramUniformMatrix4x3dv_ptr = global_fn["glProgramUniformMatrix4x3dv", fptr_glProgramUniformMatrix4x3dv]()
alias _glProgramUniformMatrix4x3fv_ptr = global_fn["glProgramUniformMatrix4x3fv", fptr_glProgramUniformMatrix4x3fv]()
alias _glProvokingVertex_ptr = global_fn["glProvokingVertex", fptr_glProvokingVertex]()
alias _glPushDebugGroup_ptr = global_fn["glPushDebugGroup", fptr_glPushDebugGroup]()
alias _glQueryCounter_ptr = global_fn["glQueryCounter", fptr_glQueryCounter]()
alias _glReadBuffer_ptr = global_fn["glReadBuffer", fptr_glReadBuffer]()
alias _glReadPixels_ptr = global_fn["glReadPixels", fptr_glReadPixels]()
alias _glReadnPixels_ptr = global_fn["glReadnPixels", fptr_glReadnPixels]()
alias _glReleaseShaderCompiler_ptr = global_fn["glReleaseShaderCompiler", fptr_glReleaseShaderCompiler]()
alias _glRenderbufferStorage_ptr = global_fn["glRenderbufferStorage", fptr_glRenderbufferStorage]()
alias _glRenderbufferStorageMultisample_ptr = global_fn["glRenderbufferStorageMultisample", fptr_glRenderbufferStorageMultisample]()
alias _glResumeTransformFeedback_ptr = global_fn["glResumeTransformFeedback", fptr_glResumeTransformFeedback]()
alias _glSampleCoverage_ptr = global_fn["glSampleCoverage", fptr_glSampleCoverage]()
alias _glSampleMaski_ptr = global_fn["glSampleMaski", fptr_glSampleMaski]()
alias _glSamplerParameterIiv_ptr = global_fn["glSamplerParameterIiv", fptr_glSamplerParameterIiv]()
alias _glSamplerParameterIuiv_ptr = global_fn["glSamplerParameterIuiv", fptr_glSamplerParameterIuiv]()
alias _glSamplerParameterf_ptr = global_fn["glSamplerParameterf", fptr_glSamplerParameterf]()
alias _glSamplerParameterfv_ptr = global_fn["glSamplerParameterfv", fptr_glSamplerParameterfv]()
alias _glSamplerParameteri_ptr = global_fn["glSamplerParameteri", fptr_glSamplerParameteri]()
alias _glSamplerParameteriv_ptr = global_fn["glSamplerParameteriv", fptr_glSamplerParameteriv]()
alias _glScissor_ptr = global_fn["glScissor", fptr_glScissor]()
alias _glScissorArrayv_ptr = global_fn["glScissorArrayv", fptr_glScissorArrayv]()
alias _glScissorIndexed_ptr = global_fn["glScissorIndexed", fptr_glScissorIndexed]()
alias _glScissorIndexedv_ptr = global_fn["glScissorIndexedv", fptr_glScissorIndexedv]()
alias _glSecondaryColorP3ui_ptr = global_fn["glSecondaryColorP3ui", fptr_glSecondaryColorP3ui]()
alias _glSecondaryColorP3uiv_ptr = global_fn["glSecondaryColorP3uiv", fptr_glSecondaryColorP3uiv]()
alias _glShaderBinary_ptr = global_fn["glShaderBinary", fptr_glShaderBinary]()
alias _glShaderSource_ptr = global_fn["glShaderSource", fptr_glShaderSource]()
alias _glShaderStorageBlockBinding_ptr = global_fn["glShaderStorageBlockBinding", fptr_glShaderStorageBlockBinding]()
alias _glSpecializeShader_ptr = global_fn["glSpecializeShader", fptr_glSpecializeShader]()
alias _glStencilFunc_ptr = global_fn["glStencilFunc", fptr_glStencilFunc]()
alias _glStencilFuncSeparate_ptr = global_fn["glStencilFuncSeparate", fptr_glStencilFuncSeparate]()
alias _glStencilMask_ptr = global_fn["glStencilMask", fptr_glStencilMask]()
alias _glStencilMaskSeparate_ptr = global_fn["glStencilMaskSeparate", fptr_glStencilMaskSeparate]()
alias _glStencilOp_ptr = global_fn["glStencilOp", fptr_glStencilOp]()
alias _glStencilOpSeparate_ptr = global_fn["glStencilOpSeparate", fptr_glStencilOpSeparate]()
alias _glTexBuffer_ptr = global_fn["glTexBuffer", fptr_glTexBuffer]()
alias _glTexBufferRange_ptr = global_fn["glTexBufferRange", fptr_glTexBufferRange]()
alias _glTexCoordP1ui_ptr = global_fn["glTexCoordP1ui", fptr_glTexCoordP1ui]()
alias _glTexCoordP1uiv_ptr = global_fn["glTexCoordP1uiv", fptr_glTexCoordP1uiv]()
alias _glTexCoordP2ui_ptr = global_fn["glTexCoordP2ui", fptr_glTexCoordP2ui]()
alias _glTexCoordP2uiv_ptr = global_fn["glTexCoordP2uiv", fptr_glTexCoordP2uiv]()
alias _glTexCoordP3ui_ptr = global_fn["glTexCoordP3ui", fptr_glTexCoordP3ui]()
alias _glTexCoordP3uiv_ptr = global_fn["glTexCoordP3uiv", fptr_glTexCoordP3uiv]()
alias _glTexCoordP4ui_ptr = global_fn["glTexCoordP4ui", fptr_glTexCoordP4ui]()
alias _glTexCoordP4uiv_ptr = global_fn["glTexCoordP4uiv", fptr_glTexCoordP4uiv]()
alias _glTexImage1D_ptr = global_fn["glTexImage1D", fptr_glTexImage1D]()
alias _glTexImage2D_ptr = global_fn["glTexImage2D", fptr_glTexImage2D]()
alias _glTexImage2DMultisample_ptr = global_fn["glTexImage2DMultisample", fptr_glTexImage2DMultisample]()
alias _glTexImage3D_ptr = global_fn["glTexImage3D", fptr_glTexImage3D]()
alias _glTexImage3DMultisample_ptr = global_fn["glTexImage3DMultisample", fptr_glTexImage3DMultisample]()
alias _glTexParameterIiv_ptr = global_fn["glTexParameterIiv", fptr_glTexParameterIiv]()
alias _glTexParameterIuiv_ptr = global_fn["glTexParameterIuiv", fptr_glTexParameterIuiv]()
alias _glTexParameterf_ptr = global_fn["glTexParameterf", fptr_glTexParameterf]()
alias _glTexParameterfv_ptr = global_fn["glTexParameterfv", fptr_glTexParameterfv]()
alias _glTexParameteri_ptr = global_fn["glTexParameteri", fptr_glTexParameteri]()
alias _glTexParameteriv_ptr = global_fn["glTexParameteriv", fptr_glTexParameteriv]()
alias _glTexStorage1D_ptr = global_fn["glTexStorage1D", fptr_glTexStorage1D]()
alias _glTexStorage2D_ptr = global_fn["glTexStorage2D", fptr_glTexStorage2D]()
alias _glTexStorage2DMultisample_ptr = global_fn["glTexStorage2DMultisample", fptr_glTexStorage2DMultisample]()
alias _glTexStorage3D_ptr = global_fn["glTexStorage3D", fptr_glTexStorage3D]()
alias _glTexStorage3DMultisample_ptr = global_fn["glTexStorage3DMultisample", fptr_glTexStorage3DMultisample]()
alias _glTexSubImage1D_ptr = global_fn["glTexSubImage1D", fptr_glTexSubImage1D]()
alias _glTexSubImage2D_ptr = global_fn["glTexSubImage2D", fptr_glTexSubImage2D]()
alias _glTexSubImage3D_ptr = global_fn["glTexSubImage3D", fptr_glTexSubImage3D]()
alias _glTextureBarrier_ptr = global_fn["glTextureBarrier", fptr_glTextureBarrier]()
alias _glTextureBuffer_ptr = global_fn["glTextureBuffer", fptr_glTextureBuffer]()
alias _glTextureBufferRange_ptr = global_fn["glTextureBufferRange", fptr_glTextureBufferRange]()
alias _glTextureParameterIiv_ptr = global_fn["glTextureParameterIiv", fptr_glTextureParameterIiv]()
alias _glTextureParameterIuiv_ptr = global_fn["glTextureParameterIuiv", fptr_glTextureParameterIuiv]()
alias _glTextureParameterf_ptr = global_fn["glTextureParameterf", fptr_glTextureParameterf]()
alias _glTextureParameterfv_ptr = global_fn["glTextureParameterfv", fptr_glTextureParameterfv]()
alias _glTextureParameteri_ptr = global_fn["glTextureParameteri", fptr_glTextureParameteri]()
alias _glTextureParameteriv_ptr = global_fn["glTextureParameteriv", fptr_glTextureParameteriv]()
alias _glTextureStorage1D_ptr = global_fn["glTextureStorage1D", fptr_glTextureStorage1D]()
alias _glTextureStorage2D_ptr = global_fn["glTextureStorage2D", fptr_glTextureStorage2D]()
alias _glTextureStorage2DMultisample_ptr = global_fn["glTextureStorage2DMultisample", fptr_glTextureStorage2DMultisample]()
alias _glTextureStorage3D_ptr = global_fn["glTextureStorage3D", fptr_glTextureStorage3D]()
alias _glTextureStorage3DMultisample_ptr = global_fn["glTextureStorage3DMultisample", fptr_glTextureStorage3DMultisample]()
alias _glTextureSubImage1D_ptr = global_fn["glTextureSubImage1D", fptr_glTextureSubImage1D]()
alias _glTextureSubImage2D_ptr = global_fn["glTextureSubImage2D", fptr_glTextureSubImage2D]()
alias _glTextureSubImage3D_ptr = global_fn["glTextureSubImage3D", fptr_glTextureSubImage3D]()
alias _glTextureView_ptr = global_fn["glTextureView", fptr_glTextureView]()
alias _glTransformFeedbackBufferBase_ptr = global_fn["glTransformFeedbackBufferBase", fptr_glTransformFeedbackBufferBase]()
alias _glTransformFeedbackBufferRange_ptr = global_fn["glTransformFeedbackBufferRange", fptr_glTransformFeedbackBufferRange]()
alias _glTransformFeedbackVaryings_ptr = global_fn["glTransformFeedbackVaryings", fptr_glTransformFeedbackVaryings]()
alias _glUniform1d_ptr = global_fn["glUniform1d", fptr_glUniform1d]()
alias _glUniform1dv_ptr = global_fn["glUniform1dv", fptr_glUniform1dv]()
alias _glUniform1f_ptr = global_fn["glUniform1f", fptr_glUniform1f]()
alias _glUniform1fv_ptr = global_fn["glUniform1fv", fptr_glUniform1fv]()
alias _glUniform1i_ptr = global_fn["glUniform1i", fptr_glUniform1i]()
alias _glUniform1iv_ptr = global_fn["glUniform1iv", fptr_glUniform1iv]()
alias _glUniform1ui_ptr = global_fn["glUniform1ui", fptr_glUniform1ui]()
alias _glUniform1uiv_ptr = global_fn["glUniform1uiv", fptr_glUniform1uiv]()
alias _glUniform2d_ptr = global_fn["glUniform2d", fptr_glUniform2d]()
alias _glUniform2dv_ptr = global_fn["glUniform2dv", fptr_glUniform2dv]()
alias _glUniform2f_ptr = global_fn["glUniform2f", fptr_glUniform2f]()
alias _glUniform2fv_ptr = global_fn["glUniform2fv", fptr_glUniform2fv]()
alias _glUniform2i_ptr = global_fn["glUniform2i", fptr_glUniform2i]()
alias _glUniform2iv_ptr = global_fn["glUniform2iv", fptr_glUniform2iv]()
alias _glUniform2ui_ptr = global_fn["glUniform2ui", fptr_glUniform2ui]()
alias _glUniform2uiv_ptr = global_fn["glUniform2uiv", fptr_glUniform2uiv]()
alias _glUniform3d_ptr = global_fn["glUniform3d", fptr_glUniform3d]()
alias _glUniform3dv_ptr = global_fn["glUniform3dv", fptr_glUniform3dv]()
alias _glUniform3f_ptr = global_fn["glUniform3f", fptr_glUniform3f]()
alias _glUniform3fv_ptr = global_fn["glUniform3fv", fptr_glUniform3fv]()
alias _glUniform3i_ptr = global_fn["glUniform3i", fptr_glUniform3i]()
alias _glUniform3iv_ptr = global_fn["glUniform3iv", fptr_glUniform3iv]()
alias _glUniform3ui_ptr = global_fn["glUniform3ui", fptr_glUniform3ui]()
alias _glUniform3uiv_ptr = global_fn["glUniform3uiv", fptr_glUniform3uiv]()
alias _glUniform4d_ptr = global_fn["glUniform4d", fptr_glUniform4d]()
alias _glUniform4dv_ptr = global_fn["glUniform4dv", fptr_glUniform4dv]()
alias _glUniform4f_ptr = global_fn["glUniform4f", fptr_glUniform4f]()
alias _glUniform4fv_ptr = global_fn["glUniform4fv", fptr_glUniform4fv]()
alias _glUniform4i_ptr = global_fn["glUniform4i", fptr_glUniform4i]()
alias _glUniform4iv_ptr = global_fn["glUniform4iv", fptr_glUniform4iv]()
alias _glUniform4ui_ptr = global_fn["glUniform4ui", fptr_glUniform4ui]()
alias _glUniform4uiv_ptr = global_fn["glUniform4uiv", fptr_glUniform4uiv]()
alias _glUniformBlockBinding_ptr = global_fn["glUniformBlockBinding", fptr_glUniformBlockBinding]()
alias _glUniformMatrix2dv_ptr = global_fn["glUniformMatrix2dv", fptr_glUniformMatrix2dv]()
alias _glUniformMatrix2fv_ptr = global_fn["glUniformMatrix2fv", fptr_glUniformMatrix2fv]()
alias _glUniformMatrix2x3dv_ptr = global_fn["glUniformMatrix2x3dv", fptr_glUniformMatrix2x3dv]()
alias _glUniformMatrix2x3fv_ptr = global_fn["glUniformMatrix2x3fv", fptr_glUniformMatrix2x3fv]()
alias _glUniformMatrix2x4dv_ptr = global_fn["glUniformMatrix2x4dv", fptr_glUniformMatrix2x4dv]()
alias _glUniformMatrix2x4fv_ptr = global_fn["glUniformMatrix2x4fv", fptr_glUniformMatrix2x4fv]()
alias _glUniformMatrix3dv_ptr = global_fn["glUniformMatrix3dv", fptr_glUniformMatrix3dv]()
alias _glUniformMatrix3fv_ptr = global_fn["glUniformMatrix3fv", fptr_glUniformMatrix3fv]()
alias _glUniformMatrix3x2dv_ptr = global_fn["glUniformMatrix3x2dv", fptr_glUniformMatrix3x2dv]()
alias _glUniformMatrix3x2fv_ptr = global_fn["glUniformMatrix3x2fv", fptr_glUniformMatrix3x2fv]()
alias _glUniformMatrix3x4dv_ptr = global_fn["glUniformMatrix3x4dv", fptr_glUniformMatrix3x4dv]()
alias _glUniformMatrix3x4fv_ptr = global_fn["glUniformMatrix3x4fv", fptr_glUniformMatrix3x4fv]()
alias _glUniformMatrix4dv_ptr = global_fn["glUniformMatrix4dv", fptr_glUniformMatrix4dv]()
alias _glUniformMatrix4fv_ptr = global_fn["glUniformMatrix4fv", fptr_glUniformMatrix4fv]()
alias _glUniformMatrix4x2dv_ptr = global_fn["glUniformMatrix4x2dv", fptr_glUniformMatrix4x2dv]()
alias _glUniformMatrix4x2fv_ptr = global_fn["glUniformMatrix4x2fv", fptr_glUniformMatrix4x2fv]()
alias _glUniformMatrix4x3dv_ptr = global_fn["glUniformMatrix4x3dv", fptr_glUniformMatrix4x3dv]()
alias _glUniformMatrix4x3fv_ptr = global_fn["glUniformMatrix4x3fv", fptr_glUniformMatrix4x3fv]()
alias _glUniformSubroutinesuiv_ptr = global_fn["glUniformSubroutinesuiv", fptr_glUniformSubroutinesuiv]()
alias _glUnmapBuffer_ptr = global_fn["glUnmapBuffer", fptr_glUnmapBuffer]()
alias _glUnmapNamedBuffer_ptr = global_fn["glUnmapNamedBuffer", fptr_glUnmapNamedBuffer]()
alias _glUseProgram_ptr = global_fn["glUseProgram", fptr_glUseProgram]()
alias _glUseProgramStages_ptr = global_fn["glUseProgramStages", fptr_glUseProgramStages]()
alias _glValidateProgram_ptr = global_fn["glValidateProgram", fptr_glValidateProgram]()
alias _glValidateProgramPipeline_ptr = global_fn["glValidateProgramPipeline", fptr_glValidateProgramPipeline]()
alias _glVertexArrayAttribBinding_ptr = global_fn["glVertexArrayAttribBinding", fptr_glVertexArrayAttribBinding]()
alias _glVertexArrayAttribFormat_ptr = global_fn["glVertexArrayAttribFormat", fptr_glVertexArrayAttribFormat]()
alias _glVertexArrayAttribIFormat_ptr = global_fn["glVertexArrayAttribIFormat", fptr_glVertexArrayAttribIFormat]()
alias _glVertexArrayAttribLFormat_ptr = global_fn["glVertexArrayAttribLFormat", fptr_glVertexArrayAttribLFormat]()
alias _glVertexArrayBindingDivisor_ptr = global_fn["glVertexArrayBindingDivisor", fptr_glVertexArrayBindingDivisor]()
alias _glVertexArrayElementBuffer_ptr = global_fn["glVertexArrayElementBuffer", fptr_glVertexArrayElementBuffer]()
alias _glVertexArrayVertexBuffer_ptr = global_fn["glVertexArrayVertexBuffer", fptr_glVertexArrayVertexBuffer]()
alias _glVertexArrayVertexBuffers_ptr = global_fn["glVertexArrayVertexBuffers", fptr_glVertexArrayVertexBuffers]()
alias _glVertexAttrib1d_ptr = global_fn["glVertexAttrib1d", fptr_glVertexAttrib1d]()
alias _glVertexAttrib1dv_ptr = global_fn["glVertexAttrib1dv", fptr_glVertexAttrib1dv]()
alias _glVertexAttrib1f_ptr = global_fn["glVertexAttrib1f", fptr_glVertexAttrib1f]()
alias _glVertexAttrib1fv_ptr = global_fn["glVertexAttrib1fv", fptr_glVertexAttrib1fv]()
alias _glVertexAttrib1s_ptr = global_fn["glVertexAttrib1s", fptr_glVertexAttrib1s]()
alias _glVertexAttrib1sv_ptr = global_fn["glVertexAttrib1sv", fptr_glVertexAttrib1sv]()
alias _glVertexAttrib2d_ptr = global_fn["glVertexAttrib2d", fptr_glVertexAttrib2d]()
alias _glVertexAttrib2dv_ptr = global_fn["glVertexAttrib2dv", fptr_glVertexAttrib2dv]()
alias _glVertexAttrib2f_ptr = global_fn["glVertexAttrib2f", fptr_glVertexAttrib2f]()
alias _glVertexAttrib2fv_ptr = global_fn["glVertexAttrib2fv", fptr_glVertexAttrib2fv]()
alias _glVertexAttrib2s_ptr = global_fn["glVertexAttrib2s", fptr_glVertexAttrib2s]()
alias _glVertexAttrib2sv_ptr = global_fn["glVertexAttrib2sv", fptr_glVertexAttrib2sv]()
alias _glVertexAttrib3d_ptr = global_fn["glVertexAttrib3d", fptr_glVertexAttrib3d]()
alias _glVertexAttrib3dv_ptr = global_fn["glVertexAttrib3dv", fptr_glVertexAttrib3dv]()
alias _glVertexAttrib3f_ptr = global_fn["glVertexAttrib3f", fptr_glVertexAttrib3f]()
alias _glVertexAttrib3fv_ptr = global_fn["glVertexAttrib3fv", fptr_glVertexAttrib3fv]()
alias _glVertexAttrib3s_ptr = global_fn["glVertexAttrib3s", fptr_glVertexAttrib3s]()
alias _glVertexAttrib3sv_ptr = global_fn["glVertexAttrib3sv", fptr_glVertexAttrib3sv]()
alias _glVertexAttrib4Nbv_ptr = global_fn["glVertexAttrib4Nbv", fptr_glVertexAttrib4Nbv]()
alias _glVertexAttrib4Niv_ptr = global_fn["glVertexAttrib4Niv", fptr_glVertexAttrib4Niv]()
alias _glVertexAttrib4Nsv_ptr = global_fn["glVertexAttrib4Nsv", fptr_glVertexAttrib4Nsv]()
alias _glVertexAttrib4Nub_ptr = global_fn["glVertexAttrib4Nub", fptr_glVertexAttrib4Nub]()
alias _glVertexAttrib4Nubv_ptr = global_fn["glVertexAttrib4Nubv", fptr_glVertexAttrib4Nubv]()
alias _glVertexAttrib4Nuiv_ptr = global_fn["glVertexAttrib4Nuiv", fptr_glVertexAttrib4Nuiv]()
alias _glVertexAttrib4Nusv_ptr = global_fn["glVertexAttrib4Nusv", fptr_glVertexAttrib4Nusv]()
alias _glVertexAttrib4bv_ptr = global_fn["glVertexAttrib4bv", fptr_glVertexAttrib4bv]()
alias _glVertexAttrib4d_ptr = global_fn["glVertexAttrib4d", fptr_glVertexAttrib4d]()
alias _glVertexAttrib4dv_ptr = global_fn["glVertexAttrib4dv", fptr_glVertexAttrib4dv]()
alias _glVertexAttrib4f_ptr = global_fn["glVertexAttrib4f", fptr_glVertexAttrib4f]()
alias _glVertexAttrib4fv_ptr = global_fn["glVertexAttrib4fv", fptr_glVertexAttrib4fv]()
alias _glVertexAttrib4iv_ptr = global_fn["glVertexAttrib4iv", fptr_glVertexAttrib4iv]()
alias _glVertexAttrib4s_ptr = global_fn["glVertexAttrib4s", fptr_glVertexAttrib4s]()
alias _glVertexAttrib4sv_ptr = global_fn["glVertexAttrib4sv", fptr_glVertexAttrib4sv]()
alias _glVertexAttrib4ubv_ptr = global_fn["glVertexAttrib4ubv", fptr_glVertexAttrib4ubv]()
alias _glVertexAttrib4uiv_ptr = global_fn["glVertexAttrib4uiv", fptr_glVertexAttrib4uiv]()
alias _glVertexAttrib4usv_ptr = global_fn["glVertexAttrib4usv", fptr_glVertexAttrib4usv]()
alias _glVertexAttribBinding_ptr = global_fn["glVertexAttribBinding", fptr_glVertexAttribBinding]()
alias _glVertexAttribDivisor_ptr = global_fn["glVertexAttribDivisor", fptr_glVertexAttribDivisor]()
alias _glVertexAttribFormat_ptr = global_fn["glVertexAttribFormat", fptr_glVertexAttribFormat]()
alias _glVertexAttribI1i_ptr = global_fn["glVertexAttribI1i", fptr_glVertexAttribI1i]()
alias _glVertexAttribI1iv_ptr = global_fn["glVertexAttribI1iv", fptr_glVertexAttribI1iv]()
alias _glVertexAttribI1ui_ptr = global_fn["glVertexAttribI1ui", fptr_glVertexAttribI1ui]()
alias _glVertexAttribI1uiv_ptr = global_fn["glVertexAttribI1uiv", fptr_glVertexAttribI1uiv]()
alias _glVertexAttribI2i_ptr = global_fn["glVertexAttribI2i", fptr_glVertexAttribI2i]()
alias _glVertexAttribI2iv_ptr = global_fn["glVertexAttribI2iv", fptr_glVertexAttribI2iv]()
alias _glVertexAttribI2ui_ptr = global_fn["glVertexAttribI2ui", fptr_glVertexAttribI2ui]()
alias _glVertexAttribI2uiv_ptr = global_fn["glVertexAttribI2uiv", fptr_glVertexAttribI2uiv]()
alias _glVertexAttribI3i_ptr = global_fn["glVertexAttribI3i", fptr_glVertexAttribI3i]()
alias _glVertexAttribI3iv_ptr = global_fn["glVertexAttribI3iv", fptr_glVertexAttribI3iv]()
alias _glVertexAttribI3ui_ptr = global_fn["glVertexAttribI3ui", fptr_glVertexAttribI3ui]()
alias _glVertexAttribI3uiv_ptr = global_fn["glVertexAttribI3uiv", fptr_glVertexAttribI3uiv]()
alias _glVertexAttribI4bv_ptr = global_fn["glVertexAttribI4bv", fptr_glVertexAttribI4bv]()
alias _glVertexAttribI4i_ptr = global_fn["glVertexAttribI4i", fptr_glVertexAttribI4i]()
alias _glVertexAttribI4iv_ptr = global_fn["glVertexAttribI4iv", fptr_glVertexAttribI4iv]()
alias _glVertexAttribI4sv_ptr = global_fn["glVertexAttribI4sv", fptr_glVertexAttribI4sv]()
alias _glVertexAttribI4ubv_ptr = global_fn["glVertexAttribI4ubv", fptr_glVertexAttribI4ubv]()
alias _glVertexAttribI4ui_ptr = global_fn["glVertexAttribI4ui", fptr_glVertexAttribI4ui]()
alias _glVertexAttribI4uiv_ptr = global_fn["glVertexAttribI4uiv", fptr_glVertexAttribI4uiv]()
alias _glVertexAttribI4usv_ptr = global_fn["glVertexAttribI4usv", fptr_glVertexAttribI4usv]()
alias _glVertexAttribIFormat_ptr = global_fn["glVertexAttribIFormat", fptr_glVertexAttribIFormat]()
alias _glVertexAttribIPointer_ptr = global_fn["glVertexAttribIPointer", fptr_glVertexAttribIPointer]()
alias _glVertexAttribL1d_ptr = global_fn["glVertexAttribL1d", fptr_glVertexAttribL1d]()
alias _glVertexAttribL1dv_ptr = global_fn["glVertexAttribL1dv", fptr_glVertexAttribL1dv]()
alias _glVertexAttribL2d_ptr = global_fn["glVertexAttribL2d", fptr_glVertexAttribL2d]()
alias _glVertexAttribL2dv_ptr = global_fn["glVertexAttribL2dv", fptr_glVertexAttribL2dv]()
alias _glVertexAttribL3d_ptr = global_fn["glVertexAttribL3d", fptr_glVertexAttribL3d]()
alias _glVertexAttribL3dv_ptr = global_fn["glVertexAttribL3dv", fptr_glVertexAttribL3dv]()
alias _glVertexAttribL4d_ptr = global_fn["glVertexAttribL4d", fptr_glVertexAttribL4d]()
alias _glVertexAttribL4dv_ptr = global_fn["glVertexAttribL4dv", fptr_glVertexAttribL4dv]()
alias _glVertexAttribLFormat_ptr = global_fn["glVertexAttribLFormat", fptr_glVertexAttribLFormat]()
alias _glVertexAttribLPointer_ptr = global_fn["glVertexAttribLPointer", fptr_glVertexAttribLPointer]()
alias _glVertexAttribP1ui_ptr = global_fn["glVertexAttribP1ui", fptr_glVertexAttribP1ui]()
alias _glVertexAttribP1uiv_ptr = global_fn["glVertexAttribP1uiv", fptr_glVertexAttribP1uiv]()
alias _glVertexAttribP2ui_ptr = global_fn["glVertexAttribP2ui", fptr_glVertexAttribP2ui]()
alias _glVertexAttribP2uiv_ptr = global_fn["glVertexAttribP2uiv", fptr_glVertexAttribP2uiv]()
alias _glVertexAttribP3ui_ptr = global_fn["glVertexAttribP3ui", fptr_glVertexAttribP3ui]()
alias _glVertexAttribP3uiv_ptr = global_fn["glVertexAttribP3uiv", fptr_glVertexAttribP3uiv]()
alias _glVertexAttribP4ui_ptr = global_fn["glVertexAttribP4ui", fptr_glVertexAttribP4ui]()
alias _glVertexAttribP4uiv_ptr = global_fn["glVertexAttribP4uiv", fptr_glVertexAttribP4uiv]()
alias _glVertexAttribPointer_ptr = global_fn["glVertexAttribPointer", fptr_glVertexAttribPointer]()
alias _glVertexBindingDivisor_ptr = global_fn["glVertexBindingDivisor", fptr_glVertexBindingDivisor]()
alias _glVertexP2ui_ptr = global_fn["glVertexP2ui", fptr_glVertexP2ui]()
alias _glVertexP2uiv_ptr = global_fn["glVertexP2uiv", fptr_glVertexP2uiv]()
alias _glVertexP3ui_ptr = global_fn["glVertexP3ui", fptr_glVertexP3ui]()
alias _glVertexP3uiv_ptr = global_fn["glVertexP3uiv", fptr_glVertexP3uiv]()
alias _glVertexP4ui_ptr = global_fn["glVertexP4ui", fptr_glVertexP4ui]()
alias _glVertexP4uiv_ptr = global_fn["glVertexP4uiv", fptr_glVertexP4uiv]()
alias _glViewport_ptr = global_fn["glViewport", fptr_glViewport]()
alias _glViewportArrayv_ptr = global_fn["glViewportArrayv", fptr_glViewportArrayv]()
alias _glViewportIndexedf_ptr = global_fn["glViewportIndexedf", fptr_glViewportIndexedf]()
alias _glViewportIndexedfv_ptr = global_fn["glViewportIndexedfv", fptr_glViewportIndexedfv]()
alias _glWaitSync_ptr = global_fn["glWaitSync", fptr_glWaitSync]()


@always_inline
fn active_shader_program(pipeline: GLuint, program: GLuint):
    return _glActiveShaderProgram_ptr.get_or_create_ptr()[](pipeline, program)


@always_inline
fn active_texture(texture: TextureUnit):
    return _glActiveTexture_ptr.get_or_create_ptr()[](texture)


@always_inline
fn attach_shader(program: GLuint, shader: GLuint):
    return _glAttachShader_ptr.get_or_create_ptr()[](program, shader)


@always_inline
fn begin_conditional_render(id: GLuint, mode: ConditionalRenderMode):
    return _glBeginConditionalRender_ptr.get_or_create_ptr()[](id, mode)


@always_inline
fn begin_query(target: QueryTarget, id: GLuint):
    return _glBeginQuery_ptr.get_or_create_ptr()[](target, id)


@always_inline
fn begin_query_indexed(target: QueryTarget, index: GLuint, id: GLuint):
    return _glBeginQueryIndexed_ptr.get_or_create_ptr()[](target, index, id)


@always_inline
fn begin_transform_feedback(primitive_mode: PrimitiveType):
    return _glBeginTransformFeedback_ptr.get_or_create_ptr()[](primitive_mode)


@always_inline
fn bind_attrib_location(program: GLuint, index: GLuint, owned name: String):
    return _glBindAttribLocation_ptr.get_or_create_ptr()[](program, index, name.unsafe_cstr_ptr())


@always_inline
fn bind_buffer(target: BufferTargetARB, buffer: GLuint):
    return _glBindBuffer_ptr.get_or_create_ptr()[](target, buffer)


@always_inline
fn bind_buffer_base(target: BufferTargetARB, index: GLuint, buffer: GLuint):
    return _glBindBufferBase_ptr.get_or_create_ptr()[](target, index, buffer)


@always_inline
fn bind_buffer_range(target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
    return _glBindBufferRange_ptr.get_or_create_ptr()[](target, index, buffer, offset, size)


@always_inline
fn bind_buffers_base(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False]):
    return _glBindBuffersBase_ptr.get_or_create_ptr()[](target, first, count, buffers)


@always_inline
fn bind_buffers_range(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], sizes: Ptr[GLsizeiptr, mut=False]):
    return _glBindBuffersRange_ptr.get_or_create_ptr()[](target, first, count, buffers, offsets, sizes)


@always_inline
fn bind_frag_data_location(program: GLuint, color: GLuint, owned name: String):
    return _glBindFragDataLocation_ptr.get_or_create_ptr()[](program, color, name.unsafe_cstr_ptr())


@always_inline
fn bind_frag_data_location_indexed(program: GLuint, color_number: GLuint, index: GLuint, owned name: String):
    return _glBindFragDataLocationIndexed_ptr.get_or_create_ptr()[](program, color_number, index, name.unsafe_cstr_ptr())


@always_inline
fn bind_framebuffer(target: FramebufferTarget, framebuffer: GLuint):
    return _glBindFramebuffer_ptr.get_or_create_ptr()[](target, framebuffer)


@always_inline
fn bind_image_texture(unit: GLuint, texture: GLuint, level: GLint, layered: Bool, layer: GLint, access: BufferAccessARB, format: InternalFormat):
    return _glBindImageTexture_ptr.get_or_create_ptr()[](unit, texture, level, GLboolean(Int(layered)), layer, access, format)


@always_inline
fn bind_image_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=False]):
    return _glBindImageTextures_ptr.get_or_create_ptr()[](first, count, textures)


@always_inline
fn bind_program_pipeline(pipeline: GLuint):
    return _glBindProgramPipeline_ptr.get_or_create_ptr()[](pipeline)


@always_inline
fn bind_renderbuffer(target: RenderbufferTarget, renderbuffer: GLuint):
    return _glBindRenderbuffer_ptr.get_or_create_ptr()[](target, renderbuffer)


@always_inline
fn bind_sampler(unit: GLuint, sampler: GLuint):
    return _glBindSampler_ptr.get_or_create_ptr()[](unit, sampler)


@always_inline
fn bind_samplers(first: GLuint, count: GLsizei, samplers: Ptr[GLuint, mut=False]):
    return _glBindSamplers_ptr.get_or_create_ptr()[](first, count, samplers)


@always_inline
fn bind_texture(target: TextureTarget, texture: GLuint):
    return _glBindTexture_ptr.get_or_create_ptr()[](target, texture)


@always_inline
fn bind_texture_unit(unit: GLuint, texture: GLuint):
    return _glBindTextureUnit_ptr.get_or_create_ptr()[](unit, texture)


@always_inline
fn bind_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=False]):
    return _glBindTextures_ptr.get_or_create_ptr()[](first, count, textures)


@always_inline
fn bind_transform_feedback(target: BindTransformFeedbackTarget, id: GLuint):
    return _glBindTransformFeedback_ptr.get_or_create_ptr()[](target, id)


@always_inline
fn bind_vertex_array(array: GLuint):
    return _glBindVertexArray_ptr.get_or_create_ptr()[](array)


@always_inline
fn bind_vertex_buffer(bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
    return _glBindVertexBuffer_ptr.get_or_create_ptr()[](bindingindex, buffer, offset, stride)


@always_inline
fn bind_vertex_buffers(first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], strides: Ptr[GLsizei, mut=False]):
    return _glBindVertexBuffers_ptr.get_or_create_ptr()[](first, count, buffers, offsets, strides)


@always_inline
fn blend_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
    return _glBlendColor_ptr.get_or_create_ptr()[](red, green, blue, alpha)


@always_inline
fn blend_equation(mode: BlendEquationModeEXT):
    return _glBlendEquation_ptr.get_or_create_ptr()[](mode)


@always_inline
fn blend_equation_separate(mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT):
    return _glBlendEquationSeparate_ptr.get_or_create_ptr()[](mode_rgb, mode_alpha)


@always_inline
fn blend_equation_separatei(buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT):
    return _glBlendEquationSeparatei_ptr.get_or_create_ptr()[](buf, mode_rgb, mode_alpha)


@always_inline
fn blend_equationi(buf: GLuint, mode: BlendEquationModeEXT):
    return _glBlendEquationi_ptr.get_or_create_ptr()[](buf, mode)


@always_inline
fn blend_func(sfactor: BlendingFactor, dfactor: BlendingFactor):
    return _glBlendFunc_ptr.get_or_create_ptr()[](sfactor, dfactor)


@always_inline
fn blend_func_separate(sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor):
    return _glBlendFuncSeparate_ptr.get_or_create_ptr()[](sfactor_rgb, dfactor_rgb, sfactor_alpha, dfactor_alpha)


@always_inline
fn blend_func_separatei(buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor):
    return _glBlendFuncSeparatei_ptr.get_or_create_ptr()[](buf, src_rgb, dst_rgb, src_alpha, dst_alpha)


@always_inline
fn blend_funci(buf: GLuint, src: BlendingFactor, dst: BlendingFactor):
    return _glBlendFunci_ptr.get_or_create_ptr()[](buf, src, dst)


@always_inline
fn blit_framebuffer(src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
    return _glBlitFramebuffer_ptr.get_or_create_ptr()[](src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


@always_inline
fn blit_named_framebuffer(read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
    return _glBlitNamedFramebuffer_ptr.get_or_create_ptr()[](read_framebuffer, draw_framebuffer, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


@always_inline
fn buffer_data(target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, mut=False], usage: BufferUsageARB):
    return _glBufferData_ptr.get_or_create_ptr()[](target, size, data, usage)


@always_inline
fn buffer_storage(target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, mut=False], flags: BufferStorageMask):
    return _glBufferStorage_ptr.get_or_create_ptr()[](target, size, data, flags)


@always_inline
fn buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=False]):
    return _glBufferSubData_ptr.get_or_create_ptr()[](target, offset, size, data)


@always_inline
fn check_framebuffer_status(target: FramebufferTarget) -> FramebufferStatus:
    return _glCheckFramebufferStatus_ptr.get_or_create_ptr()[](target)


@always_inline
fn check_named_framebuffer_status(framebuffer: GLuint, target: FramebufferTarget) -> FramebufferStatus:
    return _glCheckNamedFramebufferStatus_ptr.get_or_create_ptr()[](framebuffer, target)


@always_inline
fn clamp_color(target: ClampColorTargetARB, clamp: ClampColorModeARB):
    return _glClampColor_ptr.get_or_create_ptr()[](target, clamp)


@always_inline
fn clear(mask: ClearBufferMask):
    return _glClear_ptr.get_or_create_ptr()[](mask)


@always_inline
fn clear_buffer_data(target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearBufferData_ptr.get_or_create_ptr()[](target, internalformat, format, type, data)


@always_inline
fn clear_buffer_sub_data(target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearBufferSubData_ptr.get_or_create_ptr()[](target, internalformat, offset, size, format, type, data)


@always_inline
fn clear_bufferfi(buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
    return _glClearBufferfi_ptr.get_or_create_ptr()[](buffer, drawbuffer, depth, stencil)


@always_inline
fn clear_bufferfv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=False]):
    return _glClearBufferfv_ptr.get_or_create_ptr()[](buffer, drawbuffer, value)


@always_inline
fn clear_bufferiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=False]):
    return _glClearBufferiv_ptr.get_or_create_ptr()[](buffer, drawbuffer, value)


@always_inline
fn clear_bufferuiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=False]):
    return _glClearBufferuiv_ptr.get_or_create_ptr()[](buffer, drawbuffer, value)


@always_inline
fn clear_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
    return _glClearColor_ptr.get_or_create_ptr()[](red, green, blue, alpha)


@always_inline
fn clear_depth(depth: GLdouble):
    return _glClearDepth_ptr.get_or_create_ptr()[](depth)


@always_inline
fn clear_depthf(d: GLfloat):
    return _glClearDepthf_ptr.get_or_create_ptr()[](d)


@always_inline
fn clear_named_buffer_data(buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearNamedBufferData_ptr.get_or_create_ptr()[](buffer, internalformat, format, type, data)


@always_inline
fn clear_named_buffer_sub_data(buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearNamedBufferSubData_ptr.get_or_create_ptr()[](buffer, internalformat, offset, size, format, type, data)


@always_inline
fn clear_named_framebufferfi(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
    return _glClearNamedFramebufferfi_ptr.get_or_create_ptr()[](framebuffer, buffer, drawbuffer, depth, stencil)


@always_inline
fn clear_named_framebufferfv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=False]):
    return _glClearNamedFramebufferfv_ptr.get_or_create_ptr()[](framebuffer, buffer, drawbuffer, value)


@always_inline
fn clear_named_framebufferiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=False]):
    return _glClearNamedFramebufferiv_ptr.get_or_create_ptr()[](framebuffer, buffer, drawbuffer, value)


@always_inline
fn clear_named_framebufferuiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=False]):
    return _glClearNamedFramebufferuiv_ptr.get_or_create_ptr()[](framebuffer, buffer, drawbuffer, value)


@always_inline
fn clear_stencil(s: GLint):
    return _glClearStencil_ptr.get_or_create_ptr()[](s)


@always_inline
fn clear_tex_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearTexImage_ptr.get_or_create_ptr()[](texture, level, format, type, data)


@always_inline
fn clear_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=False]):
    return _glClearTexSubImage_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)


@always_inline
fn client_wait_sync(sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> SyncStatus:
    return _glClientWaitSync_ptr.get_or_create_ptr()[](sync, flags, timeout)


@always_inline
fn clip_control(origin: ClipControlOrigin, depth: ClipControlDepth):
    return _glClipControl_ptr.get_or_create_ptr()[](origin, depth)


@always_inline
fn color_mask(red: Bool, green: Bool, blue: Bool, alpha: Bool):
    return _glColorMask_ptr.get_or_create_ptr()[](GLboolean(Int(red)), GLboolean(Int(green)), GLboolean(Int(blue)), GLboolean(Int(alpha)))


@always_inline
fn color_maski(index: GLuint, r: Bool, g: Bool, b: Bool, a: Bool):
    return _glColorMaski_ptr.get_or_create_ptr()[](index, GLboolean(Int(r)), GLboolean(Int(g)), GLboolean(Int(b)), GLboolean(Int(a)))


@always_inline
fn color_p3ui(type: ColorPointerType, color: GLuint):
    return _glColorP3ui_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, mut=False]):
    return _glColorP3uiv_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn color_p4ui(type: ColorPointerType, color: GLuint):
    return _glColorP4ui_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn color_p4uiv(type: ColorPointerType, color: Ptr[GLuint, mut=False]):
    return _glColorP4uiv_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn compile_shader(shader: GLuint):
    return _glCompileShader_ptr.get_or_create_ptr()[](shader)


@always_inline
fn compressed_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexImage1D_ptr.get_or_create_ptr()[](target, level, internalformat, width, border, image_size, data)


@always_inline
fn compressed_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexImage2D_ptr.get_or_create_ptr()[](target, level, internalformat, width, height, border, image_size, data)


@always_inline
fn compressed_tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexImage3D_ptr.get_or_create_ptr()[](target, level, internalformat, width, height, depth, border, image_size, data)


@always_inline
fn compressed_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexSubImage1D_ptr.get_or_create_ptr()[](target, level, xoffset, width, format, image_size, data)


@always_inline
fn compressed_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexSubImage2D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, width, height, format, image_size, data)


@always_inline
fn compressed_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTexSubImage3D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


@always_inline
fn compressed_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTextureSubImage1D_ptr.get_or_create_ptr()[](texture, level, xoffset, width, format, image_size, data)


@always_inline
fn compressed_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTextureSubImage2D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, width, height, format, image_size, data)


@always_inline
fn compressed_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=False]):
    return _glCompressedTextureSubImage3D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


@always_inline
fn copy_buffer_sub_data(read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr):
    return _glCopyBufferSubData_ptr.get_or_create_ptr()[](read_target, write_target, read_offset, write_offset, size)


@always_inline
fn copy_image_sub_data(src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei):
    return _glCopyImageSubData_ptr.get_or_create_ptr()[](src_name, src_target, src_level, src_x, src_y, src_z, dst_name, dst_target, dst_level, dst_x, dst_y, dst_z, src_width, src_height, src_depth)


@always_inline
fn copy_named_buffer_sub_data(read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr):
    return _glCopyNamedBufferSubData_ptr.get_or_create_ptr()[](read_buffer, write_buffer, read_offset, write_offset, size)


@always_inline
fn copy_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint):
    return _glCopyTexImage1D_ptr.get_or_create_ptr()[](target, level, internalformat, x, y, width, border)


@always_inline
fn copy_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint):
    return _glCopyTexImage2D_ptr.get_or_create_ptr()[](target, level, internalformat, x, y, width, height, border)


@always_inline
fn copy_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
    return _glCopyTexSubImage1D_ptr.get_or_create_ptr()[](target, level, xoffset, x, y, width)


@always_inline
fn copy_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glCopyTexSubImage2D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, x, y, width, height)


@always_inline
fn copy_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glCopyTexSubImage3D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, zoffset, x, y, width, height)


@always_inline
fn copy_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
    return _glCopyTextureSubImage1D_ptr.get_or_create_ptr()[](texture, level, xoffset, x, y, width)


@always_inline
fn copy_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glCopyTextureSubImage2D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, x, y, width, height)


@always_inline
fn copy_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glCopyTextureSubImage3D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, x, y, width, height)


@always_inline
fn create_buffers(n: GLsizei, buffers: Ptr[GLuint, mut=True]):
    return _glCreateBuffers_ptr.get_or_create_ptr()[](n, buffers)


@always_inline
fn create_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, mut=True]):
    return _glCreateFramebuffers_ptr.get_or_create_ptr()[](n, framebuffers)


@always_inline
fn create_program() -> GLuint:
    return _glCreateProgram_ptr.get_or_create_ptr()[]()


@always_inline
fn create_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, mut=True]):
    return _glCreateProgramPipelines_ptr.get_or_create_ptr()[](n, pipelines)


@always_inline
fn create_queries(target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, mut=True]):
    return _glCreateQueries_ptr.get_or_create_ptr()[](target, n, ids)


@always_inline
fn create_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, mut=True]):
    return _glCreateRenderbuffers_ptr.get_or_create_ptr()[](n, renderbuffers)


@always_inline
fn create_samplers(n: GLsizei, samplers: Ptr[GLuint, mut=True]):
    return _glCreateSamplers_ptr.get_or_create_ptr()[](n, samplers)


@always_inline
fn create_shader(type: ShaderType) -> GLuint:
    return _glCreateShader_ptr.get_or_create_ptr()[](type)


@always_inline
fn create_shader_programv(type: ShaderType, count: GLsizei, mut strings: List[String]) -> GLuint:
    var c_list = [str.unsafe_cstr_ptr().origin_cast[origin=ImmutableAnyOrigin]() for ref str in strings]
    return _glCreateShaderProgramv_ptr.get_or_create_ptr()[](type, count, c_list.steal_data().origin_cast[mut=False, origin=ImmutableAnyOrigin]())


@always_inline
fn create_textures(target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, mut=True]):
    return _glCreateTextures_ptr.get_or_create_ptr()[](target, n, textures)


@always_inline
fn create_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, mut=True]):
    return _glCreateTransformFeedbacks_ptr.get_or_create_ptr()[](n, ids)


@always_inline
fn create_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, mut=True]):
    return _glCreateVertexArrays_ptr.get_or_create_ptr()[](n, arrays)


@always_inline
fn cull_face(mode: TriangleFace):
    return _glCullFace_ptr.get_or_create_ptr()[](mode)


@always_inline
fn debug_message_callback(callback: GLDEBUGPROC, user_param: Ptr[NoneType, mut=False]):
    return _glDebugMessageCallback_ptr.get_or_create_ptr()[](callback, user_param)


@always_inline
fn debug_message_control(source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, mut=False], enabled: Bool):
    return _glDebugMessageControl_ptr.get_or_create_ptr()[](source, type, severity, count, ids, GLboolean(Int(enabled)))


@always_inline
fn debug_message_insert(source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, owned buf: String):
    return _glDebugMessageInsert_ptr.get_or_create_ptr()[](source, type, id, severity, length, buf.unsafe_cstr_ptr())


@always_inline
fn delete_buffers(n: GLsizei, buffers: Ptr[GLuint, mut=False]):
    return _glDeleteBuffers_ptr.get_or_create_ptr()[](n, buffers)


@always_inline
fn delete_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, mut=False]):
    return _glDeleteFramebuffers_ptr.get_or_create_ptr()[](n, framebuffers)


@always_inline
fn delete_program(program: GLuint):
    return _glDeleteProgram_ptr.get_or_create_ptr()[](program)


@always_inline
fn delete_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, mut=False]):
    return _glDeleteProgramPipelines_ptr.get_or_create_ptr()[](n, pipelines)


@always_inline
fn delete_queries(n: GLsizei, ids: Ptr[GLuint, mut=False]):
    return _glDeleteQueries_ptr.get_or_create_ptr()[](n, ids)


@always_inline
fn delete_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, mut=False]):
    return _glDeleteRenderbuffers_ptr.get_or_create_ptr()[](n, renderbuffers)


@always_inline
fn delete_samplers(count: GLsizei, samplers: Ptr[GLuint, mut=False]):
    return _glDeleteSamplers_ptr.get_or_create_ptr()[](count, samplers)


@always_inline
fn delete_shader(shader: GLuint):
    return _glDeleteShader_ptr.get_or_create_ptr()[](shader)


@always_inline
fn delete_sync(sync: GLsync):
    return _glDeleteSync_ptr.get_or_create_ptr()[](sync)


@always_inline
fn delete_textures(n: GLsizei, textures: Ptr[GLuint, mut=False]):
    return _glDeleteTextures_ptr.get_or_create_ptr()[](n, textures)


@always_inline
fn delete_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, mut=False]):
    return _glDeleteTransformFeedbacks_ptr.get_or_create_ptr()[](n, ids)


@always_inline
fn delete_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, mut=False]):
    return _glDeleteVertexArrays_ptr.get_or_create_ptr()[](n, arrays)


@always_inline
fn depth_func(func: DepthFunction):
    return _glDepthFunc_ptr.get_or_create_ptr()[](func)


@always_inline
fn depth_mask(flag: Bool):
    return _glDepthMask_ptr.get_or_create_ptr()[](GLboolean(Int(flag)))


@always_inline
fn depth_range(n: GLdouble, f: GLdouble):
    return _glDepthRange_ptr.get_or_create_ptr()[](n, f)


@always_inline
fn depth_range_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLdouble, mut=False]):
    return _glDepthRangeArrayv_ptr.get_or_create_ptr()[](first, count, v)


@always_inline
fn depth_range_indexed(index: GLuint, n: GLdouble, f: GLdouble):
    return _glDepthRangeIndexed_ptr.get_or_create_ptr()[](index, n, f)


@always_inline
fn depth_rangef(n: GLfloat, f: GLfloat):
    return _glDepthRangef_ptr.get_or_create_ptr()[](n, f)


@always_inline
fn detach_shader(program: GLuint, shader: GLuint):
    return _glDetachShader_ptr.get_or_create_ptr()[](program, shader)


@always_inline
fn disable(cap: EnableCap):
    return _glDisable_ptr.get_or_create_ptr()[](cap)


@always_inline
fn disable_vertex_array_attrib(vaobj: GLuint, index: GLuint):
    return _glDisableVertexArrayAttrib_ptr.get_or_create_ptr()[](vaobj, index)


@always_inline
fn disable_vertex_attrib_array(index: GLuint):
    return _glDisableVertexAttribArray_ptr.get_or_create_ptr()[](index)


@always_inline
fn disablei(target: EnableCap, index: GLuint):
    return _glDisablei_ptr.get_or_create_ptr()[](target, index)


@always_inline
fn dispatch_compute(num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint):
    return _glDispatchCompute_ptr.get_or_create_ptr()[](num_groups_x, num_groups_y, num_groups_z)


@always_inline
fn dispatch_compute_indirect(indirect: GLintptr):
    return _glDispatchComputeIndirect_ptr.get_or_create_ptr()[](indirect)


@always_inline
fn draw_arrays(mode: PrimitiveType, first: GLint, count: GLsizei):
    return _glDrawArrays_ptr.get_or_create_ptr()[](mode, first, count)


@always_inline
fn draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, mut=False]):
    return _glDrawArraysIndirect_ptr.get_or_create_ptr()[](mode, indirect)


@always_inline
fn draw_arrays_instanced(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei):
    return _glDrawArraysInstanced_ptr.get_or_create_ptr()[](mode, first, count, instancecount)


@always_inline
fn draw_arrays_instanced_base_instance(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint):
    return _glDrawArraysInstancedBaseInstance_ptr.get_or_create_ptr()[](mode, first, count, instancecount, baseinstance)


@always_inline
fn draw_buffer(buf: DrawBufferMode):
    return _glDrawBuffer_ptr.get_or_create_ptr()[](buf)


@always_inline
fn draw_buffers(n: GLsizei, bufs: Ptr[DrawBufferMode, mut=False]):
    return _glDrawBuffers_ptr.get_or_create_ptr()[](n, bufs)


@always_inline
fn draw_elements(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False]):
    return _glDrawElements_ptr.get_or_create_ptr()[](mode, count, type, indices)


@always_inline
fn draw_elements_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], basevertex: GLint):
    return _glDrawElementsBaseVertex_ptr.get_or_create_ptr()[](mode, count, type, indices, basevertex)


@always_inline
fn draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False]):
    return _glDrawElementsIndirect_ptr.get_or_create_ptr()[](mode, type, indirect)


@always_inline
fn draw_elements_instanced(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei):
    return _glDrawElementsInstanced_ptr.get_or_create_ptr()[](mode, count, type, indices, instancecount)


@always_inline
fn draw_elements_instanced_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, baseinstance: GLuint):
    return _glDrawElementsInstancedBaseInstance_ptr.get_or_create_ptr()[](mode, count, type, indices, instancecount, baseinstance)


@always_inline
fn draw_elements_instanced_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, basevertex: GLint):
    return _glDrawElementsInstancedBaseVertex_ptr.get_or_create_ptr()[](mode, count, type, indices, instancecount, basevertex)


@always_inline
fn draw_elements_instanced_base_vertex_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint):
    return _glDrawElementsInstancedBaseVertexBaseInstance_ptr.get_or_create_ptr()[](mode, count, type, indices, instancecount, basevertex, baseinstance)


@always_inline
fn draw_range_elements(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False]):
    return _glDrawRangeElements_ptr.get_or_create_ptr()[](mode, start, end, count, type, indices)


@always_inline
fn draw_range_elements_base_vertex(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=False], basevertex: GLint):
    return _glDrawRangeElementsBaseVertex_ptr.get_or_create_ptr()[](mode, start, end, count, type, indices, basevertex)


@always_inline
fn draw_transform_feedback(mode: PrimitiveType, id: GLuint):
    return _glDrawTransformFeedback_ptr.get_or_create_ptr()[](mode, id)


@always_inline
fn draw_transform_feedback_instanced(mode: PrimitiveType, id: GLuint, instancecount: GLsizei):
    return _glDrawTransformFeedbackInstanced_ptr.get_or_create_ptr()[](mode, id, instancecount)


@always_inline
fn draw_transform_feedback_stream(mode: PrimitiveType, id: GLuint, stream: GLuint):
    return _glDrawTransformFeedbackStream_ptr.get_or_create_ptr()[](mode, id, stream)


@always_inline
fn draw_transform_feedback_stream_instanced(mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei):
    return _glDrawTransformFeedbackStreamInstanced_ptr.get_or_create_ptr()[](mode, id, stream, instancecount)


@always_inline
fn enable(cap: EnableCap):
    return _glEnable_ptr.get_or_create_ptr()[](cap)


@always_inline
fn enable_vertex_array_attrib(vaobj: GLuint, index: GLuint):
    return _glEnableVertexArrayAttrib_ptr.get_or_create_ptr()[](vaobj, index)


@always_inline
fn enable_vertex_attrib_array(index: GLuint):
    return _glEnableVertexAttribArray_ptr.get_or_create_ptr()[](index)


@always_inline
fn enablei(target: EnableCap, index: GLuint):
    return _glEnablei_ptr.get_or_create_ptr()[](target, index)


@always_inline
fn end_conditional_render():
    return _glEndConditionalRender_ptr.get_or_create_ptr()[]()


@always_inline
fn end_query(target: QueryTarget):
    return _glEndQuery_ptr.get_or_create_ptr()[](target)


@always_inline
fn end_query_indexed(target: QueryTarget, index: GLuint):
    return _glEndQueryIndexed_ptr.get_or_create_ptr()[](target, index)


@always_inline
fn end_transform_feedback():
    return _glEndTransformFeedback_ptr.get_or_create_ptr()[]()


@always_inline
fn fence_sync(condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync:
    return _glFenceSync_ptr.get_or_create_ptr()[](condition, flags)


@always_inline
fn finish():
    return _glFinish_ptr.get_or_create_ptr()[]()


@always_inline
fn flush():
    return _glFlush_ptr.get_or_create_ptr()[]()


@always_inline
fn flush_mapped_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr):
    return _glFlushMappedBufferRange_ptr.get_or_create_ptr()[](target, offset, length)


@always_inline
fn flush_mapped_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
    return _glFlushMappedNamedBufferRange_ptr.get_or_create_ptr()[](buffer, offset, length)


@always_inline
fn framebuffer_parameteri(target: FramebufferTarget, pname: FramebufferParameterName, param: GLint):
    return _glFramebufferParameteri_ptr.get_or_create_ptr()[](target, pname, param)


@always_inline
fn framebuffer_renderbuffer(target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
    return _glFramebufferRenderbuffer_ptr.get_or_create_ptr()[](target, attachment, renderbuffertarget, renderbuffer)


@always_inline
fn framebuffer_texture(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
    return _glFramebufferTexture_ptr.get_or_create_ptr()[](target, attachment, texture, level)


@always_inline
fn framebuffer_texture_1d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
    return _glFramebufferTexture1D_ptr.get_or_create_ptr()[](target, attachment, textarget, texture, level)


@always_inline
fn framebuffer_texture_2d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
    return _glFramebufferTexture2D_ptr.get_or_create_ptr()[](target, attachment, textarget, texture, level)


@always_inline
fn framebuffer_texture_3d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint):
    return _glFramebufferTexture3D_ptr.get_or_create_ptr()[](target, attachment, textarget, texture, level, zoffset)


@always_inline
fn framebuffer_texture_layer(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
    return _glFramebufferTextureLayer_ptr.get_or_create_ptr()[](target, attachment, texture, level, layer)


@always_inline
fn front_face(mode: FrontFaceDirection):
    return _glFrontFace_ptr.get_or_create_ptr()[](mode)


@always_inline
fn gen_buffers(n: GLsizei, buffers: Ptr[GLuint, mut=True]):
    return _glGenBuffers_ptr.get_or_create_ptr()[](n, buffers)


@always_inline
fn gen_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, mut=True]):
    return _glGenFramebuffers_ptr.get_or_create_ptr()[](n, framebuffers)


@always_inline
fn gen_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, mut=True]):
    return _glGenProgramPipelines_ptr.get_or_create_ptr()[](n, pipelines)


@always_inline
fn gen_queries(n: GLsizei, ids: Ptr[GLuint, mut=True]):
    return _glGenQueries_ptr.get_or_create_ptr()[](n, ids)


@always_inline
fn gen_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, mut=True]):
    return _glGenRenderbuffers_ptr.get_or_create_ptr()[](n, renderbuffers)


@always_inline
fn gen_samplers(count: GLsizei, samplers: Ptr[GLuint, mut=True]):
    return _glGenSamplers_ptr.get_or_create_ptr()[](count, samplers)


@always_inline
fn gen_textures(n: GLsizei, textures: Ptr[GLuint, mut=True]):
    return _glGenTextures_ptr.get_or_create_ptr()[](n, textures)


@always_inline
fn gen_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, mut=True]):
    return _glGenTransformFeedbacks_ptr.get_or_create_ptr()[](n, ids)


@always_inline
fn gen_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, mut=True]):
    return _glGenVertexArrays_ptr.get_or_create_ptr()[](n, arrays)


@always_inline
fn generate_mipmap(target: TextureTarget):
    return _glGenerateMipmap_ptr.get_or_create_ptr()[](target)


@always_inline
fn generate_texture_mipmap(texture: GLuint):
    return _glGenerateTextureMipmap_ptr.get_or_create_ptr()[](texture)


@always_inline
fn get_active_atomic_counter_bufferiv(program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, mut=True]):
    return _glGetActiveAtomicCounterBufferiv_ptr.get_or_create_ptr()[](program, buffer_index, pname, params)


@always_inline
fn get_active_attrib(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: Ptr[AttributeType, mut=True], owned name: String):
    return _glGetActiveAttrib_ptr.get_or_create_ptr()[](program, index, buf_size, length, size, type, name.unsafe_cstr_ptr())


@always_inline
fn get_active_subroutine_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned name: String):
    return _glGetActiveSubroutineName_ptr.get_or_create_ptr()[](program, shadertype, index, buf_size, length, name.unsafe_cstr_ptr())


@always_inline
fn get_active_subroutine_uniform_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned name: String):
    return _glGetActiveSubroutineUniformName_ptr.get_or_create_ptr()[](program, shadertype, index, buf_size, length, name.unsafe_cstr_ptr())


@always_inline
fn get_active_subroutine_uniformiv(program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, mut=True]):
    return _glGetActiveSubroutineUniformiv_ptr.get_or_create_ptr()[](program, shadertype, index, pname, values)


@always_inline
fn get_active_uniform(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: Ptr[UniformType, mut=True], owned name: String):
    return _glGetActiveUniform_ptr.get_or_create_ptr()[](program, index, buf_size, length, size, type, name.unsafe_cstr_ptr())


@always_inline
fn get_active_uniform_block_name(program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned uniform_block_name: String):
    return _glGetActiveUniformBlockName_ptr.get_or_create_ptr()[](program, uniform_block_index, buf_size, length, uniform_block_name.unsafe_cstr_ptr())


@always_inline
fn get_active_uniform_blockiv(program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, mut=True]):
    return _glGetActiveUniformBlockiv_ptr.get_or_create_ptr()[](program, uniform_block_index, pname, params)


@always_inline
fn get_active_uniform_name(program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned uniform_name: String):
    return _glGetActiveUniformName_ptr.get_or_create_ptr()[](program, uniform_index, buf_size, length, uniform_name.unsafe_cstr_ptr())


@always_inline
fn get_active_uniformsiv(program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, mut=False], pname: UniformPName, params: Ptr[GLint, mut=True]):
    return _glGetActiveUniformsiv_ptr.get_or_create_ptr()[](program, uniform_count, uniform_indices, pname, params)


@always_inline
fn get_attached_shaders(program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, mut=True], shaders: Ptr[GLuint, mut=True]):
    return _glGetAttachedShaders_ptr.get_or_create_ptr()[](program, max_count, count, shaders)


@always_inline
fn get_attrib_location(program: GLuint, owned name: String) -> GLint:
    return _glGetAttribLocation_ptr.get_or_create_ptr()[](program, name.unsafe_cstr_ptr())


@always_inline
fn get_booleani_v(target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, mut=True]):
    return _glGetBooleani_v_ptr.get_or_create_ptr()[](target, index, data)


@always_inline
fn get_booleanv(pname: GetPName, data: Ptr[GLboolean, mut=True]):
    return _glGetBooleanv_ptr.get_or_create_ptr()[](pname, data)


@always_inline
fn get_buffer_parameteri64v(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, mut=True]):
    return _glGetBufferParameteri64v_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_buffer_parameteriv(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, mut=True]):
    return _glGetBufferParameteriv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_buffer_pointerv(target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True]):
    return _glGetBufferPointerv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
    return _glGetBufferSubData_ptr.get_or_create_ptr()[](target, offset, size, data)


@always_inline
fn get_compressed_tex_image(target: TextureTarget, level: GLint, img: Ptr[NoneType, mut=True]):
    return _glGetCompressedTexImage_ptr.get_or_create_ptr()[](target, level, img)


@always_inline
fn get_compressed_texture_image(texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetCompressedTextureImage_ptr.get_or_create_ptr()[](texture, level, buf_size, pixels)


@always_inline
fn get_compressed_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetCompressedTextureSubImage_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth, buf_size, pixels)


@always_inline
fn get_debug_message_log(count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, mut=True], types: Ptr[DebugType, mut=True], ids: Ptr[GLuint, mut=True], severities: Ptr[DebugSeverity, mut=True], lengths: Ptr[GLsizei, mut=True], owned message_log: String) -> GLuint:
    return _glGetDebugMessageLog_ptr.get_or_create_ptr()[](count, buf_size, sources, types, ids, severities, lengths, message_log.unsafe_cstr_ptr())


@always_inline
fn get_doublei_v(target: GetPName, index: GLuint, data: Ptr[GLdouble, mut=True]):
    return _glGetDoublei_v_ptr.get_or_create_ptr()[](target, index, data)


@always_inline
fn get_doublev(pname: GetPName, data: Ptr[GLdouble, mut=True]):
    return _glGetDoublev_ptr.get_or_create_ptr()[](pname, data)


@always_inline
fn get_error() -> ErrorCode:
    return _glGetError_ptr.get_or_create_ptr()[]()


@always_inline
fn get_floati_v(target: GetPName, index: GLuint, data: Ptr[GLfloat, mut=True]):
    return _glGetFloati_v_ptr.get_or_create_ptr()[](target, index, data)


@always_inline
fn get_floatv(pname: GetPName, data: Ptr[GLfloat, mut=True]):
    return _glGetFloatv_ptr.get_or_create_ptr()[](pname, data)


@always_inline
fn get_frag_data_index(program: GLuint, owned name: String) -> GLint:
    return _glGetFragDataIndex_ptr.get_or_create_ptr()[](program, name.unsafe_cstr_ptr())


@always_inline
fn get_frag_data_location(program: GLuint, owned name: String) -> GLint:
    return _glGetFragDataLocation_ptr.get_or_create_ptr()[](program, name.unsafe_cstr_ptr())


@always_inline
fn get_framebuffer_attachment_parameteriv(target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
    return _glGetFramebufferAttachmentParameteriv_ptr.get_or_create_ptr()[](target, attachment, pname, params)


@always_inline
fn get_framebuffer_parameteriv(target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
    return _glGetFramebufferParameteriv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_graphics_reset_status() -> GraphicsResetStatus:
    return _glGetGraphicsResetStatus_ptr.get_or_create_ptr()[]()


@always_inline
fn get_integer64i_v(target: GetPName, index: GLuint, data: Ptr[GLint64, mut=True]):
    return _glGetInteger64i_v_ptr.get_or_create_ptr()[](target, index, data)


@always_inline
fn get_integer64v(pname: GetPName, data: Ptr[GLint64, mut=True]):
    return _glGetInteger64v_ptr.get_or_create_ptr()[](pname, data)


@always_inline
fn get_integeri_v(target: GetPName, index: GLuint, data: Ptr[GLint, mut=True]):
    return _glGetIntegeri_v_ptr.get_or_create_ptr()[](target, index, data)


@always_inline
fn get_integerv(pname: GetPName, data: Ptr[GLint, mut=True]):
    return _glGetIntegerv_ptr.get_or_create_ptr()[](pname, data)


@always_inline
fn get_internalformati64v(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, mut=True]):
    return _glGetInternalformati64v_ptr.get_or_create_ptr()[](target, internalformat, pname, count, params)


@always_inline
fn get_internalformativ(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, mut=True]):
    return _glGetInternalformativ_ptr.get_or_create_ptr()[](target, internalformat, pname, count, params)


@always_inline
fn get_multisamplefv(pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, mut=True]):
    return _glGetMultisamplefv_ptr.get_or_create_ptr()[](pname, index, val)


@always_inline
fn get_named_buffer_parameteri64v(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, mut=True]):
    return _glGetNamedBufferParameteri64v_ptr.get_or_create_ptr()[](buffer, pname, params)


@always_inline
fn get_named_buffer_parameteriv(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, mut=True]):
    return _glGetNamedBufferParameteriv_ptr.get_or_create_ptr()[](buffer, pname, params)


@always_inline
fn get_named_buffer_pointerv(buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True]):
    return _glGetNamedBufferPointerv_ptr.get_or_create_ptr()[](buffer, pname, params)


@always_inline
fn get_named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
    return _glGetNamedBufferSubData_ptr.get_or_create_ptr()[](buffer, offset, size, data)


@always_inline
fn get_named_framebuffer_attachment_parameteriv(framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
    return _glGetNamedFramebufferAttachmentParameteriv_ptr.get_or_create_ptr()[](framebuffer, attachment, pname, params)


@always_inline
fn get_named_framebuffer_parameteriv(framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, mut=True]):
    return _glGetNamedFramebufferParameteriv_ptr.get_or_create_ptr()[](framebuffer, pname, param)


@always_inline
fn get_named_renderbuffer_parameteriv(renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True]):
    return _glGetNamedRenderbufferParameteriv_ptr.get_or_create_ptr()[](renderbuffer, pname, params)


@always_inline
fn get_object_label(identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned label: String):
    return _glGetObjectLabel_ptr.get_or_create_ptr()[](identifier, name, buf_size, length, label.unsafe_cstr_ptr())


@always_inline
fn get_object_ptr_label(ptr: Ptr[NoneType, mut=False], buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned label: String):
    return _glGetObjectPtrLabel_ptr.get_or_create_ptr()[](ptr, buf_size, length, label.unsafe_cstr_ptr())


@always_inline
fn get_program_binary(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], binary_format: Ptr[GLenum, mut=True], binary: Ptr[NoneType, mut=True]):
    return _glGetProgramBinary_ptr.get_or_create_ptr()[](program, buf_size, length, binary_format, binary)


@always_inline
fn get_program_info_log(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned info_log: String):
    return _glGetProgramInfoLog_ptr.get_or_create_ptr()[](program, buf_size, length, info_log.unsafe_cstr_ptr())


@always_inline
fn get_program_interfaceiv(program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, mut=True]):
    return _glGetProgramInterfaceiv_ptr.get_or_create_ptr()[](program, program_interface, pname, params)


@always_inline
fn get_program_pipeline_info_log(pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned info_log: String):
    return _glGetProgramPipelineInfoLog_ptr.get_or_create_ptr()[](pipeline, buf_size, length, info_log.unsafe_cstr_ptr())


@always_inline
fn get_program_pipelineiv(pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, mut=True]):
    return _glGetProgramPipelineiv_ptr.get_or_create_ptr()[](pipeline, pname, params)


@always_inline
fn get_program_resource_index(program: GLuint, program_interface: ProgramInterface, owned name: String) -> GLuint:
    return _glGetProgramResourceIndex_ptr.get_or_create_ptr()[](program, program_interface, name.unsafe_cstr_ptr())


@always_inline
fn get_program_resource_location(program: GLuint, program_interface: ProgramInterface, owned name: String) -> GLint:
    return _glGetProgramResourceLocation_ptr.get_or_create_ptr()[](program, program_interface, name.unsafe_cstr_ptr())


@always_inline
fn get_program_resource_location_index(program: GLuint, program_interface: ProgramInterface, owned name: String) -> GLint:
    return _glGetProgramResourceLocationIndex_ptr.get_or_create_ptr()[](program, program_interface, name.unsafe_cstr_ptr())


@always_inline
fn get_program_resource_name(program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned name: String):
    return _glGetProgramResourceName_ptr.get_or_create_ptr()[](program, program_interface, index, buf_size, length, name.unsafe_cstr_ptr())


@always_inline
fn get_program_resourceiv(program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, mut=False], count: GLsizei, length: Ptr[GLsizei, mut=True], params: Ptr[GLint, mut=True]):
    return _glGetProgramResourceiv_ptr.get_or_create_ptr()[](program, program_interface, index, prop_count, props, count, length, params)


@always_inline
fn get_program_stageiv(program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, mut=True]):
    return _glGetProgramStageiv_ptr.get_or_create_ptr()[](program, shadertype, pname, values)


@always_inline
fn get_programiv(program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, mut=True]):
    return _glGetProgramiv_ptr.get_or_create_ptr()[](program, pname, params)


@always_inline
fn get_query_buffer_objecti64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
    return _glGetQueryBufferObjecti64v_ptr.get_or_create_ptr()[](id, buffer, pname, offset)


@always_inline
fn get_query_buffer_objectiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
    return _glGetQueryBufferObjectiv_ptr.get_or_create_ptr()[](id, buffer, pname, offset)


@always_inline
fn get_query_buffer_objectui64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
    return _glGetQueryBufferObjectui64v_ptr.get_or_create_ptr()[](id, buffer, pname, offset)


@always_inline
fn get_query_buffer_objectuiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
    return _glGetQueryBufferObjectuiv_ptr.get_or_create_ptr()[](id, buffer, pname, offset)


@always_inline
fn get_query_indexediv(target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, mut=True]):
    return _glGetQueryIndexediv_ptr.get_or_create_ptr()[](target, index, pname, params)


@always_inline
fn get_query_objecti64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, mut=True]):
    return _glGetQueryObjecti64v_ptr.get_or_create_ptr()[](id, pname, params)


@always_inline
fn get_query_objectiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, mut=True]):
    return _glGetQueryObjectiv_ptr.get_or_create_ptr()[](id, pname, params)


@always_inline
fn get_query_objectui64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, mut=True]):
    return _glGetQueryObjectui64v_ptr.get_or_create_ptr()[](id, pname, params)


@always_inline
fn get_query_objectuiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, mut=True]):
    return _glGetQueryObjectuiv_ptr.get_or_create_ptr()[](id, pname, params)


@always_inline
fn get_queryiv(target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, mut=True]):
    return _glGetQueryiv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_renderbuffer_parameteriv(target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True]):
    return _glGetRenderbufferParameteriv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True]):
    return _glGetSamplerParameterIiv_ptr.get_or_create_ptr()[](sampler, pname, params)


@always_inline
fn get_sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, mut=True]):
    return _glGetSamplerParameterIuiv_ptr.get_or_create_ptr()[](sampler, pname, params)


@always_inline
fn get_sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, mut=True]):
    return _glGetSamplerParameterfv_ptr.get_or_create_ptr()[](sampler, pname, params)


@always_inline
fn get_sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True]):
    return _glGetSamplerParameteriv_ptr.get_or_create_ptr()[](sampler, pname, params)


@always_inline
fn get_shader_info_log(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned info_log: String):
    return _glGetShaderInfoLog_ptr.get_or_create_ptr()[](shader, buf_size, length, info_log.unsafe_cstr_ptr())


@always_inline
fn get_shader_precision_format(shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, mut=True], precision: Ptr[GLint, mut=True]):
    return _glGetShaderPrecisionFormat_ptr.get_or_create_ptr()[](shadertype, precisiontype, range, precision)


@always_inline
fn get_shader_source(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], owned source: String):
    return _glGetShaderSource_ptr.get_or_create_ptr()[](shader, buf_size, length, source.unsafe_cstr_ptr())


@always_inline
fn get_shaderiv(shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, mut=True]):
    return _glGetShaderiv_ptr.get_or_create_ptr()[](shader, pname, params)


@always_inline
fn get_string(name: StringName) -> GLubyte:
    return _glGetString_ptr.get_or_create_ptr()[](name)


@always_inline
fn get_stringi(name: StringName, index: GLuint) -> GLubyte:
    return _glGetStringi_ptr.get_or_create_ptr()[](name, index)


@always_inline
fn get_subroutine_index(program: GLuint, shadertype: ShaderType, owned name: String) -> GLuint:
    return _glGetSubroutineIndex_ptr.get_or_create_ptr()[](program, shadertype, name.unsafe_cstr_ptr())


@always_inline
fn get_subroutine_uniform_location(program: GLuint, shadertype: ShaderType, owned name: String) -> GLint:
    return _glGetSubroutineUniformLocation_ptr.get_or_create_ptr()[](program, shadertype, name.unsafe_cstr_ptr())


@always_inline
fn get_synciv(sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, mut=True], values: Ptr[GLint, mut=True]):
    return _glGetSynciv_ptr.get_or_create_ptr()[](sync, pname, count, length, values)


@always_inline
fn get_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
    return _glGetTexImage_ptr.get_or_create_ptr()[](target, level, format, type, pixels)


@always_inline
fn get_tex_level_parameterfv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
    return _glGetTexLevelParameterfv_ptr.get_or_create_ptr()[](target, level, pname, params)


@always_inline
fn get_tex_level_parameteriv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTexLevelParameteriv_ptr.get_or_create_ptr()[](target, level, pname, params)


@always_inline
fn get_tex_parameter_iiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTexParameterIiv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_tex_parameter_iuiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, mut=True]):
    return _glGetTexParameterIuiv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_tex_parameterfv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
    return _glGetTexParameterfv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_tex_parameteriv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTexParameteriv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn get_texture_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetTextureImage_ptr.get_or_create_ptr()[](texture, level, format, type, buf_size, pixels)


@always_inline
fn get_texture_level_parameterfv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
    return _glGetTextureLevelParameterfv_ptr.get_or_create_ptr()[](texture, level, pname, params)


@always_inline
fn get_texture_level_parameteriv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTextureLevelParameteriv_ptr.get_or_create_ptr()[](texture, level, pname, params)


@always_inline
fn get_texture_parameter_iiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTextureParameterIiv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn get_texture_parameter_iuiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, mut=True]):
    return _glGetTextureParameterIuiv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn get_texture_parameterfv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
    return _glGetTextureParameterfv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn get_texture_parameteriv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
    return _glGetTextureParameteriv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn get_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetTextureSubImage_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, buf_size, pixels)


@always_inline
fn get_transform_feedback_varying(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLsizei, mut=True], type: Ptr[AttributeType, mut=True], owned name: String):
    return _glGetTransformFeedbackVarying_ptr.get_or_create_ptr()[](program, index, buf_size, length, size, type, name.unsafe_cstr_ptr())


@always_inline
fn get_transform_feedbacki64_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, mut=True]):
    return _glGetTransformFeedbacki64_v_ptr.get_or_create_ptr()[](xfb, pname, index, param)


@always_inline
fn get_transform_feedbacki_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, mut=True]):
    return _glGetTransformFeedbacki_v_ptr.get_or_create_ptr()[](xfb, pname, index, param)


@always_inline
fn get_transform_feedbackiv(xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, mut=True]):
    return _glGetTransformFeedbackiv_ptr.get_or_create_ptr()[](xfb, pname, param)


@always_inline
fn get_uniform_block_index(program: GLuint, owned uniform_block_name: String) -> GLuint:
    return _glGetUniformBlockIndex_ptr.get_or_create_ptr()[](program, uniform_block_name.unsafe_cstr_ptr())


@always_inline
fn get_uniform_indices(program: GLuint, uniform_count: GLsizei, mut uniform_names: List[String], uniform_indices: Ptr[GLuint, mut=True]):
    var c_list = [str.unsafe_cstr_ptr().origin_cast[origin=ImmutableAnyOrigin]() for ref str in uniform_names]
    return _glGetUniformIndices_ptr.get_or_create_ptr()[](program, uniform_count, c_list.steal_data().origin_cast[mut=False, origin=ImmutableAnyOrigin](), uniform_indices)


@always_inline
fn get_uniform_location(program: GLuint, owned name: String) -> GLint:
    return _glGetUniformLocation_ptr.get_or_create_ptr()[](program, name.unsafe_cstr_ptr())


@always_inline
fn get_uniform_subroutineuiv(shadertype: ShaderType, location: GLint, params: Ptr[GLuint, mut=True]):
    return _glGetUniformSubroutineuiv_ptr.get_or_create_ptr()[](shadertype, location, params)


@always_inline
fn get_uniformdv(program: GLuint, location: GLint, params: Ptr[GLdouble, mut=True]):
    return _glGetUniformdv_ptr.get_or_create_ptr()[](program, location, params)


@always_inline
fn get_uniformfv(program: GLuint, location: GLint, params: Ptr[GLfloat, mut=True]):
    return _glGetUniformfv_ptr.get_or_create_ptr()[](program, location, params)


@always_inline
fn get_uniformiv(program: GLuint, location: GLint, params: Ptr[GLint, mut=True]):
    return _glGetUniformiv_ptr.get_or_create_ptr()[](program, location, params)


@always_inline
fn get_uniformuiv(program: GLuint, location: GLint, params: Ptr[GLuint, mut=True]):
    return _glGetUniformuiv_ptr.get_or_create_ptr()[](program, location, params)


@always_inline
fn get_vertex_array_indexed64iv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, mut=True]):
    return _glGetVertexArrayIndexed64iv_ptr.get_or_create_ptr()[](vaobj, index, pname, param)


@always_inline
fn get_vertex_array_indexediv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True]):
    return _glGetVertexArrayIndexediv_ptr.get_or_create_ptr()[](vaobj, index, pname, param)


@always_inline
fn get_vertex_arrayiv(vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True]):
    return _glGetVertexArrayiv_ptr.get_or_create_ptr()[](vaobj, pname, param)


@always_inline
fn get_vertex_attrib_iiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, mut=True]):
    return _glGetVertexAttribIiv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn get_vertex_attrib_iuiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, mut=True]):
    return _glGetVertexAttribIuiv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn get_vertex_attrib_ldv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, mut=True]):
    return _glGetVertexAttribLdv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn get_vertex_attrib_pointerv(index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, mut=True], mut=True]):
    return _glGetVertexAttribPointerv_ptr.get_or_create_ptr()[](index, pname, pointer)


@always_inline
fn get_vertex_attribdv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, mut=True]):
    return _glGetVertexAttribdv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn get_vertex_attribfv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, mut=True]):
    return _glGetVertexAttribfv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn get_vertex_attribiv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, mut=True]):
    return _glGetVertexAttribiv_ptr.get_or_create_ptr()[](index, pname, params)


@always_inline
fn getn_color_table(target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, mut=True]):
    return _glGetnColorTable_ptr.get_or_create_ptr()[](target, format, type, buf_size, table)


@always_inline
fn getn_compressed_tex_image(target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetnCompressedTexImage_ptr.get_or_create_ptr()[](target, lod, buf_size, pixels)


@always_inline
fn getn_convolution_filter(target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, mut=True]):
    return _glGetnConvolutionFilter_ptr.get_or_create_ptr()[](target, format, type, buf_size, image)


@always_inline
fn getn_histogram(target: HistogramTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True]):
    return _glGetnHistogram_ptr.get_or_create_ptr()[](target, GLboolean(Int(reset)), format, type, buf_size, values)


@always_inline
fn getn_mapdv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, mut=True]):
    return _glGetnMapdv_ptr.get_or_create_ptr()[](target, query, buf_size, v)


@always_inline
fn getn_mapfv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, mut=True]):
    return _glGetnMapfv_ptr.get_or_create_ptr()[](target, query, buf_size, v)


@always_inline
fn getn_mapiv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, mut=True]):
    return _glGetnMapiv_ptr.get_or_create_ptr()[](target, query, buf_size, v)


@always_inline
fn getn_minmax(target: MinmaxTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True]):
    return _glGetnMinmax_ptr.get_or_create_ptr()[](target, GLboolean(Int(reset)), format, type, buf_size, values)


@always_inline
fn getn_pixel_mapfv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, mut=True]):
    return _glGetnPixelMapfv_ptr.get_or_create_ptr()[](map, buf_size, values)


@always_inline
fn getn_pixel_mapuiv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, mut=True]):
    return _glGetnPixelMapuiv_ptr.get_or_create_ptr()[](map, buf_size, values)


@always_inline
fn getn_pixel_mapusv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, mut=True]):
    return _glGetnPixelMapusv_ptr.get_or_create_ptr()[](map, buf_size, values)


@always_inline
fn getn_polygon_stipple(buf_size: GLsizei, pattern: Ptr[GLubyte, mut=True]):
    return _glGetnPolygonStipple_ptr.get_or_create_ptr()[](buf_size, pattern)


@always_inline
fn getn_separable_filter(target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, mut=True], column_buf_size: GLsizei, column: Ptr[NoneType, mut=True], span: Ptr[NoneType, mut=True]):
    return _glGetnSeparableFilter_ptr.get_or_create_ptr()[](target, format, type, row_buf_size, row, column_buf_size, column, span)


@always_inline
fn getn_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
    return _glGetnTexImage_ptr.get_or_create_ptr()[](target, level, format, type, buf_size, pixels)


@always_inline
fn getn_uniformdv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, mut=True]):
    return _glGetnUniformdv_ptr.get_or_create_ptr()[](program, location, buf_size, params)


@always_inline
fn getn_uniformfv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, mut=True]):
    return _glGetnUniformfv_ptr.get_or_create_ptr()[](program, location, buf_size, params)


@always_inline
fn getn_uniformiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, mut=True]):
    return _glGetnUniformiv_ptr.get_or_create_ptr()[](program, location, buf_size, params)


@always_inline
fn getn_uniformuiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, mut=True]):
    return _glGetnUniformuiv_ptr.get_or_create_ptr()[](program, location, buf_size, params)


@always_inline
fn hint(target: HintTarget, mode: HintMode):
    return _glHint_ptr.get_or_create_ptr()[](target, mode)


@always_inline
fn invalidate_buffer_data(buffer: GLuint):
    return _glInvalidateBufferData_ptr.get_or_create_ptr()[](buffer)


@always_inline
fn invalidate_buffer_sub_data(buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
    return _glInvalidateBufferSubData_ptr.get_or_create_ptr()[](buffer, offset, length)


@always_inline
fn invalidate_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, mut=False]):
    return _glInvalidateFramebuffer_ptr.get_or_create_ptr()[](target, num_attachments, attachments)


@always_inline
fn invalidate_named_framebuffer_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, mut=False]):
    return _glInvalidateNamedFramebufferData_ptr.get_or_create_ptr()[](framebuffer, num_attachments, attachments)


@always_inline
fn invalidate_named_framebuffer_sub_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, mut=False], x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glInvalidateNamedFramebufferSubData_ptr.get_or_create_ptr()[](framebuffer, num_attachments, attachments, x, y, width, height)


@always_inline
fn invalidate_sub_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, mut=False], x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glInvalidateSubFramebuffer_ptr.get_or_create_ptr()[](target, num_attachments, attachments, x, y, width, height)


@always_inline
fn invalidate_tex_image(texture: GLuint, level: GLint):
    return _glInvalidateTexImage_ptr.get_or_create_ptr()[](texture, level)


@always_inline
fn invalidate_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei):
    return _glInvalidateTexSubImage_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth)


@always_inline
fn is_buffer(buffer: GLuint) -> GLboolean:
    return _glIsBuffer_ptr.get_or_create_ptr()[](buffer)


@always_inline
fn is_enabled(cap: EnableCap) -> GLboolean:
    return _glIsEnabled_ptr.get_or_create_ptr()[](cap)


@always_inline
fn is_enabledi(target: EnableCap, index: GLuint) -> GLboolean:
    return _glIsEnabledi_ptr.get_or_create_ptr()[](target, index)


@always_inline
fn is_framebuffer(framebuffer: GLuint) -> GLboolean:
    return _glIsFramebuffer_ptr.get_or_create_ptr()[](framebuffer)


@always_inline
fn is_program(program: GLuint) -> GLboolean:
    return _glIsProgram_ptr.get_or_create_ptr()[](program)


@always_inline
fn is_program_pipeline(pipeline: GLuint) -> GLboolean:
    return _glIsProgramPipeline_ptr.get_or_create_ptr()[](pipeline)


@always_inline
fn is_query(id: GLuint) -> GLboolean:
    return _glIsQuery_ptr.get_or_create_ptr()[](id)


@always_inline
fn is_renderbuffer(renderbuffer: GLuint) -> GLboolean:
    return _glIsRenderbuffer_ptr.get_or_create_ptr()[](renderbuffer)


@always_inline
fn is_sampler(sampler: GLuint) -> GLboolean:
    return _glIsSampler_ptr.get_or_create_ptr()[](sampler)


@always_inline
fn is_shader(shader: GLuint) -> GLboolean:
    return _glIsShader_ptr.get_or_create_ptr()[](shader)


@always_inline
fn is_sync(sync: GLsync) -> GLboolean:
    return _glIsSync_ptr.get_or_create_ptr()[](sync)


@always_inline
fn is_texture(texture: GLuint) -> GLboolean:
    return _glIsTexture_ptr.get_or_create_ptr()[](texture)


@always_inline
fn is_transform_feedback(id: GLuint) -> GLboolean:
    return _glIsTransformFeedback_ptr.get_or_create_ptr()[](id)


@always_inline
fn is_vertex_array(array: GLuint) -> GLboolean:
    return _glIsVertexArray_ptr.get_or_create_ptr()[](array)


@always_inline
fn line_width(width: GLfloat):
    return _glLineWidth_ptr.get_or_create_ptr()[](width)


@always_inline
fn link_program(program: GLuint):
    return _glLinkProgram_ptr.get_or_create_ptr()[](program)


@always_inline
fn logic_op(opcode: LogicOp):
    return _glLogicOp_ptr.get_or_create_ptr()[](opcode)


@always_inline
fn map_buffer(target: BufferTargetARB, access: BufferAccessARB):
    return _glMapBuffer_ptr.get_or_create_ptr()[](target, access)


@always_inline
fn map_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
    return _glMapBufferRange_ptr.get_or_create_ptr()[](target, offset, length, access)


@always_inline
fn map_named_buffer(buffer: GLuint, access: BufferAccessARB):
    return _glMapNamedBuffer_ptr.get_or_create_ptr()[](buffer, access)


@always_inline
fn map_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
    return _glMapNamedBufferRange_ptr.get_or_create_ptr()[](buffer, offset, length, access)


@always_inline
fn memory_barrier(barriers: MemoryBarrierMask):
    return _glMemoryBarrier_ptr.get_or_create_ptr()[](barriers)


@always_inline
fn memory_barrier_by_region(barriers: MemoryBarrierMask):
    return _glMemoryBarrierByRegion_ptr.get_or_create_ptr()[](barriers)


@always_inline
fn min_sample_shading(value: GLfloat):
    return _glMinSampleShading_ptr.get_or_create_ptr()[](value)


@always_inline
fn multi_draw_arrays(mode: PrimitiveType, first: Ptr[GLint, mut=False], count: Ptr[GLsizei, mut=False], drawcount: GLsizei):
    return _glMultiDrawArrays_ptr.get_or_create_ptr()[](mode, first, count, drawcount)


@always_inline
fn multi_draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, mut=False], drawcount: GLsizei, stride: GLsizei):
    return _glMultiDrawArraysIndirect_ptr.get_or_create_ptr()[](mode, indirect, drawcount, stride)


@always_inline
fn multi_draw_arrays_indirect_count(mode: PrimitiveType, indirect: Ptr[NoneType, mut=False], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
    return _glMultiDrawArraysIndirectCount_ptr.get_or_create_ptr()[](mode, indirect, drawcount, maxdrawcount, stride)


@always_inline
fn multi_draw_elements(mode: PrimitiveType, count: Ptr[GLsizei, mut=False], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=False], mut=False], drawcount: GLsizei):
    return _glMultiDrawElements_ptr.get_or_create_ptr()[](mode, count, type, indices, drawcount)


@always_inline
fn multi_draw_elements_base_vertex(mode: PrimitiveType, count: Ptr[GLsizei, mut=False], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=False], mut=False], drawcount: GLsizei, basevertex: Ptr[GLint, mut=False]):
    return _glMultiDrawElementsBaseVertex_ptr.get_or_create_ptr()[](mode, count, type, indices, drawcount, basevertex)


@always_inline
fn multi_draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False], drawcount: GLsizei, stride: GLsizei):
    return _glMultiDrawElementsIndirect_ptr.get_or_create_ptr()[](mode, type, indirect, drawcount, stride)


@always_inline
fn multi_draw_elements_indirect_count(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=False], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
    return _glMultiDrawElementsIndirectCount_ptr.get_or_create_ptr()[](mode, type, indirect, drawcount, maxdrawcount, stride)


@always_inline
fn multi_tex_coord_p1ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
    return _glMultiTexCoordP1ui_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p1uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glMultiTexCoordP1uiv_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p2ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
    return _glMultiTexCoordP2ui_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p2uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glMultiTexCoordP2uiv_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p3ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
    return _glMultiTexCoordP3ui_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p3uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glMultiTexCoordP3uiv_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p4ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
    return _glMultiTexCoordP4ui_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn multi_tex_coord_p4uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glMultiTexCoordP4uiv_ptr.get_or_create_ptr()[](texture, type, coords)


@always_inline
fn named_buffer_data(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=False], usage: VertexBufferObjectUsage):
    return _glNamedBufferData_ptr.get_or_create_ptr()[](buffer, size, data, usage)


@always_inline
fn named_buffer_storage(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=False], flags: BufferStorageMask):
    return _glNamedBufferStorage_ptr.get_or_create_ptr()[](buffer, size, data, flags)


@always_inline
fn named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=False]):
    return _glNamedBufferSubData_ptr.get_or_create_ptr()[](buffer, offset, size, data)


@always_inline
fn named_framebuffer_draw_buffer(framebuffer: GLuint, buf: ColorBuffer):
    return _glNamedFramebufferDrawBuffer_ptr.get_or_create_ptr()[](framebuffer, buf)


@always_inline
fn named_framebuffer_draw_buffers(framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, mut=False]):
    return _glNamedFramebufferDrawBuffers_ptr.get_or_create_ptr()[](framebuffer, n, bufs)


@always_inline
fn named_framebuffer_parameteri(framebuffer: GLuint, pname: FramebufferParameterName, param: GLint):
    return _glNamedFramebufferParameteri_ptr.get_or_create_ptr()[](framebuffer, pname, param)


@always_inline
fn named_framebuffer_read_buffer(framebuffer: GLuint, src: ColorBuffer):
    return _glNamedFramebufferReadBuffer_ptr.get_or_create_ptr()[](framebuffer, src)


@always_inline
fn named_framebuffer_renderbuffer(framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
    return _glNamedFramebufferRenderbuffer_ptr.get_or_create_ptr()[](framebuffer, attachment, renderbuffertarget, renderbuffer)


@always_inline
fn named_framebuffer_texture(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
    return _glNamedFramebufferTexture_ptr.get_or_create_ptr()[](framebuffer, attachment, texture, level)


@always_inline
fn named_framebuffer_texture_layer(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
    return _glNamedFramebufferTextureLayer_ptr.get_or_create_ptr()[](framebuffer, attachment, texture, level, layer)


@always_inline
fn named_renderbuffer_storage(renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
    return _glNamedRenderbufferStorage_ptr.get_or_create_ptr()[](renderbuffer, internalformat, width, height)


@always_inline
fn named_renderbuffer_storage_multisample(renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
    return _glNamedRenderbufferStorageMultisample_ptr.get_or_create_ptr()[](renderbuffer, samples, internalformat, width, height)


@always_inline
fn normal_p3ui(type: NormalPointerType, coords: GLuint):
    return _glNormalP3ui_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn normal_p3uiv(type: NormalPointerType, coords: Ptr[GLuint, mut=False]):
    return _glNormalP3uiv_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn object_label(identifier: ObjectIdentifier, name: GLuint, length: GLsizei, owned label: String):
    return _glObjectLabel_ptr.get_or_create_ptr()[](identifier, name, length, label.unsafe_cstr_ptr())


@always_inline
fn object_ptr_label(ptr: Ptr[NoneType, mut=False], length: GLsizei, owned label: String):
    return _glObjectPtrLabel_ptr.get_or_create_ptr()[](ptr, length, label.unsafe_cstr_ptr())


@always_inline
fn patch_parameterfv(pname: PatchParameterName, values: Ptr[GLfloat, mut=False]):
    return _glPatchParameterfv_ptr.get_or_create_ptr()[](pname, values)


@always_inline
fn patch_parameteri(pname: PatchParameterName, value: GLint):
    return _glPatchParameteri_ptr.get_or_create_ptr()[](pname, value)


@always_inline
fn pause_transform_feedback():
    return _glPauseTransformFeedback_ptr.get_or_create_ptr()[]()


@always_inline
fn pixel_storef(pname: PixelStoreParameter, param: GLfloat):
    return _glPixelStoref_ptr.get_or_create_ptr()[](pname, param)


@always_inline
fn pixel_storei(pname: PixelStoreParameter, param: GLint):
    return _glPixelStorei_ptr.get_or_create_ptr()[](pname, param)


@always_inline
fn point_parameterf(pname: PointParameterNameARB, param: GLfloat):
    return _glPointParameterf_ptr.get_or_create_ptr()[](pname, param)


@always_inline
fn point_parameterfv(pname: PointParameterNameARB, params: Ptr[GLfloat, mut=False]):
    return _glPointParameterfv_ptr.get_or_create_ptr()[](pname, params)


@always_inline
fn point_parameteri(pname: PointParameterNameARB, param: GLint):
    return _glPointParameteri_ptr.get_or_create_ptr()[](pname, param)


@always_inline
fn point_parameteriv(pname: PointParameterNameARB, params: Ptr[GLint, mut=False]):
    return _glPointParameteriv_ptr.get_or_create_ptr()[](pname, params)


@always_inline
fn point_size(size: GLfloat):
    return _glPointSize_ptr.get_or_create_ptr()[](size)


@always_inline
fn polygon_mode(face: TriangleFace, mode: PolygonMode):
    return _glPolygonMode_ptr.get_or_create_ptr()[](face, mode)


@always_inline
fn polygon_offset(factor: GLfloat, units: GLfloat):
    return _glPolygonOffset_ptr.get_or_create_ptr()[](factor, units)


@always_inline
fn polygon_offset_clamp(factor: GLfloat, units: GLfloat, clamp: GLfloat):
    return _glPolygonOffsetClamp_ptr.get_or_create_ptr()[](factor, units, clamp)


@always_inline
fn pop_debug_group():
    return _glPopDebugGroup_ptr.get_or_create_ptr()[]()


@always_inline
fn primitive_restart_index(index: GLuint):
    return _glPrimitiveRestartIndex_ptr.get_or_create_ptr()[](index)


@always_inline
fn program_binary(program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, mut=False], length: GLsizei):
    return _glProgramBinary_ptr.get_or_create_ptr()[](program, binary_format, binary, length)


@always_inline
fn program_parameteri(program: GLuint, pname: ProgramParameterPName, value: GLint):
    return _glProgramParameteri_ptr.get_or_create_ptr()[](program, pname, value)


@always_inline
fn program_uniform1d(program: GLuint, location: GLint, v0: GLdouble):
    return _glProgramUniform1d_ptr.get_or_create_ptr()[](program, location, v0)


@always_inline
fn program_uniform1dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniform1dv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform1f(program: GLuint, location: GLint, v0: GLfloat):
    return _glProgramUniform1f_ptr.get_or_create_ptr()[](program, location, v0)


@always_inline
fn program_uniform1fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniform1fv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform1i(program: GLuint, location: GLint, v0: GLint):
    return _glProgramUniform1i_ptr.get_or_create_ptr()[](program, location, v0)


@always_inline
fn program_uniform1iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glProgramUniform1iv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform1ui(program: GLuint, location: GLint, v0: GLuint):
    return _glProgramUniform1ui_ptr.get_or_create_ptr()[](program, location, v0)


@always_inline
fn program_uniform1uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glProgramUniform1uiv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform2d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble):
    return _glProgramUniform2d_ptr.get_or_create_ptr()[](program, location, v0, v1)


@always_inline
fn program_uniform2dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniform2dv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform2f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat):
    return _glProgramUniform2f_ptr.get_or_create_ptr()[](program, location, v0, v1)


@always_inline
fn program_uniform2fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniform2fv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform2i(program: GLuint, location: GLint, v0: GLint, v1: GLint):
    return _glProgramUniform2i_ptr.get_or_create_ptr()[](program, location, v0, v1)


@always_inline
fn program_uniform2iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glProgramUniform2iv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform2ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint):
    return _glProgramUniform2ui_ptr.get_or_create_ptr()[](program, location, v0, v1)


@always_inline
fn program_uniform2uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glProgramUniform2uiv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform3d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble):
    return _glProgramUniform3d_ptr.get_or_create_ptr()[](program, location, v0, v1, v2)


@always_inline
fn program_uniform3dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniform3dv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform3f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
    return _glProgramUniform3f_ptr.get_or_create_ptr()[](program, location, v0, v1, v2)


@always_inline
fn program_uniform3fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniform3fv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform3i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint):
    return _glProgramUniform3i_ptr.get_or_create_ptr()[](program, location, v0, v1, v2)


@always_inline
fn program_uniform3iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glProgramUniform3iv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform3ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
    return _glProgramUniform3ui_ptr.get_or_create_ptr()[](program, location, v0, v1, v2)


@always_inline
fn program_uniform3uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glProgramUniform3uiv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform4d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble):
    return _glProgramUniform4d_ptr.get_or_create_ptr()[](program, location, v0, v1, v2, v3)


@always_inline
fn program_uniform4dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniform4dv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform4f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
    return _glProgramUniform4f_ptr.get_or_create_ptr()[](program, location, v0, v1, v2, v3)


@always_inline
fn program_uniform4fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniform4fv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform4i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
    return _glProgramUniform4i_ptr.get_or_create_ptr()[](program, location, v0, v1, v2, v3)


@always_inline
fn program_uniform4iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glProgramUniform4iv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform4ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
    return _glProgramUniform4ui_ptr.get_or_create_ptr()[](program, location, v0, v1, v2, v3)


@always_inline
fn program_uniform4uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glProgramUniform4uiv_ptr.get_or_create_ptr()[](program, location, count, value)


@always_inline
fn program_uniform_matrix2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix2dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix2fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix2x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix2x3dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix2x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix2x3fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix2x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix2x4dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix2x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix2x4fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix3dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix3fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix3x2dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix3x2fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix3x4dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix3x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix3x4fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix4dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix4fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix4x2dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix4x2fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glProgramUniformMatrix4x3dv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn program_uniform_matrix4x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glProgramUniformMatrix4x3fv_ptr.get_or_create_ptr()[](program, location, count, GLboolean(Int(transpose)), value)


@always_inline
fn provoking_vertex(mode: VertexProvokingMode):
    return _glProvokingVertex_ptr.get_or_create_ptr()[](mode)


@always_inline
fn push_debug_group(source: DebugSource, id: GLuint, length: GLsizei, owned message: String):
    return _glPushDebugGroup_ptr.get_or_create_ptr()[](source, id, length, message.unsafe_cstr_ptr())


@always_inline
fn query_counter(id: GLuint, target: QueryCounterTarget):
    return _glQueryCounter_ptr.get_or_create_ptr()[](id, target)


@always_inline
fn read_buffer(src: ReadBufferMode):
    return _glReadBuffer_ptr.get_or_create_ptr()[](src)


@always_inline
fn read_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
    return _glReadPixels_ptr.get_or_create_ptr()[](x, y, width, height, format, type, pixels)


@always_inline
fn readn_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, mut=True]):
    return _glReadnPixels_ptr.get_or_create_ptr()[](x, y, width, height, format, type, buf_size, data)


@always_inline
fn release_shader_compiler():
    return _glReleaseShaderCompiler_ptr.get_or_create_ptr()[]()


@always_inline
fn renderbuffer_storage(target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
    return _glRenderbufferStorage_ptr.get_or_create_ptr()[](target, internalformat, width, height)


@always_inline
fn renderbuffer_storage_multisample(target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
    return _glRenderbufferStorageMultisample_ptr.get_or_create_ptr()[](target, samples, internalformat, width, height)


@always_inline
fn resume_transform_feedback():
    return _glResumeTransformFeedback_ptr.get_or_create_ptr()[]()


@always_inline
fn sample_coverage(value: GLfloat, invert: Bool):
    return _glSampleCoverage_ptr.get_or_create_ptr()[](value, GLboolean(Int(invert)))


@always_inline
fn sample_maski(mask_number: GLuint, mask: GLbitfield):
    return _glSampleMaski_ptr.get_or_create_ptr()[](mask_number, mask)


@always_inline
fn sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=False]):
    return _glSamplerParameterIiv_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, mut=False]):
    return _glSamplerParameterIuiv_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn sampler_parameterf(sampler: GLuint, pname: SamplerParameterF, param: GLfloat):
    return _glSamplerParameterf_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, mut=False]):
    return _glSamplerParameterfv_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn sampler_parameteri(sampler: GLuint, pname: SamplerParameterI, param: GLint):
    return _glSamplerParameteri_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=False]):
    return _glSamplerParameteriv_ptr.get_or_create_ptr()[](sampler, pname, param)


@always_inline
fn scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glScissor_ptr.get_or_create_ptr()[](x, y, width, height)


@always_inline
fn scissor_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLint, mut=False]):
    return _glScissorArrayv_ptr.get_or_create_ptr()[](first, count, v)


@always_inline
fn scissor_indexed(index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei):
    return _glScissorIndexed_ptr.get_or_create_ptr()[](index, left, bottom, width, height)


@always_inline
fn scissor_indexedv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glScissorIndexedv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn secondary_color_p3ui(type: ColorPointerType, color: GLuint):
    return _glSecondaryColorP3ui_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn secondary_color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, mut=False]):
    return _glSecondaryColorP3uiv_ptr.get_or_create_ptr()[](type, color)


@always_inline
fn shader_binary(count: GLsizei, shaders: Ptr[GLuint, mut=False], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, mut=False], length: GLsizei):
    return _glShaderBinary_ptr.get_or_create_ptr()[](count, shaders, binary_format, binary, length)


@always_inline
fn shader_source(shader: GLuint, count: GLsizei, mut string: List[String], length: Ptr[GLint, mut=False]):
    var c_list = [str.unsafe_cstr_ptr().origin_cast[origin=ImmutableAnyOrigin]() for ref str in string]
    return _glShaderSource_ptr.get_or_create_ptr()[](shader, count, c_list.steal_data().origin_cast[mut=False, origin=ImmutableAnyOrigin](), length)


@always_inline
fn shader_storage_block_binding(program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint):
    return _glShaderStorageBlockBinding_ptr.get_or_create_ptr()[](program, storage_block_index, storage_block_binding)


@always_inline
fn specialize_shader(shader: GLuint, owned p_entry_point: String, num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, mut=False], p_constant_value: Ptr[GLuint, mut=False]):
    return _glSpecializeShader_ptr.get_or_create_ptr()[](shader, p_entry_point.unsafe_cstr_ptr(), num_specialization_constants, p_constant_index, p_constant_value)


@always_inline
fn stencil_func(func: StencilFunction, ref_: GLint, mask: GLuint):
    return _glStencilFunc_ptr.get_or_create_ptr()[](func, ref_, mask)


@always_inline
fn stencil_func_separate(face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint):
    return _glStencilFuncSeparate_ptr.get_or_create_ptr()[](face, func, ref_, mask)


@always_inline
fn stencil_mask(mask: GLuint):
    return _glStencilMask_ptr.get_or_create_ptr()[](mask)


@always_inline
fn stencil_mask_separate(face: TriangleFace, mask: GLuint):
    return _glStencilMaskSeparate_ptr.get_or_create_ptr()[](face, mask)


@always_inline
fn stencil_op(fail: StencilOp, zfail: StencilOp, zpass: StencilOp):
    return _glStencilOp_ptr.get_or_create_ptr()[](fail, zfail, zpass)


@always_inline
fn stencil_op_separate(face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp):
    return _glStencilOpSeparate_ptr.get_or_create_ptr()[](face, sfail, dpfail, dppass)


@always_inline
fn tex_buffer(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint):
    return _glTexBuffer_ptr.get_or_create_ptr()[](target, internalformat, buffer)


@always_inline
fn tex_buffer_range(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
    return _glTexBufferRange_ptr.get_or_create_ptr()[](target, internalformat, buffer, offset, size)


@always_inline
fn tex_coord_p1ui(type: TexCoordPointerType, coords: GLuint):
    return _glTexCoordP1ui_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p1uiv(type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glTexCoordP1uiv_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p2ui(type: TexCoordPointerType, coords: GLuint):
    return _glTexCoordP2ui_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p2uiv(type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glTexCoordP2uiv_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p3ui(type: TexCoordPointerType, coords: GLuint):
    return _glTexCoordP3ui_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p3uiv(type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glTexCoordP3uiv_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p4ui(type: TexCoordPointerType, coords: GLuint):
    return _glTexCoordP4ui_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_coord_p4uiv(type: TexCoordPointerType, coords: Ptr[GLuint, mut=False]):
    return _glTexCoordP4uiv_ptr.get_or_create_ptr()[](type, coords)


@always_inline
fn tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexImage1D_ptr.get_or_create_ptr()[](target, level, internalformat, width, border, format, type, pixels)


@always_inline
fn tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexImage2D_ptr.get_or_create_ptr()[](target, level, internalformat, width, height, border, format, type, pixels)


@always_inline
fn tex_image2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool):
    return _glTexImage2DMultisample_ptr.get_or_create_ptr()[](target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexImage3D_ptr.get_or_create_ptr()[](target, level, internalformat, width, height, depth, border, format, type, pixels)


@always_inline
fn tex_image3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool):
    return _glTexImage3DMultisample_ptr.get_or_create_ptr()[](target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn tex_parameter_iiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=False]):
    return _glTexParameterIiv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn tex_parameter_iuiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, mut=False]):
    return _glTexParameterIuiv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn tex_parameterf(target: TextureTarget, pname: TextureParameterName, param: GLfloat):
    return _glTexParameterf_ptr.get_or_create_ptr()[](target, pname, param)


@always_inline
fn tex_parameterfv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, mut=False]):
    return _glTexParameterfv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn tex_parameteri(target: TextureTarget, pname: TextureParameterName, param: GLint):
    return _glTexParameteri_ptr.get_or_create_ptr()[](target, pname, param)


@always_inline
fn tex_parameteriv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=False]):
    return _glTexParameteriv_ptr.get_or_create_ptr()[](target, pname, params)


@always_inline
fn tex_storage_1d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
    return _glTexStorage1D_ptr.get_or_create_ptr()[](target, levels, internalformat, width)


@always_inline
fn tex_storage_2d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
    return _glTexStorage2D_ptr.get_or_create_ptr()[](target, levels, internalformat, width, height)


@always_inline
fn tex_storage2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool):
    return _glTexStorage2DMultisample_ptr.get_or_create_ptr()[](target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn tex_storage_3d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
    return _glTexStorage3D_ptr.get_or_create_ptr()[](target, levels, internalformat, width, height, depth)


@always_inline
fn tex_storage3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool):
    return _glTexStorage3DMultisample_ptr.get_or_create_ptr()[](target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexSubImage1D_ptr.get_or_create_ptr()[](target, level, xoffset, width, format, type, pixels)


@always_inline
fn tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexSubImage2D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, width, height, format, type, pixels)


@always_inline
fn tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTexSubImage3D_ptr.get_or_create_ptr()[](target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


@always_inline
fn texture_barrier():
    return _glTextureBarrier_ptr.get_or_create_ptr()[]()


@always_inline
fn texture_buffer(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint):
    return _glTextureBuffer_ptr.get_or_create_ptr()[](texture, internalformat, buffer)


@always_inline
fn texture_buffer_range(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
    return _glTextureBufferRange_ptr.get_or_create_ptr()[](texture, internalformat, buffer, offset, size)


@always_inline
fn texture_parameter_iiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, mut=False]):
    return _glTextureParameterIiv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn texture_parameter_iuiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, mut=False]):
    return _glTextureParameterIuiv_ptr.get_or_create_ptr()[](texture, pname, params)


@always_inline
fn texture_parameterf(texture: GLuint, pname: TextureParameterName, param: GLfloat):
    return _glTextureParameterf_ptr.get_or_create_ptr()[](texture, pname, param)


@always_inline
fn texture_parameterfv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, mut=False]):
    return _glTextureParameterfv_ptr.get_or_create_ptr()[](texture, pname, param)


@always_inline
fn texture_parameteri(texture: GLuint, pname: TextureParameterName, param: GLint):
    return _glTextureParameteri_ptr.get_or_create_ptr()[](texture, pname, param)


@always_inline
fn texture_parameteriv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, mut=False]):
    return _glTextureParameteriv_ptr.get_or_create_ptr()[](texture, pname, param)


@always_inline
fn texture_storage_1d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
    return _glTextureStorage1D_ptr.get_or_create_ptr()[](texture, levels, internalformat, width)


@always_inline
fn texture_storage_2d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
    return _glTextureStorage2D_ptr.get_or_create_ptr()[](texture, levels, internalformat, width, height)


@always_inline
fn texture_storage2_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool):
    return _glTextureStorage2DMultisample_ptr.get_or_create_ptr()[](texture, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn texture_storage_3d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
    return _glTextureStorage3D_ptr.get_or_create_ptr()[](texture, levels, internalformat, width, height, depth)


@always_inline
fn texture_storage3_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool):
    return _glTextureStorage3DMultisample_ptr.get_or_create_ptr()[](texture, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


@always_inline
fn texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTextureSubImage1D_ptr.get_or_create_ptr()[](texture, level, xoffset, width, format, type, pixels)


@always_inline
fn texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTextureSubImage2D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, width, height, format, type, pixels)


@always_inline
fn texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=False]):
    return _glTextureSubImage3D_ptr.get_or_create_ptr()[](texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


@always_inline
fn texture_view(texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint):
    return _glTextureView_ptr.get_or_create_ptr()[](texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)


@always_inline
fn transform_feedback_buffer_base(xfb: GLuint, index: GLuint, buffer: GLuint):
    return _glTransformFeedbackBufferBase_ptr.get_or_create_ptr()[](xfb, index, buffer)


@always_inline
fn transform_feedback_buffer_range(xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
    return _glTransformFeedbackBufferRange_ptr.get_or_create_ptr()[](xfb, index, buffer, offset, size)


@always_inline
fn transform_feedback_varyings(program: GLuint, count: GLsizei, mut varyings: List[String], buffer_mode: TransformFeedbackBufferMode):
    var c_list = [str.unsafe_cstr_ptr().origin_cast[origin=ImmutableAnyOrigin]() for ref str in varyings]
    return _glTransformFeedbackVaryings_ptr.get_or_create_ptr()[](program, count, c_list.steal_data().origin_cast[mut=False, origin=ImmutableAnyOrigin](), buffer_mode)


@always_inline
fn uniform1d(location: GLint, x: GLdouble):
    return _glUniform1d_ptr.get_or_create_ptr()[](location, x)


@always_inline
fn uniform1dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glUniform1dv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform1f(location: GLint, v0: GLfloat):
    return _glUniform1f_ptr.get_or_create_ptr()[](location, v0)


@always_inline
fn uniform1fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glUniform1fv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform1i(location: GLint, v0: GLint):
    return _glUniform1i_ptr.get_or_create_ptr()[](location, v0)


@always_inline
fn uniform1iv(location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glUniform1iv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform1ui(location: GLint, v0: GLuint):
    return _glUniform1ui_ptr.get_or_create_ptr()[](location, v0)


@always_inline
fn uniform1uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glUniform1uiv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform2d(location: GLint, x: GLdouble, y: GLdouble):
    return _glUniform2d_ptr.get_or_create_ptr()[](location, x, y)


@always_inline
fn uniform2dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glUniform2dv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform2f(location: GLint, v0: GLfloat, v1: GLfloat):
    return _glUniform2f_ptr.get_or_create_ptr()[](location, v0, v1)


@always_inline
fn uniform2fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glUniform2fv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform2i(location: GLint, v0: GLint, v1: GLint):
    return _glUniform2i_ptr.get_or_create_ptr()[](location, v0, v1)


@always_inline
fn uniform2iv(location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glUniform2iv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform2ui(location: GLint, v0: GLuint, v1: GLuint):
    return _glUniform2ui_ptr.get_or_create_ptr()[](location, v0, v1)


@always_inline
fn uniform2uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glUniform2uiv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform3d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble):
    return _glUniform3d_ptr.get_or_create_ptr()[](location, x, y, z)


@always_inline
fn uniform3dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glUniform3dv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
    return _glUniform3f_ptr.get_or_create_ptr()[](location, v0, v1, v2)


@always_inline
fn uniform3fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glUniform3fv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint):
    return _glUniform3i_ptr.get_or_create_ptr()[](location, v0, v1, v2)


@always_inline
fn uniform3iv(location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glUniform3iv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform3ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
    return _glUniform3ui_ptr.get_or_create_ptr()[](location, v0, v1, v2)


@always_inline
fn uniform3uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glUniform3uiv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform4d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
    return _glUniform4d_ptr.get_or_create_ptr()[](location, x, y, z, w)


@always_inline
fn uniform4dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=False]):
    return _glUniform4dv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
    return _glUniform4f_ptr.get_or_create_ptr()[](location, v0, v1, v2, v3)


@always_inline
fn uniform4fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=False]):
    return _glUniform4fv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
    return _glUniform4i_ptr.get_or_create_ptr()[](location, v0, v1, v2, v3)


@always_inline
fn uniform4iv(location: GLint, count: GLsizei, value: Ptr[GLint, mut=False]):
    return _glUniform4iv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform4ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
    return _glUniform4ui_ptr.get_or_create_ptr()[](location, v0, v1, v2, v3)


@always_inline
fn uniform4uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, mut=False]):
    return _glUniform4uiv_ptr.get_or_create_ptr()[](location, count, value)


@always_inline
fn uniform_block_binding(program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint):
    return _glUniformBlockBinding_ptr.get_or_create_ptr()[](program, uniform_block_index, uniform_block_binding)


@always_inline
fn uniform_matrix2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix2dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix2fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix2x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix2x3dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix2x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix2x3fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix2x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix2x4dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix2x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix2x4fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix3dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix3fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix3x2dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix3x2fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix3x4dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix3x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix3x4fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix4dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix4fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix4x2dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix4x2fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, mut=False]):
    return _glUniformMatrix4x3dv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_matrix4x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, mut=False]):
    return _glUniformMatrix4x3fv_ptr.get_or_create_ptr()[](location, count, GLboolean(Int(transpose)), value)


@always_inline
fn uniform_subroutinesuiv(shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, mut=False]):
    return _glUniformSubroutinesuiv_ptr.get_or_create_ptr()[](shadertype, count, indices)


@always_inline
fn unmap_buffer(target: BufferTargetARB) -> GLboolean:
    return _glUnmapBuffer_ptr.get_or_create_ptr()[](target)


@always_inline
fn unmap_named_buffer(buffer: GLuint) -> GLboolean:
    return _glUnmapNamedBuffer_ptr.get_or_create_ptr()[](buffer)


@always_inline
fn use_program(program: GLuint):
    return _glUseProgram_ptr.get_or_create_ptr()[](program)


@always_inline
fn use_program_stages(pipeline: GLuint, stages: UseProgramStageMask, program: GLuint):
    return _glUseProgramStages_ptr.get_or_create_ptr()[](pipeline, stages, program)


@always_inline
fn validate_program(program: GLuint):
    return _glValidateProgram_ptr.get_or_create_ptr()[](program)


@always_inline
fn validate_program_pipeline(pipeline: GLuint):
    return _glValidateProgramPipeline_ptr.get_or_create_ptr()[](pipeline)


@always_inline
fn vertex_array_attrib_binding(vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint):
    return _glVertexArrayAttribBinding_ptr.get_or_create_ptr()[](vaobj, attribindex, bindingindex)


@always_inline
fn vertex_array_attrib_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint):
    return _glVertexArrayAttribFormat_ptr.get_or_create_ptr()[](vaobj, attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


@always_inline
fn vertex_array_attrib_i_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
    return _glVertexArrayAttribIFormat_ptr.get_or_create_ptr()[](vaobj, attribindex, size, type, relativeoffset)


@always_inline
fn vertex_array_attrib_l_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
    return _glVertexArrayAttribLFormat_ptr.get_or_create_ptr()[](vaobj, attribindex, size, type, relativeoffset)


@always_inline
fn vertex_array_binding_divisor(vaobj: GLuint, bindingindex: GLuint, divisor: GLuint):
    return _glVertexArrayBindingDivisor_ptr.get_or_create_ptr()[](vaobj, bindingindex, divisor)


@always_inline
fn vertex_array_element_buffer(vaobj: GLuint, buffer: GLuint):
    return _glVertexArrayElementBuffer_ptr.get_or_create_ptr()[](vaobj, buffer)


@always_inline
fn vertex_array_vertex_buffer(vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
    return _glVertexArrayVertexBuffer_ptr.get_or_create_ptr()[](vaobj, bindingindex, buffer, offset, stride)


@always_inline
fn vertex_array_vertex_buffers(vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=False], offsets: Ptr[GLintptr, mut=False], strides: Ptr[GLsizei, mut=False]):
    return _glVertexArrayVertexBuffers_ptr.get_or_create_ptr()[](vaobj, first, count, buffers, offsets, strides)


@always_inline
fn vertex_attrib1d(index: GLuint, x: GLdouble):
    return _glVertexAttrib1d_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib1dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttrib1dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib1f(index: GLuint, x: GLfloat):
    return _glVertexAttrib1f_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib1fv(index: GLuint, v: Ptr[GLfloat, mut=False]):
    return _glVertexAttrib1fv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib1s(index: GLuint, x: GLshort):
    return _glVertexAttrib1s_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib1sv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttrib1sv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib2d(index: GLuint, x: GLdouble, y: GLdouble):
    return _glVertexAttrib2d_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib2dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttrib2dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib2f(index: GLuint, x: GLfloat, y: GLfloat):
    return _glVertexAttrib2f_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib2fv(index: GLuint, v: Ptr[GLfloat, mut=False]):
    return _glVertexAttrib2fv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib2s(index: GLuint, x: GLshort, y: GLshort):
    return _glVertexAttrib2s_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib2sv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttrib2sv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
    return _glVertexAttrib3d_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib3dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttrib3dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat):
    return _glVertexAttrib3f_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib3fv(index: GLuint, v: Ptr[GLfloat, mut=False]):
    return _glVertexAttrib3fv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib3s(index: GLuint, x: GLshort, y: GLshort, z: GLshort):
    return _glVertexAttrib3s_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib3sv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttrib3sv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_nbv(index: GLuint, v: Ptr[GLbyte, mut=False]):
    return _glVertexAttrib4Nbv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_niv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttrib4Niv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_nsv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttrib4Nsv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_nub(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte):
    return _glVertexAttrib4Nub_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib4_nubv(index: GLuint, v: Ptr[GLubyte, mut=False]):
    return _glVertexAttrib4Nubv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_nuiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttrib4Nuiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4_nusv(index: GLuint, v: Ptr[GLushort, mut=False]):
    return _glVertexAttrib4Nusv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4bv(index: GLuint, v: Ptr[GLbyte, mut=False]):
    return _glVertexAttrib4bv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
    return _glVertexAttrib4d_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib4dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttrib4dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat):
    return _glVertexAttrib4f_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib4fv(index: GLuint, v: Ptr[GLfloat, mut=False]):
    return _glVertexAttrib4fv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4iv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttrib4iv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4s(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort):
    return _glVertexAttrib4s_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib4sv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttrib4sv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4ubv(index: GLuint, v: Ptr[GLubyte, mut=False]):
    return _glVertexAttrib4ubv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4uiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttrib4uiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib4usv(index: GLuint, v: Ptr[GLushort, mut=False]):
    return _glVertexAttrib4usv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_binding(attribindex: GLuint, bindingindex: GLuint):
    return _glVertexAttribBinding_ptr.get_or_create_ptr()[](attribindex, bindingindex)


@always_inline
fn vertex_attrib_divisor(index: GLuint, divisor: GLuint):
    return _glVertexAttribDivisor_ptr.get_or_create_ptr()[](index, divisor)


@always_inline
fn vertex_attrib_format(attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint):
    return _glVertexAttribFormat_ptr.get_or_create_ptr()[](attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


@always_inline
fn vertex_attrib_i1i(index: GLuint, x: GLint):
    return _glVertexAttribI1i_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib_i1iv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttribI1iv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i1ui(index: GLuint, x: GLuint):
    return _glVertexAttribI1ui_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib_i1uiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttribI1uiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i2i(index: GLuint, x: GLint, y: GLint):
    return _glVertexAttribI2i_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib_i2iv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttribI2iv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i2ui(index: GLuint, x: GLuint, y: GLuint):
    return _glVertexAttribI2ui_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib_i2uiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttribI2uiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i3i(index: GLuint, x: GLint, y: GLint, z: GLint):
    return _glVertexAttribI3i_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib_i3iv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttribI3iv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i3ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint):
    return _glVertexAttribI3ui_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib_i3uiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttribI3uiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4bv(index: GLuint, v: Ptr[GLbyte, mut=False]):
    return _glVertexAttribI4bv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4i(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint):
    return _glVertexAttribI4i_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib_i4iv(index: GLuint, v: Ptr[GLint, mut=False]):
    return _glVertexAttribI4iv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4sv(index: GLuint, v: Ptr[GLshort, mut=False]):
    return _glVertexAttribI4sv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4ubv(index: GLuint, v: Ptr[GLubyte, mut=False]):
    return _glVertexAttribI4ubv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint):
    return _glVertexAttribI4ui_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib_i4uiv(index: GLuint, v: Ptr[GLuint, mut=False]):
    return _glVertexAttribI4uiv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i4usv(index: GLuint, v: Ptr[GLushort, mut=False]):
    return _glVertexAttribI4usv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_i_format(attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
    return _glVertexAttribIFormat_ptr.get_or_create_ptr()[](attribindex, size, type, relativeoffset)


@always_inline
fn vertex_attrib_i_pointer(index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, mut=False]):
    return _glVertexAttribIPointer_ptr.get_or_create_ptr()[](index, size, type, stride, pointer)


@always_inline
fn vertex_attrib_l1d(index: GLuint, x: GLdouble):
    return _glVertexAttribL1d_ptr.get_or_create_ptr()[](index, x)


@always_inline
fn vertex_attrib_l1dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttribL1dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_l2d(index: GLuint, x: GLdouble, y: GLdouble):
    return _glVertexAttribL2d_ptr.get_or_create_ptr()[](index, x, y)


@always_inline
fn vertex_attrib_l2dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttribL2dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_l3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
    return _glVertexAttribL3d_ptr.get_or_create_ptr()[](index, x, y, z)


@always_inline
fn vertex_attrib_l3dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttribL3dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_l4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
    return _glVertexAttribL4d_ptr.get_or_create_ptr()[](index, x, y, z, w)


@always_inline
fn vertex_attrib_l4dv(index: GLuint, v: Ptr[GLdouble, mut=False]):
    return _glVertexAttribL4dv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn vertex_attrib_l_format(attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
    return _glVertexAttribLFormat_ptr.get_or_create_ptr()[](attribindex, size, type, relativeoffset)


@always_inline
fn vertex_attrib_l_pointer(index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, mut=False]):
    return _glVertexAttribLPointer_ptr.get_or_create_ptr()[](index, size, type, stride, pointer)


@always_inline
fn vertex_attrib_p1ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint):
    return _glVertexAttribP1ui_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p1uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, mut=False]):
    return _glVertexAttribP1uiv_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p2ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint):
    return _glVertexAttribP2ui_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p2uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, mut=False]):
    return _glVertexAttribP2uiv_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p3ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint):
    return _glVertexAttribP3ui_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p3uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, mut=False]):
    return _glVertexAttribP3uiv_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p4ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint):
    return _glVertexAttribP4ui_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_p4uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, mut=False]):
    return _glVertexAttribP4uiv_ptr.get_or_create_ptr()[](index, type, GLboolean(Int(normalized)), value)


@always_inline
fn vertex_attrib_pointer(index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: Bool, stride: GLsizei, pointer: Ptr[NoneType, mut=False]):
    return _glVertexAttribPointer_ptr.get_or_create_ptr()[](index, size, type, GLboolean(Int(normalized)), stride, pointer)


@always_inline
fn vertex_binding_divisor(bindingindex: GLuint, divisor: GLuint):
    return _glVertexBindingDivisor_ptr.get_or_create_ptr()[](bindingindex, divisor)


@always_inline
fn vertex_p2ui(type: VertexPointerType, value: GLuint):
    return _glVertexP2ui_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn vertex_p2uiv(type: VertexPointerType, value: Ptr[GLuint, mut=False]):
    return _glVertexP2uiv_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn vertex_p3ui(type: VertexPointerType, value: GLuint):
    return _glVertexP3ui_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn vertex_p3uiv(type: VertexPointerType, value: Ptr[GLuint, mut=False]):
    return _glVertexP3uiv_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn vertex_p4ui(type: VertexPointerType, value: GLuint):
    return _glVertexP4ui_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn vertex_p4uiv(type: VertexPointerType, value: Ptr[GLuint, mut=False]):
    return _glVertexP4uiv_ptr.get_or_create_ptr()[](type, value)


@always_inline
fn viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei):
    return _glViewport_ptr.get_or_create_ptr()[](x, y, width, height)


@always_inline
fn viewport_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLfloat, mut=False]):
    return _glViewportArrayv_ptr.get_or_create_ptr()[](first, count, v)


@always_inline
fn viewport_indexedf(index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat):
    return _glViewportIndexedf_ptr.get_or_create_ptr()[](index, x, y, w, h)


@always_inline
fn viewport_indexedfv(index: GLuint, v: Ptr[GLfloat, mut=False]):
    return _glViewportIndexedfv_ptr.get_or_create_ptr()[](index, v)


@always_inline
fn wait_sync(sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64):
    return _glWaitSync_ptr.get_or_create_ptr()[](sync, flags, timeout)


fn init_gl_version_1_0(load: LoadProc) raises:
    _glBlendFunc_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendFunc]("glBlendFunc", load)
    _glClear_ptr.get_or_create_ptr()[] = load_proc[fptr_glClear]("glClear", load)
    _glClearColor_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearColor]("glClearColor", load)
    _glClearDepth_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearDepth]("glClearDepth", load)
    _glClearStencil_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearStencil]("glClearStencil", load)
    _glColorMask_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorMask]("glColorMask", load)
    _glCullFace_ptr.get_or_create_ptr()[] = load_proc[fptr_glCullFace]("glCullFace", load)
    _glDepthFunc_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthFunc]("glDepthFunc", load)
    _glDepthMask_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthMask]("glDepthMask", load)
    _glDepthRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthRange]("glDepthRange", load)
    _glDisable_ptr.get_or_create_ptr()[] = load_proc[fptr_glDisable]("glDisable", load)
    _glDrawBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawBuffer]("glDrawBuffer", load)
    _glEnable_ptr.get_or_create_ptr()[] = load_proc[fptr_glEnable]("glEnable", load)
    _glFinish_ptr.get_or_create_ptr()[] = load_proc[fptr_glFinish]("glFinish", load)
    _glFlush_ptr.get_or_create_ptr()[] = load_proc[fptr_glFlush]("glFlush", load)
    _glFrontFace_ptr.get_or_create_ptr()[] = load_proc[fptr_glFrontFace]("glFrontFace", load)
    _glGetBooleanv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBooleanv]("glGetBooleanv", load)
    _glGetDoublev_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetDoublev]("glGetDoublev", load)
    _glGetError_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetError]("glGetError", load)
    _glGetFloatv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFloatv]("glGetFloatv", load)
    _glGetIntegerv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetIntegerv]("glGetIntegerv", load)
    _glGetString_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetString]("glGetString", load)
    _glGetTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexImage]("glGetTexImage", load)
    _glGetTexLevelParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexLevelParameterfv]("glGetTexLevelParameterfv", load)
    _glGetTexLevelParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexLevelParameteriv]("glGetTexLevelParameteriv", load)
    _glGetTexParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexParameterfv]("glGetTexParameterfv", load)
    _glGetTexParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexParameteriv]("glGetTexParameteriv", load)
    _glHint_ptr.get_or_create_ptr()[] = load_proc[fptr_glHint]("glHint", load)
    _glIsEnabled_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsEnabled]("glIsEnabled", load)
    _glLineWidth_ptr.get_or_create_ptr()[] = load_proc[fptr_glLineWidth]("glLineWidth", load)
    _glLogicOp_ptr.get_or_create_ptr()[] = load_proc[fptr_glLogicOp]("glLogicOp", load)
    _glPixelStoref_ptr.get_or_create_ptr()[] = load_proc[fptr_glPixelStoref]("glPixelStoref", load)
    _glPixelStorei_ptr.get_or_create_ptr()[] = load_proc[fptr_glPixelStorei]("glPixelStorei", load)
    _glPointSize_ptr.get_or_create_ptr()[] = load_proc[fptr_glPointSize]("glPointSize", load)
    _glPolygonMode_ptr.get_or_create_ptr()[] = load_proc[fptr_glPolygonMode]("glPolygonMode", load)
    _glReadBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glReadBuffer]("glReadBuffer", load)
    _glReadPixels_ptr.get_or_create_ptr()[] = load_proc[fptr_glReadPixels]("glReadPixels", load)
    _glScissor_ptr.get_or_create_ptr()[] = load_proc[fptr_glScissor]("glScissor", load)
    _glStencilFunc_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilFunc]("glStencilFunc", load)
    _glStencilMask_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilMask]("glStencilMask", load)
    _glStencilOp_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilOp]("glStencilOp", load)
    _glTexImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexImage1D]("glTexImage1D", load)
    _glTexImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexImage2D]("glTexImage2D", load)
    _glTexParameterf_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameterf]("glTexParameterf", load)
    _glTexParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameterfv]("glTexParameterfv", load)
    _glTexParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameteri]("glTexParameteri", load)
    _glTexParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameteriv]("glTexParameteriv", load)
    _glViewport_ptr.get_or_create_ptr()[] = load_proc[fptr_glViewport]("glViewport", load)


fn init_gl_version_1_1(load: LoadProc) raises:
    _glBindTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindTexture]("glBindTexture", load)
    _glCopyTexImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTexImage1D]("glCopyTexImage1D", load)
    _glCopyTexImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTexImage2D]("glCopyTexImage2D", load)
    _glCopyTexSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTexSubImage1D]("glCopyTexSubImage1D", load)
    _glCopyTexSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTexSubImage2D]("glCopyTexSubImage2D", load)
    _glDeleteTextures_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteTextures]("glDeleteTextures", load)
    _glDrawArrays_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawArrays]("glDrawArrays", load)
    _glDrawElements_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElements]("glDrawElements", load)
    _glGenTextures_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenTextures]("glGenTextures", load)
    _glIsTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsTexture]("glIsTexture", load)
    _glPolygonOffset_ptr.get_or_create_ptr()[] = load_proc[fptr_glPolygonOffset]("glPolygonOffset", load)
    _glTexSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexSubImage1D]("glTexSubImage1D", load)
    _glTexSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexSubImage2D]("glTexSubImage2D", load)


fn init_gl_version_1_2(load: LoadProc) raises:
    _glCopyTexSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTexSubImage3D]("glCopyTexSubImage3D", load)
    _glDrawRangeElements_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawRangeElements]("glDrawRangeElements", load)
    _glTexImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexImage3D]("glTexImage3D", load)
    _glTexSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexSubImage3D]("glTexSubImage3D", load)


fn init_gl_version_1_3(load: LoadProc) raises:
    _glActiveTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glActiveTexture]("glActiveTexture", load)
    _glCompressedTexImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexImage1D]("glCompressedTexImage1D", load)
    _glCompressedTexImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexImage2D]("glCompressedTexImage2D", load)
    _glCompressedTexImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexImage3D]("glCompressedTexImage3D", load)
    _glCompressedTexSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexSubImage1D]("glCompressedTexSubImage1D", load)
    _glCompressedTexSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexSubImage2D]("glCompressedTexSubImage2D", load)
    _glCompressedTexSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTexSubImage3D]("glCompressedTexSubImage3D", load)
    _glGetCompressedTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetCompressedTexImage]("glGetCompressedTexImage", load)
    _glSampleCoverage_ptr.get_or_create_ptr()[] = load_proc[fptr_glSampleCoverage]("glSampleCoverage", load)


fn init_gl_version_1_4(load: LoadProc) raises:
    _glBlendColor_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendColor]("glBlendColor", load)
    _glBlendEquation_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendEquation]("glBlendEquation", load)
    _glBlendFuncSeparate_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendFuncSeparate]("glBlendFuncSeparate", load)
    _glMultiDrawArrays_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawArrays]("glMultiDrawArrays", load)
    _glMultiDrawElements_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawElements]("glMultiDrawElements", load)
    _glPointParameterf_ptr.get_or_create_ptr()[] = load_proc[fptr_glPointParameterf]("glPointParameterf", load)
    _glPointParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glPointParameterfv]("glPointParameterfv", load)
    _glPointParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glPointParameteri]("glPointParameteri", load)
    _glPointParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glPointParameteriv]("glPointParameteriv", load)


fn init_gl_version_1_5(load: LoadProc) raises:
    _glBeginQuery_ptr.get_or_create_ptr()[] = load_proc[fptr_glBeginQuery]("glBeginQuery", load)
    _glBindBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindBuffer]("glBindBuffer", load)
    _glBufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glBufferData]("glBufferData", load)
    _glBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glBufferSubData]("glBufferSubData", load)
    _glDeleteBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteBuffers]("glDeleteBuffers", load)
    _glDeleteQueries_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteQueries]("glDeleteQueries", load)
    _glEndQuery_ptr.get_or_create_ptr()[] = load_proc[fptr_glEndQuery]("glEndQuery", load)
    _glGenBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenBuffers]("glGenBuffers", load)
    _glGenQueries_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenQueries]("glGenQueries", load)
    _glGetBufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBufferParameteriv]("glGetBufferParameteriv", load)
    _glGetBufferPointerv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBufferPointerv]("glGetBufferPointerv", load)
    _glGetBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBufferSubData]("glGetBufferSubData", load)
    _glGetQueryObjectiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryObjectiv]("glGetQueryObjectiv", load)
    _glGetQueryObjectuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryObjectuiv]("glGetQueryObjectuiv", load)
    _glGetQueryiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryiv]("glGetQueryiv", load)
    _glIsBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsBuffer]("glIsBuffer", load)
    _glIsQuery_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsQuery]("glIsQuery", load)
    _glMapBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glMapBuffer]("glMapBuffer", load)
    _glUnmapBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glUnmapBuffer]("glUnmapBuffer", load)


fn init_gl_version_2_0(load: LoadProc) raises:
    _glAttachShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glAttachShader]("glAttachShader", load)
    _glBindAttribLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindAttribLocation]("glBindAttribLocation", load)
    _glBlendEquationSeparate_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendEquationSeparate]("glBlendEquationSeparate", load)
    _glCompileShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompileShader]("glCompileShader", load)
    _glCreateProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateProgram]("glCreateProgram", load)
    _glCreateShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateShader]("glCreateShader", load)
    _glDeleteProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteProgram]("glDeleteProgram", load)
    _glDeleteShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteShader]("glDeleteShader", load)
    _glDetachShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glDetachShader]("glDetachShader", load)
    _glDisableVertexAttribArray_ptr.get_or_create_ptr()[] = load_proc[fptr_glDisableVertexAttribArray]("glDisableVertexAttribArray", load)
    _glDrawBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawBuffers]("glDrawBuffers", load)
    _glEnableVertexAttribArray_ptr.get_or_create_ptr()[] = load_proc[fptr_glEnableVertexAttribArray]("glEnableVertexAttribArray", load)
    _glGetActiveAttrib_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveAttrib]("glGetActiveAttrib", load)
    _glGetActiveUniform_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveUniform]("glGetActiveUniform", load)
    _glGetAttachedShaders_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetAttachedShaders]("glGetAttachedShaders", load)
    _glGetAttribLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetAttribLocation]("glGetAttribLocation", load)
    _glGetProgramInfoLog_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramInfoLog]("glGetProgramInfoLog", load)
    _glGetProgramiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramiv]("glGetProgramiv", load)
    _glGetShaderInfoLog_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetShaderInfoLog]("glGetShaderInfoLog", load)
    _glGetShaderSource_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetShaderSource]("glGetShaderSource", load)
    _glGetShaderiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetShaderiv]("glGetShaderiv", load)
    _glGetUniformLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformLocation]("glGetUniformLocation", load)
    _glGetUniformfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformfv]("glGetUniformfv", load)
    _glGetUniformiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformiv]("glGetUniformiv", load)
    _glGetVertexAttribPointerv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribPointerv]("glGetVertexAttribPointerv", load)
    _glGetVertexAttribdv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribdv]("glGetVertexAttribdv", load)
    _glGetVertexAttribfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribfv]("glGetVertexAttribfv", load)
    _glGetVertexAttribiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribiv]("glGetVertexAttribiv", load)
    _glIsProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsProgram]("glIsProgram", load)
    _glIsShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsShader]("glIsShader", load)
    _glLinkProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glLinkProgram]("glLinkProgram", load)
    _glShaderSource_ptr.get_or_create_ptr()[] = load_proc[fptr_glShaderSource]("glShaderSource", load)
    _glStencilFuncSeparate_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilFuncSeparate]("glStencilFuncSeparate", load)
    _glStencilMaskSeparate_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilMaskSeparate]("glStencilMaskSeparate", load)
    _glStencilOpSeparate_ptr.get_or_create_ptr()[] = load_proc[fptr_glStencilOpSeparate]("glStencilOpSeparate", load)
    _glUniform1f_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1f]("glUniform1f", load)
    _glUniform1fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1fv]("glUniform1fv", load)
    _glUniform1i_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1i]("glUniform1i", load)
    _glUniform1iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1iv]("glUniform1iv", load)
    _glUniform2f_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2f]("glUniform2f", load)
    _glUniform2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2fv]("glUniform2fv", load)
    _glUniform2i_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2i]("glUniform2i", load)
    _glUniform2iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2iv]("glUniform2iv", load)
    _glUniform3f_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3f]("glUniform3f", load)
    _glUniform3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3fv]("glUniform3fv", load)
    _glUniform3i_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3i]("glUniform3i", load)
    _glUniform3iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3iv]("glUniform3iv", load)
    _glUniform4f_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4f]("glUniform4f", load)
    _glUniform4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4fv]("glUniform4fv", load)
    _glUniform4i_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4i]("glUniform4i", load)
    _glUniform4iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4iv]("glUniform4iv", load)
    _glUniformMatrix2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2fv]("glUniformMatrix2fv", load)
    _glUniformMatrix3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3fv]("glUniformMatrix3fv", load)
    _glUniformMatrix4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4fv]("glUniformMatrix4fv", load)
    _glUseProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glUseProgram]("glUseProgram", load)
    _glValidateProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glValidateProgram]("glValidateProgram", load)
    _glVertexAttrib1d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1d]("glVertexAttrib1d", load)
    _glVertexAttrib1dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1dv]("glVertexAttrib1dv", load)
    _glVertexAttrib1f_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1f]("glVertexAttrib1f", load)
    _glVertexAttrib1fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1fv]("glVertexAttrib1fv", load)
    _glVertexAttrib1s_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1s]("glVertexAttrib1s", load)
    _glVertexAttrib1sv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib1sv]("glVertexAttrib1sv", load)
    _glVertexAttrib2d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2d]("glVertexAttrib2d", load)
    _glVertexAttrib2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2dv]("glVertexAttrib2dv", load)
    _glVertexAttrib2f_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2f]("glVertexAttrib2f", load)
    _glVertexAttrib2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2fv]("glVertexAttrib2fv", load)
    _glVertexAttrib2s_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2s]("glVertexAttrib2s", load)
    _glVertexAttrib2sv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib2sv]("glVertexAttrib2sv", load)
    _glVertexAttrib3d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3d]("glVertexAttrib3d", load)
    _glVertexAttrib3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3dv]("glVertexAttrib3dv", load)
    _glVertexAttrib3f_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3f]("glVertexAttrib3f", load)
    _glVertexAttrib3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3fv]("glVertexAttrib3fv", load)
    _glVertexAttrib3s_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3s]("glVertexAttrib3s", load)
    _glVertexAttrib3sv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib3sv]("glVertexAttrib3sv", load)
    _glVertexAttrib4Nbv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nbv]("glVertexAttrib4Nbv", load)
    _glVertexAttrib4Niv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Niv]("glVertexAttrib4Niv", load)
    _glVertexAttrib4Nsv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nsv]("glVertexAttrib4Nsv", load)
    _glVertexAttrib4Nub_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nub]("glVertexAttrib4Nub", load)
    _glVertexAttrib4Nubv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nubv]("glVertexAttrib4Nubv", load)
    _glVertexAttrib4Nuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nuiv]("glVertexAttrib4Nuiv", load)
    _glVertexAttrib4Nusv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4Nusv]("glVertexAttrib4Nusv", load)
    _glVertexAttrib4bv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4bv]("glVertexAttrib4bv", load)
    _glVertexAttrib4d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4d]("glVertexAttrib4d", load)
    _glVertexAttrib4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4dv]("glVertexAttrib4dv", load)
    _glVertexAttrib4f_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4f]("glVertexAttrib4f", load)
    _glVertexAttrib4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4fv]("glVertexAttrib4fv", load)
    _glVertexAttrib4iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4iv]("glVertexAttrib4iv", load)
    _glVertexAttrib4s_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4s]("glVertexAttrib4s", load)
    _glVertexAttrib4sv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4sv]("glVertexAttrib4sv", load)
    _glVertexAttrib4ubv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4ubv]("glVertexAttrib4ubv", load)
    _glVertexAttrib4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4uiv]("glVertexAttrib4uiv", load)
    _glVertexAttrib4usv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttrib4usv]("glVertexAttrib4usv", load)
    _glVertexAttribPointer_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribPointer]("glVertexAttribPointer", load)


fn init_gl_version_2_1(load: LoadProc) raises:
    _glUniformMatrix2x3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2x3fv]("glUniformMatrix2x3fv", load)
    _glUniformMatrix2x4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2x4fv]("glUniformMatrix2x4fv", load)
    _glUniformMatrix3x2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3x2fv]("glUniformMatrix3x2fv", load)
    _glUniformMatrix3x4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3x4fv]("glUniformMatrix3x4fv", load)
    _glUniformMatrix4x2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4x2fv]("glUniformMatrix4x2fv", load)
    _glUniformMatrix4x3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4x3fv]("glUniformMatrix4x3fv", load)


fn init_gl_version_3_0(load: LoadProc) raises:
    _glBeginConditionalRender_ptr.get_or_create_ptr()[] = load_proc[fptr_glBeginConditionalRender]("glBeginConditionalRender", load)
    _glBeginTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glBeginTransformFeedback]("glBeginTransformFeedback", load)
    _glBindBufferBase_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindBufferBase]("glBindBufferBase", load)
    _glBindBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindBufferRange]("glBindBufferRange", load)
    _glBindFragDataLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindFragDataLocation]("glBindFragDataLocation", load)
    _glBindFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindFramebuffer]("glBindFramebuffer", load)
    _glBindRenderbuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindRenderbuffer]("glBindRenderbuffer", load)
    _glBindVertexArray_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindVertexArray]("glBindVertexArray", load)
    _glBlitFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlitFramebuffer]("glBlitFramebuffer", load)
    _glCheckFramebufferStatus_ptr.get_or_create_ptr()[] = load_proc[fptr_glCheckFramebufferStatus]("glCheckFramebufferStatus", load)
    _glClampColor_ptr.get_or_create_ptr()[] = load_proc[fptr_glClampColor]("glClampColor", load)
    _glClearBufferfi_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferfi]("glClearBufferfi", load)
    _glClearBufferfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferfv]("glClearBufferfv", load)
    _glClearBufferiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferiv]("glClearBufferiv", load)
    _glClearBufferuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferuiv]("glClearBufferuiv", load)
    _glColorMaski_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorMaski]("glColorMaski", load)
    _glDeleteFramebuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteFramebuffers]("glDeleteFramebuffers", load)
    _glDeleteRenderbuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteRenderbuffers]("glDeleteRenderbuffers", load)
    _glDeleteVertexArrays_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteVertexArrays]("glDeleteVertexArrays", load)
    _glDisablei_ptr.get_or_create_ptr()[] = load_proc[fptr_glDisablei]("glDisablei", load)
    _glEnablei_ptr.get_or_create_ptr()[] = load_proc[fptr_glEnablei]("glEnablei", load)
    _glEndConditionalRender_ptr.get_or_create_ptr()[] = load_proc[fptr_glEndConditionalRender]("glEndConditionalRender", load)
    _glEndTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glEndTransformFeedback]("glEndTransformFeedback", load)
    _glFlushMappedBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glFlushMappedBufferRange]("glFlushMappedBufferRange", load)
    _glFramebufferRenderbuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferRenderbuffer]("glFramebufferRenderbuffer", load)
    _glFramebufferTexture1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferTexture1D]("glFramebufferTexture1D", load)
    _glFramebufferTexture2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferTexture2D]("glFramebufferTexture2D", load)
    _glFramebufferTexture3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferTexture3D]("glFramebufferTexture3D", load)
    _glFramebufferTextureLayer_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferTextureLayer]("glFramebufferTextureLayer", load)
    _glGenFramebuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenFramebuffers]("glGenFramebuffers", load)
    _glGenRenderbuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenRenderbuffers]("glGenRenderbuffers", load)
    _glGenVertexArrays_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenVertexArrays]("glGenVertexArrays", load)
    _glGenerateMipmap_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenerateMipmap]("glGenerateMipmap", load)
    _glGetBooleani_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBooleani_v]("glGetBooleani_v", load)
    _glGetFragDataLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFragDataLocation]("glGetFragDataLocation", load)
    _glGetFramebufferAttachmentParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFramebufferAttachmentParameteriv]("glGetFramebufferAttachmentParameteriv", load)
    _glGetIntegeri_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetIntegeri_v]("glGetIntegeri_v", load)
    _glGetRenderbufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetRenderbufferParameteriv]("glGetRenderbufferParameteriv", load)
    _glGetStringi_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetStringi]("glGetStringi", load)
    _glGetTexParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexParameterIiv]("glGetTexParameterIiv", load)
    _glGetTexParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTexParameterIuiv]("glGetTexParameterIuiv", load)
    _glGetTransformFeedbackVarying_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTransformFeedbackVarying]("glGetTransformFeedbackVarying", load)
    _glGetUniformuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformuiv]("glGetUniformuiv", load)
    _glGetVertexAttribIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribIiv]("glGetVertexAttribIiv", load)
    _glGetVertexAttribIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribIuiv]("glGetVertexAttribIuiv", load)
    _glIsEnabledi_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsEnabledi]("glIsEnabledi", load)
    _glIsFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsFramebuffer]("glIsFramebuffer", load)
    _glIsRenderbuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsRenderbuffer]("glIsRenderbuffer", load)
    _glIsVertexArray_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsVertexArray]("glIsVertexArray", load)
    _glMapBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glMapBufferRange]("glMapBufferRange", load)
    _glRenderbufferStorage_ptr.get_or_create_ptr()[] = load_proc[fptr_glRenderbufferStorage]("glRenderbufferStorage", load)
    _glRenderbufferStorageMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glRenderbufferStorageMultisample]("glRenderbufferStorageMultisample", load)
    _glTexParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameterIiv]("glTexParameterIiv", load)
    _glTexParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexParameterIuiv]("glTexParameterIuiv", load)
    _glTransformFeedbackVaryings_ptr.get_or_create_ptr()[] = load_proc[fptr_glTransformFeedbackVaryings]("glTransformFeedbackVaryings", load)
    _glUniform1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1ui]("glUniform1ui", load)
    _glUniform1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1uiv]("glUniform1uiv", load)
    _glUniform2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2ui]("glUniform2ui", load)
    _glUniform2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2uiv]("glUniform2uiv", load)
    _glUniform3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3ui]("glUniform3ui", load)
    _glUniform3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3uiv]("glUniform3uiv", load)
    _glUniform4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4ui]("glUniform4ui", load)
    _glUniform4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4uiv]("glUniform4uiv", load)
    _glVertexAttribI1i_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI1i]("glVertexAttribI1i", load)
    _glVertexAttribI1iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI1iv]("glVertexAttribI1iv", load)
    _glVertexAttribI1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI1ui]("glVertexAttribI1ui", load)
    _glVertexAttribI1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI1uiv]("glVertexAttribI1uiv", load)
    _glVertexAttribI2i_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI2i]("glVertexAttribI2i", load)
    _glVertexAttribI2iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI2iv]("glVertexAttribI2iv", load)
    _glVertexAttribI2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI2ui]("glVertexAttribI2ui", load)
    _glVertexAttribI2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI2uiv]("glVertexAttribI2uiv", load)
    _glVertexAttribI3i_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI3i]("glVertexAttribI3i", load)
    _glVertexAttribI3iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI3iv]("glVertexAttribI3iv", load)
    _glVertexAttribI3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI3ui]("glVertexAttribI3ui", load)
    _glVertexAttribI3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI3uiv]("glVertexAttribI3uiv", load)
    _glVertexAttribI4bv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4bv]("glVertexAttribI4bv", load)
    _glVertexAttribI4i_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4i]("glVertexAttribI4i", load)
    _glVertexAttribI4iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4iv]("glVertexAttribI4iv", load)
    _glVertexAttribI4sv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4sv]("glVertexAttribI4sv", load)
    _glVertexAttribI4ubv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4ubv]("glVertexAttribI4ubv", load)
    _glVertexAttribI4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4ui]("glVertexAttribI4ui", load)
    _glVertexAttribI4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4uiv]("glVertexAttribI4uiv", load)
    _glVertexAttribI4usv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribI4usv]("glVertexAttribI4usv", load)
    _glVertexAttribIPointer_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribIPointer]("glVertexAttribIPointer", load)


fn init_gl_version_3_1(load: LoadProc) raises:
    _glCopyBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyBufferSubData]("glCopyBufferSubData", load)
    _glDrawArraysInstanced_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawArraysInstanced]("glDrawArraysInstanced", load)
    _glDrawElementsInstanced_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsInstanced]("glDrawElementsInstanced", load)
    _glGetActiveUniformBlockName_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveUniformBlockName]("glGetActiveUniformBlockName", load)
    _glGetActiveUniformBlockiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveUniformBlockiv]("glGetActiveUniformBlockiv", load)
    _glGetActiveUniformName_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveUniformName]("glGetActiveUniformName", load)
    _glGetActiveUniformsiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveUniformsiv]("glGetActiveUniformsiv", load)
    _glGetUniformBlockIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformBlockIndex]("glGetUniformBlockIndex", load)
    _glGetUniformIndices_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformIndices]("glGetUniformIndices", load)
    _glPrimitiveRestartIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glPrimitiveRestartIndex]("glPrimitiveRestartIndex", load)
    _glTexBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexBuffer]("glTexBuffer", load)
    _glUniformBlockBinding_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformBlockBinding]("glUniformBlockBinding", load)


fn init_gl_version_3_2(load: LoadProc) raises:
    _glClientWaitSync_ptr.get_or_create_ptr()[] = load_proc[fptr_glClientWaitSync]("glClientWaitSync", load)
    _glDeleteSync_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteSync]("glDeleteSync", load)
    _glDrawElementsBaseVertex_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsBaseVertex]("glDrawElementsBaseVertex", load)
    _glDrawElementsInstancedBaseVertex_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsInstancedBaseVertex]("glDrawElementsInstancedBaseVertex", load)
    _glDrawRangeElementsBaseVertex_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawRangeElementsBaseVertex]("glDrawRangeElementsBaseVertex", load)
    _glFenceSync_ptr.get_or_create_ptr()[] = load_proc[fptr_glFenceSync]("glFenceSync", load)
    _glFramebufferTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferTexture]("glFramebufferTexture", load)
    _glGetBufferParameteri64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetBufferParameteri64v]("glGetBufferParameteri64v", load)
    _glGetInteger64i_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetInteger64i_v]("glGetInteger64i_v", load)
    _glGetInteger64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetInteger64v]("glGetInteger64v", load)
    _glGetMultisamplefv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetMultisamplefv]("glGetMultisamplefv", load)
    _glGetSynciv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSynciv]("glGetSynciv", load)
    _glIsSync_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsSync]("glIsSync", load)
    _glMultiDrawElementsBaseVertex_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawElementsBaseVertex]("glMultiDrawElementsBaseVertex", load)
    _glProvokingVertex_ptr.get_or_create_ptr()[] = load_proc[fptr_glProvokingVertex]("glProvokingVertex", load)
    _glSampleMaski_ptr.get_or_create_ptr()[] = load_proc[fptr_glSampleMaski]("glSampleMaski", load)
    _glTexImage2DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexImage2DMultisample]("glTexImage2DMultisample", load)
    _glTexImage3DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexImage3DMultisample]("glTexImage3DMultisample", load)
    _glWaitSync_ptr.get_or_create_ptr()[] = load_proc[fptr_glWaitSync]("glWaitSync", load)


fn init_gl_version_3_3(load: LoadProc) raises:
    _glBindFragDataLocationIndexed_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindFragDataLocationIndexed]("glBindFragDataLocationIndexed", load)
    _glBindSampler_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindSampler]("glBindSampler", load)
    _glColorP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorP3ui]("glColorP3ui", load)
    _glColorP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorP3uiv]("glColorP3uiv", load)
    _glColorP4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorP4ui]("glColorP4ui", load)
    _glColorP4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glColorP4uiv]("glColorP4uiv", load)
    _glDeleteSamplers_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteSamplers]("glDeleteSamplers", load)
    _glGenSamplers_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenSamplers]("glGenSamplers", load)
    _glGetFragDataIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFragDataIndex]("glGetFragDataIndex", load)
    _glGetQueryObjecti64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryObjecti64v]("glGetQueryObjecti64v", load)
    _glGetQueryObjectui64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryObjectui64v]("glGetQueryObjectui64v", load)
    _glGetSamplerParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSamplerParameterIiv]("glGetSamplerParameterIiv", load)
    _glGetSamplerParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSamplerParameterIuiv]("glGetSamplerParameterIuiv", load)
    _glGetSamplerParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSamplerParameterfv]("glGetSamplerParameterfv", load)
    _glGetSamplerParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSamplerParameteriv]("glGetSamplerParameteriv", load)
    _glIsSampler_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsSampler]("glIsSampler", load)
    _glMultiTexCoordP1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP1ui]("glMultiTexCoordP1ui", load)
    _glMultiTexCoordP1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP1uiv]("glMultiTexCoordP1uiv", load)
    _glMultiTexCoordP2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP2ui]("glMultiTexCoordP2ui", load)
    _glMultiTexCoordP2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP2uiv]("glMultiTexCoordP2uiv", load)
    _glMultiTexCoordP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP3ui]("glMultiTexCoordP3ui", load)
    _glMultiTexCoordP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP3uiv]("glMultiTexCoordP3uiv", load)
    _glMultiTexCoordP4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP4ui]("glMultiTexCoordP4ui", load)
    _glMultiTexCoordP4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiTexCoordP4uiv]("glMultiTexCoordP4uiv", load)
    _glNormalP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glNormalP3ui]("glNormalP3ui", load)
    _glNormalP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glNormalP3uiv]("glNormalP3uiv", load)
    _glQueryCounter_ptr.get_or_create_ptr()[] = load_proc[fptr_glQueryCounter]("glQueryCounter", load)
    _glSamplerParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameterIiv]("glSamplerParameterIiv", load)
    _glSamplerParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameterIuiv]("glSamplerParameterIuiv", load)
    _glSamplerParameterf_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameterf]("glSamplerParameterf", load)
    _glSamplerParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameterfv]("glSamplerParameterfv", load)
    _glSamplerParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameteri]("glSamplerParameteri", load)
    _glSamplerParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glSamplerParameteriv]("glSamplerParameteriv", load)
    _glSecondaryColorP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glSecondaryColorP3ui]("glSecondaryColorP3ui", load)
    _glSecondaryColorP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glSecondaryColorP3uiv]("glSecondaryColorP3uiv", load)
    _glTexCoordP1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP1ui]("glTexCoordP1ui", load)
    _glTexCoordP1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP1uiv]("glTexCoordP1uiv", load)
    _glTexCoordP2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP2ui]("glTexCoordP2ui", load)
    _glTexCoordP2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP2uiv]("glTexCoordP2uiv", load)
    _glTexCoordP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP3ui]("glTexCoordP3ui", load)
    _glTexCoordP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP3uiv]("glTexCoordP3uiv", load)
    _glTexCoordP4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP4ui]("glTexCoordP4ui", load)
    _glTexCoordP4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexCoordP4uiv]("glTexCoordP4uiv", load)
    _glVertexAttribDivisor_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribDivisor]("glVertexAttribDivisor", load)
    _glVertexAttribP1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP1ui]("glVertexAttribP1ui", load)
    _glVertexAttribP1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP1uiv]("glVertexAttribP1uiv", load)
    _glVertexAttribP2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP2ui]("glVertexAttribP2ui", load)
    _glVertexAttribP2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP2uiv]("glVertexAttribP2uiv", load)
    _glVertexAttribP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP3ui]("glVertexAttribP3ui", load)
    _glVertexAttribP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP3uiv]("glVertexAttribP3uiv", load)
    _glVertexAttribP4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP4ui]("glVertexAttribP4ui", load)
    _glVertexAttribP4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribP4uiv]("glVertexAttribP4uiv", load)
    _glVertexP2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP2ui]("glVertexP2ui", load)
    _glVertexP2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP2uiv]("glVertexP2uiv", load)
    _glVertexP3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP3ui]("glVertexP3ui", load)
    _glVertexP3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP3uiv]("glVertexP3uiv", load)
    _glVertexP4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP4ui]("glVertexP4ui", load)
    _glVertexP4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexP4uiv]("glVertexP4uiv", load)


fn init_gl_version_4_0(load: LoadProc) raises:
    _glBeginQueryIndexed_ptr.get_or_create_ptr()[] = load_proc[fptr_glBeginQueryIndexed]("glBeginQueryIndexed", load)
    _glBindTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindTransformFeedback]("glBindTransformFeedback", load)
    _glBlendEquationSeparatei_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendEquationSeparatei]("glBlendEquationSeparatei", load)
    _glBlendEquationi_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendEquationi]("glBlendEquationi", load)
    _glBlendFuncSeparatei_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendFuncSeparatei]("glBlendFuncSeparatei", load)
    _glBlendFunci_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlendFunci]("glBlendFunci", load)
    _glDeleteTransformFeedbacks_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteTransformFeedbacks]("glDeleteTransformFeedbacks", load)
    _glDrawArraysIndirect_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawArraysIndirect]("glDrawArraysIndirect", load)
    _glDrawElementsIndirect_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsIndirect]("glDrawElementsIndirect", load)
    _glDrawTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawTransformFeedback]("glDrawTransformFeedback", load)
    _glDrawTransformFeedbackStream_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawTransformFeedbackStream]("glDrawTransformFeedbackStream", load)
    _glEndQueryIndexed_ptr.get_or_create_ptr()[] = load_proc[fptr_glEndQueryIndexed]("glEndQueryIndexed", load)
    _glGenTransformFeedbacks_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenTransformFeedbacks]("glGenTransformFeedbacks", load)
    _glGetActiveSubroutineName_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveSubroutineName]("glGetActiveSubroutineName", load)
    _glGetActiveSubroutineUniformName_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveSubroutineUniformName]("glGetActiveSubroutineUniformName", load)
    _glGetActiveSubroutineUniformiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveSubroutineUniformiv]("glGetActiveSubroutineUniformiv", load)
    _glGetProgramStageiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramStageiv]("glGetProgramStageiv", load)
    _glGetQueryIndexediv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryIndexediv]("glGetQueryIndexediv", load)
    _glGetSubroutineIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSubroutineIndex]("glGetSubroutineIndex", load)
    _glGetSubroutineUniformLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetSubroutineUniformLocation]("glGetSubroutineUniformLocation", load)
    _glGetUniformSubroutineuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformSubroutineuiv]("glGetUniformSubroutineuiv", load)
    _glGetUniformdv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetUniformdv]("glGetUniformdv", load)
    _glIsTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsTransformFeedback]("glIsTransformFeedback", load)
    _glMinSampleShading_ptr.get_or_create_ptr()[] = load_proc[fptr_glMinSampleShading]("glMinSampleShading", load)
    _glPatchParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glPatchParameterfv]("glPatchParameterfv", load)
    _glPatchParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glPatchParameteri]("glPatchParameteri", load)
    _glPauseTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glPauseTransformFeedback]("glPauseTransformFeedback", load)
    _glResumeTransformFeedback_ptr.get_or_create_ptr()[] = load_proc[fptr_glResumeTransformFeedback]("glResumeTransformFeedback", load)
    _glUniform1d_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1d]("glUniform1d", load)
    _glUniform1dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform1dv]("glUniform1dv", load)
    _glUniform2d_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2d]("glUniform2d", load)
    _glUniform2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform2dv]("glUniform2dv", load)
    _glUniform3d_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3d]("glUniform3d", load)
    _glUniform3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform3dv]("glUniform3dv", load)
    _glUniform4d_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4d]("glUniform4d", load)
    _glUniform4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniform4dv]("glUniform4dv", load)
    _glUniformMatrix2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2dv]("glUniformMatrix2dv", load)
    _glUniformMatrix2x3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2x3dv]("glUniformMatrix2x3dv", load)
    _glUniformMatrix2x4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix2x4dv]("glUniformMatrix2x4dv", load)
    _glUniformMatrix3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3dv]("glUniformMatrix3dv", load)
    _glUniformMatrix3x2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3x2dv]("glUniformMatrix3x2dv", load)
    _glUniformMatrix3x4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix3x4dv]("glUniformMatrix3x4dv", load)
    _glUniformMatrix4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4dv]("glUniformMatrix4dv", load)
    _glUniformMatrix4x2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4x2dv]("glUniformMatrix4x2dv", load)
    _glUniformMatrix4x3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformMatrix4x3dv]("glUniformMatrix4x3dv", load)
    _glUniformSubroutinesuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glUniformSubroutinesuiv]("glUniformSubroutinesuiv", load)


fn init_gl_version_4_1(load: LoadProc) raises:
    _glActiveShaderProgram_ptr.get_or_create_ptr()[] = load_proc[fptr_glActiveShaderProgram]("glActiveShaderProgram", load)
    _glBindProgramPipeline_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindProgramPipeline]("glBindProgramPipeline", load)
    _glClearDepthf_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearDepthf]("glClearDepthf", load)
    _glCreateShaderProgramv_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateShaderProgramv]("glCreateShaderProgramv", load)
    _glDeleteProgramPipelines_ptr.get_or_create_ptr()[] = load_proc[fptr_glDeleteProgramPipelines]("glDeleteProgramPipelines", load)
    _glDepthRangeArrayv_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthRangeArrayv]("glDepthRangeArrayv", load)
    _glDepthRangeIndexed_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthRangeIndexed]("glDepthRangeIndexed", load)
    _glDepthRangef_ptr.get_or_create_ptr()[] = load_proc[fptr_glDepthRangef]("glDepthRangef", load)
    _glGenProgramPipelines_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenProgramPipelines]("glGenProgramPipelines", load)
    _glGetDoublei_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetDoublei_v]("glGetDoublei_v", load)
    _glGetFloati_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFloati_v]("glGetFloati_v", load)
    _glGetProgramBinary_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramBinary]("glGetProgramBinary", load)
    _glGetProgramPipelineInfoLog_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramPipelineInfoLog]("glGetProgramPipelineInfoLog", load)
    _glGetProgramPipelineiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramPipelineiv]("glGetProgramPipelineiv", load)
    _glGetShaderPrecisionFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetShaderPrecisionFormat]("glGetShaderPrecisionFormat", load)
    _glGetVertexAttribLdv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexAttribLdv]("glGetVertexAttribLdv", load)
    _glIsProgramPipeline_ptr.get_or_create_ptr()[] = load_proc[fptr_glIsProgramPipeline]("glIsProgramPipeline", load)
    _glProgramBinary_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramBinary]("glProgramBinary", load)
    _glProgramParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramParameteri]("glProgramParameteri", load)
    _glProgramUniform1d_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1d]("glProgramUniform1d", load)
    _glProgramUniform1dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1dv]("glProgramUniform1dv", load)
    _glProgramUniform1f_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1f]("glProgramUniform1f", load)
    _glProgramUniform1fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1fv]("glProgramUniform1fv", load)
    _glProgramUniform1i_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1i]("glProgramUniform1i", load)
    _glProgramUniform1iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1iv]("glProgramUniform1iv", load)
    _glProgramUniform1ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1ui]("glProgramUniform1ui", load)
    _glProgramUniform1uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform1uiv]("glProgramUniform1uiv", load)
    _glProgramUniform2d_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2d]("glProgramUniform2d", load)
    _glProgramUniform2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2dv]("glProgramUniform2dv", load)
    _glProgramUniform2f_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2f]("glProgramUniform2f", load)
    _glProgramUniform2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2fv]("glProgramUniform2fv", load)
    _glProgramUniform2i_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2i]("glProgramUniform2i", load)
    _glProgramUniform2iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2iv]("glProgramUniform2iv", load)
    _glProgramUniform2ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2ui]("glProgramUniform2ui", load)
    _glProgramUniform2uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform2uiv]("glProgramUniform2uiv", load)
    _glProgramUniform3d_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3d]("glProgramUniform3d", load)
    _glProgramUniform3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3dv]("glProgramUniform3dv", load)
    _glProgramUniform3f_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3f]("glProgramUniform3f", load)
    _glProgramUniform3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3fv]("glProgramUniform3fv", load)
    _glProgramUniform3i_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3i]("glProgramUniform3i", load)
    _glProgramUniform3iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3iv]("glProgramUniform3iv", load)
    _glProgramUniform3ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3ui]("glProgramUniform3ui", load)
    _glProgramUniform3uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform3uiv]("glProgramUniform3uiv", load)
    _glProgramUniform4d_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4d]("glProgramUniform4d", load)
    _glProgramUniform4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4dv]("glProgramUniform4dv", load)
    _glProgramUniform4f_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4f]("glProgramUniform4f", load)
    _glProgramUniform4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4fv]("glProgramUniform4fv", load)
    _glProgramUniform4i_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4i]("glProgramUniform4i", load)
    _glProgramUniform4iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4iv]("glProgramUniform4iv", load)
    _glProgramUniform4ui_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4ui]("glProgramUniform4ui", load)
    _glProgramUniform4uiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniform4uiv]("glProgramUniform4uiv", load)
    _glProgramUniformMatrix2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2dv]("glProgramUniformMatrix2dv", load)
    _glProgramUniformMatrix2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2fv]("glProgramUniformMatrix2fv", load)
    _glProgramUniformMatrix2x3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2x3dv]("glProgramUniformMatrix2x3dv", load)
    _glProgramUniformMatrix2x3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2x3fv]("glProgramUniformMatrix2x3fv", load)
    _glProgramUniformMatrix2x4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2x4dv]("glProgramUniformMatrix2x4dv", load)
    _glProgramUniformMatrix2x4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix2x4fv]("glProgramUniformMatrix2x4fv", load)
    _glProgramUniformMatrix3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3dv]("glProgramUniformMatrix3dv", load)
    _glProgramUniformMatrix3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3fv]("glProgramUniformMatrix3fv", load)
    _glProgramUniformMatrix3x2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3x2dv]("glProgramUniformMatrix3x2dv", load)
    _glProgramUniformMatrix3x2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3x2fv]("glProgramUniformMatrix3x2fv", load)
    _glProgramUniformMatrix3x4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3x4dv]("glProgramUniformMatrix3x4dv", load)
    _glProgramUniformMatrix3x4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix3x4fv]("glProgramUniformMatrix3x4fv", load)
    _glProgramUniformMatrix4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4dv]("glProgramUniformMatrix4dv", load)
    _glProgramUniformMatrix4fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4fv]("glProgramUniformMatrix4fv", load)
    _glProgramUniformMatrix4x2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4x2dv]("glProgramUniformMatrix4x2dv", load)
    _glProgramUniformMatrix4x2fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4x2fv]("glProgramUniformMatrix4x2fv", load)
    _glProgramUniformMatrix4x3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4x3dv]("glProgramUniformMatrix4x3dv", load)
    _glProgramUniformMatrix4x3fv_ptr.get_or_create_ptr()[] = load_proc[fptr_glProgramUniformMatrix4x3fv]("glProgramUniformMatrix4x3fv", load)
    _glReleaseShaderCompiler_ptr.get_or_create_ptr()[] = load_proc[fptr_glReleaseShaderCompiler]("glReleaseShaderCompiler", load)
    _glScissorArrayv_ptr.get_or_create_ptr()[] = load_proc[fptr_glScissorArrayv]("glScissorArrayv", load)
    _glScissorIndexed_ptr.get_or_create_ptr()[] = load_proc[fptr_glScissorIndexed]("glScissorIndexed", load)
    _glScissorIndexedv_ptr.get_or_create_ptr()[] = load_proc[fptr_glScissorIndexedv]("glScissorIndexedv", load)
    _glShaderBinary_ptr.get_or_create_ptr()[] = load_proc[fptr_glShaderBinary]("glShaderBinary", load)
    _glUseProgramStages_ptr.get_or_create_ptr()[] = load_proc[fptr_glUseProgramStages]("glUseProgramStages", load)
    _glValidateProgramPipeline_ptr.get_or_create_ptr()[] = load_proc[fptr_glValidateProgramPipeline]("glValidateProgramPipeline", load)
    _glVertexAttribL1d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL1d]("glVertexAttribL1d", load)
    _glVertexAttribL1dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL1dv]("glVertexAttribL1dv", load)
    _glVertexAttribL2d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL2d]("glVertexAttribL2d", load)
    _glVertexAttribL2dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL2dv]("glVertexAttribL2dv", load)
    _glVertexAttribL3d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL3d]("glVertexAttribL3d", load)
    _glVertexAttribL3dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL3dv]("glVertexAttribL3dv", load)
    _glVertexAttribL4d_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL4d]("glVertexAttribL4d", load)
    _glVertexAttribL4dv_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribL4dv]("glVertexAttribL4dv", load)
    _glVertexAttribLPointer_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribLPointer]("glVertexAttribLPointer", load)
    _glViewportArrayv_ptr.get_or_create_ptr()[] = load_proc[fptr_glViewportArrayv]("glViewportArrayv", load)
    _glViewportIndexedf_ptr.get_or_create_ptr()[] = load_proc[fptr_glViewportIndexedf]("glViewportIndexedf", load)
    _glViewportIndexedfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glViewportIndexedfv]("glViewportIndexedfv", load)


fn init_gl_version_4_2(load: LoadProc) raises:
    _glBindImageTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindImageTexture]("glBindImageTexture", load)
    _glDrawArraysInstancedBaseInstance_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawArraysInstancedBaseInstance]("glDrawArraysInstancedBaseInstance", load)
    _glDrawElementsInstancedBaseInstance_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsInstancedBaseInstance]("glDrawElementsInstancedBaseInstance", load)
    _glDrawElementsInstancedBaseVertexBaseInstance_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawElementsInstancedBaseVertexBaseInstance]("glDrawElementsInstancedBaseVertexBaseInstance", load)
    _glDrawTransformFeedbackInstanced_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawTransformFeedbackInstanced]("glDrawTransformFeedbackInstanced", load)
    _glDrawTransformFeedbackStreamInstanced_ptr.get_or_create_ptr()[] = load_proc[fptr_glDrawTransformFeedbackStreamInstanced]("glDrawTransformFeedbackStreamInstanced", load)
    _glGetActiveAtomicCounterBufferiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetActiveAtomicCounterBufferiv]("glGetActiveAtomicCounterBufferiv", load)
    _glGetInternalformativ_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetInternalformativ]("glGetInternalformativ", load)
    _glMemoryBarrier_ptr.get_or_create_ptr()[] = load_proc[fptr_glMemoryBarrier]("glMemoryBarrier", load)
    _glTexStorage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexStorage1D]("glTexStorage1D", load)
    _glTexStorage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexStorage2D]("glTexStorage2D", load)
    _glTexStorage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexStorage3D]("glTexStorage3D", load)


fn init_gl_version_4_3(load: LoadProc) raises:
    _glBindVertexBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindVertexBuffer]("glBindVertexBuffer", load)
    _glClearBufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferData]("glClearBufferData", load)
    _glClearBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearBufferSubData]("glClearBufferSubData", load)
    _glCopyImageSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyImageSubData]("glCopyImageSubData", load)
    _glDebugMessageCallback_ptr.get_or_create_ptr()[] = load_proc[fptr_glDebugMessageCallback]("glDebugMessageCallback", load)
    _glDebugMessageControl_ptr.get_or_create_ptr()[] = load_proc[fptr_glDebugMessageControl]("glDebugMessageControl", load)
    _glDebugMessageInsert_ptr.get_or_create_ptr()[] = load_proc[fptr_glDebugMessageInsert]("glDebugMessageInsert", load)
    _glDispatchCompute_ptr.get_or_create_ptr()[] = load_proc[fptr_glDispatchCompute]("glDispatchCompute", load)
    _glDispatchComputeIndirect_ptr.get_or_create_ptr()[] = load_proc[fptr_glDispatchComputeIndirect]("glDispatchComputeIndirect", load)
    _glFramebufferParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glFramebufferParameteri]("glFramebufferParameteri", load)
    _glGetDebugMessageLog_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetDebugMessageLog]("glGetDebugMessageLog", load)
    _glGetFramebufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetFramebufferParameteriv]("glGetFramebufferParameteriv", load)
    _glGetInternalformati64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetInternalformati64v]("glGetInternalformati64v", load)
    _glGetObjectLabel_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetObjectLabel]("glGetObjectLabel", load)
    _glGetObjectPtrLabel_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetObjectPtrLabel]("glGetObjectPtrLabel", load)
    _glGetProgramInterfaceiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramInterfaceiv]("glGetProgramInterfaceiv", load)
    _glGetProgramResourceIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramResourceIndex]("glGetProgramResourceIndex", load)
    _glGetProgramResourceLocation_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramResourceLocation]("glGetProgramResourceLocation", load)
    _glGetProgramResourceLocationIndex_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramResourceLocationIndex]("glGetProgramResourceLocationIndex", load)
    _glGetProgramResourceName_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramResourceName]("glGetProgramResourceName", load)
    _glGetProgramResourceiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetProgramResourceiv]("glGetProgramResourceiv", load)
    _glInvalidateBufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateBufferData]("glInvalidateBufferData", load)
    _glInvalidateBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateBufferSubData]("glInvalidateBufferSubData", load)
    _glInvalidateFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateFramebuffer]("glInvalidateFramebuffer", load)
    _glInvalidateSubFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateSubFramebuffer]("glInvalidateSubFramebuffer", load)
    _glInvalidateTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateTexImage]("glInvalidateTexImage", load)
    _glInvalidateTexSubImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateTexSubImage]("glInvalidateTexSubImage", load)
    _glMultiDrawArraysIndirect_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawArraysIndirect]("glMultiDrawArraysIndirect", load)
    _glMultiDrawElementsIndirect_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawElementsIndirect]("glMultiDrawElementsIndirect", load)
    _glObjectLabel_ptr.get_or_create_ptr()[] = load_proc[fptr_glObjectLabel]("glObjectLabel", load)
    _glObjectPtrLabel_ptr.get_or_create_ptr()[] = load_proc[fptr_glObjectPtrLabel]("glObjectPtrLabel", load)
    _glPopDebugGroup_ptr.get_or_create_ptr()[] = load_proc[fptr_glPopDebugGroup]("glPopDebugGroup", load)
    _glPushDebugGroup_ptr.get_or_create_ptr()[] = load_proc[fptr_glPushDebugGroup]("glPushDebugGroup", load)
    _glShaderStorageBlockBinding_ptr.get_or_create_ptr()[] = load_proc[fptr_glShaderStorageBlockBinding]("glShaderStorageBlockBinding", load)
    _glTexBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexBufferRange]("glTexBufferRange", load)
    _glTexStorage2DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexStorage2DMultisample]("glTexStorage2DMultisample", load)
    _glTexStorage3DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTexStorage3DMultisample]("glTexStorage3DMultisample", load)
    _glTextureView_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureView]("glTextureView", load)
    _glVertexAttribBinding_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribBinding]("glVertexAttribBinding", load)
    _glVertexAttribFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribFormat]("glVertexAttribFormat", load)
    _glVertexAttribIFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribIFormat]("glVertexAttribIFormat", load)
    _glVertexAttribLFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexAttribLFormat]("glVertexAttribLFormat", load)
    _glVertexBindingDivisor_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexBindingDivisor]("glVertexBindingDivisor", load)


fn init_gl_version_4_4(load: LoadProc) raises:
    _glBindBuffersBase_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindBuffersBase]("glBindBuffersBase", load)
    _glBindBuffersRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindBuffersRange]("glBindBuffersRange", load)
    _glBindImageTextures_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindImageTextures]("glBindImageTextures", load)
    _glBindSamplers_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindSamplers]("glBindSamplers", load)
    _glBindTextures_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindTextures]("glBindTextures", load)
    _glBindVertexBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindVertexBuffers]("glBindVertexBuffers", load)
    _glBufferStorage_ptr.get_or_create_ptr()[] = load_proc[fptr_glBufferStorage]("glBufferStorage", load)
    _glClearTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearTexImage]("glClearTexImage", load)
    _glClearTexSubImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearTexSubImage]("glClearTexSubImage", load)


fn init_gl_version_4_5(load: LoadProc) raises:
    _glBindTextureUnit_ptr.get_or_create_ptr()[] = load_proc[fptr_glBindTextureUnit]("glBindTextureUnit", load)
    _glBlitNamedFramebuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glBlitNamedFramebuffer]("glBlitNamedFramebuffer", load)
    _glCheckNamedFramebufferStatus_ptr.get_or_create_ptr()[] = load_proc[fptr_glCheckNamedFramebufferStatus]("glCheckNamedFramebufferStatus", load)
    _glClearNamedBufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedBufferData]("glClearNamedBufferData", load)
    _glClearNamedBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedBufferSubData]("glClearNamedBufferSubData", load)
    _glClearNamedFramebufferfi_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedFramebufferfi]("glClearNamedFramebufferfi", load)
    _glClearNamedFramebufferfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedFramebufferfv]("glClearNamedFramebufferfv", load)
    _glClearNamedFramebufferiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedFramebufferiv]("glClearNamedFramebufferiv", load)
    _glClearNamedFramebufferuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glClearNamedFramebufferuiv]("glClearNamedFramebufferuiv", load)
    _glClipControl_ptr.get_or_create_ptr()[] = load_proc[fptr_glClipControl]("glClipControl", load)
    _glCompressedTextureSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTextureSubImage1D]("glCompressedTextureSubImage1D", load)
    _glCompressedTextureSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTextureSubImage2D]("glCompressedTextureSubImage2D", load)
    _glCompressedTextureSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCompressedTextureSubImage3D]("glCompressedTextureSubImage3D", load)
    _glCopyNamedBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyNamedBufferSubData]("glCopyNamedBufferSubData", load)
    _glCopyTextureSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTextureSubImage1D]("glCopyTextureSubImage1D", load)
    _glCopyTextureSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTextureSubImage2D]("glCopyTextureSubImage2D", load)
    _glCopyTextureSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glCopyTextureSubImage3D]("glCopyTextureSubImage3D", load)
    _glCreateBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateBuffers]("glCreateBuffers", load)
    _glCreateFramebuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateFramebuffers]("glCreateFramebuffers", load)
    _glCreateProgramPipelines_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateProgramPipelines]("glCreateProgramPipelines", load)
    _glCreateQueries_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateQueries]("glCreateQueries", load)
    _glCreateRenderbuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateRenderbuffers]("glCreateRenderbuffers", load)
    _glCreateSamplers_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateSamplers]("glCreateSamplers", load)
    _glCreateTextures_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateTextures]("glCreateTextures", load)
    _glCreateTransformFeedbacks_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateTransformFeedbacks]("glCreateTransformFeedbacks", load)
    _glCreateVertexArrays_ptr.get_or_create_ptr()[] = load_proc[fptr_glCreateVertexArrays]("glCreateVertexArrays", load)
    _glDisableVertexArrayAttrib_ptr.get_or_create_ptr()[] = load_proc[fptr_glDisableVertexArrayAttrib]("glDisableVertexArrayAttrib", load)
    _glEnableVertexArrayAttrib_ptr.get_or_create_ptr()[] = load_proc[fptr_glEnableVertexArrayAttrib]("glEnableVertexArrayAttrib", load)
    _glFlushMappedNamedBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glFlushMappedNamedBufferRange]("glFlushMappedNamedBufferRange", load)
    _glGenerateTextureMipmap_ptr.get_or_create_ptr()[] = load_proc[fptr_glGenerateTextureMipmap]("glGenerateTextureMipmap", load)
    _glGetCompressedTextureImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetCompressedTextureImage]("glGetCompressedTextureImage", load)
    _glGetCompressedTextureSubImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetCompressedTextureSubImage]("glGetCompressedTextureSubImage", load)
    _glGetGraphicsResetStatus_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetGraphicsResetStatus]("glGetGraphicsResetStatus", load)
    _glGetNamedBufferParameteri64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedBufferParameteri64v]("glGetNamedBufferParameteri64v", load)
    _glGetNamedBufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedBufferParameteriv]("glGetNamedBufferParameteriv", load)
    _glGetNamedBufferPointerv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedBufferPointerv]("glGetNamedBufferPointerv", load)
    _glGetNamedBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedBufferSubData]("glGetNamedBufferSubData", load)
    _glGetNamedFramebufferAttachmentParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedFramebufferAttachmentParameteriv]("glGetNamedFramebufferAttachmentParameteriv", load)
    _glGetNamedFramebufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedFramebufferParameteriv]("glGetNamedFramebufferParameteriv", load)
    _glGetNamedRenderbufferParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetNamedRenderbufferParameteriv]("glGetNamedRenderbufferParameteriv", load)
    _glGetQueryBufferObjecti64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryBufferObjecti64v]("glGetQueryBufferObjecti64v", load)
    _glGetQueryBufferObjectiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryBufferObjectiv]("glGetQueryBufferObjectiv", load)
    _glGetQueryBufferObjectui64v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryBufferObjectui64v]("glGetQueryBufferObjectui64v", load)
    _glGetQueryBufferObjectuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetQueryBufferObjectuiv]("glGetQueryBufferObjectuiv", load)
    _glGetTextureImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureImage]("glGetTextureImage", load)
    _glGetTextureLevelParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureLevelParameterfv]("glGetTextureLevelParameterfv", load)
    _glGetTextureLevelParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureLevelParameteriv]("glGetTextureLevelParameteriv", load)
    _glGetTextureParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureParameterIiv]("glGetTextureParameterIiv", load)
    _glGetTextureParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureParameterIuiv]("glGetTextureParameterIuiv", load)
    _glGetTextureParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureParameterfv]("glGetTextureParameterfv", load)
    _glGetTextureParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureParameteriv]("glGetTextureParameteriv", load)
    _glGetTextureSubImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTextureSubImage]("glGetTextureSubImage", load)
    _glGetTransformFeedbacki64_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTransformFeedbacki64_v]("glGetTransformFeedbacki64_v", load)
    _glGetTransformFeedbacki_v_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTransformFeedbacki_v]("glGetTransformFeedbacki_v", load)
    _glGetTransformFeedbackiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetTransformFeedbackiv]("glGetTransformFeedbackiv", load)
    _glGetVertexArrayIndexed64iv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexArrayIndexed64iv]("glGetVertexArrayIndexed64iv", load)
    _glGetVertexArrayIndexediv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexArrayIndexediv]("glGetVertexArrayIndexediv", load)
    _glGetVertexArrayiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetVertexArrayiv]("glGetVertexArrayiv", load)
    _glGetnColorTable_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnColorTable]("glGetnColorTable", load)
    _glGetnCompressedTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnCompressedTexImage]("glGetnCompressedTexImage", load)
    _glGetnConvolutionFilter_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnConvolutionFilter]("glGetnConvolutionFilter", load)
    _glGetnHistogram_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnHistogram]("glGetnHistogram", load)
    _glGetnMapdv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnMapdv]("glGetnMapdv", load)
    _glGetnMapfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnMapfv]("glGetnMapfv", load)
    _glGetnMapiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnMapiv]("glGetnMapiv", load)
    _glGetnMinmax_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnMinmax]("glGetnMinmax", load)
    _glGetnPixelMapfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnPixelMapfv]("glGetnPixelMapfv", load)
    _glGetnPixelMapuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnPixelMapuiv]("glGetnPixelMapuiv", load)
    _glGetnPixelMapusv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnPixelMapusv]("glGetnPixelMapusv", load)
    _glGetnPolygonStipple_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnPolygonStipple]("glGetnPolygonStipple", load)
    _glGetnSeparableFilter_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnSeparableFilter]("glGetnSeparableFilter", load)
    _glGetnTexImage_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnTexImage]("glGetnTexImage", load)
    _glGetnUniformdv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnUniformdv]("glGetnUniformdv", load)
    _glGetnUniformfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnUniformfv]("glGetnUniformfv", load)
    _glGetnUniformiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnUniformiv]("glGetnUniformiv", load)
    _glGetnUniformuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glGetnUniformuiv]("glGetnUniformuiv", load)
    _glInvalidateNamedFramebufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateNamedFramebufferData]("glInvalidateNamedFramebufferData", load)
    _glInvalidateNamedFramebufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glInvalidateNamedFramebufferSubData]("glInvalidateNamedFramebufferSubData", load)
    _glMapNamedBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glMapNamedBuffer]("glMapNamedBuffer", load)
    _glMapNamedBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glMapNamedBufferRange]("glMapNamedBufferRange", load)
    _glMemoryBarrierByRegion_ptr.get_or_create_ptr()[] = load_proc[fptr_glMemoryBarrierByRegion]("glMemoryBarrierByRegion", load)
    _glNamedBufferData_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedBufferData]("glNamedBufferData", load)
    _glNamedBufferStorage_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedBufferStorage]("glNamedBufferStorage", load)
    _glNamedBufferSubData_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedBufferSubData]("glNamedBufferSubData", load)
    _glNamedFramebufferDrawBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferDrawBuffer]("glNamedFramebufferDrawBuffer", load)
    _glNamedFramebufferDrawBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferDrawBuffers]("glNamedFramebufferDrawBuffers", load)
    _glNamedFramebufferParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferParameteri]("glNamedFramebufferParameteri", load)
    _glNamedFramebufferReadBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferReadBuffer]("glNamedFramebufferReadBuffer", load)
    _glNamedFramebufferRenderbuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferRenderbuffer]("glNamedFramebufferRenderbuffer", load)
    _glNamedFramebufferTexture_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferTexture]("glNamedFramebufferTexture", load)
    _glNamedFramebufferTextureLayer_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedFramebufferTextureLayer]("glNamedFramebufferTextureLayer", load)
    _glNamedRenderbufferStorage_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedRenderbufferStorage]("glNamedRenderbufferStorage", load)
    _glNamedRenderbufferStorageMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glNamedRenderbufferStorageMultisample]("glNamedRenderbufferStorageMultisample", load)
    _glReadnPixels_ptr.get_or_create_ptr()[] = load_proc[fptr_glReadnPixels]("glReadnPixels", load)
    _glTextureBarrier_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureBarrier]("glTextureBarrier", load)
    _glTextureBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureBuffer]("glTextureBuffer", load)
    _glTextureBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureBufferRange]("glTextureBufferRange", load)
    _glTextureParameterIiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameterIiv]("glTextureParameterIiv", load)
    _glTextureParameterIuiv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameterIuiv]("glTextureParameterIuiv", load)
    _glTextureParameterf_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameterf]("glTextureParameterf", load)
    _glTextureParameterfv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameterfv]("glTextureParameterfv", load)
    _glTextureParameteri_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameteri]("glTextureParameteri", load)
    _glTextureParameteriv_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureParameteriv]("glTextureParameteriv", load)
    _glTextureStorage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureStorage1D]("glTextureStorage1D", load)
    _glTextureStorage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureStorage2D]("glTextureStorage2D", load)
    _glTextureStorage2DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureStorage2DMultisample]("glTextureStorage2DMultisample", load)
    _glTextureStorage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureStorage3D]("glTextureStorage3D", load)
    _glTextureStorage3DMultisample_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureStorage3DMultisample]("glTextureStorage3DMultisample", load)
    _glTextureSubImage1D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureSubImage1D]("glTextureSubImage1D", load)
    _glTextureSubImage2D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureSubImage2D]("glTextureSubImage2D", load)
    _glTextureSubImage3D_ptr.get_or_create_ptr()[] = load_proc[fptr_glTextureSubImage3D]("glTextureSubImage3D", load)
    _glTransformFeedbackBufferBase_ptr.get_or_create_ptr()[] = load_proc[fptr_glTransformFeedbackBufferBase]("glTransformFeedbackBufferBase", load)
    _glTransformFeedbackBufferRange_ptr.get_or_create_ptr()[] = load_proc[fptr_glTransformFeedbackBufferRange]("glTransformFeedbackBufferRange", load)
    _glUnmapNamedBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glUnmapNamedBuffer]("glUnmapNamedBuffer", load)
    _glVertexArrayAttribBinding_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayAttribBinding]("glVertexArrayAttribBinding", load)
    _glVertexArrayAttribFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayAttribFormat]("glVertexArrayAttribFormat", load)
    _glVertexArrayAttribIFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayAttribIFormat]("glVertexArrayAttribIFormat", load)
    _glVertexArrayAttribLFormat_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayAttribLFormat]("glVertexArrayAttribLFormat", load)
    _glVertexArrayBindingDivisor_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayBindingDivisor]("glVertexArrayBindingDivisor", load)
    _glVertexArrayElementBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayElementBuffer]("glVertexArrayElementBuffer", load)
    _glVertexArrayVertexBuffer_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayVertexBuffer]("glVertexArrayVertexBuffer", load)
    _glVertexArrayVertexBuffers_ptr.get_or_create_ptr()[] = load_proc[fptr_glVertexArrayVertexBuffers]("glVertexArrayVertexBuffers", load)


fn init_gl_version_4_6(load: LoadProc) raises:
    _glMultiDrawArraysIndirectCount_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawArraysIndirectCount]("glMultiDrawArraysIndirectCount", load)
    _glMultiDrawElementsIndirectCount_ptr.get_or_create_ptr()[] = load_proc[fptr_glMultiDrawElementsIndirectCount]("glMultiDrawElementsIndirectCount", load)
    _glPolygonOffsetClamp_ptr.get_or_create_ptr()[] = load_proc[fptr_glPolygonOffsetClamp]("glPolygonOffsetClamp", load)
    _glSpecializeShader_ptr.get_or_create_ptr()[] = load_proc[fptr_glSpecializeShader]("glSpecializeShader", load)


# ========= INIT =========
fn init_opengl(load: LoadProc) raises:
    init_gl_version_1_0(load)
    init_gl_version_1_1(load)
    init_gl_version_1_2(load)
    init_gl_version_1_3(load)
    init_gl_version_1_4(load)
    init_gl_version_1_5(load)
    init_gl_version_2_0(load)
    init_gl_version_2_1(load)
    init_gl_version_3_0(load)
    init_gl_version_3_1(load)
    init_gl_version_3_2(load)
    init_gl_version_3_3(load)
    init_gl_version_4_0(load)
    init_gl_version_4_1(load)
    init_gl_version_4_2(load)
    init_gl_version_4_3(load)
    init_gl_version_4_4(load)
    init_gl_version_4_5(load)
    init_gl_version_4_6(load)
