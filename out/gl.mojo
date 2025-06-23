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


@fieldwise_init
@register_passable("trivial")
struct AttributeType:
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


@fieldwise_init
@register_passable("trivial")
struct BindTransformFeedbackTarget:
    var value: GLenum

    alias TRANSFORM_FEEDBACK = BindTransformFeedbackTarget(0x8E22)


@fieldwise_init
@register_passable("trivial")
struct BlendEquationModeEXT:
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


@fieldwise_init
@register_passable("trivial")
struct BlendingFactor:
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


@fieldwise_init
@register_passable("trivial")
struct BlitFramebufferFilter:
    var value: GLenum

    alias NEAREST = BlitFramebufferFilter(0x2600)
    alias LINEAR = BlitFramebufferFilter(0x2601)


@fieldwise_init
@register_passable("trivial")
struct Buffer:
    var value: GLenum

    alias COLOR = Buffer(0x1800)
    alias DEPTH = Buffer(0x1801)
    alias STENCIL = Buffer(0x1802)


@fieldwise_init
@register_passable("trivial")
struct BufferAccessARB:
    var value: GLenum

    alias READ_ONLY = BufferAccessARB(0x88B8)
    alias WRITE_ONLY = BufferAccessARB(0x88B9)
    alias READ_WRITE = BufferAccessARB(0x88BA)


@fieldwise_init
@register_passable("trivial")
struct BufferPNameARB:
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


@fieldwise_init
@register_passable("trivial")
struct BufferPointerNameARB:
    var value: GLenum

    alias BUFFER_MAP_POINTER = BufferPointerNameARB(0x88BD)
    alias BUFFER_MAP_POINTER_ARB = BufferPointerNameARB(0x88BD)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageMask:
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
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageTarget:
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


@fieldwise_init
@register_passable("trivial")
struct BufferTargetARB:
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


@fieldwise_init
@register_passable("trivial")
struct BufferUsageARB:
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


@fieldwise_init
@register_passable("trivial")
struct ClampColorModeARB:
    var value: GLenum

    alias FALSE = ClampColorModeARB(0)
    alias TRUE = ClampColorModeARB(1)
    alias FIXED_ONLY = ClampColorModeARB(0x891D)
    alias FIXED_ONLY_ARB = ClampColorModeARB(0x891D)


@fieldwise_init
@register_passable("trivial")
struct ClampColorTargetARB:
    var value: GLenum

    alias CLAMP_VERTEX_COLOR_ARB = ClampColorTargetARB(0x891A)
    alias CLAMP_FRAGMENT_COLOR_ARB = ClampColorTargetARB(0x891B)
    alias CLAMP_READ_COLOR = ClampColorTargetARB(0x891C)
    alias CLAMP_READ_COLOR_ARB = ClampColorTargetARB(0x891C)


@fieldwise_init
@register_passable("trivial")
struct ClearBufferMask:
    var value: GLbitfield

    alias DEPTH_BUFFER_BIT = ClearBufferMask(0x00000100)
    alias ACCUM_BUFFER_BIT = ClearBufferMask(0x00000200)
    alias STENCIL_BUFFER_BIT = ClearBufferMask(0x00000400)
    alias COLOR_BUFFER_BIT = ClearBufferMask(0x00004000)
    alias COVERAGE_BUFFER_BIT_NV = ClearBufferMask(0x00008000)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlDepth:
    var value: GLenum

    alias NEGATIVE_ONE_TO_ONE = ClipControlDepth(0x935E)
    alias ZERO_TO_ONE = ClipControlDepth(0x935F)


@fieldwise_init
@register_passable("trivial")
struct ClipControlOrigin:
    var value: GLenum

    alias LOWER_LEFT = ClipControlOrigin(0x8CA1)
    alias UPPER_LEFT = ClipControlOrigin(0x8CA2)


@fieldwise_init
@register_passable("trivial")
struct ColorBuffer:
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


@fieldwise_init
@register_passable("trivial")
struct ColorPointerType:
    var value: GLenum

    alias BYTE = ColorPointerType(0x1400)
    alias UNSIGNED_BYTE = ColorPointerType(0x1401)
    alias SHORT = ColorPointerType(0x1402)
    alias UNSIGNED_SHORT = ColorPointerType(0x1403)
    alias INT = ColorPointerType(0x1404)
    alias UNSIGNED_INT = ColorPointerType(0x1405)
    alias FLOAT = ColorPointerType(0x1406)
    alias DOUBLE = ColorPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct ColorTableTarget:
    var value: GLenum

    alias COLOR_TABLE = ColorTableTarget(0x80D0)
    alias POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D1)
    alias POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D2)
    alias PROXY_COLOR_TABLE = ColorTableTarget(0x80D3)
    alias PROXY_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D4)
    alias PROXY_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D5)


@fieldwise_init
@register_passable("trivial")
struct ConditionalRenderMode:
    var value: GLenum

    alias QUERY_WAIT = ConditionalRenderMode(0x8E13)
    alias QUERY_NO_WAIT = ConditionalRenderMode(0x8E14)
    alias QUERY_BY_REGION_WAIT = ConditionalRenderMode(0x8E15)
    alias QUERY_BY_REGION_NO_WAIT = ConditionalRenderMode(0x8E16)
    alias QUERY_WAIT_INVERTED = ConditionalRenderMode(0x8E17)
    alias QUERY_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E18)
    alias QUERY_BY_REGION_WAIT_INVERTED = ConditionalRenderMode(0x8E19)
    alias QUERY_BY_REGION_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E1A)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTarget:
    var value: GLenum

    alias CONVOLUTION_1D = ConvolutionTarget(0x8010)
    alias CONVOLUTION_2D = ConvolutionTarget(0x8011)


@fieldwise_init
@register_passable("trivial")
struct CopyBufferSubDataTarget:
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


@fieldwise_init
@register_passable("trivial")
struct CopyImageSubDataTarget:
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


@fieldwise_init
@register_passable("trivial")
struct DebugSeverity:
    var value: GLenum

    alias DONT_CARE = DebugSeverity(0x1100)
    alias DEBUG_SEVERITY_NOTIFICATION = DebugSeverity(0x826B)
    alias DEBUG_SEVERITY_HIGH = DebugSeverity(0x9146)
    alias DEBUG_SEVERITY_MEDIUM = DebugSeverity(0x9147)
    alias DEBUG_SEVERITY_LOW = DebugSeverity(0x9148)


@fieldwise_init
@register_passable("trivial")
struct DebugSource:
    var value: GLenum

    alias DONT_CARE = DebugSource(0x1100)
    alias DEBUG_SOURCE_API = DebugSource(0x8246)
    alias DEBUG_SOURCE_WINDOW_SYSTEM = DebugSource(0x8247)
    alias DEBUG_SOURCE_SHADER_COMPILER = DebugSource(0x8248)
    alias DEBUG_SOURCE_THIRD_PARTY = DebugSource(0x8249)
    alias DEBUG_SOURCE_APPLICATION = DebugSource(0x824A)
    alias DEBUG_SOURCE_OTHER = DebugSource(0x824B)


@fieldwise_init
@register_passable("trivial")
struct DebugType:
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


@fieldwise_init
@register_passable("trivial")
struct DepthFunction:
    var value: GLenum

    alias NEVER = DepthFunction(0x0200)
    alias LESS = DepthFunction(0x0201)
    alias EQUAL = DepthFunction(0x0202)
    alias LEQUAL = DepthFunction(0x0203)
    alias GREATER = DepthFunction(0x0204)
    alias NOTEQUAL = DepthFunction(0x0205)
    alias GEQUAL = DepthFunction(0x0206)
    alias ALWAYS = DepthFunction(0x0207)


@fieldwise_init
@register_passable("trivial")
struct DrawBufferMode:
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


@fieldwise_init
@register_passable("trivial")
struct DrawElementsType:
    var value: GLenum

    alias UNSIGNED_BYTE = DrawElementsType(0x1401)
    alias UNSIGNED_SHORT = DrawElementsType(0x1403)
    alias UNSIGNED_INT = DrawElementsType(0x1405)


@fieldwise_init
@register_passable("trivial")
struct EnableCap:
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


@fieldwise_init
@register_passable("trivial")
struct ErrorCode:
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


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachment:
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


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachmentParameterName:
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


@fieldwise_init
@register_passable("trivial")
struct FramebufferParameterName:
    var value: GLenum

    alias FRAMEBUFFER_DEFAULT_WIDTH = FramebufferParameterName(0x9310)
    alias FRAMEBUFFER_DEFAULT_HEIGHT = FramebufferParameterName(0x9311)
    alias FRAMEBUFFER_DEFAULT_LAYERS = FramebufferParameterName(0x9312)
    alias FRAMEBUFFER_DEFAULT_SAMPLES = FramebufferParameterName(0x9313)
    alias FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FramebufferParameterName(0x9314)


@fieldwise_init
@register_passable("trivial")
struct FramebufferStatus:
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


@fieldwise_init
@register_passable("trivial")
struct FramebufferTarget:
    var value: GLenum

    alias READ_FRAMEBUFFER = FramebufferTarget(0x8CA8)
    alias DRAW_FRAMEBUFFER = FramebufferTarget(0x8CA9)
    alias FRAMEBUFFER = FramebufferTarget(0x8D40)
    alias FRAMEBUFFER_OES = FramebufferTarget(0x8D40)


@fieldwise_init
@register_passable("trivial")
struct FrontFaceDirection:
    var value: GLenum

    alias CW = FrontFaceDirection(0x0900)
    alias CCW = FrontFaceDirection(0x0901)


@fieldwise_init
@register_passable("trivial")
struct GetFramebufferParameter:
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


@fieldwise_init
@register_passable("trivial")
struct GetMultisamplePNameNV:
    var value: GLenum

    alias SAMPLE_POSITION = GetMultisamplePNameNV(0x8E50)
    alias SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x8E50)
    alias PROGRAMMABLE_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x9341)


@fieldwise_init
@register_passable("trivial")
struct GetPName:
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


@fieldwise_init
@register_passable("trivial")
struct GetTextureParameter:
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


@fieldwise_init
@register_passable("trivial")
struct GraphicsResetStatus:
    var value: GLenum

    alias NO_ERROR = GraphicsResetStatus(0)
    alias GUILTY_CONTEXT_RESET = GraphicsResetStatus(0x8253)
    alias INNOCENT_CONTEXT_RESET = GraphicsResetStatus(0x8254)
    alias UNKNOWN_CONTEXT_RESET = GraphicsResetStatus(0x8255)


@fieldwise_init
@register_passable("trivial")
struct HintMode:
    var value: GLenum

    alias DONT_CARE = HintMode(0x1100)
    alias FASTEST = HintMode(0x1101)
    alias NICEST = HintMode(0x1102)


@fieldwise_init
@register_passable("trivial")
struct HintTarget:
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


@fieldwise_init
@register_passable("trivial")
struct HistogramTarget:
    var value: GLenum

    alias HISTOGRAM = HistogramTarget(0x8024)
    alias PROXY_HISTOGRAM = HistogramTarget(0x8025)


@fieldwise_init
@register_passable("trivial")
struct InternalFormat:
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


@fieldwise_init
@register_passable("trivial")
struct InternalFormatPName:
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


@fieldwise_init
@register_passable("trivial")
struct InvalidateFramebufferAttachment:
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


@fieldwise_init
@register_passable("trivial")
struct LogicOp:
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


@fieldwise_init
@register_passable("trivial")
struct MapBufferAccessMask:
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
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MapQuery:
    var value: GLenum

    alias COEFF = MapQuery(0x0A00)
    alias ORDER = MapQuery(0x0A01)
    alias DOMAIN = MapQuery(0x0A02)


@fieldwise_init
@register_passable("trivial")
struct MapTarget:
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


@fieldwise_init
@register_passable("trivial")
struct MemoryBarrierMask:
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
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MinmaxTarget:
    var value: GLenum

    alias MINMAX = MinmaxTarget(0x802E)


@fieldwise_init
@register_passable("trivial")
struct NormalPointerType:
    var value: GLenum

    alias BYTE = NormalPointerType(0x1400)
    alias SHORT = NormalPointerType(0x1402)
    alias INT = NormalPointerType(0x1404)
    alias FLOAT = NormalPointerType(0x1406)
    alias DOUBLE = NormalPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct ObjectIdentifier:
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


@fieldwise_init
@register_passable("trivial")
struct PatchParameterName:
    var value: GLenum

    alias PATCH_VERTICES = PatchParameterName(0x8E72)
    alias PATCH_DEFAULT_INNER_LEVEL = PatchParameterName(0x8E73)
    alias PATCH_DEFAULT_OUTER_LEVEL = PatchParameterName(0x8E74)


@fieldwise_init
@register_passable("trivial")
struct PipelineParameterName:
    var value: GLenum

    alias ACTIVE_PROGRAM = PipelineParameterName(0x8259)
    alias FRAGMENT_SHADER = PipelineParameterName(0x8B30)
    alias VERTEX_SHADER = PipelineParameterName(0x8B31)
    alias INFO_LOG_LENGTH = PipelineParameterName(0x8B84)
    alias GEOMETRY_SHADER = PipelineParameterName(0x8DD9)
    alias TESS_EVALUATION_SHADER = PipelineParameterName(0x8E87)
    alias TESS_CONTROL_SHADER = PipelineParameterName(0x8E88)


@fieldwise_init
@register_passable("trivial")
struct PixelFormat:
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


@fieldwise_init
@register_passable("trivial")
struct PixelMap:
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


@fieldwise_init
@register_passable("trivial")
struct PixelStoreParameter:
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


@fieldwise_init
@register_passable("trivial")
struct PixelType:
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


@fieldwise_init
@register_passable("trivial")
struct PointParameterNameARB:
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


@fieldwise_init
@register_passable("trivial")
struct PolygonMode:
    var value: GLenum

    alias POINT = PolygonMode(0x1B00)
    alias LINE = PolygonMode(0x1B01)
    alias FILL = PolygonMode(0x1B02)


@fieldwise_init
@register_passable("trivial")
struct PrecisionType:
    var value: GLenum

    alias LOW_FLOAT = PrecisionType(0x8DF0)
    alias MEDIUM_FLOAT = PrecisionType(0x8DF1)
    alias HIGH_FLOAT = PrecisionType(0x8DF2)
    alias LOW_INT = PrecisionType(0x8DF3)
    alias MEDIUM_INT = PrecisionType(0x8DF4)
    alias HIGH_INT = PrecisionType(0x8DF5)


@fieldwise_init
@register_passable("trivial")
struct PrimitiveType:
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


@fieldwise_init
@register_passable("trivial")
struct ProgramInterface:
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


@fieldwise_init
@register_passable("trivial")
struct ProgramInterfacePName:
    var value: GLenum

    alias ACTIVE_RESOURCES = ProgramInterfacePName(0x92F5)
    alias MAX_NAME_LENGTH = ProgramInterfacePName(0x92F6)
    alias MAX_NUM_ACTIVE_VARIABLES = ProgramInterfacePName(0x92F7)
    alias MAX_NUM_COMPATIBLE_SUBROUTINES = ProgramInterfacePName(0x92F8)


@fieldwise_init
@register_passable("trivial")
struct ProgramParameterPName:
    var value: GLenum

    alias PROGRAM_BINARY_RETRIEVABLE_HINT = ProgramParameterPName(0x8257)
    alias PROGRAM_SEPARABLE = ProgramParameterPName(0x8258)


@fieldwise_init
@register_passable("trivial")
struct ProgramPropertyARB:
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


@fieldwise_init
@register_passable("trivial")
struct ProgramResourceProperty:
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


@fieldwise_init
@register_passable("trivial")
struct ProgramStagePName:
    var value: GLenum

    alias ACTIVE_SUBROUTINES = ProgramStagePName(0x8DE5)
    alias ACTIVE_SUBROUTINE_UNIFORMS = ProgramStagePName(0x8DE6)
    alias ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = ProgramStagePName(0x8E47)
    alias ACTIVE_SUBROUTINE_MAX_LENGTH = ProgramStagePName(0x8E48)
    alias ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ProgramStagePName(0x8E49)


@fieldwise_init
@register_passable("trivial")
struct QueryCounterTarget:
    var value: GLenum

    alias TIMESTAMP = QueryCounterTarget(0x8E28)
    alias TIMESTAMP_EXT = QueryCounterTarget(0x8E28)


@fieldwise_init
@register_passable("trivial")
struct QueryObjectParameterName:
    var value: GLenum

    alias QUERY_TARGET = QueryObjectParameterName(0x82EA)
    alias QUERY_RESULT = QueryObjectParameterName(0x8866)
    alias QUERY_RESULT_AVAILABLE = QueryObjectParameterName(0x8867)
    alias QUERY_RESULT_NO_WAIT = QueryObjectParameterName(0x9194)


@fieldwise_init
@register_passable("trivial")
struct QueryParameterName:
    var value: GLenum

    alias QUERY_COUNTER_BITS = QueryParameterName(0x8864)
    alias CURRENT_QUERY = QueryParameterName(0x8865)


@fieldwise_init
@register_passable("trivial")
struct QueryTarget:
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


@fieldwise_init
@register_passable("trivial")
struct ReadBufferMode:
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


@fieldwise_init
@register_passable("trivial")
struct RenderbufferParameterName:
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


@fieldwise_init
@register_passable("trivial")
struct RenderbufferTarget:
    var value: GLenum

    alias RENDERBUFFER = RenderbufferTarget(0x8D41)
    alias RENDERBUFFER_OES = RenderbufferTarget(0x8D41)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterF:
    var value: GLenum

    alias TEXTURE_BORDER_COLOR = SamplerParameterF(0x1004)
    alias TEXTURE_MIN_LOD = SamplerParameterF(0x813A)
    alias TEXTURE_MAX_LOD = SamplerParameterF(0x813B)
    alias TEXTURE_MAX_ANISOTROPY = SamplerParameterF(0x84FE)
    alias TEXTURE_LOD_BIAS = SamplerParameterF(0x8501)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterF(0x8F6A)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterI:
    var value: GLenum

    alias TEXTURE_MAG_FILTER = SamplerParameterI(0x2800)
    alias TEXTURE_MIN_FILTER = SamplerParameterI(0x2801)
    alias TEXTURE_WRAP_S = SamplerParameterI(0x2802)
    alias TEXTURE_WRAP_T = SamplerParameterI(0x2803)
    alias TEXTURE_WRAP_R = SamplerParameterI(0x8072)
    alias TEXTURE_COMPARE_MODE = SamplerParameterI(0x884C)
    alias TEXTURE_COMPARE_FUNC = SamplerParameterI(0x884D)
    alias TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterI(0x8F6A)


@fieldwise_init
@register_passable("trivial")
struct SeparableTarget:
    var value: GLenum

    alias SEPARABLE_2D = SeparableTarget(0x8012)


@fieldwise_init
@register_passable("trivial")
struct ShaderBinaryFormat:
    var value: GLenum

    alias SGX_BINARY_IMG = ShaderBinaryFormat(0x8C0A)
    alias MALI_SHADER_BINARY_ARM = ShaderBinaryFormat(0x8F60)
    alias SHADER_BINARY_VIV = ShaderBinaryFormat(0x8FC4)
    alias SHADER_BINARY_DMP = ShaderBinaryFormat(0x9250)
    alias GCCSO_SHADER_BINARY_FJ = ShaderBinaryFormat(0x9260)
    alias SHADER_BINARY_FORMAT_SPIR_V = ShaderBinaryFormat(0x9551)


@fieldwise_init
@register_passable("trivial")
struct ShaderParameterName:
    var value: GLenum

    alias SHADER_TYPE = ShaderParameterName(0x8B4F)
    alias DELETE_STATUS = ShaderParameterName(0x8B80)
    alias COMPILE_STATUS = ShaderParameterName(0x8B81)
    alias INFO_LOG_LENGTH = ShaderParameterName(0x8B84)
    alias SHADER_SOURCE_LENGTH = ShaderParameterName(0x8B88)


@fieldwise_init
@register_passable("trivial")
struct ShaderType:
    var value: GLenum

    alias FRAGMENT_SHADER = ShaderType(0x8B30)
    alias FRAGMENT_SHADER_ARB = ShaderType(0x8B30)
    alias VERTEX_SHADER = ShaderType(0x8B31)
    alias VERTEX_SHADER_ARB = ShaderType(0x8B31)
    alias GEOMETRY_SHADER = ShaderType(0x8DD9)
    alias TESS_EVALUATION_SHADER = ShaderType(0x8E87)
    alias TESS_CONTROL_SHADER = ShaderType(0x8E88)
    alias COMPUTE_SHADER = ShaderType(0x91B9)


@fieldwise_init
@register_passable("trivial")
struct SizedInternalFormat:
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


@fieldwise_init
@register_passable("trivial")
struct StencilFunction:
    var value: GLenum

    alias NEVER = StencilFunction(0x0200)
    alias LESS = StencilFunction(0x0201)
    alias EQUAL = StencilFunction(0x0202)
    alias LEQUAL = StencilFunction(0x0203)
    alias GREATER = StencilFunction(0x0204)
    alias NOTEQUAL = StencilFunction(0x0205)
    alias GEQUAL = StencilFunction(0x0206)
    alias ALWAYS = StencilFunction(0x0207)


@fieldwise_init
@register_passable("trivial")
struct StencilOp:
    var value: GLenum

    alias ZERO = StencilOp(0)
    alias INVERT = StencilOp(0x150A)
    alias KEEP = StencilOp(0x1E00)
    alias REPLACE = StencilOp(0x1E01)
    alias INCR = StencilOp(0x1E02)
    alias DECR = StencilOp(0x1E03)
    alias INCR_WRAP = StencilOp(0x8507)
    alias DECR_WRAP = StencilOp(0x8508)


@fieldwise_init
@register_passable("trivial")
struct StringName:
    var value: GLenum

    alias VENDOR = StringName(0x1F00)
    alias RENDERER = StringName(0x1F01)
    alias VERSION = StringName(0x1F02)
    alias EXTENSIONS = StringName(0x1F03)
    alias SHADING_LANGUAGE_VERSION = StringName(0x8B8C)


@fieldwise_init
@register_passable("trivial")
struct SubroutineParameterName:
    var value: GLenum

    alias UNIFORM_SIZE = SubroutineParameterName(0x8A38)
    alias UNIFORM_NAME_LENGTH = SubroutineParameterName(0x8A39)
    alias NUM_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4A)
    alias COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4B)


@fieldwise_init
@register_passable("trivial")
struct SyncBehaviorFlags:
    var value: GLbitfield

    alias NONE = SyncBehaviorFlags(0)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncCondition:
    var value: GLenum

    alias SYNC_GPU_COMMANDS_COMPLETE = SyncCondition(0x9117)


@fieldwise_init
@register_passable("trivial")
struct SyncObjectMask:
    var value: GLbitfield

    alias SYNC_FLUSH_COMMANDS_BIT = SyncObjectMask(0x00000001)
    alias SYNC_FLUSH_COMMANDS_BIT_APPLE = SyncObjectMask(0x00000001)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncParameterName:
    var value: GLenum

    alias OBJECT_TYPE = SyncParameterName(0x9112)
    alias SYNC_CONDITION = SyncParameterName(0x9113)
    alias SYNC_STATUS = SyncParameterName(0x9114)
    alias SYNC_FLAGS = SyncParameterName(0x9115)


@fieldwise_init
@register_passable("trivial")
struct SyncStatus:
    var value: GLenum

    alias ALREADY_SIGNALED = SyncStatus(0x911A)
    alias TIMEOUT_EXPIRED = SyncStatus(0x911B)
    alias CONDITION_SATISFIED = SyncStatus(0x911C)
    alias WAIT_FAILED = SyncStatus(0x911D)


@fieldwise_init
@register_passable("trivial")
struct TexCoordPointerType:
    var value: GLenum

    alias SHORT = TexCoordPointerType(0x1402)
    alias INT = TexCoordPointerType(0x1404)
    alias FLOAT = TexCoordPointerType(0x1406)
    alias DOUBLE = TexCoordPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct TextureParameterName:
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


@fieldwise_init
@register_passable("trivial")
struct TextureTarget:
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


@fieldwise_init
@register_passable("trivial")
struct TextureUnit:
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


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackBufferMode:
    var value: GLenum

    alias INTERLEAVED_ATTRIBS = TransformFeedbackBufferMode(0x8C8C)
    alias SEPARATE_ATTRIBS = TransformFeedbackBufferMode(0x8C8D)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackPName:
    var value: GLenum

    alias TRANSFORM_FEEDBACK_BUFFER_START = TransformFeedbackPName(0x8C84)
    alias TRANSFORM_FEEDBACK_BUFFER_SIZE = TransformFeedbackPName(0x8C85)
    alias TRANSFORM_FEEDBACK_BUFFER_BINDING = TransformFeedbackPName(0x8C8F)
    alias TRANSFORM_FEEDBACK_PAUSED = TransformFeedbackPName(0x8E23)
    alias TRANSFORM_FEEDBACK_ACTIVE = TransformFeedbackPName(0x8E24)


@fieldwise_init
@register_passable("trivial")
struct TriangleFace:
    var value: GLenum

    alias FRONT = TriangleFace(0x0404)
    alias BACK = TriangleFace(0x0405)
    alias FRONT_AND_BACK = TriangleFace(0x0408)


@fieldwise_init
@register_passable("trivial")
struct UniformBlockPName:
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


@fieldwise_init
@register_passable("trivial")
struct UniformPName:
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


@fieldwise_init
@register_passable("trivial")
struct UniformType:
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


@fieldwise_init
@register_passable("trivial")
struct UseProgramStageMask:
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
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct VertexArrayPName:
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


@fieldwise_init
@register_passable("trivial")
struct VertexAttribEnum:
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


@fieldwise_init
@register_passable("trivial")
struct VertexAttribIType:
    var value: GLenum

    alias BYTE = VertexAttribIType(0x1400)
    alias UNSIGNED_BYTE = VertexAttribIType(0x1401)
    alias SHORT = VertexAttribIType(0x1402)
    alias UNSIGNED_SHORT = VertexAttribIType(0x1403)
    alias INT = VertexAttribIType(0x1404)
    alias UNSIGNED_INT = VertexAttribIType(0x1405)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribLType:
    var value: GLenum

    alias DOUBLE = VertexAttribLType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerPropertyARB:
    var value: GLenum

    alias VERTEX_ATTRIB_ARRAY_POINTER = VertexAttribPointerPropertyARB(0x8645)
    alias VERTEX_ATTRIB_ARRAY_POINTER_ARB = VertexAttribPointerPropertyARB(0x8645)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerType:
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


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPropertyARB:
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


@fieldwise_init
@register_passable("trivial")
struct VertexAttribType:
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


@fieldwise_init
@register_passable("trivial")
struct VertexBufferObjectUsage:
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


@fieldwise_init
@register_passable("trivial")
struct VertexPointerType:
    var value: GLenum

    alias SHORT = VertexPointerType(0x1402)
    alias INT = VertexPointerType(0x1404)
    alias FLOAT = VertexPointerType(0x1406)
    alias DOUBLE = VertexPointerType(0x140A)


@fieldwise_init
@register_passable("trivial")
struct VertexProvokingMode:
    var value: GLenum

    alias FIRST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4D)
    alias LAST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4E)


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
alias fptr_glGetBooleanv = fn (pname: GetPName, data: Ptr[GLboolean, mut=True])
alias fptr_glGetDoublev = fn (pname: GetPName, data: Ptr[GLdouble, mut=True])
alias fptr_glGetError = fn () -> ErrorCode
alias fptr_glGetFloatv = fn (pname: GetPName, data: Ptr[GLfloat, mut=True])
alias fptr_glGetIntegerv = fn (pname: GetPName, data: Ptr[GLint, mut=True])
alias fptr_glGetString = fn (name: StringName) -> GLubyte
alias fptr_glGetTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTexLevelParameterfv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTexLevelParameteriv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTexParameterfv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTexParameteriv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glHint = fn (target: HintTarget, mode: HintMode)
alias fptr_glIsEnabled = fn (cap: EnableCap) -> GLboolean
alias fptr_glLineWidth = fn (width: GLfloat)
alias fptr_glLogicOp = fn (opcode: LogicOp)
alias fptr_glPixelStoref = fn (pname: PixelStoreParameter, param: GLfloat)
alias fptr_glPixelStorei = fn (pname: PixelStoreParameter, param: GLint)
alias fptr_glPointSize = fn (size: GLfloat)
alias fptr_glPolygonMode = fn (face: TriangleFace, mode: PolygonMode)
alias fptr_glReadBuffer = fn (src: ReadBufferMode)
alias fptr_glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glStencilFunc = fn (func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilMask = fn (mask: GLuint)
alias fptr_glStencilOp = fn (fail: StencilOp, zfail: StencilOp, zpass: StencilOp)
alias fptr_glTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTexParameterf = fn (target: TextureTarget, pname: TextureParameterName, param: GLfloat)
alias fptr_glTexParameterfv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, mut=True])
alias fptr_glTexParameteri = fn (target: TextureTarget, pname: TextureParameterName, param: GLint)
alias fptr_glTexParameteriv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=True])
alias fptr_glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)


struct GL_VERSION_1_0:
    """Functions for gl 1.0."""

    var blend_func: fptr_glBlendFunc
    var clear: fptr_glClear
    var clear_color: fptr_glClearColor
    var clear_depth: fptr_glClearDepth
    var clear_stencil: fptr_glClearStencil
    var color_mask: fptr_glColorMask
    var cull_face: fptr_glCullFace
    var depth_func: fptr_glDepthFunc
    var depth_mask: fptr_glDepthMask
    var depth_range: fptr_glDepthRange
    var disable: fptr_glDisable
    var draw_buffer: fptr_glDrawBuffer
    var enable: fptr_glEnable
    var finish: fptr_glFinish
    var flush: fptr_glFlush
    var front_face: fptr_glFrontFace
    var get_booleanv: fptr_glGetBooleanv
    var get_doublev: fptr_glGetDoublev
    var get_error: fptr_glGetError
    var get_floatv: fptr_glGetFloatv
    var get_integerv: fptr_glGetIntegerv
    var get_string: fptr_glGetString
    var get_tex_image: fptr_glGetTexImage
    var get_tex_level_parameterfv: fptr_glGetTexLevelParameterfv
    var get_tex_level_parameteriv: fptr_glGetTexLevelParameteriv
    var get_tex_parameterfv: fptr_glGetTexParameterfv
    var get_tex_parameteriv: fptr_glGetTexParameteriv
    var hint: fptr_glHint
    var is_enabled: fptr_glIsEnabled
    var line_width: fptr_glLineWidth
    var logic_op: fptr_glLogicOp
    var pixel_storef: fptr_glPixelStoref
    var pixel_storei: fptr_glPixelStorei
    var point_size: fptr_glPointSize
    var polygon_mode: fptr_glPolygonMode
    var read_buffer: fptr_glReadBuffer
    var read_pixels: fptr_glReadPixels
    var scissor: fptr_glScissor
    var stencil_func: fptr_glStencilFunc
    var stencil_mask: fptr_glStencilMask
    var stencil_op: fptr_glStencilOp
    var tex_image1_d: fptr_glTexImage1D
    var tex_image2_d: fptr_glTexImage2D
    var tex_parameterf: fptr_glTexParameterf
    var tex_parameterfv: fptr_glTexParameterfv
    var tex_parameteri: fptr_glTexParameteri
    var tex_parameteriv: fptr_glTexParameteriv
    var viewport: fptr_glViewport

    fn __init__(out self, load: LoadProc) raises:
        self.blend_func = load_proc[fptr_glBlendFunc]("glBlendFunc", load)
        self.clear = load_proc[fptr_glClear]("glClear", load)
        self.clear_color = load_proc[fptr_glClearColor]("glClearColor", load)
        self.clear_depth = load_proc[fptr_glClearDepth]("glClearDepth", load)
        self.clear_stencil = load_proc[fptr_glClearStencil]("glClearStencil", load)
        self.color_mask = load_proc[fptr_glColorMask]("glColorMask", load)
        self.cull_face = load_proc[fptr_glCullFace]("glCullFace", load)
        self.depth_func = load_proc[fptr_glDepthFunc]("glDepthFunc", load)
        self.depth_mask = load_proc[fptr_glDepthMask]("glDepthMask", load)
        self.depth_range = load_proc[fptr_glDepthRange]("glDepthRange", load)
        self.disable = load_proc[fptr_glDisable]("glDisable", load)
        self.draw_buffer = load_proc[fptr_glDrawBuffer]("glDrawBuffer", load)
        self.enable = load_proc[fptr_glEnable]("glEnable", load)
        self.finish = load_proc[fptr_glFinish]("glFinish", load)
        self.flush = load_proc[fptr_glFlush]("glFlush", load)
        self.front_face = load_proc[fptr_glFrontFace]("glFrontFace", load)
        self.get_booleanv = load_proc[fptr_glGetBooleanv]("glGetBooleanv", load)
        self.get_doublev = load_proc[fptr_glGetDoublev]("glGetDoublev", load)
        self.get_error = load_proc[fptr_glGetError]("glGetError", load)
        self.get_floatv = load_proc[fptr_glGetFloatv]("glGetFloatv", load)
        self.get_integerv = load_proc[fptr_glGetIntegerv]("glGetIntegerv", load)
        self.get_string = load_proc[fptr_glGetString]("glGetString", load)
        self.get_tex_image = load_proc[fptr_glGetTexImage]("glGetTexImage", load)
        self.get_tex_level_parameterfv = load_proc[fptr_glGetTexLevelParameterfv]("glGetTexLevelParameterfv", load)
        self.get_tex_level_parameteriv = load_proc[fptr_glGetTexLevelParameteriv]("glGetTexLevelParameteriv", load)
        self.get_tex_parameterfv = load_proc[fptr_glGetTexParameterfv]("glGetTexParameterfv", load)
        self.get_tex_parameteriv = load_proc[fptr_glGetTexParameteriv]("glGetTexParameteriv", load)
        self.hint = load_proc[fptr_glHint]("glHint", load)
        self.is_enabled = load_proc[fptr_glIsEnabled]("glIsEnabled", load)
        self.line_width = load_proc[fptr_glLineWidth]("glLineWidth", load)
        self.logic_op = load_proc[fptr_glLogicOp]("glLogicOp", load)
        self.pixel_storef = load_proc[fptr_glPixelStoref]("glPixelStoref", load)
        self.pixel_storei = load_proc[fptr_glPixelStorei]("glPixelStorei", load)
        self.point_size = load_proc[fptr_glPointSize]("glPointSize", load)
        self.polygon_mode = load_proc[fptr_glPolygonMode]("glPolygonMode", load)
        self.read_buffer = load_proc[fptr_glReadBuffer]("glReadBuffer", load)
        self.read_pixels = load_proc[fptr_glReadPixels]("glReadPixels", load)
        self.scissor = load_proc[fptr_glScissor]("glScissor", load)
        self.stencil_func = load_proc[fptr_glStencilFunc]("glStencilFunc", load)
        self.stencil_mask = load_proc[fptr_glStencilMask]("glStencilMask", load)
        self.stencil_op = load_proc[fptr_glStencilOp]("glStencilOp", load)
        self.tex_image1_d = load_proc[fptr_glTexImage1D]("glTexImage1D", load)
        self.tex_image2_d = load_proc[fptr_glTexImage2D]("glTexImage2D", load)
        self.tex_parameterf = load_proc[fptr_glTexParameterf]("glTexParameterf", load)
        self.tex_parameterfv = load_proc[fptr_glTexParameterfv]("glTexParameterfv", load)
        self.tex_parameteri = load_proc[fptr_glTexParameteri]("glTexParameteri", load)
        self.tex_parameteriv = load_proc[fptr_glTexParameteriv]("glTexParameteriv", load)
        self.viewport = load_proc[fptr_glViewport]("glViewport", load)


