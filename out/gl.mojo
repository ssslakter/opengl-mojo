# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #

from sys.info import os_is_macos
from memory import UnsafePointer

alias Ptr = UnsafePointer
alias OpaquePointer = UnsafePointer[NoneType]

from sys.ffi import _Global, _OwnedDLHandle, _get_dylib_function, c_char, c_uchar, c_int, c_uint, c_short, c_ushort, c_long, c_long_long, c_size_t, c_ssize_t, c_float, c_double

# ========= TYPES =========

alias GLenum = c_uint
alias GLboolean = c_uint
alias GLbitfield = c_uint
alias GLvoid = NoneType
alias GLbyte = Int8
alias GLubyte = UInt8
alias GLshort = Int16
alias GLushort = UInt16
alias GLint = c_int
alias GLuint = c_uint
alias GLclampx = Int32
alias GLsizei = c_int
alias GLfloat = c_float
alias GLclampf = c_float
alias GLdouble = c_double
alias GLclampd = c_double
alias GLeglClientBufferEXT = OpaquePointer
alias GLeglImageOES = OpaquePointer
alias GLchar = c_char
alias GLcharARB = c_char
alias GLhalf = UInt16
alias GLhalfARB = UInt16
alias GLfixed = Int32
alias GLintptr = Int
alias GLintptrARB = Int
alias GLsizeiptr = c_ssize_t
alias GLsizeiptrARB = c_ssize_t
alias GLint64 = Int64
alias GLint64EXT = Int64
alias GLuint64 = UInt64
alias GLuint64EXT = UInt64


@fieldwise_init
struct __GLsync(Copyable, Movable):
    """An opaque handle to a __GLsync."""

    pass


alias GLsync = Ptr[__GLsync]


@fieldwise_init
struct _cl_context(Copyable, Movable):
    """An opaque handle to a _cl_context."""

    pass


@fieldwise_init
struct _cl_event(Copyable, Movable):
    """An opaque handle to a _cl_event."""

    pass


alias GLhalfNV = c_ushort
alias GLvdpauSurfaceNV = GLintptr

alias GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)

# ========= ENUMS =========


@fieldwise_init
@register_passable("trivial")
struct AtomicCounterBufferPName:
    var value: GLenum

    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = AtomicCounterBufferPName(0x90ED)
    alias GL_ATOMIC_COUNTER_BUFFER_BINDING = AtomicCounterBufferPName(0x92C1)
    alias GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = AtomicCounterBufferPName(0x92C4)
    alias GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = AtomicCounterBufferPName(0x92C5)
    alias GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = AtomicCounterBufferPName(0x92C6)
    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = AtomicCounterBufferPName(0x92C7)
    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = AtomicCounterBufferPName(0x92C8)
    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = AtomicCounterBufferPName(0x92C9)
    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = AtomicCounterBufferPName(0x92CA)
    alias GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = AtomicCounterBufferPName(0x92CB)


@fieldwise_init
@register_passable("trivial")
struct AttributeType:
    var value: GLenum

    alias GL_INT = AttributeType(0x1404)
    alias GL_UNSIGNED_INT = AttributeType(0x1405)
    alias GL_FLOAT = AttributeType(0x1406)
    alias GL_DOUBLE = AttributeType(0x140A)
    alias GL_INT64_ARB = AttributeType(0x140E)
    alias GL_INT64_NV = AttributeType(0x140E)
    alias GL_UNSIGNED_INT64_ARB = AttributeType(0x140F)
    alias GL_UNSIGNED_INT64_NV = AttributeType(0x140F)
    alias GL_FLOAT_VEC2 = AttributeType(0x8B50)
    alias GL_FLOAT_VEC2_ARB = AttributeType(0x8B50)
    alias GL_FLOAT_VEC3 = AttributeType(0x8B51)
    alias GL_FLOAT_VEC3_ARB = AttributeType(0x8B51)
    alias GL_FLOAT_VEC4 = AttributeType(0x8B52)
    alias GL_FLOAT_VEC4_ARB = AttributeType(0x8B52)
    alias GL_INT_VEC2 = AttributeType(0x8B53)
    alias GL_INT_VEC2_ARB = AttributeType(0x8B53)
    alias GL_INT_VEC3 = AttributeType(0x8B54)
    alias GL_INT_VEC3_ARB = AttributeType(0x8B54)
    alias GL_INT_VEC4 = AttributeType(0x8B55)
    alias GL_INT_VEC4_ARB = AttributeType(0x8B55)
    alias GL_BOOL = AttributeType(0x8B56)
    alias GL_BOOL_ARB = AttributeType(0x8B56)
    alias GL_BOOL_VEC2 = AttributeType(0x8B57)
    alias GL_BOOL_VEC2_ARB = AttributeType(0x8B57)
    alias GL_BOOL_VEC3 = AttributeType(0x8B58)
    alias GL_BOOL_VEC3_ARB = AttributeType(0x8B58)
    alias GL_BOOL_VEC4 = AttributeType(0x8B59)
    alias GL_BOOL_VEC4_ARB = AttributeType(0x8B59)
    alias GL_FLOAT_MAT2 = AttributeType(0x8B5A)
    alias GL_FLOAT_MAT2_ARB = AttributeType(0x8B5A)
    alias GL_FLOAT_MAT3 = AttributeType(0x8B5B)
    alias GL_FLOAT_MAT3_ARB = AttributeType(0x8B5B)
    alias GL_FLOAT_MAT4 = AttributeType(0x8B5C)
    alias GL_FLOAT_MAT4_ARB = AttributeType(0x8B5C)
    alias GL_SAMPLER_1D = AttributeType(0x8B5D)
    alias GL_SAMPLER_1D_ARB = AttributeType(0x8B5D)
    alias GL_SAMPLER_2D = AttributeType(0x8B5E)
    alias GL_SAMPLER_2D_ARB = AttributeType(0x8B5E)
    alias GL_SAMPLER_3D = AttributeType(0x8B5F)
    alias GL_SAMPLER_3D_ARB = AttributeType(0x8B5F)
    alias GL_SAMPLER_3D_OES = AttributeType(0x8B5F)
    alias GL_SAMPLER_CUBE = AttributeType(0x8B60)
    alias GL_SAMPLER_CUBE_ARB = AttributeType(0x8B60)
    alias GL_SAMPLER_1D_SHADOW = AttributeType(0x8B61)
    alias GL_SAMPLER_1D_SHADOW_ARB = AttributeType(0x8B61)
    alias GL_SAMPLER_2D_SHADOW = AttributeType(0x8B62)
    alias GL_SAMPLER_2D_SHADOW_ARB = AttributeType(0x8B62)
    alias GL_SAMPLER_2D_SHADOW_EXT = AttributeType(0x8B62)
    alias GL_SAMPLER_2D_RECT = AttributeType(0x8B63)
    alias GL_SAMPLER_2D_RECT_ARB = AttributeType(0x8B63)
    alias GL_SAMPLER_2D_RECT_SHADOW = AttributeType(0x8B64)
    alias GL_SAMPLER_2D_RECT_SHADOW_ARB = AttributeType(0x8B64)
    alias GL_FLOAT_MAT2x3 = AttributeType(0x8B65)
    alias GL_FLOAT_MAT2x3_NV = AttributeType(0x8B65)
    alias GL_FLOAT_MAT2x4 = AttributeType(0x8B66)
    alias GL_FLOAT_MAT2x4_NV = AttributeType(0x8B66)
    alias GL_FLOAT_MAT3x2 = AttributeType(0x8B67)
    alias GL_FLOAT_MAT3x2_NV = AttributeType(0x8B67)
    alias GL_FLOAT_MAT3x4 = AttributeType(0x8B68)
    alias GL_FLOAT_MAT3x4_NV = AttributeType(0x8B68)
    alias GL_FLOAT_MAT4x2 = AttributeType(0x8B69)
    alias GL_FLOAT_MAT4x2_NV = AttributeType(0x8B69)
    alias GL_FLOAT_MAT4x3 = AttributeType(0x8B6A)
    alias GL_FLOAT_MAT4x3_NV = AttributeType(0x8B6A)
    alias GL_SAMPLER_BUFFER = AttributeType(0x8DC2)
    alias GL_SAMPLER_1D_ARRAY_SHADOW = AttributeType(0x8DC3)
    alias GL_SAMPLER_2D_ARRAY_SHADOW = AttributeType(0x8DC4)
    alias GL_SAMPLER_CUBE_SHADOW = AttributeType(0x8DC5)
    alias GL_UNSIGNED_INT_VEC2 = AttributeType(0x8DC6)
    alias GL_UNSIGNED_INT_VEC3 = AttributeType(0x8DC7)
    alias GL_UNSIGNED_INT_VEC4 = AttributeType(0x8DC8)
    alias GL_INT_SAMPLER_1D = AttributeType(0x8DC9)
    alias GL_INT_SAMPLER_2D = AttributeType(0x8DCA)
    alias GL_INT_SAMPLER_3D = AttributeType(0x8DCB)
    alias GL_INT_SAMPLER_CUBE = AttributeType(0x8DCC)
    alias GL_INT_SAMPLER_2D_RECT = AttributeType(0x8DCD)
    alias GL_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DCE)
    alias GL_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DCF)
    alias GL_INT_SAMPLER_BUFFER = AttributeType(0x8DD0)
    alias GL_UNSIGNED_INT_SAMPLER_1D = AttributeType(0x8DD1)
    alias GL_UNSIGNED_INT_SAMPLER_2D = AttributeType(0x8DD2)
    alias GL_UNSIGNED_INT_SAMPLER_3D = AttributeType(0x8DD3)
    alias GL_UNSIGNED_INT_SAMPLER_CUBE = AttributeType(0x8DD4)
    alias GL_UNSIGNED_INT_SAMPLER_2D_RECT = AttributeType(0x8DD5)
    alias GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DD6)
    alias GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DD7)
    alias GL_UNSIGNED_INT_SAMPLER_BUFFER = AttributeType(0x8DD8)
    alias GL_DOUBLE_MAT2 = AttributeType(0x8F46)
    alias GL_DOUBLE_MAT3 = AttributeType(0x8F47)
    alias GL_DOUBLE_MAT4 = AttributeType(0x8F48)
    alias GL_DOUBLE_MAT2x3 = AttributeType(0x8F49)
    alias GL_DOUBLE_MAT2x4 = AttributeType(0x8F4A)
    alias GL_DOUBLE_MAT3x2 = AttributeType(0x8F4B)
    alias GL_DOUBLE_MAT3x4 = AttributeType(0x8F4C)
    alias GL_DOUBLE_MAT4x2 = AttributeType(0x8F4D)
    alias GL_DOUBLE_MAT4x3 = AttributeType(0x8F4E)
    alias GL_INT64_VEC2_ARB = AttributeType(0x8FE9)
    alias GL_INT64_VEC3_ARB = AttributeType(0x8FEA)
    alias GL_INT64_VEC4_ARB = AttributeType(0x8FEB)
    alias GL_UNSIGNED_INT64_VEC2_ARB = AttributeType(0x8FF5)
    alias GL_UNSIGNED_INT64_VEC3_ARB = AttributeType(0x8FF6)
    alias GL_UNSIGNED_INT64_VEC4_ARB = AttributeType(0x8FF7)
    alias GL_DOUBLE_VEC2 = AttributeType(0x8FFC)
    alias GL_DOUBLE_VEC3 = AttributeType(0x8FFD)
    alias GL_DOUBLE_VEC4 = AttributeType(0x8FFE)
    alias GL_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900C)
    alias GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = AttributeType(0x900D)
    alias GL_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900E)
    alias GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900F)
    alias GL_IMAGE_1D = AttributeType(0x904C)
    alias GL_IMAGE_2D = AttributeType(0x904D)
    alias GL_IMAGE_3D = AttributeType(0x904E)
    alias GL_IMAGE_2D_RECT = AttributeType(0x904F)
    alias GL_IMAGE_CUBE = AttributeType(0x9050)
    alias GL_IMAGE_BUFFER = AttributeType(0x9051)
    alias GL_IMAGE_1D_ARRAY = AttributeType(0x9052)
    alias GL_IMAGE_2D_ARRAY = AttributeType(0x9053)
    alias GL_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x9054)
    alias GL_IMAGE_2D_MULTISAMPLE = AttributeType(0x9055)
    alias GL_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9056)
    alias GL_INT_IMAGE_1D = AttributeType(0x9057)
    alias GL_INT_IMAGE_2D = AttributeType(0x9058)
    alias GL_INT_IMAGE_3D = AttributeType(0x9059)
    alias GL_INT_IMAGE_2D_RECT = AttributeType(0x905A)
    alias GL_INT_IMAGE_CUBE = AttributeType(0x905B)
    alias GL_INT_IMAGE_BUFFER = AttributeType(0x905C)
    alias GL_INT_IMAGE_1D_ARRAY = AttributeType(0x905D)
    alias GL_INT_IMAGE_2D_ARRAY = AttributeType(0x905E)
    alias GL_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x905F)
    alias GL_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x9060)
    alias GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9061)
    alias GL_UNSIGNED_INT_IMAGE_1D = AttributeType(0x9062)
    alias GL_UNSIGNED_INT_IMAGE_2D = AttributeType(0x9063)
    alias GL_UNSIGNED_INT_IMAGE_3D = AttributeType(0x9064)
    alias GL_UNSIGNED_INT_IMAGE_2D_RECT = AttributeType(0x9065)
    alias GL_UNSIGNED_INT_IMAGE_CUBE = AttributeType(0x9066)
    alias GL_UNSIGNED_INT_IMAGE_BUFFER = AttributeType(0x9067)
    alias GL_UNSIGNED_INT_IMAGE_1D_ARRAY = AttributeType(0x9068)
    alias GL_UNSIGNED_INT_IMAGE_2D_ARRAY = AttributeType(0x9069)
    alias GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x906A)
    alias GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x906B)
    alias GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x906C)
    alias GL_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9108)
    alias GL_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9109)
    alias GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x910A)
    alias GL_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910B)
    alias GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910C)
    alias GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910D)


@fieldwise_init
@register_passable("trivial")
struct BindTransformFeedbackTarget:
    var value: GLenum

    alias GL_TRANSFORM_FEEDBACK = BindTransformFeedbackTarget(0x8E22)


@fieldwise_init
@register_passable("trivial")
struct BlendEquationModeEXT:
    var value: GLenum

    alias GL_FUNC_ADD = BlendEquationModeEXT(0x8006)
    alias GL_FUNC_ADD_EXT = BlendEquationModeEXT(0x8006)
    alias GL_MIN = BlendEquationModeEXT(0x8007)
    alias GL_MIN_EXT = BlendEquationModeEXT(0x8007)
    alias GL_MAX = BlendEquationModeEXT(0x8008)
    alias GL_MAX_EXT = BlendEquationModeEXT(0x8008)
    alias GL_FUNC_SUBTRACT = BlendEquationModeEXT(0x800A)
    alias GL_FUNC_SUBTRACT_EXT = BlendEquationModeEXT(0x800A)
    alias GL_FUNC_REVERSE_SUBTRACT = BlendEquationModeEXT(0x800B)
    alias GL_FUNC_REVERSE_SUBTRACT_EXT = BlendEquationModeEXT(0x800B)
    alias GL_ALPHA_MIN_SGIX = BlendEquationModeEXT(0x8320)
    alias GL_ALPHA_MAX_SGIX = BlendEquationModeEXT(0x8321)


@fieldwise_init
@register_passable("trivial")
struct BlendingFactor:
    var value: GLenum

    alias GL_ZERO = BlendingFactor(0)
    alias GL_ONE = BlendingFactor(1)
    alias GL_SRC_COLOR = BlendingFactor(0x0300)
    alias GL_ONE_MINUS_SRC_COLOR = BlendingFactor(0x0301)
    alias GL_SRC_ALPHA = BlendingFactor(0x0302)
    alias GL_ONE_MINUS_SRC_ALPHA = BlendingFactor(0x0303)
    alias GL_DST_ALPHA = BlendingFactor(0x0304)
    alias GL_ONE_MINUS_DST_ALPHA = BlendingFactor(0x0305)
    alias GL_DST_COLOR = BlendingFactor(0x0306)
    alias GL_ONE_MINUS_DST_COLOR = BlendingFactor(0x0307)
    alias GL_SRC_ALPHA_SATURATE = BlendingFactor(0x0308)
    alias GL_CONSTANT_COLOR = BlendingFactor(0x8001)
    alias GL_ONE_MINUS_CONSTANT_COLOR = BlendingFactor(0x8002)
    alias GL_CONSTANT_ALPHA = BlendingFactor(0x8003)
    alias GL_ONE_MINUS_CONSTANT_ALPHA = BlendingFactor(0x8004)
    alias GL_SRC1_ALPHA = BlendingFactor(0x8589)
    alias GL_SRC1_COLOR = BlendingFactor(0x88F9)
    alias GL_ONE_MINUS_SRC1_COLOR = BlendingFactor(0x88FA)
    alias GL_ONE_MINUS_SRC1_ALPHA = BlendingFactor(0x88FB)


@fieldwise_init
@register_passable("trivial")
struct BlitFramebufferFilter:
    var value: GLenum

    alias GL_NEAREST = BlitFramebufferFilter(0x2600)
    alias GL_LINEAR = BlitFramebufferFilter(0x2601)


@fieldwise_init
@register_passable("trivial")
struct Buffer:
    var value: GLenum

    alias GL_COLOR = Buffer(0x1800)
    alias GL_DEPTH = Buffer(0x1801)
    alias GL_STENCIL = Buffer(0x1802)


@fieldwise_init
@register_passable("trivial")
struct BufferAccessARB:
    var value: GLenum

    alias GL_READ_ONLY = BufferAccessARB(0x88B8)
    alias GL_WRITE_ONLY = BufferAccessARB(0x88B9)
    alias GL_READ_WRITE = BufferAccessARB(0x88BA)


@fieldwise_init
@register_passable("trivial")
struct BufferPNameARB:
    var value: GLenum

    alias GL_BUFFER_IMMUTABLE_STORAGE = BufferPNameARB(0x821F)
    alias GL_BUFFER_STORAGE_FLAGS = BufferPNameARB(0x8220)
    alias GL_BUFFER_SIZE = BufferPNameARB(0x8764)
    alias GL_BUFFER_SIZE_ARB = BufferPNameARB(0x8764)
    alias GL_BUFFER_USAGE = BufferPNameARB(0x8765)
    alias GL_BUFFER_USAGE_ARB = BufferPNameARB(0x8765)
    alias GL_BUFFER_ACCESS = BufferPNameARB(0x88BB)
    alias GL_BUFFER_ACCESS_ARB = BufferPNameARB(0x88BB)
    alias GL_BUFFER_MAPPED = BufferPNameARB(0x88BC)
    alias GL_BUFFER_MAPPED_ARB = BufferPNameARB(0x88BC)
    alias GL_BUFFER_ACCESS_FLAGS = BufferPNameARB(0x911F)
    alias GL_BUFFER_MAP_LENGTH = BufferPNameARB(0x9120)
    alias GL_BUFFER_MAP_OFFSET = BufferPNameARB(0x9121)


@fieldwise_init
@register_passable("trivial")
struct BufferPointerNameARB:
    var value: GLenum

    alias GL_BUFFER_MAP_POINTER = BufferPointerNameARB(0x88BD)
    alias GL_BUFFER_MAP_POINTER_ARB = BufferPointerNameARB(0x88BD)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageMask:
    var value: GLbitfield

    alias GL_DYNAMIC_STORAGE_BIT = BufferStorageMask(0x0100)
    alias GL_DYNAMIC_STORAGE_BIT_EXT = BufferStorageMask(0x0100)
    alias GL_CLIENT_STORAGE_BIT = BufferStorageMask(0x0200)
    alias GL_CLIENT_STORAGE_BIT_EXT = BufferStorageMask(0x0200)
    alias GL_SPARSE_STORAGE_BIT_ARB = BufferStorageMask(0x0400)
    alias GL_LGPU_SEPARATE_STORAGE_BIT_NVX = BufferStorageMask(0x0800)
    alias GL_PER_GPU_STORAGE_BIT_NV = BufferStorageMask(0x0800)
    alias GL_EXTERNAL_STORAGE_BIT_NVX = BufferStorageMask(0x2000)
    alias GL_MAP_READ_BIT = BufferStorageMask(0x0001)
    alias GL_MAP_READ_BIT_EXT = BufferStorageMask(0x0001)
    alias GL_MAP_WRITE_BIT = BufferStorageMask(0x0002)
    alias GL_MAP_WRITE_BIT_EXT = BufferStorageMask(0x0002)
    alias GL_MAP_PERSISTENT_BIT = BufferStorageMask(0x0040)
    alias GL_MAP_PERSISTENT_BIT_EXT = BufferStorageMask(0x0040)
    alias GL_MAP_COHERENT_BIT = BufferStorageMask(0x0080)
    alias GL_MAP_COHERENT_BIT_EXT = BufferStorageMask(0x0080)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageTarget:
    var value: GLenum

    alias GL_ARRAY_BUFFER = BufferStorageTarget(0x8892)
    alias GL_ELEMENT_ARRAY_BUFFER = BufferStorageTarget(0x8893)
    alias GL_PIXEL_PACK_BUFFER = BufferStorageTarget(0x88EB)
    alias GL_PIXEL_UNPACK_BUFFER = BufferStorageTarget(0x88EC)
    alias GL_UNIFORM_BUFFER = BufferStorageTarget(0x8A11)
    alias GL_TEXTURE_BUFFER = BufferStorageTarget(0x8C2A)
    alias GL_TRANSFORM_FEEDBACK_BUFFER = BufferStorageTarget(0x8C8E)
    alias GL_COPY_READ_BUFFER = BufferStorageTarget(0x8F36)
    alias GL_COPY_WRITE_BUFFER = BufferStorageTarget(0x8F37)
    alias GL_DRAW_INDIRECT_BUFFER = BufferStorageTarget(0x8F3F)
    alias GL_SHADER_STORAGE_BUFFER = BufferStorageTarget(0x90D2)
    alias GL_DISPATCH_INDIRECT_BUFFER = BufferStorageTarget(0x90EE)
    alias GL_QUERY_BUFFER = BufferStorageTarget(0x9192)
    alias GL_ATOMIC_COUNTER_BUFFER = BufferStorageTarget(0x92C0)


@fieldwise_init
@register_passable("trivial")
struct BufferTargetARB:
    var value: GLenum

    alias GL_PARAMETER_BUFFER = BufferTargetARB(0x80EE)
    alias GL_ARRAY_BUFFER = BufferTargetARB(0x8892)
    alias GL_ELEMENT_ARRAY_BUFFER = BufferTargetARB(0x8893)
    alias GL_PIXEL_PACK_BUFFER = BufferTargetARB(0x88EB)
    alias GL_PIXEL_UNPACK_BUFFER = BufferTargetARB(0x88EC)
    alias GL_UNIFORM_BUFFER = BufferTargetARB(0x8A11)
    alias GL_TEXTURE_BUFFER = BufferTargetARB(0x8C2A)
    alias GL_TRANSFORM_FEEDBACK_BUFFER = BufferTargetARB(0x8C8E)
    alias GL_COPY_READ_BUFFER = BufferTargetARB(0x8F36)
    alias GL_COPY_WRITE_BUFFER = BufferTargetARB(0x8F37)
    alias GL_DRAW_INDIRECT_BUFFER = BufferTargetARB(0x8F3F)
    alias GL_SHADER_STORAGE_BUFFER = BufferTargetARB(0x90D2)
    alias GL_DISPATCH_INDIRECT_BUFFER = BufferTargetARB(0x90EE)
    alias GL_QUERY_BUFFER = BufferTargetARB(0x9192)
    alias GL_ATOMIC_COUNTER_BUFFER = BufferTargetARB(0x92C0)


@fieldwise_init
@register_passable("trivial")
struct BufferUsageARB:
    var value: GLenum

    alias GL_STREAM_DRAW = BufferUsageARB(0x88E0)
    alias GL_STREAM_READ = BufferUsageARB(0x88E1)
    alias GL_STREAM_COPY = BufferUsageARB(0x88E2)
    alias GL_STATIC_DRAW = BufferUsageARB(0x88E4)
    alias GL_STATIC_READ = BufferUsageARB(0x88E5)
    alias GL_STATIC_COPY = BufferUsageARB(0x88E6)
    alias GL_DYNAMIC_DRAW = BufferUsageARB(0x88E8)
    alias GL_DYNAMIC_READ = BufferUsageARB(0x88E9)
    alias GL_DYNAMIC_COPY = BufferUsageARB(0x88EA)


@fieldwise_init
@register_passable("trivial")
struct ClampColorModeARB:
    var value: GLenum

    alias GL_FALSE = ClampColorModeARB(0)
    alias GL_TRUE = ClampColorModeARB(1)
    alias GL_FIXED_ONLY = ClampColorModeARB(0x891D)
    alias GL_FIXED_ONLY_ARB = ClampColorModeARB(0x891D)


@fieldwise_init
@register_passable("trivial")
struct ClampColorTargetARB:
    var value: GLenum

    alias GL_CLAMP_VERTEX_COLOR_ARB = ClampColorTargetARB(0x891A)
    alias GL_CLAMP_FRAGMENT_COLOR_ARB = ClampColorTargetARB(0x891B)
    alias GL_CLAMP_READ_COLOR = ClampColorTargetARB(0x891C)
    alias GL_CLAMP_READ_COLOR_ARB = ClampColorTargetARB(0x891C)


@fieldwise_init
@register_passable("trivial")
struct ClearBufferMask:
    var value: GLbitfield

    alias GL_DEPTH_BUFFER_BIT = ClearBufferMask(0x00000100)
    alias GL_ACCUM_BUFFER_BIT = ClearBufferMask(0x00000200)
    alias GL_STENCIL_BUFFER_BIT = ClearBufferMask(0x00000400)
    alias GL_COLOR_BUFFER_BIT = ClearBufferMask(0x00004000)
    alias GL_COVERAGE_BUFFER_BIT_NV = ClearBufferMask(0x00008000)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlDepth:
    var value: GLenum

    alias GL_NEGATIVE_ONE_TO_ONE = ClipControlDepth(0x935E)
    alias GL_ZERO_TO_ONE = ClipControlDepth(0x935F)


@fieldwise_init
@register_passable("trivial")
struct ClipControlOrigin:
    var value: GLenum

    alias GL_LOWER_LEFT = ClipControlOrigin(0x8CA1)
    alias GL_UPPER_LEFT = ClipControlOrigin(0x8CA2)


@fieldwise_init
@register_passable("trivial")
struct ColorBuffer:
    var value: GLenum

    alias GL_NONE = ColorBuffer(0)
    alias GL_FRONT_LEFT = ColorBuffer(0x0400)
    alias GL_FRONT_RIGHT = ColorBuffer(0x0401)
    alias GL_BACK_LEFT = ColorBuffer(0x0402)
    alias GL_BACK_RIGHT = ColorBuffer(0x0403)
    alias GL_FRONT = ColorBuffer(0x0404)
    alias GL_BACK = ColorBuffer(0x0405)
    alias GL_LEFT = ColorBuffer(0x0406)
    alias GL_RIGHT = ColorBuffer(0x0407)
    alias GL_FRONT_AND_BACK = ColorBuffer(0x0408)
    alias GL_COLOR_ATTACHMENT0 = ColorBuffer(0x8CE0)
    alias GL_COLOR_ATTACHMENT1 = ColorBuffer(0x8CE1)
    alias GL_COLOR_ATTACHMENT2 = ColorBuffer(0x8CE2)
    alias GL_COLOR_ATTACHMENT3 = ColorBuffer(0x8CE3)
    alias GL_COLOR_ATTACHMENT4 = ColorBuffer(0x8CE4)
    alias GL_COLOR_ATTACHMENT5 = ColorBuffer(0x8CE5)
    alias GL_COLOR_ATTACHMENT6 = ColorBuffer(0x8CE6)
    alias GL_COLOR_ATTACHMENT7 = ColorBuffer(0x8CE7)
    alias GL_COLOR_ATTACHMENT8 = ColorBuffer(0x8CE8)
    alias GL_COLOR_ATTACHMENT9 = ColorBuffer(0x8CE9)
    alias GL_COLOR_ATTACHMENT10 = ColorBuffer(0x8CEA)
    alias GL_COLOR_ATTACHMENT11 = ColorBuffer(0x8CEB)
    alias GL_COLOR_ATTACHMENT12 = ColorBuffer(0x8CEC)
    alias GL_COLOR_ATTACHMENT13 = ColorBuffer(0x8CED)
    alias GL_COLOR_ATTACHMENT14 = ColorBuffer(0x8CEE)
    alias GL_COLOR_ATTACHMENT15 = ColorBuffer(0x8CEF)
    alias GL_COLOR_ATTACHMENT16 = ColorBuffer(0x8CF0)
    alias GL_COLOR_ATTACHMENT17 = ColorBuffer(0x8CF1)
    alias GL_COLOR_ATTACHMENT18 = ColorBuffer(0x8CF2)
    alias GL_COLOR_ATTACHMENT19 = ColorBuffer(0x8CF3)
    alias GL_COLOR_ATTACHMENT20 = ColorBuffer(0x8CF4)
    alias GL_COLOR_ATTACHMENT21 = ColorBuffer(0x8CF5)
    alias GL_COLOR_ATTACHMENT22 = ColorBuffer(0x8CF6)
    alias GL_COLOR_ATTACHMENT23 = ColorBuffer(0x8CF7)
    alias GL_COLOR_ATTACHMENT24 = ColorBuffer(0x8CF8)
    alias GL_COLOR_ATTACHMENT25 = ColorBuffer(0x8CF9)
    alias GL_COLOR_ATTACHMENT26 = ColorBuffer(0x8CFA)
    alias GL_COLOR_ATTACHMENT27 = ColorBuffer(0x8CFB)
    alias GL_COLOR_ATTACHMENT28 = ColorBuffer(0x8CFC)
    alias GL_COLOR_ATTACHMENT29 = ColorBuffer(0x8CFD)
    alias GL_COLOR_ATTACHMENT30 = ColorBuffer(0x8CFE)
    alias GL_COLOR_ATTACHMENT31 = ColorBuffer(0x8CFF)


@fieldwise_init
@register_passable("trivial")
struct ColorPointerType:
    var value: GLenum

    alias GL_BYTE = ColorPointerType(0x1400)
    alias GL_UNSIGNED_BYTE = ColorPointerType(0x1401)
    alias GL_SHORT = ColorPointerType(0x1402)
    alias GL_UNSIGNED_SHORT = ColorPointerType(0x1403)
    alias GL_INT = ColorPointerType(0x1404)
    alias GL_UNSIGNED_INT = ColorPointerType(0x1405)
    alias GL_FLOAT = ColorPointerType(0x1406)
    alias GL_DOUBLE = ColorPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct ColorTableTarget:
    var value: GLenum

    alias GL_COLOR_TABLE = ColorTableTarget(0x80D0)
    alias GL_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D1)
    alias GL_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D2)
    alias GL_PROXY_COLOR_TABLE = ColorTableTarget(0x80D3)
    alias GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D4)
    alias GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D5)


@fieldwise_init
@register_passable("trivial")
struct ConditionalRenderMode:
    var value: GLenum

    alias GL_QUERY_WAIT = ConditionalRenderMode(0x8E13)
    alias GL_QUERY_NO_WAIT = ConditionalRenderMode(0x8E14)
    alias GL_QUERY_BY_REGION_WAIT = ConditionalRenderMode(0x8E15)
    alias GL_QUERY_BY_REGION_NO_WAIT = ConditionalRenderMode(0x8E16)
    alias GL_QUERY_WAIT_INVERTED = ConditionalRenderMode(0x8E17)
    alias GL_QUERY_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E18)
    alias GL_QUERY_BY_REGION_WAIT_INVERTED = ConditionalRenderMode(0x8E19)
    alias GL_QUERY_BY_REGION_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E1A)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTarget:
    var value: GLenum

    alias GL_CONVOLUTION_1D = ConvolutionTarget(0x8010)
    alias GL_CONVOLUTION_2D = ConvolutionTarget(0x8011)


@fieldwise_init
@register_passable("trivial")
struct CopyBufferSubDataTarget:
    var value: GLenum

    alias GL_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8892)
    alias GL_ELEMENT_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8893)
    alias GL_PIXEL_PACK_BUFFER = CopyBufferSubDataTarget(0x88EB)
    alias GL_PIXEL_UNPACK_BUFFER = CopyBufferSubDataTarget(0x88EC)
    alias GL_UNIFORM_BUFFER = CopyBufferSubDataTarget(0x8A11)
    alias GL_TEXTURE_BUFFER = CopyBufferSubDataTarget(0x8C2A)
    alias GL_TRANSFORM_FEEDBACK_BUFFER = CopyBufferSubDataTarget(0x8C8E)
    alias GL_COPY_READ_BUFFER = CopyBufferSubDataTarget(0x8F36)
    alias GL_COPY_WRITE_BUFFER = CopyBufferSubDataTarget(0x8F37)
    alias GL_DRAW_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x8F3F)
    alias GL_SHADER_STORAGE_BUFFER = CopyBufferSubDataTarget(0x90D2)
    alias GL_DISPATCH_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x90EE)
    alias GL_QUERY_BUFFER = CopyBufferSubDataTarget(0x9192)
    alias GL_ATOMIC_COUNTER_BUFFER = CopyBufferSubDataTarget(0x92C0)


@fieldwise_init
@register_passable("trivial")
struct CopyImageSubDataTarget:
    var value: GLenum

    alias GL_TEXTURE_1D = CopyImageSubDataTarget(0x0DE0)
    alias GL_TEXTURE_2D = CopyImageSubDataTarget(0x0DE1)
    alias GL_TEXTURE_3D = CopyImageSubDataTarget(0x806F)
    alias GL_TEXTURE_RECTANGLE = CopyImageSubDataTarget(0x84F5)
    alias GL_TEXTURE_CUBE_MAP = CopyImageSubDataTarget(0x8513)
    alias GL_TEXTURE_1D_ARRAY = CopyImageSubDataTarget(0x8C18)
    alias GL_TEXTURE_2D_ARRAY = CopyImageSubDataTarget(0x8C1A)
    alias GL_RENDERBUFFER = CopyImageSubDataTarget(0x8D41)
    alias GL_TEXTURE_CUBE_MAP_ARRAY = CopyImageSubDataTarget(0x9009)
    alias GL_TEXTURE_2D_MULTISAMPLE = CopyImageSubDataTarget(0x9100)
    alias GL_TEXTURE_2D_MULTISAMPLE_ARRAY = CopyImageSubDataTarget(0x9102)


@fieldwise_init
@register_passable("trivial")
struct DebugSeverity:
    var value: GLenum

    alias GL_DONT_CARE = DebugSeverity(0x1100)
    alias GL_DEBUG_SEVERITY_NOTIFICATION = DebugSeverity(0x826B)
    alias GL_DEBUG_SEVERITY_HIGH = DebugSeverity(0x9146)
    alias GL_DEBUG_SEVERITY_MEDIUM = DebugSeverity(0x9147)
    alias GL_DEBUG_SEVERITY_LOW = DebugSeverity(0x9148)


@fieldwise_init
@register_passable("trivial")
struct DebugSource:
    var value: GLenum

    alias GL_DONT_CARE = DebugSource(0x1100)
    alias GL_DEBUG_SOURCE_API = DebugSource(0x8246)
    alias GL_DEBUG_SOURCE_WINDOW_SYSTEM = DebugSource(0x8247)
    alias GL_DEBUG_SOURCE_SHADER_COMPILER = DebugSource(0x8248)
    alias GL_DEBUG_SOURCE_THIRD_PARTY = DebugSource(0x8249)
    alias GL_DEBUG_SOURCE_APPLICATION = DebugSource(0x824A)
    alias GL_DEBUG_SOURCE_OTHER = DebugSource(0x824B)


@fieldwise_init
@register_passable("trivial")
struct DebugType:
    var value: GLenum

    alias GL_DONT_CARE = DebugType(0x1100)
    alias GL_DEBUG_TYPE_ERROR = DebugType(0x824C)
    alias GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = DebugType(0x824D)
    alias GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = DebugType(0x824E)
    alias GL_DEBUG_TYPE_PORTABILITY = DebugType(0x824F)
    alias GL_DEBUG_TYPE_PERFORMANCE = DebugType(0x8250)
    alias GL_DEBUG_TYPE_OTHER = DebugType(0x8251)
    alias GL_DEBUG_TYPE_MARKER = DebugType(0x8268)
    alias GL_DEBUG_TYPE_PUSH_GROUP = DebugType(0x8269)
    alias GL_DEBUG_TYPE_POP_GROUP = DebugType(0x826A)


@fieldwise_init
@register_passable("trivial")
struct DepthFunction:
    var value: GLenum

    alias GL_NEVER = DepthFunction(0x0200)
    alias GL_LESS = DepthFunction(0x0201)
    alias GL_EQUAL = DepthFunction(0x0202)
    alias GL_LEQUAL = DepthFunction(0x0203)
    alias GL_GREATER = DepthFunction(0x0204)
    alias GL_NOTEQUAL = DepthFunction(0x0205)
    alias GL_GEQUAL = DepthFunction(0x0206)
    alias GL_ALWAYS = DepthFunction(0x0207)


@fieldwise_init
@register_passable("trivial")
struct DrawBufferMode:
    var value: GLenum

    alias GL_NONE = DrawBufferMode(0)
    alias GL_NONE_OES = DrawBufferMode(0)
    alias GL_FRONT_LEFT = DrawBufferMode(0x0400)
    alias GL_FRONT_RIGHT = DrawBufferMode(0x0401)
    alias GL_BACK_LEFT = DrawBufferMode(0x0402)
    alias GL_BACK_RIGHT = DrawBufferMode(0x0403)
    alias GL_FRONT = DrawBufferMode(0x0404)
    alias GL_BACK = DrawBufferMode(0x0405)
    alias GL_LEFT = DrawBufferMode(0x0406)
    alias GL_RIGHT = DrawBufferMode(0x0407)
    alias GL_FRONT_AND_BACK = DrawBufferMode(0x0408)
    alias GL_AUX0 = DrawBufferMode(0x0409)
    alias GL_AUX1 = DrawBufferMode(0x040A)
    alias GL_AUX2 = DrawBufferMode(0x040B)
    alias GL_AUX3 = DrawBufferMode(0x040C)
    alias GL_COLOR_ATTACHMENT0 = DrawBufferMode(0x8CE0)
    alias GL_COLOR_ATTACHMENT0_NV = DrawBufferMode(0x8CE0)
    alias GL_COLOR_ATTACHMENT1 = DrawBufferMode(0x8CE1)
    alias GL_COLOR_ATTACHMENT1_NV = DrawBufferMode(0x8CE1)
    alias GL_COLOR_ATTACHMENT2 = DrawBufferMode(0x8CE2)
    alias GL_COLOR_ATTACHMENT2_NV = DrawBufferMode(0x8CE2)
    alias GL_COLOR_ATTACHMENT3 = DrawBufferMode(0x8CE3)
    alias GL_COLOR_ATTACHMENT3_NV = DrawBufferMode(0x8CE3)
    alias GL_COLOR_ATTACHMENT4 = DrawBufferMode(0x8CE4)
    alias GL_COLOR_ATTACHMENT4_NV = DrawBufferMode(0x8CE4)
    alias GL_COLOR_ATTACHMENT5 = DrawBufferMode(0x8CE5)
    alias GL_COLOR_ATTACHMENT5_NV = DrawBufferMode(0x8CE5)
    alias GL_COLOR_ATTACHMENT6 = DrawBufferMode(0x8CE6)
    alias GL_COLOR_ATTACHMENT6_NV = DrawBufferMode(0x8CE6)
    alias GL_COLOR_ATTACHMENT7 = DrawBufferMode(0x8CE7)
    alias GL_COLOR_ATTACHMENT7_NV = DrawBufferMode(0x8CE7)
    alias GL_COLOR_ATTACHMENT8 = DrawBufferMode(0x8CE8)
    alias GL_COLOR_ATTACHMENT8_NV = DrawBufferMode(0x8CE8)
    alias GL_COLOR_ATTACHMENT9 = DrawBufferMode(0x8CE9)
    alias GL_COLOR_ATTACHMENT9_NV = DrawBufferMode(0x8CE9)
    alias GL_COLOR_ATTACHMENT10 = DrawBufferMode(0x8CEA)
    alias GL_COLOR_ATTACHMENT10_NV = DrawBufferMode(0x8CEA)
    alias GL_COLOR_ATTACHMENT11 = DrawBufferMode(0x8CEB)
    alias GL_COLOR_ATTACHMENT11_NV = DrawBufferMode(0x8CEB)
    alias GL_COLOR_ATTACHMENT12 = DrawBufferMode(0x8CEC)
    alias GL_COLOR_ATTACHMENT12_NV = DrawBufferMode(0x8CEC)
    alias GL_COLOR_ATTACHMENT13 = DrawBufferMode(0x8CED)
    alias GL_COLOR_ATTACHMENT13_NV = DrawBufferMode(0x8CED)
    alias GL_COLOR_ATTACHMENT14 = DrawBufferMode(0x8CEE)
    alias GL_COLOR_ATTACHMENT14_NV = DrawBufferMode(0x8CEE)
    alias GL_COLOR_ATTACHMENT15 = DrawBufferMode(0x8CEF)
    alias GL_COLOR_ATTACHMENT15_NV = DrawBufferMode(0x8CEF)
    alias GL_COLOR_ATTACHMENT16 = DrawBufferMode(0x8CF0)
    alias GL_COLOR_ATTACHMENT17 = DrawBufferMode(0x8CF1)
    alias GL_COLOR_ATTACHMENT18 = DrawBufferMode(0x8CF2)
    alias GL_COLOR_ATTACHMENT19 = DrawBufferMode(0x8CF3)
    alias GL_COLOR_ATTACHMENT20 = DrawBufferMode(0x8CF4)
    alias GL_COLOR_ATTACHMENT21 = DrawBufferMode(0x8CF5)
    alias GL_COLOR_ATTACHMENT22 = DrawBufferMode(0x8CF6)
    alias GL_COLOR_ATTACHMENT23 = DrawBufferMode(0x8CF7)
    alias GL_COLOR_ATTACHMENT24 = DrawBufferMode(0x8CF8)
    alias GL_COLOR_ATTACHMENT25 = DrawBufferMode(0x8CF9)
    alias GL_COLOR_ATTACHMENT26 = DrawBufferMode(0x8CFA)
    alias GL_COLOR_ATTACHMENT27 = DrawBufferMode(0x8CFB)
    alias GL_COLOR_ATTACHMENT28 = DrawBufferMode(0x8CFC)
    alias GL_COLOR_ATTACHMENT29 = DrawBufferMode(0x8CFD)
    alias GL_COLOR_ATTACHMENT30 = DrawBufferMode(0x8CFE)
    alias GL_COLOR_ATTACHMENT31 = DrawBufferMode(0x8CFF)


@fieldwise_init
@register_passable("trivial")
struct DrawElementsType:
    var value: GLenum

    alias GL_UNSIGNED_BYTE = DrawElementsType(0x1401)
    alias GL_UNSIGNED_SHORT = DrawElementsType(0x1403)
    alias GL_UNSIGNED_INT = DrawElementsType(0x1405)


@fieldwise_init
@register_passable("trivial")
struct EnableCap:
    var value: GLenum

    alias GL_POINT_SMOOTH = EnableCap(0x0B10)
    alias GL_LINE_SMOOTH = EnableCap(0x0B20)
    alias GL_LINE_STIPPLE = EnableCap(0x0B24)
    alias GL_POLYGON_SMOOTH = EnableCap(0x0B41)
    alias GL_POLYGON_STIPPLE = EnableCap(0x0B42)
    alias GL_CULL_FACE = EnableCap(0x0B44)
    alias GL_LIGHTING = EnableCap(0x0B50)
    alias GL_COLOR_MATERIAL = EnableCap(0x0B57)
    alias GL_FOG = EnableCap(0x0B60)
    alias GL_DEPTH_TEST = EnableCap(0x0B71)
    alias GL_STENCIL_TEST = EnableCap(0x0B90)
    alias GL_NORMALIZE = EnableCap(0x0BA1)
    alias GL_ALPHA_TEST = EnableCap(0x0BC0)
    alias GL_DITHER = EnableCap(0x0BD0)
    alias GL_BLEND = EnableCap(0x0BE2)
    alias GL_INDEX_LOGIC_OP = EnableCap(0x0BF1)
    alias GL_COLOR_LOGIC_OP = EnableCap(0x0BF2)
    alias GL_SCISSOR_TEST = EnableCap(0x0C11)
    alias GL_TEXTURE_GEN_S = EnableCap(0x0C60)
    alias GL_TEXTURE_GEN_T = EnableCap(0x0C61)
    alias GL_TEXTURE_GEN_R = EnableCap(0x0C62)
    alias GL_TEXTURE_GEN_Q = EnableCap(0x0C63)
    alias GL_AUTO_NORMAL = EnableCap(0x0D80)
    alias GL_MAP1_COLOR_4 = EnableCap(0x0D90)
    alias GL_MAP1_INDEX = EnableCap(0x0D91)
    alias GL_MAP1_NORMAL = EnableCap(0x0D92)
    alias GL_MAP1_TEXTURE_COORD_1 = EnableCap(0x0D93)
    alias GL_MAP1_TEXTURE_COORD_2 = EnableCap(0x0D94)
    alias GL_MAP1_TEXTURE_COORD_3 = EnableCap(0x0D95)
    alias GL_MAP1_TEXTURE_COORD_4 = EnableCap(0x0D96)
    alias GL_MAP1_VERTEX_3 = EnableCap(0x0D97)
    alias GL_MAP1_VERTEX_4 = EnableCap(0x0D98)
    alias GL_MAP2_COLOR_4 = EnableCap(0x0DB0)
    alias GL_MAP2_INDEX = EnableCap(0x0DB1)
    alias GL_MAP2_NORMAL = EnableCap(0x0DB2)
    alias GL_MAP2_TEXTURE_COORD_1 = EnableCap(0x0DB3)
    alias GL_MAP2_TEXTURE_COORD_2 = EnableCap(0x0DB4)
    alias GL_MAP2_TEXTURE_COORD_3 = EnableCap(0x0DB5)
    alias GL_MAP2_TEXTURE_COORD_4 = EnableCap(0x0DB6)
    alias GL_MAP2_VERTEX_3 = EnableCap(0x0DB7)
    alias GL_MAP2_VERTEX_4 = EnableCap(0x0DB8)
    alias GL_TEXTURE_1D = EnableCap(0x0DE0)
    alias GL_TEXTURE_2D = EnableCap(0x0DE1)
    alias GL_POLYGON_OFFSET_POINT = EnableCap(0x2A01)
    alias GL_POLYGON_OFFSET_LINE = EnableCap(0x2A02)
    alias GL_CLIP_PLANE0 = EnableCap(0x3000)
    alias GL_CLIP_DISTANCE0 = EnableCap(0x3000)
    alias GL_CLIP_PLANE1 = EnableCap(0x3001)
    alias GL_CLIP_DISTANCE1 = EnableCap(0x3001)
    alias GL_CLIP_PLANE2 = EnableCap(0x3002)
    alias GL_CLIP_DISTANCE2 = EnableCap(0x3002)
    alias GL_CLIP_PLANE3 = EnableCap(0x3003)
    alias GL_CLIP_DISTANCE3 = EnableCap(0x3003)
    alias GL_CLIP_PLANE4 = EnableCap(0x3004)
    alias GL_CLIP_DISTANCE4 = EnableCap(0x3004)
    alias GL_CLIP_PLANE5 = EnableCap(0x3005)
    alias GL_CLIP_DISTANCE5 = EnableCap(0x3005)
    alias GL_CLIP_DISTANCE6 = EnableCap(0x3006)
    alias GL_CLIP_DISTANCE7 = EnableCap(0x3007)
    alias GL_LIGHT0 = EnableCap(0x4000)
    alias GL_LIGHT1 = EnableCap(0x4001)
    alias GL_LIGHT2 = EnableCap(0x4002)
    alias GL_LIGHT3 = EnableCap(0x4003)
    alias GL_LIGHT4 = EnableCap(0x4004)
    alias GL_LIGHT5 = EnableCap(0x4005)
    alias GL_LIGHT6 = EnableCap(0x4006)
    alias GL_LIGHT7 = EnableCap(0x4007)
    alias GL_CONVOLUTION_1D_EXT = EnableCap(0x8010)
    alias GL_CONVOLUTION_2D_EXT = EnableCap(0x8011)
    alias GL_SEPARABLE_2D_EXT = EnableCap(0x8012)
    alias GL_HISTOGRAM_EXT = EnableCap(0x8024)
    alias GL_MINMAX_EXT = EnableCap(0x802E)
    alias GL_POLYGON_OFFSET_FILL = EnableCap(0x8037)
    alias GL_RESCALE_NORMAL_EXT = EnableCap(0x803A)
    alias GL_TEXTURE_3D_EXT = EnableCap(0x806F)
    alias GL_VERTEX_ARRAY = EnableCap(0x8074)
    alias GL_NORMAL_ARRAY = EnableCap(0x8075)
    alias GL_COLOR_ARRAY = EnableCap(0x8076)
    alias GL_INDEX_ARRAY = EnableCap(0x8077)
    alias GL_TEXTURE_COORD_ARRAY = EnableCap(0x8078)
    alias GL_EDGE_FLAG_ARRAY = EnableCap(0x8079)
    alias GL_INTERLACE_SGIX = EnableCap(0x8094)
    alias GL_MULTISAMPLE = EnableCap(0x809D)
    alias GL_MULTISAMPLE_SGIS = EnableCap(0x809D)
    alias GL_SAMPLE_ALPHA_TO_COVERAGE = EnableCap(0x809E)
    alias GL_SAMPLE_ALPHA_TO_MASK_SGIS = EnableCap(0x809E)
    alias GL_SAMPLE_ALPHA_TO_ONE = EnableCap(0x809F)
    alias GL_SAMPLE_ALPHA_TO_ONE_SGIS = EnableCap(0x809F)
    alias GL_SAMPLE_COVERAGE = EnableCap(0x80A0)
    alias GL_SAMPLE_MASK_SGIS = EnableCap(0x80A0)
    alias GL_TEXTURE_COLOR_TABLE_SGI = EnableCap(0x80BC)
    alias GL_COLOR_TABLE = EnableCap(0x80D0)
    alias GL_COLOR_TABLE_SGI = EnableCap(0x80D0)
    alias GL_POST_CONVOLUTION_COLOR_TABLE = EnableCap(0x80D1)
    alias GL_POST_CONVOLUTION_COLOR_TABLE_SGI = EnableCap(0x80D1)
    alias GL_POST_COLOR_MATRIX_COLOR_TABLE = EnableCap(0x80D2)
    alias GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = EnableCap(0x80D2)
    alias GL_TEXTURE_4D_SGIS = EnableCap(0x8134)
    alias GL_PIXEL_TEX_GEN_SGIX = EnableCap(0x8139)
    alias GL_SPRITE_SGIX = EnableCap(0x8148)
    alias GL_REFERENCE_PLANE_SGIX = EnableCap(0x817D)
    alias GL_IR_INSTRUMENT1_SGIX = EnableCap(0x817F)
    alias GL_CALLIGRAPHIC_FRAGMENT_SGIX = EnableCap(0x8183)
    alias GL_FRAMEZOOM_SGIX = EnableCap(0x818B)
    alias GL_FOG_OFFSET_SGIX = EnableCap(0x8198)
    alias GL_SHARED_TEXTURE_PALETTE_EXT = EnableCap(0x81FB)
    alias GL_DEBUG_OUTPUT_SYNCHRONOUS = EnableCap(0x8242)
    alias GL_ASYNC_HISTOGRAM_SGIX = EnableCap(0x832C)
    alias GL_PIXEL_TEXTURE_SGIS = EnableCap(0x8353)
    alias GL_ASYNC_TEX_IMAGE_SGIX = EnableCap(0x835C)
    alias GL_ASYNC_DRAW_PIXELS_SGIX = EnableCap(0x835D)
    alias GL_ASYNC_READ_PIXELS_SGIX = EnableCap(0x835E)
    alias GL_FRAGMENT_LIGHTING_SGIX = EnableCap(0x8400)
    alias GL_FRAGMENT_COLOR_MATERIAL_SGIX = EnableCap(0x8401)
    alias GL_FRAGMENT_LIGHT0_SGIX = EnableCap(0x840C)
    alias GL_FRAGMENT_LIGHT1_SGIX = EnableCap(0x840D)
    alias GL_FRAGMENT_LIGHT2_SGIX = EnableCap(0x840E)
    alias GL_FRAGMENT_LIGHT3_SGIX = EnableCap(0x840F)
    alias GL_FRAGMENT_LIGHT4_SGIX = EnableCap(0x8410)
    alias GL_FRAGMENT_LIGHT5_SGIX = EnableCap(0x8411)
    alias GL_FRAGMENT_LIGHT6_SGIX = EnableCap(0x8412)
    alias GL_FRAGMENT_LIGHT7_SGIX = EnableCap(0x8413)
    alias GL_TEXTURE_RECTANGLE = EnableCap(0x84F5)
    alias GL_TEXTURE_RECTANGLE_ARB = EnableCap(0x84F5)
    alias GL_TEXTURE_RECTANGLE_NV = EnableCap(0x84F5)
    alias GL_TEXTURE_CUBE_MAP = EnableCap(0x8513)
    alias GL_TEXTURE_CUBE_MAP_ARB = EnableCap(0x8513)
    alias GL_TEXTURE_CUBE_MAP_EXT = EnableCap(0x8513)
    alias GL_TEXTURE_CUBE_MAP_OES = EnableCap(0x8513)
    alias GL_PROGRAM_POINT_SIZE = EnableCap(0x8642)
    alias GL_DEPTH_CLAMP = EnableCap(0x864F)
    alias GL_TEXTURE_CUBE_MAP_SEAMLESS = EnableCap(0x884F)
    alias GL_SAMPLE_SHADING = EnableCap(0x8C36)
    alias GL_RASTERIZER_DISCARD = EnableCap(0x8C89)
    alias GL_TEXTURE_GEN_STR_OES = EnableCap(0x8D60)
    alias GL_PRIMITIVE_RESTART_FIXED_INDEX = EnableCap(0x8D69)
    alias GL_FRAMEBUFFER_SRGB = EnableCap(0x8DB9)
    alias GL_SAMPLE_MASK = EnableCap(0x8E51)
    alias GL_FETCH_PER_SAMPLE_ARM = EnableCap(0x8F65)
    alias GL_PRIMITIVE_RESTART = EnableCap(0x8F9D)
    alias GL_DEBUG_OUTPUT = EnableCap(0x92E0)
    alias GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = EnableCap(0x95B1)
    alias GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = EnableCap(0x96A2)
    alias GL_SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM = EnableCap(0x96A5)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachment:
    var value: GLenum

    alias GL_DEPTH_STENCIL_ATTACHMENT = FramebufferAttachment(0x821A)
    alias GL_COLOR_ATTACHMENT0 = FramebufferAttachment(0x8CE0)
    alias GL_COLOR_ATTACHMENT1 = FramebufferAttachment(0x8CE1)
    alias GL_COLOR_ATTACHMENT2 = FramebufferAttachment(0x8CE2)
    alias GL_COLOR_ATTACHMENT3 = FramebufferAttachment(0x8CE3)
    alias GL_COLOR_ATTACHMENT4 = FramebufferAttachment(0x8CE4)
    alias GL_COLOR_ATTACHMENT5 = FramebufferAttachment(0x8CE5)
    alias GL_COLOR_ATTACHMENT6 = FramebufferAttachment(0x8CE6)
    alias GL_COLOR_ATTACHMENT7 = FramebufferAttachment(0x8CE7)
    alias GL_COLOR_ATTACHMENT8 = FramebufferAttachment(0x8CE8)
    alias GL_COLOR_ATTACHMENT9 = FramebufferAttachment(0x8CE9)
    alias GL_COLOR_ATTACHMENT10 = FramebufferAttachment(0x8CEA)
    alias GL_COLOR_ATTACHMENT11 = FramebufferAttachment(0x8CEB)
    alias GL_COLOR_ATTACHMENT12 = FramebufferAttachment(0x8CEC)
    alias GL_COLOR_ATTACHMENT13 = FramebufferAttachment(0x8CED)
    alias GL_COLOR_ATTACHMENT14 = FramebufferAttachment(0x8CEE)
    alias GL_COLOR_ATTACHMENT15 = FramebufferAttachment(0x8CEF)
    alias GL_COLOR_ATTACHMENT16 = FramebufferAttachment(0x8CF0)
    alias GL_COLOR_ATTACHMENT17 = FramebufferAttachment(0x8CF1)
    alias GL_COLOR_ATTACHMENT18 = FramebufferAttachment(0x8CF2)
    alias GL_COLOR_ATTACHMENT19 = FramebufferAttachment(0x8CF3)
    alias GL_COLOR_ATTACHMENT20 = FramebufferAttachment(0x8CF4)
    alias GL_COLOR_ATTACHMENT21 = FramebufferAttachment(0x8CF5)
    alias GL_COLOR_ATTACHMENT22 = FramebufferAttachment(0x8CF6)
    alias GL_COLOR_ATTACHMENT23 = FramebufferAttachment(0x8CF7)
    alias GL_COLOR_ATTACHMENT24 = FramebufferAttachment(0x8CF8)
    alias GL_COLOR_ATTACHMENT25 = FramebufferAttachment(0x8CF9)
    alias GL_COLOR_ATTACHMENT26 = FramebufferAttachment(0x8CFA)
    alias GL_COLOR_ATTACHMENT27 = FramebufferAttachment(0x8CFB)
    alias GL_COLOR_ATTACHMENT28 = FramebufferAttachment(0x8CFC)
    alias GL_COLOR_ATTACHMENT29 = FramebufferAttachment(0x8CFD)
    alias GL_COLOR_ATTACHMENT30 = FramebufferAttachment(0x8CFE)
    alias GL_COLOR_ATTACHMENT31 = FramebufferAttachment(0x8CFF)
    alias GL_DEPTH_ATTACHMENT = FramebufferAttachment(0x8D00)
    alias GL_STENCIL_ATTACHMENT = FramebufferAttachment(0x8D20)
    alias GL_SHADING_RATE_ATTACHMENT_EXT = FramebufferAttachment(0x96D1)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachmentParameterName:
    var value: GLenum

    alias GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = FramebufferAttachmentParameterName(0x8210)
    alias GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = FramebufferAttachmentParameterName(0x8210)
    alias GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = FramebufferAttachmentParameterName(0x8211)
    alias GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = FramebufferAttachmentParameterName(0x8211)
    alias GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = FramebufferAttachmentParameterName(0x8212)
    alias GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = FramebufferAttachmentParameterName(0x8213)
    alias GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = FramebufferAttachmentParameterName(0x8214)
    alias GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = FramebufferAttachmentParameterName(0x8215)
    alias GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = FramebufferAttachmentParameterName(0x8216)
    alias GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = FramebufferAttachmentParameterName(0x8217)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = FramebufferAttachmentParameterName(0x8CD0)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = FramebufferAttachmentParameterName(0x8CD0)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES = FramebufferAttachmentParameterName(0x8CD0)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = FramebufferAttachmentParameterName(0x8CD1)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = FramebufferAttachmentParameterName(0x8CD1)
    alias GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES = FramebufferAttachmentParameterName(0x8CD1)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = FramebufferAttachmentParameterName(0x8CD2)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = FramebufferAttachmentParameterName(0x8CD2)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES = FramebufferAttachmentParameterName(0x8CD2)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = FramebufferAttachmentParameterName(0x8CD3)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = FramebufferAttachmentParameterName(0x8CD3)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES = FramebufferAttachmentParameterName(0x8CD3)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = FramebufferAttachmentParameterName(0x8CD4)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = FramebufferAttachmentParameterName(0x8CD4)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = FramebufferAttachmentParameterName(0x8CD4)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = FramebufferAttachmentParameterName(0x8CD4)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = FramebufferAttachmentParameterName(0x8D6C)
    alias GL_FRAMEBUFFER_ATTACHMENT_LAYERED = FramebufferAttachmentParameterName(0x8DA7)
    alias GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = FramebufferAttachmentParameterName(0x8DA7)
    alias GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = FramebufferAttachmentParameterName(0x8DA7)
    alias GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES = FramebufferAttachmentParameterName(0x8DA7)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG = FramebufferAttachmentParameterName(0x913F)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = FramebufferAttachmentParameterName(0x9630)
    alias GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = FramebufferAttachmentParameterName(0x9632)


@fieldwise_init
@register_passable("trivial")
struct FramebufferParameterName:
    var value: GLenum

    alias GL_FRAMEBUFFER_DEFAULT_WIDTH = FramebufferParameterName(0x9310)
    alias GL_FRAMEBUFFER_DEFAULT_HEIGHT = FramebufferParameterName(0x9311)
    alias GL_FRAMEBUFFER_DEFAULT_LAYERS = FramebufferParameterName(0x9312)
    alias GL_FRAMEBUFFER_DEFAULT_SAMPLES = FramebufferParameterName(0x9313)
    alias GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FramebufferParameterName(0x9314)


@fieldwise_init
@register_passable("trivial")
struct FramebufferTarget:
    var value: GLenum

    alias GL_READ_FRAMEBUFFER = FramebufferTarget(0x8CA8)
    alias GL_DRAW_FRAMEBUFFER = FramebufferTarget(0x8CA9)
    alias GL_FRAMEBUFFER = FramebufferTarget(0x8D40)
    alias GL_FRAMEBUFFER_OES = FramebufferTarget(0x8D40)


@fieldwise_init
@register_passable("trivial")
struct FrontFaceDirection:
    var value: GLenum

    alias GL_CW = FrontFaceDirection(0x0900)
    alias GL_CCW = FrontFaceDirection(0x0901)


@fieldwise_init
@register_passable("trivial")
struct GetFramebufferParameter:
    var value: GLenum

    alias GL_DOUBLEBUFFER = GetFramebufferParameter(0x0C32)
    alias GL_STEREO = GetFramebufferParameter(0x0C33)
    alias GL_SAMPLE_BUFFERS = GetFramebufferParameter(0x80A8)
    alias GL_SAMPLES = GetFramebufferParameter(0x80A9)
    alias GL_IMPLEMENTATION_COLOR_READ_TYPE = GetFramebufferParameter(0x8B9A)
    alias GL_IMPLEMENTATION_COLOR_READ_FORMAT = GetFramebufferParameter(0x8B9B)
    alias GL_FRAMEBUFFER_DEFAULT_WIDTH = GetFramebufferParameter(0x9310)
    alias GL_FRAMEBUFFER_DEFAULT_HEIGHT = GetFramebufferParameter(0x9311)
    alias GL_FRAMEBUFFER_DEFAULT_LAYERS = GetFramebufferParameter(0x9312)
    alias GL_FRAMEBUFFER_DEFAULT_SAMPLES = GetFramebufferParameter(0x9313)
    alias GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = GetFramebufferParameter(0x9314)


@fieldwise_init
@register_passable("trivial")
struct GetMultisamplePNameNV:
    var value: GLenum

    alias GL_SAMPLE_POSITION = GetMultisamplePNameNV(0x8E50)
    alias GL_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x8E50)
    alias GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x9341)


@fieldwise_init
@register_passable("trivial")
struct GetPName:
    var value: GLenum

    alias GL_CURRENT_COLOR = GetPName(0x0B00)
    alias GL_CURRENT_INDEX = GetPName(0x0B01)
    alias GL_CURRENT_NORMAL = GetPName(0x0B02)
    alias GL_CURRENT_TEXTURE_COORDS = GetPName(0x0B03)
    alias GL_CURRENT_RASTER_COLOR = GetPName(0x0B04)
    alias GL_CURRENT_RASTER_INDEX = GetPName(0x0B05)
    alias GL_CURRENT_RASTER_TEXTURE_COORDS = GetPName(0x0B06)
    alias GL_CURRENT_RASTER_POSITION = GetPName(0x0B07)
    alias GL_CURRENT_RASTER_POSITION_VALID = GetPName(0x0B08)
    alias GL_CURRENT_RASTER_DISTANCE = GetPName(0x0B09)
    alias GL_POINT_SMOOTH = GetPName(0x0B10)
    alias GL_POINT_SIZE = GetPName(0x0B11)
    alias GL_POINT_SIZE_RANGE = GetPName(0x0B12)
    alias GL_SMOOTH_POINT_SIZE_RANGE = GetPName(0x0B12)
    alias GL_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    alias GL_SMOOTH_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    alias GL_LINE_SMOOTH = GetPName(0x0B20)
    alias GL_LINE_WIDTH = GetPName(0x0B21)
    alias GL_LINE_WIDTH_RANGE = GetPName(0x0B22)
    alias GL_SMOOTH_LINE_WIDTH_RANGE = GetPName(0x0B22)
    alias GL_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    alias GL_SMOOTH_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    alias GL_LINE_STIPPLE = GetPName(0x0B24)
    alias GL_LINE_STIPPLE_PATTERN = GetPName(0x0B25)
    alias GL_LINE_STIPPLE_REPEAT = GetPName(0x0B26)
    alias GL_LIST_MODE = GetPName(0x0B30)
    alias GL_MAX_LIST_NESTING = GetPName(0x0B31)
    alias GL_LIST_BASE = GetPName(0x0B32)
    alias GL_LIST_INDEX = GetPName(0x0B33)
    alias GL_POLYGON_MODE = GetPName(0x0B40)
    alias GL_POLYGON_SMOOTH = GetPName(0x0B41)
    alias GL_POLYGON_STIPPLE = GetPName(0x0B42)
    alias GL_EDGE_FLAG = GetPName(0x0B43)
    alias GL_CULL_FACE = GetPName(0x0B44)
    alias GL_CULL_FACE_MODE = GetPName(0x0B45)
    alias GL_FRONT_FACE = GetPName(0x0B46)
    alias GL_LIGHTING = GetPName(0x0B50)
    alias GL_LIGHT_MODEL_LOCAL_VIEWER = GetPName(0x0B51)
    alias GL_LIGHT_MODEL_TWO_SIDE = GetPName(0x0B52)
    alias GL_LIGHT_MODEL_AMBIENT = GetPName(0x0B53)
    alias GL_SHADE_MODEL = GetPName(0x0B54)
    alias GL_COLOR_MATERIAL_FACE = GetPName(0x0B55)
    alias GL_COLOR_MATERIAL_PARAMETER = GetPName(0x0B56)
    alias GL_COLOR_MATERIAL = GetPName(0x0B57)
    alias GL_FOG = GetPName(0x0B60)
    alias GL_FOG_INDEX = GetPName(0x0B61)
    alias GL_FOG_DENSITY = GetPName(0x0B62)
    alias GL_FOG_START = GetPName(0x0B63)
    alias GL_FOG_END = GetPName(0x0B64)
    alias GL_FOG_MODE = GetPName(0x0B65)
    alias GL_FOG_COLOR = GetPName(0x0B66)
    alias GL_DEPTH_RANGE = GetPName(0x0B70)
    alias GL_DEPTH_TEST = GetPName(0x0B71)
    alias GL_DEPTH_WRITEMASK = GetPName(0x0B72)
    alias GL_DEPTH_CLEAR_VALUE = GetPName(0x0B73)
    alias GL_DEPTH_FUNC = GetPName(0x0B74)
    alias GL_ACCUM_CLEAR_VALUE = GetPName(0x0B80)
    alias GL_STENCIL_TEST = GetPName(0x0B90)
    alias GL_STENCIL_CLEAR_VALUE = GetPName(0x0B91)
    alias GL_STENCIL_FUNC = GetPName(0x0B92)
    alias GL_STENCIL_VALUE_MASK = GetPName(0x0B93)
    alias GL_STENCIL_FAIL = GetPName(0x0B94)
    alias GL_STENCIL_PASS_DEPTH_FAIL = GetPName(0x0B95)
    alias GL_STENCIL_PASS_DEPTH_PASS = GetPName(0x0B96)
    alias GL_STENCIL_REF = GetPName(0x0B97)
    alias GL_STENCIL_WRITEMASK = GetPName(0x0B98)
    alias GL_MATRIX_MODE = GetPName(0x0BA0)
    alias GL_NORMALIZE = GetPName(0x0BA1)
    alias GL_VIEWPORT = GetPName(0x0BA2)
    alias GL_MODELVIEW_STACK_DEPTH = GetPName(0x0BA3)
    alias GL_MODELVIEW0_STACK_DEPTH_EXT = GetPName(0x0BA3)
    alias GL_PROJECTION_STACK_DEPTH = GetPName(0x0BA4)
    alias GL_TEXTURE_STACK_DEPTH = GetPName(0x0BA5)
    alias GL_MODELVIEW_MATRIX = GetPName(0x0BA6)
    alias GL_MODELVIEW0_MATRIX_EXT = GetPName(0x0BA6)
    alias GL_PROJECTION_MATRIX = GetPName(0x0BA7)
    alias GL_TEXTURE_MATRIX = GetPName(0x0BA8)
    alias GL_ATTRIB_STACK_DEPTH = GetPName(0x0BB0)
    alias GL_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0BB1)
    alias GL_ALPHA_TEST = GetPName(0x0BC0)
    alias GL_ALPHA_TEST_QCOM = GetPName(0x0BC0)
    alias GL_ALPHA_TEST_FUNC = GetPName(0x0BC1)
    alias GL_ALPHA_TEST_FUNC_QCOM = GetPName(0x0BC1)
    alias GL_ALPHA_TEST_REF = GetPName(0x0BC2)
    alias GL_ALPHA_TEST_REF_QCOM = GetPName(0x0BC2)
    alias GL_DITHER = GetPName(0x0BD0)
    alias GL_BLEND_DST = GetPName(0x0BE0)
    alias GL_BLEND_SRC = GetPName(0x0BE1)
    alias GL_BLEND = GetPName(0x0BE2)
    alias GL_LOGIC_OP_MODE = GetPName(0x0BF0)
    alias GL_INDEX_LOGIC_OP = GetPName(0x0BF1)
    alias GL_LOGIC_OP = GetPName(0x0BF1)
    alias GL_COLOR_LOGIC_OP = GetPName(0x0BF2)
    alias GL_AUX_BUFFERS = GetPName(0x0C00)
    alias GL_DRAW_BUFFER = GetPName(0x0C01)
    alias GL_DRAW_BUFFER_EXT = GetPName(0x0C01)
    alias GL_READ_BUFFER = GetPName(0x0C02)
    alias GL_READ_BUFFER_EXT = GetPName(0x0C02)
    alias GL_READ_BUFFER_NV = GetPName(0x0C02)
    alias GL_SCISSOR_BOX = GetPName(0x0C10)
    alias GL_SCISSOR_TEST = GetPName(0x0C11)
    alias GL_INDEX_CLEAR_VALUE = GetPName(0x0C20)
    alias GL_INDEX_WRITEMASK = GetPName(0x0C21)
    alias GL_COLOR_CLEAR_VALUE = GetPName(0x0C22)
    alias GL_COLOR_WRITEMASK = GetPName(0x0C23)
    alias GL_INDEX_MODE = GetPName(0x0C30)
    alias GL_RGBA_MODE = GetPName(0x0C31)
    alias GL_DOUBLEBUFFER = GetPName(0x0C32)
    alias GL_STEREO = GetPName(0x0C33)
    alias GL_RENDER_MODE = GetPName(0x0C40)
    alias GL_PERSPECTIVE_CORRECTION_HINT = GetPName(0x0C50)
    alias GL_POINT_SMOOTH_HINT = GetPName(0x0C51)
    alias GL_LINE_SMOOTH_HINT = GetPName(0x0C52)
    alias GL_POLYGON_SMOOTH_HINT = GetPName(0x0C53)
    alias GL_FOG_HINT = GetPName(0x0C54)
    alias GL_TEXTURE_GEN_S = GetPName(0x0C60)
    alias GL_TEXTURE_GEN_T = GetPName(0x0C61)
    alias GL_TEXTURE_GEN_R = GetPName(0x0C62)
    alias GL_TEXTURE_GEN_Q = GetPName(0x0C63)
    alias GL_PIXEL_MAP_I_TO_I_SIZE = GetPName(0x0CB0)
    alias GL_PIXEL_MAP_S_TO_S_SIZE = GetPName(0x0CB1)
    alias GL_PIXEL_MAP_I_TO_R_SIZE = GetPName(0x0CB2)
    alias GL_PIXEL_MAP_I_TO_G_SIZE = GetPName(0x0CB3)
    alias GL_PIXEL_MAP_I_TO_B_SIZE = GetPName(0x0CB4)
    alias GL_PIXEL_MAP_I_TO_A_SIZE = GetPName(0x0CB5)
    alias GL_PIXEL_MAP_R_TO_R_SIZE = GetPName(0x0CB6)
    alias GL_PIXEL_MAP_G_TO_G_SIZE = GetPName(0x0CB7)
    alias GL_PIXEL_MAP_B_TO_B_SIZE = GetPName(0x0CB8)
    alias GL_PIXEL_MAP_A_TO_A_SIZE = GetPName(0x0CB9)
    alias GL_UNPACK_SWAP_BYTES = GetPName(0x0CF0)
    alias GL_UNPACK_LSB_FIRST = GetPName(0x0CF1)
    alias GL_UNPACK_ROW_LENGTH = GetPName(0x0CF2)
    alias GL_UNPACK_SKIP_ROWS = GetPName(0x0CF3)
    alias GL_UNPACK_SKIP_PIXELS = GetPName(0x0CF4)
    alias GL_UNPACK_ALIGNMENT = GetPName(0x0CF5)
    alias GL_PACK_SWAP_BYTES = GetPName(0x0D00)
    alias GL_PACK_LSB_FIRST = GetPName(0x0D01)
    alias GL_PACK_ROW_LENGTH = GetPName(0x0D02)
    alias GL_PACK_ROW_LENGTH_NV = GetPName(0x0D02)
    alias GL_PACK_SKIP_ROWS = GetPName(0x0D03)
    alias GL_PACK_SKIP_ROWS_NV = GetPName(0x0D03)
    alias GL_PACK_SKIP_PIXELS = GetPName(0x0D04)
    alias GL_PACK_SKIP_PIXELS_NV = GetPName(0x0D04)
    alias GL_PACK_ALIGNMENT = GetPName(0x0D05)
    alias GL_MAP_COLOR = GetPName(0x0D10)
    alias GL_MAP_STENCIL = GetPName(0x0D11)
    alias GL_INDEX_SHIFT = GetPName(0x0D12)
    alias GL_INDEX_OFFSET = GetPName(0x0D13)
    alias GL_RED_SCALE = GetPName(0x0D14)
    alias GL_RED_BIAS = GetPName(0x0D15)
    alias GL_ZOOM_X = GetPName(0x0D16)
    alias GL_ZOOM_Y = GetPName(0x0D17)
    alias GL_GREEN_SCALE = GetPName(0x0D18)
    alias GL_GREEN_BIAS = GetPName(0x0D19)
    alias GL_BLUE_SCALE = GetPName(0x0D1A)
    alias GL_BLUE_BIAS = GetPName(0x0D1B)
    alias GL_ALPHA_SCALE = GetPName(0x0D1C)
    alias GL_ALPHA_BIAS = GetPName(0x0D1D)
    alias GL_DEPTH_SCALE = GetPName(0x0D1E)
    alias GL_DEPTH_BIAS = GetPName(0x0D1F)
    alias GL_MAX_EVAL_ORDER = GetPName(0x0D30)
    alias GL_MAX_LIGHTS = GetPName(0x0D31)
    alias GL_MAX_CLIP_PLANES = GetPName(0x0D32)
    alias GL_MAX_CLIP_DISTANCES = GetPName(0x0D32)
    alias GL_MAX_TEXTURE_SIZE = GetPName(0x0D33)
    alias GL_MAX_PIXEL_MAP_TABLE = GetPName(0x0D34)
    alias GL_MAX_ATTRIB_STACK_DEPTH = GetPName(0x0D35)
    alias GL_MAX_MODELVIEW_STACK_DEPTH = GetPName(0x0D36)
    alias GL_MAX_NAME_STACK_DEPTH = GetPName(0x0D37)
    alias GL_MAX_PROJECTION_STACK_DEPTH = GetPName(0x0D38)
    alias GL_MAX_TEXTURE_STACK_DEPTH = GetPName(0x0D39)
    alias GL_MAX_VIEWPORT_DIMS = GetPName(0x0D3A)
    alias GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0D3B)
    alias GL_SUBPIXEL_BITS = GetPName(0x0D50)
    alias GL_INDEX_BITS = GetPName(0x0D51)
    alias GL_RED_BITS = GetPName(0x0D52)
    alias GL_GREEN_BITS = GetPName(0x0D53)
    alias GL_BLUE_BITS = GetPName(0x0D54)
    alias GL_ALPHA_BITS = GetPName(0x0D55)
    alias GL_DEPTH_BITS = GetPName(0x0D56)
    alias GL_STENCIL_BITS = GetPName(0x0D57)
    alias GL_ACCUM_RED_BITS = GetPName(0x0D58)
    alias GL_ACCUM_GREEN_BITS = GetPName(0x0D59)
    alias GL_ACCUM_BLUE_BITS = GetPName(0x0D5A)
    alias GL_ACCUM_ALPHA_BITS = GetPName(0x0D5B)
    alias GL_NAME_STACK_DEPTH = GetPName(0x0D70)
    alias GL_AUTO_NORMAL = GetPName(0x0D80)
    alias GL_MAP1_COLOR_4 = GetPName(0x0D90)
    alias GL_MAP1_INDEX = GetPName(0x0D91)
    alias GL_MAP1_NORMAL = GetPName(0x0D92)
    alias GL_MAP1_TEXTURE_COORD_1 = GetPName(0x0D93)
    alias GL_MAP1_TEXTURE_COORD_2 = GetPName(0x0D94)
    alias GL_MAP1_TEXTURE_COORD_3 = GetPName(0x0D95)
    alias GL_MAP1_TEXTURE_COORD_4 = GetPName(0x0D96)
    alias GL_MAP1_VERTEX_3 = GetPName(0x0D97)
    alias GL_MAP1_VERTEX_4 = GetPName(0x0D98)
    alias GL_MAP2_COLOR_4 = GetPName(0x0DB0)
    alias GL_MAP2_INDEX = GetPName(0x0DB1)
    alias GL_MAP2_NORMAL = GetPName(0x0DB2)
    alias GL_MAP2_TEXTURE_COORD_1 = GetPName(0x0DB3)
    alias GL_MAP2_TEXTURE_COORD_2 = GetPName(0x0DB4)
    alias GL_MAP2_TEXTURE_COORD_3 = GetPName(0x0DB5)
    alias GL_MAP2_TEXTURE_COORD_4 = GetPName(0x0DB6)
    alias GL_MAP2_VERTEX_3 = GetPName(0x0DB7)
    alias GL_MAP2_VERTEX_4 = GetPName(0x0DB8)
    alias GL_MAP1_GRID_DOMAIN = GetPName(0x0DD0)
    alias GL_MAP1_GRID_SEGMENTS = GetPName(0x0DD1)
    alias GL_MAP2_GRID_DOMAIN = GetPName(0x0DD2)
    alias GL_MAP2_GRID_SEGMENTS = GetPName(0x0DD3)
    alias GL_TEXTURE_1D = GetPName(0x0DE0)
    alias GL_TEXTURE_2D = GetPName(0x0DE1)
    alias GL_FEEDBACK_BUFFER_SIZE = GetPName(0x0DF1)
    alias GL_FEEDBACK_BUFFER_TYPE = GetPName(0x0DF2)
    alias GL_SELECTION_BUFFER_SIZE = GetPName(0x0DF4)
    alias GL_POLYGON_OFFSET_UNITS = GetPName(0x2A00)
    alias GL_POLYGON_OFFSET_POINT = GetPName(0x2A01)
    alias GL_POLYGON_OFFSET_LINE = GetPName(0x2A02)
    alias GL_CLIP_PLANE0 = GetPName(0x3000)
    alias GL_CLIP_PLANE1 = GetPName(0x3001)
    alias GL_CLIP_PLANE2 = GetPName(0x3002)
    alias GL_CLIP_PLANE3 = GetPName(0x3003)
    alias GL_CLIP_PLANE4 = GetPName(0x3004)
    alias GL_CLIP_PLANE5 = GetPName(0x3005)
    alias GL_LIGHT0 = GetPName(0x4000)
    alias GL_LIGHT1 = GetPName(0x4001)
    alias GL_LIGHT2 = GetPName(0x4002)
    alias GL_LIGHT3 = GetPName(0x4003)
    alias GL_LIGHT4 = GetPName(0x4004)
    alias GL_LIGHT5 = GetPName(0x4005)
    alias GL_LIGHT6 = GetPName(0x4006)
    alias GL_LIGHT7 = GetPName(0x4007)
    alias GL_BLEND_COLOR = GetPName(0x8005)
    alias GL_BLEND_COLOR_EXT = GetPName(0x8005)
    alias GL_BLEND_EQUATION = GetPName(0x8009)
    alias GL_BLEND_EQUATION_EXT = GetPName(0x8009)
    alias GL_BLEND_EQUATION_OES = GetPName(0x8009)
    alias GL_BLEND_EQUATION_RGB = GetPName(0x8009)
    alias GL_PACK_CMYK_HINT_EXT = GetPName(0x800E)
    alias GL_UNPACK_CMYK_HINT_EXT = GetPName(0x800F)
    alias GL_CONVOLUTION_1D_EXT = GetPName(0x8010)
    alias GL_CONVOLUTION_2D_EXT = GetPName(0x8011)
    alias GL_SEPARABLE_2D_EXT = GetPName(0x8012)
    alias GL_POST_CONVOLUTION_RED_SCALE_EXT = GetPName(0x801C)
    alias GL_POST_CONVOLUTION_GREEN_SCALE_EXT = GetPName(0x801D)
    alias GL_POST_CONVOLUTION_BLUE_SCALE_EXT = GetPName(0x801E)
    alias GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = GetPName(0x801F)
    alias GL_POST_CONVOLUTION_RED_BIAS_EXT = GetPName(0x8020)
    alias GL_POST_CONVOLUTION_GREEN_BIAS_EXT = GetPName(0x8021)
    alias GL_POST_CONVOLUTION_BLUE_BIAS_EXT = GetPName(0x8022)
    alias GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = GetPName(0x8023)
    alias GL_HISTOGRAM_EXT = GetPName(0x8024)
    alias GL_MINMAX_EXT = GetPName(0x802E)
    alias GL_POLYGON_OFFSET_FILL = GetPName(0x8037)
    alias GL_POLYGON_OFFSET_FACTOR = GetPName(0x8038)
    alias GL_POLYGON_OFFSET_BIAS_EXT = GetPName(0x8039)
    alias GL_RESCALE_NORMAL_EXT = GetPName(0x803A)
    alias GL_TEXTURE_BINDING_1D = GetPName(0x8068)
    alias GL_TEXTURE_BINDING_2D = GetPName(0x8069)
    alias GL_TEXTURE_3D_BINDING_EXT = GetPName(0x806A)
    alias GL_TEXTURE_BINDING_3D = GetPName(0x806A)
    alias GL_PACK_SKIP_IMAGES = GetPName(0x806B)
    alias GL_PACK_SKIP_IMAGES_EXT = GetPName(0x806B)
    alias GL_PACK_IMAGE_HEIGHT = GetPName(0x806C)
    alias GL_PACK_IMAGE_HEIGHT_EXT = GetPName(0x806C)
    alias GL_UNPACK_SKIP_IMAGES = GetPName(0x806D)
    alias GL_UNPACK_SKIP_IMAGES_EXT = GetPName(0x806D)
    alias GL_UNPACK_IMAGE_HEIGHT = GetPName(0x806E)
    alias GL_UNPACK_IMAGE_HEIGHT_EXT = GetPName(0x806E)
    alias GL_TEXTURE_3D_EXT = GetPName(0x806F)
    alias GL_MAX_3D_TEXTURE_SIZE = GetPName(0x8073)
    alias GL_MAX_3D_TEXTURE_SIZE_EXT = GetPName(0x8073)
    alias GL_VERTEX_ARRAY = GetPName(0x8074)
    alias GL_NORMAL_ARRAY = GetPName(0x8075)
    alias GL_COLOR_ARRAY = GetPName(0x8076)
    alias GL_INDEX_ARRAY = GetPName(0x8077)
    alias GL_TEXTURE_COORD_ARRAY = GetPName(0x8078)
    alias GL_EDGE_FLAG_ARRAY = GetPName(0x8079)
    alias GL_VERTEX_ARRAY_SIZE = GetPName(0x807A)
    alias GL_VERTEX_ARRAY_TYPE = GetPName(0x807B)
    alias GL_VERTEX_ARRAY_STRIDE = GetPName(0x807C)
    alias GL_VERTEX_ARRAY_COUNT_EXT = GetPName(0x807D)
    alias GL_NORMAL_ARRAY_TYPE = GetPName(0x807E)
    alias GL_NORMAL_ARRAY_STRIDE = GetPName(0x807F)
    alias GL_NORMAL_ARRAY_COUNT_EXT = GetPName(0x8080)
    alias GL_COLOR_ARRAY_SIZE = GetPName(0x8081)
    alias GL_COLOR_ARRAY_TYPE = GetPName(0x8082)
    alias GL_COLOR_ARRAY_STRIDE = GetPName(0x8083)
    alias GL_COLOR_ARRAY_COUNT_EXT = GetPName(0x8084)
    alias GL_INDEX_ARRAY_TYPE = GetPName(0x8085)
    alias GL_INDEX_ARRAY_STRIDE = GetPName(0x8086)
    alias GL_INDEX_ARRAY_COUNT_EXT = GetPName(0x8087)
    alias GL_TEXTURE_COORD_ARRAY_SIZE = GetPName(0x8088)
    alias GL_TEXTURE_COORD_ARRAY_TYPE = GetPName(0x8089)
    alias GL_TEXTURE_COORD_ARRAY_STRIDE = GetPName(0x808A)
    alias GL_TEXTURE_COORD_ARRAY_COUNT_EXT = GetPName(0x808B)
    alias GL_EDGE_FLAG_ARRAY_STRIDE = GetPName(0x808C)
    alias GL_EDGE_FLAG_ARRAY_COUNT_EXT = GetPName(0x808D)
    alias GL_INTERLACE_SGIX = GetPName(0x8094)
    alias GL_DETAIL_TEXTURE_2D_BINDING_SGIS = GetPName(0x8096)
    alias GL_MULTISAMPLE_SGIS = GetPName(0x809D)
    alias GL_SAMPLE_ALPHA_TO_MASK_SGIS = GetPName(0x809E)
    alias GL_SAMPLE_ALPHA_TO_ONE_SGIS = GetPName(0x809F)
    alias GL_SAMPLE_MASK_SGIS = GetPName(0x80A0)
    alias GL_SAMPLE_BUFFERS = GetPName(0x80A8)
    alias GL_SAMPLE_BUFFERS_SGIS = GetPName(0x80A8)
    alias GL_SAMPLES = GetPName(0x80A9)
    alias GL_SAMPLES_SGIS = GetPName(0x80A9)
    alias GL_SAMPLE_COVERAGE_VALUE = GetPName(0x80AA)
    alias GL_SAMPLE_MASK_VALUE_SGIS = GetPName(0x80AA)
    alias GL_SAMPLE_COVERAGE_INVERT = GetPName(0x80AB)
    alias GL_SAMPLE_MASK_INVERT_SGIS = GetPName(0x80AB)
    alias GL_SAMPLE_PATTERN_SGIS = GetPName(0x80AC)
    alias GL_COLOR_MATRIX_SGI = GetPName(0x80B1)
    alias GL_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B2)
    alias GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B3)
    alias GL_POST_COLOR_MATRIX_RED_SCALE_SGI = GetPName(0x80B4)
    alias GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = GetPName(0x80B5)
    alias GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = GetPName(0x80B6)
    alias GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = GetPName(0x80B7)
    alias GL_POST_COLOR_MATRIX_RED_BIAS_SGI = GetPName(0x80B8)
    alias GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = GetPName(0x80B9)
    alias GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = GetPName(0x80BA)
    alias GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = GetPName(0x80BB)
    alias GL_TEXTURE_COLOR_TABLE_SGI = GetPName(0x80BC)
    alias GL_BLEND_DST_RGB = GetPName(0x80C8)
    alias GL_BLEND_SRC_RGB = GetPName(0x80C9)
    alias GL_BLEND_DST_ALPHA = GetPName(0x80CA)
    alias GL_BLEND_SRC_ALPHA = GetPName(0x80CB)
    alias GL_COLOR_TABLE_SGI = GetPName(0x80D0)
    alias GL_POST_CONVOLUTION_COLOR_TABLE_SGI = GetPName(0x80D1)
    alias GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = GetPName(0x80D2)
    alias GL_MAX_ELEMENTS_VERTICES = GetPName(0x80E8)
    alias GL_MAX_ELEMENTS_INDICES = GetPName(0x80E9)
    alias GL_POINT_SIZE_MIN = GetPName(0x8126)
    alias GL_POINT_SIZE_MIN_ARB = GetPName(0x8126)
    alias GL_POINT_SIZE_MIN_EXT = GetPName(0x8126)
    alias GL_POINT_SIZE_MIN_SGIS = GetPName(0x8126)
    alias GL_POINT_SIZE_MAX = GetPName(0x8127)
    alias GL_POINT_SIZE_MAX_ARB = GetPName(0x8127)
    alias GL_POINT_SIZE_MAX_EXT = GetPName(0x8127)
    alias GL_POINT_SIZE_MAX_SGIS = GetPName(0x8127)
    alias GL_POINT_FADE_THRESHOLD_SIZE = GetPName(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_ARB = GetPName(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_EXT = GetPName(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_SGIS = GetPName(0x8128)
    alias GL_DISTANCE_ATTENUATION_EXT = GetPName(0x8129)
    alias GL_DISTANCE_ATTENUATION_SGIS = GetPName(0x8129)
    alias GL_POINT_DISTANCE_ATTENUATION = GetPName(0x8129)
    alias GL_POINT_DISTANCE_ATTENUATION_ARB = GetPName(0x8129)
    alias GL_FOG_FUNC_POINTS_SGIS = GetPName(0x812B)
    alias GL_MAX_FOG_FUNC_POINTS_SGIS = GetPName(0x812C)
    alias GL_PACK_SKIP_VOLUMES_SGIS = GetPName(0x8130)
    alias GL_PACK_IMAGE_DEPTH_SGIS = GetPName(0x8131)
    alias GL_UNPACK_SKIP_VOLUMES_SGIS = GetPName(0x8132)
    alias GL_UNPACK_IMAGE_DEPTH_SGIS = GetPName(0x8133)
    alias GL_TEXTURE_4D_SGIS = GetPName(0x8134)
    alias GL_MAX_4D_TEXTURE_SIZE_SGIS = GetPName(0x8138)
    alias GL_PIXEL_TEX_GEN_SGIX = GetPName(0x8139)
    alias GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = GetPName(0x813E)
    alias GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = GetPName(0x813F)
    alias GL_PIXEL_TILE_WIDTH_SGIX = GetPName(0x8140)
    alias GL_PIXEL_TILE_HEIGHT_SGIX = GetPName(0x8141)
    alias GL_PIXEL_TILE_GRID_WIDTH_SGIX = GetPName(0x8142)
    alias GL_PIXEL_TILE_GRID_HEIGHT_SGIX = GetPName(0x8143)
    alias GL_PIXEL_TILE_GRID_DEPTH_SGIX = GetPName(0x8144)
    alias GL_PIXEL_TILE_CACHE_SIZE_SGIX = GetPName(0x8145)
    alias GL_SPRITE_SGIX = GetPName(0x8148)
    alias GL_SPRITE_MODE_SGIX = GetPName(0x8149)
    alias GL_SPRITE_AXIS_SGIX = GetPName(0x814A)
    alias GL_SPRITE_TRANSLATION_SGIX = GetPName(0x814B)
    alias GL_TEXTURE_4D_BINDING_SGIS = GetPName(0x814F)
    alias GL_MAX_CLIPMAP_DEPTH_SGIX = GetPName(0x8177)
    alias GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetPName(0x8178)
    alias GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = GetPName(0x817B)
    alias GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = GetPName(0x817C)
    alias GL_REFERENCE_PLANE_SGIX = GetPName(0x817D)
    alias GL_REFERENCE_PLANE_EQUATION_SGIX = GetPName(0x817E)
    alias GL_IR_INSTRUMENT1_SGIX = GetPName(0x817F)
    alias GL_INSTRUMENT_MEASUREMENTS_SGIX = GetPName(0x8181)
    alias GL_CALLIGRAPHIC_FRAGMENT_SGIX = GetPName(0x8183)
    alias GL_FRAMEZOOM_SGIX = GetPName(0x818B)
    alias GL_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818C)
    alias GL_MAX_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818D)
    alias GL_GENERATE_MIPMAP_HINT_SGIS = GetPName(0x8192)
    alias GL_DEFORMATIONS_MASK_SGIX = GetPName(0x8196)
    alias GL_FOG_OFFSET_SGIX = GetPName(0x8198)
    alias GL_FOG_OFFSET_VALUE_SGIX = GetPName(0x8199)
    alias GL_LIGHT_MODEL_COLOR_CONTROL = GetPName(0x81F8)
    alias GL_SHARED_TEXTURE_PALETTE_EXT = GetPName(0x81FB)
    alias GL_MAJOR_VERSION = GetPName(0x821B)
    alias GL_MINOR_VERSION = GetPName(0x821C)
    alias GL_NUM_EXTENSIONS = GetPName(0x821D)
    alias GL_CONTEXT_FLAGS = GetPName(0x821E)
    alias GL_PROGRAM_PIPELINE_BINDING = GetPName(0x825A)
    alias GL_MAX_VIEWPORTS = GetPName(0x825B)
    alias GL_VIEWPORT_SUBPIXEL_BITS = GetPName(0x825C)
    alias GL_VIEWPORT_BOUNDS_RANGE = GetPName(0x825D)
    alias GL_LAYER_PROVOKING_VERTEX = GetPName(0x825E)
    alias GL_VIEWPORT_INDEX_PROVOKING_VERTEX = GetPName(0x825F)
    alias GL_MAX_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8263)
    alias GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = GetPName(0x8264)
    alias GL_MAX_COMPUTE_ATOMIC_COUNTERS = GetPName(0x8265)
    alias GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8266)
    alias GL_MAX_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826C)
    alias GL_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826D)
    alias GL_MAX_UNIFORM_LOCATIONS = GetPName(0x826E)
    alias GL_VERTEX_BINDING_DIVISOR = GetPName(0x82D6)
    alias GL_VERTEX_BINDING_OFFSET = GetPName(0x82D7)
    alias GL_VERTEX_BINDING_STRIDE = GetPName(0x82D8)
    alias GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = GetPName(0x82D9)
    alias GL_MAX_VERTEX_ATTRIB_BINDINGS = GetPName(0x82DA)
    alias GL_MAX_LABEL_LENGTH = GetPName(0x82E8)
    alias GL_CONVOLUTION_HINT_SGIX = GetPName(0x8316)
    alias GL_ASYNC_MARKER_SGIX = GetPName(0x8329)
    alias GL_PIXEL_TEX_GEN_MODE_SGIX = GetPName(0x832B)
    alias GL_ASYNC_HISTOGRAM_SGIX = GetPName(0x832C)
    alias GL_MAX_ASYNC_HISTOGRAM_SGIX = GetPName(0x832D)
    alias GL_PIXEL_TEXTURE_SGIS = GetPName(0x8353)
    alias GL_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835C)
    alias GL_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x835D)
    alias GL_ASYNC_READ_PIXELS_SGIX = GetPName(0x835E)
    alias GL_MAX_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835F)
    alias GL_MAX_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x8360)
    alias GL_MAX_ASYNC_READ_PIXELS_SGIX = GetPName(0x8361)
    alias GL_VERTEX_PRECLIP_SGIX = GetPName(0x83EE)
    alias GL_VERTEX_PRECLIP_HINT_SGIX = GetPName(0x83EF)
    alias GL_FRAGMENT_LIGHTING_SGIX = GetPName(0x8400)
    alias GL_FRAGMENT_COLOR_MATERIAL_SGIX = GetPName(0x8401)
    alias GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = GetPName(0x8402)
    alias GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = GetPName(0x8403)
    alias GL_MAX_FRAGMENT_LIGHTS_SGIX = GetPName(0x8404)
    alias GL_MAX_ACTIVE_LIGHTS_SGIX = GetPName(0x8405)
    alias GL_LIGHT_ENV_MODE_SGIX = GetPName(0x8407)
    alias GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = GetPName(0x8408)
    alias GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = GetPName(0x8409)
    alias GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = GetPName(0x840A)
    alias GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = GetPName(0x840B)
    alias GL_FRAGMENT_LIGHT0_SGIX = GetPName(0x840C)
    alias GL_PACK_RESAMPLE_SGIX = GetPName(0x842E)
    alias GL_UNPACK_RESAMPLE_SGIX = GetPName(0x842F)
    alias GL_ALIASED_POINT_SIZE_RANGE = GetPName(0x846D)
    alias GL_ALIASED_LINE_WIDTH_RANGE = GetPName(0x846E)
    alias GL_ACTIVE_TEXTURE = GetPName(0x84E0)
    alias GL_MAX_RENDERBUFFER_SIZE = GetPName(0x84E8)
    alias GL_TEXTURE_COMPRESSION_HINT = GetPName(0x84EF)
    alias GL_TEXTURE_BINDING_RECTANGLE = GetPName(0x84F6)
    alias GL_TEXTURE_BINDING_RECTANGLE_ARB = GetPName(0x84F6)
    alias GL_TEXTURE_BINDING_RECTANGLE_NV = GetPName(0x84F6)
    alias GL_MAX_RECTANGLE_TEXTURE_SIZE = GetPName(0x84F8)
    alias GL_MAX_TEXTURE_LOD_BIAS = GetPName(0x84FD)
    alias GL_TEXTURE_BINDING_CUBE_MAP = GetPName(0x8514)
    alias GL_TEXTURE_BINDING_CUBE_MAP_ARB = GetPName(0x8514)
    alias GL_TEXTURE_BINDING_CUBE_MAP_EXT = GetPName(0x8514)
    alias GL_TEXTURE_BINDING_CUBE_MAP_OES = GetPName(0x8514)
    alias GL_MAX_CUBE_MAP_TEXTURE_SIZE = GetPName(0x851C)
    alias GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = GetPName(0x851C)
    alias GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = GetPName(0x851C)
    alias GL_MAX_CUBE_MAP_TEXTURE_SIZE_OES = GetPName(0x851C)
    alias GL_PACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A0)
    alias GL_UNPACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A1)
    alias GL_VERTEX_ARRAY_BINDING = GetPName(0x85B5)
    alias GL_PROGRAM_POINT_SIZE = GetPName(0x8642)
    alias GL_NUM_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A2)
    alias GL_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A3)
    alias GL_NUM_PROGRAM_BINARY_FORMATS = GetPName(0x87FE)
    alias GL_PROGRAM_BINARY_FORMATS = GetPName(0x87FF)
    alias GL_STENCIL_BACK_FUNC = GetPName(0x8800)
    alias GL_STENCIL_BACK_FAIL = GetPName(0x8801)
    alias GL_STENCIL_BACK_PASS_DEPTH_FAIL = GetPName(0x8802)
    alias GL_STENCIL_BACK_PASS_DEPTH_PASS = GetPName(0x8803)
    alias GL_MAX_DRAW_BUFFERS = GetPName(0x8824)
    alias GL_BLEND_EQUATION_ALPHA = GetPName(0x883D)
    alias GL_MAX_VERTEX_ATTRIBS = GetPName(0x8869)
    alias GL_MAX_TEXTURE_IMAGE_UNITS = GetPName(0x8872)
    alias GL_ARRAY_BUFFER_BINDING = GetPName(0x8894)
    alias GL_ELEMENT_ARRAY_BUFFER_BINDING = GetPName(0x8895)
    alias GL_PIXEL_PACK_BUFFER_BINDING = GetPName(0x88ED)
    alias GL_PIXEL_UNPACK_BUFFER_BINDING = GetPName(0x88EF)
    alias GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = GetPName(0x88FC)
    alias GL_MAX_ARRAY_TEXTURE_LAYERS = GetPName(0x88FF)
    alias GL_MIN_PROGRAM_TEXEL_OFFSET = GetPName(0x8904)
    alias GL_MAX_PROGRAM_TEXEL_OFFSET = GetPName(0x8905)
    alias GL_SAMPLER_BINDING = GetPName(0x8919)
    alias GL_FRAGMENT_SHADER_ATI = GetPName(0x8920)
    alias GL_UNIFORM_BUFFER_BINDING = GetPName(0x8A28)
    alias GL_UNIFORM_BUFFER_START = GetPName(0x8A29)
    alias GL_UNIFORM_BUFFER_SIZE = GetPName(0x8A2A)
    alias GL_MAX_VERTEX_UNIFORM_BLOCKS = GetPName(0x8A2B)
    alias GL_MAX_GEOMETRY_UNIFORM_BLOCKS = GetPName(0x8A2C)
    alias GL_MAX_FRAGMENT_UNIFORM_BLOCKS = GetPName(0x8A2D)
    alias GL_MAX_COMBINED_UNIFORM_BLOCKS = GetPName(0x8A2E)
    alias GL_MAX_UNIFORM_BUFFER_BINDINGS = GetPName(0x8A2F)
    alias GL_MAX_UNIFORM_BLOCK_SIZE = GetPName(0x8A30)
    alias GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8A31)
    alias GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8A32)
    alias GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8A33)
    alias GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = GetPName(0x8A34)
    alias GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8B49)
    alias GL_MAX_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8B4A)
    alias GL_MAX_VARYING_FLOATS = GetPName(0x8B4B)
    alias GL_MAX_VARYING_COMPONENTS = GetPName(0x8B4B)
    alias GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = GetPName(0x8B4C)
    alias GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = GetPName(0x8B4D)
    alias GL_FRAGMENT_SHADER_DERIVATIVE_HINT = GetPName(0x8B8B)
    alias GL_CURRENT_PROGRAM = GetPName(0x8B8D)
    alias GL_IMPLEMENTATION_COLOR_READ_TYPE = GetPName(0x8B9A)
    alias GL_IMPLEMENTATION_COLOR_READ_FORMAT = GetPName(0x8B9B)
    alias GL_TEXTURE_BINDING_1D_ARRAY = GetPName(0x8C1C)
    alias GL_TEXTURE_BINDING_2D_ARRAY = GetPName(0x8C1D)
    alias GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = GetPName(0x8C29)
    alias GL_MAX_TEXTURE_BUFFER_SIZE = GetPName(0x8C2B)
    alias GL_TEXTURE_BINDING_BUFFER = GetPName(0x8C2C)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_START = GetPName(0x8C84)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = GetPName(0x8C85)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = GetPName(0x8C8F)
    alias GL_MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM = GetPName(0x8C90)
    alias GL_MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM = GetPName(0x8C91)
    alias GL_STENCIL_BACK_REF = GetPName(0x8CA3)
    alias GL_STENCIL_BACK_VALUE_MASK = GetPName(0x8CA4)
    alias GL_STENCIL_BACK_WRITEMASK = GetPName(0x8CA5)
    alias GL_DRAW_FRAMEBUFFER_BINDING = GetPName(0x8CA6)
    alias GL_RENDERBUFFER_BINDING = GetPName(0x8CA7)
    alias GL_READ_FRAMEBUFFER_BINDING = GetPName(0x8CAA)
    alias GL_MAX_COLOR_ATTACHMENTS = GetPName(0x8CDF)
    alias GL_MAX_COLOR_ATTACHMENTS_EXT = GetPName(0x8CDF)
    alias GL_MAX_COLOR_ATTACHMENTS_NV = GetPName(0x8CDF)
    alias GL_TEXTURE_GEN_STR_OES = GetPName(0x8D60)
    alias GL_MAX_ELEMENT_INDEX = GetPName(0x8D6B)
    alias GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8DDF)
    alias GL_SHADER_BINARY_FORMATS = GetPName(0x8DF8)
    alias GL_NUM_SHADER_BINARY_FORMATS = GetPName(0x8DF9)
    alias GL_SHADER_COMPILER = GetPName(0x8DFA)
    alias GL_MAX_VERTEX_UNIFORM_VECTORS = GetPName(0x8DFB)
    alias GL_MAX_VARYING_VECTORS = GetPName(0x8DFC)
    alias GL_MAX_FRAGMENT_UNIFORM_VECTORS = GetPName(0x8DFD)
    alias GL_TIMESTAMP = GetPName(0x8E28)
    alias GL_TIMESTAMP_EXT = GetPName(0x8E28)
    alias GL_PROVOKING_VERTEX = GetPName(0x8E4F)
    alias GL_MAX_SAMPLE_MASK_WORDS = GetPName(0x8E59)
    alias GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = GetPName(0x8E89)
    alias GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = GetPName(0x8E8A)
    alias GL_FETCH_PER_SAMPLE_ARM = GetPName(0x8F65)
    alias GL_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = GetPName(0x8F66)
    alias GL_FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT = GetPName(0x8F6F)
    alias GL_PRIMITIVE_RESTART_INDEX = GetPName(0x8F9E)
    alias GL_MIN_MAP_BUFFER_ALIGNMENT = GetPName(0x90BC)
    alias GL_SHADER_STORAGE_BUFFER_BINDING = GetPName(0x90D3)
    alias GL_SHADER_STORAGE_BUFFER_START = GetPName(0x90D4)
    alias GL_SHADER_STORAGE_BUFFER_SIZE = GetPName(0x90D5)
    alias GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = GetPName(0x90D6)
    alias GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = GetPName(0x90D7)
    alias GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = GetPName(0x90D8)
    alias GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = GetPName(0x90D9)
    alias GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = GetPName(0x90DA)
    alias GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = GetPName(0x90DB)
    alias GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = GetPName(0x90DC)
    alias GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = GetPName(0x90DD)
    alias GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x90DF)
    alias GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = GetPName(0x90EB)
    alias GL_DISPATCH_INDIRECT_BUFFER_BINDING = GetPName(0x90EF)
    alias GL_TEXTURE_BINDING_2D_MULTISAMPLE = GetPName(0x9104)
    alias GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = GetPName(0x9105)
    alias GL_MAX_COLOR_TEXTURE_SAMPLES = GetPName(0x910E)
    alias GL_MAX_DEPTH_TEXTURE_SAMPLES = GetPName(0x910F)
    alias GL_MAX_INTEGER_SAMPLES = GetPName(0x9110)
    alias GL_MAX_SERVER_WAIT_TIMEOUT = GetPName(0x9111)
    alias GL_MAX_VERTEX_OUTPUT_COMPONENTS = GetPName(0x9122)
    alias GL_MAX_GEOMETRY_INPUT_COMPONENTS = GetPName(0x9123)
    alias GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = GetPName(0x9124)
    alias GL_MAX_FRAGMENT_INPUT_COMPONENTS = GetPName(0x9125)
    alias GL_CONTEXT_PROFILE_MASK = GetPName(0x9126)
    alias GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x919F)
    alias GL_MAX_COMPUTE_UNIFORM_BLOCKS = GetPName(0x91BB)
    alias GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = GetPName(0x91BC)
    alias GL_MAX_COMPUTE_WORK_GROUP_COUNT = GetPName(0x91BE)
    alias GL_MAX_COMPUTE_WORK_GROUP_SIZE = GetPName(0x91BF)
    alias GL_MAX_VERTEX_ATOMIC_COUNTERS = GetPName(0x92D2)
    alias GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = GetPName(0x92D3)
    alias GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = GetPName(0x92D4)
    alias GL_MAX_GEOMETRY_ATOMIC_COUNTERS = GetPName(0x92D5)
    alias GL_MAX_FRAGMENT_ATOMIC_COUNTERS = GetPName(0x92D6)
    alias GL_MAX_COMBINED_ATOMIC_COUNTERS = GetPName(0x92D7)
    alias GL_MAX_FRAMEBUFFER_WIDTH = GetPName(0x9315)
    alias GL_MAX_FRAMEBUFFER_HEIGHT = GetPName(0x9316)
    alias GL_MAX_FRAMEBUFFER_LAYERS = GetPName(0x9317)
    alias GL_MAX_FRAMEBUFFER_SAMPLES = GetPName(0x9318)
    alias GL_NUM_DEVICE_UUIDS_EXT = GetPName(0x9596)
    alias GL_DEVICE_UUID_EXT = GetPName(0x9597)
    alias GL_DRIVER_UUID_EXT = GetPName(0x9598)
    alias GL_DEVICE_LUID_EXT = GetPName(0x9599)
    alias GL_DEVICE_NODE_MASK_EXT = GetPName(0x959A)
    alias GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = GetPName(0x95B1)
    alias GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV = GetPName(0x95B2)
    alias GL_MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV = GetPName(0x95B6)
    alias GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = GetPName(0x96A2)
    alias GL_SHADING_RATE_QCOM = GetPName(0x96A4)
    alias GL_SHADING_RATE_EXT = GetPName(0x96D0)
    alias GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D7)
    alias GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D8)
    alias GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96D9)
    alias GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96DA)
    alias GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT = GetPName(0x96DB)
    alias GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT = GetPName(0x96DC)
    alias GL_FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT = GetPName(0x96DD)
    alias GL_FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT = GetPName(0x96DE)
    alias GL_FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT = GetPName(0x96DF)
    alias GL_SHADER_CORE_COUNT_ARM = GetPName(0x96F0)
    alias GL_SHADER_CORE_ACTIVE_COUNT_ARM = GetPName(0x96F1)
    alias GL_SHADER_CORE_PRESENT_MASK_ARM = GetPName(0x96F2)
    alias GL_SHADER_CORE_MAX_WARP_COUNT_ARM = GetPName(0x96F3)
    alias GL_SHADER_CORE_PIXEL_RATE_ARM = GetPName(0x96F4)
    alias GL_SHADER_CORE_TEXEL_RATE_ARM = GetPName(0x96F5)
    alias GL_SHADER_CORE_FMA_RATE_ARM = GetPName(0x96F6)


@fieldwise_init
@register_passable("trivial")
struct GetTextureParameter:
    var value: GLenum

    alias GL_TEXTURE_WIDTH = GetTextureParameter(0x1000)
    alias GL_TEXTURE_HEIGHT = GetTextureParameter(0x1001)
    alias GL_TEXTURE_INTERNAL_FORMAT = GetTextureParameter(0x1003)
    alias GL_TEXTURE_COMPONENTS = GetTextureParameter(0x1003)
    alias GL_TEXTURE_BORDER_COLOR = GetTextureParameter(0x1004)
    alias GL_TEXTURE_BORDER_COLOR_NV = GetTextureParameter(0x1004)
    alias GL_TEXTURE_BORDER = GetTextureParameter(0x1005)
    alias GL_TEXTURE_MAG_FILTER = GetTextureParameter(0x2800)
    alias GL_TEXTURE_MIN_FILTER = GetTextureParameter(0x2801)
    alias GL_TEXTURE_WRAP_S = GetTextureParameter(0x2802)
    alias GL_TEXTURE_WRAP_T = GetTextureParameter(0x2803)
    alias GL_TEXTURE_RED_SIZE = GetTextureParameter(0x805C)
    alias GL_TEXTURE_GREEN_SIZE = GetTextureParameter(0x805D)
    alias GL_TEXTURE_BLUE_SIZE = GetTextureParameter(0x805E)
    alias GL_TEXTURE_ALPHA_SIZE = GetTextureParameter(0x805F)
    alias GL_TEXTURE_LUMINANCE_SIZE = GetTextureParameter(0x8060)
    alias GL_TEXTURE_INTENSITY_SIZE = GetTextureParameter(0x8061)
    alias GL_TEXTURE_PRIORITY = GetTextureParameter(0x8066)
    alias GL_TEXTURE_RESIDENT = GetTextureParameter(0x8067)
    alias GL_TEXTURE_DEPTH_EXT = GetTextureParameter(0x8071)
    alias GL_TEXTURE_WRAP_R_EXT = GetTextureParameter(0x8072)
    alias GL_DETAIL_TEXTURE_LEVEL_SGIS = GetTextureParameter(0x809A)
    alias GL_DETAIL_TEXTURE_MODE_SGIS = GetTextureParameter(0x809B)
    alias GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x809C)
    alias GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x80B0)
    alias GL_SHADOW_AMBIENT_SGIX = GetTextureParameter(0x80BF)
    alias GL_DUAL_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8124)
    alias GL_QUAD_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8125)
    alias GL_TEXTURE_4DSIZE_SGIS = GetTextureParameter(0x8136)
    alias GL_TEXTURE_WRAP_Q_SGIS = GetTextureParameter(0x8137)
    alias GL_TEXTURE_MIN_LOD_SGIS = GetTextureParameter(0x813A)
    alias GL_TEXTURE_MAX_LOD_SGIS = GetTextureParameter(0x813B)
    alias GL_TEXTURE_BASE_LEVEL_SGIS = GetTextureParameter(0x813C)
    alias GL_TEXTURE_MAX_LEVEL_SGIS = GetTextureParameter(0x813D)
    alias GL_TEXTURE_FILTER4_SIZE_SGIS = GetTextureParameter(0x8147)
    alias GL_TEXTURE_CLIPMAP_CENTER_SGIX = GetTextureParameter(0x8171)
    alias GL_TEXTURE_CLIPMAP_FRAME_SGIX = GetTextureParameter(0x8172)
    alias GL_TEXTURE_CLIPMAP_OFFSET_SGIX = GetTextureParameter(0x8173)
    alias GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetTextureParameter(0x8174)
    alias GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = GetTextureParameter(0x8175)
    alias GL_TEXTURE_CLIPMAP_DEPTH_SGIX = GetTextureParameter(0x8176)
    alias GL_POST_TEXTURE_FILTER_BIAS_SGIX = GetTextureParameter(0x8179)
    alias GL_POST_TEXTURE_FILTER_SCALE_SGIX = GetTextureParameter(0x817A)
    alias GL_TEXTURE_LOD_BIAS_S_SGIX = GetTextureParameter(0x818E)
    alias GL_TEXTURE_LOD_BIAS_T_SGIX = GetTextureParameter(0x818F)
    alias GL_TEXTURE_LOD_BIAS_R_SGIX = GetTextureParameter(0x8190)
    alias GL_GENERATE_MIPMAP_SGIS = GetTextureParameter(0x8191)
    alias GL_TEXTURE_COMPARE_SGIX = GetTextureParameter(0x819A)
    alias GL_TEXTURE_COMPARE_OPERATOR_SGIX = GetTextureParameter(0x819B)
    alias GL_TEXTURE_LEQUAL_R_SGIX = GetTextureParameter(0x819C)
    alias GL_TEXTURE_GEQUAL_R_SGIX = GetTextureParameter(0x819D)
    alias GL_TEXTURE_MAX_CLAMP_S_SGIX = GetTextureParameter(0x8369)
    alias GL_TEXTURE_MAX_CLAMP_T_SGIX = GetTextureParameter(0x836A)
    alias GL_TEXTURE_MAX_CLAMP_R_SGIX = GetTextureParameter(0x836B)
    alias GL_NORMAL_MAP = GetTextureParameter(0x8511)
    alias GL_NORMAL_MAP_ARB = GetTextureParameter(0x8511)
    alias GL_NORMAL_MAP_EXT = GetTextureParameter(0x8511)
    alias GL_NORMAL_MAP_NV = GetTextureParameter(0x8511)
    alias GL_NORMAL_MAP_OES = GetTextureParameter(0x8511)
    alias GL_REFLECTION_MAP = GetTextureParameter(0x8512)
    alias GL_REFLECTION_MAP_ARB = GetTextureParameter(0x8512)
    alias GL_REFLECTION_MAP_EXT = GetTextureParameter(0x8512)
    alias GL_REFLECTION_MAP_NV = GetTextureParameter(0x8512)
    alias GL_REFLECTION_MAP_OES = GetTextureParameter(0x8512)
    alias GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = GetTextureParameter(0x8F6A)
    alias GL_SURFACE_COMPRESSION_EXT = GetTextureParameter(0x96C0)
    alias GL_TEXTURE_Y_DEGAMMA_QCOM = GetTextureParameter(0x9710)
    alias GL_TEXTURE_CBCR_DEGAMMA_QCOM = GetTextureParameter(0x9711)


@fieldwise_init
@register_passable("trivial")
struct HintMode:
    var value: GLenum

    alias GL_DONT_CARE = HintMode(0x1100)
    alias GL_FASTEST = HintMode(0x1101)
    alias GL_NICEST = HintMode(0x1102)


@fieldwise_init
@register_passable("trivial")
struct HintTarget:
    var value: GLenum

    alias GL_PERSPECTIVE_CORRECTION_HINT = HintTarget(0x0C50)
    alias GL_POINT_SMOOTH_HINT = HintTarget(0x0C51)
    alias GL_LINE_SMOOTH_HINT = HintTarget(0x0C52)
    alias GL_POLYGON_SMOOTH_HINT = HintTarget(0x0C53)
    alias GL_FOG_HINT = HintTarget(0x0C54)
    alias GL_PACK_CMYK_HINT_EXT = HintTarget(0x800E)
    alias GL_UNPACK_CMYK_HINT_EXT = HintTarget(0x800F)
    alias GL_PHONG_HINT_WIN = HintTarget(0x80EB)
    alias GL_CLIP_VOLUME_CLIPPING_HINT_EXT = HintTarget(0x80F0)
    alias GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = HintTarget(0x812E)
    alias GL_GENERATE_MIPMAP_HINT = HintTarget(0x8192)
    alias GL_GENERATE_MIPMAP_HINT_SGIS = HintTarget(0x8192)
    alias GL_PROGRAM_BINARY_RETRIEVABLE_HINT = HintTarget(0x8257)
    alias GL_CONVOLUTION_HINT_SGIX = HintTarget(0x8316)
    alias GL_SCALEBIAS_HINT_SGIX = HintTarget(0x8322)
    alias GL_LINE_QUALITY_HINT_SGIX = HintTarget(0x835B)
    alias GL_VERTEX_PRECLIP_SGIX = HintTarget(0x83EE)
    alias GL_VERTEX_PRECLIP_HINT_SGIX = HintTarget(0x83EF)
    alias GL_TEXTURE_COMPRESSION_HINT = HintTarget(0x84EF)
    alias GL_TEXTURE_COMPRESSION_HINT_ARB = HintTarget(0x84EF)
    alias GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = HintTarget(0x851F)
    alias GL_MULTISAMPLE_FILTER_HINT_NV = HintTarget(0x8534)
    alias GL_TRANSFORM_HINT_APPLE = HintTarget(0x85B1)
    alias GL_TEXTURE_STORAGE_HINT_APPLE = HintTarget(0x85BC)
    alias GL_FRAGMENT_SHADER_DERIVATIVE_HINT = HintTarget(0x8B8B)
    alias GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = HintTarget(0x8B8B)
    alias GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES = HintTarget(0x8B8B)
    alias GL_BINNING_CONTROL_HINT_QCOM = HintTarget(0x8FB0)
    alias GL_PREFER_DOUBLEBUFFER_HINT_PGI = HintTarget(0x1A1F8)
    alias GL_CONSERVE_MEMORY_HINT_PGI = HintTarget(0x1A1FD)
    alias GL_RECLAIM_MEMORY_HINT_PGI = HintTarget(0x1A1FE)
    alias GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = HintTarget(0x1A203)
    alias GL_NATIVE_GRAPHICS_END_HINT_PGI = HintTarget(0x1A204)
    alias GL_ALWAYS_FAST_HINT_PGI = HintTarget(0x1A20C)
    alias GL_ALWAYS_SOFT_HINT_PGI = HintTarget(0x1A20D)
    alias GL_ALLOW_DRAW_OBJ_HINT_PGI = HintTarget(0x1A20E)
    alias GL_ALLOW_DRAW_WIN_HINT_PGI = HintTarget(0x1A20F)
    alias GL_ALLOW_DRAW_FRG_HINT_PGI = HintTarget(0x1A210)
    alias GL_ALLOW_DRAW_MEM_HINT_PGI = HintTarget(0x1A211)
    alias GL_STRICT_DEPTHFUNC_HINT_PGI = HintTarget(0x1A216)
    alias GL_STRICT_LIGHTING_HINT_PGI = HintTarget(0x1A217)
    alias GL_STRICT_SCISSOR_HINT_PGI = HintTarget(0x1A218)
    alias GL_FULL_STIPPLE_HINT_PGI = HintTarget(0x1A219)
    alias GL_CLIP_NEAR_HINT_PGI = HintTarget(0x1A220)
    alias GL_CLIP_FAR_HINT_PGI = HintTarget(0x1A221)
    alias GL_WIDE_LINE_HINT_PGI = HintTarget(0x1A222)
    alias GL_BACK_NORMALS_HINT_PGI = HintTarget(0x1A223)
    alias GL_VERTEX_DATA_HINT_PGI = HintTarget(0x1A22A)
    alias GL_VERTEX_CONSISTENT_HINT_PGI = HintTarget(0x1A22B)
    alias GL_MATERIAL_SIDE_HINT_PGI = HintTarget(0x1A22C)
    alias GL_MAX_VERTEX_HINT_PGI = HintTarget(0x1A22D)


@fieldwise_init
@register_passable("trivial")
struct HistogramTarget:
    var value: GLenum

    alias GL_HISTOGRAM = HistogramTarget(0x8024)
    alias GL_PROXY_HISTOGRAM = HistogramTarget(0x8025)


@fieldwise_init
@register_passable("trivial")
struct InternalFormat:
    var value: GLint

    alias GL_STENCIL_INDEX = InternalFormat(0x1901)
    alias GL_STENCIL_INDEX_OES = InternalFormat(0x1901)
    alias GL_DEPTH_COMPONENT = InternalFormat(0x1902)
    alias GL_RED = InternalFormat(0x1903)
    alias GL_RED_EXT = InternalFormat(0x1903)
    alias GL_RGB = InternalFormat(0x1907)
    alias GL_RGBA = InternalFormat(0x1908)
    alias GL_R3_G3_B2 = InternalFormat(0x2A10)
    alias GL_ALPHA4 = InternalFormat(0x803B)
    alias GL_ALPHA4_EXT = InternalFormat(0x803B)
    alias GL_ALPHA8 = InternalFormat(0x803C)
    alias GL_ALPHA8_EXT = InternalFormat(0x803C)
    alias GL_ALPHA8_OES = InternalFormat(0x803C)
    alias GL_ALPHA12 = InternalFormat(0x803D)
    alias GL_ALPHA12_EXT = InternalFormat(0x803D)
    alias GL_ALPHA16 = InternalFormat(0x803E)
    alias GL_ALPHA16_EXT = InternalFormat(0x803E)
    alias GL_LUMINANCE4 = InternalFormat(0x803F)
    alias GL_LUMINANCE4_EXT = InternalFormat(0x803F)
    alias GL_LUMINANCE8 = InternalFormat(0x8040)
    alias GL_LUMINANCE8_EXT = InternalFormat(0x8040)
    alias GL_LUMINANCE8_OES = InternalFormat(0x8040)
    alias GL_LUMINANCE12 = InternalFormat(0x8041)
    alias GL_LUMINANCE12_EXT = InternalFormat(0x8041)
    alias GL_LUMINANCE16 = InternalFormat(0x8042)
    alias GL_LUMINANCE16_EXT = InternalFormat(0x8042)
    alias GL_LUMINANCE4_ALPHA4 = InternalFormat(0x8043)
    alias GL_LUMINANCE4_ALPHA4_EXT = InternalFormat(0x8043)
    alias GL_LUMINANCE4_ALPHA4_OES = InternalFormat(0x8043)
    alias GL_LUMINANCE6_ALPHA2 = InternalFormat(0x8044)
    alias GL_LUMINANCE6_ALPHA2_EXT = InternalFormat(0x8044)
    alias GL_LUMINANCE8_ALPHA8 = InternalFormat(0x8045)
    alias GL_LUMINANCE8_ALPHA8_EXT = InternalFormat(0x8045)
    alias GL_LUMINANCE8_ALPHA8_OES = InternalFormat(0x8045)
    alias GL_LUMINANCE12_ALPHA4 = InternalFormat(0x8046)
    alias GL_LUMINANCE12_ALPHA4_EXT = InternalFormat(0x8046)
    alias GL_LUMINANCE12_ALPHA12 = InternalFormat(0x8047)
    alias GL_LUMINANCE12_ALPHA12_EXT = InternalFormat(0x8047)
    alias GL_LUMINANCE16_ALPHA16 = InternalFormat(0x8048)
    alias GL_LUMINANCE16_ALPHA16_EXT = InternalFormat(0x8048)
    alias GL_INTENSITY = InternalFormat(0x8049)
    alias GL_INTENSITY4 = InternalFormat(0x804A)
    alias GL_INTENSITY4_EXT = InternalFormat(0x804A)
    alias GL_INTENSITY8 = InternalFormat(0x804B)
    alias GL_INTENSITY8_EXT = InternalFormat(0x804B)
    alias GL_INTENSITY12 = InternalFormat(0x804C)
    alias GL_INTENSITY12_EXT = InternalFormat(0x804C)
    alias GL_INTENSITY16 = InternalFormat(0x804D)
    alias GL_INTENSITY16_EXT = InternalFormat(0x804D)
    alias GL_RGB2_EXT = InternalFormat(0x804E)
    alias GL_RGB4 = InternalFormat(0x804F)
    alias GL_RGB4_EXT = InternalFormat(0x804F)
    alias GL_RGB5 = InternalFormat(0x8050)
    alias GL_RGB5_EXT = InternalFormat(0x8050)
    alias GL_RGB8 = InternalFormat(0x8051)
    alias GL_RGB8_EXT = InternalFormat(0x8051)
    alias GL_RGB8_OES = InternalFormat(0x8051)
    alias GL_RGB10 = InternalFormat(0x8052)
    alias GL_RGB10_EXT = InternalFormat(0x8052)
    alias GL_RGB12 = InternalFormat(0x8053)
    alias GL_RGB12_EXT = InternalFormat(0x8053)
    alias GL_RGB16 = InternalFormat(0x8054)
    alias GL_RGB16_EXT = InternalFormat(0x8054)
    alias GL_RGBA2 = InternalFormat(0x8055)
    alias GL_RGBA2_EXT = InternalFormat(0x8055)
    alias GL_RGBA4 = InternalFormat(0x8056)
    alias GL_RGBA4_EXT = InternalFormat(0x8056)
    alias GL_RGBA4_OES = InternalFormat(0x8056)
    alias GL_RGB5_A1 = InternalFormat(0x8057)
    alias GL_RGB5_A1_EXT = InternalFormat(0x8057)
    alias GL_RGB5_A1_OES = InternalFormat(0x8057)
    alias GL_RGBA8 = InternalFormat(0x8058)
    alias GL_RGBA8_EXT = InternalFormat(0x8058)
    alias GL_RGBA8_OES = InternalFormat(0x8058)
    alias GL_RGB10_A2 = InternalFormat(0x8059)
    alias GL_RGB10_A2_EXT = InternalFormat(0x8059)
    alias GL_RGBA12 = InternalFormat(0x805A)
    alias GL_RGBA12_EXT = InternalFormat(0x805A)
    alias GL_RGBA16 = InternalFormat(0x805B)
    alias GL_RGBA16_EXT = InternalFormat(0x805B)
    alias GL_DUAL_ALPHA4_SGIS = InternalFormat(0x8110)
    alias GL_DUAL_ALPHA8_SGIS = InternalFormat(0x8111)
    alias GL_DUAL_ALPHA12_SGIS = InternalFormat(0x8112)
    alias GL_DUAL_ALPHA16_SGIS = InternalFormat(0x8113)
    alias GL_DUAL_LUMINANCE4_SGIS = InternalFormat(0x8114)
    alias GL_DUAL_LUMINANCE8_SGIS = InternalFormat(0x8115)
    alias GL_DUAL_LUMINANCE12_SGIS = InternalFormat(0x8116)
    alias GL_DUAL_LUMINANCE16_SGIS = InternalFormat(0x8117)
    alias GL_DUAL_INTENSITY4_SGIS = InternalFormat(0x8118)
    alias GL_DUAL_INTENSITY8_SGIS = InternalFormat(0x8119)
    alias GL_DUAL_INTENSITY12_SGIS = InternalFormat(0x811A)
    alias GL_DUAL_INTENSITY16_SGIS = InternalFormat(0x811B)
    alias GL_DUAL_LUMINANCE_ALPHA4_SGIS = InternalFormat(0x811C)
    alias GL_DUAL_LUMINANCE_ALPHA8_SGIS = InternalFormat(0x811D)
    alias GL_QUAD_ALPHA4_SGIS = InternalFormat(0x811E)
    alias GL_QUAD_ALPHA8_SGIS = InternalFormat(0x811F)
    alias GL_QUAD_LUMINANCE4_SGIS = InternalFormat(0x8120)
    alias GL_QUAD_LUMINANCE8_SGIS = InternalFormat(0x8121)
    alias GL_QUAD_INTENSITY4_SGIS = InternalFormat(0x8122)
    alias GL_QUAD_INTENSITY8_SGIS = InternalFormat(0x8123)
    alias GL_DEPTH_COMPONENT16 = InternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_ARB = InternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_OES = InternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_SGIX = InternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT24 = InternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_ARB = InternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_OES = InternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_SGIX = InternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT32 = InternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_ARB = InternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_OES = InternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_SGIX = InternalFormat(0x81A7)
    alias GL_COMPRESSED_RED = InternalFormat(0x8225)
    alias GL_COMPRESSED_RG = InternalFormat(0x8226)
    alias GL_RG = InternalFormat(0x8227)
    alias GL_R8 = InternalFormat(0x8229)
    alias GL_R8_EXT = InternalFormat(0x8229)
    alias GL_R16 = InternalFormat(0x822A)
    alias GL_R16_EXT = InternalFormat(0x822A)
    alias GL_RG8 = InternalFormat(0x822B)
    alias GL_RG8_EXT = InternalFormat(0x822B)
    alias GL_RG16 = InternalFormat(0x822C)
    alias GL_RG16_EXT = InternalFormat(0x822C)
    alias GL_R16F = InternalFormat(0x822D)
    alias GL_R16F_EXT = InternalFormat(0x822D)
    alias GL_R32F = InternalFormat(0x822E)
    alias GL_R32F_EXT = InternalFormat(0x822E)
    alias GL_RG16F = InternalFormat(0x822F)
    alias GL_RG16F_EXT = InternalFormat(0x822F)
    alias GL_RG32F = InternalFormat(0x8230)
    alias GL_RG32F_EXT = InternalFormat(0x8230)
    alias GL_R8I = InternalFormat(0x8231)
    alias GL_R8UI = InternalFormat(0x8232)
    alias GL_R16I = InternalFormat(0x8233)
    alias GL_R16UI = InternalFormat(0x8234)
    alias GL_R32I = InternalFormat(0x8235)
    alias GL_R32UI = InternalFormat(0x8236)
    alias GL_RG8I = InternalFormat(0x8237)
    alias GL_RG8UI = InternalFormat(0x8238)
    alias GL_RG16I = InternalFormat(0x8239)
    alias GL_RG16UI = InternalFormat(0x823A)
    alias GL_RG32I = InternalFormat(0x823B)
    alias GL_RG32UI = InternalFormat(0x823C)
    alias GL_COMPRESSED_RGB_S3TC_DXT1_EXT = InternalFormat(0x83F0)
    alias GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = InternalFormat(0x83F1)
    alias GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = InternalFormat(0x83F2)
    alias GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = InternalFormat(0x83F2)
    alias GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = InternalFormat(0x83F3)
    alias GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = InternalFormat(0x83F3)
    alias GL_COMPRESSED_RGB = InternalFormat(0x84ED)
    alias GL_COMPRESSED_RGBA = InternalFormat(0x84EE)
    alias GL_DEPTH_STENCIL = InternalFormat(0x84F9)
    alias GL_DEPTH_STENCIL_EXT = InternalFormat(0x84F9)
    alias GL_DEPTH_STENCIL_NV = InternalFormat(0x84F9)
    alias GL_DEPTH_STENCIL_OES = InternalFormat(0x84F9)
    alias GL_DEPTH_STENCIL_MESA = InternalFormat(0x8750)
    alias GL_RGBA32F = InternalFormat(0x8814)
    alias GL_RGBA32F_ARB = InternalFormat(0x8814)
    alias GL_RGBA32F_EXT = InternalFormat(0x8814)
    alias GL_RGB32F = InternalFormat(0x8815)
    alias GL_RGB32F_ARB = InternalFormat(0x8815)
    alias GL_RGB32F_EXT = InternalFormat(0x8815)
    alias GL_RGBA16F = InternalFormat(0x881A)
    alias GL_RGBA16F_ARB = InternalFormat(0x881A)
    alias GL_RGBA16F_EXT = InternalFormat(0x881A)
    alias GL_RGB16F = InternalFormat(0x881B)
    alias GL_RGB16F_ARB = InternalFormat(0x881B)
    alias GL_RGB16F_EXT = InternalFormat(0x881B)
    alias GL_DEPTH24_STENCIL8 = InternalFormat(0x88F0)
    alias GL_DEPTH24_STENCIL8_EXT = InternalFormat(0x88F0)
    alias GL_DEPTH24_STENCIL8_OES = InternalFormat(0x88F0)
    alias GL_R11F_G11F_B10F = InternalFormat(0x8C3A)
    alias GL_R11F_G11F_B10F_APPLE = InternalFormat(0x8C3A)
    alias GL_R11F_G11F_B10F_EXT = InternalFormat(0x8C3A)
    alias GL_RGB9_E5 = InternalFormat(0x8C3D)
    alias GL_RGB9_E5_APPLE = InternalFormat(0x8C3D)
    alias GL_RGB9_E5_EXT = InternalFormat(0x8C3D)
    alias GL_SRGB = InternalFormat(0x8C40)
    alias GL_SRGB_EXT = InternalFormat(0x8C40)
    alias GL_SRGB8 = InternalFormat(0x8C41)
    alias GL_SRGB8_EXT = InternalFormat(0x8C41)
    alias GL_SRGB8_NV = InternalFormat(0x8C41)
    alias GL_SRGB_ALPHA = InternalFormat(0x8C42)
    alias GL_SRGB_ALPHA_EXT = InternalFormat(0x8C42)
    alias GL_SRGB8_ALPHA8 = InternalFormat(0x8C43)
    alias GL_SRGB8_ALPHA8_EXT = InternalFormat(0x8C43)
    alias GL_COMPRESSED_SRGB = InternalFormat(0x8C48)
    alias GL_COMPRESSED_SRGB_ALPHA = InternalFormat(0x8C49)
    alias GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = InternalFormat(0x8C4C)
    alias GL_COMPRESSED_SRGB_S3TC_DXT1_NV = InternalFormat(0x8C4C)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = InternalFormat(0x8C4D)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = InternalFormat(0x8C4D)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = InternalFormat(0x8C4E)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = InternalFormat(0x8C4E)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = InternalFormat(0x8C4F)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = InternalFormat(0x8C4F)
    alias GL_DEPTH_COMPONENT32F = InternalFormat(0x8CAC)
    alias GL_DEPTH32F_STENCIL8 = InternalFormat(0x8CAD)
    alias GL_STENCIL_INDEX1 = InternalFormat(0x8D46)
    alias GL_STENCIL_INDEX1_EXT = InternalFormat(0x8D46)
    alias GL_STENCIL_INDEX1_OES = InternalFormat(0x8D46)
    alias GL_STENCIL_INDEX4 = InternalFormat(0x8D47)
    alias GL_STENCIL_INDEX4_EXT = InternalFormat(0x8D47)
    alias GL_STENCIL_INDEX4_OES = InternalFormat(0x8D47)
    alias GL_STENCIL_INDEX8 = InternalFormat(0x8D48)
    alias GL_STENCIL_INDEX8_EXT = InternalFormat(0x8D48)
    alias GL_STENCIL_INDEX8_OES = InternalFormat(0x8D48)
    alias GL_STENCIL_INDEX16 = InternalFormat(0x8D49)
    alias GL_STENCIL_INDEX16_EXT = InternalFormat(0x8D49)
    alias GL_RGB565_OES = InternalFormat(0x8D62)
    alias GL_RGB565 = InternalFormat(0x8D62)
    alias GL_ETC1_RGB8_OES = InternalFormat(0x8D64)
    alias GL_RGBA32UI = InternalFormat(0x8D70)
    alias GL_RGBA32UI_EXT = InternalFormat(0x8D70)
    alias GL_RGB32UI = InternalFormat(0x8D71)
    alias GL_RGB32UI_EXT = InternalFormat(0x8D71)
    alias GL_ALPHA32UI_EXT = InternalFormat(0x8D72)
    alias GL_INTENSITY32UI_EXT = InternalFormat(0x8D73)
    alias GL_LUMINANCE32UI_EXT = InternalFormat(0x8D74)
    alias GL_LUMINANCE_ALPHA32UI_EXT = InternalFormat(0x8D75)
    alias GL_RGBA16UI = InternalFormat(0x8D76)
    alias GL_RGBA16UI_EXT = InternalFormat(0x8D76)
    alias GL_RGB16UI = InternalFormat(0x8D77)
    alias GL_RGB16UI_EXT = InternalFormat(0x8D77)
    alias GL_ALPHA16UI_EXT = InternalFormat(0x8D78)
    alias GL_INTENSITY16UI_EXT = InternalFormat(0x8D79)
    alias GL_LUMINANCE16UI_EXT = InternalFormat(0x8D7A)
    alias GL_LUMINANCE_ALPHA16UI_EXT = InternalFormat(0x8D7B)
    alias GL_RGBA8UI = InternalFormat(0x8D7C)
    alias GL_RGBA8UI_EXT = InternalFormat(0x8D7C)
    alias GL_RGB8UI = InternalFormat(0x8D7D)
    alias GL_RGB8UI_EXT = InternalFormat(0x8D7D)
    alias GL_ALPHA8UI_EXT = InternalFormat(0x8D7E)
    alias GL_INTENSITY8UI_EXT = InternalFormat(0x8D7F)
    alias GL_LUMINANCE8UI_EXT = InternalFormat(0x8D80)
    alias GL_LUMINANCE_ALPHA8UI_EXT = InternalFormat(0x8D81)
    alias GL_RGBA32I = InternalFormat(0x8D82)
    alias GL_RGBA32I_EXT = InternalFormat(0x8D82)
    alias GL_RGB32I = InternalFormat(0x8D83)
    alias GL_RGB32I_EXT = InternalFormat(0x8D83)
    alias GL_ALPHA32I_EXT = InternalFormat(0x8D84)
    alias GL_INTENSITY32I_EXT = InternalFormat(0x8D85)
    alias GL_LUMINANCE32I_EXT = InternalFormat(0x8D86)
    alias GL_LUMINANCE_ALPHA32I_EXT = InternalFormat(0x8D87)
    alias GL_RGBA16I = InternalFormat(0x8D88)
    alias GL_RGBA16I_EXT = InternalFormat(0x8D88)
    alias GL_RGB16I = InternalFormat(0x8D89)
    alias GL_RGB16I_EXT = InternalFormat(0x8D89)
    alias GL_ALPHA16I_EXT = InternalFormat(0x8D8A)
    alias GL_INTENSITY16I_EXT = InternalFormat(0x8D8B)
    alias GL_LUMINANCE16I_EXT = InternalFormat(0x8D8C)
    alias GL_LUMINANCE_ALPHA16I_EXT = InternalFormat(0x8D8D)
    alias GL_RGBA8I = InternalFormat(0x8D8E)
    alias GL_RGBA8I_EXT = InternalFormat(0x8D8E)
    alias GL_RGB8I = InternalFormat(0x8D8F)
    alias GL_RGB8I_EXT = InternalFormat(0x8D8F)
    alias GL_ALPHA8I_EXT = InternalFormat(0x8D90)
    alias GL_INTENSITY8I_EXT = InternalFormat(0x8D91)
    alias GL_LUMINANCE8I_EXT = InternalFormat(0x8D92)
    alias GL_LUMINANCE_ALPHA8I_EXT = InternalFormat(0x8D93)
    alias GL_DEPTH_COMPONENT32F_NV = InternalFormat(0x8DAB)
    alias GL_DEPTH32F_STENCIL8_NV = InternalFormat(0x8DAC)
    alias GL_COMPRESSED_RED_RGTC1 = InternalFormat(0x8DBB)
    alias GL_COMPRESSED_RED_RGTC1_EXT = InternalFormat(0x8DBB)
    alias GL_COMPRESSED_SIGNED_RED_RGTC1 = InternalFormat(0x8DBC)
    alias GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = InternalFormat(0x8DBC)
    alias GL_COMPRESSED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBD)
    alias GL_COMPRESSED_RG_RGTC2 = InternalFormat(0x8DBD)
    alias GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBE)
    alias GL_COMPRESSED_SIGNED_RG_RGTC2 = InternalFormat(0x8DBE)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM = InternalFormat(0x8E8C)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = InternalFormat(0x8E8C)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM_EXT = InternalFormat(0x8E8C)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = InternalFormat(0x8E8D)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = InternalFormat(0x8E8D)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = InternalFormat(0x8E8D)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = InternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = InternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = InternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = InternalFormat(0x8E8F)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = InternalFormat(0x8E8F)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = InternalFormat(0x8E8F)
    alias GL_R8_SNORM = InternalFormat(0x8F94)
    alias GL_RG8_SNORM = InternalFormat(0x8F95)
    alias GL_RGB8_SNORM = InternalFormat(0x8F96)
    alias GL_RGBA8_SNORM = InternalFormat(0x8F97)
    alias GL_R16_SNORM = InternalFormat(0x8F98)
    alias GL_R16_SNORM_EXT = InternalFormat(0x8F98)
    alias GL_RG16_SNORM = InternalFormat(0x8F99)
    alias GL_RG16_SNORM_EXT = InternalFormat(0x8F99)
    alias GL_RGB16_SNORM = InternalFormat(0x8F9A)
    alias GL_RGB16_SNORM_EXT = InternalFormat(0x8F9A)
    alias GL_RGBA16_SNORM = InternalFormat(0x8F9B)
    alias GL_RGBA16_SNORM_EXT = InternalFormat(0x8F9B)
    alias GL_SR8_EXT = InternalFormat(0x8FBD)
    alias GL_SRG8_EXT = InternalFormat(0x8FBE)
    alias GL_RGB10_A2UI = InternalFormat(0x906F)
    alias GL_COMPRESSED_R11_EAC = InternalFormat(0x9270)
    alias GL_COMPRESSED_R11_EAC_OES = InternalFormat(0x9270)
    alias GL_COMPRESSED_SIGNED_R11_EAC = InternalFormat(0x9271)
    alias GL_COMPRESSED_SIGNED_R11_EAC_OES = InternalFormat(0x9271)
    alias GL_COMPRESSED_RG11_EAC = InternalFormat(0x9272)
    alias GL_COMPRESSED_RG11_EAC_OES = InternalFormat(0x9272)
    alias GL_COMPRESSED_SIGNED_RG11_EAC = InternalFormat(0x9273)
    alias GL_COMPRESSED_SIGNED_RG11_EAC_OES = InternalFormat(0x9273)
    alias GL_COMPRESSED_RGB8_ETC2 = InternalFormat(0x9274)
    alias GL_COMPRESSED_RGB8_ETC2_OES = InternalFormat(0x9274)
    alias GL_COMPRESSED_SRGB8_ETC2 = InternalFormat(0x9275)
    alias GL_COMPRESSED_SRGB8_ETC2_OES = InternalFormat(0x9275)
    alias GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9276)
    alias GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9276)
    alias GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9277)
    alias GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9277)
    alias GL_COMPRESSED_RGBA8_ETC2_EAC = InternalFormat(0x9278)
    alias GL_COMPRESSED_RGBA8_ETC2_EAC_OES = InternalFormat(0x9278)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = InternalFormat(0x9279)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = InternalFormat(0x9279)
    alias GL_COMPRESSED_RGBA_ASTC_4x4 = InternalFormat(0x93B0)
    alias GL_COMPRESSED_RGBA_ASTC_4x4_KHR = InternalFormat(0x93B0)
    alias GL_COMPRESSED_RGBA_ASTC_5x4 = InternalFormat(0x93B1)
    alias GL_COMPRESSED_RGBA_ASTC_5x4_KHR = InternalFormat(0x93B1)
    alias GL_COMPRESSED_RGBA_ASTC_5x5 = InternalFormat(0x93B2)
    alias GL_COMPRESSED_RGBA_ASTC_5x5_KHR = InternalFormat(0x93B2)
    alias GL_COMPRESSED_RGBA_ASTC_6x5 = InternalFormat(0x93B3)
    alias GL_COMPRESSED_RGBA_ASTC_6x5_KHR = InternalFormat(0x93B3)
    alias GL_COMPRESSED_RGBA_ASTC_6x6 = InternalFormat(0x93B4)
    alias GL_COMPRESSED_RGBA_ASTC_6x6_KHR = InternalFormat(0x93B4)
    alias GL_COMPRESSED_RGBA_ASTC_8x5 = InternalFormat(0x93B5)
    alias GL_COMPRESSED_RGBA_ASTC_8x5_KHR = InternalFormat(0x93B5)
    alias GL_COMPRESSED_RGBA_ASTC_8x6 = InternalFormat(0x93B6)
    alias GL_COMPRESSED_RGBA_ASTC_8x6_KHR = InternalFormat(0x93B6)
    alias GL_COMPRESSED_RGBA_ASTC_8x8 = InternalFormat(0x93B7)
    alias GL_COMPRESSED_RGBA_ASTC_8x8_KHR = InternalFormat(0x93B7)
    alias GL_COMPRESSED_RGBA_ASTC_10x5 = InternalFormat(0x93B8)
    alias GL_COMPRESSED_RGBA_ASTC_10x5_KHR = InternalFormat(0x93B8)
    alias GL_COMPRESSED_RGBA_ASTC_10x6 = InternalFormat(0x93B9)
    alias GL_COMPRESSED_RGBA_ASTC_10x6_KHR = InternalFormat(0x93B9)
    alias GL_COMPRESSED_RGBA_ASTC_10x8 = InternalFormat(0x93BA)
    alias GL_COMPRESSED_RGBA_ASTC_10x8_KHR = InternalFormat(0x93BA)
    alias GL_COMPRESSED_RGBA_ASTC_10x10 = InternalFormat(0x93BB)
    alias GL_COMPRESSED_RGBA_ASTC_10x10_KHR = InternalFormat(0x93BB)
    alias GL_COMPRESSED_RGBA_ASTC_12x10 = InternalFormat(0x93BC)
    alias GL_COMPRESSED_RGBA_ASTC_12x10_KHR = InternalFormat(0x93BC)
    alias GL_COMPRESSED_RGBA_ASTC_12x12 = InternalFormat(0x93BD)
    alias GL_COMPRESSED_RGBA_ASTC_12x12_KHR = InternalFormat(0x93BD)
    alias GL_COMPRESSED_RGBA_ASTC_3x3x3_OES = InternalFormat(0x93C0)
    alias GL_COMPRESSED_RGBA_ASTC_4x3x3_OES = InternalFormat(0x93C1)
    alias GL_COMPRESSED_RGBA_ASTC_4x4x3_OES = InternalFormat(0x93C2)
    alias GL_COMPRESSED_RGBA_ASTC_4x4x4_OES = InternalFormat(0x93C3)
    alias GL_COMPRESSED_RGBA_ASTC_5x4x4_OES = InternalFormat(0x93C4)
    alias GL_COMPRESSED_RGBA_ASTC_5x5x4_OES = InternalFormat(0x93C5)
    alias GL_COMPRESSED_RGBA_ASTC_5x5x5_OES = InternalFormat(0x93C6)
    alias GL_COMPRESSED_RGBA_ASTC_6x5x5_OES = InternalFormat(0x93C7)
    alias GL_COMPRESSED_RGBA_ASTC_6x6x5_OES = InternalFormat(0x93C8)
    alias GL_COMPRESSED_RGBA_ASTC_6x6x6_OES = InternalFormat(0x93C9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = InternalFormat(0x93D0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = InternalFormat(0x93D0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = InternalFormat(0x93D1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = InternalFormat(0x93D1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = InternalFormat(0x93D2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = InternalFormat(0x93D2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = InternalFormat(0x93D3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = InternalFormat(0x93D3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = InternalFormat(0x93D4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = InternalFormat(0x93D4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = InternalFormat(0x93D5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = InternalFormat(0x93D5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = InternalFormat(0x93D6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = InternalFormat(0x93D6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = InternalFormat(0x93D7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = InternalFormat(0x93D7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = InternalFormat(0x93D8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = InternalFormat(0x93D8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = InternalFormat(0x93D9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = InternalFormat(0x93D9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = InternalFormat(0x93DA)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = InternalFormat(0x93DA)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = InternalFormat(0x93DB)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = InternalFormat(0x93DB)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = InternalFormat(0x93DC)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = InternalFormat(0x93DC)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = InternalFormat(0x93DD)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = InternalFormat(0x93DD)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = InternalFormat(0x93E0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = InternalFormat(0x93E1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = InternalFormat(0x93E2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = InternalFormat(0x93E3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = InternalFormat(0x93E4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = InternalFormat(0x93E5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = InternalFormat(0x93E6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = InternalFormat(0x93E7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = InternalFormat(0x93E8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = InternalFormat(0x93E9)


@fieldwise_init
@register_passable("trivial")
struct InternalFormatPName:
    var value: GLenum

    alias GL_SAMPLES = InternalFormatPName(0x80A9)
    alias GL_GENERATE_MIPMAP = InternalFormatPName(0x8191)
    alias GL_INTERNALFORMAT_SUPPORTED = InternalFormatPName(0x826F)
    alias GL_INTERNALFORMAT_PREFERRED = InternalFormatPName(0x8270)
    alias GL_INTERNALFORMAT_RED_SIZE = InternalFormatPName(0x8271)
    alias GL_INTERNALFORMAT_GREEN_SIZE = InternalFormatPName(0x8272)
    alias GL_INTERNALFORMAT_BLUE_SIZE = InternalFormatPName(0x8273)
    alias GL_INTERNALFORMAT_ALPHA_SIZE = InternalFormatPName(0x8274)
    alias GL_INTERNALFORMAT_DEPTH_SIZE = InternalFormatPName(0x8275)
    alias GL_INTERNALFORMAT_STENCIL_SIZE = InternalFormatPName(0x8276)
    alias GL_INTERNALFORMAT_SHARED_SIZE = InternalFormatPName(0x8277)
    alias GL_INTERNALFORMAT_RED_TYPE = InternalFormatPName(0x8278)
    alias GL_INTERNALFORMAT_GREEN_TYPE = InternalFormatPName(0x8279)
    alias GL_INTERNALFORMAT_BLUE_TYPE = InternalFormatPName(0x827A)
    alias GL_INTERNALFORMAT_ALPHA_TYPE = InternalFormatPName(0x827B)
    alias GL_INTERNALFORMAT_DEPTH_TYPE = InternalFormatPName(0x827C)
    alias GL_INTERNALFORMAT_STENCIL_TYPE = InternalFormatPName(0x827D)
    alias GL_MAX_WIDTH = InternalFormatPName(0x827E)
    alias GL_MAX_HEIGHT = InternalFormatPName(0x827F)
    alias GL_MAX_DEPTH = InternalFormatPName(0x8280)
    alias GL_MAX_LAYERS = InternalFormatPName(0x8281)
    alias GL_COLOR_COMPONENTS = InternalFormatPName(0x8283)
    alias GL_COLOR_RENDERABLE = InternalFormatPName(0x8286)
    alias GL_DEPTH_RENDERABLE = InternalFormatPName(0x8287)
    alias GL_STENCIL_RENDERABLE = InternalFormatPName(0x8288)
    alias GL_FRAMEBUFFER_RENDERABLE = InternalFormatPName(0x8289)
    alias GL_FRAMEBUFFER_RENDERABLE_LAYERED = InternalFormatPName(0x828A)
    alias GL_FRAMEBUFFER_BLEND = InternalFormatPName(0x828B)
    alias GL_READ_PIXELS = InternalFormatPName(0x828C)
    alias GL_READ_PIXELS_FORMAT = InternalFormatPName(0x828D)
    alias GL_READ_PIXELS_TYPE = InternalFormatPName(0x828E)
    alias GL_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x828F)
    alias GL_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8290)
    alias GL_GET_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x8291)
    alias GL_GET_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8292)
    alias GL_MIPMAP = InternalFormatPName(0x8293)
    alias GL_AUTO_GENERATE_MIPMAP = InternalFormatPName(0x8295)
    alias GL_COLOR_ENCODING = InternalFormatPName(0x8296)
    alias GL_SRGB_READ = InternalFormatPName(0x8297)
    alias GL_SRGB_WRITE = InternalFormatPName(0x8298)
    alias GL_FILTER = InternalFormatPName(0x829A)
    alias GL_VERTEX_TEXTURE = InternalFormatPName(0x829B)
    alias GL_TESS_CONTROL_TEXTURE = InternalFormatPName(0x829C)
    alias GL_TESS_EVALUATION_TEXTURE = InternalFormatPName(0x829D)
    alias GL_GEOMETRY_TEXTURE = InternalFormatPName(0x829E)
    alias GL_FRAGMENT_TEXTURE = InternalFormatPName(0x829F)
    alias GL_COMPUTE_TEXTURE = InternalFormatPName(0x82A0)
    alias GL_TEXTURE_SHADOW = InternalFormatPName(0x82A1)
    alias GL_TEXTURE_GATHER = InternalFormatPName(0x82A2)
    alias GL_TEXTURE_GATHER_SHADOW = InternalFormatPName(0x82A3)
    alias GL_SHADER_IMAGE_LOAD = InternalFormatPName(0x82A4)
    alias GL_SHADER_IMAGE_STORE = InternalFormatPName(0x82A5)
    alias GL_SHADER_IMAGE_ATOMIC = InternalFormatPName(0x82A6)
    alias GL_IMAGE_TEXEL_SIZE = InternalFormatPName(0x82A7)
    alias GL_IMAGE_COMPATIBILITY_CLASS = InternalFormatPName(0x82A8)
    alias GL_IMAGE_PIXEL_FORMAT = InternalFormatPName(0x82A9)
    alias GL_IMAGE_PIXEL_TYPE = InternalFormatPName(0x82AA)
    alias GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = InternalFormatPName(0x82AC)
    alias GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = InternalFormatPName(0x82AD)
    alias GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = InternalFormatPName(0x82AE)
    alias GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = InternalFormatPName(0x82AF)
    alias GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = InternalFormatPName(0x82B1)
    alias GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = InternalFormatPName(0x82B2)
    alias GL_TEXTURE_COMPRESSED_BLOCK_SIZE = InternalFormatPName(0x82B3)
    alias GL_CLEAR_BUFFER = InternalFormatPName(0x82B4)
    alias GL_TEXTURE_VIEW = InternalFormatPName(0x82B5)
    alias GL_VIEW_COMPATIBILITY_CLASS = InternalFormatPName(0x82B6)
    alias GL_TEXTURE_COMPRESSED = InternalFormatPName(0x86A1)
    alias GL_NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT = InternalFormatPName(0x8F6E)
    alias GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = InternalFormatPName(0x90C7)
    alias GL_CLEAR_TEXTURE = InternalFormatPName(0x9365)
    alias GL_NUM_SAMPLE_COUNTS = InternalFormatPName(0x9380)


@fieldwise_init
@register_passable("trivial")
struct InvalidateFramebufferAttachment:
    var value: GLenum

    alias GL_COLOR = InvalidateFramebufferAttachment(0x1800)
    alias GL_DEPTH = InvalidateFramebufferAttachment(0x1801)
    alias GL_STENCIL = InvalidateFramebufferAttachment(0x1802)
    alias GL_DEPTH_STENCIL_ATTACHMENT = InvalidateFramebufferAttachment(0x821A)
    alias GL_COLOR_ATTACHMENT0 = InvalidateFramebufferAttachment(0x8CE0)
    alias GL_COLOR_ATTACHMENT0_EXT = InvalidateFramebufferAttachment(0x8CE0)
    alias GL_COLOR_ATTACHMENT0_NV = InvalidateFramebufferAttachment(0x8CE0)
    alias GL_COLOR_ATTACHMENT0_OES = InvalidateFramebufferAttachment(0x8CE0)
    alias GL_COLOR_ATTACHMENT1 = InvalidateFramebufferAttachment(0x8CE1)
    alias GL_COLOR_ATTACHMENT1_EXT = InvalidateFramebufferAttachment(0x8CE1)
    alias GL_COLOR_ATTACHMENT1_NV = InvalidateFramebufferAttachment(0x8CE1)
    alias GL_COLOR_ATTACHMENT2 = InvalidateFramebufferAttachment(0x8CE2)
    alias GL_COLOR_ATTACHMENT2_EXT = InvalidateFramebufferAttachment(0x8CE2)
    alias GL_COLOR_ATTACHMENT2_NV = InvalidateFramebufferAttachment(0x8CE2)
    alias GL_COLOR_ATTACHMENT3 = InvalidateFramebufferAttachment(0x8CE3)
    alias GL_COLOR_ATTACHMENT3_EXT = InvalidateFramebufferAttachment(0x8CE3)
    alias GL_COLOR_ATTACHMENT3_NV = InvalidateFramebufferAttachment(0x8CE3)
    alias GL_COLOR_ATTACHMENT4 = InvalidateFramebufferAttachment(0x8CE4)
    alias GL_COLOR_ATTACHMENT4_EXT = InvalidateFramebufferAttachment(0x8CE4)
    alias GL_COLOR_ATTACHMENT4_NV = InvalidateFramebufferAttachment(0x8CE4)
    alias GL_COLOR_ATTACHMENT5 = InvalidateFramebufferAttachment(0x8CE5)
    alias GL_COLOR_ATTACHMENT5_EXT = InvalidateFramebufferAttachment(0x8CE5)
    alias GL_COLOR_ATTACHMENT5_NV = InvalidateFramebufferAttachment(0x8CE5)
    alias GL_COLOR_ATTACHMENT6 = InvalidateFramebufferAttachment(0x8CE6)
    alias GL_COLOR_ATTACHMENT6_EXT = InvalidateFramebufferAttachment(0x8CE6)
    alias GL_COLOR_ATTACHMENT6_NV = InvalidateFramebufferAttachment(0x8CE6)
    alias GL_COLOR_ATTACHMENT7 = InvalidateFramebufferAttachment(0x8CE7)
    alias GL_COLOR_ATTACHMENT7_EXT = InvalidateFramebufferAttachment(0x8CE7)
    alias GL_COLOR_ATTACHMENT7_NV = InvalidateFramebufferAttachment(0x8CE7)
    alias GL_COLOR_ATTACHMENT8 = InvalidateFramebufferAttachment(0x8CE8)
    alias GL_COLOR_ATTACHMENT8_EXT = InvalidateFramebufferAttachment(0x8CE8)
    alias GL_COLOR_ATTACHMENT8_NV = InvalidateFramebufferAttachment(0x8CE8)
    alias GL_COLOR_ATTACHMENT9 = InvalidateFramebufferAttachment(0x8CE9)
    alias GL_COLOR_ATTACHMENT9_EXT = InvalidateFramebufferAttachment(0x8CE9)
    alias GL_COLOR_ATTACHMENT9_NV = InvalidateFramebufferAttachment(0x8CE9)
    alias GL_COLOR_ATTACHMENT10 = InvalidateFramebufferAttachment(0x8CEA)
    alias GL_COLOR_ATTACHMENT10_EXT = InvalidateFramebufferAttachment(0x8CEA)
    alias GL_COLOR_ATTACHMENT10_NV = InvalidateFramebufferAttachment(0x8CEA)
    alias GL_COLOR_ATTACHMENT11 = InvalidateFramebufferAttachment(0x8CEB)
    alias GL_COLOR_ATTACHMENT11_EXT = InvalidateFramebufferAttachment(0x8CEB)
    alias GL_COLOR_ATTACHMENT11_NV = InvalidateFramebufferAttachment(0x8CEB)
    alias GL_COLOR_ATTACHMENT12 = InvalidateFramebufferAttachment(0x8CEC)
    alias GL_COLOR_ATTACHMENT12_EXT = InvalidateFramebufferAttachment(0x8CEC)
    alias GL_COLOR_ATTACHMENT12_NV = InvalidateFramebufferAttachment(0x8CEC)
    alias GL_COLOR_ATTACHMENT13 = InvalidateFramebufferAttachment(0x8CED)
    alias GL_COLOR_ATTACHMENT13_EXT = InvalidateFramebufferAttachment(0x8CED)
    alias GL_COLOR_ATTACHMENT13_NV = InvalidateFramebufferAttachment(0x8CED)
    alias GL_COLOR_ATTACHMENT14 = InvalidateFramebufferAttachment(0x8CEE)
    alias GL_COLOR_ATTACHMENT14_EXT = InvalidateFramebufferAttachment(0x8CEE)
    alias GL_COLOR_ATTACHMENT14_NV = InvalidateFramebufferAttachment(0x8CEE)
    alias GL_COLOR_ATTACHMENT15 = InvalidateFramebufferAttachment(0x8CEF)
    alias GL_COLOR_ATTACHMENT15_EXT = InvalidateFramebufferAttachment(0x8CEF)
    alias GL_COLOR_ATTACHMENT15_NV = InvalidateFramebufferAttachment(0x8CEF)
    alias GL_COLOR_ATTACHMENT16 = InvalidateFramebufferAttachment(0x8CF0)
    alias GL_COLOR_ATTACHMENT17 = InvalidateFramebufferAttachment(0x8CF1)
    alias GL_COLOR_ATTACHMENT18 = InvalidateFramebufferAttachment(0x8CF2)
    alias GL_COLOR_ATTACHMENT19 = InvalidateFramebufferAttachment(0x8CF3)
    alias GL_COLOR_ATTACHMENT20 = InvalidateFramebufferAttachment(0x8CF4)
    alias GL_COLOR_ATTACHMENT21 = InvalidateFramebufferAttachment(0x8CF5)
    alias GL_COLOR_ATTACHMENT22 = InvalidateFramebufferAttachment(0x8CF6)
    alias GL_COLOR_ATTACHMENT23 = InvalidateFramebufferAttachment(0x8CF7)
    alias GL_COLOR_ATTACHMENT24 = InvalidateFramebufferAttachment(0x8CF8)
    alias GL_COLOR_ATTACHMENT25 = InvalidateFramebufferAttachment(0x8CF9)
    alias GL_COLOR_ATTACHMENT26 = InvalidateFramebufferAttachment(0x8CFA)
    alias GL_COLOR_ATTACHMENT27 = InvalidateFramebufferAttachment(0x8CFB)
    alias GL_COLOR_ATTACHMENT28 = InvalidateFramebufferAttachment(0x8CFC)
    alias GL_COLOR_ATTACHMENT29 = InvalidateFramebufferAttachment(0x8CFD)
    alias GL_COLOR_ATTACHMENT30 = InvalidateFramebufferAttachment(0x8CFE)
    alias GL_COLOR_ATTACHMENT31 = InvalidateFramebufferAttachment(0x8CFF)
    alias GL_DEPTH_ATTACHMENT = InvalidateFramebufferAttachment(0x8D00)
    alias GL_DEPTH_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D00)
    alias GL_DEPTH_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D00)
    alias GL_STENCIL_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D20)
    alias GL_STENCIL_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D20)


@fieldwise_init
@register_passable("trivial")
struct LogicOp:
    var value: GLenum

    alias GL_CLEAR = LogicOp(0x1500)
    alias GL_AND = LogicOp(0x1501)
    alias GL_AND_REVERSE = LogicOp(0x1502)
    alias GL_COPY = LogicOp(0x1503)
    alias GL_AND_INVERTED = LogicOp(0x1504)
    alias GL_NOOP = LogicOp(0x1505)
    alias GL_XOR = LogicOp(0x1506)
    alias GL_OR = LogicOp(0x1507)
    alias GL_NOR = LogicOp(0x1508)
    alias GL_EQUIV = LogicOp(0x1509)
    alias GL_INVERT = LogicOp(0x150A)
    alias GL_OR_REVERSE = LogicOp(0x150B)
    alias GL_COPY_INVERTED = LogicOp(0x150C)
    alias GL_OR_INVERTED = LogicOp(0x150D)
    alias GL_NAND = LogicOp(0x150E)
    alias GL_SET = LogicOp(0x150F)


@fieldwise_init
@register_passable("trivial")
struct MapBufferAccessMask:
    var value: GLbitfield

    alias GL_MAP_READ_BIT = MapBufferAccessMask(0x0001)
    alias GL_MAP_READ_BIT_EXT = MapBufferAccessMask(0x0001)
    alias GL_MAP_WRITE_BIT = MapBufferAccessMask(0x0002)
    alias GL_MAP_WRITE_BIT_EXT = MapBufferAccessMask(0x0002)
    alias GL_MAP_INVALIDATE_RANGE_BIT = MapBufferAccessMask(0x0004)
    alias GL_MAP_INVALIDATE_RANGE_BIT_EXT = MapBufferAccessMask(0x0004)
    alias GL_MAP_INVALIDATE_BUFFER_BIT = MapBufferAccessMask(0x0008)
    alias GL_MAP_INVALIDATE_BUFFER_BIT_EXT = MapBufferAccessMask(0x0008)
    alias GL_MAP_FLUSH_EXPLICIT_BIT = MapBufferAccessMask(0x0010)
    alias GL_MAP_FLUSH_EXPLICIT_BIT_EXT = MapBufferAccessMask(0x0010)
    alias GL_MAP_UNSYNCHRONIZED_BIT = MapBufferAccessMask(0x0020)
    alias GL_MAP_UNSYNCHRONIZED_BIT_EXT = MapBufferAccessMask(0x0020)
    alias GL_MAP_PERSISTENT_BIT = MapBufferAccessMask(0x0040)
    alias GL_MAP_PERSISTENT_BIT_EXT = MapBufferAccessMask(0x0040)
    alias GL_MAP_COHERENT_BIT = MapBufferAccessMask(0x0080)
    alias GL_MAP_COHERENT_BIT_EXT = MapBufferAccessMask(0x0080)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MapQuery:
    var value: GLenum

    alias GL_COEFF = MapQuery(0x0A00)
    alias GL_ORDER = MapQuery(0x0A01)
    alias GL_DOMAIN = MapQuery(0x0A02)


@fieldwise_init
@register_passable("trivial")
struct MapTarget:
    var value: GLenum

    alias GL_MAP1_COLOR_4 = MapTarget(0x0D90)
    alias GL_MAP1_INDEX = MapTarget(0x0D91)
    alias GL_MAP1_NORMAL = MapTarget(0x0D92)
    alias GL_MAP1_TEXTURE_COORD_1 = MapTarget(0x0D93)
    alias GL_MAP1_TEXTURE_COORD_2 = MapTarget(0x0D94)
    alias GL_MAP1_TEXTURE_COORD_3 = MapTarget(0x0D95)
    alias GL_MAP1_TEXTURE_COORD_4 = MapTarget(0x0D96)
    alias GL_MAP1_VERTEX_3 = MapTarget(0x0D97)
    alias GL_MAP1_VERTEX_4 = MapTarget(0x0D98)
    alias GL_MAP2_COLOR_4 = MapTarget(0x0DB0)
    alias GL_MAP2_INDEX = MapTarget(0x0DB1)
    alias GL_MAP2_NORMAL = MapTarget(0x0DB2)
    alias GL_MAP2_TEXTURE_COORD_1 = MapTarget(0x0DB3)
    alias GL_MAP2_TEXTURE_COORD_2 = MapTarget(0x0DB4)
    alias GL_MAP2_TEXTURE_COORD_3 = MapTarget(0x0DB5)
    alias GL_MAP2_TEXTURE_COORD_4 = MapTarget(0x0DB6)
    alias GL_MAP2_VERTEX_3 = MapTarget(0x0DB7)
    alias GL_MAP2_VERTEX_4 = MapTarget(0x0DB8)
    alias GL_GEOMETRY_DEFORMATION_SGIX = MapTarget(0x8194)
    alias GL_TEXTURE_DEFORMATION_SGIX = MapTarget(0x8195)


@fieldwise_init
@register_passable("trivial")
struct MemoryBarrierMask:
    var value: GLbitfield

    alias GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000001)
    alias GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000001)
    alias GL_ELEMENT_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000002)
    alias GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000002)
    alias GL_UNIFORM_BARRIER_BIT = MemoryBarrierMask(0x00000004)
    alias GL_UNIFORM_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000004)
    alias GL_TEXTURE_FETCH_BARRIER_BIT = MemoryBarrierMask(0x00000008)
    alias GL_TEXTURE_FETCH_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000008)
    alias GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = MemoryBarrierMask(0x00000010)
    alias GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = MemoryBarrierMask(0x00000020)
    alias GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000020)
    alias GL_COMMAND_BARRIER_BIT = MemoryBarrierMask(0x00000040)
    alias GL_COMMAND_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000040)
    alias GL_PIXEL_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000080)
    alias GL_PIXEL_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000080)
    alias GL_TEXTURE_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000100)
    alias GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000100)
    alias GL_BUFFER_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000200)
    alias GL_BUFFER_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000200)
    alias GL_FRAMEBUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000400)
    alias GL_FRAMEBUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000400)
    alias GL_TRANSFORM_FEEDBACK_BARRIER_BIT = MemoryBarrierMask(0x00000800)
    alias GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000800)
    alias GL_ATOMIC_COUNTER_BARRIER_BIT = MemoryBarrierMask(0x00001000)
    alias GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00001000)
    alias GL_SHADER_STORAGE_BARRIER_BIT = MemoryBarrierMask(0x00002000)
    alias GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00004000)
    alias GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00004000)
    alias GL_QUERY_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00008000)
    alias GL_ALL_BARRIER_BITS = MemoryBarrierMask(0xFFFFFFFF)
    alias GL_ALL_BARRIER_BITS_EXT = MemoryBarrierMask(0xFFFFFFFF)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MinmaxTarget:
    var value: GLenum

    alias GL_MINMAX = MinmaxTarget(0x802E)


@fieldwise_init
@register_passable("trivial")
struct NormalPointerType:
    var value: GLenum

    alias GL_BYTE = NormalPointerType(0x1400)
    alias GL_SHORT = NormalPointerType(0x1402)
    alias GL_INT = NormalPointerType(0x1404)
    alias GL_FLOAT = NormalPointerType(0x1406)
    alias GL_DOUBLE = NormalPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct ObjectIdentifier:
    var value: GLenum

    alias GL_TEXTURE = ObjectIdentifier(0x1702)
    alias GL_VERTEX_ARRAY = ObjectIdentifier(0x8074)
    alias GL_BUFFER = ObjectIdentifier(0x82E0)
    alias GL_SHADER = ObjectIdentifier(0x82E1)
    alias GL_PROGRAM = ObjectIdentifier(0x82E2)
    alias GL_QUERY = ObjectIdentifier(0x82E3)
    alias GL_PROGRAM_PIPELINE = ObjectIdentifier(0x82E4)
    alias GL_SAMPLER = ObjectIdentifier(0x82E6)
    alias GL_FRAMEBUFFER = ObjectIdentifier(0x8D40)
    alias GL_RENDERBUFFER = ObjectIdentifier(0x8D41)
    alias GL_TRANSFORM_FEEDBACK = ObjectIdentifier(0x8E22)


@fieldwise_init
@register_passable("trivial")
struct PatchParameterName:
    var value: GLenum

    alias GL_PATCH_VERTICES = PatchParameterName(0x8E72)
    alias GL_PATCH_DEFAULT_INNER_LEVEL = PatchParameterName(0x8E73)
    alias GL_PATCH_DEFAULT_OUTER_LEVEL = PatchParameterName(0x8E74)


@fieldwise_init
@register_passable("trivial")
struct PipelineParameterName:
    var value: GLenum

    alias GL_ACTIVE_PROGRAM = PipelineParameterName(0x8259)
    alias GL_FRAGMENT_SHADER = PipelineParameterName(0x8B30)
    alias GL_VERTEX_SHADER = PipelineParameterName(0x8B31)
    alias GL_INFO_LOG_LENGTH = PipelineParameterName(0x8B84)
    alias GL_GEOMETRY_SHADER = PipelineParameterName(0x8DD9)
    alias GL_TESS_EVALUATION_SHADER = PipelineParameterName(0x8E87)
    alias GL_TESS_CONTROL_SHADER = PipelineParameterName(0x8E88)


@fieldwise_init
@register_passable("trivial")
struct PixelFormat:
    var value: GLenum

    alias GL_UNSIGNED_SHORT = PixelFormat(0x1403)
    alias GL_UNSIGNED_INT = PixelFormat(0x1405)
    alias GL_COLOR_INDEX = PixelFormat(0x1900)
    alias GL_STENCIL_INDEX = PixelFormat(0x1901)
    alias GL_DEPTH_COMPONENT = PixelFormat(0x1902)
    alias GL_RED = PixelFormat(0x1903)
    alias GL_RED_EXT = PixelFormat(0x1903)
    alias GL_GREEN = PixelFormat(0x1904)
    alias GL_BLUE = PixelFormat(0x1905)
    alias GL_ALPHA = PixelFormat(0x1906)
    alias GL_RGB = PixelFormat(0x1907)
    alias GL_RGBA = PixelFormat(0x1908)
    alias GL_LUMINANCE = PixelFormat(0x1909)
    alias GL_LUMINANCE_ALPHA = PixelFormat(0x190A)
    alias GL_ABGR_EXT = PixelFormat(0x8000)
    alias GL_CMYK_EXT = PixelFormat(0x800C)
    alias GL_CMYKA_EXT = PixelFormat(0x800D)
    alias GL_BGR = PixelFormat(0x80E0)
    alias GL_BGR_EXT = PixelFormat(0x80E0)
    alias GL_BGRA = PixelFormat(0x80E1)
    alias GL_BGRA_EXT = PixelFormat(0x80E1)
    alias GL_BGRA_IMG = PixelFormat(0x80E1)
    alias GL_YCRCB_422_SGIX = PixelFormat(0x81BB)
    alias GL_YCRCB_444_SGIX = PixelFormat(0x81BC)
    alias GL_RG = PixelFormat(0x8227)
    alias GL_RG_INTEGER = PixelFormat(0x8228)
    alias GL_DEPTH_STENCIL = PixelFormat(0x84F9)
    alias GL_RED_INTEGER = PixelFormat(0x8D94)
    alias GL_GREEN_INTEGER = PixelFormat(0x8D95)
    alias GL_BLUE_INTEGER = PixelFormat(0x8D96)
    alias GL_RGB_INTEGER = PixelFormat(0x8D98)
    alias GL_RGBA_INTEGER = PixelFormat(0x8D99)
    alias GL_BGR_INTEGER = PixelFormat(0x8D9A)
    alias GL_BGRA_INTEGER = PixelFormat(0x8D9B)


@fieldwise_init
@register_passable("trivial")
struct PixelMap:
    var value: GLenum

    alias GL_PIXEL_MAP_I_TO_I = PixelMap(0x0C70)
    alias GL_PIXEL_MAP_S_TO_S = PixelMap(0x0C71)
    alias GL_PIXEL_MAP_I_TO_R = PixelMap(0x0C72)
    alias GL_PIXEL_MAP_I_TO_G = PixelMap(0x0C73)
    alias GL_PIXEL_MAP_I_TO_B = PixelMap(0x0C74)
    alias GL_PIXEL_MAP_I_TO_A = PixelMap(0x0C75)
    alias GL_PIXEL_MAP_R_TO_R = PixelMap(0x0C76)
    alias GL_PIXEL_MAP_G_TO_G = PixelMap(0x0C77)
    alias GL_PIXEL_MAP_B_TO_B = PixelMap(0x0C78)
    alias GL_PIXEL_MAP_A_TO_A = PixelMap(0x0C79)


@fieldwise_init
@register_passable("trivial")
struct PixelStoreParameter:
    var value: GLenum

    alias GL_UNPACK_SWAP_BYTES = PixelStoreParameter(0x0CF0)
    alias GL_UNPACK_LSB_FIRST = PixelStoreParameter(0x0CF1)
    alias GL_UNPACK_ROW_LENGTH = PixelStoreParameter(0x0CF2)
    alias GL_UNPACK_ROW_LENGTH_EXT = PixelStoreParameter(0x0CF2)
    alias GL_UNPACK_SKIP_ROWS = PixelStoreParameter(0x0CF3)
    alias GL_UNPACK_SKIP_ROWS_EXT = PixelStoreParameter(0x0CF3)
    alias GL_UNPACK_SKIP_PIXELS = PixelStoreParameter(0x0CF4)
    alias GL_UNPACK_SKIP_PIXELS_EXT = PixelStoreParameter(0x0CF4)
    alias GL_UNPACK_ALIGNMENT = PixelStoreParameter(0x0CF5)
    alias GL_PACK_SWAP_BYTES = PixelStoreParameter(0x0D00)
    alias GL_PACK_LSB_FIRST = PixelStoreParameter(0x0D01)
    alias GL_PACK_ROW_LENGTH = PixelStoreParameter(0x0D02)
    alias GL_PACK_ROW_LENGTH_NV = PixelStoreParameter(0x0D02)
    alias GL_PACK_SKIP_ROWS = PixelStoreParameter(0x0D03)
    alias GL_PACK_SKIP_ROWS_NV = PixelStoreParameter(0x0D03)
    alias GL_PACK_SKIP_PIXELS = PixelStoreParameter(0x0D04)
    alias GL_PACK_SKIP_PIXELS_NV = PixelStoreParameter(0x0D04)
    alias GL_PACK_ALIGNMENT = PixelStoreParameter(0x0D05)
    alias GL_PACK_SKIP_IMAGES = PixelStoreParameter(0x806B)
    alias GL_PACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806B)
    alias GL_PACK_IMAGE_HEIGHT = PixelStoreParameter(0x806C)
    alias GL_PACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806C)
    alias GL_UNPACK_SKIP_IMAGES = PixelStoreParameter(0x806D)
    alias GL_UNPACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806D)
    alias GL_UNPACK_IMAGE_HEIGHT = PixelStoreParameter(0x806E)
    alias GL_UNPACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806E)
    alias GL_PACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8130)
    alias GL_PACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8131)
    alias GL_UNPACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8132)
    alias GL_UNPACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8133)
    alias GL_PIXEL_TILE_WIDTH_SGIX = PixelStoreParameter(0x8140)
    alias GL_PIXEL_TILE_HEIGHT_SGIX = PixelStoreParameter(0x8141)
    alias GL_PIXEL_TILE_GRID_WIDTH_SGIX = PixelStoreParameter(0x8142)
    alias GL_PIXEL_TILE_GRID_HEIGHT_SGIX = PixelStoreParameter(0x8143)
    alias GL_PIXEL_TILE_GRID_DEPTH_SGIX = PixelStoreParameter(0x8144)
    alias GL_PIXEL_TILE_CACHE_SIZE_SGIX = PixelStoreParameter(0x8145)
    alias GL_PACK_RESAMPLE_SGIX = PixelStoreParameter(0x842E)
    alias GL_UNPACK_RESAMPLE_SGIX = PixelStoreParameter(0x842F)
    alias GL_PACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A0)
    alias GL_UNPACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A1)
    alias GL_PACK_RESAMPLE_OML = PixelStoreParameter(0x8984)
    alias GL_UNPACK_RESAMPLE_OML = PixelStoreParameter(0x8985)


@fieldwise_init
@register_passable("trivial")
struct PixelType:
    var value: GLenum

    alias GL_BYTE = PixelType(0x1400)
    alias GL_UNSIGNED_BYTE = PixelType(0x1401)
    alias GL_SHORT = PixelType(0x1402)
    alias GL_UNSIGNED_SHORT = PixelType(0x1403)
    alias GL_INT = PixelType(0x1404)
    alias GL_UNSIGNED_INT = PixelType(0x1405)
    alias GL_FLOAT = PixelType(0x1406)
    alias GL_HALF_FLOAT = PixelType(0x140B)
    alias GL_HALF_FLOAT_ARB = PixelType(0x140B)
    alias GL_HALF_FLOAT_NV = PixelType(0x140B)
    alias GL_HALF_APPLE = PixelType(0x140B)
    alias GL_BITMAP = PixelType(0x1A00)
    alias GL_UNSIGNED_BYTE_3_3_2 = PixelType(0x8032)
    alias GL_UNSIGNED_BYTE_3_3_2_EXT = PixelType(0x8032)
    alias GL_UNSIGNED_SHORT_4_4_4_4 = PixelType(0x8033)
    alias GL_UNSIGNED_SHORT_4_4_4_4_EXT = PixelType(0x8033)
    alias GL_UNSIGNED_SHORT_5_5_5_1 = PixelType(0x8034)
    alias GL_UNSIGNED_SHORT_5_5_5_1_EXT = PixelType(0x8034)
    alias GL_UNSIGNED_INT_8_8_8_8 = PixelType(0x8035)
    alias GL_UNSIGNED_INT_8_8_8_8_EXT = PixelType(0x8035)
    alias GL_UNSIGNED_INT_10_10_10_2 = PixelType(0x8036)
    alias GL_UNSIGNED_INT_10_10_10_2_EXT = PixelType(0x8036)
    alias GL_UNSIGNED_BYTE_2_3_3_REV = PixelType(0x8362)
    alias GL_UNSIGNED_BYTE_2_3_3_REV_EXT = PixelType(0x8362)
    alias GL_UNSIGNED_SHORT_5_6_5 = PixelType(0x8363)
    alias GL_UNSIGNED_SHORT_5_6_5_EXT = PixelType(0x8363)
    alias GL_UNSIGNED_SHORT_5_6_5_REV = PixelType(0x8364)
    alias GL_UNSIGNED_SHORT_5_6_5_REV_EXT = PixelType(0x8364)
    alias GL_UNSIGNED_SHORT_4_4_4_4_REV = PixelType(0x8365)
    alias GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT = PixelType(0x8365)
    alias GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG = PixelType(0x8365)
    alias GL_UNSIGNED_SHORT_1_5_5_5_REV = PixelType(0x8366)
    alias GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT = PixelType(0x8366)
    alias GL_UNSIGNED_INT_8_8_8_8_REV = PixelType(0x8367)
    alias GL_UNSIGNED_INT_8_8_8_8_REV_EXT = PixelType(0x8367)
    alias GL_UNSIGNED_INT_2_10_10_10_REV = PixelType(0x8368)
    alias GL_UNSIGNED_INT_2_10_10_10_REV_EXT = PixelType(0x8368)
    alias GL_UNSIGNED_INT_24_8 = PixelType(0x84FA)
    alias GL_UNSIGNED_INT_24_8_EXT = PixelType(0x84FA)
    alias GL_UNSIGNED_INT_24_8_NV = PixelType(0x84FA)
    alias GL_UNSIGNED_INT_24_8_OES = PixelType(0x84FA)
    alias GL_UNSIGNED_INT_10F_11F_11F_REV = PixelType(0x8C3B)
    alias GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE = PixelType(0x8C3B)
    alias GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = PixelType(0x8C3B)
    alias GL_UNSIGNED_INT_5_9_9_9_REV = PixelType(0x8C3E)
    alias GL_UNSIGNED_INT_5_9_9_9_REV_APPLE = PixelType(0x8C3E)
    alias GL_UNSIGNED_INT_5_9_9_9_REV_EXT = PixelType(0x8C3E)
    alias GL_FLOAT_32_UNSIGNED_INT_24_8_REV = PixelType(0x8DAD)
    alias GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = PixelType(0x8DAD)


@fieldwise_init
@register_passable("trivial")
struct PointParameterNameARB:
    var value: GLenum

    alias GL_POINT_SIZE_MIN = PointParameterNameARB(0x8126)
    alias GL_POINT_SIZE_MIN_ARB = PointParameterNameARB(0x8126)
    alias GL_POINT_SIZE_MIN_EXT = PointParameterNameARB(0x8126)
    alias GL_POINT_SIZE_MIN_SGIS = PointParameterNameARB(0x8126)
    alias GL_POINT_SIZE_MAX = PointParameterNameARB(0x8127)
    alias GL_POINT_SIZE_MAX_ARB = PointParameterNameARB(0x8127)
    alias GL_POINT_SIZE_MAX_EXT = PointParameterNameARB(0x8127)
    alias GL_POINT_SIZE_MAX_SGIS = PointParameterNameARB(0x8127)
    alias GL_POINT_FADE_THRESHOLD_SIZE = PointParameterNameARB(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_ARB = PointParameterNameARB(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_EXT = PointParameterNameARB(0x8128)
    alias GL_POINT_FADE_THRESHOLD_SIZE_SGIS = PointParameterNameARB(0x8128)
    alias GL_DISTANCE_ATTENUATION_EXT = PointParameterNameARB(0x8129)
    alias GL_DISTANCE_ATTENUATION_SGIS = PointParameterNameARB(0x8129)
    alias GL_POINT_DISTANCE_ATTENUATION = PointParameterNameARB(0x8129)
    alias GL_POINT_DISTANCE_ATTENUATION_ARB = PointParameterNameARB(0x8129)


@fieldwise_init
@register_passable("trivial")
struct PolygonMode:
    var value: GLenum

    alias GL_POINT = PolygonMode(0x1B00)
    alias GL_LINE = PolygonMode(0x1B01)
    alias GL_FILL = PolygonMode(0x1B02)


@fieldwise_init
@register_passable("trivial")
struct PrecisionType:
    var value: GLenum

    alias GL_LOW_FLOAT = PrecisionType(0x8DF0)
    alias GL_MEDIUM_FLOAT = PrecisionType(0x8DF1)
    alias GL_HIGH_FLOAT = PrecisionType(0x8DF2)
    alias GL_LOW_INT = PrecisionType(0x8DF3)
    alias GL_MEDIUM_INT = PrecisionType(0x8DF4)
    alias GL_HIGH_INT = PrecisionType(0x8DF5)


@fieldwise_init
@register_passable("trivial")
struct PrimitiveType:
    var value: GLenum

    alias GL_POINTS = PrimitiveType(0x0000)
    alias GL_LINES = PrimitiveType(0x0001)
    alias GL_LINE_LOOP = PrimitiveType(0x0002)
    alias GL_LINE_STRIP = PrimitiveType(0x0003)
    alias GL_TRIANGLES = PrimitiveType(0x0004)
    alias GL_TRIANGLE_STRIP = PrimitiveType(0x0005)
    alias GL_TRIANGLE_FAN = PrimitiveType(0x0006)
    alias GL_QUADS = PrimitiveType(0x0007)
    alias GL_QUADS_EXT = PrimitiveType(0x0007)
    alias GL_QUAD_STRIP = PrimitiveType(0x0008)
    alias GL_POLYGON = PrimitiveType(0x0009)
    alias GL_LINES_ADJACENCY = PrimitiveType(0x000A)
    alias GL_LINES_ADJACENCY_ARB = PrimitiveType(0x000A)
    alias GL_LINES_ADJACENCY_EXT = PrimitiveType(0x000A)
    alias GL_LINE_STRIP_ADJACENCY = PrimitiveType(0x000B)
    alias GL_LINE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000B)
    alias GL_LINE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000B)
    alias GL_TRIANGLES_ADJACENCY = PrimitiveType(0x000C)
    alias GL_TRIANGLES_ADJACENCY_ARB = PrimitiveType(0x000C)
    alias GL_TRIANGLES_ADJACENCY_EXT = PrimitiveType(0x000C)
    alias GL_TRIANGLE_STRIP_ADJACENCY = PrimitiveType(0x000D)
    alias GL_TRIANGLE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000D)
    alias GL_TRIANGLE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000D)
    alias GL_PATCHES = PrimitiveType(0x000E)
    alias GL_PATCHES_EXT = PrimitiveType(0x000E)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterface:
    var value: GLenum

    alias GL_TRANSFORM_FEEDBACK_BUFFER = ProgramInterface(0x8C8E)
    alias GL_UNIFORM = ProgramInterface(0x92E1)
    alias GL_UNIFORM_BLOCK = ProgramInterface(0x92E2)
    alias GL_PROGRAM_INPUT = ProgramInterface(0x92E3)
    alias GL_PROGRAM_OUTPUT = ProgramInterface(0x92E4)
    alias GL_BUFFER_VARIABLE = ProgramInterface(0x92E5)
    alias GL_SHADER_STORAGE_BLOCK = ProgramInterface(0x92E6)
    alias GL_VERTEX_SUBROUTINE = ProgramInterface(0x92E8)
    alias GL_TESS_CONTROL_SUBROUTINE = ProgramInterface(0x92E9)
    alias GL_TESS_EVALUATION_SUBROUTINE = ProgramInterface(0x92EA)
    alias GL_GEOMETRY_SUBROUTINE = ProgramInterface(0x92EB)
    alias GL_FRAGMENT_SUBROUTINE = ProgramInterface(0x92EC)
    alias GL_COMPUTE_SUBROUTINE = ProgramInterface(0x92ED)
    alias GL_VERTEX_SUBROUTINE_UNIFORM = ProgramInterface(0x92EE)
    alias GL_TESS_CONTROL_SUBROUTINE_UNIFORM = ProgramInterface(0x92EF)
    alias GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = ProgramInterface(0x92F0)
    alias GL_GEOMETRY_SUBROUTINE_UNIFORM = ProgramInterface(0x92F1)
    alias GL_FRAGMENT_SUBROUTINE_UNIFORM = ProgramInterface(0x92F2)
    alias GL_COMPUTE_SUBROUTINE_UNIFORM = ProgramInterface(0x92F3)
    alias GL_TRANSFORM_FEEDBACK_VARYING = ProgramInterface(0x92F4)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterfacePName:
    var value: GLenum

    alias GL_ACTIVE_RESOURCES = ProgramInterfacePName(0x92F5)
    alias GL_MAX_NAME_LENGTH = ProgramInterfacePName(0x92F6)
    alias GL_MAX_NUM_ACTIVE_VARIABLES = ProgramInterfacePName(0x92F7)
    alias GL_MAX_NUM_COMPATIBLE_SUBROUTINES = ProgramInterfacePName(0x92F8)


@fieldwise_init
@register_passable("trivial")
struct ProgramParameterPName:
    var value: GLenum

    alias GL_PROGRAM_BINARY_RETRIEVABLE_HINT = ProgramParameterPName(0x8257)
    alias GL_PROGRAM_SEPARABLE = ProgramParameterPName(0x8258)


@fieldwise_init
@register_passable("trivial")
struct ProgramPropertyARB:
    var value: GLenum

    alias GL_COMPUTE_WORK_GROUP_SIZE = ProgramPropertyARB(0x8267)
    alias GL_PROGRAM_BINARY_LENGTH = ProgramPropertyARB(0x8741)
    alias GL_GEOMETRY_VERTICES_OUT = ProgramPropertyARB(0x8916)
    alias GL_GEOMETRY_INPUT_TYPE = ProgramPropertyARB(0x8917)
    alias GL_GEOMETRY_OUTPUT_TYPE = ProgramPropertyARB(0x8918)
    alias GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = ProgramPropertyARB(0x8A35)
    alias GL_ACTIVE_UNIFORM_BLOCKS = ProgramPropertyARB(0x8A36)
    alias GL_DELETE_STATUS = ProgramPropertyARB(0x8B80)
    alias GL_LINK_STATUS = ProgramPropertyARB(0x8B82)
    alias GL_VALIDATE_STATUS = ProgramPropertyARB(0x8B83)
    alias GL_INFO_LOG_LENGTH = ProgramPropertyARB(0x8B84)
    alias GL_ATTACHED_SHADERS = ProgramPropertyARB(0x8B85)
    alias GL_ACTIVE_UNIFORMS = ProgramPropertyARB(0x8B86)
    alias GL_ACTIVE_UNIFORM_MAX_LENGTH = ProgramPropertyARB(0x8B87)
    alias GL_ACTIVE_ATTRIBUTES = ProgramPropertyARB(0x8B89)
    alias GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = ProgramPropertyARB(0x8B8A)
    alias GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = ProgramPropertyARB(0x8C76)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_MODE = ProgramPropertyARB(0x8C7F)
    alias GL_TRANSFORM_FEEDBACK_VARYINGS = ProgramPropertyARB(0x8C83)
    alias GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = ProgramPropertyARB(0x92D9)


@fieldwise_init
@register_passable("trivial")
struct ProgramResourceProperty:
    var value: GLenum

    alias GL_NUM_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4A)
    alias GL_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4B)
    alias GL_UNIFORM = ProgramResourceProperty(0x92E1)
    alias GL_IS_PER_PATCH = ProgramResourceProperty(0x92E7)
    alias GL_NAME_LENGTH = ProgramResourceProperty(0x92F9)
    alias GL_TYPE = ProgramResourceProperty(0x92FA)
    alias GL_ARRAY_SIZE = ProgramResourceProperty(0x92FB)
    alias GL_OFFSET = ProgramResourceProperty(0x92FC)
    alias GL_BLOCK_INDEX = ProgramResourceProperty(0x92FD)
    alias GL_ARRAY_STRIDE = ProgramResourceProperty(0x92FE)
    alias GL_MATRIX_STRIDE = ProgramResourceProperty(0x92FF)
    alias GL_IS_ROW_MAJOR = ProgramResourceProperty(0x9300)
    alias GL_ATOMIC_COUNTER_BUFFER_INDEX = ProgramResourceProperty(0x9301)
    alias GL_BUFFER_BINDING = ProgramResourceProperty(0x9302)
    alias GL_BUFFER_DATA_SIZE = ProgramResourceProperty(0x9303)
    alias GL_NUM_ACTIVE_VARIABLES = ProgramResourceProperty(0x9304)
    alias GL_ACTIVE_VARIABLES = ProgramResourceProperty(0x9305)
    alias GL_REFERENCED_BY_VERTEX_SHADER = ProgramResourceProperty(0x9306)
    alias GL_REFERENCED_BY_TESS_CONTROL_SHADER = ProgramResourceProperty(0x9307)
    alias GL_REFERENCED_BY_TESS_EVALUATION_SHADER = ProgramResourceProperty(0x9308)
    alias GL_REFERENCED_BY_GEOMETRY_SHADER = ProgramResourceProperty(0x9309)
    alias GL_REFERENCED_BY_FRAGMENT_SHADER = ProgramResourceProperty(0x930A)
    alias GL_REFERENCED_BY_COMPUTE_SHADER = ProgramResourceProperty(0x930B)
    alias GL_TOP_LEVEL_ARRAY_SIZE = ProgramResourceProperty(0x930C)
    alias GL_TOP_LEVEL_ARRAY_STRIDE = ProgramResourceProperty(0x930D)
    alias GL_LOCATION = ProgramResourceProperty(0x930E)
    alias GL_LOCATION_INDEX = ProgramResourceProperty(0x930F)
    alias GL_LOCATION_COMPONENT = ProgramResourceProperty(0x934A)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = ProgramResourceProperty(0x934B)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = ProgramResourceProperty(0x934C)


@fieldwise_init
@register_passable("trivial")
struct ProgramStagePName:
    var value: GLenum

    alias GL_ACTIVE_SUBROUTINES = ProgramStagePName(0x8DE5)
    alias GL_ACTIVE_SUBROUTINE_UNIFORMS = ProgramStagePName(0x8DE6)
    alias GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = ProgramStagePName(0x8E47)
    alias GL_ACTIVE_SUBROUTINE_MAX_LENGTH = ProgramStagePName(0x8E48)
    alias GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ProgramStagePName(0x8E49)


@fieldwise_init
@register_passable("trivial")
struct QueryCounterTarget:
    var value: GLenum

    alias GL_TIMESTAMP = QueryCounterTarget(0x8E28)
    alias GL_TIMESTAMP_EXT = QueryCounterTarget(0x8E28)


@fieldwise_init
@register_passable("trivial")
struct QueryObjectParameterName:
    var value: GLenum

    alias GL_QUERY_TARGET = QueryObjectParameterName(0x82EA)
    alias GL_QUERY_RESULT = QueryObjectParameterName(0x8866)
    alias GL_QUERY_RESULT_AVAILABLE = QueryObjectParameterName(0x8867)
    alias GL_QUERY_RESULT_NO_WAIT = QueryObjectParameterName(0x9194)


@fieldwise_init
@register_passable("trivial")
struct QueryParameterName:
    var value: GLenum

    alias GL_QUERY_COUNTER_BITS = QueryParameterName(0x8864)
    alias GL_CURRENT_QUERY = QueryParameterName(0x8865)


@fieldwise_init
@register_passable("trivial")
struct QueryTarget:
    var value: GLenum

    alias GL_TRANSFORM_FEEDBACK_OVERFLOW = QueryTarget(0x82EC)
    alias GL_VERTICES_SUBMITTED = QueryTarget(0x82EE)
    alias GL_PRIMITIVES_SUBMITTED = QueryTarget(0x82EF)
    alias GL_VERTEX_SHADER_INVOCATIONS = QueryTarget(0x82F0)
    alias GL_TIME_ELAPSED = QueryTarget(0x88BF)
    alias GL_SAMPLES_PASSED = QueryTarget(0x8914)
    alias GL_ANY_SAMPLES_PASSED = QueryTarget(0x8C2F)
    alias GL_PRIMITIVES_GENERATED = QueryTarget(0x8C87)
    alias GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = QueryTarget(0x8C88)
    alias GL_ANY_SAMPLES_PASSED_CONSERVATIVE = QueryTarget(0x8D6A)


@fieldwise_init
@register_passable("trivial")
struct ReadBufferMode:
    var value: GLenum

    alias GL_NONE = ReadBufferMode(0)
    alias GL_NONE_OES = ReadBufferMode(0)
    alias GL_FRONT_LEFT = ReadBufferMode(0x0400)
    alias GL_FRONT_RIGHT = ReadBufferMode(0x0401)
    alias GL_BACK_LEFT = ReadBufferMode(0x0402)
    alias GL_BACK_RIGHT = ReadBufferMode(0x0403)
    alias GL_FRONT = ReadBufferMode(0x0404)
    alias GL_BACK = ReadBufferMode(0x0405)
    alias GL_LEFT = ReadBufferMode(0x0406)
    alias GL_RIGHT = ReadBufferMode(0x0407)
    alias GL_AUX0 = ReadBufferMode(0x0409)
    alias GL_AUX1 = ReadBufferMode(0x040A)
    alias GL_AUX2 = ReadBufferMode(0x040B)
    alias GL_AUX3 = ReadBufferMode(0x040C)
    alias GL_COLOR_ATTACHMENT0 = ReadBufferMode(0x8CE0)
    alias GL_COLOR_ATTACHMENT1 = ReadBufferMode(0x8CE1)
    alias GL_COLOR_ATTACHMENT2 = ReadBufferMode(0x8CE2)
    alias GL_COLOR_ATTACHMENT3 = ReadBufferMode(0x8CE3)
    alias GL_COLOR_ATTACHMENT4 = ReadBufferMode(0x8CE4)
    alias GL_COLOR_ATTACHMENT5 = ReadBufferMode(0x8CE5)
    alias GL_COLOR_ATTACHMENT6 = ReadBufferMode(0x8CE6)
    alias GL_COLOR_ATTACHMENT7 = ReadBufferMode(0x8CE7)
    alias GL_COLOR_ATTACHMENT8 = ReadBufferMode(0x8CE8)
    alias GL_COLOR_ATTACHMENT9 = ReadBufferMode(0x8CE9)
    alias GL_COLOR_ATTACHMENT10 = ReadBufferMode(0x8CEA)
    alias GL_COLOR_ATTACHMENT11 = ReadBufferMode(0x8CEB)
    alias GL_COLOR_ATTACHMENT12 = ReadBufferMode(0x8CEC)
    alias GL_COLOR_ATTACHMENT13 = ReadBufferMode(0x8CED)
    alias GL_COLOR_ATTACHMENT14 = ReadBufferMode(0x8CEE)
    alias GL_COLOR_ATTACHMENT15 = ReadBufferMode(0x8CEF)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferParameterName:
    var value: GLenum

    alias GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_SAMPLES = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_SAMPLES_ANGLE = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_SAMPLES_APPLE = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_SAMPLES_EXT = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    alias GL_RENDERBUFFER_WIDTH = RenderbufferParameterName(0x8D42)
    alias GL_RENDERBUFFER_WIDTH_EXT = RenderbufferParameterName(0x8D42)
    alias GL_RENDERBUFFER_WIDTH_OES = RenderbufferParameterName(0x8D42)
    alias GL_RENDERBUFFER_HEIGHT = RenderbufferParameterName(0x8D43)
    alias GL_RENDERBUFFER_HEIGHT_EXT = RenderbufferParameterName(0x8D43)
    alias GL_RENDERBUFFER_HEIGHT_OES = RenderbufferParameterName(0x8D43)
    alias GL_RENDERBUFFER_INTERNAL_FORMAT = RenderbufferParameterName(0x8D44)
    alias GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = RenderbufferParameterName(0x8D44)
    alias GL_RENDERBUFFER_INTERNAL_FORMAT_OES = RenderbufferParameterName(0x8D44)
    alias GL_RENDERBUFFER_RED_SIZE = RenderbufferParameterName(0x8D50)
    alias GL_RENDERBUFFER_RED_SIZE_EXT = RenderbufferParameterName(0x8D50)
    alias GL_RENDERBUFFER_RED_SIZE_OES = RenderbufferParameterName(0x8D50)
    alias GL_RENDERBUFFER_GREEN_SIZE = RenderbufferParameterName(0x8D51)
    alias GL_RENDERBUFFER_GREEN_SIZE_EXT = RenderbufferParameterName(0x8D51)
    alias GL_RENDERBUFFER_GREEN_SIZE_OES = RenderbufferParameterName(0x8D51)
    alias GL_RENDERBUFFER_BLUE_SIZE = RenderbufferParameterName(0x8D52)
    alias GL_RENDERBUFFER_BLUE_SIZE_EXT = RenderbufferParameterName(0x8D52)
    alias GL_RENDERBUFFER_BLUE_SIZE_OES = RenderbufferParameterName(0x8D52)
    alias GL_RENDERBUFFER_ALPHA_SIZE = RenderbufferParameterName(0x8D53)
    alias GL_RENDERBUFFER_ALPHA_SIZE_EXT = RenderbufferParameterName(0x8D53)
    alias GL_RENDERBUFFER_ALPHA_SIZE_OES = RenderbufferParameterName(0x8D53)
    alias GL_RENDERBUFFER_DEPTH_SIZE = RenderbufferParameterName(0x8D54)
    alias GL_RENDERBUFFER_DEPTH_SIZE_EXT = RenderbufferParameterName(0x8D54)
    alias GL_RENDERBUFFER_DEPTH_SIZE_OES = RenderbufferParameterName(0x8D54)
    alias GL_RENDERBUFFER_STENCIL_SIZE = RenderbufferParameterName(0x8D55)
    alias GL_RENDERBUFFER_STENCIL_SIZE_EXT = RenderbufferParameterName(0x8D55)
    alias GL_RENDERBUFFER_STENCIL_SIZE_OES = RenderbufferParameterName(0x8D55)
    alias GL_RENDERBUFFER_COLOR_SAMPLES_NV = RenderbufferParameterName(0x8E10)
    alias GL_RENDERBUFFER_SAMPLES_IMG = RenderbufferParameterName(0x9133)
    alias GL_RENDERBUFFER_STORAGE_SAMPLES_AMD = RenderbufferParameterName(0x91B2)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferTarget:
    var value: GLenum

    alias GL_RENDERBUFFER = RenderbufferTarget(0x8D41)
    alias GL_RENDERBUFFER_OES = RenderbufferTarget(0x8D41)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterF:
    var value: GLenum

    alias GL_TEXTURE_BORDER_COLOR = SamplerParameterF(0x1004)
    alias GL_TEXTURE_MIN_LOD = SamplerParameterF(0x813A)
    alias GL_TEXTURE_MAX_LOD = SamplerParameterF(0x813B)
    alias GL_TEXTURE_MAX_ANISOTROPY = SamplerParameterF(0x84FE)
    alias GL_TEXTURE_LOD_BIAS = SamplerParameterF(0x8501)
    alias GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterF(0x8F6A)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterI:
    var value: GLenum

    alias GL_TEXTURE_MAG_FILTER = SamplerParameterI(0x2800)
    alias GL_TEXTURE_MIN_FILTER = SamplerParameterI(0x2801)
    alias GL_TEXTURE_WRAP_S = SamplerParameterI(0x2802)
    alias GL_TEXTURE_WRAP_T = SamplerParameterI(0x2803)
    alias GL_TEXTURE_WRAP_R = SamplerParameterI(0x8072)
    alias GL_TEXTURE_COMPARE_MODE = SamplerParameterI(0x884C)
    alias GL_TEXTURE_COMPARE_FUNC = SamplerParameterI(0x884D)
    alias GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterI(0x8F6A)


@fieldwise_init
@register_passable("trivial")
struct SeparableTarget:
    var value: GLenum

    alias GL_SEPARABLE_2D = SeparableTarget(0x8012)


@fieldwise_init
@register_passable("trivial")
struct ShaderBinaryFormat:
    var value: GLenum

    alias GL_SGX_BINARY_IMG = ShaderBinaryFormat(0x8C0A)
    alias GL_MALI_SHADER_BINARY_ARM = ShaderBinaryFormat(0x8F60)
    alias GL_SHADER_BINARY_VIV = ShaderBinaryFormat(0x8FC4)
    alias GL_SHADER_BINARY_DMP = ShaderBinaryFormat(0x9250)
    alias GL_GCCSO_SHADER_BINARY_FJ = ShaderBinaryFormat(0x9260)
    alias GL_SHADER_BINARY_FORMAT_SPIR_V = ShaderBinaryFormat(0x9551)


@fieldwise_init
@register_passable("trivial")
struct ShaderParameterName:
    var value: GLenum

    alias GL_SHADER_TYPE = ShaderParameterName(0x8B4F)
    alias GL_DELETE_STATUS = ShaderParameterName(0x8B80)
    alias GL_COMPILE_STATUS = ShaderParameterName(0x8B81)
    alias GL_INFO_LOG_LENGTH = ShaderParameterName(0x8B84)
    alias GL_SHADER_SOURCE_LENGTH = ShaderParameterName(0x8B88)


@fieldwise_init
@register_passable("trivial")
struct ShaderType:
    var value: GLenum

    alias GL_FRAGMENT_SHADER = ShaderType(0x8B30)
    alias GL_FRAGMENT_SHADER_ARB = ShaderType(0x8B30)
    alias GL_VERTEX_SHADER = ShaderType(0x8B31)
    alias GL_VERTEX_SHADER_ARB = ShaderType(0x8B31)
    alias GL_GEOMETRY_SHADER = ShaderType(0x8DD9)
    alias GL_TESS_EVALUATION_SHADER = ShaderType(0x8E87)
    alias GL_TESS_CONTROL_SHADER = ShaderType(0x8E88)
    alias GL_COMPUTE_SHADER = ShaderType(0x91B9)


@fieldwise_init
@register_passable("trivial")
struct SizedInternalFormat:
    var value: GLenum

    alias GL_R3_G3_B2 = SizedInternalFormat(0x2A10)
    alias GL_ALPHA4 = SizedInternalFormat(0x803B)
    alias GL_ALPHA4_EXT = SizedInternalFormat(0x803B)
    alias GL_ALPHA8 = SizedInternalFormat(0x803C)
    alias GL_ALPHA8_EXT = SizedInternalFormat(0x803C)
    alias GL_ALPHA8_OES = SizedInternalFormat(0x803C)
    alias GL_ALPHA12 = SizedInternalFormat(0x803D)
    alias GL_ALPHA12_EXT = SizedInternalFormat(0x803D)
    alias GL_ALPHA16 = SizedInternalFormat(0x803E)
    alias GL_ALPHA16_EXT = SizedInternalFormat(0x803E)
    alias GL_LUMINANCE4 = SizedInternalFormat(0x803F)
    alias GL_LUMINANCE4_EXT = SizedInternalFormat(0x803F)
    alias GL_LUMINANCE8 = SizedInternalFormat(0x8040)
    alias GL_LUMINANCE8_EXT = SizedInternalFormat(0x8040)
    alias GL_LUMINANCE8_OES = SizedInternalFormat(0x8040)
    alias GL_LUMINANCE12 = SizedInternalFormat(0x8041)
    alias GL_LUMINANCE12_EXT = SizedInternalFormat(0x8041)
    alias GL_LUMINANCE16 = SizedInternalFormat(0x8042)
    alias GL_LUMINANCE16_EXT = SizedInternalFormat(0x8042)
    alias GL_LUMINANCE4_ALPHA4 = SizedInternalFormat(0x8043)
    alias GL_LUMINANCE4_ALPHA4_EXT = SizedInternalFormat(0x8043)
    alias GL_LUMINANCE4_ALPHA4_OES = SizedInternalFormat(0x8043)
    alias GL_LUMINANCE6_ALPHA2 = SizedInternalFormat(0x8044)
    alias GL_LUMINANCE6_ALPHA2_EXT = SizedInternalFormat(0x8044)
    alias GL_LUMINANCE8_ALPHA8 = SizedInternalFormat(0x8045)
    alias GL_LUMINANCE8_ALPHA8_EXT = SizedInternalFormat(0x8045)
    alias GL_LUMINANCE8_ALPHA8_OES = SizedInternalFormat(0x8045)
    alias GL_LUMINANCE12_ALPHA4 = SizedInternalFormat(0x8046)
    alias GL_LUMINANCE12_ALPHA4_EXT = SizedInternalFormat(0x8046)
    alias GL_LUMINANCE12_ALPHA12 = SizedInternalFormat(0x8047)
    alias GL_LUMINANCE12_ALPHA12_EXT = SizedInternalFormat(0x8047)
    alias GL_LUMINANCE16_ALPHA16 = SizedInternalFormat(0x8048)
    alias GL_LUMINANCE16_ALPHA16_EXT = SizedInternalFormat(0x8048)
    alias GL_INTENSITY4 = SizedInternalFormat(0x804A)
    alias GL_INTENSITY4_EXT = SizedInternalFormat(0x804A)
    alias GL_INTENSITY8 = SizedInternalFormat(0x804B)
    alias GL_INTENSITY8_EXT = SizedInternalFormat(0x804B)
    alias GL_INTENSITY12 = SizedInternalFormat(0x804C)
    alias GL_INTENSITY12_EXT = SizedInternalFormat(0x804C)
    alias GL_INTENSITY16 = SizedInternalFormat(0x804D)
    alias GL_INTENSITY16_EXT = SizedInternalFormat(0x804D)
    alias GL_RGB2_EXT = SizedInternalFormat(0x804E)
    alias GL_RGB4 = SizedInternalFormat(0x804F)
    alias GL_RGB4_EXT = SizedInternalFormat(0x804F)
    alias GL_RGB5 = SizedInternalFormat(0x8050)
    alias GL_RGB5_EXT = SizedInternalFormat(0x8050)
    alias GL_RGB8 = SizedInternalFormat(0x8051)
    alias GL_RGB8_EXT = SizedInternalFormat(0x8051)
    alias GL_RGB8_OES = SizedInternalFormat(0x8051)
    alias GL_RGB10 = SizedInternalFormat(0x8052)
    alias GL_RGB10_EXT = SizedInternalFormat(0x8052)
    alias GL_RGB12 = SizedInternalFormat(0x8053)
    alias GL_RGB12_EXT = SizedInternalFormat(0x8053)
    alias GL_RGB16 = SizedInternalFormat(0x8054)
    alias GL_RGB16_EXT = SizedInternalFormat(0x8054)
    alias GL_RGBA2 = SizedInternalFormat(0x8055)
    alias GL_RGBA2_EXT = SizedInternalFormat(0x8055)
    alias GL_RGBA4 = SizedInternalFormat(0x8056)
    alias GL_RGBA4_EXT = SizedInternalFormat(0x8056)
    alias GL_RGBA4_OES = SizedInternalFormat(0x8056)
    alias GL_RGB5_A1 = SizedInternalFormat(0x8057)
    alias GL_RGB5_A1_EXT = SizedInternalFormat(0x8057)
    alias GL_RGB5_A1_OES = SizedInternalFormat(0x8057)
    alias GL_RGBA8 = SizedInternalFormat(0x8058)
    alias GL_RGBA8_EXT = SizedInternalFormat(0x8058)
    alias GL_RGBA8_OES = SizedInternalFormat(0x8058)
    alias GL_RGB10_A2 = SizedInternalFormat(0x8059)
    alias GL_RGB10_A2_EXT = SizedInternalFormat(0x8059)
    alias GL_RGBA12 = SizedInternalFormat(0x805A)
    alias GL_RGBA12_EXT = SizedInternalFormat(0x805A)
    alias GL_RGBA16 = SizedInternalFormat(0x805B)
    alias GL_RGBA16_EXT = SizedInternalFormat(0x805B)
    alias GL_DEPTH_COMPONENT16 = SizedInternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_ARB = SizedInternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_OES = SizedInternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT16_SGIX = SizedInternalFormat(0x81A5)
    alias GL_DEPTH_COMPONENT24 = SizedInternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_ARB = SizedInternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_OES = SizedInternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT24_SGIX = SizedInternalFormat(0x81A6)
    alias GL_DEPTH_COMPONENT32 = SizedInternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_ARB = SizedInternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_OES = SizedInternalFormat(0x81A7)
    alias GL_DEPTH_COMPONENT32_SGIX = SizedInternalFormat(0x81A7)
    alias GL_R8 = SizedInternalFormat(0x8229)
    alias GL_R8_EXT = SizedInternalFormat(0x8229)
    alias GL_R16 = SizedInternalFormat(0x822A)
    alias GL_R16_EXT = SizedInternalFormat(0x822A)
    alias GL_RG8 = SizedInternalFormat(0x822B)
    alias GL_RG8_EXT = SizedInternalFormat(0x822B)
    alias GL_RG16 = SizedInternalFormat(0x822C)
    alias GL_RG16_EXT = SizedInternalFormat(0x822C)
    alias GL_R16F = SizedInternalFormat(0x822D)
    alias GL_R16F_EXT = SizedInternalFormat(0x822D)
    alias GL_R32F = SizedInternalFormat(0x822E)
    alias GL_R32F_EXT = SizedInternalFormat(0x822E)
    alias GL_RG16F = SizedInternalFormat(0x822F)
    alias GL_RG16F_EXT = SizedInternalFormat(0x822F)
    alias GL_RG32F = SizedInternalFormat(0x8230)
    alias GL_RG32F_EXT = SizedInternalFormat(0x8230)
    alias GL_R8I = SizedInternalFormat(0x8231)
    alias GL_R8UI = SizedInternalFormat(0x8232)
    alias GL_R16I = SizedInternalFormat(0x8233)
    alias GL_R16UI = SizedInternalFormat(0x8234)
    alias GL_R32I = SizedInternalFormat(0x8235)
    alias GL_R32UI = SizedInternalFormat(0x8236)
    alias GL_RG8I = SizedInternalFormat(0x8237)
    alias GL_RG8UI = SizedInternalFormat(0x8238)
    alias GL_RG16I = SizedInternalFormat(0x8239)
    alias GL_RG16UI = SizedInternalFormat(0x823A)
    alias GL_RG32I = SizedInternalFormat(0x823B)
    alias GL_RG32UI = SizedInternalFormat(0x823C)
    alias GL_COMPRESSED_RGB_S3TC_DXT1_EXT = SizedInternalFormat(0x83F0)
    alias GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = SizedInternalFormat(0x83F1)
    alias GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = SizedInternalFormat(0x83F2)
    alias GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = SizedInternalFormat(0x83F2)
    alias GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = SizedInternalFormat(0x83F3)
    alias GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = SizedInternalFormat(0x83F3)
    alias GL_RGBA32F = SizedInternalFormat(0x8814)
    alias GL_RGBA32F_ARB = SizedInternalFormat(0x8814)
    alias GL_RGBA32F_EXT = SizedInternalFormat(0x8814)
    alias GL_RGB32F = SizedInternalFormat(0x8815)
    alias GL_RGB32F_ARB = SizedInternalFormat(0x8815)
    alias GL_RGB32F_EXT = SizedInternalFormat(0x8815)
    alias GL_RGBA16F = SizedInternalFormat(0x881A)
    alias GL_RGBA16F_ARB = SizedInternalFormat(0x881A)
    alias GL_RGBA16F_EXT = SizedInternalFormat(0x881A)
    alias GL_RGB16F = SizedInternalFormat(0x881B)
    alias GL_RGB16F_ARB = SizedInternalFormat(0x881B)
    alias GL_RGB16F_EXT = SizedInternalFormat(0x881B)
    alias GL_DEPTH24_STENCIL8 = SizedInternalFormat(0x88F0)
    alias GL_DEPTH24_STENCIL8_EXT = SizedInternalFormat(0x88F0)
    alias GL_DEPTH24_STENCIL8_OES = SizedInternalFormat(0x88F0)
    alias GL_R11F_G11F_B10F = SizedInternalFormat(0x8C3A)
    alias GL_R11F_G11F_B10F_APPLE = SizedInternalFormat(0x8C3A)
    alias GL_R11F_G11F_B10F_EXT = SizedInternalFormat(0x8C3A)
    alias GL_RGB9_E5 = SizedInternalFormat(0x8C3D)
    alias GL_RGB9_E5_APPLE = SizedInternalFormat(0x8C3D)
    alias GL_RGB9_E5_EXT = SizedInternalFormat(0x8C3D)
    alias GL_SRGB8 = SizedInternalFormat(0x8C41)
    alias GL_SRGB8_EXT = SizedInternalFormat(0x8C41)
    alias GL_SRGB8_NV = SizedInternalFormat(0x8C41)
    alias GL_SRGB8_ALPHA8 = SizedInternalFormat(0x8C43)
    alias GL_SRGB8_ALPHA8_EXT = SizedInternalFormat(0x8C43)
    alias GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4C)
    alias GL_COMPRESSED_SRGB_S3TC_DXT1_NV = SizedInternalFormat(0x8C4C)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4D)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = SizedInternalFormat(0x8C4D)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = SizedInternalFormat(0x8C4E)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = SizedInternalFormat(0x8C4E)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = SizedInternalFormat(0x8C4F)
    alias GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = SizedInternalFormat(0x8C4F)
    alias GL_DEPTH_COMPONENT32F = SizedInternalFormat(0x8CAC)
    alias GL_DEPTH32F_STENCIL8 = SizedInternalFormat(0x8CAD)
    alias GL_STENCIL_INDEX1 = SizedInternalFormat(0x8D46)
    alias GL_STENCIL_INDEX1_EXT = SizedInternalFormat(0x8D46)
    alias GL_STENCIL_INDEX1_OES = SizedInternalFormat(0x8D46)
    alias GL_STENCIL_INDEX4 = SizedInternalFormat(0x8D47)
    alias GL_STENCIL_INDEX4_EXT = SizedInternalFormat(0x8D47)
    alias GL_STENCIL_INDEX4_OES = SizedInternalFormat(0x8D47)
    alias GL_STENCIL_INDEX8 = SizedInternalFormat(0x8D48)
    alias GL_STENCIL_INDEX8_EXT = SizedInternalFormat(0x8D48)
    alias GL_STENCIL_INDEX8_OES = SizedInternalFormat(0x8D48)
    alias GL_STENCIL_INDEX16 = SizedInternalFormat(0x8D49)
    alias GL_STENCIL_INDEX16_EXT = SizedInternalFormat(0x8D49)
    alias GL_RGB565_OES = SizedInternalFormat(0x8D62)
    alias GL_RGB565 = SizedInternalFormat(0x8D62)
    alias GL_ETC1_RGB8_OES = SizedInternalFormat(0x8D64)
    alias GL_RGBA32UI = SizedInternalFormat(0x8D70)
    alias GL_RGBA32UI_EXT = SizedInternalFormat(0x8D70)
    alias GL_RGB32UI = SizedInternalFormat(0x8D71)
    alias GL_RGB32UI_EXT = SizedInternalFormat(0x8D71)
    alias GL_ALPHA32UI_EXT = SizedInternalFormat(0x8D72)
    alias GL_INTENSITY32UI_EXT = SizedInternalFormat(0x8D73)
    alias GL_LUMINANCE32UI_EXT = SizedInternalFormat(0x8D74)
    alias GL_LUMINANCE_ALPHA32UI_EXT = SizedInternalFormat(0x8D75)
    alias GL_RGBA16UI = SizedInternalFormat(0x8D76)
    alias GL_RGBA16UI_EXT = SizedInternalFormat(0x8D76)
    alias GL_RGB16UI = SizedInternalFormat(0x8D77)
    alias GL_RGB16UI_EXT = SizedInternalFormat(0x8D77)
    alias GL_ALPHA16UI_EXT = SizedInternalFormat(0x8D78)
    alias GL_INTENSITY16UI_EXT = SizedInternalFormat(0x8D79)
    alias GL_LUMINANCE16UI_EXT = SizedInternalFormat(0x8D7A)
    alias GL_LUMINANCE_ALPHA16UI_EXT = SizedInternalFormat(0x8D7B)
    alias GL_RGBA8UI = SizedInternalFormat(0x8D7C)
    alias GL_RGBA8UI_EXT = SizedInternalFormat(0x8D7C)
    alias GL_RGB8UI = SizedInternalFormat(0x8D7D)
    alias GL_RGB8UI_EXT = SizedInternalFormat(0x8D7D)
    alias GL_ALPHA8UI_EXT = SizedInternalFormat(0x8D7E)
    alias GL_INTENSITY8UI_EXT = SizedInternalFormat(0x8D7F)
    alias GL_LUMINANCE8UI_EXT = SizedInternalFormat(0x8D80)
    alias GL_LUMINANCE_ALPHA8UI_EXT = SizedInternalFormat(0x8D81)
    alias GL_RGBA32I = SizedInternalFormat(0x8D82)
    alias GL_RGBA32I_EXT = SizedInternalFormat(0x8D82)
    alias GL_RGB32I = SizedInternalFormat(0x8D83)
    alias GL_RGB32I_EXT = SizedInternalFormat(0x8D83)
    alias GL_ALPHA32I_EXT = SizedInternalFormat(0x8D84)
    alias GL_INTENSITY32I_EXT = SizedInternalFormat(0x8D85)
    alias GL_LUMINANCE32I_EXT = SizedInternalFormat(0x8D86)
    alias GL_LUMINANCE_ALPHA32I_EXT = SizedInternalFormat(0x8D87)
    alias GL_RGBA16I = SizedInternalFormat(0x8D88)
    alias GL_RGBA16I_EXT = SizedInternalFormat(0x8D88)
    alias GL_RGB16I = SizedInternalFormat(0x8D89)
    alias GL_RGB16I_EXT = SizedInternalFormat(0x8D89)
    alias GL_ALPHA16I_EXT = SizedInternalFormat(0x8D8A)
    alias GL_INTENSITY16I_EXT = SizedInternalFormat(0x8D8B)
    alias GL_LUMINANCE16I_EXT = SizedInternalFormat(0x8D8C)
    alias GL_LUMINANCE_ALPHA16I_EXT = SizedInternalFormat(0x8D8D)
    alias GL_RGBA8I = SizedInternalFormat(0x8D8E)
    alias GL_RGBA8I_EXT = SizedInternalFormat(0x8D8E)
    alias GL_RGB8I = SizedInternalFormat(0x8D8F)
    alias GL_RGB8I_EXT = SizedInternalFormat(0x8D8F)
    alias GL_ALPHA8I_EXT = SizedInternalFormat(0x8D90)
    alias GL_INTENSITY8I_EXT = SizedInternalFormat(0x8D91)
    alias GL_LUMINANCE8I_EXT = SizedInternalFormat(0x8D92)
    alias GL_LUMINANCE_ALPHA8I_EXT = SizedInternalFormat(0x8D93)
    alias GL_DEPTH_COMPONENT32F_NV = SizedInternalFormat(0x8DAB)
    alias GL_DEPTH32F_STENCIL8_NV = SizedInternalFormat(0x8DAC)
    alias GL_COMPRESSED_RED_RGTC1 = SizedInternalFormat(0x8DBB)
    alias GL_COMPRESSED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBB)
    alias GL_COMPRESSED_SIGNED_RED_RGTC1 = SizedInternalFormat(0x8DBC)
    alias GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBC)
    alias GL_COMPRESSED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBD)
    alias GL_COMPRESSED_RG_RGTC2 = SizedInternalFormat(0x8DBD)
    alias GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBE)
    alias GL_COMPRESSED_SIGNED_RG_RGTC2 = SizedInternalFormat(0x8DBE)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM = SizedInternalFormat(0x8E8C)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8C)
    alias GL_COMPRESSED_RGBA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8C)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = SizedInternalFormat(0x8E8D)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8D)
    alias GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8D)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = SizedInternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8E)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = SizedInternalFormat(0x8E8F)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8F)
    alias GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8F)
    alias GL_R8_SNORM = SizedInternalFormat(0x8F94)
    alias GL_RG8_SNORM = SizedInternalFormat(0x8F95)
    alias GL_RGB8_SNORM = SizedInternalFormat(0x8F96)
    alias GL_RGBA8_SNORM = SizedInternalFormat(0x8F97)
    alias GL_R16_SNORM = SizedInternalFormat(0x8F98)
    alias GL_R16_SNORM_EXT = SizedInternalFormat(0x8F98)
    alias GL_RG16_SNORM = SizedInternalFormat(0x8F99)
    alias GL_RG16_SNORM_EXT = SizedInternalFormat(0x8F99)
    alias GL_RGB16_SNORM = SizedInternalFormat(0x8F9A)
    alias GL_RGB16_SNORM_EXT = SizedInternalFormat(0x8F9A)
    alias GL_RGBA16_SNORM = SizedInternalFormat(0x8F9B)
    alias GL_RGBA16_SNORM_EXT = SizedInternalFormat(0x8F9B)
    alias GL_RGB10_A2UI = SizedInternalFormat(0x906F)
    alias GL_COMPRESSED_R11_EAC = SizedInternalFormat(0x9270)
    alias GL_COMPRESSED_R11_EAC_OES = SizedInternalFormat(0x9270)
    alias GL_COMPRESSED_SIGNED_R11_EAC = SizedInternalFormat(0x9271)
    alias GL_COMPRESSED_SIGNED_R11_EAC_OES = SizedInternalFormat(0x9271)
    alias GL_COMPRESSED_RG11_EAC = SizedInternalFormat(0x9272)
    alias GL_COMPRESSED_RG11_EAC_OES = SizedInternalFormat(0x9272)
    alias GL_COMPRESSED_SIGNED_RG11_EAC = SizedInternalFormat(0x9273)
    alias GL_COMPRESSED_SIGNED_RG11_EAC_OES = SizedInternalFormat(0x9273)
    alias GL_COMPRESSED_RGB8_ETC2 = SizedInternalFormat(0x9274)
    alias GL_COMPRESSED_RGB8_ETC2_OES = SizedInternalFormat(0x9274)
    alias GL_COMPRESSED_SRGB8_ETC2 = SizedInternalFormat(0x9275)
    alias GL_COMPRESSED_SRGB8_ETC2_OES = SizedInternalFormat(0x9275)
    alias GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9276)
    alias GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9276)
    alias GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9277)
    alias GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9277)
    alias GL_COMPRESSED_RGBA8_ETC2_EAC = SizedInternalFormat(0x9278)
    alias GL_COMPRESSED_RGBA8_ETC2_EAC_OES = SizedInternalFormat(0x9278)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = SizedInternalFormat(0x9279)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = SizedInternalFormat(0x9279)
    alias GL_COMPRESSED_RGBA_ASTC_4x4 = SizedInternalFormat(0x93B0)
    alias GL_COMPRESSED_RGBA_ASTC_4x4_KHR = SizedInternalFormat(0x93B0)
    alias GL_COMPRESSED_RGBA_ASTC_5x4 = SizedInternalFormat(0x93B1)
    alias GL_COMPRESSED_RGBA_ASTC_5x4_KHR = SizedInternalFormat(0x93B1)
    alias GL_COMPRESSED_RGBA_ASTC_5x5 = SizedInternalFormat(0x93B2)
    alias GL_COMPRESSED_RGBA_ASTC_5x5_KHR = SizedInternalFormat(0x93B2)
    alias GL_COMPRESSED_RGBA_ASTC_6x5 = SizedInternalFormat(0x93B3)
    alias GL_COMPRESSED_RGBA_ASTC_6x5_KHR = SizedInternalFormat(0x93B3)
    alias GL_COMPRESSED_RGBA_ASTC_6x6 = SizedInternalFormat(0x93B4)
    alias GL_COMPRESSED_RGBA_ASTC_6x6_KHR = SizedInternalFormat(0x93B4)
    alias GL_COMPRESSED_RGBA_ASTC_8x5 = SizedInternalFormat(0x93B5)
    alias GL_COMPRESSED_RGBA_ASTC_8x5_KHR = SizedInternalFormat(0x93B5)
    alias GL_COMPRESSED_RGBA_ASTC_8x6 = SizedInternalFormat(0x93B6)
    alias GL_COMPRESSED_RGBA_ASTC_8x6_KHR = SizedInternalFormat(0x93B6)
    alias GL_COMPRESSED_RGBA_ASTC_8x8 = SizedInternalFormat(0x93B7)
    alias GL_COMPRESSED_RGBA_ASTC_8x8_KHR = SizedInternalFormat(0x93B7)
    alias GL_COMPRESSED_RGBA_ASTC_10x5 = SizedInternalFormat(0x93B8)
    alias GL_COMPRESSED_RGBA_ASTC_10x5_KHR = SizedInternalFormat(0x93B8)
    alias GL_COMPRESSED_RGBA_ASTC_10x6 = SizedInternalFormat(0x93B9)
    alias GL_COMPRESSED_RGBA_ASTC_10x6_KHR = SizedInternalFormat(0x93B9)
    alias GL_COMPRESSED_RGBA_ASTC_10x8 = SizedInternalFormat(0x93BA)
    alias GL_COMPRESSED_RGBA_ASTC_10x8_KHR = SizedInternalFormat(0x93BA)
    alias GL_COMPRESSED_RGBA_ASTC_10x10 = SizedInternalFormat(0x93BB)
    alias GL_COMPRESSED_RGBA_ASTC_10x10_KHR = SizedInternalFormat(0x93BB)
    alias GL_COMPRESSED_RGBA_ASTC_12x10 = SizedInternalFormat(0x93BC)
    alias GL_COMPRESSED_RGBA_ASTC_12x10_KHR = SizedInternalFormat(0x93BC)
    alias GL_COMPRESSED_RGBA_ASTC_12x12 = SizedInternalFormat(0x93BD)
    alias GL_COMPRESSED_RGBA_ASTC_12x12_KHR = SizedInternalFormat(0x93BD)
    alias GL_COMPRESSED_RGBA_ASTC_3x3x3_OES = SizedInternalFormat(0x93C0)
    alias GL_COMPRESSED_RGBA_ASTC_4x3x3_OES = SizedInternalFormat(0x93C1)
    alias GL_COMPRESSED_RGBA_ASTC_4x4x3_OES = SizedInternalFormat(0x93C2)
    alias GL_COMPRESSED_RGBA_ASTC_4x4x4_OES = SizedInternalFormat(0x93C3)
    alias GL_COMPRESSED_RGBA_ASTC_5x4x4_OES = SizedInternalFormat(0x93C4)
    alias GL_COMPRESSED_RGBA_ASTC_5x5x4_OES = SizedInternalFormat(0x93C5)
    alias GL_COMPRESSED_RGBA_ASTC_5x5x5_OES = SizedInternalFormat(0x93C6)
    alias GL_COMPRESSED_RGBA_ASTC_6x5x5_OES = SizedInternalFormat(0x93C7)
    alias GL_COMPRESSED_RGBA_ASTC_6x6x5_OES = SizedInternalFormat(0x93C8)
    alias GL_COMPRESSED_RGBA_ASTC_6x6x6_OES = SizedInternalFormat(0x93C9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = SizedInternalFormat(0x93D0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = SizedInternalFormat(0x93D0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = SizedInternalFormat(0x93D1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = SizedInternalFormat(0x93D1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = SizedInternalFormat(0x93D2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = SizedInternalFormat(0x93D2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = SizedInternalFormat(0x93D3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = SizedInternalFormat(0x93D3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = SizedInternalFormat(0x93D4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = SizedInternalFormat(0x93D4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = SizedInternalFormat(0x93D5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = SizedInternalFormat(0x93D5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = SizedInternalFormat(0x93D6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = SizedInternalFormat(0x93D6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = SizedInternalFormat(0x93D7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = SizedInternalFormat(0x93D7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = SizedInternalFormat(0x93D8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = SizedInternalFormat(0x93D8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = SizedInternalFormat(0x93D9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = SizedInternalFormat(0x93D9)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = SizedInternalFormat(0x93DA)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = SizedInternalFormat(0x93DA)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = SizedInternalFormat(0x93DB)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = SizedInternalFormat(0x93DB)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = SizedInternalFormat(0x93DC)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = SizedInternalFormat(0x93DC)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = SizedInternalFormat(0x93DD)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = SizedInternalFormat(0x93DD)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = SizedInternalFormat(0x93E0)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = SizedInternalFormat(0x93E1)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = SizedInternalFormat(0x93E2)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = SizedInternalFormat(0x93E3)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = SizedInternalFormat(0x93E4)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = SizedInternalFormat(0x93E5)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = SizedInternalFormat(0x93E6)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = SizedInternalFormat(0x93E7)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = SizedInternalFormat(0x93E8)
    alias GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = SizedInternalFormat(0x93E9)


@fieldwise_init
@register_passable("trivial")
struct StencilFunction:
    var value: GLenum

    alias GL_NEVER = StencilFunction(0x0200)
    alias GL_LESS = StencilFunction(0x0201)
    alias GL_EQUAL = StencilFunction(0x0202)
    alias GL_LEQUAL = StencilFunction(0x0203)
    alias GL_GREATER = StencilFunction(0x0204)
    alias GL_NOTEQUAL = StencilFunction(0x0205)
    alias GL_GEQUAL = StencilFunction(0x0206)
    alias GL_ALWAYS = StencilFunction(0x0207)


@fieldwise_init
@register_passable("trivial")
struct StencilOp:
    var value: GLenum

    alias GL_ZERO = StencilOp(0)
    alias GL_INVERT = StencilOp(0x150A)
    alias GL_KEEP = StencilOp(0x1E00)
    alias GL_REPLACE = StencilOp(0x1E01)
    alias GL_INCR = StencilOp(0x1E02)
    alias GL_DECR = StencilOp(0x1E03)
    alias GL_INCR_WRAP = StencilOp(0x8507)
    alias GL_DECR_WRAP = StencilOp(0x8508)


@fieldwise_init
@register_passable("trivial")
struct StringName:
    var value: GLenum

    alias GL_VENDOR = StringName(0x1F00)
    alias GL_RENDERER = StringName(0x1F01)
    alias GL_VERSION = StringName(0x1F02)
    alias GL_EXTENSIONS = StringName(0x1F03)
    alias GL_SHADING_LANGUAGE_VERSION = StringName(0x8B8C)


@fieldwise_init
@register_passable("trivial")
struct SubroutineParameterName:
    var value: GLenum

    alias GL_UNIFORM_SIZE = SubroutineParameterName(0x8A38)
    alias GL_UNIFORM_NAME_LENGTH = SubroutineParameterName(0x8A39)
    alias GL_NUM_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4A)
    alias GL_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4B)


@fieldwise_init
@register_passable("trivial")
struct SyncBehaviorFlags:
    var value: GLbitfield

    alias GL_NONE = SyncBehaviorFlags(0)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncCondition:
    var value: GLenum

    alias GL_SYNC_GPU_COMMANDS_COMPLETE = SyncCondition(0x9117)


@fieldwise_init
@register_passable("trivial")
struct SyncObjectMask:
    var value: GLbitfield

    alias GL_SYNC_FLUSH_COMMANDS_BIT = SyncObjectMask(0x00000001)
    alias GL_SYNC_FLUSH_COMMANDS_BIT_APPLE = SyncObjectMask(0x00000001)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncParameterName:
    var value: GLenum

    alias GL_OBJECT_TYPE = SyncParameterName(0x9112)
    alias GL_SYNC_CONDITION = SyncParameterName(0x9113)
    alias GL_SYNC_STATUS = SyncParameterName(0x9114)
    alias GL_SYNC_FLAGS = SyncParameterName(0x9115)


@fieldwise_init
@register_passable("trivial")
struct TexCoordPointerType:
    var value: GLenum

    alias GL_SHORT = TexCoordPointerType(0x1402)
    alias GL_INT = TexCoordPointerType(0x1404)
    alias GL_FLOAT = TexCoordPointerType(0x1406)
    alias GL_DOUBLE = TexCoordPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct TextureParameterName:
    var value: GLenum

    alias GL_TEXTURE_WIDTH = TextureParameterName(0x1000)
    alias GL_TEXTURE_HEIGHT = TextureParameterName(0x1001)
    alias GL_TEXTURE_INTERNAL_FORMAT = TextureParameterName(0x1003)
    alias GL_TEXTURE_COMPONENTS = TextureParameterName(0x1003)
    alias GL_TEXTURE_BORDER_COLOR = TextureParameterName(0x1004)
    alias GL_TEXTURE_BORDER_COLOR_NV = TextureParameterName(0x1004)
    alias GL_TEXTURE_BORDER = TextureParameterName(0x1005)
    alias GL_TEXTURE_MAG_FILTER = TextureParameterName(0x2800)
    alias GL_TEXTURE_MIN_FILTER = TextureParameterName(0x2801)
    alias GL_TEXTURE_WRAP_S = TextureParameterName(0x2802)
    alias GL_TEXTURE_WRAP_T = TextureParameterName(0x2803)
    alias GL_TEXTURE_RED_SIZE = TextureParameterName(0x805C)
    alias GL_TEXTURE_GREEN_SIZE = TextureParameterName(0x805D)
    alias GL_TEXTURE_BLUE_SIZE = TextureParameterName(0x805E)
    alias GL_TEXTURE_ALPHA_SIZE = TextureParameterName(0x805F)
    alias GL_TEXTURE_LUMINANCE_SIZE = TextureParameterName(0x8060)
    alias GL_TEXTURE_INTENSITY_SIZE = TextureParameterName(0x8061)
    alias GL_TEXTURE_PRIORITY = TextureParameterName(0x8066)
    alias GL_TEXTURE_PRIORITY_EXT = TextureParameterName(0x8066)
    alias GL_TEXTURE_RESIDENT = TextureParameterName(0x8067)
    alias GL_TEXTURE_DEPTH_EXT = TextureParameterName(0x8071)
    alias GL_TEXTURE_WRAP_R = TextureParameterName(0x8072)
    alias GL_TEXTURE_WRAP_R_EXT = TextureParameterName(0x8072)
    alias GL_TEXTURE_WRAP_R_OES = TextureParameterName(0x8072)
    alias GL_DETAIL_TEXTURE_LEVEL_SGIS = TextureParameterName(0x809A)
    alias GL_DETAIL_TEXTURE_MODE_SGIS = TextureParameterName(0x809B)
    alias GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x809C)
    alias GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x80B0)
    alias GL_SHADOW_AMBIENT_SGIX = TextureParameterName(0x80BF)
    alias GL_DUAL_TEXTURE_SELECT_SGIS = TextureParameterName(0x8124)
    alias GL_QUAD_TEXTURE_SELECT_SGIS = TextureParameterName(0x8125)
    alias GL_TEXTURE_4DSIZE_SGIS = TextureParameterName(0x8136)
    alias GL_TEXTURE_WRAP_Q_SGIS = TextureParameterName(0x8137)
    alias GL_TEXTURE_MIN_LOD = TextureParameterName(0x813A)
    alias GL_TEXTURE_MIN_LOD_SGIS = TextureParameterName(0x813A)
    alias GL_TEXTURE_MAX_LOD = TextureParameterName(0x813B)
    alias GL_TEXTURE_MAX_LOD_SGIS = TextureParameterName(0x813B)
    alias GL_TEXTURE_BASE_LEVEL = TextureParameterName(0x813C)
    alias GL_TEXTURE_BASE_LEVEL_SGIS = TextureParameterName(0x813C)
    alias GL_TEXTURE_MAX_LEVEL = TextureParameterName(0x813D)
    alias GL_TEXTURE_MAX_LEVEL_SGIS = TextureParameterName(0x813D)
    alias GL_TEXTURE_FILTER4_SIZE_SGIS = TextureParameterName(0x8147)
    alias GL_TEXTURE_CLIPMAP_CENTER_SGIX = TextureParameterName(0x8171)
    alias GL_TEXTURE_CLIPMAP_FRAME_SGIX = TextureParameterName(0x8172)
    alias GL_TEXTURE_CLIPMAP_OFFSET_SGIX = TextureParameterName(0x8173)
    alias GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = TextureParameterName(0x8174)
    alias GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = TextureParameterName(0x8175)
    alias GL_TEXTURE_CLIPMAP_DEPTH_SGIX = TextureParameterName(0x8176)
    alias GL_POST_TEXTURE_FILTER_BIAS_SGIX = TextureParameterName(0x8179)
    alias GL_POST_TEXTURE_FILTER_SCALE_SGIX = TextureParameterName(0x817A)
    alias GL_TEXTURE_LOD_BIAS_S_SGIX = TextureParameterName(0x818E)
    alias GL_TEXTURE_LOD_BIAS_T_SGIX = TextureParameterName(0x818F)
    alias GL_TEXTURE_LOD_BIAS_R_SGIX = TextureParameterName(0x8190)
    alias GL_GENERATE_MIPMAP = TextureParameterName(0x8191)
    alias GL_GENERATE_MIPMAP_SGIS = TextureParameterName(0x8191)
    alias GL_TEXTURE_COMPARE_SGIX = TextureParameterName(0x819A)
    alias GL_TEXTURE_COMPARE_OPERATOR_SGIX = TextureParameterName(0x819B)
    alias GL_TEXTURE_LEQUAL_R_SGIX = TextureParameterName(0x819C)
    alias GL_TEXTURE_GEQUAL_R_SGIX = TextureParameterName(0x819D)
    alias GL_TEXTURE_MAX_CLAMP_S_SGIX = TextureParameterName(0x8369)
    alias GL_TEXTURE_MAX_CLAMP_T_SGIX = TextureParameterName(0x836A)
    alias GL_TEXTURE_MAX_CLAMP_R_SGIX = TextureParameterName(0x836B)
    alias GL_TEXTURE_MEMORY_LAYOUT_INTEL = TextureParameterName(0x83FF)
    alias GL_TEXTURE_MAX_ANISOTROPY = TextureParameterName(0x84FE)
    alias GL_TEXTURE_LOD_BIAS = TextureParameterName(0x8501)
    alias GL_TEXTURE_COMPARE_MODE = TextureParameterName(0x884C)
    alias GL_TEXTURE_COMPARE_FUNC = TextureParameterName(0x884D)
    alias GL_TEXTURE_SWIZZLE_R = TextureParameterName(0x8E42)
    alias GL_TEXTURE_SWIZZLE_G = TextureParameterName(0x8E43)
    alias GL_TEXTURE_SWIZZLE_B = TextureParameterName(0x8E44)
    alias GL_TEXTURE_SWIZZLE_A = TextureParameterName(0x8E45)
    alias GL_TEXTURE_SWIZZLE_RGBA = TextureParameterName(0x8E46)
    alias GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = TextureParameterName(0x8F6A)
    alias GL_DEPTH_STENCIL_TEXTURE_MODE = TextureParameterName(0x90EA)
    alias GL_TEXTURE_TILING_EXT = TextureParameterName(0x9580)
    alias GL_TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM = TextureParameterName(0x96A0)
    alias GL_TEXTURE_Y_DEGAMMA_QCOM = TextureParameterName(0x9710)
    alias GL_TEXTURE_CBCR_DEGAMMA_QCOM = TextureParameterName(0x9711)


@fieldwise_init
@register_passable("trivial")
struct TextureTarget:
    var value: GLenum

    alias GL_TEXTURE_1D = TextureTarget(0x0DE0)
    alias GL_TEXTURE_2D = TextureTarget(0x0DE1)
    alias GL_PROXY_TEXTURE_1D = TextureTarget(0x8063)
    alias GL_PROXY_TEXTURE_1D_EXT = TextureTarget(0x8063)
    alias GL_PROXY_TEXTURE_2D = TextureTarget(0x8064)
    alias GL_PROXY_TEXTURE_2D_EXT = TextureTarget(0x8064)
    alias GL_TEXTURE_3D = TextureTarget(0x806F)
    alias GL_TEXTURE_3D_EXT = TextureTarget(0x806F)
    alias GL_TEXTURE_3D_OES = TextureTarget(0x806F)
    alias GL_PROXY_TEXTURE_3D = TextureTarget(0x8070)
    alias GL_PROXY_TEXTURE_3D_EXT = TextureTarget(0x8070)
    alias GL_DETAIL_TEXTURE_2D_SGIS = TextureTarget(0x8095)
    alias GL_TEXTURE_4D_SGIS = TextureTarget(0x8134)
    alias GL_PROXY_TEXTURE_4D_SGIS = TextureTarget(0x8135)
    alias GL_TEXTURE_RECTANGLE = TextureTarget(0x84F5)
    alias GL_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F5)
    alias GL_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F5)
    alias GL_PROXY_TEXTURE_RECTANGLE = TextureTarget(0x84F7)
    alias GL_PROXY_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F7)
    alias GL_PROXY_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F7)
    alias GL_TEXTURE_CUBE_MAP = TextureTarget(0x8513)
    alias GL_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x8513)
    alias GL_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x8513)
    alias GL_TEXTURE_CUBE_MAP_OES = TextureTarget(0x8513)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_X = TextureTarget(0x8515)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = TextureTarget(0x8515)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = TextureTarget(0x8515)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_X_OES = TextureTarget(0x8515)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_X = TextureTarget(0x8516)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = TextureTarget(0x8516)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = TextureTarget(0x8516)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_X_OES = TextureTarget(0x8516)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Y = TextureTarget(0x8517)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = TextureTarget(0x8517)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = TextureTarget(0x8517)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Y_OES = TextureTarget(0x8517)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = TextureTarget(0x8518)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = TextureTarget(0x8518)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = TextureTarget(0x8518)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES = TextureTarget(0x8518)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Z = TextureTarget(0x8519)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = TextureTarget(0x8519)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = TextureTarget(0x8519)
    alias GL_TEXTURE_CUBE_MAP_POSITIVE_Z_OES = TextureTarget(0x8519)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = TextureTarget(0x851A)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = TextureTarget(0x851A)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = TextureTarget(0x851A)
    alias GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES = TextureTarget(0x851A)
    alias GL_PROXY_TEXTURE_CUBE_MAP = TextureTarget(0x851B)
    alias GL_PROXY_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x851B)
    alias GL_PROXY_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x851B)
    alias GL_TEXTURE_1D_ARRAY = TextureTarget(0x8C18)
    alias GL_PROXY_TEXTURE_1D_ARRAY = TextureTarget(0x8C19)
    alias GL_PROXY_TEXTURE_1D_ARRAY_EXT = TextureTarget(0x8C19)
    alias GL_TEXTURE_2D_ARRAY = TextureTarget(0x8C1A)
    alias GL_PROXY_TEXTURE_2D_ARRAY = TextureTarget(0x8C1B)
    alias GL_PROXY_TEXTURE_2D_ARRAY_EXT = TextureTarget(0x8C1B)
    alias GL_TEXTURE_BUFFER = TextureTarget(0x8C2A)
    alias GL_RENDERBUFFER = TextureTarget(0x8D41)
    alias GL_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x9009)
    alias GL_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x9009)
    alias GL_TEXTURE_CUBE_MAP_ARRAY_EXT = TextureTarget(0x9009)
    alias GL_TEXTURE_CUBE_MAP_ARRAY_OES = TextureTarget(0x9009)
    alias GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x900B)
    alias GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x900B)
    alias GL_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9100)
    alias GL_PROXY_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9101)
    alias GL_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9102)
    alias GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9103)


@fieldwise_init
@register_passable("trivial")
struct TextureUnit:
    var value: GLenum

    alias GL_TEXTURE0 = TextureUnit(0x84C0)
    alias GL_TEXTURE1 = TextureUnit(0x84C1)
    alias GL_TEXTURE2 = TextureUnit(0x84C2)
    alias GL_TEXTURE3 = TextureUnit(0x84C3)
    alias GL_TEXTURE4 = TextureUnit(0x84C4)
    alias GL_TEXTURE5 = TextureUnit(0x84C5)
    alias GL_TEXTURE6 = TextureUnit(0x84C6)
    alias GL_TEXTURE7 = TextureUnit(0x84C7)
    alias GL_TEXTURE8 = TextureUnit(0x84C8)
    alias GL_TEXTURE9 = TextureUnit(0x84C9)
    alias GL_TEXTURE10 = TextureUnit(0x84CA)
    alias GL_TEXTURE11 = TextureUnit(0x84CB)
    alias GL_TEXTURE12 = TextureUnit(0x84CC)
    alias GL_TEXTURE13 = TextureUnit(0x84CD)
    alias GL_TEXTURE14 = TextureUnit(0x84CE)
    alias GL_TEXTURE15 = TextureUnit(0x84CF)
    alias GL_TEXTURE16 = TextureUnit(0x84D0)
    alias GL_TEXTURE17 = TextureUnit(0x84D1)
    alias GL_TEXTURE18 = TextureUnit(0x84D2)
    alias GL_TEXTURE19 = TextureUnit(0x84D3)
    alias GL_TEXTURE20 = TextureUnit(0x84D4)
    alias GL_TEXTURE21 = TextureUnit(0x84D5)
    alias GL_TEXTURE22 = TextureUnit(0x84D6)
    alias GL_TEXTURE23 = TextureUnit(0x84D7)
    alias GL_TEXTURE24 = TextureUnit(0x84D8)
    alias GL_TEXTURE25 = TextureUnit(0x84D9)
    alias GL_TEXTURE26 = TextureUnit(0x84DA)
    alias GL_TEXTURE27 = TextureUnit(0x84DB)
    alias GL_TEXTURE28 = TextureUnit(0x84DC)
    alias GL_TEXTURE29 = TextureUnit(0x84DD)
    alias GL_TEXTURE30 = TextureUnit(0x84DE)
    alias GL_TEXTURE31 = TextureUnit(0x84DF)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackBufferMode:
    var value: GLenum

    alias GL_INTERLEAVED_ATTRIBS = TransformFeedbackBufferMode(0x8C8C)
    alias GL_SEPARATE_ATTRIBS = TransformFeedbackBufferMode(0x8C8D)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackPName:
    var value: GLenum

    alias GL_TRANSFORM_FEEDBACK_BUFFER_START = TransformFeedbackPName(0x8C84)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = TransformFeedbackPName(0x8C85)
    alias GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = TransformFeedbackPName(0x8C8F)
    alias GL_TRANSFORM_FEEDBACK_PAUSED = TransformFeedbackPName(0x8E23)
    alias GL_TRANSFORM_FEEDBACK_ACTIVE = TransformFeedbackPName(0x8E24)


@fieldwise_init
@register_passable("trivial")
struct TriangleFace:
    var value: GLenum

    alias GL_FRONT = TriangleFace(0x0404)
    alias GL_BACK = TriangleFace(0x0405)
    alias GL_FRONT_AND_BACK = TriangleFace(0x0408)


@fieldwise_init
@register_passable("trivial")
struct UniformBlockPName:
    var value: GLenum

    alias GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = UniformBlockPName(0x84F0)
    alias GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = UniformBlockPName(0x84F1)
    alias GL_UNIFORM_BLOCK_BINDING = UniformBlockPName(0x8A3F)
    alias GL_UNIFORM_BLOCK_DATA_SIZE = UniformBlockPName(0x8A40)
    alias GL_UNIFORM_BLOCK_NAME_LENGTH = UniformBlockPName(0x8A41)
    alias GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = UniformBlockPName(0x8A42)
    alias GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = UniformBlockPName(0x8A43)
    alias GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = UniformBlockPName(0x8A44)
    alias GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = UniformBlockPName(0x8A45)
    alias GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = UniformBlockPName(0x8A46)
    alias GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = UniformBlockPName(0x90EC)


@fieldwise_init
@register_passable("trivial")
struct UniformPName:
    var value: GLenum

    alias GL_UNIFORM_TYPE = UniformPName(0x8A37)
    alias GL_UNIFORM_SIZE = UniformPName(0x8A38)
    alias GL_UNIFORM_NAME_LENGTH = UniformPName(0x8A39)
    alias GL_UNIFORM_BLOCK_INDEX = UniformPName(0x8A3A)
    alias GL_UNIFORM_OFFSET = UniformPName(0x8A3B)
    alias GL_UNIFORM_ARRAY_STRIDE = UniformPName(0x8A3C)
    alias GL_UNIFORM_MATRIX_STRIDE = UniformPName(0x8A3D)
    alias GL_UNIFORM_IS_ROW_MAJOR = UniformPName(0x8A3E)
    alias GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = UniformPName(0x92DA)


@fieldwise_init
@register_passable("trivial")
struct UniformType:
    var value: GLenum

    alias GL_INT = UniformType(0x1404)
    alias GL_UNSIGNED_INT = UniformType(0x1405)
    alias GL_FLOAT = UniformType(0x1406)
    alias GL_DOUBLE = UniformType(0x140A)
    alias GL_FLOAT_VEC2 = UniformType(0x8B50)
    alias GL_FLOAT_VEC3 = UniformType(0x8B51)
    alias GL_FLOAT_VEC4 = UniformType(0x8B52)
    alias GL_INT_VEC2 = UniformType(0x8B53)
    alias GL_INT_VEC3 = UniformType(0x8B54)
    alias GL_INT_VEC4 = UniformType(0x8B55)
    alias GL_BOOL = UniformType(0x8B56)
    alias GL_BOOL_VEC2 = UniformType(0x8B57)
    alias GL_BOOL_VEC3 = UniformType(0x8B58)
    alias GL_BOOL_VEC4 = UniformType(0x8B59)
    alias GL_FLOAT_MAT2 = UniformType(0x8B5A)
    alias GL_FLOAT_MAT3 = UniformType(0x8B5B)
    alias GL_FLOAT_MAT4 = UniformType(0x8B5C)
    alias GL_SAMPLER_1D = UniformType(0x8B5D)
    alias GL_SAMPLER_2D = UniformType(0x8B5E)
    alias GL_SAMPLER_3D = UniformType(0x8B5F)
    alias GL_SAMPLER_CUBE = UniformType(0x8B60)
    alias GL_SAMPLER_1D_SHADOW = UniformType(0x8B61)
    alias GL_SAMPLER_2D_SHADOW = UniformType(0x8B62)
    alias GL_SAMPLER_2D_RECT = UniformType(0x8B63)
    alias GL_SAMPLER_2D_RECT_SHADOW = UniformType(0x8B64)
    alias GL_FLOAT_MAT2x3 = UniformType(0x8B65)
    alias GL_FLOAT_MAT2x4 = UniformType(0x8B66)
    alias GL_FLOAT_MAT3x2 = UniformType(0x8B67)
    alias GL_FLOAT_MAT3x4 = UniformType(0x8B68)
    alias GL_FLOAT_MAT4x2 = UniformType(0x8B69)
    alias GL_FLOAT_MAT4x3 = UniformType(0x8B6A)
    alias GL_SAMPLER_1D_ARRAY = UniformType(0x8DC0)
    alias GL_SAMPLER_2D_ARRAY = UniformType(0x8DC1)
    alias GL_SAMPLER_BUFFER = UniformType(0x8DC2)
    alias GL_SAMPLER_1D_ARRAY_SHADOW = UniformType(0x8DC3)
    alias GL_SAMPLER_2D_ARRAY_SHADOW = UniformType(0x8DC4)
    alias GL_SAMPLER_CUBE_SHADOW = UniformType(0x8DC5)
    alias GL_UNSIGNED_INT_VEC2 = UniformType(0x8DC6)
    alias GL_UNSIGNED_INT_VEC3 = UniformType(0x8DC7)
    alias GL_UNSIGNED_INT_VEC4 = UniformType(0x8DC8)
    alias GL_INT_SAMPLER_1D = UniformType(0x8DC9)
    alias GL_INT_SAMPLER_2D = UniformType(0x8DCA)
    alias GL_INT_SAMPLER_3D = UniformType(0x8DCB)
    alias GL_INT_SAMPLER_CUBE = UniformType(0x8DCC)
    alias GL_INT_SAMPLER_2D_RECT = UniformType(0x8DCD)
    alias GL_INT_SAMPLER_1D_ARRAY = UniformType(0x8DCE)
    alias GL_INT_SAMPLER_2D_ARRAY = UniformType(0x8DCF)
    alias GL_INT_SAMPLER_BUFFER = UniformType(0x8DD0)
    alias GL_UNSIGNED_INT_SAMPLER_1D = UniformType(0x8DD1)
    alias GL_UNSIGNED_INT_SAMPLER_2D = UniformType(0x8DD2)
    alias GL_UNSIGNED_INT_SAMPLER_3D = UniformType(0x8DD3)
    alias GL_UNSIGNED_INT_SAMPLER_CUBE = UniformType(0x8DD4)
    alias GL_UNSIGNED_INT_SAMPLER_2D_RECT = UniformType(0x8DD5)
    alias GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = UniformType(0x8DD6)
    alias GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = UniformType(0x8DD7)
    alias GL_UNSIGNED_INT_SAMPLER_BUFFER = UniformType(0x8DD8)
    alias GL_DOUBLE_MAT2 = UniformType(0x8F46)
    alias GL_DOUBLE_MAT3 = UniformType(0x8F47)
    alias GL_DOUBLE_MAT4 = UniformType(0x8F48)
    alias GL_DOUBLE_MAT2x3 = UniformType(0x8F49)
    alias GL_DOUBLE_MAT2x4 = UniformType(0x8F4A)
    alias GL_DOUBLE_MAT3x2 = UniformType(0x8F4B)
    alias GL_DOUBLE_MAT3x4 = UniformType(0x8F4C)
    alias GL_DOUBLE_MAT4x2 = UniformType(0x8F4D)
    alias GL_DOUBLE_MAT4x3 = UniformType(0x8F4E)
    alias GL_DOUBLE_VEC2 = UniformType(0x8FFC)
    alias GL_DOUBLE_VEC3 = UniformType(0x8FFD)
    alias GL_DOUBLE_VEC4 = UniformType(0x8FFE)
    alias GL_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900C)
    alias GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = UniformType(0x900D)
    alias GL_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900E)
    alias GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900F)
    alias GL_SAMPLER_2D_MULTISAMPLE = UniformType(0x9108)
    alias GL_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x9109)
    alias GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x910A)
    alias GL_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910B)
    alias GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910C)
    alias GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910D)


@fieldwise_init
@register_passable("trivial")
struct UseProgramStageMask:
    var value: GLbitfield

    alias GL_VERTEX_SHADER_BIT = UseProgramStageMask(0x00000001)
    alias GL_VERTEX_SHADER_BIT_EXT = UseProgramStageMask(0x00000001)
    alias GL_FRAGMENT_SHADER_BIT = UseProgramStageMask(0x00000002)
    alias GL_FRAGMENT_SHADER_BIT_EXT = UseProgramStageMask(0x00000002)
    alias GL_GEOMETRY_SHADER_BIT = UseProgramStageMask(0x00000004)
    alias GL_GEOMETRY_SHADER_BIT_EXT = UseProgramStageMask(0x00000004)
    alias GL_GEOMETRY_SHADER_BIT_OES = UseProgramStageMask(0x00000004)
    alias GL_TESS_CONTROL_SHADER_BIT = UseProgramStageMask(0x00000008)
    alias GL_TESS_CONTROL_SHADER_BIT_EXT = UseProgramStageMask(0x00000008)
    alias GL_TESS_CONTROL_SHADER_BIT_OES = UseProgramStageMask(0x00000008)
    alias GL_TESS_EVALUATION_SHADER_BIT = UseProgramStageMask(0x00000010)
    alias GL_TESS_EVALUATION_SHADER_BIT_EXT = UseProgramStageMask(0x00000010)
    alias GL_TESS_EVALUATION_SHADER_BIT_OES = UseProgramStageMask(0x00000010)
    alias GL_COMPUTE_SHADER_BIT = UseProgramStageMask(0x00000020)
    alias GL_MESH_SHADER_BIT_NV = UseProgramStageMask(0x00000040)
    alias GL_TASK_SHADER_BIT_NV = UseProgramStageMask(0x00000080)
    alias GL_ALL_SHADER_BITS = UseProgramStageMask(0xFFFFFFFF)
    alias GL_ALL_SHADER_BITS_EXT = UseProgramStageMask(0xFFFFFFFF)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct VertexArrayPName:
    var value: GLenum

    alias GL_VERTEX_ATTRIB_RELATIVE_OFFSET = VertexArrayPName(0x82D5)
    alias GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexArrayPName(0x8622)
    alias GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexArrayPName(0x8623)
    alias GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexArrayPName(0x8624)
    alias GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexArrayPName(0x8625)
    alias GL_VERTEX_ATTRIB_ARRAY_LONG = VertexArrayPName(0x874E)
    alias GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexArrayPName(0x886A)
    alias GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexArrayPName(0x88FD)
    alias GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexArrayPName(0x88FE)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribEnum:
    var value: GLenum

    alias GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribEnum(0x8622)
    alias GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribEnum(0x8623)
    alias GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribEnum(0x8624)
    alias GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribEnum(0x8625)
    alias GL_CURRENT_VERTEX_ATTRIB = VertexAttribEnum(0x8626)
    alias GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribEnum(0x886A)
    alias GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribEnum(0x889F)
    alias GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribEnum(0x88FD)
    alias GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribEnum(0x88FE)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribIType:
    var value: GLenum

    alias GL_BYTE = VertexAttribIType(0x1400)
    alias GL_UNSIGNED_BYTE = VertexAttribIType(0x1401)
    alias GL_SHORT = VertexAttribIType(0x1402)
    alias GL_UNSIGNED_SHORT = VertexAttribIType(0x1403)
    alias GL_INT = VertexAttribIType(0x1404)
    alias GL_UNSIGNED_INT = VertexAttribIType(0x1405)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribLType:
    var value: GLenum

    alias GL_DOUBLE = VertexAttribLType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerPropertyARB:
    var value: GLenum

    alias GL_VERTEX_ATTRIB_ARRAY_POINTER = VertexAttribPointerPropertyARB(0x8645)
    alias GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = VertexAttribPointerPropertyARB(0x8645)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerType:
    var value: GLenum

    alias GL_BYTE = VertexAttribPointerType(0x1400)
    alias GL_UNSIGNED_BYTE = VertexAttribPointerType(0x1401)
    alias GL_SHORT = VertexAttribPointerType(0x1402)
    alias GL_UNSIGNED_SHORT = VertexAttribPointerType(0x1403)
    alias GL_INT = VertexAttribPointerType(0x1404)
    alias GL_UNSIGNED_INT = VertexAttribPointerType(0x1405)
    alias GL_FLOAT = VertexAttribPointerType(0x1406)
    alias GL_DOUBLE = VertexAttribPointerType(0x140A)
    alias GL_HALF_FLOAT = VertexAttribPointerType(0x140B)
    alias GL_FIXED = VertexAttribPointerType(0x140C)
    alias GL_INT64_ARB = VertexAttribPointerType(0x140E)
    alias GL_INT64_NV = VertexAttribPointerType(0x140E)
    alias GL_UNSIGNED_INT64_ARB = VertexAttribPointerType(0x140F)
    alias GL_UNSIGNED_INT64_NV = VertexAttribPointerType(0x140F)
    alias GL_UNSIGNED_INT_2_10_10_10_REV = VertexAttribPointerType(0x8368)
    alias GL_UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribPointerType(0x8368)
    alias GL_UNSIGNED_INT_10F_11F_11F_REV = VertexAttribPointerType(0x8C3B)
    alias GL_INT_2_10_10_10_REV = VertexAttribPointerType(0x8D9F)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPropertyARB:
    var value: GLenum

    alias GL_VERTEX_ATTRIB_BINDING = VertexAttribPropertyARB(0x82D4)
    alias GL_VERTEX_ATTRIB_RELATIVE_OFFSET = VertexAttribPropertyARB(0x82D5)
    alias GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribPropertyARB(0x8622)
    alias GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribPropertyARB(0x8623)
    alias GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribPropertyARB(0x8624)
    alias GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribPropertyARB(0x8625)
    alias GL_CURRENT_VERTEX_ATTRIB = VertexAttribPropertyARB(0x8626)
    alias GL_VERTEX_ATTRIB_ARRAY_LONG = VertexAttribPropertyARB(0x874E)
    alias GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribPropertyARB(0x886A)
    alias GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribPropertyARB(0x889F)
    alias GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribPropertyARB(0x88FD)
    alias GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = VertexAttribPropertyARB(0x88FD)
    alias GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribPropertyARB(0x88FE)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribType:
    var value: GLenum

    alias GL_BYTE = VertexAttribType(0x1400)
    alias GL_UNSIGNED_BYTE = VertexAttribType(0x1401)
    alias GL_SHORT = VertexAttribType(0x1402)
    alias GL_UNSIGNED_SHORT = VertexAttribType(0x1403)
    alias GL_INT = VertexAttribType(0x1404)
    alias GL_UNSIGNED_INT = VertexAttribType(0x1405)
    alias GL_FLOAT = VertexAttribType(0x1406)
    alias GL_DOUBLE = VertexAttribType(0x140A)
    alias GL_HALF_FLOAT = VertexAttribType(0x140B)
    alias GL_FIXED = VertexAttribType(0x140C)
    alias GL_UNSIGNED_INT_2_10_10_10_REV = VertexAttribType(0x8368)
    alias GL_UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribType(0x8368)
    alias GL_UNSIGNED_INT_10F_11F_11F_REV = VertexAttribType(0x8C3B)
    alias GL_INT_2_10_10_10_REV = VertexAttribType(0x8D9F)


@fieldwise_init
@register_passable("trivial")
struct VertexBufferObjectUsage:
    var value: GLenum

    alias GL_STREAM_DRAW = VertexBufferObjectUsage(0x88E0)
    alias GL_STREAM_READ = VertexBufferObjectUsage(0x88E1)
    alias GL_STREAM_COPY = VertexBufferObjectUsage(0x88E2)
    alias GL_STATIC_DRAW = VertexBufferObjectUsage(0x88E4)
    alias GL_STATIC_READ = VertexBufferObjectUsage(0x88E5)
    alias GL_STATIC_COPY = VertexBufferObjectUsage(0x88E6)
    alias GL_DYNAMIC_DRAW = VertexBufferObjectUsage(0x88E8)
    alias GL_DYNAMIC_READ = VertexBufferObjectUsage(0x88E9)
    alias GL_DYNAMIC_COPY = VertexBufferObjectUsage(0x88EA)


@fieldwise_init
@register_passable("trivial")
struct VertexPointerType:
    var value: GLenum

    alias GL_SHORT = VertexPointerType(0x1402)
    alias GL_INT = VertexPointerType(0x1404)
    alias GL_FLOAT = VertexPointerType(0x1406)
    alias GL_DOUBLE = VertexPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct VertexProvokingMode:
    var value: GLenum

    alias GL_FIRST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4D)
    alias GL_LAST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4E)


# ========= COMMANDS =========

alias LoadProc = fn (owned proc: String) -> fn () -> None


@always_inline
fn load_proc[result_type: AnyTrivialRegType](name: String, load: LoadProc) raises -> result_type:
    var ptr = Ptr(to=load(name))
    if not ptr:
        raise Error("Failed to load function " + name)
    return ptr.bitcast[result_type]()[]


alias fptr_glBlendFunc = fn (sfactor: BlendingFactor, dfactor: BlendingFactor)
alias fptr_glClear = fn (mask: ClearBufferMask)
alias fptr_glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
alias fptr_glClearDepth = fn (depth: GLdouble)
alias fptr_glClearStencil = fn (s: GLint)
alias fptr_glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean)
alias fptr_glCullFace = fn (mode: TriangleFace)
alias fptr_glDepthFunc = fn (func: DepthFunction)
alias fptr_glDepthMask = fn (flag: GLboolean)
alias fptr_glDepthRange = fn (n: GLdouble, f: GLdouble)
alias fptr_glDisable = fn (cap: EnableCap)
alias fptr_glDrawBuffer = fn (buf: DrawBufferMode)
alias fptr_glEnable = fn (cap: EnableCap)
alias fptr_glFinish = fn ()
alias fptr_glFlush = fn ()
alias fptr_glFrontFace = fn (mode: FrontFaceDirection)
alias fptr_glGetBooleanv = fn (pname: GetPName, data: Ptr[GLboolean])
alias fptr_glGetDoublev = fn (pname: GetPName, data: Ptr[GLdouble])
alias fptr_glGetError = fn () -> GLenum
alias fptr_glGetFloatv = fn (pname: GetPName, data: Ptr[GLfloat])
alias fptr_glGetIntegerv = fn (pname: GetPName, data: Ptr[GLint])
alias fptr_glGetString = fn (name: StringName) -> GLubyte
alias fptr_glGetTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glGetTexLevelParameterfv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat])
alias fptr_glGetTexLevelParameteriv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glGetTexParameterfv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat])
alias fptr_glGetTexParameteriv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glHint = fn (target: HintTarget, mode: HintMode)
alias fptr_glIsEnabled = fn (cap: EnableCap) -> GLboolean
alias fptr_glLineWidth = fn (width: GLfloat)
alias fptr_glLogicOp = fn (opcode: LogicOp)
alias fptr_glPixelStoref = fn (pname: PixelStoreParameter, param: GLfloat)
alias fptr_glPixelStorei = fn (pname: PixelStoreParameter, param: GLint)
alias fptr_glPointSize = fn (size: GLfloat)
alias fptr_glPolygonMode = fn (face: TriangleFace, mode: PolygonMode)
alias fptr_glReadBuffer = fn (src: ReadBufferMode)
alias fptr_glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glStencilFunc = fn (func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilMask = fn (mask: GLuint)
alias fptr_glStencilOp = fn (fail: StencilOp, zfail: StencilOp, zpass: StencilOp)
alias fptr_glTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTexParameterf = fn (target: TextureTarget, pname: TextureParameterName, param: GLfloat)
alias fptr_glTexParameterfv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat])
alias fptr_glTexParameteri = fn (target: TextureTarget, pname: TextureParameterName, param: GLint)
alias fptr_glTexParameteriv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint])
alias fptr_glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)


struct GL_VERSION_1_0:
    """Functions for gl 1.0."""

    var blendFunc: fptr_glBlendFunc
    var clear: fptr_glClear
    var clearColor: fptr_glClearColor
    var clearDepth: fptr_glClearDepth
    var clearStencil: fptr_glClearStencil
    var colorMask: fptr_glColorMask
    var cullFace: fptr_glCullFace
    var depthFunc: fptr_glDepthFunc
    var depthMask: fptr_glDepthMask
    var depthRange: fptr_glDepthRange
    var disable: fptr_glDisable
    var drawBuffer: fptr_glDrawBuffer
    var enable: fptr_glEnable
    var finish: fptr_glFinish
    var flush: fptr_glFlush
    var frontFace: fptr_glFrontFace
    var getBooleanv: fptr_glGetBooleanv
    var getDoublev: fptr_glGetDoublev
    var getError: fptr_glGetError
    var getFloatv: fptr_glGetFloatv
    var getIntegerv: fptr_glGetIntegerv
    var getString: fptr_glGetString
    var getTexImage: fptr_glGetTexImage
    var getTexLevelParameterfv: fptr_glGetTexLevelParameterfv
    var getTexLevelParameteriv: fptr_glGetTexLevelParameteriv
    var getTexParameterfv: fptr_glGetTexParameterfv
    var getTexParameteriv: fptr_glGetTexParameteriv
    var hint: fptr_glHint
    var isEnabled: fptr_glIsEnabled
    var lineWidth: fptr_glLineWidth
    var logicOp: fptr_glLogicOp
    var pixelStoref: fptr_glPixelStoref
    var pixelStorei: fptr_glPixelStorei
    var pointSize: fptr_glPointSize
    var polygonMode: fptr_glPolygonMode
    var readBuffer: fptr_glReadBuffer
    var readPixels: fptr_glReadPixels
    var scissor: fptr_glScissor
    var stencilFunc: fptr_glStencilFunc
    var stencilMask: fptr_glStencilMask
    var stencilOp: fptr_glStencilOp
    var texImage1D: fptr_glTexImage1D
    var texImage2D: fptr_glTexImage2D
    var texParameterf: fptr_glTexParameterf
    var texParameterfv: fptr_glTexParameterfv
    var texParameteri: fptr_glTexParameteri
    var texParameteriv: fptr_glTexParameteriv
    var viewport: fptr_glViewport

    fn __init__(out self, load: LoadProc) raises:
        self.blendFunc = load_proc[fptr_glBlendFunc]("glBlendFunc", load)
        self.clear = load_proc[fptr_glClear]("glClear", load)
        self.clearColor = load_proc[fptr_glClearColor]("glClearColor", load)
        self.clearDepth = load_proc[fptr_glClearDepth]("glClearDepth", load)
        self.clearStencil = load_proc[fptr_glClearStencil]("glClearStencil", load)
        self.colorMask = load_proc[fptr_glColorMask]("glColorMask", load)
        self.cullFace = load_proc[fptr_glCullFace]("glCullFace", load)
        self.depthFunc = load_proc[fptr_glDepthFunc]("glDepthFunc", load)
        self.depthMask = load_proc[fptr_glDepthMask]("glDepthMask", load)
        self.depthRange = load_proc[fptr_glDepthRange]("glDepthRange", load)
        self.disable = load_proc[fptr_glDisable]("glDisable", load)
        self.drawBuffer = load_proc[fptr_glDrawBuffer]("glDrawBuffer", load)
        self.enable = load_proc[fptr_glEnable]("glEnable", load)
        self.finish = load_proc[fptr_glFinish]("glFinish", load)
        self.flush = load_proc[fptr_glFlush]("glFlush", load)
        self.frontFace = load_proc[fptr_glFrontFace]("glFrontFace", load)
        self.getBooleanv = load_proc[fptr_glGetBooleanv]("glGetBooleanv", load)
        self.getDoublev = load_proc[fptr_glGetDoublev]("glGetDoublev", load)
        self.getError = load_proc[fptr_glGetError]("glGetError", load)
        self.getFloatv = load_proc[fptr_glGetFloatv]("glGetFloatv", load)
        self.getIntegerv = load_proc[fptr_glGetIntegerv]("glGetIntegerv", load)
        self.getString = load_proc[fptr_glGetString]("glGetString", load)
        self.getTexImage = load_proc[fptr_glGetTexImage]("glGetTexImage", load)
        self.getTexLevelParameterfv = load_proc[fptr_glGetTexLevelParameterfv]("glGetTexLevelParameterfv", load)
        self.getTexLevelParameteriv = load_proc[fptr_glGetTexLevelParameteriv]("glGetTexLevelParameteriv", load)
        self.getTexParameterfv = load_proc[fptr_glGetTexParameterfv]("glGetTexParameterfv", load)
        self.getTexParameteriv = load_proc[fptr_glGetTexParameteriv]("glGetTexParameteriv", load)
        self.hint = load_proc[fptr_glHint]("glHint", load)
        self.isEnabled = load_proc[fptr_glIsEnabled]("glIsEnabled", load)
        self.lineWidth = load_proc[fptr_glLineWidth]("glLineWidth", load)
        self.logicOp = load_proc[fptr_glLogicOp]("glLogicOp", load)
        self.pixelStoref = load_proc[fptr_glPixelStoref]("glPixelStoref", load)
        self.pixelStorei = load_proc[fptr_glPixelStorei]("glPixelStorei", load)
        self.pointSize = load_proc[fptr_glPointSize]("glPointSize", load)
        self.polygonMode = load_proc[fptr_glPolygonMode]("glPolygonMode", load)
        self.readBuffer = load_proc[fptr_glReadBuffer]("glReadBuffer", load)
        self.readPixels = load_proc[fptr_glReadPixels]("glReadPixels", load)
        self.scissor = load_proc[fptr_glScissor]("glScissor", load)
        self.stencilFunc = load_proc[fptr_glStencilFunc]("glStencilFunc", load)
        self.stencilMask = load_proc[fptr_glStencilMask]("glStencilMask", load)
        self.stencilOp = load_proc[fptr_glStencilOp]("glStencilOp", load)
        self.texImage1D = load_proc[fptr_glTexImage1D]("glTexImage1D", load)
        self.texImage2D = load_proc[fptr_glTexImage2D]("glTexImage2D", load)
        self.texParameterf = load_proc[fptr_glTexParameterf]("glTexParameterf", load)
        self.texParameterfv = load_proc[fptr_glTexParameterfv]("glTexParameterfv", load)
        self.texParameteri = load_proc[fptr_glTexParameteri]("glTexParameteri", load)
        self.texParameteriv = load_proc[fptr_glTexParameteriv]("glTexParameteriv", load)
        self.viewport = load_proc[fptr_glViewport]("glViewport", load)


alias fptr_glBindTexture = fn (target: TextureTarget, texture: GLuint)
alias fptr_glCopyTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint)
alias fptr_glCopyTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint)
alias fptr_glCopyTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glDeleteTextures = fn (n: GLsizei, textures: Ptr[GLuint])
alias fptr_glDrawArrays = fn (mode: PrimitiveType, first: GLint, count: GLsizei)
alias fptr_glDrawElements = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType])
alias fptr_glGenTextures = fn (n: GLsizei, textures: Ptr[GLuint])
alias fptr_glIsTexture = fn (texture: GLuint) -> GLboolean
alias fptr_glPolygonOffset = fn (factor: GLfloat, units: GLfloat)
alias fptr_glTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])


struct GL_VERSION_1_1:
    """Functions for gl 1.1."""

    var bindTexture: fptr_glBindTexture
    var copyTexImage1D: fptr_glCopyTexImage1D
    var copyTexImage2D: fptr_glCopyTexImage2D
    var copyTexSubImage1D: fptr_glCopyTexSubImage1D
    var copyTexSubImage2D: fptr_glCopyTexSubImage2D
    var deleteTextures: fptr_glDeleteTextures
    var drawArrays: fptr_glDrawArrays
    var drawElements: fptr_glDrawElements
    var genTextures: fptr_glGenTextures
    var isTexture: fptr_glIsTexture
    var polygonOffset: fptr_glPolygonOffset
    var texSubImage1D: fptr_glTexSubImage1D
    var texSubImage2D: fptr_glTexSubImage2D

    fn __init__(out self, load: LoadProc) raises:
        self.bindTexture = load_proc[fptr_glBindTexture]("glBindTexture", load)
        self.copyTexImage1D = load_proc[fptr_glCopyTexImage1D]("glCopyTexImage1D", load)
        self.copyTexImage2D = load_proc[fptr_glCopyTexImage2D]("glCopyTexImage2D", load)
        self.copyTexSubImage1D = load_proc[fptr_glCopyTexSubImage1D]("glCopyTexSubImage1D", load)
        self.copyTexSubImage2D = load_proc[fptr_glCopyTexSubImage2D]("glCopyTexSubImage2D", load)
        self.deleteTextures = load_proc[fptr_glDeleteTextures]("glDeleteTextures", load)
        self.drawArrays = load_proc[fptr_glDrawArrays]("glDrawArrays", load)
        self.drawElements = load_proc[fptr_glDrawElements]("glDrawElements", load)
        self.genTextures = load_proc[fptr_glGenTextures]("glGenTextures", load)
        self.isTexture = load_proc[fptr_glIsTexture]("glIsTexture", load)
        self.polygonOffset = load_proc[fptr_glPolygonOffset]("glPolygonOffset", load)
        self.texSubImage1D = load_proc[fptr_glTexSubImage1D]("glTexSubImage1D", load)
        self.texSubImage2D = load_proc[fptr_glTexSubImage2D]("glTexSubImage2D", load)


alias fptr_glCopyTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glDrawRangeElements = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType])
alias fptr_glTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])


struct GL_VERSION_1_2:
    """Functions for gl 1.2."""

    var copyTexSubImage3D: fptr_glCopyTexSubImage3D
    var drawRangeElements: fptr_glDrawRangeElements
    var texImage3D: fptr_glTexImage3D
    var texSubImage3D: fptr_glTexSubImage3D

    fn __init__(out self, load: LoadProc) raises:
        self.copyTexSubImage3D = load_proc[fptr_glCopyTexSubImage3D]("glCopyTexSubImage3D", load)
        self.drawRangeElements = load_proc[fptr_glDrawRangeElements]("glDrawRangeElements", load)
        self.texImage3D = load_proc[fptr_glTexImage3D]("glTexImage3D", load)
        self.texSubImage3D = load_proc[fptr_glTexSubImage3D]("glTexSubImage3D", load)


alias fptr_glActiveTexture = fn (texture: TextureUnit)
alias fptr_glCompressedTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glGetCompressedTexImage = fn (target: TextureTarget, level: GLint, img: Ptr[NoneType])
alias fptr_glSampleCoverage = fn (value: GLfloat, invert: GLboolean)


struct GL_VERSION_1_3:
    """Functions for gl 1.3."""

    var activeTexture: fptr_glActiveTexture
    var compressedTexImage1D: fptr_glCompressedTexImage1D
    var compressedTexImage2D: fptr_glCompressedTexImage2D
    var compressedTexImage3D: fptr_glCompressedTexImage3D
    var compressedTexSubImage1D: fptr_glCompressedTexSubImage1D
    var compressedTexSubImage2D: fptr_glCompressedTexSubImage2D
    var compressedTexSubImage3D: fptr_glCompressedTexSubImage3D
    var getCompressedTexImage: fptr_glGetCompressedTexImage
    var sampleCoverage: fptr_glSampleCoverage

    fn __init__(out self, load: LoadProc) raises:
        self.activeTexture = load_proc[fptr_glActiveTexture]("glActiveTexture", load)
        self.compressedTexImage1D = load_proc[fptr_glCompressedTexImage1D]("glCompressedTexImage1D", load)
        self.compressedTexImage2D = load_proc[fptr_glCompressedTexImage2D]("glCompressedTexImage2D", load)
        self.compressedTexImage3D = load_proc[fptr_glCompressedTexImage3D]("glCompressedTexImage3D", load)
        self.compressedTexSubImage1D = load_proc[fptr_glCompressedTexSubImage1D]("glCompressedTexSubImage1D", load)
        self.compressedTexSubImage2D = load_proc[fptr_glCompressedTexSubImage2D]("glCompressedTexSubImage2D", load)
        self.compressedTexSubImage3D = load_proc[fptr_glCompressedTexSubImage3D]("glCompressedTexSubImage3D", load)
        self.getCompressedTexImage = load_proc[fptr_glGetCompressedTexImage]("glGetCompressedTexImage", load)
        self.sampleCoverage = load_proc[fptr_glSampleCoverage]("glSampleCoverage", load)


alias fptr_glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
alias fptr_glBlendEquation = fn (mode: BlendEquationModeEXT)
alias fptr_glBlendFuncSeparate = fn (sfactorRGB: BlendingFactor, dfactorRGB: BlendingFactor, sfactorAlpha: BlendingFactor, dfactorAlpha: BlendingFactor)
alias fptr_glMultiDrawArrays = fn (mode: PrimitiveType, first: Ptr[GLint], count: Ptr[GLsizei], drawcount: GLsizei)
alias fptr_glMultiDrawElements = fn (mode: PrimitiveType, count: Ptr[GLsizei], type: DrawElementsType, indices: Ptr[NoneType], drawcount: GLsizei)
alias fptr_glPointParameterf = fn (pname: PointParameterNameARB, param: GLfloat)
alias fptr_glPointParameterfv = fn (pname: PointParameterNameARB, params: Ptr[GLfloat])
alias fptr_glPointParameteri = fn (pname: PointParameterNameARB, param: GLint)
alias fptr_glPointParameteriv = fn (pname: PointParameterNameARB, params: Ptr[GLint])


struct GL_VERSION_1_4:
    """Functions for gl 1.4."""

    var blendColor: fptr_glBlendColor
    var blendEquation: fptr_glBlendEquation
    var blendFuncSeparate: fptr_glBlendFuncSeparate
    var multiDrawArrays: fptr_glMultiDrawArrays
    var multiDrawElements: fptr_glMultiDrawElements
    var pointParameterf: fptr_glPointParameterf
    var pointParameterfv: fptr_glPointParameterfv
    var pointParameteri: fptr_glPointParameteri
    var pointParameteriv: fptr_glPointParameteriv

    fn __init__(out self, load: LoadProc) raises:
        self.blendColor = load_proc[fptr_glBlendColor]("glBlendColor", load)
        self.blendEquation = load_proc[fptr_glBlendEquation]("glBlendEquation", load)
        self.blendFuncSeparate = load_proc[fptr_glBlendFuncSeparate]("glBlendFuncSeparate", load)
        self.multiDrawArrays = load_proc[fptr_glMultiDrawArrays]("glMultiDrawArrays", load)
        self.multiDrawElements = load_proc[fptr_glMultiDrawElements]("glMultiDrawElements", load)
        self.pointParameterf = load_proc[fptr_glPointParameterf]("glPointParameterf", load)
        self.pointParameterfv = load_proc[fptr_glPointParameterfv]("glPointParameterfv", load)
        self.pointParameteri = load_proc[fptr_glPointParameteri]("glPointParameteri", load)
        self.pointParameteriv = load_proc[fptr_glPointParameteriv]("glPointParameteriv", load)


alias fptr_glBeginQuery = fn (target: QueryTarget, id: GLuint)
alias fptr_glBindBuffer = fn (target: BufferTargetARB, buffer: GLuint)
alias fptr_glBufferData = fn (target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType], usage: BufferUsageARB)
alias fptr_glBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType])
alias fptr_glDeleteBuffers = fn (n: GLsizei, buffers: Ptr[GLuint])
alias fptr_glDeleteQueries = fn (n: GLsizei, ids: Ptr[GLuint])
alias fptr_glEndQuery = fn (target: QueryTarget)
alias fptr_glGenBuffers = fn (n: GLsizei, buffers: Ptr[GLuint])
alias fptr_glGenQueries = fn (n: GLsizei, ids: Ptr[GLuint])
alias fptr_glGetBufferParameteriv = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint])
alias fptr_glGetBufferPointerv = fn (target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[NoneType])
alias fptr_glGetBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType])
alias fptr_glGetQueryObjectiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint])
alias fptr_glGetQueryObjectuiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint])
alias fptr_glGetQueryiv = fn (target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint])
alias fptr_glIsBuffer = fn (buffer: GLuint) -> GLboolean
alias fptr_glIsQuery = fn (id: GLuint) -> GLboolean
alias fptr_glMapBuffer = fn (target: BufferTargetARB, access: BufferAccessARB)
alias fptr_glUnmapBuffer = fn (target: BufferTargetARB) -> GLboolean


struct GL_VERSION_1_5:
    """Functions for gl 1.5."""

    var beginQuery: fptr_glBeginQuery
    var bindBuffer: fptr_glBindBuffer
    var bufferData: fptr_glBufferData
    var bufferSubData: fptr_glBufferSubData
    var deleteBuffers: fptr_glDeleteBuffers
    var deleteQueries: fptr_glDeleteQueries
    var endQuery: fptr_glEndQuery
    var genBuffers: fptr_glGenBuffers
    var genQueries: fptr_glGenQueries
    var getBufferParameteriv: fptr_glGetBufferParameteriv
    var getBufferPointerv: fptr_glGetBufferPointerv
    var getBufferSubData: fptr_glGetBufferSubData
    var getQueryObjectiv: fptr_glGetQueryObjectiv
    var getQueryObjectuiv: fptr_glGetQueryObjectuiv
    var getQueryiv: fptr_glGetQueryiv
    var isBuffer: fptr_glIsBuffer
    var isQuery: fptr_glIsQuery
    var mapBuffer: fptr_glMapBuffer
    var unmapBuffer: fptr_glUnmapBuffer

    fn __init__(out self, load: LoadProc) raises:
        self.beginQuery = load_proc[fptr_glBeginQuery]("glBeginQuery", load)
        self.bindBuffer = load_proc[fptr_glBindBuffer]("glBindBuffer", load)
        self.bufferData = load_proc[fptr_glBufferData]("glBufferData", load)
        self.bufferSubData = load_proc[fptr_glBufferSubData]("glBufferSubData", load)
        self.deleteBuffers = load_proc[fptr_glDeleteBuffers]("glDeleteBuffers", load)
        self.deleteQueries = load_proc[fptr_glDeleteQueries]("glDeleteQueries", load)
        self.endQuery = load_proc[fptr_glEndQuery]("glEndQuery", load)
        self.genBuffers = load_proc[fptr_glGenBuffers]("glGenBuffers", load)
        self.genQueries = load_proc[fptr_glGenQueries]("glGenQueries", load)
        self.getBufferParameteriv = load_proc[fptr_glGetBufferParameteriv]("glGetBufferParameteriv", load)
        self.getBufferPointerv = load_proc[fptr_glGetBufferPointerv]("glGetBufferPointerv", load)
        self.getBufferSubData = load_proc[fptr_glGetBufferSubData]("glGetBufferSubData", load)
        self.getQueryObjectiv = load_proc[fptr_glGetQueryObjectiv]("glGetQueryObjectiv", load)
        self.getQueryObjectuiv = load_proc[fptr_glGetQueryObjectuiv]("glGetQueryObjectuiv", load)
        self.getQueryiv = load_proc[fptr_glGetQueryiv]("glGetQueryiv", load)
        self.isBuffer = load_proc[fptr_glIsBuffer]("glIsBuffer", load)
        self.isQuery = load_proc[fptr_glIsQuery]("glIsQuery", load)
        self.mapBuffer = load_proc[fptr_glMapBuffer]("glMapBuffer", load)
        self.unmapBuffer = load_proc[fptr_glUnmapBuffer]("glUnmapBuffer", load)


alias fptr_glAttachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glBindAttribLocation = fn (program: GLuint, index: GLuint, name: Ptr[GLchar])
alias fptr_glBlendEquationSeparate = fn (modeRGB: BlendEquationModeEXT, modeAlpha: BlendEquationModeEXT)
alias fptr_glCompileShader = fn (shader: GLuint)
alias fptr_glCreateProgram = fn () -> GLuint
alias fptr_glCreateShader = fn (type: ShaderType) -> GLuint
alias fptr_glDeleteProgram = fn (program: GLuint)
alias fptr_glDeleteShader = fn (shader: GLuint)
alias fptr_glDetachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glDisableVertexAttribArray = fn (index: GLuint)
alias fptr_glDrawBuffers = fn (n: GLsizei, bufs: DrawBufferMode)
alias fptr_glEnableVertexAttribArray = fn (index: GLuint)
alias fptr_glGetActiveAttrib = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLint], type: AttributeType, name: Ptr[GLchar])
alias fptr_glGetActiveUniform = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLint], type: UniformType, name: Ptr[GLchar])
alias fptr_glGetAttachedShaders = fn (program: GLuint, maxCount: GLsizei, count: Ptr[GLsizei], shaders: Ptr[GLuint])
alias fptr_glGetAttribLocation = fn (program: GLuint, name: Ptr[GLchar]) -> GLint
alias fptr_glGetProgramInfoLog = fn (program: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar])
alias fptr_glGetProgramiv = fn (program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint])
alias fptr_glGetShaderInfoLog = fn (shader: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar])
alias fptr_glGetShaderSource = fn (shader: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], source: Ptr[GLchar])
alias fptr_glGetShaderiv = fn (shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint])
alias fptr_glGetUniformLocation = fn (program: GLuint, name: Ptr[GLchar]) -> GLint
alias fptr_glGetUniformfv = fn (program: GLuint, location: GLint, params: Ptr[GLfloat])
alias fptr_glGetUniformiv = fn (program: GLuint, location: GLint, params: Ptr[GLint])
alias fptr_glGetVertexAttribPointerv = fn (index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[NoneType])
alias fptr_glGetVertexAttribdv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble])
alias fptr_glGetVertexAttribfv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat])
alias fptr_glGetVertexAttribiv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint])
alias fptr_glIsProgram = fn (program: GLuint) -> GLboolean
alias fptr_glIsShader = fn (shader: GLuint) -> GLboolean
alias fptr_glLinkProgram = fn (program: GLuint)
alias fptr_glShaderSource = fn (shader: GLuint, count: GLsizei, string: Ptr[GLchar], length: Ptr[GLint])
alias fptr_glStencilFuncSeparate = fn (face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilMaskSeparate = fn (face: TriangleFace, mask: GLuint)
alias fptr_glStencilOpSeparate = fn (face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp)
alias fptr_glUniform1f = fn (location: GLint, v0: GLfloat)
alias fptr_glUniform1fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glUniform1i = fn (location: GLint, v0: GLint)
alias fptr_glUniform1iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glUniform2fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glUniform2i = fn (location: GLint, v0: GLint, v1: GLint)
alias fptr_glUniform2iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glUniform3fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glUniform3iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glUniform4fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glUniform4iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUseProgram = fn (program: GLuint)
alias fptr_glValidateProgram = fn (program: GLuint)
alias fptr_glVertexAttrib1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttrib1dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttrib1f = fn (index: GLuint, x: GLfloat)
alias fptr_glVertexAttrib1fv = fn (index: GLuint, v: Ptr[GLfloat])
alias fptr_glVertexAttrib1s = fn (index: GLuint, x: GLshort)
alias fptr_glVertexAttrib1sv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttrib2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttrib2dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat)
alias fptr_glVertexAttrib2fv = fn (index: GLuint, v: Ptr[GLfloat])
alias fptr_glVertexAttrib2s = fn (index: GLuint, x: GLshort, y: GLshort)
alias fptr_glVertexAttrib2sv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttrib3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttrib3dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat)
alias fptr_glVertexAttrib3fv = fn (index: GLuint, v: Ptr[GLfloat])
alias fptr_glVertexAttrib3s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort)
alias fptr_glVertexAttrib3sv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttrib4Nbv = fn (index: GLuint, v: Ptr[GLbyte])
alias fptr_glVertexAttrib4Niv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttrib4Nsv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttrib4Nub = fn (index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte)
alias fptr_glVertexAttrib4Nubv = fn (index: GLuint, v: Ptr[GLubyte])
alias fptr_glVertexAttrib4Nuiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttrib4Nusv = fn (index: GLuint, v: Ptr[GLushort])
alias fptr_glVertexAttrib4bv = fn (index: GLuint, v: Ptr[GLbyte])
alias fptr_glVertexAttrib4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttrib4dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
alias fptr_glVertexAttrib4fv = fn (index: GLuint, v: Ptr[GLfloat])
alias fptr_glVertexAttrib4iv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttrib4s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort)
alias fptr_glVertexAttrib4sv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttrib4ubv = fn (index: GLuint, v: Ptr[GLubyte])
alias fptr_glVertexAttrib4uiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttrib4usv = fn (index: GLuint, v: Ptr[GLushort])
alias fptr_glVertexAttribPointer = fn (index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType])


struct GL_VERSION_2_0:
    """Functions for gl 2.0."""

    var attachShader: fptr_glAttachShader
    var bindAttribLocation: fptr_glBindAttribLocation
    var blendEquationSeparate: fptr_glBlendEquationSeparate
    var compileShader: fptr_glCompileShader
    var createProgram: fptr_glCreateProgram
    var createShader: fptr_glCreateShader
    var deleteProgram: fptr_glDeleteProgram
    var deleteShader: fptr_glDeleteShader
    var detachShader: fptr_glDetachShader
    var disableVertexAttribArray: fptr_glDisableVertexAttribArray
    var drawBuffers: fptr_glDrawBuffers
    var enableVertexAttribArray: fptr_glEnableVertexAttribArray
    var getActiveAttrib: fptr_glGetActiveAttrib
    var getActiveUniform: fptr_glGetActiveUniform
    var getAttachedShaders: fptr_glGetAttachedShaders
    var getAttribLocation: fptr_glGetAttribLocation
    var getProgramInfoLog: fptr_glGetProgramInfoLog
    var getProgramiv: fptr_glGetProgramiv
    var getShaderInfoLog: fptr_glGetShaderInfoLog
    var getShaderSource: fptr_glGetShaderSource
    var getShaderiv: fptr_glGetShaderiv
    var getUniformLocation: fptr_glGetUniformLocation
    var getUniformfv: fptr_glGetUniformfv
    var getUniformiv: fptr_glGetUniformiv
    var getVertexAttribPointerv: fptr_glGetVertexAttribPointerv
    var getVertexAttribdv: fptr_glGetVertexAttribdv
    var getVertexAttribfv: fptr_glGetVertexAttribfv
    var getVertexAttribiv: fptr_glGetVertexAttribiv
    var isProgram: fptr_glIsProgram
    var isShader: fptr_glIsShader
    var linkProgram: fptr_glLinkProgram
    var shaderSource: fptr_glShaderSource
    var stencilFuncSeparate: fptr_glStencilFuncSeparate
    var stencilMaskSeparate: fptr_glStencilMaskSeparate
    var stencilOpSeparate: fptr_glStencilOpSeparate
    var uniform1f: fptr_glUniform1f
    var uniform1fv: fptr_glUniform1fv
    var uniform1i: fptr_glUniform1i
    var uniform1iv: fptr_glUniform1iv
    var uniform2f: fptr_glUniform2f
    var uniform2fv: fptr_glUniform2fv
    var uniform2i: fptr_glUniform2i
    var uniform2iv: fptr_glUniform2iv
    var uniform3f: fptr_glUniform3f
    var uniform3fv: fptr_glUniform3fv
    var uniform3i: fptr_glUniform3i
    var uniform3iv: fptr_glUniform3iv
    var uniform4f: fptr_glUniform4f
    var uniform4fv: fptr_glUniform4fv
    var uniform4i: fptr_glUniform4i
    var uniform4iv: fptr_glUniform4iv
    var uniformMatrix2fv: fptr_glUniformMatrix2fv
    var uniformMatrix3fv: fptr_glUniformMatrix3fv
    var uniformMatrix4fv: fptr_glUniformMatrix4fv
    var useProgram: fptr_glUseProgram
    var validateProgram: fptr_glValidateProgram
    var vertexAttrib1d: fptr_glVertexAttrib1d
    var vertexAttrib1dv: fptr_glVertexAttrib1dv
    var vertexAttrib1f: fptr_glVertexAttrib1f
    var vertexAttrib1fv: fptr_glVertexAttrib1fv
    var vertexAttrib1s: fptr_glVertexAttrib1s
    var vertexAttrib1sv: fptr_glVertexAttrib1sv
    var vertexAttrib2d: fptr_glVertexAttrib2d
    var vertexAttrib2dv: fptr_glVertexAttrib2dv
    var vertexAttrib2f: fptr_glVertexAttrib2f
    var vertexAttrib2fv: fptr_glVertexAttrib2fv
    var vertexAttrib2s: fptr_glVertexAttrib2s
    var vertexAttrib2sv: fptr_glVertexAttrib2sv
    var vertexAttrib3d: fptr_glVertexAttrib3d
    var vertexAttrib3dv: fptr_glVertexAttrib3dv
    var vertexAttrib3f: fptr_glVertexAttrib3f
    var vertexAttrib3fv: fptr_glVertexAttrib3fv
    var vertexAttrib3s: fptr_glVertexAttrib3s
    var vertexAttrib3sv: fptr_glVertexAttrib3sv
    var vertexAttrib4Nbv: fptr_glVertexAttrib4Nbv
    var vertexAttrib4Niv: fptr_glVertexAttrib4Niv
    var vertexAttrib4Nsv: fptr_glVertexAttrib4Nsv
    var vertexAttrib4Nub: fptr_glVertexAttrib4Nub
    var vertexAttrib4Nubv: fptr_glVertexAttrib4Nubv
    var vertexAttrib4Nuiv: fptr_glVertexAttrib4Nuiv
    var vertexAttrib4Nusv: fptr_glVertexAttrib4Nusv
    var vertexAttrib4bv: fptr_glVertexAttrib4bv
    var vertexAttrib4d: fptr_glVertexAttrib4d
    var vertexAttrib4dv: fptr_glVertexAttrib4dv
    var vertexAttrib4f: fptr_glVertexAttrib4f
    var vertexAttrib4fv: fptr_glVertexAttrib4fv
    var vertexAttrib4iv: fptr_glVertexAttrib4iv
    var vertexAttrib4s: fptr_glVertexAttrib4s
    var vertexAttrib4sv: fptr_glVertexAttrib4sv
    var vertexAttrib4ubv: fptr_glVertexAttrib4ubv
    var vertexAttrib4uiv: fptr_glVertexAttrib4uiv
    var vertexAttrib4usv: fptr_glVertexAttrib4usv
    var vertexAttribPointer: fptr_glVertexAttribPointer

    fn __init__(out self, load: LoadProc) raises:
        self.attachShader = load_proc[fptr_glAttachShader]("glAttachShader", load)
        self.bindAttribLocation = load_proc[fptr_glBindAttribLocation]("glBindAttribLocation", load)
        self.blendEquationSeparate = load_proc[fptr_glBlendEquationSeparate]("glBlendEquationSeparate", load)
        self.compileShader = load_proc[fptr_glCompileShader]("glCompileShader", load)
        self.createProgram = load_proc[fptr_glCreateProgram]("glCreateProgram", load)
        self.createShader = load_proc[fptr_glCreateShader]("glCreateShader", load)
        self.deleteProgram = load_proc[fptr_glDeleteProgram]("glDeleteProgram", load)
        self.deleteShader = load_proc[fptr_glDeleteShader]("glDeleteShader", load)
        self.detachShader = load_proc[fptr_glDetachShader]("glDetachShader", load)
        self.disableVertexAttribArray = load_proc[fptr_glDisableVertexAttribArray]("glDisableVertexAttribArray", load)
        self.drawBuffers = load_proc[fptr_glDrawBuffers]("glDrawBuffers", load)
        self.enableVertexAttribArray = load_proc[fptr_glEnableVertexAttribArray]("glEnableVertexAttribArray", load)
        self.getActiveAttrib = load_proc[fptr_glGetActiveAttrib]("glGetActiveAttrib", load)
        self.getActiveUniform = load_proc[fptr_glGetActiveUniform]("glGetActiveUniform", load)
        self.getAttachedShaders = load_proc[fptr_glGetAttachedShaders]("glGetAttachedShaders", load)
        self.getAttribLocation = load_proc[fptr_glGetAttribLocation]("glGetAttribLocation", load)
        self.getProgramInfoLog = load_proc[fptr_glGetProgramInfoLog]("glGetProgramInfoLog", load)
        self.getProgramiv = load_proc[fptr_glGetProgramiv]("glGetProgramiv", load)
        self.getShaderInfoLog = load_proc[fptr_glGetShaderInfoLog]("glGetShaderInfoLog", load)
        self.getShaderSource = load_proc[fptr_glGetShaderSource]("glGetShaderSource", load)
        self.getShaderiv = load_proc[fptr_glGetShaderiv]("glGetShaderiv", load)
        self.getUniformLocation = load_proc[fptr_glGetUniformLocation]("glGetUniformLocation", load)
        self.getUniformfv = load_proc[fptr_glGetUniformfv]("glGetUniformfv", load)
        self.getUniformiv = load_proc[fptr_glGetUniformiv]("glGetUniformiv", load)
        self.getVertexAttribPointerv = load_proc[fptr_glGetVertexAttribPointerv]("glGetVertexAttribPointerv", load)
        self.getVertexAttribdv = load_proc[fptr_glGetVertexAttribdv]("glGetVertexAttribdv", load)
        self.getVertexAttribfv = load_proc[fptr_glGetVertexAttribfv]("glGetVertexAttribfv", load)
        self.getVertexAttribiv = load_proc[fptr_glGetVertexAttribiv]("glGetVertexAttribiv", load)
        self.isProgram = load_proc[fptr_glIsProgram]("glIsProgram", load)
        self.isShader = load_proc[fptr_glIsShader]("glIsShader", load)
        self.linkProgram = load_proc[fptr_glLinkProgram]("glLinkProgram", load)
        self.shaderSource = load_proc[fptr_glShaderSource]("glShaderSource", load)
        self.stencilFuncSeparate = load_proc[fptr_glStencilFuncSeparate]("glStencilFuncSeparate", load)
        self.stencilMaskSeparate = load_proc[fptr_glStencilMaskSeparate]("glStencilMaskSeparate", load)
        self.stencilOpSeparate = load_proc[fptr_glStencilOpSeparate]("glStencilOpSeparate", load)
        self.uniform1f = load_proc[fptr_glUniform1f]("glUniform1f", load)
        self.uniform1fv = load_proc[fptr_glUniform1fv]("glUniform1fv", load)
        self.uniform1i = load_proc[fptr_glUniform1i]("glUniform1i", load)
        self.uniform1iv = load_proc[fptr_glUniform1iv]("glUniform1iv", load)
        self.uniform2f = load_proc[fptr_glUniform2f]("glUniform2f", load)
        self.uniform2fv = load_proc[fptr_glUniform2fv]("glUniform2fv", load)
        self.uniform2i = load_proc[fptr_glUniform2i]("glUniform2i", load)
        self.uniform2iv = load_proc[fptr_glUniform2iv]("glUniform2iv", load)
        self.uniform3f = load_proc[fptr_glUniform3f]("glUniform3f", load)
        self.uniform3fv = load_proc[fptr_glUniform3fv]("glUniform3fv", load)
        self.uniform3i = load_proc[fptr_glUniform3i]("glUniform3i", load)
        self.uniform3iv = load_proc[fptr_glUniform3iv]("glUniform3iv", load)
        self.uniform4f = load_proc[fptr_glUniform4f]("glUniform4f", load)
        self.uniform4fv = load_proc[fptr_glUniform4fv]("glUniform4fv", load)
        self.uniform4i = load_proc[fptr_glUniform4i]("glUniform4i", load)
        self.uniform4iv = load_proc[fptr_glUniform4iv]("glUniform4iv", load)
        self.uniformMatrix2fv = load_proc[fptr_glUniformMatrix2fv]("glUniformMatrix2fv", load)
        self.uniformMatrix3fv = load_proc[fptr_glUniformMatrix3fv]("glUniformMatrix3fv", load)
        self.uniformMatrix4fv = load_proc[fptr_glUniformMatrix4fv]("glUniformMatrix4fv", load)
        self.useProgram = load_proc[fptr_glUseProgram]("glUseProgram", load)
        self.validateProgram = load_proc[fptr_glValidateProgram]("glValidateProgram", load)
        self.vertexAttrib1d = load_proc[fptr_glVertexAttrib1d]("glVertexAttrib1d", load)
        self.vertexAttrib1dv = load_proc[fptr_glVertexAttrib1dv]("glVertexAttrib1dv", load)
        self.vertexAttrib1f = load_proc[fptr_glVertexAttrib1f]("glVertexAttrib1f", load)
        self.vertexAttrib1fv = load_proc[fptr_glVertexAttrib1fv]("glVertexAttrib1fv", load)
        self.vertexAttrib1s = load_proc[fptr_glVertexAttrib1s]("glVertexAttrib1s", load)
        self.vertexAttrib1sv = load_proc[fptr_glVertexAttrib1sv]("glVertexAttrib1sv", load)
        self.vertexAttrib2d = load_proc[fptr_glVertexAttrib2d]("glVertexAttrib2d", load)
        self.vertexAttrib2dv = load_proc[fptr_glVertexAttrib2dv]("glVertexAttrib2dv", load)
        self.vertexAttrib2f = load_proc[fptr_glVertexAttrib2f]("glVertexAttrib2f", load)
        self.vertexAttrib2fv = load_proc[fptr_glVertexAttrib2fv]("glVertexAttrib2fv", load)
        self.vertexAttrib2s = load_proc[fptr_glVertexAttrib2s]("glVertexAttrib2s", load)
        self.vertexAttrib2sv = load_proc[fptr_glVertexAttrib2sv]("glVertexAttrib2sv", load)
        self.vertexAttrib3d = load_proc[fptr_glVertexAttrib3d]("glVertexAttrib3d", load)
        self.vertexAttrib3dv = load_proc[fptr_glVertexAttrib3dv]("glVertexAttrib3dv", load)
        self.vertexAttrib3f = load_proc[fptr_glVertexAttrib3f]("glVertexAttrib3f", load)
        self.vertexAttrib3fv = load_proc[fptr_glVertexAttrib3fv]("glVertexAttrib3fv", load)
        self.vertexAttrib3s = load_proc[fptr_glVertexAttrib3s]("glVertexAttrib3s", load)
        self.vertexAttrib3sv = load_proc[fptr_glVertexAttrib3sv]("glVertexAttrib3sv", load)
        self.vertexAttrib4Nbv = load_proc[fptr_glVertexAttrib4Nbv]("glVertexAttrib4Nbv", load)
        self.vertexAttrib4Niv = load_proc[fptr_glVertexAttrib4Niv]("glVertexAttrib4Niv", load)
        self.vertexAttrib4Nsv = load_proc[fptr_glVertexAttrib4Nsv]("glVertexAttrib4Nsv", load)
        self.vertexAttrib4Nub = load_proc[fptr_glVertexAttrib4Nub]("glVertexAttrib4Nub", load)
        self.vertexAttrib4Nubv = load_proc[fptr_glVertexAttrib4Nubv]("glVertexAttrib4Nubv", load)
        self.vertexAttrib4Nuiv = load_proc[fptr_glVertexAttrib4Nuiv]("glVertexAttrib4Nuiv", load)
        self.vertexAttrib4Nusv = load_proc[fptr_glVertexAttrib4Nusv]("glVertexAttrib4Nusv", load)
        self.vertexAttrib4bv = load_proc[fptr_glVertexAttrib4bv]("glVertexAttrib4bv", load)
        self.vertexAttrib4d = load_proc[fptr_glVertexAttrib4d]("glVertexAttrib4d", load)
        self.vertexAttrib4dv = load_proc[fptr_glVertexAttrib4dv]("glVertexAttrib4dv", load)
        self.vertexAttrib4f = load_proc[fptr_glVertexAttrib4f]("glVertexAttrib4f", load)
        self.vertexAttrib4fv = load_proc[fptr_glVertexAttrib4fv]("glVertexAttrib4fv", load)
        self.vertexAttrib4iv = load_proc[fptr_glVertexAttrib4iv]("glVertexAttrib4iv", load)
        self.vertexAttrib4s = load_proc[fptr_glVertexAttrib4s]("glVertexAttrib4s", load)
        self.vertexAttrib4sv = load_proc[fptr_glVertexAttrib4sv]("glVertexAttrib4sv", load)
        self.vertexAttrib4ubv = load_proc[fptr_glVertexAttrib4ubv]("glVertexAttrib4ubv", load)
        self.vertexAttrib4uiv = load_proc[fptr_glVertexAttrib4uiv]("glVertexAttrib4uiv", load)
        self.vertexAttrib4usv = load_proc[fptr_glVertexAttrib4usv]("glVertexAttrib4usv", load)
        self.vertexAttribPointer = load_proc[fptr_glVertexAttribPointer]("glVertexAttribPointer", load)


alias fptr_glUniformMatrix2x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix2x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix3x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix3x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix4x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glUniformMatrix4x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])


struct GL_VERSION_2_1:
    """Functions for gl 2.1."""

    var uniformMatrix2x3fv: fptr_glUniformMatrix2x3fv
    var uniformMatrix2x4fv: fptr_glUniformMatrix2x4fv
    var uniformMatrix3x2fv: fptr_glUniformMatrix3x2fv
    var uniformMatrix3x4fv: fptr_glUniformMatrix3x4fv
    var uniformMatrix4x2fv: fptr_glUniformMatrix4x2fv
    var uniformMatrix4x3fv: fptr_glUniformMatrix4x3fv

    fn __init__(out self, load: LoadProc) raises:
        self.uniformMatrix2x3fv = load_proc[fptr_glUniformMatrix2x3fv]("glUniformMatrix2x3fv", load)
        self.uniformMatrix2x4fv = load_proc[fptr_glUniformMatrix2x4fv]("glUniformMatrix2x4fv", load)
        self.uniformMatrix3x2fv = load_proc[fptr_glUniformMatrix3x2fv]("glUniformMatrix3x2fv", load)
        self.uniformMatrix3x4fv = load_proc[fptr_glUniformMatrix3x4fv]("glUniformMatrix3x4fv", load)
        self.uniformMatrix4x2fv = load_proc[fptr_glUniformMatrix4x2fv]("glUniformMatrix4x2fv", load)
        self.uniformMatrix4x3fv = load_proc[fptr_glUniformMatrix4x3fv]("glUniformMatrix4x3fv", load)


alias fptr_glBeginConditionalRender = fn (id: GLuint, mode: ConditionalRenderMode)
alias fptr_glBeginTransformFeedback = fn (primitiveMode: PrimitiveType)
alias fptr_glBindBufferBase = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint)
alias fptr_glBindBufferRange = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glBindFragDataLocation = fn (program: GLuint, color: GLuint, name: Ptr[GLchar])
alias fptr_glBindFramebuffer = fn (target: FramebufferTarget, framebuffer: GLuint)
alias fptr_glBindRenderbuffer = fn (target: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glBindVertexArray = fn (array: GLuint)
alias fptr_glBlitFramebuffer = fn (srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glCheckFramebufferStatus = fn (target: FramebufferTarget) -> GLenum
alias fptr_glClampColor = fn (target: ClampColorTargetARB, clamp: ClampColorModeARB)
alias fptr_glClearBufferfi = fn (buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearBufferfv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat])
alias fptr_glClearBufferiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint])
alias fptr_glClearBufferuiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint])
alias fptr_glColorMaski = fn (index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean)
alias fptr_glDeleteFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint])
alias fptr_glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint])
alias fptr_glDeleteVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint])
alias fptr_glDisablei = fn (target: EnableCap, index: GLuint)
alias fptr_glEnablei = fn (target: EnableCap, index: GLuint)
alias fptr_glEndConditionalRender = fn ()
alias fptr_glEndTransformFeedback = fn ()
alias fptr_glFlushMappedBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr)
alias fptr_glFramebufferRenderbuffer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glFramebufferTexture1D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
alias fptr_glFramebufferTexture2D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
alias fptr_glFramebufferTexture3D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint)
alias fptr_glFramebufferTextureLayer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
alias fptr_glGenFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint])
alias fptr_glGenRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint])
alias fptr_glGenVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint])
alias fptr_glGenerateMipmap = fn (target: TextureTarget)
alias fptr_glGetBooleani_v = fn (target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean])
alias fptr_glGetFragDataLocation = fn (program: GLuint, name: Ptr[GLchar]) -> GLint
alias fptr_glGetFramebufferAttachmentParameteriv = fn (target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint])
alias fptr_glGetIntegeri_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint])
alias fptr_glGetRenderbufferParameteriv = fn (target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint])
alias fptr_glGetStringi = fn (name: StringName, index: GLuint) -> GLubyte
alias fptr_glGetTexParameterIiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glGetTexParameterIuiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint])
alias fptr_glGetTransformFeedbackVarying = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLsizei], type: AttributeType, name: Ptr[GLchar])
alias fptr_glGetUniformuiv = fn (program: GLuint, location: GLint, params: Ptr[GLuint])
alias fptr_glGetVertexAttribIiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint])
alias fptr_glGetVertexAttribIuiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint])
alias fptr_glIsEnabledi = fn (target: EnableCap, index: GLuint) -> GLboolean
alias fptr_glIsFramebuffer = fn (framebuffer: GLuint) -> GLboolean
alias fptr_glIsRenderbuffer = fn (renderbuffer: GLuint) -> GLboolean
alias fptr_glIsVertexArray = fn (array: GLuint) -> GLboolean
alias fptr_glMapBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glRenderbufferStorage = fn (target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glRenderbufferStorageMultisample = fn (target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTexParameterIiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint])
alias fptr_glTexParameterIuiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint])
alias fptr_glTransformFeedbackVaryings = fn (program: GLuint, count: GLsizei, varyings: Ptr[GLchar], bufferMode: TransformFeedbackBufferMode)
alias fptr_glUniform1ui = fn (location: GLint, v0: GLuint)
alias fptr_glUniform1uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glUniform2ui = fn (location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glUniform2uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glUniform3ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glUniform3uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glUniform4ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glUniform4uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glVertexAttribI1i = fn (index: GLuint, x: GLint)
alias fptr_glVertexAttribI1iv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttribI1ui = fn (index: GLuint, x: GLuint)
alias fptr_glVertexAttribI1uiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttribI2i = fn (index: GLuint, x: GLint, y: GLint)
alias fptr_glVertexAttribI2iv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttribI2ui = fn (index: GLuint, x: GLuint, y: GLuint)
alias fptr_glVertexAttribI2uiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttribI3i = fn (index: GLuint, x: GLint, y: GLint, z: GLint)
alias fptr_glVertexAttribI3iv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttribI3ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint)
alias fptr_glVertexAttribI3uiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttribI4bv = fn (index: GLuint, v: Ptr[GLbyte])
alias fptr_glVertexAttribI4i = fn (index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint)
alias fptr_glVertexAttribI4iv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glVertexAttribI4sv = fn (index: GLuint, v: Ptr[GLshort])
alias fptr_glVertexAttribI4ubv = fn (index: GLuint, v: Ptr[GLubyte])
alias fptr_glVertexAttribI4ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint)
alias fptr_glVertexAttribI4uiv = fn (index: GLuint, v: Ptr[GLuint])
alias fptr_glVertexAttribI4usv = fn (index: GLuint, v: Ptr[GLushort])
alias fptr_glVertexAttribIPointer = fn (index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType])


struct GL_VERSION_3_0:
    """Functions for gl 3.0."""

    var beginConditionalRender: fptr_glBeginConditionalRender
    var beginTransformFeedback: fptr_glBeginTransformFeedback
    var bindBufferBase: fptr_glBindBufferBase
    var bindBufferRange: fptr_glBindBufferRange
    var bindFragDataLocation: fptr_glBindFragDataLocation
    var bindFramebuffer: fptr_glBindFramebuffer
    var bindRenderbuffer: fptr_glBindRenderbuffer
    var bindVertexArray: fptr_glBindVertexArray
    var blitFramebuffer: fptr_glBlitFramebuffer
    var checkFramebufferStatus: fptr_glCheckFramebufferStatus
    var clampColor: fptr_glClampColor
    var clearBufferfi: fptr_glClearBufferfi
    var clearBufferfv: fptr_glClearBufferfv
    var clearBufferiv: fptr_glClearBufferiv
    var clearBufferuiv: fptr_glClearBufferuiv
    var colorMaski: fptr_glColorMaski
    var deleteFramebuffers: fptr_glDeleteFramebuffers
    var deleteRenderbuffers: fptr_glDeleteRenderbuffers
    var deleteVertexArrays: fptr_glDeleteVertexArrays
    var disablei: fptr_glDisablei
    var enablei: fptr_glEnablei
    var endConditionalRender: fptr_glEndConditionalRender
    var endTransformFeedback: fptr_glEndTransformFeedback
    var flushMappedBufferRange: fptr_glFlushMappedBufferRange
    var framebufferRenderbuffer: fptr_glFramebufferRenderbuffer
    var framebufferTexture1D: fptr_glFramebufferTexture1D
    var framebufferTexture2D: fptr_glFramebufferTexture2D
    var framebufferTexture3D: fptr_glFramebufferTexture3D
    var framebufferTextureLayer: fptr_glFramebufferTextureLayer
    var genFramebuffers: fptr_glGenFramebuffers
    var genRenderbuffers: fptr_glGenRenderbuffers
    var genVertexArrays: fptr_glGenVertexArrays
    var generateMipmap: fptr_glGenerateMipmap
    var getBooleani_v: fptr_glGetBooleani_v
    var getFragDataLocation: fptr_glGetFragDataLocation
    var getFramebufferAttachmentParameteriv: fptr_glGetFramebufferAttachmentParameteriv
    var getIntegeri_v: fptr_glGetIntegeri_v
    var getRenderbufferParameteriv: fptr_glGetRenderbufferParameteriv
    var getStringi: fptr_glGetStringi
    var getTexParameterIiv: fptr_glGetTexParameterIiv
    var getTexParameterIuiv: fptr_glGetTexParameterIuiv
    var getTransformFeedbackVarying: fptr_glGetTransformFeedbackVarying
    var getUniformuiv: fptr_glGetUniformuiv
    var getVertexAttribIiv: fptr_glGetVertexAttribIiv
    var getVertexAttribIuiv: fptr_glGetVertexAttribIuiv
    var isEnabledi: fptr_glIsEnabledi
    var isFramebuffer: fptr_glIsFramebuffer
    var isRenderbuffer: fptr_glIsRenderbuffer
    var isVertexArray: fptr_glIsVertexArray
    var mapBufferRange: fptr_glMapBufferRange
    var renderbufferStorage: fptr_glRenderbufferStorage
    var renderbufferStorageMultisample: fptr_glRenderbufferStorageMultisample
    var texParameterIiv: fptr_glTexParameterIiv
    var texParameterIuiv: fptr_glTexParameterIuiv
    var transformFeedbackVaryings: fptr_glTransformFeedbackVaryings
    var uniform1ui: fptr_glUniform1ui
    var uniform1uiv: fptr_glUniform1uiv
    var uniform2ui: fptr_glUniform2ui
    var uniform2uiv: fptr_glUniform2uiv
    var uniform3ui: fptr_glUniform3ui
    var uniform3uiv: fptr_glUniform3uiv
    var uniform4ui: fptr_glUniform4ui
    var uniform4uiv: fptr_glUniform4uiv
    var vertexAttribI1i: fptr_glVertexAttribI1i
    var vertexAttribI1iv: fptr_glVertexAttribI1iv
    var vertexAttribI1ui: fptr_glVertexAttribI1ui
    var vertexAttribI1uiv: fptr_glVertexAttribI1uiv
    var vertexAttribI2i: fptr_glVertexAttribI2i
    var vertexAttribI2iv: fptr_glVertexAttribI2iv
    var vertexAttribI2ui: fptr_glVertexAttribI2ui
    var vertexAttribI2uiv: fptr_glVertexAttribI2uiv
    var vertexAttribI3i: fptr_glVertexAttribI3i
    var vertexAttribI3iv: fptr_glVertexAttribI3iv
    var vertexAttribI3ui: fptr_glVertexAttribI3ui
    var vertexAttribI3uiv: fptr_glVertexAttribI3uiv
    var vertexAttribI4bv: fptr_glVertexAttribI4bv
    var vertexAttribI4i: fptr_glVertexAttribI4i
    var vertexAttribI4iv: fptr_glVertexAttribI4iv
    var vertexAttribI4sv: fptr_glVertexAttribI4sv
    var vertexAttribI4ubv: fptr_glVertexAttribI4ubv
    var vertexAttribI4ui: fptr_glVertexAttribI4ui
    var vertexAttribI4uiv: fptr_glVertexAttribI4uiv
    var vertexAttribI4usv: fptr_glVertexAttribI4usv
    var vertexAttribIPointer: fptr_glVertexAttribIPointer

    fn __init__(out self, load: LoadProc) raises:
        self.beginConditionalRender = load_proc[fptr_glBeginConditionalRender]("glBeginConditionalRender", load)
        self.beginTransformFeedback = load_proc[fptr_glBeginTransformFeedback]("glBeginTransformFeedback", load)
        self.bindBufferBase = load_proc[fptr_glBindBufferBase]("glBindBufferBase", load)
        self.bindBufferRange = load_proc[fptr_glBindBufferRange]("glBindBufferRange", load)
        self.bindFragDataLocation = load_proc[fptr_glBindFragDataLocation]("glBindFragDataLocation", load)
        self.bindFramebuffer = load_proc[fptr_glBindFramebuffer]("glBindFramebuffer", load)
        self.bindRenderbuffer = load_proc[fptr_glBindRenderbuffer]("glBindRenderbuffer", load)
        self.bindVertexArray = load_proc[fptr_glBindVertexArray]("glBindVertexArray", load)
        self.blitFramebuffer = load_proc[fptr_glBlitFramebuffer]("glBlitFramebuffer", load)
        self.checkFramebufferStatus = load_proc[fptr_glCheckFramebufferStatus]("glCheckFramebufferStatus", load)
        self.clampColor = load_proc[fptr_glClampColor]("glClampColor", load)
        self.clearBufferfi = load_proc[fptr_glClearBufferfi]("glClearBufferfi", load)
        self.clearBufferfv = load_proc[fptr_glClearBufferfv]("glClearBufferfv", load)
        self.clearBufferiv = load_proc[fptr_glClearBufferiv]("glClearBufferiv", load)
        self.clearBufferuiv = load_proc[fptr_glClearBufferuiv]("glClearBufferuiv", load)
        self.colorMaski = load_proc[fptr_glColorMaski]("glColorMaski", load)
        self.deleteFramebuffers = load_proc[fptr_glDeleteFramebuffers]("glDeleteFramebuffers", load)
        self.deleteRenderbuffers = load_proc[fptr_glDeleteRenderbuffers]("glDeleteRenderbuffers", load)
        self.deleteVertexArrays = load_proc[fptr_glDeleteVertexArrays]("glDeleteVertexArrays", load)
        self.disablei = load_proc[fptr_glDisablei]("glDisablei", load)
        self.enablei = load_proc[fptr_glEnablei]("glEnablei", load)
        self.endConditionalRender = load_proc[fptr_glEndConditionalRender]("glEndConditionalRender", load)
        self.endTransformFeedback = load_proc[fptr_glEndTransformFeedback]("glEndTransformFeedback", load)
        self.flushMappedBufferRange = load_proc[fptr_glFlushMappedBufferRange]("glFlushMappedBufferRange", load)
        self.framebufferRenderbuffer = load_proc[fptr_glFramebufferRenderbuffer]("glFramebufferRenderbuffer", load)
        self.framebufferTexture1D = load_proc[fptr_glFramebufferTexture1D]("glFramebufferTexture1D", load)
        self.framebufferTexture2D = load_proc[fptr_glFramebufferTexture2D]("glFramebufferTexture2D", load)
        self.framebufferTexture3D = load_proc[fptr_glFramebufferTexture3D]("glFramebufferTexture3D", load)
        self.framebufferTextureLayer = load_proc[fptr_glFramebufferTextureLayer]("glFramebufferTextureLayer", load)
        self.genFramebuffers = load_proc[fptr_glGenFramebuffers]("glGenFramebuffers", load)
        self.genRenderbuffers = load_proc[fptr_glGenRenderbuffers]("glGenRenderbuffers", load)
        self.genVertexArrays = load_proc[fptr_glGenVertexArrays]("glGenVertexArrays", load)
        self.generateMipmap = load_proc[fptr_glGenerateMipmap]("glGenerateMipmap", load)
        self.getBooleani_v = load_proc[fptr_glGetBooleani_v]("glGetBooleani_v", load)
        self.getFragDataLocation = load_proc[fptr_glGetFragDataLocation]("glGetFragDataLocation", load)
        self.getFramebufferAttachmentParameteriv = load_proc[fptr_glGetFramebufferAttachmentParameteriv]("glGetFramebufferAttachmentParameteriv", load)
        self.getIntegeri_v = load_proc[fptr_glGetIntegeri_v]("glGetIntegeri_v", load)
        self.getRenderbufferParameteriv = load_proc[fptr_glGetRenderbufferParameteriv]("glGetRenderbufferParameteriv", load)
        self.getStringi = load_proc[fptr_glGetStringi]("glGetStringi", load)
        self.getTexParameterIiv = load_proc[fptr_glGetTexParameterIiv]("glGetTexParameterIiv", load)
        self.getTexParameterIuiv = load_proc[fptr_glGetTexParameterIuiv]("glGetTexParameterIuiv", load)
        self.getTransformFeedbackVarying = load_proc[fptr_glGetTransformFeedbackVarying]("glGetTransformFeedbackVarying", load)
        self.getUniformuiv = load_proc[fptr_glGetUniformuiv]("glGetUniformuiv", load)
        self.getVertexAttribIiv = load_proc[fptr_glGetVertexAttribIiv]("glGetVertexAttribIiv", load)
        self.getVertexAttribIuiv = load_proc[fptr_glGetVertexAttribIuiv]("glGetVertexAttribIuiv", load)
        self.isEnabledi = load_proc[fptr_glIsEnabledi]("glIsEnabledi", load)
        self.isFramebuffer = load_proc[fptr_glIsFramebuffer]("glIsFramebuffer", load)
        self.isRenderbuffer = load_proc[fptr_glIsRenderbuffer]("glIsRenderbuffer", load)
        self.isVertexArray = load_proc[fptr_glIsVertexArray]("glIsVertexArray", load)
        self.mapBufferRange = load_proc[fptr_glMapBufferRange]("glMapBufferRange", load)
        self.renderbufferStorage = load_proc[fptr_glRenderbufferStorage]("glRenderbufferStorage", load)
        self.renderbufferStorageMultisample = load_proc[fptr_glRenderbufferStorageMultisample]("glRenderbufferStorageMultisample", load)
        self.texParameterIiv = load_proc[fptr_glTexParameterIiv]("glTexParameterIiv", load)
        self.texParameterIuiv = load_proc[fptr_glTexParameterIuiv]("glTexParameterIuiv", load)
        self.transformFeedbackVaryings = load_proc[fptr_glTransformFeedbackVaryings]("glTransformFeedbackVaryings", load)
        self.uniform1ui = load_proc[fptr_glUniform1ui]("glUniform1ui", load)
        self.uniform1uiv = load_proc[fptr_glUniform1uiv]("glUniform1uiv", load)
        self.uniform2ui = load_proc[fptr_glUniform2ui]("glUniform2ui", load)
        self.uniform2uiv = load_proc[fptr_glUniform2uiv]("glUniform2uiv", load)
        self.uniform3ui = load_proc[fptr_glUniform3ui]("glUniform3ui", load)
        self.uniform3uiv = load_proc[fptr_glUniform3uiv]("glUniform3uiv", load)
        self.uniform4ui = load_proc[fptr_glUniform4ui]("glUniform4ui", load)
        self.uniform4uiv = load_proc[fptr_glUniform4uiv]("glUniform4uiv", load)
        self.vertexAttribI1i = load_proc[fptr_glVertexAttribI1i]("glVertexAttribI1i", load)
        self.vertexAttribI1iv = load_proc[fptr_glVertexAttribI1iv]("glVertexAttribI1iv", load)
        self.vertexAttribI1ui = load_proc[fptr_glVertexAttribI1ui]("glVertexAttribI1ui", load)
        self.vertexAttribI1uiv = load_proc[fptr_glVertexAttribI1uiv]("glVertexAttribI1uiv", load)
        self.vertexAttribI2i = load_proc[fptr_glVertexAttribI2i]("glVertexAttribI2i", load)
        self.vertexAttribI2iv = load_proc[fptr_glVertexAttribI2iv]("glVertexAttribI2iv", load)
        self.vertexAttribI2ui = load_proc[fptr_glVertexAttribI2ui]("glVertexAttribI2ui", load)
        self.vertexAttribI2uiv = load_proc[fptr_glVertexAttribI2uiv]("glVertexAttribI2uiv", load)
        self.vertexAttribI3i = load_proc[fptr_glVertexAttribI3i]("glVertexAttribI3i", load)
        self.vertexAttribI3iv = load_proc[fptr_glVertexAttribI3iv]("glVertexAttribI3iv", load)
        self.vertexAttribI3ui = load_proc[fptr_glVertexAttribI3ui]("glVertexAttribI3ui", load)
        self.vertexAttribI3uiv = load_proc[fptr_glVertexAttribI3uiv]("glVertexAttribI3uiv", load)
        self.vertexAttribI4bv = load_proc[fptr_glVertexAttribI4bv]("glVertexAttribI4bv", load)
        self.vertexAttribI4i = load_proc[fptr_glVertexAttribI4i]("glVertexAttribI4i", load)
        self.vertexAttribI4iv = load_proc[fptr_glVertexAttribI4iv]("glVertexAttribI4iv", load)
        self.vertexAttribI4sv = load_proc[fptr_glVertexAttribI4sv]("glVertexAttribI4sv", load)
        self.vertexAttribI4ubv = load_proc[fptr_glVertexAttribI4ubv]("glVertexAttribI4ubv", load)
        self.vertexAttribI4ui = load_proc[fptr_glVertexAttribI4ui]("glVertexAttribI4ui", load)
        self.vertexAttribI4uiv = load_proc[fptr_glVertexAttribI4uiv]("glVertexAttribI4uiv", load)
        self.vertexAttribI4usv = load_proc[fptr_glVertexAttribI4usv]("glVertexAttribI4usv", load)
        self.vertexAttribIPointer = load_proc[fptr_glVertexAttribIPointer]("glVertexAttribIPointer", load)


alias fptr_glCopyBufferSubData = fn (readTarget: CopyBufferSubDataTarget, writeTarget: CopyBufferSubDataTarget, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr)
alias fptr_glDrawArraysInstanced = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei)
alias fptr_glDrawElementsInstanced = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei)
alias fptr_glGetActiveUniformBlockName = fn (program: GLuint, uniformBlockIndex: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], uniformBlockName: Ptr[GLchar])
alias fptr_glGetActiveUniformBlockiv = fn (program: GLuint, uniformBlockIndex: GLuint, pname: UniformBlockPName, params: Ptr[GLint])
alias fptr_glGetActiveUniformName = fn (program: GLuint, uniformIndex: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], uniformName: Ptr[GLchar])
alias fptr_glGetActiveUniformsiv = fn (program: GLuint, uniformCount: GLsizei, uniformIndices: Ptr[GLuint], pname: UniformPName, params: Ptr[GLint])
alias fptr_glGetUniformBlockIndex = fn (program: GLuint, uniformBlockName: Ptr[GLchar]) -> GLuint
alias fptr_glGetUniformIndices = fn (program: GLuint, uniformCount: GLsizei, uniformNames: Ptr[GLchar], uniformIndices: Ptr[GLuint])
alias fptr_glPrimitiveRestartIndex = fn (index: GLuint)
alias fptr_glTexBuffer = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glUniformBlockBinding = fn (program: GLuint, uniformBlockIndex: GLuint, uniformBlockBinding: GLuint)


struct GL_VERSION_3_1:
    """Functions for gl 3.1."""

    var copyBufferSubData: fptr_glCopyBufferSubData
    var drawArraysInstanced: fptr_glDrawArraysInstanced
    var drawElementsInstanced: fptr_glDrawElementsInstanced
    var getActiveUniformBlockName: fptr_glGetActiveUniformBlockName
    var getActiveUniformBlockiv: fptr_glGetActiveUniformBlockiv
    var getActiveUniformName: fptr_glGetActiveUniformName
    var getActiveUniformsiv: fptr_glGetActiveUniformsiv
    var getUniformBlockIndex: fptr_glGetUniformBlockIndex
    var getUniformIndices: fptr_glGetUniformIndices
    var primitiveRestartIndex: fptr_glPrimitiveRestartIndex
    var texBuffer: fptr_glTexBuffer
    var uniformBlockBinding: fptr_glUniformBlockBinding

    fn __init__(out self, load: LoadProc) raises:
        self.copyBufferSubData = load_proc[fptr_glCopyBufferSubData]("glCopyBufferSubData", load)
        self.drawArraysInstanced = load_proc[fptr_glDrawArraysInstanced]("glDrawArraysInstanced", load)
        self.drawElementsInstanced = load_proc[fptr_glDrawElementsInstanced]("glDrawElementsInstanced", load)
        self.getActiveUniformBlockName = load_proc[fptr_glGetActiveUniformBlockName]("glGetActiveUniformBlockName", load)
        self.getActiveUniformBlockiv = load_proc[fptr_glGetActiveUniformBlockiv]("glGetActiveUniformBlockiv", load)
        self.getActiveUniformName = load_proc[fptr_glGetActiveUniformName]("glGetActiveUniformName", load)
        self.getActiveUniformsiv = load_proc[fptr_glGetActiveUniformsiv]("glGetActiveUniformsiv", load)
        self.getUniformBlockIndex = load_proc[fptr_glGetUniformBlockIndex]("glGetUniformBlockIndex", load)
        self.getUniformIndices = load_proc[fptr_glGetUniformIndices]("glGetUniformIndices", load)
        self.primitiveRestartIndex = load_proc[fptr_glPrimitiveRestartIndex]("glPrimitiveRestartIndex", load)
        self.texBuffer = load_proc[fptr_glTexBuffer]("glTexBuffer", load)
        self.uniformBlockBinding = load_proc[fptr_glUniformBlockBinding]("glUniformBlockBinding", load)


alias fptr_glClientWaitSync = fn (sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> GLenum
alias fptr_glDeleteSync = fn (sync: GLsync)
alias fptr_glDrawElementsBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], basevertex: GLint)
alias fptr_glDrawElementsInstancedBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, basevertex: GLint)
alias fptr_glDrawRangeElementsBaseVertex = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], basevertex: GLint)
alias fptr_glFenceSync = fn (condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync
alias fptr_glFramebufferTexture = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glGetBufferParameteri64v = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64])
alias fptr_glGetInteger64i_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint64])
alias fptr_glGetInteger64v = fn (pname: GetPName, data: Ptr[GLint64])
alias fptr_glGetMultisamplefv = fn (pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat])
alias fptr_glGetSynciv = fn (sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei], values: Ptr[GLint])
alias fptr_glIsSync = fn (sync: GLsync) -> GLboolean
alias fptr_glMultiDrawElementsBaseVertex = fn (mode: PrimitiveType, count: Ptr[GLsizei], type: DrawElementsType, indices: Ptr[NoneType], drawcount: GLsizei, basevertex: Ptr[GLint])
alias fptr_glProvokingVertex = fn (mode: VertexProvokingMode)
alias fptr_glSampleMaski = fn (maskNumber: GLuint, mask: GLbitfield)
alias fptr_glTexImage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexImage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glWaitSync = fn (sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64)


struct GL_VERSION_3_2:
    """Functions for gl 3.2."""

    var clientWaitSync: fptr_glClientWaitSync
    var deleteSync: fptr_glDeleteSync
    var drawElementsBaseVertex: fptr_glDrawElementsBaseVertex
    var drawElementsInstancedBaseVertex: fptr_glDrawElementsInstancedBaseVertex
    var drawRangeElementsBaseVertex: fptr_glDrawRangeElementsBaseVertex
    var fenceSync: fptr_glFenceSync
    var framebufferTexture: fptr_glFramebufferTexture
    var getBufferParameteri64v: fptr_glGetBufferParameteri64v
    var getInteger64i_v: fptr_glGetInteger64i_v
    var getInteger64v: fptr_glGetInteger64v
    var getMultisamplefv: fptr_glGetMultisamplefv
    var getSynciv: fptr_glGetSynciv
    var isSync: fptr_glIsSync
    var multiDrawElementsBaseVertex: fptr_glMultiDrawElementsBaseVertex
    var provokingVertex: fptr_glProvokingVertex
    var sampleMaski: fptr_glSampleMaski
    var texImage2DMultisample: fptr_glTexImage2DMultisample
    var texImage3DMultisample: fptr_glTexImage3DMultisample
    var waitSync: fptr_glWaitSync

    fn __init__(out self, load: LoadProc) raises:
        self.clientWaitSync = load_proc[fptr_glClientWaitSync]("glClientWaitSync", load)
        self.deleteSync = load_proc[fptr_glDeleteSync]("glDeleteSync", load)
        self.drawElementsBaseVertex = load_proc[fptr_glDrawElementsBaseVertex]("glDrawElementsBaseVertex", load)
        self.drawElementsInstancedBaseVertex = load_proc[fptr_glDrawElementsInstancedBaseVertex]("glDrawElementsInstancedBaseVertex", load)
        self.drawRangeElementsBaseVertex = load_proc[fptr_glDrawRangeElementsBaseVertex]("glDrawRangeElementsBaseVertex", load)
        self.fenceSync = load_proc[fptr_glFenceSync]("glFenceSync", load)
        self.framebufferTexture = load_proc[fptr_glFramebufferTexture]("glFramebufferTexture", load)
        self.getBufferParameteri64v = load_proc[fptr_glGetBufferParameteri64v]("glGetBufferParameteri64v", load)
        self.getInteger64i_v = load_proc[fptr_glGetInteger64i_v]("glGetInteger64i_v", load)
        self.getInteger64v = load_proc[fptr_glGetInteger64v]("glGetInteger64v", load)
        self.getMultisamplefv = load_proc[fptr_glGetMultisamplefv]("glGetMultisamplefv", load)
        self.getSynciv = load_proc[fptr_glGetSynciv]("glGetSynciv", load)
        self.isSync = load_proc[fptr_glIsSync]("glIsSync", load)
        self.multiDrawElementsBaseVertex = load_proc[fptr_glMultiDrawElementsBaseVertex]("glMultiDrawElementsBaseVertex", load)
        self.provokingVertex = load_proc[fptr_glProvokingVertex]("glProvokingVertex", load)
        self.sampleMaski = load_proc[fptr_glSampleMaski]("glSampleMaski", load)
        self.texImage2DMultisample = load_proc[fptr_glTexImage2DMultisample]("glTexImage2DMultisample", load)
        self.texImage3DMultisample = load_proc[fptr_glTexImage3DMultisample]("glTexImage3DMultisample", load)
        self.waitSync = load_proc[fptr_glWaitSync]("glWaitSync", load)


alias fptr_glBindFragDataLocationIndexed = fn (program: GLuint, colorNumber: GLuint, index: GLuint, name: Ptr[GLchar])
alias fptr_glBindSampler = fn (unit: GLuint, sampler: GLuint)
alias fptr_glColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint])
alias fptr_glColorP4ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP4uiv = fn (type: ColorPointerType, color: Ptr[GLuint])
alias fptr_glDeleteSamplers = fn (count: GLsizei, samplers: Ptr[GLuint])
alias fptr_glGenSamplers = fn (count: GLsizei, samplers: Ptr[GLuint])
alias fptr_glGetFragDataIndex = fn (program: GLuint, name: Ptr[GLchar]) -> GLint
alias fptr_glGetQueryObjecti64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64])
alias fptr_glGetQueryObjectui64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64])
alias fptr_glGetSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint])
alias fptr_glGetSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint])
alias fptr_glGetSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat])
alias fptr_glGetSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint])
alias fptr_glIsSampler = fn (sampler: GLuint) -> GLboolean
alias fptr_glMultiTexCoordP1ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP1uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glMultiTexCoordP2ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP2uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glMultiTexCoordP3ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP3uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glMultiTexCoordP4ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP4uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glNormalP3ui = fn (type: NormalPointerType, coords: GLuint)
alias fptr_glNormalP3uiv = fn (type: NormalPointerType, coords: Ptr[GLuint])
alias fptr_glQueryCounter = fn (id: GLuint, target: QueryCounterTarget)
alias fptr_glSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint])
alias fptr_glSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint])
alias fptr_glSamplerParameterf = fn (sampler: GLuint, pname: SamplerParameterF, param: GLfloat)
alias fptr_glSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat])
alias fptr_glSamplerParameteri = fn (sampler: GLuint, pname: SamplerParameterI, param: GLint)
alias fptr_glSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint])
alias fptr_glSecondaryColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glSecondaryColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint])
alias fptr_glTexCoordP1ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP1uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glTexCoordP2ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP2uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glTexCoordP3ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP3uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glTexCoordP4ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP4uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint])
alias fptr_glVertexAttribDivisor = fn (index: GLuint, divisor: GLuint)
alias fptr_glVertexAttribP1ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP1uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint])
alias fptr_glVertexAttribP2ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP2uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint])
alias fptr_glVertexAttribP3ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP3uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint])
alias fptr_glVertexAttribP4ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP4uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint])
alias fptr_glVertexP2ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP2uiv = fn (type: VertexPointerType, value: Ptr[GLuint])
alias fptr_glVertexP3ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP3uiv = fn (type: VertexPointerType, value: Ptr[GLuint])
alias fptr_glVertexP4ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP4uiv = fn (type: VertexPointerType, value: Ptr[GLuint])


struct GL_VERSION_3_3:
    """Functions for gl 3.3."""

    var bindFragDataLocationIndexed: fptr_glBindFragDataLocationIndexed
    var bindSampler: fptr_glBindSampler
    var colorP3ui: fptr_glColorP3ui
    var colorP3uiv: fptr_glColorP3uiv
    var colorP4ui: fptr_glColorP4ui
    var colorP4uiv: fptr_glColorP4uiv
    var deleteSamplers: fptr_glDeleteSamplers
    var genSamplers: fptr_glGenSamplers
    var getFragDataIndex: fptr_glGetFragDataIndex
    var getQueryObjecti64v: fptr_glGetQueryObjecti64v
    var getQueryObjectui64v: fptr_glGetQueryObjectui64v
    var getSamplerParameterIiv: fptr_glGetSamplerParameterIiv
    var getSamplerParameterIuiv: fptr_glGetSamplerParameterIuiv
    var getSamplerParameterfv: fptr_glGetSamplerParameterfv
    var getSamplerParameteriv: fptr_glGetSamplerParameteriv
    var isSampler: fptr_glIsSampler
    var multiTexCoordP1ui: fptr_glMultiTexCoordP1ui
    var multiTexCoordP1uiv: fptr_glMultiTexCoordP1uiv
    var multiTexCoordP2ui: fptr_glMultiTexCoordP2ui
    var multiTexCoordP2uiv: fptr_glMultiTexCoordP2uiv
    var multiTexCoordP3ui: fptr_glMultiTexCoordP3ui
    var multiTexCoordP3uiv: fptr_glMultiTexCoordP3uiv
    var multiTexCoordP4ui: fptr_glMultiTexCoordP4ui
    var multiTexCoordP4uiv: fptr_glMultiTexCoordP4uiv
    var normalP3ui: fptr_glNormalP3ui
    var normalP3uiv: fptr_glNormalP3uiv
    var queryCounter: fptr_glQueryCounter
    var samplerParameterIiv: fptr_glSamplerParameterIiv
    var samplerParameterIuiv: fptr_glSamplerParameterIuiv
    var samplerParameterf: fptr_glSamplerParameterf
    var samplerParameterfv: fptr_glSamplerParameterfv
    var samplerParameteri: fptr_glSamplerParameteri
    var samplerParameteriv: fptr_glSamplerParameteriv
    var secondaryColorP3ui: fptr_glSecondaryColorP3ui
    var secondaryColorP3uiv: fptr_glSecondaryColorP3uiv
    var texCoordP1ui: fptr_glTexCoordP1ui
    var texCoordP1uiv: fptr_glTexCoordP1uiv
    var texCoordP2ui: fptr_glTexCoordP2ui
    var texCoordP2uiv: fptr_glTexCoordP2uiv
    var texCoordP3ui: fptr_glTexCoordP3ui
    var texCoordP3uiv: fptr_glTexCoordP3uiv
    var texCoordP4ui: fptr_glTexCoordP4ui
    var texCoordP4uiv: fptr_glTexCoordP4uiv
    var vertexAttribDivisor: fptr_glVertexAttribDivisor
    var vertexAttribP1ui: fptr_glVertexAttribP1ui
    var vertexAttribP1uiv: fptr_glVertexAttribP1uiv
    var vertexAttribP2ui: fptr_glVertexAttribP2ui
    var vertexAttribP2uiv: fptr_glVertexAttribP2uiv
    var vertexAttribP3ui: fptr_glVertexAttribP3ui
    var vertexAttribP3uiv: fptr_glVertexAttribP3uiv
    var vertexAttribP4ui: fptr_glVertexAttribP4ui
    var vertexAttribP4uiv: fptr_glVertexAttribP4uiv
    var vertexP2ui: fptr_glVertexP2ui
    var vertexP2uiv: fptr_glVertexP2uiv
    var vertexP3ui: fptr_glVertexP3ui
    var vertexP3uiv: fptr_glVertexP3uiv
    var vertexP4ui: fptr_glVertexP4ui
    var vertexP4uiv: fptr_glVertexP4uiv

    fn __init__(out self, load: LoadProc) raises:
        self.bindFragDataLocationIndexed = load_proc[fptr_glBindFragDataLocationIndexed]("glBindFragDataLocationIndexed", load)
        self.bindSampler = load_proc[fptr_glBindSampler]("glBindSampler", load)
        self.colorP3ui = load_proc[fptr_glColorP3ui]("glColorP3ui", load)
        self.colorP3uiv = load_proc[fptr_glColorP3uiv]("glColorP3uiv", load)
        self.colorP4ui = load_proc[fptr_glColorP4ui]("glColorP4ui", load)
        self.colorP4uiv = load_proc[fptr_glColorP4uiv]("glColorP4uiv", load)
        self.deleteSamplers = load_proc[fptr_glDeleteSamplers]("glDeleteSamplers", load)
        self.genSamplers = load_proc[fptr_glGenSamplers]("glGenSamplers", load)
        self.getFragDataIndex = load_proc[fptr_glGetFragDataIndex]("glGetFragDataIndex", load)
        self.getQueryObjecti64v = load_proc[fptr_glGetQueryObjecti64v]("glGetQueryObjecti64v", load)
        self.getQueryObjectui64v = load_proc[fptr_glGetQueryObjectui64v]("glGetQueryObjectui64v", load)
        self.getSamplerParameterIiv = load_proc[fptr_glGetSamplerParameterIiv]("glGetSamplerParameterIiv", load)
        self.getSamplerParameterIuiv = load_proc[fptr_glGetSamplerParameterIuiv]("glGetSamplerParameterIuiv", load)
        self.getSamplerParameterfv = load_proc[fptr_glGetSamplerParameterfv]("glGetSamplerParameterfv", load)
        self.getSamplerParameteriv = load_proc[fptr_glGetSamplerParameteriv]("glGetSamplerParameteriv", load)
        self.isSampler = load_proc[fptr_glIsSampler]("glIsSampler", load)
        self.multiTexCoordP1ui = load_proc[fptr_glMultiTexCoordP1ui]("glMultiTexCoordP1ui", load)
        self.multiTexCoordP1uiv = load_proc[fptr_glMultiTexCoordP1uiv]("glMultiTexCoordP1uiv", load)
        self.multiTexCoordP2ui = load_proc[fptr_glMultiTexCoordP2ui]("glMultiTexCoordP2ui", load)
        self.multiTexCoordP2uiv = load_proc[fptr_glMultiTexCoordP2uiv]("glMultiTexCoordP2uiv", load)
        self.multiTexCoordP3ui = load_proc[fptr_glMultiTexCoordP3ui]("glMultiTexCoordP3ui", load)
        self.multiTexCoordP3uiv = load_proc[fptr_glMultiTexCoordP3uiv]("glMultiTexCoordP3uiv", load)
        self.multiTexCoordP4ui = load_proc[fptr_glMultiTexCoordP4ui]("glMultiTexCoordP4ui", load)
        self.multiTexCoordP4uiv = load_proc[fptr_glMultiTexCoordP4uiv]("glMultiTexCoordP4uiv", load)
        self.normalP3ui = load_proc[fptr_glNormalP3ui]("glNormalP3ui", load)
        self.normalP3uiv = load_proc[fptr_glNormalP3uiv]("glNormalP3uiv", load)
        self.queryCounter = load_proc[fptr_glQueryCounter]("glQueryCounter", load)
        self.samplerParameterIiv = load_proc[fptr_glSamplerParameterIiv]("glSamplerParameterIiv", load)
        self.samplerParameterIuiv = load_proc[fptr_glSamplerParameterIuiv]("glSamplerParameterIuiv", load)
        self.samplerParameterf = load_proc[fptr_glSamplerParameterf]("glSamplerParameterf", load)
        self.samplerParameterfv = load_proc[fptr_glSamplerParameterfv]("glSamplerParameterfv", load)
        self.samplerParameteri = load_proc[fptr_glSamplerParameteri]("glSamplerParameteri", load)
        self.samplerParameteriv = load_proc[fptr_glSamplerParameteriv]("glSamplerParameteriv", load)
        self.secondaryColorP3ui = load_proc[fptr_glSecondaryColorP3ui]("glSecondaryColorP3ui", load)
        self.secondaryColorP3uiv = load_proc[fptr_glSecondaryColorP3uiv]("glSecondaryColorP3uiv", load)
        self.texCoordP1ui = load_proc[fptr_glTexCoordP1ui]("glTexCoordP1ui", load)
        self.texCoordP1uiv = load_proc[fptr_glTexCoordP1uiv]("glTexCoordP1uiv", load)
        self.texCoordP2ui = load_proc[fptr_glTexCoordP2ui]("glTexCoordP2ui", load)
        self.texCoordP2uiv = load_proc[fptr_glTexCoordP2uiv]("glTexCoordP2uiv", load)
        self.texCoordP3ui = load_proc[fptr_glTexCoordP3ui]("glTexCoordP3ui", load)
        self.texCoordP3uiv = load_proc[fptr_glTexCoordP3uiv]("glTexCoordP3uiv", load)
        self.texCoordP4ui = load_proc[fptr_glTexCoordP4ui]("glTexCoordP4ui", load)
        self.texCoordP4uiv = load_proc[fptr_glTexCoordP4uiv]("glTexCoordP4uiv", load)
        self.vertexAttribDivisor = load_proc[fptr_glVertexAttribDivisor]("glVertexAttribDivisor", load)
        self.vertexAttribP1ui = load_proc[fptr_glVertexAttribP1ui]("glVertexAttribP1ui", load)
        self.vertexAttribP1uiv = load_proc[fptr_glVertexAttribP1uiv]("glVertexAttribP1uiv", load)
        self.vertexAttribP2ui = load_proc[fptr_glVertexAttribP2ui]("glVertexAttribP2ui", load)
        self.vertexAttribP2uiv = load_proc[fptr_glVertexAttribP2uiv]("glVertexAttribP2uiv", load)
        self.vertexAttribP3ui = load_proc[fptr_glVertexAttribP3ui]("glVertexAttribP3ui", load)
        self.vertexAttribP3uiv = load_proc[fptr_glVertexAttribP3uiv]("glVertexAttribP3uiv", load)
        self.vertexAttribP4ui = load_proc[fptr_glVertexAttribP4ui]("glVertexAttribP4ui", load)
        self.vertexAttribP4uiv = load_proc[fptr_glVertexAttribP4uiv]("glVertexAttribP4uiv", load)
        self.vertexP2ui = load_proc[fptr_glVertexP2ui]("glVertexP2ui", load)
        self.vertexP2uiv = load_proc[fptr_glVertexP2uiv]("glVertexP2uiv", load)
        self.vertexP3ui = load_proc[fptr_glVertexP3ui]("glVertexP3ui", load)
        self.vertexP3uiv = load_proc[fptr_glVertexP3uiv]("glVertexP3uiv", load)
        self.vertexP4ui = load_proc[fptr_glVertexP4ui]("glVertexP4ui", load)
        self.vertexP4uiv = load_proc[fptr_glVertexP4uiv]("glVertexP4uiv", load)


alias fptr_glBeginQueryIndexed = fn (target: QueryTarget, index: GLuint, id: GLuint)
alias fptr_glBindTransformFeedback = fn (target: BindTransformFeedbackTarget, id: GLuint)
alias fptr_glBlendEquationSeparatei = fn (buf: GLuint, modeRGB: BlendEquationModeEXT, modeAlpha: BlendEquationModeEXT)
alias fptr_glBlendEquationi = fn (buf: GLuint, mode: BlendEquationModeEXT)
alias fptr_glBlendFuncSeparatei = fn (buf: GLuint, srcRGB: BlendingFactor, dstRGB: BlendingFactor, srcAlpha: BlendingFactor, dstAlpha: BlendingFactor)
alias fptr_glBlendFunci = fn (buf: GLuint, src: BlendingFactor, dst: BlendingFactor)
alias fptr_glDeleteTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint])
alias fptr_glDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType])
alias fptr_glDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType])
alias fptr_glDrawTransformFeedback = fn (mode: PrimitiveType, id: GLuint)
alias fptr_glDrawTransformFeedbackStream = fn (mode: PrimitiveType, id: GLuint, stream: GLuint)
alias fptr_glEndQueryIndexed = fn (target: QueryTarget, index: GLuint)
alias fptr_glGenTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint])
alias fptr_glGetActiveSubroutineName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar])
alias fptr_glGetActiveSubroutineUniformName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar])
alias fptr_glGetActiveSubroutineUniformiv = fn (program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint])
alias fptr_glGetProgramStageiv = fn (program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint])
alias fptr_glGetQueryIndexediv = fn (target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint])
alias fptr_glGetSubroutineIndex = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar]) -> GLuint
alias fptr_glGetSubroutineUniformLocation = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar]) -> GLint
alias fptr_glGetUniformSubroutineuiv = fn (shadertype: ShaderType, location: GLint, params: Ptr[GLuint])
alias fptr_glGetUniformdv = fn (program: GLuint, location: GLint, params: Ptr[GLdouble])
alias fptr_glIsTransformFeedback = fn (id: GLuint) -> GLboolean
alias fptr_glMinSampleShading = fn (value: GLfloat)
alias fptr_glPatchParameterfv = fn (pname: PatchParameterName, values: Ptr[GLfloat])
alias fptr_glPatchParameteri = fn (pname: PatchParameterName, value: GLint)
alias fptr_glPauseTransformFeedback = fn ()
alias fptr_glResumeTransformFeedback = fn ()
alias fptr_glUniform1d = fn (location: GLint, x: GLdouble)
alias fptr_glUniform1dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glUniform2d = fn (location: GLint, x: GLdouble, y: GLdouble)
alias fptr_glUniform2dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glUniform3d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glUniform3dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glUniform4d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glUniform4dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glUniformMatrix2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix2x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix2x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix3x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix3x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix4x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformMatrix4x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glUniformSubroutinesuiv = fn (shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint])


struct GL_VERSION_4_0:
    """Functions for gl 4.0."""

    var beginQueryIndexed: fptr_glBeginQueryIndexed
    var bindTransformFeedback: fptr_glBindTransformFeedback
    var blendEquationSeparatei: fptr_glBlendEquationSeparatei
    var blendEquationi: fptr_glBlendEquationi
    var blendFuncSeparatei: fptr_glBlendFuncSeparatei
    var blendFunci: fptr_glBlendFunci
    var deleteTransformFeedbacks: fptr_glDeleteTransformFeedbacks
    var drawArraysIndirect: fptr_glDrawArraysIndirect
    var drawElementsIndirect: fptr_glDrawElementsIndirect
    var drawTransformFeedback: fptr_glDrawTransformFeedback
    var drawTransformFeedbackStream: fptr_glDrawTransformFeedbackStream
    var endQueryIndexed: fptr_glEndQueryIndexed
    var genTransformFeedbacks: fptr_glGenTransformFeedbacks
    var getActiveSubroutineName: fptr_glGetActiveSubroutineName
    var getActiveSubroutineUniformName: fptr_glGetActiveSubroutineUniformName
    var getActiveSubroutineUniformiv: fptr_glGetActiveSubroutineUniformiv
    var getProgramStageiv: fptr_glGetProgramStageiv
    var getQueryIndexediv: fptr_glGetQueryIndexediv
    var getSubroutineIndex: fptr_glGetSubroutineIndex
    var getSubroutineUniformLocation: fptr_glGetSubroutineUniformLocation
    var getUniformSubroutineuiv: fptr_glGetUniformSubroutineuiv
    var getUniformdv: fptr_glGetUniformdv
    var isTransformFeedback: fptr_glIsTransformFeedback
    var minSampleShading: fptr_glMinSampleShading
    var patchParameterfv: fptr_glPatchParameterfv
    var patchParameteri: fptr_glPatchParameteri
    var pauseTransformFeedback: fptr_glPauseTransformFeedback
    var resumeTransformFeedback: fptr_glResumeTransformFeedback
    var uniform1d: fptr_glUniform1d
    var uniform1dv: fptr_glUniform1dv
    var uniform2d: fptr_glUniform2d
    var uniform2dv: fptr_glUniform2dv
    var uniform3d: fptr_glUniform3d
    var uniform3dv: fptr_glUniform3dv
    var uniform4d: fptr_glUniform4d
    var uniform4dv: fptr_glUniform4dv
    var uniformMatrix2dv: fptr_glUniformMatrix2dv
    var uniformMatrix2x3dv: fptr_glUniformMatrix2x3dv
    var uniformMatrix2x4dv: fptr_glUniformMatrix2x4dv
    var uniformMatrix3dv: fptr_glUniformMatrix3dv
    var uniformMatrix3x2dv: fptr_glUniformMatrix3x2dv
    var uniformMatrix3x4dv: fptr_glUniformMatrix3x4dv
    var uniformMatrix4dv: fptr_glUniformMatrix4dv
    var uniformMatrix4x2dv: fptr_glUniformMatrix4x2dv
    var uniformMatrix4x3dv: fptr_glUniformMatrix4x3dv
    var uniformSubroutinesuiv: fptr_glUniformSubroutinesuiv

    fn __init__(out self, load: LoadProc) raises:
        self.beginQueryIndexed = load_proc[fptr_glBeginQueryIndexed]("glBeginQueryIndexed", load)
        self.bindTransformFeedback = load_proc[fptr_glBindTransformFeedback]("glBindTransformFeedback", load)
        self.blendEquationSeparatei = load_proc[fptr_glBlendEquationSeparatei]("glBlendEquationSeparatei", load)
        self.blendEquationi = load_proc[fptr_glBlendEquationi]("glBlendEquationi", load)
        self.blendFuncSeparatei = load_proc[fptr_glBlendFuncSeparatei]("glBlendFuncSeparatei", load)
        self.blendFunci = load_proc[fptr_glBlendFunci]("glBlendFunci", load)
        self.deleteTransformFeedbacks = load_proc[fptr_glDeleteTransformFeedbacks]("glDeleteTransformFeedbacks", load)
        self.drawArraysIndirect = load_proc[fptr_glDrawArraysIndirect]("glDrawArraysIndirect", load)
        self.drawElementsIndirect = load_proc[fptr_glDrawElementsIndirect]("glDrawElementsIndirect", load)
        self.drawTransformFeedback = load_proc[fptr_glDrawTransformFeedback]("glDrawTransformFeedback", load)
        self.drawTransformFeedbackStream = load_proc[fptr_glDrawTransformFeedbackStream]("glDrawTransformFeedbackStream", load)
        self.endQueryIndexed = load_proc[fptr_glEndQueryIndexed]("glEndQueryIndexed", load)
        self.genTransformFeedbacks = load_proc[fptr_glGenTransformFeedbacks]("glGenTransformFeedbacks", load)
        self.getActiveSubroutineName = load_proc[fptr_glGetActiveSubroutineName]("glGetActiveSubroutineName", load)
        self.getActiveSubroutineUniformName = load_proc[fptr_glGetActiveSubroutineUniformName]("glGetActiveSubroutineUniformName", load)
        self.getActiveSubroutineUniformiv = load_proc[fptr_glGetActiveSubroutineUniformiv]("glGetActiveSubroutineUniformiv", load)
        self.getProgramStageiv = load_proc[fptr_glGetProgramStageiv]("glGetProgramStageiv", load)
        self.getQueryIndexediv = load_proc[fptr_glGetQueryIndexediv]("glGetQueryIndexediv", load)
        self.getSubroutineIndex = load_proc[fptr_glGetSubroutineIndex]("glGetSubroutineIndex", load)
        self.getSubroutineUniformLocation = load_proc[fptr_glGetSubroutineUniformLocation]("glGetSubroutineUniformLocation", load)
        self.getUniformSubroutineuiv = load_proc[fptr_glGetUniformSubroutineuiv]("glGetUniformSubroutineuiv", load)
        self.getUniformdv = load_proc[fptr_glGetUniformdv]("glGetUniformdv", load)
        self.isTransformFeedback = load_proc[fptr_glIsTransformFeedback]("glIsTransformFeedback", load)
        self.minSampleShading = load_proc[fptr_glMinSampleShading]("glMinSampleShading", load)
        self.patchParameterfv = load_proc[fptr_glPatchParameterfv]("glPatchParameterfv", load)
        self.patchParameteri = load_proc[fptr_glPatchParameteri]("glPatchParameteri", load)
        self.pauseTransformFeedback = load_proc[fptr_glPauseTransformFeedback]("glPauseTransformFeedback", load)
        self.resumeTransformFeedback = load_proc[fptr_glResumeTransformFeedback]("glResumeTransformFeedback", load)
        self.uniform1d = load_proc[fptr_glUniform1d]("glUniform1d", load)
        self.uniform1dv = load_proc[fptr_glUniform1dv]("glUniform1dv", load)
        self.uniform2d = load_proc[fptr_glUniform2d]("glUniform2d", load)
        self.uniform2dv = load_proc[fptr_glUniform2dv]("glUniform2dv", load)
        self.uniform3d = load_proc[fptr_glUniform3d]("glUniform3d", load)
        self.uniform3dv = load_proc[fptr_glUniform3dv]("glUniform3dv", load)
        self.uniform4d = load_proc[fptr_glUniform4d]("glUniform4d", load)
        self.uniform4dv = load_proc[fptr_glUniform4dv]("glUniform4dv", load)
        self.uniformMatrix2dv = load_proc[fptr_glUniformMatrix2dv]("glUniformMatrix2dv", load)
        self.uniformMatrix2x3dv = load_proc[fptr_glUniformMatrix2x3dv]("glUniformMatrix2x3dv", load)
        self.uniformMatrix2x4dv = load_proc[fptr_glUniformMatrix2x4dv]("glUniformMatrix2x4dv", load)
        self.uniformMatrix3dv = load_proc[fptr_glUniformMatrix3dv]("glUniformMatrix3dv", load)
        self.uniformMatrix3x2dv = load_proc[fptr_glUniformMatrix3x2dv]("glUniformMatrix3x2dv", load)
        self.uniformMatrix3x4dv = load_proc[fptr_glUniformMatrix3x4dv]("glUniformMatrix3x4dv", load)
        self.uniformMatrix4dv = load_proc[fptr_glUniformMatrix4dv]("glUniformMatrix4dv", load)
        self.uniformMatrix4x2dv = load_proc[fptr_glUniformMatrix4x2dv]("glUniformMatrix4x2dv", load)
        self.uniformMatrix4x3dv = load_proc[fptr_glUniformMatrix4x3dv]("glUniformMatrix4x3dv", load)
        self.uniformSubroutinesuiv = load_proc[fptr_glUniformSubroutinesuiv]("glUniformSubroutinesuiv", load)


alias fptr_glActiveShaderProgram = fn (pipeline: GLuint, program: GLuint)
alias fptr_glBindProgramPipeline = fn (pipeline: GLuint)
alias fptr_glClearDepthf = fn (d: GLfloat)
alias fptr_glCreateShaderProgramv = fn (type: ShaderType, count: GLsizei, strings: Ptr[GLchar]) -> GLuint
alias fptr_glDeleteProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint])
alias fptr_glDepthRangeArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLdouble])
alias fptr_glDepthRangeIndexed = fn (index: GLuint, n: GLdouble, f: GLdouble)
alias fptr_glDepthRangef = fn (n: GLfloat, f: GLfloat)
alias fptr_glGenProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint])
alias fptr_glGetDoublei_v = fn (target: GetPName, index: GLuint, data: Ptr[GLdouble])
alias fptr_glGetFloati_v = fn (target: GetPName, index: GLuint, data: Ptr[GLfloat])
alias fptr_glGetProgramBinary = fn (program: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], binaryFormat: Ptr[GLenum], binary: Ptr[NoneType])
alias fptr_glGetProgramPipelineInfoLog = fn (pipeline: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar])
alias fptr_glGetProgramPipelineiv = fn (pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint])
alias fptr_glGetShaderPrecisionFormat = fn (shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint], precision: Ptr[GLint])
alias fptr_glGetVertexAttribLdv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble])
alias fptr_glIsProgramPipeline = fn (pipeline: GLuint) -> GLboolean
alias fptr_glProgramBinary = fn (program: GLuint, binaryFormat: GLenum, binary: Ptr[NoneType], length: GLsizei)
alias fptr_glProgramParameteri = fn (program: GLuint, pname: ProgramParameterPName, value: GLint)
alias fptr_glProgramUniform1d = fn (program: GLuint, location: GLint, v0: GLdouble)
alias fptr_glProgramUniform1dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glProgramUniform1f = fn (program: GLuint, location: GLint, v0: GLfloat)
alias fptr_glProgramUniform1fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glProgramUniform1i = fn (program: GLuint, location: GLint, v0: GLint)
alias fptr_glProgramUniform1iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glProgramUniform1ui = fn (program: GLuint, location: GLint, v0: GLuint)
alias fptr_glProgramUniform1uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glProgramUniform2d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble)
alias fptr_glProgramUniform2dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glProgramUniform2f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glProgramUniform2fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glProgramUniform2i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint)
alias fptr_glProgramUniform2iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glProgramUniform2ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glProgramUniform2uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glProgramUniform3d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble)
alias fptr_glProgramUniform3dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glProgramUniform3f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glProgramUniform3fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glProgramUniform3i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glProgramUniform3iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glProgramUniform3ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glProgramUniform3uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glProgramUniform4d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble)
alias fptr_glProgramUniform4dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble])
alias fptr_glProgramUniform4f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glProgramUniform4fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat])
alias fptr_glProgramUniform4i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glProgramUniform4iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint])
alias fptr_glProgramUniform4ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glProgramUniform4uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint])
alias fptr_glProgramUniformMatrix2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix2x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix2x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix2x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix2x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix3x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix3x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix3x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix3x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix4x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix4x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glProgramUniformMatrix4x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble])
alias fptr_glProgramUniformMatrix4x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat])
alias fptr_glReleaseShaderCompiler = fn ()
alias fptr_glScissorArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLint])
alias fptr_glScissorIndexed = fn (index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei)
alias fptr_glScissorIndexedv = fn (index: GLuint, v: Ptr[GLint])
alias fptr_glShaderBinary = fn (count: GLsizei, shaders: Ptr[GLuint], binaryFormat: ShaderBinaryFormat, binary: Ptr[NoneType], length: GLsizei)
alias fptr_glUseProgramStages = fn (pipeline: GLuint, stages: UseProgramStageMask, program: GLuint)
alias fptr_glValidateProgramPipeline = fn (pipeline: GLuint)
alias fptr_glVertexAttribL1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttribL1dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttribL2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttribL2dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttribL3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttribL3dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttribL4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttribL4dv = fn (index: GLuint, v: Ptr[GLdouble])
alias fptr_glVertexAttribLPointer = fn (index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType])
alias fptr_glViewportArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLfloat])
alias fptr_glViewportIndexedf = fn (index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat)
alias fptr_glViewportIndexedfv = fn (index: GLuint, v: Ptr[GLfloat])


struct GL_VERSION_4_1:
    """Functions for gl 4.1."""

    var activeShaderProgram: fptr_glActiveShaderProgram
    var bindProgramPipeline: fptr_glBindProgramPipeline
    var clearDepthf: fptr_glClearDepthf
    var createShaderProgramv: fptr_glCreateShaderProgramv
    var deleteProgramPipelines: fptr_glDeleteProgramPipelines
    var depthRangeArrayv: fptr_glDepthRangeArrayv
    var depthRangeIndexed: fptr_glDepthRangeIndexed
    var depthRangef: fptr_glDepthRangef
    var genProgramPipelines: fptr_glGenProgramPipelines
    var getDoublei_v: fptr_glGetDoublei_v
    var getFloati_v: fptr_glGetFloati_v
    var getProgramBinary: fptr_glGetProgramBinary
    var getProgramPipelineInfoLog: fptr_glGetProgramPipelineInfoLog
    var getProgramPipelineiv: fptr_glGetProgramPipelineiv
    var getShaderPrecisionFormat: fptr_glGetShaderPrecisionFormat
    var getVertexAttribLdv: fptr_glGetVertexAttribLdv
    var isProgramPipeline: fptr_glIsProgramPipeline
    var programBinary: fptr_glProgramBinary
    var programParameteri: fptr_glProgramParameteri
    var programUniform1d: fptr_glProgramUniform1d
    var programUniform1dv: fptr_glProgramUniform1dv
    var programUniform1f: fptr_glProgramUniform1f
    var programUniform1fv: fptr_glProgramUniform1fv
    var programUniform1i: fptr_glProgramUniform1i
    var programUniform1iv: fptr_glProgramUniform1iv
    var programUniform1ui: fptr_glProgramUniform1ui
    var programUniform1uiv: fptr_glProgramUniform1uiv
    var programUniform2d: fptr_glProgramUniform2d
    var programUniform2dv: fptr_glProgramUniform2dv
    var programUniform2f: fptr_glProgramUniform2f
    var programUniform2fv: fptr_glProgramUniform2fv
    var programUniform2i: fptr_glProgramUniform2i
    var programUniform2iv: fptr_glProgramUniform2iv
    var programUniform2ui: fptr_glProgramUniform2ui
    var programUniform2uiv: fptr_glProgramUniform2uiv
    var programUniform3d: fptr_glProgramUniform3d
    var programUniform3dv: fptr_glProgramUniform3dv
    var programUniform3f: fptr_glProgramUniform3f
    var programUniform3fv: fptr_glProgramUniform3fv
    var programUniform3i: fptr_glProgramUniform3i
    var programUniform3iv: fptr_glProgramUniform3iv
    var programUniform3ui: fptr_glProgramUniform3ui
    var programUniform3uiv: fptr_glProgramUniform3uiv
    var programUniform4d: fptr_glProgramUniform4d
    var programUniform4dv: fptr_glProgramUniform4dv
    var programUniform4f: fptr_glProgramUniform4f
    var programUniform4fv: fptr_glProgramUniform4fv
    var programUniform4i: fptr_glProgramUniform4i
    var programUniform4iv: fptr_glProgramUniform4iv
    var programUniform4ui: fptr_glProgramUniform4ui
    var programUniform4uiv: fptr_glProgramUniform4uiv
    var programUniformMatrix2dv: fptr_glProgramUniformMatrix2dv
    var programUniformMatrix2fv: fptr_glProgramUniformMatrix2fv
    var programUniformMatrix2x3dv: fptr_glProgramUniformMatrix2x3dv
    var programUniformMatrix2x3fv: fptr_glProgramUniformMatrix2x3fv
    var programUniformMatrix2x4dv: fptr_glProgramUniformMatrix2x4dv
    var programUniformMatrix2x4fv: fptr_glProgramUniformMatrix2x4fv
    var programUniformMatrix3dv: fptr_glProgramUniformMatrix3dv
    var programUniformMatrix3fv: fptr_glProgramUniformMatrix3fv
    var programUniformMatrix3x2dv: fptr_glProgramUniformMatrix3x2dv
    var programUniformMatrix3x2fv: fptr_glProgramUniformMatrix3x2fv
    var programUniformMatrix3x4dv: fptr_glProgramUniformMatrix3x4dv
    var programUniformMatrix3x4fv: fptr_glProgramUniformMatrix3x4fv
    var programUniformMatrix4dv: fptr_glProgramUniformMatrix4dv
    var programUniformMatrix4fv: fptr_glProgramUniformMatrix4fv
    var programUniformMatrix4x2dv: fptr_glProgramUniformMatrix4x2dv
    var programUniformMatrix4x2fv: fptr_glProgramUniformMatrix4x2fv
    var programUniformMatrix4x3dv: fptr_glProgramUniformMatrix4x3dv
    var programUniformMatrix4x3fv: fptr_glProgramUniformMatrix4x3fv
    var releaseShaderCompiler: fptr_glReleaseShaderCompiler
    var scissorArrayv: fptr_glScissorArrayv
    var scissorIndexed: fptr_glScissorIndexed
    var scissorIndexedv: fptr_glScissorIndexedv
    var shaderBinary: fptr_glShaderBinary
    var useProgramStages: fptr_glUseProgramStages
    var validateProgramPipeline: fptr_glValidateProgramPipeline
    var vertexAttribL1d: fptr_glVertexAttribL1d
    var vertexAttribL1dv: fptr_glVertexAttribL1dv
    var vertexAttribL2d: fptr_glVertexAttribL2d
    var vertexAttribL2dv: fptr_glVertexAttribL2dv
    var vertexAttribL3d: fptr_glVertexAttribL3d
    var vertexAttribL3dv: fptr_glVertexAttribL3dv
    var vertexAttribL4d: fptr_glVertexAttribL4d
    var vertexAttribL4dv: fptr_glVertexAttribL4dv
    var vertexAttribLPointer: fptr_glVertexAttribLPointer
    var viewportArrayv: fptr_glViewportArrayv
    var viewportIndexedf: fptr_glViewportIndexedf
    var viewportIndexedfv: fptr_glViewportIndexedfv

    fn __init__(out self, load: LoadProc) raises:
        self.activeShaderProgram = load_proc[fptr_glActiveShaderProgram]("glActiveShaderProgram", load)
        self.bindProgramPipeline = load_proc[fptr_glBindProgramPipeline]("glBindProgramPipeline", load)
        self.clearDepthf = load_proc[fptr_glClearDepthf]("glClearDepthf", load)
        self.createShaderProgramv = load_proc[fptr_glCreateShaderProgramv]("glCreateShaderProgramv", load)
        self.deleteProgramPipelines = load_proc[fptr_glDeleteProgramPipelines]("glDeleteProgramPipelines", load)
        self.depthRangeArrayv = load_proc[fptr_glDepthRangeArrayv]("glDepthRangeArrayv", load)
        self.depthRangeIndexed = load_proc[fptr_glDepthRangeIndexed]("glDepthRangeIndexed", load)
        self.depthRangef = load_proc[fptr_glDepthRangef]("glDepthRangef", load)
        self.genProgramPipelines = load_proc[fptr_glGenProgramPipelines]("glGenProgramPipelines", load)
        self.getDoublei_v = load_proc[fptr_glGetDoublei_v]("glGetDoublei_v", load)
        self.getFloati_v = load_proc[fptr_glGetFloati_v]("glGetFloati_v", load)
        self.getProgramBinary = load_proc[fptr_glGetProgramBinary]("glGetProgramBinary", load)
        self.getProgramPipelineInfoLog = load_proc[fptr_glGetProgramPipelineInfoLog]("glGetProgramPipelineInfoLog", load)
        self.getProgramPipelineiv = load_proc[fptr_glGetProgramPipelineiv]("glGetProgramPipelineiv", load)
        self.getShaderPrecisionFormat = load_proc[fptr_glGetShaderPrecisionFormat]("glGetShaderPrecisionFormat", load)
        self.getVertexAttribLdv = load_proc[fptr_glGetVertexAttribLdv]("glGetVertexAttribLdv", load)
        self.isProgramPipeline = load_proc[fptr_glIsProgramPipeline]("glIsProgramPipeline", load)
        self.programBinary = load_proc[fptr_glProgramBinary]("glProgramBinary", load)
        self.programParameteri = load_proc[fptr_glProgramParameteri]("glProgramParameteri", load)
        self.programUniform1d = load_proc[fptr_glProgramUniform1d]("glProgramUniform1d", load)
        self.programUniform1dv = load_proc[fptr_glProgramUniform1dv]("glProgramUniform1dv", load)
        self.programUniform1f = load_proc[fptr_glProgramUniform1f]("glProgramUniform1f", load)
        self.programUniform1fv = load_proc[fptr_glProgramUniform1fv]("glProgramUniform1fv", load)
        self.programUniform1i = load_proc[fptr_glProgramUniform1i]("glProgramUniform1i", load)
        self.programUniform1iv = load_proc[fptr_glProgramUniform1iv]("glProgramUniform1iv", load)
        self.programUniform1ui = load_proc[fptr_glProgramUniform1ui]("glProgramUniform1ui", load)
        self.programUniform1uiv = load_proc[fptr_glProgramUniform1uiv]("glProgramUniform1uiv", load)
        self.programUniform2d = load_proc[fptr_glProgramUniform2d]("glProgramUniform2d", load)
        self.programUniform2dv = load_proc[fptr_glProgramUniform2dv]("glProgramUniform2dv", load)
        self.programUniform2f = load_proc[fptr_glProgramUniform2f]("glProgramUniform2f", load)
        self.programUniform2fv = load_proc[fptr_glProgramUniform2fv]("glProgramUniform2fv", load)
        self.programUniform2i = load_proc[fptr_glProgramUniform2i]("glProgramUniform2i", load)
        self.programUniform2iv = load_proc[fptr_glProgramUniform2iv]("glProgramUniform2iv", load)
        self.programUniform2ui = load_proc[fptr_glProgramUniform2ui]("glProgramUniform2ui", load)
        self.programUniform2uiv = load_proc[fptr_glProgramUniform2uiv]("glProgramUniform2uiv", load)
        self.programUniform3d = load_proc[fptr_glProgramUniform3d]("glProgramUniform3d", load)
        self.programUniform3dv = load_proc[fptr_glProgramUniform3dv]("glProgramUniform3dv", load)
        self.programUniform3f = load_proc[fptr_glProgramUniform3f]("glProgramUniform3f", load)
        self.programUniform3fv = load_proc[fptr_glProgramUniform3fv]("glProgramUniform3fv", load)
        self.programUniform3i = load_proc[fptr_glProgramUniform3i]("glProgramUniform3i", load)
        self.programUniform3iv = load_proc[fptr_glProgramUniform3iv]("glProgramUniform3iv", load)
        self.programUniform3ui = load_proc[fptr_glProgramUniform3ui]("glProgramUniform3ui", load)
        self.programUniform3uiv = load_proc[fptr_glProgramUniform3uiv]("glProgramUniform3uiv", load)
        self.programUniform4d = load_proc[fptr_glProgramUniform4d]("glProgramUniform4d", load)
        self.programUniform4dv = load_proc[fptr_glProgramUniform4dv]("glProgramUniform4dv", load)
        self.programUniform4f = load_proc[fptr_glProgramUniform4f]("glProgramUniform4f", load)
        self.programUniform4fv = load_proc[fptr_glProgramUniform4fv]("glProgramUniform4fv", load)
        self.programUniform4i = load_proc[fptr_glProgramUniform4i]("glProgramUniform4i", load)
        self.programUniform4iv = load_proc[fptr_glProgramUniform4iv]("glProgramUniform4iv", load)
        self.programUniform4ui = load_proc[fptr_glProgramUniform4ui]("glProgramUniform4ui", load)
        self.programUniform4uiv = load_proc[fptr_glProgramUniform4uiv]("glProgramUniform4uiv", load)
        self.programUniformMatrix2dv = load_proc[fptr_glProgramUniformMatrix2dv]("glProgramUniformMatrix2dv", load)
        self.programUniformMatrix2fv = load_proc[fptr_glProgramUniformMatrix2fv]("glProgramUniformMatrix2fv", load)
        self.programUniformMatrix2x3dv = load_proc[fptr_glProgramUniformMatrix2x3dv]("glProgramUniformMatrix2x3dv", load)
        self.programUniformMatrix2x3fv = load_proc[fptr_glProgramUniformMatrix2x3fv]("glProgramUniformMatrix2x3fv", load)
        self.programUniformMatrix2x4dv = load_proc[fptr_glProgramUniformMatrix2x4dv]("glProgramUniformMatrix2x4dv", load)
        self.programUniformMatrix2x4fv = load_proc[fptr_glProgramUniformMatrix2x4fv]("glProgramUniformMatrix2x4fv", load)
        self.programUniformMatrix3dv = load_proc[fptr_glProgramUniformMatrix3dv]("glProgramUniformMatrix3dv", load)
        self.programUniformMatrix3fv = load_proc[fptr_glProgramUniformMatrix3fv]("glProgramUniformMatrix3fv", load)
        self.programUniformMatrix3x2dv = load_proc[fptr_glProgramUniformMatrix3x2dv]("glProgramUniformMatrix3x2dv", load)
        self.programUniformMatrix3x2fv = load_proc[fptr_glProgramUniformMatrix3x2fv]("glProgramUniformMatrix3x2fv", load)
        self.programUniformMatrix3x4dv = load_proc[fptr_glProgramUniformMatrix3x4dv]("glProgramUniformMatrix3x4dv", load)
        self.programUniformMatrix3x4fv = load_proc[fptr_glProgramUniformMatrix3x4fv]("glProgramUniformMatrix3x4fv", load)
        self.programUniformMatrix4dv = load_proc[fptr_glProgramUniformMatrix4dv]("glProgramUniformMatrix4dv", load)
        self.programUniformMatrix4fv = load_proc[fptr_glProgramUniformMatrix4fv]("glProgramUniformMatrix4fv", load)
        self.programUniformMatrix4x2dv = load_proc[fptr_glProgramUniformMatrix4x2dv]("glProgramUniformMatrix4x2dv", load)
        self.programUniformMatrix4x2fv = load_proc[fptr_glProgramUniformMatrix4x2fv]("glProgramUniformMatrix4x2fv", load)
        self.programUniformMatrix4x3dv = load_proc[fptr_glProgramUniformMatrix4x3dv]("glProgramUniformMatrix4x3dv", load)
        self.programUniformMatrix4x3fv = load_proc[fptr_glProgramUniformMatrix4x3fv]("glProgramUniformMatrix4x3fv", load)
        self.releaseShaderCompiler = load_proc[fptr_glReleaseShaderCompiler]("glReleaseShaderCompiler", load)
        self.scissorArrayv = load_proc[fptr_glScissorArrayv]("glScissorArrayv", load)
        self.scissorIndexed = load_proc[fptr_glScissorIndexed]("glScissorIndexed", load)
        self.scissorIndexedv = load_proc[fptr_glScissorIndexedv]("glScissorIndexedv", load)
        self.shaderBinary = load_proc[fptr_glShaderBinary]("glShaderBinary", load)
        self.useProgramStages = load_proc[fptr_glUseProgramStages]("glUseProgramStages", load)
        self.validateProgramPipeline = load_proc[fptr_glValidateProgramPipeline]("glValidateProgramPipeline", load)
        self.vertexAttribL1d = load_proc[fptr_glVertexAttribL1d]("glVertexAttribL1d", load)
        self.vertexAttribL1dv = load_proc[fptr_glVertexAttribL1dv]("glVertexAttribL1dv", load)
        self.vertexAttribL2d = load_proc[fptr_glVertexAttribL2d]("glVertexAttribL2d", load)
        self.vertexAttribL2dv = load_proc[fptr_glVertexAttribL2dv]("glVertexAttribL2dv", load)
        self.vertexAttribL3d = load_proc[fptr_glVertexAttribL3d]("glVertexAttribL3d", load)
        self.vertexAttribL3dv = load_proc[fptr_glVertexAttribL3dv]("glVertexAttribL3dv", load)
        self.vertexAttribL4d = load_proc[fptr_glVertexAttribL4d]("glVertexAttribL4d", load)
        self.vertexAttribL4dv = load_proc[fptr_glVertexAttribL4dv]("glVertexAttribL4dv", load)
        self.vertexAttribLPointer = load_proc[fptr_glVertexAttribLPointer]("glVertexAttribLPointer", load)
        self.viewportArrayv = load_proc[fptr_glViewportArrayv]("glViewportArrayv", load)
        self.viewportIndexedf = load_proc[fptr_glViewportIndexedf]("glViewportIndexedf", load)
        self.viewportIndexedfv = load_proc[fptr_glViewportIndexedfv]("glViewportIndexedfv", load)


alias fptr_glBindImageTexture = fn (unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat)
alias fptr_glDrawArraysInstancedBaseInstance = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawElementsInstancedBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawElementsInstancedBaseVertexBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint)
alias fptr_glDrawTransformFeedbackInstanced = fn (mode: PrimitiveType, id: GLuint, instancecount: GLsizei)
alias fptr_glDrawTransformFeedbackStreamInstanced = fn (mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei)
alias fptr_glGetActiveAtomicCounterBufferiv = fn (program: GLuint, bufferIndex: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint])
alias fptr_glGetInternalformativ = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint])
alias fptr_glMemoryBarrier = fn (barriers: MemoryBarrierMask)
alias fptr_glTexStorage1D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTexStorage2D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTexStorage3D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)


struct GL_VERSION_4_2:
    """Functions for gl 4.2."""

    var bindImageTexture: fptr_glBindImageTexture
    var drawArraysInstancedBaseInstance: fptr_glDrawArraysInstancedBaseInstance
    var drawElementsInstancedBaseInstance: fptr_glDrawElementsInstancedBaseInstance
    var drawElementsInstancedBaseVertexBaseInstance: fptr_glDrawElementsInstancedBaseVertexBaseInstance
    var drawTransformFeedbackInstanced: fptr_glDrawTransformFeedbackInstanced
    var drawTransformFeedbackStreamInstanced: fptr_glDrawTransformFeedbackStreamInstanced
    var getActiveAtomicCounterBufferiv: fptr_glGetActiveAtomicCounterBufferiv
    var getInternalformativ: fptr_glGetInternalformativ
    var memoryBarrier: fptr_glMemoryBarrier
    var texStorage1D: fptr_glTexStorage1D
    var texStorage2D: fptr_glTexStorage2D
    var texStorage3D: fptr_glTexStorage3D

    fn __init__(out self, load: LoadProc) raises:
        self.bindImageTexture = load_proc[fptr_glBindImageTexture]("glBindImageTexture", load)
        self.drawArraysInstancedBaseInstance = load_proc[fptr_glDrawArraysInstancedBaseInstance]("glDrawArraysInstancedBaseInstance", load)
        self.drawElementsInstancedBaseInstance = load_proc[fptr_glDrawElementsInstancedBaseInstance]("glDrawElementsInstancedBaseInstance", load)
        self.drawElementsInstancedBaseVertexBaseInstance = load_proc[fptr_glDrawElementsInstancedBaseVertexBaseInstance]("glDrawElementsInstancedBaseVertexBaseInstance", load)
        self.drawTransformFeedbackInstanced = load_proc[fptr_glDrawTransformFeedbackInstanced]("glDrawTransformFeedbackInstanced", load)
        self.drawTransformFeedbackStreamInstanced = load_proc[fptr_glDrawTransformFeedbackStreamInstanced]("glDrawTransformFeedbackStreamInstanced", load)
        self.getActiveAtomicCounterBufferiv = load_proc[fptr_glGetActiveAtomicCounterBufferiv]("glGetActiveAtomicCounterBufferiv", load)
        self.getInternalformativ = load_proc[fptr_glGetInternalformativ]("glGetInternalformativ", load)
        self.memoryBarrier = load_proc[fptr_glMemoryBarrier]("glMemoryBarrier", load)
        self.texStorage1D = load_proc[fptr_glTexStorage1D]("glTexStorage1D", load)
        self.texStorage2D = load_proc[fptr_glTexStorage2D]("glTexStorage2D", load)
        self.texStorage3D = load_proc[fptr_glTexStorage3D]("glTexStorage3D", load)


alias fptr_glBindVertexBuffer = fn (bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
alias fptr_glClearBufferData = fn (target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType])
alias fptr_glClearBufferSubData = fn (target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType])
alias fptr_glCopyImageSubData = fn (srcName: GLuint, srcTarget: CopyImageSubDataTarget, srcLevel: GLint, srcX: GLint, srcY: GLint, srcZ: GLint, dstName: GLuint, dstTarget: CopyImageSubDataTarget, dstLevel: GLint, dstX: GLint, dstY: GLint, dstZ: GLint, srcWidth: GLsizei, srcHeight: GLsizei, srcDepth: GLsizei)
alias fptr_glDebugMessageCallback = fn (callback: GLDEBUGPROC, userParam: Ptr[NoneType])
alias fptr_glDebugMessageControl = fn (source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint], enabled: GLboolean)
alias fptr_glDebugMessageInsert = fn (source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar])
alias fptr_glDispatchCompute = fn (num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint)
alias fptr_glDispatchComputeIndirect = fn (indirect: GLintptr)
alias fptr_glFramebufferParameteri = fn (target: FramebufferTarget, pname: FramebufferParameterName, param: GLint)
alias fptr_glGetDebugMessageLog = fn (count: GLuint, bufSize: GLsizei, sources: DebugSource, types: DebugType, ids: Ptr[GLuint], severities: DebugSeverity, lengths: Ptr[GLsizei], messageLog: Ptr[GLchar]) -> GLuint
alias fptr_glGetFramebufferParameteriv = fn (target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint])
alias fptr_glGetInternalformati64v = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64])
alias fptr_glGetObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], label: Ptr[GLchar])
alias fptr_glGetObjectPtrLabel = fn (ptr: Ptr[NoneType], bufSize: GLsizei, length: Ptr[GLsizei], label: Ptr[GLchar])
alias fptr_glGetProgramInterfaceiv = fn (program: GLuint, programInterface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint])
alias fptr_glGetProgramResourceIndex = fn (program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLuint
alias fptr_glGetProgramResourceLocation = fn (program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLint
alias fptr_glGetProgramResourceLocationIndex = fn (program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLint
alias fptr_glGetProgramResourceName = fn (program: GLuint, programInterface: ProgramInterface, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar])
alias fptr_glGetProgramResourceiv = fn (program: GLuint, programInterface: ProgramInterface, index: GLuint, propCount: GLsizei, props: ProgramResourceProperty, count: GLsizei, length: Ptr[GLsizei], params: Ptr[GLint])
alias fptr_glInvalidateBufferData = fn (buffer: GLuint)
alias fptr_glInvalidateBufferSubData = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glInvalidateFramebuffer = fn (target: FramebufferTarget, numAttachments: GLsizei, attachments: InvalidateFramebufferAttachment)
alias fptr_glInvalidateSubFramebuffer = fn (target: FramebufferTarget, numAttachments: GLsizei, attachments: InvalidateFramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glInvalidateTexImage = fn (texture: GLuint, level: GLint)
alias fptr_glInvalidateTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glMultiDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType], drawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType], drawcount: GLsizei, stride: GLsizei)
alias fptr_glObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar])
alias fptr_glObjectPtrLabel = fn (ptr: Ptr[NoneType], length: GLsizei, label: Ptr[GLchar])
alias fptr_glPopDebugGroup = fn ()
alias fptr_glPushDebugGroup = fn (source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar])
alias fptr_glShaderStorageBlockBinding = fn (program: GLuint, storageBlockIndex: GLuint, storageBlockBinding: GLuint)
alias fptr_glTexBufferRange = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTexStorage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexStorage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureView = fn (texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint)
alias fptr_glVertexAttribBinding = fn (attribindex: GLuint, bindingindex: GLuint)
alias fptr_glVertexAttribFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
alias fptr_glVertexAttribIFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
alias fptr_glVertexAttribLFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
alias fptr_glVertexBindingDivisor = fn (bindingindex: GLuint, divisor: GLuint)


struct GL_VERSION_4_3:
    """Functions for gl 4.3."""

    var bindVertexBuffer: fptr_glBindVertexBuffer
    var clearBufferData: fptr_glClearBufferData
    var clearBufferSubData: fptr_glClearBufferSubData
    var copyImageSubData: fptr_glCopyImageSubData
    var debugMessageCallback: fptr_glDebugMessageCallback
    var debugMessageControl: fptr_glDebugMessageControl
    var debugMessageInsert: fptr_glDebugMessageInsert
    var dispatchCompute: fptr_glDispatchCompute
    var dispatchComputeIndirect: fptr_glDispatchComputeIndirect
    var framebufferParameteri: fptr_glFramebufferParameteri
    var getDebugMessageLog: fptr_glGetDebugMessageLog
    var getFramebufferParameteriv: fptr_glGetFramebufferParameteriv
    var getInternalformati64v: fptr_glGetInternalformati64v
    var getObjectLabel: fptr_glGetObjectLabel
    var getObjectPtrLabel: fptr_glGetObjectPtrLabel
    var getProgramInterfaceiv: fptr_glGetProgramInterfaceiv
    var getProgramResourceIndex: fptr_glGetProgramResourceIndex
    var getProgramResourceLocation: fptr_glGetProgramResourceLocation
    var getProgramResourceLocationIndex: fptr_glGetProgramResourceLocationIndex
    var getProgramResourceName: fptr_glGetProgramResourceName
    var getProgramResourceiv: fptr_glGetProgramResourceiv
    var invalidateBufferData: fptr_glInvalidateBufferData
    var invalidateBufferSubData: fptr_glInvalidateBufferSubData
    var invalidateFramebuffer: fptr_glInvalidateFramebuffer
    var invalidateSubFramebuffer: fptr_glInvalidateSubFramebuffer
    var invalidateTexImage: fptr_glInvalidateTexImage
    var invalidateTexSubImage: fptr_glInvalidateTexSubImage
    var multiDrawArraysIndirect: fptr_glMultiDrawArraysIndirect
    var multiDrawElementsIndirect: fptr_glMultiDrawElementsIndirect
    var objectLabel: fptr_glObjectLabel
    var objectPtrLabel: fptr_glObjectPtrLabel
    var popDebugGroup: fptr_glPopDebugGroup
    var pushDebugGroup: fptr_glPushDebugGroup
    var shaderStorageBlockBinding: fptr_glShaderStorageBlockBinding
    var texBufferRange: fptr_glTexBufferRange
    var texStorage2DMultisample: fptr_glTexStorage2DMultisample
    var texStorage3DMultisample: fptr_glTexStorage3DMultisample
    var textureView: fptr_glTextureView
    var vertexAttribBinding: fptr_glVertexAttribBinding
    var vertexAttribFormat: fptr_glVertexAttribFormat
    var vertexAttribIFormat: fptr_glVertexAttribIFormat
    var vertexAttribLFormat: fptr_glVertexAttribLFormat
    var vertexBindingDivisor: fptr_glVertexBindingDivisor

    fn __init__(out self, load: LoadProc) raises:
        self.bindVertexBuffer = load_proc[fptr_glBindVertexBuffer]("glBindVertexBuffer", load)
        self.clearBufferData = load_proc[fptr_glClearBufferData]("glClearBufferData", load)
        self.clearBufferSubData = load_proc[fptr_glClearBufferSubData]("glClearBufferSubData", load)
        self.copyImageSubData = load_proc[fptr_glCopyImageSubData]("glCopyImageSubData", load)
        self.debugMessageCallback = load_proc[fptr_glDebugMessageCallback]("glDebugMessageCallback", load)
        self.debugMessageControl = load_proc[fptr_glDebugMessageControl]("glDebugMessageControl", load)
        self.debugMessageInsert = load_proc[fptr_glDebugMessageInsert]("glDebugMessageInsert", load)
        self.dispatchCompute = load_proc[fptr_glDispatchCompute]("glDispatchCompute", load)
        self.dispatchComputeIndirect = load_proc[fptr_glDispatchComputeIndirect]("glDispatchComputeIndirect", load)
        self.framebufferParameteri = load_proc[fptr_glFramebufferParameteri]("glFramebufferParameteri", load)
        self.getDebugMessageLog = load_proc[fptr_glGetDebugMessageLog]("glGetDebugMessageLog", load)
        self.getFramebufferParameteriv = load_proc[fptr_glGetFramebufferParameteriv]("glGetFramebufferParameteriv", load)
        self.getInternalformati64v = load_proc[fptr_glGetInternalformati64v]("glGetInternalformati64v", load)
        self.getObjectLabel = load_proc[fptr_glGetObjectLabel]("glGetObjectLabel", load)
        self.getObjectPtrLabel = load_proc[fptr_glGetObjectPtrLabel]("glGetObjectPtrLabel", load)
        self.getProgramInterfaceiv = load_proc[fptr_glGetProgramInterfaceiv]("glGetProgramInterfaceiv", load)
        self.getProgramResourceIndex = load_proc[fptr_glGetProgramResourceIndex]("glGetProgramResourceIndex", load)
        self.getProgramResourceLocation = load_proc[fptr_glGetProgramResourceLocation]("glGetProgramResourceLocation", load)
        self.getProgramResourceLocationIndex = load_proc[fptr_glGetProgramResourceLocationIndex]("glGetProgramResourceLocationIndex", load)
        self.getProgramResourceName = load_proc[fptr_glGetProgramResourceName]("glGetProgramResourceName", load)
        self.getProgramResourceiv = load_proc[fptr_glGetProgramResourceiv]("glGetProgramResourceiv", load)
        self.invalidateBufferData = load_proc[fptr_glInvalidateBufferData]("glInvalidateBufferData", load)
        self.invalidateBufferSubData = load_proc[fptr_glInvalidateBufferSubData]("glInvalidateBufferSubData", load)
        self.invalidateFramebuffer = load_proc[fptr_glInvalidateFramebuffer]("glInvalidateFramebuffer", load)
        self.invalidateSubFramebuffer = load_proc[fptr_glInvalidateSubFramebuffer]("glInvalidateSubFramebuffer", load)
        self.invalidateTexImage = load_proc[fptr_glInvalidateTexImage]("glInvalidateTexImage", load)
        self.invalidateTexSubImage = load_proc[fptr_glInvalidateTexSubImage]("glInvalidateTexSubImage", load)
        self.multiDrawArraysIndirect = load_proc[fptr_glMultiDrawArraysIndirect]("glMultiDrawArraysIndirect", load)
        self.multiDrawElementsIndirect = load_proc[fptr_glMultiDrawElementsIndirect]("glMultiDrawElementsIndirect", load)
        self.objectLabel = load_proc[fptr_glObjectLabel]("glObjectLabel", load)
        self.objectPtrLabel = load_proc[fptr_glObjectPtrLabel]("glObjectPtrLabel", load)
        self.popDebugGroup = load_proc[fptr_glPopDebugGroup]("glPopDebugGroup", load)
        self.pushDebugGroup = load_proc[fptr_glPushDebugGroup]("glPushDebugGroup", load)
        self.shaderStorageBlockBinding = load_proc[fptr_glShaderStorageBlockBinding]("glShaderStorageBlockBinding", load)
        self.texBufferRange = load_proc[fptr_glTexBufferRange]("glTexBufferRange", load)
        self.texStorage2DMultisample = load_proc[fptr_glTexStorage2DMultisample]("glTexStorage2DMultisample", load)
        self.texStorage3DMultisample = load_proc[fptr_glTexStorage3DMultisample]("glTexStorage3DMultisample", load)
        self.textureView = load_proc[fptr_glTextureView]("glTextureView", load)
        self.vertexAttribBinding = load_proc[fptr_glVertexAttribBinding]("glVertexAttribBinding", load)
        self.vertexAttribFormat = load_proc[fptr_glVertexAttribFormat]("glVertexAttribFormat", load)
        self.vertexAttribIFormat = load_proc[fptr_glVertexAttribIFormat]("glVertexAttribIFormat", load)
        self.vertexAttribLFormat = load_proc[fptr_glVertexAttribLFormat]("glVertexAttribLFormat", load)
        self.vertexBindingDivisor = load_proc[fptr_glVertexBindingDivisor]("glVertexBindingDivisor", load)


alias fptr_glBindBuffersBase = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint])
alias fptr_glBindBuffersRange = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], sizes: Ptr[GLsizeiptr])
alias fptr_glBindImageTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint])
alias fptr_glBindSamplers = fn (first: GLuint, count: GLsizei, samplers: Ptr[GLuint])
alias fptr_glBindTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint])
alias fptr_glBindVertexBuffers = fn (first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], strides: Ptr[GLsizei])
alias fptr_glBufferStorage = fn (target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType], flags: BufferStorageMask)
alias fptr_glClearTexImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType])
alias fptr_glClearTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType])


struct GL_VERSION_4_4:
    """Functions for gl 4.4."""

    var bindBuffersBase: fptr_glBindBuffersBase
    var bindBuffersRange: fptr_glBindBuffersRange
    var bindImageTextures: fptr_glBindImageTextures
    var bindSamplers: fptr_glBindSamplers
    var bindTextures: fptr_glBindTextures
    var bindVertexBuffers: fptr_glBindVertexBuffers
    var bufferStorage: fptr_glBufferStorage
    var clearTexImage: fptr_glClearTexImage
    var clearTexSubImage: fptr_glClearTexSubImage

    fn __init__(out self, load: LoadProc) raises:
        self.bindBuffersBase = load_proc[fptr_glBindBuffersBase]("glBindBuffersBase", load)
        self.bindBuffersRange = load_proc[fptr_glBindBuffersRange]("glBindBuffersRange", load)
        self.bindImageTextures = load_proc[fptr_glBindImageTextures]("glBindImageTextures", load)
        self.bindSamplers = load_proc[fptr_glBindSamplers]("glBindSamplers", load)
        self.bindTextures = load_proc[fptr_glBindTextures]("glBindTextures", load)
        self.bindVertexBuffers = load_proc[fptr_glBindVertexBuffers]("glBindVertexBuffers", load)
        self.bufferStorage = load_proc[fptr_glBufferStorage]("glBufferStorage", load)
        self.clearTexImage = load_proc[fptr_glClearTexImage]("glClearTexImage", load)
        self.clearTexSubImage = load_proc[fptr_glClearTexSubImage]("glClearTexSubImage", load)


alias fptr_glBindTextureUnit = fn (unit: GLuint, texture: GLuint)
alias fptr_glBlitNamedFramebuffer = fn (readFramebuffer: GLuint, drawFramebuffer: GLuint, srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glCheckNamedFramebufferStatus = fn (framebuffer: GLuint, target: FramebufferTarget) -> GLenum
alias fptr_glClearNamedBufferData = fn (buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType])
alias fptr_glClearNamedBufferSubData = fn (buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType])
alias fptr_glClearNamedFramebufferfi = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearNamedFramebufferfv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat])
alias fptr_glClearNamedFramebufferiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint])
alias fptr_glClearNamedFramebufferuiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint])
alias fptr_glClipControl = fn (origin: ClipControlOrigin, depth: ClipControlDepth)
alias fptr_glCompressedTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCompressedTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType])
alias fptr_glCopyNamedBufferSubData = fn (readBuffer: GLuint, writeBuffer: GLuint, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr)
alias fptr_glCopyTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCopyTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCreateBuffers = fn (n: GLsizei, buffers: Ptr[GLuint])
alias fptr_glCreateFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint])
alias fptr_glCreateProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint])
alias fptr_glCreateQueries = fn (target: QueryTarget, n: GLsizei, ids: Ptr[GLuint])
alias fptr_glCreateRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint])
alias fptr_glCreateSamplers = fn (n: GLsizei, samplers: Ptr[GLuint])
alias fptr_glCreateTextures = fn (target: TextureTarget, n: GLsizei, textures: Ptr[GLuint])
alias fptr_glCreateTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint])
alias fptr_glCreateVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint])
alias fptr_glDisableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glEnableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glFlushMappedNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glGenerateTextureMipmap = fn (texture: GLuint)
alias fptr_glGetCompressedTextureImage = fn (texture: GLuint, level: GLint, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetCompressedTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetGraphicsResetStatus = fn () -> GLenum
alias fptr_glGetNamedBufferParameteri64v = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64])
alias fptr_glGetNamedBufferParameteriv = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint])
alias fptr_glGetNamedBufferPointerv = fn (buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[NoneType])
alias fptr_glGetNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType])
alias fptr_glGetNamedFramebufferAttachmentParameteriv = fn (framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint])
alias fptr_glGetNamedFramebufferParameteriv = fn (framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint])
alias fptr_glGetNamedRenderbufferParameteriv = fn (renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint])
alias fptr_glGetQueryBufferObjecti64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectui64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectuiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetTextureImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetTextureLevelParameterfv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat])
alias fptr_glGetTextureLevelParameteriv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glGetTextureParameterIiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glGetTextureParameterIuiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint])
alias fptr_glGetTextureParameterfv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat])
alias fptr_glGetTextureParameteriv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint])
alias fptr_glGetTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetTransformFeedbacki64_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64])
alias fptr_glGetTransformFeedbacki_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint])
alias fptr_glGetTransformFeedbackiv = fn (xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint])
alias fptr_glGetVertexArrayIndexed64iv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64])
alias fptr_glGetVertexArrayIndexediv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint])
alias fptr_glGetVertexArrayiv = fn (vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint])
alias fptr_glGetnColorTable = fn (target: ColorTableTarget, format: PixelFormat, type: PixelType, bufSize: GLsizei, table: Ptr[NoneType])
alias fptr_glGetnCompressedTexImage = fn (target: TextureTarget, lod: GLint, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetnConvolutionFilter = fn (target: ConvolutionTarget, format: PixelFormat, type: PixelType, bufSize: GLsizei, image: Ptr[NoneType])
alias fptr_glGetnHistogram = fn (target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, bufSize: GLsizei, values: Ptr[NoneType])
alias fptr_glGetnMapdv = fn (target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLdouble])
alias fptr_glGetnMapfv = fn (target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLfloat])
alias fptr_glGetnMapiv = fn (target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLint])
alias fptr_glGetnMinmax = fn (target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, bufSize: GLsizei, values: Ptr[NoneType])
alias fptr_glGetnPixelMapfv = fn (map: PixelMap, bufSize: GLsizei, values: Ptr[GLfloat])
alias fptr_glGetnPixelMapuiv = fn (map: PixelMap, bufSize: GLsizei, values: Ptr[GLuint])
alias fptr_glGetnPixelMapusv = fn (map: PixelMap, bufSize: GLsizei, values: Ptr[GLushort])
alias fptr_glGetnPolygonStipple = fn (bufSize: GLsizei, pattern: Ptr[GLubyte])
alias fptr_glGetnSeparableFilter = fn (target: SeparableTarget, format: PixelFormat, type: PixelType, rowBufSize: GLsizei, row: Ptr[NoneType], columnBufSize: GLsizei, column: Ptr[NoneType], span: Ptr[NoneType])
alias fptr_glGetnTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType])
alias fptr_glGetnUniformdv = fn (program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLdouble])
alias fptr_glGetnUniformfv = fn (program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLfloat])
alias fptr_glGetnUniformiv = fn (program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLint])
alias fptr_glGetnUniformuiv = fn (program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLuint])
alias fptr_glInvalidateNamedFramebufferData = fn (framebuffer: GLuint, numAttachments: GLsizei, attachments: FramebufferAttachment)
alias fptr_glInvalidateNamedFramebufferSubData = fn (framebuffer: GLuint, numAttachments: GLsizei, attachments: FramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glMapNamedBuffer = fn (buffer: GLuint, access: BufferAccessARB)
alias fptr_glMapNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glMemoryBarrierByRegion = fn (barriers: MemoryBarrierMask)
alias fptr_glNamedBufferData = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType], usage: VertexBufferObjectUsage)
alias fptr_glNamedBufferStorage = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType], flags: BufferStorageMask)
alias fptr_glNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType])
alias fptr_glNamedFramebufferDrawBuffer = fn (framebuffer: GLuint, buf: ColorBuffer)
alias fptr_glNamedFramebufferDrawBuffers = fn (framebuffer: GLuint, n: GLsizei, bufs: ColorBuffer)
alias fptr_glNamedFramebufferParameteri = fn (framebuffer: GLuint, pname: FramebufferParameterName, param: GLint)
alias fptr_glNamedFramebufferReadBuffer = fn (framebuffer: GLuint, src: ColorBuffer)
alias fptr_glNamedFramebufferRenderbuffer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glNamedFramebufferTexture = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glNamedFramebufferTextureLayer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
alias fptr_glNamedRenderbufferStorage = fn (renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glNamedRenderbufferStorageMultisample = fn (renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glReadnPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, bufSize: GLsizei, data: Ptr[NoneType])
alias fptr_glTextureBarrier = fn ()
alias fptr_glTextureBuffer = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glTextureBufferRange = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTextureParameterIiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLint])
alias fptr_glTextureParameterIuiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint])
alias fptr_glTextureParameterf = fn (texture: GLuint, pname: TextureParameterName, param: GLfloat)
alias fptr_glTextureParameterfv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat])
alias fptr_glTextureParameteri = fn (texture: GLuint, pname: TextureParameterName, param: GLint)
alias fptr_glTextureParameteriv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLint])
alias fptr_glTextureStorage1D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTextureStorage2D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTextureStorage2DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureStorage3D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glTextureStorage3DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType])
alias fptr_glTransformFeedbackBufferBase = fn (xfb: GLuint, index: GLuint, buffer: GLuint)
alias fptr_glTransformFeedbackBufferRange = fn (xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glUnmapNamedBuffer = fn (buffer: GLuint) -> GLboolean
alias fptr_glVertexArrayAttribBinding = fn (vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint)
alias fptr_glVertexArrayAttribFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
alias fptr_glVertexArrayAttribIFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
alias fptr_glVertexArrayAttribLFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
alias fptr_glVertexArrayBindingDivisor = fn (vaobj: GLuint, bindingindex: GLuint, divisor: GLuint)
alias fptr_glVertexArrayElementBuffer = fn (vaobj: GLuint, buffer: GLuint)
alias fptr_glVertexArrayVertexBuffer = fn (vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
alias fptr_glVertexArrayVertexBuffers = fn (vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], strides: Ptr[GLsizei])


struct GL_VERSION_4_5:
    """Functions for gl 4.5."""

    var bindTextureUnit: fptr_glBindTextureUnit
    var blitNamedFramebuffer: fptr_glBlitNamedFramebuffer
    var checkNamedFramebufferStatus: fptr_glCheckNamedFramebufferStatus
    var clearNamedBufferData: fptr_glClearNamedBufferData
    var clearNamedBufferSubData: fptr_glClearNamedBufferSubData
    var clearNamedFramebufferfi: fptr_glClearNamedFramebufferfi
    var clearNamedFramebufferfv: fptr_glClearNamedFramebufferfv
    var clearNamedFramebufferiv: fptr_glClearNamedFramebufferiv
    var clearNamedFramebufferuiv: fptr_glClearNamedFramebufferuiv
    var clipControl: fptr_glClipControl
    var compressedTextureSubImage1D: fptr_glCompressedTextureSubImage1D
    var compressedTextureSubImage2D: fptr_glCompressedTextureSubImage2D
    var compressedTextureSubImage3D: fptr_glCompressedTextureSubImage3D
    var copyNamedBufferSubData: fptr_glCopyNamedBufferSubData
    var copyTextureSubImage1D: fptr_glCopyTextureSubImage1D
    var copyTextureSubImage2D: fptr_glCopyTextureSubImage2D
    var copyTextureSubImage3D: fptr_glCopyTextureSubImage3D
    var createBuffers: fptr_glCreateBuffers
    var createFramebuffers: fptr_glCreateFramebuffers
    var createProgramPipelines: fptr_glCreateProgramPipelines
    var createQueries: fptr_glCreateQueries
    var createRenderbuffers: fptr_glCreateRenderbuffers
    var createSamplers: fptr_glCreateSamplers
    var createTextures: fptr_glCreateTextures
    var createTransformFeedbacks: fptr_glCreateTransformFeedbacks
    var createVertexArrays: fptr_glCreateVertexArrays
    var disableVertexArrayAttrib: fptr_glDisableVertexArrayAttrib
    var enableVertexArrayAttrib: fptr_glEnableVertexArrayAttrib
    var flushMappedNamedBufferRange: fptr_glFlushMappedNamedBufferRange
    var generateTextureMipmap: fptr_glGenerateTextureMipmap
    var getCompressedTextureImage: fptr_glGetCompressedTextureImage
    var getCompressedTextureSubImage: fptr_glGetCompressedTextureSubImage
    var getGraphicsResetStatus: fptr_glGetGraphicsResetStatus
    var getNamedBufferParameteri64v: fptr_glGetNamedBufferParameteri64v
    var getNamedBufferParameteriv: fptr_glGetNamedBufferParameteriv
    var getNamedBufferPointerv: fptr_glGetNamedBufferPointerv
    var getNamedBufferSubData: fptr_glGetNamedBufferSubData
    var getNamedFramebufferAttachmentParameteriv: fptr_glGetNamedFramebufferAttachmentParameteriv
    var getNamedFramebufferParameteriv: fptr_glGetNamedFramebufferParameteriv
    var getNamedRenderbufferParameteriv: fptr_glGetNamedRenderbufferParameteriv
    var getQueryBufferObjecti64v: fptr_glGetQueryBufferObjecti64v
    var getQueryBufferObjectiv: fptr_glGetQueryBufferObjectiv
    var getQueryBufferObjectui64v: fptr_glGetQueryBufferObjectui64v
    var getQueryBufferObjectuiv: fptr_glGetQueryBufferObjectuiv
    var getTextureImage: fptr_glGetTextureImage
    var getTextureLevelParameterfv: fptr_glGetTextureLevelParameterfv
    var getTextureLevelParameteriv: fptr_glGetTextureLevelParameteriv
    var getTextureParameterIiv: fptr_glGetTextureParameterIiv
    var getTextureParameterIuiv: fptr_glGetTextureParameterIuiv
    var getTextureParameterfv: fptr_glGetTextureParameterfv
    var getTextureParameteriv: fptr_glGetTextureParameteriv
    var getTextureSubImage: fptr_glGetTextureSubImage
    var getTransformFeedbacki64_v: fptr_glGetTransformFeedbacki64_v
    var getTransformFeedbacki_v: fptr_glGetTransformFeedbacki_v
    var getTransformFeedbackiv: fptr_glGetTransformFeedbackiv
    var getVertexArrayIndexed64iv: fptr_glGetVertexArrayIndexed64iv
    var getVertexArrayIndexediv: fptr_glGetVertexArrayIndexediv
    var getVertexArrayiv: fptr_glGetVertexArrayiv
    var getnColorTable: fptr_glGetnColorTable
    var getnCompressedTexImage: fptr_glGetnCompressedTexImage
    var getnConvolutionFilter: fptr_glGetnConvolutionFilter
    var getnHistogram: fptr_glGetnHistogram
    var getnMapdv: fptr_glGetnMapdv
    var getnMapfv: fptr_glGetnMapfv
    var getnMapiv: fptr_glGetnMapiv
    var getnMinmax: fptr_glGetnMinmax
    var getnPixelMapfv: fptr_glGetnPixelMapfv
    var getnPixelMapuiv: fptr_glGetnPixelMapuiv
    var getnPixelMapusv: fptr_glGetnPixelMapusv
    var getnPolygonStipple: fptr_glGetnPolygonStipple
    var getnSeparableFilter: fptr_glGetnSeparableFilter
    var getnTexImage: fptr_glGetnTexImage
    var getnUniformdv: fptr_glGetnUniformdv
    var getnUniformfv: fptr_glGetnUniformfv
    var getnUniformiv: fptr_glGetnUniformiv
    var getnUniformuiv: fptr_glGetnUniformuiv
    var invalidateNamedFramebufferData: fptr_glInvalidateNamedFramebufferData
    var invalidateNamedFramebufferSubData: fptr_glInvalidateNamedFramebufferSubData
    var mapNamedBuffer: fptr_glMapNamedBuffer
    var mapNamedBufferRange: fptr_glMapNamedBufferRange
    var memoryBarrierByRegion: fptr_glMemoryBarrierByRegion
    var namedBufferData: fptr_glNamedBufferData
    var namedBufferStorage: fptr_glNamedBufferStorage
    var namedBufferSubData: fptr_glNamedBufferSubData
    var namedFramebufferDrawBuffer: fptr_glNamedFramebufferDrawBuffer
    var namedFramebufferDrawBuffers: fptr_glNamedFramebufferDrawBuffers
    var namedFramebufferParameteri: fptr_glNamedFramebufferParameteri
    var namedFramebufferReadBuffer: fptr_glNamedFramebufferReadBuffer
    var namedFramebufferRenderbuffer: fptr_glNamedFramebufferRenderbuffer
    var namedFramebufferTexture: fptr_glNamedFramebufferTexture
    var namedFramebufferTextureLayer: fptr_glNamedFramebufferTextureLayer
    var namedRenderbufferStorage: fptr_glNamedRenderbufferStorage
    var namedRenderbufferStorageMultisample: fptr_glNamedRenderbufferStorageMultisample
    var readnPixels: fptr_glReadnPixels
    var textureBarrier: fptr_glTextureBarrier
    var textureBuffer: fptr_glTextureBuffer
    var textureBufferRange: fptr_glTextureBufferRange
    var textureParameterIiv: fptr_glTextureParameterIiv
    var textureParameterIuiv: fptr_glTextureParameterIuiv
    var textureParameterf: fptr_glTextureParameterf
    var textureParameterfv: fptr_glTextureParameterfv
    var textureParameteri: fptr_glTextureParameteri
    var textureParameteriv: fptr_glTextureParameteriv
    var textureStorage1D: fptr_glTextureStorage1D
    var textureStorage2D: fptr_glTextureStorage2D
    var textureStorage2DMultisample: fptr_glTextureStorage2DMultisample
    var textureStorage3D: fptr_glTextureStorage3D
    var textureStorage3DMultisample: fptr_glTextureStorage3DMultisample
    var textureSubImage1D: fptr_glTextureSubImage1D
    var textureSubImage2D: fptr_glTextureSubImage2D
    var textureSubImage3D: fptr_glTextureSubImage3D
    var transformFeedbackBufferBase: fptr_glTransformFeedbackBufferBase
    var transformFeedbackBufferRange: fptr_glTransformFeedbackBufferRange
    var unmapNamedBuffer: fptr_glUnmapNamedBuffer
    var vertexArrayAttribBinding: fptr_glVertexArrayAttribBinding
    var vertexArrayAttribFormat: fptr_glVertexArrayAttribFormat
    var vertexArrayAttribIFormat: fptr_glVertexArrayAttribIFormat
    var vertexArrayAttribLFormat: fptr_glVertexArrayAttribLFormat
    var vertexArrayBindingDivisor: fptr_glVertexArrayBindingDivisor
    var vertexArrayElementBuffer: fptr_glVertexArrayElementBuffer
    var vertexArrayVertexBuffer: fptr_glVertexArrayVertexBuffer
    var vertexArrayVertexBuffers: fptr_glVertexArrayVertexBuffers

    fn __init__(out self, load: LoadProc) raises:
        self.bindTextureUnit = load_proc[fptr_glBindTextureUnit]("glBindTextureUnit", load)
        self.blitNamedFramebuffer = load_proc[fptr_glBlitNamedFramebuffer]("glBlitNamedFramebuffer", load)
        self.checkNamedFramebufferStatus = load_proc[fptr_glCheckNamedFramebufferStatus]("glCheckNamedFramebufferStatus", load)
        self.clearNamedBufferData = load_proc[fptr_glClearNamedBufferData]("glClearNamedBufferData", load)
        self.clearNamedBufferSubData = load_proc[fptr_glClearNamedBufferSubData]("glClearNamedBufferSubData", load)
        self.clearNamedFramebufferfi = load_proc[fptr_glClearNamedFramebufferfi]("glClearNamedFramebufferfi", load)
        self.clearNamedFramebufferfv = load_proc[fptr_glClearNamedFramebufferfv]("glClearNamedFramebufferfv", load)
        self.clearNamedFramebufferiv = load_proc[fptr_glClearNamedFramebufferiv]("glClearNamedFramebufferiv", load)
        self.clearNamedFramebufferuiv = load_proc[fptr_glClearNamedFramebufferuiv]("glClearNamedFramebufferuiv", load)
        self.clipControl = load_proc[fptr_glClipControl]("glClipControl", load)
        self.compressedTextureSubImage1D = load_proc[fptr_glCompressedTextureSubImage1D]("glCompressedTextureSubImage1D", load)
        self.compressedTextureSubImage2D = load_proc[fptr_glCompressedTextureSubImage2D]("glCompressedTextureSubImage2D", load)
        self.compressedTextureSubImage3D = load_proc[fptr_glCompressedTextureSubImage3D]("glCompressedTextureSubImage3D", load)
        self.copyNamedBufferSubData = load_proc[fptr_glCopyNamedBufferSubData]("glCopyNamedBufferSubData", load)
        self.copyTextureSubImage1D = load_proc[fptr_glCopyTextureSubImage1D]("glCopyTextureSubImage1D", load)
        self.copyTextureSubImage2D = load_proc[fptr_glCopyTextureSubImage2D]("glCopyTextureSubImage2D", load)
        self.copyTextureSubImage3D = load_proc[fptr_glCopyTextureSubImage3D]("glCopyTextureSubImage3D", load)
        self.createBuffers = load_proc[fptr_glCreateBuffers]("glCreateBuffers", load)
        self.createFramebuffers = load_proc[fptr_glCreateFramebuffers]("glCreateFramebuffers", load)
        self.createProgramPipelines = load_proc[fptr_glCreateProgramPipelines]("glCreateProgramPipelines", load)
        self.createQueries = load_proc[fptr_glCreateQueries]("glCreateQueries", load)
        self.createRenderbuffers = load_proc[fptr_glCreateRenderbuffers]("glCreateRenderbuffers", load)
        self.createSamplers = load_proc[fptr_glCreateSamplers]("glCreateSamplers", load)
        self.createTextures = load_proc[fptr_glCreateTextures]("glCreateTextures", load)
        self.createTransformFeedbacks = load_proc[fptr_glCreateTransformFeedbacks]("glCreateTransformFeedbacks", load)
        self.createVertexArrays = load_proc[fptr_glCreateVertexArrays]("glCreateVertexArrays", load)
        self.disableVertexArrayAttrib = load_proc[fptr_glDisableVertexArrayAttrib]("glDisableVertexArrayAttrib", load)
        self.enableVertexArrayAttrib = load_proc[fptr_glEnableVertexArrayAttrib]("glEnableVertexArrayAttrib", load)
        self.flushMappedNamedBufferRange = load_proc[fptr_glFlushMappedNamedBufferRange]("glFlushMappedNamedBufferRange", load)
        self.generateTextureMipmap = load_proc[fptr_glGenerateTextureMipmap]("glGenerateTextureMipmap", load)
        self.getCompressedTextureImage = load_proc[fptr_glGetCompressedTextureImage]("glGetCompressedTextureImage", load)
        self.getCompressedTextureSubImage = load_proc[fptr_glGetCompressedTextureSubImage]("glGetCompressedTextureSubImage", load)
        self.getGraphicsResetStatus = load_proc[fptr_glGetGraphicsResetStatus]("glGetGraphicsResetStatus", load)
        self.getNamedBufferParameteri64v = load_proc[fptr_glGetNamedBufferParameteri64v]("glGetNamedBufferParameteri64v", load)
        self.getNamedBufferParameteriv = load_proc[fptr_glGetNamedBufferParameteriv]("glGetNamedBufferParameteriv", load)
        self.getNamedBufferPointerv = load_proc[fptr_glGetNamedBufferPointerv]("glGetNamedBufferPointerv", load)
        self.getNamedBufferSubData = load_proc[fptr_glGetNamedBufferSubData]("glGetNamedBufferSubData", load)
        self.getNamedFramebufferAttachmentParameteriv = load_proc[fptr_glGetNamedFramebufferAttachmentParameteriv]("glGetNamedFramebufferAttachmentParameteriv", load)
        self.getNamedFramebufferParameteriv = load_proc[fptr_glGetNamedFramebufferParameteriv]("glGetNamedFramebufferParameteriv", load)
        self.getNamedRenderbufferParameteriv = load_proc[fptr_glGetNamedRenderbufferParameteriv]("glGetNamedRenderbufferParameteriv", load)
        self.getQueryBufferObjecti64v = load_proc[fptr_glGetQueryBufferObjecti64v]("glGetQueryBufferObjecti64v", load)
        self.getQueryBufferObjectiv = load_proc[fptr_glGetQueryBufferObjectiv]("glGetQueryBufferObjectiv", load)
        self.getQueryBufferObjectui64v = load_proc[fptr_glGetQueryBufferObjectui64v]("glGetQueryBufferObjectui64v", load)
        self.getQueryBufferObjectuiv = load_proc[fptr_glGetQueryBufferObjectuiv]("glGetQueryBufferObjectuiv", load)
        self.getTextureImage = load_proc[fptr_glGetTextureImage]("glGetTextureImage", load)
        self.getTextureLevelParameterfv = load_proc[fptr_glGetTextureLevelParameterfv]("glGetTextureLevelParameterfv", load)
        self.getTextureLevelParameteriv = load_proc[fptr_glGetTextureLevelParameteriv]("glGetTextureLevelParameteriv", load)
        self.getTextureParameterIiv = load_proc[fptr_glGetTextureParameterIiv]("glGetTextureParameterIiv", load)
        self.getTextureParameterIuiv = load_proc[fptr_glGetTextureParameterIuiv]("glGetTextureParameterIuiv", load)
        self.getTextureParameterfv = load_proc[fptr_glGetTextureParameterfv]("glGetTextureParameterfv", load)
        self.getTextureParameteriv = load_proc[fptr_glGetTextureParameteriv]("glGetTextureParameteriv", load)
        self.getTextureSubImage = load_proc[fptr_glGetTextureSubImage]("glGetTextureSubImage", load)
        self.getTransformFeedbacki64_v = load_proc[fptr_glGetTransformFeedbacki64_v]("glGetTransformFeedbacki64_v", load)
        self.getTransformFeedbacki_v = load_proc[fptr_glGetTransformFeedbacki_v]("glGetTransformFeedbacki_v", load)
        self.getTransformFeedbackiv = load_proc[fptr_glGetTransformFeedbackiv]("glGetTransformFeedbackiv", load)
        self.getVertexArrayIndexed64iv = load_proc[fptr_glGetVertexArrayIndexed64iv]("glGetVertexArrayIndexed64iv", load)
        self.getVertexArrayIndexediv = load_proc[fptr_glGetVertexArrayIndexediv]("glGetVertexArrayIndexediv", load)
        self.getVertexArrayiv = load_proc[fptr_glGetVertexArrayiv]("glGetVertexArrayiv", load)
        self.getnColorTable = load_proc[fptr_glGetnColorTable]("glGetnColorTable", load)
        self.getnCompressedTexImage = load_proc[fptr_glGetnCompressedTexImage]("glGetnCompressedTexImage", load)
        self.getnConvolutionFilter = load_proc[fptr_glGetnConvolutionFilter]("glGetnConvolutionFilter", load)
        self.getnHistogram = load_proc[fptr_glGetnHistogram]("glGetnHistogram", load)
        self.getnMapdv = load_proc[fptr_glGetnMapdv]("glGetnMapdv", load)
        self.getnMapfv = load_proc[fptr_glGetnMapfv]("glGetnMapfv", load)
        self.getnMapiv = load_proc[fptr_glGetnMapiv]("glGetnMapiv", load)
        self.getnMinmax = load_proc[fptr_glGetnMinmax]("glGetnMinmax", load)
        self.getnPixelMapfv = load_proc[fptr_glGetnPixelMapfv]("glGetnPixelMapfv", load)
        self.getnPixelMapuiv = load_proc[fptr_glGetnPixelMapuiv]("glGetnPixelMapuiv", load)
        self.getnPixelMapusv = load_proc[fptr_glGetnPixelMapusv]("glGetnPixelMapusv", load)
        self.getnPolygonStipple = load_proc[fptr_glGetnPolygonStipple]("glGetnPolygonStipple", load)
        self.getnSeparableFilter = load_proc[fptr_glGetnSeparableFilter]("glGetnSeparableFilter", load)
        self.getnTexImage = load_proc[fptr_glGetnTexImage]("glGetnTexImage", load)
        self.getnUniformdv = load_proc[fptr_glGetnUniformdv]("glGetnUniformdv", load)
        self.getnUniformfv = load_proc[fptr_glGetnUniformfv]("glGetnUniformfv", load)
        self.getnUniformiv = load_proc[fptr_glGetnUniformiv]("glGetnUniformiv", load)
        self.getnUniformuiv = load_proc[fptr_glGetnUniformuiv]("glGetnUniformuiv", load)
        self.invalidateNamedFramebufferData = load_proc[fptr_glInvalidateNamedFramebufferData]("glInvalidateNamedFramebufferData", load)
        self.invalidateNamedFramebufferSubData = load_proc[fptr_glInvalidateNamedFramebufferSubData]("glInvalidateNamedFramebufferSubData", load)
        self.mapNamedBuffer = load_proc[fptr_glMapNamedBuffer]("glMapNamedBuffer", load)
        self.mapNamedBufferRange = load_proc[fptr_glMapNamedBufferRange]("glMapNamedBufferRange", load)
        self.memoryBarrierByRegion = load_proc[fptr_glMemoryBarrierByRegion]("glMemoryBarrierByRegion", load)
        self.namedBufferData = load_proc[fptr_glNamedBufferData]("glNamedBufferData", load)
        self.namedBufferStorage = load_proc[fptr_glNamedBufferStorage]("glNamedBufferStorage", load)
        self.namedBufferSubData = load_proc[fptr_glNamedBufferSubData]("glNamedBufferSubData", load)
        self.namedFramebufferDrawBuffer = load_proc[fptr_glNamedFramebufferDrawBuffer]("glNamedFramebufferDrawBuffer", load)
        self.namedFramebufferDrawBuffers = load_proc[fptr_glNamedFramebufferDrawBuffers]("glNamedFramebufferDrawBuffers", load)
        self.namedFramebufferParameteri = load_proc[fptr_glNamedFramebufferParameteri]("glNamedFramebufferParameteri", load)
        self.namedFramebufferReadBuffer = load_proc[fptr_glNamedFramebufferReadBuffer]("glNamedFramebufferReadBuffer", load)
        self.namedFramebufferRenderbuffer = load_proc[fptr_glNamedFramebufferRenderbuffer]("glNamedFramebufferRenderbuffer", load)
        self.namedFramebufferTexture = load_proc[fptr_glNamedFramebufferTexture]("glNamedFramebufferTexture", load)
        self.namedFramebufferTextureLayer = load_proc[fptr_glNamedFramebufferTextureLayer]("glNamedFramebufferTextureLayer", load)
        self.namedRenderbufferStorage = load_proc[fptr_glNamedRenderbufferStorage]("glNamedRenderbufferStorage", load)
        self.namedRenderbufferStorageMultisample = load_proc[fptr_glNamedRenderbufferStorageMultisample]("glNamedRenderbufferStorageMultisample", load)
        self.readnPixels = load_proc[fptr_glReadnPixels]("glReadnPixels", load)
        self.textureBarrier = load_proc[fptr_glTextureBarrier]("glTextureBarrier", load)
        self.textureBuffer = load_proc[fptr_glTextureBuffer]("glTextureBuffer", load)
        self.textureBufferRange = load_proc[fptr_glTextureBufferRange]("glTextureBufferRange", load)
        self.textureParameterIiv = load_proc[fptr_glTextureParameterIiv]("glTextureParameterIiv", load)
        self.textureParameterIuiv = load_proc[fptr_glTextureParameterIuiv]("glTextureParameterIuiv", load)
        self.textureParameterf = load_proc[fptr_glTextureParameterf]("glTextureParameterf", load)
        self.textureParameterfv = load_proc[fptr_glTextureParameterfv]("glTextureParameterfv", load)
        self.textureParameteri = load_proc[fptr_glTextureParameteri]("glTextureParameteri", load)
        self.textureParameteriv = load_proc[fptr_glTextureParameteriv]("glTextureParameteriv", load)
        self.textureStorage1D = load_proc[fptr_glTextureStorage1D]("glTextureStorage1D", load)
        self.textureStorage2D = load_proc[fptr_glTextureStorage2D]("glTextureStorage2D", load)
        self.textureStorage2DMultisample = load_proc[fptr_glTextureStorage2DMultisample]("glTextureStorage2DMultisample", load)
        self.textureStorage3D = load_proc[fptr_glTextureStorage3D]("glTextureStorage3D", load)
        self.textureStorage3DMultisample = load_proc[fptr_glTextureStorage3DMultisample]("glTextureStorage3DMultisample", load)
        self.textureSubImage1D = load_proc[fptr_glTextureSubImage1D]("glTextureSubImage1D", load)
        self.textureSubImage2D = load_proc[fptr_glTextureSubImage2D]("glTextureSubImage2D", load)
        self.textureSubImage3D = load_proc[fptr_glTextureSubImage3D]("glTextureSubImage3D", load)
        self.transformFeedbackBufferBase = load_proc[fptr_glTransformFeedbackBufferBase]("glTransformFeedbackBufferBase", load)
        self.transformFeedbackBufferRange = load_proc[fptr_glTransformFeedbackBufferRange]("glTransformFeedbackBufferRange", load)
        self.unmapNamedBuffer = load_proc[fptr_glUnmapNamedBuffer]("glUnmapNamedBuffer", load)
        self.vertexArrayAttribBinding = load_proc[fptr_glVertexArrayAttribBinding]("glVertexArrayAttribBinding", load)
        self.vertexArrayAttribFormat = load_proc[fptr_glVertexArrayAttribFormat]("glVertexArrayAttribFormat", load)
        self.vertexArrayAttribIFormat = load_proc[fptr_glVertexArrayAttribIFormat]("glVertexArrayAttribIFormat", load)
        self.vertexArrayAttribLFormat = load_proc[fptr_glVertexArrayAttribLFormat]("glVertexArrayAttribLFormat", load)
        self.vertexArrayBindingDivisor = load_proc[fptr_glVertexArrayBindingDivisor]("glVertexArrayBindingDivisor", load)
        self.vertexArrayElementBuffer = load_proc[fptr_glVertexArrayElementBuffer]("glVertexArrayElementBuffer", load)
        self.vertexArrayVertexBuffer = load_proc[fptr_glVertexArrayVertexBuffer]("glVertexArrayVertexBuffer", load)
        self.vertexArrayVertexBuffers = load_proc[fptr_glVertexArrayVertexBuffers]("glVertexArrayVertexBuffers", load)


alias fptr_glMultiDrawArraysIndirectCount = fn (mode: PrimitiveType, indirect: Ptr[NoneType], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElementsIndirectCount = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glPolygonOffsetClamp = fn (factor: GLfloat, units: GLfloat, clamp: GLfloat)
alias fptr_glSpecializeShader = fn (shader: GLuint, pEntryPoint: Ptr[GLchar], numSpecializationConstants: GLuint, pConstantIndex: Ptr[GLuint], pConstantValue: Ptr[GLuint])


struct GL_VERSION_4_6:
    """Functions for gl 4.6."""

    var multiDrawArraysIndirectCount: fptr_glMultiDrawArraysIndirectCount
    var multiDrawElementsIndirectCount: fptr_glMultiDrawElementsIndirectCount
    var polygonOffsetClamp: fptr_glPolygonOffsetClamp
    var specializeShader: fptr_glSpecializeShader

    fn __init__(out self, load: LoadProc) raises:
        self.multiDrawArraysIndirectCount = load_proc[fptr_glMultiDrawArraysIndirectCount]("glMultiDrawArraysIndirectCount", load)
        self.multiDrawElementsIndirectCount = load_proc[fptr_glMultiDrawElementsIndirectCount]("glMultiDrawElementsIndirectCount", load)
        self.polygonOffsetClamp = load_proc[fptr_glPolygonOffsetClamp]("glPolygonOffsetClamp", load)
        self.specializeShader = load_proc[fptr_glSpecializeShader]("glSpecializeShader", load)


struct GL:
    """Functions for OpenGL."""

    var gl_version_1_0: GL_VERSION_1_0
    var gl_version_1_1: GL_VERSION_1_1
    var gl_version_1_2: GL_VERSION_1_2
    var gl_version_1_3: GL_VERSION_1_3
    var gl_version_1_4: GL_VERSION_1_4
    var gl_version_1_5: GL_VERSION_1_5
    var gl_version_2_0: GL_VERSION_2_0
    var gl_version_2_1: GL_VERSION_2_1
    var gl_version_3_0: GL_VERSION_3_0
    var gl_version_3_1: GL_VERSION_3_1
    var gl_version_3_2: GL_VERSION_3_2
    var gl_version_3_3: GL_VERSION_3_3
    var gl_version_4_0: GL_VERSION_4_0
    var gl_version_4_1: GL_VERSION_4_1
    var gl_version_4_2: GL_VERSION_4_2
    var gl_version_4_3: GL_VERSION_4_3
    var gl_version_4_4: GL_VERSION_4_4
    var gl_version_4_5: GL_VERSION_4_5
    var gl_version_4_6: GL_VERSION_4_6

    fn __init__(out self, load: LoadProc) raises:
        self.gl_version_1_0 = GL_VERSION_1_0(load)
        self.gl_version_1_1 = GL_VERSION_1_1(load)
        self.gl_version_1_2 = GL_VERSION_1_2(load)
        self.gl_version_1_3 = GL_VERSION_1_3(load)
        self.gl_version_1_4 = GL_VERSION_1_4(load)
        self.gl_version_1_5 = GL_VERSION_1_5(load)
        self.gl_version_2_0 = GL_VERSION_2_0(load)
        self.gl_version_2_1 = GL_VERSION_2_1(load)
        self.gl_version_3_0 = GL_VERSION_3_0(load)
        self.gl_version_3_1 = GL_VERSION_3_1(load)
        self.gl_version_3_2 = GL_VERSION_3_2(load)
        self.gl_version_3_3 = GL_VERSION_3_3(load)
        self.gl_version_4_0 = GL_VERSION_4_0(load)
        self.gl_version_4_1 = GL_VERSION_4_1(load)
        self.gl_version_4_2 = GL_VERSION_4_2(load)
        self.gl_version_4_3 = GL_VERSION_4_3(load)
        self.gl_version_4_4 = GL_VERSION_4_4(load)
        self.gl_version_4_5 = GL_VERSION_4_5(load)
        self.gl_version_4_6 = GL_VERSION_4_6(load)

    @always_inline
    fn blendFunc(self, sfactor: BlendingFactor, dfactor: BlendingFactor):
        return self.gl_version_1_0.blendFunc(sfactor, dfactor)

    @always_inline
    fn clear(self, mask: ClearBufferMask):
        return self.gl_version_1_0.clear(mask)

    @always_inline
    fn clearColor(self, red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
        return self.gl_version_1_0.clearColor(red, green, blue, alpha)

    @always_inline
    fn clearDepth(self, depth: GLdouble):
        return self.gl_version_1_0.clearDepth(depth)

    @always_inline
    fn clearStencil(self, s: GLint):
        return self.gl_version_1_0.clearStencil(s)

    @always_inline
    fn colorMask(self, red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean):
        return self.gl_version_1_0.colorMask(red, green, blue, alpha)

    @always_inline
    fn cullFace(self, mode: TriangleFace):
        return self.gl_version_1_0.cullFace(mode)

    @always_inline
    fn depthFunc(self, func: DepthFunction):
        return self.gl_version_1_0.depthFunc(func)

    @always_inline
    fn depthMask(self, flag: GLboolean):
        return self.gl_version_1_0.depthMask(flag)

    @always_inline
    fn depthRange(self, n: GLdouble, f: GLdouble):
        return self.gl_version_1_0.depthRange(n, f)

    @always_inline
    fn disable(self, cap: EnableCap):
        return self.gl_version_1_0.disable(cap)

    @always_inline
    fn drawBuffer(self, buf: DrawBufferMode):
        return self.gl_version_1_0.drawBuffer(buf)

    @always_inline
    fn enable(self, cap: EnableCap):
        return self.gl_version_1_0.enable(cap)

    @always_inline
    fn finish(self):
        return self.gl_version_1_0.finish()

    @always_inline
    fn flush(self):
        return self.gl_version_1_0.flush()

    @always_inline
    fn frontFace(self, mode: FrontFaceDirection):
        return self.gl_version_1_0.frontFace(mode)

    @always_inline
    fn getBooleanv(self, pname: GetPName, data: Ptr[GLboolean]):
        return self.gl_version_1_0.getBooleanv(pname, data)

    @always_inline
    fn getDoublev(self, pname: GetPName, data: Ptr[GLdouble]):
        return self.gl_version_1_0.getDoublev(pname, data)

    @always_inline
    fn getError(self) -> GLenum:
        return self.gl_version_1_0.getError()

    @always_inline
    fn getFloatv(self, pname: GetPName, data: Ptr[GLfloat]):
        return self.gl_version_1_0.getFloatv(pname, data)

    @always_inline
    fn getIntegerv(self, pname: GetPName, data: Ptr[GLint]):
        return self.gl_version_1_0.getIntegerv(pname, data)

    @always_inline
    fn getString(self, name: StringName) -> GLubyte:
        return self.gl_version_1_0.getString(name)

    @always_inline
    fn getTexImage(self, target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_0.getTexImage(target, level, format, type, pixels)

    @always_inline
    fn getTexLevelParameterfv(self, target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat]):
        return self.gl_version_1_0.getTexLevelParameterfv(target, level, pname, params)

    @always_inline
    fn getTexLevelParameteriv(self, target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_1_0.getTexLevelParameteriv(target, level, pname, params)

    @always_inline
    fn getTexParameterfv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat]):
        return self.gl_version_1_0.getTexParameterfv(target, pname, params)

    @always_inline
    fn getTexParameteriv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_1_0.getTexParameteriv(target, pname, params)

    @always_inline
    fn hint(self, target: HintTarget, mode: HintMode):
        return self.gl_version_1_0.hint(target, mode)

    @always_inline
    fn isEnabled(self, cap: EnableCap) -> GLboolean:
        return self.gl_version_1_0.isEnabled(cap)

    @always_inline
    fn lineWidth(self, width: GLfloat):
        return self.gl_version_1_0.lineWidth(width)

    @always_inline
    fn logicOp(self, opcode: LogicOp):
        return self.gl_version_1_0.logicOp(opcode)

    @always_inline
    fn pixelStoref(self, pname: PixelStoreParameter, param: GLfloat):
        return self.gl_version_1_0.pixelStoref(pname, param)

    @always_inline
    fn pixelStorei(self, pname: PixelStoreParameter, param: GLint):
        return self.gl_version_1_0.pixelStorei(pname, param)

    @always_inline
    fn pointSize(self, size: GLfloat):
        return self.gl_version_1_0.pointSize(size)

    @always_inline
    fn polygonMode(self, face: TriangleFace, mode: PolygonMode):
        return self.gl_version_1_0.polygonMode(face, mode)

    @always_inline
    fn readBuffer(self, src: ReadBufferMode):
        return self.gl_version_1_0.readBuffer(src)

    @always_inline
    fn readPixels(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_0.readPixels(x, y, width, height, format, type, pixels)

    @always_inline
    fn scissor(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_0.scissor(x, y, width, height)

    @always_inline
    fn stencilFunc(self, func: StencilFunction, ref_: GLint, mask: GLuint):
        return self.gl_version_1_0.stencilFunc(func, ref_, mask)

    @always_inline
    fn stencilMask(self, mask: GLuint):
        return self.gl_version_1_0.stencilMask(mask)

    @always_inline
    fn stencilOp(self, fail: StencilOp, zfail: StencilOp, zpass: StencilOp):
        return self.gl_version_1_0.stencilOp(fail, zfail, zpass)

    @always_inline
    fn texImage1D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_0.texImage1D(target, level, internalformat, width, border, format, type, pixels)

    @always_inline
    fn texImage2D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_0.texImage2D(target, level, internalformat, width, height, border, format, type, pixels)

    @always_inline
    fn texParameterf(self, target: TextureTarget, pname: TextureParameterName, param: GLfloat):
        return self.gl_version_1_0.texParameterf(target, pname, param)

    @always_inline
    fn texParameterfv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat]):
        return self.gl_version_1_0.texParameterfv(target, pname, params)

    @always_inline
    fn texParameteri(self, target: TextureTarget, pname: TextureParameterName, param: GLint):
        return self.gl_version_1_0.texParameteri(target, pname, param)

    @always_inline
    fn texParameteriv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint]):
        return self.gl_version_1_0.texParameteriv(target, pname, params)

    @always_inline
    fn viewport(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_0.viewport(x, y, width, height)

    @always_inline
    fn bindTexture(self, target: TextureTarget, texture: GLuint):
        return self.gl_version_1_1.bindTexture(target, texture)

    @always_inline
    fn copyTexImage1D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint):
        return self.gl_version_1_1.copyTexImage1D(target, level, internalformat, x, y, width, border)

    @always_inline
    fn copyTexImage2D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint):
        return self.gl_version_1_1.copyTexImage2D(target, level, internalformat, x, y, width, height, border)

    @always_inline
    fn copyTexSubImage1D(self, target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
        return self.gl_version_1_1.copyTexSubImage1D(target, level, xoffset, x, y, width)

    @always_inline
    fn copyTexSubImage2D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_1.copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

    @always_inline
    fn deleteTextures(self, n: GLsizei, textures: Ptr[GLuint]):
        return self.gl_version_1_1.deleteTextures(n, textures)

    @always_inline
    fn drawArrays(self, mode: PrimitiveType, first: GLint, count: GLsizei):
        return self.gl_version_1_1.drawArrays(mode, first, count)

    @always_inline
    fn drawElements(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType]):
        return self.gl_version_1_1.drawElements(mode, count, type, indices)

    @always_inline
    fn genTextures(self, n: GLsizei, textures: Ptr[GLuint]):
        return self.gl_version_1_1.genTextures(n, textures)

    @always_inline
    fn isTexture(self, texture: GLuint) -> GLboolean:
        return self.gl_version_1_1.isTexture(texture)

    @always_inline
    fn polygonOffset(self, factor: GLfloat, units: GLfloat):
        return self.gl_version_1_1.polygonOffset(factor, units)

    @always_inline
    fn texSubImage1D(self, target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_1.texSubImage1D(target, level, xoffset, width, format, type, pixels)

    @always_inline
    fn texSubImage2D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_1.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)

    @always_inline
    fn copyTexSubImage3D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_2.copyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)

    @always_inline
    fn drawRangeElements(self, mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType]):
        return self.gl_version_1_2.drawRangeElements(mode, start, end, count, type, indices)

    @always_inline
    fn texImage3D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_2.texImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)

    @always_inline
    fn texSubImage3D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_1_2.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)

    @always_inline
    fn activeTexture(self, texture: TextureUnit):
        return self.gl_version_1_3.activeTexture(texture)

    @always_inline
    fn compressedTexImage1D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexImage1D(target, level, internalformat, width, border, imageSize, data)

    @always_inline
    fn compressedTexImage2D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)

    @always_inline
    fn compressedTexImage3D(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data)

    @always_inline
    fn compressedTexSubImage1D(self, target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data)

    @always_inline
    fn compressedTexSubImage2D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)

    @always_inline
    fn compressedTexSubImage3D(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_1_3.compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data)

    @always_inline
    fn getCompressedTexImage(self, target: TextureTarget, level: GLint, img: Ptr[NoneType]):
        return self.gl_version_1_3.getCompressedTexImage(target, level, img)

    @always_inline
    fn sampleCoverage(self, value: GLfloat, invert: GLboolean):
        return self.gl_version_1_3.sampleCoverage(value, invert)

    @always_inline
    fn blendColor(self, red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
        return self.gl_version_1_4.blendColor(red, green, blue, alpha)

    @always_inline
    fn blendEquation(self, mode: BlendEquationModeEXT):
        return self.gl_version_1_4.blendEquation(mode)

    @always_inline
    fn blendFuncSeparate(self, sfactorRGB: BlendingFactor, dfactorRGB: BlendingFactor, sfactorAlpha: BlendingFactor, dfactorAlpha: BlendingFactor):
        return self.gl_version_1_4.blendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha)

    @always_inline
    fn multiDrawArrays(self, mode: PrimitiveType, first: Ptr[GLint], count: Ptr[GLsizei], drawcount: GLsizei):
        return self.gl_version_1_4.multiDrawArrays(mode, first, count, drawcount)

    @always_inline
    fn multiDrawElements(self, mode: PrimitiveType, count: Ptr[GLsizei], type: DrawElementsType, indices: Ptr[NoneType], drawcount: GLsizei):
        return self.gl_version_1_4.multiDrawElements(mode, count, type, indices, drawcount)

    @always_inline
    fn pointParameterf(self, pname: PointParameterNameARB, param: GLfloat):
        return self.gl_version_1_4.pointParameterf(pname, param)

    @always_inline
    fn pointParameterfv(self, pname: PointParameterNameARB, params: Ptr[GLfloat]):
        return self.gl_version_1_4.pointParameterfv(pname, params)

    @always_inline
    fn pointParameteri(self, pname: PointParameterNameARB, param: GLint):
        return self.gl_version_1_4.pointParameteri(pname, param)

    @always_inline
    fn pointParameteriv(self, pname: PointParameterNameARB, params: Ptr[GLint]):
        return self.gl_version_1_4.pointParameteriv(pname, params)

    @always_inline
    fn beginQuery(self, target: QueryTarget, id: GLuint):
        return self.gl_version_1_5.beginQuery(target, id)

    @always_inline
    fn bindBuffer(self, target: BufferTargetARB, buffer: GLuint):
        return self.gl_version_1_5.bindBuffer(target, buffer)

    @always_inline
    fn bufferData(self, target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType], usage: BufferUsageARB):
        return self.gl_version_1_5.bufferData(target, size, data, usage)

    @always_inline
    fn bufferSubData(self, target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType]):
        return self.gl_version_1_5.bufferSubData(target, offset, size, data)

    @always_inline
    fn deleteBuffers(self, n: GLsizei, buffers: Ptr[GLuint]):
        return self.gl_version_1_5.deleteBuffers(n, buffers)

    @always_inline
    fn deleteQueries(self, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_1_5.deleteQueries(n, ids)

    @always_inline
    fn endQuery(self, target: QueryTarget):
        return self.gl_version_1_5.endQuery(target)

    @always_inline
    fn genBuffers(self, n: GLsizei, buffers: Ptr[GLuint]):
        return self.gl_version_1_5.genBuffers(n, buffers)

    @always_inline
    fn genQueries(self, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_1_5.genQueries(n, ids)

    @always_inline
    fn getBufferParameteriv(self, target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint]):
        return self.gl_version_1_5.getBufferParameteriv(target, pname, params)

    @always_inline
    fn getBufferPointerv(self, target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[NoneType]):
        return self.gl_version_1_5.getBufferPointerv(target, pname, params)

    @always_inline
    fn getBufferSubData(self, target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType]):
        return self.gl_version_1_5.getBufferSubData(target, offset, size, data)

    @always_inline
    fn getQueryObjectiv(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint]):
        return self.gl_version_1_5.getQueryObjectiv(id, pname, params)

    @always_inline
    fn getQueryObjectuiv(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint]):
        return self.gl_version_1_5.getQueryObjectuiv(id, pname, params)

    @always_inline
    fn getQueryiv(self, target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint]):
        return self.gl_version_1_5.getQueryiv(target, pname, params)

    @always_inline
    fn isBuffer(self, buffer: GLuint) -> GLboolean:
        return self.gl_version_1_5.isBuffer(buffer)

    @always_inline
    fn isQuery(self, id: GLuint) -> GLboolean:
        return self.gl_version_1_5.isQuery(id)

    @always_inline
    fn mapBuffer(self, target: BufferTargetARB, access: BufferAccessARB):
        return self.gl_version_1_5.mapBuffer(target, access)

    @always_inline
    fn unmapBuffer(self, target: BufferTargetARB) -> GLboolean:
        return self.gl_version_1_5.unmapBuffer(target)

    @always_inline
    fn attachShader(self, program: GLuint, shader: GLuint):
        return self.gl_version_2_0.attachShader(program, shader)

    @always_inline
    fn bindAttribLocation(self, program: GLuint, index: GLuint, name: Ptr[GLchar]):
        return self.gl_version_2_0.bindAttribLocation(program, index, name)

    @always_inline
    fn blendEquationSeparate(self, modeRGB: BlendEquationModeEXT, modeAlpha: BlendEquationModeEXT):
        return self.gl_version_2_0.blendEquationSeparate(modeRGB, modeAlpha)

    @always_inline
    fn compileShader(self, shader: GLuint):
        return self.gl_version_2_0.compileShader(shader)

    @always_inline
    fn createProgram(self) -> GLuint:
        return self.gl_version_2_0.createProgram()

    @always_inline
    fn createShader(self, type: ShaderType) -> GLuint:
        return self.gl_version_2_0.createShader(type)

    @always_inline
    fn deleteProgram(self, program: GLuint):
        return self.gl_version_2_0.deleteProgram(program)

    @always_inline
    fn deleteShader(self, shader: GLuint):
        return self.gl_version_2_0.deleteShader(shader)

    @always_inline
    fn detachShader(self, program: GLuint, shader: GLuint):
        return self.gl_version_2_0.detachShader(program, shader)

    @always_inline
    fn disableVertexAttribArray(self, index: GLuint):
        return self.gl_version_2_0.disableVertexAttribArray(index)

    @always_inline
    fn drawBuffers(self, n: GLsizei, bufs: DrawBufferMode):
        return self.gl_version_2_0.drawBuffers(n, bufs)

    @always_inline
    fn enableVertexAttribArray(self, index: GLuint):
        return self.gl_version_2_0.enableVertexAttribArray(index)

    @always_inline
    fn getActiveAttrib(self, program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLint], type: AttributeType, name: Ptr[GLchar]):
        return self.gl_version_2_0.getActiveAttrib(program, index, bufSize, length, size, type, name)

    @always_inline
    fn getActiveUniform(self, program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLint], type: UniformType, name: Ptr[GLchar]):
        return self.gl_version_2_0.getActiveUniform(program, index, bufSize, length, size, type, name)

    @always_inline
    fn getAttachedShaders(self, program: GLuint, maxCount: GLsizei, count: Ptr[GLsizei], shaders: Ptr[GLuint]):
        return self.gl_version_2_0.getAttachedShaders(program, maxCount, count, shaders)

    @always_inline
    fn getAttribLocation(self, program: GLuint, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_2_0.getAttribLocation(program, name)

    @always_inline
    fn getProgramInfoLog(self, program: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar]):
        return self.gl_version_2_0.getProgramInfoLog(program, bufSize, length, infoLog)

    @always_inline
    fn getProgramiv(self, program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint]):
        return self.gl_version_2_0.getProgramiv(program, pname, params)

    @always_inline
    fn getShaderInfoLog(self, shader: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar]):
        return self.gl_version_2_0.getShaderInfoLog(shader, bufSize, length, infoLog)

    @always_inline
    fn getShaderSource(self, shader: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], source: Ptr[GLchar]):
        return self.gl_version_2_0.getShaderSource(shader, bufSize, length, source)

    @always_inline
    fn getShaderiv(self, shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint]):
        return self.gl_version_2_0.getShaderiv(shader, pname, params)

    @always_inline
    fn getUniformLocation(self, program: GLuint, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_2_0.getUniformLocation(program, name)

    @always_inline
    fn getUniformfv(self, program: GLuint, location: GLint, params: Ptr[GLfloat]):
        return self.gl_version_2_0.getUniformfv(program, location, params)

    @always_inline
    fn getUniformiv(self, program: GLuint, location: GLint, params: Ptr[GLint]):
        return self.gl_version_2_0.getUniformiv(program, location, params)

    @always_inline
    fn getVertexAttribPointerv(self, index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[NoneType]):
        return self.gl_version_2_0.getVertexAttribPointerv(index, pname, pointer)

    @always_inline
    fn getVertexAttribdv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble]):
        return self.gl_version_2_0.getVertexAttribdv(index, pname, params)

    @always_inline
    fn getVertexAttribfv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat]):
        return self.gl_version_2_0.getVertexAttribfv(index, pname, params)

    @always_inline
    fn getVertexAttribiv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint]):
        return self.gl_version_2_0.getVertexAttribiv(index, pname, params)

    @always_inline
    fn isProgram(self, program: GLuint) -> GLboolean:
        return self.gl_version_2_0.isProgram(program)

    @always_inline
    fn isShader(self, shader: GLuint) -> GLboolean:
        return self.gl_version_2_0.isShader(shader)

    @always_inline
    fn linkProgram(self, program: GLuint):
        return self.gl_version_2_0.linkProgram(program)

    @always_inline
    fn shaderSource(self, shader: GLuint, count: GLsizei, string: Ptr[GLchar], length: Ptr[GLint]):
        return self.gl_version_2_0.shaderSource(shader, count, string, length)

    @always_inline
    fn stencilFuncSeparate(self, face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint):
        return self.gl_version_2_0.stencilFuncSeparate(face, func, ref_, mask)

    @always_inline
    fn stencilMaskSeparate(self, face: TriangleFace, mask: GLuint):
        return self.gl_version_2_0.stencilMaskSeparate(face, mask)

    @always_inline
    fn stencilOpSeparate(self, face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp):
        return self.gl_version_2_0.stencilOpSeparate(face, sfail, dpfail, dppass)

    @always_inline
    fn uniform1f(self, location: GLint, v0: GLfloat):
        return self.gl_version_2_0.uniform1f(location, v0)

    @always_inline
    fn uniform1fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniform1fv(location, count, value)

    @always_inline
    fn uniform1i(self, location: GLint, v0: GLint):
        return self.gl_version_2_0.uniform1i(location, v0)

    @always_inline
    fn uniform1iv(self, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_2_0.uniform1iv(location, count, value)

    @always_inline
    fn uniform2f(self, location: GLint, v0: GLfloat, v1: GLfloat):
        return self.gl_version_2_0.uniform2f(location, v0, v1)

    @always_inline
    fn uniform2fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniform2fv(location, count, value)

    @always_inline
    fn uniform2i(self, location: GLint, v0: GLint, v1: GLint):
        return self.gl_version_2_0.uniform2i(location, v0, v1)

    @always_inline
    fn uniform2iv(self, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_2_0.uniform2iv(location, count, value)

    @always_inline
    fn uniform3f(self, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
        return self.gl_version_2_0.uniform3f(location, v0, v1, v2)

    @always_inline
    fn uniform3fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniform3fv(location, count, value)

    @always_inline
    fn uniform3i(self, location: GLint, v0: GLint, v1: GLint, v2: GLint):
        return self.gl_version_2_0.uniform3i(location, v0, v1, v2)

    @always_inline
    fn uniform3iv(self, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_2_0.uniform3iv(location, count, value)

    @always_inline
    fn uniform4f(self, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
        return self.gl_version_2_0.uniform4f(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniform4fv(location, count, value)

    @always_inline
    fn uniform4i(self, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
        return self.gl_version_2_0.uniform4i(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4iv(self, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_2_0.uniform4iv(location, count, value)

    @always_inline
    fn uniformMatrix2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniformMatrix2fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniformMatrix3fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_0.uniformMatrix4fv(location, count, transpose, value)

    @always_inline
    fn useProgram(self, program: GLuint):
        return self.gl_version_2_0.useProgram(program)

    @always_inline
    fn validateProgram(self, program: GLuint):
        return self.gl_version_2_0.validateProgram(program)

    @always_inline
    fn vertexAttrib1d(self, index: GLuint, x: GLdouble):
        return self.gl_version_2_0.vertexAttrib1d(index, x)

    @always_inline
    fn vertexAttrib1dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_2_0.vertexAttrib1dv(index, v)

    @always_inline
    fn vertexAttrib1f(self, index: GLuint, x: GLfloat):
        return self.gl_version_2_0.vertexAttrib1f(index, x)

    @always_inline
    fn vertexAttrib1fv(self, index: GLuint, v: Ptr[GLfloat]):
        return self.gl_version_2_0.vertexAttrib1fv(index, v)

    @always_inline
    fn vertexAttrib1s(self, index: GLuint, x: GLshort):
        return self.gl_version_2_0.vertexAttrib1s(index, x)

    @always_inline
    fn vertexAttrib1sv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_2_0.vertexAttrib1sv(index, v)

    @always_inline
    fn vertexAttrib2d(self, index: GLuint, x: GLdouble, y: GLdouble):
        return self.gl_version_2_0.vertexAttrib2d(index, x, y)

    @always_inline
    fn vertexAttrib2dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_2_0.vertexAttrib2dv(index, v)

    @always_inline
    fn vertexAttrib2f(self, index: GLuint, x: GLfloat, y: GLfloat):
        return self.gl_version_2_0.vertexAttrib2f(index, x, y)

    @always_inline
    fn vertexAttrib2fv(self, index: GLuint, v: Ptr[GLfloat]):
        return self.gl_version_2_0.vertexAttrib2fv(index, v)

    @always_inline
    fn vertexAttrib2s(self, index: GLuint, x: GLshort, y: GLshort):
        return self.gl_version_2_0.vertexAttrib2s(index, x, y)

    @always_inline
    fn vertexAttrib2sv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_2_0.vertexAttrib2sv(index, v)

    @always_inline
    fn vertexAttrib3d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_2_0.vertexAttrib3d(index, x, y, z)

    @always_inline
    fn vertexAttrib3dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_2_0.vertexAttrib3dv(index, v)

    @always_inline
    fn vertexAttrib3f(self, index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat):
        return self.gl_version_2_0.vertexAttrib3f(index, x, y, z)

    @always_inline
    fn vertexAttrib3fv(self, index: GLuint, v: Ptr[GLfloat]):
        return self.gl_version_2_0.vertexAttrib3fv(index, v)

    @always_inline
    fn vertexAttrib3s(self, index: GLuint, x: GLshort, y: GLshort, z: GLshort):
        return self.gl_version_2_0.vertexAttrib3s(index, x, y, z)

    @always_inline
    fn vertexAttrib3sv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_2_0.vertexAttrib3sv(index, v)

    @always_inline
    fn vertexAttrib4Nbv(self, index: GLuint, v: Ptr[GLbyte]):
        return self.gl_version_2_0.vertexAttrib4Nbv(index, v)

    @always_inline
    fn vertexAttrib4Niv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_2_0.vertexAttrib4Niv(index, v)

    @always_inline
    fn vertexAttrib4Nsv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_2_0.vertexAttrib4Nsv(index, v)

    @always_inline
    fn vertexAttrib4Nub(self, index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte):
        return self.gl_version_2_0.vertexAttrib4Nub(index, x, y, z, w)

    @always_inline
    fn vertexAttrib4Nubv(self, index: GLuint, v: Ptr[GLubyte]):
        return self.gl_version_2_0.vertexAttrib4Nubv(index, v)

    @always_inline
    fn vertexAttrib4Nuiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_2_0.vertexAttrib4Nuiv(index, v)

    @always_inline
    fn vertexAttrib4Nusv(self, index: GLuint, v: Ptr[GLushort]):
        return self.gl_version_2_0.vertexAttrib4Nusv(index, v)

    @always_inline
    fn vertexAttrib4bv(self, index: GLuint, v: Ptr[GLbyte]):
        return self.gl_version_2_0.vertexAttrib4bv(index, v)

    @always_inline
    fn vertexAttrib4d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_2_0.vertexAttrib4d(index, x, y, z, w)

    @always_inline
    fn vertexAttrib4dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_2_0.vertexAttrib4dv(index, v)

    @always_inline
    fn vertexAttrib4f(self, index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat):
        return self.gl_version_2_0.vertexAttrib4f(index, x, y, z, w)

    @always_inline
    fn vertexAttrib4fv(self, index: GLuint, v: Ptr[GLfloat]):
        return self.gl_version_2_0.vertexAttrib4fv(index, v)

    @always_inline
    fn vertexAttrib4iv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_2_0.vertexAttrib4iv(index, v)

    @always_inline
    fn vertexAttrib4s(self, index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort):
        return self.gl_version_2_0.vertexAttrib4s(index, x, y, z, w)

    @always_inline
    fn vertexAttrib4sv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_2_0.vertexAttrib4sv(index, v)

    @always_inline
    fn vertexAttrib4ubv(self, index: GLuint, v: Ptr[GLubyte]):
        return self.gl_version_2_0.vertexAttrib4ubv(index, v)

    @always_inline
    fn vertexAttrib4uiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_2_0.vertexAttrib4uiv(index, v)

    @always_inline
    fn vertexAttrib4usv(self, index: GLuint, v: Ptr[GLushort]):
        return self.gl_version_2_0.vertexAttrib4usv(index, v)

    @always_inline
    fn vertexAttribPointer(self, index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType]):
        return self.gl_version_2_0.vertexAttribPointer(index, size, type, normalized, stride, pointer)

    @always_inline
    fn uniformMatrix2x3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix2x3fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix2x4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix2x4fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3x2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix3x2fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3x4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix3x4fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4x2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix4x2fv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4x3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_2_1.uniformMatrix4x3fv(location, count, transpose, value)

    @always_inline
    fn beginConditionalRender(self, id: GLuint, mode: ConditionalRenderMode):
        return self.gl_version_3_0.beginConditionalRender(id, mode)

    @always_inline
    fn beginTransformFeedback(self, primitiveMode: PrimitiveType):
        return self.gl_version_3_0.beginTransformFeedback(primitiveMode)

    @always_inline
    fn bindBufferBase(self, target: BufferTargetARB, index: GLuint, buffer: GLuint):
        return self.gl_version_3_0.bindBufferBase(target, index, buffer)

    @always_inline
    fn bindBufferRange(self, target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_3_0.bindBufferRange(target, index, buffer, offset, size)

    @always_inline
    fn bindFragDataLocation(self, program: GLuint, color: GLuint, name: Ptr[GLchar]):
        return self.gl_version_3_0.bindFragDataLocation(program, color, name)

    @always_inline
    fn bindFramebuffer(self, target: FramebufferTarget, framebuffer: GLuint):
        return self.gl_version_3_0.bindFramebuffer(target, framebuffer)

    @always_inline
    fn bindRenderbuffer(self, target: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_3_0.bindRenderbuffer(target, renderbuffer)

    @always_inline
    fn bindVertexArray(self, array: GLuint):
        return self.gl_version_3_0.bindVertexArray(array)

    @always_inline
    fn blitFramebuffer(self, srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
        return self.gl_version_3_0.blitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)

    @always_inline
    fn checkFramebufferStatus(self, target: FramebufferTarget) -> GLenum:
        return self.gl_version_3_0.checkFramebufferStatus(target)

    @always_inline
    fn clampColor(self, target: ClampColorTargetARB, clamp: ClampColorModeARB):
        return self.gl_version_3_0.clampColor(target, clamp)

    @always_inline
    fn clearBufferfi(self, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
        return self.gl_version_3_0.clearBufferfi(buffer, drawbuffer, depth, stencil)

    @always_inline
    fn clearBufferfv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat]):
        return self.gl_version_3_0.clearBufferfv(buffer, drawbuffer, value)

    @always_inline
    fn clearBufferiv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint]):
        return self.gl_version_3_0.clearBufferiv(buffer, drawbuffer, value)

    @always_inline
    fn clearBufferuiv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint]):
        return self.gl_version_3_0.clearBufferuiv(buffer, drawbuffer, value)

    @always_inline
    fn colorMaski(self, index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean):
        return self.gl_version_3_0.colorMaski(index, r, g, b, a)

    @always_inline
    fn deleteFramebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint]):
        return self.gl_version_3_0.deleteFramebuffers(n, framebuffers)

    @always_inline
    fn deleteRenderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint]):
        return self.gl_version_3_0.deleteRenderbuffers(n, renderbuffers)

    @always_inline
    fn deleteVertexArrays(self, n: GLsizei, arrays: Ptr[GLuint]):
        return self.gl_version_3_0.deleteVertexArrays(n, arrays)

    @always_inline
    fn disablei(self, target: EnableCap, index: GLuint):
        return self.gl_version_3_0.disablei(target, index)

    @always_inline
    fn enablei(self, target: EnableCap, index: GLuint):
        return self.gl_version_3_0.enablei(target, index)

    @always_inline
    fn endConditionalRender(self):
        return self.gl_version_3_0.endConditionalRender()

    @always_inline
    fn endTransformFeedback(self):
        return self.gl_version_3_0.endTransformFeedback()

    @always_inline
    fn flushMappedBufferRange(self, target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_3_0.flushMappedBufferRange(target, offset, length)

    @always_inline
    fn framebufferRenderbuffer(self, target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_3_0.framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

    @always_inline
    fn framebufferTexture1D(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
        return self.gl_version_3_0.framebufferTexture1D(target, attachment, textarget, texture, level)

    @always_inline
    fn framebufferTexture2D(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
        return self.gl_version_3_0.framebufferTexture2D(target, attachment, textarget, texture, level)

    @always_inline
    fn framebufferTexture3D(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint):
        return self.gl_version_3_0.framebufferTexture3D(target, attachment, textarget, texture, level, zoffset)

    @always_inline
    fn framebufferTextureLayer(self, target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
        return self.gl_version_3_0.framebufferTextureLayer(target, attachment, texture, level, layer)

    @always_inline
    fn genFramebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint]):
        return self.gl_version_3_0.genFramebuffers(n, framebuffers)

    @always_inline
    fn genRenderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint]):
        return self.gl_version_3_0.genRenderbuffers(n, renderbuffers)

    @always_inline
    fn genVertexArrays(self, n: GLsizei, arrays: Ptr[GLuint]):
        return self.gl_version_3_0.genVertexArrays(n, arrays)

    @always_inline
    fn generateMipmap(self, target: TextureTarget):
        return self.gl_version_3_0.generateMipmap(target)

    @always_inline
    fn getBooleani_v(self, target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean]):
        return self.gl_version_3_0.getBooleani_v(target, index, data)

    @always_inline
    fn getFragDataLocation(self, program: GLuint, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_3_0.getFragDataLocation(program, name)

    @always_inline
    fn getFramebufferAttachmentParameteriv(self, target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint]):
        return self.gl_version_3_0.getFramebufferAttachmentParameteriv(target, attachment, pname, params)

    @always_inline
    fn getIntegeri_v(self, target: GetPName, index: GLuint, data: Ptr[GLint]):
        return self.gl_version_3_0.getIntegeri_v(target, index, data)

    @always_inline
    fn getRenderbufferParameteriv(self, target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint]):
        return self.gl_version_3_0.getRenderbufferParameteriv(target, pname, params)

    @always_inline
    fn getStringi(self, name: StringName, index: GLuint) -> GLubyte:
        return self.gl_version_3_0.getStringi(name, index)

    @always_inline
    fn getTexParameterIiv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_3_0.getTexParameterIiv(target, pname, params)

    @always_inline
    fn getTexParameterIuiv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint]):
        return self.gl_version_3_0.getTexParameterIuiv(target, pname, params)

    @always_inline
    fn getTransformFeedbackVarying(self, program: GLuint, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], size: Ptr[GLsizei], type: AttributeType, name: Ptr[GLchar]):
        return self.gl_version_3_0.getTransformFeedbackVarying(program, index, bufSize, length, size, type, name)

    @always_inline
    fn getUniformuiv(self, program: GLuint, location: GLint, params: Ptr[GLuint]):
        return self.gl_version_3_0.getUniformuiv(program, location, params)

    @always_inline
    fn getVertexAttribIiv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint]):
        return self.gl_version_3_0.getVertexAttribIiv(index, pname, params)

    @always_inline
    fn getVertexAttribIuiv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint]):
        return self.gl_version_3_0.getVertexAttribIuiv(index, pname, params)

    @always_inline
    fn isEnabledi(self, target: EnableCap, index: GLuint) -> GLboolean:
        return self.gl_version_3_0.isEnabledi(target, index)

    @always_inline
    fn isFramebuffer(self, framebuffer: GLuint) -> GLboolean:
        return self.gl_version_3_0.isFramebuffer(framebuffer)

    @always_inline
    fn isRenderbuffer(self, renderbuffer: GLuint) -> GLboolean:
        return self.gl_version_3_0.isRenderbuffer(renderbuffer)

    @always_inline
    fn isVertexArray(self, array: GLuint) -> GLboolean:
        return self.gl_version_3_0.isVertexArray(array)

    @always_inline
    fn mapBufferRange(self, target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
        return self.gl_version_3_0.mapBufferRange(target, offset, length, access)

    @always_inline
    fn renderbufferStorage(self, target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_3_0.renderbufferStorage(target, internalformat, width, height)

    @always_inline
    fn renderbufferStorageMultisample(self, target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_3_0.renderbufferStorageMultisample(target, samples, internalformat, width, height)

    @always_inline
    fn texParameterIiv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint]):
        return self.gl_version_3_0.texParameterIiv(target, pname, params)

    @always_inline
    fn texParameterIuiv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint]):
        return self.gl_version_3_0.texParameterIuiv(target, pname, params)

    @always_inline
    fn transformFeedbackVaryings(self, program: GLuint, count: GLsizei, varyings: Ptr[GLchar], bufferMode: TransformFeedbackBufferMode):
        return self.gl_version_3_0.transformFeedbackVaryings(program, count, varyings, bufferMode)

    @always_inline
    fn uniform1ui(self, location: GLint, v0: GLuint):
        return self.gl_version_3_0.uniform1ui(location, v0)

    @always_inline
    fn uniform1uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_3_0.uniform1uiv(location, count, value)

    @always_inline
    fn uniform2ui(self, location: GLint, v0: GLuint, v1: GLuint):
        return self.gl_version_3_0.uniform2ui(location, v0, v1)

    @always_inline
    fn uniform2uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_3_0.uniform2uiv(location, count, value)

    @always_inline
    fn uniform3ui(self, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
        return self.gl_version_3_0.uniform3ui(location, v0, v1, v2)

    @always_inline
    fn uniform3uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_3_0.uniform3uiv(location, count, value)

    @always_inline
    fn uniform4ui(self, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
        return self.gl_version_3_0.uniform4ui(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_3_0.uniform4uiv(location, count, value)

    @always_inline
    fn vertexAttribI1i(self, index: GLuint, x: GLint):
        return self.gl_version_3_0.vertexAttribI1i(index, x)

    @always_inline
    fn vertexAttribI1iv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_3_0.vertexAttribI1iv(index, v)

    @always_inline
    fn vertexAttribI1ui(self, index: GLuint, x: GLuint):
        return self.gl_version_3_0.vertexAttribI1ui(index, x)

    @always_inline
    fn vertexAttribI1uiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_3_0.vertexAttribI1uiv(index, v)

    @always_inline
    fn vertexAttribI2i(self, index: GLuint, x: GLint, y: GLint):
        return self.gl_version_3_0.vertexAttribI2i(index, x, y)

    @always_inline
    fn vertexAttribI2iv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_3_0.vertexAttribI2iv(index, v)

    @always_inline
    fn vertexAttribI2ui(self, index: GLuint, x: GLuint, y: GLuint):
        return self.gl_version_3_0.vertexAttribI2ui(index, x, y)

    @always_inline
    fn vertexAttribI2uiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_3_0.vertexAttribI2uiv(index, v)

    @always_inline
    fn vertexAttribI3i(self, index: GLuint, x: GLint, y: GLint, z: GLint):
        return self.gl_version_3_0.vertexAttribI3i(index, x, y, z)

    @always_inline
    fn vertexAttribI3iv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_3_0.vertexAttribI3iv(index, v)

    @always_inline
    fn vertexAttribI3ui(self, index: GLuint, x: GLuint, y: GLuint, z: GLuint):
        return self.gl_version_3_0.vertexAttribI3ui(index, x, y, z)

    @always_inline
    fn vertexAttribI3uiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_3_0.vertexAttribI3uiv(index, v)

    @always_inline
    fn vertexAttribI4bv(self, index: GLuint, v: Ptr[GLbyte]):
        return self.gl_version_3_0.vertexAttribI4bv(index, v)

    @always_inline
    fn vertexAttribI4i(self, index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint):
        return self.gl_version_3_0.vertexAttribI4i(index, x, y, z, w)

    @always_inline
    fn vertexAttribI4iv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_3_0.vertexAttribI4iv(index, v)

    @always_inline
    fn vertexAttribI4sv(self, index: GLuint, v: Ptr[GLshort]):
        return self.gl_version_3_0.vertexAttribI4sv(index, v)

    @always_inline
    fn vertexAttribI4ubv(self, index: GLuint, v: Ptr[GLubyte]):
        return self.gl_version_3_0.vertexAttribI4ubv(index, v)

    @always_inline
    fn vertexAttribI4ui(self, index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint):
        return self.gl_version_3_0.vertexAttribI4ui(index, x, y, z, w)

    @always_inline
    fn vertexAttribI4uiv(self, index: GLuint, v: Ptr[GLuint]):
        return self.gl_version_3_0.vertexAttribI4uiv(index, v)

    @always_inline
    fn vertexAttribI4usv(self, index: GLuint, v: Ptr[GLushort]):
        return self.gl_version_3_0.vertexAttribI4usv(index, v)

    @always_inline
    fn vertexAttribIPointer(self, index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType]):
        return self.gl_version_3_0.vertexAttribIPointer(index, size, type, stride, pointer)

    @always_inline
    fn copyBufferSubData(self, readTarget: CopyBufferSubDataTarget, writeTarget: CopyBufferSubDataTarget, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr):
        return self.gl_version_3_1.copyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size)

    @always_inline
    fn drawArraysInstanced(self, mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei):
        return self.gl_version_3_1.drawArraysInstanced(mode, first, count, instancecount)

    @always_inline
    fn drawElementsInstanced(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei):
        return self.gl_version_3_1.drawElementsInstanced(mode, count, type, indices, instancecount)

    @always_inline
    fn getActiveUniformBlockName(self, program: GLuint, uniformBlockIndex: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], uniformBlockName: Ptr[GLchar]):
        return self.gl_version_3_1.getActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName)

    @always_inline
    fn getActiveUniformBlockiv(self, program: GLuint, uniformBlockIndex: GLuint, pname: UniformBlockPName, params: Ptr[GLint]):
        return self.gl_version_3_1.getActiveUniformBlockiv(program, uniformBlockIndex, pname, params)

    @always_inline
    fn getActiveUniformName(self, program: GLuint, uniformIndex: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], uniformName: Ptr[GLchar]):
        return self.gl_version_3_1.getActiveUniformName(program, uniformIndex, bufSize, length, uniformName)

    @always_inline
    fn getActiveUniformsiv(self, program: GLuint, uniformCount: GLsizei, uniformIndices: Ptr[GLuint], pname: UniformPName, params: Ptr[GLint]):
        return self.gl_version_3_1.getActiveUniformsiv(program, uniformCount, uniformIndices, pname, params)

    @always_inline
    fn getUniformBlockIndex(self, program: GLuint, uniformBlockName: Ptr[GLchar]) -> GLuint:
        return self.gl_version_3_1.getUniformBlockIndex(program, uniformBlockName)

    @always_inline
    fn getUniformIndices(self, program: GLuint, uniformCount: GLsizei, uniformNames: Ptr[GLchar], uniformIndices: Ptr[GLuint]):
        return self.gl_version_3_1.getUniformIndices(program, uniformCount, uniformNames, uniformIndices)

    @always_inline
    fn primitiveRestartIndex(self, index: GLuint):
        return self.gl_version_3_1.primitiveRestartIndex(index)

    @always_inline
    fn texBuffer(self, target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint):
        return self.gl_version_3_1.texBuffer(target, internalformat, buffer)

    @always_inline
    fn uniformBlockBinding(self, program: GLuint, uniformBlockIndex: GLuint, uniformBlockBinding: GLuint):
        return self.gl_version_3_1.uniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding)

    @always_inline
    fn clientWaitSync(self, sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> GLenum:
        return self.gl_version_3_2.clientWaitSync(sync, flags, timeout)

    @always_inline
    fn deleteSync(self, sync: GLsync):
        return self.gl_version_3_2.deleteSync(sync)

    @always_inline
    fn drawElementsBaseVertex(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], basevertex: GLint):
        return self.gl_version_3_2.drawElementsBaseVertex(mode, count, type, indices, basevertex)

    @always_inline
    fn drawElementsInstancedBaseVertex(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, basevertex: GLint):
        return self.gl_version_3_2.drawElementsInstancedBaseVertex(mode, count, type, indices, instancecount, basevertex)

    @always_inline
    fn drawRangeElementsBaseVertex(self, mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], basevertex: GLint):
        return self.gl_version_3_2.drawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex)

    @always_inline
    fn fenceSync(self, condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync:
        return self.gl_version_3_2.fenceSync(condition, flags)

    @always_inline
    fn framebufferTexture(self, target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
        return self.gl_version_3_2.framebufferTexture(target, attachment, texture, level)

    @always_inline
    fn getBufferParameteri64v(self, target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64]):
        return self.gl_version_3_2.getBufferParameteri64v(target, pname, params)

    @always_inline
    fn getInteger64i_v(self, target: GetPName, index: GLuint, data: Ptr[GLint64]):
        return self.gl_version_3_2.getInteger64i_v(target, index, data)

    @always_inline
    fn getInteger64v(self, pname: GetPName, data: Ptr[GLint64]):
        return self.gl_version_3_2.getInteger64v(pname, data)

    @always_inline
    fn getMultisamplefv(self, pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat]):
        return self.gl_version_3_2.getMultisamplefv(pname, index, val)

    @always_inline
    fn getSynciv(self, sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei], values: Ptr[GLint]):
        return self.gl_version_3_2.getSynciv(sync, pname, count, length, values)

    @always_inline
    fn isSync(self, sync: GLsync) -> GLboolean:
        return self.gl_version_3_2.isSync(sync)

    @always_inline
    fn multiDrawElementsBaseVertex(self, mode: PrimitiveType, count: Ptr[GLsizei], type: DrawElementsType, indices: Ptr[NoneType], drawcount: GLsizei, basevertex: Ptr[GLint]):
        return self.gl_version_3_2.multiDrawElementsBaseVertex(mode, count, type, indices, drawcount, basevertex)

    @always_inline
    fn provokingVertex(self, mode: VertexProvokingMode):
        return self.gl_version_3_2.provokingVertex(mode)

    @always_inline
    fn sampleMaski(self, maskNumber: GLuint, mask: GLbitfield):
        return self.gl_version_3_2.sampleMaski(maskNumber, mask)

    @always_inline
    fn texImage2DMultisample(self, target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_3_2.texImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn texImage3DMultisample(self, target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_3_2.texImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn waitSync(self, sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64):
        return self.gl_version_3_2.waitSync(sync, flags, timeout)

    @always_inline
    fn bindFragDataLocationIndexed(self, program: GLuint, colorNumber: GLuint, index: GLuint, name: Ptr[GLchar]):
        return self.gl_version_3_3.bindFragDataLocationIndexed(program, colorNumber, index, name)

    @always_inline
    fn bindSampler(self, unit: GLuint, sampler: GLuint):
        return self.gl_version_3_3.bindSampler(unit, sampler)

    @always_inline
    fn colorP3ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.colorP3ui(type, color)

    @always_inline
    fn colorP3uiv(self, type: ColorPointerType, color: Ptr[GLuint]):
        return self.gl_version_3_3.colorP3uiv(type, color)

    @always_inline
    fn colorP4ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.colorP4ui(type, color)

    @always_inline
    fn colorP4uiv(self, type: ColorPointerType, color: Ptr[GLuint]):
        return self.gl_version_3_3.colorP4uiv(type, color)

    @always_inline
    fn deleteSamplers(self, count: GLsizei, samplers: Ptr[GLuint]):
        return self.gl_version_3_3.deleteSamplers(count, samplers)

    @always_inline
    fn genSamplers(self, count: GLsizei, samplers: Ptr[GLuint]):
        return self.gl_version_3_3.genSamplers(count, samplers)

    @always_inline
    fn getFragDataIndex(self, program: GLuint, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_3_3.getFragDataIndex(program, name)

    @always_inline
    fn getQueryObjecti64v(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64]):
        return self.gl_version_3_3.getQueryObjecti64v(id, pname, params)

    @always_inline
    fn getQueryObjectui64v(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64]):
        return self.gl_version_3_3.getQueryObjectui64v(id, pname, params)

    @always_inline
    fn getSamplerParameterIiv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint]):
        return self.gl_version_3_3.getSamplerParameterIiv(sampler, pname, params)

    @always_inline
    fn getSamplerParameterIuiv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint]):
        return self.gl_version_3_3.getSamplerParameterIuiv(sampler, pname, params)

    @always_inline
    fn getSamplerParameterfv(self, sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat]):
        return self.gl_version_3_3.getSamplerParameterfv(sampler, pname, params)

    @always_inline
    fn getSamplerParameteriv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint]):
        return self.gl_version_3_3.getSamplerParameteriv(sampler, pname, params)

    @always_inline
    fn isSampler(self, sampler: GLuint) -> GLboolean:
        return self.gl_version_3_3.isSampler(sampler)

    @always_inline
    fn multiTexCoordP1ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multiTexCoordP1ui(texture, type, coords)

    @always_inline
    fn multiTexCoordP1uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.multiTexCoordP1uiv(texture, type, coords)

    @always_inline
    fn multiTexCoordP2ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multiTexCoordP2ui(texture, type, coords)

    @always_inline
    fn multiTexCoordP2uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.multiTexCoordP2uiv(texture, type, coords)

    @always_inline
    fn multiTexCoordP3ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multiTexCoordP3ui(texture, type, coords)

    @always_inline
    fn multiTexCoordP3uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.multiTexCoordP3uiv(texture, type, coords)

    @always_inline
    fn multiTexCoordP4ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multiTexCoordP4ui(texture, type, coords)

    @always_inline
    fn multiTexCoordP4uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.multiTexCoordP4uiv(texture, type, coords)

    @always_inline
    fn normalP3ui(self, type: NormalPointerType, coords: GLuint):
        return self.gl_version_3_3.normalP3ui(type, coords)

    @always_inline
    fn normalP3uiv(self, type: NormalPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.normalP3uiv(type, coords)

    @always_inline
    fn queryCounter(self, id: GLuint, target: QueryCounterTarget):
        return self.gl_version_3_3.queryCounter(id, target)

    @always_inline
    fn samplerParameterIiv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint]):
        return self.gl_version_3_3.samplerParameterIiv(sampler, pname, param)

    @always_inline
    fn samplerParameterIuiv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint]):
        return self.gl_version_3_3.samplerParameterIuiv(sampler, pname, param)

    @always_inline
    fn samplerParameterf(self, sampler: GLuint, pname: SamplerParameterF, param: GLfloat):
        return self.gl_version_3_3.samplerParameterf(sampler, pname, param)

    @always_inline
    fn samplerParameterfv(self, sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat]):
        return self.gl_version_3_3.samplerParameterfv(sampler, pname, param)

    @always_inline
    fn samplerParameteri(self, sampler: GLuint, pname: SamplerParameterI, param: GLint):
        return self.gl_version_3_3.samplerParameteri(sampler, pname, param)

    @always_inline
    fn samplerParameteriv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint]):
        return self.gl_version_3_3.samplerParameteriv(sampler, pname, param)

    @always_inline
    fn secondaryColorP3ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.secondaryColorP3ui(type, color)

    @always_inline
    fn secondaryColorP3uiv(self, type: ColorPointerType, color: Ptr[GLuint]):
        return self.gl_version_3_3.secondaryColorP3uiv(type, color)

    @always_inline
    fn texCoordP1ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.texCoordP1ui(type, coords)

    @always_inline
    fn texCoordP1uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.texCoordP1uiv(type, coords)

    @always_inline
    fn texCoordP2ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.texCoordP2ui(type, coords)

    @always_inline
    fn texCoordP2uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.texCoordP2uiv(type, coords)

    @always_inline
    fn texCoordP3ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.texCoordP3ui(type, coords)

    @always_inline
    fn texCoordP3uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.texCoordP3uiv(type, coords)

    @always_inline
    fn texCoordP4ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.texCoordP4ui(type, coords)

    @always_inline
    fn texCoordP4uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint]):
        return self.gl_version_3_3.texCoordP4uiv(type, coords)

    @always_inline
    fn vertexAttribDivisor(self, index: GLuint, divisor: GLuint):
        return self.gl_version_3_3.vertexAttribDivisor(index, divisor)

    @always_inline
    fn vertexAttribP1ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertexAttribP1ui(index, type, normalized, value)

    @always_inline
    fn vertexAttribP1uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexAttribP1uiv(index, type, normalized, value)

    @always_inline
    fn vertexAttribP2ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertexAttribP2ui(index, type, normalized, value)

    @always_inline
    fn vertexAttribP2uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexAttribP2uiv(index, type, normalized, value)

    @always_inline
    fn vertexAttribP3ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertexAttribP3ui(index, type, normalized, value)

    @always_inline
    fn vertexAttribP3uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexAttribP3uiv(index, type, normalized, value)

    @always_inline
    fn vertexAttribP4ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertexAttribP4ui(index, type, normalized, value)

    @always_inline
    fn vertexAttribP4uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexAttribP4uiv(index, type, normalized, value)

    @always_inline
    fn vertexP2ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertexP2ui(type, value)

    @always_inline
    fn vertexP2uiv(self, type: VertexPointerType, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexP2uiv(type, value)

    @always_inline
    fn vertexP3ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertexP3ui(type, value)

    @always_inline
    fn vertexP3uiv(self, type: VertexPointerType, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexP3uiv(type, value)

    @always_inline
    fn vertexP4ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertexP4ui(type, value)

    @always_inline
    fn vertexP4uiv(self, type: VertexPointerType, value: Ptr[GLuint]):
        return self.gl_version_3_3.vertexP4uiv(type, value)

    @always_inline
    fn beginQueryIndexed(self, target: QueryTarget, index: GLuint, id: GLuint):
        return self.gl_version_4_0.beginQueryIndexed(target, index, id)

    @always_inline
    fn bindTransformFeedback(self, target: BindTransformFeedbackTarget, id: GLuint):
        return self.gl_version_4_0.bindTransformFeedback(target, id)

    @always_inline
    fn blendEquationSeparatei(self, buf: GLuint, modeRGB: BlendEquationModeEXT, modeAlpha: BlendEquationModeEXT):
        return self.gl_version_4_0.blendEquationSeparatei(buf, modeRGB, modeAlpha)

    @always_inline
    fn blendEquationi(self, buf: GLuint, mode: BlendEquationModeEXT):
        return self.gl_version_4_0.blendEquationi(buf, mode)

    @always_inline
    fn blendFuncSeparatei(self, buf: GLuint, srcRGB: BlendingFactor, dstRGB: BlendingFactor, srcAlpha: BlendingFactor, dstAlpha: BlendingFactor):
        return self.gl_version_4_0.blendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha)

    @always_inline
    fn blendFunci(self, buf: GLuint, src: BlendingFactor, dst: BlendingFactor):
        return self.gl_version_4_0.blendFunci(buf, src, dst)

    @always_inline
    fn deleteTransformFeedbacks(self, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_4_0.deleteTransformFeedbacks(n, ids)

    @always_inline
    fn drawArraysIndirect(self, mode: PrimitiveType, indirect: Ptr[NoneType]):
        return self.gl_version_4_0.drawArraysIndirect(mode, indirect)

    @always_inline
    fn drawElementsIndirect(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType]):
        return self.gl_version_4_0.drawElementsIndirect(mode, type, indirect)

    @always_inline
    fn drawTransformFeedback(self, mode: PrimitiveType, id: GLuint):
        return self.gl_version_4_0.drawTransformFeedback(mode, id)

    @always_inline
    fn drawTransformFeedbackStream(self, mode: PrimitiveType, id: GLuint, stream: GLuint):
        return self.gl_version_4_0.drawTransformFeedbackStream(mode, id, stream)

    @always_inline
    fn endQueryIndexed(self, target: QueryTarget, index: GLuint):
        return self.gl_version_4_0.endQueryIndexed(target, index)

    @always_inline
    fn genTransformFeedbacks(self, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_4_0.genTransformFeedbacks(n, ids)

    @always_inline
    fn getActiveSubroutineName(self, program: GLuint, shadertype: ShaderType, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar]):
        return self.gl_version_4_0.getActiveSubroutineName(program, shadertype, index, bufSize, length, name)

    @always_inline
    fn getActiveSubroutineUniformName(self, program: GLuint, shadertype: ShaderType, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar]):
        return self.gl_version_4_0.getActiveSubroutineUniformName(program, shadertype, index, bufSize, length, name)

    @always_inline
    fn getActiveSubroutineUniformiv(self, program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint]):
        return self.gl_version_4_0.getActiveSubroutineUniformiv(program, shadertype, index, pname, values)

    @always_inline
    fn getProgramStageiv(self, program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint]):
        return self.gl_version_4_0.getProgramStageiv(program, shadertype, pname, values)

    @always_inline
    fn getQueryIndexediv(self, target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint]):
        return self.gl_version_4_0.getQueryIndexediv(target, index, pname, params)

    @always_inline
    fn getSubroutineIndex(self, program: GLuint, shadertype: ShaderType, name: Ptr[GLchar]) -> GLuint:
        return self.gl_version_4_0.getSubroutineIndex(program, shadertype, name)

    @always_inline
    fn getSubroutineUniformLocation(self, program: GLuint, shadertype: ShaderType, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_4_0.getSubroutineUniformLocation(program, shadertype, name)

    @always_inline
    fn getUniformSubroutineuiv(self, shadertype: ShaderType, location: GLint, params: Ptr[GLuint]):
        return self.gl_version_4_0.getUniformSubroutineuiv(shadertype, location, params)

    @always_inline
    fn getUniformdv(self, program: GLuint, location: GLint, params: Ptr[GLdouble]):
        return self.gl_version_4_0.getUniformdv(program, location, params)

    @always_inline
    fn isTransformFeedback(self, id: GLuint) -> GLboolean:
        return self.gl_version_4_0.isTransformFeedback(id)

    @always_inline
    fn minSampleShading(self, value: GLfloat):
        return self.gl_version_4_0.minSampleShading(value)

    @always_inline
    fn patchParameterfv(self, pname: PatchParameterName, values: Ptr[GLfloat]):
        return self.gl_version_4_0.patchParameterfv(pname, values)

    @always_inline
    fn patchParameteri(self, pname: PatchParameterName, value: GLint):
        return self.gl_version_4_0.patchParameteri(pname, value)

    @always_inline
    fn pauseTransformFeedback(self):
        return self.gl_version_4_0.pauseTransformFeedback()

    @always_inline
    fn resumeTransformFeedback(self):
        return self.gl_version_4_0.resumeTransformFeedback()

    @always_inline
    fn uniform1d(self, location: GLint, x: GLdouble):
        return self.gl_version_4_0.uniform1d(location, x)

    @always_inline
    fn uniform1dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniform1dv(location, count, value)

    @always_inline
    fn uniform2d(self, location: GLint, x: GLdouble, y: GLdouble):
        return self.gl_version_4_0.uniform2d(location, x, y)

    @always_inline
    fn uniform2dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniform2dv(location, count, value)

    @always_inline
    fn uniform3d(self, location: GLint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_4_0.uniform3d(location, x, y, z)

    @always_inline
    fn uniform3dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniform3dv(location, count, value)

    @always_inline
    fn uniform4d(self, location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_4_0.uniform4d(location, x, y, z, w)

    @always_inline
    fn uniform4dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniform4dv(location, count, value)

    @always_inline
    fn uniformMatrix2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix2dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix2x3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix2x3dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix2x4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix2x4dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix3dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3x2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix3x2dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix3x4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix3x4dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix4dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4x2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix4x2dv(location, count, transpose, value)

    @always_inline
    fn uniformMatrix4x3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_0.uniformMatrix4x3dv(location, count, transpose, value)

    @always_inline
    fn uniformSubroutinesuiv(self, shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint]):
        return self.gl_version_4_0.uniformSubroutinesuiv(shadertype, count, indices)

    @always_inline
    fn activeShaderProgram(self, pipeline: GLuint, program: GLuint):
        return self.gl_version_4_1.activeShaderProgram(pipeline, program)

    @always_inline
    fn bindProgramPipeline(self, pipeline: GLuint):
        return self.gl_version_4_1.bindProgramPipeline(pipeline)

    @always_inline
    fn clearDepthf(self, d: GLfloat):
        return self.gl_version_4_1.clearDepthf(d)

    @always_inline
    fn createShaderProgramv(self, type: ShaderType, count: GLsizei, strings: Ptr[GLchar]) -> GLuint:
        return self.gl_version_4_1.createShaderProgramv(type, count, strings)

    @always_inline
    fn deleteProgramPipelines(self, n: GLsizei, pipelines: Ptr[GLuint]):
        return self.gl_version_4_1.deleteProgramPipelines(n, pipelines)

    @always_inline
    fn depthRangeArrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLdouble]):
        return self.gl_version_4_1.depthRangeArrayv(first, count, v)

    @always_inline
    fn depthRangeIndexed(self, index: GLuint, n: GLdouble, f: GLdouble):
        return self.gl_version_4_1.depthRangeIndexed(index, n, f)

    @always_inline
    fn depthRangef(self, n: GLfloat, f: GLfloat):
        return self.gl_version_4_1.depthRangef(n, f)

    @always_inline
    fn genProgramPipelines(self, n: GLsizei, pipelines: Ptr[GLuint]):
        return self.gl_version_4_1.genProgramPipelines(n, pipelines)

    @always_inline
    fn getDoublei_v(self, target: GetPName, index: GLuint, data: Ptr[GLdouble]):
        return self.gl_version_4_1.getDoublei_v(target, index, data)

    @always_inline
    fn getFloati_v(self, target: GetPName, index: GLuint, data: Ptr[GLfloat]):
        return self.gl_version_4_1.getFloati_v(target, index, data)

    @always_inline
    fn getProgramBinary(self, program: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], binaryFormat: Ptr[GLenum], binary: Ptr[NoneType]):
        return self.gl_version_4_1.getProgramBinary(program, bufSize, length, binaryFormat, binary)

    @always_inline
    fn getProgramPipelineInfoLog(self, pipeline: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], infoLog: Ptr[GLchar]):
        return self.gl_version_4_1.getProgramPipelineInfoLog(pipeline, bufSize, length, infoLog)

    @always_inline
    fn getProgramPipelineiv(self, pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint]):
        return self.gl_version_4_1.getProgramPipelineiv(pipeline, pname, params)

    @always_inline
    fn getShaderPrecisionFormat(self, shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint], precision: Ptr[GLint]):
        return self.gl_version_4_1.getShaderPrecisionFormat(shadertype, precisiontype, range, precision)

    @always_inline
    fn getVertexAttribLdv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble]):
        return self.gl_version_4_1.getVertexAttribLdv(index, pname, params)

    @always_inline
    fn isProgramPipeline(self, pipeline: GLuint) -> GLboolean:
        return self.gl_version_4_1.isProgramPipeline(pipeline)

    @always_inline
    fn programBinary(self, program: GLuint, binaryFormat: GLenum, binary: Ptr[NoneType], length: GLsizei):
        return self.gl_version_4_1.programBinary(program, binaryFormat, binary, length)

    @always_inline
    fn programParameteri(self, program: GLuint, pname: ProgramParameterPName, value: GLint):
        return self.gl_version_4_1.programParameteri(program, pname, value)

    @always_inline
    fn programUniform1d(self, program: GLuint, location: GLint, v0: GLdouble):
        return self.gl_version_4_1.programUniform1d(program, location, v0)

    @always_inline
    fn programUniform1dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniform1dv(program, location, count, value)

    @always_inline
    fn programUniform1f(self, program: GLuint, location: GLint, v0: GLfloat):
        return self.gl_version_4_1.programUniform1f(program, location, v0)

    @always_inline
    fn programUniform1fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniform1fv(program, location, count, value)

    @always_inline
    fn programUniform1i(self, program: GLuint, location: GLint, v0: GLint):
        return self.gl_version_4_1.programUniform1i(program, location, v0)

    @always_inline
    fn programUniform1iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_4_1.programUniform1iv(program, location, count, value)

    @always_inline
    fn programUniform1ui(self, program: GLuint, location: GLint, v0: GLuint):
        return self.gl_version_4_1.programUniform1ui(program, location, v0)

    @always_inline
    fn programUniform1uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_4_1.programUniform1uiv(program, location, count, value)

    @always_inline
    fn programUniform2d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble):
        return self.gl_version_4_1.programUniform2d(program, location, v0, v1)

    @always_inline
    fn programUniform2dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniform2dv(program, location, count, value)

    @always_inline
    fn programUniform2f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat):
        return self.gl_version_4_1.programUniform2f(program, location, v0, v1)

    @always_inline
    fn programUniform2fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniform2fv(program, location, count, value)

    @always_inline
    fn programUniform2i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint):
        return self.gl_version_4_1.programUniform2i(program, location, v0, v1)

    @always_inline
    fn programUniform2iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_4_1.programUniform2iv(program, location, count, value)

    @always_inline
    fn programUniform2ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint):
        return self.gl_version_4_1.programUniform2ui(program, location, v0, v1)

    @always_inline
    fn programUniform2uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_4_1.programUniform2uiv(program, location, count, value)

    @always_inline
    fn programUniform3d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble):
        return self.gl_version_4_1.programUniform3d(program, location, v0, v1, v2)

    @always_inline
    fn programUniform3dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniform3dv(program, location, count, value)

    @always_inline
    fn programUniform3f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
        return self.gl_version_4_1.programUniform3f(program, location, v0, v1, v2)

    @always_inline
    fn programUniform3fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniform3fv(program, location, count, value)

    @always_inline
    fn programUniform3i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint):
        return self.gl_version_4_1.programUniform3i(program, location, v0, v1, v2)

    @always_inline
    fn programUniform3iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_4_1.programUniform3iv(program, location, count, value)

    @always_inline
    fn programUniform3ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
        return self.gl_version_4_1.programUniform3ui(program, location, v0, v1, v2)

    @always_inline
    fn programUniform3uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_4_1.programUniform3uiv(program, location, count, value)

    @always_inline
    fn programUniform4d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble):
        return self.gl_version_4_1.programUniform4d(program, location, v0, v1, v2, v3)

    @always_inline
    fn programUniform4dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniform4dv(program, location, count, value)

    @always_inline
    fn programUniform4f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
        return self.gl_version_4_1.programUniform4f(program, location, v0, v1, v2, v3)

    @always_inline
    fn programUniform4fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniform4fv(program, location, count, value)

    @always_inline
    fn programUniform4i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
        return self.gl_version_4_1.programUniform4i(program, location, v0, v1, v2, v3)

    @always_inline
    fn programUniform4iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint]):
        return self.gl_version_4_1.programUniform4iv(program, location, count, value)

    @always_inline
    fn programUniform4ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
        return self.gl_version_4_1.programUniform4ui(program, location, v0, v1, v2, v3)

    @always_inline
    fn programUniform4uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint]):
        return self.gl_version_4_1.programUniform4uiv(program, location, count, value)

    @always_inline
    fn programUniformMatrix2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix2dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix2fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix2x3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix2x3dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix2x3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix2x3fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix2x4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix2x4dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix2x4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix2x4fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix3dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix3fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3x2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix3x2dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3x2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix3x2fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3x4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix3x4dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix3x4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix3x4fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix4dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix4fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4x2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix4x2dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4x2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix4x2fv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4x3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble]):
        return self.gl_version_4_1.programUniformMatrix4x3dv(program, location, count, transpose, value)

    @always_inline
    fn programUniformMatrix4x3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat]):
        return self.gl_version_4_1.programUniformMatrix4x3fv(program, location, count, transpose, value)

    @always_inline
    fn releaseShaderCompiler(self):
        return self.gl_version_4_1.releaseShaderCompiler()

    @always_inline
    fn scissorArrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLint]):
        return self.gl_version_4_1.scissorArrayv(first, count, v)

    @always_inline
    fn scissorIndexed(self, index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_1.scissorIndexed(index, left, bottom, width, height)

    @always_inline
    fn scissorIndexedv(self, index: GLuint, v: Ptr[GLint]):
        return self.gl_version_4_1.scissorIndexedv(index, v)

    @always_inline
    fn shaderBinary(self, count: GLsizei, shaders: Ptr[GLuint], binaryFormat: ShaderBinaryFormat, binary: Ptr[NoneType], length: GLsizei):
        return self.gl_version_4_1.shaderBinary(count, shaders, binaryFormat, binary, length)

    @always_inline
    fn useProgramStages(self, pipeline: GLuint, stages: UseProgramStageMask, program: GLuint):
        return self.gl_version_4_1.useProgramStages(pipeline, stages, program)

    @always_inline
    fn validateProgramPipeline(self, pipeline: GLuint):
        return self.gl_version_4_1.validateProgramPipeline(pipeline)

    @always_inline
    fn vertexAttribL1d(self, index: GLuint, x: GLdouble):
        return self.gl_version_4_1.vertexAttribL1d(index, x)

    @always_inline
    fn vertexAttribL1dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_4_1.vertexAttribL1dv(index, v)

    @always_inline
    fn vertexAttribL2d(self, index: GLuint, x: GLdouble, y: GLdouble):
        return self.gl_version_4_1.vertexAttribL2d(index, x, y)

    @always_inline
    fn vertexAttribL2dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_4_1.vertexAttribL2dv(index, v)

    @always_inline
    fn vertexAttribL3d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_4_1.vertexAttribL3d(index, x, y, z)

    @always_inline
    fn vertexAttribL3dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_4_1.vertexAttribL3dv(index, v)

    @always_inline
    fn vertexAttribL4d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_4_1.vertexAttribL4d(index, x, y, z, w)

    @always_inline
    fn vertexAttribL4dv(self, index: GLuint, v: Ptr[GLdouble]):
        return self.gl_version_4_1.vertexAttribL4dv(index, v)

    @always_inline
    fn vertexAttribLPointer(self, index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType]):
        return self.gl_version_4_1.vertexAttribLPointer(index, size, type, stride, pointer)

    @always_inline
    fn viewportArrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLfloat]):
        return self.gl_version_4_1.viewportArrayv(first, count, v)

    @always_inline
    fn viewportIndexedf(self, index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat):
        return self.gl_version_4_1.viewportIndexedf(index, x, y, w, h)

    @always_inline
    fn viewportIndexedfv(self, index: GLuint, v: Ptr[GLfloat]):
        return self.gl_version_4_1.viewportIndexedfv(index, v)

    @always_inline
    fn bindImageTexture(self, unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat):
        return self.gl_version_4_2.bindImageTexture(unit, texture, level, layered, layer, access, format)

    @always_inline
    fn drawArraysInstancedBaseInstance(self, mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint):
        return self.gl_version_4_2.drawArraysInstancedBaseInstance(mode, first, count, instancecount, baseinstance)

    @always_inline
    fn drawElementsInstancedBaseInstance(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, baseinstance: GLuint):
        return self.gl_version_4_2.drawElementsInstancedBaseInstance(mode, count, type, indices, instancecount, baseinstance)

    @always_inline
    fn drawElementsInstancedBaseVertexBaseInstance(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint):
        return self.gl_version_4_2.drawElementsInstancedBaseVertexBaseInstance(mode, count, type, indices, instancecount, basevertex, baseinstance)

    @always_inline
    fn drawTransformFeedbackInstanced(self, mode: PrimitiveType, id: GLuint, instancecount: GLsizei):
        return self.gl_version_4_2.drawTransformFeedbackInstanced(mode, id, instancecount)

    @always_inline
    fn drawTransformFeedbackStreamInstanced(self, mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei):
        return self.gl_version_4_2.drawTransformFeedbackStreamInstanced(mode, id, stream, instancecount)

    @always_inline
    fn getActiveAtomicCounterBufferiv(self, program: GLuint, bufferIndex: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint]):
        return self.gl_version_4_2.getActiveAtomicCounterBufferiv(program, bufferIndex, pname, params)

    @always_inline
    fn getInternalformativ(self, target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint]):
        return self.gl_version_4_2.getInternalformativ(target, internalformat, pname, count, params)

    @always_inline
    fn memoryBarrier(self, barriers: MemoryBarrierMask):
        return self.gl_version_4_2.memoryBarrier(barriers)

    @always_inline
    fn texStorage1D(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
        return self.gl_version_4_2.texStorage1D(target, levels, internalformat, width)

    @always_inline
    fn texStorage2D(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_2.texStorage2D(target, levels, internalformat, width, height)

    @always_inline
    fn texStorage3D(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_2.texStorage3D(target, levels, internalformat, width, height, depth)

    @always_inline
    fn bindVertexBuffer(self, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
        return self.gl_version_4_3.bindVertexBuffer(bindingindex, buffer, offset, stride)

    @always_inline
    fn clearBufferData(self, target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_3.clearBufferData(target, internalformat, format, type, data)

    @always_inline
    fn clearBufferSubData(self, target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_3.clearBufferSubData(target, internalformat, offset, size, format, type, data)

    @always_inline
    fn copyImageSubData(self, srcName: GLuint, srcTarget: CopyImageSubDataTarget, srcLevel: GLint, srcX: GLint, srcY: GLint, srcZ: GLint, dstName: GLuint, dstTarget: CopyImageSubDataTarget, dstLevel: GLint, dstX: GLint, dstY: GLint, dstZ: GLint, srcWidth: GLsizei, srcHeight: GLsizei, srcDepth: GLsizei):
        return self.gl_version_4_3.copyImageSubData(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, srcWidth, srcHeight, srcDepth)

    @always_inline
    fn debugMessageCallback(self, callback: GLDEBUGPROC, userParam: Ptr[NoneType]):
        return self.gl_version_4_3.debugMessageCallback(callback, userParam)

    @always_inline
    fn debugMessageControl(self, source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint], enabled: GLboolean):
        return self.gl_version_4_3.debugMessageControl(source, type, severity, count, ids, enabled)

    @always_inline
    fn debugMessageInsert(self, source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar]):
        return self.gl_version_4_3.debugMessageInsert(source, type, id, severity, length, buf)

    @always_inline
    fn dispatchCompute(self, num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint):
        return self.gl_version_4_3.dispatchCompute(num_groups_x, num_groups_y, num_groups_z)

    @always_inline
    fn dispatchComputeIndirect(self, indirect: GLintptr):
        return self.gl_version_4_3.dispatchComputeIndirect(indirect)

    @always_inline
    fn framebufferParameteri(self, target: FramebufferTarget, pname: FramebufferParameterName, param: GLint):
        return self.gl_version_4_3.framebufferParameteri(target, pname, param)

    @always_inline
    fn getDebugMessageLog(self, count: GLuint, bufSize: GLsizei, sources: DebugSource, types: DebugType, ids: Ptr[GLuint], severities: DebugSeverity, lengths: Ptr[GLsizei], messageLog: Ptr[GLchar]) -> GLuint:
        return self.gl_version_4_3.getDebugMessageLog(count, bufSize, sources, types, ids, severities, lengths, messageLog)

    @always_inline
    fn getFramebufferParameteriv(self, target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint]):
        return self.gl_version_4_3.getFramebufferParameteriv(target, pname, params)

    @always_inline
    fn getInternalformati64v(self, target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64]):
        return self.gl_version_4_3.getInternalformati64v(target, internalformat, pname, count, params)

    @always_inline
    fn getObjectLabel(self, identifier: ObjectIdentifier, name: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], label: Ptr[GLchar]):
        return self.gl_version_4_3.getObjectLabel(identifier, name, bufSize, length, label)

    @always_inline
    fn getObjectPtrLabel(self, ptr: Ptr[NoneType], bufSize: GLsizei, length: Ptr[GLsizei], label: Ptr[GLchar]):
        return self.gl_version_4_3.getObjectPtrLabel(ptr, bufSize, length, label)

    @always_inline
    fn getProgramInterfaceiv(self, program: GLuint, programInterface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint]):
        return self.gl_version_4_3.getProgramInterfaceiv(program, programInterface, pname, params)

    @always_inline
    fn getProgramResourceIndex(self, program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLuint:
        return self.gl_version_4_3.getProgramResourceIndex(program, programInterface, name)

    @always_inline
    fn getProgramResourceLocation(self, program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_4_3.getProgramResourceLocation(program, programInterface, name)

    @always_inline
    fn getProgramResourceLocationIndex(self, program: GLuint, programInterface: ProgramInterface, name: Ptr[GLchar]) -> GLint:
        return self.gl_version_4_3.getProgramResourceLocationIndex(program, programInterface, name)

    @always_inline
    fn getProgramResourceName(self, program: GLuint, programInterface: ProgramInterface, index: GLuint, bufSize: GLsizei, length: Ptr[GLsizei], name: Ptr[GLchar]):
        return self.gl_version_4_3.getProgramResourceName(program, programInterface, index, bufSize, length, name)

    @always_inline
    fn getProgramResourceiv(self, program: GLuint, programInterface: ProgramInterface, index: GLuint, propCount: GLsizei, props: ProgramResourceProperty, count: GLsizei, length: Ptr[GLsizei], params: Ptr[GLint]):
        return self.gl_version_4_3.getProgramResourceiv(program, programInterface, index, propCount, props, count, length, params)

    @always_inline
    fn invalidateBufferData(self, buffer: GLuint):
        return self.gl_version_4_3.invalidateBufferData(buffer)

    @always_inline
    fn invalidateBufferSubData(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_4_3.invalidateBufferSubData(buffer, offset, length)

    @always_inline
    fn invalidateFramebuffer(self, target: FramebufferTarget, numAttachments: GLsizei, attachments: InvalidateFramebufferAttachment):
        return self.gl_version_4_3.invalidateFramebuffer(target, numAttachments, attachments)

    @always_inline
    fn invalidateSubFramebuffer(self, target: FramebufferTarget, numAttachments: GLsizei, attachments: InvalidateFramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_3.invalidateSubFramebuffer(target, numAttachments, attachments, x, y, width, height)

    @always_inline
    fn invalidateTexImage(self, texture: GLuint, level: GLint):
        return self.gl_version_4_3.invalidateTexImage(texture, level)

    @always_inline
    fn invalidateTexSubImage(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_3.invalidateTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth)

    @always_inline
    fn multiDrawArraysIndirect(self, mode: PrimitiveType, indirect: Ptr[NoneType], drawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_3.multiDrawArraysIndirect(mode, indirect, drawcount, stride)

    @always_inline
    fn multiDrawElementsIndirect(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType], drawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_3.multiDrawElementsIndirect(mode, type, indirect, drawcount, stride)

    @always_inline
    fn objectLabel(self, identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar]):
        return self.gl_version_4_3.objectLabel(identifier, name, length, label)

    @always_inline
    fn objectPtrLabel(self, ptr: Ptr[NoneType], length: GLsizei, label: Ptr[GLchar]):
        return self.gl_version_4_3.objectPtrLabel(ptr, length, label)

    @always_inline
    fn popDebugGroup(self):
        return self.gl_version_4_3.popDebugGroup()

    @always_inline
    fn pushDebugGroup(self, source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar]):
        return self.gl_version_4_3.pushDebugGroup(source, id, length, message)

    @always_inline
    fn shaderStorageBlockBinding(self, program: GLuint, storageBlockIndex: GLuint, storageBlockBinding: GLuint):
        return self.gl_version_4_3.shaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding)

    @always_inline
    fn texBufferRange(self, target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_3.texBufferRange(target, internalformat, buffer, offset, size)

    @always_inline
    fn texStorage2DMultisample(self, target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_3.texStorage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn texStorage3DMultisample(self, target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_3.texStorage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn textureView(self, texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint):
        return self.gl_version_4_3.textureView(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)

    @always_inline
    fn vertexAttribBinding(self, attribindex: GLuint, bindingindex: GLuint):
        return self.gl_version_4_3.vertexAttribBinding(attribindex, bindingindex)

    @always_inline
    fn vertexAttribFormat(self, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint):
        return self.gl_version_4_3.vertexAttribFormat(attribindex, size, type, normalized, relativeoffset)

    @always_inline
    fn vertexAttribIFormat(self, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
        return self.gl_version_4_3.vertexAttribIFormat(attribindex, size, type, relativeoffset)

    @always_inline
    fn vertexAttribLFormat(self, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
        return self.gl_version_4_3.vertexAttribLFormat(attribindex, size, type, relativeoffset)

    @always_inline
    fn vertexBindingDivisor(self, bindingindex: GLuint, divisor: GLuint):
        return self.gl_version_4_3.vertexBindingDivisor(bindingindex, divisor)

    @always_inline
    fn bindBuffersBase(self, target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint]):
        return self.gl_version_4_4.bindBuffersBase(target, first, count, buffers)

    @always_inline
    fn bindBuffersRange(self, target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], sizes: Ptr[GLsizeiptr]):
        return self.gl_version_4_4.bindBuffersRange(target, first, count, buffers, offsets, sizes)

    @always_inline
    fn bindImageTextures(self, first: GLuint, count: GLsizei, textures: Ptr[GLuint]):
        return self.gl_version_4_4.bindImageTextures(first, count, textures)

    @always_inline
    fn bindSamplers(self, first: GLuint, count: GLsizei, samplers: Ptr[GLuint]):
        return self.gl_version_4_4.bindSamplers(first, count, samplers)

    @always_inline
    fn bindTextures(self, first: GLuint, count: GLsizei, textures: Ptr[GLuint]):
        return self.gl_version_4_4.bindTextures(first, count, textures)

    @always_inline
    fn bindVertexBuffers(self, first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], strides: Ptr[GLsizei]):
        return self.gl_version_4_4.bindVertexBuffers(first, count, buffers, offsets, strides)

    @always_inline
    fn bufferStorage(self, target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType], flags: BufferStorageMask):
        return self.gl_version_4_4.bufferStorage(target, size, data, flags)

    @always_inline
    fn clearTexImage(self, texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_4.clearTexImage(texture, level, format, type, data)

    @always_inline
    fn clearTexSubImage(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_4.clearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)

    @always_inline
    fn bindTextureUnit(self, unit: GLuint, texture: GLuint):
        return self.gl_version_4_5.bindTextureUnit(unit, texture)

    @always_inline
    fn blitNamedFramebuffer(self, readFramebuffer: GLuint, drawFramebuffer: GLuint, srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
        return self.gl_version_4_5.blitNamedFramebuffer(readFramebuffer, drawFramebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)

    @always_inline
    fn checkNamedFramebufferStatus(self, framebuffer: GLuint, target: FramebufferTarget) -> GLenum:
        return self.gl_version_4_5.checkNamedFramebufferStatus(framebuffer, target)

    @always_inline
    fn clearNamedBufferData(self, buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_5.clearNamedBufferData(buffer, internalformat, format, type, data)

    @always_inline
    fn clearNamedBufferSubData(self, buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType]):
        return self.gl_version_4_5.clearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)

    @always_inline
    fn clearNamedFramebufferfi(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
        return self.gl_version_4_5.clearNamedFramebufferfi(framebuffer, buffer, drawbuffer, depth, stencil)

    @always_inline
    fn clearNamedFramebufferfv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat]):
        return self.gl_version_4_5.clearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clearNamedFramebufferiv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint]):
        return self.gl_version_4_5.clearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clearNamedFramebufferuiv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint]):
        return self.gl_version_4_5.clearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clipControl(self, origin: ClipControlOrigin, depth: ClipControlDepth):
        return self.gl_version_4_5.clipControl(origin, depth)

    @always_inline
    fn compressedTextureSubImage1D(self, texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_4_5.compressedTextureSubImage1D(texture, level, xoffset, width, format, imageSize, data)

    @always_inline
    fn compressedTextureSubImage2D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_4_5.compressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, imageSize, data)

    @always_inline
    fn compressedTextureSubImage3D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, imageSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_4_5.compressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data)

    @always_inline
    fn copyNamedBufferSubData(self, readBuffer: GLuint, writeBuffer: GLuint, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.copyNamedBufferSubData(readBuffer, writeBuffer, readOffset, writeOffset, size)

    @always_inline
    fn copyTextureSubImage1D(self, texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
        return self.gl_version_4_5.copyTextureSubImage1D(texture, level, xoffset, x, y, width)

    @always_inline
    fn copyTextureSubImage2D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.copyTextureSubImage2D(texture, level, xoffset, yoffset, x, y, width, height)

    @always_inline
    fn copyTextureSubImage3D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.copyTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, x, y, width, height)

    @always_inline
    fn createBuffers(self, n: GLsizei, buffers: Ptr[GLuint]):
        return self.gl_version_4_5.createBuffers(n, buffers)

    @always_inline
    fn createFramebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint]):
        return self.gl_version_4_5.createFramebuffers(n, framebuffers)

    @always_inline
    fn createProgramPipelines(self, n: GLsizei, pipelines: Ptr[GLuint]):
        return self.gl_version_4_5.createProgramPipelines(n, pipelines)

    @always_inline
    fn createQueries(self, target: QueryTarget, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_4_5.createQueries(target, n, ids)

    @always_inline
    fn createRenderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint]):
        return self.gl_version_4_5.createRenderbuffers(n, renderbuffers)

    @always_inline
    fn createSamplers(self, n: GLsizei, samplers: Ptr[GLuint]):
        return self.gl_version_4_5.createSamplers(n, samplers)

    @always_inline
    fn createTextures(self, target: TextureTarget, n: GLsizei, textures: Ptr[GLuint]):
        return self.gl_version_4_5.createTextures(target, n, textures)

    @always_inline
    fn createTransformFeedbacks(self, n: GLsizei, ids: Ptr[GLuint]):
        return self.gl_version_4_5.createTransformFeedbacks(n, ids)

    @always_inline
    fn createVertexArrays(self, n: GLsizei, arrays: Ptr[GLuint]):
        return self.gl_version_4_5.createVertexArrays(n, arrays)

    @always_inline
    fn disableVertexArrayAttrib(self, vaobj: GLuint, index: GLuint):
        return self.gl_version_4_5.disableVertexArrayAttrib(vaobj, index)

    @always_inline
    fn enableVertexArrayAttrib(self, vaobj: GLuint, index: GLuint):
        return self.gl_version_4_5.enableVertexArrayAttrib(vaobj, index)

    @always_inline
    fn flushMappedNamedBufferRange(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_4_5.flushMappedNamedBufferRange(buffer, offset, length)

    @always_inline
    fn generateTextureMipmap(self, texture: GLuint):
        return self.gl_version_4_5.generateTextureMipmap(texture)

    @always_inline
    fn getCompressedTextureImage(self, texture: GLuint, level: GLint, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getCompressedTextureImage(texture, level, bufSize, pixels)

    @always_inline
    fn getCompressedTextureSubImage(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, bufSize, pixels)

    @always_inline
    fn getGraphicsResetStatus(self) -> GLenum:
        return self.gl_version_4_5.getGraphicsResetStatus()

    @always_inline
    fn getNamedBufferParameteri64v(self, buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64]):
        return self.gl_version_4_5.getNamedBufferParameteri64v(buffer, pname, params)

    @always_inline
    fn getNamedBufferParameteriv(self, buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint]):
        return self.gl_version_4_5.getNamedBufferParameteriv(buffer, pname, params)

    @always_inline
    fn getNamedBufferPointerv(self, buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[NoneType]):
        return self.gl_version_4_5.getNamedBufferPointerv(buffer, pname, params)

    @always_inline
    fn getNamedBufferSubData(self, buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType]):
        return self.gl_version_4_5.getNamedBufferSubData(buffer, offset, size, data)

    @always_inline
    fn getNamedFramebufferAttachmentParameteriv(self, framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint]):
        return self.gl_version_4_5.getNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params)

    @always_inline
    fn getNamedFramebufferParameteriv(self, framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint]):
        return self.gl_version_4_5.getNamedFramebufferParameteriv(framebuffer, pname, param)

    @always_inline
    fn getNamedRenderbufferParameteriv(self, renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint]):
        return self.gl_version_4_5.getNamedRenderbufferParameteriv(renderbuffer, pname, params)

    @always_inline
    fn getQueryBufferObjecti64v(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.getQueryBufferObjecti64v(id, buffer, pname, offset)

    @always_inline
    fn getQueryBufferObjectiv(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.getQueryBufferObjectiv(id, buffer, pname, offset)

    @always_inline
    fn getQueryBufferObjectui64v(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.getQueryBufferObjectui64v(id, buffer, pname, offset)

    @always_inline
    fn getQueryBufferObjectuiv(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.getQueryBufferObjectuiv(id, buffer, pname, offset)

    @always_inline
    fn getTextureImage(self, texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getTextureImage(texture, level, format, type, bufSize, pixels)

    @always_inline
    fn getTextureLevelParameterfv(self, texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat]):
        return self.gl_version_4_5.getTextureLevelParameterfv(texture, level, pname, params)

    @always_inline
    fn getTextureLevelParameteriv(self, texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_4_5.getTextureLevelParameteriv(texture, level, pname, params)

    @always_inline
    fn getTextureParameterIiv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_4_5.getTextureParameterIiv(texture, pname, params)

    @always_inline
    fn getTextureParameterIuiv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint]):
        return self.gl_version_4_5.getTextureParameterIuiv(texture, pname, params)

    @always_inline
    fn getTextureParameterfv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat]):
        return self.gl_version_4_5.getTextureParameterfv(texture, pname, params)

    @always_inline
    fn getTextureParameteriv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint]):
        return self.gl_version_4_5.getTextureParameteriv(texture, pname, params)

    @always_inline
    fn getTextureSubImage(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, bufSize, pixels)

    @always_inline
    fn getTransformFeedbacki64_v(self, xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64]):
        return self.gl_version_4_5.getTransformFeedbacki64_v(xfb, pname, index, param)

    @always_inline
    fn getTransformFeedbacki_v(self, xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint]):
        return self.gl_version_4_5.getTransformFeedbacki_v(xfb, pname, index, param)

    @always_inline
    fn getTransformFeedbackiv(self, xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint]):
        return self.gl_version_4_5.getTransformFeedbackiv(xfb, pname, param)

    @always_inline
    fn getVertexArrayIndexed64iv(self, vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64]):
        return self.gl_version_4_5.getVertexArrayIndexed64iv(vaobj, index, pname, param)

    @always_inline
    fn getVertexArrayIndexediv(self, vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint]):
        return self.gl_version_4_5.getVertexArrayIndexediv(vaobj, index, pname, param)

    @always_inline
    fn getVertexArrayiv(self, vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint]):
        return self.gl_version_4_5.getVertexArrayiv(vaobj, pname, param)

    @always_inline
    fn getnColorTable(self, target: ColorTableTarget, format: PixelFormat, type: PixelType, bufSize: GLsizei, table: Ptr[NoneType]):
        return self.gl_version_4_5.getnColorTable(target, format, type, bufSize, table)

    @always_inline
    fn getnCompressedTexImage(self, target: TextureTarget, lod: GLint, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getnCompressedTexImage(target, lod, bufSize, pixels)

    @always_inline
    fn getnConvolutionFilter(self, target: ConvolutionTarget, format: PixelFormat, type: PixelType, bufSize: GLsizei, image: Ptr[NoneType]):
        return self.gl_version_4_5.getnConvolutionFilter(target, format, type, bufSize, image)

    @always_inline
    fn getnHistogram(self, target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, bufSize: GLsizei, values: Ptr[NoneType]):
        return self.gl_version_4_5.getnHistogram(target, reset, format, type, bufSize, values)

    @always_inline
    fn getnMapdv(self, target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLdouble]):
        return self.gl_version_4_5.getnMapdv(target, query, bufSize, v)

    @always_inline
    fn getnMapfv(self, target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLfloat]):
        return self.gl_version_4_5.getnMapfv(target, query, bufSize, v)

    @always_inline
    fn getnMapiv(self, target: MapTarget, query: MapQuery, bufSize: GLsizei, v: Ptr[GLint]):
        return self.gl_version_4_5.getnMapiv(target, query, bufSize, v)

    @always_inline
    fn getnMinmax(self, target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, bufSize: GLsizei, values: Ptr[NoneType]):
        return self.gl_version_4_5.getnMinmax(target, reset, format, type, bufSize, values)

    @always_inline
    fn getnPixelMapfv(self, map: PixelMap, bufSize: GLsizei, values: Ptr[GLfloat]):
        return self.gl_version_4_5.getnPixelMapfv(map, bufSize, values)

    @always_inline
    fn getnPixelMapuiv(self, map: PixelMap, bufSize: GLsizei, values: Ptr[GLuint]):
        return self.gl_version_4_5.getnPixelMapuiv(map, bufSize, values)

    @always_inline
    fn getnPixelMapusv(self, map: PixelMap, bufSize: GLsizei, values: Ptr[GLushort]):
        return self.gl_version_4_5.getnPixelMapusv(map, bufSize, values)

    @always_inline
    fn getnPolygonStipple(self, bufSize: GLsizei, pattern: Ptr[GLubyte]):
        return self.gl_version_4_5.getnPolygonStipple(bufSize, pattern)

    @always_inline
    fn getnSeparableFilter(self, target: SeparableTarget, format: PixelFormat, type: PixelType, rowBufSize: GLsizei, row: Ptr[NoneType], columnBufSize: GLsizei, column: Ptr[NoneType], span: Ptr[NoneType]):
        return self.gl_version_4_5.getnSeparableFilter(target, format, type, rowBufSize, row, columnBufSize, column, span)

    @always_inline
    fn getnTexImage(self, target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, bufSize: GLsizei, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.getnTexImage(target, level, format, type, bufSize, pixels)

    @always_inline
    fn getnUniformdv(self, program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLdouble]):
        return self.gl_version_4_5.getnUniformdv(program, location, bufSize, params)

    @always_inline
    fn getnUniformfv(self, program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLfloat]):
        return self.gl_version_4_5.getnUniformfv(program, location, bufSize, params)

    @always_inline
    fn getnUniformiv(self, program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLint]):
        return self.gl_version_4_5.getnUniformiv(program, location, bufSize, params)

    @always_inline
    fn getnUniformuiv(self, program: GLuint, location: GLint, bufSize: GLsizei, params: Ptr[GLuint]):
        return self.gl_version_4_5.getnUniformuiv(program, location, bufSize, params)

    @always_inline
    fn invalidateNamedFramebufferData(self, framebuffer: GLuint, numAttachments: GLsizei, attachments: FramebufferAttachment):
        return self.gl_version_4_5.invalidateNamedFramebufferData(framebuffer, numAttachments, attachments)

    @always_inline
    fn invalidateNamedFramebufferSubData(self, framebuffer: GLuint, numAttachments: GLsizei, attachments: FramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.invalidateNamedFramebufferSubData(framebuffer, numAttachments, attachments, x, y, width, height)

    @always_inline
    fn mapNamedBuffer(self, buffer: GLuint, access: BufferAccessARB):
        return self.gl_version_4_5.mapNamedBuffer(buffer, access)

    @always_inline
    fn mapNamedBufferRange(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
        return self.gl_version_4_5.mapNamedBufferRange(buffer, offset, length, access)

    @always_inline
    fn memoryBarrierByRegion(self, barriers: MemoryBarrierMask):
        return self.gl_version_4_5.memoryBarrierByRegion(barriers)

    @always_inline
    fn namedBufferData(self, buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType], usage: VertexBufferObjectUsage):
        return self.gl_version_4_5.namedBufferData(buffer, size, data, usage)

    @always_inline
    fn namedBufferStorage(self, buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType], flags: BufferStorageMask):
        return self.gl_version_4_5.namedBufferStorage(buffer, size, data, flags)

    @always_inline
    fn namedBufferSubData(self, buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType]):
        return self.gl_version_4_5.namedBufferSubData(buffer, offset, size, data)

    @always_inline
    fn namedFramebufferDrawBuffer(self, framebuffer: GLuint, buf: ColorBuffer):
        return self.gl_version_4_5.namedFramebufferDrawBuffer(framebuffer, buf)

    @always_inline
    fn namedFramebufferDrawBuffers(self, framebuffer: GLuint, n: GLsizei, bufs: ColorBuffer):
        return self.gl_version_4_5.namedFramebufferDrawBuffers(framebuffer, n, bufs)

    @always_inline
    fn namedFramebufferParameteri(self, framebuffer: GLuint, pname: FramebufferParameterName, param: GLint):
        return self.gl_version_4_5.namedFramebufferParameteri(framebuffer, pname, param)

    @always_inline
    fn namedFramebufferReadBuffer(self, framebuffer: GLuint, src: ColorBuffer):
        return self.gl_version_4_5.namedFramebufferReadBuffer(framebuffer, src)

    @always_inline
    fn namedFramebufferRenderbuffer(self, framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_4_5.namedFramebufferRenderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer)

    @always_inline
    fn namedFramebufferTexture(self, framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
        return self.gl_version_4_5.namedFramebufferTexture(framebuffer, attachment, texture, level)

    @always_inline
    fn namedFramebufferTextureLayer(self, framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
        return self.gl_version_4_5.namedFramebufferTextureLayer(framebuffer, attachment, texture, level, layer)

    @always_inline
    fn namedRenderbufferStorage(self, renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.namedRenderbufferStorage(renderbuffer, internalformat, width, height)

    @always_inline
    fn namedRenderbufferStorageMultisample(self, renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.namedRenderbufferStorageMultisample(renderbuffer, samples, internalformat, width, height)

    @always_inline
    fn readnPixels(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, bufSize: GLsizei, data: Ptr[NoneType]):
        return self.gl_version_4_5.readnPixels(x, y, width, height, format, type, bufSize, data)

    @always_inline
    fn textureBarrier(self):
        return self.gl_version_4_5.textureBarrier()

    @always_inline
    fn textureBuffer(self, texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint):
        return self.gl_version_4_5.textureBuffer(texture, internalformat, buffer)

    @always_inline
    fn textureBufferRange(self, texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.textureBufferRange(texture, internalformat, buffer, offset, size)

    @always_inline
    fn textureParameterIiv(self, texture: GLuint, pname: TextureParameterName, params: Ptr[GLint]):
        return self.gl_version_4_5.textureParameterIiv(texture, pname, params)

    @always_inline
    fn textureParameterIuiv(self, texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint]):
        return self.gl_version_4_5.textureParameterIuiv(texture, pname, params)

    @always_inline
    fn textureParameterf(self, texture: GLuint, pname: TextureParameterName, param: GLfloat):
        return self.gl_version_4_5.textureParameterf(texture, pname, param)

    @always_inline
    fn textureParameterfv(self, texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat]):
        return self.gl_version_4_5.textureParameterfv(texture, pname, param)

    @always_inline
    fn textureParameteri(self, texture: GLuint, pname: TextureParameterName, param: GLint):
        return self.gl_version_4_5.textureParameteri(texture, pname, param)

    @always_inline
    fn textureParameteriv(self, texture: GLuint, pname: TextureParameterName, param: Ptr[GLint]):
        return self.gl_version_4_5.textureParameteriv(texture, pname, param)

    @always_inline
    fn textureStorage1D(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
        return self.gl_version_4_5.textureStorage1D(texture, levels, internalformat, width)

    @always_inline
    fn textureStorage2D(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.textureStorage2D(texture, levels, internalformat, width, height)

    @always_inline
    fn textureStorage2DMultisample(self, texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_5.textureStorage2DMultisample(texture, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn textureStorage3D(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_5.textureStorage3D(texture, levels, internalformat, width, height, depth)

    @always_inline
    fn textureStorage3DMultisample(self, texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_5.textureStorage3DMultisample(texture, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn textureSubImage1D(self, texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.textureSubImage1D(texture, level, xoffset, width, format, type, pixels)

    @always_inline
    fn textureSubImage2D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.textureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)

    @always_inline
    fn textureSubImage3D(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType]):
        return self.gl_version_4_5.textureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)

    @always_inline
    fn transformFeedbackBufferBase(self, xfb: GLuint, index: GLuint, buffer: GLuint):
        return self.gl_version_4_5.transformFeedbackBufferBase(xfb, index, buffer)

    @always_inline
    fn transformFeedbackBufferRange(self, xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.transformFeedbackBufferRange(xfb, index, buffer, offset, size)

    @always_inline
    fn unmapNamedBuffer(self, buffer: GLuint) -> GLboolean:
        return self.gl_version_4_5.unmapNamedBuffer(buffer)

    @always_inline
    fn vertexArrayAttribBinding(self, vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint):
        return self.gl_version_4_5.vertexArrayAttribBinding(vaobj, attribindex, bindingindex)

    @always_inline
    fn vertexArrayAttribFormat(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint):
        return self.gl_version_4_5.vertexArrayAttribFormat(vaobj, attribindex, size, type, normalized, relativeoffset)

    @always_inline
    fn vertexArrayAttribIFormat(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
        return self.gl_version_4_5.vertexArrayAttribIFormat(vaobj, attribindex, size, type, relativeoffset)

    @always_inline
    fn vertexArrayAttribLFormat(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
        return self.gl_version_4_5.vertexArrayAttribLFormat(vaobj, attribindex, size, type, relativeoffset)

    @always_inline
    fn vertexArrayBindingDivisor(self, vaobj: GLuint, bindingindex: GLuint, divisor: GLuint):
        return self.gl_version_4_5.vertexArrayBindingDivisor(vaobj, bindingindex, divisor)

    @always_inline
    fn vertexArrayElementBuffer(self, vaobj: GLuint, buffer: GLuint):
        return self.gl_version_4_5.vertexArrayElementBuffer(vaobj, buffer)

    @always_inline
    fn vertexArrayVertexBuffer(self, vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
        return self.gl_version_4_5.vertexArrayVertexBuffer(vaobj, bindingindex, buffer, offset, stride)

    @always_inline
    fn vertexArrayVertexBuffers(self, vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint], offsets: Ptr[GLintptr], strides: Ptr[GLsizei]):
        return self.gl_version_4_5.vertexArrayVertexBuffers(vaobj, first, count, buffers, offsets, strides)

    @always_inline
    fn multiDrawArraysIndirectCount(self, mode: PrimitiveType, indirect: Ptr[NoneType], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_6.multiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride)

    @always_inline
    fn multiDrawElementsIndirectCount(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_6.multiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride)

    @always_inline
    fn polygonOffsetClamp(self, factor: GLfloat, units: GLfloat, clamp: GLfloat):
        return self.gl_version_4_6.polygonOffsetClamp(factor, units, clamp)

    @always_inline
    fn specializeShader(self, shader: GLuint, pEntryPoint: Ptr[GLchar], numSpecializationConstants: GLuint, pConstantIndex: Ptr[GLuint], pConstantValue: Ptr[GLuint]):
        return self.gl_version_4_6.specializeShader(shader, pEntryPoint, numSpecializationConstants, pConstantIndex, pConstantValue)
