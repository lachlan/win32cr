require "../../../system/com.cr"
require "../../../foundation.cr"
require "../../../graphics/direct2d.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
lib LibWin32

  enum GRAPHICS_EFFECT_PROPERTY_MAPPING : Int32
    GRAPHICS_EFFECT_PROPERTY_MAPPING_UNKNOWN = 0
    GRAPHICS_EFFECT_PROPERTY_MAPPING_DIRECT = 1
    GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORX = 2
    GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORY = 3
    GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORZ = 4
    GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORW = 5
    GRAPHICS_EFFECT_PROPERTY_MAPPING_RECT_TO_VECTOR4 = 6
    GRAPHICS_EFFECT_PROPERTY_MAPPING_RADIANS_TO_DEGREES = 7
    GRAPHICS_EFFECT_PROPERTY_MAPPING_COLORMATRIX_ALPHA_MODE = 8
    GRAPHICS_EFFECT_PROPERTY_MAPPING_COLOR_TO_VECTOR3 = 9
    GRAPHICS_EFFECT_PROPERTY_MAPPING_COLOR_TO_VECTOR4 = 10
  end


  struct IGraphicsEffectD2D1InteropVTbl
    query_interface : Proc(IGraphicsEffectD2D1Interop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IGraphicsEffectD2D1Interop*, UInt32)
    release : Proc(IGraphicsEffectD2D1Interop*, UInt32)
    get_effect_id : Proc(IGraphicsEffectD2D1Interop*, Guid*, HRESULT)
    get_named_property_mapping : Proc(IGraphicsEffectD2D1Interop*, LibC::LPWSTR, UInt32*, GRAPHICS_EFFECT_PROPERTY_MAPPING*, HRESULT)
    get_property_count : Proc(IGraphicsEffectD2D1Interop*, UInt32*, HRESULT)
    get_property : Proc(IGraphicsEffectD2D1Interop*, UInt32, IPropertyValue*, HRESULT)
    get_source : Proc(IGraphicsEffectD2D1Interop*, UInt32, IGraphicsEffectSource*, HRESULT)
    get_source_count : Proc(IGraphicsEffectD2D1Interop*, UInt32*, HRESULT)
  end

  IGraphicsEffectD2D1Interop_GUID = "2fc57384-a068-44d7-a331-30982fcf7177"
  IID_IGraphicsEffectD2D1Interop = LibC::GUID.new(0x2fc57384_u32, 0xa068_u16, 0x44d7_u16, StaticArray[0xa3_u8, 0x31_u8, 0x30_u8, 0x98_u8, 0x2f_u8, 0xcf_u8, 0x71_u8, 0x77_u8])
  struct IGraphicsEffectD2D1Interop
    lpVtbl : IGraphicsEffectD2D1InteropVTbl*
  end

  struct IGeometrySource2DInteropVTbl
    query_interface : Proc(IGeometrySource2DInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IGeometrySource2DInterop*, UInt32)
    release : Proc(IGeometrySource2DInterop*, UInt32)
    get_geometry : Proc(IGeometrySource2DInterop*, ID2D1Geometry*, HRESULT)
    try_get_geometry_using_factory : Proc(IGeometrySource2DInterop*, ID2D1Factory, ID2D1Geometry*, HRESULT)
  end

  IGeometrySource2DInterop_GUID = "0657af73-53fd-47cf-84ff-c8492d2a80a3"
  IID_IGeometrySource2DInterop = LibC::GUID.new(0x657af73_u32, 0x53fd_u16, 0x47cf_u16, StaticArray[0x84_u8, 0xff_u8, 0xc8_u8, 0x49_u8, 0x2d_u8, 0x2a_u8, 0x80_u8, 0xa3_u8])
  struct IGeometrySource2DInterop
    lpVtbl : IGeometrySource2DInteropVTbl*
  end

end