alias fptr_glBindTexture = fn (target: TextureTarget, texture: GLuint)
alias fptr_glCopyTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint)
alias fptr_glCopyTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint)
alias fptr_glCopyTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glDeleteTextures = fn (n: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glDrawArrays = fn (mode: PrimitiveType, first: GLint, count: GLsizei)
alias fptr_glDrawElements = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True])
alias fptr_glGenTextures = fn (n: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glIsTexture = fn (texture: GLuint) -> GLboolean
alias fptr_glPolygonOffset = fn (factor: GLfloat, units: GLfloat)
alias fptr_glTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])


struct GL_VERSION_1_1:
    """Functions for gl 1.1."""

    var bind_texture: fptr_glBindTexture
    var copy_tex_image1_d: fptr_glCopyTexImage1D
    var copy_tex_image2_d: fptr_glCopyTexImage2D
    var copy_tex_sub_image1_d: fptr_glCopyTexSubImage1D
    var copy_tex_sub_image2_d: fptr_glCopyTexSubImage2D
    var delete_textures: fptr_glDeleteTextures
    var draw_arrays: fptr_glDrawArrays
    var draw_elements: fptr_glDrawElements
    var gen_textures: fptr_glGenTextures
    var is_texture: fptr_glIsTexture
    var polygon_offset: fptr_glPolygonOffset
    var tex_sub_image1_d: fptr_glTexSubImage1D
    var tex_sub_image2_d: fptr_glTexSubImage2D

    fn __init__(out self, load: LoadProc) raises:
        self.bind_texture = load_proc[fptr_glBindTexture]("glBindTexture", load)
        self.copy_tex_image1_d = load_proc[fptr_glCopyTexImage1D]("glCopyTexImage1D", load)
        self.copy_tex_image2_d = load_proc[fptr_glCopyTexImage2D]("glCopyTexImage2D", load)
        self.copy_tex_sub_image1_d = load_proc[fptr_glCopyTexSubImage1D]("glCopyTexSubImage1D", load)
        self.copy_tex_sub_image2_d = load_proc[fptr_glCopyTexSubImage2D]("glCopyTexSubImage2D", load)
        self.delete_textures = load_proc[fptr_glDeleteTextures]("glDeleteTextures", load)
        self.draw_arrays = load_proc[fptr_glDrawArrays]("glDrawArrays", load)
        self.draw_elements = load_proc[fptr_glDrawElements]("glDrawElements", load)
        self.gen_textures = load_proc[fptr_glGenTextures]("glGenTextures", load)
        self.is_texture = load_proc[fptr_glIsTexture]("glIsTexture", load)
        self.polygon_offset = load_proc[fptr_glPolygonOffset]("glPolygonOffset", load)
        self.tex_sub_image1_d = load_proc[fptr_glTexSubImage1D]("glTexSubImage1D", load)
        self.tex_sub_image2_d = load_proc[fptr_glTexSubImage2D]("glTexSubImage2D", load)


alias fptr_glCopyTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glDrawRangeElements = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True])
alias fptr_glTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])


struct GL_VERSION_1_2:
    """Functions for gl 1.2."""

    var copy_tex_sub_image3_d: fptr_glCopyTexSubImage3D
    var draw_range_elements: fptr_glDrawRangeElements
    var tex_image3_d: fptr_glTexImage3D
    var tex_sub_image3_d: fptr_glTexSubImage3D

    fn __init__(out self, load: LoadProc) raises:
        self.copy_tex_sub_image3_d = load_proc[fptr_glCopyTexSubImage3D]("glCopyTexSubImage3D", load)
        self.draw_range_elements = load_proc[fptr_glDrawRangeElements]("glDrawRangeElements", load)
        self.tex_image3_d = load_proc[fptr_glTexImage3D]("glTexImage3D", load)
        self.tex_sub_image3_d = load_proc[fptr_glTexSubImage3D]("glTexSubImage3D", load)


alias fptr_glActiveTexture = fn (texture: TextureUnit)
alias fptr_glCompressedTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glGetCompressedTexImage = fn (target: TextureTarget, level: GLint, img: Ptr[NoneType, mut=True])
alias fptr_glSampleCoverage = fn (value: GLfloat, invert: GLboolean)


struct GL_VERSION_1_3:
    """Functions for gl 1.3."""

    var active_texture: fptr_glActiveTexture
    var compressed_tex_image1_d: fptr_glCompressedTexImage1D
    var compressed_tex_image2_d: fptr_glCompressedTexImage2D
    var compressed_tex_image3_d: fptr_glCompressedTexImage3D
    var compressed_tex_sub_image1_d: fptr_glCompressedTexSubImage1D
    var compressed_tex_sub_image2_d: fptr_glCompressedTexSubImage2D
    var compressed_tex_sub_image3_d: fptr_glCompressedTexSubImage3D
    var get_compressed_tex_image: fptr_glGetCompressedTexImage
    var sample_coverage: fptr_glSampleCoverage

    fn __init__(out self, load: LoadProc) raises:
        self.active_texture = load_proc[fptr_glActiveTexture]("glActiveTexture", load)
        self.compressed_tex_image1_d = load_proc[fptr_glCompressedTexImage1D]("glCompressedTexImage1D", load)
        self.compressed_tex_image2_d = load_proc[fptr_glCompressedTexImage2D]("glCompressedTexImage2D", load)
        self.compressed_tex_image3_d = load_proc[fptr_glCompressedTexImage3D]("glCompressedTexImage3D", load)
        self.compressed_tex_sub_image1_d = load_proc[fptr_glCompressedTexSubImage1D]("glCompressedTexSubImage1D", load)
        self.compressed_tex_sub_image2_d = load_proc[fptr_glCompressedTexSubImage2D]("glCompressedTexSubImage2D", load)
        self.compressed_tex_sub_image3_d = load_proc[fptr_glCompressedTexSubImage3D]("glCompressedTexSubImage3D", load)
        self.get_compressed_tex_image = load_proc[fptr_glGetCompressedTexImage]("glGetCompressedTexImage", load)
        self.sample_coverage = load_proc[fptr_glSampleCoverage]("glSampleCoverage", load)


alias fptr_glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
alias fptr_glBlendEquation = fn (mode: BlendEquationModeEXT)
alias fptr_glBlendFuncSeparate = fn (sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor)
alias fptr_glMultiDrawArrays = fn (mode: PrimitiveType, first: Ptr[GLint, mut=True], count: Ptr[GLsizei, mut=True], drawcount: GLsizei)
alias fptr_glMultiDrawElements = fn (mode: PrimitiveType, count: Ptr[GLsizei, mut=True], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=True], mut=False], drawcount: GLsizei)
alias fptr_glPointParameterf = fn (pname: PointParameterNameARB, param: GLfloat)
alias fptr_glPointParameterfv = fn (pname: PointParameterNameARB, params: Ptr[GLfloat, mut=True])
alias fptr_glPointParameteri = fn (pname: PointParameterNameARB, param: GLint)
alias fptr_glPointParameteriv = fn (pname: PointParameterNameARB, params: Ptr[GLint, mut=True])


struct GL_VERSION_1_4:
    """Functions for gl 1.4."""

    var blend_color: fptr_glBlendColor
    var blend_equation: fptr_glBlendEquation
    var blend_func_separate: fptr_glBlendFuncSeparate
    var multi_draw_arrays: fptr_glMultiDrawArrays
    var multi_draw_elements: fptr_glMultiDrawElements
    var point_parameterf: fptr_glPointParameterf
    var point_parameterfv: fptr_glPointParameterfv
    var point_parameteri: fptr_glPointParameteri
    var point_parameteriv: fptr_glPointParameteriv

    fn __init__(out self, load: LoadProc) raises:
        self.blend_color = load_proc[fptr_glBlendColor]("glBlendColor", load)
        self.blend_equation = load_proc[fptr_glBlendEquation]("glBlendEquation", load)
        self.blend_func_separate = load_proc[fptr_glBlendFuncSeparate]("glBlendFuncSeparate", load)
        self.multi_draw_arrays = load_proc[fptr_glMultiDrawArrays]("glMultiDrawArrays", load)
        self.multi_draw_elements = load_proc[fptr_glMultiDrawElements]("glMultiDrawElements", load)
        self.point_parameterf = load_proc[fptr_glPointParameterf]("glPointParameterf", load)
        self.point_parameterfv = load_proc[fptr_glPointParameterfv]("glPointParameterfv", load)
        self.point_parameteri = load_proc[fptr_glPointParameteri]("glPointParameteri", load)
        self.point_parameteriv = load_proc[fptr_glPointParameteriv]("glPointParameteriv", load)


alias fptr_glBeginQuery = fn (target: QueryTarget, id: GLuint)
alias fptr_glBindBuffer = fn (target: BufferTargetARB, buffer: GLuint)
alias fptr_glBufferData = fn (target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, mut=True], usage: BufferUsageARB)
alias fptr_glBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glDeleteBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glDeleteQueries = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glEndQuery = fn (target: QueryTarget)
alias fptr_glGenBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glGenQueries = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glGetBufferParameteriv = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, mut=True])
alias fptr_glGetBufferPointerv = fn (target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glGetQueryObjectiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetQueryObjectuiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, mut=True])
alias fptr_glGetQueryiv = fn (target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, mut=True])
alias fptr_glIsBuffer = fn (buffer: GLuint) -> GLboolean
alias fptr_glIsQuery = fn (id: GLuint) -> GLboolean
alias fptr_glMapBuffer = fn (target: BufferTargetARB, access: BufferAccessARB)
alias fptr_glUnmapBuffer = fn (target: BufferTargetARB) -> GLboolean


struct GL_VERSION_1_5:
    """Functions for gl 1.5."""

    var begin_query: fptr_glBeginQuery
    var bind_buffer: fptr_glBindBuffer
    var buffer_data: fptr_glBufferData
    var buffer_sub_data: fptr_glBufferSubData
    var delete_buffers: fptr_glDeleteBuffers
    var delete_queries: fptr_glDeleteQueries
    var end_query: fptr_glEndQuery
    var gen_buffers: fptr_glGenBuffers
    var gen_queries: fptr_glGenQueries
    var get_buffer_parameteriv: fptr_glGetBufferParameteriv
    var get_buffer_pointerv: fptr_glGetBufferPointerv
    var get_buffer_sub_data: fptr_glGetBufferSubData
    var get_query_objectiv: fptr_glGetQueryObjectiv
    var get_query_objectuiv: fptr_glGetQueryObjectuiv
    var get_queryiv: fptr_glGetQueryiv
    var is_buffer: fptr_glIsBuffer
    var is_query: fptr_glIsQuery
    var map_buffer: fptr_glMapBuffer
    var unmap_buffer: fptr_glUnmapBuffer

    fn __init__(out self, load: LoadProc) raises:
        self.begin_query = load_proc[fptr_glBeginQuery]("glBeginQuery", load)
        self.bind_buffer = load_proc[fptr_glBindBuffer]("glBindBuffer", load)
        self.buffer_data = load_proc[fptr_glBufferData]("glBufferData", load)
        self.buffer_sub_data = load_proc[fptr_glBufferSubData]("glBufferSubData", load)
        self.delete_buffers = load_proc[fptr_glDeleteBuffers]("glDeleteBuffers", load)
        self.delete_queries = load_proc[fptr_glDeleteQueries]("glDeleteQueries", load)
        self.end_query = load_proc[fptr_glEndQuery]("glEndQuery", load)
        self.gen_buffers = load_proc[fptr_glGenBuffers]("glGenBuffers", load)
        self.gen_queries = load_proc[fptr_glGenQueries]("glGenQueries", load)
        self.get_buffer_parameteriv = load_proc[fptr_glGetBufferParameteriv]("glGetBufferParameteriv", load)
        self.get_buffer_pointerv = load_proc[fptr_glGetBufferPointerv]("glGetBufferPointerv", load)
        self.get_buffer_sub_data = load_proc[fptr_glGetBufferSubData]("glGetBufferSubData", load)
        self.get_query_objectiv = load_proc[fptr_glGetQueryObjectiv]("glGetQueryObjectiv", load)
        self.get_query_objectuiv = load_proc[fptr_glGetQueryObjectuiv]("glGetQueryObjectuiv", load)
        self.get_queryiv = load_proc[fptr_glGetQueryiv]("glGetQueryiv", load)
        self.is_buffer = load_proc[fptr_glIsBuffer]("glIsBuffer", load)
        self.is_query = load_proc[fptr_glIsQuery]("glIsQuery", load)
        self.map_buffer = load_proc[fptr_glMapBuffer]("glMapBuffer", load)
        self.unmap_buffer = load_proc[fptr_glUnmapBuffer]("glUnmapBuffer", load)


alias fptr_glAttachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glBindAttribLocation = fn (program: GLuint, index: GLuint, name: Ptr[GLchar, mut=True])
alias fptr_glBlendEquationSeparate = fn (mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
alias fptr_glCompileShader = fn (shader: GLuint)
alias fptr_glCreateProgram = fn () -> GLuint
alias fptr_glCreateShader = fn (type: ShaderType) -> GLuint
alias fptr_glDeleteProgram = fn (program: GLuint)
alias fptr_glDeleteShader = fn (shader: GLuint)
alias fptr_glDetachShader = fn (program: GLuint, shader: GLuint)
alias fptr_glDisableVertexAttribArray = fn (index: GLuint)
alias fptr_glDrawBuffers = fn (n: GLsizei, bufs: DrawBufferMode)
alias fptr_glEnableVertexAttribArray = fn (index: GLuint)
alias fptr_glGetActiveAttrib = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: AttributeType, name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniform = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: UniformType, name: Ptr[GLchar, mut=True])
alias fptr_glGetAttachedShaders = fn (program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, mut=True], shaders: Ptr[GLuint, mut=True])
alias fptr_glGetAttribLocation = fn (program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetProgramInfoLog = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetProgramiv = fn (program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, mut=True])
alias fptr_glGetShaderInfoLog = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetShaderSource = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], source: Ptr[GLchar, mut=True])
alias fptr_glGetShaderiv = fn (shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetUniformLocation = fn (program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetUniformfv = fn (program: GLuint, location: GLint, params: Ptr[GLfloat, mut=True])
alias fptr_glGetUniformiv = fn (program: GLuint, location: GLint, params: Ptr[GLint, mut=True])
alias fptr_glGetVertexAttribPointerv = fn (index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetVertexAttribdv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, mut=True])
alias fptr_glGetVertexAttribfv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, mut=True])
alias fptr_glGetVertexAttribiv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, mut=True])
alias fptr_glIsProgram = fn (program: GLuint) -> GLboolean
alias fptr_glIsShader = fn (shader: GLuint) -> GLboolean
alias fptr_glLinkProgram = fn (program: GLuint)
alias fptr_glShaderSource = fn (shader: GLuint, count: GLsizei, string: Ptr[Ptr[GLchar, mut=True], mut=False], length: Ptr[GLint, mut=True])
alias fptr_glStencilFuncSeparate = fn (face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint)
alias fptr_glStencilMaskSeparate = fn (face: TriangleFace, mask: GLuint)
alias fptr_glStencilOpSeparate = fn (face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp)
alias fptr_glUniform1f = fn (location: GLint, v0: GLfloat)
alias fptr_glUniform1fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glUniform1i = fn (location: GLint, v0: GLint)
alias fptr_glUniform1iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glUniform2fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glUniform2i = fn (location: GLint, v0: GLint, v1: GLint)
alias fptr_glUniform2iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glUniform3fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glUniform3iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glUniform4fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glUniform4iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUseProgram = fn (program: GLuint)
alias fptr_glValidateProgram = fn (program: GLuint)
alias fptr_glVertexAttrib1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttrib1dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttrib1f = fn (index: GLuint, x: GLfloat)
alias fptr_glVertexAttrib1fv = fn (index: GLuint, v: Ptr[GLfloat, mut=True])
alias fptr_glVertexAttrib1s = fn (index: GLuint, x: GLshort)
alias fptr_glVertexAttrib1sv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttrib2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttrib2dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat)
alias fptr_glVertexAttrib2fv = fn (index: GLuint, v: Ptr[GLfloat, mut=True])
alias fptr_glVertexAttrib2s = fn (index: GLuint, x: GLshort, y: GLshort)
alias fptr_glVertexAttrib2sv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttrib3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttrib3dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat)
alias fptr_glVertexAttrib3fv = fn (index: GLuint, v: Ptr[GLfloat, mut=True])
alias fptr_glVertexAttrib3s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort)
alias fptr_glVertexAttrib3sv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttrib4Nbv = fn (index: GLuint, v: Ptr[GLbyte, mut=True])
alias fptr_glVertexAttrib4Niv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttrib4Nsv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttrib4Nub = fn (index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte)
alias fptr_glVertexAttrib4Nubv = fn (index: GLuint, v: Ptr[GLubyte, mut=True])
alias fptr_glVertexAttrib4Nuiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttrib4Nusv = fn (index: GLuint, v: Ptr[GLushort, mut=True])
alias fptr_glVertexAttrib4bv = fn (index: GLuint, v: Ptr[GLbyte, mut=True])
alias fptr_glVertexAttrib4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttrib4dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
alias fptr_glVertexAttrib4fv = fn (index: GLuint, v: Ptr[GLfloat, mut=True])
alias fptr_glVertexAttrib4iv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttrib4s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort)
alias fptr_glVertexAttrib4sv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttrib4ubv = fn (index: GLuint, v: Ptr[GLubyte, mut=True])
alias fptr_glVertexAttrib4uiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttrib4usv = fn (index: GLuint, v: Ptr[GLushort, mut=True])
alias fptr_glVertexAttribPointer = fn (index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType, mut=True])


struct GL_VERSION_2_0:
    """Functions for gl 2.0."""

    var attach_shader: fptr_glAttachShader
    var bind_attrib_location: fptr_glBindAttribLocation
    var blend_equation_separate: fptr_glBlendEquationSeparate
    var compile_shader: fptr_glCompileShader
    var create_program: fptr_glCreateProgram
    var create_shader: fptr_glCreateShader
    var delete_program: fptr_glDeleteProgram
    var delete_shader: fptr_glDeleteShader
    var detach_shader: fptr_glDetachShader
    var disable_vertex_attrib_array: fptr_glDisableVertexAttribArray
    var draw_buffers: fptr_glDrawBuffers
    var enable_vertex_attrib_array: fptr_glEnableVertexAttribArray
    var get_active_attrib: fptr_glGetActiveAttrib
    var get_active_uniform: fptr_glGetActiveUniform
    var get_attached_shaders: fptr_glGetAttachedShaders
    var get_attrib_location: fptr_glGetAttribLocation
    var get_program_info_log: fptr_glGetProgramInfoLog
    var get_programiv: fptr_glGetProgramiv
    var get_shader_info_log: fptr_glGetShaderInfoLog
    var get_shader_source: fptr_glGetShaderSource
    var get_shaderiv: fptr_glGetShaderiv
    var get_uniform_location: fptr_glGetUniformLocation
    var get_uniformfv: fptr_glGetUniformfv
    var get_uniformiv: fptr_glGetUniformiv
    var get_vertex_attrib_pointerv: fptr_glGetVertexAttribPointerv
    var get_vertex_attribdv: fptr_glGetVertexAttribdv
    var get_vertex_attribfv: fptr_glGetVertexAttribfv
    var get_vertex_attribiv: fptr_glGetVertexAttribiv
    var is_program: fptr_glIsProgram
    var is_shader: fptr_glIsShader
    var link_program: fptr_glLinkProgram
    var shader_source: fptr_glShaderSource
    var stencil_func_separate: fptr_glStencilFuncSeparate
    var stencil_mask_separate: fptr_glStencilMaskSeparate
    var stencil_op_separate: fptr_glStencilOpSeparate
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
    var uniform_matrix2fv: fptr_glUniformMatrix2fv
    var uniform_matrix3fv: fptr_glUniformMatrix3fv
    var uniform_matrix4fv: fptr_glUniformMatrix4fv
    var use_program: fptr_glUseProgram
    var validate_program: fptr_glValidateProgram
    var vertex_attrib1d: fptr_glVertexAttrib1d
    var vertex_attrib1dv: fptr_glVertexAttrib1dv
    var vertex_attrib1f: fptr_glVertexAttrib1f
    var vertex_attrib1fv: fptr_glVertexAttrib1fv
    var vertex_attrib1s: fptr_glVertexAttrib1s
    var vertex_attrib1sv: fptr_glVertexAttrib1sv
    var vertex_attrib2d: fptr_glVertexAttrib2d
    var vertex_attrib2dv: fptr_glVertexAttrib2dv
    var vertex_attrib2f: fptr_glVertexAttrib2f
    var vertex_attrib2fv: fptr_glVertexAttrib2fv
    var vertex_attrib2s: fptr_glVertexAttrib2s
    var vertex_attrib2sv: fptr_glVertexAttrib2sv
    var vertex_attrib3d: fptr_glVertexAttrib3d
    var vertex_attrib3dv: fptr_glVertexAttrib3dv
    var vertex_attrib3f: fptr_glVertexAttrib3f
    var vertex_attrib3fv: fptr_glVertexAttrib3fv
    var vertex_attrib3s: fptr_glVertexAttrib3s
    var vertex_attrib3sv: fptr_glVertexAttrib3sv
    var vertex_attrib4_nbv: fptr_glVertexAttrib4Nbv
    var vertex_attrib4_niv: fptr_glVertexAttrib4Niv
    var vertex_attrib4_nsv: fptr_glVertexAttrib4Nsv
    var vertex_attrib4_nub: fptr_glVertexAttrib4Nub
    var vertex_attrib4_nubv: fptr_glVertexAttrib4Nubv
    var vertex_attrib4_nuiv: fptr_glVertexAttrib4Nuiv
    var vertex_attrib4_nusv: fptr_glVertexAttrib4Nusv
    var vertex_attrib4bv: fptr_glVertexAttrib4bv
    var vertex_attrib4d: fptr_glVertexAttrib4d
    var vertex_attrib4dv: fptr_glVertexAttrib4dv
    var vertex_attrib4f: fptr_glVertexAttrib4f
    var vertex_attrib4fv: fptr_glVertexAttrib4fv
    var vertex_attrib4iv: fptr_glVertexAttrib4iv
    var vertex_attrib4s: fptr_glVertexAttrib4s
    var vertex_attrib4sv: fptr_glVertexAttrib4sv
    var vertex_attrib4ubv: fptr_glVertexAttrib4ubv
    var vertex_attrib4uiv: fptr_glVertexAttrib4uiv
    var vertex_attrib4usv: fptr_glVertexAttrib4usv
    var vertex_attrib_pointer: fptr_glVertexAttribPointer

    fn __init__(out self, load: LoadProc) raises:
        self.attach_shader = load_proc[fptr_glAttachShader]("glAttachShader", load)
        self.bind_attrib_location = load_proc[fptr_glBindAttribLocation]("glBindAttribLocation", load)
        self.blend_equation_separate = load_proc[fptr_glBlendEquationSeparate]("glBlendEquationSeparate", load)
        self.compile_shader = load_proc[fptr_glCompileShader]("glCompileShader", load)
        self.create_program = load_proc[fptr_glCreateProgram]("glCreateProgram", load)
        self.create_shader = load_proc[fptr_glCreateShader]("glCreateShader", load)
        self.delete_program = load_proc[fptr_glDeleteProgram]("glDeleteProgram", load)
        self.delete_shader = load_proc[fptr_glDeleteShader]("glDeleteShader", load)
        self.detach_shader = load_proc[fptr_glDetachShader]("glDetachShader", load)
        self.disable_vertex_attrib_array = load_proc[fptr_glDisableVertexAttribArray]("glDisableVertexAttribArray", load)
        self.draw_buffers = load_proc[fptr_glDrawBuffers]("glDrawBuffers", load)
        self.enable_vertex_attrib_array = load_proc[fptr_glEnableVertexAttribArray]("glEnableVertexAttribArray", load)
        self.get_active_attrib = load_proc[fptr_glGetActiveAttrib]("glGetActiveAttrib", load)
        self.get_active_uniform = load_proc[fptr_glGetActiveUniform]("glGetActiveUniform", load)
        self.get_attached_shaders = load_proc[fptr_glGetAttachedShaders]("glGetAttachedShaders", load)
        self.get_attrib_location = load_proc[fptr_glGetAttribLocation]("glGetAttribLocation", load)
        self.get_program_info_log = load_proc[fptr_glGetProgramInfoLog]("glGetProgramInfoLog", load)
        self.get_programiv = load_proc[fptr_glGetProgramiv]("glGetProgramiv", load)
        self.get_shader_info_log = load_proc[fptr_glGetShaderInfoLog]("glGetShaderInfoLog", load)
        self.get_shader_source = load_proc[fptr_glGetShaderSource]("glGetShaderSource", load)
        self.get_shaderiv = load_proc[fptr_glGetShaderiv]("glGetShaderiv", load)
        self.get_uniform_location = load_proc[fptr_glGetUniformLocation]("glGetUniformLocation", load)
        self.get_uniformfv = load_proc[fptr_glGetUniformfv]("glGetUniformfv", load)
        self.get_uniformiv = load_proc[fptr_glGetUniformiv]("glGetUniformiv", load)
        self.get_vertex_attrib_pointerv = load_proc[fptr_glGetVertexAttribPointerv]("glGetVertexAttribPointerv", load)
        self.get_vertex_attribdv = load_proc[fptr_glGetVertexAttribdv]("glGetVertexAttribdv", load)
        self.get_vertex_attribfv = load_proc[fptr_glGetVertexAttribfv]("glGetVertexAttribfv", load)
        self.get_vertex_attribiv = load_proc[fptr_glGetVertexAttribiv]("glGetVertexAttribiv", load)
        self.is_program = load_proc[fptr_glIsProgram]("glIsProgram", load)
        self.is_shader = load_proc[fptr_glIsShader]("glIsShader", load)
        self.link_program = load_proc[fptr_glLinkProgram]("glLinkProgram", load)
        self.shader_source = load_proc[fptr_glShaderSource]("glShaderSource", load)
        self.stencil_func_separate = load_proc[fptr_glStencilFuncSeparate]("glStencilFuncSeparate", load)
        self.stencil_mask_separate = load_proc[fptr_glStencilMaskSeparate]("glStencilMaskSeparate", load)
        self.stencil_op_separate = load_proc[fptr_glStencilOpSeparate]("glStencilOpSeparate", load)
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
        self.uniform_matrix2fv = load_proc[fptr_glUniformMatrix2fv]("glUniformMatrix2fv", load)
        self.uniform_matrix3fv = load_proc[fptr_glUniformMatrix3fv]("glUniformMatrix3fv", load)
        self.uniform_matrix4fv = load_proc[fptr_glUniformMatrix4fv]("glUniformMatrix4fv", load)
        self.use_program = load_proc[fptr_glUseProgram]("glUseProgram", load)
        self.validate_program = load_proc[fptr_glValidateProgram]("glValidateProgram", load)
        self.vertex_attrib1d = load_proc[fptr_glVertexAttrib1d]("glVertexAttrib1d", load)
        self.vertex_attrib1dv = load_proc[fptr_glVertexAttrib1dv]("glVertexAttrib1dv", load)
        self.vertex_attrib1f = load_proc[fptr_glVertexAttrib1f]("glVertexAttrib1f", load)
        self.vertex_attrib1fv = load_proc[fptr_glVertexAttrib1fv]("glVertexAttrib1fv", load)
        self.vertex_attrib1s = load_proc[fptr_glVertexAttrib1s]("glVertexAttrib1s", load)
        self.vertex_attrib1sv = load_proc[fptr_glVertexAttrib1sv]("glVertexAttrib1sv", load)
        self.vertex_attrib2d = load_proc[fptr_glVertexAttrib2d]("glVertexAttrib2d", load)
        self.vertex_attrib2dv = load_proc[fptr_glVertexAttrib2dv]("glVertexAttrib2dv", load)
        self.vertex_attrib2f = load_proc[fptr_glVertexAttrib2f]("glVertexAttrib2f", load)
        self.vertex_attrib2fv = load_proc[fptr_glVertexAttrib2fv]("glVertexAttrib2fv", load)
        self.vertex_attrib2s = load_proc[fptr_glVertexAttrib2s]("glVertexAttrib2s", load)
        self.vertex_attrib2sv = load_proc[fptr_glVertexAttrib2sv]("glVertexAttrib2sv", load)
        self.vertex_attrib3d = load_proc[fptr_glVertexAttrib3d]("glVertexAttrib3d", load)
        self.vertex_attrib3dv = load_proc[fptr_glVertexAttrib3dv]("glVertexAttrib3dv", load)
        self.vertex_attrib3f = load_proc[fptr_glVertexAttrib3f]("glVertexAttrib3f", load)
        self.vertex_attrib3fv = load_proc[fptr_glVertexAttrib3fv]("glVertexAttrib3fv", load)
        self.vertex_attrib3s = load_proc[fptr_glVertexAttrib3s]("glVertexAttrib3s", load)
        self.vertex_attrib3sv = load_proc[fptr_glVertexAttrib3sv]("glVertexAttrib3sv", load)
        self.vertex_attrib4_nbv = load_proc[fptr_glVertexAttrib4Nbv]("glVertexAttrib4Nbv", load)
        self.vertex_attrib4_niv = load_proc[fptr_glVertexAttrib4Niv]("glVertexAttrib4Niv", load)
        self.vertex_attrib4_nsv = load_proc[fptr_glVertexAttrib4Nsv]("glVertexAttrib4Nsv", load)
        self.vertex_attrib4_nub = load_proc[fptr_glVertexAttrib4Nub]("glVertexAttrib4Nub", load)
        self.vertex_attrib4_nubv = load_proc[fptr_glVertexAttrib4Nubv]("glVertexAttrib4Nubv", load)
        self.vertex_attrib4_nuiv = load_proc[fptr_glVertexAttrib4Nuiv]("glVertexAttrib4Nuiv", load)
        self.vertex_attrib4_nusv = load_proc[fptr_glVertexAttrib4Nusv]("glVertexAttrib4Nusv", load)
        self.vertex_attrib4bv = load_proc[fptr_glVertexAttrib4bv]("glVertexAttrib4bv", load)
        self.vertex_attrib4d = load_proc[fptr_glVertexAttrib4d]("glVertexAttrib4d", load)
        self.vertex_attrib4dv = load_proc[fptr_glVertexAttrib4dv]("glVertexAttrib4dv", load)
        self.vertex_attrib4f = load_proc[fptr_glVertexAttrib4f]("glVertexAttrib4f", load)
        self.vertex_attrib4fv = load_proc[fptr_glVertexAttrib4fv]("glVertexAttrib4fv", load)
        self.vertex_attrib4iv = load_proc[fptr_glVertexAttrib4iv]("glVertexAttrib4iv", load)
        self.vertex_attrib4s = load_proc[fptr_glVertexAttrib4s]("glVertexAttrib4s", load)
        self.vertex_attrib4sv = load_proc[fptr_glVertexAttrib4sv]("glVertexAttrib4sv", load)
        self.vertex_attrib4ubv = load_proc[fptr_glVertexAttrib4ubv]("glVertexAttrib4ubv", load)
        self.vertex_attrib4uiv = load_proc[fptr_glVertexAttrib4uiv]("glVertexAttrib4uiv", load)
        self.vertex_attrib4usv = load_proc[fptr_glVertexAttrib4usv]("glVertexAttrib4usv", load)
        self.vertex_attrib_pointer = load_proc[fptr_glVertexAttribPointer]("glVertexAttribPointer", load)


alias fptr_glUniformMatrix2x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix2x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix3x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix3x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix4x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glUniformMatrix4x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])


struct GL_VERSION_2_1:
    """Functions for gl 2.1."""

    var uniform_matrix2x3fv: fptr_glUniformMatrix2x3fv
    var uniform_matrix2x4fv: fptr_glUniformMatrix2x4fv
    var uniform_matrix3x2fv: fptr_glUniformMatrix3x2fv
    var uniform_matrix3x4fv: fptr_glUniformMatrix3x4fv
    var uniform_matrix4x2fv: fptr_glUniformMatrix4x2fv
    var uniform_matrix4x3fv: fptr_glUniformMatrix4x3fv

    fn __init__(out self, load: LoadProc) raises:
        self.uniform_matrix2x3fv = load_proc[fptr_glUniformMatrix2x3fv]("glUniformMatrix2x3fv", load)
        self.uniform_matrix2x4fv = load_proc[fptr_glUniformMatrix2x4fv]("glUniformMatrix2x4fv", load)
        self.uniform_matrix3x2fv = load_proc[fptr_glUniformMatrix3x2fv]("glUniformMatrix3x2fv", load)
        self.uniform_matrix3x4fv = load_proc[fptr_glUniformMatrix3x4fv]("glUniformMatrix3x4fv", load)
        self.uniform_matrix4x2fv = load_proc[fptr_glUniformMatrix4x2fv]("glUniformMatrix4x2fv", load)
        self.uniform_matrix4x3fv = load_proc[fptr_glUniformMatrix4x3fv]("glUniformMatrix4x3fv", load)


alias fptr_glBeginConditionalRender = fn (id: GLuint, mode: ConditionalRenderMode)
alias fptr_glBeginTransformFeedback = fn (primitive_mode: PrimitiveType)
alias fptr_glBindBufferBase = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint)
alias fptr_glBindBufferRange = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glBindFragDataLocation = fn (program: GLuint, color: GLuint, name: Ptr[GLchar, mut=True])
alias fptr_glBindFramebuffer = fn (target: FramebufferTarget, framebuffer: GLuint)
alias fptr_glBindRenderbuffer = fn (target: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glBindVertexArray = fn (array: GLuint)
alias fptr_glBlitFramebuffer = fn (src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glCheckFramebufferStatus = fn (target: FramebufferTarget) -> FramebufferStatus
alias fptr_glClampColor = fn (target: ClampColorTargetARB, clamp: ClampColorModeARB)
alias fptr_glClearBufferfi = fn (buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearBufferfv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=True])
alias fptr_glClearBufferiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=True])
alias fptr_glClearBufferuiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=True])
alias fptr_glColorMaski = fn (index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean)
alias fptr_glDeleteFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=True])
alias fptr_glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=True])
alias fptr_glDeleteVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=True])
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
alias fptr_glGenFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=True])
alias fptr_glGenRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=True])
alias fptr_glGenVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=True])
alias fptr_glGenerateMipmap = fn (target: TextureTarget)
alias fptr_glGetBooleani_v = fn (target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, mut=True])
alias fptr_glGetFragDataLocation = fn (program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetFramebufferAttachmentParameteriv = fn (target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetIntegeri_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint, mut=True])
alias fptr_glGetRenderbufferParameteriv = fn (target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetStringi = fn (name: StringName, index: GLuint) -> GLubyte
alias fptr_glGetTexParameterIiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTexParameterIuiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, mut=True])
alias fptr_glGetTransformFeedbackVarying = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLsizei, mut=True], type: AttributeType, name: Ptr[GLchar, mut=True])
alias fptr_glGetUniformuiv = fn (program: GLuint, location: GLint, params: Ptr[GLuint, mut=True])
alias fptr_glGetVertexAttribIiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, mut=True])
alias fptr_glGetVertexAttribIuiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, mut=True])
alias fptr_glIsEnabledi = fn (target: EnableCap, index: GLuint) -> GLboolean
alias fptr_glIsFramebuffer = fn (framebuffer: GLuint) -> GLboolean
alias fptr_glIsRenderbuffer = fn (renderbuffer: GLuint) -> GLboolean
alias fptr_glIsVertexArray = fn (array: GLuint) -> GLboolean
alias fptr_glMapBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glRenderbufferStorage = fn (target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glRenderbufferStorageMultisample = fn (target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTexParameterIiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=True])
alias fptr_glTexParameterIuiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, mut=True])
alias fptr_glTransformFeedbackVaryings = fn (program: GLuint, count: GLsizei, varyings: Ptr[Ptr[GLchar, mut=True], mut=False], buffer_mode: TransformFeedbackBufferMode)
alias fptr_glUniform1ui = fn (location: GLint, v0: GLuint)
alias fptr_glUniform1uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glUniform2ui = fn (location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glUniform2uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glUniform3ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glUniform3uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glUniform4ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glUniform4uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribI1i = fn (index: GLuint, x: GLint)
alias fptr_glVertexAttribI1iv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttribI1ui = fn (index: GLuint, x: GLuint)
alias fptr_glVertexAttribI1uiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribI2i = fn (index: GLuint, x: GLint, y: GLint)
alias fptr_glVertexAttribI2iv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttribI2ui = fn (index: GLuint, x: GLuint, y: GLuint)
alias fptr_glVertexAttribI2uiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribI3i = fn (index: GLuint, x: GLint, y: GLint, z: GLint)
alias fptr_glVertexAttribI3iv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttribI3ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint)
alias fptr_glVertexAttribI3uiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribI4bv = fn (index: GLuint, v: Ptr[GLbyte, mut=True])
alias fptr_glVertexAttribI4i = fn (index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint)
alias fptr_glVertexAttribI4iv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glVertexAttribI4sv = fn (index: GLuint, v: Ptr[GLshort, mut=True])
alias fptr_glVertexAttribI4ubv = fn (index: GLuint, v: Ptr[GLubyte, mut=True])
alias fptr_glVertexAttribI4ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint)
alias fptr_glVertexAttribI4uiv = fn (index: GLuint, v: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribI4usv = fn (index: GLuint, v: Ptr[GLushort, mut=True])
alias fptr_glVertexAttribIPointer = fn (index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, mut=True])


