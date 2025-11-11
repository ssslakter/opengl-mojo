from gpu.host._nvidia_cuda import CUcontext
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import c_uint
from sys.ffi import _Global, OwnedDLHandle, _find_dylib
from sys.ffi import _get_dylib_function as _ffi_get_dylib_function
from .gl import GLenum, GLuint

alias CUDA_LIBRARY_PATHS: List[Path] = [
    "/usr/local/cuda/lib64/libcuda.so",
    "/usr/lib/wsl/lib/libcuda.so",  # At this moment OpenGL-CUDA interop is not supported on WSL https://docs.nvidia.com/cuda/wsl-user-guide/index.html#features-not-yet-supported
]

alias CUDA_LIBRARY = _Global["CUDA_LIBRARY", _init_dylib]


fn _init_dylib() -> OwnedDLHandle:
    return _find_dylib["CUDA Library"](materialize[CUDA_LIBRARY_PATHS]())


@always_inline
fn _get_dylib_function[func_name: StaticString, result_type: AnyTrivialRegType]() raises -> result_type:
    return _ffi_get_dylib_function[
        CUDA_LIBRARY(),
        func_name,
        result_type,
    ]()


# =============================================================================
# Types
# =============================================================================

alias CUresult = Int32
alias CUdevice = Int32
alias CUgraphicsResource = UnsafePointer[NoneType]
alias HGPUNV = UInt64  # Placeholder for Windows HGPUNV type


@fieldwise_init
@register_passable("trivial")
struct CUGLDeviceList:
    var value: Int32

    alias ALL = CUGLDeviceList(0x01)
    alias CURRENT_FRAME = CUGLDeviceList(0x02)
    alias NEXT_FRAME = CUGLDeviceList(0x03)


