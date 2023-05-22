require "../foundation.cr"
require "../system/com.cr"

@[Link("delayimp")]
@[Link("user32")]
@[Link(ldflags: "/IGNORE:4199")]
lib LibWin32
  D3D_FL9_1_REQ_TEXTURE1D_U_DIMENSION = 2048_u32
  D3D_FL9_3_REQ_TEXTURE1D_U_DIMENSION = 4096_u32
  D3D_FL9_1_REQ_TEXTURE2D_U_OR_V_DIMENSION = 2048_u32
  D3D_FL9_3_REQ_TEXTURE2D_U_OR_V_DIMENSION = 4096_u32
  D3D_FL9_1_REQ_TEXTURECUBE_DIMENSION = 512_u32
  D3D_FL9_3_REQ_TEXTURECUBE_DIMENSION = 4096_u32
  D3D_FL9_1_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = 256_u32
  D3D_FL9_1_DEFAULT_MAX_ANISOTROPY = 2_u32
  D3D_FL9_1_IA_PRIMITIVE_MAX_COUNT = 65535_u32
  D3D_FL9_2_IA_PRIMITIVE_MAX_COUNT = 1048575_u32
  D3D_FL9_1_SIMULTANEOUS_RENDER_TARGET_COUNT = 1_u32
  D3D_FL9_3_SIMULTANEOUS_RENDER_TARGET_COUNT = 4_u32
  D3D_FL9_1_MAX_TEXTURE_REPEAT = 128_u32
  D3D_FL9_2_MAX_TEXTURE_REPEAT = 2048_u32
  D3D_FL9_3_MAX_TEXTURE_REPEAT = 8192_u32
  D3D_SHADER_FEATURE_DOUBLES = 1_u32
  D3D_SHADER_FEATURE_COMPUTE_SHADERS_PLUS_RAW_AND_STRUCTURED_BUFFERS_VIA_SHADER_4_X = 2_u32
  D3D_SHADER_FEATURE_UAVS_AT_EVERY_STAGE = 4_u32
  D3D_SHADER_FEATURE_64_UAVS = 8_u32
  D3D_SHADER_FEATURE_MINIMUM_PRECISION = 16_u32
  D3D_SHADER_FEATURE_11_1_DOUBLE_EXTENSIONS = 32_u32
  D3D_SHADER_FEATURE_11_1_SHADER_EXTENSIONS = 64_u32
  D3D_SHADER_FEATURE_LEVEL_9_COMPARISON_FILTERING = 128_u32
  D3D_SHADER_FEATURE_TILED_RESOURCES = 256_u32
  D3D_SHADER_FEATURE_STENCIL_REF = 512_u32
  D3D_SHADER_FEATURE_INNER_COVERAGE = 1024_u32
  D3D_SHADER_FEATURE_TYPED_UAV_LOAD_ADDITIONAL_FORMATS = 2048_u32
  D3D_SHADER_FEATURE_ROVS = 4096_u32
  D3D_SHADER_FEATURE_VIEWPORT_AND_RT_ARRAY_INDEX_FROM_ANY_SHADER_FEEDING_RASTERIZER = 8192_u32
  D3D_SHADER_FEATURE_WAVE_OPS = 16384_u32
  D3D_SHADER_FEATURE_INT64_OPS = 32768_u32
  D3D_SHADER_FEATURE_VIEW_ID = 65536_u32
  D3D_SHADER_FEATURE_BARYCENTRICS = 131072_u32
  D3D_SHADER_FEATURE_NATIVE_16BIT_OPS = 262144_u32
  D3D_SHADER_FEATURE_SHADING_RATE = 524288_u32
  D3D_SHADER_FEATURE_RAYTRACING_TIER_1_1 = 1048576_u32
  D3D_SHADER_FEATURE_SAMPLER_FEEDBACK = 2097152_u32
  D3D_SHADER_FEATURE_ATOMIC_INT64_ON_TYPED_RESOURCE = 4194304_u32
  D3D_SHADER_FEATURE_ATOMIC_INT64_ON_GROUP_SHARED = 8388608_u32
  D3D_SHADER_FEATURE_DERIVATIVES_IN_MESH_AND_AMPLIFICATION_SHADERS = 16777216_u32
  D3D_SHADER_FEATURE_RESOURCE_DESCRIPTOR_HEAP_INDEXING = 33554432_u32
  D3D_SHADER_FEATURE_SAMPLER_DESCRIPTOR_HEAP_INDEXING = 67108864_u32
  D3D_SHADER_FEATURE_WAVE_MMA = 134217728_u32
  D3D_SHADER_FEATURE_ATOMIC_INT64_ON_DESCRIPTOR_HEAP_RESOURCE = 268435456_u32
  WKPDID_D3DDebugObjectName = "429b8c22-9188-4b0c-8742-acb0bf85c200"
  WKPDID_D3DDebugObjectNameW = "4cca5fd8-921f-42c8-8566-70caf2a9b741"
  WKPDID_CommentStringW = "d0149dc0-90e8-4ec8-8144-e900ad266bb2"
  WKPDID_D3D12UniqueObjectId = "1b39de15-ec04-4bae-ba4d-8cef79fc04c1"
  D3D_COMPONENT_MASK_X = 1_u32
  D3D_COMPONENT_MASK_Y = 2_u32
  D3D_COMPONENT_MASK_Z = 4_u32
  D3D_COMPONENT_MASK_W = 8_u32
  D3D_TEXTURE_LAYOUT_ROW_MAJOR = "b5dc234f-72bb-4bec-9705-8cf258df6b6c"
  D3D_TEXTURE_LAYOUT_64KB_STANDARD_SWIZZLE = "4c0f29e3-3f5f-4d35-84c9-bc0983b62c28"

  alias PFN_DESTRUCTION_CALLBACK = Proc(Void*, Void)


  enum D3D_DRIVER_TYPE : Int32
    D3D_DRIVER_TYPE_UNKNOWN = 0
    D3D_DRIVER_TYPE_HARDWARE = 1
    D3D_DRIVER_TYPE_REFERENCE = 2
    D3D_DRIVER_TYPE_NULL = 3
    D3D_DRIVER_TYPE_SOFTWARE = 4
    D3D_DRIVER_TYPE_WARP = 5
  end

  enum D3D_FEATURE_LEVEL : Int32
    D3D_FEATURE_LEVEL_1_0_CORE = 4096
    D3D_FEATURE_LEVEL_9_1 = 37120
    D3D_FEATURE_LEVEL_9_2 = 37376
    D3D_FEATURE_LEVEL_9_3 = 37632
    D3D_FEATURE_LEVEL_10_0 = 40960
    D3D_FEATURE_LEVEL_10_1 = 41216
    D3D_FEATURE_LEVEL_11_0 = 45056
    D3D_FEATURE_LEVEL_11_1 = 45312
    D3D_FEATURE_LEVEL_12_0 = 49152
    D3D_FEATURE_LEVEL_12_1 = 49408
    D3D_FEATURE_LEVEL_12_2 = 49664
  end

  enum D3D_PRIMITIVE_TOPOLOGY : Int32
    D3D_PRIMITIVE_TOPOLOGY_UNDEFINED = 0
    D3D_PRIMITIVE_TOPOLOGY_POINTLIST = 1
    D3D_PRIMITIVE_TOPOLOGY_LINELIST = 2
    D3D_PRIMITIVE_TOPOLOGY_LINESTRIP = 3
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5
    D3D_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10
    D3D_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13
    D3D_PRIMITIVE_TOPOLOGY_1_CONTROL_POINT_PATCHLIST = 33
    D3D_PRIMITIVE_TOPOLOGY_2_CONTROL_POINT_PATCHLIST = 34
    D3D_PRIMITIVE_TOPOLOGY_3_CONTROL_POINT_PATCHLIST = 35
    D3D_PRIMITIVE_TOPOLOGY_4_CONTROL_POINT_PATCHLIST = 36
    D3D_PRIMITIVE_TOPOLOGY_5_CONTROL_POINT_PATCHLIST = 37
    D3D_PRIMITIVE_TOPOLOGY_6_CONTROL_POINT_PATCHLIST = 38
    D3D_PRIMITIVE_TOPOLOGY_7_CONTROL_POINT_PATCHLIST = 39
    D3D_PRIMITIVE_TOPOLOGY_8_CONTROL_POINT_PATCHLIST = 40
    D3D_PRIMITIVE_TOPOLOGY_9_CONTROL_POINT_PATCHLIST = 41
    D3D_PRIMITIVE_TOPOLOGY_10_CONTROL_POINT_PATCHLIST = 42
    D3D_PRIMITIVE_TOPOLOGY_11_CONTROL_POINT_PATCHLIST = 43
    D3D_PRIMITIVE_TOPOLOGY_12_CONTROL_POINT_PATCHLIST = 44
    D3D_PRIMITIVE_TOPOLOGY_13_CONTROL_POINT_PATCHLIST = 45
    D3D_PRIMITIVE_TOPOLOGY_14_CONTROL_POINT_PATCHLIST = 46
    D3D_PRIMITIVE_TOPOLOGY_15_CONTROL_POINT_PATCHLIST = 47
    D3D_PRIMITIVE_TOPOLOGY_16_CONTROL_POINT_PATCHLIST = 48
    D3D_PRIMITIVE_TOPOLOGY_17_CONTROL_POINT_PATCHLIST = 49
    D3D_PRIMITIVE_TOPOLOGY_18_CONTROL_POINT_PATCHLIST = 50
    D3D_PRIMITIVE_TOPOLOGY_19_CONTROL_POINT_PATCHLIST = 51
    D3D_PRIMITIVE_TOPOLOGY_20_CONTROL_POINT_PATCHLIST = 52
    D3D_PRIMITIVE_TOPOLOGY_21_CONTROL_POINT_PATCHLIST = 53
    D3D_PRIMITIVE_TOPOLOGY_22_CONTROL_POINT_PATCHLIST = 54
    D3D_PRIMITIVE_TOPOLOGY_23_CONTROL_POINT_PATCHLIST = 55
    D3D_PRIMITIVE_TOPOLOGY_24_CONTROL_POINT_PATCHLIST = 56
    D3D_PRIMITIVE_TOPOLOGY_25_CONTROL_POINT_PATCHLIST = 57
    D3D_PRIMITIVE_TOPOLOGY_26_CONTROL_POINT_PATCHLIST = 58
    D3D_PRIMITIVE_TOPOLOGY_27_CONTROL_POINT_PATCHLIST = 59
    D3D_PRIMITIVE_TOPOLOGY_28_CONTROL_POINT_PATCHLIST = 60
    D3D_PRIMITIVE_TOPOLOGY_29_CONTROL_POINT_PATCHLIST = 61
    D3D_PRIMITIVE_TOPOLOGY_30_CONTROL_POINT_PATCHLIST = 62
    D3D_PRIMITIVE_TOPOLOGY_31_CONTROL_POINT_PATCHLIST = 63
    D3D_PRIMITIVE_TOPOLOGY_32_CONTROL_POINT_PATCHLIST = 64
    D3D10_PRIMITIVE_TOPOLOGY_UNDEFINED = 0
    D3D10_PRIMITIVE_TOPOLOGY_POINTLIST = 1
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST = 2
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP = 3
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13
    D3D11_PRIMITIVE_TOPOLOGY_UNDEFINED = 0
    D3D11_PRIMITIVE_TOPOLOGY_POINTLIST = 1
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST = 2
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP = 3
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13
    D3D11_PRIMITIVE_TOPOLOGY_1_CONTROL_POINT_PATCHLIST = 33
    D3D11_PRIMITIVE_TOPOLOGY_2_CONTROL_POINT_PATCHLIST = 34
    D3D11_PRIMITIVE_TOPOLOGY_3_CONTROL_POINT_PATCHLIST = 35
    D3D11_PRIMITIVE_TOPOLOGY_4_CONTROL_POINT_PATCHLIST = 36
    D3D11_PRIMITIVE_TOPOLOGY_5_CONTROL_POINT_PATCHLIST = 37
    D3D11_PRIMITIVE_TOPOLOGY_6_CONTROL_POINT_PATCHLIST = 38
    D3D11_PRIMITIVE_TOPOLOGY_7_CONTROL_POINT_PATCHLIST = 39
    D3D11_PRIMITIVE_TOPOLOGY_8_CONTROL_POINT_PATCHLIST = 40
    D3D11_PRIMITIVE_TOPOLOGY_9_CONTROL_POINT_PATCHLIST = 41
    D3D11_PRIMITIVE_TOPOLOGY_10_CONTROL_POINT_PATCHLIST = 42
    D3D11_PRIMITIVE_TOPOLOGY_11_CONTROL_POINT_PATCHLIST = 43
    D3D11_PRIMITIVE_TOPOLOGY_12_CONTROL_POINT_PATCHLIST = 44
    D3D11_PRIMITIVE_TOPOLOGY_13_CONTROL_POINT_PATCHLIST = 45
    D3D11_PRIMITIVE_TOPOLOGY_14_CONTROL_POINT_PATCHLIST = 46
    D3D11_PRIMITIVE_TOPOLOGY_15_CONTROL_POINT_PATCHLIST = 47
    D3D11_PRIMITIVE_TOPOLOGY_16_CONTROL_POINT_PATCHLIST = 48
    D3D11_PRIMITIVE_TOPOLOGY_17_CONTROL_POINT_PATCHLIST = 49
    D3D11_PRIMITIVE_TOPOLOGY_18_CONTROL_POINT_PATCHLIST = 50
    D3D11_PRIMITIVE_TOPOLOGY_19_CONTROL_POINT_PATCHLIST = 51
    D3D11_PRIMITIVE_TOPOLOGY_20_CONTROL_POINT_PATCHLIST = 52
    D3D11_PRIMITIVE_TOPOLOGY_21_CONTROL_POINT_PATCHLIST = 53
    D3D11_PRIMITIVE_TOPOLOGY_22_CONTROL_POINT_PATCHLIST = 54
    D3D11_PRIMITIVE_TOPOLOGY_23_CONTROL_POINT_PATCHLIST = 55
    D3D11_PRIMITIVE_TOPOLOGY_24_CONTROL_POINT_PATCHLIST = 56
    D3D11_PRIMITIVE_TOPOLOGY_25_CONTROL_POINT_PATCHLIST = 57
    D3D11_PRIMITIVE_TOPOLOGY_26_CONTROL_POINT_PATCHLIST = 58
    D3D11_PRIMITIVE_TOPOLOGY_27_CONTROL_POINT_PATCHLIST = 59
    D3D11_PRIMITIVE_TOPOLOGY_28_CONTROL_POINT_PATCHLIST = 60
    D3D11_PRIMITIVE_TOPOLOGY_29_CONTROL_POINT_PATCHLIST = 61
    D3D11_PRIMITIVE_TOPOLOGY_30_CONTROL_POINT_PATCHLIST = 62
    D3D11_PRIMITIVE_TOPOLOGY_31_CONTROL_POINT_PATCHLIST = 63
    D3D11_PRIMITIVE_TOPOLOGY_32_CONTROL_POINT_PATCHLIST = 64
  end

  enum D3D_PRIMITIVE : Int32
    D3D_PRIMITIVE_UNDEFINED = 0
    D3D_PRIMITIVE_POINT = 1
    D3D_PRIMITIVE_LINE = 2
    D3D_PRIMITIVE_TRIANGLE = 3
    D3D_PRIMITIVE_LINE_ADJ = 6
    D3D_PRIMITIVE_TRIANGLE_ADJ = 7
    D3D_PRIMITIVE_1_CONTROL_POINT_PATCH = 8
    D3D_PRIMITIVE_2_CONTROL_POINT_PATCH = 9
    D3D_PRIMITIVE_3_CONTROL_POINT_PATCH = 10
    D3D_PRIMITIVE_4_CONTROL_POINT_PATCH = 11
    D3D_PRIMITIVE_5_CONTROL_POINT_PATCH = 12
    D3D_PRIMITIVE_6_CONTROL_POINT_PATCH = 13
    D3D_PRIMITIVE_7_CONTROL_POINT_PATCH = 14
    D3D_PRIMITIVE_8_CONTROL_POINT_PATCH = 15
    D3D_PRIMITIVE_9_CONTROL_POINT_PATCH = 16
    D3D_PRIMITIVE_10_CONTROL_POINT_PATCH = 17
    D3D_PRIMITIVE_11_CONTROL_POINT_PATCH = 18
    D3D_PRIMITIVE_12_CONTROL_POINT_PATCH = 19
    D3D_PRIMITIVE_13_CONTROL_POINT_PATCH = 20
    D3D_PRIMITIVE_14_CONTROL_POINT_PATCH = 21
    D3D_PRIMITIVE_15_CONTROL_POINT_PATCH = 22
    D3D_PRIMITIVE_16_CONTROL_POINT_PATCH = 23
    D3D_PRIMITIVE_17_CONTROL_POINT_PATCH = 24
    D3D_PRIMITIVE_18_CONTROL_POINT_PATCH = 25
    D3D_PRIMITIVE_19_CONTROL_POINT_PATCH = 26
    D3D_PRIMITIVE_20_CONTROL_POINT_PATCH = 27
    D3D_PRIMITIVE_21_CONTROL_POINT_PATCH = 28
    D3D_PRIMITIVE_22_CONTROL_POINT_PATCH = 29
    D3D_PRIMITIVE_23_CONTROL_POINT_PATCH = 30
    D3D_PRIMITIVE_24_CONTROL_POINT_PATCH = 31
    D3D_PRIMITIVE_25_CONTROL_POINT_PATCH = 32
    D3D_PRIMITIVE_26_CONTROL_POINT_PATCH = 33
    D3D_PRIMITIVE_27_CONTROL_POINT_PATCH = 34
    D3D_PRIMITIVE_28_CONTROL_POINT_PATCH = 35
    D3D_PRIMITIVE_29_CONTROL_POINT_PATCH = 36
    D3D_PRIMITIVE_30_CONTROL_POINT_PATCH = 37
    D3D_PRIMITIVE_31_CONTROL_POINT_PATCH = 38
    D3D_PRIMITIVE_32_CONTROL_POINT_PATCH = 39
    D3D10_PRIMITIVE_UNDEFINED = 0
    D3D10_PRIMITIVE_POINT = 1
    D3D10_PRIMITIVE_LINE = 2
    D3D10_PRIMITIVE_TRIANGLE = 3
    D3D10_PRIMITIVE_LINE_ADJ = 6
    D3D10_PRIMITIVE_TRIANGLE_ADJ = 7
    D3D11_PRIMITIVE_UNDEFINED = 0
    D3D11_PRIMITIVE_POINT = 1
    D3D11_PRIMITIVE_LINE = 2
    D3D11_PRIMITIVE_TRIANGLE = 3
    D3D11_PRIMITIVE_LINE_ADJ = 6
    D3D11_PRIMITIVE_TRIANGLE_ADJ = 7
    D3D11_PRIMITIVE_1_CONTROL_POINT_PATCH = 8
    D3D11_PRIMITIVE_2_CONTROL_POINT_PATCH = 9
    D3D11_PRIMITIVE_3_CONTROL_POINT_PATCH = 10
    D3D11_PRIMITIVE_4_CONTROL_POINT_PATCH = 11
    D3D11_PRIMITIVE_5_CONTROL_POINT_PATCH = 12
    D3D11_PRIMITIVE_6_CONTROL_POINT_PATCH = 13
    D3D11_PRIMITIVE_7_CONTROL_POINT_PATCH = 14
    D3D11_PRIMITIVE_8_CONTROL_POINT_PATCH = 15
    D3D11_PRIMITIVE_9_CONTROL_POINT_PATCH = 16
    D3D11_PRIMITIVE_10_CONTROL_POINT_PATCH = 17
    D3D11_PRIMITIVE_11_CONTROL_POINT_PATCH = 18
    D3D11_PRIMITIVE_12_CONTROL_POINT_PATCH = 19
    D3D11_PRIMITIVE_13_CONTROL_POINT_PATCH = 20
    D3D11_PRIMITIVE_14_CONTROL_POINT_PATCH = 21
    D3D11_PRIMITIVE_15_CONTROL_POINT_PATCH = 22
    D3D11_PRIMITIVE_16_CONTROL_POINT_PATCH = 23
    D3D11_PRIMITIVE_17_CONTROL_POINT_PATCH = 24
    D3D11_PRIMITIVE_18_CONTROL_POINT_PATCH = 25
    D3D11_PRIMITIVE_19_CONTROL_POINT_PATCH = 26
    D3D11_PRIMITIVE_20_CONTROL_POINT_PATCH = 27
    D3D11_PRIMITIVE_21_CONTROL_POINT_PATCH = 28
    D3D11_PRIMITIVE_22_CONTROL_POINT_PATCH = 29
    D3D11_PRIMITIVE_23_CONTROL_POINT_PATCH = 30
    D3D11_PRIMITIVE_24_CONTROL_POINT_PATCH = 31
    D3D11_PRIMITIVE_25_CONTROL_POINT_PATCH = 32
    D3D11_PRIMITIVE_26_CONTROL_POINT_PATCH = 33
    D3D11_PRIMITIVE_27_CONTROL_POINT_PATCH = 34
    D3D11_PRIMITIVE_28_CONTROL_POINT_PATCH = 35
    D3D11_PRIMITIVE_29_CONTROL_POINT_PATCH = 36
    D3D11_PRIMITIVE_30_CONTROL_POINT_PATCH = 37
    D3D11_PRIMITIVE_31_CONTROL_POINT_PATCH = 38
    D3D11_PRIMITIVE_32_CONTROL_POINT_PATCH = 39
  end

  enum D3D_SRV_DIMENSION : Int32
    D3D_SRV_DIMENSION_UNKNOWN = 0
    D3D_SRV_DIMENSION_BUFFER = 1
    D3D_SRV_DIMENSION_TEXTURE1D = 2
    D3D_SRV_DIMENSION_TEXTURE1DARRAY = 3
    D3D_SRV_DIMENSION_TEXTURE2D = 4
    D3D_SRV_DIMENSION_TEXTURE2DARRAY = 5
    D3D_SRV_DIMENSION_TEXTURE2DMS = 6
    D3D_SRV_DIMENSION_TEXTURE2DMSARRAY = 7
    D3D_SRV_DIMENSION_TEXTURE3D = 8
    D3D_SRV_DIMENSION_TEXTURECUBE = 9
    D3D_SRV_DIMENSION_TEXTURECUBEARRAY = 10
    D3D_SRV_DIMENSION_BUFFEREX = 11
    D3D10_SRV_DIMENSION_UNKNOWN = 0
    D3D10_SRV_DIMENSION_BUFFER = 1
    D3D10_SRV_DIMENSION_TEXTURE1D = 2
    D3D10_SRV_DIMENSION_TEXTURE1DARRAY = 3
    D3D10_SRV_DIMENSION_TEXTURE2D = 4
    D3D10_SRV_DIMENSION_TEXTURE2DARRAY = 5
    D3D10_SRV_DIMENSION_TEXTURE2DMS = 6
    D3D10_SRV_DIMENSION_TEXTURE2DMSARRAY = 7
    D3D10_SRV_DIMENSION_TEXTURE3D = 8
    D3D10_SRV_DIMENSION_TEXTURECUBE = 9
    D3D10_1_SRV_DIMENSION_UNKNOWN = 0
    D3D10_1_SRV_DIMENSION_BUFFER = 1
    D3D10_1_SRV_DIMENSION_TEXTURE1D = 2
    D3D10_1_SRV_DIMENSION_TEXTURE1DARRAY = 3
    D3D10_1_SRV_DIMENSION_TEXTURE2D = 4
    D3D10_1_SRV_DIMENSION_TEXTURE2DARRAY = 5
    D3D10_1_SRV_DIMENSION_TEXTURE2DMS = 6
    D3D10_1_SRV_DIMENSION_TEXTURE2DMSARRAY = 7
    D3D10_1_SRV_DIMENSION_TEXTURE3D = 8
    D3D10_1_SRV_DIMENSION_TEXTURECUBE = 9
    D3D10_1_SRV_DIMENSION_TEXTURECUBEARRAY = 10
    D3D11_SRV_DIMENSION_UNKNOWN = 0
    D3D11_SRV_DIMENSION_BUFFER = 1
    D3D11_SRV_DIMENSION_TEXTURE1D = 2
    D3D11_SRV_DIMENSION_TEXTURE1DARRAY = 3
    D3D11_SRV_DIMENSION_TEXTURE2D = 4
    D3D11_SRV_DIMENSION_TEXTURE2DARRAY = 5
    D3D11_SRV_DIMENSION_TEXTURE2DMS = 6
    D3D11_SRV_DIMENSION_TEXTURE2DMSARRAY = 7
    D3D11_SRV_DIMENSION_TEXTURE3D = 8
    D3D11_SRV_DIMENSION_TEXTURECUBE = 9
    D3D11_SRV_DIMENSION_TEXTURECUBEARRAY = 10
    D3D11_SRV_DIMENSION_BUFFEREX = 11
  end

  enum D3D_INCLUDE_TYPE : Int32
    D3D_INCLUDE_LOCAL = 0
    D3D_INCLUDE_SYSTEM = 1
    D3D10_INCLUDE_LOCAL = 0
    D3D10_INCLUDE_SYSTEM = 1
    D3D_INCLUDE_FORCE_DWORD = 2147483647
  end

  enum D3D_SHADER_VARIABLE_CLASS : Int32
    D3D_SVC_SCALAR = 0
    D3D_SVC_VECTOR = 1
    D3D_SVC_MATRIX_ROWS = 2
    D3D_SVC_MATRIX_COLUMNS = 3
    D3D_SVC_OBJECT = 4
    D3D_SVC_STRUCT = 5
    D3D_SVC_INTERFACE_CLASS = 6
    D3D_SVC_INTERFACE_POINTER = 7
    D3D10_SVC_SCALAR = 0
    D3D10_SVC_VECTOR = 1
    D3D10_SVC_MATRIX_ROWS = 2
    D3D10_SVC_MATRIX_COLUMNS = 3
    D3D10_SVC_OBJECT = 4
    D3D10_SVC_STRUCT = 5
    D3D11_SVC_INTERFACE_CLASS = 6
    D3D11_SVC_INTERFACE_POINTER = 7
    D3D_SVC_FORCE_DWORD = 2147483647
  end

  enum D3D_SHADER_VARIABLE_FLAGS : Int32
    D3D_SVF_USERPACKED = 1
    D3D_SVF_USED = 2
    D3D_SVF_INTERFACE_POINTER = 4
    D3D_SVF_INTERFACE_PARAMETER = 8
    D3D10_SVF_USERPACKED = 1
    D3D10_SVF_USED = 2
    D3D11_SVF_INTERFACE_POINTER = 4
    D3D11_SVF_INTERFACE_PARAMETER = 8
    D3D_SVF_FORCE_DWORD = 2147483647
  end

  enum D3D_SHADER_VARIABLE_TYPE : Int32
    D3D_SVT_VOID = 0
    D3D_SVT_BOOL = 1
    D3D_SVT_INT = 2
    D3D_SVT_FLOAT = 3
    D3D_SVT_STRING = 4
    D3D_SVT_TEXTURE = 5
    D3D_SVT_TEXTURE1D = 6
    D3D_SVT_TEXTURE2D = 7
    D3D_SVT_TEXTURE3D = 8
    D3D_SVT_TEXTURECUBE = 9
    D3D_SVT_SAMPLER = 10
    D3D_SVT_SAMPLER1D = 11
    D3D_SVT_SAMPLER2D = 12
    D3D_SVT_SAMPLER3D = 13
    D3D_SVT_SAMPLERCUBE = 14
    D3D_SVT_PIXELSHADER = 15
    D3D_SVT_VERTEXSHADER = 16
    D3D_SVT_PIXELFRAGMENT = 17
    D3D_SVT_VERTEXFRAGMENT = 18
    D3D_SVT_UINT = 19
    D3D_SVT_UINT8 = 20
    D3D_SVT_GEOMETRYSHADER = 21
    D3D_SVT_RASTERIZER = 22
    D3D_SVT_DEPTHSTENCIL = 23
    D3D_SVT_BLEND = 24
    D3D_SVT_BUFFER = 25
    D3D_SVT_CBUFFER = 26
    D3D_SVT_TBUFFER = 27
    D3D_SVT_TEXTURE1DARRAY = 28
    D3D_SVT_TEXTURE2DARRAY = 29
    D3D_SVT_RENDERTARGETVIEW = 30
    D3D_SVT_DEPTHSTENCILVIEW = 31
    D3D_SVT_TEXTURE2DMS = 32
    D3D_SVT_TEXTURE2DMSARRAY = 33
    D3D_SVT_TEXTURECUBEARRAY = 34
    D3D_SVT_HULLSHADER = 35
    D3D_SVT_DOMAINSHADER = 36
    D3D_SVT_INTERFACE_POINTER = 37
    D3D_SVT_COMPUTESHADER = 38
    D3D_SVT_DOUBLE = 39
    D3D_SVT_RWTEXTURE1D = 40
    D3D_SVT_RWTEXTURE1DARRAY = 41
    D3D_SVT_RWTEXTURE2D = 42
    D3D_SVT_RWTEXTURE2DARRAY = 43
    D3D_SVT_RWTEXTURE3D = 44
    D3D_SVT_RWBUFFER = 45
    D3D_SVT_BYTEADDRESS_BUFFER = 46
    D3D_SVT_RWBYTEADDRESS_BUFFER = 47
    D3D_SVT_STRUCTURED_BUFFER = 48
    D3D_SVT_RWSTRUCTURED_BUFFER = 49
    D3D_SVT_APPEND_STRUCTURED_BUFFER = 50
    D3D_SVT_CONSUME_STRUCTURED_BUFFER = 51
    D3D_SVT_MIN8FLOAT = 52
    D3D_SVT_MIN10FLOAT = 53
    D3D_SVT_MIN16FLOAT = 54
    D3D_SVT_MIN12INT = 55
    D3D_SVT_MIN16INT = 56
    D3D_SVT_MIN16UINT = 57
    D3D_SVT_INT16 = 58
    D3D_SVT_UINT16 = 59
    D3D_SVT_FLOAT16 = 60
    D3D_SVT_INT64 = 61
    D3D_SVT_UINT64 = 62
    D3D10_SVT_VOID = 0
    D3D10_SVT_BOOL = 1
    D3D10_SVT_INT = 2
    D3D10_SVT_FLOAT = 3
    D3D10_SVT_STRING = 4
    D3D10_SVT_TEXTURE = 5
    D3D10_SVT_TEXTURE1D = 6
    D3D10_SVT_TEXTURE2D = 7
    D3D10_SVT_TEXTURE3D = 8
    D3D10_SVT_TEXTURECUBE = 9
    D3D10_SVT_SAMPLER = 10
    D3D10_SVT_SAMPLER1D = 11
    D3D10_SVT_SAMPLER2D = 12
    D3D10_SVT_SAMPLER3D = 13
    D3D10_SVT_SAMPLERCUBE = 14
    D3D10_SVT_PIXELSHADER = 15
    D3D10_SVT_VERTEXSHADER = 16
    D3D10_SVT_PIXELFRAGMENT = 17
    D3D10_SVT_VERTEXFRAGMENT = 18
    D3D10_SVT_UINT = 19
    D3D10_SVT_UINT8 = 20
    D3D10_SVT_GEOMETRYSHADER = 21
    D3D10_SVT_RASTERIZER = 22
    D3D10_SVT_DEPTHSTENCIL = 23
    D3D10_SVT_BLEND = 24
    D3D10_SVT_BUFFER = 25
    D3D10_SVT_CBUFFER = 26
    D3D10_SVT_TBUFFER = 27
    D3D10_SVT_TEXTURE1DARRAY = 28
    D3D10_SVT_TEXTURE2DARRAY = 29
    D3D10_SVT_RENDERTARGETVIEW = 30
    D3D10_SVT_DEPTHSTENCILVIEW = 31
    D3D10_SVT_TEXTURE2DMS = 32
    D3D10_SVT_TEXTURE2DMSARRAY = 33
    D3D10_SVT_TEXTURECUBEARRAY = 34
    D3D11_SVT_HULLSHADER = 35
    D3D11_SVT_DOMAINSHADER = 36
    D3D11_SVT_INTERFACE_POINTER = 37
    D3D11_SVT_COMPUTESHADER = 38
    D3D11_SVT_DOUBLE = 39
    D3D11_SVT_RWTEXTURE1D = 40
    D3D11_SVT_RWTEXTURE1DARRAY = 41
    D3D11_SVT_RWTEXTURE2D = 42
    D3D11_SVT_RWTEXTURE2DARRAY = 43
    D3D11_SVT_RWTEXTURE3D = 44
    D3D11_SVT_RWBUFFER = 45
    D3D11_SVT_BYTEADDRESS_BUFFER = 46
    D3D11_SVT_RWBYTEADDRESS_BUFFER = 47
    D3D11_SVT_STRUCTURED_BUFFER = 48
    D3D11_SVT_RWSTRUCTURED_BUFFER = 49
    D3D11_SVT_APPEND_STRUCTURED_BUFFER = 50
    D3D11_SVT_CONSUME_STRUCTURED_BUFFER = 51
    D3D_SVT_FORCE_DWORD = 2147483647
  end

  enum D3D_SHADER_INPUT_FLAGS : Int32
    D3D_SIF_USERPACKED = 1
    D3D_SIF_COMPARISON_SAMPLER = 2
    D3D_SIF_TEXTURE_COMPONENT_0 = 4
    D3D_SIF_TEXTURE_COMPONENT_1 = 8
    D3D_SIF_TEXTURE_COMPONENTS = 12
    D3D_SIF_UNUSED = 16
    D3D10_SIF_USERPACKED = 1
    D3D10_SIF_COMPARISON_SAMPLER = 2
    D3D10_SIF_TEXTURE_COMPONENT_0 = 4
    D3D10_SIF_TEXTURE_COMPONENT_1 = 8
    D3D10_SIF_TEXTURE_COMPONENTS = 12
    D3D_SIF_FORCE_DWORD = 2147483647
  end

  enum D3D_SHADER_INPUT_TYPE : Int32
    D3D_SIT_CBUFFER = 0
    D3D_SIT_TBUFFER = 1
    D3D_SIT_TEXTURE = 2
    D3D_SIT_SAMPLER = 3
    D3D_SIT_UAV_RWTYPED = 4
    D3D_SIT_STRUCTURED = 5
    D3D_SIT_UAV_RWSTRUCTURED = 6
    D3D_SIT_BYTEADDRESS = 7
    D3D_SIT_UAV_RWBYTEADDRESS = 8
    D3D_SIT_UAV_APPEND_STRUCTURED = 9
    D3D_SIT_UAV_CONSUME_STRUCTURED = 10
    D3D_SIT_UAV_RWSTRUCTURED_WITH_COUNTER = 11
    D3D_SIT_RTACCELERATIONSTRUCTURE = 12
    D3D_SIT_UAV_FEEDBACKTEXTURE = 13
    D3D10_SIT_CBUFFER = 0
    D3D10_SIT_TBUFFER = 1
    D3D10_SIT_TEXTURE = 2
    D3D10_SIT_SAMPLER = 3
    D3D11_SIT_UAV_RWTYPED = 4
    D3D11_SIT_STRUCTURED = 5
    D3D11_SIT_UAV_RWSTRUCTURED = 6
    D3D11_SIT_BYTEADDRESS = 7
    D3D11_SIT_UAV_RWBYTEADDRESS = 8
    D3D11_SIT_UAV_APPEND_STRUCTURED = 9
    D3D11_SIT_UAV_CONSUME_STRUCTURED = 10
    D3D11_SIT_UAV_RWSTRUCTURED_WITH_COUNTER = 11
  end

  enum D3D_SHADER_CBUFFER_FLAGS : Int32
    D3D_CBF_USERPACKED = 1
    D3D10_CBF_USERPACKED = 1
    D3D_CBF_FORCE_DWORD = 2147483647
  end

  enum D3D_CBUFFER_TYPE : Int32
    D3D_CT_CBUFFER = 0
    D3D_CT_TBUFFER = 1
    D3D_CT_INTERFACE_POINTERS = 2
    D3D_CT_RESOURCE_BIND_INFO = 3
    D3D10_CT_CBUFFER = 0
    D3D10_CT_TBUFFER = 1
    D3D11_CT_CBUFFER = 0
    D3D11_CT_TBUFFER = 1
    D3D11_CT_INTERFACE_POINTERS = 2
    D3D11_CT_RESOURCE_BIND_INFO = 3
  end

  enum D3D_NAME : Int32
    D3D_NAME_UNDEFINED = 0
    D3D_NAME_POSITION = 1
    D3D_NAME_CLIP_DISTANCE = 2
    D3D_NAME_CULL_DISTANCE = 3
    D3D_NAME_RENDER_TARGET_ARRAY_INDEX = 4
    D3D_NAME_VIEWPORT_ARRAY_INDEX = 5
    D3D_NAME_VERTEX_ID = 6
    D3D_NAME_PRIMITIVE_ID = 7
    D3D_NAME_INSTANCE_ID = 8
    D3D_NAME_IS_FRONT_FACE = 9
    D3D_NAME_SAMPLE_INDEX = 10
    D3D_NAME_FINAL_QUAD_EDGE_TESSFACTOR = 11
    D3D_NAME_FINAL_QUAD_INSIDE_TESSFACTOR = 12
    D3D_NAME_FINAL_TRI_EDGE_TESSFACTOR = 13
    D3D_NAME_FINAL_TRI_INSIDE_TESSFACTOR = 14
    D3D_NAME_FINAL_LINE_DETAIL_TESSFACTOR = 15
    D3D_NAME_FINAL_LINE_DENSITY_TESSFACTOR = 16
    D3D_NAME_BARYCENTRICS = 23
    D3D_NAME_SHADINGRATE = 24
    D3D_NAME_CULLPRIMITIVE = 25
    D3D_NAME_TARGET = 64
    D3D_NAME_DEPTH = 65
    D3D_NAME_COVERAGE = 66
    D3D_NAME_DEPTH_GREATER_EQUAL = 67
    D3D_NAME_DEPTH_LESS_EQUAL = 68
    D3D_NAME_STENCIL_REF = 69
    D3D_NAME_INNER_COVERAGE = 70
    D3D10_NAME_UNDEFINED = 0
    D3D10_NAME_POSITION = 1
    D3D10_NAME_CLIP_DISTANCE = 2
    D3D10_NAME_CULL_DISTANCE = 3
    D3D10_NAME_RENDER_TARGET_ARRAY_INDEX = 4
    D3D10_NAME_VIEWPORT_ARRAY_INDEX = 5
    D3D10_NAME_VERTEX_ID = 6
    D3D10_NAME_PRIMITIVE_ID = 7
    D3D10_NAME_INSTANCE_ID = 8
    D3D10_NAME_IS_FRONT_FACE = 9
    D3D10_NAME_SAMPLE_INDEX = 10
    D3D10_NAME_TARGET = 64
    D3D10_NAME_DEPTH = 65
    D3D10_NAME_COVERAGE = 66
    D3D11_NAME_FINAL_QUAD_EDGE_TESSFACTOR = 11
    D3D11_NAME_FINAL_QUAD_INSIDE_TESSFACTOR = 12
    D3D11_NAME_FINAL_TRI_EDGE_TESSFACTOR = 13
    D3D11_NAME_FINAL_TRI_INSIDE_TESSFACTOR = 14
    D3D11_NAME_FINAL_LINE_DETAIL_TESSFACTOR = 15
    D3D11_NAME_FINAL_LINE_DENSITY_TESSFACTOR = 16
    D3D11_NAME_DEPTH_GREATER_EQUAL = 67
    D3D11_NAME_DEPTH_LESS_EQUAL = 68
    D3D11_NAME_STENCIL_REF = 69
    D3D11_NAME_INNER_COVERAGE = 70
    D3D12_NAME_BARYCENTRICS = 23
    D3D12_NAME_SHADINGRATE = 24
    D3D12_NAME_CULLPRIMITIVE = 25
  end

  enum D3D_RESOURCE_RETURN_TYPE : Int32
    D3D_RETURN_TYPE_UNORM = 1
    D3D_RETURN_TYPE_SNORM = 2
    D3D_RETURN_TYPE_SINT = 3
    D3D_RETURN_TYPE_UINT = 4
    D3D_RETURN_TYPE_FLOAT = 5
    D3D_RETURN_TYPE_MIXED = 6
    D3D_RETURN_TYPE_DOUBLE = 7
    D3D_RETURN_TYPE_CONTINUED = 8
    D3D10_RETURN_TYPE_UNORM = 1
    D3D10_RETURN_TYPE_SNORM = 2
    D3D10_RETURN_TYPE_SINT = 3
    D3D10_RETURN_TYPE_UINT = 4
    D3D10_RETURN_TYPE_FLOAT = 5
    D3D10_RETURN_TYPE_MIXED = 6
    D3D11_RETURN_TYPE_UNORM = 1
    D3D11_RETURN_TYPE_SNORM = 2
    D3D11_RETURN_TYPE_SINT = 3
    D3D11_RETURN_TYPE_UINT = 4
    D3D11_RETURN_TYPE_FLOAT = 5
    D3D11_RETURN_TYPE_MIXED = 6
    D3D11_RETURN_TYPE_DOUBLE = 7
    D3D11_RETURN_TYPE_CONTINUED = 8
  end

  enum D3D_REGISTER_COMPONENT_TYPE : Int32
    D3D_REGISTER_COMPONENT_UNKNOWN = 0
    D3D_REGISTER_COMPONENT_UINT32 = 1
    D3D_REGISTER_COMPONENT_SINT32 = 2
    D3D_REGISTER_COMPONENT_FLOAT32 = 3
    D3D10_REGISTER_COMPONENT_UNKNOWN = 0
    D3D10_REGISTER_COMPONENT_UINT32 = 1
    D3D10_REGISTER_COMPONENT_SINT32 = 2
    D3D10_REGISTER_COMPONENT_FLOAT32 = 3
  end

  enum D3D_TESSELLATOR_DOMAIN : Int32
    D3D_TESSELLATOR_DOMAIN_UNDEFINED = 0
    D3D_TESSELLATOR_DOMAIN_ISOLINE = 1
    D3D_TESSELLATOR_DOMAIN_TRI = 2
    D3D_TESSELLATOR_DOMAIN_QUAD = 3
    D3D11_TESSELLATOR_DOMAIN_UNDEFINED = 0
    D3D11_TESSELLATOR_DOMAIN_ISOLINE = 1
    D3D11_TESSELLATOR_DOMAIN_TRI = 2
    D3D11_TESSELLATOR_DOMAIN_QUAD = 3
  end

  enum D3D_TESSELLATOR_PARTITIONING : Int32
    D3D_TESSELLATOR_PARTITIONING_UNDEFINED = 0
    D3D_TESSELLATOR_PARTITIONING_INTEGER = 1
    D3D_TESSELLATOR_PARTITIONING_POW2 = 2
    D3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD = 3
    D3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN = 4
    D3D11_TESSELLATOR_PARTITIONING_UNDEFINED = 0
    D3D11_TESSELLATOR_PARTITIONING_INTEGER = 1
    D3D11_TESSELLATOR_PARTITIONING_POW2 = 2
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD = 3
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN = 4
  end

  enum D3D_TESSELLATOR_OUTPUT_PRIMITIVE : Int32
    D3D_TESSELLATOR_OUTPUT_UNDEFINED = 0
    D3D_TESSELLATOR_OUTPUT_POINT = 1
    D3D_TESSELLATOR_OUTPUT_LINE = 2
    D3D_TESSELLATOR_OUTPUT_TRIANGLE_CW = 3
    D3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW = 4
    D3D11_TESSELLATOR_OUTPUT_UNDEFINED = 0
    D3D11_TESSELLATOR_OUTPUT_POINT = 1
    D3D11_TESSELLATOR_OUTPUT_LINE = 2
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CW = 3
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CCW = 4
  end

  enum D3D_MIN_PRECISION : Int32
    D3D_MIN_PRECISION_DEFAULT = 0
    D3D_MIN_PRECISION_FLOAT_16 = 1
    D3D_MIN_PRECISION_FLOAT_2_8 = 2
    D3D_MIN_PRECISION_RESERVED = 3
    D3D_MIN_PRECISION_SINT_16 = 4
    D3D_MIN_PRECISION_UINT_16 = 5
    D3D_MIN_PRECISION_ANY_16 = 240
    D3D_MIN_PRECISION_ANY_10 = 241
  end

  enum D3D_INTERPOLATION_MODE : Int32
    D3D_INTERPOLATION_UNDEFINED = 0
    D3D_INTERPOLATION_CONSTANT = 1
    D3D_INTERPOLATION_LINEAR = 2
    D3D_INTERPOLATION_LINEAR_CENTROID = 3
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE = 4
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE_CENTROID = 5
    D3D_INTERPOLATION_LINEAR_SAMPLE = 6
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE_SAMPLE = 7
  end

  enum D3D_PARAMETER_FLAGS : Int32
    D3D_PF_NONE = 0
    D3D_PF_IN = 1
    D3D_PF_OUT = 2
    D3D_PF_FORCE_DWORD = 2147483647
  end