struct GL_VERSION_3_0:
    """Functions for gl 3.0."""

    var begin_conditional_render: fptr_glBeginConditionalRender
    var begin_transform_feedback: fptr_glBeginTransformFeedback
    var bind_buffer_base: fptr_glBindBufferBase
    var bind_buffer_range: fptr_glBindBufferRange
    var bind_frag_data_location: fptr_glBindFragDataLocation
    var bind_framebuffer: fptr_glBindFramebuffer
    var bind_renderbuffer: fptr_glBindRenderbuffer
    var bind_vertex_array: fptr_glBindVertexArray
    var blit_framebuffer: fptr_glBlitFramebuffer
    var check_framebuffer_status: fptr_glCheckFramebufferStatus
    var clamp_color: fptr_glClampColor
    var clear_bufferfi: fptr_glClearBufferfi
    var clear_bufferfv: fptr_glClearBufferfv
    var clear_bufferiv: fptr_glClearBufferiv
    var clear_bufferuiv: fptr_glClearBufferuiv
    var color_maski: fptr_glColorMaski
    var delete_framebuffers: fptr_glDeleteFramebuffers
    var delete_renderbuffers: fptr_glDeleteRenderbuffers
    var delete_vertex_arrays: fptr_glDeleteVertexArrays
    var disablei: fptr_glDisablei
    var enablei: fptr_glEnablei
    var end_conditional_render: fptr_glEndConditionalRender
    var end_transform_feedback: fptr_glEndTransformFeedback
    var flush_mapped_buffer_range: fptr_glFlushMappedBufferRange
    var framebuffer_renderbuffer: fptr_glFramebufferRenderbuffer
    var framebuffer_texture1_d: fptr_glFramebufferTexture1D
    var framebuffer_texture2_d: fptr_glFramebufferTexture2D
    var framebuffer_texture3_d: fptr_glFramebufferTexture3D
    var framebuffer_texture_layer: fptr_glFramebufferTextureLayer
    var gen_framebuffers: fptr_glGenFramebuffers
    var gen_renderbuffers: fptr_glGenRenderbuffers
    var gen_vertex_arrays: fptr_glGenVertexArrays
    var generate_mipmap: fptr_glGenerateMipmap
    var get_booleani_v: fptr_glGetBooleani_v
    var get_frag_data_location: fptr_glGetFragDataLocation
    var get_framebuffer_attachment_parameteriv: fptr_glGetFramebufferAttachmentParameteriv
    var get_integeri_v: fptr_glGetIntegeri_v
    var get_renderbuffer_parameteriv: fptr_glGetRenderbufferParameteriv
    var get_stringi: fptr_glGetStringi
    var get_tex_parameter_iiv: fptr_glGetTexParameterIiv
    var get_tex_parameter_iuiv: fptr_glGetTexParameterIuiv
    var get_transform_feedback_varying: fptr_glGetTransformFeedbackVarying
    var get_uniformuiv: fptr_glGetUniformuiv
    var get_vertex_attrib_iiv: fptr_glGetVertexAttribIiv
    var get_vertex_attrib_iuiv: fptr_glGetVertexAttribIuiv
    var is_enabledi: fptr_glIsEnabledi
    var is_framebuffer: fptr_glIsFramebuffer
    var is_renderbuffer: fptr_glIsRenderbuffer
    var is_vertex_array: fptr_glIsVertexArray
    var map_buffer_range: fptr_glMapBufferRange
    var renderbuffer_storage: fptr_glRenderbufferStorage
    var renderbuffer_storage_multisample: fptr_glRenderbufferStorageMultisample
    var tex_parameter_iiv: fptr_glTexParameterIiv
    var tex_parameter_iuiv: fptr_glTexParameterIuiv
    var transform_feedback_varyings: fptr_glTransformFeedbackVaryings
    var uniform1ui: fptr_glUniform1ui
    var uniform1uiv: fptr_glUniform1uiv
    var uniform2ui: fptr_glUniform2ui
    var uniform2uiv: fptr_glUniform2uiv
    var uniform3ui: fptr_glUniform3ui
    var uniform3uiv: fptr_glUniform3uiv
    var uniform4ui: fptr_glUniform4ui
    var uniform4uiv: fptr_glUniform4uiv
    var vertex_attrib_i1i: fptr_glVertexAttribI1i
    var vertex_attrib_i1iv: fptr_glVertexAttribI1iv
    var vertex_attrib_i1ui: fptr_glVertexAttribI1ui
    var vertex_attrib_i1uiv: fptr_glVertexAttribI1uiv
    var vertex_attrib_i2i: fptr_glVertexAttribI2i
    var vertex_attrib_i2iv: fptr_glVertexAttribI2iv
    var vertex_attrib_i2ui: fptr_glVertexAttribI2ui
    var vertex_attrib_i2uiv: fptr_glVertexAttribI2uiv
    var vertex_attrib_i3i: fptr_glVertexAttribI3i
    var vertex_attrib_i3iv: fptr_glVertexAttribI3iv
    var vertex_attrib_i3ui: fptr_glVertexAttribI3ui
    var vertex_attrib_i3uiv: fptr_glVertexAttribI3uiv
    var vertex_attrib_i4bv: fptr_glVertexAttribI4bv
    var vertex_attrib_i4i: fptr_glVertexAttribI4i
    var vertex_attrib_i4iv: fptr_glVertexAttribI4iv
    var vertex_attrib_i4sv: fptr_glVertexAttribI4sv
    var vertex_attrib_i4ubv: fptr_glVertexAttribI4ubv
    var vertex_attrib_i4ui: fptr_glVertexAttribI4ui
    var vertex_attrib_i4uiv: fptr_glVertexAttribI4uiv
    var vertex_attrib_i4usv: fptr_glVertexAttribI4usv
    var vertex_attrib_i_pointer: fptr_glVertexAttribIPointer

    fn __init__(out self, load: LoadProc) raises:
        self.begin_conditional_render = load_proc[fptr_glBeginConditionalRender]("glBeginConditionalRender", load)
        self.begin_transform_feedback = load_proc[fptr_glBeginTransformFeedback]("glBeginTransformFeedback", load)
        self.bind_buffer_base = load_proc[fptr_glBindBufferBase]("glBindBufferBase", load)
        self.bind_buffer_range = load_proc[fptr_glBindBufferRange]("glBindBufferRange", load)
        self.bind_frag_data_location = load_proc[fptr_glBindFragDataLocation]("glBindFragDataLocation", load)
        self.bind_framebuffer = load_proc[fptr_glBindFramebuffer]("glBindFramebuffer", load)
        self.bind_renderbuffer = load_proc[fptr_glBindRenderbuffer]("glBindRenderbuffer", load)
        self.bind_vertex_array = load_proc[fptr_glBindVertexArray]("glBindVertexArray", load)
        self.blit_framebuffer = load_proc[fptr_glBlitFramebuffer]("glBlitFramebuffer", load)
        self.check_framebuffer_status = load_proc[fptr_glCheckFramebufferStatus]("glCheckFramebufferStatus", load)
        self.clamp_color = load_proc[fptr_glClampColor]("glClampColor", load)
        self.clear_bufferfi = load_proc[fptr_glClearBufferfi]("glClearBufferfi", load)
        self.clear_bufferfv = load_proc[fptr_glClearBufferfv]("glClearBufferfv", load)
        self.clear_bufferiv = load_proc[fptr_glClearBufferiv]("glClearBufferiv", load)
        self.clear_bufferuiv = load_proc[fptr_glClearBufferuiv]("glClearBufferuiv", load)
        self.color_maski = load_proc[fptr_glColorMaski]("glColorMaski", load)
        self.delete_framebuffers = load_proc[fptr_glDeleteFramebuffers]("glDeleteFramebuffers", load)
        self.delete_renderbuffers = load_proc[fptr_glDeleteRenderbuffers]("glDeleteRenderbuffers", load)
        self.delete_vertex_arrays = load_proc[fptr_glDeleteVertexArrays]("glDeleteVertexArrays", load)
        self.disablei = load_proc[fptr_glDisablei]("glDisablei", load)
        self.enablei = load_proc[fptr_glEnablei]("glEnablei", load)
        self.end_conditional_render = load_proc[fptr_glEndConditionalRender]("glEndConditionalRender", load)
        self.end_transform_feedback = load_proc[fptr_glEndTransformFeedback]("glEndTransformFeedback", load)
        self.flush_mapped_buffer_range = load_proc[fptr_glFlushMappedBufferRange]("glFlushMappedBufferRange", load)
        self.framebuffer_renderbuffer = load_proc[fptr_glFramebufferRenderbuffer]("glFramebufferRenderbuffer", load)
        self.framebuffer_texture1_d = load_proc[fptr_glFramebufferTexture1D]("glFramebufferTexture1D", load)
        self.framebuffer_texture2_d = load_proc[fptr_glFramebufferTexture2D]("glFramebufferTexture2D", load)
        self.framebuffer_texture3_d = load_proc[fptr_glFramebufferTexture3D]("glFramebufferTexture3D", load)
        self.framebuffer_texture_layer = load_proc[fptr_glFramebufferTextureLayer]("glFramebufferTextureLayer", load)
        self.gen_framebuffers = load_proc[fptr_glGenFramebuffers]("glGenFramebuffers", load)
        self.gen_renderbuffers = load_proc[fptr_glGenRenderbuffers]("glGenRenderbuffers", load)
        self.gen_vertex_arrays = load_proc[fptr_glGenVertexArrays]("glGenVertexArrays", load)
        self.generate_mipmap = load_proc[fptr_glGenerateMipmap]("glGenerateMipmap", load)
        self.get_booleani_v = load_proc[fptr_glGetBooleani_v]("glGetBooleani_v", load)
        self.get_frag_data_location = load_proc[fptr_glGetFragDataLocation]("glGetFragDataLocation", load)
        self.get_framebuffer_attachment_parameteriv = load_proc[fptr_glGetFramebufferAttachmentParameteriv]("glGetFramebufferAttachmentParameteriv", load)
        self.get_integeri_v = load_proc[fptr_glGetIntegeri_v]("glGetIntegeri_v", load)
        self.get_renderbuffer_parameteriv = load_proc[fptr_glGetRenderbufferParameteriv]("glGetRenderbufferParameteriv", load)
        self.get_stringi = load_proc[fptr_glGetStringi]("glGetStringi", load)
        self.get_tex_parameter_iiv = load_proc[fptr_glGetTexParameterIiv]("glGetTexParameterIiv", load)
        self.get_tex_parameter_iuiv = load_proc[fptr_glGetTexParameterIuiv]("glGetTexParameterIuiv", load)
        self.get_transform_feedback_varying = load_proc[fptr_glGetTransformFeedbackVarying]("glGetTransformFeedbackVarying", load)
        self.get_uniformuiv = load_proc[fptr_glGetUniformuiv]("glGetUniformuiv", load)
        self.get_vertex_attrib_iiv = load_proc[fptr_glGetVertexAttribIiv]("glGetVertexAttribIiv", load)
        self.get_vertex_attrib_iuiv = load_proc[fptr_glGetVertexAttribIuiv]("glGetVertexAttribIuiv", load)
        self.is_enabledi = load_proc[fptr_glIsEnabledi]("glIsEnabledi", load)
        self.is_framebuffer = load_proc[fptr_glIsFramebuffer]("glIsFramebuffer", load)
        self.is_renderbuffer = load_proc[fptr_glIsRenderbuffer]("glIsRenderbuffer", load)
        self.is_vertex_array = load_proc[fptr_glIsVertexArray]("glIsVertexArray", load)
        self.map_buffer_range = load_proc[fptr_glMapBufferRange]("glMapBufferRange", load)
        self.renderbuffer_storage = load_proc[fptr_glRenderbufferStorage]("glRenderbufferStorage", load)
        self.renderbuffer_storage_multisample = load_proc[fptr_glRenderbufferStorageMultisample]("glRenderbufferStorageMultisample", load)
        self.tex_parameter_iiv = load_proc[fptr_glTexParameterIiv]("glTexParameterIiv", load)
        self.tex_parameter_iuiv = load_proc[fptr_glTexParameterIuiv]("glTexParameterIuiv", load)
        self.transform_feedback_varyings = load_proc[fptr_glTransformFeedbackVaryings]("glTransformFeedbackVaryings", load)
        self.uniform1ui = load_proc[fptr_glUniform1ui]("glUniform1ui", load)
        self.uniform1uiv = load_proc[fptr_glUniform1uiv]("glUniform1uiv", load)
        self.uniform2ui = load_proc[fptr_glUniform2ui]("glUniform2ui", load)
        self.uniform2uiv = load_proc[fptr_glUniform2uiv]("glUniform2uiv", load)
        self.uniform3ui = load_proc[fptr_glUniform3ui]("glUniform3ui", load)
        self.uniform3uiv = load_proc[fptr_glUniform3uiv]("glUniform3uiv", load)
        self.uniform4ui = load_proc[fptr_glUniform4ui]("glUniform4ui", load)
        self.uniform4uiv = load_proc[fptr_glUniform4uiv]("glUniform4uiv", load)
        self.vertex_attrib_i1i = load_proc[fptr_glVertexAttribI1i]("glVertexAttribI1i", load)
        self.vertex_attrib_i1iv = load_proc[fptr_glVertexAttribI1iv]("glVertexAttribI1iv", load)
        self.vertex_attrib_i1ui = load_proc[fptr_glVertexAttribI1ui]("glVertexAttribI1ui", load)
        self.vertex_attrib_i1uiv = load_proc[fptr_glVertexAttribI1uiv]("glVertexAttribI1uiv", load)
        self.vertex_attrib_i2i = load_proc[fptr_glVertexAttribI2i]("glVertexAttribI2i", load)
        self.vertex_attrib_i2iv = load_proc[fptr_glVertexAttribI2iv]("glVertexAttribI2iv", load)
        self.vertex_attrib_i2ui = load_proc[fptr_glVertexAttribI2ui]("glVertexAttribI2ui", load)
        self.vertex_attrib_i2uiv = load_proc[fptr_glVertexAttribI2uiv]("glVertexAttribI2uiv", load)
        self.vertex_attrib_i3i = load_proc[fptr_glVertexAttribI3i]("glVertexAttribI3i", load)
        self.vertex_attrib_i3iv = load_proc[fptr_glVertexAttribI3iv]("glVertexAttribI3iv", load)
        self.vertex_attrib_i3ui = load_proc[fptr_glVertexAttribI3ui]("glVertexAttribI3ui", load)
        self.vertex_attrib_i3uiv = load_proc[fptr_glVertexAttribI3uiv]("glVertexAttribI3uiv", load)
        self.vertex_attrib_i4bv = load_proc[fptr_glVertexAttribI4bv]("glVertexAttribI4bv", load)
        self.vertex_attrib_i4i = load_proc[fptr_glVertexAttribI4i]("glVertexAttribI4i", load)
        self.vertex_attrib_i4iv = load_proc[fptr_glVertexAttribI4iv]("glVertexAttribI4iv", load)
        self.vertex_attrib_i4sv = load_proc[fptr_glVertexAttribI4sv]("glVertexAttribI4sv", load)
        self.vertex_attrib_i4ubv = load_proc[fptr_glVertexAttribI4ubv]("glVertexAttribI4ubv", load)
        self.vertex_attrib_i4ui = load_proc[fptr_glVertexAttribI4ui]("glVertexAttribI4ui", load)
        self.vertex_attrib_i4uiv = load_proc[fptr_glVertexAttribI4uiv]("glVertexAttribI4uiv", load)
        self.vertex_attrib_i4usv = load_proc[fptr_glVertexAttribI4usv]("glVertexAttribI4usv", load)
        self.vertex_attrib_i_pointer = load_proc[fptr_glVertexAttribIPointer]("glVertexAttribIPointer", load)


alias fptr_glCopyBufferSubData = fn (read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
alias fptr_glDrawArraysInstanced = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei)
alias fptr_glDrawElementsInstanced = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei)
alias fptr_glGetActiveUniformBlockName = fn (program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_block_name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniformBlockiv = fn (program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, mut=True])
alias fptr_glGetActiveUniformName = fn (program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveUniformsiv = fn (program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, mut=True], pname: UniformPName, params: Ptr[GLint, mut=True])
alias fptr_glGetUniformBlockIndex = fn (program: GLuint, uniform_block_name: Ptr[GLchar, mut=True]) -> GLuint
alias fptr_glGetUniformIndices = fn (program: GLuint, uniform_count: GLsizei, uniform_names: Ptr[Ptr[GLchar, mut=True], mut=False], uniform_indices: Ptr[GLuint, mut=True])
alias fptr_glPrimitiveRestartIndex = fn (index: GLuint)
alias fptr_glTexBuffer = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glUniformBlockBinding = fn (program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint)


struct GL_VERSION_3_1:
    """Functions for gl 3.1."""

    var copy_buffer_sub_data: fptr_glCopyBufferSubData
    var draw_arrays_instanced: fptr_glDrawArraysInstanced
    var draw_elements_instanced: fptr_glDrawElementsInstanced
    var get_active_uniform_block_name: fptr_glGetActiveUniformBlockName
    var get_active_uniform_blockiv: fptr_glGetActiveUniformBlockiv
    var get_active_uniform_name: fptr_glGetActiveUniformName
    var get_active_uniformsiv: fptr_glGetActiveUniformsiv
    var get_uniform_block_index: fptr_glGetUniformBlockIndex
    var get_uniform_indices: fptr_glGetUniformIndices
    var primitive_restart_index: fptr_glPrimitiveRestartIndex
    var tex_buffer: fptr_glTexBuffer
    var uniform_block_binding: fptr_glUniformBlockBinding

    fn __init__(out self, load: LoadProc) raises:
        self.copy_buffer_sub_data = load_proc[fptr_glCopyBufferSubData]("glCopyBufferSubData", load)
        self.draw_arrays_instanced = load_proc[fptr_glDrawArraysInstanced]("glDrawArraysInstanced", load)
        self.draw_elements_instanced = load_proc[fptr_glDrawElementsInstanced]("glDrawElementsInstanced", load)
        self.get_active_uniform_block_name = load_proc[fptr_glGetActiveUniformBlockName]("glGetActiveUniformBlockName", load)
        self.get_active_uniform_blockiv = load_proc[fptr_glGetActiveUniformBlockiv]("glGetActiveUniformBlockiv", load)
        self.get_active_uniform_name = load_proc[fptr_glGetActiveUniformName]("glGetActiveUniformName", load)
        self.get_active_uniformsiv = load_proc[fptr_glGetActiveUniformsiv]("glGetActiveUniformsiv", load)
        self.get_uniform_block_index = load_proc[fptr_glGetUniformBlockIndex]("glGetUniformBlockIndex", load)
        self.get_uniform_indices = load_proc[fptr_glGetUniformIndices]("glGetUniformIndices", load)
        self.primitive_restart_index = load_proc[fptr_glPrimitiveRestartIndex]("glPrimitiveRestartIndex", load)
        self.tex_buffer = load_proc[fptr_glTexBuffer]("glTexBuffer", load)
        self.uniform_block_binding = load_proc[fptr_glUniformBlockBinding]("glUniformBlockBinding", load)


alias fptr_glClientWaitSync = fn (sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> SyncStatus
alias fptr_glDeleteSync = fn (sync: GLsync)
alias fptr_glDrawElementsBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], basevertex: GLint)
alias fptr_glDrawElementsInstancedBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, basevertex: GLint)
alias fptr_glDrawRangeElementsBaseVertex = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], basevertex: GLint)
alias fptr_glFenceSync = fn (condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync
alias fptr_glFramebufferTexture = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glGetBufferParameteri64v = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, mut=True])
alias fptr_glGetInteger64i_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint64, mut=True])
alias fptr_glGetInteger64v = fn (pname: GetPName, data: Ptr[GLint64, mut=True])
alias fptr_glGetMultisamplefv = fn (pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, mut=True])
alias fptr_glGetSynciv = fn (sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, mut=True], values: Ptr[GLint, mut=True])
alias fptr_glIsSync = fn (sync: GLsync) -> GLboolean
alias fptr_glMultiDrawElementsBaseVertex = fn (mode: PrimitiveType, count: Ptr[GLsizei, mut=True], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=True], mut=False], drawcount: GLsizei, basevertex: Ptr[GLint, mut=True])
alias fptr_glProvokingVertex = fn (mode: VertexProvokingMode)
alias fptr_glSampleMaski = fn (mask_number: GLuint, mask: GLbitfield)
alias fptr_glTexImage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTexImage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glWaitSync = fn (sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64)


struct GL_VERSION_3_2:
    """Functions for gl 3.2."""

    var client_wait_sync: fptr_glClientWaitSync
    var delete_sync: fptr_glDeleteSync
    var draw_elements_base_vertex: fptr_glDrawElementsBaseVertex
    var draw_elements_instanced_base_vertex: fptr_glDrawElementsInstancedBaseVertex
    var draw_range_elements_base_vertex: fptr_glDrawRangeElementsBaseVertex
    var fence_sync: fptr_glFenceSync
    var framebuffer_texture: fptr_glFramebufferTexture
    var get_buffer_parameteri64v: fptr_glGetBufferParameteri64v
    var get_integer64i_v: fptr_glGetInteger64i_v
    var get_integer64v: fptr_glGetInteger64v
    var get_multisamplefv: fptr_glGetMultisamplefv
    var get_synciv: fptr_glGetSynciv
    var is_sync: fptr_glIsSync
    var multi_draw_elements_base_vertex: fptr_glMultiDrawElementsBaseVertex
    var provoking_vertex: fptr_glProvokingVertex
    var sample_maski: fptr_glSampleMaski
    var tex_image2_d_multisample: fptr_glTexImage2DMultisample
    var tex_image3_d_multisample: fptr_glTexImage3DMultisample
    var wait_sync: fptr_glWaitSync

    fn __init__(out self, load: LoadProc) raises:
        self.client_wait_sync = load_proc[fptr_glClientWaitSync]("glClientWaitSync", load)
        self.delete_sync = load_proc[fptr_glDeleteSync]("glDeleteSync", load)
        self.draw_elements_base_vertex = load_proc[fptr_glDrawElementsBaseVertex]("glDrawElementsBaseVertex", load)
        self.draw_elements_instanced_base_vertex = load_proc[fptr_glDrawElementsInstancedBaseVertex]("glDrawElementsInstancedBaseVertex", load)
        self.draw_range_elements_base_vertex = load_proc[fptr_glDrawRangeElementsBaseVertex]("glDrawRangeElementsBaseVertex", load)
        self.fence_sync = load_proc[fptr_glFenceSync]("glFenceSync", load)
        self.framebuffer_texture = load_proc[fptr_glFramebufferTexture]("glFramebufferTexture", load)
        self.get_buffer_parameteri64v = load_proc[fptr_glGetBufferParameteri64v]("glGetBufferParameteri64v", load)
        self.get_integer64i_v = load_proc[fptr_glGetInteger64i_v]("glGetInteger64i_v", load)
        self.get_integer64v = load_proc[fptr_glGetInteger64v]("glGetInteger64v", load)
        self.get_multisamplefv = load_proc[fptr_glGetMultisamplefv]("glGetMultisamplefv", load)
        self.get_synciv = load_proc[fptr_glGetSynciv]("glGetSynciv", load)
        self.is_sync = load_proc[fptr_glIsSync]("glIsSync", load)
        self.multi_draw_elements_base_vertex = load_proc[fptr_glMultiDrawElementsBaseVertex]("glMultiDrawElementsBaseVertex", load)
        self.provoking_vertex = load_proc[fptr_glProvokingVertex]("glProvokingVertex", load)
        self.sample_maski = load_proc[fptr_glSampleMaski]("glSampleMaski", load)
        self.tex_image2_d_multisample = load_proc[fptr_glTexImage2DMultisample]("glTexImage2DMultisample", load)
        self.tex_image3_d_multisample = load_proc[fptr_glTexImage3DMultisample]("glTexImage3DMultisample", load)
        self.wait_sync = load_proc[fptr_glWaitSync]("glWaitSync", load)


alias fptr_glBindFragDataLocationIndexed = fn (program: GLuint, color_number: GLuint, index: GLuint, name: Ptr[GLchar, mut=True])
alias fptr_glBindSampler = fn (unit: GLuint, sampler: GLuint)
alias fptr_glColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=True])
alias fptr_glColorP4ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glColorP4uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=True])
alias fptr_glDeleteSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glGenSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glGetFragDataIndex = fn (program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetQueryObjecti64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, mut=True])
alias fptr_glGetQueryObjectui64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, mut=True])
alias fptr_glGetSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True])
alias fptr_glGetSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, mut=True])
alias fptr_glGetSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, mut=True])
alias fptr_glGetSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True])
alias fptr_glIsSampler = fn (sampler: GLuint) -> GLboolean
alias fptr_glMultiTexCoordP1ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP1uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glMultiTexCoordP2ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP2uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glMultiTexCoordP3ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP3uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glMultiTexCoordP4ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
alias fptr_glMultiTexCoordP4uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glNormalP3ui = fn (type: NormalPointerType, coords: GLuint)
alias fptr_glNormalP3uiv = fn (type: NormalPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glQueryCounter = fn (id: GLuint, target: QueryCounterTarget)
alias fptr_glSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=True])
alias fptr_glSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, mut=True])
alias fptr_glSamplerParameterf = fn (sampler: GLuint, pname: SamplerParameterF, param: GLfloat)
alias fptr_glSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, mut=True])
alias fptr_glSamplerParameteri = fn (sampler: GLuint, pname: SamplerParameterI, param: GLint)
alias fptr_glSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=True])
alias fptr_glSecondaryColorP3ui = fn (type: ColorPointerType, color: GLuint)
alias fptr_glSecondaryColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, mut=True])
alias fptr_glTexCoordP1ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP1uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glTexCoordP2ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP2uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glTexCoordP3ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP3uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glTexCoordP4ui = fn (type: TexCoordPointerType, coords: GLuint)
alias fptr_glTexCoordP4uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribDivisor = fn (index: GLuint, divisor: GLuint)
alias fptr_glVertexAttribP1ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP1uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribP2ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP2uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribP3ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP3uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True])
alias fptr_glVertexAttribP4ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
alias fptr_glVertexAttribP4uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True])
alias fptr_glVertexP2ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP2uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=True])
alias fptr_glVertexP3ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP3uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=True])
alias fptr_glVertexP4ui = fn (type: VertexPointerType, value: GLuint)
alias fptr_glVertexP4uiv = fn (type: VertexPointerType, value: Ptr[GLuint, mut=True])


struct GL_VERSION_3_3:
    """Functions for gl 3.3."""

    var bind_frag_data_location_indexed: fptr_glBindFragDataLocationIndexed
    var bind_sampler: fptr_glBindSampler
    var color_p3ui: fptr_glColorP3ui
    var color_p3uiv: fptr_glColorP3uiv
    var color_p4ui: fptr_glColorP4ui
    var color_p4uiv: fptr_glColorP4uiv
    var delete_samplers: fptr_glDeleteSamplers
    var gen_samplers: fptr_glGenSamplers
    var get_frag_data_index: fptr_glGetFragDataIndex
    var get_query_objecti64v: fptr_glGetQueryObjecti64v
    var get_query_objectui64v: fptr_glGetQueryObjectui64v
    var get_sampler_parameter_iiv: fptr_glGetSamplerParameterIiv
    var get_sampler_parameter_iuiv: fptr_glGetSamplerParameterIuiv
    var get_sampler_parameterfv: fptr_glGetSamplerParameterfv
    var get_sampler_parameteriv: fptr_glGetSamplerParameteriv
    var is_sampler: fptr_glIsSampler
    var multi_tex_coord_p1ui: fptr_glMultiTexCoordP1ui
    var multi_tex_coord_p1uiv: fptr_glMultiTexCoordP1uiv
    var multi_tex_coord_p2ui: fptr_glMultiTexCoordP2ui
    var multi_tex_coord_p2uiv: fptr_glMultiTexCoordP2uiv
    var multi_tex_coord_p3ui: fptr_glMultiTexCoordP3ui
    var multi_tex_coord_p3uiv: fptr_glMultiTexCoordP3uiv
    var multi_tex_coord_p4ui: fptr_glMultiTexCoordP4ui
    var multi_tex_coord_p4uiv: fptr_glMultiTexCoordP4uiv
    var normal_p3ui: fptr_glNormalP3ui
    var normal_p3uiv: fptr_glNormalP3uiv
    var query_counter: fptr_glQueryCounter
    var sampler_parameter_iiv: fptr_glSamplerParameterIiv
    var sampler_parameter_iuiv: fptr_glSamplerParameterIuiv
    var sampler_parameterf: fptr_glSamplerParameterf
    var sampler_parameterfv: fptr_glSamplerParameterfv
    var sampler_parameteri: fptr_glSamplerParameteri
    var sampler_parameteriv: fptr_glSamplerParameteriv
    var secondary_color_p3ui: fptr_glSecondaryColorP3ui
    var secondary_color_p3uiv: fptr_glSecondaryColorP3uiv
    var tex_coord_p1ui: fptr_glTexCoordP1ui
    var tex_coord_p1uiv: fptr_glTexCoordP1uiv
    var tex_coord_p2ui: fptr_glTexCoordP2ui
    var tex_coord_p2uiv: fptr_glTexCoordP2uiv
    var tex_coord_p3ui: fptr_glTexCoordP3ui
    var tex_coord_p3uiv: fptr_glTexCoordP3uiv
    var tex_coord_p4ui: fptr_glTexCoordP4ui
    var tex_coord_p4uiv: fptr_glTexCoordP4uiv
    var vertex_attrib_divisor: fptr_glVertexAttribDivisor
    var vertex_attrib_p1ui: fptr_glVertexAttribP1ui
    var vertex_attrib_p1uiv: fptr_glVertexAttribP1uiv
    var vertex_attrib_p2ui: fptr_glVertexAttribP2ui
    var vertex_attrib_p2uiv: fptr_glVertexAttribP2uiv
    var vertex_attrib_p3ui: fptr_glVertexAttribP3ui
    var vertex_attrib_p3uiv: fptr_glVertexAttribP3uiv
    var vertex_attrib_p4ui: fptr_glVertexAttribP4ui
    var vertex_attrib_p4uiv: fptr_glVertexAttribP4uiv
    var vertex_p2ui: fptr_glVertexP2ui
    var vertex_p2uiv: fptr_glVertexP2uiv
    var vertex_p3ui: fptr_glVertexP3ui
    var vertex_p3uiv: fptr_glVertexP3uiv
    var vertex_p4ui: fptr_glVertexP4ui
    var vertex_p4uiv: fptr_glVertexP4uiv

    fn __init__(out self, load: LoadProc) raises:
        self.bind_frag_data_location_indexed = load_proc[fptr_glBindFragDataLocationIndexed]("glBindFragDataLocationIndexed", load)
        self.bind_sampler = load_proc[fptr_glBindSampler]("glBindSampler", load)
        self.color_p3ui = load_proc[fptr_glColorP3ui]("glColorP3ui", load)
        self.color_p3uiv = load_proc[fptr_glColorP3uiv]("glColorP3uiv", load)
        self.color_p4ui = load_proc[fptr_glColorP4ui]("glColorP4ui", load)
        self.color_p4uiv = load_proc[fptr_glColorP4uiv]("glColorP4uiv", load)
        self.delete_samplers = load_proc[fptr_glDeleteSamplers]("glDeleteSamplers", load)
        self.gen_samplers = load_proc[fptr_glGenSamplers]("glGenSamplers", load)
        self.get_frag_data_index = load_proc[fptr_glGetFragDataIndex]("glGetFragDataIndex", load)
        self.get_query_objecti64v = load_proc[fptr_glGetQueryObjecti64v]("glGetQueryObjecti64v", load)
        self.get_query_objectui64v = load_proc[fptr_glGetQueryObjectui64v]("glGetQueryObjectui64v", load)
        self.get_sampler_parameter_iiv = load_proc[fptr_glGetSamplerParameterIiv]("glGetSamplerParameterIiv", load)
        self.get_sampler_parameter_iuiv = load_proc[fptr_glGetSamplerParameterIuiv]("glGetSamplerParameterIuiv", load)
        self.get_sampler_parameterfv = load_proc[fptr_glGetSamplerParameterfv]("glGetSamplerParameterfv", load)
        self.get_sampler_parameteriv = load_proc[fptr_glGetSamplerParameteriv]("glGetSamplerParameteriv", load)
        self.is_sampler = load_proc[fptr_glIsSampler]("glIsSampler", load)
        self.multi_tex_coord_p1ui = load_proc[fptr_glMultiTexCoordP1ui]("glMultiTexCoordP1ui", load)
        self.multi_tex_coord_p1uiv = load_proc[fptr_glMultiTexCoordP1uiv]("glMultiTexCoordP1uiv", load)
        self.multi_tex_coord_p2ui = load_proc[fptr_glMultiTexCoordP2ui]("glMultiTexCoordP2ui", load)
        self.multi_tex_coord_p2uiv = load_proc[fptr_glMultiTexCoordP2uiv]("glMultiTexCoordP2uiv", load)
        self.multi_tex_coord_p3ui = load_proc[fptr_glMultiTexCoordP3ui]("glMultiTexCoordP3ui", load)
        self.multi_tex_coord_p3uiv = load_proc[fptr_glMultiTexCoordP3uiv]("glMultiTexCoordP3uiv", load)
        self.multi_tex_coord_p4ui = load_proc[fptr_glMultiTexCoordP4ui]("glMultiTexCoordP4ui", load)
        self.multi_tex_coord_p4uiv = load_proc[fptr_glMultiTexCoordP4uiv]("glMultiTexCoordP4uiv", load)
        self.normal_p3ui = load_proc[fptr_glNormalP3ui]("glNormalP3ui", load)
        self.normal_p3uiv = load_proc[fptr_glNormalP3uiv]("glNormalP3uiv", load)
        self.query_counter = load_proc[fptr_glQueryCounter]("glQueryCounter", load)
        self.sampler_parameter_iiv = load_proc[fptr_glSamplerParameterIiv]("glSamplerParameterIiv", load)
        self.sampler_parameter_iuiv = load_proc[fptr_glSamplerParameterIuiv]("glSamplerParameterIuiv", load)
        self.sampler_parameterf = load_proc[fptr_glSamplerParameterf]("glSamplerParameterf", load)
        self.sampler_parameterfv = load_proc[fptr_glSamplerParameterfv]("glSamplerParameterfv", load)
        self.sampler_parameteri = load_proc[fptr_glSamplerParameteri]("glSamplerParameteri", load)
        self.sampler_parameteriv = load_proc[fptr_glSamplerParameteriv]("glSamplerParameteriv", load)
        self.secondary_color_p3ui = load_proc[fptr_glSecondaryColorP3ui]("glSecondaryColorP3ui", load)
        self.secondary_color_p3uiv = load_proc[fptr_glSecondaryColorP3uiv]("glSecondaryColorP3uiv", load)
        self.tex_coord_p1ui = load_proc[fptr_glTexCoordP1ui]("glTexCoordP1ui", load)
        self.tex_coord_p1uiv = load_proc[fptr_glTexCoordP1uiv]("glTexCoordP1uiv", load)
        self.tex_coord_p2ui = load_proc[fptr_glTexCoordP2ui]("glTexCoordP2ui", load)
        self.tex_coord_p2uiv = load_proc[fptr_glTexCoordP2uiv]("glTexCoordP2uiv", load)
        self.tex_coord_p3ui = load_proc[fptr_glTexCoordP3ui]("glTexCoordP3ui", load)
        self.tex_coord_p3uiv = load_proc[fptr_glTexCoordP3uiv]("glTexCoordP3uiv", load)
        self.tex_coord_p4ui = load_proc[fptr_glTexCoordP4ui]("glTexCoordP4ui", load)
        self.tex_coord_p4uiv = load_proc[fptr_glTexCoordP4uiv]("glTexCoordP4uiv", load)
        self.vertex_attrib_divisor = load_proc[fptr_glVertexAttribDivisor]("glVertexAttribDivisor", load)
        self.vertex_attrib_p1ui = load_proc[fptr_glVertexAttribP1ui]("glVertexAttribP1ui", load)
        self.vertex_attrib_p1uiv = load_proc[fptr_glVertexAttribP1uiv]("glVertexAttribP1uiv", load)
        self.vertex_attrib_p2ui = load_proc[fptr_glVertexAttribP2ui]("glVertexAttribP2ui", load)
        self.vertex_attrib_p2uiv = load_proc[fptr_glVertexAttribP2uiv]("glVertexAttribP2uiv", load)
        self.vertex_attrib_p3ui = load_proc[fptr_glVertexAttribP3ui]("glVertexAttribP3ui", load)
        self.vertex_attrib_p3uiv = load_proc[fptr_glVertexAttribP3uiv]("glVertexAttribP3uiv", load)
        self.vertex_attrib_p4ui = load_proc[fptr_glVertexAttribP4ui]("glVertexAttribP4ui", load)
        self.vertex_attrib_p4uiv = load_proc[fptr_glVertexAttribP4uiv]("glVertexAttribP4uiv", load)
        self.vertex_p2ui = load_proc[fptr_glVertexP2ui]("glVertexP2ui", load)
        self.vertex_p2uiv = load_proc[fptr_glVertexP2uiv]("glVertexP2uiv", load)
        self.vertex_p3ui = load_proc[fptr_glVertexP3ui]("glVertexP3ui", load)
        self.vertex_p3uiv = load_proc[fptr_glVertexP3uiv]("glVertexP3uiv", load)
        self.vertex_p4ui = load_proc[fptr_glVertexP4ui]("glVertexP4ui", load)
        self.vertex_p4uiv = load_proc[fptr_glVertexP4uiv]("glVertexP4uiv", load)


