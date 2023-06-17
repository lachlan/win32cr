require "../../foundation.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
lib LibWin32
  FACDXGI = 2170_u32
  DXGI_CPU_ACCESS_NONE = 0_u32
  DXGI_CPU_ACCESS_DYNAMIC = 1_u32
  DXGI_CPU_ACCESS_READ_WRITE = 2_u32
  DXGI_CPU_ACCESS_SCRATCH = 3_u32
  DXGI_CPU_ACCESS_FIELD = 15_u32
  DXGI_FORMAT_DEFINED = 1_u32
  DXGI_STANDARD_MULTISAMPLE_QUALITY_PATTERN = 4294967295_u32
  DXGI_CENTER_MULTISAMPLE_QUALITY_PATTERN = 4294967294_u32


  enum DXGI_COLOR_SPACE_TYPE : Int32
    DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709 = 0
    DXGI_COLOR_SPACE_RGB_FULL_G10_NONE_P709 = 1
    DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P709 = 2
    DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P2020 = 3
    DXGI_COLOR_SPACE_RESERVED = 4
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_NONE_P709_X601 = 5
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P601 = 6
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P601 = 7
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P709 = 8
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P709 = 9
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P2020 = 10
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P2020 = 11
    DXGI_COLOR_SPACE_RGB_FULL_G2084_NONE_P2020 = 12
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_LEFT_P2020 = 13
    DXGI_COLOR_SPACE_RGB_STUDIO_G2084_NONE_P2020 = 14
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_TOPLEFT_P2020 = 15
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_TOPLEFT_P2020 = 16
    DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P2020 = 17
    DXGI_COLOR_SPACE_YCBCR_STUDIO_GHLG_TOPLEFT_P2020 = 18
    DXGI_COLOR_SPACE_YCBCR_FULL_GHLG_TOPLEFT_P2020 = 19
    DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P709 = 20
    DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P2020 = 21
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P709 = 22
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P2020 = 23
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_TOPLEFT_P2020 = 24
    DXGI_COLOR_SPACE_CUSTOM = -1
  end

  enum DXGI_FORMAT : UInt32
    DXGI_FORMAT_UNKNOWN = 0
    DXGI_FORMAT_R32G32B32A32_TYPELESS = 1
    DXGI_FORMAT_R32G32B32A32_FLOAT = 2
    DXGI_FORMAT_R32G32B32A32_UINT = 3
    DXGI_FORMAT_R32G32B32A32_SINT = 4
    DXGI_FORMAT_R32G32B32_TYPELESS = 5
    DXGI_FORMAT_R32G32B32_FLOAT = 6
    DXGI_FORMAT_R32G32B32_UINT = 7
    DXGI_FORMAT_R32G32B32_SINT = 8
    DXGI_FORMAT_R16G16B16A16_TYPELESS = 9
    DXGI_FORMAT_R16G16B16A16_FLOAT = 10
    DXGI_FORMAT_R16G16B16A16_UNORM = 11
    DXGI_FORMAT_R16G16B16A16_UINT = 12
    DXGI_FORMAT_R16G16B16A16_SNORM = 13
    DXGI_FORMAT_R16G16B16A16_SINT = 14
    DXGI_FORMAT_R32G32_TYPELESS = 15
    DXGI_FORMAT_R32G32_FLOAT = 16
    DXGI_FORMAT_R32G32_UINT = 17
    DXGI_FORMAT_R32G32_SINT = 18
    DXGI_FORMAT_R32G8X24_TYPELESS = 19
    DXGI_FORMAT_D32_FLOAT_S8X24_UINT = 20
    DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS = 21
    DXGI_FORMAT_X32_TYPELESS_G8X24_UINT = 22
    DXGI_FORMAT_R10G10B10A2_TYPELESS = 23
    DXGI_FORMAT_R10G10B10A2_UNORM = 24
    DXGI_FORMAT_R10G10B10A2_UINT = 25
    DXGI_FORMAT_R11G11B10_FLOAT = 26
    DXGI_FORMAT_R8G8B8A8_TYPELESS = 27
    DXGI_FORMAT_R8G8B8A8_UNORM = 28
    DXGI_FORMAT_R8G8B8A8_UNORM_SRGB = 29
    DXGI_FORMAT_R8G8B8A8_UINT = 30
    DXGI_FORMAT_R8G8B8A8_SNORM = 31
    DXGI_FORMAT_R8G8B8A8_SINT = 32
    DXGI_FORMAT_R16G16_TYPELESS = 33
    DXGI_FORMAT_R16G16_FLOAT = 34
    DXGI_FORMAT_R16G16_UNORM = 35
    DXGI_FORMAT_R16G16_UINT = 36
    DXGI_FORMAT_R16G16_SNORM = 37
    DXGI_FORMAT_R16G16_SINT = 38
    DXGI_FORMAT_R32_TYPELESS = 39
    DXGI_FORMAT_D32_FLOAT = 40
    DXGI_FORMAT_R32_FLOAT = 41
    DXGI_FORMAT_R32_UINT = 42
    DXGI_FORMAT_R32_SINT = 43
    DXGI_FORMAT_R24G8_TYPELESS = 44
    DXGI_FORMAT_D24_UNORM_S8_UINT = 45
    DXGI_FORMAT_R24_UNORM_X8_TYPELESS = 46
    DXGI_FORMAT_X24_TYPELESS_G8_UINT = 47
    DXGI_FORMAT_R8G8_TYPELESS = 48
    DXGI_FORMAT_R8G8_UNORM = 49
    DXGI_FORMAT_R8G8_UINT = 50
    DXGI_FORMAT_R8G8_SNORM = 51
    DXGI_FORMAT_R8G8_SINT = 52
    DXGI_FORMAT_R16_TYPELESS = 53
    DXGI_FORMAT_R16_FLOAT = 54
    DXGI_FORMAT_D16_UNORM = 55
    DXGI_FORMAT_R16_UNORM = 56
    DXGI_FORMAT_R16_UINT = 57
    DXGI_FORMAT_R16_SNORM = 58
    DXGI_FORMAT_R16_SINT = 59
    DXGI_FORMAT_R8_TYPELESS = 60
    DXGI_FORMAT_R8_UNORM = 61
    DXGI_FORMAT_R8_UINT = 62
    DXGI_FORMAT_R8_SNORM = 63
    DXGI_FORMAT_R8_SINT = 64
    DXGI_FORMAT_A8_UNORM = 65
    DXGI_FORMAT_R1_UNORM = 66
    DXGI_FORMAT_R9G9B9E5_SHAREDEXP = 67
    DXGI_FORMAT_R8G8_B8G8_UNORM = 68
    DXGI_FORMAT_G8R8_G8B8_UNORM = 69
    DXGI_FORMAT_BC1_TYPELESS = 70
    DXGI_FORMAT_BC1_UNORM = 71
    DXGI_FORMAT_BC1_UNORM_SRGB = 72
    DXGI_FORMAT_BC2_TYPELESS = 73
    DXGI_FORMAT_BC2_UNORM = 74
    DXGI_FORMAT_BC2_UNORM_SRGB = 75
    DXGI_FORMAT_BC3_TYPELESS = 76
    DXGI_FORMAT_BC3_UNORM = 77
    DXGI_FORMAT_BC3_UNORM_SRGB = 78
    DXGI_FORMAT_BC4_TYPELESS = 79
    DXGI_FORMAT_BC4_UNORM = 80
    DXGI_FORMAT_BC4_SNORM = 81
    DXGI_FORMAT_BC5_TYPELESS = 82
    DXGI_FORMAT_BC5_UNORM = 83
    DXGI_FORMAT_BC5_SNORM = 84
    DXGI_FORMAT_B5G6R5_UNORM = 85
    DXGI_FORMAT_B5G5R5A1_UNORM = 86
    DXGI_FORMAT_B8G8R8A8_UNORM = 87
    DXGI_FORMAT_B8G8R8X8_UNORM = 88
    DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM = 89
    DXGI_FORMAT_B8G8R8A8_TYPELESS = 90
    DXGI_FORMAT_B8G8R8A8_UNORM_SRGB = 91
    DXGI_FORMAT_B8G8R8X8_TYPELESS = 92
    DXGI_FORMAT_B8G8R8X8_UNORM_SRGB = 93
    DXGI_FORMAT_BC6H_TYPELESS = 94
    DXGI_FORMAT_BC6H_UF16 = 95
    DXGI_FORMAT_BC6H_SF16 = 96
    DXGI_FORMAT_BC7_TYPELESS = 97
    DXGI_FORMAT_BC7_UNORM = 98
    DXGI_FORMAT_BC7_UNORM_SRGB = 99
    DXGI_FORMAT_AYUV = 100
    DXGI_FORMAT_Y410 = 101
    DXGI_FORMAT_Y416 = 102
    DXGI_FORMAT_NV12 = 103
    DXGI_FORMAT_P010 = 104
    DXGI_FORMAT_P016 = 105
    DXGI_FORMAT_420_OPAQUE = 106
    DXGI_FORMAT_YUY2 = 107
    DXGI_FORMAT_Y210 = 108
    DXGI_FORMAT_Y216 = 109
    DXGI_FORMAT_NV11 = 110
    DXGI_FORMAT_AI44 = 111
    DXGI_FORMAT_IA44 = 112
    DXGI_FORMAT_P8 = 113
    DXGI_FORMAT_A8P8 = 114
    DXGI_FORMAT_B4G4R4A4_UNORM = 115
    DXGI_FORMAT_P208 = 130
    DXGI_FORMAT_V208 = 131
    DXGI_FORMAT_V408 = 132
    DXGI_FORMAT_SAMPLER_FEEDBACK_MIN_MIP_OPAQUE = 189
    DXGI_FORMAT_SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE = 190
    DXGI_FORMAT_FORCE_UINT = 4294967295
  end

  enum DXGI_MODE_SCANLINE_ORDER : Int32
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE = 1
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 2
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 3
  end

  enum DXGI_MODE_SCALING : Int32
    DXGI_MODE_SCALING_UNSPECIFIED = 0
    DXGI_MODE_SCALING_CENTERED = 1
    DXGI_MODE_SCALING_STRETCHED = 2
  end

  enum DXGI_MODE_ROTATION : Int32
    DXGI_MODE_ROTATION_UNSPECIFIED = 0
    DXGI_MODE_ROTATION_IDENTITY = 1
    DXGI_MODE_ROTATION_ROTATE90 = 2
    DXGI_MODE_ROTATION_ROTATE180 = 3
    DXGI_MODE_ROTATION_ROTATE270 = 4
  end

  enum DXGI_ALPHA_MODE : UInt32
    DXGI_ALPHA_MODE_UNSPECIFIED = 0
    DXGI_ALPHA_MODE_PREMULTIPLIED = 1
    DXGI_ALPHA_MODE_STRAIGHT = 2
    DXGI_ALPHA_MODE_IGNORE = 3
    DXGI_ALPHA_MODE_FORCE_DWORD = 4294967295
  end

  struct DXGI_RATIONAL
    numerator : UInt32
    denominator : UInt32
  end
  struct DXGI_SAMPLE_DESC
    count : UInt32
    quality : UInt32
  end
  struct DXGI_RGB
    red : Float32
    green : Float32
    blue : Float32
  end
  struct DXGI_GAMMA_CONTROL
    scale : DXGI_RGB
    offset : DXGI_RGB
    gamma_curve : DXGI_RGB[1025]*
  end
  struct DXGI_GAMMA_CONTROL_CAPABILITIES
    scale_and_offset_supported : LibC::BOOL
    max_converted_value : Float32
    min_converted_value : Float32
    num_gamma_control_points : UInt32
    control_point_positions : Float32[1025]*
  end
  struct DXGI_MODE_DESC
    width : UInt32
    height : UInt32
    refresh_rate : DXGI_RATIONAL
    format : DXGI_FORMAT
    scanline_ordering : DXGI_MODE_SCANLINE_ORDER
    scaling : DXGI_MODE_SCALING
  end
  struct DXGI_JPEG_DC_HUFFMAN_TABLE
    code_counts : UInt8[12]*
    code_values : UInt8[12]*
  end
  struct DXGI_JPEG_AC_HUFFMAN_TABLE
    code_counts : UInt8[16]*
    code_values : UInt8[162]*
  end
  struct DXGI_JPEG_QUANTIZATION_TABLE
    elements : UInt8[64]*
  end

end