@fieldwise_init
@register_passable("trivial")
struct CUresultValue:
    var value: Int32

    alias SUCCESS = CUresultValue(0)
    alias ERROR_INVALID_VALUE = CUresultValue(1)
    alias ERROR_OUT_OF_MEMORY = CUresultValue(2)
    alias ERROR_NOT_INITIALIZED = CUresultValue(3)
    alias ERROR_DEINITIALIZED = CUresultValue(4)
    alias ERROR_PROFILER_DISABLED = CUresultValue(5)
    alias ERROR_PROFILER_NOT_INITIALIZED = CUresultValue(6)
    alias ERROR_PROFILER_ALREADY_STARTED = CUresultValue(7)
    alias ERROR_PROFILER_ALREADY_STOPPED = CUresultValue(8)
    alias ERROR_STUB_LIBRARY = CUresultValue(34)
    alias ERROR_DEVICE_UNAVAILABLE = CUresultValue(46)
    alias ERROR_NO_DEVICE = CUresultValue(100)
    alias ERROR_INVALID_DEVICE = CUresultValue(101)
    alias ERROR_DEVICE_NOT_LICENSED = CUresultValue(102)
    alias ERROR_INVALID_IMAGE = CUresultValue(200)
    alias ERROR_INVALID_CONTEXT = CUresultValue(201)
    alias ERROR_CONTEXT_ALREADY_CURRENT = CUresultValue(202)
    alias ERROR_MAP_FAILED = CUresultValue(205)
    alias ERROR_UNMAP_FAILED = CUresultValue(206)
    alias ERROR_ARRAY_IS_MAPPED = CUresultValue(207)
    alias ERROR_ALREADY_MAPPED = CUresultValue(208)
    alias ERROR_NO_BINARY_FOR_GPU = CUresultValue(209)
    alias ERROR_ALREADY_ACQUIRED = CUresultValue(210)
    alias ERROR_NOT_MAPPED = CUresultValue(211)
    alias ERROR_NOT_MAPPED_AS_ARRAY = CUresultValue(212)
    alias ERROR_NOT_MAPPED_AS_POINTER = CUresultValue(213)
    alias ERROR_ECC_UNCORRECTABLE = CUresultValue(214)
    alias ERROR_UNSUPPORTED_LIMIT = CUresultValue(215)
    alias ERROR_CONTEXT_ALREADY_IN_USE = CUresultValue(216)
    alias ERROR_PEER_ACCESS_UNSUPPORTED = CUresultValue(217)
    alias ERROR_INVALID_PTX = CUresultValue(218)
    alias ERROR_INVALID_GRAPHICS_CONTEXT = CUresultValue(219)
    alias ERROR_NVLINK_UNCORRECTABLE = CUresultValue(220)
    alias ERROR_JIT_COMPILER_NOT_FOUND = CUresultValue(221)
    alias ERROR_UNSUPPORTED_PTX_VERSION = CUresultValue(222)
    alias ERROR_JIT_COMPILATION_DISABLED = CUresultValue(223)
    alias ERROR_UNSUPPORTED_EXEC_AFFINITY = CUresultValue(224)
    alias ERROR_UNSUPPORTED_DEVSIDE_SYNC = CUresultValue(225)
    alias ERROR_CONTAINED = CUresultValue(226)
    alias ERROR_INVALID_SOURCE = CUresultValue(300)
    alias ERROR_FILE_NOT_FOUND = CUresultValue(301)
    alias ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND = CUresultValue(302)
    alias ERROR_SHARED_OBJECT_INIT_FAILED = CUresultValue(303)
    alias ERROR_OPERATING_SYSTEM = CUresultValue(304)
    alias ERROR_INVALID_HANDLE = CUresultValue(400)
    alias ERROR_ILLEGAL_STATE = CUresultValue(401)
    alias ERROR_LOSSY_QUERY = CUresultValue(402)
    alias ERROR_NOT_FOUND = CUresultValue(500)
    alias ERROR_NOT_READY = CUresultValue(600)
    alias ERROR_ILLEGAL_ADDRESS = CUresultValue(700)
    alias ERROR_LAUNCH_OUT_OF_RESOURCES = CUresultValue(701)
    alias ERROR_LAUNCH_TIMEOUT = CUresultValue(702)
    alias ERROR_LAUNCH_INCOMPATIBLE_TEXTURING = CUresultValue(703)
    alias ERROR_PEER_ACCESS_ALREADY_ENABLED = CUresultValue(704)
    alias ERROR_PEER_ACCESS_NOT_ENABLED = CUresultValue(705)
    alias ERROR_PRIMARY_CONTEXT_ACTIVE = CUresultValue(708)
    alias ERROR_CONTEXT_IS_DESTROYED = CUresultValue(709)
    alias ERROR_ASSERT = CUresultValue(710)
    alias ERROR_TOO_MANY_PEERS = CUresultValue(711)
    alias ERROR_HOST_MEMORY_ALREADY_REGISTERED = CUresultValue(712)
    alias ERROR_HOST_MEMORY_NOT_REGISTERED = CUresultValue(713)
    alias ERROR_HARDWARE_STACK_ERROR = CUresultValue(714)
    alias ERROR_ILLEGAL_INSTRUCTION = CUresultValue(715)
    alias ERROR_MISALIGNED_ADDRESS = CUresultValue(716)
    alias ERROR_INVALID_ADDRESS_SPACE = CUresultValue(717)
    alias ERROR_INVALID_PC = CUresultValue(718)
    alias ERROR_LAUNCH_FAILED = CUresultValue(719)
    alias ERROR_COOPERATIVE_LAUNCH_TOO_LARGE = CUresultValue(720)
    alias ERROR_TENSOR_MEMORY_LEAK = CUresultValue(721)
    alias ERROR_NOT_PERMITTED = CUresultValue(800)
    alias ERROR_NOT_SUPPORTED = CUresultValue(801)
    alias ERROR_SYSTEM_NOT_READY = CUresultValue(802)
    alias ERROR_SYSTEM_DRIVER_MISMATCH = CUresultValue(803)
    alias ERROR_COMPAT_NOT_SUPPORTED_ON_DEVICE = CUresultValue(804)
    alias ERROR_MPS_CONNECTION_FAILED = CUresultValue(805)
    alias ERROR_MPS_RPC_FAILURE = CUresultValue(806)
    alias ERROR_MPS_SERVER_NOT_READY = CUresultValue(807)
    alias ERROR_MPS_MAX_CLIENTS_REACHED = CUresultValue(808)
    alias ERROR_MPS_MAX_CONNECTIONS_REACHED = CUresultValue(809)
    alias ERROR_MPS_CLIENT_TERMINATED = CUresultValue(810)
    alias ERROR_CDP_NOT_SUPPORTED = CUresultValue(811)
    alias ERROR_CDP_VERSION_MISMATCH = CUresultValue(812)
    alias ERROR_STREAM_CAPTURE_UNSUPPORTED = CUresultValue(900)
    alias ERROR_STREAM_CAPTURE_INVALIDATED = CUresultValue(901)
    alias ERROR_STREAM_CAPTURE_MERGE = CUresultValue(902)
    alias ERROR_STREAM_CAPTURE_UNMATCHED = CUresultValue(903)
    alias ERROR_STREAM_CAPTURE_UNJOINED = CUresultValue(904)
    alias ERROR_STREAM_CAPTURE_ISOLATION = CUresultValue(905)
    alias ERROR_STREAM_CAPTURE_IMPLICIT = CUresultValue(906)
    alias ERROR_CAPTURED_EVENT = CUresultValue(907)
    alias ERROR_STREAM_CAPTURE_WRONG_THREAD = CUresultValue(908)
    alias ERROR_TIMEOUT = CUresultValue(909)
    alias ERROR_GRAPH_EXEC_UPDATE_FAILURE = CUresultValue(910)
    alias ERROR_EXTERNAL_DEVICE = CUresultValue(911)
    alias ERROR_INVALID_CLUSTER_SIZE = CUresultValue(912)
    alias ERROR_FUNCTION_NOT_LOADED = CUresultValue(913)
    alias ERROR_INVALID_RESOURCE_TYPE = CUresultValue(914)
    alias ERROR_INVALID_RESOURCE_CONFIGURATION = CUresultValue(915)
    alias ERROR_KEY_ROTATION = CUresultValue(916)
    alias ERROR_UNKNOWN = CUresultValue(999)