alias fptr_glBeginQueryIndexed = fn (target: QueryTarget, index: GLuint, id: GLuint)
alias fptr_glBindTransformFeedback = fn (target: BindTransformFeedbackTarget, id: GLuint)
alias fptr_glBlendEquationSeparatei = fn (buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
alias fptr_glBlendEquationi = fn (buf: GLuint, mode: BlendEquationModeEXT)
alias fptr_glBlendFuncSeparatei = fn (buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor)
alias fptr_glBlendFunci = fn (buf: GLuint, src: BlendingFactor, dst: BlendingFactor)
alias fptr_glDeleteTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=True])
alias fptr_glDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True])
alias fptr_glDrawTransformFeedback = fn (mode: PrimitiveType, id: GLuint)
alias fptr_glDrawTransformFeedbackStream = fn (mode: PrimitiveType, id: GLuint, stream: GLuint)
alias fptr_glEndQueryIndexed = fn (target: QueryTarget, index: GLuint)
alias fptr_glGenTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glGetActiveSubroutineName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveSubroutineUniformName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetActiveSubroutineUniformiv = fn (program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, mut=True])
alias fptr_glGetProgramStageiv = fn (program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, mut=True])
alias fptr_glGetQueryIndexediv = fn (target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetSubroutineIndex = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=True]) -> GLuint
alias fptr_glGetSubroutineUniformLocation = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetUniformSubroutineuiv = fn (shadertype: ShaderType, location: GLint, params: Ptr[GLuint, mut=True])
alias fptr_glGetUniformdv = fn (program: GLuint, location: GLint, params: Ptr[GLdouble, mut=True])
alias fptr_glIsTransformFeedback = fn (id: GLuint) -> GLboolean
alias fptr_glMinSampleShading = fn (value: GLfloat)
alias fptr_glPatchParameterfv = fn (pname: PatchParameterName, values: Ptr[GLfloat, mut=True])
alias fptr_glPatchParameteri = fn (pname: PatchParameterName, value: GLint)
alias fptr_glPauseTransformFeedback = fn ()
alias fptr_glResumeTransformFeedback = fn ()
alias fptr_glUniform1d = fn (location: GLint, x: GLdouble)
alias fptr_glUniform1dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glUniform2d = fn (location: GLint, x: GLdouble, y: GLdouble)
alias fptr_glUniform2dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glUniform3d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glUniform3dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glUniform4d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glUniform4dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix2x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix2x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix3x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix3x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix4x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformMatrix4x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glUniformSubroutinesuiv = fn (shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, mut=True])


struct GL_VERSION_4_0:
    """Functions for gl 4.0."""

    var begin_query_indexed: fptr_glBeginQueryIndexed
    var bind_transform_feedback: fptr_glBindTransformFeedback
    var blend_equation_separatei: fptr_glBlendEquationSeparatei
    var blend_equationi: fptr_glBlendEquationi
    var blend_func_separatei: fptr_glBlendFuncSeparatei
    var blend_funci: fptr_glBlendFunci
    var delete_transform_feedbacks: fptr_glDeleteTransformFeedbacks
    var draw_arrays_indirect: fptr_glDrawArraysIndirect
    var draw_elements_indirect: fptr_glDrawElementsIndirect
    var draw_transform_feedback: fptr_glDrawTransformFeedback
    var draw_transform_feedback_stream: fptr_glDrawTransformFeedbackStream
    var end_query_indexed: fptr_glEndQueryIndexed
    var gen_transform_feedbacks: fptr_glGenTransformFeedbacks
    var get_active_subroutine_name: fptr_glGetActiveSubroutineName
    var get_active_subroutine_uniform_name: fptr_glGetActiveSubroutineUniformName
    var get_active_subroutine_uniformiv: fptr_glGetActiveSubroutineUniformiv
    var get_program_stageiv: fptr_glGetProgramStageiv
    var get_query_indexediv: fptr_glGetQueryIndexediv
    var get_subroutine_index: fptr_glGetSubroutineIndex
    var get_subroutine_uniform_location: fptr_glGetSubroutineUniformLocation
    var get_uniform_subroutineuiv: fptr_glGetUniformSubroutineuiv
    var get_uniformdv: fptr_glGetUniformdv
    var is_transform_feedback: fptr_glIsTransformFeedback
    var min_sample_shading: fptr_glMinSampleShading
    var patch_parameterfv: fptr_glPatchParameterfv
    var patch_parameteri: fptr_glPatchParameteri
    var pause_transform_feedback: fptr_glPauseTransformFeedback
    var resume_transform_feedback: fptr_glResumeTransformFeedback
    var uniform1d: fptr_glUniform1d
    var uniform1dv: fptr_glUniform1dv
    var uniform2d: fptr_glUniform2d
    var uniform2dv: fptr_glUniform2dv
    var uniform3d: fptr_glUniform3d
    var uniform3dv: fptr_glUniform3dv
    var uniform4d: fptr_glUniform4d
    var uniform4dv: fptr_glUniform4dv
    var uniform_matrix2dv: fptr_glUniformMatrix2dv
    var uniform_matrix2x3dv: fptr_glUniformMatrix2x3dv
    var uniform_matrix2x4dv: fptr_glUniformMatrix2x4dv
    var uniform_matrix3dv: fptr_glUniformMatrix3dv
    var uniform_matrix3x2dv: fptr_glUniformMatrix3x2dv
    var uniform_matrix3x4dv: fptr_glUniformMatrix3x4dv
    var uniform_matrix4dv: fptr_glUniformMatrix4dv
    var uniform_matrix4x2dv: fptr_glUniformMatrix4x2dv
    var uniform_matrix4x3dv: fptr_glUniformMatrix4x3dv
    var uniform_subroutinesuiv: fptr_glUniformSubroutinesuiv

    fn __init__(out self, load: LoadProc) raises:
        self.begin_query_indexed = load_proc[fptr_glBeginQueryIndexed]("glBeginQueryIndexed", load)
        self.bind_transform_feedback = load_proc[fptr_glBindTransformFeedback]("glBindTransformFeedback", load)
        self.blend_equation_separatei = load_proc[fptr_glBlendEquationSeparatei]("glBlendEquationSeparatei", load)
        self.blend_equationi = load_proc[fptr_glBlendEquationi]("glBlendEquationi", load)
        self.blend_func_separatei = load_proc[fptr_glBlendFuncSeparatei]("glBlendFuncSeparatei", load)
        self.blend_funci = load_proc[fptr_glBlendFunci]("glBlendFunci", load)
        self.delete_transform_feedbacks = load_proc[fptr_glDeleteTransformFeedbacks]("glDeleteTransformFeedbacks", load)
        self.draw_arrays_indirect = load_proc[fptr_glDrawArraysIndirect]("glDrawArraysIndirect", load)
        self.draw_elements_indirect = load_proc[fptr_glDrawElementsIndirect]("glDrawElementsIndirect", load)
        self.draw_transform_feedback = load_proc[fptr_glDrawTransformFeedback]("glDrawTransformFeedback", load)
        self.draw_transform_feedback_stream = load_proc[fptr_glDrawTransformFeedbackStream]("glDrawTransformFeedbackStream", load)
        self.end_query_indexed = load_proc[fptr_glEndQueryIndexed]("glEndQueryIndexed", load)
        self.gen_transform_feedbacks = load_proc[fptr_glGenTransformFeedbacks]("glGenTransformFeedbacks", load)
        self.get_active_subroutine_name = load_proc[fptr_glGetActiveSubroutineName]("glGetActiveSubroutineName", load)
        self.get_active_subroutine_uniform_name = load_proc[fptr_glGetActiveSubroutineUniformName]("glGetActiveSubroutineUniformName", load)
        self.get_active_subroutine_uniformiv = load_proc[fptr_glGetActiveSubroutineUniformiv]("glGetActiveSubroutineUniformiv", load)
        self.get_program_stageiv = load_proc[fptr_glGetProgramStageiv]("glGetProgramStageiv", load)
        self.get_query_indexediv = load_proc[fptr_glGetQueryIndexediv]("glGetQueryIndexediv", load)
        self.get_subroutine_index = load_proc[fptr_glGetSubroutineIndex]("glGetSubroutineIndex", load)
        self.get_subroutine_uniform_location = load_proc[fptr_glGetSubroutineUniformLocation]("glGetSubroutineUniformLocation", load)
        self.get_uniform_subroutineuiv = load_proc[fptr_glGetUniformSubroutineuiv]("glGetUniformSubroutineuiv", load)
        self.get_uniformdv = load_proc[fptr_glGetUniformdv]("glGetUniformdv", load)
        self.is_transform_feedback = load_proc[fptr_glIsTransformFeedback]("glIsTransformFeedback", load)
        self.min_sample_shading = load_proc[fptr_glMinSampleShading]("glMinSampleShading", load)
        self.patch_parameterfv = load_proc[fptr_glPatchParameterfv]("glPatchParameterfv", load)
        self.patch_parameteri = load_proc[fptr_glPatchParameteri]("glPatchParameteri", load)
        self.pause_transform_feedback = load_proc[fptr_glPauseTransformFeedback]("glPauseTransformFeedback", load)
        self.resume_transform_feedback = load_proc[fptr_glResumeTransformFeedback]("glResumeTransformFeedback", load)
        self.uniform1d = load_proc[fptr_glUniform1d]("glUniform1d", load)
        self.uniform1dv = load_proc[fptr_glUniform1dv]("glUniform1dv", load)
        self.uniform2d = load_proc[fptr_glUniform2d]("glUniform2d", load)
        self.uniform2dv = load_proc[fptr_glUniform2dv]("glUniform2dv", load)
        self.uniform3d = load_proc[fptr_glUniform3d]("glUniform3d", load)
        self.uniform3dv = load_proc[fptr_glUniform3dv]("glUniform3dv", load)
        self.uniform4d = load_proc[fptr_glUniform4d]("glUniform4d", load)
        self.uniform4dv = load_proc[fptr_glUniform4dv]("glUniform4dv", load)
        self.uniform_matrix2dv = load_proc[fptr_glUniformMatrix2dv]("glUniformMatrix2dv", load)
        self.uniform_matrix2x3dv = load_proc[fptr_glUniformMatrix2x3dv]("glUniformMatrix2x3dv", load)
        self.uniform_matrix2x4dv = load_proc[fptr_glUniformMatrix2x4dv]("glUniformMatrix2x4dv", load)
        self.uniform_matrix3dv = load_proc[fptr_glUniformMatrix3dv]("glUniformMatrix3dv", load)
        self.uniform_matrix3x2dv = load_proc[fptr_glUniformMatrix3x2dv]("glUniformMatrix3x2dv", load)
        self.uniform_matrix3x4dv = load_proc[fptr_glUniformMatrix3x4dv]("glUniformMatrix3x4dv", load)
        self.uniform_matrix4dv = load_proc[fptr_glUniformMatrix4dv]("glUniformMatrix4dv", load)
        self.uniform_matrix4x2dv = load_proc[fptr_glUniformMatrix4x2dv]("glUniformMatrix4x2dv", load)
        self.uniform_matrix4x3dv = load_proc[fptr_glUniformMatrix4x3dv]("glUniformMatrix4x3dv", load)
        self.uniform_subroutinesuiv = load_proc[fptr_glUniformSubroutinesuiv]("glUniformSubroutinesuiv", load)


alias fptr_glActiveShaderProgram = fn (pipeline: GLuint, program: GLuint)
alias fptr_glBindProgramPipeline = fn (pipeline: GLuint)
alias fptr_glClearDepthf = fn (d: GLfloat)
alias fptr_glCreateShaderProgramv = fn (type: ShaderType, count: GLsizei, strings: Ptr[Ptr[GLchar, mut=True], mut=False]) -> GLuint
alias fptr_glDeleteProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=True])
alias fptr_glDepthRangeArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLdouble, mut=True])
alias fptr_glDepthRangeIndexed = fn (index: GLuint, n: GLdouble, f: GLdouble)
alias fptr_glDepthRangef = fn (n: GLfloat, f: GLfloat)
alias fptr_glGenProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=True])
alias fptr_glGetDoublei_v = fn (target: GetPName, index: GLuint, data: Ptr[GLdouble, mut=True])
alias fptr_glGetFloati_v = fn (target: GetPName, index: GLuint, data: Ptr[GLfloat, mut=True])
alias fptr_glGetProgramBinary = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], binary_format: Ptr[GLenum, mut=True], binary: Ptr[NoneType, mut=True])
alias fptr_glGetProgramPipelineInfoLog = fn (pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True])
alias fptr_glGetProgramPipelineiv = fn (pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetShaderPrecisionFormat = fn (shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, mut=True], precision: Ptr[GLint, mut=True])
alias fptr_glGetVertexAttribLdv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, mut=True])
alias fptr_glIsProgramPipeline = fn (pipeline: GLuint) -> GLboolean
alias fptr_glProgramBinary = fn (program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, mut=True], length: GLsizei)
alias fptr_glProgramParameteri = fn (program: GLuint, pname: ProgramParameterPName, value: GLint)
alias fptr_glProgramUniform1d = fn (program: GLuint, location: GLint, v0: GLdouble)
alias fptr_glProgramUniform1dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniform1f = fn (program: GLuint, location: GLint, v0: GLfloat)
alias fptr_glProgramUniform1fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniform1i = fn (program: GLuint, location: GLint, v0: GLint)
alias fptr_glProgramUniform1iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glProgramUniform1ui = fn (program: GLuint, location: GLint, v0: GLuint)
alias fptr_glProgramUniform1uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glProgramUniform2d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble)
alias fptr_glProgramUniform2dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniform2f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat)
alias fptr_glProgramUniform2fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniform2i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint)
alias fptr_glProgramUniform2iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glProgramUniform2ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint)
alias fptr_glProgramUniform2uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glProgramUniform3d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble)
alias fptr_glProgramUniform3dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniform3f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
alias fptr_glProgramUniform3fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniform3i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint)
alias fptr_glProgramUniform3iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glProgramUniform3ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
alias fptr_glProgramUniform3uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glProgramUniform4d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble)
alias fptr_glProgramUniform4dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniform4f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
alias fptr_glProgramUniform4fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniform4i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
alias fptr_glProgramUniform4iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True])
alias fptr_glProgramUniform4ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
alias fptr_glProgramUniform4uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True])
alias fptr_glProgramUniformMatrix2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix2x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix2x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix2x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix2x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix3x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix3x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix3x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix3x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix4x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix4x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glProgramUniformMatrix4x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True])
alias fptr_glProgramUniformMatrix4x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True])
alias fptr_glReleaseShaderCompiler = fn ()
alias fptr_glScissorArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLint, mut=True])
alias fptr_glScissorIndexed = fn (index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei)
alias fptr_glScissorIndexedv = fn (index: GLuint, v: Ptr[GLint, mut=True])
alias fptr_glShaderBinary = fn (count: GLsizei, shaders: Ptr[GLuint, mut=True], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, mut=True], length: GLsizei)
alias fptr_glUseProgramStages = fn (pipeline: GLuint, stages: UseProgramStageMask, program: GLuint)
alias fptr_glValidateProgramPipeline = fn (pipeline: GLuint)
alias fptr_glVertexAttribL1d = fn (index: GLuint, x: GLdouble)
alias fptr_glVertexAttribL1dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttribL2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
alias fptr_glVertexAttribL2dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttribL3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
alias fptr_glVertexAttribL3dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttribL4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
alias fptr_glVertexAttribL4dv = fn (index: GLuint, v: Ptr[GLdouble, mut=True])
alias fptr_glVertexAttribLPointer = fn (index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, mut=True])
alias fptr_glViewportArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLfloat, mut=True])
alias fptr_glViewportIndexedf = fn (index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat)
alias fptr_glViewportIndexedfv = fn (index: GLuint, v: Ptr[GLfloat, mut=True])


struct GL_VERSION_4_1:
    """Functions for gl 4.1."""

    var active_shader_program: fptr_glActiveShaderProgram
    var bind_program_pipeline: fptr_glBindProgramPipeline
    var clear_depthf: fptr_glClearDepthf
    var create_shader_programv: fptr_glCreateShaderProgramv
    var delete_program_pipelines: fptr_glDeleteProgramPipelines
    var depth_range_arrayv: fptr_glDepthRangeArrayv
    var depth_range_indexed: fptr_glDepthRangeIndexed
    var depth_rangef: fptr_glDepthRangef
    var gen_program_pipelines: fptr_glGenProgramPipelines
    var get_doublei_v: fptr_glGetDoublei_v
    var get_floati_v: fptr_glGetFloati_v
    var get_program_binary: fptr_glGetProgramBinary
    var get_program_pipeline_info_log: fptr_glGetProgramPipelineInfoLog
    var get_program_pipelineiv: fptr_glGetProgramPipelineiv
    var get_shader_precision_format: fptr_glGetShaderPrecisionFormat
    var get_vertex_attrib_ldv: fptr_glGetVertexAttribLdv
    var is_program_pipeline: fptr_glIsProgramPipeline
    var program_binary: fptr_glProgramBinary
    var program_parameteri: fptr_glProgramParameteri
    var program_uniform1d: fptr_glProgramUniform1d
    var program_uniform1dv: fptr_glProgramUniform1dv
    var program_uniform1f: fptr_glProgramUniform1f
    var program_uniform1fv: fptr_glProgramUniform1fv
    var program_uniform1i: fptr_glProgramUniform1i
    var program_uniform1iv: fptr_glProgramUniform1iv
    var program_uniform1ui: fptr_glProgramUniform1ui
    var program_uniform1uiv: fptr_glProgramUniform1uiv
    var program_uniform2d: fptr_glProgramUniform2d
    var program_uniform2dv: fptr_glProgramUniform2dv
    var program_uniform2f: fptr_glProgramUniform2f
    var program_uniform2fv: fptr_glProgramUniform2fv
    var program_uniform2i: fptr_glProgramUniform2i
    var program_uniform2iv: fptr_glProgramUniform2iv
    var program_uniform2ui: fptr_glProgramUniform2ui
    var program_uniform2uiv: fptr_glProgramUniform2uiv
    var program_uniform3d: fptr_glProgramUniform3d
    var program_uniform3dv: fptr_glProgramUniform3dv
    var program_uniform3f: fptr_glProgramUniform3f
    var program_uniform3fv: fptr_glProgramUniform3fv
    var program_uniform3i: fptr_glProgramUniform3i
    var program_uniform3iv: fptr_glProgramUniform3iv
    var program_uniform3ui: fptr_glProgramUniform3ui
    var program_uniform3uiv: fptr_glProgramUniform3uiv
    var program_uniform4d: fptr_glProgramUniform4d
    var program_uniform4dv: fptr_glProgramUniform4dv
    var program_uniform4f: fptr_glProgramUniform4f
    var program_uniform4fv: fptr_glProgramUniform4fv
    var program_uniform4i: fptr_glProgramUniform4i
    var program_uniform4iv: fptr_glProgramUniform4iv
    var program_uniform4ui: fptr_glProgramUniform4ui
    var program_uniform4uiv: fptr_glProgramUniform4uiv
    var program_uniform_matrix2dv: fptr_glProgramUniformMatrix2dv
    var program_uniform_matrix2fv: fptr_glProgramUniformMatrix2fv
    var program_uniform_matrix2x3dv: fptr_glProgramUniformMatrix2x3dv
    var program_uniform_matrix2x3fv: fptr_glProgramUniformMatrix2x3fv
    var program_uniform_matrix2x4dv: fptr_glProgramUniformMatrix2x4dv
    var program_uniform_matrix2x4fv: fptr_glProgramUniformMatrix2x4fv
    var program_uniform_matrix3dv: fptr_glProgramUniformMatrix3dv
    var program_uniform_matrix3fv: fptr_glProgramUniformMatrix3fv
    var program_uniform_matrix3x2dv: fptr_glProgramUniformMatrix3x2dv
    var program_uniform_matrix3x2fv: fptr_glProgramUniformMatrix3x2fv
    var program_uniform_matrix3x4dv: fptr_glProgramUniformMatrix3x4dv
    var program_uniform_matrix3x4fv: fptr_glProgramUniformMatrix3x4fv
    var program_uniform_matrix4dv: fptr_glProgramUniformMatrix4dv
    var program_uniform_matrix4fv: fptr_glProgramUniformMatrix4fv
    var program_uniform_matrix4x2dv: fptr_glProgramUniformMatrix4x2dv
    var program_uniform_matrix4x2fv: fptr_glProgramUniformMatrix4x2fv
    var program_uniform_matrix4x3dv: fptr_glProgramUniformMatrix4x3dv
    var program_uniform_matrix4x3fv: fptr_glProgramUniformMatrix4x3fv
    var release_shader_compiler: fptr_glReleaseShaderCompiler
    var scissor_arrayv: fptr_glScissorArrayv
    var scissor_indexed: fptr_glScissorIndexed
    var scissor_indexedv: fptr_glScissorIndexedv
    var shader_binary: fptr_glShaderBinary
    var use_program_stages: fptr_glUseProgramStages
    var validate_program_pipeline: fptr_glValidateProgramPipeline
    var vertex_attrib_l1d: fptr_glVertexAttribL1d
    var vertex_attrib_l1dv: fptr_glVertexAttribL1dv
    var vertex_attrib_l2d: fptr_glVertexAttribL2d
    var vertex_attrib_l2dv: fptr_glVertexAttribL2dv
    var vertex_attrib_l3d: fptr_glVertexAttribL3d
    var vertex_attrib_l3dv: fptr_glVertexAttribL3dv
    var vertex_attrib_l4d: fptr_glVertexAttribL4d
    var vertex_attrib_l4dv: fptr_glVertexAttribL4dv
    var vertex_attrib_l_pointer: fptr_glVertexAttribLPointer
    var viewport_arrayv: fptr_glViewportArrayv
    var viewport_indexedf: fptr_glViewportIndexedf
    var viewport_indexedfv: fptr_glViewportIndexedfv

    fn __init__(out self, load: LoadProc) raises:
        self.active_shader_program = load_proc[fptr_glActiveShaderProgram]("glActiveShaderProgram", load)
        self.bind_program_pipeline = load_proc[fptr_glBindProgramPipeline]("glBindProgramPipeline", load)
        self.clear_depthf = load_proc[fptr_glClearDepthf]("glClearDepthf", load)
        self.create_shader_programv = load_proc[fptr_glCreateShaderProgramv]("glCreateShaderProgramv", load)
        self.delete_program_pipelines = load_proc[fptr_glDeleteProgramPipelines]("glDeleteProgramPipelines", load)
        self.depth_range_arrayv = load_proc[fptr_glDepthRangeArrayv]("glDepthRangeArrayv", load)
        self.depth_range_indexed = load_proc[fptr_glDepthRangeIndexed]("glDepthRangeIndexed", load)
        self.depth_rangef = load_proc[fptr_glDepthRangef]("glDepthRangef", load)
        self.gen_program_pipelines = load_proc[fptr_glGenProgramPipelines]("glGenProgramPipelines", load)
        self.get_doublei_v = load_proc[fptr_glGetDoublei_v]("glGetDoublei_v", load)
        self.get_floati_v = load_proc[fptr_glGetFloati_v]("glGetFloati_v", load)
        self.get_program_binary = load_proc[fptr_glGetProgramBinary]("glGetProgramBinary", load)
        self.get_program_pipeline_info_log = load_proc[fptr_glGetProgramPipelineInfoLog]("glGetProgramPipelineInfoLog", load)
        self.get_program_pipelineiv = load_proc[fptr_glGetProgramPipelineiv]("glGetProgramPipelineiv", load)
        self.get_shader_precision_format = load_proc[fptr_glGetShaderPrecisionFormat]("glGetShaderPrecisionFormat", load)
        self.get_vertex_attrib_ldv = load_proc[fptr_glGetVertexAttribLdv]("glGetVertexAttribLdv", load)
        self.is_program_pipeline = load_proc[fptr_glIsProgramPipeline]("glIsProgramPipeline", load)
        self.program_binary = load_proc[fptr_glProgramBinary]("glProgramBinary", load)
        self.program_parameteri = load_proc[fptr_glProgramParameteri]("glProgramParameteri", load)
        self.program_uniform1d = load_proc[fptr_glProgramUniform1d]("glProgramUniform1d", load)
        self.program_uniform1dv = load_proc[fptr_glProgramUniform1dv]("glProgramUniform1dv", load)
        self.program_uniform1f = load_proc[fptr_glProgramUniform1f]("glProgramUniform1f", load)
        self.program_uniform1fv = load_proc[fptr_glProgramUniform1fv]("glProgramUniform1fv", load)
        self.program_uniform1i = load_proc[fptr_glProgramUniform1i]("glProgramUniform1i", load)
        self.program_uniform1iv = load_proc[fptr_glProgramUniform1iv]("glProgramUniform1iv", load)
        self.program_uniform1ui = load_proc[fptr_glProgramUniform1ui]("glProgramUniform1ui", load)
        self.program_uniform1uiv = load_proc[fptr_glProgramUniform1uiv]("glProgramUniform1uiv", load)
        self.program_uniform2d = load_proc[fptr_glProgramUniform2d]("glProgramUniform2d", load)
        self.program_uniform2dv = load_proc[fptr_glProgramUniform2dv]("glProgramUniform2dv", load)
        self.program_uniform2f = load_proc[fptr_glProgramUniform2f]("glProgramUniform2f", load)
        self.program_uniform2fv = load_proc[fptr_glProgramUniform2fv]("glProgramUniform2fv", load)
        self.program_uniform2i = load_proc[fptr_glProgramUniform2i]("glProgramUniform2i", load)
        self.program_uniform2iv = load_proc[fptr_glProgramUniform2iv]("glProgramUniform2iv", load)
        self.program_uniform2ui = load_proc[fptr_glProgramUniform2ui]("glProgramUniform2ui", load)
        self.program_uniform2uiv = load_proc[fptr_glProgramUniform2uiv]("glProgramUniform2uiv", load)
        self.program_uniform3d = load_proc[fptr_glProgramUniform3d]("glProgramUniform3d", load)
        self.program_uniform3dv = load_proc[fptr_glProgramUniform3dv]("glProgramUniform3dv", load)
        self.program_uniform3f = load_proc[fptr_glProgramUniform3f]("glProgramUniform3f", load)
        self.program_uniform3fv = load_proc[fptr_glProgramUniform3fv]("glProgramUniform3fv", load)
        self.program_uniform3i = load_proc[fptr_glProgramUniform3i]("glProgramUniform3i", load)
        self.program_uniform3iv = load_proc[fptr_glProgramUniform3iv]("glProgramUniform3iv", load)
        self.program_uniform3ui = load_proc[fptr_glProgramUniform3ui]("glProgramUniform3ui", load)
        self.program_uniform3uiv = load_proc[fptr_glProgramUniform3uiv]("glProgramUniform3uiv", load)
        self.program_uniform4d = load_proc[fptr_glProgramUniform4d]("glProgramUniform4d", load)
        self.program_uniform4dv = load_proc[fptr_glProgramUniform4dv]("glProgramUniform4dv", load)
        self.program_uniform4f = load_proc[fptr_glProgramUniform4f]("glProgramUniform4f", load)
        self.program_uniform4fv = load_proc[fptr_glProgramUniform4fv]("glProgramUniform4fv", load)
        self.program_uniform4i = load_proc[fptr_glProgramUniform4i]("glProgramUniform4i", load)
        self.program_uniform4iv = load_proc[fptr_glProgramUniform4iv]("glProgramUniform4iv", load)
        self.program_uniform4ui = load_proc[fptr_glProgramUniform4ui]("glProgramUniform4ui", load)
        self.program_uniform4uiv = load_proc[fptr_glProgramUniform4uiv]("glProgramUniform4uiv", load)
        self.program_uniform_matrix2dv = load_proc[fptr_glProgramUniformMatrix2dv]("glProgramUniformMatrix2dv", load)
        self.program_uniform_matrix2fv = load_proc[fptr_glProgramUniformMatrix2fv]("glProgramUniformMatrix2fv", load)
        self.program_uniform_matrix2x3dv = load_proc[fptr_glProgramUniformMatrix2x3dv]("glProgramUniformMatrix2x3dv", load)
        self.program_uniform_matrix2x3fv = load_proc[fptr_glProgramUniformMatrix2x3fv]("glProgramUniformMatrix2x3fv", load)
        self.program_uniform_matrix2x4dv = load_proc[fptr_glProgramUniformMatrix2x4dv]("glProgramUniformMatrix2x4dv", load)
        self.program_uniform_matrix2x4fv = load_proc[fptr_glProgramUniformMatrix2x4fv]("glProgramUniformMatrix2x4fv", load)
        self.program_uniform_matrix3dv = load_proc[fptr_glProgramUniformMatrix3dv]("glProgramUniformMatrix3dv", load)
        self.program_uniform_matrix3fv = load_proc[fptr_glProgramUniformMatrix3fv]("glProgramUniformMatrix3fv", load)
        self.program_uniform_matrix3x2dv = load_proc[fptr_glProgramUniformMatrix3x2dv]("glProgramUniformMatrix3x2dv", load)
        self.program_uniform_matrix3x2fv = load_proc[fptr_glProgramUniformMatrix3x2fv]("glProgramUniformMatrix3x2fv", load)
        self.program_uniform_matrix3x4dv = load_proc[fptr_glProgramUniformMatrix3x4dv]("glProgramUniformMatrix3x4dv", load)
        self.program_uniform_matrix3x4fv = load_proc[fptr_glProgramUniformMatrix3x4fv]("glProgramUniformMatrix3x4fv", load)
        self.program_uniform_matrix4dv = load_proc[fptr_glProgramUniformMatrix4dv]("glProgramUniformMatrix4dv", load)
        self.program_uniform_matrix4fv = load_proc[fptr_glProgramUniformMatrix4fv]("glProgramUniformMatrix4fv", load)
        self.program_uniform_matrix4x2dv = load_proc[fptr_glProgramUniformMatrix4x2dv]("glProgramUniformMatrix4x2dv", load)
        self.program_uniform_matrix4x2fv = load_proc[fptr_glProgramUniformMatrix4x2fv]("glProgramUniformMatrix4x2fv", load)
        self.program_uniform_matrix4x3dv = load_proc[fptr_glProgramUniformMatrix4x3dv]("glProgramUniformMatrix4x3dv", load)
        self.program_uniform_matrix4x3fv = load_proc[fptr_glProgramUniformMatrix4x3fv]("glProgramUniformMatrix4x3fv", load)
        self.release_shader_compiler = load_proc[fptr_glReleaseShaderCompiler]("glReleaseShaderCompiler", load)
        self.scissor_arrayv = load_proc[fptr_glScissorArrayv]("glScissorArrayv", load)
        self.scissor_indexed = load_proc[fptr_glScissorIndexed]("glScissorIndexed", load)
        self.scissor_indexedv = load_proc[fptr_glScissorIndexedv]("glScissorIndexedv", load)
        self.shader_binary = load_proc[fptr_glShaderBinary]("glShaderBinary", load)
        self.use_program_stages = load_proc[fptr_glUseProgramStages]("glUseProgramStages", load)
        self.validate_program_pipeline = load_proc[fptr_glValidateProgramPipeline]("glValidateProgramPipeline", load)
        self.vertex_attrib_l1d = load_proc[fptr_glVertexAttribL1d]("glVertexAttribL1d", load)
        self.vertex_attrib_l1dv = load_proc[fptr_glVertexAttribL1dv]("glVertexAttribL1dv", load)
        self.vertex_attrib_l2d = load_proc[fptr_glVertexAttribL2d]("glVertexAttribL2d", load)
        self.vertex_attrib_l2dv = load_proc[fptr_glVertexAttribL2dv]("glVertexAttribL2dv", load)
        self.vertex_attrib_l3d = load_proc[fptr_glVertexAttribL3d]("glVertexAttribL3d", load)
        self.vertex_attrib_l3dv = load_proc[fptr_glVertexAttribL3dv]("glVertexAttribL3dv", load)
        self.vertex_attrib_l4d = load_proc[fptr_glVertexAttribL4d]("glVertexAttribL4d", load)
        self.vertex_attrib_l4dv = load_proc[fptr_glVertexAttribL4dv]("glVertexAttribL4dv", load)
        self.vertex_attrib_l_pointer = load_proc[fptr_glVertexAttribLPointer]("glVertexAttribLPointer", load)
        self.viewport_arrayv = load_proc[fptr_glViewportArrayv]("glViewportArrayv", load)
        self.viewport_indexedf = load_proc[fptr_glViewportIndexedf]("glViewportIndexedf", load)
        self.viewport_indexedfv = load_proc[fptr_glViewportIndexedfv]("glViewportIndexedfv", load)


