require "../../system/winrt.cr"
require "../../foundation.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
{% else %}
{% end %}
lib LibWin32

  struct IWindowsDevicesAllJoynBusAttachmentInteropVTbl
    query_interface : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, UInt32)
    release : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, UInt32)
    get_iids : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, UInt32*, Guid**, HRESULT)
    get_runtime_class_name : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, HSTRING*, HRESULT)
    get_trust_level : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, TrustLevel*, HRESULT)
    get_win32_handle : Proc(IWindowsDevicesAllJoynBusAttachmentInterop*, UInt64*, HRESULT)
  end

  IWindowsDevicesAllJoynBusAttachmentInterop_GUID = "fd89c65b-b50e-4a19-9d0c-b42b783281cd"
  IID_IWindowsDevicesAllJoynBusAttachmentInterop = LibC::GUID.new(0xfd89c65b_u32, 0xb50e_u16, 0x4a19_u16, StaticArray[0x9d_u8, 0xc_u8, 0xb4_u8, 0x2b_u8, 0x78_u8, 0x32_u8, 0x81_u8, 0xcd_u8])
  struct IWindowsDevicesAllJoynBusAttachmentInterop
    lpVtbl : IWindowsDevicesAllJoynBusAttachmentInteropVTbl*
  end

  struct IWindowsDevicesAllJoynBusAttachmentFactoryInteropVTbl
    query_interface : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, UInt32)
    release : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, UInt32)
    get_iids : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, UInt32*, Guid**, HRESULT)
    get_runtime_class_name : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, HSTRING*, HRESULT)
    get_trust_level : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, TrustLevel*, HRESULT)
    create_from_win32_handle : Proc(IWindowsDevicesAllJoynBusAttachmentFactoryInterop*, UInt64, UInt8, Guid*, Void**, HRESULT)
  end

  IWindowsDevicesAllJoynBusAttachmentFactoryInterop_GUID = "4b8f7505-b239-4e7b-88af-f6682575d861"
  IID_IWindowsDevicesAllJoynBusAttachmentFactoryInterop = LibC::GUID.new(0x4b8f7505_u32, 0xb239_u16, 0x4e7b_u16, StaticArray[0x88_u8, 0xaf_u8, 0xf6_u8, 0x68_u8, 0x25_u8, 0x75_u8, 0xd8_u8, 0x61_u8])
  struct IWindowsDevicesAllJoynBusAttachmentFactoryInterop
    lpVtbl : IWindowsDevicesAllJoynBusAttachmentFactoryInteropVTbl*
  end

  struct IWindowsDevicesAllJoynBusObjectInteropVTbl
    query_interface : Proc(IWindowsDevicesAllJoynBusObjectInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWindowsDevicesAllJoynBusObjectInterop*, UInt32)
    release : Proc(IWindowsDevicesAllJoynBusObjectInterop*, UInt32)
    get_iids : Proc(IWindowsDevicesAllJoynBusObjectInterop*, UInt32*, Guid**, HRESULT)
    get_runtime_class_name : Proc(IWindowsDevicesAllJoynBusObjectInterop*, HSTRING*, HRESULT)
    get_trust_level : Proc(IWindowsDevicesAllJoynBusObjectInterop*, TrustLevel*, HRESULT)
    add_property_get_handler : Proc(IWindowsDevicesAllJoynBusObjectInterop*, Void*, HSTRING, LibC::IntPtrT, HRESULT)
    add_property_set_handler : Proc(IWindowsDevicesAllJoynBusObjectInterop*, Void*, HSTRING, LibC::IntPtrT, HRESULT)
    get_win32_handle : Proc(IWindowsDevicesAllJoynBusObjectInterop*, UInt64*, HRESULT)
  end

  IWindowsDevicesAllJoynBusObjectInterop_GUID = "d78aa3d5-5054-428f-99f2-ec3a5de3c3bc"
  IID_IWindowsDevicesAllJoynBusObjectInterop = LibC::GUID.new(0xd78aa3d5_u32, 0x5054_u16, 0x428f_u16, StaticArray[0x99_u8, 0xf2_u8, 0xec_u8, 0x3a_u8, 0x5d_u8, 0xe3_u8, 0xc3_u8, 0xbc_u8])
  struct IWindowsDevicesAllJoynBusObjectInterop
    lpVtbl : IWindowsDevicesAllJoynBusObjectInteropVTbl*
  end

  struct IWindowsDevicesAllJoynBusObjectFactoryInteropVTbl
    query_interface : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, UInt32)
    release : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, UInt32)
    get_iids : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, UInt32*, Guid**, HRESULT)
    get_runtime_class_name : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, HSTRING*, HRESULT)
    get_trust_level : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, TrustLevel*, HRESULT)
    create_from_win32_handle : Proc(IWindowsDevicesAllJoynBusObjectFactoryInterop*, UInt64, Guid*, Void**, HRESULT)
  end

  IWindowsDevicesAllJoynBusObjectFactoryInterop_GUID = "6174e506-8b95-4e36-95c0-b88fed34938c"
  IID_IWindowsDevicesAllJoynBusObjectFactoryInterop = LibC::GUID.new(0x6174e506_u32, 0x8b95_u16, 0x4e36_u16, StaticArray[0x95_u8, 0xc0_u8, 0xb8_u8, 0x8f_u8, 0xed_u8, 0x34_u8, 0x93_u8, 0x8c_u8])
  struct IWindowsDevicesAllJoynBusObjectFactoryInterop
    lpVtbl : IWindowsDevicesAllJoynBusObjectFactoryInteropVTbl*
  end

end