# =============================================================================
# Functions
# =============================================================================


fn cuGLGetDevices(
    pCudaDeviceCount: UnsafePointer[UInt32],
    pCudaDevices: UnsafePointer[CUdevice],
    cudaDeviceCount: UInt32,
    deviceList: CUGLDeviceList,
) raises -> CUresult:
    return _get_dylib_function[
        "cuGLGetDevices",
        fn (
            UnsafePointer[UInt32],
            UnsafePointer[CUdevice],
            UInt32,
            CUGLDeviceList,
        ) -> CUresult,
    ]()(pCudaDeviceCount, pCudaDevices, cudaDeviceCount, deviceList)


fn cuGraphicsGLRegisterBuffer(
    pCudaResource: UnsafePointer[CUgraphicsResource],
    buffer: GLuint,
    Flags: UInt32,
) raises -> CUresult:
    return _get_dylib_function[
        "cuGraphicsGLRegisterBuffer",
        fn (
            UnsafePointer[CUgraphicsResource],
            GLuint,
            UInt32,
        ) -> CUresult,
    ]()(pCudaResource, buffer, Flags)


fn cuGraphicsGLRegisterImage(
    pCudaResource: UnsafePointer[CUgraphicsResource],
    image: GLuint,
    target: GLenum,
    Flags: UInt32,
) raises -> CUresult:
    return _get_dylib_function[
        "cuGraphicsGLRegisterImage",
        fn (
            UnsafePointer[CUgraphicsResource],
            GLuint,
            GLenum,
            UInt32,
        ) -> CUresult,
    ]()(pCudaResource, image, target, Flags)


fn cuWGLGetDevice(pDevice: UnsafePointer[CUdevice], hGpu: HGPUNV) raises -> CUresult:
    return _get_dylib_function[
        "cuWGLGetDevice",
        fn (
            UnsafePointer[CUdevice],
            HGPUNV,
        ) -> CUresult,
    ]()(pDevice, hGpu)


@always_inline
fn cuCtxPushCurrent(ctx: CUcontext) raises -> CUresult:
    return _get_dylib_function[
        "cuCtxPushCurrent",
        fn (CUcontext,) -> CUresult,
    ]()(ctx)