alias fptr_glBindImageTexture = fn (unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat)
alias fptr_glDrawArraysInstancedBaseInstance = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawElementsInstancedBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, baseinstance: GLuint)
alias fptr_glDrawElementsInstancedBaseVertexBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint)
alias fptr_glDrawTransformFeedbackInstanced = fn (mode: PrimitiveType, id: GLuint, instancecount: GLsizei)
alias fptr_glDrawTransformFeedbackStreamInstanced = fn (mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei)
alias fptr_glGetActiveAtomicCounterBufferiv = fn (program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, mut=True])
alias fptr_glGetInternalformativ = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, mut=True])
alias fptr_glMemoryBarrier = fn (barriers: MemoryBarrierMask)
alias fptr_glTexStorage1D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTexStorage2D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTexStorage3D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)


struct GL_VERSION_4_2:
    """Functions for gl 4.2."""

    var bind_image_texture: fptr_glBindImageTexture
    var draw_arrays_instanced_base_instance: fptr_glDrawArraysInstancedBaseInstance
    var draw_elements_instanced_base_instance: fptr_glDrawElementsInstancedBaseInstance
    var draw_elements_instanced_base_vertex_base_instance: fptr_glDrawElementsInstancedBaseVertexBaseInstance
    var draw_transform_feedback_instanced: fptr_glDrawTransformFeedbackInstanced
    var draw_transform_feedback_stream_instanced: fptr_glDrawTransformFeedbackStreamInstanced
    var get_active_atomic_counter_bufferiv: fptr_glGetActiveAtomicCounterBufferiv
    var get_internalformativ: fptr_glGetInternalformativ
    var memory_barrier: fptr_glMemoryBarrier
    var tex_storage1_d: fptr_glTexStorage1D
    var tex_storage2_d: fptr_glTexStorage2D
    var tex_storage3_d: fptr_glTexStorage3D

    fn __init__(out self, load: LoadProc) raises:
        self.bind_image_texture = load_proc[fptr_glBindImageTexture]("glBindImageTexture", load)
        self.draw_arrays_instanced_base_instance = load_proc[fptr_glDrawArraysInstancedBaseInstance]("glDrawArraysInstancedBaseInstance", load)
        self.draw_elements_instanced_base_instance = load_proc[fptr_glDrawElementsInstancedBaseInstance]("glDrawElementsInstancedBaseInstance", load)
        self.draw_elements_instanced_base_vertex_base_instance = load_proc[fptr_glDrawElementsInstancedBaseVertexBaseInstance]("glDrawElementsInstancedBaseVertexBaseInstance", load)
        self.draw_transform_feedback_instanced = load_proc[fptr_glDrawTransformFeedbackInstanced]("glDrawTransformFeedbackInstanced", load)
        self.draw_transform_feedback_stream_instanced = load_proc[fptr_glDrawTransformFeedbackStreamInstanced]("glDrawTransformFeedbackStreamInstanced", load)
        self.get_active_atomic_counter_bufferiv = load_proc[fptr_glGetActiveAtomicCounterBufferiv]("glGetActiveAtomicCounterBufferiv", load)
        self.get_internalformativ = load_proc[fptr_glGetInternalformativ]("glGetInternalformativ", load)
        self.memory_barrier = load_proc[fptr_glMemoryBarrier]("glMemoryBarrier", load)
        self.tex_storage1_d = load_proc[fptr_glTexStorage1D]("glTexStorage1D", load)
        self.tex_storage2_d = load_proc[fptr_glTexStorage2D]("glTexStorage2D", load)
        self.tex_storage3_d = load_proc[fptr_glTexStorage3D]("glTexStorage3D", load)


alias fptr_glBindVertexBuffer = fn (bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
alias fptr_glClearBufferData = fn (target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])
alias fptr_glClearBufferSubData = fn (target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])
alias fptr_glCopyImageSubData = fn (src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei)
alias fptr_glDebugMessageCallback = fn (callback: GLDEBUGPROC, user_param: Ptr[NoneType, mut=True])
alias fptr_glDebugMessageControl = fn (source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, mut=True], enabled: GLboolean)
alias fptr_glDebugMessageInsert = fn (source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar, mut=True])
alias fptr_glDispatchCompute = fn (num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint)
alias fptr_glDispatchComputeIndirect = fn (indirect: GLintptr)
alias fptr_glFramebufferParameteri = fn (target: FramebufferTarget, pname: FramebufferParameterName, param: GLint)
alias fptr_glGetDebugMessageLog = fn (count: GLuint, buf_size: GLsizei, sources: DebugSource, types: DebugType, ids: Ptr[GLuint, mut=True], severities: DebugSeverity, lengths: Ptr[GLsizei, mut=True], message_log: Ptr[GLchar, mut=True]) -> GLuint
alias fptr_glGetFramebufferParameteriv = fn (target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetInternalformati64v = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, mut=True])
alias fptr_glGetObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True])
alias fptr_glGetObjectPtrLabel = fn (ptr: Ptr[NoneType, mut=True], buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True])
alias fptr_glGetProgramInterfaceiv = fn (program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, mut=True])
alias fptr_glGetProgramResourceIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLuint
alias fptr_glGetProgramResourceLocation = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetProgramResourceLocationIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLint
alias fptr_glGetProgramResourceName = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True])
alias fptr_glGetProgramResourceiv = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: ProgramResourceProperty, count: GLsizei, length: Ptr[GLsizei, mut=True], params: Ptr[GLint, mut=True])
alias fptr_glInvalidateBufferData = fn (buffer: GLuint)
alias fptr_glInvalidateBufferSubData = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glInvalidateFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: InvalidateFramebufferAttachment)
alias fptr_glInvalidateSubFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: InvalidateFramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glInvalidateTexImage = fn (texture: GLuint, level: GLint)
alias fptr_glInvalidateTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glMultiDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=True], drawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True], drawcount: GLsizei, stride: GLsizei)
alias fptr_glObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar, mut=True])
alias fptr_glObjectPtrLabel = fn (ptr: Ptr[NoneType, mut=True], length: GLsizei, label: Ptr[GLchar, mut=True])
alias fptr_glPopDebugGroup = fn ()
alias fptr_glPushDebugGroup = fn (source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar, mut=True])
alias fptr_glShaderStorageBlockBinding = fn (program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint)
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

    var bind_vertex_buffer: fptr_glBindVertexBuffer
    var clear_buffer_data: fptr_glClearBufferData
    var clear_buffer_sub_data: fptr_glClearBufferSubData
    var copy_image_sub_data: fptr_glCopyImageSubData
    var debug_message_callback: fptr_glDebugMessageCallback
    var debug_message_control: fptr_glDebugMessageControl
    var debug_message_insert: fptr_glDebugMessageInsert
    var dispatch_compute: fptr_glDispatchCompute
    var dispatch_compute_indirect: fptr_glDispatchComputeIndirect
    var framebuffer_parameteri: fptr_glFramebufferParameteri
    var get_debug_message_log: fptr_glGetDebugMessageLog
    var get_framebuffer_parameteriv: fptr_glGetFramebufferParameteriv
    var get_internalformati64v: fptr_glGetInternalformati64v
    var get_object_label: fptr_glGetObjectLabel
    var get_object_ptr_label: fptr_glGetObjectPtrLabel
    var get_program_interfaceiv: fptr_glGetProgramInterfaceiv
    var get_program_resource_index: fptr_glGetProgramResourceIndex
    var get_program_resource_location: fptr_glGetProgramResourceLocation
    var get_program_resource_location_index: fptr_glGetProgramResourceLocationIndex
    var get_program_resource_name: fptr_glGetProgramResourceName
    var get_program_resourceiv: fptr_glGetProgramResourceiv
    var invalidate_buffer_data: fptr_glInvalidateBufferData
    var invalidate_buffer_sub_data: fptr_glInvalidateBufferSubData
    var invalidate_framebuffer: fptr_glInvalidateFramebuffer
    var invalidate_sub_framebuffer: fptr_glInvalidateSubFramebuffer
    var invalidate_tex_image: fptr_glInvalidateTexImage
    var invalidate_tex_sub_image: fptr_glInvalidateTexSubImage
    var multi_draw_arrays_indirect: fptr_glMultiDrawArraysIndirect
    var multi_draw_elements_indirect: fptr_glMultiDrawElementsIndirect
    var object_label: fptr_glObjectLabel
    var object_ptr_label: fptr_glObjectPtrLabel
    var pop_debug_group: fptr_glPopDebugGroup
    var push_debug_group: fptr_glPushDebugGroup
    var shader_storage_block_binding: fptr_glShaderStorageBlockBinding
    var tex_buffer_range: fptr_glTexBufferRange
    var tex_storage2_d_multisample: fptr_glTexStorage2DMultisample
    var tex_storage3_d_multisample: fptr_glTexStorage3DMultisample
    var texture_view: fptr_glTextureView
    var vertex_attrib_binding: fptr_glVertexAttribBinding
    var vertex_attrib_format: fptr_glVertexAttribFormat
    var vertex_attrib_i_format: fptr_glVertexAttribIFormat
    var vertex_attrib_l_format: fptr_glVertexAttribLFormat
    var vertex_binding_divisor: fptr_glVertexBindingDivisor

    fn __init__(out self, load: LoadProc) raises:
        self.bind_vertex_buffer = load_proc[fptr_glBindVertexBuffer]("glBindVertexBuffer", load)
        self.clear_buffer_data = load_proc[fptr_glClearBufferData]("glClearBufferData", load)
        self.clear_buffer_sub_data = load_proc[fptr_glClearBufferSubData]("glClearBufferSubData", load)
        self.copy_image_sub_data = load_proc[fptr_glCopyImageSubData]("glCopyImageSubData", load)
        self.debug_message_callback = load_proc[fptr_glDebugMessageCallback]("glDebugMessageCallback", load)
        self.debug_message_control = load_proc[fptr_glDebugMessageControl]("glDebugMessageControl", load)
        self.debug_message_insert = load_proc[fptr_glDebugMessageInsert]("glDebugMessageInsert", load)
        self.dispatch_compute = load_proc[fptr_glDispatchCompute]("glDispatchCompute", load)
        self.dispatch_compute_indirect = load_proc[fptr_glDispatchComputeIndirect]("glDispatchComputeIndirect", load)
        self.framebuffer_parameteri = load_proc[fptr_glFramebufferParameteri]("glFramebufferParameteri", load)
        self.get_debug_message_log = load_proc[fptr_glGetDebugMessageLog]("glGetDebugMessageLog", load)
        self.get_framebuffer_parameteriv = load_proc[fptr_glGetFramebufferParameteriv]("glGetFramebufferParameteriv", load)
        self.get_internalformati64v = load_proc[fptr_glGetInternalformati64v]("glGetInternalformati64v", load)
        self.get_object_label = load_proc[fptr_glGetObjectLabel]("glGetObjectLabel", load)
        self.get_object_ptr_label = load_proc[fptr_glGetObjectPtrLabel]("glGetObjectPtrLabel", load)
        self.get_program_interfaceiv = load_proc[fptr_glGetProgramInterfaceiv]("glGetProgramInterfaceiv", load)
        self.get_program_resource_index = load_proc[fptr_glGetProgramResourceIndex]("glGetProgramResourceIndex", load)
        self.get_program_resource_location = load_proc[fptr_glGetProgramResourceLocation]("glGetProgramResourceLocation", load)
        self.get_program_resource_location_index = load_proc[fptr_glGetProgramResourceLocationIndex]("glGetProgramResourceLocationIndex", load)
        self.get_program_resource_name = load_proc[fptr_glGetProgramResourceName]("glGetProgramResourceName", load)
        self.get_program_resourceiv = load_proc[fptr_glGetProgramResourceiv]("glGetProgramResourceiv", load)
        self.invalidate_buffer_data = load_proc[fptr_glInvalidateBufferData]("glInvalidateBufferData", load)
        self.invalidate_buffer_sub_data = load_proc[fptr_glInvalidateBufferSubData]("glInvalidateBufferSubData", load)
        self.invalidate_framebuffer = load_proc[fptr_glInvalidateFramebuffer]("glInvalidateFramebuffer", load)
        self.invalidate_sub_framebuffer = load_proc[fptr_glInvalidateSubFramebuffer]("glInvalidateSubFramebuffer", load)
        self.invalidate_tex_image = load_proc[fptr_glInvalidateTexImage]("glInvalidateTexImage", load)
        self.invalidate_tex_sub_image = load_proc[fptr_glInvalidateTexSubImage]("glInvalidateTexSubImage", load)
        self.multi_draw_arrays_indirect = load_proc[fptr_glMultiDrawArraysIndirect]("glMultiDrawArraysIndirect", load)
        self.multi_draw_elements_indirect = load_proc[fptr_glMultiDrawElementsIndirect]("glMultiDrawElementsIndirect", load)
        self.object_label = load_proc[fptr_glObjectLabel]("glObjectLabel", load)
        self.object_ptr_label = load_proc[fptr_glObjectPtrLabel]("glObjectPtrLabel", load)
        self.pop_debug_group = load_proc[fptr_glPopDebugGroup]("glPopDebugGroup", load)
        self.push_debug_group = load_proc[fptr_glPushDebugGroup]("glPushDebugGroup", load)
        self.shader_storage_block_binding = load_proc[fptr_glShaderStorageBlockBinding]("glShaderStorageBlockBinding", load)
        self.tex_buffer_range = load_proc[fptr_glTexBufferRange]("glTexBufferRange", load)
        self.tex_storage2_d_multisample = load_proc[fptr_glTexStorage2DMultisample]("glTexStorage2DMultisample", load)
        self.tex_storage3_d_multisample = load_proc[fptr_glTexStorage3DMultisample]("glTexStorage3DMultisample", load)
        self.texture_view = load_proc[fptr_glTextureView]("glTextureView", load)
        self.vertex_attrib_binding = load_proc[fptr_glVertexAttribBinding]("glVertexAttribBinding", load)
        self.vertex_attrib_format = load_proc[fptr_glVertexAttribFormat]("glVertexAttribFormat", load)
        self.vertex_attrib_i_format = load_proc[fptr_glVertexAttribIFormat]("glVertexAttribIFormat", load)
        self.vertex_attrib_l_format = load_proc[fptr_glVertexAttribLFormat]("glVertexAttribLFormat", load)
        self.vertex_binding_divisor = load_proc[fptr_glVertexBindingDivisor]("glVertexBindingDivisor", load)


alias fptr_glBindBuffersBase = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glBindBuffersRange = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], sizes: Ptr[GLsizeiptr, mut=True])
alias fptr_glBindImageTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glBindSamplers = fn (first: GLuint, count: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glBindTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glBindVertexBuffers = fn (first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], strides: Ptr[GLsizei, mut=True])
alias fptr_glBufferStorage = fn (target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, mut=True], flags: BufferStorageMask)
alias fptr_glClearTexImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])
alias fptr_glClearTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])


struct GL_VERSION_4_4:
    """Functions for gl 4.4."""

    var bind_buffers_base: fptr_glBindBuffersBase
    var bind_buffers_range: fptr_glBindBuffersRange
    var bind_image_textures: fptr_glBindImageTextures
    var bind_samplers: fptr_glBindSamplers
    var bind_textures: fptr_glBindTextures
    var bind_vertex_buffers: fptr_glBindVertexBuffers
    var buffer_storage: fptr_glBufferStorage
    var clear_tex_image: fptr_glClearTexImage
    var clear_tex_sub_image: fptr_glClearTexSubImage

    fn __init__(out self, load: LoadProc) raises:
        self.bind_buffers_base = load_proc[fptr_glBindBuffersBase]("glBindBuffersBase", load)
        self.bind_buffers_range = load_proc[fptr_glBindBuffersRange]("glBindBuffersRange", load)
        self.bind_image_textures = load_proc[fptr_glBindImageTextures]("glBindImageTextures", load)
        self.bind_samplers = load_proc[fptr_glBindSamplers]("glBindSamplers", load)
        self.bind_textures = load_proc[fptr_glBindTextures]("glBindTextures", load)
        self.bind_vertex_buffers = load_proc[fptr_glBindVertexBuffers]("glBindVertexBuffers", load)
        self.buffer_storage = load_proc[fptr_glBufferStorage]("glBufferStorage", load)
        self.clear_tex_image = load_proc[fptr_glClearTexImage]("glClearTexImage", load)
        self.clear_tex_sub_image = load_proc[fptr_glClearTexSubImage]("glClearTexSubImage", load)


alias fptr_glBindTextureUnit = fn (unit: GLuint, texture: GLuint)
alias fptr_glBlitNamedFramebuffer = fn (read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
alias fptr_glCheckNamedFramebufferStatus = fn (framebuffer: GLuint, target: FramebufferTarget) -> FramebufferStatus
alias fptr_glClearNamedBufferData = fn (buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])
alias fptr_glClearNamedBufferSubData = fn (buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True])
alias fptr_glClearNamedFramebufferfi = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
alias fptr_glClearNamedFramebufferfv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=True])
alias fptr_glClearNamedFramebufferiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=True])
alias fptr_glClearNamedFramebufferuiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=True])
alias fptr_glClipControl = fn (origin: ClipControlOrigin, depth: ClipControlDepth)
alias fptr_glCompressedTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCompressedTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glCopyNamedBufferSubData = fn (read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
alias fptr_glCopyTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
alias fptr_glCopyTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCopyTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glCreateBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, mut=True])
alias fptr_glCreateFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, mut=True])
alias fptr_glCreateProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, mut=True])
alias fptr_glCreateQueries = fn (target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glCreateRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, mut=True])
alias fptr_glCreateSamplers = fn (n: GLsizei, samplers: Ptr[GLuint, mut=True])
alias fptr_glCreateTextures = fn (target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, mut=True])
alias fptr_glCreateTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, mut=True])
alias fptr_glCreateVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, mut=True])
alias fptr_glDisableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glEnableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
alias fptr_glFlushMappedNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
alias fptr_glGenerateTextureMipmap = fn (texture: GLuint)
alias fptr_glGetCompressedTextureImage = fn (texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetCompressedTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetGraphicsResetStatus = fn () -> GraphicsResetStatus
alias fptr_glGetNamedBufferParameteri64v = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, mut=True])
alias fptr_glGetNamedBufferParameteriv = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, mut=True])
alias fptr_glGetNamedBufferPointerv = fn (buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True])
alias fptr_glGetNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glGetNamedFramebufferAttachmentParameteriv = fn (framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetNamedFramebufferParameteriv = fn (framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, mut=True])
alias fptr_glGetNamedRenderbufferParameteriv = fn (renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True])
alias fptr_glGetQueryBufferObjecti64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectui64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetQueryBufferObjectuiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
alias fptr_glGetTextureImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTextureLevelParameterfv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTextureLevelParameteriv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureParameterIiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureParameterIuiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, mut=True])
alias fptr_glGetTextureParameterfv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True])
alias fptr_glGetTextureParameteriv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True])
alias fptr_glGetTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True])
alias fptr_glGetTransformFeedbacki64_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, mut=True])
alias fptr_glGetTransformFeedbacki_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, mut=True])
alias fptr_glGetTransformFeedbackiv = fn (xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, mut=True])
alias fptr_glGetVertexArrayIndexed64iv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, mut=True])
alias fptr_glGetVertexArrayIndexediv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True])
alias fptr_glGetVertexArrayiv = fn (vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True])
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
alias fptr_glInvalidateNamedFramebufferData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: FramebufferAttachment)
alias fptr_glInvalidateNamedFramebufferSubData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: FramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
alias fptr_glMapNamedBuffer = fn (buffer: GLuint, access: BufferAccessARB)
alias fptr_glMapNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
alias fptr_glMemoryBarrierByRegion = fn (barriers: MemoryBarrierMask)
alias fptr_glNamedBufferData = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=True], usage: VertexBufferObjectUsage)
alias fptr_glNamedBufferStorage = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=True], flags: BufferStorageMask)
alias fptr_glNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True])
alias fptr_glNamedFramebufferDrawBuffer = fn (framebuffer: GLuint, buf: ColorBuffer)
alias fptr_glNamedFramebufferDrawBuffers = fn (framebuffer: GLuint, n: GLsizei, bufs: ColorBuffer)
alias fptr_glNamedFramebufferParameteri = fn (framebuffer: GLuint, pname: FramebufferParameterName, param: GLint)
alias fptr_glNamedFramebufferReadBuffer = fn (framebuffer: GLuint, src: ColorBuffer)
alias fptr_glNamedFramebufferRenderbuffer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
alias fptr_glNamedFramebufferTexture = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
alias fptr_glNamedFramebufferTextureLayer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
alias fptr_glNamedRenderbufferStorage = fn (renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glNamedRenderbufferStorageMultisample = fn (renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glReadnPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, mut=True])
alias fptr_glTextureBarrier = fn ()
alias fptr_glTextureBuffer = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint)
alias fptr_glTextureBufferRange = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
alias fptr_glTextureParameterIiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, mut=True])
alias fptr_glTextureParameterIuiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, mut=True])
alias fptr_glTextureParameterf = fn (texture: GLuint, pname: TextureParameterName, param: GLfloat)
alias fptr_glTextureParameterfv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, mut=True])
alias fptr_glTextureParameteri = fn (texture: GLuint, pname: TextureParameterName, param: GLint)
alias fptr_glTextureParameteriv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, mut=True])
alias fptr_glTextureStorage1D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
alias fptr_glTextureStorage2D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
alias fptr_glTextureStorage2DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureStorage3D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
alias fptr_glTextureStorage3DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
alias fptr_glTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
alias fptr_glTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True])
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
alias fptr_glVertexArrayVertexBuffers = fn (vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], strides: Ptr[GLsizei, mut=True])


struct GL_VERSION_4_5:
    """Functions for gl 4.5."""

    var bind_texture_unit: fptr_glBindTextureUnit
    var blit_named_framebuffer: fptr_glBlitNamedFramebuffer
    var check_named_framebuffer_status: fptr_glCheckNamedFramebufferStatus
    var clear_named_buffer_data: fptr_glClearNamedBufferData
    var clear_named_buffer_sub_data: fptr_glClearNamedBufferSubData
    var clear_named_framebufferfi: fptr_glClearNamedFramebufferfi
    var clear_named_framebufferfv: fptr_glClearNamedFramebufferfv
    var clear_named_framebufferiv: fptr_glClearNamedFramebufferiv
    var clear_named_framebufferuiv: fptr_glClearNamedFramebufferuiv
    var clip_control: fptr_glClipControl
    var compressed_texture_sub_image1_d: fptr_glCompressedTextureSubImage1D
    var compressed_texture_sub_image2_d: fptr_glCompressedTextureSubImage2D
    var compressed_texture_sub_image3_d: fptr_glCompressedTextureSubImage3D
    var copy_named_buffer_sub_data: fptr_glCopyNamedBufferSubData
    var copy_texture_sub_image1_d: fptr_glCopyTextureSubImage1D
    var copy_texture_sub_image2_d: fptr_glCopyTextureSubImage2D
    var copy_texture_sub_image3_d: fptr_glCopyTextureSubImage3D
    var create_buffers: fptr_glCreateBuffers
    var create_framebuffers: fptr_glCreateFramebuffers
    var create_program_pipelines: fptr_glCreateProgramPipelines
    var create_queries: fptr_glCreateQueries
    var create_renderbuffers: fptr_glCreateRenderbuffers
    var create_samplers: fptr_glCreateSamplers
    var create_textures: fptr_glCreateTextures
    var create_transform_feedbacks: fptr_glCreateTransformFeedbacks
    var create_vertex_arrays: fptr_glCreateVertexArrays
    var disable_vertex_array_attrib: fptr_glDisableVertexArrayAttrib
    var enable_vertex_array_attrib: fptr_glEnableVertexArrayAttrib
    var flush_mapped_named_buffer_range: fptr_glFlushMappedNamedBufferRange
    var generate_texture_mipmap: fptr_glGenerateTextureMipmap
    var get_compressed_texture_image: fptr_glGetCompressedTextureImage
    var get_compressed_texture_sub_image: fptr_glGetCompressedTextureSubImage
    var get_graphics_reset_status: fptr_glGetGraphicsResetStatus
    var get_named_buffer_parameteri64v: fptr_glGetNamedBufferParameteri64v
    var get_named_buffer_parameteriv: fptr_glGetNamedBufferParameteriv
    var get_named_buffer_pointerv: fptr_glGetNamedBufferPointerv
    var get_named_buffer_sub_data: fptr_glGetNamedBufferSubData
    var get_named_framebuffer_attachment_parameteriv: fptr_glGetNamedFramebufferAttachmentParameteriv
    var get_named_framebuffer_parameteriv: fptr_glGetNamedFramebufferParameteriv
    var get_named_renderbuffer_parameteriv: fptr_glGetNamedRenderbufferParameteriv
    var get_query_buffer_objecti64v: fptr_glGetQueryBufferObjecti64v
    var get_query_buffer_objectiv: fptr_glGetQueryBufferObjectiv
    var get_query_buffer_objectui64v: fptr_glGetQueryBufferObjectui64v
    var get_query_buffer_objectuiv: fptr_glGetQueryBufferObjectuiv
    var get_texture_image: fptr_glGetTextureImage
    var get_texture_level_parameterfv: fptr_glGetTextureLevelParameterfv
    var get_texture_level_parameteriv: fptr_glGetTextureLevelParameteriv
    var get_texture_parameter_iiv: fptr_glGetTextureParameterIiv
    var get_texture_parameter_iuiv: fptr_glGetTextureParameterIuiv
    var get_texture_parameterfv: fptr_glGetTextureParameterfv
    var get_texture_parameteriv: fptr_glGetTextureParameteriv
    var get_texture_sub_image: fptr_glGetTextureSubImage
    var get_transform_feedbacki64_v: fptr_glGetTransformFeedbacki64_v
    var get_transform_feedbacki_v: fptr_glGetTransformFeedbacki_v
    var get_transform_feedbackiv: fptr_glGetTransformFeedbackiv
    var get_vertex_array_indexed64iv: fptr_glGetVertexArrayIndexed64iv
    var get_vertex_array_indexediv: fptr_glGetVertexArrayIndexediv
    var get_vertex_arrayiv: fptr_glGetVertexArrayiv
    var getn_color_table: fptr_glGetnColorTable
    var getn_compressed_tex_image: fptr_glGetnCompressedTexImage
    var getn_convolution_filter: fptr_glGetnConvolutionFilter
    var getn_histogram: fptr_glGetnHistogram
    var getn_mapdv: fptr_glGetnMapdv
    var getn_mapfv: fptr_glGetnMapfv
    var getn_mapiv: fptr_glGetnMapiv
    var getn_minmax: fptr_glGetnMinmax
    var getn_pixel_mapfv: fptr_glGetnPixelMapfv
    var getn_pixel_mapuiv: fptr_glGetnPixelMapuiv
    var getn_pixel_mapusv: fptr_glGetnPixelMapusv
    var getn_polygon_stipple: fptr_glGetnPolygonStipple
    var getn_separable_filter: fptr_glGetnSeparableFilter
    var getn_tex_image: fptr_glGetnTexImage
    var getn_uniformdv: fptr_glGetnUniformdv
    var getn_uniformfv: fptr_glGetnUniformfv
    var getn_uniformiv: fptr_glGetnUniformiv
    var getn_uniformuiv: fptr_glGetnUniformuiv
    var invalidate_named_framebuffer_data: fptr_glInvalidateNamedFramebufferData
    var invalidate_named_framebuffer_sub_data: fptr_glInvalidateNamedFramebufferSubData
    var map_named_buffer: fptr_glMapNamedBuffer
    var map_named_buffer_range: fptr_glMapNamedBufferRange
    var memory_barrier_by_region: fptr_glMemoryBarrierByRegion
    var named_buffer_data: fptr_glNamedBufferData
    var named_buffer_storage: fptr_glNamedBufferStorage
    var named_buffer_sub_data: fptr_glNamedBufferSubData
    var named_framebuffer_draw_buffer: fptr_glNamedFramebufferDrawBuffer
    var named_framebuffer_draw_buffers: fptr_glNamedFramebufferDrawBuffers
    var named_framebuffer_parameteri: fptr_glNamedFramebufferParameteri
    var named_framebuffer_read_buffer: fptr_glNamedFramebufferReadBuffer
    var named_framebuffer_renderbuffer: fptr_glNamedFramebufferRenderbuffer
    var named_framebuffer_texture: fptr_glNamedFramebufferTexture
    var named_framebuffer_texture_layer: fptr_glNamedFramebufferTextureLayer
    var named_renderbuffer_storage: fptr_glNamedRenderbufferStorage
    var named_renderbuffer_storage_multisample: fptr_glNamedRenderbufferStorageMultisample
    var readn_pixels: fptr_glReadnPixels
    var texture_barrier: fptr_glTextureBarrier
    var texture_buffer: fptr_glTextureBuffer
    var texture_buffer_range: fptr_glTextureBufferRange
    var texture_parameter_iiv: fptr_glTextureParameterIiv
    var texture_parameter_iuiv: fptr_glTextureParameterIuiv
    var texture_parameterf: fptr_glTextureParameterf
    var texture_parameterfv: fptr_glTextureParameterfv
    var texture_parameteri: fptr_glTextureParameteri
    var texture_parameteriv: fptr_glTextureParameteriv
    var texture_storage1_d: fptr_glTextureStorage1D
    var texture_storage2_d: fptr_glTextureStorage2D
    var texture_storage2_d_multisample: fptr_glTextureStorage2DMultisample
    var texture_storage3_d: fptr_glTextureStorage3D
    var texture_storage3_d_multisample: fptr_glTextureStorage3DMultisample
    var texture_sub_image1_d: fptr_glTextureSubImage1D
    var texture_sub_image2_d: fptr_glTextureSubImage2D
    var texture_sub_image3_d: fptr_glTextureSubImage3D
    var transform_feedback_buffer_base: fptr_glTransformFeedbackBufferBase
    var transform_feedback_buffer_range: fptr_glTransformFeedbackBufferRange
    var unmap_named_buffer: fptr_glUnmapNamedBuffer
    var vertex_array_attrib_binding: fptr_glVertexArrayAttribBinding
    var vertex_array_attrib_format: fptr_glVertexArrayAttribFormat
    var vertex_array_attrib_i_format: fptr_glVertexArrayAttribIFormat
    var vertex_array_attrib_l_format: fptr_glVertexArrayAttribLFormat
    var vertex_array_binding_divisor: fptr_glVertexArrayBindingDivisor
    var vertex_array_element_buffer: fptr_glVertexArrayElementBuffer
    var vertex_array_vertex_buffer: fptr_glVertexArrayVertexBuffer
    var vertex_array_vertex_buffers: fptr_glVertexArrayVertexBuffers

    fn __init__(out self, load: LoadProc) raises:
        self.bind_texture_unit = load_proc[fptr_glBindTextureUnit]("glBindTextureUnit", load)
        self.blit_named_framebuffer = load_proc[fptr_glBlitNamedFramebuffer]("glBlitNamedFramebuffer", load)
        self.check_named_framebuffer_status = load_proc[fptr_glCheckNamedFramebufferStatus]("glCheckNamedFramebufferStatus", load)
        self.clear_named_buffer_data = load_proc[fptr_glClearNamedBufferData]("glClearNamedBufferData", load)
        self.clear_named_buffer_sub_data = load_proc[fptr_glClearNamedBufferSubData]("glClearNamedBufferSubData", load)
        self.clear_named_framebufferfi = load_proc[fptr_glClearNamedFramebufferfi]("glClearNamedFramebufferfi", load)
        self.clear_named_framebufferfv = load_proc[fptr_glClearNamedFramebufferfv]("glClearNamedFramebufferfv", load)
        self.clear_named_framebufferiv = load_proc[fptr_glClearNamedFramebufferiv]("glClearNamedFramebufferiv", load)
        self.clear_named_framebufferuiv = load_proc[fptr_glClearNamedFramebufferuiv]("glClearNamedFramebufferuiv", load)
        self.clip_control = load_proc[fptr_glClipControl]("glClipControl", load)
        self.compressed_texture_sub_image1_d = load_proc[fptr_glCompressedTextureSubImage1D]("glCompressedTextureSubImage1D", load)
        self.compressed_texture_sub_image2_d = load_proc[fptr_glCompressedTextureSubImage2D]("glCompressedTextureSubImage2D", load)
        self.compressed_texture_sub_image3_d = load_proc[fptr_glCompressedTextureSubImage3D]("glCompressedTextureSubImage3D", load)
        self.copy_named_buffer_sub_data = load_proc[fptr_glCopyNamedBufferSubData]("glCopyNamedBufferSubData", load)
        self.copy_texture_sub_image1_d = load_proc[fptr_glCopyTextureSubImage1D]("glCopyTextureSubImage1D", load)
        self.copy_texture_sub_image2_d = load_proc[fptr_glCopyTextureSubImage2D]("glCopyTextureSubImage2D", load)
        self.copy_texture_sub_image3_d = load_proc[fptr_glCopyTextureSubImage3D]("glCopyTextureSubImage3D", load)
        self.create_buffers = load_proc[fptr_glCreateBuffers]("glCreateBuffers", load)
        self.create_framebuffers = load_proc[fptr_glCreateFramebuffers]("glCreateFramebuffers", load)
        self.create_program_pipelines = load_proc[fptr_glCreateProgramPipelines]("glCreateProgramPipelines", load)
        self.create_queries = load_proc[fptr_glCreateQueries]("glCreateQueries", load)
        self.create_renderbuffers = load_proc[fptr_glCreateRenderbuffers]("glCreateRenderbuffers", load)
        self.create_samplers = load_proc[fptr_glCreateSamplers]("glCreateSamplers", load)
        self.create_textures = load_proc[fptr_glCreateTextures]("glCreateTextures", load)
        self.create_transform_feedbacks = load_proc[fptr_glCreateTransformFeedbacks]("glCreateTransformFeedbacks", load)
        self.create_vertex_arrays = load_proc[fptr_glCreateVertexArrays]("glCreateVertexArrays", load)
        self.disable_vertex_array_attrib = load_proc[fptr_glDisableVertexArrayAttrib]("glDisableVertexArrayAttrib", load)
        self.enable_vertex_array_attrib = load_proc[fptr_glEnableVertexArrayAttrib]("glEnableVertexArrayAttrib", load)
        self.flush_mapped_named_buffer_range = load_proc[fptr_glFlushMappedNamedBufferRange]("glFlushMappedNamedBufferRange", load)
        self.generate_texture_mipmap = load_proc[fptr_glGenerateTextureMipmap]("glGenerateTextureMipmap", load)
        self.get_compressed_texture_image = load_proc[fptr_glGetCompressedTextureImage]("glGetCompressedTextureImage", load)
        self.get_compressed_texture_sub_image = load_proc[fptr_glGetCompressedTextureSubImage]("glGetCompressedTextureSubImage", load)
        self.get_graphics_reset_status = load_proc[fptr_glGetGraphicsResetStatus]("glGetGraphicsResetStatus", load)
        self.get_named_buffer_parameteri64v = load_proc[fptr_glGetNamedBufferParameteri64v]("glGetNamedBufferParameteri64v", load)
        self.get_named_buffer_parameteriv = load_proc[fptr_glGetNamedBufferParameteriv]("glGetNamedBufferParameteriv", load)
        self.get_named_buffer_pointerv = load_proc[fptr_glGetNamedBufferPointerv]("glGetNamedBufferPointerv", load)
        self.get_named_buffer_sub_data = load_proc[fptr_glGetNamedBufferSubData]("glGetNamedBufferSubData", load)
        self.get_named_framebuffer_attachment_parameteriv = load_proc[fptr_glGetNamedFramebufferAttachmentParameteriv]("glGetNamedFramebufferAttachmentParameteriv", load)
        self.get_named_framebuffer_parameteriv = load_proc[fptr_glGetNamedFramebufferParameteriv]("glGetNamedFramebufferParameteriv", load)
        self.get_named_renderbuffer_parameteriv = load_proc[fptr_glGetNamedRenderbufferParameteriv]("glGetNamedRenderbufferParameteriv", load)
        self.get_query_buffer_objecti64v = load_proc[fptr_glGetQueryBufferObjecti64v]("glGetQueryBufferObjecti64v", load)
        self.get_query_buffer_objectiv = load_proc[fptr_glGetQueryBufferObjectiv]("glGetQueryBufferObjectiv", load)
        self.get_query_buffer_objectui64v = load_proc[fptr_glGetQueryBufferObjectui64v]("glGetQueryBufferObjectui64v", load)
        self.get_query_buffer_objectuiv = load_proc[fptr_glGetQueryBufferObjectuiv]("glGetQueryBufferObjectuiv", load)
        self.get_texture_image = load_proc[fptr_glGetTextureImage]("glGetTextureImage", load)
        self.get_texture_level_parameterfv = load_proc[fptr_glGetTextureLevelParameterfv]("glGetTextureLevelParameterfv", load)
        self.get_texture_level_parameteriv = load_proc[fptr_glGetTextureLevelParameteriv]("glGetTextureLevelParameteriv", load)
        self.get_texture_parameter_iiv = load_proc[fptr_glGetTextureParameterIiv]("glGetTextureParameterIiv", load)
        self.get_texture_parameter_iuiv = load_proc[fptr_glGetTextureParameterIuiv]("glGetTextureParameterIuiv", load)
        self.get_texture_parameterfv = load_proc[fptr_glGetTextureParameterfv]("glGetTextureParameterfv", load)
        self.get_texture_parameteriv = load_proc[fptr_glGetTextureParameteriv]("glGetTextureParameteriv", load)
        self.get_texture_sub_image = load_proc[fptr_glGetTextureSubImage]("glGetTextureSubImage", load)
        self.get_transform_feedbacki64_v = load_proc[fptr_glGetTransformFeedbacki64_v]("glGetTransformFeedbacki64_v", load)
        self.get_transform_feedbacki_v = load_proc[fptr_glGetTransformFeedbacki_v]("glGetTransformFeedbacki_v", load)
        self.get_transform_feedbackiv = load_proc[fptr_glGetTransformFeedbackiv]("glGetTransformFeedbackiv", load)
        self.get_vertex_array_indexed64iv = load_proc[fptr_glGetVertexArrayIndexed64iv]("glGetVertexArrayIndexed64iv", load)
        self.get_vertex_array_indexediv = load_proc[fptr_glGetVertexArrayIndexediv]("glGetVertexArrayIndexediv", load)
        self.get_vertex_arrayiv = load_proc[fptr_glGetVertexArrayiv]("glGetVertexArrayiv", load)
        self.getn_color_table = load_proc[fptr_glGetnColorTable]("glGetnColorTable", load)
        self.getn_compressed_tex_image = load_proc[fptr_glGetnCompressedTexImage]("glGetnCompressedTexImage", load)
        self.getn_convolution_filter = load_proc[fptr_glGetnConvolutionFilter]("glGetnConvolutionFilter", load)
        self.getn_histogram = load_proc[fptr_glGetnHistogram]("glGetnHistogram", load)
        self.getn_mapdv = load_proc[fptr_glGetnMapdv]("glGetnMapdv", load)
        self.getn_mapfv = load_proc[fptr_glGetnMapfv]("glGetnMapfv", load)
        self.getn_mapiv = load_proc[fptr_glGetnMapiv]("glGetnMapiv", load)
        self.getn_minmax = load_proc[fptr_glGetnMinmax]("glGetnMinmax", load)
        self.getn_pixel_mapfv = load_proc[fptr_glGetnPixelMapfv]("glGetnPixelMapfv", load)
        self.getn_pixel_mapuiv = load_proc[fptr_glGetnPixelMapuiv]("glGetnPixelMapuiv", load)
        self.getn_pixel_mapusv = load_proc[fptr_glGetnPixelMapusv]("glGetnPixelMapusv", load)
        self.getn_polygon_stipple = load_proc[fptr_glGetnPolygonStipple]("glGetnPolygonStipple", load)
        self.getn_separable_filter = load_proc[fptr_glGetnSeparableFilter]("glGetnSeparableFilter", load)
        self.getn_tex_image = load_proc[fptr_glGetnTexImage]("glGetnTexImage", load)
        self.getn_uniformdv = load_proc[fptr_glGetnUniformdv]("glGetnUniformdv", load)
        self.getn_uniformfv = load_proc[fptr_glGetnUniformfv]("glGetnUniformfv", load)
        self.getn_uniformiv = load_proc[fptr_glGetnUniformiv]("glGetnUniformiv", load)
        self.getn_uniformuiv = load_proc[fptr_glGetnUniformuiv]("glGetnUniformuiv", load)
        self.invalidate_named_framebuffer_data = load_proc[fptr_glInvalidateNamedFramebufferData]("glInvalidateNamedFramebufferData", load)
        self.invalidate_named_framebuffer_sub_data = load_proc[fptr_glInvalidateNamedFramebufferSubData]("glInvalidateNamedFramebufferSubData", load)
        self.map_named_buffer = load_proc[fptr_glMapNamedBuffer]("glMapNamedBuffer", load)
        self.map_named_buffer_range = load_proc[fptr_glMapNamedBufferRange]("glMapNamedBufferRange", load)
        self.memory_barrier_by_region = load_proc[fptr_glMemoryBarrierByRegion]("glMemoryBarrierByRegion", load)
        self.named_buffer_data = load_proc[fptr_glNamedBufferData]("glNamedBufferData", load)
        self.named_buffer_storage = load_proc[fptr_glNamedBufferStorage]("glNamedBufferStorage", load)
        self.named_buffer_sub_data = load_proc[fptr_glNamedBufferSubData]("glNamedBufferSubData", load)
        self.named_framebuffer_draw_buffer = load_proc[fptr_glNamedFramebufferDrawBuffer]("glNamedFramebufferDrawBuffer", load)
        self.named_framebuffer_draw_buffers = load_proc[fptr_glNamedFramebufferDrawBuffers]("glNamedFramebufferDrawBuffers", load)
        self.named_framebuffer_parameteri = load_proc[fptr_glNamedFramebufferParameteri]("glNamedFramebufferParameteri", load)
        self.named_framebuffer_read_buffer = load_proc[fptr_glNamedFramebufferReadBuffer]("glNamedFramebufferReadBuffer", load)
        self.named_framebuffer_renderbuffer = load_proc[fptr_glNamedFramebufferRenderbuffer]("glNamedFramebufferRenderbuffer", load)
        self.named_framebuffer_texture = load_proc[fptr_glNamedFramebufferTexture]("glNamedFramebufferTexture", load)
        self.named_framebuffer_texture_layer = load_proc[fptr_glNamedFramebufferTextureLayer]("glNamedFramebufferTextureLayer", load)
        self.named_renderbuffer_storage = load_proc[fptr_glNamedRenderbufferStorage]("glNamedRenderbufferStorage", load)
        self.named_renderbuffer_storage_multisample = load_proc[fptr_glNamedRenderbufferStorageMultisample]("glNamedRenderbufferStorageMultisample", load)
        self.readn_pixels = load_proc[fptr_glReadnPixels]("glReadnPixels", load)
        self.texture_barrier = load_proc[fptr_glTextureBarrier]("glTextureBarrier", load)
        self.texture_buffer = load_proc[fptr_glTextureBuffer]("glTextureBuffer", load)
        self.texture_buffer_range = load_proc[fptr_glTextureBufferRange]("glTextureBufferRange", load)
        self.texture_parameter_iiv = load_proc[fptr_glTextureParameterIiv]("glTextureParameterIiv", load)
        self.texture_parameter_iuiv = load_proc[fptr_glTextureParameterIuiv]("glTextureParameterIuiv", load)
        self.texture_parameterf = load_proc[fptr_glTextureParameterf]("glTextureParameterf", load)
        self.texture_parameterfv = load_proc[fptr_glTextureParameterfv]("glTextureParameterfv", load)
        self.texture_parameteri = load_proc[fptr_glTextureParameteri]("glTextureParameteri", load)
        self.texture_parameteriv = load_proc[fptr_glTextureParameteriv]("glTextureParameteriv", load)
        self.texture_storage1_d = load_proc[fptr_glTextureStorage1D]("glTextureStorage1D", load)
        self.texture_storage2_d = load_proc[fptr_glTextureStorage2D]("glTextureStorage2D", load)
        self.texture_storage2_d_multisample = load_proc[fptr_glTextureStorage2DMultisample]("glTextureStorage2DMultisample", load)
        self.texture_storage3_d = load_proc[fptr_glTextureStorage3D]("glTextureStorage3D", load)
        self.texture_storage3_d_multisample = load_proc[fptr_glTextureStorage3DMultisample]("glTextureStorage3DMultisample", load)
        self.texture_sub_image1_d = load_proc[fptr_glTextureSubImage1D]("glTextureSubImage1D", load)
        self.texture_sub_image2_d = load_proc[fptr_glTextureSubImage2D]("glTextureSubImage2D", load)
        self.texture_sub_image3_d = load_proc[fptr_glTextureSubImage3D]("glTextureSubImage3D", load)
        self.transform_feedback_buffer_base = load_proc[fptr_glTransformFeedbackBufferBase]("glTransformFeedbackBufferBase", load)
        self.transform_feedback_buffer_range = load_proc[fptr_glTransformFeedbackBufferRange]("glTransformFeedbackBufferRange", load)
        self.unmap_named_buffer = load_proc[fptr_glUnmapNamedBuffer]("glUnmapNamedBuffer", load)
        self.vertex_array_attrib_binding = load_proc[fptr_glVertexArrayAttribBinding]("glVertexArrayAttribBinding", load)
        self.vertex_array_attrib_format = load_proc[fptr_glVertexArrayAttribFormat]("glVertexArrayAttribFormat", load)
        self.vertex_array_attrib_i_format = load_proc[fptr_glVertexArrayAttribIFormat]("glVertexArrayAttribIFormat", load)
        self.vertex_array_attrib_l_format = load_proc[fptr_glVertexArrayAttribLFormat]("glVertexArrayAttribLFormat", load)
        self.vertex_array_binding_divisor = load_proc[fptr_glVertexArrayBindingDivisor]("glVertexArrayBindingDivisor", load)
        self.vertex_array_element_buffer = load_proc[fptr_glVertexArrayElementBuffer]("glVertexArrayElementBuffer", load)
        self.vertex_array_vertex_buffer = load_proc[fptr_glVertexArrayVertexBuffer]("glVertexArrayVertexBuffer", load)
        self.vertex_array_vertex_buffers = load_proc[fptr_glVertexArrayVertexBuffers]("glVertexArrayVertexBuffers", load)


