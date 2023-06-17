require "../system/com.cr"
require "../foundation.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
lib LibWin32
  WCN_E_PEER_NOT_FOUND = -2147206143_i32
  WCN_E_AUTHENTICATION_FAILED = -2147206142_i32
  WCN_E_CONNECTION_REJECTED = -2147206141_i32
  WCN_E_SESSION_TIMEDOUT = -2147206140_i32
  WCN_E_PROTOCOL_ERROR = -2147206139_i32
  WCN_VALUE_DT_CATEGORY_COMPUTER = 1_u32
  WCN_VALUE_DT_CATEGORY_INPUT_DEVICE = 2_u32
  WCN_VALUE_DT_CATEGORY_PRINTER = 3_u32
  WCN_VALUE_DT_CATEGORY_CAMERA = 4_u32
  WCN_VALUE_DT_CATEGORY_STORAGE = 5_u32
  WCN_VALUE_DT_CATEGORY_NETWORK_INFRASTRUCTURE = 6_u32
  WCN_VALUE_DT_CATEGORY_DISPLAY = 7_u32
  WCN_VALUE_DT_CATEGORY_MULTIMEDIA_DEVICE = 8_u32
  WCN_VALUE_DT_CATEGORY_GAMING_DEVICE = 9_u32
  WCN_VALUE_DT_CATEGORY_TELEPHONE = 10_u32
  WCN_VALUE_DT_CATEGORY_AUDIO_DEVICE = 11_u32
  WCN_VALUE_DT_CATEGORY_OTHER = 255_u32
  WCN_VALUE_DT_SUBTYPE_WIFI_OUI = 5304836_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__PC = 1_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__SERVER = 2_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__MEDIACENTER = 3_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__ULTRAMOBILEPC = 4_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__NOTEBOOK = 5_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__DESKTOP = 6_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__MID = 7_u32
  WCN_VALUE_DT_SUBTYPE_COMPUTER__NETBOOK = 8_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__KEYBOARD = 1_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__MOUSE = 2_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__JOYSTICK = 3_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__TRACKBALL = 4_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__GAMECONTROLLER = 5_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__REMOTE = 6_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__TOUCHSCREEN = 7_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__BIOMETRICREADER = 8_u32
  WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__BARCODEREADER = 9_u32
  WCN_VALUE_DT_SUBTYPE_PRINTER__PRINTER = 1_u32
  WCN_VALUE_DT_SUBTYPE_PRINTER__SCANNER = 2_u32
  WCN_VALUE_DT_SUBTYPE_PRINTER__FAX = 3_u32
  WCN_VALUE_DT_SUBTYPE_PRINTER__COPIER = 4_u32
  WCN_VALUE_DT_SUBTYPE_PRINTER__ALLINONE = 5_u32
  WCN_VALUE_DT_SUBTYPE_CAMERA__STILL_CAMERA = 1_u32
  WCN_VALUE_DT_SUBTYPE_CAMERA__VIDEO_CAMERA = 2_u32
  WCN_VALUE_DT_SUBTYPE_CAMERA__WEB_CAMERA = 3_u32
  WCN_VALUE_DT_SUBTYPE_CAMERA__SECURITY_CAMERA = 4_u32
  WCN_VALUE_DT_SUBTYPE_STORAGE__NAS = 1_u32
  WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__AP = 1_u32
  WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__ROUTER = 2_u32
  WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__SWITCH = 3_u32
  WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__GATEWAY = 4_u32
  WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__BRIDGE = 5_u32
  WCN_VALUE_DT_SUBTYPE_DISPLAY__TELEVISION = 1_u32
  WCN_VALUE_DT_SUBTYPE_DISPLAY__PICTURE_FRAME = 2_u32
  WCN_VALUE_DT_SUBTYPE_DISPLAY__PROJECTOR = 3_u32
  WCN_VALUE_DT_SUBTYPE_DISPLAY__MONITOR = 4_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__DAR = 1_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__PVR = 2_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__MCX = 3_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__SETTOPBOX = 4_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__MEDIA_SERVER_ADAPT_EXT = 5_u32
  WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__PVP = 6_u32
  WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__XBOX = 1_u32
  WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__XBOX360 = 2_u32
  WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__PLAYSTATION = 3_u32
  WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__CONSOLE_ADAPT = 4_u32
  WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__PORTABLE = 5_u32
  WCN_VALUE_DT_SUBTYPE_TELEPHONE__WINDOWS_MOBILE = 1_u32
  WCN_VALUE_DT_SUBTYPE_TELEPHONE__PHONE_SINGLEMODE = 2_u32
  WCN_VALUE_DT_SUBTYPE_TELEPHONE__PHONE_DUALMODE = 3_u32
  WCN_VALUE_DT_SUBTYPE_TELEPHONE__SMARTPHONE_SINGLEMODE = 4_u32
  WCN_VALUE_DT_SUBTYPE_TELEPHONE__SMARTPHONE_DUALMODE = 5_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__TUNER_RECEIVER = 1_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__SPEAKERS = 2_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__PMP = 3_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HEADSET = 4_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HEADPHONES = 5_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__MICROPHONE = 6_u32
  WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HOMETHEATER = 7_u32
  WCN_API_MAX_BUFFER_SIZE = 2096_u32
  WCN_MICROSOFT_VENDOR_ID = 311_u32
  WCN_NO_SUBTYPE = 4294967294_u32
  WCN_FLAG_DISCOVERY_VE = 1_u32
  WCN_FLAG_AUTHENTICATED_VE = 2_u32
  WCN_FLAG_ENCRYPTED_VE = 4_u32
  SID_WcnProvider = "c100beca-d33a-4a4b-bf23-bbef4663d017"
  PKEY_WCN_DeviceType_Category = PROPERTYKEY.new(LibC::GUID.new(0x88190b8b_u32, 0x4684_u16, 0x11da_u16, StaticArray[0xa2_u8, 0x6a_u8, 0x0_u8, 0x2_u8, 0xb3_u8, 0x98_u8, 0x8e_u8, 0x81_u8]), 16_u32)
  PKEY_WCN_DeviceType_SubCategoryOUI = PROPERTYKEY.new(LibC::GUID.new(0x88190b8b_u32, 0x4684_u16, 0x11da_u16, StaticArray[0xa2_u8, 0x6a_u8, 0x0_u8, 0x2_u8, 0xb3_u8, 0x98_u8, 0x8e_u8, 0x81_u8]), 17_u32)
  PKEY_WCN_DeviceType_SubCategory = PROPERTYKEY.new(LibC::GUID.new(0x88190b8b_u32, 0x4684_u16, 0x11da_u16, StaticArray[0xa2_u8, 0x6a_u8, 0x0_u8, 0x2_u8, 0xb3_u8, 0x98_u8, 0x8e_u8, 0x81_u8]), 18_u32)
  PKEY_WCN_SSID = PROPERTYKEY.new(LibC::GUID.new(0x88190b8b_u32, 0x4684_u16, 0x11da_u16, StaticArray[0xa2_u8, 0x6a_u8, 0x0_u8, 0x2_u8, 0xb3_u8, 0x98_u8, 0x8e_u8, 0x81_u8]), 32_u32)
  CLSID_WCNDeviceObject = LibC::GUID.new(0xc100bea7_u32, 0xd33a_u16, 0x4a4b_u16, StaticArray[0xbf_u8, 0x23_u8, 0xbb_u8, 0xef_u8, 0x46_u8, 0x63_u8, 0xd0_u8, 0x17_u8])


  enum WCN_ATTRIBUTE_TYPE : Int32
    WCN_TYPE_AP_CHANNEL = 0
    WCN_TYPE_ASSOCIATION_STATE = 1
    WCN_TYPE_AUTHENTICATION_TYPE = 2
    WCN_TYPE_AUTHENTICATION_TYPE_FLAGS = 3
    WCN_TYPE_AUTHENTICATOR = 4
    WCN_TYPE_CONFIG_METHODS = 5
    WCN_TYPE_CONFIGURATION_ERROR = 6
    WCN_TYPE_CONFIRMATION_URL4 = 7
    WCN_TYPE_CONFIRMATION_URL6 = 8
    WCN_TYPE_CONNECTION_TYPE = 9
    WCN_TYPE_CONNECTION_TYPE_FLAGS = 10
    WCN_TYPE_CREDENTIAL = 11
    WCN_TYPE_DEVICE_NAME = 12
    WCN_TYPE_DEVICE_PASSWORD_ID = 13
    WCN_TYPE_E_HASH1 = 14
    WCN_TYPE_E_HASH2 = 15
    WCN_TYPE_E_SNONCE1 = 16
    WCN_TYPE_E_SNONCE2 = 17
    WCN_TYPE_ENCRYPTED_SETTINGS = 18
    WCN_TYPE_ENCRYPTION_TYPE = 19
    WCN_TYPE_ENCRYPTION_TYPE_FLAGS = 20
    WCN_TYPE_ENROLLEE_NONCE = 21
    WCN_TYPE_FEATURE_ID = 22
    WCN_TYPE_IDENTITY = 23
    WCN_TYPE_IDENTITY_PROOF = 24
    WCN_TYPE_KEY_WRAP_AUTHENTICATOR = 25
    WCN_TYPE_KEY_IDENTIFIER = 26
    WCN_TYPE_MAC_ADDRESS = 27
    WCN_TYPE_MANUFACTURER = 28
    WCN_TYPE_MESSAGE_TYPE = 29
    WCN_TYPE_MODEL_NAME = 30
    WCN_TYPE_MODEL_NUMBER = 31
    WCN_TYPE_NETWORK_INDEX = 32
    WCN_TYPE_NETWORK_KEY = 33
    WCN_TYPE_NETWORK_KEY_INDEX = 34
    WCN_TYPE_NEW_DEVICE_NAME = 35
    WCN_TYPE_NEW_PASSWORD = 36
    WCN_TYPE_OOB_DEVICE_PASSWORD = 37
    WCN_TYPE_OS_VERSION = 38
    WCN_TYPE_POWER_LEVEL = 39
    WCN_TYPE_PSK_CURRENT = 40
    WCN_TYPE_PSK_MAX = 41
    WCN_TYPE_PUBLIC_KEY = 42
    WCN_TYPE_RADIO_ENABLED = 43
    WCN_TYPE_REBOOT = 44
    WCN_TYPE_REGISTRAR_CURRENT = 45
    WCN_TYPE_REGISTRAR_ESTABLISHED = 46
    WCN_TYPE_REGISTRAR_LIST = 47
    WCN_TYPE_REGISTRAR_MAX = 48
    WCN_TYPE_REGISTRAR_NONCE = 49
    WCN_TYPE_REQUEST_TYPE = 50
    WCN_TYPE_RESPONSE_TYPE = 51
    WCN_TYPE_RF_BANDS = 52
    WCN_TYPE_R_HASH1 = 53
    WCN_TYPE_R_HASH2 = 54
    WCN_TYPE_R_SNONCE1 = 55
    WCN_TYPE_R_SNONCE2 = 56
    WCN_TYPE_SELECTED_REGISTRAR = 57
    WCN_TYPE_SERIAL_NUMBER = 58
    WCN_TYPE_WI_FI_PROTECTED_SETUP_STATE = 59
    WCN_TYPE_SSID = 60
    WCN_TYPE_TOTAL_NETWORKS = 61
    WCN_TYPE_UUID_E = 62
    WCN_TYPE_UUID_R = 63
    WCN_TYPE_VENDOR_EXTENSION = 64
    WCN_TYPE_VERSION = 65
    WCN_TYPE_X_509_CERTIFICATE_REQUEST = 66
    WCN_TYPE_X_509_CERTIFICATE = 67
    WCN_TYPE_EAP_IDENTITY = 68
    WCN_TYPE_MESSAGE_COUNTER = 69
    WCN_TYPE_PUBLIC_KEY_HASH = 70
    WCN_TYPE_REKEY_KEY = 71
    WCN_TYPE_KEY_LIFETIME = 72
    WCN_TYPE_PERMITTED_CONFIG_METHODS = 73
    WCN_TYPE_SELECTED_REGISTRAR_CONFIG_METHODS = 74
    WCN_TYPE_PRIMARY_DEVICE_TYPE = 75
    WCN_TYPE_SECONDARY_DEVICE_TYPE_LIST = 76
    WCN_TYPE_PORTABLE_DEVICE = 77
    WCN_TYPE_AP_SETUP_LOCKED = 78
    WCN_TYPE_APPLICATION_EXTENSION = 79
    WCN_TYPE_EAP_TYPE = 80
    WCN_TYPE_INITIALIZATION_VECTOR = 81
    WCN_TYPE_KEY_PROVIDED_AUTOMATICALLY = 82
    WCN_TYPE_802_1X_ENABLED = 83
    WCN_TYPE_APPSESSIONKEY = 84
    WCN_TYPE_WEPTRANSMITKEY = 85
    WCN_TYPE_UUID = 86
    WCN_TYPE_PRIMARY_DEVICE_TYPE_CATEGORY = 87
    WCN_TYPE_PRIMARY_DEVICE_TYPE_SUBCATEGORY_OUI = 88
    WCN_TYPE_PRIMARY_DEVICE_TYPE_SUBCATEGORY = 89
    WCN_TYPE_CURRENT_SSID = 90
    WCN_TYPE_BSSID = 91
    WCN_TYPE_DOT11_MAC_ADDRESS = 92
    WCN_TYPE_AUTHORIZED_MACS = 93
    WCN_TYPE_NETWORK_KEY_SHAREABLE = 94
    WCN_TYPE_REQUEST_TO_ENROLL = 95
    WCN_TYPE_REQUESTED_DEVICE_TYPE = 96
    WCN_TYPE_SETTINGS_DELAY_TIME = 97
    WCN_TYPE_VERSION2 = 98
    WCN_TYPE_VENDOR_EXTENSION_WFA = 99
    WCN_NUM_ATTRIBUTE_TYPES = 100
  end

  enum WCN_VALUE_TYPE_VERSION : Int32
    WCN_VALUE_VERSION_1_0 = 16
    WCN_VALUE_VERSION_2_0 = 32
  end

  enum WCN_VALUE_TYPE_BOOLEAN : Int32
    WCN_VALUE_FALSE = 0
    WCN_VALUE_TRUE = 1
  end

  enum WCN_VALUE_TYPE_ASSOCIATION_STATE : Int32
    WCN_VALUE_AS_NOT_ASSOCIATED = 0
    WCN_VALUE_AS_CONNECTION_SUCCESS = 1
    WCN_VALUE_AS_CONFIGURATION_FAILURE = 2
    WCN_VALUE_AS_ASSOCIATION_FAILURE = 3
    WCN_VALUE_AS_IP_FAILURE = 4
  end

  enum WCN_VALUE_TYPE_AUTHENTICATION_TYPE : Int32
    WCN_VALUE_AT_OPEN = 1
    WCN_VALUE_AT_WPAPSK = 2
    WCN_VALUE_AT_SHARED = 4
    WCN_VALUE_AT_WPA = 8
    WCN_VALUE_AT_WPA2 = 16
    WCN_VALUE_AT_WPA2PSK = 32
    WCN_VALUE_AT_WPAWPA2PSK_MIXED = 34
  end

  enum WCN_VALUE_TYPE_CONFIG_METHODS : Int32
    WCN_VALUE_CM_USBA = 1
    WCN_VALUE_CM_ETHERNET = 2
    WCN_VALUE_CM_LABEL = 4
    WCN_VALUE_CM_DISPLAY = 8
    WCN_VALUE_CM_EXTERNAL_NFC = 16
    WCN_VALUE_CM_INTEGRATED_NFC = 32
    WCN_VALUE_CM_NFC_INTERFACE = 64
    WCN_VALUE_CM_PUSHBUTTON = 128
    WCN_VALUE_CM_KEYPAD = 256
    WCN_VALUE_CM_VIRT_PUSHBUTTON = 640
    WCN_VALUE_CM_PHYS_PUSHBUTTON = 1152
    WCN_VALUE_CM_VIRT_DISPLAY = 8200
    WCN_VALUE_CM_PHYS_DISPLAY = 16392
  end

  enum WCN_VALUE_TYPE_CONFIGURATION_ERROR : Int32
    WCN_VALUE_CE_NO_ERROR = 0
    WCN_VALUE_CE_OOB_INTERFACE_READ_ERROR = 1
    WCN_VALUE_CE_DECRYPTION_CRC_FAILURE = 2
    WCN_VALUE_CE_2_4_CHANNEL_NOT_SUPPORTED = 3
    WCN_VALUE_CE_5_0_CHANNEL_NOT_SUPPORTED = 4
    WCN_VALUE_CE_SIGNAL_TOO_WEAK = 5
    WCN_VALUE_CE_NETWORK_AUTHENTICATION_FAILURE = 6
    WCN_VALUE_CE_NETWORK_ASSOCIATION_FAILURE = 7
    WCN_VALUE_CE_NO_DHCP_RESPONSE = 8
    WCN_VALUE_CE_FAILED_DHCP_CONFIG = 9
    WCN_VALUE_CE_IP_ADDRESS_CONFLICT = 10
    WCN_VALUE_CE_COULD_NOT_CONNECT_TO_REGISTRAR = 11
    WCN_VALUE_CE_MULTIPLE_PBC_SESSIONS_DETECTED = 12
    WCN_VALUE_CE_ROGUE_ACTIVITY_SUSPECTED = 13
    WCN_VALUE_CE_DEVICE_BUSY = 14
    WCN_VALUE_CE_SETUP_LOCKED = 15
    WCN_VALUE_CE_MESSAGE_TIMEOUT = 16
    WCN_VALUE_CE_REGISTRATION_SESSION_TIMEOUT = 17
    WCN_VALUE_CE_DEVICE_PASSWORD_AUTH_FAILURE = 18
  end

  enum WCN_VALUE_TYPE_CONNECTION_TYPE : Int32
    WCN_VALUE_CT_ESS = 1
    WCN_VALUE_CT_IBSS = 2
  end

  enum WCN_VALUE_TYPE_DEVICE_PASSWORD_ID : Int32
    WCN_VALUE_DP_DEFAULT = 0
    WCN_VALUE_DP_USER_SPECIFIED = 1
    WCN_VALUE_DP_MACHINE_SPECIFIED = 2
    WCN_VALUE_DP_REKEY = 3
    WCN_VALUE_DP_PUSHBUTTON = 4
    WCN_VALUE_DP_REGISTRAR_SPECIFIED = 5
    WCN_VALUE_DP_NFC_CONNECTION_HANDOVER = 7
    WCN_VALUE_DP_WFD_SERVICES = 8
    WCN_VALUE_DP_OUTOFBAND_MIN = 16
    WCN_VALUE_DP_OUTOFBAND_MAX = 65535
  end

  enum WCN_VALUE_TYPE_ENCRYPTION_TYPE : Int32
    WCN_VALUE_ET_NONE = 1
    WCN_VALUE_ET_WEP = 2
    WCN_VALUE_ET_TKIP = 4
    WCN_VALUE_ET_AES = 8
    WCN_VALUE_ET_TKIP_AES_MIXED = 12
  end

  enum WCN_VALUE_TYPE_MESSAGE_TYPE : Int32
    WCN_VALUE_MT_BEACON = 1
    WCN_VALUE_MT_PROBE_REQUEST = 2
    WCN_VALUE_MT_PROBE_RESPONSE = 3
    WCN_VALUE_MT_M1 = 4
    WCN_VALUE_MT_M2 = 5
    WCN_VALUE_MT_M2D = 6
    WCN_VALUE_MT_M3 = 7
    WCN_VALUE_MT_M4 = 8
    WCN_VALUE_MT_M5 = 9
    WCN_VALUE_MT_M6 = 10
    WCN_VALUE_MT_M7 = 11
    WCN_VALUE_MT_M8 = 12
    WCN_VALUE_MT_ACK = 13
    WCN_VALUE_MT_NACK = 14
    WCN_VALUE_MT_DONE = 15
  end

  enum WCN_VALUE_TYPE_REQUEST_TYPE : Int32
    WCN_VALUE_ReqT_ENROLLEE_INFO = 0
    WCN_VALUE_ReqT_ENROLLEE_OPEN_1X = 1
    WCN_VALUE_ReqT_REGISTRAR = 2
    WCN_VALUE_ReqT_MANAGER_REGISTRAR = 3
  end

  enum WCN_VALUE_TYPE_RESPONSE_TYPE : Int32
    WCN_VALUE_RspT_ENROLLEE_INFO = 0
    WCN_VALUE_RspT_ENROLLEE_OPEN_1X = 1
    WCN_VALUE_RspT_REGISTRAR = 2
    WCN_VALUE_RspT_AP = 3
  end

  enum WCN_VALUE_TYPE_RF_BANDS : Int32
    WCN_VALUE_RB_24GHZ = 1
    WCN_VALUE_RB_50GHZ = 2
  end

  enum WCN_VALUE_TYPE_WI_FI_PROTECTED_SETUP_STATE : Int32
    WCN_VALUE_SS_RESERVED00 = 0
    WCN_VALUE_SS_NOT_CONFIGURED = 1
    WCN_VALUE_SS_CONFIGURED = 2
  end

  enum WCN_PASSWORD_TYPE : Int32
    WCN_PASSWORD_TYPE_PUSH_BUTTON = 0
    WCN_PASSWORD_TYPE_PIN = 1
    WCN_PASSWORD_TYPE_PIN_REGISTRAR_SPECIFIED = 2
    WCN_PASSWORD_TYPE_OOB_SPECIFIED = 3
    WCN_PASSWORD_TYPE_WFDS = 4
  end

  enum WCN_SESSION_STATUS : Int32
    WCN_SESSION_STATUS_SUCCESS = 0
    WCN_SESSION_STATUS_FAILURE_GENERIC = 1
    WCN_SESSION_STATUS_FAILURE_TIMEOUT = 2
  end

  struct WCN_VALUE_TYPE_PRIMARY_DEVICE_TYPE
    category : UInt16
    sub_category_oui : UInt32
    sub_category : UInt16
  end
  struct WCN_VENDOR_EXTENSION_SPEC
    vendor_id : UInt32
    sub_type : UInt32
    index : UInt32
    flags : UInt32
  end


  struct IWCNDeviceVTbl
    query_interface : Proc(IWCNDevice*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWCNDevice*, UInt32)
    release : Proc(IWCNDevice*, UInt32)
    set_password : Proc(IWCNDevice*, WCN_PASSWORD_TYPE, UInt32, UInt8*, HRESULT)
    connect : Proc(IWCNDevice*, IWCNConnectNotify, HRESULT)
    get_attribute : Proc(IWCNDevice*, WCN_ATTRIBUTE_TYPE, UInt32, UInt8*, UInt32*, HRESULT)
    get_integer_attribute : Proc(IWCNDevice*, WCN_ATTRIBUTE_TYPE, UInt32*, HRESULT)
    get_string_attribute : Proc(IWCNDevice*, WCN_ATTRIBUTE_TYPE, UInt32, Char*, HRESULT)
    get_network_profile : Proc(IWCNDevice*, UInt32, Char*, HRESULT)
    set_network_profile : Proc(IWCNDevice*, LibC::LPWSTR, HRESULT)
    get_vendor_extension : Proc(IWCNDevice*, WCN_VENDOR_EXTENSION_SPEC*, UInt32, UInt8*, UInt32*, HRESULT)
    set_vendor_extension : Proc(IWCNDevice*, WCN_VENDOR_EXTENSION_SPEC*, UInt32, UInt8*, HRESULT)
    unadvise : Proc(IWCNDevice*, HRESULT)
    set_nfc_password_params : Proc(IWCNDevice*, WCN_PASSWORD_TYPE, UInt32, UInt32, UInt8*, UInt32, UInt8*, UInt32, UInt8*, HRESULT)
  end

  IWCNDevice_GUID = "c100be9c-d33a-4a4b-bf23-bbef4663d017"
  IID_IWCNDevice = LibC::GUID.new(0xc100be9c_u32, 0xd33a_u16, 0x4a4b_u16, StaticArray[0xbf_u8, 0x23_u8, 0xbb_u8, 0xef_u8, 0x46_u8, 0x63_u8, 0xd0_u8, 0x17_u8])
  struct IWCNDevice
    lpVtbl : IWCNDeviceVTbl*
  end

  struct IWCNConnectNotifyVTbl
    query_interface : Proc(IWCNConnectNotify*, Guid*, Void**, HRESULT)
    add_ref : Proc(IWCNConnectNotify*, UInt32)
    release : Proc(IWCNConnectNotify*, UInt32)
    connect_succeeded : Proc(IWCNConnectNotify*, HRESULT)
    connect_failed : Proc(IWCNConnectNotify*, HRESULT, HRESULT)
  end

  IWCNConnectNotify_GUID = "c100be9f-d33a-4a4b-bf23-bbef4663d017"
  IID_IWCNConnectNotify = LibC::GUID.new(0xc100be9f_u32, 0xd33a_u16, 0x4a4b_u16, StaticArray[0xbf_u8, 0x23_u8, 0xbb_u8, 0xef_u8, 0x46_u8, 0x63_u8, 0xd0_u8, 0x17_u8])
  struct IWCNConnectNotify
    lpVtbl : IWCNConnectNotifyVTbl*
  end

end