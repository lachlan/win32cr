require "../system/com.cr"
require "../foundation.cr"
require "../system/windowsprogramming.cr"

{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/DELAYLOAD:fhsvcctl.dll")]
{% else %}
@[Link("fhsvcctl")]
{% end %}
lib LibWin32
  FHCFG_E_CORRUPT_CONFIG_FILE = -2147220736_i32
  FHCFG_E_CONFIG_FILE_NOT_FOUND = -2147220735_i32
  FHCFG_E_CONFIG_ALREADY_EXISTS = -2147220734_i32
  FHCFG_E_NO_VALID_CONFIGURATION_LOADED = -2147220733_i32
  FHCFG_E_TARGET_NOT_CONNECTED = -2147220732_i32
  FHCFG_E_CONFIGURATION_PREVIOUSLY_LOADED = -2147220731_i32
  FHCFG_E_TARGET_VERIFICATION_FAILED = -2147220730_i32
  FHCFG_E_TARGET_NOT_CONFIGURED = -2147220729_i32
  FHCFG_E_TARGET_NOT_ENOUGH_FREE_SPACE = -2147220728_i32
  FHCFG_E_TARGET_CANNOT_BE_USED = -2147220727_i32
  FHCFG_E_INVALID_REHYDRATION_STATE = -2147220726_i32
  FHCFG_E_RECOMMENDATION_CHANGE_NOT_ALLOWED = -2147220720_i32
  FHCFG_E_TARGET_REHYDRATED_ELSEWHERE = -2147220719_i32
  FHCFG_E_LEGACY_TARGET_UNSUPPORTED = -2147220718_i32
  FHCFG_E_LEGACY_TARGET_VALIDATION_UNSUPPORTED = -2147220717_i32
  FHCFG_E_LEGACY_BACKUP_USER_EXCLUDED = -2147220716_i32
  FHCFG_E_LEGACY_BACKUP_NOT_FOUND = -2147220715_i32
  FHSVC_E_BACKUP_BLOCKED = -2147219968_i32
  FHSVC_E_NOT_CONFIGURED = -2147219967_i32
  FHSVC_E_CONFIG_DISABLED = -2147219966_i32
  FHSVC_E_CONFIG_DISABLED_GP = -2147219965_i32
  FHSVC_E_FATAL_CONFIG_ERROR = -2147219964_i32
  FHSVC_E_CONFIG_REHYDRATING = -2147219963_i32
  FH_STATE_NOT_TRACKED = 0_u32
  FH_STATE_OFF = 1_u32
  FH_STATE_DISABLED_BY_GP = 2_u32
  FH_STATE_FATAL_CONFIG_ERROR = 3_u32
  FH_STATE_MIGRATING = 4_u32
  FH_STATE_REHYDRATING = 5_u32
  FH_STATE_TARGET_FS_LIMITATION = 13_u32
  FH_STATE_TARGET_ACCESS_DENIED = 14_u32
  FH_STATE_TARGET_VOLUME_DIRTY = 15_u32
  FH_STATE_TARGET_FULL_RETENTION_MAX = 16_u32
  FH_STATE_TARGET_FULL = 17_u32
  FH_STATE_STAGING_FULL = 18_u32
  FH_STATE_TARGET_LOW_SPACE_RETENTION_MAX = 19_u32
  FH_STATE_TARGET_LOW_SPACE = 20_u32
  FH_STATE_TARGET_ABSENT = 21_u32
  FH_STATE_TOO_MUCH_BEHIND = 240_u32
  FH_STATE_NO_ERROR = 255_u32
  FH_STATE_BACKUP_NOT_SUPPORTED = 2064_u32
  FH_STATE_RUNNING = 256_u32
  CLSID_FhConfigMgr = LibC::GUID.new(0xed43bb3c_u32, 0x9e9_u16, 0x498a_u16, StaticArray[0x9d_u8, 0xf6_u8, 0x21_u8, 0x77_u8, 0x24_u8, 0x4c_u8, 0x6d_u8, 0xb4_u8])
  CLSID_FhReassociation = LibC::GUID.new(0x4d728e35_u32, 0x16fa_u16, 0x4320_u16, StaticArray[0x9e_u8, 0x8b_u8, 0xbf_u8, 0xd7_u8, 0x10_u8, 0xa_u8, 0x88_u8, 0x46_u8])


  enum FH_TARGET_PROPERTY_TYPE : Int32
    FH_TARGET_NAME = 0
    FH_TARGET_URL = 1
    FH_TARGET_DRIVE_TYPE = 2
    MAX_TARGET_PROPERTY = 3
  end

  enum FH_TARGET_DRIVE_TYPES : Int32
    FH_DRIVE_UNKNOWN = 0
    FH_DRIVE_REMOVABLE = 2
    FH_DRIVE_FIXED = 3
    FH_DRIVE_REMOTE = 4
  end

  enum FH_PROTECTED_ITEM_CATEGORY : Int32
    FH_FOLDER = 0
    FH_LIBRARY = 1
    MAX_PROTECTED_ITEM_CATEGORY = 2
  end

  enum FH_LOCAL_POLICY_TYPE : Int32
    FH_FREQUENCY = 0
    FH_RETENTION_TYPE = 1
    FH_RETENTION_AGE = 2
    MAX_LOCAL_POLICY = 3
  end

  enum FH_RETENTION_TYPES : Int32
    FH_RETENTION_DISABLED = 0
    FH_RETENTION_UNLIMITED = 1
    FH_RETENTION_AGE_BASED = 2
    MAX_RETENTION_TYPE = 3
  end

  enum FH_BACKUP_STATUS : Int32
    FH_STATUS_DISABLED = 0
    FH_STATUS_DISABLED_BY_GP = 1
    FH_STATUS_ENABLED = 2
    FH_STATUS_REHYDRATING = 3
    MAX_BACKUP_STATUS = 4
  end

  enum FH_DEVICE_VALIDATION_RESULT : Int32
    FH_ACCESS_DENIED = 0
    FH_INVALID_DRIVE_TYPE = 1
    FH_READ_ONLY_PERMISSION = 2
    FH_CURRENT_DEFAULT = 3
    FH_NAMESPACE_EXISTS = 4
    FH_TARGET_PART_OF_LIBRARY = 5
    FH_VALID_TARGET = 6
    MAX_VALIDATION_RESULT = 7
  end

  enum FhBackupStopReason : Int32
    BackupInvalidStopReason = 0
    BackupLimitUserBusyMachineOnAC = 1
    BackupLimitUserIdleMachineOnDC = 2
    BackupLimitUserBusyMachineOnDC = 3
    BackupCancelled = 4
  end


  struct IFhTargetVTbl
    query_interface : UInt64
    add_ref : UInt64
    release : UInt64
    get_string_property : UInt64
    get_numerical_property : UInt64
  end

  IFhTarget_GUID = "d87965fd-2bad-4657-bd3b-9567eb300ced"
  IID_IFhTarget = LibC::GUID.new(0xd87965fd_u32, 0x2bad_u16, 0x4657_u16, StaticArray[0xbd_u8, 0x3b_u8, 0x95_u8, 0x67_u8, 0xeb_u8, 0x30_u8, 0xc_u8, 0xed_u8])
  struct IFhTarget
    lpVtbl : IFhTargetVTbl*
  end

  struct IFhScopeIteratorVTbl
    query_interface : UInt64
    add_ref : UInt64
    release : UInt64
    move_to_next_item : UInt64
    get_item : UInt64
  end

  IFhScopeIterator_GUID = "3197abce-532a-44c6-8615-f3666566a720"
  IID_IFhScopeIterator = LibC::GUID.new(0x3197abce_u32, 0x532a_u16, 0x44c6_u16, StaticArray[0x86_u8, 0x15_u8, 0xf3_u8, 0x66_u8, 0x65_u8, 0x66_u8, 0xa7_u8, 0x20_u8])
  struct IFhScopeIterator
    lpVtbl : IFhScopeIteratorVTbl*
  end

  struct IFhConfigMgrVTbl
    query_interface : UInt64
    add_ref : UInt64
    release : UInt64
    load_configuration : UInt64
    create_default_configuration : UInt64
    save_configuration : UInt64
    add_remove_exclude_rule : UInt64
    get_include_exclude_rules : UInt64
    get_local_policy : UInt64
    set_local_policy : UInt64
    get_backup_status : UInt64
    set_backup_status : UInt64
    get_default_target : UInt64
    validate_target : UInt64
    provision_and_set_new_target : UInt64
    change_default_target_recommendation : UInt64
    query_protection_status : UInt64
  end

  IFhConfigMgr_GUID = "6a5fea5b-bf8f-4ee5-b8c3-44d8a0d7331c"
  IID_IFhConfigMgr = LibC::GUID.new(0x6a5fea5b_u32, 0xbf8f_u16, 0x4ee5_u16, StaticArray[0xb8_u8, 0xc3_u8, 0x44_u8, 0xd8_u8, 0xa0_u8, 0xd7_u8, 0x33_u8, 0x1c_u8])
  struct IFhConfigMgr
    lpVtbl : IFhConfigMgrVTbl*
  end

  struct IFhReassociationVTbl
    query_interface : UInt64
    add_ref : UInt64
    release : UInt64
    validate_target : UInt64
    scan_target_for_configurations : UInt64
    get_configuration_details : UInt64
    select_configuration : UInt64
    perform_reassociation : UInt64
  end

  IFhReassociation_GUID = "6544a28a-f68d-47ac-91ef-16b2b36aa3ee"
  IID_IFhReassociation = LibC::GUID.new(0x6544a28a_u32, 0xf68d_u16, 0x47ac_u16, StaticArray[0x91_u8, 0xef_u8, 0x16_u8, 0xb2_u8, 0xb3_u8, 0x6a_u8, 0xa3_u8, 0xee_u8])
  struct IFhReassociation
    lpVtbl : IFhReassociationVTbl*
  end


  # Params # startserviceifstopped : LibC::BOOL [In],pipe : FH_SERVICE_PIPE_HANDLE* [In]
  fun FhServiceOpenPipe(startserviceifstopped : LibC::BOOL, pipe : FH_SERVICE_PIPE_HANDLE*) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In]
  fun FhServiceClosePipe(pipe : FH_SERVICE_PIPE_HANDLE) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In],lowpriorityio : LibC::BOOL [In]
  fun FhServiceStartBackup(pipe : FH_SERVICE_PIPE_HANDLE, lowpriorityio : LibC::BOOL) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In],stoptracking : LibC::BOOL [In]
  fun FhServiceStopBackup(pipe : FH_SERVICE_PIPE_HANDLE, stoptracking : LibC::BOOL) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In]
  fun FhServiceReloadConfiguration(pipe : FH_SERVICE_PIPE_HANDLE) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In]
  fun FhServiceBlockBackup(pipe : FH_SERVICE_PIPE_HANDLE) : HRESULT

  # Params # pipe : FH_SERVICE_PIPE_HANDLE [In]
  fun FhServiceUnblockBackup(pipe : FH_SERVICE_PIPE_HANDLE) : HRESULT