alias fptr_glMultiDrawArraysIndirectCount = fn (mode: PrimitiveType, indirect: Ptr[NoneType, mut=True], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glMultiDrawElementsIndirectCount = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
alias fptr_glPolygonOffsetClamp = fn (factor: GLfloat, units: GLfloat, clamp: GLfloat)
alias fptr_glSpecializeShader = fn (shader: GLuint, p_entry_point: Ptr[GLchar, mut=True], num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, mut=True], p_constant_value: Ptr[GLuint, mut=True])


struct GL_VERSION_4_6:
    """Functions for gl 4.6."""

    var multi_draw_arrays_indirect_count: fptr_glMultiDrawArraysIndirectCount
    var multi_draw_elements_indirect_count: fptr_glMultiDrawElementsIndirectCount
    var polygon_offset_clamp: fptr_glPolygonOffsetClamp
    var specialize_shader: fptr_glSpecializeShader

    fn __init__(out self, load: LoadProc) raises:
        self.multi_draw_arrays_indirect_count = load_proc[fptr_glMultiDrawArraysIndirectCount]("glMultiDrawArraysIndirectCount", load)
        self.multi_draw_elements_indirect_count = load_proc[fptr_glMultiDrawElementsIndirectCount]("glMultiDrawElementsIndirectCount", load)
        self.polygon_offset_clamp = load_proc[fptr_glPolygonOffsetClamp]("glPolygonOffsetClamp", load)
        self.specialize_shader = load_proc[fptr_glSpecializeShader]("glSpecializeShader", load)


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
    fn blend_func(self, sfactor: BlendingFactor, dfactor: BlendingFactor):
        return self.gl_version_1_0.blend_func(sfactor, dfactor)

    @always_inline
    fn clear(self, mask: ClearBufferMask):
        return self.gl_version_1_0.clear(mask)

    @always_inline
    fn clear_color(self, red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
        return self.gl_version_1_0.clear_color(red, green, blue, alpha)

    @always_inline
    fn clear_depth(self, depth: GLdouble):
        return self.gl_version_1_0.clear_depth(depth)

    @always_inline
    fn clear_stencil(self, s: GLint):
        return self.gl_version_1_0.clear_stencil(s)

    @always_inline
    fn color_mask(self, red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean):
        return self.gl_version_1_0.color_mask(red, green, blue, alpha)

    @always_inline
    fn cull_face(self, mode: TriangleFace):
        return self.gl_version_1_0.cull_face(mode)

    @always_inline
    fn depth_func(self, func: DepthFunction):
        return self.gl_version_1_0.depth_func(func)

    @always_inline
    fn depth_mask(self, flag: GLboolean):
        return self.gl_version_1_0.depth_mask(flag)

    @always_inline
    fn depth_range(self, n: GLdouble, f: GLdouble):
        return self.gl_version_1_0.depth_range(n, f)

    @always_inline
    fn disable(self, cap: EnableCap):
        return self.gl_version_1_0.disable(cap)

    @always_inline
    fn draw_buffer(self, buf: DrawBufferMode):
        return self.gl_version_1_0.draw_buffer(buf)

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
    fn front_face(self, mode: FrontFaceDirection):
        return self.gl_version_1_0.front_face(mode)

    @always_inline
    fn get_booleanv(self, pname: GetPName, data: Ptr[GLboolean, mut=True]):
        return self.gl_version_1_0.get_booleanv(pname, data)

    @always_inline
    fn get_doublev(self, pname: GetPName, data: Ptr[GLdouble, mut=True]):
        return self.gl_version_1_0.get_doublev(pname, data)

    @always_inline
    fn get_error(self) -> ErrorCode:
        return self.gl_version_1_0.get_error()

    @always_inline
    fn get_floatv(self, pname: GetPName, data: Ptr[GLfloat, mut=True]):
        return self.gl_version_1_0.get_floatv(pname, data)

    @always_inline
    fn get_integerv(self, pname: GetPName, data: Ptr[GLint, mut=True]):
        return self.gl_version_1_0.get_integerv(pname, data)

    @always_inline
    fn get_string(self, name: StringName) -> GLubyte:
        return self.gl_version_1_0.get_string(name)

    @always_inline
    fn get_tex_image(self, target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_0.get_tex_image(target, level, format, type, pixels)

    @always_inline
    fn get_tex_level_parameterfv(self, target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_1_0.get_tex_level_parameterfv(target, level, pname, params)

    @always_inline
    fn get_tex_level_parameteriv(self, target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_0.get_tex_level_parameteriv(target, level, pname, params)

    @always_inline
    fn get_tex_parameterfv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_1_0.get_tex_parameterfv(target, pname, params)

    @always_inline
    fn get_tex_parameteriv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_0.get_tex_parameteriv(target, pname, params)

    @always_inline
    fn hint(self, target: HintTarget, mode: HintMode):
        return self.gl_version_1_0.hint(target, mode)

    @always_inline
    fn is_enabled(self, cap: EnableCap) -> GLboolean:
        return self.gl_version_1_0.is_enabled(cap)

    @always_inline
    fn line_width(self, width: GLfloat):
        return self.gl_version_1_0.line_width(width)

    @always_inline
    fn logic_op(self, opcode: LogicOp):
        return self.gl_version_1_0.logic_op(opcode)

    @always_inline
    fn pixel_storef(self, pname: PixelStoreParameter, param: GLfloat):
        return self.gl_version_1_0.pixel_storef(pname, param)

    @always_inline
    fn pixel_storei(self, pname: PixelStoreParameter, param: GLint):
        return self.gl_version_1_0.pixel_storei(pname, param)

    @always_inline
    fn point_size(self, size: GLfloat):
        return self.gl_version_1_0.point_size(size)

    @always_inline
    fn polygon_mode(self, face: TriangleFace, mode: PolygonMode):
        return self.gl_version_1_0.polygon_mode(face, mode)

    @always_inline
    fn read_buffer(self, src: ReadBufferMode):
        return self.gl_version_1_0.read_buffer(src)

    @always_inline
    fn read_pixels(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_0.read_pixels(x, y, width, height, format, type, pixels)

    @always_inline
    fn scissor(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_0.scissor(x, y, width, height)

    @always_inline
    fn stencil_func(self, func: StencilFunction, ref_: GLint, mask: GLuint):
        return self.gl_version_1_0.stencil_func(func, ref_, mask)

    @always_inline
    fn stencil_mask(self, mask: GLuint):
        return self.gl_version_1_0.stencil_mask(mask)

    @always_inline
    fn stencil_op(self, fail: StencilOp, zfail: StencilOp, zpass: StencilOp):
        return self.gl_version_1_0.stencil_op(fail, zfail, zpass)

    @always_inline
    fn tex_image1_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_0.tex_image1_d(target, level, internalformat, width, border, format, type, pixels)

    @always_inline
    fn tex_image2_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_0.tex_image2_d(target, level, internalformat, width, height, border, format, type, pixels)

    @always_inline
    fn tex_parameterf(self, target: TextureTarget, pname: TextureParameterName, param: GLfloat):
        return self.gl_version_1_0.tex_parameterf(target, pname, param)

    @always_inline
    fn tex_parameterfv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_1_0.tex_parameterfv(target, pname, params)

    @always_inline
    fn tex_parameteri(self, target: TextureTarget, pname: TextureParameterName, param: GLint):
        return self.gl_version_1_0.tex_parameteri(target, pname, param)

    @always_inline
    fn tex_parameteriv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_0.tex_parameteriv(target, pname, params)

    @always_inline
    fn viewport(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_0.viewport(x, y, width, height)

    @always_inline
    fn bind_texture(self, target: TextureTarget, texture: GLuint):
        return self.gl_version_1_1.bind_texture(target, texture)

    @always_inline
    fn copy_tex_image1_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint):
        return self.gl_version_1_1.copy_tex_image1_d(target, level, internalformat, x, y, width, border)

    @always_inline
    fn copy_tex_image2_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint):
        return self.gl_version_1_1.copy_tex_image2_d(target, level, internalformat, x, y, width, height, border)

    @always_inline
    fn copy_tex_sub_image1_d(self, target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
        return self.gl_version_1_1.copy_tex_sub_image1_d(target, level, xoffset, x, y, width)

    @always_inline
    fn copy_tex_sub_image2_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_1.copy_tex_sub_image2_d(target, level, xoffset, yoffset, x, y, width, height)

    @always_inline
    fn delete_textures(self, n: GLsizei, textures: Ptr[GLuint, mut=True]):
        return self.gl_version_1_1.delete_textures(n, textures)

    @always_inline
    fn draw_arrays(self, mode: PrimitiveType, first: GLint, count: GLsizei):
        return self.gl_version_1_1.draw_arrays(mode, first, count)

    @always_inline
    fn draw_elements(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True]):
        return self.gl_version_1_1.draw_elements(mode, count, type, indices)

    @always_inline
    fn gen_textures(self, n: GLsizei, textures: Ptr[GLuint, mut=True]):
        return self.gl_version_1_1.gen_textures(n, textures)

    @always_inline
    fn is_texture(self, texture: GLuint) -> GLboolean:
        return self.gl_version_1_1.is_texture(texture)

    @always_inline
    fn polygon_offset(self, factor: GLfloat, units: GLfloat):
        return self.gl_version_1_1.polygon_offset(factor, units)

    @always_inline
    fn tex_sub_image1_d(self, target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_1.tex_sub_image1_d(target, level, xoffset, width, format, type, pixels)

    @always_inline
    fn tex_sub_image2_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_1.tex_sub_image2_d(target, level, xoffset, yoffset, width, height, format, type, pixels)

    @always_inline
    fn copy_tex_sub_image3_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_1_2.copy_tex_sub_image3_d(target, level, xoffset, yoffset, zoffset, x, y, width, height)

    @always_inline
    fn draw_range_elements(self, mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True]):
        return self.gl_version_1_2.draw_range_elements(mode, start, end, count, type, indices)

    @always_inline
    fn tex_image3_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_2.tex_image3_d(target, level, internalformat, width, height, depth, border, format, type, pixels)

    @always_inline
    fn tex_sub_image3_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_1_2.tex_sub_image3_d(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)

    @always_inline
    fn active_texture(self, texture: TextureUnit):
        return self.gl_version_1_3.active_texture(texture)

    @always_inline
    fn compressed_tex_image1_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_image1_d(target, level, internalformat, width, border, image_size, data)

    @always_inline
    fn compressed_tex_image2_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_image2_d(target, level, internalformat, width, height, border, image_size, data)

    @always_inline
    fn compressed_tex_image3_d(self, target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_image3_d(target, level, internalformat, width, height, depth, border, image_size, data)

    @always_inline
    fn compressed_tex_sub_image1_d(self, target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_sub_image1_d(target, level, xoffset, width, format, image_size, data)

    @always_inline
    fn compressed_tex_sub_image2_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_sub_image2_d(target, level, xoffset, yoffset, width, height, format, image_size, data)

    @always_inline
    fn compressed_tex_sub_image3_d(self, target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.compressed_tex_sub_image3_d(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)

    @always_inline
    fn get_compressed_tex_image(self, target: TextureTarget, level: GLint, img: Ptr[NoneType, mut=True]):
        return self.gl_version_1_3.get_compressed_tex_image(target, level, img)

    @always_inline
    fn sample_coverage(self, value: GLfloat, invert: GLboolean):
        return self.gl_version_1_3.sample_coverage(value, invert)

    @always_inline
    fn blend_color(self, red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat):
        return self.gl_version_1_4.blend_color(red, green, blue, alpha)

    @always_inline
    fn blend_equation(self, mode: BlendEquationModeEXT):
        return self.gl_version_1_4.blend_equation(mode)

    @always_inline
    fn blend_func_separate(self, sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor):
        return self.gl_version_1_4.blend_func_separate(sfactor_rgb, dfactor_rgb, sfactor_alpha, dfactor_alpha)

    @always_inline
    fn multi_draw_arrays(self, mode: PrimitiveType, first: Ptr[GLint, mut=True], count: Ptr[GLsizei, mut=True], drawcount: GLsizei):
        return self.gl_version_1_4.multi_draw_arrays(mode, first, count, drawcount)

    @always_inline
    fn multi_draw_elements(self, mode: PrimitiveType, count: Ptr[GLsizei, mut=True], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=True], mut=False], drawcount: GLsizei):
        return self.gl_version_1_4.multi_draw_elements(mode, count, type, indices, drawcount)

    @always_inline
    fn point_parameterf(self, pname: PointParameterNameARB, param: GLfloat):
        return self.gl_version_1_4.point_parameterf(pname, param)

    @always_inline
    fn point_parameterfv(self, pname: PointParameterNameARB, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_1_4.point_parameterfv(pname, params)

    @always_inline
    fn point_parameteri(self, pname: PointParameterNameARB, param: GLint):
        return self.gl_version_1_4.point_parameteri(pname, param)

    @always_inline
    fn point_parameteriv(self, pname: PointParameterNameARB, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_4.point_parameteriv(pname, params)

    @always_inline
    fn begin_query(self, target: QueryTarget, id: GLuint):
        return self.gl_version_1_5.begin_query(target, id)

    @always_inline
    fn bind_buffer(self, target: BufferTargetARB, buffer: GLuint):
        return self.gl_version_1_5.bind_buffer(target, buffer)

    @always_inline
    fn buffer_data(self, target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, mut=True], usage: BufferUsageARB):
        return self.gl_version_1_5.buffer_data(target, size, data, usage)

    @always_inline
    fn buffer_sub_data(self, target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_5.buffer_sub_data(target, offset, size, data)

    @always_inline
    fn delete_buffers(self, n: GLsizei, buffers: Ptr[GLuint, mut=True]):
        return self.gl_version_1_5.delete_buffers(n, buffers)

    @always_inline
    fn delete_queries(self, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_1_5.delete_queries(n, ids)

    @always_inline
    fn end_query(self, target: QueryTarget):
        return self.gl_version_1_5.end_query(target)

    @always_inline
    fn gen_buffers(self, n: GLsizei, buffers: Ptr[GLuint, mut=True]):
        return self.gl_version_1_5.gen_buffers(n, buffers)

    @always_inline
    fn gen_queries(self, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_1_5.gen_queries(n, ids)

    @always_inline
    fn get_buffer_parameteriv(self, target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_5.get_buffer_parameteriv(target, pname, params)

    @always_inline
    fn get_buffer_pointerv(self, target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True]):
        return self.gl_version_1_5.get_buffer_pointerv(target, pname, params)

    @always_inline
    fn get_buffer_sub_data(self, target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
        return self.gl_version_1_5.get_buffer_sub_data(target, offset, size, data)

    @always_inline
    fn get_query_objectiv(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_5.get_query_objectiv(id, pname, params)

    @always_inline
    fn get_query_objectuiv(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, mut=True]):
        return self.gl_version_1_5.get_query_objectuiv(id, pname, params)

    @always_inline
    fn get_queryiv(self, target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_1_5.get_queryiv(target, pname, params)

    @always_inline
    fn is_buffer(self, buffer: GLuint) -> GLboolean:
        return self.gl_version_1_5.is_buffer(buffer)

    @always_inline
    fn is_query(self, id: GLuint) -> GLboolean:
        return self.gl_version_1_5.is_query(id)

    @always_inline
    fn map_buffer(self, target: BufferTargetARB, access: BufferAccessARB):
        return self.gl_version_1_5.map_buffer(target, access)

    @always_inline
    fn unmap_buffer(self, target: BufferTargetARB) -> GLboolean:
        return self.gl_version_1_5.unmap_buffer(target)

    @always_inline
    fn attach_shader(self, program: GLuint, shader: GLuint):
        return self.gl_version_2_0.attach_shader(program, shader)

    @always_inline
    fn bind_attrib_location(self, program: GLuint, index: GLuint, name: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.bind_attrib_location(program, index, name)

    @always_inline
    fn blend_equation_separate(self, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT):
        return self.gl_version_2_0.blend_equation_separate(mode_rgb, mode_alpha)

    @always_inline
    fn compile_shader(self, shader: GLuint):
        return self.gl_version_2_0.compile_shader(shader)

    @always_inline
    fn create_program(self) -> GLuint:
        return self.gl_version_2_0.create_program()

    @always_inline
    fn create_shader(self, type: ShaderType) -> GLuint:
        return self.gl_version_2_0.create_shader(type)

    @always_inline
    fn delete_program(self, program: GLuint):
        return self.gl_version_2_0.delete_program(program)

    @always_inline
    fn delete_shader(self, shader: GLuint):
        return self.gl_version_2_0.delete_shader(shader)

    @always_inline
    fn detach_shader(self, program: GLuint, shader: GLuint):
        return self.gl_version_2_0.detach_shader(program, shader)

    @always_inline
    fn disable_vertex_attrib_array(self, index: GLuint):
        return self.gl_version_2_0.disable_vertex_attrib_array(index)

    @always_inline
    fn draw_buffers(self, n: GLsizei, bufs: DrawBufferMode):
        return self.gl_version_2_0.draw_buffers(n, bufs)

    @always_inline
    fn enable_vertex_attrib_array(self, index: GLuint):
        return self.gl_version_2_0.enable_vertex_attrib_array(index)

    @always_inline
    fn get_active_attrib(self, program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: AttributeType, name: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.get_active_attrib(program, index, buf_size, length, size, type, name)

    @always_inline
    fn get_active_uniform(self, program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLint, mut=True], type: UniformType, name: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.get_active_uniform(program, index, buf_size, length, size, type, name)

    @always_inline
    fn get_attached_shaders(self, program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, mut=True], shaders: Ptr[GLuint, mut=True]):
        return self.gl_version_2_0.get_attached_shaders(program, max_count, count, shaders)

    @always_inline
    fn get_attrib_location(self, program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_2_0.get_attrib_location(program, name)

    @always_inline
    fn get_program_info_log(self, program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.get_program_info_log(program, buf_size, length, info_log)

    @always_inline
    fn get_programiv(self, program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.get_programiv(program, pname, params)

    @always_inline
    fn get_shader_info_log(self, shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.get_shader_info_log(shader, buf_size, length, info_log)

    @always_inline
    fn get_shader_source(self, shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], source: Ptr[GLchar, mut=True]):
        return self.gl_version_2_0.get_shader_source(shader, buf_size, length, source)

    @always_inline
    fn get_shaderiv(self, shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.get_shaderiv(shader, pname, params)

    @always_inline
    fn get_uniform_location(self, program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_2_0.get_uniform_location(program, name)

    @always_inline
    fn get_uniformfv(self, program: GLuint, location: GLint, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.get_uniformfv(program, location, params)

    @always_inline
    fn get_uniformiv(self, program: GLuint, location: GLint, params: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.get_uniformiv(program, location, params)

    @always_inline
    fn get_vertex_attrib_pointerv(self, index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, mut=True], mut=True]):
        return self.gl_version_2_0.get_vertex_attrib_pointerv(index, pname, pointer)

    @always_inline
    fn get_vertex_attribdv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, mut=True]):
        return self.gl_version_2_0.get_vertex_attribdv(index, pname, params)

    @always_inline
    fn get_vertex_attribfv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.get_vertex_attribfv(index, pname, params)

    @always_inline
    fn get_vertex_attribiv(self, index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.get_vertex_attribiv(index, pname, params)

    @always_inline
    fn is_program(self, program: GLuint) -> GLboolean:
        return self.gl_version_2_0.is_program(program)

    @always_inline
    fn is_shader(self, shader: GLuint) -> GLboolean:
        return self.gl_version_2_0.is_shader(shader)

    @always_inline
    fn link_program(self, program: GLuint):
        return self.gl_version_2_0.link_program(program)

    @always_inline
    fn shader_source(self, shader: GLuint, count: GLsizei, string: Ptr[Ptr[GLchar, mut=True], mut=False], length: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.shader_source(shader, count, string, length)

    @always_inline
    fn stencil_func_separate(self, face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint):
        return self.gl_version_2_0.stencil_func_separate(face, func, ref_, mask)

    @always_inline
    fn stencil_mask_separate(self, face: TriangleFace, mask: GLuint):
        return self.gl_version_2_0.stencil_mask_separate(face, mask)

    @always_inline
    fn stencil_op_separate(self, face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp):
        return self.gl_version_2_0.stencil_op_separate(face, sfail, dpfail, dppass)

    @always_inline
    fn uniform1f(self, location: GLint, v0: GLfloat):
        return self.gl_version_2_0.uniform1f(location, v0)

    @always_inline
    fn uniform1fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform1fv(location, count, value)

    @always_inline
    fn uniform1i(self, location: GLint, v0: GLint):
        return self.gl_version_2_0.uniform1i(location, v0)

    @always_inline
    fn uniform1iv(self, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.uniform1iv(location, count, value)

    @always_inline
    fn uniform2f(self, location: GLint, v0: GLfloat, v1: GLfloat):
        return self.gl_version_2_0.uniform2f(location, v0, v1)

    @always_inline
    fn uniform2fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform2fv(location, count, value)

    @always_inline
    fn uniform2i(self, location: GLint, v0: GLint, v1: GLint):
        return self.gl_version_2_0.uniform2i(location, v0, v1)

    @always_inline
    fn uniform2iv(self, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.uniform2iv(location, count, value)

    @always_inline
    fn uniform3f(self, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
        return self.gl_version_2_0.uniform3f(location, v0, v1, v2)

    @always_inline
    fn uniform3fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform3fv(location, count, value)

    @always_inline
    fn uniform3i(self, location: GLint, v0: GLint, v1: GLint, v2: GLint):
        return self.gl_version_2_0.uniform3i(location, v0, v1, v2)

    @always_inline
    fn uniform3iv(self, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.uniform3iv(location, count, value)

    @always_inline
    fn uniform4f(self, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
        return self.gl_version_2_0.uniform4f(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4fv(self, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform4fv(location, count, value)

    @always_inline
    fn uniform4i(self, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
        return self.gl_version_2_0.uniform4i(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4iv(self, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.uniform4iv(location, count, value)

    @always_inline
    fn uniform_matrix2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform_matrix2fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform_matrix3fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.uniform_matrix4fv(location, count, transpose, value)

    @always_inline
    fn use_program(self, program: GLuint):
        return self.gl_version_2_0.use_program(program)

    @always_inline
    fn validate_program(self, program: GLuint):
        return self.gl_version_2_0.validate_program(program)

    @always_inline
    fn vertex_attrib1d(self, index: GLuint, x: GLdouble):
        return self.gl_version_2_0.vertex_attrib1d(index, x)

    @always_inline
    fn vertex_attrib1dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_2_0.vertex_attrib1dv(index, v)

    @always_inline
    fn vertex_attrib1f(self, index: GLuint, x: GLfloat):
        return self.gl_version_2_0.vertex_attrib1f(index, x)

    @always_inline
    fn vertex_attrib1fv(self, index: GLuint, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.vertex_attrib1fv(index, v)

    @always_inline
    fn vertex_attrib1s(self, index: GLuint, x: GLshort):
        return self.gl_version_2_0.vertex_attrib1s(index, x)

    @always_inline
    fn vertex_attrib1sv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_2_0.vertex_attrib1sv(index, v)

    @always_inline
    fn vertex_attrib2d(self, index: GLuint, x: GLdouble, y: GLdouble):
        return self.gl_version_2_0.vertex_attrib2d(index, x, y)

    @always_inline
    fn vertex_attrib2dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_2_0.vertex_attrib2dv(index, v)

    @always_inline
    fn vertex_attrib2f(self, index: GLuint, x: GLfloat, y: GLfloat):
        return self.gl_version_2_0.vertex_attrib2f(index, x, y)

    @always_inline
    fn vertex_attrib2fv(self, index: GLuint, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.vertex_attrib2fv(index, v)

    @always_inline
    fn vertex_attrib2s(self, index: GLuint, x: GLshort, y: GLshort):
        return self.gl_version_2_0.vertex_attrib2s(index, x, y)

    @always_inline
    fn vertex_attrib2sv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_2_0.vertex_attrib2sv(index, v)

    @always_inline
    fn vertex_attrib3d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_2_0.vertex_attrib3d(index, x, y, z)

    @always_inline
    fn vertex_attrib3dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_2_0.vertex_attrib3dv(index, v)

    @always_inline
    fn vertex_attrib3f(self, index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat):
        return self.gl_version_2_0.vertex_attrib3f(index, x, y, z)

    @always_inline
    fn vertex_attrib3fv(self, index: GLuint, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.vertex_attrib3fv(index, v)

    @always_inline
    fn vertex_attrib3s(self, index: GLuint, x: GLshort, y: GLshort, z: GLshort):
        return self.gl_version_2_0.vertex_attrib3s(index, x, y, z)

    @always_inline
    fn vertex_attrib3sv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_2_0.vertex_attrib3sv(index, v)

    @always_inline
    fn vertex_attrib4_nbv(self, index: GLuint, v: Ptr[GLbyte, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_nbv(index, v)

    @always_inline
    fn vertex_attrib4_niv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_niv(index, v)

    @always_inline
    fn vertex_attrib4_nsv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_nsv(index, v)

    @always_inline
    fn vertex_attrib4_nub(self, index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte):
        return self.gl_version_2_0.vertex_attrib4_nub(index, x, y, z, w)

    @always_inline
    fn vertex_attrib4_nubv(self, index: GLuint, v: Ptr[GLubyte, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_nubv(index, v)

    @always_inline
    fn vertex_attrib4_nuiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_nuiv(index, v)

    @always_inline
    fn vertex_attrib4_nusv(self, index: GLuint, v: Ptr[GLushort, mut=True]):
        return self.gl_version_2_0.vertex_attrib4_nusv(index, v)

    @always_inline
    fn vertex_attrib4bv(self, index: GLuint, v: Ptr[GLbyte, mut=True]):
        return self.gl_version_2_0.vertex_attrib4bv(index, v)

    @always_inline
    fn vertex_attrib4d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_2_0.vertex_attrib4d(index, x, y, z, w)

    @always_inline
    fn vertex_attrib4dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_2_0.vertex_attrib4dv(index, v)

    @always_inline
    fn vertex_attrib4f(self, index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat):
        return self.gl_version_2_0.vertex_attrib4f(index, x, y, z, w)

    @always_inline
    fn vertex_attrib4fv(self, index: GLuint, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_0.vertex_attrib4fv(index, v)

    @always_inline
    fn vertex_attrib4iv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_2_0.vertex_attrib4iv(index, v)

    @always_inline
    fn vertex_attrib4s(self, index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort):
        return self.gl_version_2_0.vertex_attrib4s(index, x, y, z, w)

    @always_inline
    fn vertex_attrib4sv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_2_0.vertex_attrib4sv(index, v)

    @always_inline
    fn vertex_attrib4ubv(self, index: GLuint, v: Ptr[GLubyte, mut=True]):
        return self.gl_version_2_0.vertex_attrib4ubv(index, v)

    @always_inline
    fn vertex_attrib4uiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_2_0.vertex_attrib4uiv(index, v)

    @always_inline
    fn vertex_attrib4usv(self, index: GLuint, v: Ptr[GLushort, mut=True]):
        return self.gl_version_2_0.vertex_attrib4usv(index, v)

    @always_inline
    fn vertex_attrib_pointer(self, index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType, mut=True]):
        return self.gl_version_2_0.vertex_attrib_pointer(index, size, type, normalized, stride, pointer)

    @always_inline
    fn uniform_matrix2x3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix2x3fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix2x4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix2x4fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3x2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix3x2fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3x4fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix3x4fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4x2fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix4x2fv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4x3fv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_2_1.uniform_matrix4x3fv(location, count, transpose, value)

    @always_inline
    fn begin_conditional_render(self, id: GLuint, mode: ConditionalRenderMode):
        return self.gl_version_3_0.begin_conditional_render(id, mode)

    @always_inline
    fn begin_transform_feedback(self, primitive_mode: PrimitiveType):
        return self.gl_version_3_0.begin_transform_feedback(primitive_mode)

    @always_inline
    fn bind_buffer_base(self, target: BufferTargetARB, index: GLuint, buffer: GLuint):
        return self.gl_version_3_0.bind_buffer_base(target, index, buffer)

    @always_inline
    fn bind_buffer_range(self, target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_3_0.bind_buffer_range(target, index, buffer, offset, size)

    @always_inline
    fn bind_frag_data_location(self, program: GLuint, color: GLuint, name: Ptr[GLchar, mut=True]):
        return self.gl_version_3_0.bind_frag_data_location(program, color, name)

    @always_inline
    fn bind_framebuffer(self, target: FramebufferTarget, framebuffer: GLuint):
        return self.gl_version_3_0.bind_framebuffer(target, framebuffer)

    @always_inline
    fn bind_renderbuffer(self, target: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_3_0.bind_renderbuffer(target, renderbuffer)

    @always_inline
    fn bind_vertex_array(self, array: GLuint):
        return self.gl_version_3_0.bind_vertex_array(array)

    @always_inline
    fn blit_framebuffer(self, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
        return self.gl_version_3_0.blit_framebuffer(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)

    @always_inline
    fn check_framebuffer_status(self, target: FramebufferTarget) -> FramebufferStatus:
        return self.gl_version_3_0.check_framebuffer_status(target)

    @always_inline
    fn clamp_color(self, target: ClampColorTargetARB, clamp: ClampColorModeARB):
        return self.gl_version_3_0.clamp_color(target, clamp)

    @always_inline
    fn clear_bufferfi(self, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
        return self.gl_version_3_0.clear_bufferfi(buffer, drawbuffer, depth, stencil)

    @always_inline
    fn clear_bufferfv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_3_0.clear_bufferfv(buffer, drawbuffer, value)

    @always_inline
    fn clear_bufferiv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.clear_bufferiv(buffer, drawbuffer, value)

    @always_inline
    fn clear_bufferuiv(self, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.clear_bufferuiv(buffer, drawbuffer, value)

    @always_inline
    fn color_maski(self, index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean):
        return self.gl_version_3_0.color_maski(index, r, g, b, a)

    @always_inline
    fn delete_framebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.delete_framebuffers(n, framebuffers)

    @always_inline
    fn delete_renderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.delete_renderbuffers(n, renderbuffers)

    @always_inline
    fn delete_vertex_arrays(self, n: GLsizei, arrays: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.delete_vertex_arrays(n, arrays)

    @always_inline
    fn disablei(self, target: EnableCap, index: GLuint):
        return self.gl_version_3_0.disablei(target, index)

    @always_inline
    fn enablei(self, target: EnableCap, index: GLuint):
        return self.gl_version_3_0.enablei(target, index)

    @always_inline
    fn end_conditional_render(self):
        return self.gl_version_3_0.end_conditional_render()

    @always_inline
    fn end_transform_feedback(self):
        return self.gl_version_3_0.end_transform_feedback()

    @always_inline
    fn flush_mapped_buffer_range(self, target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_3_0.flush_mapped_buffer_range(target, offset, length)

    @always_inline
    fn framebuffer_renderbuffer(self, target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_3_0.framebuffer_renderbuffer(target, attachment, renderbuffertarget, renderbuffer)

    @always_inline
    fn framebuffer_texture1_d(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
        return self.gl_version_3_0.framebuffer_texture1_d(target, attachment, textarget, texture, level)

    @always_inline
    fn framebuffer_texture2_d(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint):
        return self.gl_version_3_0.framebuffer_texture2_d(target, attachment, textarget, texture, level)

    @always_inline
    fn framebuffer_texture3_d(self, target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint):
        return self.gl_version_3_0.framebuffer_texture3_d(target, attachment, textarget, texture, level, zoffset)

    @always_inline
    fn framebuffer_texture_layer(self, target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
        return self.gl_version_3_0.framebuffer_texture_layer(target, attachment, texture, level, layer)

    @always_inline
    fn gen_framebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.gen_framebuffers(n, framebuffers)

    @always_inline
    fn gen_renderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.gen_renderbuffers(n, renderbuffers)

    @always_inline
    fn gen_vertex_arrays(self, n: GLsizei, arrays: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.gen_vertex_arrays(n, arrays)

    @always_inline
    fn generate_mipmap(self, target: TextureTarget):
        return self.gl_version_3_0.generate_mipmap(target)

    @always_inline
    fn get_booleani_v(self, target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, mut=True]):
        return self.gl_version_3_0.get_booleani_v(target, index, data)

    @always_inline
    fn get_frag_data_location(self, program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_3_0.get_frag_data_location(program, name)

    @always_inline
    fn get_framebuffer_attachment_parameteriv(self, target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.get_framebuffer_attachment_parameteriv(target, attachment, pname, params)

    @always_inline
    fn get_integeri_v(self, target: GetPName, index: GLuint, data: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.get_integeri_v(target, index, data)

    @always_inline
    fn get_renderbuffer_parameteriv(self, target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.get_renderbuffer_parameteriv(target, pname, params)

    @always_inline
    fn get_stringi(self, name: StringName, index: GLuint) -> GLubyte:
        return self.gl_version_3_0.get_stringi(name, index)

    @always_inline
    fn get_tex_parameter_iiv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.get_tex_parameter_iiv(target, pname, params)

    @always_inline
    fn get_tex_parameter_iuiv(self, target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.get_tex_parameter_iuiv(target, pname, params)

    @always_inline
    fn get_transform_feedback_varying(self, program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], size: Ptr[GLsizei, mut=True], type: AttributeType, name: Ptr[GLchar, mut=True]):
        return self.gl_version_3_0.get_transform_feedback_varying(program, index, buf_size, length, size, type, name)

    @always_inline
    fn get_uniformuiv(self, program: GLuint, location: GLint, params: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.get_uniformuiv(program, location, params)

    @always_inline
    fn get_vertex_attrib_iiv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.get_vertex_attrib_iiv(index, pname, params)

    @always_inline
    fn get_vertex_attrib_iuiv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.get_vertex_attrib_iuiv(index, pname, params)

    @always_inline
    fn is_enabledi(self, target: EnableCap, index: GLuint) -> GLboolean:
        return self.gl_version_3_0.is_enabledi(target, index)

    @always_inline
    fn is_framebuffer(self, framebuffer: GLuint) -> GLboolean:
        return self.gl_version_3_0.is_framebuffer(framebuffer)

    @always_inline
    fn is_renderbuffer(self, renderbuffer: GLuint) -> GLboolean:
        return self.gl_version_3_0.is_renderbuffer(renderbuffer)

    @always_inline
    fn is_vertex_array(self, array: GLuint) -> GLboolean:
        return self.gl_version_3_0.is_vertex_array(array)

    @always_inline
    fn map_buffer_range(self, target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
        return self.gl_version_3_0.map_buffer_range(target, offset, length, access)

    @always_inline
    fn renderbuffer_storage(self, target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_3_0.renderbuffer_storage(target, internalformat, width, height)

    @always_inline
    fn renderbuffer_storage_multisample(self, target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_3_0.renderbuffer_storage_multisample(target, samples, internalformat, width, height)

    @always_inline
    fn tex_parameter_iiv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.tex_parameter_iiv(target, pname, params)

    @always_inline
    fn tex_parameter_iuiv(self, target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.tex_parameter_iuiv(target, pname, params)

    @always_inline
    fn transform_feedback_varyings(self, program: GLuint, count: GLsizei, varyings: Ptr[Ptr[GLchar, mut=True], mut=False], buffer_mode: TransformFeedbackBufferMode):
        return self.gl_version_3_0.transform_feedback_varyings(program, count, varyings, buffer_mode)

    @always_inline
    fn uniform1ui(self, location: GLint, v0: GLuint):
        return self.gl_version_3_0.uniform1ui(location, v0)

    @always_inline
    fn uniform1uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.uniform1uiv(location, count, value)

    @always_inline
    fn uniform2ui(self, location: GLint, v0: GLuint, v1: GLuint):
        return self.gl_version_3_0.uniform2ui(location, v0, v1)

    @always_inline
    fn uniform2uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.uniform2uiv(location, count, value)

    @always_inline
    fn uniform3ui(self, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
        return self.gl_version_3_0.uniform3ui(location, v0, v1, v2)

    @always_inline
    fn uniform3uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.uniform3uiv(location, count, value)

    @always_inline
    fn uniform4ui(self, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
        return self.gl_version_3_0.uniform4ui(location, v0, v1, v2, v3)

    @always_inline
    fn uniform4uiv(self, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.uniform4uiv(location, count, value)

    @always_inline
    fn vertex_attrib_i1i(self, index: GLuint, x: GLint):
        return self.gl_version_3_0.vertex_attrib_i1i(index, x)

    @always_inline
    fn vertex_attrib_i1iv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i1iv(index, v)

    @always_inline
    fn vertex_attrib_i1ui(self, index: GLuint, x: GLuint):
        return self.gl_version_3_0.vertex_attrib_i1ui(index, x)

    @always_inline
    fn vertex_attrib_i1uiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i1uiv(index, v)

    @always_inline
    fn vertex_attrib_i2i(self, index: GLuint, x: GLint, y: GLint):
        return self.gl_version_3_0.vertex_attrib_i2i(index, x, y)

    @always_inline
    fn vertex_attrib_i2iv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i2iv(index, v)

    @always_inline
    fn vertex_attrib_i2ui(self, index: GLuint, x: GLuint, y: GLuint):
        return self.gl_version_3_0.vertex_attrib_i2ui(index, x, y)

    @always_inline
    fn vertex_attrib_i2uiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i2uiv(index, v)

    @always_inline
    fn vertex_attrib_i3i(self, index: GLuint, x: GLint, y: GLint, z: GLint):
        return self.gl_version_3_0.vertex_attrib_i3i(index, x, y, z)

    @always_inline
    fn vertex_attrib_i3iv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i3iv(index, v)

    @always_inline
    fn vertex_attrib_i3ui(self, index: GLuint, x: GLuint, y: GLuint, z: GLuint):
        return self.gl_version_3_0.vertex_attrib_i3ui(index, x, y, z)

    @always_inline
    fn vertex_attrib_i3uiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i3uiv(index, v)

    @always_inline
    fn vertex_attrib_i4bv(self, index: GLuint, v: Ptr[GLbyte, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4bv(index, v)

    @always_inline
    fn vertex_attrib_i4i(self, index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint):
        return self.gl_version_3_0.vertex_attrib_i4i(index, x, y, z, w)

    @always_inline
    fn vertex_attrib_i4iv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4iv(index, v)

    @always_inline
    fn vertex_attrib_i4sv(self, index: GLuint, v: Ptr[GLshort, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4sv(index, v)

    @always_inline
    fn vertex_attrib_i4ubv(self, index: GLuint, v: Ptr[GLubyte, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4ubv(index, v)

    @always_inline
    fn vertex_attrib_i4ui(self, index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint):
        return self.gl_version_3_0.vertex_attrib_i4ui(index, x, y, z, w)

    @always_inline
    fn vertex_attrib_i4uiv(self, index: GLuint, v: Ptr[GLuint, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4uiv(index, v)

    @always_inline
    fn vertex_attrib_i4usv(self, index: GLuint, v: Ptr[GLushort, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i4usv(index, v)

    @always_inline
    fn vertex_attrib_i_pointer(self, index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, mut=True]):
        return self.gl_version_3_0.vertex_attrib_i_pointer(index, size, type, stride, pointer)

    @always_inline
    fn copy_buffer_sub_data(self, read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_3_1.copy_buffer_sub_data(read_target, write_target, read_offset, write_offset, size)

    @always_inline
    fn draw_arrays_instanced(self, mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei):
        return self.gl_version_3_1.draw_arrays_instanced(mode, first, count, instancecount)

    @always_inline
    fn draw_elements_instanced(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei):
        return self.gl_version_3_1.draw_elements_instanced(mode, count, type, indices, instancecount)

    @always_inline
    fn get_active_uniform_block_name(self, program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_block_name: Ptr[GLchar, mut=True]):
        return self.gl_version_3_1.get_active_uniform_block_name(program, uniform_block_index, buf_size, length, uniform_block_name)

    @always_inline
    fn get_active_uniform_blockiv(self, program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_1.get_active_uniform_blockiv(program, uniform_block_index, pname, params)

    @always_inline
    fn get_active_uniform_name(self, program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], uniform_name: Ptr[GLchar, mut=True]):
        return self.gl_version_3_1.get_active_uniform_name(program, uniform_index, buf_size, length, uniform_name)

    @always_inline
    fn get_active_uniformsiv(self, program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, mut=True], pname: UniformPName, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_1.get_active_uniformsiv(program, uniform_count, uniform_indices, pname, params)

    @always_inline
    fn get_uniform_block_index(self, program: GLuint, uniform_block_name: Ptr[GLchar, mut=True]) -> GLuint:
        return self.gl_version_3_1.get_uniform_block_index(program, uniform_block_name)

    @always_inline
    fn get_uniform_indices(self, program: GLuint, uniform_count: GLsizei, uniform_names: Ptr[Ptr[GLchar, mut=True], mut=False], uniform_indices: Ptr[GLuint, mut=True]):
        return self.gl_version_3_1.get_uniform_indices(program, uniform_count, uniform_names, uniform_indices)

    @always_inline
    fn primitive_restart_index(self, index: GLuint):
        return self.gl_version_3_1.primitive_restart_index(index)

    @always_inline
    fn tex_buffer(self, target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint):
        return self.gl_version_3_1.tex_buffer(target, internalformat, buffer)

    @always_inline
    fn uniform_block_binding(self, program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint):
        return self.gl_version_3_1.uniform_block_binding(program, uniform_block_index, uniform_block_binding)

    @always_inline
    fn client_wait_sync(self, sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> SyncStatus:
        return self.gl_version_3_2.client_wait_sync(sync, flags, timeout)

    @always_inline
    fn delete_sync(self, sync: GLsync):
        return self.gl_version_3_2.delete_sync(sync)

    @always_inline
    fn draw_elements_base_vertex(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], basevertex: GLint):
        return self.gl_version_3_2.draw_elements_base_vertex(mode, count, type, indices, basevertex)

    @always_inline
    fn draw_elements_instanced_base_vertex(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, basevertex: GLint):
        return self.gl_version_3_2.draw_elements_instanced_base_vertex(mode, count, type, indices, instancecount, basevertex)

    @always_inline
    fn draw_range_elements_base_vertex(self, mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], basevertex: GLint):
        return self.gl_version_3_2.draw_range_elements_base_vertex(mode, start, end, count, type, indices, basevertex)

    @always_inline
    fn fence_sync(self, condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync:
        return self.gl_version_3_2.fence_sync(condition, flags)

    @always_inline
    fn framebuffer_texture(self, target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
        return self.gl_version_3_2.framebuffer_texture(target, attachment, texture, level)

    @always_inline
    fn get_buffer_parameteri64v(self, target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, mut=True]):
        return self.gl_version_3_2.get_buffer_parameteri64v(target, pname, params)

    @always_inline
    fn get_integer64i_v(self, target: GetPName, index: GLuint, data: Ptr[GLint64, mut=True]):
        return self.gl_version_3_2.get_integer64i_v(target, index, data)

    @always_inline
    fn get_integer64v(self, pname: GetPName, data: Ptr[GLint64, mut=True]):
        return self.gl_version_3_2.get_integer64v(pname, data)

    @always_inline
    fn get_multisamplefv(self, pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, mut=True]):
        return self.gl_version_3_2.get_multisamplefv(pname, index, val)

    @always_inline
    fn get_synciv(self, sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, mut=True], values: Ptr[GLint, mut=True]):
        return self.gl_version_3_2.get_synciv(sync, pname, count, length, values)

    @always_inline
    fn is_sync(self, sync: GLsync) -> GLboolean:
        return self.gl_version_3_2.is_sync(sync)

    @always_inline
    fn multi_draw_elements_base_vertex(self, mode: PrimitiveType, count: Ptr[GLsizei, mut=True], type: DrawElementsType, indices: Ptr[Ptr[NoneType, mut=True], mut=False], drawcount: GLsizei, basevertex: Ptr[GLint, mut=True]):
        return self.gl_version_3_2.multi_draw_elements_base_vertex(mode, count, type, indices, drawcount, basevertex)

    @always_inline
    fn provoking_vertex(self, mode: VertexProvokingMode):
        return self.gl_version_3_2.provoking_vertex(mode)

    @always_inline
    fn sample_maski(self, mask_number: GLuint, mask: GLbitfield):
        return self.gl_version_3_2.sample_maski(mask_number, mask)

    @always_inline
    fn tex_image2_d_multisample(self, target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_3_2.tex_image2_d_multisample(target, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn tex_image3_d_multisample(self, target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_3_2.tex_image3_d_multisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn wait_sync(self, sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64):
        return self.gl_version_3_2.wait_sync(sync, flags, timeout)

    @always_inline
    fn bind_frag_data_location_indexed(self, program: GLuint, color_number: GLuint, index: GLuint, name: Ptr[GLchar, mut=True]):
        return self.gl_version_3_3.bind_frag_data_location_indexed(program, color_number, index, name)

    @always_inline
    fn bind_sampler(self, unit: GLuint, sampler: GLuint):
        return self.gl_version_3_3.bind_sampler(unit, sampler)

    @always_inline
    fn color_p3ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.color_p3ui(type, color)

    @always_inline
    fn color_p3uiv(self, type: ColorPointerType, color: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.color_p3uiv(type, color)

    @always_inline
    fn color_p4ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.color_p4ui(type, color)

    @always_inline
    fn color_p4uiv(self, type: ColorPointerType, color: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.color_p4uiv(type, color)

    @always_inline
    fn delete_samplers(self, count: GLsizei, samplers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.delete_samplers(count, samplers)

    @always_inline
    fn gen_samplers(self, count: GLsizei, samplers: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.gen_samplers(count, samplers)

    @always_inline
    fn get_frag_data_index(self, program: GLuint, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_3_3.get_frag_data_index(program, name)

    @always_inline
    fn get_query_objecti64v(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, mut=True]):
        return self.gl_version_3_3.get_query_objecti64v(id, pname, params)

    @always_inline
    fn get_query_objectui64v(self, id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, mut=True]):
        return self.gl_version_3_3.get_query_objectui64v(id, pname, params)

    @always_inline
    fn get_sampler_parameter_iiv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_3.get_sampler_parameter_iiv(sampler, pname, params)

    @always_inline
    fn get_sampler_parameter_iuiv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.get_sampler_parameter_iuiv(sampler, pname, params)

    @always_inline
    fn get_sampler_parameterfv(self, sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_3_3.get_sampler_parameterfv(sampler, pname, params)

    @always_inline
    fn get_sampler_parameteriv(self, sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, mut=True]):
        return self.gl_version_3_3.get_sampler_parameteriv(sampler, pname, params)

    @always_inline
    fn is_sampler(self, sampler: GLuint) -> GLboolean:
        return self.gl_version_3_3.is_sampler(sampler)

    @always_inline
    fn multi_tex_coord_p1ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multi_tex_coord_p1ui(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p1uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.multi_tex_coord_p1uiv(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p2ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multi_tex_coord_p2ui(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p2uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.multi_tex_coord_p2uiv(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p3ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multi_tex_coord_p3ui(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p3uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.multi_tex_coord_p3uiv(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p4ui(self, texture: TextureUnit, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.multi_tex_coord_p4ui(texture, type, coords)

    @always_inline
    fn multi_tex_coord_p4uiv(self, texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.multi_tex_coord_p4uiv(texture, type, coords)

    @always_inline
    fn normal_p3ui(self, type: NormalPointerType, coords: GLuint):
        return self.gl_version_3_3.normal_p3ui(type, coords)

    @always_inline
    fn normal_p3uiv(self, type: NormalPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.normal_p3uiv(type, coords)

    @always_inline
    fn query_counter(self, id: GLuint, target: QueryCounterTarget):
        return self.gl_version_3_3.query_counter(id, target)

    @always_inline
    fn sampler_parameter_iiv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=True]):
        return self.gl_version_3_3.sampler_parameter_iiv(sampler, pname, param)

    @always_inline
    fn sampler_parameter_iuiv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.sampler_parameter_iuiv(sampler, pname, param)

    @always_inline
    fn sampler_parameterf(self, sampler: GLuint, pname: SamplerParameterF, param: GLfloat):
        return self.gl_version_3_3.sampler_parameterf(sampler, pname, param)

    @always_inline
    fn sampler_parameterfv(self, sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, mut=True]):
        return self.gl_version_3_3.sampler_parameterfv(sampler, pname, param)

    @always_inline
    fn sampler_parameteri(self, sampler: GLuint, pname: SamplerParameterI, param: GLint):
        return self.gl_version_3_3.sampler_parameteri(sampler, pname, param)

    @always_inline
    fn sampler_parameteriv(self, sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, mut=True]):
        return self.gl_version_3_3.sampler_parameteriv(sampler, pname, param)

    @always_inline
    fn secondary_color_p3ui(self, type: ColorPointerType, color: GLuint):
        return self.gl_version_3_3.secondary_color_p3ui(type, color)

    @always_inline
    fn secondary_color_p3uiv(self, type: ColorPointerType, color: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.secondary_color_p3uiv(type, color)

    @always_inline
    fn tex_coord_p1ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.tex_coord_p1ui(type, coords)

    @always_inline
    fn tex_coord_p1uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.tex_coord_p1uiv(type, coords)

    @always_inline
    fn tex_coord_p2ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.tex_coord_p2ui(type, coords)

    @always_inline
    fn tex_coord_p2uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.tex_coord_p2uiv(type, coords)

    @always_inline
    fn tex_coord_p3ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.tex_coord_p3ui(type, coords)

    @always_inline
    fn tex_coord_p3uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.tex_coord_p3uiv(type, coords)

    @always_inline
    fn tex_coord_p4ui(self, type: TexCoordPointerType, coords: GLuint):
        return self.gl_version_3_3.tex_coord_p4ui(type, coords)

    @always_inline
    fn tex_coord_p4uiv(self, type: TexCoordPointerType, coords: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.tex_coord_p4uiv(type, coords)

    @always_inline
    fn vertex_attrib_divisor(self, index: GLuint, divisor: GLuint):
        return self.gl_version_3_3.vertex_attrib_divisor(index, divisor)

    @always_inline
    fn vertex_attrib_p1ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertex_attrib_p1ui(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p1uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_attrib_p1uiv(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p2ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertex_attrib_p2ui(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p2uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_attrib_p2uiv(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p3ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertex_attrib_p3ui(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p3uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_attrib_p3uiv(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p4ui(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint):
        return self.gl_version_3_3.vertex_attrib_p4ui(index, type, normalized, value)

    @always_inline
    fn vertex_attrib_p4uiv(self, index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_attrib_p4uiv(index, type, normalized, value)

    @always_inline
    fn vertex_p2ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertex_p2ui(type, value)

    @always_inline
    fn vertex_p2uiv(self, type: VertexPointerType, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_p2uiv(type, value)

    @always_inline
    fn vertex_p3ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertex_p3ui(type, value)

    @always_inline
    fn vertex_p3uiv(self, type: VertexPointerType, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_p3uiv(type, value)

    @always_inline
    fn vertex_p4ui(self, type: VertexPointerType, value: GLuint):
        return self.gl_version_3_3.vertex_p4ui(type, value)

    @always_inline
    fn vertex_p4uiv(self, type: VertexPointerType, value: Ptr[GLuint, mut=True]):
        return self.gl_version_3_3.vertex_p4uiv(type, value)

    @always_inline
    fn begin_query_indexed(self, target: QueryTarget, index: GLuint, id: GLuint):
        return self.gl_version_4_0.begin_query_indexed(target, index, id)

    @always_inline
    fn bind_transform_feedback(self, target: BindTransformFeedbackTarget, id: GLuint):
        return self.gl_version_4_0.bind_transform_feedback(target, id)

    @always_inline
    fn blend_equation_separatei(self, buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT):
        return self.gl_version_4_0.blend_equation_separatei(buf, mode_rgb, mode_alpha)

    @always_inline
    fn blend_equationi(self, buf: GLuint, mode: BlendEquationModeEXT):
        return self.gl_version_4_0.blend_equationi(buf, mode)

    @always_inline
    fn blend_func_separatei(self, buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor):
        return self.gl_version_4_0.blend_func_separatei(buf, src_rgb, dst_rgb, src_alpha, dst_alpha)

    @always_inline
    fn blend_funci(self, buf: GLuint, src: BlendingFactor, dst: BlendingFactor):
        return self.gl_version_4_0.blend_funci(buf, src, dst)

    @always_inline
    fn delete_transform_feedbacks(self, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_4_0.delete_transform_feedbacks(n, ids)

    @always_inline
    fn draw_arrays_indirect(self, mode: PrimitiveType, indirect: Ptr[NoneType, mut=True]):
        return self.gl_version_4_0.draw_arrays_indirect(mode, indirect)

    @always_inline
    fn draw_elements_indirect(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True]):
        return self.gl_version_4_0.draw_elements_indirect(mode, type, indirect)

    @always_inline
    fn draw_transform_feedback(self, mode: PrimitiveType, id: GLuint):
        return self.gl_version_4_0.draw_transform_feedback(mode, id)

    @always_inline
    fn draw_transform_feedback_stream(self, mode: PrimitiveType, id: GLuint, stream: GLuint):
        return self.gl_version_4_0.draw_transform_feedback_stream(mode, id, stream)

    @always_inline
    fn end_query_indexed(self, target: QueryTarget, index: GLuint):
        return self.gl_version_4_0.end_query_indexed(target, index)

    @always_inline
    fn gen_transform_feedbacks(self, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_4_0.gen_transform_feedbacks(n, ids)

    @always_inline
    fn get_active_subroutine_name(self, program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True]):
        return self.gl_version_4_0.get_active_subroutine_name(program, shadertype, index, buf_size, length, name)

    @always_inline
    fn get_active_subroutine_uniform_name(self, program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True]):
        return self.gl_version_4_0.get_active_subroutine_uniform_name(program, shadertype, index, buf_size, length, name)

    @always_inline
    fn get_active_subroutine_uniformiv(self, program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, mut=True]):
        return self.gl_version_4_0.get_active_subroutine_uniformiv(program, shadertype, index, pname, values)

    @always_inline
    fn get_program_stageiv(self, program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, mut=True]):
        return self.gl_version_4_0.get_program_stageiv(program, shadertype, pname, values)

    @always_inline
    fn get_query_indexediv(self, target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_0.get_query_indexediv(target, index, pname, params)

    @always_inline
    fn get_subroutine_index(self, program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=True]) -> GLuint:
        return self.gl_version_4_0.get_subroutine_index(program, shadertype, name)

    @always_inline
    fn get_subroutine_uniform_location(self, program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_4_0.get_subroutine_uniform_location(program, shadertype, name)

    @always_inline
    fn get_uniform_subroutineuiv(self, shadertype: ShaderType, location: GLint, params: Ptr[GLuint, mut=True]):
        return self.gl_version_4_0.get_uniform_subroutineuiv(shadertype, location, params)

    @always_inline
    fn get_uniformdv(self, program: GLuint, location: GLint, params: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.get_uniformdv(program, location, params)

    @always_inline
    fn is_transform_feedback(self, id: GLuint) -> GLboolean:
        return self.gl_version_4_0.is_transform_feedback(id)

    @always_inline
    fn min_sample_shading(self, value: GLfloat):
        return self.gl_version_4_0.min_sample_shading(value)

    @always_inline
    fn patch_parameterfv(self, pname: PatchParameterName, values: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_0.patch_parameterfv(pname, values)

    @always_inline
    fn patch_parameteri(self, pname: PatchParameterName, value: GLint):
        return self.gl_version_4_0.patch_parameteri(pname, value)

    @always_inline
    fn pause_transform_feedback(self):
        return self.gl_version_4_0.pause_transform_feedback()

    @always_inline
    fn resume_transform_feedback(self):
        return self.gl_version_4_0.resume_transform_feedback()

    @always_inline
    fn uniform1d(self, location: GLint, x: GLdouble):
        return self.gl_version_4_0.uniform1d(location, x)

    @always_inline
    fn uniform1dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform1dv(location, count, value)

    @always_inline
    fn uniform2d(self, location: GLint, x: GLdouble, y: GLdouble):
        return self.gl_version_4_0.uniform2d(location, x, y)

    @always_inline
    fn uniform2dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform2dv(location, count, value)

    @always_inline
    fn uniform3d(self, location: GLint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_4_0.uniform3d(location, x, y, z)

    @always_inline
    fn uniform3dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform3dv(location, count, value)

    @always_inline
    fn uniform4d(self, location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_4_0.uniform4d(location, x, y, z, w)

    @always_inline
    fn uniform4dv(self, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform4dv(location, count, value)

    @always_inline
    fn uniform_matrix2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix2dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix2x3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix2x3dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix2x4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix2x4dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix3dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3x2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix3x2dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix3x4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix3x4dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix4dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4x2dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix4x2dv(location, count, transpose, value)

    @always_inline
    fn uniform_matrix4x3dv(self, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_0.uniform_matrix4x3dv(location, count, transpose, value)

    @always_inline
    fn uniform_subroutinesuiv(self, shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, mut=True]):
        return self.gl_version_4_0.uniform_subroutinesuiv(shadertype, count, indices)

    @always_inline
    fn active_shader_program(self, pipeline: GLuint, program: GLuint):
        return self.gl_version_4_1.active_shader_program(pipeline, program)

    @always_inline
    fn bind_program_pipeline(self, pipeline: GLuint):
        return self.gl_version_4_1.bind_program_pipeline(pipeline)

    @always_inline
    fn clear_depthf(self, d: GLfloat):
        return self.gl_version_4_1.clear_depthf(d)

    @always_inline
    fn create_shader_programv(self, type: ShaderType, count: GLsizei, strings: Ptr[Ptr[GLchar, mut=True], mut=False]) -> GLuint:
        return self.gl_version_4_1.create_shader_programv(type, count, strings)

    @always_inline
    fn delete_program_pipelines(self, n: GLsizei, pipelines: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.delete_program_pipelines(n, pipelines)

    @always_inline
    fn depth_range_arrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.depth_range_arrayv(first, count, v)

    @always_inline
    fn depth_range_indexed(self, index: GLuint, n: GLdouble, f: GLdouble):
        return self.gl_version_4_1.depth_range_indexed(index, n, f)

    @always_inline
    fn depth_rangef(self, n: GLfloat, f: GLfloat):
        return self.gl_version_4_1.depth_rangef(n, f)

    @always_inline
    fn gen_program_pipelines(self, n: GLsizei, pipelines: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.gen_program_pipelines(n, pipelines)

    @always_inline
    fn get_doublei_v(self, target: GetPName, index: GLuint, data: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.get_doublei_v(target, index, data)

    @always_inline
    fn get_floati_v(self, target: GetPName, index: GLuint, data: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.get_floati_v(target, index, data)

    @always_inline
    fn get_program_binary(self, program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], binary_format: Ptr[GLenum, mut=True], binary: Ptr[NoneType, mut=True]):
        return self.gl_version_4_1.get_program_binary(program, buf_size, length, binary_format, binary)

    @always_inline
    fn get_program_pipeline_info_log(self, pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], info_log: Ptr[GLchar, mut=True]):
        return self.gl_version_4_1.get_program_pipeline_info_log(pipeline, buf_size, length, info_log)

    @always_inline
    fn get_program_pipelineiv(self, pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.get_program_pipelineiv(pipeline, pname, params)

    @always_inline
    fn get_shader_precision_format(self, shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, mut=True], precision: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.get_shader_precision_format(shadertype, precisiontype, range, precision)

    @always_inline
    fn get_vertex_attrib_ldv(self, index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.get_vertex_attrib_ldv(index, pname, params)

    @always_inline
    fn is_program_pipeline(self, pipeline: GLuint) -> GLboolean:
        return self.gl_version_4_1.is_program_pipeline(pipeline)

    @always_inline
    fn program_binary(self, program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, mut=True], length: GLsizei):
        return self.gl_version_4_1.program_binary(program, binary_format, binary, length)

    @always_inline
    fn program_parameteri(self, program: GLuint, pname: ProgramParameterPName, value: GLint):
        return self.gl_version_4_1.program_parameteri(program, pname, value)

    @always_inline
    fn program_uniform1d(self, program: GLuint, location: GLint, v0: GLdouble):
        return self.gl_version_4_1.program_uniform1d(program, location, v0)

    @always_inline
    fn program_uniform1dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform1dv(program, location, count, value)

    @always_inline
    fn program_uniform1f(self, program: GLuint, location: GLint, v0: GLfloat):
        return self.gl_version_4_1.program_uniform1f(program, location, v0)

    @always_inline
    fn program_uniform1fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform1fv(program, location, count, value)

    @always_inline
    fn program_uniform1i(self, program: GLuint, location: GLint, v0: GLint):
        return self.gl_version_4_1.program_uniform1i(program, location, v0)

    @always_inline
    fn program_uniform1iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.program_uniform1iv(program, location, count, value)

    @always_inline
    fn program_uniform1ui(self, program: GLuint, location: GLint, v0: GLuint):
        return self.gl_version_4_1.program_uniform1ui(program, location, v0)

    @always_inline
    fn program_uniform1uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.program_uniform1uiv(program, location, count, value)

    @always_inline
    fn program_uniform2d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble):
        return self.gl_version_4_1.program_uniform2d(program, location, v0, v1)

    @always_inline
    fn program_uniform2dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform2dv(program, location, count, value)

    @always_inline
    fn program_uniform2f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat):
        return self.gl_version_4_1.program_uniform2f(program, location, v0, v1)

    @always_inline
    fn program_uniform2fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform2fv(program, location, count, value)

    @always_inline
    fn program_uniform2i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint):
        return self.gl_version_4_1.program_uniform2i(program, location, v0, v1)

    @always_inline
    fn program_uniform2iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.program_uniform2iv(program, location, count, value)

    @always_inline
    fn program_uniform2ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint):
        return self.gl_version_4_1.program_uniform2ui(program, location, v0, v1)

    @always_inline
    fn program_uniform2uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.program_uniform2uiv(program, location, count, value)

    @always_inline
    fn program_uniform3d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble):
        return self.gl_version_4_1.program_uniform3d(program, location, v0, v1, v2)

    @always_inline
    fn program_uniform3dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform3dv(program, location, count, value)

    @always_inline
    fn program_uniform3f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat):
        return self.gl_version_4_1.program_uniform3f(program, location, v0, v1, v2)

    @always_inline
    fn program_uniform3fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform3fv(program, location, count, value)

    @always_inline
    fn program_uniform3i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint):
        return self.gl_version_4_1.program_uniform3i(program, location, v0, v1, v2)

    @always_inline
    fn program_uniform3iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.program_uniform3iv(program, location, count, value)

    @always_inline
    fn program_uniform3ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint):
        return self.gl_version_4_1.program_uniform3ui(program, location, v0, v1, v2)

    @always_inline
    fn program_uniform3uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.program_uniform3uiv(program, location, count, value)

    @always_inline
    fn program_uniform4d(self, program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble):
        return self.gl_version_4_1.program_uniform4d(program, location, v0, v1, v2, v3)

    @always_inline
    fn program_uniform4dv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform4dv(program, location, count, value)

    @always_inline
    fn program_uniform4f(self, program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat):
        return self.gl_version_4_1.program_uniform4f(program, location, v0, v1, v2, v3)

    @always_inline
    fn program_uniform4fv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform4fv(program, location, count, value)

    @always_inline
    fn program_uniform4i(self, program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint):
        return self.gl_version_4_1.program_uniform4i(program, location, v0, v1, v2, v3)

    @always_inline
    fn program_uniform4iv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.program_uniform4iv(program, location, count, value)

    @always_inline
    fn program_uniform4ui(self, program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint):
        return self.gl_version_4_1.program_uniform4ui(program, location, v0, v1, v2, v3)

    @always_inline
    fn program_uniform4uiv(self, program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_1.program_uniform4uiv(program, location, count, value)

    @always_inline
    fn program_uniform_matrix2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix2x3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2x3dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix2x3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2x3fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix2x4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2x4dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix2x4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix2x4fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3x2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3x2dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3x2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3x2fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3x4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3x4dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix3x4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix3x4fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4x2dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4x2dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4x2fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4x2fv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4x3dv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4x3dv(program, location, count, transpose, value)

    @always_inline
    fn program_uniform_matrix4x3fv(self, program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.program_uniform_matrix4x3fv(program, location, count, transpose, value)

    @always_inline
    fn release_shader_compiler(self):
        return self.gl_version_4_1.release_shader_compiler()

    @always_inline
    fn scissor_arrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.scissor_arrayv(first, count, v)

    @always_inline
    fn scissor_indexed(self, index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_1.scissor_indexed(index, left, bottom, width, height)

    @always_inline
    fn scissor_indexedv(self, index: GLuint, v: Ptr[GLint, mut=True]):
        return self.gl_version_4_1.scissor_indexedv(index, v)

    @always_inline
    fn shader_binary(self, count: GLsizei, shaders: Ptr[GLuint, mut=True], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, mut=True], length: GLsizei):
        return self.gl_version_4_1.shader_binary(count, shaders, binary_format, binary, length)

    @always_inline
    fn use_program_stages(self, pipeline: GLuint, stages: UseProgramStageMask, program: GLuint):
        return self.gl_version_4_1.use_program_stages(pipeline, stages, program)

    @always_inline
    fn validate_program_pipeline(self, pipeline: GLuint):
        return self.gl_version_4_1.validate_program_pipeline(pipeline)

    @always_inline
    fn vertex_attrib_l1d(self, index: GLuint, x: GLdouble):
        return self.gl_version_4_1.vertex_attrib_l1d(index, x)

    @always_inline
    fn vertex_attrib_l1dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.vertex_attrib_l1dv(index, v)

    @always_inline
    fn vertex_attrib_l2d(self, index: GLuint, x: GLdouble, y: GLdouble):
        return self.gl_version_4_1.vertex_attrib_l2d(index, x, y)

    @always_inline
    fn vertex_attrib_l2dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.vertex_attrib_l2dv(index, v)

    @always_inline
    fn vertex_attrib_l3d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble):
        return self.gl_version_4_1.vertex_attrib_l3d(index, x, y, z)

    @always_inline
    fn vertex_attrib_l3dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.vertex_attrib_l3dv(index, v)

    @always_inline
    fn vertex_attrib_l4d(self, index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble):
        return self.gl_version_4_1.vertex_attrib_l4d(index, x, y, z, w)

    @always_inline
    fn vertex_attrib_l4dv(self, index: GLuint, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_1.vertex_attrib_l4dv(index, v)

    @always_inline
    fn vertex_attrib_l_pointer(self, index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, mut=True]):
        return self.gl_version_4_1.vertex_attrib_l_pointer(index, size, type, stride, pointer)

    @always_inline
    fn viewport_arrayv(self, first: GLuint, count: GLsizei, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.viewport_arrayv(first, count, v)

    @always_inline
    fn viewport_indexedf(self, index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat):
        return self.gl_version_4_1.viewport_indexedf(index, x, y, w, h)

    @always_inline
    fn viewport_indexedfv(self, index: GLuint, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_1.viewport_indexedfv(index, v)

    @always_inline
    fn bind_image_texture(self, unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat):
        return self.gl_version_4_2.bind_image_texture(unit, texture, level, layered, layer, access, format)

    @always_inline
    fn draw_arrays_instanced_base_instance(self, mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint):
        return self.gl_version_4_2.draw_arrays_instanced_base_instance(mode, first, count, instancecount, baseinstance)

    @always_inline
    fn draw_elements_instanced_base_instance(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, baseinstance: GLuint):
        return self.gl_version_4_2.draw_elements_instanced_base_instance(mode, count, type, indices, instancecount, baseinstance)

    @always_inline
    fn draw_elements_instanced_base_vertex_base_instance(self, mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, mut=True], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint):
        return self.gl_version_4_2.draw_elements_instanced_base_vertex_base_instance(mode, count, type, indices, instancecount, basevertex, baseinstance)

    @always_inline
    fn draw_transform_feedback_instanced(self, mode: PrimitiveType, id: GLuint, instancecount: GLsizei):
        return self.gl_version_4_2.draw_transform_feedback_instanced(mode, id, instancecount)

    @always_inline
    fn draw_transform_feedback_stream_instanced(self, mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei):
        return self.gl_version_4_2.draw_transform_feedback_stream_instanced(mode, id, stream, instancecount)

    @always_inline
    fn get_active_atomic_counter_bufferiv(self, program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_2.get_active_atomic_counter_bufferiv(program, buffer_index, pname, params)

    @always_inline
    fn get_internalformativ(self, target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_2.get_internalformativ(target, internalformat, pname, count, params)

    @always_inline
    fn memory_barrier(self, barriers: MemoryBarrierMask):
        return self.gl_version_4_2.memory_barrier(barriers)

    @always_inline
    fn tex_storage1_d(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
        return self.gl_version_4_2.tex_storage1_d(target, levels, internalformat, width)

    @always_inline
    fn tex_storage2_d(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_2.tex_storage2_d(target, levels, internalformat, width, height)

    @always_inline
    fn tex_storage3_d(self, target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_2.tex_storage3_d(target, levels, internalformat, width, height, depth)

    @always_inline
    fn bind_vertex_buffer(self, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
        return self.gl_version_4_3.bind_vertex_buffer(bindingindex, buffer, offset, stride)

    @always_inline
    fn clear_buffer_data(self, target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_3.clear_buffer_data(target, internalformat, format, type, data)

    @always_inline
    fn clear_buffer_sub_data(self, target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_3.clear_buffer_sub_data(target, internalformat, offset, size, format, type, data)

    @always_inline
    fn copy_image_sub_data(self, src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei):
        return self.gl_version_4_3.copy_image_sub_data(src_name, src_target, src_level, src_x, src_y, src_z, dst_name, dst_target, dst_level, dst_x, dst_y, dst_z, src_width, src_height, src_depth)

    @always_inline
    fn debug_message_callback(self, callback: GLDEBUGPROC, user_param: Ptr[NoneType, mut=True]):
        return self.gl_version_4_3.debug_message_callback(callback, user_param)

    @always_inline
    fn debug_message_control(self, source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, mut=True], enabled: GLboolean):
        return self.gl_version_4_3.debug_message_control(source, type, severity, count, ids, enabled)

    @always_inline
    fn debug_message_insert(self, source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.debug_message_insert(source, type, id, severity, length, buf)

    @always_inline
    fn dispatch_compute(self, num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint):
        return self.gl_version_4_3.dispatch_compute(num_groups_x, num_groups_y, num_groups_z)

    @always_inline
    fn dispatch_compute_indirect(self, indirect: GLintptr):
        return self.gl_version_4_3.dispatch_compute_indirect(indirect)

    @always_inline
    fn framebuffer_parameteri(self, target: FramebufferTarget, pname: FramebufferParameterName, param: GLint):
        return self.gl_version_4_3.framebuffer_parameteri(target, pname, param)

    @always_inline
    fn get_debug_message_log(self, count: GLuint, buf_size: GLsizei, sources: DebugSource, types: DebugType, ids: Ptr[GLuint, mut=True], severities: DebugSeverity, lengths: Ptr[GLsizei, mut=True], message_log: Ptr[GLchar, mut=True]) -> GLuint:
        return self.gl_version_4_3.get_debug_message_log(count, buf_size, sources, types, ids, severities, lengths, message_log)

    @always_inline
    fn get_framebuffer_parameteriv(self, target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_3.get_framebuffer_parameteriv(target, pname, params)

    @always_inline
    fn get_internalformati64v(self, target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, mut=True]):
        return self.gl_version_4_3.get_internalformati64v(target, internalformat, pname, count, params)

    @always_inline
    fn get_object_label(self, identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.get_object_label(identifier, name, buf_size, length, label)

    @always_inline
    fn get_object_ptr_label(self, ptr: Ptr[NoneType, mut=True], buf_size: GLsizei, length: Ptr[GLsizei, mut=True], label: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.get_object_ptr_label(ptr, buf_size, length, label)

    @always_inline
    fn get_program_interfaceiv(self, program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_3.get_program_interfaceiv(program, program_interface, pname, params)

    @always_inline
    fn get_program_resource_index(self, program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLuint:
        return self.gl_version_4_3.get_program_resource_index(program, program_interface, name)

    @always_inline
    fn get_program_resource_location(self, program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_4_3.get_program_resource_location(program, program_interface, name)

    @always_inline
    fn get_program_resource_location_index(self, program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, mut=True]) -> GLint:
        return self.gl_version_4_3.get_program_resource_location_index(program, program_interface, name)

    @always_inline
    fn get_program_resource_name(self, program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, mut=True], name: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.get_program_resource_name(program, program_interface, index, buf_size, length, name)

    @always_inline
    fn get_program_resourceiv(self, program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: ProgramResourceProperty, count: GLsizei, length: Ptr[GLsizei, mut=True], params: Ptr[GLint, mut=True]):
        return self.gl_version_4_3.get_program_resourceiv(program, program_interface, index, prop_count, props, count, length, params)

    @always_inline
    fn invalidate_buffer_data(self, buffer: GLuint):
        return self.gl_version_4_3.invalidate_buffer_data(buffer)

    @always_inline
    fn invalidate_buffer_sub_data(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_4_3.invalidate_buffer_sub_data(buffer, offset, length)

    @always_inline
    fn invalidate_framebuffer(self, target: FramebufferTarget, num_attachments: GLsizei, attachments: InvalidateFramebufferAttachment):
        return self.gl_version_4_3.invalidate_framebuffer(target, num_attachments, attachments)

    @always_inline
    fn invalidate_sub_framebuffer(self, target: FramebufferTarget, num_attachments: GLsizei, attachments: InvalidateFramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_3.invalidate_sub_framebuffer(target, num_attachments, attachments, x, y, width, height)

    @always_inline
    fn invalidate_tex_image(self, texture: GLuint, level: GLint):
        return self.gl_version_4_3.invalidate_tex_image(texture, level)

    @always_inline
    fn invalidate_tex_sub_image(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_3.invalidate_tex_sub_image(texture, level, xoffset, yoffset, zoffset, width, height, depth)

    @always_inline
    fn multi_draw_arrays_indirect(self, mode: PrimitiveType, indirect: Ptr[NoneType, mut=True], drawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_3.multi_draw_arrays_indirect(mode, indirect, drawcount, stride)

    @always_inline
    fn multi_draw_elements_indirect(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True], drawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_3.multi_draw_elements_indirect(mode, type, indirect, drawcount, stride)

    @always_inline
    fn object_label(self, identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.object_label(identifier, name, length, label)

    @always_inline
    fn object_ptr_label(self, ptr: Ptr[NoneType, mut=True], length: GLsizei, label: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.object_ptr_label(ptr, length, label)

    @always_inline
    fn pop_debug_group(self):
        return self.gl_version_4_3.pop_debug_group()

    @always_inline
    fn push_debug_group(self, source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar, mut=True]):
        return self.gl_version_4_3.push_debug_group(source, id, length, message)

    @always_inline
    fn shader_storage_block_binding(self, program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint):
        return self.gl_version_4_3.shader_storage_block_binding(program, storage_block_index, storage_block_binding)

    @always_inline
    fn tex_buffer_range(self, target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_3.tex_buffer_range(target, internalformat, buffer, offset, size)

    @always_inline
    fn tex_storage2_d_multisample(self, target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_3.tex_storage2_d_multisample(target, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn tex_storage3_d_multisample(self, target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_3.tex_storage3_d_multisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn texture_view(self, texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint):
        return self.gl_version_4_3.texture_view(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)

    @always_inline
    fn vertex_attrib_binding(self, attribindex: GLuint, bindingindex: GLuint):
        return self.gl_version_4_3.vertex_attrib_binding(attribindex, bindingindex)

    @always_inline
    fn vertex_attrib_format(self, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint):
        return self.gl_version_4_3.vertex_attrib_format(attribindex, size, type, normalized, relativeoffset)

    @always_inline
    fn vertex_attrib_i_format(self, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
        return self.gl_version_4_3.vertex_attrib_i_format(attribindex, size, type, relativeoffset)

    @always_inline
    fn vertex_attrib_l_format(self, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
        return self.gl_version_4_3.vertex_attrib_l_format(attribindex, size, type, relativeoffset)

    @always_inline
    fn vertex_binding_divisor(self, bindingindex: GLuint, divisor: GLuint):
        return self.gl_version_4_3.vertex_binding_divisor(bindingindex, divisor)

    @always_inline
    fn bind_buffers_base(self, target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_4.bind_buffers_base(target, first, count, buffers)

    @always_inline
    fn bind_buffers_range(self, target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], sizes: Ptr[GLsizeiptr, mut=True]):
        return self.gl_version_4_4.bind_buffers_range(target, first, count, buffers, offsets, sizes)

    @always_inline
    fn bind_image_textures(self, first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=True]):
        return self.gl_version_4_4.bind_image_textures(first, count, textures)

    @always_inline
    fn bind_samplers(self, first: GLuint, count: GLsizei, samplers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_4.bind_samplers(first, count, samplers)

    @always_inline
    fn bind_textures(self, first: GLuint, count: GLsizei, textures: Ptr[GLuint, mut=True]):
        return self.gl_version_4_4.bind_textures(first, count, textures)

    @always_inline
    fn bind_vertex_buffers(self, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], strides: Ptr[GLsizei, mut=True]):
        return self.gl_version_4_4.bind_vertex_buffers(first, count, buffers, offsets, strides)

    @always_inline
    fn buffer_storage(self, target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, mut=True], flags: BufferStorageMask):
        return self.gl_version_4_4.buffer_storage(target, size, data, flags)

    @always_inline
    fn clear_tex_image(self, texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_4.clear_tex_image(texture, level, format, type, data)

    @always_inline
    fn clear_tex_sub_image(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_4.clear_tex_sub_image(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)

    @always_inline
    fn bind_texture_unit(self, unit: GLuint, texture: GLuint):
        return self.gl_version_4_5.bind_texture_unit(unit, texture)

    @always_inline
    fn blit_named_framebuffer(self, read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter):
        return self.gl_version_4_5.blit_named_framebuffer(read_framebuffer, draw_framebuffer, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)

    @always_inline
    fn check_named_framebuffer_status(self, framebuffer: GLuint, target: FramebufferTarget) -> FramebufferStatus:
        return self.gl_version_4_5.check_named_framebuffer_status(framebuffer, target)

    @always_inline
    fn clear_named_buffer_data(self, buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.clear_named_buffer_data(buffer, internalformat, format, type, data)

    @always_inline
    fn clear_named_buffer_sub_data(self, buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.clear_named_buffer_sub_data(buffer, internalformat, offset, size, format, type, data)

    @always_inline
    fn clear_named_framebufferfi(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint):
        return self.gl_version_4_5.clear_named_framebufferfi(framebuffer, buffer, drawbuffer, depth, stencil)

    @always_inline
    fn clear_named_framebufferfv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.clear_named_framebufferfv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clear_named_framebufferiv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.clear_named_framebufferiv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clear_named_framebufferuiv(self, framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.clear_named_framebufferuiv(framebuffer, buffer, drawbuffer, value)

    @always_inline
    fn clip_control(self, origin: ClipControlOrigin, depth: ClipControlDepth):
        return self.gl_version_4_5.clip_control(origin, depth)

    @always_inline
    fn compressed_texture_sub_image1_d(self, texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.compressed_texture_sub_image1_d(texture, level, xoffset, width, format, image_size, data)

    @always_inline
    fn compressed_texture_sub_image2_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.compressed_texture_sub_image2_d(texture, level, xoffset, yoffset, width, height, format, image_size, data)

    @always_inline
    fn compressed_texture_sub_image3_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.compressed_texture_sub_image3_d(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)

    @always_inline
    fn copy_named_buffer_sub_data(self, read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.copy_named_buffer_sub_data(read_buffer, write_buffer, read_offset, write_offset, size)

    @always_inline
    fn copy_texture_sub_image1_d(self, texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei):
        return self.gl_version_4_5.copy_texture_sub_image1_d(texture, level, xoffset, x, y, width)

    @always_inline
    fn copy_texture_sub_image2_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.copy_texture_sub_image2_d(texture, level, xoffset, yoffset, x, y, width, height)

    @always_inline
    fn copy_texture_sub_image3_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.copy_texture_sub_image3_d(texture, level, xoffset, yoffset, zoffset, x, y, width, height)

    @always_inline
    fn create_buffers(self, n: GLsizei, buffers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_buffers(n, buffers)

    @always_inline
    fn create_framebuffers(self, n: GLsizei, framebuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_framebuffers(n, framebuffers)

    @always_inline
    fn create_program_pipelines(self, n: GLsizei, pipelines: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_program_pipelines(n, pipelines)

    @always_inline
    fn create_queries(self, target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_queries(target, n, ids)

    @always_inline
    fn create_renderbuffers(self, n: GLsizei, renderbuffers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_renderbuffers(n, renderbuffers)

    @always_inline
    fn create_samplers(self, n: GLsizei, samplers: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_samplers(n, samplers)

    @always_inline
    fn create_textures(self, target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_textures(target, n, textures)

    @always_inline
    fn create_transform_feedbacks(self, n: GLsizei, ids: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_transform_feedbacks(n, ids)

    @always_inline
    fn create_vertex_arrays(self, n: GLsizei, arrays: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.create_vertex_arrays(n, arrays)

    @always_inline
    fn disable_vertex_array_attrib(self, vaobj: GLuint, index: GLuint):
        return self.gl_version_4_5.disable_vertex_array_attrib(vaobj, index)

    @always_inline
    fn enable_vertex_array_attrib(self, vaobj: GLuint, index: GLuint):
        return self.gl_version_4_5.enable_vertex_array_attrib(vaobj, index)

    @always_inline
    fn flush_mapped_named_buffer_range(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr):
        return self.gl_version_4_5.flush_mapped_named_buffer_range(buffer, offset, length)

    @always_inline
    fn generate_texture_mipmap(self, texture: GLuint):
        return self.gl_version_4_5.generate_texture_mipmap(texture)

    @always_inline
    fn get_compressed_texture_image(self, texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.get_compressed_texture_image(texture, level, buf_size, pixels)

    @always_inline
    fn get_compressed_texture_sub_image(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.get_compressed_texture_sub_image(texture, level, xoffset, yoffset, zoffset, width, height, depth, buf_size, pixels)

    @always_inline
    fn get_graphics_reset_status(self) -> GraphicsResetStatus:
        return self.gl_version_4_5.get_graphics_reset_status()

    @always_inline
    fn get_named_buffer_parameteri64v(self, buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, mut=True]):
        return self.gl_version_4_5.get_named_buffer_parameteri64v(buffer, pname, params)

    @always_inline
    fn get_named_buffer_parameteriv(self, buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_named_buffer_parameteriv(buffer, pname, params)

    @always_inline
    fn get_named_buffer_pointerv(self, buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, mut=True], mut=True]):
        return self.gl_version_4_5.get_named_buffer_pointerv(buffer, pname, params)

    @always_inline
    fn get_named_buffer_sub_data(self, buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.get_named_buffer_sub_data(buffer, offset, size, data)

    @always_inline
    fn get_named_framebuffer_attachment_parameteriv(self, framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_named_framebuffer_attachment_parameteriv(framebuffer, attachment, pname, params)

    @always_inline
    fn get_named_framebuffer_parameteriv(self, framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_named_framebuffer_parameteriv(framebuffer, pname, param)

    @always_inline
    fn get_named_renderbuffer_parameteriv(self, renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_named_renderbuffer_parameteriv(renderbuffer, pname, params)

    @always_inline
    fn get_query_buffer_objecti64v(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.get_query_buffer_objecti64v(id, buffer, pname, offset)

    @always_inline
    fn get_query_buffer_objectiv(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.get_query_buffer_objectiv(id, buffer, pname, offset)

    @always_inline
    fn get_query_buffer_objectui64v(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.get_query_buffer_objectui64v(id, buffer, pname, offset)

    @always_inline
    fn get_query_buffer_objectuiv(self, id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr):
        return self.gl_version_4_5.get_query_buffer_objectuiv(id, buffer, pname, offset)

    @always_inline
    fn get_texture_image(self, texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.get_texture_image(texture, level, format, type, buf_size, pixels)

    @always_inline
    fn get_texture_level_parameterfv(self, texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.get_texture_level_parameterfv(texture, level, pname, params)

    @always_inline
    fn get_texture_level_parameteriv(self, texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_texture_level_parameteriv(texture, level, pname, params)

    @always_inline
    fn get_texture_parameter_iiv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_texture_parameter_iiv(texture, pname, params)

    @always_inline
    fn get_texture_parameter_iuiv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.get_texture_parameter_iuiv(texture, pname, params)

    @always_inline
    fn get_texture_parameterfv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.get_texture_parameterfv(texture, pname, params)

    @always_inline
    fn get_texture_parameteriv(self, texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_texture_parameteriv(texture, pname, params)

    @always_inline
    fn get_texture_sub_image(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.get_texture_sub_image(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, buf_size, pixels)

    @always_inline
    fn get_transform_feedbacki64_v(self, xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, mut=True]):
        return self.gl_version_4_5.get_transform_feedbacki64_v(xfb, pname, index, param)

    @always_inline
    fn get_transform_feedbacki_v(self, xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_transform_feedbacki_v(xfb, pname, index, param)

    @always_inline
    fn get_transform_feedbackiv(self, xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_transform_feedbackiv(xfb, pname, param)

    @always_inline
    fn get_vertex_array_indexed64iv(self, vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, mut=True]):
        return self.gl_version_4_5.get_vertex_array_indexed64iv(vaobj, index, pname, param)

    @always_inline
    fn get_vertex_array_indexediv(self, vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_vertex_array_indexediv(vaobj, index, pname, param)

    @always_inline
    fn get_vertex_arrayiv(self, vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.get_vertex_arrayiv(vaobj, pname, param)

    @always_inline
    fn getn_color_table(self, target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_color_table(target, format, type, buf_size, table)

    @always_inline
    fn getn_compressed_tex_image(self, target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_compressed_tex_image(target, lod, buf_size, pixels)

    @always_inline
    fn getn_convolution_filter(self, target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_convolution_filter(target, format, type, buf_size, image)

    @always_inline
    fn getn_histogram(self, target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_histogram(target, reset, format, type, buf_size, values)

    @always_inline
    fn getn_mapdv(self, target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_5.getn_mapdv(target, query, buf_size, v)

    @always_inline
    fn getn_mapfv(self, target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.getn_mapfv(target, query, buf_size, v)

    @always_inline
    fn getn_mapiv(self, target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.getn_mapiv(target, query, buf_size, v)

    @always_inline
    fn getn_minmax(self, target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_minmax(target, reset, format, type, buf_size, values)

    @always_inline
    fn getn_pixel_mapfv(self, map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.getn_pixel_mapfv(map, buf_size, values)

    @always_inline
    fn getn_pixel_mapuiv(self, map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.getn_pixel_mapuiv(map, buf_size, values)

    @always_inline
    fn getn_pixel_mapusv(self, map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, mut=True]):
        return self.gl_version_4_5.getn_pixel_mapusv(map, buf_size, values)

    @always_inline
    fn getn_polygon_stipple(self, buf_size: GLsizei, pattern: Ptr[GLubyte, mut=True]):
        return self.gl_version_4_5.getn_polygon_stipple(buf_size, pattern)

    @always_inline
    fn getn_separable_filter(self, target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, mut=True], column_buf_size: GLsizei, column: Ptr[NoneType, mut=True], span: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_separable_filter(target, format, type, row_buf_size, row, column_buf_size, column, span)

    @always_inline
    fn getn_tex_image(self, target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.getn_tex_image(target, level, format, type, buf_size, pixels)

    @always_inline
    fn getn_uniformdv(self, program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, mut=True]):
        return self.gl_version_4_5.getn_uniformdv(program, location, buf_size, params)

    @always_inline
    fn getn_uniformfv(self, program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.getn_uniformfv(program, location, buf_size, params)

    @always_inline
    fn getn_uniformiv(self, program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.getn_uniformiv(program, location, buf_size, params)

    @always_inline
    fn getn_uniformuiv(self, program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.getn_uniformuiv(program, location, buf_size, params)

    @always_inline
    fn invalidate_named_framebuffer_data(self, framebuffer: GLuint, num_attachments: GLsizei, attachments: FramebufferAttachment):
        return self.gl_version_4_5.invalidate_named_framebuffer_data(framebuffer, num_attachments, attachments)

    @always_inline
    fn invalidate_named_framebuffer_sub_data(self, framebuffer: GLuint, num_attachments: GLsizei, attachments: FramebufferAttachment, x: GLint, y: GLint, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.invalidate_named_framebuffer_sub_data(framebuffer, num_attachments, attachments, x, y, width, height)

    @always_inline
    fn map_named_buffer(self, buffer: GLuint, access: BufferAccessARB):
        return self.gl_version_4_5.map_named_buffer(buffer, access)

    @always_inline
    fn map_named_buffer_range(self, buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask):
        return self.gl_version_4_5.map_named_buffer_range(buffer, offset, length, access)

    @always_inline
    fn memory_barrier_by_region(self, barriers: MemoryBarrierMask):
        return self.gl_version_4_5.memory_barrier_by_region(barriers)

    @always_inline
    fn named_buffer_data(self, buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=True], usage: VertexBufferObjectUsage):
        return self.gl_version_4_5.named_buffer_data(buffer, size, data, usage)

    @always_inline
    fn named_buffer_storage(self, buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, mut=True], flags: BufferStorageMask):
        return self.gl_version_4_5.named_buffer_storage(buffer, size, data, flags)

    @always_inline
    fn named_buffer_sub_data(self, buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.named_buffer_sub_data(buffer, offset, size, data)

    @always_inline
    fn named_framebuffer_draw_buffer(self, framebuffer: GLuint, buf: ColorBuffer):
        return self.gl_version_4_5.named_framebuffer_draw_buffer(framebuffer, buf)

    @always_inline
    fn named_framebuffer_draw_buffers(self, framebuffer: GLuint, n: GLsizei, bufs: ColorBuffer):
        return self.gl_version_4_5.named_framebuffer_draw_buffers(framebuffer, n, bufs)

    @always_inline
    fn named_framebuffer_parameteri(self, framebuffer: GLuint, pname: FramebufferParameterName, param: GLint):
        return self.gl_version_4_5.named_framebuffer_parameteri(framebuffer, pname, param)

    @always_inline
    fn named_framebuffer_read_buffer(self, framebuffer: GLuint, src: ColorBuffer):
        return self.gl_version_4_5.named_framebuffer_read_buffer(framebuffer, src)

    @always_inline
    fn named_framebuffer_renderbuffer(self, framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint):
        return self.gl_version_4_5.named_framebuffer_renderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer)

    @always_inline
    fn named_framebuffer_texture(self, framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint):
        return self.gl_version_4_5.named_framebuffer_texture(framebuffer, attachment, texture, level)

    @always_inline
    fn named_framebuffer_texture_layer(self, framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint):
        return self.gl_version_4_5.named_framebuffer_texture_layer(framebuffer, attachment, texture, level, layer)

    @always_inline
    fn named_renderbuffer_storage(self, renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.named_renderbuffer_storage(renderbuffer, internalformat, width, height)

    @always_inline
    fn named_renderbuffer_storage_multisample(self, renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.named_renderbuffer_storage_multisample(renderbuffer, samples, internalformat, width, height)

    @always_inline
    fn readn_pixels(self, x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.readn_pixels(x, y, width, height, format, type, buf_size, data)

    @always_inline
    fn texture_barrier(self):
        return self.gl_version_4_5.texture_barrier()

    @always_inline
    fn texture_buffer(self, texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint):
        return self.gl_version_4_5.texture_buffer(texture, internalformat, buffer)

    @always_inline
    fn texture_buffer_range(self, texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.texture_buffer_range(texture, internalformat, buffer, offset, size)

    @always_inline
    fn texture_parameter_iiv(self, texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.texture_parameter_iiv(texture, pname, params)

    @always_inline
    fn texture_parameter_iuiv(self, texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, mut=True]):
        return self.gl_version_4_5.texture_parameter_iuiv(texture, pname, params)

    @always_inline
    fn texture_parameterf(self, texture: GLuint, pname: TextureParameterName, param: GLfloat):
        return self.gl_version_4_5.texture_parameterf(texture, pname, param)

    @always_inline
    fn texture_parameterfv(self, texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, mut=True]):
        return self.gl_version_4_5.texture_parameterfv(texture, pname, param)

    @always_inline
    fn texture_parameteri(self, texture: GLuint, pname: TextureParameterName, param: GLint):
        return self.gl_version_4_5.texture_parameteri(texture, pname, param)

    @always_inline
    fn texture_parameteriv(self, texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, mut=True]):
        return self.gl_version_4_5.texture_parameteriv(texture, pname, param)

    @always_inline
    fn texture_storage1_d(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei):
        return self.gl_version_4_5.texture_storage1_d(texture, levels, internalformat, width)

    @always_inline
    fn texture_storage2_d(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei):
        return self.gl_version_4_5.texture_storage2_d(texture, levels, internalformat, width, height)

    @always_inline
    fn texture_storage2_d_multisample(self, texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_5.texture_storage2_d_multisample(texture, samples, internalformat, width, height, fixedsamplelocations)

    @always_inline
    fn texture_storage3_d(self, texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei):
        return self.gl_version_4_5.texture_storage3_d(texture, levels, internalformat, width, height, depth)

    @always_inline
    fn texture_storage3_d_multisample(self, texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean):
        return self.gl_version_4_5.texture_storage3_d_multisample(texture, samples, internalformat, width, height, depth, fixedsamplelocations)

    @always_inline
    fn texture_sub_image1_d(self, texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.texture_sub_image1_d(texture, level, xoffset, width, format, type, pixels)

    @always_inline
    fn texture_sub_image2_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.texture_sub_image2_d(texture, level, xoffset, yoffset, width, height, format, type, pixels)

    @always_inline
    fn texture_sub_image3_d(self, texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, mut=True]):
        return self.gl_version_4_5.texture_sub_image3_d(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)

    @always_inline
    fn transform_feedback_buffer_base(self, xfb: GLuint, index: GLuint, buffer: GLuint):
        return self.gl_version_4_5.transform_feedback_buffer_base(xfb, index, buffer)

    @always_inline
    fn transform_feedback_buffer_range(self, xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr):
        return self.gl_version_4_5.transform_feedback_buffer_range(xfb, index, buffer, offset, size)

    @always_inline
    fn unmap_named_buffer(self, buffer: GLuint) -> GLboolean:
        return self.gl_version_4_5.unmap_named_buffer(buffer)

    @always_inline
    fn vertex_array_attrib_binding(self, vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint):
        return self.gl_version_4_5.vertex_array_attrib_binding(vaobj, attribindex, bindingindex)

    @always_inline
    fn vertex_array_attrib_format(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint):
        return self.gl_version_4_5.vertex_array_attrib_format(vaobj, attribindex, size, type, normalized, relativeoffset)

    @always_inline
    fn vertex_array_attrib_i_format(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint):
        return self.gl_version_4_5.vertex_array_attrib_i_format(vaobj, attribindex, size, type, relativeoffset)

    @always_inline
    fn vertex_array_attrib_l_format(self, vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint):
        return self.gl_version_4_5.vertex_array_attrib_l_format(vaobj, attribindex, size, type, relativeoffset)

    @always_inline
    fn vertex_array_binding_divisor(self, vaobj: GLuint, bindingindex: GLuint, divisor: GLuint):
        return self.gl_version_4_5.vertex_array_binding_divisor(vaobj, bindingindex, divisor)

    @always_inline
    fn vertex_array_element_buffer(self, vaobj: GLuint, buffer: GLuint):
        return self.gl_version_4_5.vertex_array_element_buffer(vaobj, buffer)

    @always_inline
    fn vertex_array_vertex_buffer(self, vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei):
        return self.gl_version_4_5.vertex_array_vertex_buffer(vaobj, bindingindex, buffer, offset, stride)

    @always_inline
    fn vertex_array_vertex_buffers(self, vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, mut=True], offsets: Ptr[GLintptr, mut=True], strides: Ptr[GLsizei, mut=True]):
        return self.gl_version_4_5.vertex_array_vertex_buffers(vaobj, first, count, buffers, offsets, strides)

    @always_inline
    fn multi_draw_arrays_indirect_count(self, mode: PrimitiveType, indirect: Ptr[NoneType, mut=True], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_6.multi_draw_arrays_indirect_count(mode, indirect, drawcount, maxdrawcount, stride)

    @always_inline
    fn multi_draw_elements_indirect_count(self, mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, mut=True], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei):
        return self.gl_version_4_6.multi_draw_elements_indirect_count(mode, type, indirect, drawcount, maxdrawcount, stride)

    @always_inline
    fn polygon_offset_clamp(self, factor: GLfloat, units: GLfloat, clamp: GLfloat):
        return self.gl_version_4_6.polygon_offset_clamp(factor, units, clamp)

    @always_inline
    fn specialize_shader(self, shader: GLuint, p_entry_point: Ptr[GLchar, mut=True], num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, mut=True], p_constant_value: Ptr[GLuint, mut=True]):
        return self.gl_version_4_6.specialize_shader(shader, p_entry_point, num_specialization_constants, p_constant_index, p_constant_value)
