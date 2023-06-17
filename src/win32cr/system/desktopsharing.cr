require "../system/com.cr"
require "../foundation.cr"

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
  DISPID_RDPSRAPI_METHOD_OPEN = 100_u32
  DISPID_RDPSRAPI_METHOD_CLOSE = 101_u32
  DISPID_RDPSRAPI_METHOD_SETSHAREDRECT = 102_u32
  DISPID_RDPSRAPI_METHOD_GETSHAREDRECT = 103_u32
  DISPID_RDPSRAPI_METHOD_VIEWERCONNECT = 104_u32
  DISPID_RDPSRAPI_METHOD_VIEWERDISCONNECT = 105_u32
  DISPID_RDPSRAPI_METHOD_TERMINATE_CONNECTION = 106_u32
  DISPID_RDPSRAPI_METHOD_CREATE_INVITATION = 107_u32
  DISPID_RDPSRAPI_METHOD_REQUEST_CONTROL = 108_u32
  DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_CREATE = 109_u32
  DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SEND_DATA = 110_u32
  DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SET_ACCESS = 111_u32
  DISPID_RDPSRAPI_METHOD_PAUSE = 112_u32
  DISPID_RDPSRAPI_METHOD_RESUME = 113_u32
  DISPID_RDPSRAPI_METHOD_SHOW_WINDOW = 114_u32
  DISPID_RDPSRAPI_METHOD_REQUEST_COLOR_DEPTH_CHANGE = 115_u32
  DISPID_RDPSRAPI_METHOD_STARTREVCONNECTLISTENER = 116_u32
  DISPID_RDPSRAPI_METHOD_CONNECTTOCLIENT = 117_u32
  DISPID_RDPSRAPI_METHOD_SET_RENDERING_SURFACE = 118_u32
  DISPID_RDPSRAPI_METHOD_SEND_MOUSE_BUTTON_EVENT = 119_u32
  DISPID_RDPSRAPI_METHOD_SEND_MOUSE_MOVE_EVENT = 120_u32
  DISPID_RDPSRAPI_METHOD_SEND_MOUSE_WHEEL_EVENT = 121_u32
  DISPID_RDPSRAPI_METHOD_SEND_KEYBOARD_EVENT = 122_u32
  DISPID_RDPSRAPI_METHOD_SEND_SYNC_EVENT = 123_u32
  DISPID_RDPSRAPI_METHOD_BEGIN_TOUCH_FRAME = 124_u32
  DISPID_RDPSRAPI_METHOD_ADD_TOUCH_INPUT = 125_u32
  DISPID_RDPSRAPI_METHOD_END_TOUCH_FRAME = 126_u32
  DISPID_RDPSRAPI_METHOD_CONNECTUSINGTRANSPORTSTREAM = 127_u32
  DISPID_RDPSRAPI_METHOD_SENDCONTROLLEVELCHANGERESPONSE = 148_u32
  DISPID_RDPSRAPI_METHOD_GETFRAMEBUFFERBITS = 149_u32
  DISPID_RDPSRAPI_PROP_DISPIDVALUE = 200_u32
  DISPID_RDPSRAPI_PROP_ID = 201_u32
  DISPID_RDPSRAPI_PROP_SESSION_PROPERTIES = 202_u32
  DISPID_RDPSRAPI_PROP_ATTENDEES = 203_u32
  DISPID_RDPSRAPI_PROP_INVITATIONS = 204_u32
  DISPID_RDPSRAPI_PROP_INVITATION = 205_u32
  DISPID_RDPSRAPI_PROP_CHANNELMANAGER = 206_u32
  DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETNAME = 207_u32
  DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETFLAGS = 208_u32
  DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETPRIORITY = 209_u32
  DISPID_RDPSRAPI_PROP_WINDOWID = 210_u32
  DISPID_RDPSRAPI_PROP_APPLICATION = 211_u32
  DISPID_RDPSRAPI_PROP_WINDOWSHARED = 212_u32
  DISPID_RDPSRAPI_PROP_WINDOWNAME = 213_u32
  DISPID_RDPSRAPI_PROP_APPNAME = 214_u32
  DISPID_RDPSRAPI_PROP_APPLICATION_FILTER = 215_u32
  DISPID_RDPSRAPI_PROP_WINDOW_LIST = 216_u32
  DISPID_RDPSRAPI_PROP_APPLICATION_LIST = 217_u32
  DISPID_RDPSRAPI_PROP_APPFILTER_ENABLED = 218_u32
  DISPID_RDPSRAPI_PROP_APPFILTERENABLED = 219_u32
  DISPID_RDPSRAPI_PROP_SHARED = 220_u32
  DISPID_RDPSRAPI_PROP_INVITATIONITEM = 221_u32
  DISPID_RDPSRAPI_PROP_DBG_CLX_CMDLINE = 222_u32
  DISPID_RDPSRAPI_PROP_APPFLAGS = 223_u32
  DISPID_RDPSRAPI_PROP_WNDFLAGS = 224_u32
  DISPID_RDPSRAPI_PROP_PROTOCOL_TYPE = 225_u32
  DISPID_RDPSRAPI_PROP_LOCAL_PORT = 226_u32
  DISPID_RDPSRAPI_PROP_LOCAL_IP = 227_u32
  DISPID_RDPSRAPI_PROP_PEER_PORT = 228_u32
  DISPID_RDPSRAPI_PROP_PEER_IP = 229_u32
  DISPID_RDPSRAPI_PROP_ATTENDEE_FLAGS = 230_u32
  DISPID_RDPSRAPI_PROP_CONINFO = 231_u32
  DISPID_RDPSRAPI_PROP_CONNECTION_STRING = 232_u32
  DISPID_RDPSRAPI_PROP_GROUP_NAME = 233_u32
  DISPID_RDPSRAPI_PROP_PASSWORD = 234_u32
  DISPID_RDPSRAPI_PROP_ATTENDEELIMIT = 235_u32
  DISPID_RDPSRAPI_PROP_REVOKED = 236_u32
  DISPID_RDPSRAPI_PROP_DISCONNECTED_STRING = 237_u32
  DISPID_RDPSRAPI_PROP_USESMARTSIZING = 238_u32
  DISPID_RDPSRAPI_PROP_SESSION_COLORDEPTH = 239_u32
  DISPID_RDPSRAPI_PROP_REASON = 240_u32
  DISPID_RDPSRAPI_PROP_CODE = 241_u32
  DISPID_RDPSRAPI_PROP_CTRL_LEVEL = 242_u32
  DISPID_RDPSRAPI_PROP_REMOTENAME = 243_u32
  DISPID_RDPSRAPI_PROP_COUNT = 244_u32
  DISPID_RDPSRAPI_PROP_FRAMEBUFFER_HEIGHT = 251_u32
  DISPID_RDPSRAPI_PROP_FRAMEBUFFER_WIDTH = 252_u32
  DISPID_RDPSRAPI_PROP_FRAMEBUFFER_BPP = 253_u32
  DISPID_RDPSRAPI_PROP_FRAMEBUFFER = 254_u32
  DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_CONNECTED = 301_u32
  DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_DISCONNECTED = 302_u32
  DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_UPDATE = 303_u32
  DISPID_RDPSRAPI_EVENT_ON_ERROR = 304_u32
  DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTED = 305_u32
  DISPID_RDPSRAPI_EVENT_ON_VIEWER_DISCONNECTED = 306_u32
  DISPID_RDPSRAPI_EVENT_ON_VIEWER_AUTHENTICATED = 307_u32
  DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTFAILED = 308_u32
  DISPID_RDPSRAPI_EVENT_ON_CTRLLEVEL_CHANGE_REQUEST = 309_u32
  DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_PAUSED = 310_u32
  DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_RESUMED = 311_u32
  DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_JOIN = 312_u32
  DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_LEAVE = 313_u32
  DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_DATARECEIVED = 314_u32
  DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_SENDCOMPLETED = 315_u32
  DISPID_RDPSRAPI_EVENT_ON_APPLICATION_OPEN = 316_u32
  DISPID_RDPSRAPI_EVENT_ON_APPLICATION_CLOSE = 317_u32
  DISPID_RDPSRAPI_EVENT_ON_APPLICATION_UPDATE = 318_u32
  DISPID_RDPSRAPI_EVENT_ON_WINDOW_OPEN = 319_u32
  DISPID_RDPSRAPI_EVENT_ON_WINDOW_CLOSE = 320_u32
  DISPID_RDPSRAPI_EVENT_ON_WINDOW_UPDATE = 321_u32
  DISPID_RDPSRAPI_EVENT_ON_APPFILTER_UPDATE = 322_u32
  DISPID_RDPSRAPI_EVENT_ON_SHARED_RECT_CHANGED = 323_u32
  DISPID_RDPSRAPI_EVENT_ON_FOCUSRELEASED = 324_u32
  DISPID_RDPSRAPI_EVENT_ON_SHARED_DESKTOP_SETTINGS_CHANGED = 325_u32
  DISPID_RDPSRAPI_EVENT_ON_CTRLLEVEL_CHANGE_RESPONSE = 338_u32
  DISPID_RDPAPI_EVENT_ON_BOUNDING_RECT_CHANGED = 340_u32
  DISPID_RDPSRAPI_METHOD_STREAM_ALLOCBUFFER = 421_u32
  DISPID_RDPSRAPI_METHOD_STREAM_FREEBUFFER = 422_u32
  DISPID_RDPSRAPI_METHOD_STREAMSENDDATA = 423_u32
  DISPID_RDPSRAPI_METHOD_STREAMREADDATA = 424_u32
  DISPID_RDPSRAPI_METHOD_STREAMOPEN = 425_u32
  DISPID_RDPSRAPI_METHOD_STREAMCLOSE = 426_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_STORAGE = 555_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_PAYLOADSIZE = 558_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_PAYLOADOFFSET = 559_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_CONTEXT = 560_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_FLAGS = 561_u32
  DISPID_RDPSRAPI_PROP_STREAMBUFFER_STORESIZE = 562_u32
  DISPID_RDPSRAPI_EVENT_ON_STREAM_SENDCOMPLETED = 632_u32
  DISPID_RDPSRAPI_EVENT_ON_STREAM_DATARECEIVED = 633_u32
  DISPID_RDPSRAPI_EVENT_ON_STREAM_CLOSED = 634_u32
  DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_BUTTON_RECEIVED = 700_u32
  DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_MOVE_RECEIVED = 701_u32
  DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_WHEEL_RECEIVED = 702_u32
  CLSID_RDPViewer = LibC::GUID.new(0x32be5ed2_u32, 0x5c86_u16, 0x480f_u16, StaticArray[0xa9_u8, 0x14_u8, 0xf_u8, 0xf8_u8, 0x88_u8, 0x5a_u8, 0x1b_u8, 0x3f_u8])
  CLSID_RDPSRAPISessionProperties = LibC::GUID.new(0xdd7594ff_u32, 0xea2a_u16, 0x4c06_u16, StaticArray[0x8f_u8, 0xdf_u8, 0x13_u8, 0x2d_u8, 0xe4_u8, 0x8b_u8, 0x65_u8, 0x10_u8])
  CLSID_RDPSRAPIInvitationManager = LibC::GUID.new(0x53d9c9db_u32, 0x75ab_u16, 0x4271_u16, StaticArray[0x94_u8, 0x8a_u8, 0x4c_u8, 0x4e_u8, 0xb3_u8, 0x6a_u8, 0x8f_u8, 0x2b_u8])
  CLSID_RDPSRAPIInvitation = LibC::GUID.new(0x49174dc6_u32, 0x731_u16, 0x4b5e_u16, StaticArray[0x8e_u8, 0xe1_u8, 0x83_u8, 0xa6_u8, 0x3d_u8, 0x38_u8, 0x68_u8, 0xfa_u8])
  CLSID_RDPSRAPIAttendeeManager = LibC::GUID.new(0xd7b13a01_u32, 0xf7d4_u16, 0x42a6_u16, StaticArray[0x85_u8, 0x95_u8, 0x12_u8, 0xfc_u8, 0x8c_u8, 0x24_u8, 0xe8_u8, 0x51_u8])
  CLSID_RDPSRAPIAttendee = LibC::GUID.new(0x74f93bb5_u32, 0x755f_u16, 0x488e_u16, StaticArray[0x8a_u8, 0x29_u8, 0x23_u8, 0x90_u8, 0x10_u8, 0x8a_u8, 0xef_u8, 0x55_u8])
  CLSID_RDPSRAPIAttendeeDisconnectInfo = LibC::GUID.new(0xb47d7250_u32, 0x5bdb_u16, 0x405d_u16, StaticArray[0xb4_u8, 0x87_u8, 0xca_u8, 0xad_u8, 0x9c_u8, 0x56_u8, 0xf4_u8, 0xf8_u8])
  CLSID_RDPSRAPIApplicationFilter = LibC::GUID.new(0xe35ace89_u32, 0xc7e8_u16, 0x427e_u16, StaticArray[0xa4_u8, 0xf9_u8, 0xb9_u8, 0xda_u8, 0x7_u8, 0x28_u8, 0x26_u8, 0xbd_u8])
  CLSID_RDPSRAPIApplicationList = LibC::GUID.new(0x9e31c815_u32, 0x7433_u16, 0x4876_u16, StaticArray[0x97_u8, 0xfb_u8, 0xed_u8, 0x59_u8, 0xfe_u8, 0x2b_u8, 0xaa_u8, 0x22_u8])
  CLSID_RDPSRAPIApplication = LibC::GUID.new(0xc116a484_u32, 0x4b25_u16, 0x4b9f_u16, StaticArray[0x8a_u8, 0x54_u8, 0xb9_u8, 0x34_u8, 0xb0_u8, 0x6e_u8, 0x57_u8, 0xfa_u8])
  CLSID_RDPSRAPIWindowList = LibC::GUID.new(0x9c21e2b8_u32, 0x5dd4_u16, 0x42cc_u16, StaticArray[0x81_u8, 0xba_u8, 0x1c_u8, 0x9_u8, 0x98_u8, 0x52_u8, 0xe6_u8, 0xfa_u8])
  CLSID_RDPSRAPIWindow = LibC::GUID.new(0x3cf46db_u32, 0xce45_u16, 0x4d36_u16, StaticArray[0x86_u8, 0xed_u8, 0xed_u8, 0x28_u8, 0xb7_u8, 0x43_u8, 0x98_u8, 0xbf_u8])
  CLSID_RDPSRAPITcpConnectionInfo = LibC::GUID.new(0xbe49db3f_u32, 0xebb6_u16, 0x4278_u16, StaticArray[0x8c_u8, 0xe0_u8, 0xd5_u8, 0x45_u8, 0x58_u8, 0x33_u8, 0xea_u8, 0xee_u8])
  CLSID_RDPSession = LibC::GUID.new(0x9b78f0e6_u32, 0x3e05_u16, 0x4a5b_u16, StaticArray[0xb2_u8, 0xe8_u8, 0xe7_u8, 0x43_u8, 0xa8_u8, 0x95_u8, 0x6b_u8, 0x65_u8])
  CLSID_RDPSRAPIFrameBuffer = LibC::GUID.new(0xa4f66bcc_u32, 0x538e_u16, 0x4101_u16, StaticArray[0x95_u8, 0x1d_u8, 0x30_u8, 0x84_u8, 0x7a_u8, 0xdb_u8, 0x51_u8, 0x1_u8])
  CLSID_RDPTransportStreamBuffer = LibC::GUID.new(0x8d4a1c69_u32, 0xf17f_u16, 0x4549_u16, StaticArray[0xa6_u8, 0x99_u8, 0x76_u8, 0x1c_u8, 0x6e_u8, 0x6b_u8, 0x5c_u8, 0xa_u8])
  CLSID_RDPTransportStreamEvents = LibC::GUID.new(0x31e3ab20_u32, 0x5350_u16, 0x483f_u16, StaticArray[0x9d_u8, 0xc6_u8, 0x67_u8, 0x48_u8, 0x66_u8, 0x5e_u8, 0xfd_u8, 0xeb_u8])


  enum CTRL_LEVEL : Int32
    CTRL_LEVEL_MIN = 0
    CTRL_LEVEL_INVALID = 0
    CTRL_LEVEL_NONE = 1
    CTRL_LEVEL_VIEW = 2
    CTRL_LEVEL_INTERACTIVE = 3
    CTRL_LEVEL_REQCTRL_VIEW = 4
    CTRL_LEVEL_REQCTRL_INTERACTIVE = 5
    CTRL_LEVEL_MAX = 5
  end

  enum ATTENDEE_DISCONNECT_REASON : Int32
    ATTENDEE_DISCONNECT_REASON_MIN = 0
    ATTENDEE_DISCONNECT_REASON_APP = 0
    ATTENDEE_DISCONNECT_REASON_ERR = 1
    ATTENDEE_DISCONNECT_REASON_CLI = 2
    ATTENDEE_DISCONNECT_REASON_MAX = 2
  end

  enum CHANNEL_PRIORITY : Int32
    CHANNEL_PRIORITY_LO = 0
    CHANNEL_PRIORITY_MED = 1
    CHANNEL_PRIORITY_HI = 2
  end

  enum CHANNEL_FLAGS : Int32
    CHANNEL_FLAGS_LEGACY = 1
    CHANNEL_FLAGS_UNCOMPRESSED = 2
    CHANNEL_FLAGS_DYNAMIC = 4
  end

  enum CHANNEL_ACCESS_ENUM : Int32
    CHANNEL_ACCESS_ENUM_NONE = 0
    CHANNEL_ACCESS_ENUM_SENDRECEIVE = 1
  end

  enum RDPENCOMAPI_ATTENDEE_FLAGS : Int32
    ATTENDEE_FLAGS_LOCAL = 1
  end

  enum RDPSRAPI_WND_FLAGS : Int32
    WND_FLAG_PRIVILEGED = 1
  end

  enum RDPSRAPI_APP_FLAGS : Int32
    APP_FLAG_PRIVILEGED = 1
  end

  enum RDPSRAPI_MOUSE_BUTTON_TYPE : Int32
    RDPSRAPI_MOUSE_BUTTON_BUTTON1 = 0
    RDPSRAPI_MOUSE_BUTTON_BUTTON2 = 1
    RDPSRAPI_MOUSE_BUTTON_BUTTON3 = 2
    RDPSRAPI_MOUSE_BUTTON_XBUTTON1 = 3
    RDPSRAPI_MOUSE_BUTTON_XBUTTON2 = 4
    RDPSRAPI_MOUSE_BUTTON_XBUTTON3 = 5
  end

  enum RDPSRAPI_KBD_CODE_TYPE : Int32
    RDPSRAPI_KBD_CODE_SCANCODE = 0
    RDPSRAPI_KBD_CODE_UNICODE = 1
  end

  enum RDPSRAPI_KBD_SYNC_FLAG : Int32
    RDPSRAPI_KBD_SYNC_FLAG_SCROLL_LOCK = 1
    RDPSRAPI_KBD_SYNC_FLAG_NUM_LOCK = 2
    RDPSRAPI_KBD_SYNC_FLAG_CAPS_LOCK = 4
    RDPSRAPI_KBD_SYNC_FLAG_KANA_LOCK = 8
  end

  enum MIDL___MIDL_itf_rdpencomapi_0000_0027_0001 : Int32
    CONST_MAX_CHANNEL_MESSAGE_SIZE = 1024
    CONST_MAX_CHANNEL_NAME_LEN = 8
    CONST_MAX_LEGACY_CHANNEL_MESSAGE_SIZE = 409600
    CONST_ATTENDEE_ID_EVERYONE = -1
    CONST_ATTENDEE_ID_HOST = 0
    CONST_CONN_INTERVAL = 50
    CONST_ATTENDEE_ID_DEFAULT = -1
  end

  struct ReferenceRemainingTypes__
    __ctrl_level__ : CTRL_LEVEL
    __attendee_disconnect_reason__ : ATTENDEE_DISCONNECT_REASON
    __channel_priority__ : CHANNEL_PRIORITY
    __channel_flags__ : CHANNEL_FLAGS
    __channel_access_enum__ : CHANNEL_ACCESS_ENUM
    __rdpencomapi_attendee_flags__ : RDPENCOMAPI_ATTENDEE_FLAGS
    __rdpsrapi_wnd_flags__ : RDPSRAPI_WND_FLAGS
    __rdpsrapi_app_flags__ : RDPSRAPI_APP_FLAGS
  end


  struct IRDPSRAPIDebugVTbl
    query_interface : Proc(IRDPSRAPIDebug*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIDebug*, UInt32)
    release : Proc(IRDPSRAPIDebug*, UInt32)
    put_clx_cmd_line : Proc(IRDPSRAPIDebug*, UInt8*, HRESULT)
    get_clx_cmd_line : Proc(IRDPSRAPIDebug*, UInt8**, HRESULT)
  end

  IRDPSRAPIDebug_GUID = "aa1e42b5-496d-4ca4-a690-348dcb2ec4ad"
  IID_IRDPSRAPIDebug = LibC::GUID.new(0xaa1e42b5_u32, 0x496d_u16, 0x4ca4_u16, StaticArray[0xa6_u8, 0x90_u8, 0x34_u8, 0x8d_u8, 0xcb_u8, 0x2e_u8, 0xc4_u8, 0xad_u8])
  struct IRDPSRAPIDebug
    lpVtbl : IRDPSRAPIDebugVTbl*
  end

  struct IRDPSRAPIPerfCounterLoggerVTbl
    query_interface : Proc(IRDPSRAPIPerfCounterLogger*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIPerfCounterLogger*, UInt32)
    release : Proc(IRDPSRAPIPerfCounterLogger*, UInt32)
    log_value : Proc(IRDPSRAPIPerfCounterLogger*, Int64, HRESULT)
  end

  IRDPSRAPIPerfCounterLogger_GUID = "071c2533-0fa4-4e8f-ae83-9c10b4305ab5"
  IID_IRDPSRAPIPerfCounterLogger = LibC::GUID.new(0x71c2533_u32, 0xfa4_u16, 0x4e8f_u16, StaticArray[0xae_u8, 0x83_u8, 0x9c_u8, 0x10_u8, 0xb4_u8, 0x30_u8, 0x5a_u8, 0xb5_u8])
  struct IRDPSRAPIPerfCounterLogger
    lpVtbl : IRDPSRAPIPerfCounterLoggerVTbl*
  end

  struct IRDPSRAPIPerfCounterLoggingManagerVTbl
    query_interface : Proc(IRDPSRAPIPerfCounterLoggingManager*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIPerfCounterLoggingManager*, UInt32)
    release : Proc(IRDPSRAPIPerfCounterLoggingManager*, UInt32)
    create_logger : Proc(IRDPSRAPIPerfCounterLoggingManager*, UInt8*, IRDPSRAPIPerfCounterLogger*, HRESULT)
  end

  IRDPSRAPIPerfCounterLoggingManager_GUID = "9a512c86-ac6e-4a8e-b1a4-fcef363f6e64"
  IID_IRDPSRAPIPerfCounterLoggingManager = LibC::GUID.new(0x9a512c86_u32, 0xac6e_u16, 0x4a8e_u16, StaticArray[0xb1_u8, 0xa4_u8, 0xfc_u8, 0xef_u8, 0x36_u8, 0x3f_u8, 0x6e_u8, 0x64_u8])
  struct IRDPSRAPIPerfCounterLoggingManager
    lpVtbl : IRDPSRAPIPerfCounterLoggingManagerVTbl*
  end

  struct IRDPSRAPIAudioStreamVTbl
    query_interface : Proc(IRDPSRAPIAudioStream*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIAudioStream*, UInt32)
    release : Proc(IRDPSRAPIAudioStream*, UInt32)
    initialize : Proc(IRDPSRAPIAudioStream*, Int64*, HRESULT)
    start : Proc(IRDPSRAPIAudioStream*, HRESULT)
    stop : Proc(IRDPSRAPIAudioStream*, HRESULT)
    get_buffer : Proc(IRDPSRAPIAudioStream*, UInt8**, UInt32*, UInt64*, HRESULT)
    free_buffer : Proc(IRDPSRAPIAudioStream*, HRESULT)
  end

  IRDPSRAPIAudioStream_GUID = "e3e30ef9-89c6-4541-ba3b-19336ac6d31c"
  IID_IRDPSRAPIAudioStream = LibC::GUID.new(0xe3e30ef9_u32, 0x89c6_u16, 0x4541_u16, StaticArray[0xba_u8, 0x3b_u8, 0x19_u8, 0x33_u8, 0x6a_u8, 0xc6_u8, 0xd3_u8, 0x1c_u8])
  struct IRDPSRAPIAudioStream
    lpVtbl : IRDPSRAPIAudioStreamVTbl*
  end

  struct IRDPSRAPIClipboardUseEventsVTbl
    query_interface : Proc(IRDPSRAPIClipboardUseEvents*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIClipboardUseEvents*, UInt32)
    release : Proc(IRDPSRAPIClipboardUseEvents*, UInt32)
    on_paste_from_clipboard : Proc(IRDPSRAPIClipboardUseEvents*, UInt32, IDispatch, Int16*, HRESULT)
  end

  IRDPSRAPIClipboardUseEvents_GUID = "d559f59a-7a27-4138-8763-247ce5f659a8"
  IID_IRDPSRAPIClipboardUseEvents = LibC::GUID.new(0xd559f59a_u32, 0x7a27_u16, 0x4138_u16, StaticArray[0x87_u8, 0x63_u8, 0x24_u8, 0x7c_u8, 0xe5_u8, 0xf6_u8, 0x59_u8, 0xa8_u8])
  struct IRDPSRAPIClipboardUseEvents
    lpVtbl : IRDPSRAPIClipboardUseEventsVTbl*
  end

  struct IRDPSRAPIWindowVTbl
    query_interface : Proc(IRDPSRAPIWindow*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIWindow*, UInt32)
    release : Proc(IRDPSRAPIWindow*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIWindow*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIWindow*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIWindow*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIWindow*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_id : Proc(IRDPSRAPIWindow*, Int32*, HRESULT)
    get_application : Proc(IRDPSRAPIWindow*, IRDPSRAPIApplication*, HRESULT)
    get_shared : Proc(IRDPSRAPIWindow*, Int16*, HRESULT)
    put_shared : Proc(IRDPSRAPIWindow*, Int16, HRESULT)
    get_name : Proc(IRDPSRAPIWindow*, UInt8**, HRESULT)
    show : Proc(IRDPSRAPIWindow*, HRESULT)
    get_flags : Proc(IRDPSRAPIWindow*, UInt32*, HRESULT)
  end

  IRDPSRAPIWindow_GUID = "beafe0f9-c77b-4933-ba9f-a24cddcc27cf"
  IID_IRDPSRAPIWindow = LibC::GUID.new(0xbeafe0f9_u32, 0xc77b_u16, 0x4933_u16, StaticArray[0xba_u8, 0x9f_u8, 0xa2_u8, 0x4c_u8, 0xdd_u8, 0xcc_u8, 0x27_u8, 0xcf_u8])
  struct IRDPSRAPIWindow
    lpVtbl : IRDPSRAPIWindowVTbl*
  end

  struct IRDPSRAPIWindowListVTbl
    query_interface : Proc(IRDPSRAPIWindowList*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIWindowList*, UInt32)
    release : Proc(IRDPSRAPIWindowList*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIWindowList*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIWindowList*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIWindowList*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIWindowList*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get__new_enum : Proc(IRDPSRAPIWindowList*, IUnknown*, HRESULT)
    get_item : Proc(IRDPSRAPIWindowList*, Int32, IRDPSRAPIWindow*, HRESULT)
  end

  IRDPSRAPIWindowList_GUID = "8a05ce44-715a-4116-a189-a118f30a07bd"
  IID_IRDPSRAPIWindowList = LibC::GUID.new(0x8a05ce44_u32, 0x715a_u16, 0x4116_u16, StaticArray[0xa1_u8, 0x89_u8, 0xa1_u8, 0x18_u8, 0xf3_u8, 0xa_u8, 0x7_u8, 0xbd_u8])
  struct IRDPSRAPIWindowList
    lpVtbl : IRDPSRAPIWindowListVTbl*
  end

  struct IRDPSRAPIApplicationVTbl
    query_interface : Proc(IRDPSRAPIApplication*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIApplication*, UInt32)
    release : Proc(IRDPSRAPIApplication*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIApplication*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIApplication*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIApplication*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIApplication*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_windows : Proc(IRDPSRAPIApplication*, IRDPSRAPIWindowList*, HRESULT)
    get_id : Proc(IRDPSRAPIApplication*, Int32*, HRESULT)
    get_shared : Proc(IRDPSRAPIApplication*, Int16*, HRESULT)
    put_shared : Proc(IRDPSRAPIApplication*, Int16, HRESULT)
    get_name : Proc(IRDPSRAPIApplication*, UInt8**, HRESULT)
    get_flags : Proc(IRDPSRAPIApplication*, UInt32*, HRESULT)
  end

  IRDPSRAPIApplication_GUID = "41e7a09d-eb7a-436e-935d-780ca2628324"
  IID_IRDPSRAPIApplication = LibC::GUID.new(0x41e7a09d_u32, 0xeb7a_u16, 0x436e_u16, StaticArray[0x93_u8, 0x5d_u8, 0x78_u8, 0xc_u8, 0xa2_u8, 0x62_u8, 0x83_u8, 0x24_u8])
  struct IRDPSRAPIApplication
    lpVtbl : IRDPSRAPIApplicationVTbl*
  end

  struct IRDPSRAPIApplicationListVTbl
    query_interface : Proc(IRDPSRAPIApplicationList*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIApplicationList*, UInt32)
    release : Proc(IRDPSRAPIApplicationList*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIApplicationList*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIApplicationList*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIApplicationList*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIApplicationList*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get__new_enum : Proc(IRDPSRAPIApplicationList*, IUnknown*, HRESULT)
    get_item : Proc(IRDPSRAPIApplicationList*, Int32, IRDPSRAPIApplication*, HRESULT)
  end

  IRDPSRAPIApplicationList_GUID = "d4b4aeb3-22dc-4837-b3b6-42ea2517849a"
  IID_IRDPSRAPIApplicationList = LibC::GUID.new(0xd4b4aeb3_u32, 0x22dc_u16, 0x4837_u16, StaticArray[0xb3_u8, 0xb6_u8, 0x42_u8, 0xea_u8, 0x25_u8, 0x17_u8, 0x84_u8, 0x9a_u8])
  struct IRDPSRAPIApplicationList
    lpVtbl : IRDPSRAPIApplicationListVTbl*
  end

  struct IRDPSRAPIApplicationFilterVTbl
    query_interface : Proc(IRDPSRAPIApplicationFilter*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIApplicationFilter*, UInt32)
    release : Proc(IRDPSRAPIApplicationFilter*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIApplicationFilter*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIApplicationFilter*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIApplicationFilter*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIApplicationFilter*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_applications : Proc(IRDPSRAPIApplicationFilter*, IRDPSRAPIApplicationList*, HRESULT)
    get_windows : Proc(IRDPSRAPIApplicationFilter*, IRDPSRAPIWindowList*, HRESULT)
    get_enabled : Proc(IRDPSRAPIApplicationFilter*, Int16*, HRESULT)
    put_enabled : Proc(IRDPSRAPIApplicationFilter*, Int16, HRESULT)
  end

  IRDPSRAPIApplicationFilter_GUID = "d20f10ca-6637-4f06-b1d5-277ea7e5160d"
  IID_IRDPSRAPIApplicationFilter = LibC::GUID.new(0xd20f10ca_u32, 0x6637_u16, 0x4f06_u16, StaticArray[0xb1_u8, 0xd5_u8, 0x27_u8, 0x7e_u8, 0xa7_u8, 0xe5_u8, 0x16_u8, 0xd_u8])
  struct IRDPSRAPIApplicationFilter
    lpVtbl : IRDPSRAPIApplicationFilterVTbl*
  end

  struct IRDPSRAPISessionPropertiesVTbl
    query_interface : Proc(IRDPSRAPISessionProperties*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPISessionProperties*, UInt32)
    release : Proc(IRDPSRAPISessionProperties*, UInt32)
    get_type_info_count : Proc(IRDPSRAPISessionProperties*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPISessionProperties*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPISessionProperties*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPISessionProperties*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_property : Proc(IRDPSRAPISessionProperties*, UInt8*, VARIANT*, HRESULT)
    put_property : Proc(IRDPSRAPISessionProperties*, UInt8*, VARIANT, HRESULT)
  end

  IRDPSRAPISessionProperties_GUID = "339b24f2-9bc0-4f16-9aac-f165433d13d4"
  IID_IRDPSRAPISessionProperties = LibC::GUID.new(0x339b24f2_u32, 0x9bc0_u16, 0x4f16_u16, StaticArray[0x9a_u8, 0xac_u8, 0xf1_u8, 0x65_u8, 0x43_u8, 0x3d_u8, 0x13_u8, 0xd4_u8])
  struct IRDPSRAPISessionProperties
    lpVtbl : IRDPSRAPISessionPropertiesVTbl*
  end

  struct IRDPSRAPIInvitationVTbl
    query_interface : Proc(IRDPSRAPIInvitation*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIInvitation*, UInt32)
    release : Proc(IRDPSRAPIInvitation*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIInvitation*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIInvitation*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIInvitation*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIInvitation*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_connection_string : Proc(IRDPSRAPIInvitation*, UInt8**, HRESULT)
    get_group_name : Proc(IRDPSRAPIInvitation*, UInt8**, HRESULT)
    get_password : Proc(IRDPSRAPIInvitation*, UInt8**, HRESULT)
    get_attendee_limit : Proc(IRDPSRAPIInvitation*, Int32*, HRESULT)
    put_attendee_limit : Proc(IRDPSRAPIInvitation*, Int32, HRESULT)
    get_revoked : Proc(IRDPSRAPIInvitation*, Int16*, HRESULT)
    put_revoked : Proc(IRDPSRAPIInvitation*, Int16, HRESULT)
  end

  IRDPSRAPIInvitation_GUID = "4fac1d43-fc51-45bb-b1b4-2b53aa562fa3"
  IID_IRDPSRAPIInvitation = LibC::GUID.new(0x4fac1d43_u32, 0xfc51_u16, 0x45bb_u16, StaticArray[0xb1_u8, 0xb4_u8, 0x2b_u8, 0x53_u8, 0xaa_u8, 0x56_u8, 0x2f_u8, 0xa3_u8])
  struct IRDPSRAPIInvitation
    lpVtbl : IRDPSRAPIInvitationVTbl*
  end

  struct IRDPSRAPIInvitationManagerVTbl
    query_interface : Proc(IRDPSRAPIInvitationManager*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIInvitationManager*, UInt32)
    release : Proc(IRDPSRAPIInvitationManager*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIInvitationManager*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIInvitationManager*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIInvitationManager*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIInvitationManager*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get__new_enum : Proc(IRDPSRAPIInvitationManager*, IUnknown*, HRESULT)
    get_item : Proc(IRDPSRAPIInvitationManager*, VARIANT, IRDPSRAPIInvitation*, HRESULT)
    get_count : Proc(IRDPSRAPIInvitationManager*, Int32*, HRESULT)
    create_invitation : Proc(IRDPSRAPIInvitationManager*, UInt8*, UInt8*, UInt8*, Int32, IRDPSRAPIInvitation*, HRESULT)
  end

  IRDPSRAPIInvitationManager_GUID = "4722b049-92c3-4c2d-8a65-f7348f644dcf"
  IID_IRDPSRAPIInvitationManager = LibC::GUID.new(0x4722b049_u32, 0x92c3_u16, 0x4c2d_u16, StaticArray[0x8a_u8, 0x65_u8, 0xf7_u8, 0x34_u8, 0x8f_u8, 0x64_u8, 0x4d_u8, 0xcf_u8])
  struct IRDPSRAPIInvitationManager
    lpVtbl : IRDPSRAPIInvitationManagerVTbl*
  end

  struct IRDPSRAPITcpConnectionInfoVTbl
    query_interface : Proc(IRDPSRAPITcpConnectionInfo*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPITcpConnectionInfo*, UInt32)
    release : Proc(IRDPSRAPITcpConnectionInfo*, UInt32)
    get_type_info_count : Proc(IRDPSRAPITcpConnectionInfo*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPITcpConnectionInfo*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPITcpConnectionInfo*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPITcpConnectionInfo*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_protocol : Proc(IRDPSRAPITcpConnectionInfo*, Int32*, HRESULT)
    get_local_port : Proc(IRDPSRAPITcpConnectionInfo*, Int32*, HRESULT)
    get_local_ip : Proc(IRDPSRAPITcpConnectionInfo*, UInt8**, HRESULT)
    get_peer_port : Proc(IRDPSRAPITcpConnectionInfo*, Int32*, HRESULT)
    get_peer_ip : Proc(IRDPSRAPITcpConnectionInfo*, UInt8**, HRESULT)
  end

  IRDPSRAPITcpConnectionInfo_GUID = "f74049a4-3d06-4028-8193-0a8c29bc2452"
  IID_IRDPSRAPITcpConnectionInfo = LibC::GUID.new(0xf74049a4_u32, 0x3d06_u16, 0x4028_u16, StaticArray[0x81_u8, 0x93_u8, 0xa_u8, 0x8c_u8, 0x29_u8, 0xbc_u8, 0x24_u8, 0x52_u8])
  struct IRDPSRAPITcpConnectionInfo
    lpVtbl : IRDPSRAPITcpConnectionInfoVTbl*
  end

  struct IRDPSRAPIAttendeeVTbl
    query_interface : Proc(IRDPSRAPIAttendee*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIAttendee*, UInt32)
    release : Proc(IRDPSRAPIAttendee*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIAttendee*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIAttendee*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIAttendee*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIAttendee*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_id : Proc(IRDPSRAPIAttendee*, Int32*, HRESULT)
    get_remote_name : Proc(IRDPSRAPIAttendee*, UInt8**, HRESULT)
    get_control_level : Proc(IRDPSRAPIAttendee*, CTRL_LEVEL*, HRESULT)
    put_control_level : Proc(IRDPSRAPIAttendee*, CTRL_LEVEL, HRESULT)
    get_invitation : Proc(IRDPSRAPIAttendee*, IRDPSRAPIInvitation*, HRESULT)
    terminate_connection : Proc(IRDPSRAPIAttendee*, HRESULT)
    get_flags : Proc(IRDPSRAPIAttendee*, Int32*, HRESULT)
    get_connectivity_info : Proc(IRDPSRAPIAttendee*, IUnknown*, HRESULT)
  end

  IRDPSRAPIAttendee_GUID = "ec0671b3-1b78-4b80-a464-9132247543e3"
  IID_IRDPSRAPIAttendee = LibC::GUID.new(0xec0671b3_u32, 0x1b78_u16, 0x4b80_u16, StaticArray[0xa4_u8, 0x64_u8, 0x91_u8, 0x32_u8, 0x24_u8, 0x75_u8, 0x43_u8, 0xe3_u8])
  struct IRDPSRAPIAttendee
    lpVtbl : IRDPSRAPIAttendeeVTbl*
  end

  struct IRDPSRAPIAttendeeManagerVTbl
    query_interface : Proc(IRDPSRAPIAttendeeManager*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIAttendeeManager*, UInt32)
    release : Proc(IRDPSRAPIAttendeeManager*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIAttendeeManager*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIAttendeeManager*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIAttendeeManager*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIAttendeeManager*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get__new_enum : Proc(IRDPSRAPIAttendeeManager*, IUnknown*, HRESULT)
    get_item : Proc(IRDPSRAPIAttendeeManager*, Int32, IRDPSRAPIAttendee*, HRESULT)
  end

  IRDPSRAPIAttendeeManager_GUID = "ba3a37e8-33da-4749-8da0-07fa34da7944"
  IID_IRDPSRAPIAttendeeManager = LibC::GUID.new(0xba3a37e8_u32, 0x33da_u16, 0x4749_u16, StaticArray[0x8d_u8, 0xa0_u8, 0x7_u8, 0xfa_u8, 0x34_u8, 0xda_u8, 0x79_u8, 0x44_u8])
  struct IRDPSRAPIAttendeeManager
    lpVtbl : IRDPSRAPIAttendeeManagerVTbl*
  end

  struct IRDPSRAPIAttendeeDisconnectInfoVTbl
    query_interface : Proc(IRDPSRAPIAttendeeDisconnectInfo*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIAttendeeDisconnectInfo*, UInt32)
    release : Proc(IRDPSRAPIAttendeeDisconnectInfo*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIAttendeeDisconnectInfo*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIAttendeeDisconnectInfo*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIAttendeeDisconnectInfo*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIAttendeeDisconnectInfo*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_attendee : Proc(IRDPSRAPIAttendeeDisconnectInfo*, IRDPSRAPIAttendee*, HRESULT)
    get_reason : Proc(IRDPSRAPIAttendeeDisconnectInfo*, ATTENDEE_DISCONNECT_REASON*, HRESULT)
    get_code : Proc(IRDPSRAPIAttendeeDisconnectInfo*, Int32*, HRESULT)
  end

  IRDPSRAPIAttendeeDisconnectInfo_GUID = "c187689f-447c-44a1-9c14-fffbb3b7ec17"
  IID_IRDPSRAPIAttendeeDisconnectInfo = LibC::GUID.new(0xc187689f_u32, 0x447c_u16, 0x44a1_u16, StaticArray[0x9c_u8, 0x14_u8, 0xff_u8, 0xfb_u8, 0xb3_u8, 0xb7_u8, 0xec_u8, 0x17_u8])
  struct IRDPSRAPIAttendeeDisconnectInfo
    lpVtbl : IRDPSRAPIAttendeeDisconnectInfoVTbl*
  end

  struct IRDPSRAPIVirtualChannelVTbl
    query_interface : Proc(IRDPSRAPIVirtualChannel*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIVirtualChannel*, UInt32)
    release : Proc(IRDPSRAPIVirtualChannel*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIVirtualChannel*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIVirtualChannel*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIVirtualChannel*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIVirtualChannel*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    send_data : Proc(IRDPSRAPIVirtualChannel*, UInt8*, Int32, UInt32, HRESULT)
    set_access : Proc(IRDPSRAPIVirtualChannel*, Int32, CHANNEL_ACCESS_ENUM, HRESULT)
    get_name : Proc(IRDPSRAPIVirtualChannel*, UInt8**, HRESULT)
    get_flags : Proc(IRDPSRAPIVirtualChannel*, Int32*, HRESULT)
    get_priority : Proc(IRDPSRAPIVirtualChannel*, CHANNEL_PRIORITY*, HRESULT)
  end

  IRDPSRAPIVirtualChannel_GUID = "05e12f95-28b3-4c9a-8780-d0248574a1e0"
  IID_IRDPSRAPIVirtualChannel = LibC::GUID.new(0x5e12f95_u32, 0x28b3_u16, 0x4c9a_u16, StaticArray[0x87_u8, 0x80_u8, 0xd0_u8, 0x24_u8, 0x85_u8, 0x74_u8, 0xa1_u8, 0xe0_u8])
  struct IRDPSRAPIVirtualChannel
    lpVtbl : IRDPSRAPIVirtualChannelVTbl*
  end

  struct IRDPSRAPIVirtualChannelManagerVTbl
    query_interface : Proc(IRDPSRAPIVirtualChannelManager*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIVirtualChannelManager*, UInt32)
    release : Proc(IRDPSRAPIVirtualChannelManager*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIVirtualChannelManager*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIVirtualChannelManager*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIVirtualChannelManager*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIVirtualChannelManager*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get__new_enum : Proc(IRDPSRAPIVirtualChannelManager*, IUnknown*, HRESULT)
    get_item : Proc(IRDPSRAPIVirtualChannelManager*, VARIANT, IRDPSRAPIVirtualChannel*, HRESULT)
    create_virtual_channel : Proc(IRDPSRAPIVirtualChannelManager*, UInt8*, CHANNEL_PRIORITY, UInt32, IRDPSRAPIVirtualChannel*, HRESULT)
  end

  IRDPSRAPIVirtualChannelManager_GUID = "0d11c661-5d0d-4ee4-89df-2166ae1fdfed"
  IID_IRDPSRAPIVirtualChannelManager = LibC::GUID.new(0xd11c661_u32, 0x5d0d_u16, 0x4ee4_u16, StaticArray[0x89_u8, 0xdf_u8, 0x21_u8, 0x66_u8, 0xae_u8, 0x1f_u8, 0xdf_u8, 0xed_u8])
  struct IRDPSRAPIVirtualChannelManager
    lpVtbl : IRDPSRAPIVirtualChannelManagerVTbl*
  end

  struct IRDPSRAPIViewerVTbl
    query_interface : Proc(IRDPSRAPIViewer*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIViewer*, UInt32)
    release : Proc(IRDPSRAPIViewer*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIViewer*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIViewer*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIViewer*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIViewer*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    connect : Proc(IRDPSRAPIViewer*, UInt8*, UInt8*, UInt8*, HRESULT)
    disconnect : Proc(IRDPSRAPIViewer*, HRESULT)
    get_attendees : Proc(IRDPSRAPIViewer*, IRDPSRAPIAttendeeManager*, HRESULT)
    get_invitations : Proc(IRDPSRAPIViewer*, IRDPSRAPIInvitationManager*, HRESULT)
    get_application_filter : Proc(IRDPSRAPIViewer*, IRDPSRAPIApplicationFilter*, HRESULT)
    get_virtual_channel_manager : Proc(IRDPSRAPIViewer*, IRDPSRAPIVirtualChannelManager*, HRESULT)
    put_smart_sizing : Proc(IRDPSRAPIViewer*, Int16, HRESULT)
    get_smart_sizing : Proc(IRDPSRAPIViewer*, Int16*, HRESULT)
    request_control : Proc(IRDPSRAPIViewer*, CTRL_LEVEL, HRESULT)
    put_disconnected_text : Proc(IRDPSRAPIViewer*, UInt8*, HRESULT)
    get_disconnected_text : Proc(IRDPSRAPIViewer*, UInt8**, HRESULT)
    request_color_depth_change : Proc(IRDPSRAPIViewer*, Int32, HRESULT)
    get_properties : Proc(IRDPSRAPIViewer*, IRDPSRAPISessionProperties*, HRESULT)
    start_reverse_connect_listener : Proc(IRDPSRAPIViewer*, UInt8*, UInt8*, UInt8*, UInt8**, HRESULT)
  end

  IRDPSRAPIViewer_GUID = "c6bfcd38-8ce9-404d-8ae8-f31d00c65cb5"
  IID_IRDPSRAPIViewer = LibC::GUID.new(0xc6bfcd38_u32, 0x8ce9_u16, 0x404d_u16, StaticArray[0x8a_u8, 0xe8_u8, 0xf3_u8, 0x1d_u8, 0x0_u8, 0xc6_u8, 0x5c_u8, 0xb5_u8])
  struct IRDPSRAPIViewer
    lpVtbl : IRDPSRAPIViewerVTbl*
  end

  struct IRDPViewerInputSinkVTbl
    query_interface : Proc(IRDPViewerInputSink*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPViewerInputSink*, UInt32)
    release : Proc(IRDPViewerInputSink*, UInt32)
    send_mouse_button_event : Proc(IRDPViewerInputSink*, RDPSRAPI_MOUSE_BUTTON_TYPE, Int16, UInt32, UInt32, HRESULT)
    send_mouse_move_event : Proc(IRDPViewerInputSink*, UInt32, UInt32, HRESULT)
    send_mouse_wheel_event : Proc(IRDPViewerInputSink*, UInt16, HRESULT)
    send_keyboard_event : Proc(IRDPViewerInputSink*, RDPSRAPI_KBD_CODE_TYPE, UInt16, Int16, Int16, Int16, HRESULT)
    send_sync_event : Proc(IRDPViewerInputSink*, UInt32, HRESULT)
    begin_touch_frame : Proc(IRDPViewerInputSink*, HRESULT)
    add_touch_input : Proc(IRDPViewerInputSink*, UInt32, UInt32, Int32, Int32, HRESULT)
    end_touch_frame : Proc(IRDPViewerInputSink*, HRESULT)
  end

  IRDPViewerInputSink_GUID = "bb590853-a6c5-4a7b-8dd4-76b69eea12d5"
  IID_IRDPViewerInputSink = LibC::GUID.new(0xbb590853_u32, 0xa6c5_u16, 0x4a7b_u16, StaticArray[0x8d_u8, 0xd4_u8, 0x76_u8, 0xb6_u8, 0x9e_u8, 0xea_u8, 0x12_u8, 0xd5_u8])
  struct IRDPViewerInputSink
    lpVtbl : IRDPViewerInputSinkVTbl*
  end

  struct IRDPSRAPIFrameBufferVTbl
    query_interface : Proc(IRDPSRAPIFrameBuffer*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPIFrameBuffer*, UInt32)
    release : Proc(IRDPSRAPIFrameBuffer*, UInt32)
    get_type_info_count : Proc(IRDPSRAPIFrameBuffer*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPIFrameBuffer*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPIFrameBuffer*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPIFrameBuffer*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    get_width : Proc(IRDPSRAPIFrameBuffer*, Int32*, HRESULT)
    get_height : Proc(IRDPSRAPIFrameBuffer*, Int32*, HRESULT)
    get_bpp : Proc(IRDPSRAPIFrameBuffer*, Int32*, HRESULT)
    get_frame_buffer_bits : Proc(IRDPSRAPIFrameBuffer*, Int32, Int32, Int32, Int32, SAFEARRAY**, HRESULT)
  end

  IRDPSRAPIFrameBuffer_GUID = "3d67e7d2-b27b-448e-81b3-c6110ed8b4be"
  IID_IRDPSRAPIFrameBuffer = LibC::GUID.new(0x3d67e7d2_u32, 0xb27b_u16, 0x448e_u16, StaticArray[0x81_u8, 0xb3_u8, 0xc6_u8, 0x11_u8, 0xe_u8, 0xd8_u8, 0xb4_u8, 0xbe_u8])
  struct IRDPSRAPIFrameBuffer
    lpVtbl : IRDPSRAPIFrameBufferVTbl*
  end

  struct IRDPSRAPITransportStreamBufferVTbl
    query_interface : Proc(IRDPSRAPITransportStreamBuffer*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPITransportStreamBuffer*, UInt32)
    release : Proc(IRDPSRAPITransportStreamBuffer*, UInt32)
    get_storage : Proc(IRDPSRAPITransportStreamBuffer*, UInt8**, HRESULT)
    get_storage_size : Proc(IRDPSRAPITransportStreamBuffer*, Int32*, HRESULT)
    get_payload_size : Proc(IRDPSRAPITransportStreamBuffer*, Int32*, HRESULT)
    put_payload_size : Proc(IRDPSRAPITransportStreamBuffer*, Int32, HRESULT)
    get_payload_offset : Proc(IRDPSRAPITransportStreamBuffer*, Int32*, HRESULT)
    put_payload_offset : Proc(IRDPSRAPITransportStreamBuffer*, Int32, HRESULT)
    get_flags : Proc(IRDPSRAPITransportStreamBuffer*, Int32*, HRESULT)
    put_flags : Proc(IRDPSRAPITransportStreamBuffer*, Int32, HRESULT)
    get_context : Proc(IRDPSRAPITransportStreamBuffer*, IUnknown*, HRESULT)
    put_context : Proc(IRDPSRAPITransportStreamBuffer*, IUnknown, HRESULT)
  end

  IRDPSRAPITransportStreamBuffer_GUID = "81c80290-5085-44b0-b460-f865c39cb4a9"
  IID_IRDPSRAPITransportStreamBuffer = LibC::GUID.new(0x81c80290_u32, 0x5085_u16, 0x44b0_u16, StaticArray[0xb4_u8, 0x60_u8, 0xf8_u8, 0x65_u8, 0xc3_u8, 0x9c_u8, 0xb4_u8, 0xa9_u8])
  struct IRDPSRAPITransportStreamBuffer
    lpVtbl : IRDPSRAPITransportStreamBufferVTbl*
  end

  struct IRDPSRAPITransportStreamEventsVTbl
    query_interface : Proc(IRDPSRAPITransportStreamEvents*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPITransportStreamEvents*, UInt32)
    release : Proc(IRDPSRAPITransportStreamEvents*, UInt32)
    on_write_completed : Proc(IRDPSRAPITransportStreamEvents*, IRDPSRAPITransportStreamBuffer, Void)
    on_read_completed : Proc(IRDPSRAPITransportStreamEvents*, IRDPSRAPITransportStreamBuffer, Void)
    on_stream_closed : Proc(IRDPSRAPITransportStreamEvents*, HRESULT, Void)
  end

  IRDPSRAPITransportStreamEvents_GUID = "ea81c254-f5af-4e40-982e-3e63bb595276"
  IID_IRDPSRAPITransportStreamEvents = LibC::GUID.new(0xea81c254_u32, 0xf5af_u16, 0x4e40_u16, StaticArray[0x98_u8, 0x2e_u8, 0x3e_u8, 0x63_u8, 0xbb_u8, 0x59_u8, 0x52_u8, 0x76_u8])
  struct IRDPSRAPITransportStreamEvents
    lpVtbl : IRDPSRAPITransportStreamEventsVTbl*
  end

  struct IRDPSRAPITransportStreamVTbl
    query_interface : Proc(IRDPSRAPITransportStream*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPITransportStream*, UInt32)
    release : Proc(IRDPSRAPITransportStream*, UInt32)
    alloc_buffer : Proc(IRDPSRAPITransportStream*, Int32, IRDPSRAPITransportStreamBuffer*, HRESULT)
    free_buffer : Proc(IRDPSRAPITransportStream*, IRDPSRAPITransportStreamBuffer, HRESULT)
    write_buffer : Proc(IRDPSRAPITransportStream*, IRDPSRAPITransportStreamBuffer, HRESULT)
    read_buffer : Proc(IRDPSRAPITransportStream*, IRDPSRAPITransportStreamBuffer, HRESULT)
    open : Proc(IRDPSRAPITransportStream*, IRDPSRAPITransportStreamEvents, HRESULT)
    close : Proc(IRDPSRAPITransportStream*, HRESULT)
  end

  IRDPSRAPITransportStream_GUID = "36cfa065-43bb-4ef7-aed7-9b88a5053036"
  IID_IRDPSRAPITransportStream = LibC::GUID.new(0x36cfa065_u32, 0x43bb_u16, 0x4ef7_u16, StaticArray[0xae_u8, 0xd7_u8, 0x9b_u8, 0x88_u8, 0xa5_u8, 0x5_u8, 0x30_u8, 0x36_u8])
  struct IRDPSRAPITransportStream
    lpVtbl : IRDPSRAPITransportStreamVTbl*
  end

  struct IRDPSRAPISharingSessionVTbl
    query_interface : Proc(IRDPSRAPISharingSession*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPISharingSession*, UInt32)
    release : Proc(IRDPSRAPISharingSession*, UInt32)
    get_type_info_count : Proc(IRDPSRAPISharingSession*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPISharingSession*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPISharingSession*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPISharingSession*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    open : Proc(IRDPSRAPISharingSession*, HRESULT)
    close : Proc(IRDPSRAPISharingSession*, HRESULT)
    put_color_depth : Proc(IRDPSRAPISharingSession*, Int32, HRESULT)
    get_color_depth : Proc(IRDPSRAPISharingSession*, Int32*, HRESULT)
    get_properties : Proc(IRDPSRAPISharingSession*, IRDPSRAPISessionProperties*, HRESULT)
    get_attendees : Proc(IRDPSRAPISharingSession*, IRDPSRAPIAttendeeManager*, HRESULT)
    get_invitations : Proc(IRDPSRAPISharingSession*, IRDPSRAPIInvitationManager*, HRESULT)
    get_application_filter : Proc(IRDPSRAPISharingSession*, IRDPSRAPIApplicationFilter*, HRESULT)
    get_virtual_channel_manager : Proc(IRDPSRAPISharingSession*, IRDPSRAPIVirtualChannelManager*, HRESULT)
    pause : Proc(IRDPSRAPISharingSession*, HRESULT)
    resume : Proc(IRDPSRAPISharingSession*, HRESULT)
    connect_to_client : Proc(IRDPSRAPISharingSession*, UInt8*, HRESULT)
    set_desktop_shared_rect : Proc(IRDPSRAPISharingSession*, Int32, Int32, Int32, Int32, HRESULT)
    get_desktop_shared_rect : Proc(IRDPSRAPISharingSession*, Int32*, Int32*, Int32*, Int32*, HRESULT)
  end

  IRDPSRAPISharingSession_GUID = "eeb20886-e470-4cf6-842b-2739c0ec5cfb"
  IID_IRDPSRAPISharingSession = LibC::GUID.new(0xeeb20886_u32, 0xe470_u16, 0x4cf6_u16, StaticArray[0x84_u8, 0x2b_u8, 0x27_u8, 0x39_u8, 0xc0_u8, 0xec_u8, 0x5c_u8, 0xfb_u8])
  struct IRDPSRAPISharingSession
    lpVtbl : IRDPSRAPISharingSessionVTbl*
  end

  struct IRDPSRAPISharingSession2VTbl
    query_interface : Proc(IRDPSRAPISharingSession2*, Guid*, Void**, HRESULT)
    add_ref : Proc(IRDPSRAPISharingSession2*, UInt32)
    release : Proc(IRDPSRAPISharingSession2*, UInt32)
    get_type_info_count : Proc(IRDPSRAPISharingSession2*, UInt32*, HRESULT)
    get_type_info : Proc(IRDPSRAPISharingSession2*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IRDPSRAPISharingSession2*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IRDPSRAPISharingSession2*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
    open : Proc(IRDPSRAPISharingSession2*, HRESULT)
    close : Proc(IRDPSRAPISharingSession2*, HRESULT)
    put_color_depth : Proc(IRDPSRAPISharingSession2*, Int32, HRESULT)
    get_color_depth : Proc(IRDPSRAPISharingSession2*, Int32*, HRESULT)
    get_properties : Proc(IRDPSRAPISharingSession2*, IRDPSRAPISessionProperties*, HRESULT)
    get_attendees : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIAttendeeManager*, HRESULT)
    get_invitations : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIInvitationManager*, HRESULT)
    get_application_filter : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIApplicationFilter*, HRESULT)
    get_virtual_channel_manager : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIVirtualChannelManager*, HRESULT)
    pause : Proc(IRDPSRAPISharingSession2*, HRESULT)
    resume : Proc(IRDPSRAPISharingSession2*, HRESULT)
    connect_to_client : Proc(IRDPSRAPISharingSession2*, UInt8*, HRESULT)
    set_desktop_shared_rect : Proc(IRDPSRAPISharingSession2*, Int32, Int32, Int32, Int32, HRESULT)
    get_desktop_shared_rect : Proc(IRDPSRAPISharingSession2*, Int32*, Int32*, Int32*, Int32*, HRESULT)
    connect_using_transport_stream : Proc(IRDPSRAPISharingSession2*, IRDPSRAPITransportStream, UInt8*, UInt8*, HRESULT)
    get_frame_buffer : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIFrameBuffer*, HRESULT)
    send_control_level_change_response : Proc(IRDPSRAPISharingSession2*, IRDPSRAPIAttendee, CTRL_LEVEL, Int32, HRESULT)
  end

  IRDPSRAPISharingSession2_GUID = "fee4ee57-e3e8-4205-8fb0-8fd1d0675c21"
  IID_IRDPSRAPISharingSession2 = LibC::GUID.new(0xfee4ee57_u32, 0xe3e8_u16, 0x4205_u16, StaticArray[0x8f_u8, 0xb0_u8, 0x8f_u8, 0xd1_u8, 0xd0_u8, 0x67_u8, 0x5c_u8, 0x21_u8])
  struct IRDPSRAPISharingSession2
    lpVtbl : IRDPSRAPISharingSession2VTbl*
  end

  struct IIRDPSessionEventsVTbl
    query_interface : Proc(IIRDPSessionEvents*, Guid*, Void**, HRESULT)
    add_ref : Proc(IIRDPSessionEvents*, UInt32)
    release : Proc(IIRDPSessionEvents*, UInt32)
    get_type_info_count : Proc(IIRDPSessionEvents*, UInt32*, HRESULT)
    get_type_info : Proc(IIRDPSessionEvents*, UInt32, UInt32, ITypeInfo*, HRESULT)
    get_i_ds_of_names : Proc(IIRDPSessionEvents*, Guid*, LibC::LPWSTR*, UInt32, UInt32, Int32*, HRESULT)
    invoke : Proc(IIRDPSessionEvents*, Int32, Guid*, UInt32, UInt16, DISPPARAMS*, VARIANT*, EXCEPINFO*, UInt32*, HRESULT)
  end

  IIRDPSessionEvents_GUID = "98a97042-6698-40e9-8efd-b3200990004b"
  IID_IIRDPSessionEvents = LibC::GUID.new(0x98a97042_u32, 0x6698_u16, 0x40e9_u16, StaticArray[0x8e_u8, 0xfd_u8, 0xb3_u8, 0x20_u8, 0x9_u8, 0x90_u8, 0x0_u8, 0x4b_u8])
  struct IIRDPSessionEvents
    lpVtbl : IIRDPSessionEventsVTbl*
  end

end