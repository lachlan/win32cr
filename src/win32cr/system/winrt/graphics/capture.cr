require "../../../system/com.cr"
require "../../../foundation.cr"
require "../../../graphics/gdi.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
lib LibWin32

  struct IGraphicsCaptureItemInteropVTbl
    query_interface : Proc(IGraphicsCaptureItemInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IGraphicsCaptureItemInterop*, UInt32)
    release : Proc(IGraphicsCaptureItemInterop*, UInt32)
    create_for_window : Proc(IGraphicsCaptureItemInterop*, LibC::HANDLE, Guid*, Void**, HRESULT)
    create_for_monitor : Proc(IGraphicsCaptureItemInterop*, HMONITOR, Guid*, Void**, HRESULT)
  end

  IGraphicsCaptureItemInterop_GUID = "3628e81b-3cac-4c60-b7f4-23ce0e0c3356"
  IID_IGraphicsCaptureItemInterop = LibC::GUID.new(0x3628e81b_u32, 0x3cac_u16, 0x4c60_u16, StaticArray[0xb7_u8, 0xf4_u8, 0x23_u8, 0xce_u8, 0xe_u8, 0xc_u8, 0x33_u8, 0x56_u8])
  struct IGraphicsCaptureItemInterop
    lpVtbl : IGraphicsCaptureItemInteropVTbl*
  end

end