end
struct LibWin32::IFhTarget
  def query_interface(riid : Guid*, ppvobject : Void**) : HRESULT
    @lpVtbl.value.query_interface.unsafe_as(Proc(Guid*, Void**, HRESULT)).call(riid, ppvobject)
  end
  def add_ref : UInt32
    @lpVtbl.value.add_ref.unsafe_as(Proc(UInt32)).call
  end
  def release : UInt32
    @lpVtbl.value.release.unsafe_as(Proc(UInt32)).call
  end
  def get_string_property(propertytype : FH_TARGET_PROPERTY_TYPE, propertyvalue : UInt8**) : HRESULT
    @lpVtbl.value.get_string_property.unsafe_as(Proc(FH_TARGET_PROPERTY_TYPE, UInt8**, HRESULT)).call(propertytype, propertyvalue)
  end
  def get_numerical_property(propertytype : FH_TARGET_PROPERTY_TYPE, propertyvalue : UInt64*) : HRESULT
    @lpVtbl.value.get_numerical_property.unsafe_as(Proc(FH_TARGET_PROPERTY_TYPE, UInt64*, HRESULT)).call(propertytype, propertyvalue)
  end
end
struct LibWin32::IFhScopeIterator
  def query_interface(riid : Guid*, ppvobject : Void**) : HRESULT
    @lpVtbl.value.query_interface.unsafe_as(Proc(Guid*, Void**, HRESULT)).call(riid, ppvobject)
  end
  def add_ref : UInt32
    @lpVtbl.value.add_ref.unsafe_as(Proc(UInt32)).call
  end
  def release : UInt32
    @lpVtbl.value.release.unsafe_as(Proc(UInt32)).call
  end
  def move_to_next_item : HRESULT
    @lpVtbl.value.move_to_next_item.unsafe_as(Proc(HRESULT)).call
  end
  def get_item(item : UInt8**) : HRESULT
    @lpVtbl.value.get_item.unsafe_as(Proc(UInt8**, HRESULT)).call(item)
  end