union D3DMATRIX_Anonymous_e__Union
  anonymous : D3DMATRIX_Anonymous_e__Union_Anonymous_e__Struct
  m : Float32[16]*
end

  struct D3D_SHADER_MACRO
    name : PSTR
    definition : PSTR
  end
  struct D3DVECTOR
    x : Float32
    y : Float32
    z : Float32
  end
  struct D3DMATRIX
    anonymous : D3DMATRIX_Anonymous_e__Union
  end
  struct D3DMATRIX_Anonymous_e__Union_Anonymous_e__Struct
    _11 : Float32
    _12 : Float32
    _13 : Float32
    _14 : Float32
    _21 : Float32
    _22 : Float32
    _23 : Float32
    _24 : Float32
    _31 : Float32
    _32 : Float32
    _33 : Float32
    _34 : Float32
    _41 : Float32
    _42 : Float32
    _43 : Float32
    _44 : Float32
  end


  struct ID3DBlobVTbl
    query_interface : Proc(ID3DBlob*, Guid*, Void**, HRESULT)
    add_ref : Proc(ID3DBlob*, UInt32)
    release : Proc(ID3DBlob*, UInt32)
    get_buffer_pointer : Proc(ID3DBlob*, Void**)
    get_buffer_size : Proc(ID3DBlob*, LibC::UINT_PTR)
  end

  struct ID3DBlob
    lpVtbl : ID3DBlobVTbl*
  end

  struct ID3DDestructionNotifierVTbl
    query_interface : Proc(ID3DDestructionNotifier*, Guid*, Void**, HRESULT)
    add_ref : Proc(ID3DDestructionNotifier*, UInt32)
    release : Proc(ID3DDestructionNotifier*, UInt32)
    register_destruction_callback : Proc(ID3DDestructionNotifier*, PFN_DESTRUCTION_CALLBACK, Void*, UInt32*, HRESULT)
    unregister_destruction_callback : Proc(ID3DDestructionNotifier*, UInt32, HRESULT)
  end

  struct ID3DDestructionNotifier
    lpVtbl : ID3DDestructionNotifierVTbl*
  end

  struct ID3DIncludeVTbl
    open : Proc(ID3DInclude*, D3D_INCLUDE_TYPE, PSTR, Void*, Void**, UInt32*, HRESULT)
    close : Proc(ID3DInclude*, Void*, HRESULT)
  end

  struct ID3DInclude
    lpVtbl : ID3DIncludeVTbl*
  end

end