end
struct LibWin32::IFhConfigMgr
  def query_interface(riid : Guid*, ppvobject : Void**) : HRESULT
    @lpVtbl.value.query_interface.unsafe_as(Proc(Guid*, Void**, HRESULT)).call(riid, ppvobject)
  end
  def add_ref : UInt32
    @lpVtbl.value.add_ref.unsafe_as(Proc(UInt32)).call
  end
  def release : UInt32
    @lpVtbl.value.release.unsafe_as(Proc(UInt32)).call
  end
  def load_configuration : HRESULT
    @lpVtbl.value.load_configuration.unsafe_as(Proc(HRESULT)).call
  end
  def create_default_configuration(overwriteifexists : LibC::BOOL) : HRESULT
    @lpVtbl.value.create_default_configuration.unsafe_as(Proc(LibC::BOOL, HRESULT)).call(overwriteifexists)
  end
  def save_configuration : HRESULT
    @lpVtbl.value.save_configuration.unsafe_as(Proc(HRESULT)).call
  end
  def add_remove_exclude_rule(add : LibC::BOOL, category : FH_PROTECTED_ITEM_CATEGORY, item : UInt8*) : HRESULT
    @lpVtbl.value.add_remove_exclude_rule.unsafe_as(Proc(LibC::BOOL, FH_PROTECTED_ITEM_CATEGORY, UInt8*, HRESULT)).call(add, category, item)
  end
  def get_include_exclude_rules(include : LibC::BOOL, category : FH_PROTECTED_ITEM_CATEGORY, iterator : IFhScopeIterator*) : HRESULT
    @lpVtbl.value.get_include_exclude_rules.unsafe_as(Proc(LibC::BOOL, FH_PROTECTED_ITEM_CATEGORY, IFhScopeIterator*, HRESULT)).call(include, category, iterator)
  end
  def get_local_policy(localpolicytype : FH_LOCAL_POLICY_TYPE, policyvalue : UInt64*) : HRESULT
    @lpVtbl.value.get_local_policy.unsafe_as(Proc(FH_LOCAL_POLICY_TYPE, UInt64*, HRESULT)).call(localpolicytype, policyvalue)
  end
  def set_local_policy(localpolicytype : FH_LOCAL_POLICY_TYPE, policyvalue : UInt64) : HRESULT
    @lpVtbl.value.set_local_policy.unsafe_as(Proc(FH_LOCAL_POLICY_TYPE, UInt64, HRESULT)).call(localpolicytype, policyvalue)
  end
  def get_backup_status(backupstatus : FH_BACKUP_STATUS*) : HRESULT
    @lpVtbl.value.get_backup_status.unsafe_as(Proc(FH_BACKUP_STATUS*, HRESULT)).call(backupstatus)
  end
  def set_backup_status(backupstatus : FH_BACKUP_STATUS) : HRESULT
    @lpVtbl.value.set_backup_status.unsafe_as(Proc(FH_BACKUP_STATUS, HRESULT)).call(backupstatus)
  end
  def get_default_target(defaulttarget : IFhTarget*) : HRESULT
    @lpVtbl.value.get_default_target.unsafe_as(Proc(IFhTarget*, HRESULT)).call(defaulttarget)
  end
  def validate_target(targeturl : UInt8*, validationresult : FH_DEVICE_VALIDATION_RESULT*) : HRESULT
    @lpVtbl.value.validate_target.unsafe_as(Proc(UInt8*, FH_DEVICE_VALIDATION_RESULT*, HRESULT)).call(targeturl, validationresult)
  end
  def provision_and_set_new_target(targeturl : UInt8*, targetname : UInt8*) : HRESULT
    @lpVtbl.value.provision_and_set_new_target.unsafe_as(Proc(UInt8*, UInt8*, HRESULT)).call(targeturl, targetname)
  end
  def change_default_target_recommendation(recommend : LibC::BOOL) : HRESULT
    @lpVtbl.value.change_default_target_recommendation.unsafe_as(Proc(LibC::BOOL, HRESULT)).call(recommend)
  end
  def query_protection_status(protectionstate : UInt32*, protecteduntiltime : UInt8**) : HRESULT
    @lpVtbl.value.query_protection_status.unsafe_as(Proc(UInt32*, UInt8**, HRESULT)).call(protectionstate, protecteduntiltime)
  end
end
struct LibWin32::IFhReassociation
  def query_interface(riid : Guid*, ppvobject : Void**) : HRESULT
    @lpVtbl.value.query_interface.unsafe_as(Proc(Guid*, Void**, HRESULT)).call(riid, ppvobject)
  end
  def add_ref : UInt32
    @lpVtbl.value.add_ref.unsafe_as(Proc(UInt32)).call
  end
  def release : UInt32
    @lpVtbl.value.release.unsafe_as(Proc(UInt32)).call
  end
  def validate_target(targeturl : UInt8*, validationresult : FH_DEVICE_VALIDATION_RESULT*) : HRESULT
    @lpVtbl.value.validate_target.unsafe_as(Proc(UInt8*, FH_DEVICE_VALIDATION_RESULT*, HRESULT)).call(targeturl, validationresult)
  end
  def scan_target_for_configurations(targeturl : UInt8*) : HRESULT
    @lpVtbl.value.scan_target_for_configurations.unsafe_as(Proc(UInt8*, HRESULT)).call(targeturl)
  end
  def get_configuration_details(index : UInt32, username : UInt8**, pcname : UInt8**, backuptime : FILETIME*) : HRESULT
    @lpVtbl.value.get_configuration_details.unsafe_as(Proc(UInt32, UInt8**, UInt8**, FILETIME*, HRESULT)).call(index, username, pcname, backuptime)
  end
  def select_configuration(index : UInt32) : HRESULT
    @lpVtbl.value.select_configuration.unsafe_as(Proc(UInt32, HRESULT)).call(index)
  end
  def perform_reassociation(overwriteifexists : LibC::BOOL) : HRESULT
    @lpVtbl.value.perform_reassociation.unsafe_as(Proc(LibC::BOOL, HRESULT)).call(overwriteifexists)
  end
end
