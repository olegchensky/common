unit VirtualBox_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 17.10.2019 11:23:28 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Oracle\VirtualBox\x86\VBoxProxyStub-x86.dll (1)
// LIBID: {D7569351-1750-46F0-936E-BD127D5BC264}
// LCID: 0
// Helpfile: 
// HelpString: VirtualBox Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: TypeInfo 'VirtualBox' changed to 'VirtualBox_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Object' of 'IPerformanceMetric' changed to 'Object_'
//   Hint: Member 'Unit' of 'IPerformanceMetric' changed to 'Unit_'
//   Hint: Member 'File' of 'IGuestFileEvent' changed to 'File_'
//   Error creating palette bitmap of (TVirtualBox) : Server C:\Program Files\Oracle\VirtualBox\x86\VBoxClient-x86.dll contains no icons
//   Error creating palette bitmap of (TVirtualBoxClient) : Server C:\Program Files\Oracle\VirtualBox\x86\VBoxClient-x86.dll contains no icons
//   Error creating palette bitmap of (TSession) : Server C:\Program Files\Oracle\VirtualBox\x86\VBoxClient-x86.dll contains no icons
//   Error creating palette bitmap of (TVirtualBoxSDS) : Server C:\Program Files\Oracle\VirtualBox\x86\VBoxClient-x86.dll contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  VirtualBoxMajorVersion = 1;
  VirtualBoxMinorVersion = 3;

  LIBID_VirtualBox: TGUID = '{D7569351-1750-46F0-936E-BD127D5BC264}';

  IID_IErrorInfo: TGUID = '{1CF2B120-547D-101B-8E65-08002B2BD119}';
  IID_IVirtualBoxErrorInfo: TGUID = '{C1BCC6D5-7966-481D-AB0B-D0ED73E28135}';
  IID_INATNetwork: TGUID = '{4BBC405D-F268-4483-9A52-F43FFDBF67F8}';
  IID_IEventSource: TGUID = '{9B6E1AEE-35F3-4F4D-B5BB-ED0ECEFD8538}';
  IID_IEventListener: TGUID = '{67099191-32E7-4F6C-85EE-422304C71B90}';
  IID_IEvent: TGUID = '{0CA2ADBA-8F30-401B-A8CD-FE31DBE839C0}';
  IID_IDHCPServer: TGUID = '{EA2D467F-B6C2-4B9A-8EB5-6E2F275DD72E}';
  IID_IVirtualBox: TGUID = '{D0A0163F-E254-4E5B-A1F2-011CF991C38D}';
  IID_IHost: TGUID = '{DBE11E5F-7F10-46E7-94C4-1E95BF4B6627}';
  IID_IMedium: TGUID = '{AD47AD09-787B-44AB-B343-A082A3F2DFB1}';
  IID_IMediumFormat: TGUID = '{11BE93C7-A862-4DC9-8C89-BF4BA74A886A}';
  IID_IToken: TGUID = '{20479EAF-D8ED-44CF-85AC-C83A26C95A4D}';
  IID_IProgress: TGUID = '{D7B98D2B-30E8-447E-99CB-E31BECAE6AE4}';
  IID_IMediumIO: TGUID = '{E4B301A9-5F86-4D65-AD1B-87CA284FB1C8}';
  IID_IVFSExplorer: TGUID = '{FB220201-2FD3-47E2-A5DC-2C2431D833CC}';
  IID_IDataStream: TGUID = '{A338ED20-58D9-43AE-8B03-C1FD7088EF15}';
  IID_IUSBDevice: TGUID = '{202C8C43-2D2D-4866-ACF7-56FFAE36F1F9}';
  IID_IHostUSBDevice: TGUID = '{C19073DD-CC7B-431B-98B2-951FDA8EAB89}';
  IID_IUSBDeviceFilter: TGUID = '{45587218-4289-EF4E-8E6A-E5B07816B631}';
  IID_IHostUSBDeviceFilter: TGUID = '{01ADB2D6-AEDF-461C-BE2C-99E91BDAD8A1}';
  IID_IHostNetworkInterface: TGUID = '{455F8C45-44A0-A470-BA20-27890B96DBA9}';
  IID_IHostVideoInputDevice: TGUID = '{E8C25D4D-AC97-4C16-B3E2-81BD8A57CC27}';
  IID_ISystemProperties: TGUID = '{D55176E5-6730-4E9E-FC1F-A59B1F44F78F}';
  IID_IMachine: TGUID = '{5047460A-265D-4538-B23E-DDBA5FB84976}';
  IID_IBIOSSettings: TGUID = '{F13F667D-3624-4AC5-99C1-3D982EBD8D98}';
  IID_IRecordingSettings: TGUID = '{D88F2A5A-47C7-4A3F-AAE1-1B516817DB41}';
  IID_IRecordingScreenSettings: TGUID = '{678FBD9A-93AF-42A7-7F13-79AD6EF1A18D}';
  IID_IVRDEServer: TGUID = '{08E25756-08A2-41AF-A05F-D7C661ABAEBE}';
  IID_IMediumAttachment: TGUID = '{CBC97CE0-DFAE-4C70-A6AA-769E5186363B}';
  IID_IBandwidthGroup: TGUID = '{31587F93-2D12-4D7C-BA6D-CE51D0D5B265}';
  IID_IUSBController: TGUID = '{EE206A6E-7FF8-4A84-BD34-0C651E118BB5}';
  IID_IUSBDeviceFilters: TGUID = '{9709DB9B-3346-49D6-8F1C-41B0C4784FF2}';
  IID_IAudioAdapter: TGUID = '{5155BFD3-7BA7-45A8-B26D-C91AE3754E37}';
  IID_IStorageController: TGUID = '{DDCA7247-BF98-47FB-AB2F-B5177533F493}';
  IID_ISnapshot: TGUID = '{6CC49055-DAD4-4496-85CF-3F76BCB3B5FA}';
  IID_ISharedFolder: TGUID = '{9622225A-5409-414B-BD16-77DF7BA3451E}';
  IID_IPCIDeviceAttachment: TGUID = '{91F33D6F-E621-4F70-A77E-15F0E3C714D5}';
  IID_IBandwidthControl: TGUID = '{48C7F4C0-C9D6-4742-957C-A6FD52E8C4AE}';
  IID_ISession: TGUID = '{C0447716-FF5A-4795-B57A-ECD5FFFA18A4}';
  IID_IConsole: TGUID = '{872DA645-4A9B-1727-BEE2-5585105B9EED}';
  IID_IGuest: TGUID = '{13A11514-402E-022E-6180-C3944DE3F9C8}';
  IID_IDnDBase: TGUID = '{4132147B-42F8-CD96-7570-6A8800E3342C}';
  IID_IDnDSource: TGUID = '{D23A9CA3-42DA-C94B-8AEC-21968E08355D}';
  IID_IGuestDnDSource: TGUID = '{DEDFB5D9-4C1B-EDF7-FDF3-C1BE6827DC28}';
  IID_IDnDTarget: TGUID = '{FF5BEFC3-4BA3-7903-2AA4-43988BA11554}';
  IID_IGuestDnDTarget: TGUID = '{50CE4B51-0FF7-46B7-A138-3C6E5AC946B4}';
  IID_IAdditionsFacility: TGUID = '{F2F7FAE4-4A06-81FC-A916-78B2DA1FA0E5}';
  IID_IGuestSession: TGUID = '{3E14C189-4A75-437E-B0BB-7E7C90D0DF2A}';
  IID_IProcess: TGUID = '{BC68370C-8A02-45F3-A07D-A67AA72756AA}';
  IID_IGuestProcess: TGUID = '{35CF4B3F-4453-4F3E-C9B8-5686939C80B6}';
  IID_IDirectory: TGUID = '{758D7EAC-E4B1-486A-8F2E-747AE346C3E9}';
  IID_IGuestDirectory: TGUID = '{CC830458-4974-A19C-4DC6-CC98C2269626}';
  IID_IFsObjInfo: TGUID = '{081FC833-C6FA-430E-6020-6A505D086387}';
  IID_IFile: TGUID = '{59A235AC-2F1A-4D6C-81FC-E3FA843F49AE}';
  IID_IGuestFile: TGUID = '{92F21DC0-44DE-1653-B717-2EBF0CA9B664}';
  IID_IGuestFsObjInfo: TGUID = '{6620DB85-44E0-CA69-E9E0-D4907CECCBE5}';
  IID_IKeyboard: TGUID = '{A7C88B82-2330-44E3-B247-1421A018F9C1}';
  IID_IMouse: TGUID = '{10CD08D0-E8B8-4838-B10C-45BA193734C1}';
  IID_IMousePointerShape: TGUID = '{1E775EA3-9070-4F9C-B0D5-53054496DBE0}';
  IID_IDisplay: TGUID = '{AB4164DB-C13E-4DAB-842D-61EE3F0C1E87}';
  IID_IGuestScreenInfo: TGUID = '{6B2F98F8-9641-4397-854A-040439D0114B}';
  IID_IFramebuffer: TGUID = '{1E8D3F27-B45C-48AE-8B36-D35E83D207AA}';
  IID_IFramebufferOverlay: TGUID = '{AF398A9A-6B76-4805-8FAB-00A9DCF4732B}';
  IID_IDisplaySourceBitmap: TGUID = '{0B78DAEB-F52F-43B9-99E8-4A3C226CBE2D}';
  IID_IMachineDebugger: TGUID = '{E91BB944-F211-4BD5-B44C-8F1D0BEAFA13}';
  IID_IVRDEServerInfo: TGUID = '{C39EF4D6-7532-45E8-96DA-EB5986AE76E4}';
  IID_IEmulatedUSB: TGUID = '{6E253EE8-477A-2497-6759-88B8292A5AF0}';
  IID_INetworkAdapter: TGUID = '{E9A0C183-7071-4894-93D6-DCBEC010FA91}';
  IID_INATEngine: TGUID = '{8FAEF61E-6E15-4F71-A6A5-94E707FAFBCC}';
  IID_ISerialPort: TGUID = '{5587D0F6-A227-4F23-8278-2F675EEA1BB2}';
  IID_IParallelPort: TGUID = '{788B87DF-7708-444B-9EEF-C116CE423D39}';
  IID_IAppliance: TGUID = '{86A98347-7619-41AA-AECE-B21AC5C1A7E6}';
  IID_IVirtualSystemDescription: TGUID = '{EC49259C-1C50-4353-97A5-0FD92E2CAAC2}';
  IID_ICertificate: TGUID = '{392F1DE4-80E1-4A8A-93A1-67C5F92A838A}';
  IID_IGuestOSType: TGUID = '{D0D6C6D8-E5DB-4D2C-BAAA-C71053A6236D}';
  IID_IPerformanceCollector: TGUID = '{B14290AD-CD54-400C-B858-797BCB82570E}';
  IID_IPerformanceMetric: TGUID = '{81314D14-FD1C-411A-95C5-E9BB1414E632}';
  IID_IExtPackManager: TGUID = '{70401EEF-C8E9-466B-9660-45CB3E9979E4}';
  IID_IExtPackBase: TGUID = '{F25ACA3D-0B79-4350-BDD9-A0376CD6E6E3}';
  IID_IExtPack: TGUID = '{431685DA-3618-4EBC-B038-833BA829B4B2}';
  IID_IExtPackPlugIn: TGUID = '{78861431-D545-44AA-8013-181B8C288554}';
  IID_IExtPackFile: TGUID = '{41304F1B-7E72-4F34-B8F6-682785620C57}';
  IID_ICloudProviderManager: TGUID = '{9128800F-762E-4120-871C-A2014234A607}';
  IID_ICloudProvider: TGUID = '{22363CFC-07DA-41EC-AC4A-3DD99DB35594}';
  IID_ICloudProfile: TGUID = '{B1D978B8-F7B7-4B05-900E-2A9253C00F51}';
  IID_ICloudClient: TGUID = '{3D9AACBE-B3BC-4126-9633-5634BAD24AD7}';
  IID_IUnattended: TGUID = '{6F89464F-7193-426C-A41F-522E8F537FA0}';
  IID_IInternalMachineControl: TGUID = '{CDBC59DF-4F4D-4CF2-809C-917601355AFC}';
  IID_IPCIAddress: TGUID = '{C984D15F-E191-400B-840E-970F3DAD7296}';
  IID_IInternalProgressControl: TGUID = '{41A033B8-CC87-4F6E-A0E9-47BB7F2D4BE5}';
  IID_IUSBProxyBackend: TGUID = '{DFE56449-6989-4002-80CF-3607F377D40C}';
  IID_IInternalSessionControl: TGUID = '{B1C3994E-F8CD-4D02-94D0-1AAF884751ED}';
  IID_IVirtualBoxClient: TGUID = '{D2937A8E-CB8D-4382-90BA-B7DA78A74573}';
  IID_IReusableEvent: TGUID = '{69BFB134-80F6-4266-8E20-16371F68FA25}';
  IID_IMachineEvent: TGUID = '{92ED7B1A-0D96-40ED-AE46-A564D484325E}';
  IID_IMachineStateChangedEvent: TGUID = '{5748F794-48DF-438D-85EB-98FFD70D18C9}';
  IID_IMachineDataChangedEvent: TGUID = '{ABE94809-2E88-4436-83D7-50F3E64D0503}';
  IID_IMediumRegisteredEvent: TGUID = '{53FAC49A-B7F1-4A5A-A4EF-A11DD9C2A458}';
  IID_IMediumConfigChangedEvent: TGUID = '{DD3E2654-A161-41F1-B583-4892F4A9D5D5}';
  IID_IMachineRegisteredEvent: TGUID = '{C354A762-3FF2-4F2E-8F09-07382EE25088}';
  IID_ISessionStateChangedEvent: TGUID = '{714A3EEF-799A-4489-86CD-FE8E45B2FF8E}';
  IID_IGuestPropertyChangedEvent: TGUID = '{3F63597A-26F1-4EDB-8DD2-6BDDD0912368}';
  IID_ISnapshotEvent: TGUID = '{21637B0E-34B8-42D3-ACFB-7E96DAF77C22}';
  IID_ISnapshotTakenEvent: TGUID = '{D27C0B3D-6038-422C-B45E-6D4A0503D9F1}';
  IID_ISnapshotDeletedEvent: TGUID = '{C48F3401-4A9E-43F4-B7A7-54BD285E22F4}';
  IID_ISnapshotRestoredEvent: TGUID = '{F4D803B4-9B2D-4377-BFE6-9702E881516B}';
  IID_ISnapshotChangedEvent: TGUID = '{07541941-8079-447A-A33E-47A69C7980DB}';
  IID_IMousePointerShapeChangedEvent: TGUID = '{A6DCF6E8-416B-4181-8C4A-45EC95177AEF}';
  IID_IMouseCapabilityChangedEvent: TGUID = '{70E7779A-E64A-4908-804E-371CAD23A756}';
  IID_IKeyboardLedsChangedEvent: TGUID = '{6DDEF35E-4737-457B-99FC-BC52C851A44F}';
  IID_IStateChangedEvent: TGUID = '{4376693C-CF37-453B-9289-3B0F521CAF27}';
  IID_IAdditionsStateChangedEvent: TGUID = '{D70F7915-DA7C-44C8-A7AC-9F173490446A}';
  IID_INetworkAdapterChangedEvent: TGUID = '{08889892-1EC6-4883-801D-77F56CFD0103}';
  IID_IAudioAdapterChangedEvent: TGUID = '{D5ABC823-04D0-4DB6-8D66-DC2F033120E1}';
  IID_ISerialPortChangedEvent: TGUID = '{3BA329DC-659C-488B-835C-4ECA7AE71C6C}';
  IID_IParallelPortChangedEvent: TGUID = '{813C99FC-9849-4F47-813E-24A75DC85615}';
  IID_IStorageControllerChangedEvent: TGUID = '{715212BF-DA59-426E-8230-3831FAA52C56}';
  IID_IMediumChangedEvent: TGUID = '{0FE2DA40-5637-472A-9736-72019EABD7DE}';
  IID_IClipboardModeChangedEvent: TGUID = '{CAC21692-7997-4595-A731-3A509DB604E5}';
  IID_IDnDModeChangedEvent: TGUID = '{B55CF856-1F8B-4692-ABB4-462429FAE5E9}';
  IID_ICPUChangedEvent: TGUID = '{4DA2DEC7-71B2-4817-9A64-4ED12C17388E}';
  IID_ICPUExecutionCapChangedEvent: TGUID = '{DFA7E4F5-B4A4-44CE-85A8-127AC5EB59DC}';
  IID_IGuestKeyboardEvent: TGUID = '{88394258-7006-40D4-B339-472EE3801844}';
  IID_IGuestMouseEvent: TGUID = '{179F8647-319C-4E7E-8150-C5837BD265F6}';
  IID_IGuestMultiTouchEvent: TGUID = '{BE8A0EB5-F4F4-4DD0-9D30-C89B873247EC}';
  IID_IGuestSessionEvent: TGUID = '{B9ACD33F-647D-45AC-8FE9-F49B3183BA37}';
  IID_IGuestSessionStateChangedEvent: TGUID = '{327E3C00-EE61-462F-AED3-0DFF6CBF9904}';
  IID_IGuestSessionRegisteredEvent: TGUID = '{B79DE686-EABD-4FA6-960A-F1756C99EA1C}';
  IID_IGuestProcessEvent: TGUID = '{2405F0E5-6588-40A3-9B0A-68C05BA52C4B}';
  IID_IGuestProcessRegisteredEvent: TGUID = '{1D89E2B3-C6EA-45B6-9D43-DC6F70CC9F02}';
  IID_IGuestProcessStateChangedEvent: TGUID = '{C365FB7B-4430-499F-92C8-8BED814A567A}';
  IID_IGuestProcessIOEvent: TGUID = '{9EA9227C-E9BB-49B3-BFC7-C5171E93EF38}';
  IID_IGuestProcessInputNotifyEvent: TGUID = '{0DE887F2-B7DB-4616-AAC6-CFB94D89BA78}';
  IID_IGuestProcessOutputEvent: TGUID = '{D3D5F1EE-BCB2-4905-A7AB-CC85448A742B}';
  IID_IGuestFileEvent: TGUID = '{C8ADB7B0-057D-4391-B928-F14B06B710C5}';
  IID_IGuestFileRegisteredEvent: TGUID = '{D0D93830-70A2-487E-895E-D3FC9679F7B3}';
  IID_IGuestFileStateChangedEvent: TGUID = '{D37FE88F-0979-486C-BAA1-3ABB144DC82D}';
  IID_IGuestFileIOEvent: TGUID = '{B5191A7C-9536-4EF8-820E-3B0E17E5BBC8}';
  IID_IGuestFileOffsetChangedEvent: TGUID = '{E8F79A21-1207-4179-94CF-CA250036308F}';
  IID_IGuestFileSizeChangedEvent: TGUID = '{D78374E9-486E-472F-481B-969746AF2480}';
  IID_IGuestFileReadEvent: TGUID = '{4EE3CBCB-486F-40DB-9150-DEEE3FD24189}';
  IID_IGuestFileWriteEvent: TGUID = '{E062A915-3CF5-4C0A-BC90-9B8D4CC94D89}';
  IID_IVRDEServerChangedEvent: TGUID = '{A06FD66A-3188-4C8C-8756-1395E8CB691C}';
  IID_IVRDEServerInfoChangedEvent: TGUID = '{DD6A1080-E1B7-4339-A549-F0878115596E}';
  IID_IRecordingChangedEvent: TGUID = '{B5DDB370-08A7-4C8F-910D-47AABD67253A}';
  IID_IUSBControllerChangedEvent: TGUID = '{93BADC0C-61D9-4940-A084-E6BB29AF3D83}';
  IID_IUSBDeviceStateChangedEvent: TGUID = '{806DA61B-6679-422A-B629-51B06B0C6D93}';
  IID_ISharedFolderChangedEvent: TGUID = '{B66349B5-3534-4239-B2DE-8E1535D94C0B}';
  IID_IRuntimeErrorEvent: TGUID = '{883DD18B-0721-4CDE-867C-1A82ABAF914C}';
  IID_IEventSourceChangedEvent: TGUID = '{E7932CB8-F6D4-4AB6-9CBF-558EB8959A6A}';
  IID_IExtraDataChangedEvent: TGUID = '{024F00CE-6E0B-492A-A8D0-968472A94DC7}';
  IID_IVetoEvent: TGUID = '{7C5E945F-2354-4267-883F-2F417D216519}';
  IID_IExtraDataCanChangeEvent: TGUID = '{245D88BD-800A-40F8-87A6-170D02249A55}';
  IID_ICanShowWindowEvent: TGUID = '{ADF292B0-92C9-4A77-9D35-E058B39FE0B9}';
  IID_IShowWindowEvent: TGUID = '{B0A0904D-2F05-4D28-855F-488F96BAD2B2}';
  IID_INATRedirectEvent: TGUID = '{24EEF068-C380-4510-BC7C-19314A7352F1}';
  IID_IHostPCIDevicePlugEvent: TGUID = '{A0BAD6DF-D612-47D3-89D4-DB3992533948}';
  IID_IVBoxSVCAvailabilityChangedEvent: TGUID = '{97C78FCD-D4FC-485F-8613-5AF88BFCFCDC}';
  IID_IBandwidthGroupChangedEvent: TGUID = '{334DF94A-7556-4CBC-8C04-043096B02D82}';
  IID_IGuestMonitorChangedEvent: TGUID = '{0F7B8A22-C71F-4A36-8E5F-A77D01D76090}';
  IID_IGuestUserStateChangedEvent: TGUID = '{39B4E759-1EC0-4C0F-857F-FBE2A737A256}';
  IID_IStorageDeviceChangedEvent: TGUID = '{232E9151-AE84-4B8E-B0F3-5C20C35CAAC9}';
  IID_INATNetworkChangedEvent: TGUID = '{101AE042-1A29-4A19-92CF-02285773F3B5}';
  IID_INATNetworkStartStopEvent: TGUID = '{269D8F6B-FA1E-4CEE-91C7-6D8496BEA3C1}';
  IID_INATNetworkAlterEvent: TGUID = '{D947ADF5-4022-DC80-5535-6FB116815604}';
  IID_INATNetworkCreationDeletionEvent: TGUID = '{8D984A7E-B855-40B8-AB0C-44D3515B4528}';
  IID_INATNetworkSettingEvent: TGUID = '{9DB3A9E6-7F29-4AAE-A627-5A282C83092C}';
  IID_INATNetworkPortForwardEvent: TGUID = '{2514881B-23D0-430A-A7FF-7ED7F05534BC}';
  IID_IHostNameResolutionConfigurationChangeEvent: TGUID = '{F9B9E1CF-CB63-47A1-84FB-02C4894B89A9}';
  IID_IProgressEvent: TGUID = '{DAAF9016-1F04-4191-AA2F-1FAC9646AE4C}';
  IID_IProgressPercentageChangedEvent: TGUID = '{F05D7E60-1BCF-4218-9807-04E036CC70F1}';
  IID_IProgressTaskCompletedEvent: TGUID = '{A5BBDB7D-8CE7-469F-A4C2-6476F581FF72}';
  IID_ICursorPositionChangedEvent: TGUID = '{6F302674-C927-11E7-B788-33C248E71FC7}';
  IID_IGuestAdditionsStatusChangedEvent: TGUID = '{FD1A34AD-0B74-4E2B-ED0F-46222DE8A883}';
  IID_IVBoxSVCRegistration: TGUID = '{9E106366-4521-44CC-DF95-186E4D057C83}';
  IID_IVirtualBoxSDS: TGUID = '{152265B8-FE7D-4077-9DD6-032BC3F1C5A3}';
  CLASS_VirtualBox_: TGUID = '{B1A7A4F2-47B9-4A1E-82B2-07CCD5323C3F}';
  CLASS_VirtualBoxClient: TGUID = '{DD3FC71D-26C0-4FE1-BF6F-67F633265BBA}';
  CLASS_Session: TGUID = '{3C02F46D-C9D2-4F11-A384-53F0CF917214}';
  CLASS_VirtualBoxSDS: TGUID = '{74AB5FFE-8726-4435-AA7E-876D705BCBA5}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0115
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0115 = TOleEnum;
const
  VBoxEventType_Invalid = $00000000;
  VBoxEventType_Any = $00000001;
  VBoxEventType_Vetoable = $00000002;
  VBoxEventType_MachineEvent = $00000003;
  VBoxEventType_SnapshotEvent = $00000004;
  VBoxEventType_InputEvent = $00000005;
  VBoxEventType_LastWildcard = $0000001F;
  VBoxEventType_OnMachineStateChanged = $00000020;
  VBoxEventType_OnMachineDataChanged = $00000021;
  VBoxEventType_OnExtraDataChanged = $00000022;
  VBoxEventType_OnExtraDataCanChange = $00000023;
  VBoxEventType_OnMediumRegistered = $00000024;
  VBoxEventType_OnMachineRegistered = $00000025;
  VBoxEventType_OnSessionStateChanged = $00000026;
  VBoxEventType_OnSnapshotTaken = $00000027;
  VBoxEventType_OnSnapshotDeleted = $00000028;
  VBoxEventType_OnSnapshotChanged = $00000029;
  VBoxEventType_OnGuestPropertyChanged = $0000002A;
  VBoxEventType_OnMousePointerShapeChanged = $0000002B;
  VBoxEventType_OnMouseCapabilityChanged = $0000002C;
  VBoxEventType_OnKeyboardLedsChanged = $0000002D;
  VBoxEventType_OnStateChanged = $0000002E;
  VBoxEventType_OnAdditionsStateChanged = $0000002F;
  VBoxEventType_OnNetworkAdapterChanged = $00000030;
  VBoxEventType_OnSerialPortChanged = $00000031;
  VBoxEventType_OnParallelPortChanged = $00000032;
  VBoxEventType_OnStorageControllerChanged = $00000033;
  VBoxEventType_OnMediumChanged = $00000034;
  VBoxEventType_OnVRDEServerChanged = $00000035;
  VBoxEventType_OnUSBControllerChanged = $00000036;
  VBoxEventType_OnUSBDeviceStateChanged = $00000037;
  VBoxEventType_OnSharedFolderChanged = $00000038;
  VBoxEventType_OnRuntimeError = $00000039;
  VBoxEventType_OnCanShowWindow = $0000003A;
  VBoxEventType_OnShowWindow = $0000003B;
  VBoxEventType_OnCPUChanged = $0000003C;
  VBoxEventType_OnVRDEServerInfoChanged = $0000003D;
  VBoxEventType_OnEventSourceChanged = $0000003E;
  VBoxEventType_OnCPUExecutionCapChanged = $0000003F;
  VBoxEventType_OnGuestKeyboard = $00000040;
  VBoxEventType_OnGuestMouse = $00000041;
  VBoxEventType_OnNATRedirect = $00000042;
  VBoxEventType_OnHostPCIDevicePlug = $00000043;
  VBoxEventType_OnVBoxSVCAvailabilityChanged = $00000044;
  VBoxEventType_OnBandwidthGroupChanged = $00000045;
  VBoxEventType_OnGuestMonitorChanged = $00000046;
  VBoxEventType_OnStorageDeviceChanged = $00000047;
  VBoxEventType_OnClipboardModeChanged = $00000048;
  VBoxEventType_OnDnDModeChanged = $00000049;
  VBoxEventType_OnNATNetworkChanged = $0000004A;
  VBoxEventType_OnNATNetworkStartStop = $0000004B;
  VBoxEventType_OnNATNetworkAlter = $0000004C;
  VBoxEventType_OnNATNetworkCreationDeletion = $0000004D;
  VBoxEventType_OnNATNetworkSetting = $0000004E;
  VBoxEventType_OnNATNetworkPortForward = $0000004F;
  VBoxEventType_OnGuestSessionStateChanged = $00000050;
  VBoxEventType_OnGuestSessionRegistered = $00000051;
  VBoxEventType_OnGuestProcessRegistered = $00000052;
  VBoxEventType_OnGuestProcessStateChanged = $00000053;
  VBoxEventType_OnGuestProcessInputNotify = $00000054;
  VBoxEventType_OnGuestProcessOutput = $00000055;
  VBoxEventType_OnGuestFileRegistered = $00000056;
  VBoxEventType_OnGuestFileStateChanged = $00000057;
  VBoxEventType_OnGuestFileOffsetChanged = $00000058;
  VBoxEventType_OnGuestFileRead = $00000059;
  VBoxEventType_OnGuestFileWrite = $0000005A;
  VBoxEventType_OnRecordingChanged = $0000005B;
  VBoxEventType_OnGuestUserStateChanged = $0000005C;
  VBoxEventType_OnGuestMultiTouch = $0000005D;
  VBoxEventType_OnHostNameResolutionConfigurationChange = $0000005E;
  VBoxEventType_OnSnapshotRestored = $0000005F;
  VBoxEventType_OnMediumConfigChanged = $00000060;
  VBoxEventType_OnAudioAdapterChanged = $00000061;
  VBoxEventType_OnProgressPercentageChanged = $00000062;
  VBoxEventType_OnProgressTaskCompleted = $00000063;
  VBoxEventType_OnCursorPositionChanged = $00000064;
  VBoxEventType_OnGuestAdditionsStatusChanged = $00000065;
  VBoxEventType_OnGuestFileSizeChanged = $00000066;
  VBoxEventType_Last = $00000067;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0113
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0113 = TOleEnum;
const
  NATProtocol_UDP = $00000000;
  NATProtocol_TCP = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0023
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0023 = TOleEnum;
const
  DhcpOpt_SubnetMask = $00000001;
  DhcpOpt_TimeOffset = $00000002;
  DhcpOpt_Router = $00000003;
  DhcpOpt_TimeServer = $00000004;
  DhcpOpt_NameServer = $00000005;
  DhcpOpt_DomainNameServer = $00000006;
  DhcpOpt_LogServer = $00000007;
  DhcpOpt_Cookie = $00000008;
  DhcpOpt_LPRServer = $00000009;
  DhcpOpt_ImpressServer = $0000000A;
  DhcpOpt_ResourseLocationServer = $0000000B;
  DhcpOpt_HostName = $0000000C;
  DhcpOpt_BootFileSize = $0000000D;
  DhcpOpt_MeritDumpFile = $0000000E;
  DhcpOpt_DomainName = $0000000F;
  DhcpOpt_SwapServer = $00000010;
  DhcpOpt_RootPath = $00000011;
  DhcpOpt_ExtensionPath = $00000012;
  DhcpOpt_IPForwardingEnableDisable = $00000013;
  DhcpOpt_NonLocalSourceRoutingEnableDisable = $00000014;
  DhcpOpt_PolicyFilter = $00000015;
  DhcpOpt_MaximumDatagramReassemblySize = $00000016;
  DhcpOpt_DefaultIPTime2Live = $00000017;
  DhcpOpt_PathMTUAgingTimeout = $00000018;
  DhcpOpt_IPLayerParametersPerInterface = $00000019;
  DhcpOpt_InterfaceMTU = $0000001A;
  DhcpOpt_AllSubnetsAreLocal = $0000001B;
  DhcpOpt_BroadcastAddress = $0000001C;
  DhcpOpt_PerformMaskDiscovery = $0000001D;
  DhcpOpt_MaskSupplier = $0000001E;
  DhcpOpt_PerformRouteDiscovery = $0000001F;
  DhcpOpt_RouterSolicitationAddress = $00000020;
  DhcpOpt_StaticRoute = $00000021;
  DhcpOpt_TrailerEncapsulation = $00000022;
  DhcpOpt_ARPCacheTimeout = $00000023;
  DhcpOpt_EthernetEncapsulation = $00000024;
  DhcpOpt_TCPDefaultTTL = $00000025;
  DhcpOpt_TCPKeepAliveInterval = $00000026;
  DhcpOpt_TCPKeepAliveGarbage = $00000027;
  DhcpOpt_NetworkInformationServiceDomain = $00000028;
  DhcpOpt_NetworkInformationServiceServers = $00000029;
  DhcpOpt_NetworkTimeProtocolServers = $0000002A;
  DhcpOpt_VendorSpecificInformation = $0000002B;
  DhcpOpt_Option_44 = $0000002C;
  DhcpOpt_Option_45 = $0000002D;
  DhcpOpt_Option_46 = $0000002E;
  DhcpOpt_Option_47 = $0000002F;
  DhcpOpt_Option_48 = $00000030;
  DhcpOpt_Option_49 = $00000031;
  DhcpOpt_IPAddressLeaseTime = $00000033;
  DhcpOpt_Option_64 = $00000040;
  DhcpOpt_Option_65 = $00000041;
  DhcpOpt_TFTPServerName = $00000042;
  DhcpOpt_BootfileName = $00000043;
  DhcpOpt_Option_68 = $00000044;
  DhcpOpt_Option_69 = $00000045;
  DhcpOpt_Option_70 = $00000046;
  DhcpOpt_Option_71 = $00000047;
  DhcpOpt_Option_72 = $00000048;
  DhcpOpt_Option_73 = $00000049;
  DhcpOpt_Option_74 = $0000004A;
  DhcpOpt_Option_75 = $0000004B;
  DhcpOpt_Option_119 = $00000077;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0081
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0081 = TOleEnum;
const
  MediumState_NotCreated = $00000000;
  MediumState_Created = $00000001;
  MediumState_LockedRead = $00000002;
  MediumState_LockedWrite = $00000003;
  MediumState_Inaccessible = $00000004;
  MediumState_Creating = $00000005;
  MediumState_Deleting = $00000006;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0083
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0083 = TOleEnum;
const
  MediumVariant_Standard = $00000000;
  MediumVariant_VmdkSplit2G = $00000001;
  MediumVariant_VmdkRawDisk = $00000002;
  MediumVariant_VmdkStreamOptimized = $00000004;
  MediumVariant_VmdkESX = $00000008;
  MediumVariant_VdiZeroExpand = $00000100;
  MediumVariant_Fixed = $00010000;
  MediumVariant_Diff = $00020000;
  MediumVariant_Formatted = $20000000;
  MediumVariant_NoCreateDir = $40000000;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0011
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0011 = TOleEnum;
const
  DeviceType_Null = $00000000;
  DeviceType_Floppy = $00000001;
  DeviceType_DVD = $00000002;
  DeviceType_HardDisk = $00000003;
  DeviceType_Network = $00000004;
  DeviceType_USB = $00000005;
  DeviceType_SharedFolder = $00000006;
  DeviceType_Graphics3D = $00000007;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0086
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0086 = TOleEnum;
const
  MediumFormatCapabilities_Uuid = $00000001;
  MediumFormatCapabilities_CreateFixed = $00000002;
  MediumFormatCapabilities_CreateDynamic = $00000004;
  MediumFormatCapabilities_CreateSplit2G = $00000008;
  MediumFormatCapabilities_Differencing = $00000010;
  MediumFormatCapabilities_Asynchronous = $00000020;
  MediumFormatCapabilities_File = $00000040;
  MediumFormatCapabilities_Properties = $00000080;
  MediumFormatCapabilities_TcpNetworking = $00000100;
  MediumFormatCapabilities_VFS = $00000200;
  MediumFormatCapabilities_Discard = $00000400;
  MediumFormatCapabilities_Preferred = $00000800;
  MediumFormatCapabilities_CapabilityMask = $00000FFF;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0084
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0084 = TOleEnum;
const
  DataType_Int32 = $00000000;
  DataType_Int8 = $00000001;
  DataType_String = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0082
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0082 = TOleEnum;
const
  MediumType_Normal = $00000000;
  MediumType_Immutable = $00000001;
  MediumType_Writethrough = $00000002;
  MediumType_Shareable = $00000003;
  MediumType_Readonly = $00000004;
  MediumType_MultiAttach = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0025
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0025 = TOleEnum;
const
  VFSType_File = $00000001;
  VFSType_Cloud = $00000002;
  VFSType_S3 = $00000003;
  VFSType_WebDav = $00000004;
  VFSType_OCI = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0087
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0087 = TOleEnum;
const
  PartitionTableType_MBR = $00000001;
  PartitionTableType_GPT = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0101
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0101 = TOleEnum;
const
  USBConnectionSpeed_Null = $00000000;
  USBConnectionSpeed_Low = $00000001;
  USBConnectionSpeed_Full = $00000002;
  USBConnectionSpeed_High = $00000003;
  USBConnectionSpeed_Super = $00000004;
  USBConnectionSpeed_SuperPlus = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0102
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0102 = TOleEnum;
const
  USBDeviceState_NotSupported = $00000000;
  USBDeviceState_Unavailable = $00000001;
  USBDeviceState_Busy = $00000002;
  USBDeviceState_Available = $00000003;
  USBDeviceState_Held = $00000004;
  USBDeviceState_Captured = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0103
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0103 = TOleEnum;
const
  USBDeviceFilterAction_Null = $00000000;
  USBDeviceFilterAction_Ignore = $00000001;
  USBDeviceFilterAction_Hold = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0042
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0042 = TOleEnum;
const
  HostNetworkInterfaceMediumType_Unknown = $00000000;
  HostNetworkInterfaceMediumType_Ethernet = $00000001;
  HostNetworkInterfaceMediumType_PPP = $00000002;
  HostNetworkInterfaceMediumType_SLIP = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0043
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0043 = TOleEnum;
const
  HostNetworkInterfaceStatus_Unknown = $00000000;
  HostNetworkInterfaceStatus_Up = $00000001;
  HostNetworkInterfaceStatus_Down = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0044
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0044 = TOleEnum;
const
  HostNetworkInterfaceType_Bridged = $00000001;
  HostNetworkInterfaceType_HostOnly = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0018
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0018 = TOleEnum;
const
  ProcessorFeature_HWVirtEx = $00000000;
  ProcessorFeature_PAE = $00000001;
  ProcessorFeature_LongMode = $00000002;
  ProcessorFeature_NestedPaging = $00000003;
  ProcessorFeature_UnrestrictedGuest = $00000004;
  ProcessorFeature_NestedHWVirt = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0104
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0104 = TOleEnum;
const
  AudioDriverType_Null = $00000000;
  AudioDriverType_WinMM = $00000001;
  AudioDriverType_OSS = $00000002;
  AudioDriverType_ALSA = $00000003;
  AudioDriverType_DirectSound = $00000004;
  AudioDriverType_CoreAudio = $00000005;
  AudioDriverType_MMPM = $00000006;
  AudioDriverType_Pulse = $00000007;
  AudioDriverType_SolAudio = $00000008;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0022
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0022 = TOleEnum;
const
  BitmapFormat_Opaque = $00000000;
  BitmapFormat_BGR = $20524742;
  BitmapFormat_BGR0 = $30524742;
  BitmapFormat_BGRA = $41524742;
  BitmapFormat_RGBA = $41424752;
  BitmapFormat_PNG = $20474E50;
  BitmapFormat_JPEG = $4745504A;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0045
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0045 = TOleEnum;
const
  ProxyMode_System = $00000000;
  ProxyMode_NoProxy = $00000001;
  ProxyMode_Manual = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0111
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0111 = TOleEnum;
const
  ChipsetType_Null = $00000000;
  ChipsetType_PIIX3 = $00000001;
  ChipsetType_ICH9 = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0094
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0094 = TOleEnum;
const
  NetworkAttachmentType_Null = $00000000;
  NetworkAttachmentType_NAT = $00000001;
  NetworkAttachmentType_Bridged = $00000002;
  NetworkAttachmentType_Internal = $00000003;
  NetworkAttachmentType_HostOnly = $00000004;
  NetworkAttachmentType_Generic = $00000005;
  NetworkAttachmentType_NATNetwork = $00000006;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0109
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0109 = TOleEnum;
const
  StorageBus_Null = $00000000;
  StorageBus_IDE = $00000001;
  StorageBus_SATA = $00000002;
  StorageBus_SCSI = $00000003;
  StorageBus_Floppy = $00000004;
  StorageBus_SAS = $00000005;
  StorageBus_USB = $00000006;
  StorageBus_PCIe = $00000007;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0110
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0110 = TOleEnum;
const
  StorageControllerType_Null = $00000000;
  StorageControllerType_LsiLogic = $00000001;
  StorageControllerType_BusLogic = $00000002;
  StorageControllerType_IntelAhci = $00000003;
  StorageControllerType_PIIX3 = $00000004;
  StorageControllerType_PIIX4 = $00000005;
  StorageControllerType_ICH6 = $00000006;
  StorageControllerType_I82078 = $00000007;
  StorageControllerType_LsiLogicSas = $00000008;
  StorageControllerType_USB = $00000009;
  StorageControllerType_NVMe = $0000000A;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0100
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0100 = TOleEnum;
const
  USBControllerType_Null = $00000000;
  USBControllerType_OHCI = $00000001;
  USBControllerType_EHCI = $00000002;
  USBControllerType_XHCI = $00000003;
  USBControllerType_Last = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0037
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0037 = TOleEnum;
const
  GraphicsControllerType_Null = $00000000;
  GraphicsControllerType_VBoxVGA = $00000001;
  GraphicsControllerType_VMSVGA = $00000002;
  GraphicsControllerType_VBoxSVGA = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0016
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0016 = TOleEnum;
const
  BIOSBootMenuMode_Disabled = $00000000;
  BIOSBootMenuMode_MenuOnly = $00000001;
  BIOSBootMenuMode_MessageAndMenu = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0017
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0017 = TOleEnum;
const
  APICMode_Disabled = $00000000;
  APICMode_APIC = $00000001;
  APICMode_X2APIC = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0031
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0031 = TOleEnum;
const
  RecordingDestination_None = $00000000;
  RecordingDestination_File = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0033
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0033 = TOleEnum;
const
  RecordingAudioCodec_None = $00000000;
  RecordingAudioCodec_WavPCM = $00000001;
  RecordingAudioCodec_Opus = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0034
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0034 = TOleEnum;
const
  RecordingVideoCodec_None = $00000000;
  RecordingVideoCodec_VP8 = $00000001;
  RecordingVideoCodec_VP9 = $00000002;
  RecordingVideoCodec_AV1 = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0036
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0036 = TOleEnum;
const
  RecordingVideoRateControlMode_CBR = $00000000;
  RecordingVideoRateControlMode_VBR = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0035
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0035 = TOleEnum;
const
  RecordingVideoScalingMethod_None = $00000000;
  RecordingVideoScalingMethod_NearestNeighbor = $00000001;
  RecordingVideoScalingMethod_Bilinear = $00000002;
  RecordingVideoScalingMethod_Bicubic = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0032
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0032 = TOleEnum;
const
  RecordingFeature_None = $00000000;
  RecordingFeature_Video = $00000001;
  RecordingFeature_Audio = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0019
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0019 = TOleEnum;
const
  FirmwareType_BIOS = $00000001;
  FirmwareType_EFI = $00000002;
  FirmwareType_EFI32 = $00000003;
  FirmwareType_EFI64 = $00000004;
  FirmwareType_EFIDUAL = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0020
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0020 = TOleEnum;
const
  PointingHIDType_None = $00000001;
  PointingHIDType_PS2Mouse = $00000002;
  PointingHIDType_USBMouse = $00000003;
  PointingHIDType_USBTablet = $00000004;
  PointingHIDType_ComboMouse = $00000005;
  PointingHIDType_USBMultiTouch = $00000006;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0021
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0021 = TOleEnum;
const
  KeyboardHIDType_None = $00000001;
  KeyboardHIDType_PS2Keyboard = $00000002;
  KeyboardHIDType_USBKeyboard = $00000003;
  KeyboardHIDType_ComboKeyboard = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0107
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0107 = TOleEnum;
const
  AuthType_Null = $00000000;
  AuthType_External = $00000001;
  AuthType_Guest = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0114
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0114 = TOleEnum;
const
  BandwidthGroupType_Null = $00000000;
  BandwidthGroupType_Disk = $00000001;
  BandwidthGroupType_Network = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0105
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0105 = TOleEnum;
const
  AudioControllerType_AC97 = $00000000;
  AudioControllerType_SB16 = $00000001;
  AudioControllerType_HDA = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0106
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0106 = TOleEnum;
const
  AudioCodecType_Null = $00000000;
  AudioCodecType_SB16 = $00000001;
  AudioCodecType_STAC9700 = $00000002;
  AudioCodecType_AD1980 = $00000003;
  AudioCodecType_STAC9221 = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0004
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0004 = TOleEnum;
const
  SessionState_Null = $00000000;
  SessionState_Unlocked = $00000001;
  SessionState_Locked = $00000002;
  SessionState_Spawning = $00000003;
  SessionState_Unlocking = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0003
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0003 = TOleEnum;
const
  MachineState_Null = $00000000;
  MachineState_PoweredOff = $00000001;
  MachineState_Saved = $00000002;
  MachineState_Teleported = $00000003;
  MachineState_Aborted = $00000004;
  MachineState_Running = $00000005;
  MachineState_Paused = $00000006;
  MachineState_Stuck = $00000007;
  MachineState_Teleporting = $00000008;
  MachineState_LiveSnapshotting = $00000009;
  MachineState_Starting = $0000000A;
  MachineState_Stopping = $0000000B;
  MachineState_Saving = $0000000C;
  MachineState_Restoring = $0000000D;
  MachineState_TeleportingPausedVM = $0000000E;
  MachineState_TeleportingIn = $0000000F;
  MachineState_FaultTolerantSyncing = $00000010;
  MachineState_DeletingSnapshotOnline = $00000011;
  MachineState_DeletingSnapshotPaused = $00000012;
  MachineState_OnlineSnapshotting = $00000013;
  MachineState_RestoringSnapshot = $00000014;
  MachineState_DeletingSnapshot = $00000015;
  MachineState_SettingUp = $00000016;
  MachineState_Snapshotting = $00000017;
  MachineState_FirstOnline = $00000005;
  MachineState_LastOnline = $00000013;
  MachineState_FirstTransient = $00000008;
  MachineState_LastTransient = $00000017;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0013
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0013 = TOleEnum;
const
  ClipboardMode_Disabled = $00000000;
  ClipboardMode_HostToGuest = $00000001;
  ClipboardMode_GuestToHost = $00000002;
  ClipboardMode_Bidirectional = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0014
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0014 = TOleEnum;
const
  DnDMode_Disabled = $00000000;
  DnDMode_HostToGuest = $00000001;
  DnDMode_GuestToHost = $00000002;
  DnDMode_Bidirectional = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0007
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0007 = TOleEnum;
const
  ParavirtProvider_None = $00000000;
  ParavirtProvider_Default = $00000001;
  ParavirtProvider_Legacy = $00000002;
  ParavirtProvider_Minimal = $00000003;
  ParavirtProvider_HyperV = $00000004;
  ParavirtProvider_KVM = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0008
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0008 = TOleEnum;
const
  FaultToleranceState_Inactive = $00000001;
  FaultToleranceState_Master = $00000002;
  FaultToleranceState_Standby = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0041
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0041 = TOleEnum;
const
  AutostopType_Disabled = $00000001;
  AutostopType_SaveState = $00000002;
  AutostopType_PowerOff = $00000003;
  AutostopType_AcpiShutdown = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0010
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0010 = TOleEnum;
const
  SessionType_Null = $00000000;
  SessionType_WriteLock = $00000001;
  SessionType_Remote = $00000002;
  SessionType_Shared = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0049
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0049 = TOleEnum;
const
  AdditionsRunLevelType_None = $00000000;
  AdditionsRunLevelType_System = $00000001;
  AdditionsRunLevelType_Userland = $00000002;
  AdditionsRunLevelType_Desktop = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0079
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0079 = TOleEnum;
const
  DnDAction_Ignore = $00000000;
  DnDAction_Copy = $00000001;
  DnDAction_Move = $00000002;
  DnDAction_Link = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0047
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0047 = TOleEnum;
const
  AdditionsFacilityClass_None = $00000000;
  AdditionsFacilityClass_Driver = $0000000A;
  AdditionsFacilityClass_Service = $0000001E;
  AdditionsFacilityClass_Program = $00000032;
  AdditionsFacilityClass_Feature = $00000064;
  AdditionsFacilityClass_ThirdParty = $000003E7;
  AdditionsFacilityClass_All = $7FFFFFFE;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0048
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0048 = TOleEnum;
const
  AdditionsFacilityStatus_Inactive = $00000000;
  AdditionsFacilityStatus_Paused = $00000001;
  AdditionsFacilityStatus_PreInit = $00000014;
  AdditionsFacilityStatus_Init = $0000001E;
  AdditionsFacilityStatus_Active = $00000032;
  AdditionsFacilityStatus_Terminating = $00000064;
  AdditionsFacilityStatus_Terminated = $00000065;
  AdditionsFacilityStatus_Failed = $00000320;
  AdditionsFacilityStatus_Unknown = $000003E7;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0046
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0046 = TOleEnum;
const
  AdditionsFacilityType_None = $00000000;
  AdditionsFacilityType_VBoxGuestDriver = $00000014;
  AdditionsFacilityType_AutoLogon = $0000005A;
  AdditionsFacilityType_VBoxService = $00000064;
  AdditionsFacilityType_VBoxTrayClient = $00000065;
  AdditionsFacilityType_Seamless = $000003E8;
  AdditionsFacilityType_Graphics = $0000044C;
  AdditionsFacilityType_MonitorAttach = $0000044D;
  AdditionsFacilityType_All = $7FFFFFFE;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0051
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0051 = TOleEnum;
const
  GuestSessionStatus_Undefined = $00000000;
  GuestSessionStatus_Starting = $0000000A;
  GuestSessionStatus_Started = $00000064;
  GuestSessionStatus_Terminating = $000001E0;
  GuestSessionStatus_Terminated = $000001F4;
  GuestSessionStatus_TimedOutKilled = $00000200;
  GuestSessionStatus_TimedOutAbnormally = $00000201;
  GuestSessionStatus_Down = $00000258;
  GuestSessionStatus_Error = $00000320;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0070
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0070 = TOleEnum;
const
  ProcessStatus_Undefined = $00000000;
  ProcessStatus_Starting = $0000000A;
  ProcessStatus_Started = $00000064;
  ProcessStatus_Paused = $0000006E;
  ProcessStatus_Terminating = $000001E0;
  ProcessStatus_TerminatedNormally = $000001F4;
  ProcessStatus_TerminatedSignal = $000001FE;
  ProcessStatus_TerminatedAbnormally = $000001FF;
  ProcessStatus_TimedOutKilled = $00000200;
  ProcessStatus_TimedOutAbnormally = $00000201;
  ProcessStatus_Down = $00000258;
  ProcessStatus_Error = $00000320;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0059
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0059 = TOleEnum;
const
  ProcessWaitResult_None = $00000000;
  ProcessWaitResult_Start = $00000001;
  ProcessWaitResult_Terminate = $00000002;
  ProcessWaitResult_Status = $00000003;
  ProcessWaitResult_Error = $00000004;
  ProcessWaitResult_Timeout = $00000005;
  ProcessWaitResult_StdIn = $00000006;
  ProcessWaitResult_StdOut = $00000007;
  ProcessWaitResult_StdErr = $00000008;
  ProcessWaitResult_WaitFlagNotSupported = $00000009;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0058
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0058 = TOleEnum;
const
  ProcessWaitForFlag_None = $00000000;
  ProcessWaitForFlag_Start = $00000001;
  ProcessWaitForFlag_Terminate = $00000002;
  ProcessWaitForFlag_StdIn = $00000004;
  ProcessWaitForFlag_StdOut = $00000008;
  ProcessWaitForFlag_StdErr = $00000010;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0056
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0056 = TOleEnum;
const
  ProcessInputFlag_None = $00000000;
  ProcessInputFlag_EndOfFile = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0072
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0072 = TOleEnum;
const
  PathStyle_DOS = $00000001;
  PathStyle_UNIX = $00000002;
  PathStyle_Unknown = $00000008;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0078
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0078 = TOleEnum;
const
  FsObjType_Unknown = $00000001;
  FsObjType_Fifo = $00000002;
  FsObjType_DevChar = $00000003;
  FsObjType_Directory = $00000004;
  FsObjType_DevBlock = $00000005;
  FsObjType_File = $00000006;
  FsObjType_Symlink = $00000007;
  FsObjType_Socket = $00000008;
  FsObjType_WhiteOut = $00000009;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0077
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0077 = TOleEnum;
const
  FileStatus_Undefined = $00000000;
  FileStatus_Opening = $0000000A;
  FileStatus_Open = $00000064;
  FileStatus_Closing = $00000096;
  FileStatus_Closed = $000000C8;
  FileStatus_Down = $00000258;
  FileStatus_Error = $00000320;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0074
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0074 = TOleEnum;
const
  FileOpenAction_OpenExisting = $00000001;
  FileOpenAction_OpenOrCreate = $00000002;
  FileOpenAction_CreateNew = $00000003;
  FileOpenAction_CreateOrReplace = $00000004;
  FileOpenAction_OpenExistingTruncated = $00000005;
  FileOpenAction_AppendOrCreate = $00000063;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0073
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0073 = TOleEnum;
const
  FileAccessMode_ReadOnly = $00000001;
  FileAccessMode_WriteOnly = $00000002;
  FileAccessMode_ReadWrite = $00000003;
  FileAccessMode_AppendOnly = $00000004;
  FileAccessMode_AppendRead = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0055
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0055 = TOleEnum;
const
  FileSeekOrigin_Begin = $00000000;
  FileSeekOrigin_Current = $00000001;
  FileSeekOrigin_End = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0063
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0063 = TOleEnum;
const
  DirectoryCopyFlag_None = $00000000;
  DirectoryCopyFlag_CopyIntoExisting = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0062
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0062 = TOleEnum;
const
  DirectoryCreateFlag_None = $00000000;
  DirectoryCreateFlag_Parents = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0080
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0080 = TOleEnum;
const
  DirectoryOpenFlag_None = $00000000;
  DirectoryOpenFlag_NoSymlinks = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0064
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0064 = TOleEnum;
const
  DirectoryRemoveRecFlag_None = $00000000;
  DirectoryRemoveRecFlag_ContentAndDir = $00000001;
  DirectoryRemoveRecFlag_ContentOnly = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0060
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0060 = TOleEnum;
const
  FileCopyFlag_None = $00000000;
  FileCopyFlag_NoReplace = $00000001;
  FileCopyFlag_FollowLinks = $00000002;
  FileCopyFlag_Update = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0075
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0075 = TOleEnum;
const
  FileSharingMode_Read = $00000001;
  FileSharingMode_Write = $00000002;
  FileSharingMode_ReadWrite = $00000003;
  FileSharingMode_Delete = $00000004;
  FileSharingMode_ReadDelete = $00000005;
  FileSharingMode_WriteDelete = $00000006;
  FileSharingMode_All = $00000007;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0076
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0076 = TOleEnum;
const
  FileOpenExFlag_None = $00000000;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0065
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0065 = TOleEnum;
const
  FsObjRenameFlag_NoReplace = $00000000;
  FsObjRenameFlag_Replace = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0061
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0061 = TOleEnum;
const
  FsObjMoveFlag_None = $00000000;
  FsObjMoveFlag_Replace = $00000001;
  FsObjMoveFlag_FollowLinks = $00000002;
  FsObjMoveFlag_AllowDirectoryMoves = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0066
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0066 = TOleEnum;
const
  ProcessCreateFlag_None = $00000000;
  ProcessCreateFlag_WaitForProcessStartOnly = $00000001;
  ProcessCreateFlag_IgnoreOrphanedProcesses = $00000002;
  ProcessCreateFlag_Hidden = $00000004;
  ProcessCreateFlag_Profile = $00000008;
  ProcessCreateFlag_WaitForStdOut = $00000010;
  ProcessCreateFlag_WaitForStdErr = $00000020;
  ProcessCreateFlag_ExpandArguments = $00000040;
  ProcessCreateFlag_UnquotedArguments = $00000080;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0067
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0067 = TOleEnum;
const
  ProcessPriority_Invalid = $00000000;
  ProcessPriority_Default = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0068
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0068 = TOleEnum;
const
  SymlinkType_Unknown = $00000000;
  SymlinkType_Directory = $00000001;
  SymlinkType_File = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0069
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0069 = TOleEnum;
const
  SymlinkReadFlag_None = $00000000;
  SymlinkReadFlag_NoSymlinks = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0053
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0053 = TOleEnum;
const
  GuestSessionWaitResult_None = $00000000;
  GuestSessionWaitResult_Start = $00000001;
  GuestSessionWaitResult_Terminate = $00000002;
  GuestSessionWaitResult_Status = $00000003;
  GuestSessionWaitResult_Error = $00000004;
  GuestSessionWaitResult_Timeout = $00000005;
  GuestSessionWaitResult_WaitFlagNotSupported = $00000006;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0052
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0052 = TOleEnum;
const
  GuestSessionWaitForFlag_None = $00000000;
  GuestSessionWaitForFlag_Start = $00000001;
  GuestSessionWaitForFlag_Terminate = $00000002;
  GuestSessionWaitForFlag_Status = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0050
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0050 = TOleEnum;
const
  AdditionsUpdateFlag_None = $00000000;
  AdditionsUpdateFlag_WaitForUpdateStartOnly = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0088
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0088 = TOleEnum;
const
  KeyboardLED_NumLock = $00000001;
  KeyboardLED_CapsLock = $00000002;
  KeyboardLED_ScrollLock = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0092
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0092 = TOleEnum;
const
  GuestMonitorStatus_Disabled = $00000000;
  GuestMonitorStatus_Enabled = $00000001;
  GuestMonitorStatus_Blank = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0091
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0091 = TOleEnum;
const
  FramebufferCapabilities_UpdateImage = $00000001;
  FramebufferCapabilities_VHWA = $00000002;
  FramebufferCapabilities_VisibleRegion = $00000004;
  FramebufferCapabilities_RenderCursor = $00000008;
  FramebufferCapabilities_MoveCursor = $00000010;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0093
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0093 = TOleEnum;
const
  ScreenLayoutMode_Apply = $00000000;
  ScreenLayoutMode_Reset = $00000001;
  ScreenLayoutMode_Attach = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0099
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0099 = TOleEnum;
const
  VMExecutionEngine_NotSet = $00000000;
  VMExecutionEngine_RawMode = $00000001;
  VMExecutionEngine_HwVirt = $00000002;
  VMExecutionEngine_NativeApi = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0012
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0012 = TOleEnum;
const
  DeviceActivity_Null = $00000000;
  DeviceActivity_Idle = $00000001;
  DeviceActivity_Reading = $00000002;
  DeviceActivity_Writing = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0009
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0009 = TOleEnum;
const
  LockType_Null = $00000000;
  LockType_Shared = $00000001;
  LockType_Write = $00000002;
  LockType_VM = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0095
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0095 = TOleEnum;
const
  NetworkAdapterType_Null = $00000000;
  NetworkAdapterType_Am79C970A = $00000001;
  NetworkAdapterType_Am79C973 = $00000002;
  NetworkAdapterType_I82540EM = $00000003;
  NetworkAdapterType_I82543GC = $00000004;
  NetworkAdapterType_I82545EM = $00000005;
  NetworkAdapterType_Virtio = $00000006;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0096
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0096 = TOleEnum;
const
  NetworkAdapterPromiscModePolicy_Deny = $00000001;
  NetworkAdapterPromiscModePolicy_AllowNetwork = $00000002;
  NetworkAdapterPromiscModePolicy_AllowAll = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0097
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0097 = TOleEnum;
const
  PortMode_Disconnected = $00000000;
  PortMode_HostPipe = $00000001;
  PortMode_HostDevice = $00000002;
  PortMode_RawFile = $00000003;
  PortMode_TCP = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0098
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0098 = TOleEnum;
const
  UartType_U16450 = $00000000;
  UartType_U16550A = $00000001;
  UartType_U16750 = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0005
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0005 = TOleEnum;
const
  CPUPropertyType_Null = $00000000;
  CPUPropertyType_PAE = $00000001;
  CPUPropertyType_LongMode = $00000002;
  CPUPropertyType_TripleFaultReset = $00000003;
  CPUPropertyType_APIC = $00000004;
  CPUPropertyType_X2APIC = $00000005;
  CPUPropertyType_IBPBOnVMExit = $00000006;
  CPUPropertyType_IBPBOnVMEntry = $00000007;
  CPUPropertyType_HWVirt = $00000008;
  CPUPropertyType_SpecCtrl = $00000009;
  CPUPropertyType_SpecCtrlByHost = $0000000A;
  CPUPropertyType_L1DFlushOnEMTScheduling = $0000000B;
  CPUPropertyType_L1DFlushOnVMEntry = $0000000C;
  CPUPropertyType_MDSClearOnEMTScheduling = $0000000D;
  CPUPropertyType_MDSClearOnVMEntry = $0000000E;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0006
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0006 = TOleEnum;
const
  HWVirtExPropertyType_Null = $00000000;
  HWVirtExPropertyType_Enabled = $00000001;
  HWVirtExPropertyType_VPID = $00000002;
  HWVirtExPropertyType_NestedPaging = $00000003;
  HWVirtExPropertyType_UnrestrictedExecution = $00000004;
  HWVirtExPropertyType_LargePages = $00000005;
  HWVirtExPropertyType_Force = $00000006;
  HWVirtExPropertyType_UseNativeApi = $00000007;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0038
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0038 = TOleEnum;
const
  CleanupMode_UnregisterOnly = $00000001;
  CleanupMode_DetachAllReturnNone = $00000002;
  CleanupMode_DetachAllReturnHardDisksOnly = $00000003;
  CleanupMode_Full = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0029
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0029 = TOleEnum;
const
  VirtualSystemDescriptionType_Ignore = $00000001;
  VirtualSystemDescriptionType_OS = $00000002;
  VirtualSystemDescriptionType_Name = $00000003;
  VirtualSystemDescriptionType_Product = $00000004;
  VirtualSystemDescriptionType_Vendor = $00000005;
  VirtualSystemDescriptionType_Version = $00000006;
  VirtualSystemDescriptionType_ProductUrl = $00000007;
  VirtualSystemDescriptionType_VendorUrl = $00000008;
  VirtualSystemDescriptionType_Description = $00000009;
  VirtualSystemDescriptionType_License = $0000000A;
  VirtualSystemDescriptionType_Miscellaneous = $0000000B;
  VirtualSystemDescriptionType_CPU = $0000000C;
  VirtualSystemDescriptionType_Memory = $0000000D;
  VirtualSystemDescriptionType_HardDiskControllerIDE = $0000000E;
  VirtualSystemDescriptionType_HardDiskControllerSATA = $0000000F;
  VirtualSystemDescriptionType_HardDiskControllerSCSI = $00000010;
  VirtualSystemDescriptionType_HardDiskControllerSAS = $00000011;
  VirtualSystemDescriptionType_HardDiskImage = $00000012;
  VirtualSystemDescriptionType_Floppy = $00000013;
  VirtualSystemDescriptionType_CDROM = $00000014;
  VirtualSystemDescriptionType_NetworkAdapter = $00000015;
  VirtualSystemDescriptionType_USBController = $00000016;
  VirtualSystemDescriptionType_SoundCard = $00000017;
  VirtualSystemDescriptionType_SettingsFile = $00000018;
  VirtualSystemDescriptionType_BaseFolder = $00000019;
  VirtualSystemDescriptionType_PrimaryGroup = $0000001A;
  VirtualSystemDescriptionType_CloudInstanceShape = $0000001B;
  VirtualSystemDescriptionType_CloudDomain = $0000001C;
  VirtualSystemDescriptionType_CloudBootDiskSize = $0000001D;
  VirtualSystemDescriptionType_CloudBucket = $0000001E;
  VirtualSystemDescriptionType_CloudOCIVCN = $0000001F;
  VirtualSystemDescriptionType_CloudPublicIP = $00000020;
  VirtualSystemDescriptionType_CloudProfileName = $00000021;
  VirtualSystemDescriptionType_CloudOCISubnet = $00000022;
  VirtualSystemDescriptionType_CloudKeepObject = $00000023;
  VirtualSystemDescriptionType_CloudLaunchInstance = $00000024;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0030
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0030 = TOleEnum;
const
  VirtualSystemDescriptionValueType_Reference = $00000001;
  VirtualSystemDescriptionValueType_Original = $00000002;
  VirtualSystemDescriptionValueType_Auto = $00000003;
  VirtualSystemDescriptionValueType_ExtraConfig = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0028
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0028 = TOleEnum;
const
  CertificateVersion_V1 = $00000001;
  CertificateVersion_V2 = $00000002;
  CertificateVersion_V3 = $00000003;
  CertificateVersion_Unknown = $00000063;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0026
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0026 = TOleEnum;
const
  ImportOptions_KeepAllMACs = $00000001;
  ImportOptions_KeepNATMACs = $00000002;
  ImportOptions_ImportToVDI = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0027
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0027 = TOleEnum;
const
  ExportOptions_CreateManifest = $00000001;
  ExportOptions_ExportDVDImages = $00000002;
  ExportOptions_StripAllMACs = $00000003;
  ExportOptions_StripAllNonNATMACs = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0039
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0039 = TOleEnum;
const
  CloneMode_MachineState = $00000001;
  CloneMode_MachineAndChildStates = $00000002;
  CloneMode_AllStates = $00000003;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0040
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0040 = TOleEnum;
const
  CloneOptions_Link = $00000001;
  CloneOptions_KeepAllMACs = $00000002;
  CloneOptions_KeepNATMACs = $00000003;
  CloneOptions_KeepDiskNames = $00000004;
  CloneOptions_KeepHwUUIDs = $00000005;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0002
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0002 = TOleEnum;
const
  AccessMode_ReadOnly = $00000001;
  AccessMode_ReadWrite = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0108
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0108 = TOleEnum;
const
  Reason_Unspecified = $00000000;
  Reason_HostSuspend = $00000001;
  Reason_HostResume = $00000002;
  Reason_HostBatteryLow = $00000003;
  Reason_Snapshot = $00000004;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0116
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0116 = TOleEnum;
const
  GuestMouseEventMode_Relative = $00000000;
  GuestMouseEventMode_Absolute = $00000001;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0071
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0071 = TOleEnum;
const
  ProcessInputStatus_Undefined = $00000000;
  ProcessInputStatus_Broken = $00000001;
  ProcessInputStatus_Available = $0000000A;
  ProcessInputStatus_Written = $00000032;
  ProcessInputStatus_Overflow = $00000064;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0015
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0015 = TOleEnum;
const
  Scope_Global = $00000000;
  Scope_Machine = $00000001;
  Scope_Session = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0117
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0117 = TOleEnum;
const
  GuestMonitorChangedEventType_Enabled = $00000000;
  GuestMonitorChangedEventType_Disabled = $00000001;
  GuestMonitorChangedEventType_NewOrigin = $00000002;

// Constants for enum __MIDL___MIDL_itf_VirtualBox_0000_0000_0054
type
  __MIDL___MIDL_itf_VirtualBox_0000_0000_0054 = TOleEnum;
const
  GuestUserState_Unknown = $00000000;
  GuestUserState_LoggedIn = $00000001;
  GuestUserState_LoggedOut = $00000002;
  GuestUserState_Locked = $00000003;
  GuestUserState_Unlocked = $00000004;
  GuestUserState_Disabled = $00000005;
  GuestUserState_Idle = $00000006;
  GuestUserState_InUse = $00000007;
  GuestUserState_Created = $00000008;
  GuestUserState_Deleted = $00000009;
  GuestUserState_SessionChanged = $0000000A;
  GuestUserState_CredentialsChanged = $0000000B;
  GuestUserState_RoleChanged = $0000000C;
  GuestUserState_GroupAdded = $0000000D;
  GuestUserState_GroupRemoved = $0000000E;
  GuestUserState_Elevated = $0000000F;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IErrorInfo = interface;
  IVirtualBoxErrorInfo = interface;
  IVirtualBoxErrorInfoDisp = dispinterface;
  INATNetwork = interface;
  INATNetworkDisp = dispinterface;
  IEventSource = interface;
  IEventSourceDisp = dispinterface;
  IEventListener = interface;
  IEventListenerDisp = dispinterface;
  IEvent = interface;
  IEventDisp = dispinterface;
  IDHCPServer = interface;
  IDHCPServerDisp = dispinterface;
  IVirtualBox = interface;
  IVirtualBoxDisp = dispinterface;
  IHost = interface;
  IHostDisp = dispinterface;
  IMedium = interface;
  IMediumDisp = dispinterface;
  IMediumFormat = interface;
  IMediumFormatDisp = dispinterface;
  IToken = interface;
  ITokenDisp = dispinterface;
  IProgress = interface;
  IProgressDisp = dispinterface;
  IMediumIO = interface;
  IMediumIODisp = dispinterface;
  IVFSExplorer = interface;
  IVFSExplorerDisp = dispinterface;
  IDataStream = interface;
  IDataStreamDisp = dispinterface;
  IUSBDevice = interface;
  IUSBDeviceDisp = dispinterface;
  IHostUSBDevice = interface;
  IHostUSBDeviceDisp = dispinterface;
  IUSBDeviceFilter = interface;
  IUSBDeviceFilterDisp = dispinterface;
  IHostUSBDeviceFilter = interface;
  IHostUSBDeviceFilterDisp = dispinterface;
  IHostNetworkInterface = interface;
  IHostNetworkInterfaceDisp = dispinterface;
  IHostVideoInputDevice = interface;
  IHostVideoInputDeviceDisp = dispinterface;
  ISystemProperties = interface;
  ISystemPropertiesDisp = dispinterface;
  IMachine = interface;
  IMachineDisp = dispinterface;
  IBIOSSettings = interface;
  IBIOSSettingsDisp = dispinterface;
  IRecordingSettings = interface;
  IRecordingSettingsDisp = dispinterface;
  IRecordingScreenSettings = interface;
  IRecordingScreenSettingsDisp = dispinterface;
  IVRDEServer = interface;
  IVRDEServerDisp = dispinterface;
  IMediumAttachment = interface;
  IMediumAttachmentDisp = dispinterface;
  IBandwidthGroup = interface;
  IBandwidthGroupDisp = dispinterface;
  IUSBController = interface;
  IUSBControllerDisp = dispinterface;
  IUSBDeviceFilters = interface;
  IUSBDeviceFiltersDisp = dispinterface;
  IAudioAdapter = interface;
  IAudioAdapterDisp = dispinterface;
  IStorageController = interface;
  IStorageControllerDisp = dispinterface;
  ISnapshot = interface;
  ISnapshotDisp = dispinterface;
  ISharedFolder = interface;
  ISharedFolderDisp = dispinterface;
  IPCIDeviceAttachment = interface;
  IPCIDeviceAttachmentDisp = dispinterface;
  IBandwidthControl = interface;
  IBandwidthControlDisp = dispinterface;
  ISession = interface;
  ISessionDisp = dispinterface;
  IConsole = interface;
  IConsoleDisp = dispinterface;
  IGuest = interface;
  IGuestDisp = dispinterface;
  IDnDBase = interface;
  IDnDBaseDisp = dispinterface;
  IDnDSource = interface;
  IDnDSourceDisp = dispinterface;
  IGuestDnDSource = interface;
  IGuestDnDSourceDisp = dispinterface;
  IDnDTarget = interface;
  IDnDTargetDisp = dispinterface;
  IGuestDnDTarget = interface;
  IGuestDnDTargetDisp = dispinterface;
  IAdditionsFacility = interface;
  IAdditionsFacilityDisp = dispinterface;
  IGuestSession = interface;
  IGuestSessionDisp = dispinterface;
  IProcess = interface;
  IProcessDisp = dispinterface;
  IGuestProcess = interface;
  IGuestProcessDisp = dispinterface;
  IDirectory = interface;
  IDirectoryDisp = dispinterface;
  IGuestDirectory = interface;
  IGuestDirectoryDisp = dispinterface;
  IFsObjInfo = interface;
  IFsObjInfoDisp = dispinterface;
  IFile = interface;
  IFileDisp = dispinterface;
  IGuestFile = interface;
  IGuestFileDisp = dispinterface;
  IGuestFsObjInfo = interface;
  IGuestFsObjInfoDisp = dispinterface;
  IKeyboard = interface;
  IKeyboardDisp = dispinterface;
  IMouse = interface;
  IMouseDisp = dispinterface;
  IMousePointerShape = interface;
  IMousePointerShapeDisp = dispinterface;
  IDisplay = interface;
  IDisplayDisp = dispinterface;
  IGuestScreenInfo = interface;
  IGuestScreenInfoDisp = dispinterface;
  IFramebuffer = interface;
  IFramebufferDisp = dispinterface;
  IFramebufferOverlay = interface;
  IFramebufferOverlayDisp = dispinterface;
  IDisplaySourceBitmap = interface;
  IDisplaySourceBitmapDisp = dispinterface;
  IMachineDebugger = interface;
  IMachineDebuggerDisp = dispinterface;
  IVRDEServerInfo = interface;
  IVRDEServerInfoDisp = dispinterface;
  IEmulatedUSB = interface;
  IEmulatedUSBDisp = dispinterface;
  INetworkAdapter = interface;
  INetworkAdapterDisp = dispinterface;
  INATEngine = interface;
  INATEngineDisp = dispinterface;
  ISerialPort = interface;
  ISerialPortDisp = dispinterface;
  IParallelPort = interface;
  IParallelPortDisp = dispinterface;
  IAppliance = interface;
  IApplianceDisp = dispinterface;
  IVirtualSystemDescription = interface;
  IVirtualSystemDescriptionDisp = dispinterface;
  ICertificate = interface;
  ICertificateDisp = dispinterface;
  IGuestOSType = interface;
  IGuestOSTypeDisp = dispinterface;
  IPerformanceCollector = interface;
  IPerformanceCollectorDisp = dispinterface;
  IPerformanceMetric = interface;
  IPerformanceMetricDisp = dispinterface;
  IExtPackManager = interface;
  IExtPackManagerDisp = dispinterface;
  IExtPackBase = interface;
  IExtPackBaseDisp = dispinterface;
  IExtPack = interface;
  IExtPackDisp = dispinterface;
  IExtPackPlugIn = interface;
  IExtPackPlugInDisp = dispinterface;
  IExtPackFile = interface;
  IExtPackFileDisp = dispinterface;
  ICloudProviderManager = interface;
  ICloudProviderManagerDisp = dispinterface;
  ICloudProvider = interface;
  ICloudProviderDisp = dispinterface;
  ICloudProfile = interface;
  ICloudProfileDisp = dispinterface;
  ICloudClient = interface;
  ICloudClientDisp = dispinterface;
  IUnattended = interface;
  IUnattendedDisp = dispinterface;
  IInternalMachineControl = interface;
  IInternalMachineControlDisp = dispinterface;
  IPCIAddress = interface;
  IPCIAddressDisp = dispinterface;
  IInternalProgressControl = interface;
  IInternalProgressControlDisp = dispinterface;
  IUSBProxyBackend = interface;
  IUSBProxyBackendDisp = dispinterface;
  IInternalSessionControl = interface;
  IInternalSessionControlDisp = dispinterface;
  IVirtualBoxClient = interface;
  IVirtualBoxClientDisp = dispinterface;
  IReusableEvent = interface;
  IReusableEventDisp = dispinterface;
  IMachineEvent = interface;
  IMachineEventDisp = dispinterface;
  IMachineStateChangedEvent = interface;
  IMachineStateChangedEventDisp = dispinterface;
  IMachineDataChangedEvent = interface;
  IMachineDataChangedEventDisp = dispinterface;
  IMediumRegisteredEvent = interface;
  IMediumRegisteredEventDisp = dispinterface;
  IMediumConfigChangedEvent = interface;
  IMediumConfigChangedEventDisp = dispinterface;
  IMachineRegisteredEvent = interface;
  IMachineRegisteredEventDisp = dispinterface;
  ISessionStateChangedEvent = interface;
  ISessionStateChangedEventDisp = dispinterface;
  IGuestPropertyChangedEvent = interface;
  IGuestPropertyChangedEventDisp = dispinterface;
  ISnapshotEvent = interface;
  ISnapshotEventDisp = dispinterface;
  ISnapshotTakenEvent = interface;
  ISnapshotTakenEventDisp = dispinterface;
  ISnapshotDeletedEvent = interface;
  ISnapshotDeletedEventDisp = dispinterface;
  ISnapshotRestoredEvent = interface;
  ISnapshotRestoredEventDisp = dispinterface;
  ISnapshotChangedEvent = interface;
  ISnapshotChangedEventDisp = dispinterface;
  IMousePointerShapeChangedEvent = interface;
  IMousePointerShapeChangedEventDisp = dispinterface;
  IMouseCapabilityChangedEvent = interface;
  IMouseCapabilityChangedEventDisp = dispinterface;
  IKeyboardLedsChangedEvent = interface;
  IKeyboardLedsChangedEventDisp = dispinterface;
  IStateChangedEvent = interface;
  IStateChangedEventDisp = dispinterface;
  IAdditionsStateChangedEvent = interface;
  IAdditionsStateChangedEventDisp = dispinterface;
  INetworkAdapterChangedEvent = interface;
  INetworkAdapterChangedEventDisp = dispinterface;
  IAudioAdapterChangedEvent = interface;
  IAudioAdapterChangedEventDisp = dispinterface;
  ISerialPortChangedEvent = interface;
  ISerialPortChangedEventDisp = dispinterface;
  IParallelPortChangedEvent = interface;
  IParallelPortChangedEventDisp = dispinterface;
  IStorageControllerChangedEvent = interface;
  IStorageControllerChangedEventDisp = dispinterface;
  IMediumChangedEvent = interface;
  IMediumChangedEventDisp = dispinterface;
  IClipboardModeChangedEvent = interface;
  IClipboardModeChangedEventDisp = dispinterface;
  IDnDModeChangedEvent = interface;
  IDnDModeChangedEventDisp = dispinterface;
  ICPUChangedEvent = interface;
  ICPUChangedEventDisp = dispinterface;
  ICPUExecutionCapChangedEvent = interface;
  ICPUExecutionCapChangedEventDisp = dispinterface;
  IGuestKeyboardEvent = interface;
  IGuestKeyboardEventDisp = dispinterface;
  IGuestMouseEvent = interface;
  IGuestMouseEventDisp = dispinterface;
  IGuestMultiTouchEvent = interface;
  IGuestMultiTouchEventDisp = dispinterface;
  IGuestSessionEvent = interface;
  IGuestSessionEventDisp = dispinterface;
  IGuestSessionStateChangedEvent = interface;
  IGuestSessionStateChangedEventDisp = dispinterface;
  IGuestSessionRegisteredEvent = interface;
  IGuestSessionRegisteredEventDisp = dispinterface;
  IGuestProcessEvent = interface;
  IGuestProcessEventDisp = dispinterface;
  IGuestProcessRegisteredEvent = interface;
  IGuestProcessRegisteredEventDisp = dispinterface;
  IGuestProcessStateChangedEvent = interface;
  IGuestProcessStateChangedEventDisp = dispinterface;
  IGuestProcessIOEvent = interface;
  IGuestProcessIOEventDisp = dispinterface;
  IGuestProcessInputNotifyEvent = interface;
  IGuestProcessInputNotifyEventDisp = dispinterface;
  IGuestProcessOutputEvent = interface;
  IGuestProcessOutputEventDisp = dispinterface;
  IGuestFileEvent = interface;
  IGuestFileEventDisp = dispinterface;
  IGuestFileRegisteredEvent = interface;
  IGuestFileRegisteredEventDisp = dispinterface;
  IGuestFileStateChangedEvent = interface;
  IGuestFileStateChangedEventDisp = dispinterface;
  IGuestFileIOEvent = interface;
  IGuestFileIOEventDisp = dispinterface;
  IGuestFileOffsetChangedEvent = interface;
  IGuestFileOffsetChangedEventDisp = dispinterface;
  IGuestFileSizeChangedEvent = interface;
  IGuestFileSizeChangedEventDisp = dispinterface;
  IGuestFileReadEvent = interface;
  IGuestFileReadEventDisp = dispinterface;
  IGuestFileWriteEvent = interface;
  IGuestFileWriteEventDisp = dispinterface;
  IVRDEServerChangedEvent = interface;
  IVRDEServerChangedEventDisp = dispinterface;
  IVRDEServerInfoChangedEvent = interface;
  IVRDEServerInfoChangedEventDisp = dispinterface;
  IRecordingChangedEvent = interface;
  IRecordingChangedEventDisp = dispinterface;
  IUSBControllerChangedEvent = interface;
  IUSBControllerChangedEventDisp = dispinterface;
  IUSBDeviceStateChangedEvent = interface;
  IUSBDeviceStateChangedEventDisp = dispinterface;
  ISharedFolderChangedEvent = interface;
  ISharedFolderChangedEventDisp = dispinterface;
  IRuntimeErrorEvent = interface;
  IRuntimeErrorEventDisp = dispinterface;
  IEventSourceChangedEvent = interface;
  IEventSourceChangedEventDisp = dispinterface;
  IExtraDataChangedEvent = interface;
  IExtraDataChangedEventDisp = dispinterface;
  IVetoEvent = interface;
  IVetoEventDisp = dispinterface;
  IExtraDataCanChangeEvent = interface;
  IExtraDataCanChangeEventDisp = dispinterface;
  ICanShowWindowEvent = interface;
  ICanShowWindowEventDisp = dispinterface;
  IShowWindowEvent = interface;
  IShowWindowEventDisp = dispinterface;
  INATRedirectEvent = interface;
  INATRedirectEventDisp = dispinterface;
  IHostPCIDevicePlugEvent = interface;
  IHostPCIDevicePlugEventDisp = dispinterface;
  IVBoxSVCAvailabilityChangedEvent = interface;
  IVBoxSVCAvailabilityChangedEventDisp = dispinterface;
  IBandwidthGroupChangedEvent = interface;
  IBandwidthGroupChangedEventDisp = dispinterface;
  IGuestMonitorChangedEvent = interface;
  IGuestMonitorChangedEventDisp = dispinterface;
  IGuestUserStateChangedEvent = interface;
  IGuestUserStateChangedEventDisp = dispinterface;
  IStorageDeviceChangedEvent = interface;
  IStorageDeviceChangedEventDisp = dispinterface;
  INATNetworkChangedEvent = interface;
  INATNetworkChangedEventDisp = dispinterface;
  INATNetworkStartStopEvent = interface;
  INATNetworkStartStopEventDisp = dispinterface;
  INATNetworkAlterEvent = interface;
  INATNetworkAlterEventDisp = dispinterface;
  INATNetworkCreationDeletionEvent = interface;
  INATNetworkCreationDeletionEventDisp = dispinterface;
  INATNetworkSettingEvent = interface;
  INATNetworkSettingEventDisp = dispinterface;
  INATNetworkPortForwardEvent = interface;
  INATNetworkPortForwardEventDisp = dispinterface;
  IHostNameResolutionConfigurationChangeEvent = interface;
  IHostNameResolutionConfigurationChangeEventDisp = dispinterface;
  IProgressEvent = interface;
  IProgressEventDisp = dispinterface;
  IProgressPercentageChangedEvent = interface;
  IProgressPercentageChangedEventDisp = dispinterface;
  IProgressTaskCompletedEvent = interface;
  IProgressTaskCompletedEventDisp = dispinterface;
  ICursorPositionChangedEvent = interface;
  ICursorPositionChangedEventDisp = dispinterface;
  IGuestAdditionsStatusChangedEvent = interface;
  IGuestAdditionsStatusChangedEventDisp = dispinterface;
  IVBoxSVCRegistration = interface;
  IVirtualBoxSDS = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  VirtualBox_ = IVirtualBox;
  VirtualBoxClient = IVirtualBoxClient;
  Session = ISession;
  VirtualBoxSDS = IVirtualBoxSDS;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PByte1 = ^Byte; {*}

  VBoxEventType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0115; 
  NATProtocol = __MIDL___MIDL_itf_VirtualBox_0000_0000_0113; 
  DhcpOpt = __MIDL___MIDL_itf_VirtualBox_0000_0000_0023; 
  MediumState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0081; 
  MediumVariant = __MIDL___MIDL_itf_VirtualBox_0000_0000_0083; 
  DeviceType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0011; 
  MediumFormatCapabilities = __MIDL___MIDL_itf_VirtualBox_0000_0000_0086; 
  DataType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0084; 
  MediumType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0082; 
  VFSType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0025; 
  PartitionTableType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0087; 
  USBConnectionSpeed = __MIDL___MIDL_itf_VirtualBox_0000_0000_0101; 
  USBDeviceState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0102; 
  USBDeviceFilterAction = __MIDL___MIDL_itf_VirtualBox_0000_0000_0103; 
  HostNetworkInterfaceMediumType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0042; 
  HostNetworkInterfaceStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0043; 
  HostNetworkInterfaceType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0044; 
  ProcessorFeature = __MIDL___MIDL_itf_VirtualBox_0000_0000_0018; 
  AudioDriverType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0104; 
  BitmapFormat = __MIDL___MIDL_itf_VirtualBox_0000_0000_0022; 
  ProxyMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0045; 
  ChipsetType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0111; 
  NetworkAttachmentType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0094; 
  StorageBus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0109; 
  StorageControllerType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0110; 
  USBControllerType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0100; 
  GraphicsControllerType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0037; 
  BIOSBootMenuMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0016; 
  APICMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0017; 
  RecordingDestination = __MIDL___MIDL_itf_VirtualBox_0000_0000_0031; 
  RecordingAudioCodec = __MIDL___MIDL_itf_VirtualBox_0000_0000_0033; 
  RecordingVideoCodec = __MIDL___MIDL_itf_VirtualBox_0000_0000_0034; 
  RecordingVideoRateControlMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0036; 
  RecordingVideoScalingMethod = __MIDL___MIDL_itf_VirtualBox_0000_0000_0035; 
  RecordingFeature = __MIDL___MIDL_itf_VirtualBox_0000_0000_0032; 
  FirmwareType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0019; 
  PointingHIDType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0020; 
  KeyboardHIDType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0021; 
  AuthType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0107; 
  BandwidthGroupType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0114; 
  AudioControllerType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0105; 
  AudioCodecType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0106; 
  SessionState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0004; 
  MachineState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0003; 
  ClipboardMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0013; 
  DnDMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0014; 
  ParavirtProvider = __MIDL___MIDL_itf_VirtualBox_0000_0000_0007; 
  FaultToleranceState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0008; 
  AutostopType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0041; 
  SessionType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0010; 
  AdditionsRunLevelType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0049; 
  DnDAction = __MIDL___MIDL_itf_VirtualBox_0000_0000_0079; 
  AdditionsFacilityClass = __MIDL___MIDL_itf_VirtualBox_0000_0000_0047; 
  AdditionsFacilityStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0048; 
  AdditionsFacilityType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0046; 
  GuestSessionStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0051; 
  ProcessStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0070; 
  ProcessWaitResult = __MIDL___MIDL_itf_VirtualBox_0000_0000_0059; 
  ProcessWaitForFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0058; 
  ProcessInputFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0056; 
  PathStyle = __MIDL___MIDL_itf_VirtualBox_0000_0000_0072; 
  FsObjType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0078; 
  FileStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0077; 
  FileOpenAction = __MIDL___MIDL_itf_VirtualBox_0000_0000_0074; 
  FileAccessMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0073; 
  FileSeekOrigin = __MIDL___MIDL_itf_VirtualBox_0000_0000_0055; 
  DirectoryCopyFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0063; 
  DirectoryCreateFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0062; 
  DirectoryOpenFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0080; 
  DirectoryRemoveRecFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0064; 
  FileCopyFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0060; 
  FileSharingMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0075; 
  FileOpenExFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0076; 
  FsObjRenameFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0065; 
  FsObjMoveFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0061; 
  ProcessCreateFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0066; 
  ProcessPriority = __MIDL___MIDL_itf_VirtualBox_0000_0000_0067; 
  SymlinkType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0068; 
  SymlinkReadFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0069; 
  GuestSessionWaitResult = __MIDL___MIDL_itf_VirtualBox_0000_0000_0053; 
  GuestSessionWaitForFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0052; 
  AdditionsUpdateFlag = __MIDL___MIDL_itf_VirtualBox_0000_0000_0050; 
  KeyboardLED = __MIDL___MIDL_itf_VirtualBox_0000_0000_0088; 
  GuestMonitorStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0092; 
  FramebufferCapabilities = __MIDL___MIDL_itf_VirtualBox_0000_0000_0091; 
  ScreenLayoutMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0093; 
  VMExecutionEngine = __MIDL___MIDL_itf_VirtualBox_0000_0000_0099; 
  DeviceActivity = __MIDL___MIDL_itf_VirtualBox_0000_0000_0012; 
  LockType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0009; 
  NetworkAdapterType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0095; 
  NetworkAdapterPromiscModePolicy = __MIDL___MIDL_itf_VirtualBox_0000_0000_0096; 
  PortMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0097; 
  UartType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0098; 
  CPUPropertyType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0005; 
  HWVirtExPropertyType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0006; 
  CleanupMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0038; 
  VirtualSystemDescriptionType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0029; 
  VirtualSystemDescriptionValueType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0030; 
  CertificateVersion = __MIDL___MIDL_itf_VirtualBox_0000_0000_0028; 
  ImportOptions = __MIDL___MIDL_itf_VirtualBox_0000_0000_0026; 
  ExportOptions = __MIDL___MIDL_itf_VirtualBox_0000_0000_0027; 
  CloneMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0039; 
  CloneOptions = __MIDL___MIDL_itf_VirtualBox_0000_0000_0040; 
  AccessMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0002; 
  Reason = __MIDL___MIDL_itf_VirtualBox_0000_0000_0108; 
  GuestMouseEventMode = __MIDL___MIDL_itf_VirtualBox_0000_0000_0116; 
  ProcessInputStatus = __MIDL___MIDL_itf_VirtualBox_0000_0000_0071; 
  Scope = __MIDL___MIDL_itf_VirtualBox_0000_0000_0015; 
  GuestMonitorChangedEventType = __MIDL___MIDL_itf_VirtualBox_0000_0000_0117; 
  GuestUserState = __MIDL___MIDL_itf_VirtualBox_0000_0000_0054; 

// *********************************************************************//
// Interface: IErrorInfo
// Flags:     (0)
// GUID:      {1CF2B120-547D-101B-8E65-08002B2BD119}
// *********************************************************************//
  IErrorInfo = interface(IUnknown)
    ['{1CF2B120-547D-101B-8E65-08002B2BD119}']
    function GetGUID(out pGUID: TGUID): HResult; stdcall;
    function GetSource(out pBstrSource: WideString): HResult; stdcall;
    function GetDescription(out pBstrDescription: WideString): HResult; stdcall;
    function GetHelpFile(out pBstrHelpFile: WideString): HResult; stdcall;
    function GetHelpContext(out pdwHelpContext: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IVirtualBoxErrorInfo
// Flags:     (16704) Dual OleAutomationSmallint
// GUID:      {C1BCC6D5-7966-481D-AB0B-D0ED73E28135}
// *********************************************************************//
  IVirtualBoxErrorInfo = interface(IErrorInfo)
    ['{C1BCC6D5-7966-481D-AB0B-D0ED73E28135}']
    function Get_ResultCode: Integer; safecall;
    function Get_ResultDetail: Integer; safecall;
    function Get_InterfaceID: WideString; safecall;
    function Get_Component: WideString; safecall;
    function Get_Text: WideString; safecall;
    function Get_Next: IVirtualBoxErrorInfo; safecall;
    property ResultCode: Integer read Get_ResultCode;
    property ResultDetail: Integer read Get_ResultDetail;
    property InterfaceID: WideString read Get_InterfaceID;
    property Component: WideString read Get_Component;
    property Text: WideString read Get_Text;
    property Next: IVirtualBoxErrorInfo read Get_Next;
  end;

// *********************************************************************//
// DispIntf:  IVirtualBoxErrorInfoDisp
// Flags:     (16704) Dual OleAutomationSmallint
// GUID:      {C1BCC6D5-7966-481D-AB0B-D0ED73E28135}
// *********************************************************************//
  IVirtualBoxErrorInfoDisp = dispinterface
    ['{C1BCC6D5-7966-481D-AB0B-D0ED73E28135}']
    property ResultCode: Integer readonly dispid 1610743808;
    property ResultDetail: Integer readonly dispid 1610743809;
    property InterfaceID: WideString readonly dispid 1610743810;
    property Component: WideString readonly dispid 1610743811;
    property Text: WideString readonly dispid 1610743812;
    property Next: IVirtualBoxErrorInfo readonly dispid 1610743813;
    function GetGUID(out pGUID: {NOT_OLEAUTO(TGUID)}OleVariant): HResult; dispid 1610678272;
    function GetSource(out pBstrSource: WideString): HResult; dispid 1610678273;
    function GetDescription(out pBstrDescription: WideString): HResult; dispid 1610678274;
    function GetHelpFile(out pBstrHelpFile: WideString): HResult; dispid 1610678275;
    function GetHelpContext(out pdwHelpContext: LongWord): HResult; dispid 1610678276;
  end;

// *********************************************************************//
// Interface: INATNetwork
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4BBC405D-F268-4483-9A52-F43FFDBF67F8}
// *********************************************************************//
  INATNetwork = interface(IDispatch)
    ['{4BBC405D-F268-4483-9A52-F43FFDBF67F8}']
    function Get_NetworkName: WideString; safecall;
    procedure Set_NetworkName(const aNetworkName: WideString); safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_Network: WideString; safecall;
    procedure Set_Network(const aNetwork: WideString); safecall;
    function Get_Gateway: WideString; safecall;
    function Get_IPv6Enabled: Integer; safecall;
    procedure Set_IPv6Enabled(aIPv6Enabled: Integer); safecall;
    function Get_IPv6Prefix: WideString; safecall;
    procedure Set_IPv6Prefix(const aIPv6Prefix: WideString); safecall;
    function Get_AdvertiseDefaultIPv6RouteEnabled: Integer; safecall;
    procedure Set_AdvertiseDefaultIPv6RouteEnabled(aAdvertiseDefaultIPv6RouteEnabled: Integer); safecall;
    function Get_NeedDhcpServer: Integer; safecall;
    procedure Set_NeedDhcpServer(aNeedDhcpServer: Integer); safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_PortForwardRules4: PSafeArray; safecall;
    function Get_LocalMappings: PSafeArray; safecall;
    function Get_LoopbackIp6: Integer; safecall;
    procedure Set_LoopbackIp6(aLoopbackIp6: Integer); safecall;
    function Get_PortForwardRules6: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute2INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute3INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute4INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute5INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute6INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute7INATNetwork: LongWord; safecall;
    function Get_InternalAndReservedAttribute8INATNetwork: LongWord; safecall;
    procedure AddLocalMapping(const aHostid: WideString; aOffset: Integer); safecall;
    procedure AddPortForwardRule(aIsIpv6: Integer; const aRuleName: WideString; 
                                 aProto: NATProtocol; const aHostIP: WideString; aHostPort: Word; 
                                 const aGuestIP: WideString; aGuestPort: Word); safecall;
    procedure RemovePortForwardRule(aIsIpv6: Integer; const aRuleName: WideString); safecall;
    procedure Start(const aTrunkType: WideString); safecall;
    procedure Stop; safecall;
    procedure InternalAndReservedMethod1INATNetwork; safecall;
    procedure InternalAndReservedMethod2INATNetwork; safecall;
    property NetworkName: WideString read Get_NetworkName write Set_NetworkName;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property Network: WideString read Get_Network write Set_Network;
    property Gateway: WideString read Get_Gateway;
    property IPv6Enabled: Integer read Get_IPv6Enabled write Set_IPv6Enabled;
    property IPv6Prefix: WideString read Get_IPv6Prefix write Set_IPv6Prefix;
    property AdvertiseDefaultIPv6RouteEnabled: Integer read Get_AdvertiseDefaultIPv6RouteEnabled write Set_AdvertiseDefaultIPv6RouteEnabled;
    property NeedDhcpServer: Integer read Get_NeedDhcpServer write Set_NeedDhcpServer;
    property EventSource: IEventSource read Get_EventSource;
    property PortForwardRules4: PSafeArray read Get_PortForwardRules4;
    property LocalMappings: PSafeArray read Get_LocalMappings;
    property LoopbackIp6: Integer read Get_LoopbackIp6 write Set_LoopbackIp6;
    property PortForwardRules6: PSafeArray read Get_PortForwardRules6;
    property InternalAndReservedAttribute1INATNetwork: LongWord read Get_InternalAndReservedAttribute1INATNetwork;
    property InternalAndReservedAttribute2INATNetwork: LongWord read Get_InternalAndReservedAttribute2INATNetwork;
    property InternalAndReservedAttribute3INATNetwork: LongWord read Get_InternalAndReservedAttribute3INATNetwork;
    property InternalAndReservedAttribute4INATNetwork: LongWord read Get_InternalAndReservedAttribute4INATNetwork;
    property InternalAndReservedAttribute5INATNetwork: LongWord read Get_InternalAndReservedAttribute5INATNetwork;
    property InternalAndReservedAttribute6INATNetwork: LongWord read Get_InternalAndReservedAttribute6INATNetwork;
    property InternalAndReservedAttribute7INATNetwork: LongWord read Get_InternalAndReservedAttribute7INATNetwork;
    property InternalAndReservedAttribute8INATNetwork: LongWord read Get_InternalAndReservedAttribute8INATNetwork;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4BBC405D-F268-4483-9A52-F43FFDBF67F8}
// *********************************************************************//
  INATNetworkDisp = dispinterface
    ['{4BBC405D-F268-4483-9A52-F43FFDBF67F8}']
    property NetworkName: WideString dispid 1610743808;
    property Enabled: Integer dispid 1610743810;
    property Network: WideString dispid 1610743812;
    property Gateway: WideString readonly dispid 1610743814;
    property IPv6Enabled: Integer dispid 1610743815;
    property IPv6Prefix: WideString dispid 1610743817;
    property AdvertiseDefaultIPv6RouteEnabled: Integer dispid 1610743819;
    property NeedDhcpServer: Integer dispid 1610743821;
    property EventSource: IEventSource readonly dispid 1610743823;
    property PortForwardRules4: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743824;
    property LocalMappings: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743825;
    property LoopbackIp6: Integer dispid 1610743826;
    property PortForwardRules6: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743828;
    property InternalAndReservedAttribute1INATNetwork: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute2INATNetwork: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute3INATNetwork: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute4INATNetwork: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute5INATNetwork: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute6INATNetwork: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute7INATNetwork: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute8INATNetwork: LongWord readonly dispid 1610743836;
    procedure AddLocalMapping(const aHostid: WideString; aOffset: Integer); dispid 1610743837;
    procedure AddPortForwardRule(aIsIpv6: Integer; const aRuleName: WideString; 
                                 aProto: NATProtocol; const aHostIP: WideString; aHostPort: Word; 
                                 const aGuestIP: WideString; aGuestPort: Word); dispid 1610743838;
    procedure RemovePortForwardRule(aIsIpv6: Integer; const aRuleName: WideString); dispid 1610743839;
    procedure Start(const aTrunkType: WideString); dispid 1610743840;
    procedure Stop; dispid 1610743841;
    procedure InternalAndReservedMethod1INATNetwork; dispid 1610743842;
    procedure InternalAndReservedMethod2INATNetwork; dispid 1610743843;
  end;

// *********************************************************************//
// Interface: IEventSource
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9B6E1AEE-35F3-4F4D-B5BB-ED0ECEFD8538}
// *********************************************************************//
  IEventSource = interface(IDispatch)
    ['{9B6E1AEE-35F3-4F4D-B5BB-ED0ECEFD8538}']
    function CreateListener: IEventListener; safecall;
    function CreateAggregator(aSubordinates: PSafeArray): IEventSource; safecall;
    procedure RegisterListener(const aListener: IEventListener; aInteresting: PSafeArray; 
                               aActive: Integer); safecall;
    procedure UnregisterListener(const aListener: IEventListener); safecall;
    function FireEvent(const aEvent: IEvent; aTimeout: Integer): Integer; safecall;
    function GetEvent(const aListener: IEventListener; aTimeout: Integer): IEvent; safecall;
    procedure EventProcessed(const aListener: IEventListener; const aEvent: IEvent); safecall;
  end;

// *********************************************************************//
// DispIntf:  IEventSourceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9B6E1AEE-35F3-4F4D-B5BB-ED0ECEFD8538}
// *********************************************************************//
  IEventSourceDisp = dispinterface
    ['{9B6E1AEE-35F3-4F4D-B5BB-ED0ECEFD8538}']
    function CreateListener: IEventListener; dispid 1610743808;
    function CreateAggregator(aSubordinates: {NOT_OLEAUTO(PSafeArray)}OleVariant): IEventSource; dispid 1610743809;
    procedure RegisterListener(const aListener: IEventListener; 
                               aInteresting: {NOT_OLEAUTO(PSafeArray)}OleVariant; aActive: Integer); dispid 1610743810;
    procedure UnregisterListener(const aListener: IEventListener); dispid 1610743811;
    function FireEvent(const aEvent: IEvent; aTimeout: Integer): Integer; dispid 1610743812;
    function GetEvent(const aListener: IEventListener; aTimeout: Integer): IEvent; dispid 1610743813;
    procedure EventProcessed(const aListener: IEventListener; const aEvent: IEvent); dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IEventListener
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {67099191-32E7-4F6C-85EE-422304C71B90}
// *********************************************************************//
  IEventListener = interface(IDispatch)
    ['{67099191-32E7-4F6C-85EE-422304C71B90}']
    procedure HandleEvent(const aEvent: IEvent); safecall;
  end;

// *********************************************************************//
// DispIntf:  IEventListenerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {67099191-32E7-4F6C-85EE-422304C71B90}
// *********************************************************************//
  IEventListenerDisp = dispinterface
    ['{67099191-32E7-4F6C-85EE-422304C71B90}']
    procedure HandleEvent(const aEvent: IEvent); dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0CA2ADBA-8F30-401B-A8CD-FE31DBE839C0}
// *********************************************************************//
  IEvent = interface(IDispatch)
    ['{0CA2ADBA-8F30-401B-A8CD-FE31DBE839C0}']
    function Get_type_: VBoxEventType; safecall;
    function Get_Source: IEventSource; safecall;
    function Get_Waitable: Integer; safecall;
    procedure SetProcessed; safecall;
    function WaitProcessed(aTimeout: Integer): Integer; safecall;
    property type_: VBoxEventType read Get_type_;
    property Source: IEventSource read Get_Source;
    property Waitable: Integer read Get_Waitable;
  end;

// *********************************************************************//
// DispIntf:  IEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0CA2ADBA-8F30-401B-A8CD-FE31DBE839C0}
// *********************************************************************//
  IEventDisp = dispinterface
    ['{0CA2ADBA-8F30-401B-A8CD-FE31DBE839C0}']
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IDHCPServer
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EA2D467F-B6C2-4B9A-8EB5-6E2F275DD72E}
// *********************************************************************//
  IDHCPServer = interface(IDispatch)
    ['{EA2D467F-B6C2-4B9A-8EB5-6E2F275DD72E}']
    function Get_EventSource: IEventSource; safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_IPAddress: WideString; safecall;
    function Get_NetworkMask: WideString; safecall;
    function Get_NetworkName: WideString; safecall;
    function Get_LowerIP: WideString; safecall;
    function Get_UpperIP: WideString; safecall;
    function Get_GlobalOptions: PSafeArray; safecall;
    function Get_VmConfigs: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IDHCPServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDHCPServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IDHCPServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IDHCPServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IDHCPServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IDHCPServer: LongWord; safecall;
    procedure AddGlobalOption(aOption: DhcpOpt; const aValue: WideString); safecall;
    procedure RemoveGlobalOption(aOption: DhcpOpt); safecall;
    procedure RemoveGlobalOptions; safecall;
    procedure AddVmSlotOption(const aVmname: WideString; aSlot: Integer; aOption: DhcpOpt; 
                              const aValue: WideString); safecall;
    procedure RemoveVmSlotOption(const aVmname: WideString; aSlot: Integer; aOption: DhcpOpt); safecall;
    procedure RemoveVmSlotOptions(const aVmname: WideString; aSlot: Integer); safecall;
    function GetVmSlotOptions(const aVmname: WideString; aSlot: Integer): PSafeArray; safecall;
    function GetMacOptions(const aMac: WideString): PSafeArray; safecall;
    procedure SetConfiguration(const aIPAddress: WideString; const aNetworkMask: WideString; 
                               const aFromIPAddress: WideString; const aToIPAddress: WideString); safecall;
    procedure Start(const aNetworkName: WideString; const aTrunkName: WideString; 
                    const aTrunkType: WideString); safecall;
    procedure Stop; safecall;
    procedure Restart; safecall;
    procedure InternalAndReservedMethod1IDHCPServer; safecall;
    procedure InternalAndReservedMethod2IDHCPServer; safecall;
    property EventSource: IEventSource read Get_EventSource;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property IPAddress: WideString read Get_IPAddress;
    property NetworkMask: WideString read Get_NetworkMask;
    property NetworkName: WideString read Get_NetworkName;
    property LowerIP: WideString read Get_LowerIP;
    property UpperIP: WideString read Get_UpperIP;
    property GlobalOptions: PSafeArray read Get_GlobalOptions;
    property VmConfigs: PSafeArray read Get_VmConfigs;
    property InternalAndReservedAttribute1IDHCPServer: LongWord read Get_InternalAndReservedAttribute1IDHCPServer;
    property InternalAndReservedAttribute2IDHCPServer: LongWord read Get_InternalAndReservedAttribute2IDHCPServer;
    property InternalAndReservedAttribute3IDHCPServer: LongWord read Get_InternalAndReservedAttribute3IDHCPServer;
    property InternalAndReservedAttribute4IDHCPServer: LongWord read Get_InternalAndReservedAttribute4IDHCPServer;
    property InternalAndReservedAttribute5IDHCPServer: LongWord read Get_InternalAndReservedAttribute5IDHCPServer;
    property InternalAndReservedAttribute6IDHCPServer: LongWord read Get_InternalAndReservedAttribute6IDHCPServer;
  end;

// *********************************************************************//
// DispIntf:  IDHCPServerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EA2D467F-B6C2-4B9A-8EB5-6E2F275DD72E}
// *********************************************************************//
  IDHCPServerDisp = dispinterface
    ['{EA2D467F-B6C2-4B9A-8EB5-6E2F275DD72E}']
    property EventSource: IEventSource readonly dispid 1610743808;
    property Enabled: Integer dispid 1610743809;
    property IPAddress: WideString readonly dispid 1610743811;
    property NetworkMask: WideString readonly dispid 1610743812;
    property NetworkName: WideString readonly dispid 1610743813;
    property LowerIP: WideString readonly dispid 1610743814;
    property UpperIP: WideString readonly dispid 1610743815;
    property GlobalOptions: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743816;
    property VmConfigs: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743817;
    property InternalAndReservedAttribute1IDHCPServer: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute2IDHCPServer: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute3IDHCPServer: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute4IDHCPServer: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute5IDHCPServer: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute6IDHCPServer: LongWord readonly dispid 1610743823;
    procedure AddGlobalOption(aOption: DhcpOpt; const aValue: WideString); dispid 1610743824;
    procedure RemoveGlobalOption(aOption: DhcpOpt); dispid 1610743825;
    procedure RemoveGlobalOptions; dispid 1610743826;
    procedure AddVmSlotOption(const aVmname: WideString; aSlot: Integer; aOption: DhcpOpt; 
                              const aValue: WideString); dispid 1610743827;
    procedure RemoveVmSlotOption(const aVmname: WideString; aSlot: Integer; aOption: DhcpOpt); dispid 1610743828;
    procedure RemoveVmSlotOptions(const aVmname: WideString; aSlot: Integer); dispid 1610743829;
    function GetVmSlotOptions(const aVmname: WideString; aSlot: Integer): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743830;
    function GetMacOptions(const aMac: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743831;
    procedure SetConfiguration(const aIPAddress: WideString; const aNetworkMask: WideString; 
                               const aFromIPAddress: WideString; const aToIPAddress: WideString); dispid 1610743832;
    procedure Start(const aNetworkName: WideString; const aTrunkName: WideString; 
                    const aTrunkType: WideString); dispid 1610743833;
    procedure Stop; dispid 1610743834;
    procedure Restart; dispid 1610743835;
    procedure InternalAndReservedMethod1IDHCPServer; dispid 1610743836;
    procedure InternalAndReservedMethod2IDHCPServer; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVirtualBox
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0A0163F-E254-4E5B-A1F2-011CF991C38D}
// *********************************************************************//
  IVirtualBox = interface(IDispatch)
    ['{D0A0163F-E254-4E5B-A1F2-011CF991C38D}']
    function Get_Version: WideString; safecall;
    function Get_VersionNormalized: WideString; safecall;
    function Get_Revision: LongWord; safecall;
    function Get_PackageType: WideString; safecall;
    function Get_APIVersion: WideString; safecall;
    function Get_APIRevision: Int64; safecall;
    function Get_HomeFolder: WideString; safecall;
    function Get_SettingsFilePath: WideString; safecall;
    function Get_Host: IHost; safecall;
    function Get_SystemProperties: ISystemProperties; safecall;
    function Get_Machines: PSafeArray; safecall;
    function Get_MachineGroups: PSafeArray; safecall;
    function Get_HardDisks: PSafeArray; safecall;
    function Get_DVDImages: PSafeArray; safecall;
    function Get_FloppyImages: PSafeArray; safecall;
    function Get_ProgressOperations: PSafeArray; safecall;
    function Get_GuestOSTypes: PSafeArray; safecall;
    function Get_SharedFolders: PSafeArray; safecall;
    function Get_PerformanceCollector: IPerformanceCollector; safecall;
    function Get_DHCPServers: PSafeArray; safecall;
    function Get_NATNetworks: PSafeArray; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_ExtensionPackManager: IExtPackManager; safecall;
    function Get_InternalNetworks: PSafeArray; safecall;
    function Get_GenericNetworkDrivers: PSafeArray; safecall;
    function Get_CloudProviderManager: ICloudProviderManager; safecall;
    function Get_InternalAndReservedAttribute1IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IVirtualBox: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IVirtualBox: LongWord; safecall;
    function ComposeMachineFilename(const aName: WideString; const aGroup: WideString; 
                                    const aCreateFlags: WideString; const aBaseFolder: WideString): WideString; safecall;
    function CreateMachine(const aSettingsFile: WideString; const aName: WideString; 
                           aGroups: PSafeArray; const aOSTypeId: WideString; 
                           const aFlags: WideString): IMachine; safecall;
    function OpenMachine(const aSettingsFile: WideString): IMachine; safecall;
    procedure RegisterMachine(const aMachine: IMachine); safecall;
    function FindMachine(const aNameOrId: WideString): IMachine; safecall;
    function GetMachinesByGroups(aGroups: PSafeArray): PSafeArray; safecall;
    function GetMachineStates(aMachines: PSafeArray): PSafeArray; safecall;
    function CreateAppliance: IAppliance; safecall;
    function CreateUnattendedInstaller: IUnattended; safecall;
    function CreateMedium(const aFormat: WideString; const aLocation: WideString; 
                          aAccessMode: AccessMode; aADeviceTypeType: DeviceType): IMedium; safecall;
    function OpenMedium(const aLocation: WideString; aDeviceType: DeviceType; 
                        aAccessMode: AccessMode; aForceNewUuid: Integer): IMedium; safecall;
    function GetGuestOSType(const aId: WideString): IGuestOSType; safecall;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); safecall;
    procedure RemoveSharedFolder(const aName: WideString); safecall;
    function GetExtraDataKeys: PSafeArray; safecall;
    function GetExtraData(const aKey: WideString): WideString; safecall;
    procedure SetExtraData(const aKey: WideString; const aValue: WideString); safecall;
    procedure SetSettingsSecret(const aPassword: WideString); safecall;
    function CreateDHCPServer(const aName: WideString): IDHCPServer; safecall;
    function FindDHCPServerByNetworkName(const aName: WideString): IDHCPServer; safecall;
    procedure RemoveDHCPServer(const aServer: IDHCPServer); safecall;
    function CreateNATNetwork(const aNetworkName: WideString): INATNetwork; safecall;
    function FindNATNetworkByName(const aNetworkName: WideString): INATNetwork; safecall;
    procedure RemoveNATNetwork(const aNetwork: INATNetwork); safecall;
    function CheckFirmwarePresent(aFirmwareType: FirmwareType; const aVersion: WideString; 
                                  out aUrl: WideString; out aFile: WideString): Integer; safecall;
    procedure InternalAndReservedMethod1IVirtualBox; safecall;
    procedure InternalAndReservedMethod2IVirtualBox; safecall;
    procedure InternalAndReservedMethod3IVirtualBox; safecall;
    procedure InternalAndReservedMethod4IVirtualBox; safecall;
    procedure InternalAndReservedMethod5IVirtualBox; safecall;
    procedure InternalAndReservedMethod6IVirtualBox; safecall;
    procedure InternalAndReservedMethod7IVirtualBox; safecall;
    procedure InternalAndReservedMethod8IVirtualBox; safecall;
    property Version: WideString read Get_Version;
    property VersionNormalized: WideString read Get_VersionNormalized;
    property Revision: LongWord read Get_Revision;
    property PackageType: WideString read Get_PackageType;
    property APIVersion: WideString read Get_APIVersion;
    property APIRevision: Int64 read Get_APIRevision;
    property HomeFolder: WideString read Get_HomeFolder;
    property SettingsFilePath: WideString read Get_SettingsFilePath;
    property Host: IHost read Get_Host;
    property SystemProperties: ISystemProperties read Get_SystemProperties;
    property Machines: PSafeArray read Get_Machines;
    property MachineGroups: PSafeArray read Get_MachineGroups;
    property HardDisks: PSafeArray read Get_HardDisks;
    property DVDImages: PSafeArray read Get_DVDImages;
    property FloppyImages: PSafeArray read Get_FloppyImages;
    property ProgressOperations: PSafeArray read Get_ProgressOperations;
    property GuestOSTypes: PSafeArray read Get_GuestOSTypes;
    property SharedFolders: PSafeArray read Get_SharedFolders;
    property PerformanceCollector: IPerformanceCollector read Get_PerformanceCollector;
    property DHCPServers: PSafeArray read Get_DHCPServers;
    property NATNetworks: PSafeArray read Get_NATNetworks;
    property EventSource: IEventSource read Get_EventSource;
    property ExtensionPackManager: IExtPackManager read Get_ExtensionPackManager;
    property InternalNetworks: PSafeArray read Get_InternalNetworks;
    property GenericNetworkDrivers: PSafeArray read Get_GenericNetworkDrivers;
    property CloudProviderManager: ICloudProviderManager read Get_CloudProviderManager;
    property InternalAndReservedAttribute1IVirtualBox: LongWord read Get_InternalAndReservedAttribute1IVirtualBox;
    property InternalAndReservedAttribute2IVirtualBox: LongWord read Get_InternalAndReservedAttribute2IVirtualBox;
    property InternalAndReservedAttribute3IVirtualBox: LongWord read Get_InternalAndReservedAttribute3IVirtualBox;
    property InternalAndReservedAttribute4IVirtualBox: LongWord read Get_InternalAndReservedAttribute4IVirtualBox;
    property InternalAndReservedAttribute5IVirtualBox: LongWord read Get_InternalAndReservedAttribute5IVirtualBox;
    property InternalAndReservedAttribute6IVirtualBox: LongWord read Get_InternalAndReservedAttribute6IVirtualBox;
    property InternalAndReservedAttribute7IVirtualBox: LongWord read Get_InternalAndReservedAttribute7IVirtualBox;
    property InternalAndReservedAttribute8IVirtualBox: LongWord read Get_InternalAndReservedAttribute8IVirtualBox;
    property InternalAndReservedAttribute9IVirtualBox: LongWord read Get_InternalAndReservedAttribute9IVirtualBox;
    property InternalAndReservedAttribute10IVirtualBox: LongWord read Get_InternalAndReservedAttribute10IVirtualBox;
    property InternalAndReservedAttribute11IVirtualBox: LongWord read Get_InternalAndReservedAttribute11IVirtualBox;
    property InternalAndReservedAttribute12IVirtualBox: LongWord read Get_InternalAndReservedAttribute12IVirtualBox;
  end;

// *********************************************************************//
// DispIntf:  IVirtualBoxDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0A0163F-E254-4E5B-A1F2-011CF991C38D}
// *********************************************************************//
  IVirtualBoxDisp = dispinterface
    ['{D0A0163F-E254-4E5B-A1F2-011CF991C38D}']
    property Version: WideString readonly dispid 1610743808;
    property VersionNormalized: WideString readonly dispid 1610743809;
    property Revision: LongWord readonly dispid 1610743810;
    property PackageType: WideString readonly dispid 1610743811;
    property APIVersion: WideString readonly dispid 1610743812;
    property APIRevision: Int64 readonly dispid 1610743813;
    property HomeFolder: WideString readonly dispid 1610743814;
    property SettingsFilePath: WideString readonly dispid 1610743815;
    property Host: IHost readonly dispid 1610743816;
    property SystemProperties: ISystemProperties readonly dispid 1610743817;
    property Machines: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743818;
    property MachineGroups: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743819;
    property HardDisks: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743820;
    property DVDImages: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743821;
    property FloppyImages: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743822;
    property ProgressOperations: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743823;
    property GuestOSTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743824;
    property SharedFolders: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743825;
    property PerformanceCollector: IPerformanceCollector readonly dispid 1610743826;
    property DHCPServers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743827;
    property NATNetworks: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743828;
    property EventSource: IEventSource readonly dispid 1610743829;
    property ExtensionPackManager: IExtPackManager readonly dispid 1610743830;
    property InternalNetworks: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743831;
    property GenericNetworkDrivers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743832;
    property CloudProviderManager: ICloudProviderManager readonly dispid 1610743833;
    property InternalAndReservedAttribute1IVirtualBox: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute2IVirtualBox: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute3IVirtualBox: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute4IVirtualBox: LongWord readonly dispid 1610743837;
    property InternalAndReservedAttribute5IVirtualBox: LongWord readonly dispid 1610743838;
    property InternalAndReservedAttribute6IVirtualBox: LongWord readonly dispid 1610743839;
    property InternalAndReservedAttribute7IVirtualBox: LongWord readonly dispid 1610743840;
    property InternalAndReservedAttribute8IVirtualBox: LongWord readonly dispid 1610743841;
    property InternalAndReservedAttribute9IVirtualBox: LongWord readonly dispid 1610743842;
    property InternalAndReservedAttribute10IVirtualBox: LongWord readonly dispid 1610743843;
    property InternalAndReservedAttribute11IVirtualBox: LongWord readonly dispid 1610743844;
    property InternalAndReservedAttribute12IVirtualBox: LongWord readonly dispid 1610743845;
    function ComposeMachineFilename(const aName: WideString; const aGroup: WideString; 
                                    const aCreateFlags: WideString; const aBaseFolder: WideString): WideString; dispid 1610743846;
    function CreateMachine(const aSettingsFile: WideString; const aName: WideString; 
                           aGroups: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           const aOSTypeId: WideString; const aFlags: WideString): IMachine; dispid 1610743847;
    function OpenMachine(const aSettingsFile: WideString): IMachine; dispid 1610743848;
    procedure RegisterMachine(const aMachine: IMachine); dispid 1610743849;
    function FindMachine(const aNameOrId: WideString): IMachine; dispid 1610743850;
    function GetMachinesByGroups(aGroups: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743851;
    function GetMachineStates(aMachines: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743852;
    function CreateAppliance: IAppliance; dispid 1610743853;
    function CreateUnattendedInstaller: IUnattended; dispid 1610743854;
    function CreateMedium(const aFormat: WideString; const aLocation: WideString; 
                          aAccessMode: AccessMode; aADeviceTypeType: DeviceType): IMedium; dispid 1610743855;
    function OpenMedium(const aLocation: WideString; aDeviceType: DeviceType; 
                        aAccessMode: AccessMode; aForceNewUuid: Integer): IMedium; dispid 1610743856;
    function GetGuestOSType(const aId: WideString): IGuestOSType; dispid 1610743857;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); dispid 1610743858;
    procedure RemoveSharedFolder(const aName: WideString); dispid 1610743859;
    function GetExtraDataKeys: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743860;
    function GetExtraData(const aKey: WideString): WideString; dispid 1610743861;
    procedure SetExtraData(const aKey: WideString; const aValue: WideString); dispid 1610743862;
    procedure SetSettingsSecret(const aPassword: WideString); dispid 1610743863;
    function CreateDHCPServer(const aName: WideString): IDHCPServer; dispid 1610743864;
    function FindDHCPServerByNetworkName(const aName: WideString): IDHCPServer; dispid 1610743865;
    procedure RemoveDHCPServer(const aServer: IDHCPServer); dispid 1610743866;
    function CreateNATNetwork(const aNetworkName: WideString): INATNetwork; dispid 1610743867;
    function FindNATNetworkByName(const aNetworkName: WideString): INATNetwork; dispid 1610743868;
    procedure RemoveNATNetwork(const aNetwork: INATNetwork); dispid 1610743869;
    function CheckFirmwarePresent(aFirmwareType: FirmwareType; const aVersion: WideString; 
                                  out aUrl: WideString; out aFile: WideString): Integer; dispid 1610743870;
    procedure InternalAndReservedMethod1IVirtualBox; dispid 1610743871;
    procedure InternalAndReservedMethod2IVirtualBox; dispid 1610743872;
    procedure InternalAndReservedMethod3IVirtualBox; dispid 1610743873;
    procedure InternalAndReservedMethod4IVirtualBox; dispid 1610743874;
    procedure InternalAndReservedMethod5IVirtualBox; dispid 1610743875;
    procedure InternalAndReservedMethod6IVirtualBox; dispid 1610743876;
    procedure InternalAndReservedMethod7IVirtualBox; dispid 1610743877;
    procedure InternalAndReservedMethod8IVirtualBox; dispid 1610743878;
  end;

// *********************************************************************//
// Interface: IHost
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DBE11E5F-7F10-46E7-94C4-1E95BF4B6627}
// *********************************************************************//
  IHost = interface(IDispatch)
    ['{DBE11E5F-7F10-46E7-94C4-1E95BF4B6627}']
    function Get_DVDDrives: PSafeArray; safecall;
    function Get_FloppyDrives: PSafeArray; safecall;
    function Get_USBDevices: PSafeArray; safecall;
    function Get_USBDeviceFilters: PSafeArray; safecall;
    function Get_NetworkInterfaces: PSafeArray; safecall;
    function Get_NameServers: PSafeArray; safecall;
    function Get_DomainName: WideString; safecall;
    function Get_SearchStrings: PSafeArray; safecall;
    function Get_ProcessorCount: LongWord; safecall;
    function Get_ProcessorOnlineCount: LongWord; safecall;
    function Get_ProcessorCoreCount: LongWord; safecall;
    function Get_ProcessorOnlineCoreCount: LongWord; safecall;
    function Get_MemorySize: LongWord; safecall;
    function Get_MemoryAvailable: LongWord; safecall;
    function Get_OperatingSystem: WideString; safecall;
    function Get_OSVersion: WideString; safecall;
    function Get_UTCTime: Int64; safecall;
    function Get_Acceleration3DAvailable: Integer; safecall;
    function Get_VideoInputDevices: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IHost: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IHost: LongWord; safecall;
    function GetProcessorSpeed(aCpuId: LongWord): LongWord; safecall;
    function GetProcessorFeature(aFeature: ProcessorFeature): Integer; safecall;
    function GetProcessorDescription(aCpuId: LongWord): WideString; safecall;
    procedure GetProcessorCPUIDLeaf(aCpuId: LongWord; aLeaf: LongWord; aSubLeaf: LongWord; 
                                    out aValEax: LongWord; out aValEbx: LongWord; 
                                    out aValEcx: LongWord; out aValEdx: LongWord); safecall;
    function CreateHostOnlyNetworkInterface(out aHostInterface: IHostNetworkInterface): IProgress; safecall;
    function RemoveHostOnlyNetworkInterface(const aId: WideString): IProgress; safecall;
    function CreateUSBDeviceFilter(const aName: WideString): IHostUSBDeviceFilter; safecall;
    procedure InsertUSBDeviceFilter(aPosition: LongWord; const aFilter: IHostUSBDeviceFilter); safecall;
    procedure RemoveUSBDeviceFilter(aPosition: LongWord); safecall;
    function FindHostDVDDrive(const aName: WideString): IMedium; safecall;
    function FindHostFloppyDrive(const aName: WideString): IMedium; safecall;
    function FindHostNetworkInterfaceByName(const aName: WideString): IHostNetworkInterface; safecall;
    function FindHostNetworkInterfaceById(const aId: WideString): IHostNetworkInterface; safecall;
    function FindHostNetworkInterfacesOfType(aType: HostNetworkInterfaceType): PSafeArray; safecall;
    function FindUSBDeviceById(const aId: WideString): IHostUSBDevice; safecall;
    function FindUSBDeviceByAddress(const aName: WideString): IHostUSBDevice; safecall;
    function GenerateMACAddress: WideString; safecall;
    procedure AddUSBDeviceSource(const aBackend: WideString; const aId: WideString; 
                                 const aAddress: WideString; aPropertyNames: PSafeArray; 
                                 aPropertyValues: PSafeArray); safecall;
    procedure RemoveUSBDeviceSource(const aId: WideString); safecall;
    procedure InternalAndReservedMethod1IHost; safecall;
    procedure InternalAndReservedMethod2IHost; safecall;
    procedure InternalAndReservedMethod3IHost; safecall;
    procedure InternalAndReservedMethod4IHost; safecall;
    procedure InternalAndReservedMethod5IHost; safecall;
    procedure InternalAndReservedMethod6IHost; safecall;
    property DVDDrives: PSafeArray read Get_DVDDrives;
    property FloppyDrives: PSafeArray read Get_FloppyDrives;
    property USBDevices: PSafeArray read Get_USBDevices;
    property USBDeviceFilters: PSafeArray read Get_USBDeviceFilters;
    property NetworkInterfaces: PSafeArray read Get_NetworkInterfaces;
    property NameServers: PSafeArray read Get_NameServers;
    property DomainName: WideString read Get_DomainName;
    property SearchStrings: PSafeArray read Get_SearchStrings;
    property ProcessorCount: LongWord read Get_ProcessorCount;
    property ProcessorOnlineCount: LongWord read Get_ProcessorOnlineCount;
    property ProcessorCoreCount: LongWord read Get_ProcessorCoreCount;
    property ProcessorOnlineCoreCount: LongWord read Get_ProcessorOnlineCoreCount;
    property MemorySize: LongWord read Get_MemorySize;
    property MemoryAvailable: LongWord read Get_MemoryAvailable;
    property OperatingSystem: WideString read Get_OperatingSystem;
    property OSVersion: WideString read Get_OSVersion;
    property UTCTime: Int64 read Get_UTCTime;
    property Acceleration3DAvailable: Integer read Get_Acceleration3DAvailable;
    property VideoInputDevices: PSafeArray read Get_VideoInputDevices;
    property InternalAndReservedAttribute1IHost: LongWord read Get_InternalAndReservedAttribute1IHost;
    property InternalAndReservedAttribute2IHost: LongWord read Get_InternalAndReservedAttribute2IHost;
    property InternalAndReservedAttribute3IHost: LongWord read Get_InternalAndReservedAttribute3IHost;
    property InternalAndReservedAttribute4IHost: LongWord read Get_InternalAndReservedAttribute4IHost;
    property InternalAndReservedAttribute5IHost: LongWord read Get_InternalAndReservedAttribute5IHost;
    property InternalAndReservedAttribute6IHost: LongWord read Get_InternalAndReservedAttribute6IHost;
    property InternalAndReservedAttribute7IHost: LongWord read Get_InternalAndReservedAttribute7IHost;
    property InternalAndReservedAttribute8IHost: LongWord read Get_InternalAndReservedAttribute8IHost;
    property InternalAndReservedAttribute9IHost: LongWord read Get_InternalAndReservedAttribute9IHost;
    property InternalAndReservedAttribute10IHost: LongWord read Get_InternalAndReservedAttribute10IHost;
    property InternalAndReservedAttribute11IHost: LongWord read Get_InternalAndReservedAttribute11IHost;
    property InternalAndReservedAttribute12IHost: LongWord read Get_InternalAndReservedAttribute12IHost;
  end;

// *********************************************************************//
// DispIntf:  IHostDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DBE11E5F-7F10-46E7-94C4-1E95BF4B6627}
// *********************************************************************//
  IHostDisp = dispinterface
    ['{DBE11E5F-7F10-46E7-94C4-1E95BF4B6627}']
    property DVDDrives: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property FloppyDrives: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property USBDevices: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743810;
    property USBDeviceFilters: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743811;
    property NetworkInterfaces: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743812;
    property NameServers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743813;
    property DomainName: WideString readonly dispid 1610743814;
    property SearchStrings: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743815;
    property ProcessorCount: LongWord readonly dispid 1610743816;
    property ProcessorOnlineCount: LongWord readonly dispid 1610743817;
    property ProcessorCoreCount: LongWord readonly dispid 1610743818;
    property ProcessorOnlineCoreCount: LongWord readonly dispid 1610743819;
    property MemorySize: LongWord readonly dispid 1610743820;
    property MemoryAvailable: LongWord readonly dispid 1610743821;
    property OperatingSystem: WideString readonly dispid 1610743822;
    property OSVersion: WideString readonly dispid 1610743823;
    property UTCTime: Int64 readonly dispid 1610743824;
    property Acceleration3DAvailable: Integer readonly dispid 1610743825;
    property VideoInputDevices: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743826;
    property InternalAndReservedAttribute1IHost: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute2IHost: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute3IHost: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute4IHost: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute5IHost: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute6IHost: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute7IHost: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute8IHost: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute9IHost: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute10IHost: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute11IHost: LongWord readonly dispid 1610743837;
    property InternalAndReservedAttribute12IHost: LongWord readonly dispid 1610743838;
    function GetProcessorSpeed(aCpuId: LongWord): LongWord; dispid 1610743839;
    function GetProcessorFeature(aFeature: ProcessorFeature): Integer; dispid 1610743840;
    function GetProcessorDescription(aCpuId: LongWord): WideString; dispid 1610743841;
    procedure GetProcessorCPUIDLeaf(aCpuId: LongWord; aLeaf: LongWord; aSubLeaf: LongWord; 
                                    out aValEax: LongWord; out aValEbx: LongWord; 
                                    out aValEcx: LongWord; out aValEdx: LongWord); dispid 1610743842;
    function CreateHostOnlyNetworkInterface(out aHostInterface: IHostNetworkInterface): IProgress; dispid 1610743843;
    function RemoveHostOnlyNetworkInterface(const aId: WideString): IProgress; dispid 1610743844;
    function CreateUSBDeviceFilter(const aName: WideString): IHostUSBDeviceFilter; dispid 1610743845;
    procedure InsertUSBDeviceFilter(aPosition: LongWord; const aFilter: IHostUSBDeviceFilter); dispid 1610743846;
    procedure RemoveUSBDeviceFilter(aPosition: LongWord); dispid 1610743847;
    function FindHostDVDDrive(const aName: WideString): IMedium; dispid 1610743848;
    function FindHostFloppyDrive(const aName: WideString): IMedium; dispid 1610743849;
    function FindHostNetworkInterfaceByName(const aName: WideString): IHostNetworkInterface; dispid 1610743850;
    function FindHostNetworkInterfaceById(const aId: WideString): IHostNetworkInterface; dispid 1610743851;
    function FindHostNetworkInterfacesOfType(aType: HostNetworkInterfaceType): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743852;
    function FindUSBDeviceById(const aId: WideString): IHostUSBDevice; dispid 1610743853;
    function FindUSBDeviceByAddress(const aName: WideString): IHostUSBDevice; dispid 1610743854;
    function GenerateMACAddress: WideString; dispid 1610743855;
    procedure AddUSBDeviceSource(const aBackend: WideString; const aId: WideString; 
                                 const aAddress: WideString; 
                                 aPropertyNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 aPropertyValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743856;
    procedure RemoveUSBDeviceSource(const aId: WideString); dispid 1610743857;
    procedure InternalAndReservedMethod1IHost; dispid 1610743858;
    procedure InternalAndReservedMethod2IHost; dispid 1610743859;
    procedure InternalAndReservedMethod3IHost; dispid 1610743860;
    procedure InternalAndReservedMethod4IHost; dispid 1610743861;
    procedure InternalAndReservedMethod5IHost; dispid 1610743862;
    procedure InternalAndReservedMethod6IHost; dispid 1610743863;
  end;

// *********************************************************************//
// Interface: IMedium
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AD47AD09-787B-44AB-B343-A082A3F2DFB1}
// *********************************************************************//
  IMedium = interface(IDispatch)
    ['{AD47AD09-787B-44AB-B343-A082A3F2DFB1}']
    function Get_Id: WideString; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const aDescription: WideString); safecall;
    function Get_State: MediumState; safecall;
    function Get_Variant: PSafeArray; safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const aLocation: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_DeviceType: DeviceType; safecall;
    function Get_HostDrive: Integer; safecall;
    function Get_Size: Int64; safecall;
    function Get_Format: WideString; safecall;
    function Get_MediumFormat: IMediumFormat; safecall;
    function Get_type_: MediumType; safecall;
    procedure Set_type_(aType: MediumType); safecall;
    function Get_AllowedTypes: PSafeArray; safecall;
    function Get_Parent: IMedium; safecall;
    function Get_Children: PSafeArray; safecall;
    function Get_Base: IMedium; safecall;
    function Get_ReadOnly: Integer; safecall;
    function Get_LogicalSize: Int64; safecall;
    function Get_AutoReset: Integer; safecall;
    procedure Set_AutoReset(aAutoReset: Integer); safecall;
    function Get_LastAccessError: WideString; safecall;
    function Get_MachineIds: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IMedium: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IMedium: LongWord; safecall;
    procedure SetIds(aSetImageId: Integer; const aImageId: WideString; aSetParentId: Integer; 
                     const aParentId: WideString); safecall;
    function RefreshState: MediumState; safecall;
    function GetSnapshotIds(const aMachineId: WideString): PSafeArray; safecall;
    function LockRead: IToken; safecall;
    function LockWrite: IToken; safecall;
    procedure Close; safecall;
    function GetProperty(const aName: WideString): WideString; safecall;
    procedure SetProperty(const aName: WideString; const aValue: WideString); safecall;
    function GetProperties(const aNames: WideString; out aReturnNames: PSafeArray): PSafeArray; safecall;
    procedure SetProperties(aNames: PSafeArray; aValues: PSafeArray); safecall;
    function CreateBaseStorage(aLogicalSize: Int64; aVariant: PSafeArray): IProgress; safecall;
    function DeleteStorage: IProgress; safecall;
    function CreateDiffStorage(const aTarget: IMedium; aVariant: PSafeArray): IProgress; safecall;
    function MergeTo(const aTarget: IMedium): IProgress; safecall;
    function CloneTo(const aTarget: IMedium; aVariant: PSafeArray; const aParent: IMedium): IProgress; safecall;
    function CloneToBase(const aTarget: IMedium; aVariant: PSafeArray): IProgress; safecall;
    function MoveTo(const aLocation: WideString): IProgress; safecall;
    function Compact: IProgress; safecall;
    function Resize(aLogicalSize: Int64): IProgress; safecall;
    function Reset: IProgress; safecall;
    function ChangeEncryption(const aCurrentPassword: WideString; const aCipher: WideString; 
                              const aNewPassword: WideString; const aNewPasswordId: WideString): IProgress; safecall;
    function GetEncryptionSettings(out aCipher: WideString): WideString; safecall;
    procedure CheckEncryptionPassword(const aPassword: WideString); safecall;
    function OpenForIO(aWritable: Integer; const aPassword: WideString): IMediumIO; safecall;
    procedure InternalAndReservedMethod1IMedium; safecall;
    procedure InternalAndReservedMethod2IMedium; safecall;
    procedure InternalAndReservedMethod3IMedium; safecall;
    procedure InternalAndReservedMethod4IMedium; safecall;
    procedure InternalAndReservedMethod5IMedium; safecall;
    procedure InternalAndReservedMethod6IMedium; safecall;
    procedure InternalAndReservedMethod7IMedium; safecall;
    procedure InternalAndReservedMethod8IMedium; safecall;
    property Id: WideString read Get_Id;
    property Description: WideString read Get_Description write Set_Description;
    property State: MediumState read Get_State;
    property Variant: PSafeArray read Get_Variant;
    property Location: WideString read Get_Location write Set_Location;
    property Name: WideString read Get_Name;
    property DeviceType: DeviceType read Get_DeviceType;
    property HostDrive: Integer read Get_HostDrive;
    property Size: Int64 read Get_Size;
    property Format: WideString read Get_Format;
    property MediumFormat: IMediumFormat read Get_MediumFormat;
    property type_: MediumType read Get_type_ write Set_type_;
    property AllowedTypes: PSafeArray read Get_AllowedTypes;
    property Parent: IMedium read Get_Parent;
    property Children: PSafeArray read Get_Children;
    property Base: IMedium read Get_Base;
    property ReadOnly: Integer read Get_ReadOnly;
    property LogicalSize: Int64 read Get_LogicalSize;
    property AutoReset: Integer read Get_AutoReset write Set_AutoReset;
    property LastAccessError: WideString read Get_LastAccessError;
    property MachineIds: PSafeArray read Get_MachineIds;
    property InternalAndReservedAttribute1IMedium: LongWord read Get_InternalAndReservedAttribute1IMedium;
    property InternalAndReservedAttribute2IMedium: LongWord read Get_InternalAndReservedAttribute2IMedium;
    property InternalAndReservedAttribute3IMedium: LongWord read Get_InternalAndReservedAttribute3IMedium;
    property InternalAndReservedAttribute4IMedium: LongWord read Get_InternalAndReservedAttribute4IMedium;
    property InternalAndReservedAttribute5IMedium: LongWord read Get_InternalAndReservedAttribute5IMedium;
    property InternalAndReservedAttribute6IMedium: LongWord read Get_InternalAndReservedAttribute6IMedium;
    property InternalAndReservedAttribute7IMedium: LongWord read Get_InternalAndReservedAttribute7IMedium;
    property InternalAndReservedAttribute8IMedium: LongWord read Get_InternalAndReservedAttribute8IMedium;
    property InternalAndReservedAttribute9IMedium: LongWord read Get_InternalAndReservedAttribute9IMedium;
    property InternalAndReservedAttribute10IMedium: LongWord read Get_InternalAndReservedAttribute10IMedium;
    property InternalAndReservedAttribute11IMedium: LongWord read Get_InternalAndReservedAttribute11IMedium;
    property InternalAndReservedAttribute12IMedium: LongWord read Get_InternalAndReservedAttribute12IMedium;
  end;

// *********************************************************************//
// DispIntf:  IMediumDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AD47AD09-787B-44AB-B343-A082A3F2DFB1}
// *********************************************************************//
  IMediumDisp = dispinterface
    ['{AD47AD09-787B-44AB-B343-A082A3F2DFB1}']
    property Id: WideString readonly dispid 1610743808;
    property Description: WideString dispid 1610743809;
    property State: MediumState readonly dispid 1610743811;
    property Variant: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743812;
    property Location: WideString dispid 1610743813;
    property Name: WideString readonly dispid 1610743815;
    property DeviceType: DeviceType readonly dispid 1610743816;
    property HostDrive: Integer readonly dispid 1610743817;
    property Size: Int64 readonly dispid 1610743818;
    property Format: WideString readonly dispid 1610743819;
    property MediumFormat: IMediumFormat readonly dispid 1610743820;
    property type_: MediumType dispid 1610743821;
    property AllowedTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743823;
    property Parent: IMedium readonly dispid 1610743824;
    property Children: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743825;
    property Base: IMedium readonly dispid 1610743826;
    property ReadOnly: Integer readonly dispid 1610743827;
    property LogicalSize: Int64 readonly dispid 1610743828;
    property AutoReset: Integer dispid 1610743829;
    property LastAccessError: WideString readonly dispid 1610743831;
    property MachineIds: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743832;
    property InternalAndReservedAttribute1IMedium: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute2IMedium: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute3IMedium: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute4IMedium: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute5IMedium: LongWord readonly dispid 1610743837;
    property InternalAndReservedAttribute6IMedium: LongWord readonly dispid 1610743838;
    property InternalAndReservedAttribute7IMedium: LongWord readonly dispid 1610743839;
    property InternalAndReservedAttribute8IMedium: LongWord readonly dispid 1610743840;
    property InternalAndReservedAttribute9IMedium: LongWord readonly dispid 1610743841;
    property InternalAndReservedAttribute10IMedium: LongWord readonly dispid 1610743842;
    property InternalAndReservedAttribute11IMedium: LongWord readonly dispid 1610743843;
    property InternalAndReservedAttribute12IMedium: LongWord readonly dispid 1610743844;
    procedure SetIds(aSetImageId: Integer; const aImageId: WideString; aSetParentId: Integer; 
                     const aParentId: WideString); dispid 1610743845;
    function RefreshState: MediumState; dispid 1610743846;
    function GetSnapshotIds(const aMachineId: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743847;
    function LockRead: IToken; dispid 1610743848;
    function LockWrite: IToken; dispid 1610743849;
    procedure Close; dispid 1610743850;
    function GetProperty(const aName: WideString): WideString; dispid 1610743851;
    procedure SetProperty(const aName: WideString; const aValue: WideString); dispid 1610743852;
    function GetProperties(const aNames: WideString; 
                           out aReturnNames: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743853;
    procedure SetProperties(aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743854;
    function CreateBaseStorage(aLogicalSize: Int64; aVariant: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743855;
    function DeleteStorage: IProgress; dispid 1610743856;
    function CreateDiffStorage(const aTarget: IMedium; aVariant: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743857;
    function MergeTo(const aTarget: IMedium): IProgress; dispid 1610743858;
    function CloneTo(const aTarget: IMedium; aVariant: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                     const aParent: IMedium): IProgress; dispid 1610743859;
    function CloneToBase(const aTarget: IMedium; aVariant: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743860;
    function MoveTo(const aLocation: WideString): IProgress; dispid 1610743861;
    function Compact: IProgress; dispid 1610743862;
    function Resize(aLogicalSize: Int64): IProgress; dispid 1610743863;
    function Reset: IProgress; dispid 1610743864;
    function ChangeEncryption(const aCurrentPassword: WideString; const aCipher: WideString; 
                              const aNewPassword: WideString; const aNewPasswordId: WideString): IProgress; dispid 1610743865;
    function GetEncryptionSettings(out aCipher: WideString): WideString; dispid 1610743866;
    procedure CheckEncryptionPassword(const aPassword: WideString); dispid 1610743867;
    function OpenForIO(aWritable: Integer; const aPassword: WideString): IMediumIO; dispid 1610743868;
    procedure InternalAndReservedMethod1IMedium; dispid 1610743869;
    procedure InternalAndReservedMethod2IMedium; dispid 1610743870;
    procedure InternalAndReservedMethod3IMedium; dispid 1610743871;
    procedure InternalAndReservedMethod4IMedium; dispid 1610743872;
    procedure InternalAndReservedMethod5IMedium; dispid 1610743873;
    procedure InternalAndReservedMethod6IMedium; dispid 1610743874;
    procedure InternalAndReservedMethod7IMedium; dispid 1610743875;
    procedure InternalAndReservedMethod8IMedium; dispid 1610743876;
  end;

// *********************************************************************//
// Interface: IMediumFormat
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {11BE93C7-A862-4DC9-8C89-BF4BA74A886A}
// *********************************************************************//
  IMediumFormat = interface(IDispatch)
    ['{11BE93C7-A862-4DC9-8C89-BF4BA74A886A}']
    function Get_Id: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_Capabilities: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IMediumFormat: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMediumFormat: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMediumFormat: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMediumFormat: LongWord; safecall;
    procedure DescribeFileExtensions(out aExtensions: PSafeArray; out aTypes: PSafeArray); safecall;
    procedure DescribeProperties(out aNames: PSafeArray; out aDescriptions: PSafeArray; 
                                 out aTypes: PSafeArray; out aFlags: PSafeArray; 
                                 out aDefaults: PSafeArray); safecall;
    procedure InternalAndReservedMethod1IMediumFormat; safecall;
    procedure InternalAndReservedMethod2IMediumFormat; safecall;
    property Id: WideString read Get_Id;
    property Name: WideString read Get_Name;
    property Capabilities: PSafeArray read Get_Capabilities;
    property InternalAndReservedAttribute1IMediumFormat: LongWord read Get_InternalAndReservedAttribute1IMediumFormat;
    property InternalAndReservedAttribute2IMediumFormat: LongWord read Get_InternalAndReservedAttribute2IMediumFormat;
    property InternalAndReservedAttribute3IMediumFormat: LongWord read Get_InternalAndReservedAttribute3IMediumFormat;
    property InternalAndReservedAttribute4IMediumFormat: LongWord read Get_InternalAndReservedAttribute4IMediumFormat;
  end;

// *********************************************************************//
// DispIntf:  IMediumFormatDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {11BE93C7-A862-4DC9-8C89-BF4BA74A886A}
// *********************************************************************//
  IMediumFormatDisp = dispinterface
    ['{11BE93C7-A862-4DC9-8C89-BF4BA74A886A}']
    property Id: WideString readonly dispid 1610743808;
    property Name: WideString readonly dispid 1610743809;
    property Capabilities: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743810;
    property InternalAndReservedAttribute1IMediumFormat: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute2IMediumFormat: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute3IMediumFormat: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute4IMediumFormat: LongWord readonly dispid 1610743814;
    procedure DescribeFileExtensions(out aExtensions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                     out aTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743815;
    procedure DescribeProperties(out aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 out aDescriptions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 out aTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 out aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 out aDefaults: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743816;
    procedure InternalAndReservedMethod1IMediumFormat; dispid 1610743817;
    procedure InternalAndReservedMethod2IMediumFormat; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IToken
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {20479EAF-D8ED-44CF-85AC-C83A26C95A4D}
// *********************************************************************//
  IToken = interface(IDispatch)
    ['{20479EAF-D8ED-44CF-85AC-C83A26C95A4D}']
    function Get_InternalAndReservedAttribute1IToken: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IToken: LongWord; safecall;
    procedure Abandon; safecall;
    procedure Dummy; safecall;
    procedure InternalAndReservedMethod1IToken; safecall;
    property InternalAndReservedAttribute1IToken: LongWord read Get_InternalAndReservedAttribute1IToken;
    property InternalAndReservedAttribute2IToken: LongWord read Get_InternalAndReservedAttribute2IToken;
  end;

// *********************************************************************//
// DispIntf:  ITokenDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {20479EAF-D8ED-44CF-85AC-C83A26C95A4D}
// *********************************************************************//
  ITokenDisp = dispinterface
    ['{20479EAF-D8ED-44CF-85AC-C83A26C95A4D}']
    property InternalAndReservedAttribute1IToken: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute2IToken: LongWord readonly dispid 1610743809;
    procedure Abandon; dispid 1610743810;
    procedure Dummy; dispid 1610743811;
    procedure InternalAndReservedMethod1IToken; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IProgress
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D7B98D2B-30E8-447E-99CB-E31BECAE6AE4}
// *********************************************************************//
  IProgress = interface(IDispatch)
    ['{D7B98D2B-30E8-447E-99CB-E31BECAE6AE4}']
    function Get_Id: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_Initiator: IUnknown; safecall;
    function Get_Cancelable: Integer; safecall;
    function Get_Percent: LongWord; safecall;
    function Get_TimeRemaining: Integer; safecall;
    function Get_Completed: Integer; safecall;
    function Get_Canceled: Integer; safecall;
    function Get_ResultCode: Integer; safecall;
    function Get_ErrorInfo: IVirtualBoxErrorInfo; safecall;
    function Get_OperationCount: LongWord; safecall;
    function Get_Operation: LongWord; safecall;
    function Get_OperationDescription: WideString; safecall;
    function Get_OperationPercent: LongWord; safecall;
    function Get_OperationWeight: LongWord; safecall;
    function Get_Timeout: LongWord; safecall;
    procedure Set_Timeout(aTimeout: LongWord); safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_InternalAndReservedAttribute1IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IProgress: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IProgress: LongWord; safecall;
    procedure WaitForCompletion(aTimeout: Integer); safecall;
    procedure WaitForOperationCompletion(aOperation: LongWord; aTimeout: Integer); safecall;
    procedure Cancel; safecall;
    procedure InternalAndReservedMethod1IProgress; safecall;
    procedure InternalAndReservedMethod2IProgress; safecall;
    procedure InternalAndReservedMethod3IProgress; safecall;
    procedure InternalAndReservedMethod4IProgress; safecall;
    procedure InternalAndReservedMethod5IProgress; safecall;
    procedure InternalAndReservedMethod6IProgress; safecall;
    procedure InternalAndReservedMethod7IProgress; safecall;
    procedure InternalAndReservedMethod8IProgress; safecall;
    property Id: WideString read Get_Id;
    property Description: WideString read Get_Description;
    property Initiator: IUnknown read Get_Initiator;
    property Cancelable: Integer read Get_Cancelable;
    property Percent: LongWord read Get_Percent;
    property TimeRemaining: Integer read Get_TimeRemaining;
    property Completed: Integer read Get_Completed;
    property Canceled: Integer read Get_Canceled;
    property ResultCode: Integer read Get_ResultCode;
    property ErrorInfo: IVirtualBoxErrorInfo read Get_ErrorInfo;
    property OperationCount: LongWord read Get_OperationCount;
    property Operation: LongWord read Get_Operation;
    property OperationDescription: WideString read Get_OperationDescription;
    property OperationPercent: LongWord read Get_OperationPercent;
    property OperationWeight: LongWord read Get_OperationWeight;
    property Timeout: LongWord read Get_Timeout write Set_Timeout;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IProgress: LongWord read Get_InternalAndReservedAttribute1IProgress;
    property InternalAndReservedAttribute2IProgress: LongWord read Get_InternalAndReservedAttribute2IProgress;
    property InternalAndReservedAttribute3IProgress: LongWord read Get_InternalAndReservedAttribute3IProgress;
    property InternalAndReservedAttribute4IProgress: LongWord read Get_InternalAndReservedAttribute4IProgress;
    property InternalAndReservedAttribute5IProgress: LongWord read Get_InternalAndReservedAttribute5IProgress;
    property InternalAndReservedAttribute6IProgress: LongWord read Get_InternalAndReservedAttribute6IProgress;
    property InternalAndReservedAttribute7IProgress: LongWord read Get_InternalAndReservedAttribute7IProgress;
    property InternalAndReservedAttribute8IProgress: LongWord read Get_InternalAndReservedAttribute8IProgress;
    property InternalAndReservedAttribute9IProgress: LongWord read Get_InternalAndReservedAttribute9IProgress;
    property InternalAndReservedAttribute10IProgress: LongWord read Get_InternalAndReservedAttribute10IProgress;
    property InternalAndReservedAttribute11IProgress: LongWord read Get_InternalAndReservedAttribute11IProgress;
    property InternalAndReservedAttribute12IProgress: LongWord read Get_InternalAndReservedAttribute12IProgress;
  end;

// *********************************************************************//
// DispIntf:  IProgressDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D7B98D2B-30E8-447E-99CB-E31BECAE6AE4}
// *********************************************************************//
  IProgressDisp = dispinterface
    ['{D7B98D2B-30E8-447E-99CB-E31BECAE6AE4}']
    property Id: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property Initiator: IUnknown readonly dispid 1610743810;
    property Cancelable: Integer readonly dispid 1610743811;
    property Percent: LongWord readonly dispid 1610743812;
    property TimeRemaining: Integer readonly dispid 1610743813;
    property Completed: Integer readonly dispid 1610743814;
    property Canceled: Integer readonly dispid 1610743815;
    property ResultCode: Integer readonly dispid 1610743816;
    property ErrorInfo: IVirtualBoxErrorInfo readonly dispid 1610743817;
    property OperationCount: LongWord readonly dispid 1610743818;
    property Operation: LongWord readonly dispid 1610743819;
    property OperationDescription: WideString readonly dispid 1610743820;
    property OperationPercent: LongWord readonly dispid 1610743821;
    property OperationWeight: LongWord readonly dispid 1610743822;
    property Timeout: LongWord dispid 1610743823;
    property EventSource: IEventSource readonly dispid 1610743825;
    property InternalAndReservedAttribute1IProgress: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute2IProgress: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute3IProgress: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute4IProgress: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute5IProgress: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute6IProgress: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute7IProgress: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute8IProgress: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute9IProgress: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute10IProgress: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute11IProgress: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute12IProgress: LongWord readonly dispid 1610743837;
    procedure WaitForCompletion(aTimeout: Integer); dispid 1610743838;
    procedure WaitForOperationCompletion(aOperation: LongWord; aTimeout: Integer); dispid 1610743839;
    procedure Cancel; dispid 1610743840;
    procedure InternalAndReservedMethod1IProgress; dispid 1610743841;
    procedure InternalAndReservedMethod2IProgress; dispid 1610743842;
    procedure InternalAndReservedMethod3IProgress; dispid 1610743843;
    procedure InternalAndReservedMethod4IProgress; dispid 1610743844;
    procedure InternalAndReservedMethod5IProgress; dispid 1610743845;
    procedure InternalAndReservedMethod6IProgress; dispid 1610743846;
    procedure InternalAndReservedMethod7IProgress; dispid 1610743847;
    procedure InternalAndReservedMethod8IProgress; dispid 1610743848;
  end;

// *********************************************************************//
// Interface: IMediumIO
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E4B301A9-5F86-4D65-AD1B-87CA284FB1C8}
// *********************************************************************//
  IMediumIO = interface(IDispatch)
    ['{E4B301A9-5F86-4D65-AD1B-87CA284FB1C8}']
    function Get_Medium: IMedium; safecall;
    function Get_Writable: Integer; safecall;
    function Get_Explorer: IVFSExplorer; safecall;
    function Get_InternalAndReservedAttribute1IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IMediumIO: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IMediumIO: LongWord; safecall;
    function Read(aOffset: Int64; aSize: LongWord): PSafeArray; safecall;
    function Write(aOffset: Int64; aData: PSafeArray): LongWord; safecall;
    procedure FormatFAT(aQuick: Integer); safecall;
    procedure InitializePartitionTable(aFormat: PartitionTableType; aWholeDiskInOneEntry: Integer); safecall;
    function ConvertToStream(const aFormat: WideString; aVariant: PSafeArray; 
                             aBufferSize: LongWord; out aStream: IDataStream): IProgress; safecall;
    procedure Close; safecall;
    procedure InternalAndReservedMethod1IMediumIO; safecall;
    procedure InternalAndReservedMethod2IMediumIO; safecall;
    procedure InternalAndReservedMethod3IMediumIO; safecall;
    procedure InternalAndReservedMethod4IMediumIO; safecall;
    property Medium: IMedium read Get_Medium;
    property Writable: Integer read Get_Writable;
    property Explorer: IVFSExplorer read Get_Explorer;
    property InternalAndReservedAttribute1IMediumIO: LongWord read Get_InternalAndReservedAttribute1IMediumIO;
    property InternalAndReservedAttribute2IMediumIO: LongWord read Get_InternalAndReservedAttribute2IMediumIO;
    property InternalAndReservedAttribute3IMediumIO: LongWord read Get_InternalAndReservedAttribute3IMediumIO;
    property InternalAndReservedAttribute4IMediumIO: LongWord read Get_InternalAndReservedAttribute4IMediumIO;
    property InternalAndReservedAttribute5IMediumIO: LongWord read Get_InternalAndReservedAttribute5IMediumIO;
    property InternalAndReservedAttribute6IMediumIO: LongWord read Get_InternalAndReservedAttribute6IMediumIO;
    property InternalAndReservedAttribute7IMediumIO: LongWord read Get_InternalAndReservedAttribute7IMediumIO;
    property InternalAndReservedAttribute8IMediumIO: LongWord read Get_InternalAndReservedAttribute8IMediumIO;
  end;

// *********************************************************************//
// DispIntf:  IMediumIODisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E4B301A9-5F86-4D65-AD1B-87CA284FB1C8}
// *********************************************************************//
  IMediumIODisp = dispinterface
    ['{E4B301A9-5F86-4D65-AD1B-87CA284FB1C8}']
    property Medium: IMedium readonly dispid 1610743808;
    property Writable: Integer readonly dispid 1610743809;
    property Explorer: IVFSExplorer readonly dispid 1610743810;
    property InternalAndReservedAttribute1IMediumIO: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute2IMediumIO: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute3IMediumIO: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute4IMediumIO: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute5IMediumIO: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute6IMediumIO: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute7IMediumIO: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute8IMediumIO: LongWord readonly dispid 1610743818;
    function Read(aOffset: Int64; aSize: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743819;
    function Write(aOffset: Int64; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant): LongWord; dispid 1610743820;
    procedure FormatFAT(aQuick: Integer); dispid 1610743821;
    procedure InitializePartitionTable(aFormat: PartitionTableType; aWholeDiskInOneEntry: Integer); dispid 1610743822;
    function ConvertToStream(const aFormat: WideString; 
                             aVariant: {NOT_OLEAUTO(PSafeArray)}OleVariant; aBufferSize: LongWord; 
                             out aStream: IDataStream): IProgress; dispid 1610743823;
    procedure Close; dispid 1610743824;
    procedure InternalAndReservedMethod1IMediumIO; dispid 1610743825;
    procedure InternalAndReservedMethod2IMediumIO; dispid 1610743826;
    procedure InternalAndReservedMethod3IMediumIO; dispid 1610743827;
    procedure InternalAndReservedMethod4IMediumIO; dispid 1610743828;
  end;

// *********************************************************************//
// Interface: IVFSExplorer
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FB220201-2FD3-47E2-A5DC-2C2431D833CC}
// *********************************************************************//
  IVFSExplorer = interface(IDispatch)
    ['{FB220201-2FD3-47E2-A5DC-2C2431D833CC}']
    function Get_Path: WideString; safecall;
    function Get_type_: VFSType; safecall;
    function Update: IProgress; safecall;
    function Cd(const aDir: WideString): IProgress; safecall;
    function CdUp: IProgress; safecall;
    procedure EntryList(out aNames: PSafeArray; out aTypes: PSafeArray; out aSizes: PSafeArray; 
                        out aModes: PSafeArray); safecall;
    function Exists(aNames: PSafeArray): PSafeArray; safecall;
    function Remove(aNames: PSafeArray): IProgress; safecall;
    property Path: WideString read Get_Path;
    property type_: VFSType read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IVFSExplorerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FB220201-2FD3-47E2-A5DC-2C2431D833CC}
// *********************************************************************//
  IVFSExplorerDisp = dispinterface
    ['{FB220201-2FD3-47E2-A5DC-2C2431D833CC}']
    property Path: WideString readonly dispid 1610743808;
    property type_: VFSType readonly dispid 1610743809;
    function Update: IProgress; dispid 1610743810;
    function Cd(const aDir: WideString): IProgress; dispid 1610743811;
    function CdUp: IProgress; dispid 1610743812;
    procedure EntryList(out aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        out aTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        out aSizes: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        out aModes: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    function Exists(aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743814;
    function Remove(aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IDataStream
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A338ED20-58D9-43AE-8B03-C1FD7088EF15}
// *********************************************************************//
  IDataStream = interface(IDispatch)
    ['{A338ED20-58D9-43AE-8B03-C1FD7088EF15}']
    function Get_ReadSize: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IDataStream: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IDataStream: LongWord; safecall;
    function Read(aSize: LongWord; aTimeoutMS: LongWord): PSafeArray; safecall;
    procedure InternalAndReservedMethod1IDataStream; safecall;
    procedure InternalAndReservedMethod2IDataStream; safecall;
    procedure InternalAndReservedMethod3IDataStream; safecall;
    procedure InternalAndReservedMethod4IDataStream; safecall;
    property ReadSize: LongWord read Get_ReadSize;
    property InternalAndReservedAttribute1IDataStream: LongWord read Get_InternalAndReservedAttribute1IDataStream;
    property InternalAndReservedAttribute2IDataStream: LongWord read Get_InternalAndReservedAttribute2IDataStream;
    property InternalAndReservedAttribute3IDataStream: LongWord read Get_InternalAndReservedAttribute3IDataStream;
    property InternalAndReservedAttribute4IDataStream: LongWord read Get_InternalAndReservedAttribute4IDataStream;
    property InternalAndReservedAttribute5IDataStream: LongWord read Get_InternalAndReservedAttribute5IDataStream;
    property InternalAndReservedAttribute6IDataStream: LongWord read Get_InternalAndReservedAttribute6IDataStream;
    property InternalAndReservedAttribute7IDataStream: LongWord read Get_InternalAndReservedAttribute7IDataStream;
    property InternalAndReservedAttribute8IDataStream: LongWord read Get_InternalAndReservedAttribute8IDataStream;
  end;

// *********************************************************************//
// DispIntf:  IDataStreamDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A338ED20-58D9-43AE-8B03-C1FD7088EF15}
// *********************************************************************//
  IDataStreamDisp = dispinterface
    ['{A338ED20-58D9-43AE-8B03-C1FD7088EF15}']
    property ReadSize: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute1IDataStream: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IDataStream: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IDataStream: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IDataStream: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute5IDataStream: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute6IDataStream: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute7IDataStream: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute8IDataStream: LongWord readonly dispid 1610743816;
    function Read(aSize: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743817;
    procedure InternalAndReservedMethod1IDataStream; dispid 1610743818;
    procedure InternalAndReservedMethod2IDataStream; dispid 1610743819;
    procedure InternalAndReservedMethod3IDataStream; dispid 1610743820;
    procedure InternalAndReservedMethod4IDataStream; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IUSBDevice
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {202C8C43-2D2D-4866-ACF7-56FFAE36F1F9}
// *********************************************************************//
  IUSBDevice = interface(IDispatch)
    ['{202C8C43-2D2D-4866-ACF7-56FFAE36F1F9}']
    function Get_Id: WideString; safecall;
    function Get_VendorId: Word; safecall;
    function Get_ProductId: Word; safecall;
    function Get_Revision: Word; safecall;
    function Get_Manufacturer: WideString; safecall;
    function Get_Product: WideString; safecall;
    function Get_SerialNumber: WideString; safecall;
    function Get_Address: WideString; safecall;
    function Get_Port: Word; safecall;
    function Get_Version: Word; safecall;
    function Get_PortVersion: Word; safecall;
    function Get_Speed: USBConnectionSpeed; safecall;
    function Get_Remote: Integer; safecall;
    function Get_DeviceInfo: PSafeArray; safecall;
    function Get_Backend: WideString; safecall;
    function Get_InternalAndReservedAttribute1IUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IUSBDevice: LongWord; safecall;
    property Id: WideString read Get_Id;
    property VendorId: Word read Get_VendorId;
    property ProductId: Word read Get_ProductId;
    property Revision: Word read Get_Revision;
    property Manufacturer: WideString read Get_Manufacturer;
    property Product: WideString read Get_Product;
    property SerialNumber: WideString read Get_SerialNumber;
    property Address: WideString read Get_Address;
    property Port: Word read Get_Port;
    property Version: Word read Get_Version;
    property PortVersion: Word read Get_PortVersion;
    property Speed: USBConnectionSpeed read Get_Speed;
    property Remote: Integer read Get_Remote;
    property DeviceInfo: PSafeArray read Get_DeviceInfo;
    property Backend: WideString read Get_Backend;
    property InternalAndReservedAttribute1IUSBDevice: LongWord read Get_InternalAndReservedAttribute1IUSBDevice;
    property InternalAndReservedAttribute2IUSBDevice: LongWord read Get_InternalAndReservedAttribute2IUSBDevice;
    property InternalAndReservedAttribute3IUSBDevice: LongWord read Get_InternalAndReservedAttribute3IUSBDevice;
    property InternalAndReservedAttribute4IUSBDevice: LongWord read Get_InternalAndReservedAttribute4IUSBDevice;
  end;

// *********************************************************************//
// DispIntf:  IUSBDeviceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {202C8C43-2D2D-4866-ACF7-56FFAE36F1F9}
// *********************************************************************//
  IUSBDeviceDisp = dispinterface
    ['{202C8C43-2D2D-4866-ACF7-56FFAE36F1F9}']
    property Id: WideString readonly dispid 1610743808;
    property VendorId: Word readonly dispid 1610743809;
    property ProductId: Word readonly dispid 1610743810;
    property Revision: Word readonly dispid 1610743811;
    property Manufacturer: WideString readonly dispid 1610743812;
    property Product: WideString readonly dispid 1610743813;
    property SerialNumber: WideString readonly dispid 1610743814;
    property Address: WideString readonly dispid 1610743815;
    property Port: Word readonly dispid 1610743816;
    property Version: Word readonly dispid 1610743817;
    property PortVersion: Word readonly dispid 1610743818;
    property Speed: USBConnectionSpeed readonly dispid 1610743819;
    property Remote: Integer readonly dispid 1610743820;
    property DeviceInfo: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743821;
    property Backend: WideString readonly dispid 1610743822;
    property InternalAndReservedAttribute1IUSBDevice: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IUSBDevice: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IUSBDevice: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IUSBDevice: LongWord readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IHostUSBDevice
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C19073DD-CC7B-431B-98B2-951FDA8EAB89}
// *********************************************************************//
  IHostUSBDevice = interface(IUSBDevice)
    ['{C19073DD-CC7B-431B-98B2-951FDA8EAB89}']
    function Get_State: USBDeviceState; safecall;
    function Get_InternalAndReservedAttribute1IHostUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IHostUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IHostUSBDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IHostUSBDevice: LongWord; safecall;
    property State: USBDeviceState read Get_State;
    property InternalAndReservedAttribute1IHostUSBDevice: LongWord read Get_InternalAndReservedAttribute1IHostUSBDevice;
    property InternalAndReservedAttribute2IHostUSBDevice: LongWord read Get_InternalAndReservedAttribute2IHostUSBDevice;
    property InternalAndReservedAttribute3IHostUSBDevice: LongWord read Get_InternalAndReservedAttribute3IHostUSBDevice;
    property InternalAndReservedAttribute4IHostUSBDevice: LongWord read Get_InternalAndReservedAttribute4IHostUSBDevice;
  end;

// *********************************************************************//
// DispIntf:  IHostUSBDeviceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C19073DD-CC7B-431B-98B2-951FDA8EAB89}
// *********************************************************************//
  IHostUSBDeviceDisp = dispinterface
    ['{C19073DD-CC7B-431B-98B2-951FDA8EAB89}']
    property State: USBDeviceState readonly dispid 1610809344;
    property InternalAndReservedAttribute1IHostUSBDevice: LongWord readonly dispid 1610809345;
    property InternalAndReservedAttribute2IHostUSBDevice: LongWord readonly dispid 1610809346;
    property InternalAndReservedAttribute3IHostUSBDevice: LongWord readonly dispid 1610809347;
    property InternalAndReservedAttribute4IHostUSBDevice: LongWord readonly dispid 1610809348;
    property Id: WideString readonly dispid 1610743808;
    property VendorId: Word readonly dispid 1610743809;
    property ProductId: Word readonly dispid 1610743810;
    property Revision: Word readonly dispid 1610743811;
    property Manufacturer: WideString readonly dispid 1610743812;
    property Product: WideString readonly dispid 1610743813;
    property SerialNumber: WideString readonly dispid 1610743814;
    property Address: WideString readonly dispid 1610743815;
    property Port: Word readonly dispid 1610743816;
    property Version: Word readonly dispid 1610743817;
    property PortVersion: Word readonly dispid 1610743818;
    property Speed: USBConnectionSpeed readonly dispid 1610743819;
    property Remote: Integer readonly dispid 1610743820;
    property DeviceInfo: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743821;
    property Backend: WideString readonly dispid 1610743822;
    property InternalAndReservedAttribute1IUSBDevice: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IUSBDevice: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IUSBDevice: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IUSBDevice: LongWord readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IUSBDeviceFilter
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {45587218-4289-EF4E-8E6A-E5B07816B631}
// *********************************************************************//
  IUSBDeviceFilter = interface(IDispatch)
    ['{45587218-4289-EF4E-8E6A-E5B07816B631}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_Active: Integer; safecall;
    procedure Set_Active(aActive: Integer); safecall;
    function Get_VendorId: WideString; safecall;
    procedure Set_VendorId(const aVendorId: WideString); safecall;
    function Get_ProductId: WideString; safecall;
    procedure Set_ProductId(const aProductId: WideString); safecall;
    function Get_Revision: WideString; safecall;
    procedure Set_Revision(const aRevision: WideString); safecall;
    function Get_Manufacturer: WideString; safecall;
    procedure Set_Manufacturer(const aManufacturer: WideString); safecall;
    function Get_Product: WideString; safecall;
    procedure Set_Product(const aProduct: WideString); safecall;
    function Get_SerialNumber: WideString; safecall;
    procedure Set_SerialNumber(const aSerialNumber: WideString); safecall;
    function Get_Port: WideString; safecall;
    procedure Set_Port(const aPort: WideString); safecall;
    function Get_Remote: WideString; safecall;
    procedure Set_Remote(const aRemote: WideString); safecall;
    function Get_MaskedInterfaces: LongWord; safecall;
    procedure Set_MaskedInterfaces(aMaskedInterfaces: LongWord); safecall;
    function Get_InternalAndReservedAttribute1IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IUSBDeviceFilter: LongWord; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Active: Integer read Get_Active write Set_Active;
    property VendorId: WideString read Get_VendorId write Set_VendorId;
    property ProductId: WideString read Get_ProductId write Set_ProductId;
    property Revision: WideString read Get_Revision write Set_Revision;
    property Manufacturer: WideString read Get_Manufacturer write Set_Manufacturer;
    property Product: WideString read Get_Product write Set_Product;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property Port: WideString read Get_Port write Set_Port;
    property Remote: WideString read Get_Remote write Set_Remote;
    property MaskedInterfaces: LongWord read Get_MaskedInterfaces write Set_MaskedInterfaces;
    property InternalAndReservedAttribute1IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute1IUSBDeviceFilter;
    property InternalAndReservedAttribute2IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute2IUSBDeviceFilter;
    property InternalAndReservedAttribute3IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute3IUSBDeviceFilter;
    property InternalAndReservedAttribute4IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute4IUSBDeviceFilter;
    property InternalAndReservedAttribute5IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute5IUSBDeviceFilter;
    property InternalAndReservedAttribute6IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute6IUSBDeviceFilter;
    property InternalAndReservedAttribute7IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute7IUSBDeviceFilter;
    property InternalAndReservedAttribute8IUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute8IUSBDeviceFilter;
  end;

// *********************************************************************//
// DispIntf:  IUSBDeviceFilterDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {45587218-4289-EF4E-8E6A-E5B07816B631}
// *********************************************************************//
  IUSBDeviceFilterDisp = dispinterface
    ['{45587218-4289-EF4E-8E6A-E5B07816B631}']
    property Name: WideString dispid 1610743808;
    property Active: Integer dispid 1610743810;
    property VendorId: WideString dispid 1610743812;
    property ProductId: WideString dispid 1610743814;
    property Revision: WideString dispid 1610743816;
    property Manufacturer: WideString dispid 1610743818;
    property Product: WideString dispid 1610743820;
    property SerialNumber: WideString dispid 1610743822;
    property Port: WideString dispid 1610743824;
    property Remote: WideString dispid 1610743826;
    property MaskedInterfaces: LongWord dispid 1610743828;
    property InternalAndReservedAttribute1IUSBDeviceFilter: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute2IUSBDeviceFilter: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute3IUSBDeviceFilter: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute4IUSBDeviceFilter: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute5IUSBDeviceFilter: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute6IUSBDeviceFilter: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute7IUSBDeviceFilter: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute8IUSBDeviceFilter: LongWord readonly dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IHostUSBDeviceFilter
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {01ADB2D6-AEDF-461C-BE2C-99E91BDAD8A1}
// *********************************************************************//
  IHostUSBDeviceFilter = interface(IUSBDeviceFilter)
    ['{01ADB2D6-AEDF-461C-BE2C-99E91BDAD8A1}']
    function Get_Action: USBDeviceFilterAction; safecall;
    procedure Set_Action(aAction: USBDeviceFilterAction); safecall;
    function Get_InternalAndReservedAttribute1IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IHostUSBDeviceFilter: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IHostUSBDeviceFilter: LongWord; safecall;
    property Action: USBDeviceFilterAction read Get_Action write Set_Action;
    property InternalAndReservedAttribute1IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute1IHostUSBDeviceFilter;
    property InternalAndReservedAttribute2IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute2IHostUSBDeviceFilter;
    property InternalAndReservedAttribute3IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute3IHostUSBDeviceFilter;
    property InternalAndReservedAttribute4IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute4IHostUSBDeviceFilter;
    property InternalAndReservedAttribute5IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute5IHostUSBDeviceFilter;
    property InternalAndReservedAttribute6IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute6IHostUSBDeviceFilter;
    property InternalAndReservedAttribute7IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute7IHostUSBDeviceFilter;
    property InternalAndReservedAttribute8IHostUSBDeviceFilter: LongWord read Get_InternalAndReservedAttribute8IHostUSBDeviceFilter;
  end;

// *********************************************************************//
// DispIntf:  IHostUSBDeviceFilterDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {01ADB2D6-AEDF-461C-BE2C-99E91BDAD8A1}
// *********************************************************************//
  IHostUSBDeviceFilterDisp = dispinterface
    ['{01ADB2D6-AEDF-461C-BE2C-99E91BDAD8A1}']
    property Action: USBDeviceFilterAction dispid 1610809344;
    property InternalAndReservedAttribute1IHostUSBDeviceFilter: LongWord readonly dispid 1610809346;
    property InternalAndReservedAttribute2IHostUSBDeviceFilter: LongWord readonly dispid 1610809347;
    property InternalAndReservedAttribute3IHostUSBDeviceFilter: LongWord readonly dispid 1610809348;
    property InternalAndReservedAttribute4IHostUSBDeviceFilter: LongWord readonly dispid 1610809349;
    property InternalAndReservedAttribute5IHostUSBDeviceFilter: LongWord readonly dispid 1610809350;
    property InternalAndReservedAttribute6IHostUSBDeviceFilter: LongWord readonly dispid 1610809351;
    property InternalAndReservedAttribute7IHostUSBDeviceFilter: LongWord readonly dispid 1610809352;
    property InternalAndReservedAttribute8IHostUSBDeviceFilter: LongWord readonly dispid 1610809353;
    property Name: WideString dispid 1610743808;
    property Active: Integer dispid 1610743810;
    property VendorId: WideString dispid 1610743812;
    property ProductId: WideString dispid 1610743814;
    property Revision: WideString dispid 1610743816;
    property Manufacturer: WideString dispid 1610743818;
    property Product: WideString dispid 1610743820;
    property SerialNumber: WideString dispid 1610743822;
    property Port: WideString dispid 1610743824;
    property Remote: WideString dispid 1610743826;
    property MaskedInterfaces: LongWord dispid 1610743828;
    property InternalAndReservedAttribute1IUSBDeviceFilter: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute2IUSBDeviceFilter: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute3IUSBDeviceFilter: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute4IUSBDeviceFilter: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute5IUSBDeviceFilter: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute6IUSBDeviceFilter: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute7IUSBDeviceFilter: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute8IUSBDeviceFilter: LongWord readonly dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IHostNetworkInterface
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {455F8C45-44A0-A470-BA20-27890B96DBA9}
// *********************************************************************//
  IHostNetworkInterface = interface(IDispatch)
    ['{455F8C45-44A0-A470-BA20-27890B96DBA9}']
    function Get_Name: WideString; safecall;
    function Get_ShortName: WideString; safecall;
    function Get_Id: WideString; safecall;
    function Get_NetworkName: WideString; safecall;
    function Get_DHCPEnabled: Integer; safecall;
    function Get_IPAddress: WideString; safecall;
    function Get_NetworkMask: WideString; safecall;
    function Get_IPV6Supported: Integer; safecall;
    function Get_IPV6Address: WideString; safecall;
    function Get_IPV6NetworkMaskPrefixLength: LongWord; safecall;
    function Get_HardwareAddress: WideString; safecall;
    function Get_MediumType: HostNetworkInterfaceMediumType; safecall;
    function Get_Status: HostNetworkInterfaceStatus; safecall;
    function Get_InterfaceType: HostNetworkInterfaceType; safecall;
    function Get_Wireless: Integer; safecall;
    function Get_InternalAndReservedAttribute1IHostNetworkInterface: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IHostNetworkInterface: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IHostNetworkInterface: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IHostNetworkInterface: LongWord; safecall;
    procedure EnableStaticIPConfig(const aIPAddress: WideString; const aNetworkMask: WideString); safecall;
    procedure EnableStaticIPConfigV6(const aIPV6Address: WideString; 
                                     aIPV6NetworkMaskPrefixLength: LongWord); safecall;
    procedure EnableDynamicIPConfig; safecall;
    procedure DHCPRediscover; safecall;
    procedure InternalAndReservedMethod1IHostNetworkInterface; safecall;
    procedure InternalAndReservedMethod2IHostNetworkInterface; safecall;
    property Name: WideString read Get_Name;
    property ShortName: WideString read Get_ShortName;
    property Id: WideString read Get_Id;
    property NetworkName: WideString read Get_NetworkName;
    property DHCPEnabled: Integer read Get_DHCPEnabled;
    property IPAddress: WideString read Get_IPAddress;
    property NetworkMask: WideString read Get_NetworkMask;
    property IPV6Supported: Integer read Get_IPV6Supported;
    property IPV6Address: WideString read Get_IPV6Address;
    property IPV6NetworkMaskPrefixLength: LongWord read Get_IPV6NetworkMaskPrefixLength;
    property HardwareAddress: WideString read Get_HardwareAddress;
    property MediumType: HostNetworkInterfaceMediumType read Get_MediumType;
    property Status: HostNetworkInterfaceStatus read Get_Status;
    property InterfaceType: HostNetworkInterfaceType read Get_InterfaceType;
    property Wireless: Integer read Get_Wireless;
    property InternalAndReservedAttribute1IHostNetworkInterface: LongWord read Get_InternalAndReservedAttribute1IHostNetworkInterface;
    property InternalAndReservedAttribute2IHostNetworkInterface: LongWord read Get_InternalAndReservedAttribute2IHostNetworkInterface;
    property InternalAndReservedAttribute3IHostNetworkInterface: LongWord read Get_InternalAndReservedAttribute3IHostNetworkInterface;
    property InternalAndReservedAttribute4IHostNetworkInterface: LongWord read Get_InternalAndReservedAttribute4IHostNetworkInterface;
  end;

// *********************************************************************//
// DispIntf:  IHostNetworkInterfaceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {455F8C45-44A0-A470-BA20-27890B96DBA9}
// *********************************************************************//
  IHostNetworkInterfaceDisp = dispinterface
    ['{455F8C45-44A0-A470-BA20-27890B96DBA9}']
    property Name: WideString readonly dispid 1610743808;
    property ShortName: WideString readonly dispid 1610743809;
    property Id: WideString readonly dispid 1610743810;
    property NetworkName: WideString readonly dispid 1610743811;
    property DHCPEnabled: Integer readonly dispid 1610743812;
    property IPAddress: WideString readonly dispid 1610743813;
    property NetworkMask: WideString readonly dispid 1610743814;
    property IPV6Supported: Integer readonly dispid 1610743815;
    property IPV6Address: WideString readonly dispid 1610743816;
    property IPV6NetworkMaskPrefixLength: LongWord readonly dispid 1610743817;
    property HardwareAddress: WideString readonly dispid 1610743818;
    property MediumType: HostNetworkInterfaceMediumType readonly dispid 1610743819;
    property Status: HostNetworkInterfaceStatus readonly dispid 1610743820;
    property InterfaceType: HostNetworkInterfaceType readonly dispid 1610743821;
    property Wireless: Integer readonly dispid 1610743822;
    property InternalAndReservedAttribute1IHostNetworkInterface: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IHostNetworkInterface: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IHostNetworkInterface: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IHostNetworkInterface: LongWord readonly dispid 1610743826;
    procedure EnableStaticIPConfig(const aIPAddress: WideString; const aNetworkMask: WideString); dispid 1610743827;
    procedure EnableStaticIPConfigV6(const aIPV6Address: WideString; 
                                     aIPV6NetworkMaskPrefixLength: LongWord); dispid 1610743828;
    procedure EnableDynamicIPConfig; dispid 1610743829;
    procedure DHCPRediscover; dispid 1610743830;
    procedure InternalAndReservedMethod1IHostNetworkInterface; dispid 1610743831;
    procedure InternalAndReservedMethod2IHostNetworkInterface; dispid 1610743832;
  end;

// *********************************************************************//
// Interface: IHostVideoInputDevice
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E8C25D4D-AC97-4C16-B3E2-81BD8A57CC27}
// *********************************************************************//
  IHostVideoInputDevice = interface(IDispatch)
    ['{E8C25D4D-AC97-4C16-B3E2-81BD8A57CC27}']
    function Get_Name: WideString; safecall;
    function Get_Path: WideString; safecall;
    function Get_Alias: WideString; safecall;
    function Get_InternalAndReservedAttribute1IHostVideoInputDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IHostVideoInputDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IHostVideoInputDevice: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IHostVideoInputDevice: LongWord; safecall;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property Alias: WideString read Get_Alias;
    property InternalAndReservedAttribute1IHostVideoInputDevice: LongWord read Get_InternalAndReservedAttribute1IHostVideoInputDevice;
    property InternalAndReservedAttribute2IHostVideoInputDevice: LongWord read Get_InternalAndReservedAttribute2IHostVideoInputDevice;
    property InternalAndReservedAttribute3IHostVideoInputDevice: LongWord read Get_InternalAndReservedAttribute3IHostVideoInputDevice;
    property InternalAndReservedAttribute4IHostVideoInputDevice: LongWord read Get_InternalAndReservedAttribute4IHostVideoInputDevice;
  end;

// *********************************************************************//
// DispIntf:  IHostVideoInputDeviceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E8C25D4D-AC97-4C16-B3E2-81BD8A57CC27}
// *********************************************************************//
  IHostVideoInputDeviceDisp = dispinterface
    ['{E8C25D4D-AC97-4C16-B3E2-81BD8A57CC27}']
    property Name: WideString readonly dispid 1610743808;
    property Path: WideString readonly dispid 1610743809;
    property Alias: WideString readonly dispid 1610743810;
    property InternalAndReservedAttribute1IHostVideoInputDevice: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute2IHostVideoInputDevice: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute3IHostVideoInputDevice: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute4IHostVideoInputDevice: LongWord readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: ISystemProperties
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D55176E5-6730-4E9E-FC1F-A59B1F44F78F}
// *********************************************************************//
  ISystemProperties = interface(IDispatch)
    ['{D55176E5-6730-4E9E-FC1F-A59B1F44F78F}']
    function Get_MinGuestRAM: LongWord; safecall;
    function Get_MaxGuestRAM: LongWord; safecall;
    function Get_MinGuestVRAM: LongWord; safecall;
    function Get_MaxGuestVRAM: LongWord; safecall;
    function Get_MinGuestCPUCount: LongWord; safecall;
    function Get_MaxGuestCPUCount: LongWord; safecall;
    function Get_MaxGuestMonitors: LongWord; safecall;
    function Get_InfoVDSize: Int64; safecall;
    function Get_SerialPortCount: LongWord; safecall;
    function Get_ParallelPortCount: LongWord; safecall;
    function Get_MaxBootPosition: LongWord; safecall;
    function Get_RawModeSupported: Integer; safecall;
    function Get_ExclusiveHwVirt: Integer; safecall;
    procedure Set_ExclusiveHwVirt(aExclusiveHwVirt: Integer); safecall;
    function Get_DefaultMachineFolder: WideString; safecall;
    procedure Set_DefaultMachineFolder(const aDefaultMachineFolder: WideString); safecall;
    function Get_LoggingLevel: WideString; safecall;
    procedure Set_LoggingLevel(const aLoggingLevel: WideString); safecall;
    function Get_MediumFormats: PSafeArray; safecall;
    function Get_DefaultHardDiskFormat: WideString; safecall;
    procedure Set_DefaultHardDiskFormat(const aDefaultHardDiskFormat: WideString); safecall;
    function Get_FreeDiskSpaceWarning: Int64; safecall;
    procedure Set_FreeDiskSpaceWarning(aFreeDiskSpaceWarning: Int64); safecall;
    function Get_FreeDiskSpacePercentWarning: LongWord; safecall;
    procedure Set_FreeDiskSpacePercentWarning(aFreeDiskSpacePercentWarning: LongWord); safecall;
    function Get_FreeDiskSpaceError: Int64; safecall;
    procedure Set_FreeDiskSpaceError(aFreeDiskSpaceError: Int64); safecall;
    function Get_FreeDiskSpacePercentError: LongWord; safecall;
    procedure Set_FreeDiskSpacePercentError(aFreeDiskSpacePercentError: LongWord); safecall;
    function Get_VRDEAuthLibrary: WideString; safecall;
    procedure Set_VRDEAuthLibrary(const aVRDEAuthLibrary: WideString); safecall;
    function Get_WebServiceAuthLibrary: WideString; safecall;
    procedure Set_WebServiceAuthLibrary(const aWebServiceAuthLibrary: WideString); safecall;
    function Get_DefaultVRDEExtPack: WideString; safecall;
    procedure Set_DefaultVRDEExtPack(const aDefaultVRDEExtPack: WideString); safecall;
    function Get_LogHistoryCount: LongWord; safecall;
    procedure Set_LogHistoryCount(aLogHistoryCount: LongWord); safecall;
    function Get_DefaultAudioDriver: AudioDriverType; safecall;
    function Get_AutostartDatabasePath: WideString; safecall;
    procedure Set_AutostartDatabasePath(const aAutostartDatabasePath: WideString); safecall;
    function Get_DefaultAdditionsISO: WideString; safecall;
    procedure Set_DefaultAdditionsISO(const aDefaultAdditionsISO: WideString); safecall;
    function Get_DefaultFrontend: WideString; safecall;
    procedure Set_DefaultFrontend(const aDefaultFrontend: WideString); safecall;
    function Get_ScreenShotFormats: PSafeArray; safecall;
    function Get_ProxyMode: ProxyMode; safecall;
    procedure Set_ProxyMode(aProxyMode: ProxyMode); safecall;
    function Get_ProxyURL: WideString; safecall;
    procedure Set_ProxyURL(const aProxyURL: WideString); safecall;
    function Get_InternalAndReservedAttribute1ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute9ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute10ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute11ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute12ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute13ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute14ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute15ISystemProperties: LongWord; safecall;
    function Get_InternalAndReservedAttribute16ISystemProperties: LongWord; safecall;
    function GetMaxNetworkAdapters(aChipset: ChipsetType): LongWord; safecall;
    function GetMaxNetworkAdaptersOfType(aChipset: ChipsetType; aType: NetworkAttachmentType): LongWord; safecall;
    function GetMaxDevicesPerPortForStorageBus(aBus: StorageBus): LongWord; safecall;
    function GetMinPortCountForStorageBus(aBus: StorageBus): LongWord; safecall;
    function GetMaxPortCountForStorageBus(aBus: StorageBus): LongWord; safecall;
    function GetMaxInstancesOfStorageBus(aChipset: ChipsetType; aBus: StorageBus): LongWord; safecall;
    function GetDeviceTypesForStorageBus(aBus: StorageBus): PSafeArray; safecall;
    function GetDefaultIoCacheSettingForStorageController(aControllerType: StorageControllerType): Integer; safecall;
    function GetStorageControllerHotplugCapable(aControllerType: StorageControllerType): Integer; safecall;
    function GetMaxInstancesOfUSBControllerType(aChipset: ChipsetType; aType: USBControllerType): LongWord; safecall;
    procedure InternalAndReservedMethod1ISystemProperties; safecall;
    procedure InternalAndReservedMethod2ISystemProperties; safecall;
    procedure InternalAndReservedMethod3ISystemProperties; safecall;
    procedure InternalAndReservedMethod4ISystemProperties; safecall;
    property MinGuestRAM: LongWord read Get_MinGuestRAM;
    property MaxGuestRAM: LongWord read Get_MaxGuestRAM;
    property MinGuestVRAM: LongWord read Get_MinGuestVRAM;
    property MaxGuestVRAM: LongWord read Get_MaxGuestVRAM;
    property MinGuestCPUCount: LongWord read Get_MinGuestCPUCount;
    property MaxGuestCPUCount: LongWord read Get_MaxGuestCPUCount;
    property MaxGuestMonitors: LongWord read Get_MaxGuestMonitors;
    property InfoVDSize: Int64 read Get_InfoVDSize;
    property SerialPortCount: LongWord read Get_SerialPortCount;
    property ParallelPortCount: LongWord read Get_ParallelPortCount;
    property MaxBootPosition: LongWord read Get_MaxBootPosition;
    property RawModeSupported: Integer read Get_RawModeSupported;
    property ExclusiveHwVirt: Integer read Get_ExclusiveHwVirt write Set_ExclusiveHwVirt;
    property DefaultMachineFolder: WideString read Get_DefaultMachineFolder write Set_DefaultMachineFolder;
    property LoggingLevel: WideString read Get_LoggingLevel write Set_LoggingLevel;
    property MediumFormats: PSafeArray read Get_MediumFormats;
    property DefaultHardDiskFormat: WideString read Get_DefaultHardDiskFormat write Set_DefaultHardDiskFormat;
    property FreeDiskSpaceWarning: Int64 read Get_FreeDiskSpaceWarning write Set_FreeDiskSpaceWarning;
    property FreeDiskSpacePercentWarning: LongWord read Get_FreeDiskSpacePercentWarning write Set_FreeDiskSpacePercentWarning;
    property FreeDiskSpaceError: Int64 read Get_FreeDiskSpaceError write Set_FreeDiskSpaceError;
    property FreeDiskSpacePercentError: LongWord read Get_FreeDiskSpacePercentError write Set_FreeDiskSpacePercentError;
    property VRDEAuthLibrary: WideString read Get_VRDEAuthLibrary write Set_VRDEAuthLibrary;
    property WebServiceAuthLibrary: WideString read Get_WebServiceAuthLibrary write Set_WebServiceAuthLibrary;
    property DefaultVRDEExtPack: WideString read Get_DefaultVRDEExtPack write Set_DefaultVRDEExtPack;
    property LogHistoryCount: LongWord read Get_LogHistoryCount write Set_LogHistoryCount;
    property DefaultAudioDriver: AudioDriverType read Get_DefaultAudioDriver;
    property AutostartDatabasePath: WideString read Get_AutostartDatabasePath write Set_AutostartDatabasePath;
    property DefaultAdditionsISO: WideString read Get_DefaultAdditionsISO write Set_DefaultAdditionsISO;
    property DefaultFrontend: WideString read Get_DefaultFrontend write Set_DefaultFrontend;
    property ScreenShotFormats: PSafeArray read Get_ScreenShotFormats;
    property ProxyMode: ProxyMode read Get_ProxyMode write Set_ProxyMode;
    property ProxyURL: WideString read Get_ProxyURL write Set_ProxyURL;
    property InternalAndReservedAttribute1ISystemProperties: LongWord read Get_InternalAndReservedAttribute1ISystemProperties;
    property InternalAndReservedAttribute2ISystemProperties: LongWord read Get_InternalAndReservedAttribute2ISystemProperties;
    property InternalAndReservedAttribute3ISystemProperties: LongWord read Get_InternalAndReservedAttribute3ISystemProperties;
    property InternalAndReservedAttribute4ISystemProperties: LongWord read Get_InternalAndReservedAttribute4ISystemProperties;
    property InternalAndReservedAttribute5ISystemProperties: LongWord read Get_InternalAndReservedAttribute5ISystemProperties;
    property InternalAndReservedAttribute6ISystemProperties: LongWord read Get_InternalAndReservedAttribute6ISystemProperties;
    property InternalAndReservedAttribute7ISystemProperties: LongWord read Get_InternalAndReservedAttribute7ISystemProperties;
    property InternalAndReservedAttribute8ISystemProperties: LongWord read Get_InternalAndReservedAttribute8ISystemProperties;
    property InternalAndReservedAttribute9ISystemProperties: LongWord read Get_InternalAndReservedAttribute9ISystemProperties;
    property InternalAndReservedAttribute10ISystemProperties: LongWord read Get_InternalAndReservedAttribute10ISystemProperties;
    property InternalAndReservedAttribute11ISystemProperties: LongWord read Get_InternalAndReservedAttribute11ISystemProperties;
    property InternalAndReservedAttribute12ISystemProperties: LongWord read Get_InternalAndReservedAttribute12ISystemProperties;
    property InternalAndReservedAttribute13ISystemProperties: LongWord read Get_InternalAndReservedAttribute13ISystemProperties;
    property InternalAndReservedAttribute14ISystemProperties: LongWord read Get_InternalAndReservedAttribute14ISystemProperties;
    property InternalAndReservedAttribute15ISystemProperties: LongWord read Get_InternalAndReservedAttribute15ISystemProperties;
    property InternalAndReservedAttribute16ISystemProperties: LongWord read Get_InternalAndReservedAttribute16ISystemProperties;
  end;

// *********************************************************************//
// DispIntf:  ISystemPropertiesDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D55176E5-6730-4E9E-FC1F-A59B1F44F78F}
// *********************************************************************//
  ISystemPropertiesDisp = dispinterface
    ['{D55176E5-6730-4E9E-FC1F-A59B1F44F78F}']
    property MinGuestRAM: LongWord readonly dispid 1610743808;
    property MaxGuestRAM: LongWord readonly dispid 1610743809;
    property MinGuestVRAM: LongWord readonly dispid 1610743810;
    property MaxGuestVRAM: LongWord readonly dispid 1610743811;
    property MinGuestCPUCount: LongWord readonly dispid 1610743812;
    property MaxGuestCPUCount: LongWord readonly dispid 1610743813;
    property MaxGuestMonitors: LongWord readonly dispid 1610743814;
    property InfoVDSize: Int64 readonly dispid 1610743815;
    property SerialPortCount: LongWord readonly dispid 1610743816;
    property ParallelPortCount: LongWord readonly dispid 1610743817;
    property MaxBootPosition: LongWord readonly dispid 1610743818;
    property RawModeSupported: Integer readonly dispid 1610743819;
    property ExclusiveHwVirt: Integer dispid 1610743820;
    property DefaultMachineFolder: WideString dispid 1610743822;
    property LoggingLevel: WideString dispid 1610743824;
    property MediumFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743826;
    property DefaultHardDiskFormat: WideString dispid 1610743827;
    property FreeDiskSpaceWarning: Int64 dispid 1610743829;
    property FreeDiskSpacePercentWarning: LongWord dispid 1610743831;
    property FreeDiskSpaceError: Int64 dispid 1610743833;
    property FreeDiskSpacePercentError: LongWord dispid 1610743835;
    property VRDEAuthLibrary: WideString dispid 1610743837;
    property WebServiceAuthLibrary: WideString dispid 1610743839;
    property DefaultVRDEExtPack: WideString dispid 1610743841;
    property LogHistoryCount: LongWord dispid 1610743843;
    property DefaultAudioDriver: AudioDriverType readonly dispid 1610743845;
    property AutostartDatabasePath: WideString dispid 1610743846;
    property DefaultAdditionsISO: WideString dispid 1610743848;
    property DefaultFrontend: WideString dispid 1610743850;
    property ScreenShotFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743852;
    property ProxyMode: ProxyMode dispid 1610743853;
    property ProxyURL: WideString dispid 1610743855;
    property InternalAndReservedAttribute1ISystemProperties: LongWord readonly dispid 1610743857;
    property InternalAndReservedAttribute2ISystemProperties: LongWord readonly dispid 1610743858;
    property InternalAndReservedAttribute3ISystemProperties: LongWord readonly dispid 1610743859;
    property InternalAndReservedAttribute4ISystemProperties: LongWord readonly dispid 1610743860;
    property InternalAndReservedAttribute5ISystemProperties: LongWord readonly dispid 1610743861;
    property InternalAndReservedAttribute6ISystemProperties: LongWord readonly dispid 1610743862;
    property InternalAndReservedAttribute7ISystemProperties: LongWord readonly dispid 1610743863;
    property InternalAndReservedAttribute8ISystemProperties: LongWord readonly dispid 1610743864;
    property InternalAndReservedAttribute9ISystemProperties: LongWord readonly dispid 1610743865;
    property InternalAndReservedAttribute10ISystemProperties: LongWord readonly dispid 1610743866;
    property InternalAndReservedAttribute11ISystemProperties: LongWord readonly dispid 1610743867;
    property InternalAndReservedAttribute12ISystemProperties: LongWord readonly dispid 1610743868;
    property InternalAndReservedAttribute13ISystemProperties: LongWord readonly dispid 1610743869;
    property InternalAndReservedAttribute14ISystemProperties: LongWord readonly dispid 1610743870;
    property InternalAndReservedAttribute15ISystemProperties: LongWord readonly dispid 1610743871;
    property InternalAndReservedAttribute16ISystemProperties: LongWord readonly dispid 1610743872;
    function GetMaxNetworkAdapters(aChipset: ChipsetType): LongWord; dispid 1610743873;
    function GetMaxNetworkAdaptersOfType(aChipset: ChipsetType; aType: NetworkAttachmentType): LongWord; dispid 1610743874;
    function GetMaxDevicesPerPortForStorageBus(aBus: StorageBus): LongWord; dispid 1610743875;
    function GetMinPortCountForStorageBus(aBus: StorageBus): LongWord; dispid 1610743876;
    function GetMaxPortCountForStorageBus(aBus: StorageBus): LongWord; dispid 1610743877;
    function GetMaxInstancesOfStorageBus(aChipset: ChipsetType; aBus: StorageBus): LongWord; dispid 1610743878;
    function GetDeviceTypesForStorageBus(aBus: StorageBus): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743879;
    function GetDefaultIoCacheSettingForStorageController(aControllerType: StorageControllerType): Integer; dispid 1610743880;
    function GetStorageControllerHotplugCapable(aControllerType: StorageControllerType): Integer; dispid 1610743881;
    function GetMaxInstancesOfUSBControllerType(aChipset: ChipsetType; aType: USBControllerType): LongWord; dispid 1610743882;
    procedure InternalAndReservedMethod1ISystemProperties; dispid 1610743883;
    procedure InternalAndReservedMethod2ISystemProperties; dispid 1610743884;
    procedure InternalAndReservedMethod3ISystemProperties; dispid 1610743885;
    procedure InternalAndReservedMethod4ISystemProperties; dispid 1610743886;
  end;

// *********************************************************************//
// Interface: IMachine
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5047460A-265D-4538-B23E-DDBA5FB84976}
// *********************************************************************//
  IMachine = interface(IDispatch)
    ['{5047460A-265D-4538-B23E-DDBA5FB84976}']
    function Get_Parent: IVirtualBox; safecall;
    function Get_Icon: PSafeArray; safecall;
    procedure Set_Icon(aIcon: PSafeArray); safecall;
    function Get_Accessible: Integer; safecall;
    function Get_AccessError: IVirtualBoxErrorInfo; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const aDescription: WideString); safecall;
    function Get_Id: WideString; safecall;
    function Get_Groups: PSafeArray; safecall;
    procedure Set_Groups(aGroups: PSafeArray); safecall;
    function Get_OSTypeId: WideString; safecall;
    procedure Set_OSTypeId(const aOSTypeId: WideString); safecall;
    function Get_HardwareVersion: WideString; safecall;
    procedure Set_HardwareVersion(const aHardwareVersion: WideString); safecall;
    function Get_HardwareUUID: WideString; safecall;
    procedure Set_HardwareUUID(const aHardwareUUID: WideString); safecall;
    function Get_CPUCount: LongWord; safecall;
    procedure Set_CPUCount(aCPUCount: LongWord); safecall;
    function Get_CPUHotPlugEnabled: Integer; safecall;
    procedure Set_CPUHotPlugEnabled(aCPUHotPlugEnabled: Integer); safecall;
    function Get_CPUExecutionCap: LongWord; safecall;
    procedure Set_CPUExecutionCap(aCPUExecutionCap: LongWord); safecall;
    function Get_CPUIDPortabilityLevel: LongWord; safecall;
    procedure Set_CPUIDPortabilityLevel(aCPUIDPortabilityLevel: LongWord); safecall;
    function Get_MemorySize: LongWord; safecall;
    procedure Set_MemorySize(aMemorySize: LongWord); safecall;
    function Get_MemoryBalloonSize: LongWord; safecall;
    procedure Set_MemoryBalloonSize(aMemoryBalloonSize: LongWord); safecall;
    function Get_PageFusionEnabled: Integer; safecall;
    procedure Set_PageFusionEnabled(aPageFusionEnabled: Integer); safecall;
    function Get_GraphicsControllerType: GraphicsControllerType; safecall;
    procedure Set_GraphicsControllerType(aGraphicsControllerType: GraphicsControllerType); safecall;
    function Get_VRAMSize: LongWord; safecall;
    procedure Set_VRAMSize(aVRAMSize: LongWord); safecall;
    function Get_Accelerate3DEnabled: Integer; safecall;
    procedure Set_Accelerate3DEnabled(aAccelerate3DEnabled: Integer); safecall;
    function Get_Accelerate2DVideoEnabled: Integer; safecall;
    procedure Set_Accelerate2DVideoEnabled(aAccelerate2DVideoEnabled: Integer); safecall;
    function Get_MonitorCount: LongWord; safecall;
    procedure Set_MonitorCount(aMonitorCount: LongWord); safecall;
    function Get_BIOSSettings: IBIOSSettings; safecall;
    function Get_RecordingSettings: IRecordingSettings; safecall;
    function Get_FirmwareType: FirmwareType; safecall;
    procedure Set_FirmwareType(aFirmwareType: FirmwareType); safecall;
    function Get_PointingHIDType: PointingHIDType; safecall;
    procedure Set_PointingHIDType(aPointingHIDType: PointingHIDType); safecall;
    function Get_KeyboardHIDType: KeyboardHIDType; safecall;
    procedure Set_KeyboardHIDType(aKeyboardHIDType: KeyboardHIDType); safecall;
    function Get_HPETEnabled: Integer; safecall;
    procedure Set_HPETEnabled(aHPETEnabled: Integer); safecall;
    function Get_ChipsetType: ChipsetType; safecall;
    procedure Set_ChipsetType(aChipsetType: ChipsetType); safecall;
    function Get_SnapshotFolder: WideString; safecall;
    procedure Set_SnapshotFolder(const aSnapshotFolder: WideString); safecall;
    function Get_VRDEServer: IVRDEServer; safecall;
    function Get_EmulatedUSBCardReaderEnabled: Integer; safecall;
    procedure Set_EmulatedUSBCardReaderEnabled(aEmulatedUSBCardReaderEnabled: Integer); safecall;
    function Get_MediumAttachments: PSafeArray; safecall;
    function Get_USBControllers: PSafeArray; safecall;
    function Get_USBDeviceFilters: IUSBDeviceFilters; safecall;
    function Get_AudioAdapter: IAudioAdapter; safecall;
    function Get_StorageControllers: PSafeArray; safecall;
    function Get_SettingsFilePath: WideString; safecall;
    function Get_SettingsAuxFilePath: WideString; safecall;
    function Get_SettingsModified: Integer; safecall;
    function Get_SessionState: SessionState; safecall;
    function Get_SessionName: WideString; safecall;
    function Get_SessionPID: LongWord; safecall;
    function Get_State: MachineState; safecall;
    function Get_LastStateChange: Int64; safecall;
    function Get_StateFilePath: WideString; safecall;
    function Get_LogFolder: WideString; safecall;
    function Get_CurrentSnapshot: ISnapshot; safecall;
    function Get_SnapshotCount: LongWord; safecall;
    function Get_CurrentStateModified: Integer; safecall;
    function Get_SharedFolders: PSafeArray; safecall;
    function Get_ClipboardMode: ClipboardMode; safecall;
    procedure Set_ClipboardMode(aClipboardMode: ClipboardMode); safecall;
    function Get_DnDMode: DnDMode; safecall;
    procedure Set_DnDMode(aDnDMode: DnDMode); safecall;
    function Get_TeleporterEnabled: Integer; safecall;
    procedure Set_TeleporterEnabled(aTeleporterEnabled: Integer); safecall;
    function Get_TeleporterPort: LongWord; safecall;
    procedure Set_TeleporterPort(aTeleporterPort: LongWord); safecall;
    function Get_TeleporterAddress: WideString; safecall;
    procedure Set_TeleporterAddress(const aTeleporterAddress: WideString); safecall;
    function Get_TeleporterPassword: WideString; safecall;
    procedure Set_TeleporterPassword(const aTeleporterPassword: WideString); safecall;
    function Get_ParavirtProvider: ParavirtProvider; safecall;
    procedure Set_ParavirtProvider(aParavirtProvider: ParavirtProvider); safecall;
    function Get_FaultToleranceState: FaultToleranceState; safecall;
    procedure Set_FaultToleranceState(aFaultToleranceState: FaultToleranceState); safecall;
    function Get_FaultTolerancePort: LongWord; safecall;
    procedure Set_FaultTolerancePort(aFaultTolerancePort: LongWord); safecall;
    function Get_FaultToleranceAddress: WideString; safecall;
    procedure Set_FaultToleranceAddress(const aFaultToleranceAddress: WideString); safecall;
    function Get_FaultTolerancePassword: WideString; safecall;
    procedure Set_FaultTolerancePassword(const aFaultTolerancePassword: WideString); safecall;
    function Get_FaultToleranceSyncInterval: LongWord; safecall;
    procedure Set_FaultToleranceSyncInterval(aFaultToleranceSyncInterval: LongWord); safecall;
    function Get_RTCUseUTC: Integer; safecall;
    procedure Set_RTCUseUTC(aRTCUseUTC: Integer); safecall;
    function Get_IOCacheEnabled: Integer; safecall;
    procedure Set_IOCacheEnabled(aIOCacheEnabled: Integer); safecall;
    function Get_IOCacheSize: LongWord; safecall;
    procedure Set_IOCacheSize(aIOCacheSize: LongWord); safecall;
    function Get_PCIDeviceAssignments: PSafeArray; safecall;
    function Get_BandwidthControl: IBandwidthControl; safecall;
    function Get_TracingEnabled: Integer; safecall;
    procedure Set_TracingEnabled(aTracingEnabled: Integer); safecall;
    function Get_TracingConfig: WideString; safecall;
    procedure Set_TracingConfig(const aTracingConfig: WideString); safecall;
    function Get_AllowTracingToAccessVM: Integer; safecall;
    procedure Set_AllowTracingToAccessVM(aAllowTracingToAccessVM: Integer); safecall;
    function Get_AutostartEnabled: Integer; safecall;
    procedure Set_AutostartEnabled(aAutostartEnabled: Integer); safecall;
    function Get_AutostartDelay: LongWord; safecall;
    procedure Set_AutostartDelay(aAutostartDelay: LongWord); safecall;
    function Get_AutostopType: AutostopType; safecall;
    procedure Set_AutostopType(aAutostopType: AutostopType); safecall;
    function Get_DefaultFrontend: WideString; safecall;
    procedure Set_DefaultFrontend(const aDefaultFrontend: WideString); safecall;
    function Get_USBProxyAvailable: Integer; safecall;
    function Get_VMProcessPriority: WideString; safecall;
    procedure Set_VMProcessPriority(const aVMProcessPriority: WideString); safecall;
    function Get_ParavirtDebug: WideString; safecall;
    procedure Set_ParavirtDebug(const aParavirtDebug: WideString); safecall;
    function Get_CPUProfile: WideString; safecall;
    procedure Set_CPUProfile(const aCPUProfile: WideString); safecall;
    function Get_InternalAndReservedAttribute1IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IMachine: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IMachine: LongWord; safecall;
    procedure LockMachine(const aSession: ISession; aLockType: LockType); safecall;
    function LaunchVMProcess(const aSession: ISession; const aName: WideString; 
                             const aEnvironment: WideString): IProgress; safecall;
    procedure SetBootOrder(aPosition: LongWord; aDevice: DeviceType); safecall;
    function GetBootOrder(aPosition: LongWord): DeviceType; safecall;
    procedure AttachDevice(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                           aType: DeviceType; const aMedium: IMedium); safecall;
    procedure AttachDeviceWithoutMedium(const aName: WideString; aControllerPort: Integer; 
                                        aDevice: Integer; aType: DeviceType); safecall;
    procedure DetachDevice(const aName: WideString; aControllerPort: Integer; aDevice: Integer); safecall;
    procedure PassthroughDevice(const aName: WideString; aControllerPort: Integer; 
                                aDevice: Integer; aPassthrough: Integer); safecall;
    procedure TemporaryEjectDevice(const aName: WideString; aControllerPort: Integer; 
                                   aDevice: Integer; aTemporaryEject: Integer); safecall;
    procedure NonRotationalDevice(const aName: WideString; aControllerPort: Integer; 
                                  aDevice: Integer; aNonRotational: Integer); safecall;
    procedure SetAutoDiscardForDevice(const aName: WideString; aControllerPort: Integer; 
                                      aDevice: Integer; aDiscard: Integer); safecall;
    procedure SetHotPluggableForDevice(const aName: WideString; aControllerPort: Integer; 
                                       aDevice: Integer; aHotPluggable: Integer); safecall;
    procedure SetBandwidthGroupForDevice(const aName: WideString; aControllerPort: Integer; 
                                         aDevice: Integer; const aBandwidthGroup: IBandwidthGroup); safecall;
    procedure SetNoBandwidthGroupForDevice(const aName: WideString; aControllerPort: Integer; 
                                           aDevice: Integer); safecall;
    procedure UnmountMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                            aForce: Integer); safecall;
    procedure MountMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                          const aMedium: IMedium; aForce: Integer); safecall;
    function GetMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer): IMedium; safecall;
    function GetMediumAttachmentsOfController(const aName: WideString): PSafeArray; safecall;
    function GetMediumAttachment(const aName: WideString; aControllerPort: Integer; aDevice: Integer): IMediumAttachment; safecall;
    procedure AttachHostPCIDevice(aHostAddress: Integer; aDesiredGuestAddress: Integer; 
                                  aTryToUnbind: Integer); safecall;
    procedure DetachHostPCIDevice(aHostAddress: Integer); safecall;
    function GetNetworkAdapter(aSlot: LongWord): INetworkAdapter; safecall;
    function AddStorageController(const aName: WideString; aConnectionType: StorageBus): IStorageController; safecall;
    function GetStorageControllerByName(const aName: WideString): IStorageController; safecall;
    function GetStorageControllerByInstance(aConnectionType: StorageBus; aInstance: LongWord): IStorageController; safecall;
    procedure RemoveStorageController(const aName: WideString); safecall;
    procedure SetStorageControllerBootable(const aName: WideString; aBootable: Integer); safecall;
    function AddUSBController(const aName: WideString; aType: USBControllerType): IUSBController; safecall;
    procedure RemoveUSBController(const aName: WideString); safecall;
    function GetUSBControllerByName(const aName: WideString): IUSBController; safecall;
    function GetUSBControllerCountByType(aType: USBControllerType): LongWord; safecall;
    function GetSerialPort(aSlot: LongWord): ISerialPort; safecall;
    function GetParallelPort(aSlot: LongWord): IParallelPort; safecall;
    function GetExtraDataKeys: PSafeArray; safecall;
    function GetExtraData(const aKey: WideString): WideString; safecall;
    procedure SetExtraData(const aKey: WideString; const aValue: WideString); safecall;
    function GetCPUProperty(aProperty: CPUPropertyType): Integer; safecall;
    procedure SetCPUProperty(aProperty: CPUPropertyType; aValue: Integer); safecall;
    procedure GetCPUIDLeafByOrdinal(aOrdinal: LongWord; out aIdx: LongWord; out aIdxSub: LongWord; 
                                    out aValEax: LongWord; out aValEbx: LongWord; 
                                    out aValEcx: LongWord; out aValEdx: LongWord); safecall;
    procedure GetCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord; out aValEax: LongWord; 
                           out aValEbx: LongWord; out aValEcx: LongWord; out aValEdx: LongWord); safecall;
    procedure SetCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord; aValEax: LongWord; aValEbx: LongWord; 
                           aValEcx: LongWord; aValEdx: LongWord); safecall;
    procedure RemoveCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord); safecall;
    procedure RemoveAllCPUIDLeaves; safecall;
    function GetHWVirtExProperty(aProperty: HWVirtExPropertyType): Integer; safecall;
    procedure SetHWVirtExProperty(aProperty: HWVirtExPropertyType; aValue: Integer); safecall;
    function SetSettingsFilePath(const aSettingsFilePath: WideString): IProgress; safecall;
    procedure SaveSettings; safecall;
    procedure DiscardSettings; safecall;
    function Unregister(aCleanupMode: CleanupMode): PSafeArray; safecall;
    function DeleteConfig(aMedia: PSafeArray): IProgress; safecall;
    function ExportTo(const aAppliance: IAppliance; const aLocation: WideString): IVirtualSystemDescription; safecall;
    function FindSnapshot(const aNameOrId: WideString): ISnapshot; safecall;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); safecall;
    procedure RemoveSharedFolder(const aName: WideString); safecall;
    function CanShowConsoleWindow: Integer; safecall;
    function ShowConsoleWindow: Int64; safecall;
    procedure GetGuestProperty(const aName: WideString; out aValue: WideString; 
                               out aTimeStamp: Int64; out aFlags: WideString); safecall;
    function GetGuestPropertyValue(const aProperty: WideString): WideString; safecall;
    function GetGuestPropertyTimestamp(const aProperty: WideString): Int64; safecall;
    procedure SetGuestProperty(const aProperty: WideString; const aValue: WideString; 
                               const aFlags: WideString); safecall;
    procedure SetGuestPropertyValue(const aProperty: WideString; const aValue: WideString); safecall;
    procedure DeleteGuestProperty(const aName: WideString); safecall;
    procedure EnumerateGuestProperties(const aPatterns: WideString; out aNames: PSafeArray; 
                                       out aValues: PSafeArray; out aTimestamps: PSafeArray; 
                                       out aFlags: PSafeArray); safecall;
    procedure QuerySavedGuestScreenInfo(aScreenId: LongWord; out aOriginX: LongWord; 
                                        out aOriginY: LongWord; out aWidth: LongWord; 
                                        out aHeight: LongWord; out aEnabled: Integer); safecall;
    function ReadSavedThumbnailToArray(aScreenId: LongWord; aBitmapFormat: BitmapFormat; 
                                       out aWidth: LongWord; out aHeight: LongWord): PSafeArray; safecall;
    function QuerySavedScreenshotInfo(aScreenId: LongWord; out aWidth: LongWord; 
                                      out aHeight: LongWord): PSafeArray; safecall;
    function ReadSavedScreenshotToArray(aScreenId: LongWord; aBitmapFormat: BitmapFormat; 
                                        out aWidth: LongWord; out aHeight: LongWord): PSafeArray; safecall;
    procedure HotPlugCPU(aCpu: LongWord); safecall;
    procedure HotUnplugCPU(aCpu: LongWord); safecall;
    function GetCPUStatus(aCpu: LongWord): Integer; safecall;
    function GetEffectiveParavirtProvider: ParavirtProvider; safecall;
    function QueryLogFilename(aIdx: LongWord): WideString; safecall;
    function ReadLog(aIdx: LongWord; aOffset: Int64; aSize: Int64): PSafeArray; safecall;
    function CloneTo(const aTarget: IMachine; aMode: CloneMode; aOptions: PSafeArray): IProgress; safecall;
    function MoveTo(const aFolder: WideString; const aType: WideString): IProgress; safecall;
    function SaveState: IProgress; safecall;
    procedure AdoptSavedState(const aSavedStateFile: WideString); safecall;
    procedure DiscardSavedState(aFRemoveFile: Integer); safecall;
    function TakeSnapshot(const aName: WideString; const aDescription: WideString; aPause: Integer; 
                          out aId: WideString): IProgress; safecall;
    function DeleteSnapshot(const aId: WideString): IProgress; safecall;
    function DeleteSnapshotAndAllChildren(const aId: WideString): IProgress; safecall;
    function DeleteSnapshotRange(const aStartId: WideString; const aEndId: WideString): IProgress; safecall;
    function RestoreSnapshot(const aSnapshot: ISnapshot): IProgress; safecall;
    procedure ApplyDefaults(const aFlags: WideString); safecall;
    procedure InternalAndReservedMethod1IMachine; safecall;
    procedure InternalAndReservedMethod2IMachine; safecall;
    procedure InternalAndReservedMethod3IMachine; safecall;
    procedure InternalAndReservedMethod4IMachine; safecall;
    procedure InternalAndReservedMethod5IMachine; safecall;
    procedure InternalAndReservedMethod6IMachine; safecall;
    procedure InternalAndReservedMethod7IMachine; safecall;
    procedure InternalAndReservedMethod8IMachine; safecall;
    property Parent: IVirtualBox read Get_Parent;
    property Icon: PSafeArray read Get_Icon write Set_Icon;
    property Accessible: Integer read Get_Accessible;
    property AccessError: IVirtualBoxErrorInfo read Get_AccessError;
    property Name: WideString read Get_Name write Set_Name;
    property Description: WideString read Get_Description write Set_Description;
    property Id: WideString read Get_Id;
    property Groups: PSafeArray read Get_Groups write Set_Groups;
    property OSTypeId: WideString read Get_OSTypeId write Set_OSTypeId;
    property HardwareVersion: WideString read Get_HardwareVersion write Set_HardwareVersion;
    property HardwareUUID: WideString read Get_HardwareUUID write Set_HardwareUUID;
    property CPUCount: LongWord read Get_CPUCount write Set_CPUCount;
    property CPUHotPlugEnabled: Integer read Get_CPUHotPlugEnabled write Set_CPUHotPlugEnabled;
    property CPUExecutionCap: LongWord read Get_CPUExecutionCap write Set_CPUExecutionCap;
    property CPUIDPortabilityLevel: LongWord read Get_CPUIDPortabilityLevel write Set_CPUIDPortabilityLevel;
    property MemorySize: LongWord read Get_MemorySize write Set_MemorySize;
    property MemoryBalloonSize: LongWord read Get_MemoryBalloonSize write Set_MemoryBalloonSize;
    property PageFusionEnabled: Integer read Get_PageFusionEnabled write Set_PageFusionEnabled;
    property GraphicsControllerType: GraphicsControllerType read Get_GraphicsControllerType write Set_GraphicsControllerType;
    property VRAMSize: LongWord read Get_VRAMSize write Set_VRAMSize;
    property Accelerate3DEnabled: Integer read Get_Accelerate3DEnabled write Set_Accelerate3DEnabled;
    property Accelerate2DVideoEnabled: Integer read Get_Accelerate2DVideoEnabled write Set_Accelerate2DVideoEnabled;
    property MonitorCount: LongWord read Get_MonitorCount write Set_MonitorCount;
    property BIOSSettings: IBIOSSettings read Get_BIOSSettings;
    property RecordingSettings: IRecordingSettings read Get_RecordingSettings;
    property FirmwareType: FirmwareType read Get_FirmwareType write Set_FirmwareType;
    property PointingHIDType: PointingHIDType read Get_PointingHIDType write Set_PointingHIDType;
    property KeyboardHIDType: KeyboardHIDType read Get_KeyboardHIDType write Set_KeyboardHIDType;
    property HPETEnabled: Integer read Get_HPETEnabled write Set_HPETEnabled;
    property ChipsetType: ChipsetType read Get_ChipsetType write Set_ChipsetType;
    property SnapshotFolder: WideString read Get_SnapshotFolder write Set_SnapshotFolder;
    property VRDEServer: IVRDEServer read Get_VRDEServer;
    property EmulatedUSBCardReaderEnabled: Integer read Get_EmulatedUSBCardReaderEnabled write Set_EmulatedUSBCardReaderEnabled;
    property MediumAttachments: PSafeArray read Get_MediumAttachments;
    property USBControllers: PSafeArray read Get_USBControllers;
    property USBDeviceFilters: IUSBDeviceFilters read Get_USBDeviceFilters;
    property AudioAdapter: IAudioAdapter read Get_AudioAdapter;
    property StorageControllers: PSafeArray read Get_StorageControllers;
    property SettingsFilePath: WideString read Get_SettingsFilePath;
    property SettingsAuxFilePath: WideString read Get_SettingsAuxFilePath;
    property SettingsModified: Integer read Get_SettingsModified;
    property SessionState: SessionState read Get_SessionState;
    property SessionName: WideString read Get_SessionName;
    property SessionPID: LongWord read Get_SessionPID;
    property State: MachineState read Get_State;
    property LastStateChange: Int64 read Get_LastStateChange;
    property StateFilePath: WideString read Get_StateFilePath;
    property LogFolder: WideString read Get_LogFolder;
    property CurrentSnapshot: ISnapshot read Get_CurrentSnapshot;
    property SnapshotCount: LongWord read Get_SnapshotCount;
    property CurrentStateModified: Integer read Get_CurrentStateModified;
    property SharedFolders: PSafeArray read Get_SharedFolders;
    property ClipboardMode: ClipboardMode read Get_ClipboardMode write Set_ClipboardMode;
    property DnDMode: DnDMode read Get_DnDMode write Set_DnDMode;
    property TeleporterEnabled: Integer read Get_TeleporterEnabled write Set_TeleporterEnabled;
    property TeleporterPort: LongWord read Get_TeleporterPort write Set_TeleporterPort;
    property TeleporterAddress: WideString read Get_TeleporterAddress write Set_TeleporterAddress;
    property TeleporterPassword: WideString read Get_TeleporterPassword write Set_TeleporterPassword;
    property ParavirtProvider: ParavirtProvider read Get_ParavirtProvider write Set_ParavirtProvider;
    property FaultToleranceState: FaultToleranceState read Get_FaultToleranceState write Set_FaultToleranceState;
    property FaultTolerancePort: LongWord read Get_FaultTolerancePort write Set_FaultTolerancePort;
    property FaultToleranceAddress: WideString read Get_FaultToleranceAddress write Set_FaultToleranceAddress;
    property FaultTolerancePassword: WideString read Get_FaultTolerancePassword write Set_FaultTolerancePassword;
    property FaultToleranceSyncInterval: LongWord read Get_FaultToleranceSyncInterval write Set_FaultToleranceSyncInterval;
    property RTCUseUTC: Integer read Get_RTCUseUTC write Set_RTCUseUTC;
    property IOCacheEnabled: Integer read Get_IOCacheEnabled write Set_IOCacheEnabled;
    property IOCacheSize: LongWord read Get_IOCacheSize write Set_IOCacheSize;
    property PCIDeviceAssignments: PSafeArray read Get_PCIDeviceAssignments;
    property BandwidthControl: IBandwidthControl read Get_BandwidthControl;
    property TracingEnabled: Integer read Get_TracingEnabled write Set_TracingEnabled;
    property TracingConfig: WideString read Get_TracingConfig write Set_TracingConfig;
    property AllowTracingToAccessVM: Integer read Get_AllowTracingToAccessVM write Set_AllowTracingToAccessVM;
    property AutostartEnabled: Integer read Get_AutostartEnabled write Set_AutostartEnabled;
    property AutostartDelay: LongWord read Get_AutostartDelay write Set_AutostartDelay;
    property AutostopType: AutostopType read Get_AutostopType write Set_AutostopType;
    property DefaultFrontend: WideString read Get_DefaultFrontend write Set_DefaultFrontend;
    property USBProxyAvailable: Integer read Get_USBProxyAvailable;
    property VMProcessPriority: WideString read Get_VMProcessPriority write Set_VMProcessPriority;
    property ParavirtDebug: WideString read Get_ParavirtDebug write Set_ParavirtDebug;
    property CPUProfile: WideString read Get_CPUProfile write Set_CPUProfile;
    property InternalAndReservedAttribute1IMachine: LongWord read Get_InternalAndReservedAttribute1IMachine;
    property InternalAndReservedAttribute2IMachine: LongWord read Get_InternalAndReservedAttribute2IMachine;
    property InternalAndReservedAttribute3IMachine: LongWord read Get_InternalAndReservedAttribute3IMachine;
    property InternalAndReservedAttribute4IMachine: LongWord read Get_InternalAndReservedAttribute4IMachine;
    property InternalAndReservedAttribute5IMachine: LongWord read Get_InternalAndReservedAttribute5IMachine;
    property InternalAndReservedAttribute6IMachine: LongWord read Get_InternalAndReservedAttribute6IMachine;
    property InternalAndReservedAttribute7IMachine: LongWord read Get_InternalAndReservedAttribute7IMachine;
    property InternalAndReservedAttribute8IMachine: LongWord read Get_InternalAndReservedAttribute8IMachine;
    property InternalAndReservedAttribute9IMachine: LongWord read Get_InternalAndReservedAttribute9IMachine;
    property InternalAndReservedAttribute10IMachine: LongWord read Get_InternalAndReservedAttribute10IMachine;
  end;

// *********************************************************************//
// DispIntf:  IMachineDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5047460A-265D-4538-B23E-DDBA5FB84976}
// *********************************************************************//
  IMachineDisp = dispinterface
    ['{5047460A-265D-4538-B23E-DDBA5FB84976}']
    property Parent: IVirtualBox readonly dispid 1610743808;
    property Icon: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743809;
    property Accessible: Integer readonly dispid 1610743811;
    property AccessError: IVirtualBoxErrorInfo readonly dispid 1610743812;
    property Name: WideString dispid 1610743813;
    property Description: WideString dispid 1610743815;
    property Id: WideString readonly dispid 1610743817;
    property Groups: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743818;
    property OSTypeId: WideString dispid 1610743820;
    property HardwareVersion: WideString dispid 1610743822;
    property HardwareUUID: WideString dispid 1610743824;
    property CPUCount: LongWord dispid 1610743826;
    property CPUHotPlugEnabled: Integer dispid 1610743828;
    property CPUExecutionCap: LongWord dispid 1610743830;
    property CPUIDPortabilityLevel: LongWord dispid 1610743832;
    property MemorySize: LongWord dispid 1610743834;
    property MemoryBalloonSize: LongWord dispid 1610743836;
    property PageFusionEnabled: Integer dispid 1610743838;
    property GraphicsControllerType: GraphicsControllerType dispid 1610743840;
    property VRAMSize: LongWord dispid 1610743842;
    property Accelerate3DEnabled: Integer dispid 1610743844;
    property Accelerate2DVideoEnabled: Integer dispid 1610743846;
    property MonitorCount: LongWord dispid 1610743848;
    property BIOSSettings: IBIOSSettings readonly dispid 1610743850;
    property RecordingSettings: IRecordingSettings readonly dispid 1610743851;
    property FirmwareType: FirmwareType dispid 1610743852;
    property PointingHIDType: PointingHIDType dispid 1610743854;
    property KeyboardHIDType: KeyboardHIDType dispid 1610743856;
    property HPETEnabled: Integer dispid 1610743858;
    property ChipsetType: ChipsetType dispid 1610743860;
    property SnapshotFolder: WideString dispid 1610743862;
    property VRDEServer: IVRDEServer readonly dispid 1610743864;
    property EmulatedUSBCardReaderEnabled: Integer dispid 1610743865;
    property MediumAttachments: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743867;
    property USBControllers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743868;
    property USBDeviceFilters: IUSBDeviceFilters readonly dispid 1610743869;
    property AudioAdapter: IAudioAdapter readonly dispid 1610743870;
    property StorageControllers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743871;
    property SettingsFilePath: WideString readonly dispid 1610743872;
    property SettingsAuxFilePath: WideString readonly dispid 1610743873;
    property SettingsModified: Integer readonly dispid 1610743874;
    property SessionState: SessionState readonly dispid 1610743875;
    property SessionName: WideString readonly dispid 1610743876;
    property SessionPID: LongWord readonly dispid 1610743877;
    property State: MachineState readonly dispid 1610743878;
    property LastStateChange: Int64 readonly dispid 1610743879;
    property StateFilePath: WideString readonly dispid 1610743880;
    property LogFolder: WideString readonly dispid 1610743881;
    property CurrentSnapshot: ISnapshot readonly dispid 1610743882;
    property SnapshotCount: LongWord readonly dispid 1610743883;
    property CurrentStateModified: Integer readonly dispid 1610743884;
    property SharedFolders: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743885;
    property ClipboardMode: ClipboardMode dispid 1610743886;
    property DnDMode: DnDMode dispid 1610743888;
    property TeleporterEnabled: Integer dispid 1610743890;
    property TeleporterPort: LongWord dispid 1610743892;
    property TeleporterAddress: WideString dispid 1610743894;
    property TeleporterPassword: WideString dispid 1610743896;
    property ParavirtProvider: ParavirtProvider dispid 1610743898;
    property FaultToleranceState: FaultToleranceState dispid 1610743900;
    property FaultTolerancePort: LongWord dispid 1610743902;
    property FaultToleranceAddress: WideString dispid 1610743904;
    property FaultTolerancePassword: WideString dispid 1610743906;
    property FaultToleranceSyncInterval: LongWord dispid 1610743908;
    property RTCUseUTC: Integer dispid 1610743910;
    property IOCacheEnabled: Integer dispid 1610743912;
    property IOCacheSize: LongWord dispid 1610743914;
    property PCIDeviceAssignments: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743916;
    property BandwidthControl: IBandwidthControl readonly dispid 1610743917;
    property TracingEnabled: Integer dispid 1610743918;
    property TracingConfig: WideString dispid 1610743920;
    property AllowTracingToAccessVM: Integer dispid 1610743922;
    property AutostartEnabled: Integer dispid 1610743924;
    property AutostartDelay: LongWord dispid 1610743926;
    property AutostopType: AutostopType dispid 1610743928;
    property DefaultFrontend: WideString dispid 1610743930;
    property USBProxyAvailable: Integer readonly dispid 1610743932;
    property VMProcessPriority: WideString dispid 1610743933;
    property ParavirtDebug: WideString dispid 1610743935;
    property CPUProfile: WideString dispid 1610743937;
    property InternalAndReservedAttribute1IMachine: LongWord readonly dispid 1610743939;
    property InternalAndReservedAttribute2IMachine: LongWord readonly dispid 1610743940;
    property InternalAndReservedAttribute3IMachine: LongWord readonly dispid 1610743941;
    property InternalAndReservedAttribute4IMachine: LongWord readonly dispid 1610743942;
    property InternalAndReservedAttribute5IMachine: LongWord readonly dispid 1610743943;
    property InternalAndReservedAttribute6IMachine: LongWord readonly dispid 1610743944;
    property InternalAndReservedAttribute7IMachine: LongWord readonly dispid 1610743945;
    property InternalAndReservedAttribute8IMachine: LongWord readonly dispid 1610743946;
    property InternalAndReservedAttribute9IMachine: LongWord readonly dispid 1610743947;
    property InternalAndReservedAttribute10IMachine: LongWord readonly dispid 1610743948;
    procedure LockMachine(const aSession: ISession; aLockType: LockType); dispid 1610743949;
    function LaunchVMProcess(const aSession: ISession; const aName: WideString; 
                             const aEnvironment: WideString): IProgress; dispid 1610743950;
    procedure SetBootOrder(aPosition: LongWord; aDevice: DeviceType); dispid 1610743951;
    function GetBootOrder(aPosition: LongWord): DeviceType; dispid 1610743952;
    procedure AttachDevice(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                           aType: DeviceType; const aMedium: IMedium); dispid 1610743953;
    procedure AttachDeviceWithoutMedium(const aName: WideString; aControllerPort: Integer; 
                                        aDevice: Integer; aType: DeviceType); dispid 1610743954;
    procedure DetachDevice(const aName: WideString; aControllerPort: Integer; aDevice: Integer); dispid 1610743955;
    procedure PassthroughDevice(const aName: WideString; aControllerPort: Integer; 
                                aDevice: Integer; aPassthrough: Integer); dispid 1610743956;
    procedure TemporaryEjectDevice(const aName: WideString; aControllerPort: Integer; 
                                   aDevice: Integer; aTemporaryEject: Integer); dispid 1610743957;
    procedure NonRotationalDevice(const aName: WideString; aControllerPort: Integer; 
                                  aDevice: Integer; aNonRotational: Integer); dispid 1610743958;
    procedure SetAutoDiscardForDevice(const aName: WideString; aControllerPort: Integer; 
                                      aDevice: Integer; aDiscard: Integer); dispid 1610743959;
    procedure SetHotPluggableForDevice(const aName: WideString; aControllerPort: Integer; 
                                       aDevice: Integer; aHotPluggable: Integer); dispid 1610743960;
    procedure SetBandwidthGroupForDevice(const aName: WideString; aControllerPort: Integer; 
                                         aDevice: Integer; const aBandwidthGroup: IBandwidthGroup); dispid 1610743961;
    procedure SetNoBandwidthGroupForDevice(const aName: WideString; aControllerPort: Integer; 
                                           aDevice: Integer); dispid 1610743962;
    procedure UnmountMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                            aForce: Integer); dispid 1610743963;
    procedure MountMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer; 
                          const aMedium: IMedium; aForce: Integer); dispid 1610743964;
    function GetMedium(const aName: WideString; aControllerPort: Integer; aDevice: Integer): IMedium; dispid 1610743965;
    function GetMediumAttachmentsOfController(const aName: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743966;
    function GetMediumAttachment(const aName: WideString; aControllerPort: Integer; aDevice: Integer): IMediumAttachment; dispid 1610743967;
    procedure AttachHostPCIDevice(aHostAddress: Integer; aDesiredGuestAddress: Integer; 
                                  aTryToUnbind: Integer); dispid 1610743968;
    procedure DetachHostPCIDevice(aHostAddress: Integer); dispid 1610743969;
    function GetNetworkAdapter(aSlot: LongWord): INetworkAdapter; dispid 1610743970;
    function AddStorageController(const aName: WideString; aConnectionType: StorageBus): IStorageController; dispid 1610743971;
    function GetStorageControllerByName(const aName: WideString): IStorageController; dispid 1610743972;
    function GetStorageControllerByInstance(aConnectionType: StorageBus; aInstance: LongWord): IStorageController; dispid 1610743973;
    procedure RemoveStorageController(const aName: WideString); dispid 1610743974;
    procedure SetStorageControllerBootable(const aName: WideString; aBootable: Integer); dispid 1610743975;
    function AddUSBController(const aName: WideString; aType: USBControllerType): IUSBController; dispid 1610743976;
    procedure RemoveUSBController(const aName: WideString); dispid 1610743977;
    function GetUSBControllerByName(const aName: WideString): IUSBController; dispid 1610743978;
    function GetUSBControllerCountByType(aType: USBControllerType): LongWord; dispid 1610743979;
    function GetSerialPort(aSlot: LongWord): ISerialPort; dispid 1610743980;
    function GetParallelPort(aSlot: LongWord): IParallelPort; dispid 1610743981;
    function GetExtraDataKeys: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743982;
    function GetExtraData(const aKey: WideString): WideString; dispid 1610743983;
    procedure SetExtraData(const aKey: WideString; const aValue: WideString); dispid 1610743984;
    function GetCPUProperty(aProperty: CPUPropertyType): Integer; dispid 1610743985;
    procedure SetCPUProperty(aProperty: CPUPropertyType; aValue: Integer); dispid 1610743986;
    procedure GetCPUIDLeafByOrdinal(aOrdinal: LongWord; out aIdx: LongWord; out aIdxSub: LongWord; 
                                    out aValEax: LongWord; out aValEbx: LongWord; 
                                    out aValEcx: LongWord; out aValEdx: LongWord); dispid 1610743987;
    procedure GetCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord; out aValEax: LongWord; 
                           out aValEbx: LongWord; out aValEcx: LongWord; out aValEdx: LongWord); dispid 1610743988;
    procedure SetCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord; aValEax: LongWord; aValEbx: LongWord; 
                           aValEcx: LongWord; aValEdx: LongWord); dispid 1610743989;
    procedure RemoveCPUIDLeaf(aIdx: LongWord; aIdxSub: LongWord); dispid 1610743990;
    procedure RemoveAllCPUIDLeaves; dispid 1610743991;
    function GetHWVirtExProperty(aProperty: HWVirtExPropertyType): Integer; dispid 1610743992;
    procedure SetHWVirtExProperty(aProperty: HWVirtExPropertyType; aValue: Integer); dispid 1610743993;
    function SetSettingsFilePath(const aSettingsFilePath: WideString): IProgress; dispid 1610743994;
    procedure SaveSettings; dispid 1610743995;
    procedure DiscardSettings; dispid 1610743996;
    function Unregister(aCleanupMode: CleanupMode): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743997;
    function DeleteConfig(aMedia: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743998;
    function ExportTo(const aAppliance: IAppliance; const aLocation: WideString): IVirtualSystemDescription; dispid 1610743999;
    function FindSnapshot(const aNameOrId: WideString): ISnapshot; dispid 1610744000;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); dispid 1610744001;
    procedure RemoveSharedFolder(const aName: WideString); dispid 1610744002;
    function CanShowConsoleWindow: Integer; dispid 1610744003;
    function ShowConsoleWindow: Int64; dispid 1610744004;
    procedure GetGuestProperty(const aName: WideString; out aValue: WideString; 
                               out aTimeStamp: Int64; out aFlags: WideString); dispid 1610744005;
    function GetGuestPropertyValue(const aProperty: WideString): WideString; dispid 1610744006;
    function GetGuestPropertyTimestamp(const aProperty: WideString): Int64; dispid 1610744007;
    procedure SetGuestProperty(const aProperty: WideString; const aValue: WideString; 
                               const aFlags: WideString); dispid 1610744008;
    procedure SetGuestPropertyValue(const aProperty: WideString; const aValue: WideString); dispid 1610744009;
    procedure DeleteGuestProperty(const aName: WideString); dispid 1610744010;
    procedure EnumerateGuestProperties(const aPatterns: WideString; 
                                       out aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aTimestamps: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610744011;
    procedure QuerySavedGuestScreenInfo(aScreenId: LongWord; out aOriginX: LongWord; 
                                        out aOriginY: LongWord; out aWidth: LongWord; 
                                        out aHeight: LongWord; out aEnabled: Integer); dispid 1610744012;
    function ReadSavedThumbnailToArray(aScreenId: LongWord; aBitmapFormat: BitmapFormat; 
                                       out aWidth: LongWord; out aHeight: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610744013;
    function QuerySavedScreenshotInfo(aScreenId: LongWord; out aWidth: LongWord; 
                                      out aHeight: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610744014;
    function ReadSavedScreenshotToArray(aScreenId: LongWord; aBitmapFormat: BitmapFormat; 
                                        out aWidth: LongWord; out aHeight: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610744015;
    procedure HotPlugCPU(aCpu: LongWord); dispid 1610744016;
    procedure HotUnplugCPU(aCpu: LongWord); dispid 1610744017;
    function GetCPUStatus(aCpu: LongWord): Integer; dispid 1610744018;
    function GetEffectiveParavirtProvider: ParavirtProvider; dispid 1610744019;
    function QueryLogFilename(aIdx: LongWord): WideString; dispid 1610744020;
    function ReadLog(aIdx: LongWord; aOffset: Int64; aSize: Int64): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610744021;
    function CloneTo(const aTarget: IMachine; aMode: CloneMode; 
                     aOptions: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610744022;
    function MoveTo(const aFolder: WideString; const aType: WideString): IProgress; dispid 1610744023;
    function SaveState: IProgress; dispid 1610744024;
    procedure AdoptSavedState(const aSavedStateFile: WideString); dispid 1610744025;
    procedure DiscardSavedState(aFRemoveFile: Integer); dispid 1610744026;
    function TakeSnapshot(const aName: WideString; const aDescription: WideString; aPause: Integer; 
                          out aId: WideString): IProgress; dispid 1610744027;
    function DeleteSnapshot(const aId: WideString): IProgress; dispid 1610744028;
    function DeleteSnapshotAndAllChildren(const aId: WideString): IProgress; dispid 1610744029;
    function DeleteSnapshotRange(const aStartId: WideString; const aEndId: WideString): IProgress; dispid 1610744030;
    function RestoreSnapshot(const aSnapshot: ISnapshot): IProgress; dispid 1610744031;
    procedure ApplyDefaults(const aFlags: WideString); dispid 1610744032;
    procedure InternalAndReservedMethod1IMachine; dispid 1610744033;
    procedure InternalAndReservedMethod2IMachine; dispid 1610744034;
    procedure InternalAndReservedMethod3IMachine; dispid 1610744035;
    procedure InternalAndReservedMethod4IMachine; dispid 1610744036;
    procedure InternalAndReservedMethod5IMachine; dispid 1610744037;
    procedure InternalAndReservedMethod6IMachine; dispid 1610744038;
    procedure InternalAndReservedMethod7IMachine; dispid 1610744039;
    procedure InternalAndReservedMethod8IMachine; dispid 1610744040;
  end;

// *********************************************************************//
// Interface: IBIOSSettings
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F13F667D-3624-4AC5-99C1-3D982EBD8D98}
// *********************************************************************//
  IBIOSSettings = interface(IDispatch)
    ['{F13F667D-3624-4AC5-99C1-3D982EBD8D98}']
    function Get_LogoFadeIn: Integer; safecall;
    procedure Set_LogoFadeIn(aLogoFadeIn: Integer); safecall;
    function Get_LogoFadeOut: Integer; safecall;
    procedure Set_LogoFadeOut(aLogoFadeOut: Integer); safecall;
    function Get_LogoDisplayTime: LongWord; safecall;
    procedure Set_LogoDisplayTime(aLogoDisplayTime: LongWord); safecall;
    function Get_LogoImagePath: WideString; safecall;
    procedure Set_LogoImagePath(const aLogoImagePath: WideString); safecall;
    function Get_BootMenuMode: BIOSBootMenuMode; safecall;
    procedure Set_BootMenuMode(aBootMenuMode: BIOSBootMenuMode); safecall;
    function Get_ACPIEnabled: Integer; safecall;
    procedure Set_ACPIEnabled(aACPIEnabled: Integer); safecall;
    function Get_IOAPICEnabled: Integer; safecall;
    procedure Set_IOAPICEnabled(aIOAPICEnabled: Integer); safecall;
    function Get_APICMode: APICMode; safecall;
    procedure Set_APICMode(aAPICMode: APICMode); safecall;
    function Get_TimeOffset: Int64; safecall;
    procedure Set_TimeOffset(aTimeOffset: Int64); safecall;
    function Get_PXEDebugEnabled: Integer; safecall;
    procedure Set_PXEDebugEnabled(aPXEDebugEnabled: Integer); safecall;
    function Get_NonVolatileStorageFile: WideString; safecall;
    function Get_InternalAndReservedAttribute1IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IBIOSSettings: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IBIOSSettings: LongWord; safecall;
    procedure InternalAndReservedMethod1IBIOSSettings; safecall;
    property LogoFadeIn: Integer read Get_LogoFadeIn write Set_LogoFadeIn;
    property LogoFadeOut: Integer read Get_LogoFadeOut write Set_LogoFadeOut;
    property LogoDisplayTime: LongWord read Get_LogoDisplayTime write Set_LogoDisplayTime;
    property LogoImagePath: WideString read Get_LogoImagePath write Set_LogoImagePath;
    property BootMenuMode: BIOSBootMenuMode read Get_BootMenuMode write Set_BootMenuMode;
    property ACPIEnabled: Integer read Get_ACPIEnabled write Set_ACPIEnabled;
    property IOAPICEnabled: Integer read Get_IOAPICEnabled write Set_IOAPICEnabled;
    property APICMode: APICMode read Get_APICMode write Set_APICMode;
    property TimeOffset: Int64 read Get_TimeOffset write Set_TimeOffset;
    property PXEDebugEnabled: Integer read Get_PXEDebugEnabled write Set_PXEDebugEnabled;
    property NonVolatileStorageFile: WideString read Get_NonVolatileStorageFile;
    property InternalAndReservedAttribute1IBIOSSettings: LongWord read Get_InternalAndReservedAttribute1IBIOSSettings;
    property InternalAndReservedAttribute2IBIOSSettings: LongWord read Get_InternalAndReservedAttribute2IBIOSSettings;
    property InternalAndReservedAttribute3IBIOSSettings: LongWord read Get_InternalAndReservedAttribute3IBIOSSettings;
    property InternalAndReservedAttribute4IBIOSSettings: LongWord read Get_InternalAndReservedAttribute4IBIOSSettings;
    property InternalAndReservedAttribute5IBIOSSettings: LongWord read Get_InternalAndReservedAttribute5IBIOSSettings;
    property InternalAndReservedAttribute6IBIOSSettings: LongWord read Get_InternalAndReservedAttribute6IBIOSSettings;
    property InternalAndReservedAttribute7IBIOSSettings: LongWord read Get_InternalAndReservedAttribute7IBIOSSettings;
    property InternalAndReservedAttribute8IBIOSSettings: LongWord read Get_InternalAndReservedAttribute8IBIOSSettings;
  end;

// *********************************************************************//
// DispIntf:  IBIOSSettingsDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F13F667D-3624-4AC5-99C1-3D982EBD8D98}
// *********************************************************************//
  IBIOSSettingsDisp = dispinterface
    ['{F13F667D-3624-4AC5-99C1-3D982EBD8D98}']
    property LogoFadeIn: Integer dispid 1610743808;
    property LogoFadeOut: Integer dispid 1610743810;
    property LogoDisplayTime: LongWord dispid 1610743812;
    property LogoImagePath: WideString dispid 1610743814;
    property BootMenuMode: BIOSBootMenuMode dispid 1610743816;
    property ACPIEnabled: Integer dispid 1610743818;
    property IOAPICEnabled: Integer dispid 1610743820;
    property APICMode: APICMode dispid 1610743822;
    property TimeOffset: Int64 dispid 1610743824;
    property PXEDebugEnabled: Integer dispid 1610743826;
    property NonVolatileStorageFile: WideString readonly dispid 1610743828;
    property InternalAndReservedAttribute1IBIOSSettings: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute2IBIOSSettings: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute3IBIOSSettings: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute4IBIOSSettings: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute5IBIOSSettings: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute6IBIOSSettings: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute7IBIOSSettings: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute8IBIOSSettings: LongWord readonly dispid 1610743836;
    procedure InternalAndReservedMethod1IBIOSSettings; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IRecordingSettings
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D88F2A5A-47C7-4A3F-AAE1-1B516817DB41}
// *********************************************************************//
  IRecordingSettings = interface(IDispatch)
    ['{D88F2A5A-47C7-4A3F-AAE1-1B516817DB41}']
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_Screens: PSafeArray; safecall;
    function GetScreenSettings(aScreenId: LongWord): IRecordingScreenSettings; safecall;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property Screens: PSafeArray read Get_Screens;
  end;

// *********************************************************************//
// DispIntf:  IRecordingSettingsDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D88F2A5A-47C7-4A3F-AAE1-1B516817DB41}
// *********************************************************************//
  IRecordingSettingsDisp = dispinterface
    ['{D88F2A5A-47C7-4A3F-AAE1-1B516817DB41}']
    property Enabled: Integer dispid 1610743808;
    property Screens: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743810;
    function GetScreenSettings(aScreenId: LongWord): IRecordingScreenSettings; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IRecordingScreenSettings
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {678FBD9A-93AF-42A7-7F13-79AD6EF1A18D}
// *********************************************************************//
  IRecordingScreenSettings = interface(IDispatch)
    ['{678FBD9A-93AF-42A7-7F13-79AD6EF1A18D}']
    function Get_Id: LongWord; safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_Features: LongWord; safecall;
    procedure Set_Features(aFeatures: LongWord); safecall;
    function Get_Destination: RecordingDestination; safecall;
    procedure Set_Destination(aDestination: RecordingDestination); safecall;
    function Get_Filename: WideString; safecall;
    procedure Set_Filename(const aFilename: WideString); safecall;
    function Get_MaxTime: LongWord; safecall;
    procedure Set_MaxTime(aMaxTime: LongWord); safecall;
    function Get_MaxFileSize: LongWord; safecall;
    procedure Set_MaxFileSize(aMaxFileSize: LongWord); safecall;
    function Get_Options: WideString; safecall;
    procedure Set_Options(const aOptions: WideString); safecall;
    function Get_AudioCodec: RecordingAudioCodec; safecall;
    procedure Set_AudioCodec(aAudioCodec: RecordingAudioCodec); safecall;
    function Get_AudioHz: LongWord; safecall;
    procedure Set_AudioHz(aAudioHz: LongWord); safecall;
    function Get_AudioBits: LongWord; safecall;
    procedure Set_AudioBits(aAudioBits: LongWord); safecall;
    function Get_AudioChannels: LongWord; safecall;
    procedure Set_AudioChannels(aAudioChannels: LongWord); safecall;
    function Get_VideoCodec: RecordingVideoCodec; safecall;
    procedure Set_VideoCodec(aVideoCodec: RecordingVideoCodec); safecall;
    function Get_VideoWidth: LongWord; safecall;
    procedure Set_VideoWidth(aVideoWidth: LongWord); safecall;
    function Get_VideoHeight: LongWord; safecall;
    procedure Set_VideoHeight(aVideoHeight: LongWord); safecall;
    function Get_VideoRate: LongWord; safecall;
    procedure Set_VideoRate(aVideoRate: LongWord); safecall;
    function Get_VideoRateControlMode: RecordingVideoRateControlMode; safecall;
    procedure Set_VideoRateControlMode(aVideoRateControlMode: RecordingVideoRateControlMode); safecall;
    function Get_VideoFPS: LongWord; safecall;
    procedure Set_VideoFPS(aVideoFPS: LongWord); safecall;
    function Get_VideoScalingMethod: RecordingVideoScalingMethod; safecall;
    procedure Set_VideoScalingMethod(aVideoScalingMethod: RecordingVideoScalingMethod); safecall;
    function IsFeatureEnabled(aFeature: RecordingFeature): Integer; safecall;
    property Id: LongWord read Get_Id;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property Features: LongWord read Get_Features write Set_Features;
    property Destination: RecordingDestination read Get_Destination write Set_Destination;
    property Filename: WideString read Get_Filename write Set_Filename;
    property MaxTime: LongWord read Get_MaxTime write Set_MaxTime;
    property MaxFileSize: LongWord read Get_MaxFileSize write Set_MaxFileSize;
    property Options: WideString read Get_Options write Set_Options;
    property AudioCodec: RecordingAudioCodec read Get_AudioCodec write Set_AudioCodec;
    property AudioHz: LongWord read Get_AudioHz write Set_AudioHz;
    property AudioBits: LongWord read Get_AudioBits write Set_AudioBits;
    property AudioChannels: LongWord read Get_AudioChannels write Set_AudioChannels;
    property VideoCodec: RecordingVideoCodec read Get_VideoCodec write Set_VideoCodec;
    property VideoWidth: LongWord read Get_VideoWidth write Set_VideoWidth;
    property VideoHeight: LongWord read Get_VideoHeight write Set_VideoHeight;
    property VideoRate: LongWord read Get_VideoRate write Set_VideoRate;
    property VideoRateControlMode: RecordingVideoRateControlMode read Get_VideoRateControlMode write Set_VideoRateControlMode;
    property VideoFPS: LongWord read Get_VideoFPS write Set_VideoFPS;
    property VideoScalingMethod: RecordingVideoScalingMethod read Get_VideoScalingMethod write Set_VideoScalingMethod;
  end;

// *********************************************************************//
// DispIntf:  IRecordingScreenSettingsDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {678FBD9A-93AF-42A7-7F13-79AD6EF1A18D}
// *********************************************************************//
  IRecordingScreenSettingsDisp = dispinterface
    ['{678FBD9A-93AF-42A7-7F13-79AD6EF1A18D}']
    property Id: LongWord readonly dispid 1610743808;
    property Enabled: Integer dispid 1610743809;
    property Features: LongWord dispid 1610743811;
    property Destination: RecordingDestination dispid 1610743813;
    property Filename: WideString dispid 1610743815;
    property MaxTime: LongWord dispid 1610743817;
    property MaxFileSize: LongWord dispid 1610743819;
    property Options: WideString dispid 1610743821;
    property AudioCodec: RecordingAudioCodec dispid 1610743823;
    property AudioHz: LongWord dispid 1610743825;
    property AudioBits: LongWord dispid 1610743827;
    property AudioChannels: LongWord dispid 1610743829;
    property VideoCodec: RecordingVideoCodec dispid 1610743831;
    property VideoWidth: LongWord dispid 1610743833;
    property VideoHeight: LongWord dispid 1610743835;
    property VideoRate: LongWord dispid 1610743837;
    property VideoRateControlMode: RecordingVideoRateControlMode dispid 1610743839;
    property VideoFPS: LongWord dispid 1610743841;
    property VideoScalingMethod: RecordingVideoScalingMethod dispid 1610743843;
    function IsFeatureEnabled(aFeature: RecordingFeature): Integer; dispid 1610743845;
  end;

// *********************************************************************//
// Interface: IVRDEServer
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {08E25756-08A2-41AF-A05F-D7C661ABAEBE}
// *********************************************************************//
  IVRDEServer = interface(IDispatch)
    ['{08E25756-08A2-41AF-A05F-D7C661ABAEBE}']
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_AuthType: AuthType; safecall;
    procedure Set_AuthType(aAuthType: AuthType); safecall;
    function Get_AuthTimeout: LongWord; safecall;
    procedure Set_AuthTimeout(aAuthTimeout: LongWord); safecall;
    function Get_AllowMultiConnection: Integer; safecall;
    procedure Set_AllowMultiConnection(aAllowMultiConnection: Integer); safecall;
    function Get_ReuseSingleConnection: Integer; safecall;
    procedure Set_ReuseSingleConnection(aReuseSingleConnection: Integer); safecall;
    function Get_VRDEExtPack: WideString; safecall;
    procedure Set_VRDEExtPack(const aVRDEExtPack: WideString); safecall;
    function Get_AuthLibrary: WideString; safecall;
    procedure Set_AuthLibrary(const aAuthLibrary: WideString); safecall;
    function Get_VRDEProperties: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IVRDEServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IVRDEServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IVRDEServer: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IVRDEServer: LongWord; safecall;
    procedure SetVRDEProperty(const aKey: WideString; const aValue: WideString); safecall;
    function GetVRDEProperty(const aKey: WideString): WideString; safecall;
    procedure InternalAndReservedMethod1IVRDEServer; safecall;
    procedure InternalAndReservedMethod2IVRDEServer; safecall;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property AuthType: AuthType read Get_AuthType write Set_AuthType;
    property AuthTimeout: LongWord read Get_AuthTimeout write Set_AuthTimeout;
    property AllowMultiConnection: Integer read Get_AllowMultiConnection write Set_AllowMultiConnection;
    property ReuseSingleConnection: Integer read Get_ReuseSingleConnection write Set_ReuseSingleConnection;
    property VRDEExtPack: WideString read Get_VRDEExtPack write Set_VRDEExtPack;
    property AuthLibrary: WideString read Get_AuthLibrary write Set_AuthLibrary;
    property VRDEProperties: PSafeArray read Get_VRDEProperties;
    property InternalAndReservedAttribute1IVRDEServer: LongWord read Get_InternalAndReservedAttribute1IVRDEServer;
    property InternalAndReservedAttribute2IVRDEServer: LongWord read Get_InternalAndReservedAttribute2IVRDEServer;
    property InternalAndReservedAttribute3IVRDEServer: LongWord read Get_InternalAndReservedAttribute3IVRDEServer;
    property InternalAndReservedAttribute4IVRDEServer: LongWord read Get_InternalAndReservedAttribute4IVRDEServer;
  end;

// *********************************************************************//
// DispIntf:  IVRDEServerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {08E25756-08A2-41AF-A05F-D7C661ABAEBE}
// *********************************************************************//
  IVRDEServerDisp = dispinterface
    ['{08E25756-08A2-41AF-A05F-D7C661ABAEBE}']
    property Enabled: Integer dispid 1610743808;
    property AuthType: AuthType dispid 1610743810;
    property AuthTimeout: LongWord dispid 1610743812;
    property AllowMultiConnection: Integer dispid 1610743814;
    property ReuseSingleConnection: Integer dispid 1610743816;
    property VRDEExtPack: WideString dispid 1610743818;
    property AuthLibrary: WideString dispid 1610743820;
    property VRDEProperties: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743822;
    property InternalAndReservedAttribute1IVRDEServer: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IVRDEServer: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IVRDEServer: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IVRDEServer: LongWord readonly dispid 1610743826;
    procedure SetVRDEProperty(const aKey: WideString; const aValue: WideString); dispid 1610743827;
    function GetVRDEProperty(const aKey: WideString): WideString; dispid 1610743828;
    procedure InternalAndReservedMethod1IVRDEServer; dispid 1610743829;
    procedure InternalAndReservedMethod2IVRDEServer; dispid 1610743830;
  end;

// *********************************************************************//
// Interface: IMediumAttachment
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CBC97CE0-DFAE-4C70-A6AA-769E5186363B}
// *********************************************************************//
  IMediumAttachment = interface(IDispatch)
    ['{CBC97CE0-DFAE-4C70-A6AA-769E5186363B}']
    function Get_Medium: IMedium; safecall;
    function Get_Controller: WideString; safecall;
    function Get_Port: Integer; safecall;
    function Get_Device: Integer; safecall;
    function Get_type_: DeviceType; safecall;
    function Get_Passthrough: Integer; safecall;
    function Get_TemporaryEject: Integer; safecall;
    function Get_IsEjected: Integer; safecall;
    function Get_NonRotational: Integer; safecall;
    function Get_Discard: Integer; safecall;
    function Get_HotPluggable: Integer; safecall;
    function Get_BandwidthGroup: IBandwidthGroup; safecall;
    function Get_InternalAndReservedAttribute1IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IMediumAttachment: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IMediumAttachment: LongWord; safecall;
    property Medium: IMedium read Get_Medium;
    property Controller: WideString read Get_Controller;
    property Port: Integer read Get_Port;
    property Device: Integer read Get_Device;
    property type_: DeviceType read Get_type_;
    property Passthrough: Integer read Get_Passthrough;
    property TemporaryEject: Integer read Get_TemporaryEject;
    property IsEjected: Integer read Get_IsEjected;
    property NonRotational: Integer read Get_NonRotational;
    property Discard: Integer read Get_Discard;
    property HotPluggable: Integer read Get_HotPluggable;
    property BandwidthGroup: IBandwidthGroup read Get_BandwidthGroup;
    property InternalAndReservedAttribute1IMediumAttachment: LongWord read Get_InternalAndReservedAttribute1IMediumAttachment;
    property InternalAndReservedAttribute2IMediumAttachment: LongWord read Get_InternalAndReservedAttribute2IMediumAttachment;
    property InternalAndReservedAttribute3IMediumAttachment: LongWord read Get_InternalAndReservedAttribute3IMediumAttachment;
    property InternalAndReservedAttribute4IMediumAttachment: LongWord read Get_InternalAndReservedAttribute4IMediumAttachment;
    property InternalAndReservedAttribute5IMediumAttachment: LongWord read Get_InternalAndReservedAttribute5IMediumAttachment;
    property InternalAndReservedAttribute6IMediumAttachment: LongWord read Get_InternalAndReservedAttribute6IMediumAttachment;
    property InternalAndReservedAttribute7IMediumAttachment: LongWord read Get_InternalAndReservedAttribute7IMediumAttachment;
    property InternalAndReservedAttribute8IMediumAttachment: LongWord read Get_InternalAndReservedAttribute8IMediumAttachment;
  end;

// *********************************************************************//
// DispIntf:  IMediumAttachmentDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CBC97CE0-DFAE-4C70-A6AA-769E5186363B}
// *********************************************************************//
  IMediumAttachmentDisp = dispinterface
    ['{CBC97CE0-DFAE-4C70-A6AA-769E5186363B}']
    property Medium: IMedium readonly dispid 1610743808;
    property Controller: WideString readonly dispid 1610743809;
    property Port: Integer readonly dispid 1610743810;
    property Device: Integer readonly dispid 1610743811;
    property type_: DeviceType readonly dispid 1610743812;
    property Passthrough: Integer readonly dispid 1610743813;
    property TemporaryEject: Integer readonly dispid 1610743814;
    property IsEjected: Integer readonly dispid 1610743815;
    property NonRotational: Integer readonly dispid 1610743816;
    property Discard: Integer readonly dispid 1610743817;
    property HotPluggable: Integer readonly dispid 1610743818;
    property BandwidthGroup: IBandwidthGroup readonly dispid 1610743819;
    property InternalAndReservedAttribute1IMediumAttachment: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute2IMediumAttachment: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute3IMediumAttachment: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute4IMediumAttachment: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute5IMediumAttachment: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute6IMediumAttachment: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute7IMediumAttachment: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute8IMediumAttachment: LongWord readonly dispid 1610743827;
  end;

// *********************************************************************//
// Interface: IBandwidthGroup
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {31587F93-2D12-4D7C-BA6D-CE51D0D5B265}
// *********************************************************************//
  IBandwidthGroup = interface(IDispatch)
    ['{31587F93-2D12-4D7C-BA6D-CE51D0D5B265}']
    function Get_Name: WideString; safecall;
    function Get_type_: BandwidthGroupType; safecall;
    function Get_Reference: LongWord; safecall;
    function Get_MaxBytesPerSec: Int64; safecall;
    procedure Set_MaxBytesPerSec(aMaxBytesPerSec: Int64); safecall;
    function Get_InternalAndReservedAttribute1IBandwidthGroup: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IBandwidthGroup: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IBandwidthGroup: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IBandwidthGroup: LongWord; safecall;
    property Name: WideString read Get_Name;
    property type_: BandwidthGroupType read Get_type_;
    property Reference: LongWord read Get_Reference;
    property MaxBytesPerSec: Int64 read Get_MaxBytesPerSec write Set_MaxBytesPerSec;
    property InternalAndReservedAttribute1IBandwidthGroup: LongWord read Get_InternalAndReservedAttribute1IBandwidthGroup;
    property InternalAndReservedAttribute2IBandwidthGroup: LongWord read Get_InternalAndReservedAttribute2IBandwidthGroup;
    property InternalAndReservedAttribute3IBandwidthGroup: LongWord read Get_InternalAndReservedAttribute3IBandwidthGroup;
    property InternalAndReservedAttribute4IBandwidthGroup: LongWord read Get_InternalAndReservedAttribute4IBandwidthGroup;
  end;

// *********************************************************************//
// DispIntf:  IBandwidthGroupDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {31587F93-2D12-4D7C-BA6D-CE51D0D5B265}
// *********************************************************************//
  IBandwidthGroupDisp = dispinterface
    ['{31587F93-2D12-4D7C-BA6D-CE51D0D5B265}']
    property Name: WideString readonly dispid 1610743808;
    property type_: BandwidthGroupType readonly dispid 1610743809;
    property Reference: LongWord readonly dispid 1610743810;
    property MaxBytesPerSec: Int64 dispid 1610743811;
    property InternalAndReservedAttribute1IBandwidthGroup: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute2IBandwidthGroup: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute3IBandwidthGroup: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute4IBandwidthGroup: LongWord readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IUSBController
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EE206A6E-7FF8-4A84-BD34-0C651E118BB5}
// *********************************************************************//
  IUSBController = interface(IDispatch)
    ['{EE206A6E-7FF8-4A84-BD34-0C651E118BB5}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_type_: USBControllerType; safecall;
    procedure Set_type_(aType: USBControllerType); safecall;
    function Get_USBStandard: Word; safecall;
    function Get_InternalAndReservedAttribute1IUSBController: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUSBController: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IUSBController: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IUSBController: LongWord; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property type_: USBControllerType read Get_type_ write Set_type_;
    property USBStandard: Word read Get_USBStandard;
    property InternalAndReservedAttribute1IUSBController: LongWord read Get_InternalAndReservedAttribute1IUSBController;
    property InternalAndReservedAttribute2IUSBController: LongWord read Get_InternalAndReservedAttribute2IUSBController;
    property InternalAndReservedAttribute3IUSBController: LongWord read Get_InternalAndReservedAttribute3IUSBController;
    property InternalAndReservedAttribute4IUSBController: LongWord read Get_InternalAndReservedAttribute4IUSBController;
  end;

// *********************************************************************//
// DispIntf:  IUSBControllerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EE206A6E-7FF8-4A84-BD34-0C651E118BB5}
// *********************************************************************//
  IUSBControllerDisp = dispinterface
    ['{EE206A6E-7FF8-4A84-BD34-0C651E118BB5}']
    property Name: WideString dispid 1610743808;
    property type_: USBControllerType dispid 1610743810;
    property USBStandard: Word readonly dispid 1610743812;
    property InternalAndReservedAttribute1IUSBController: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute2IUSBController: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute3IUSBController: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute4IUSBController: LongWord readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IUSBDeviceFilters
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9709DB9B-3346-49D6-8F1C-41B0C4784FF2}
// *********************************************************************//
  IUSBDeviceFilters = interface(IDispatch)
    ['{9709DB9B-3346-49D6-8F1C-41B0C4784FF2}']
    function Get_DeviceFilters: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IUSBDeviceFilters: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUSBDeviceFilters: LongWord; safecall;
    function CreateDeviceFilter(const aName: WideString): IUSBDeviceFilter; safecall;
    procedure InsertDeviceFilter(aPosition: LongWord; const aFilter: IUSBDeviceFilter); safecall;
    function RemoveDeviceFilter(aPosition: LongWord): IUSBDeviceFilter; safecall;
    procedure InternalAndReservedMethod1IUSBDeviceFilters; safecall;
    procedure InternalAndReservedMethod2IUSBDeviceFilters; safecall;
    property DeviceFilters: PSafeArray read Get_DeviceFilters;
    property InternalAndReservedAttribute1IUSBDeviceFilters: LongWord read Get_InternalAndReservedAttribute1IUSBDeviceFilters;
    property InternalAndReservedAttribute2IUSBDeviceFilters: LongWord read Get_InternalAndReservedAttribute2IUSBDeviceFilters;
  end;

// *********************************************************************//
// DispIntf:  IUSBDeviceFiltersDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9709DB9B-3346-49D6-8F1C-41B0C4784FF2}
// *********************************************************************//
  IUSBDeviceFiltersDisp = dispinterface
    ['{9709DB9B-3346-49D6-8F1C-41B0C4784FF2}']
    property DeviceFilters: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1IUSBDeviceFilters: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IUSBDeviceFilters: LongWord readonly dispid 1610743810;
    function CreateDeviceFilter(const aName: WideString): IUSBDeviceFilter; dispid 1610743811;
    procedure InsertDeviceFilter(aPosition: LongWord; const aFilter: IUSBDeviceFilter); dispid 1610743812;
    function RemoveDeviceFilter(aPosition: LongWord): IUSBDeviceFilter; dispid 1610743813;
    procedure InternalAndReservedMethod1IUSBDeviceFilters; dispid 1610743814;
    procedure InternalAndReservedMethod2IUSBDeviceFilters; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IAudioAdapter
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5155BFD3-7BA7-45A8-B26D-C91AE3754E37}
// *********************************************************************//
  IAudioAdapter = interface(IDispatch)
    ['{5155BFD3-7BA7-45A8-B26D-C91AE3754E37}']
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_EnabledIn: Integer; safecall;
    procedure Set_EnabledIn(aEnabledIn: Integer); safecall;
    function Get_EnabledOut: Integer; safecall;
    procedure Set_EnabledOut(aEnabledOut: Integer); safecall;
    function Get_AudioController: AudioControllerType; safecall;
    procedure Set_AudioController(aAudioController: AudioControllerType); safecall;
    function Get_AudioCodec: AudioCodecType; safecall;
    procedure Set_AudioCodec(aAudioCodec: AudioCodecType); safecall;
    function Get_AudioDriver: AudioDriverType; safecall;
    procedure Set_AudioDriver(aAudioDriver: AudioDriverType); safecall;
    function Get_PropertiesList: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IAudioAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IAudioAdapter: LongWord; safecall;
    procedure SetProperty(const aKey: WideString; const aValue: WideString); safecall;
    function GetProperty(const aKey: WideString): WideString; safecall;
    procedure InternalAndReservedMethod1IAudioAdapter; safecall;
    procedure InternalAndReservedMethod2IAudioAdapter; safecall;
    procedure InternalAndReservedMethod3IAudioAdapter; safecall;
    procedure InternalAndReservedMethod4IAudioAdapter; safecall;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property EnabledIn: Integer read Get_EnabledIn write Set_EnabledIn;
    property EnabledOut: Integer read Get_EnabledOut write Set_EnabledOut;
    property AudioController: AudioControllerType read Get_AudioController write Set_AudioController;
    property AudioCodec: AudioCodecType read Get_AudioCodec write Set_AudioCodec;
    property AudioDriver: AudioDriverType read Get_AudioDriver write Set_AudioDriver;
    property PropertiesList: PSafeArray read Get_PropertiesList;
    property InternalAndReservedAttribute1IAudioAdapter: LongWord read Get_InternalAndReservedAttribute1IAudioAdapter;
    property InternalAndReservedAttribute2IAudioAdapter: LongWord read Get_InternalAndReservedAttribute2IAudioAdapter;
    property InternalAndReservedAttribute3IAudioAdapter: LongWord read Get_InternalAndReservedAttribute3IAudioAdapter;
    property InternalAndReservedAttribute4IAudioAdapter: LongWord read Get_InternalAndReservedAttribute4IAudioAdapter;
    property InternalAndReservedAttribute5IAudioAdapter: LongWord read Get_InternalAndReservedAttribute5IAudioAdapter;
    property InternalAndReservedAttribute6IAudioAdapter: LongWord read Get_InternalAndReservedAttribute6IAudioAdapter;
    property InternalAndReservedAttribute7IAudioAdapter: LongWord read Get_InternalAndReservedAttribute7IAudioAdapter;
    property InternalAndReservedAttribute8IAudioAdapter: LongWord read Get_InternalAndReservedAttribute8IAudioAdapter;
  end;

// *********************************************************************//
// DispIntf:  IAudioAdapterDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5155BFD3-7BA7-45A8-B26D-C91AE3754E37}
// *********************************************************************//
  IAudioAdapterDisp = dispinterface
    ['{5155BFD3-7BA7-45A8-B26D-C91AE3754E37}']
    property Enabled: Integer dispid 1610743808;
    property EnabledIn: Integer dispid 1610743810;
    property EnabledOut: Integer dispid 1610743812;
    property AudioController: AudioControllerType dispid 1610743814;
    property AudioCodec: AudioCodecType dispid 1610743816;
    property AudioDriver: AudioDriverType dispid 1610743818;
    property PropertiesList: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743820;
    property InternalAndReservedAttribute1IAudioAdapter: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute2IAudioAdapter: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute3IAudioAdapter: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute4IAudioAdapter: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute5IAudioAdapter: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute6IAudioAdapter: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute7IAudioAdapter: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute8IAudioAdapter: LongWord readonly dispid 1610743828;
    procedure SetProperty(const aKey: WideString; const aValue: WideString); dispid 1610743829;
    function GetProperty(const aKey: WideString): WideString; dispid 1610743830;
    procedure InternalAndReservedMethod1IAudioAdapter; dispid 1610743831;
    procedure InternalAndReservedMethod2IAudioAdapter; dispid 1610743832;
    procedure InternalAndReservedMethod3IAudioAdapter; dispid 1610743833;
    procedure InternalAndReservedMethod4IAudioAdapter; dispid 1610743834;
  end;

// *********************************************************************//
// Interface: IStorageController
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DDCA7247-BF98-47FB-AB2F-B5177533F493}
// *********************************************************************//
  IStorageController = interface(IDispatch)
    ['{DDCA7247-BF98-47FB-AB2F-B5177533F493}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_MaxDevicesPerPortCount: LongWord; safecall;
    function Get_MinPortCount: LongWord; safecall;
    function Get_MaxPortCount: LongWord; safecall;
    function Get_Instance: LongWord; safecall;
    procedure Set_Instance(aInstance: LongWord); safecall;
    function Get_PortCount: LongWord; safecall;
    procedure Set_PortCount(aPortCount: LongWord); safecall;
    function Get_Bus: StorageBus; safecall;
    function Get_ControllerType: StorageControllerType; safecall;
    procedure Set_ControllerType(aControllerType: StorageControllerType); safecall;
    function Get_UseHostIOCache: Integer; safecall;
    procedure Set_UseHostIOCache(aUseHostIOCache: Integer); safecall;
    function Get_Bootable: Integer; safecall;
    function Get_InternalAndReservedAttribute1IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IStorageController: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IStorageController: LongWord; safecall;
    procedure InternalAndReservedMethod1IStorageController; safecall;
    procedure InternalAndReservedMethod2IStorageController; safecall;
    procedure InternalAndReservedMethod3IStorageController; safecall;
    procedure InternalAndReservedMethod4IStorageController; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property MaxDevicesPerPortCount: LongWord read Get_MaxDevicesPerPortCount;
    property MinPortCount: LongWord read Get_MinPortCount;
    property MaxPortCount: LongWord read Get_MaxPortCount;
    property Instance: LongWord read Get_Instance write Set_Instance;
    property PortCount: LongWord read Get_PortCount write Set_PortCount;
    property Bus: StorageBus read Get_Bus;
    property ControllerType: StorageControllerType read Get_ControllerType write Set_ControllerType;
    property UseHostIOCache: Integer read Get_UseHostIOCache write Set_UseHostIOCache;
    property Bootable: Integer read Get_Bootable;
    property InternalAndReservedAttribute1IStorageController: LongWord read Get_InternalAndReservedAttribute1IStorageController;
    property InternalAndReservedAttribute2IStorageController: LongWord read Get_InternalAndReservedAttribute2IStorageController;
    property InternalAndReservedAttribute3IStorageController: LongWord read Get_InternalAndReservedAttribute3IStorageController;
    property InternalAndReservedAttribute4IStorageController: LongWord read Get_InternalAndReservedAttribute4IStorageController;
    property InternalAndReservedAttribute5IStorageController: LongWord read Get_InternalAndReservedAttribute5IStorageController;
    property InternalAndReservedAttribute6IStorageController: LongWord read Get_InternalAndReservedAttribute6IStorageController;
    property InternalAndReservedAttribute7IStorageController: LongWord read Get_InternalAndReservedAttribute7IStorageController;
    property InternalAndReservedAttribute8IStorageController: LongWord read Get_InternalAndReservedAttribute8IStorageController;
  end;

// *********************************************************************//
// DispIntf:  IStorageControllerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DDCA7247-BF98-47FB-AB2F-B5177533F493}
// *********************************************************************//
  IStorageControllerDisp = dispinterface
    ['{DDCA7247-BF98-47FB-AB2F-B5177533F493}']
    property Name: WideString dispid 1610743808;
    property MaxDevicesPerPortCount: LongWord readonly dispid 1610743810;
    property MinPortCount: LongWord readonly dispid 1610743811;
    property MaxPortCount: LongWord readonly dispid 1610743812;
    property Instance: LongWord dispid 1610743813;
    property PortCount: LongWord dispid 1610743815;
    property Bus: StorageBus readonly dispid 1610743817;
    property ControllerType: StorageControllerType dispid 1610743818;
    property UseHostIOCache: Integer dispid 1610743820;
    property Bootable: Integer readonly dispid 1610743822;
    property InternalAndReservedAttribute1IStorageController: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IStorageController: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IStorageController: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IStorageController: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute5IStorageController: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute6IStorageController: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute7IStorageController: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute8IStorageController: LongWord readonly dispid 1610743830;
    procedure InternalAndReservedMethod1IStorageController; dispid 1610743831;
    procedure InternalAndReservedMethod2IStorageController; dispid 1610743832;
    procedure InternalAndReservedMethod3IStorageController; dispid 1610743833;
    procedure InternalAndReservedMethod4IStorageController; dispid 1610743834;
  end;

// *********************************************************************//
// Interface: ISnapshot
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6CC49055-DAD4-4496-85CF-3F76BCB3B5FA}
// *********************************************************************//
  ISnapshot = interface(IDispatch)
    ['{6CC49055-DAD4-4496-85CF-3F76BCB3B5FA}']
    function Get_Id: WideString; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const aDescription: WideString); safecall;
    function Get_TimeStamp: Int64; safecall;
    function Get_Online: Integer; safecall;
    function Get_Machine: IMachine; safecall;
    function Get_Parent: ISnapshot; safecall;
    function Get_Children: PSafeArray; safecall;
    function Get_ChildrenCount: LongWord; safecall;
    function Get_InternalAndReservedAttribute1ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ISnapshot: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ISnapshot: LongWord; safecall;
    procedure InternalAndReservedMethod1ISnapshot; safecall;
    procedure InternalAndReservedMethod2ISnapshot; safecall;
    procedure InternalAndReservedMethod3ISnapshot; safecall;
    procedure InternalAndReservedMethod4ISnapshot; safecall;
    property Id: WideString read Get_Id;
    property Name: WideString read Get_Name write Set_Name;
    property Description: WideString read Get_Description write Set_Description;
    property TimeStamp: Int64 read Get_TimeStamp;
    property Online: Integer read Get_Online;
    property Machine: IMachine read Get_Machine;
    property Parent: ISnapshot read Get_Parent;
    property Children: PSafeArray read Get_Children;
    property ChildrenCount: LongWord read Get_ChildrenCount;
    property InternalAndReservedAttribute1ISnapshot: LongWord read Get_InternalAndReservedAttribute1ISnapshot;
    property InternalAndReservedAttribute2ISnapshot: LongWord read Get_InternalAndReservedAttribute2ISnapshot;
    property InternalAndReservedAttribute3ISnapshot: LongWord read Get_InternalAndReservedAttribute3ISnapshot;
    property InternalAndReservedAttribute4ISnapshot: LongWord read Get_InternalAndReservedAttribute4ISnapshot;
    property InternalAndReservedAttribute5ISnapshot: LongWord read Get_InternalAndReservedAttribute5ISnapshot;
    property InternalAndReservedAttribute6ISnapshot: LongWord read Get_InternalAndReservedAttribute6ISnapshot;
    property InternalAndReservedAttribute7ISnapshot: LongWord read Get_InternalAndReservedAttribute7ISnapshot;
    property InternalAndReservedAttribute8ISnapshot: LongWord read Get_InternalAndReservedAttribute8ISnapshot;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6CC49055-DAD4-4496-85CF-3F76BCB3B5FA}
// *********************************************************************//
  ISnapshotDisp = dispinterface
    ['{6CC49055-DAD4-4496-85CF-3F76BCB3B5FA}']
    property Id: WideString readonly dispid 1610743808;
    property Name: WideString dispid 1610743809;
    property Description: WideString dispid 1610743811;
    property TimeStamp: Int64 readonly dispid 1610743813;
    property Online: Integer readonly dispid 1610743814;
    property Machine: IMachine readonly dispid 1610743815;
    property Parent: ISnapshot readonly dispid 1610743816;
    property Children: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743817;
    property ChildrenCount: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute1ISnapshot: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute2ISnapshot: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute3ISnapshot: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute4ISnapshot: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute5ISnapshot: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute6ISnapshot: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute7ISnapshot: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute8ISnapshot: LongWord readonly dispid 1610743826;
    procedure InternalAndReservedMethod1ISnapshot; dispid 1610743827;
    procedure InternalAndReservedMethod2ISnapshot; dispid 1610743828;
    procedure InternalAndReservedMethod3ISnapshot; dispid 1610743829;
    procedure InternalAndReservedMethod4ISnapshot; dispid 1610743830;
  end;

// *********************************************************************//
// Interface: ISharedFolder
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9622225A-5409-414B-BD16-77DF7BA3451E}
// *********************************************************************//
  ISharedFolder = interface(IDispatch)
    ['{9622225A-5409-414B-BD16-77DF7BA3451E}']
    function Get_Name: WideString; safecall;
    function Get_HostPath: WideString; safecall;
    function Get_Accessible: Integer; safecall;
    function Get_Writable: Integer; safecall;
    procedure Set_Writable(aWritable: Integer); safecall;
    function Get_AutoMount: Integer; safecall;
    procedure Set_AutoMount(aAutoMount: Integer); safecall;
    function Get_AutoMountPoint: WideString; safecall;
    procedure Set_AutoMountPoint(const aAutoMountPoint: WideString); safecall;
    function Get_LastAccessError: WideString; safecall;
    function Get_InternalAndReservedAttribute1ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ISharedFolder: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ISharedFolder: LongWord; safecall;
    property Name: WideString read Get_Name;
    property HostPath: WideString read Get_HostPath;
    property Accessible: Integer read Get_Accessible;
    property Writable: Integer read Get_Writable write Set_Writable;
    property AutoMount: Integer read Get_AutoMount write Set_AutoMount;
    property AutoMountPoint: WideString read Get_AutoMountPoint write Set_AutoMountPoint;
    property LastAccessError: WideString read Get_LastAccessError;
    property InternalAndReservedAttribute1ISharedFolder: LongWord read Get_InternalAndReservedAttribute1ISharedFolder;
    property InternalAndReservedAttribute2ISharedFolder: LongWord read Get_InternalAndReservedAttribute2ISharedFolder;
    property InternalAndReservedAttribute3ISharedFolder: LongWord read Get_InternalAndReservedAttribute3ISharedFolder;
    property InternalAndReservedAttribute4ISharedFolder: LongWord read Get_InternalAndReservedAttribute4ISharedFolder;
    property InternalAndReservedAttribute5ISharedFolder: LongWord read Get_InternalAndReservedAttribute5ISharedFolder;
    property InternalAndReservedAttribute6ISharedFolder: LongWord read Get_InternalAndReservedAttribute6ISharedFolder;
    property InternalAndReservedAttribute7ISharedFolder: LongWord read Get_InternalAndReservedAttribute7ISharedFolder;
    property InternalAndReservedAttribute8ISharedFolder: LongWord read Get_InternalAndReservedAttribute8ISharedFolder;
  end;

// *********************************************************************//
// DispIntf:  ISharedFolderDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9622225A-5409-414B-BD16-77DF7BA3451E}
// *********************************************************************//
  ISharedFolderDisp = dispinterface
    ['{9622225A-5409-414B-BD16-77DF7BA3451E}']
    property Name: WideString readonly dispid 1610743808;
    property HostPath: WideString readonly dispid 1610743809;
    property Accessible: Integer readonly dispid 1610743810;
    property Writable: Integer dispid 1610743811;
    property AutoMount: Integer dispid 1610743813;
    property AutoMountPoint: WideString dispid 1610743815;
    property LastAccessError: WideString readonly dispid 1610743817;
    property InternalAndReservedAttribute1ISharedFolder: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute2ISharedFolder: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute3ISharedFolder: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute4ISharedFolder: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute5ISharedFolder: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute6ISharedFolder: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute7ISharedFolder: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute8ISharedFolder: LongWord readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IPCIDeviceAttachment
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {91F33D6F-E621-4F70-A77E-15F0E3C714D5}
// *********************************************************************//
  IPCIDeviceAttachment = interface(IDispatch)
    ['{91F33D6F-E621-4F70-A77E-15F0E3C714D5}']
    function Get_Name: WideString; safecall;
    function Get_IsPhysicalDevice: Integer; safecall;
    function Get_HostAddress: Integer; safecall;
    function Get_GuestAddress: Integer; safecall;
    property Name: WideString read Get_Name;
    property IsPhysicalDevice: Integer read Get_IsPhysicalDevice;
    property HostAddress: Integer read Get_HostAddress;
    property GuestAddress: Integer read Get_GuestAddress;
  end;

// *********************************************************************//
// DispIntf:  IPCIDeviceAttachmentDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {91F33D6F-E621-4F70-A77E-15F0E3C714D5}
// *********************************************************************//
  IPCIDeviceAttachmentDisp = dispinterface
    ['{91F33D6F-E621-4F70-A77E-15F0E3C714D5}']
    property Name: WideString readonly dispid 1610743808;
    property IsPhysicalDevice: Integer readonly dispid 1610743809;
    property HostAddress: Integer readonly dispid 1610743810;
    property GuestAddress: Integer readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IBandwidthControl
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {48C7F4C0-C9D6-4742-957C-A6FD52E8C4AE}
// *********************************************************************//
  IBandwidthControl = interface(IDispatch)
    ['{48C7F4C0-C9D6-4742-957C-A6FD52E8C4AE}']
    function Get_NumGroups: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IBandwidthControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IBandwidthControl: LongWord; safecall;
    procedure CreateBandwidthGroup(const aName: WideString; aType: BandwidthGroupType; 
                                   aMaxBytesPerSec: Int64); safecall;
    procedure DeleteBandwidthGroup(const aName: WideString); safecall;
    function GetBandwidthGroup(const aName: WideString): IBandwidthGroup; safecall;
    function GetAllBandwidthGroups: PSafeArray; safecall;
    procedure InternalAndReservedMethod1IBandwidthControl; safecall;
    procedure InternalAndReservedMethod2IBandwidthControl; safecall;
    property NumGroups: LongWord read Get_NumGroups;
    property InternalAndReservedAttribute1IBandwidthControl: LongWord read Get_InternalAndReservedAttribute1IBandwidthControl;
    property InternalAndReservedAttribute2IBandwidthControl: LongWord read Get_InternalAndReservedAttribute2IBandwidthControl;
  end;

// *********************************************************************//
// DispIntf:  IBandwidthControlDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {48C7F4C0-C9D6-4742-957C-A6FD52E8C4AE}
// *********************************************************************//
  IBandwidthControlDisp = dispinterface
    ['{48C7F4C0-C9D6-4742-957C-A6FD52E8C4AE}']
    property NumGroups: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute1IBandwidthControl: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IBandwidthControl: LongWord readonly dispid 1610743810;
    procedure CreateBandwidthGroup(const aName: WideString; aType: BandwidthGroupType; 
                                   aMaxBytesPerSec: Int64); dispid 1610743811;
    procedure DeleteBandwidthGroup(const aName: WideString); dispid 1610743812;
    function GetBandwidthGroup(const aName: WideString): IBandwidthGroup; dispid 1610743813;
    function GetAllBandwidthGroups: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743814;
    procedure InternalAndReservedMethod1IBandwidthControl; dispid 1610743815;
    procedure InternalAndReservedMethod2IBandwidthControl; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: ISession
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C0447716-FF5A-4795-B57A-ECD5FFFA18A4}
// *********************************************************************//
  ISession = interface(IDispatch)
    ['{C0447716-FF5A-4795-B57A-ECD5FFFA18A4}']
    function Get_State: SessionState; safecall;
    function Get_type_: SessionType; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_Machine: IMachine; safecall;
    function Get_Console: IConsole; safecall;
    function Get_InternalAndReservedAttribute1ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ISession: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ISession: LongWord; safecall;
    procedure UnlockMachine; safecall;
    procedure InternalAndReservedMethod1ISession; safecall;
    procedure InternalAndReservedMethod2ISession; safecall;
    procedure InternalAndReservedMethod3ISession; safecall;
    procedure InternalAndReservedMethod4ISession; safecall;
    property State: SessionState read Get_State;
    property type_: SessionType read Get_type_;
    property Name: WideString read Get_Name write Set_Name;
    property Machine: IMachine read Get_Machine;
    property Console: IConsole read Get_Console;
    property InternalAndReservedAttribute1ISession: LongWord read Get_InternalAndReservedAttribute1ISession;
    property InternalAndReservedAttribute2ISession: LongWord read Get_InternalAndReservedAttribute2ISession;
    property InternalAndReservedAttribute3ISession: LongWord read Get_InternalAndReservedAttribute3ISession;
    property InternalAndReservedAttribute4ISession: LongWord read Get_InternalAndReservedAttribute4ISession;
    property InternalAndReservedAttribute5ISession: LongWord read Get_InternalAndReservedAttribute5ISession;
    property InternalAndReservedAttribute6ISession: LongWord read Get_InternalAndReservedAttribute6ISession;
    property InternalAndReservedAttribute7ISession: LongWord read Get_InternalAndReservedAttribute7ISession;
    property InternalAndReservedAttribute8ISession: LongWord read Get_InternalAndReservedAttribute8ISession;
  end;

// *********************************************************************//
// DispIntf:  ISessionDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C0447716-FF5A-4795-B57A-ECD5FFFA18A4}
// *********************************************************************//
  ISessionDisp = dispinterface
    ['{C0447716-FF5A-4795-B57A-ECD5FFFA18A4}']
    property State: SessionState readonly dispid 1610743808;
    property type_: SessionType readonly dispid 1610743809;
    property Name: WideString dispid 1610743810;
    property Machine: IMachine readonly dispid 1610743812;
    property Console: IConsole readonly dispid 1610743813;
    property InternalAndReservedAttribute1ISession: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute2ISession: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute3ISession: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute4ISession: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute5ISession: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute6ISession: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute7ISession: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute8ISession: LongWord readonly dispid 1610743821;
    procedure UnlockMachine; dispid 1610743822;
    procedure InternalAndReservedMethod1ISession; dispid 1610743823;
    procedure InternalAndReservedMethod2ISession; dispid 1610743824;
    procedure InternalAndReservedMethod3ISession; dispid 1610743825;
    procedure InternalAndReservedMethod4ISession; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IConsole
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {872DA645-4A9B-1727-BEE2-5585105B9EED}
// *********************************************************************//
  IConsole = interface(IDispatch)
    ['{872DA645-4A9B-1727-BEE2-5585105B9EED}']
    function Get_Machine: IMachine; safecall;
    function Get_State: MachineState; safecall;
    function Get_Guest: IGuest; safecall;
    function Get_Keyboard: IKeyboard; safecall;
    function Get_Mouse: IMouse; safecall;
    function Get_Display: IDisplay; safecall;
    function Get_Debugger: IMachineDebugger; safecall;
    function Get_USBDevices: PSafeArray; safecall;
    function Get_RemoteUSBDevices: PSafeArray; safecall;
    function Get_SharedFolders: PSafeArray; safecall;
    function Get_VRDEServerInfo: IVRDEServerInfo; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_AttachedPCIDevices: PSafeArray; safecall;
    function Get_UseHostClipboard: Integer; safecall;
    procedure Set_UseHostClipboard(aUseHostClipboard: Integer); safecall;
    function Get_EmulatedUSB: IEmulatedUSB; safecall;
    function Get_InternalAndReservedAttribute1IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IConsole: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IConsole: LongWord; safecall;
    function PowerUp: IProgress; safecall;
    function PowerUpPaused: IProgress; safecall;
    function PowerDown: IProgress; safecall;
    procedure Reset; safecall;
    procedure Pause; safecall;
    procedure Resume; safecall;
    procedure PowerButton; safecall;
    procedure SleepButton; safecall;
    function GetPowerButtonHandled: Integer; safecall;
    function GetGuestEnteredACPIMode: Integer; safecall;
    function GetDeviceActivity(aType: PSafeArray): PSafeArray; safecall;
    procedure AttachUSBDevice(const aId: WideString; const aCaptureFilename: WideString); safecall;
    function DetachUSBDevice(const aId: WideString): IUSBDevice; safecall;
    function FindUSBDeviceByAddress(const aName: WideString): IUSBDevice; safecall;
    function FindUSBDeviceById(const aId: WideString): IUSBDevice; safecall;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); safecall;
    procedure RemoveSharedFolder(const aName: WideString); safecall;
    function Teleport(const aHostname: WideString; aTcpport: LongWord; const aPassword: WideString; 
                      aMaxDowntime: LongWord): IProgress; safecall;
    procedure AddDiskEncryptionPassword(const aId: WideString; const aPassword: WideString; 
                                        aClearOnSuspend: Integer); safecall;
    procedure AddDiskEncryptionPasswords(aIds: PSafeArray; aPasswords: PSafeArray; 
                                         aClearOnSuspend: Integer); safecall;
    procedure RemoveDiskEncryptionPassword(const aId: WideString); safecall;
    procedure ClearAllDiskEncryptionPasswords; safecall;
    procedure InternalAndReservedMethod1IConsole; safecall;
    procedure InternalAndReservedMethod2IConsole; safecall;
    procedure InternalAndReservedMethod3IConsole; safecall;
    procedure InternalAndReservedMethod4IConsole; safecall;
    procedure InternalAndReservedMethod5IConsole; safecall;
    procedure InternalAndReservedMethod6IConsole; safecall;
    procedure InternalAndReservedMethod7IConsole; safecall;
    procedure InternalAndReservedMethod8IConsole; safecall;
    property Machine: IMachine read Get_Machine;
    property State: MachineState read Get_State;
    property Guest: IGuest read Get_Guest;
    property Keyboard: IKeyboard read Get_Keyboard;
    property Mouse: IMouse read Get_Mouse;
    property Display: IDisplay read Get_Display;
    property Debugger: IMachineDebugger read Get_Debugger;
    property USBDevices: PSafeArray read Get_USBDevices;
    property RemoteUSBDevices: PSafeArray read Get_RemoteUSBDevices;
    property SharedFolders: PSafeArray read Get_SharedFolders;
    property VRDEServerInfo: IVRDEServerInfo read Get_VRDEServerInfo;
    property EventSource: IEventSource read Get_EventSource;
    property AttachedPCIDevices: PSafeArray read Get_AttachedPCIDevices;
    property UseHostClipboard: Integer read Get_UseHostClipboard write Set_UseHostClipboard;
    property EmulatedUSB: IEmulatedUSB read Get_EmulatedUSB;
    property InternalAndReservedAttribute1IConsole: LongWord read Get_InternalAndReservedAttribute1IConsole;
    property InternalAndReservedAttribute2IConsole: LongWord read Get_InternalAndReservedAttribute2IConsole;
    property InternalAndReservedAttribute3IConsole: LongWord read Get_InternalAndReservedAttribute3IConsole;
    property InternalAndReservedAttribute4IConsole: LongWord read Get_InternalAndReservedAttribute4IConsole;
    property InternalAndReservedAttribute5IConsole: LongWord read Get_InternalAndReservedAttribute5IConsole;
    property InternalAndReservedAttribute6IConsole: LongWord read Get_InternalAndReservedAttribute6IConsole;
    property InternalAndReservedAttribute7IConsole: LongWord read Get_InternalAndReservedAttribute7IConsole;
    property InternalAndReservedAttribute8IConsole: LongWord read Get_InternalAndReservedAttribute8IConsole;
  end;

// *********************************************************************//
// DispIntf:  IConsoleDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {872DA645-4A9B-1727-BEE2-5585105B9EED}
// *********************************************************************//
  IConsoleDisp = dispinterface
    ['{872DA645-4A9B-1727-BEE2-5585105B9EED}']
    property Machine: IMachine readonly dispid 1610743808;
    property State: MachineState readonly dispid 1610743809;
    property Guest: IGuest readonly dispid 1610743810;
    property Keyboard: IKeyboard readonly dispid 1610743811;
    property Mouse: IMouse readonly dispid 1610743812;
    property Display: IDisplay readonly dispid 1610743813;
    property Debugger: IMachineDebugger readonly dispid 1610743814;
    property USBDevices: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743815;
    property RemoteUSBDevices: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743816;
    property SharedFolders: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743817;
    property VRDEServerInfo: IVRDEServerInfo readonly dispid 1610743818;
    property EventSource: IEventSource readonly dispid 1610743819;
    property AttachedPCIDevices: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743820;
    property UseHostClipboard: Integer dispid 1610743821;
    property EmulatedUSB: IEmulatedUSB readonly dispid 1610743823;
    property InternalAndReservedAttribute1IConsole: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute2IConsole: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute3IConsole: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute4IConsole: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute5IConsole: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute6IConsole: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute7IConsole: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute8IConsole: LongWord readonly dispid 1610743831;
    function PowerUp: IProgress; dispid 1610743832;
    function PowerUpPaused: IProgress; dispid 1610743833;
    function PowerDown: IProgress; dispid 1610743834;
    procedure Reset; dispid 1610743835;
    procedure Pause; dispid 1610743836;
    procedure Resume; dispid 1610743837;
    procedure PowerButton; dispid 1610743838;
    procedure SleepButton; dispid 1610743839;
    function GetPowerButtonHandled: Integer; dispid 1610743840;
    function GetGuestEnteredACPIMode: Integer; dispid 1610743841;
    function GetDeviceActivity(aType: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743842;
    procedure AttachUSBDevice(const aId: WideString; const aCaptureFilename: WideString); dispid 1610743843;
    function DetachUSBDevice(const aId: WideString): IUSBDevice; dispid 1610743844;
    function FindUSBDeviceByAddress(const aName: WideString): IUSBDevice; dispid 1610743845;
    function FindUSBDeviceById(const aId: WideString): IUSBDevice; dispid 1610743846;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString); dispid 1610743847;
    procedure RemoveSharedFolder(const aName: WideString); dispid 1610743848;
    function Teleport(const aHostname: WideString; aTcpport: LongWord; const aPassword: WideString; 
                      aMaxDowntime: LongWord): IProgress; dispid 1610743849;
    procedure AddDiskEncryptionPassword(const aId: WideString; const aPassword: WideString; 
                                        aClearOnSuspend: Integer); dispid 1610743850;
    procedure AddDiskEncryptionPasswords(aIds: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                         aPasswords: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                         aClearOnSuspend: Integer); dispid 1610743851;
    procedure RemoveDiskEncryptionPassword(const aId: WideString); dispid 1610743852;
    procedure ClearAllDiskEncryptionPasswords; dispid 1610743853;
    procedure InternalAndReservedMethod1IConsole; dispid 1610743854;
    procedure InternalAndReservedMethod2IConsole; dispid 1610743855;
    procedure InternalAndReservedMethod3IConsole; dispid 1610743856;
    procedure InternalAndReservedMethod4IConsole; dispid 1610743857;
    procedure InternalAndReservedMethod5IConsole; dispid 1610743858;
    procedure InternalAndReservedMethod6IConsole; dispid 1610743859;
    procedure InternalAndReservedMethod7IConsole; dispid 1610743860;
    procedure InternalAndReservedMethod8IConsole; dispid 1610743861;
  end;

// *********************************************************************//
// Interface: IGuest
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {13A11514-402E-022E-6180-C3944DE3F9C8}
// *********************************************************************//
  IGuest = interface(IDispatch)
    ['{13A11514-402E-022E-6180-C3944DE3F9C8}']
    function Get_OSTypeId: WideString; safecall;
    function Get_AdditionsRunLevel: AdditionsRunLevelType; safecall;
    function Get_AdditionsVersion: WideString; safecall;
    function Get_AdditionsRevision: LongWord; safecall;
    function Get_DnDSource: IGuestDnDSource; safecall;
    function Get_DnDTarget: IGuestDnDTarget; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_Facilities: PSafeArray; safecall;
    function Get_Sessions: PSafeArray; safecall;
    function Get_MemoryBalloonSize: LongWord; safecall;
    procedure Set_MemoryBalloonSize(aMemoryBalloonSize: LongWord); safecall;
    function Get_StatisticsUpdateInterval: LongWord; safecall;
    procedure Set_StatisticsUpdateInterval(aStatisticsUpdateInterval: LongWord); safecall;
    function Get_InternalAndReservedAttribute1IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute13IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute14IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute15IGuest: LongWord; safecall;
    function Get_InternalAndReservedAttribute16IGuest: LongWord; safecall;
    procedure InternalGetStatistics(out aCpuUser: LongWord; out aCpuKernel: LongWord; 
                                    out aCpuIdle: LongWord; out aMemTotal: LongWord; 
                                    out aMemFree: LongWord; out aMemBalloon: LongWord; 
                                    out aMemShared: LongWord; out aMemCache: LongWord; 
                                    out aPagedTotal: LongWord; out aMemAllocTotal: LongWord; 
                                    out aMemFreeTotal: LongWord; out aMemBalloonTotal: LongWord; 
                                    out aMemSharedTotal: LongWord); safecall;
    function GetFacilityStatus(aFacility: AdditionsFacilityType; out aTimeStamp: Int64): AdditionsFacilityStatus; safecall;
    function GetAdditionsStatus(aLevel: AdditionsRunLevelType): Integer; safecall;
    procedure SetCredentials(const aUserName: WideString; const aPassword: WideString; 
                             const aDomain: WideString; aAllowInteractiveLogon: Integer); safecall;
    function CreateSession(const aUser: WideString; const aPassword: WideString; 
                           const aDomain: WideString; const aSessionName: WideString): IGuestSession; safecall;
    function FindSession(const aSessionName: WideString): PSafeArray; safecall;
    function UpdateGuestAdditions(const aSource: WideString; aArguments: PSafeArray; 
                                  aFlags: PSafeArray): IProgress; safecall;
    procedure InternalAndReservedMethod1IGuest; safecall;
    procedure InternalAndReservedMethod2IGuest; safecall;
    procedure InternalAndReservedMethod3IGuest; safecall;
    procedure InternalAndReservedMethod4IGuest; safecall;
    procedure InternalAndReservedMethod5IGuest; safecall;
    procedure InternalAndReservedMethod6IGuest; safecall;
    procedure InternalAndReservedMethod7IGuest; safecall;
    procedure InternalAndReservedMethod8IGuest; safecall;
    property OSTypeId: WideString read Get_OSTypeId;
    property AdditionsRunLevel: AdditionsRunLevelType read Get_AdditionsRunLevel;
    property AdditionsVersion: WideString read Get_AdditionsVersion;
    property AdditionsRevision: LongWord read Get_AdditionsRevision;
    property DnDSource: IGuestDnDSource read Get_DnDSource;
    property DnDTarget: IGuestDnDTarget read Get_DnDTarget;
    property EventSource: IEventSource read Get_EventSource;
    property Facilities: PSafeArray read Get_Facilities;
    property Sessions: PSafeArray read Get_Sessions;
    property MemoryBalloonSize: LongWord read Get_MemoryBalloonSize write Set_MemoryBalloonSize;
    property StatisticsUpdateInterval: LongWord read Get_StatisticsUpdateInterval write Set_StatisticsUpdateInterval;
    property InternalAndReservedAttribute1IGuest: LongWord read Get_InternalAndReservedAttribute1IGuest;
    property InternalAndReservedAttribute2IGuest: LongWord read Get_InternalAndReservedAttribute2IGuest;
    property InternalAndReservedAttribute3IGuest: LongWord read Get_InternalAndReservedAttribute3IGuest;
    property InternalAndReservedAttribute4IGuest: LongWord read Get_InternalAndReservedAttribute4IGuest;
    property InternalAndReservedAttribute5IGuest: LongWord read Get_InternalAndReservedAttribute5IGuest;
    property InternalAndReservedAttribute6IGuest: LongWord read Get_InternalAndReservedAttribute6IGuest;
    property InternalAndReservedAttribute7IGuest: LongWord read Get_InternalAndReservedAttribute7IGuest;
    property InternalAndReservedAttribute8IGuest: LongWord read Get_InternalAndReservedAttribute8IGuest;
    property InternalAndReservedAttribute9IGuest: LongWord read Get_InternalAndReservedAttribute9IGuest;
    property InternalAndReservedAttribute10IGuest: LongWord read Get_InternalAndReservedAttribute10IGuest;
    property InternalAndReservedAttribute11IGuest: LongWord read Get_InternalAndReservedAttribute11IGuest;
    property InternalAndReservedAttribute12IGuest: LongWord read Get_InternalAndReservedAttribute12IGuest;
    property InternalAndReservedAttribute13IGuest: LongWord read Get_InternalAndReservedAttribute13IGuest;
    property InternalAndReservedAttribute14IGuest: LongWord read Get_InternalAndReservedAttribute14IGuest;
    property InternalAndReservedAttribute15IGuest: LongWord read Get_InternalAndReservedAttribute15IGuest;
    property InternalAndReservedAttribute16IGuest: LongWord read Get_InternalAndReservedAttribute16IGuest;
  end;

// *********************************************************************//
// DispIntf:  IGuestDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {13A11514-402E-022E-6180-C3944DE3F9C8}
// *********************************************************************//
  IGuestDisp = dispinterface
    ['{13A11514-402E-022E-6180-C3944DE3F9C8}']
    property OSTypeId: WideString readonly dispid 1610743808;
    property AdditionsRunLevel: AdditionsRunLevelType readonly dispid 1610743809;
    property AdditionsVersion: WideString readonly dispid 1610743810;
    property AdditionsRevision: LongWord readonly dispid 1610743811;
    property DnDSource: IGuestDnDSource readonly dispid 1610743812;
    property DnDTarget: IGuestDnDTarget readonly dispid 1610743813;
    property EventSource: IEventSource readonly dispid 1610743814;
    property Facilities: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743815;
    property Sessions: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743816;
    property MemoryBalloonSize: LongWord dispid 1610743817;
    property StatisticsUpdateInterval: LongWord dispid 1610743819;
    property InternalAndReservedAttribute1IGuest: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute2IGuest: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute3IGuest: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute4IGuest: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute5IGuest: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute6IGuest: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute7IGuest: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute8IGuest: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute9IGuest: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute10IGuest: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute11IGuest: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute12IGuest: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute13IGuest: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute14IGuest: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute15IGuest: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute16IGuest: LongWord readonly dispid 1610743836;
    procedure InternalGetStatistics(out aCpuUser: LongWord; out aCpuKernel: LongWord; 
                                    out aCpuIdle: LongWord; out aMemTotal: LongWord; 
                                    out aMemFree: LongWord; out aMemBalloon: LongWord; 
                                    out aMemShared: LongWord; out aMemCache: LongWord; 
                                    out aPagedTotal: LongWord; out aMemAllocTotal: LongWord; 
                                    out aMemFreeTotal: LongWord; out aMemBalloonTotal: LongWord; 
                                    out aMemSharedTotal: LongWord); dispid 1610743837;
    function GetFacilityStatus(aFacility: AdditionsFacilityType; out aTimeStamp: Int64): AdditionsFacilityStatus; dispid 1610743838;
    function GetAdditionsStatus(aLevel: AdditionsRunLevelType): Integer; dispid 1610743839;
    procedure SetCredentials(const aUserName: WideString; const aPassword: WideString; 
                             const aDomain: WideString; aAllowInteractiveLogon: Integer); dispid 1610743840;
    function CreateSession(const aUser: WideString; const aPassword: WideString; 
                           const aDomain: WideString; const aSessionName: WideString): IGuestSession; dispid 1610743841;
    function FindSession(const aSessionName: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743842;
    function UpdateGuestAdditions(const aSource: WideString; 
                                  aArguments: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                  aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743843;
    procedure InternalAndReservedMethod1IGuest; dispid 1610743844;
    procedure InternalAndReservedMethod2IGuest; dispid 1610743845;
    procedure InternalAndReservedMethod3IGuest; dispid 1610743846;
    procedure InternalAndReservedMethod4IGuest; dispid 1610743847;
    procedure InternalAndReservedMethod5IGuest; dispid 1610743848;
    procedure InternalAndReservedMethod6IGuest; dispid 1610743849;
    procedure InternalAndReservedMethod7IGuest; dispid 1610743850;
    procedure InternalAndReservedMethod8IGuest; dispid 1610743851;
  end;

// *********************************************************************//
// Interface: IDnDBase
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4132147B-42F8-CD96-7570-6A8800E3342C}
// *********************************************************************//
  IDnDBase = interface(IDispatch)
    ['{4132147B-42F8-CD96-7570-6A8800E3342C}']
    function Get_Formats: PSafeArray; safecall;
    function Get_ProtocolVersion: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IDnDBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDnDBase: LongWord; safecall;
    function IsFormatSupported(const aFormat: WideString): Integer; safecall;
    procedure AddFormats(aFormats: PSafeArray); safecall;
    procedure RemoveFormats(aFormats: PSafeArray); safecall;
    procedure InternalAndReservedMethod1IDnDBase; safecall;
    property Formats: PSafeArray read Get_Formats;
    property ProtocolVersion: LongWord read Get_ProtocolVersion;
    property InternalAndReservedAttribute1IDnDBase: LongWord read Get_InternalAndReservedAttribute1IDnDBase;
    property InternalAndReservedAttribute2IDnDBase: LongWord read Get_InternalAndReservedAttribute2IDnDBase;
  end;

// *********************************************************************//
// DispIntf:  IDnDBaseDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4132147B-42F8-CD96-7570-6A8800E3342C}
// *********************************************************************//
  IDnDBaseDisp = dispinterface
    ['{4132147B-42F8-CD96-7570-6A8800E3342C}']
    property Formats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property ProtocolVersion: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDnDBase: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDnDBase: LongWord readonly dispid 1610743811;
    function IsFormatSupported(const aFormat: WideString): Integer; dispid 1610743812;
    procedure AddFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure RemoveFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure InternalAndReservedMethod1IDnDBase; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IDnDSource
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D23A9CA3-42DA-C94B-8AEC-21968E08355D}
// *********************************************************************//
  IDnDSource = interface(IDnDBase)
    ['{D23A9CA3-42DA-C94B-8AEC-21968E08355D}']
    function Get_InternalAndReservedAttribute1IDnDSource: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDnDSource: LongWord; safecall;
    function DragIsPending(aScreenId: LongWord; out aFormats: PSafeArray; 
                           out aAllowedActions: PSafeArray): DnDAction; safecall;
    function Drop(const aFormat: WideString; aAction: DnDAction): IProgress; safecall;
    function ReceiveData: PSafeArray; safecall;
    procedure InternalAndReservedMethod1IDnDSource; safecall;
    property InternalAndReservedAttribute1IDnDSource: LongWord read Get_InternalAndReservedAttribute1IDnDSource;
    property InternalAndReservedAttribute2IDnDSource: LongWord read Get_InternalAndReservedAttribute2IDnDSource;
  end;

// *********************************************************************//
// DispIntf:  IDnDSourceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D23A9CA3-42DA-C94B-8AEC-21968E08355D}
// *********************************************************************//
  IDnDSourceDisp = dispinterface
    ['{D23A9CA3-42DA-C94B-8AEC-21968E08355D}']
    property InternalAndReservedAttribute1IDnDSource: LongWord readonly dispid 1610809344;
    property InternalAndReservedAttribute2IDnDSource: LongWord readonly dispid 1610809345;
    function DragIsPending(aScreenId: LongWord; out aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           out aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809346;
    function Drop(const aFormat: WideString; aAction: DnDAction): IProgress; dispid 1610809347;
    function ReceiveData: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809348;
    procedure InternalAndReservedMethod1IDnDSource; dispid 1610809349;
    property Formats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property ProtocolVersion: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDnDBase: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDnDBase: LongWord readonly dispid 1610743811;
    function IsFormatSupported(const aFormat: WideString): Integer; dispid 1610743812;
    procedure AddFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure RemoveFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure InternalAndReservedMethod1IDnDBase; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IGuestDnDSource
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DEDFB5D9-4C1B-EDF7-FDF3-C1BE6827DC28}
// *********************************************************************//
  IGuestDnDSource = interface(IDnDSource)
    ['{DEDFB5D9-4C1B-EDF7-FDF3-C1BE6827DC28}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestDnDSourceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DEDFB5D9-4C1B-EDF7-FDF3-C1BE6827DC28}
// *********************************************************************//
  IGuestDnDSourceDisp = dispinterface
    ['{DEDFB5D9-4C1B-EDF7-FDF3-C1BE6827DC28}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property InternalAndReservedAttribute1IDnDSource: LongWord readonly dispid 1610809344;
    property InternalAndReservedAttribute2IDnDSource: LongWord readonly dispid 1610809345;
    function DragIsPending(aScreenId: LongWord; out aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           out aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809346;
    function Drop(const aFormat: WideString; aAction: DnDAction): IProgress; dispid 1610809347;
    function ReceiveData: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809348;
    procedure InternalAndReservedMethod1IDnDSource; dispid 1610809349;
    property Formats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property ProtocolVersion: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDnDBase: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDnDBase: LongWord readonly dispid 1610743811;
    function IsFormatSupported(const aFormat: WideString): Integer; dispid 1610743812;
    procedure AddFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure RemoveFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure InternalAndReservedMethod1IDnDBase; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IDnDTarget
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FF5BEFC3-4BA3-7903-2AA4-43988BA11554}
// *********************************************************************//
  IDnDTarget = interface(IDnDBase)
    ['{FF5BEFC3-4BA3-7903-2AA4-43988BA11554}']
    function Get_InternalAndReservedAttribute1IDnDTarget: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDnDTarget: LongWord; safecall;
    function Enter(aScreenId: LongWord; aY: LongWord; aX: LongWord; aDefaultAction: DnDAction; 
                   aAllowedActions: PSafeArray; aFormats: PSafeArray): DnDAction; safecall;
    function Move(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: PSafeArray; aFormats: PSafeArray): DnDAction; safecall;
    procedure Leave(aScreenId: LongWord); safecall;
    function Drop(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: PSafeArray; aFormats: PSafeArray; out aFormat: WideString): DnDAction; safecall;
    function SendData(aScreenId: LongWord; const aFormat: WideString; aData: PSafeArray): IProgress; safecall;
    function Cancel: Integer; safecall;
    procedure InternalAndReservedMethod1IDnDTarget; safecall;
    property InternalAndReservedAttribute1IDnDTarget: LongWord read Get_InternalAndReservedAttribute1IDnDTarget;
    property InternalAndReservedAttribute2IDnDTarget: LongWord read Get_InternalAndReservedAttribute2IDnDTarget;
  end;

// *********************************************************************//
// DispIntf:  IDnDTargetDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FF5BEFC3-4BA3-7903-2AA4-43988BA11554}
// *********************************************************************//
  IDnDTargetDisp = dispinterface
    ['{FF5BEFC3-4BA3-7903-2AA4-43988BA11554}']
    property InternalAndReservedAttribute1IDnDTarget: LongWord readonly dispid 1610809344;
    property InternalAndReservedAttribute2IDnDTarget: LongWord readonly dispid 1610809345;
    function Enter(aScreenId: LongWord; aY: LongWord; aX: LongWord; aDefaultAction: DnDAction; 
                   aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                   aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809346;
    function Move(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                  aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809347;
    procedure Leave(aScreenId: LongWord); dispid 1610809348;
    function Drop(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                  aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant; out aFormat: WideString): DnDAction; dispid 1610809349;
    function SendData(aScreenId: LongWord; const aFormat: WideString; 
                      aData: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610809350;
    function Cancel: Integer; dispid 1610809351;
    procedure InternalAndReservedMethod1IDnDTarget; dispid 1610809352;
    property Formats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property ProtocolVersion: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDnDBase: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDnDBase: LongWord readonly dispid 1610743811;
    function IsFormatSupported(const aFormat: WideString): Integer; dispid 1610743812;
    procedure AddFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure RemoveFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure InternalAndReservedMethod1IDnDBase; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IGuestDnDTarget
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {50CE4B51-0FF7-46B7-A138-3C6E5AC946B4}
// *********************************************************************//
  IGuestDnDTarget = interface(IDnDTarget)
    ['{50CE4B51-0FF7-46B7-A138-3C6E5AC946B4}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestDnDTargetDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {50CE4B51-0FF7-46B7-A138-3C6E5AC946B4}
// *********************************************************************//
  IGuestDnDTargetDisp = dispinterface
    ['{50CE4B51-0FF7-46B7-A138-3C6E5AC946B4}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property InternalAndReservedAttribute1IDnDTarget: LongWord readonly dispid 1610809344;
    property InternalAndReservedAttribute2IDnDTarget: LongWord readonly dispid 1610809345;
    function Enter(aScreenId: LongWord; aY: LongWord; aX: LongWord; aDefaultAction: DnDAction; 
                   aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                   aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809346;
    function Move(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                  aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant): DnDAction; dispid 1610809347;
    procedure Leave(aScreenId: LongWord); dispid 1610809348;
    function Drop(aScreenId: LongWord; aX: LongWord; aY: LongWord; aDefaultAction: DnDAction; 
                  aAllowedActions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                  aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant; out aFormat: WideString): DnDAction; dispid 1610809349;
    function SendData(aScreenId: LongWord; const aFormat: WideString; 
                      aData: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610809350;
    function Cancel: Integer; dispid 1610809351;
    procedure InternalAndReservedMethod1IDnDTarget; dispid 1610809352;
    property Formats: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property ProtocolVersion: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDnDBase: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDnDBase: LongWord readonly dispid 1610743811;
    function IsFormatSupported(const aFormat: WideString): Integer; dispid 1610743812;
    procedure AddFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure RemoveFormats(aFormats: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure InternalAndReservedMethod1IDnDBase; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IAdditionsFacility
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F2F7FAE4-4A06-81FC-A916-78B2DA1FA0E5}
// *********************************************************************//
  IAdditionsFacility = interface(IDispatch)
    ['{F2F7FAE4-4A06-81FC-A916-78B2DA1FA0E5}']
    function Get_ClassType: AdditionsFacilityClass; safecall;
    function Get_LastUpdated: Int64; safecall;
    function Get_Name: WideString; safecall;
    function Get_Status: AdditionsFacilityStatus; safecall;
    function Get_type_: AdditionsFacilityType; safecall;
    function Get_InternalAndReservedAttribute1IAdditionsFacility: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IAdditionsFacility: LongWord; safecall;
    property ClassType: AdditionsFacilityClass read Get_ClassType;
    property LastUpdated: Int64 read Get_LastUpdated;
    property Name: WideString read Get_Name;
    property Status: AdditionsFacilityStatus read Get_Status;
    property type_: AdditionsFacilityType read Get_type_;
    property InternalAndReservedAttribute1IAdditionsFacility: LongWord read Get_InternalAndReservedAttribute1IAdditionsFacility;
    property InternalAndReservedAttribute2IAdditionsFacility: LongWord read Get_InternalAndReservedAttribute2IAdditionsFacility;
  end;

// *********************************************************************//
// DispIntf:  IAdditionsFacilityDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F2F7FAE4-4A06-81FC-A916-78B2DA1FA0E5}
// *********************************************************************//
  IAdditionsFacilityDisp = dispinterface
    ['{F2F7FAE4-4A06-81FC-A916-78B2DA1FA0E5}']
    property ClassType: AdditionsFacilityClass readonly dispid 1610743808;
    property LastUpdated: Int64 readonly dispid 1610743809;
    property Name: WideString readonly dispid 1610743810;
    property Status: AdditionsFacilityStatus readonly dispid 1610743811;
    property type_: AdditionsFacilityType readonly dispid 1610743812;
    property InternalAndReservedAttribute1IAdditionsFacility: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute2IAdditionsFacility: LongWord readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IGuestSession
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3E14C189-4A75-437E-B0BB-7E7C90D0DF2A}
// *********************************************************************//
  IGuestSession = interface(IDispatch)
    ['{3E14C189-4A75-437E-B0BB-7E7C90D0DF2A}']
    function Get_User: WideString; safecall;
    function Get_Domain: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_Id: LongWord; safecall;
    function Get_Timeout: LongWord; safecall;
    procedure Set_Timeout(aTimeout: LongWord); safecall;
    function Get_ProtocolVersion: LongWord; safecall;
    function Get_Status: GuestSessionStatus; safecall;
    function Get_EnvironmentChanges: PSafeArray; safecall;
    procedure Set_EnvironmentChanges(aEnvironmentChanges: PSafeArray); safecall;
    function Get_EnvironmentBase: PSafeArray; safecall;
    function Get_Processes: PSafeArray; safecall;
    function Get_PathStyle: PathStyle; safecall;
    function Get_CurrentDirectory: WideString; safecall;
    procedure Set_CurrentDirectory(const aCurrentDirectory: WideString); safecall;
    function Get_UserHome: WideString; safecall;
    function Get_UserDocuments: WideString; safecall;
    function Get_Directories: PSafeArray; safecall;
    function Get_Files: PSafeArray; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_InternalAndReservedAttribute1IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IGuestSession: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IGuestSession: LongWord; safecall;
    procedure Close; safecall;
    function CopyFromGuest(aSources: PSafeArray; aFilters: PSafeArray; aFlags: PSafeArray; 
                           const aDestination: WideString): IProgress; safecall;
    function CopyToGuest(aSources: PSafeArray; aFilters: PSafeArray; aFlags: PSafeArray; 
                         const aDestination: WideString): IProgress; safecall;
    function DirectoryCopy(const aSource: WideString; const aDestination: WideString; 
                           aFlags: PSafeArray): IProgress; safecall;
    function DirectoryCopyFromGuest(const aSource: WideString; const aDestination: WideString; 
                                    aFlags: PSafeArray): IProgress; safecall;
    function DirectoryCopyToGuest(const aSource: WideString; const aDestination: WideString; 
                                  aFlags: PSafeArray): IProgress; safecall;
    procedure DirectoryCreate(const aPath: WideString; aMode: LongWord; aFlags: PSafeArray); safecall;
    function DirectoryCreateTemp(const aTemplateName: WideString; aMode: LongWord; 
                                 const aPath: WideString; aSecure: Integer): WideString; safecall;
    function DirectoryExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; safecall;
    function DirectoryOpen(const aPath: WideString; const aFilter: WideString; aFlags: PSafeArray): IGuestDirectory; safecall;
    procedure DirectoryRemove(const aPath: WideString); safecall;
    function DirectoryRemoveRecursive(const aPath: WideString; aFlags: PSafeArray): IProgress; safecall;
    procedure EnvironmentScheduleSet(const aName: WideString; const aValue: WideString); safecall;
    procedure EnvironmentScheduleUnset(const aName: WideString); safecall;
    function EnvironmentGetBaseVariable(const aName: WideString): WideString; safecall;
    function EnvironmentDoesBaseVariableExist(const aName: WideString): Integer; safecall;
    function FileCopy(const aSource: WideString; const aDestination: WideString; aFlags: PSafeArray): IProgress; safecall;
    function FileCopyFromGuest(const aSource: WideString; const aDestination: WideString; 
                               aFlags: PSafeArray): IProgress; safecall;
    function FileCopyToGuest(const aSource: WideString; const aDestination: WideString; 
                             aFlags: PSafeArray): IProgress; safecall;
    function FileCreateTemp(const aTemplateName: WideString; aMode: LongWord; 
                            const aPath: WideString; aSecure: Integer): IGuestFile; safecall;
    function FileExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; safecall;
    function FileOpen(const aPath: WideString; aAccessMode: FileAccessMode; 
                      aOpenAction: FileOpenAction; aCreationMode: LongWord): IGuestFile; safecall;
    function FileOpenEx(const aPath: WideString; aAccessMode: FileAccessMode; 
                        aOpenAction: FileOpenAction; aSharingMode: FileSharingMode; 
                        aCreationMode: LongWord; aFlags: PSafeArray): IGuestFile; safecall;
    function FileQuerySize(const aPath: WideString; aFollowSymlinks: Integer): Int64; safecall;
    function FsObjExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; safecall;
    function FsObjQueryInfo(const aPath: WideString; aFollowSymlinks: Integer): IGuestFsObjInfo; safecall;
    procedure FsObjRemove(const aPath: WideString); safecall;
    function FsObjRemoveArray(aPath: PSafeArray): IProgress; safecall;
    procedure FsObjRename(const aOldPath: WideString; const aNewPath: WideString; aFlags: PSafeArray); safecall;
    function FsObjMove(const aSource: WideString; const aDestination: WideString; aFlags: PSafeArray): IProgress; safecall;
    function FsObjMoveArray(aSource: PSafeArray; const aDestination: WideString; aFlags: PSafeArray): IProgress; safecall;
    function FsObjCopyArray(aSource: PSafeArray; const aDestination: WideString; aFlags: PSafeArray): IProgress; safecall;
    procedure FsObjSetACL(const aPath: WideString; aFollowSymlinks: Integer; 
                          const aAcl: WideString; aMode: LongWord); safecall;
    function ProcessCreate(const aExecutable: WideString; aArguments: PSafeArray; 
                           aEnvironmentChanges: PSafeArray; aFlags: PSafeArray; aTimeoutMS: LongWord): IGuestProcess; safecall;
    function ProcessCreateEx(const aExecutable: WideString; aArguments: PSafeArray; 
                             aEnvironmentChanges: PSafeArray; aFlags: PSafeArray; 
                             aTimeoutMS: LongWord; aPriority: ProcessPriority; aAffinity: PSafeArray): IGuestProcess; safecall;
    function ProcessGet(aPID: LongWord): IGuestProcess; safecall;
    procedure SymlinkCreate(const aSymlink: WideString; const aTarget: WideString; 
                            aType: SymlinkType); safecall;
    function SymlinkExists(const aSymlink: WideString): Integer; safecall;
    function SymlinkRead(const aSymlink: WideString; aFlags: PSafeArray): WideString; safecall;
    function WaitFor(aWaitFor: LongWord; aTimeoutMS: LongWord): GuestSessionWaitResult; safecall;
    function WaitForArray(aWaitFor: PSafeArray; aTimeoutMS: LongWord): GuestSessionWaitResult; safecall;
    procedure InternalAndReservedMethod1IGuestSession; safecall;
    procedure InternalAndReservedMethod2IGuestSession; safecall;
    procedure InternalAndReservedMethod3IGuestSession; safecall;
    procedure InternalAndReservedMethod4IGuestSession; safecall;
    procedure InternalAndReservedMethod5IGuestSession; safecall;
    procedure InternalAndReservedMethod6IGuestSession; safecall;
    procedure InternalAndReservedMethod7IGuestSession; safecall;
    procedure InternalAndReservedMethod8IGuestSession; safecall;
    property User: WideString read Get_User;
    property Domain: WideString read Get_Domain;
    property Name: WideString read Get_Name;
    property Id: LongWord read Get_Id;
    property Timeout: LongWord read Get_Timeout write Set_Timeout;
    property ProtocolVersion: LongWord read Get_ProtocolVersion;
    property Status: GuestSessionStatus read Get_Status;
    property EnvironmentChanges: PSafeArray read Get_EnvironmentChanges write Set_EnvironmentChanges;
    property EnvironmentBase: PSafeArray read Get_EnvironmentBase;
    property Processes: PSafeArray read Get_Processes;
    property PathStyle: PathStyle read Get_PathStyle;
    property CurrentDirectory: WideString read Get_CurrentDirectory write Set_CurrentDirectory;
    property UserHome: WideString read Get_UserHome;
    property UserDocuments: WideString read Get_UserDocuments;
    property Directories: PSafeArray read Get_Directories;
    property Files: PSafeArray read Get_Files;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IGuestSession: LongWord read Get_InternalAndReservedAttribute1IGuestSession;
    property InternalAndReservedAttribute2IGuestSession: LongWord read Get_InternalAndReservedAttribute2IGuestSession;
    property InternalAndReservedAttribute3IGuestSession: LongWord read Get_InternalAndReservedAttribute3IGuestSession;
    property InternalAndReservedAttribute4IGuestSession: LongWord read Get_InternalAndReservedAttribute4IGuestSession;
    property InternalAndReservedAttribute5IGuestSession: LongWord read Get_InternalAndReservedAttribute5IGuestSession;
    property InternalAndReservedAttribute6IGuestSession: LongWord read Get_InternalAndReservedAttribute6IGuestSession;
    property InternalAndReservedAttribute7IGuestSession: LongWord read Get_InternalAndReservedAttribute7IGuestSession;
    property InternalAndReservedAttribute8IGuestSession: LongWord read Get_InternalAndReservedAttribute8IGuestSession;
    property InternalAndReservedAttribute9IGuestSession: LongWord read Get_InternalAndReservedAttribute9IGuestSession;
    property InternalAndReservedAttribute10IGuestSession: LongWord read Get_InternalAndReservedAttribute10IGuestSession;
    property InternalAndReservedAttribute11IGuestSession: LongWord read Get_InternalAndReservedAttribute11IGuestSession;
    property InternalAndReservedAttribute12IGuestSession: LongWord read Get_InternalAndReservedAttribute12IGuestSession;
  end;

// *********************************************************************//
// DispIntf:  IGuestSessionDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3E14C189-4A75-437E-B0BB-7E7C90D0DF2A}
// *********************************************************************//
  IGuestSessionDisp = dispinterface
    ['{3E14C189-4A75-437E-B0BB-7E7C90D0DF2A}']
    property User: WideString readonly dispid 1610743808;
    property Domain: WideString readonly dispid 1610743809;
    property Name: WideString readonly dispid 1610743810;
    property Id: LongWord readonly dispid 1610743811;
    property Timeout: LongWord dispid 1610743812;
    property ProtocolVersion: LongWord readonly dispid 1610743814;
    property Status: GuestSessionStatus readonly dispid 1610743815;
    property EnvironmentChanges: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743816;
    property EnvironmentBase: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743818;
    property Processes: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743819;
    property PathStyle: PathStyle readonly dispid 1610743820;
    property CurrentDirectory: WideString dispid 1610743821;
    property UserHome: WideString readonly dispid 1610743823;
    property UserDocuments: WideString readonly dispid 1610743824;
    property Directories: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743825;
    property Files: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743826;
    property EventSource: IEventSource readonly dispid 1610743827;
    property InternalAndReservedAttribute1IGuestSession: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute2IGuestSession: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute3IGuestSession: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute4IGuestSession: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute5IGuestSession: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute6IGuestSession: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute7IGuestSession: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute8IGuestSession: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute9IGuestSession: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute10IGuestSession: LongWord readonly dispid 1610743837;
    property InternalAndReservedAttribute11IGuestSession: LongWord readonly dispid 1610743838;
    property InternalAndReservedAttribute12IGuestSession: LongWord readonly dispid 1610743839;
    procedure Close; dispid 1610743840;
    function CopyFromGuest(aSources: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aFilters: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           const aDestination: WideString): IProgress; dispid 1610743841;
    function CopyToGuest(aSources: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                         aFilters: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                         aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; const aDestination: WideString): IProgress; dispid 1610743842;
    function DirectoryCopy(const aSource: WideString; const aDestination: WideString; 
                           aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743843;
    function DirectoryCopyFromGuest(const aSource: WideString; const aDestination: WideString; 
                                    aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743844;
    function DirectoryCopyToGuest(const aSource: WideString; const aDestination: WideString; 
                                  aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743845;
    procedure DirectoryCreate(const aPath: WideString; aMode: LongWord; 
                              aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743846;
    function DirectoryCreateTemp(const aTemplateName: WideString; aMode: LongWord; 
                                 const aPath: WideString; aSecure: Integer): WideString; dispid 1610743847;
    function DirectoryExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; dispid 1610743848;
    function DirectoryOpen(const aPath: WideString; const aFilter: WideString; 
                           aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IGuestDirectory; dispid 1610743849;
    procedure DirectoryRemove(const aPath: WideString); dispid 1610743850;
    function DirectoryRemoveRecursive(const aPath: WideString; 
                                      aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743851;
    procedure EnvironmentScheduleSet(const aName: WideString; const aValue: WideString); dispid 1610743852;
    procedure EnvironmentScheduleUnset(const aName: WideString); dispid 1610743853;
    function EnvironmentGetBaseVariable(const aName: WideString): WideString; dispid 1610743854;
    function EnvironmentDoesBaseVariableExist(const aName: WideString): Integer; dispid 1610743855;
    function FileCopy(const aSource: WideString; const aDestination: WideString; 
                      aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743856;
    function FileCopyFromGuest(const aSource: WideString; const aDestination: WideString; 
                               aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743857;
    function FileCopyToGuest(const aSource: WideString; const aDestination: WideString; 
                             aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743858;
    function FileCreateTemp(const aTemplateName: WideString; aMode: LongWord; 
                            const aPath: WideString; aSecure: Integer): IGuestFile; dispid 1610743859;
    function FileExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; dispid 1610743860;
    function FileOpen(const aPath: WideString; aAccessMode: FileAccessMode; 
                      aOpenAction: FileOpenAction; aCreationMode: LongWord): IGuestFile; dispid 1610743861;
    function FileOpenEx(const aPath: WideString; aAccessMode: FileAccessMode; 
                        aOpenAction: FileOpenAction; aSharingMode: FileSharingMode; 
                        aCreationMode: LongWord; aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IGuestFile; dispid 1610743862;
    function FileQuerySize(const aPath: WideString; aFollowSymlinks: Integer): Int64; dispid 1610743863;
    function FsObjExists(const aPath: WideString; aFollowSymlinks: Integer): Integer; dispid 1610743864;
    function FsObjQueryInfo(const aPath: WideString; aFollowSymlinks: Integer): IGuestFsObjInfo; dispid 1610743865;
    procedure FsObjRemove(const aPath: WideString); dispid 1610743866;
    function FsObjRemoveArray(aPath: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743867;
    procedure FsObjRename(const aOldPath: WideString; const aNewPath: WideString; 
                          aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743868;
    function FsObjMove(const aSource: WideString; const aDestination: WideString; 
                       aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743869;
    function FsObjMoveArray(aSource: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            const aDestination: WideString; 
                            aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743870;
    function FsObjCopyArray(aSource: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            const aDestination: WideString; 
                            aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743871;
    procedure FsObjSetACL(const aPath: WideString; aFollowSymlinks: Integer; 
                          const aAcl: WideString; aMode: LongWord); dispid 1610743872;
    function ProcessCreate(const aExecutable: WideString; 
                           aArguments: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aEnvironmentChanges: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): IGuestProcess; dispid 1610743873;
    function ProcessCreateEx(const aExecutable: WideString; 
                             aArguments: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             aEnvironmentChanges: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord; 
                             aPriority: ProcessPriority; 
                             aAffinity: {NOT_OLEAUTO(PSafeArray)}OleVariant): IGuestProcess; dispid 1610743874;
    function ProcessGet(aPID: LongWord): IGuestProcess; dispid 1610743875;
    procedure SymlinkCreate(const aSymlink: WideString; const aTarget: WideString; 
                            aType: SymlinkType); dispid 1610743876;
    function SymlinkExists(const aSymlink: WideString): Integer; dispid 1610743877;
    function SymlinkRead(const aSymlink: WideString; aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant): WideString; dispid 1610743878;
    function WaitFor(aWaitFor: LongWord; aTimeoutMS: LongWord): GuestSessionWaitResult; dispid 1610743879;
    function WaitForArray(aWaitFor: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): GuestSessionWaitResult; dispid 1610743880;
    procedure InternalAndReservedMethod1IGuestSession; dispid 1610743881;
    procedure InternalAndReservedMethod2IGuestSession; dispid 1610743882;
    procedure InternalAndReservedMethod3IGuestSession; dispid 1610743883;
    procedure InternalAndReservedMethod4IGuestSession; dispid 1610743884;
    procedure InternalAndReservedMethod5IGuestSession; dispid 1610743885;
    procedure InternalAndReservedMethod6IGuestSession; dispid 1610743886;
    procedure InternalAndReservedMethod7IGuestSession; dispid 1610743887;
    procedure InternalAndReservedMethod8IGuestSession; dispid 1610743888;
  end;

// *********************************************************************//
// Interface: IProcess
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {BC68370C-8A02-45F3-A07D-A67AA72756AA}
// *********************************************************************//
  IProcess = interface(IDispatch)
    ['{BC68370C-8A02-45F3-A07D-A67AA72756AA}']
    function Get_Arguments: PSafeArray; safecall;
    function Get_Environment: PSafeArray; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_ExecutablePath: WideString; safecall;
    function Get_ExitCode: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_PID: LongWord; safecall;
    function Get_Status: ProcessStatus; safecall;
    function Get_InternalAndReservedAttribute1IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IProcess: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IProcess: LongWord; safecall;
    function WaitFor(aWaitFor: LongWord; aTimeoutMS: LongWord): ProcessWaitResult; safecall;
    function WaitForArray(aWaitFor: PSafeArray; aTimeoutMS: LongWord): ProcessWaitResult; safecall;
    function Read(aHandle: LongWord; aToRead: LongWord; aTimeoutMS: LongWord): PSafeArray; safecall;
    function Write(aHandle: LongWord; aFlags: LongWord; aData: PSafeArray; aTimeoutMS: LongWord): LongWord; safecall;
    function WriteArray(aHandle: LongWord; aFlags: PSafeArray; aData: PSafeArray; 
                        aTimeoutMS: LongWord): LongWord; safecall;
    procedure Terminate; safecall;
    procedure InternalAndReservedMethod1IProcess; safecall;
    procedure InternalAndReservedMethod2IProcess; safecall;
    procedure InternalAndReservedMethod3IProcess; safecall;
    procedure InternalAndReservedMethod4IProcess; safecall;
    property Arguments: PSafeArray read Get_Arguments;
    property Environment: PSafeArray read Get_Environment;
    property EventSource: IEventSource read Get_EventSource;
    property ExecutablePath: WideString read Get_ExecutablePath;
    property ExitCode: Integer read Get_ExitCode;
    property Name: WideString read Get_Name;
    property PID: LongWord read Get_PID;
    property Status: ProcessStatus read Get_Status;
    property InternalAndReservedAttribute1IProcess: LongWord read Get_InternalAndReservedAttribute1IProcess;
    property InternalAndReservedAttribute2IProcess: LongWord read Get_InternalAndReservedAttribute2IProcess;
    property InternalAndReservedAttribute3IProcess: LongWord read Get_InternalAndReservedAttribute3IProcess;
    property InternalAndReservedAttribute4IProcess: LongWord read Get_InternalAndReservedAttribute4IProcess;
    property InternalAndReservedAttribute5IProcess: LongWord read Get_InternalAndReservedAttribute5IProcess;
    property InternalAndReservedAttribute6IProcess: LongWord read Get_InternalAndReservedAttribute6IProcess;
    property InternalAndReservedAttribute7IProcess: LongWord read Get_InternalAndReservedAttribute7IProcess;
    property InternalAndReservedAttribute8IProcess: LongWord read Get_InternalAndReservedAttribute8IProcess;
  end;

// *********************************************************************//
// DispIntf:  IProcessDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {BC68370C-8A02-45F3-A07D-A67AA72756AA}
// *********************************************************************//
  IProcessDisp = dispinterface
    ['{BC68370C-8A02-45F3-A07D-A67AA72756AA}']
    property Arguments: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property Environment: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property EventSource: IEventSource readonly dispid 1610743810;
    property ExecutablePath: WideString readonly dispid 1610743811;
    property ExitCode: Integer readonly dispid 1610743812;
    property Name: WideString readonly dispid 1610743813;
    property PID: LongWord readonly dispid 1610743814;
    property Status: ProcessStatus readonly dispid 1610743815;
    property InternalAndReservedAttribute1IProcess: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute2IProcess: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute3IProcess: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute4IProcess: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute5IProcess: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute6IProcess: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute7IProcess: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute8IProcess: LongWord readonly dispid 1610743823;
    function WaitFor(aWaitFor: LongWord; aTimeoutMS: LongWord): ProcessWaitResult; dispid 1610743824;
    function WaitForArray(aWaitFor: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): ProcessWaitResult; dispid 1610743825;
    function Read(aHandle: LongWord; aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743826;
    function Write(aHandle: LongWord; aFlags: LongWord; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                   aTimeoutMS: LongWord): LongWord; dispid 1610743827;
    function WriteArray(aHandle: LongWord; aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): LongWord; dispid 1610743828;
    procedure Terminate; dispid 1610743829;
    procedure InternalAndReservedMethod1IProcess; dispid 1610743830;
    procedure InternalAndReservedMethod2IProcess; dispid 1610743831;
    procedure InternalAndReservedMethod3IProcess; dispid 1610743832;
    procedure InternalAndReservedMethod4IProcess; dispid 1610743833;
  end;

// *********************************************************************//
// Interface: IGuestProcess
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {35CF4B3F-4453-4F3E-C9B8-5686939C80B6}
// *********************************************************************//
  IGuestProcess = interface(IProcess)
    ['{35CF4B3F-4453-4F3E-C9B8-5686939C80B6}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {35CF4B3F-4453-4F3E-C9B8-5686939C80B6}
// *********************************************************************//
  IGuestProcessDisp = dispinterface
    ['{35CF4B3F-4453-4F3E-C9B8-5686939C80B6}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property Arguments: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property Environment: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property EventSource: IEventSource readonly dispid 1610743810;
    property ExecutablePath: WideString readonly dispid 1610743811;
    property ExitCode: Integer readonly dispid 1610743812;
    property Name: WideString readonly dispid 1610743813;
    property PID: LongWord readonly dispid 1610743814;
    property Status: ProcessStatus readonly dispid 1610743815;
    property InternalAndReservedAttribute1IProcess: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute2IProcess: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute3IProcess: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute4IProcess: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute5IProcess: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute6IProcess: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute7IProcess: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute8IProcess: LongWord readonly dispid 1610743823;
    function WaitFor(aWaitFor: LongWord; aTimeoutMS: LongWord): ProcessWaitResult; dispid 1610743824;
    function WaitForArray(aWaitFor: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): ProcessWaitResult; dispid 1610743825;
    function Read(aHandle: LongWord; aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743826;
    function Write(aHandle: LongWord; aFlags: LongWord; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                   aTimeoutMS: LongWord): LongWord; dispid 1610743827;
    function WriteArray(aHandle: LongWord; aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): LongWord; dispid 1610743828;
    procedure Terminate; dispid 1610743829;
    procedure InternalAndReservedMethod1IProcess; dispid 1610743830;
    procedure InternalAndReservedMethod2IProcess; dispid 1610743831;
    procedure InternalAndReservedMethod3IProcess; dispid 1610743832;
    procedure InternalAndReservedMethod4IProcess; dispid 1610743833;
  end;

// *********************************************************************//
// Interface: IDirectory
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {758D7EAC-E4B1-486A-8F2E-747AE346C3E9}
// *********************************************************************//
  IDirectory = interface(IDispatch)
    ['{758D7EAC-E4B1-486A-8F2E-747AE346C3E9}']
    function Get_DirectoryName: WideString; safecall;
    function Get_Filter: WideString; safecall;
    function Get_InternalAndReservedAttribute1IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IDirectory: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IDirectory: LongWord; safecall;
    procedure Close; safecall;
    function Read: IFsObjInfo; safecall;
    procedure InternalAndReservedMethod1IDirectory; safecall;
    procedure InternalAndReservedMethod2IDirectory; safecall;
    procedure InternalAndReservedMethod3IDirectory; safecall;
    procedure InternalAndReservedMethod4IDirectory; safecall;
    property DirectoryName: WideString read Get_DirectoryName;
    property Filter: WideString read Get_Filter;
    property InternalAndReservedAttribute1IDirectory: LongWord read Get_InternalAndReservedAttribute1IDirectory;
    property InternalAndReservedAttribute2IDirectory: LongWord read Get_InternalAndReservedAttribute2IDirectory;
    property InternalAndReservedAttribute3IDirectory: LongWord read Get_InternalAndReservedAttribute3IDirectory;
    property InternalAndReservedAttribute4IDirectory: LongWord read Get_InternalAndReservedAttribute4IDirectory;
    property InternalAndReservedAttribute5IDirectory: LongWord read Get_InternalAndReservedAttribute5IDirectory;
    property InternalAndReservedAttribute6IDirectory: LongWord read Get_InternalAndReservedAttribute6IDirectory;
    property InternalAndReservedAttribute7IDirectory: LongWord read Get_InternalAndReservedAttribute7IDirectory;
    property InternalAndReservedAttribute8IDirectory: LongWord read Get_InternalAndReservedAttribute8IDirectory;
  end;

// *********************************************************************//
// DispIntf:  IDirectoryDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {758D7EAC-E4B1-486A-8F2E-747AE346C3E9}
// *********************************************************************//
  IDirectoryDisp = dispinterface
    ['{758D7EAC-E4B1-486A-8F2E-747AE346C3E9}']
    property DirectoryName: WideString readonly dispid 1610743808;
    property Filter: WideString readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDirectory: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDirectory: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute3IDirectory: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute4IDirectory: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute5IDirectory: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute6IDirectory: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute7IDirectory: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute8IDirectory: LongWord readonly dispid 1610743817;
    procedure Close; dispid 1610743818;
    function Read: IFsObjInfo; dispid 1610743819;
    procedure InternalAndReservedMethod1IDirectory; dispid 1610743820;
    procedure InternalAndReservedMethod2IDirectory; dispid 1610743821;
    procedure InternalAndReservedMethod3IDirectory; dispid 1610743822;
    procedure InternalAndReservedMethod4IDirectory; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IGuestDirectory
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CC830458-4974-A19C-4DC6-CC98C2269626}
// *********************************************************************//
  IGuestDirectory = interface(IDirectory)
    ['{CC830458-4974-A19C-4DC6-CC98C2269626}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestDirectoryDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CC830458-4974-A19C-4DC6-CC98C2269626}
// *********************************************************************//
  IGuestDirectoryDisp = dispinterface
    ['{CC830458-4974-A19C-4DC6-CC98C2269626}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property DirectoryName: WideString readonly dispid 1610743808;
    property Filter: WideString readonly dispid 1610743809;
    property InternalAndReservedAttribute1IDirectory: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IDirectory: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute3IDirectory: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute4IDirectory: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute5IDirectory: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute6IDirectory: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute7IDirectory: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute8IDirectory: LongWord readonly dispid 1610743817;
    procedure Close; dispid 1610743818;
    function Read: IFsObjInfo; dispid 1610743819;
    procedure InternalAndReservedMethod1IDirectory; dispid 1610743820;
    procedure InternalAndReservedMethod2IDirectory; dispid 1610743821;
    procedure InternalAndReservedMethod3IDirectory; dispid 1610743822;
    procedure InternalAndReservedMethod4IDirectory; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IFsObjInfo
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {081FC833-C6FA-430E-6020-6A505D086387}
// *********************************************************************//
  IFsObjInfo = interface(IDispatch)
    ['{081FC833-C6FA-430E-6020-6A505D086387}']
    function Get_Name: WideString; safecall;
    function Get_type_: FsObjType; safecall;
    function Get_FileAttributes: WideString; safecall;
    function Get_ObjectSize: Int64; safecall;
    function Get_AllocatedSize: Int64; safecall;
    function Get_AccessTime: Int64; safecall;
    function Get_BirthTime: Int64; safecall;
    function Get_ChangeTime: Int64; safecall;
    function Get_ModificationTime: Int64; safecall;
    function Get_UID: Integer; safecall;
    function Get_UserName: WideString; safecall;
    function Get_GID: Integer; safecall;
    function Get_GroupName: WideString; safecall;
    function Get_NodeId: Int64; safecall;
    function Get_NodeIdDevice: LongWord; safecall;
    function Get_HardLinks: LongWord; safecall;
    function Get_DeviceNumber: LongWord; safecall;
    function Get_GenerationId: LongWord; safecall;
    function Get_UserFlags: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IFsObjInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IFsObjInfo: LongWord; safecall;
    property Name: WideString read Get_Name;
    property type_: FsObjType read Get_type_;
    property FileAttributes: WideString read Get_FileAttributes;
    property ObjectSize: Int64 read Get_ObjectSize;
    property AllocatedSize: Int64 read Get_AllocatedSize;
    property AccessTime: Int64 read Get_AccessTime;
    property BirthTime: Int64 read Get_BirthTime;
    property ChangeTime: Int64 read Get_ChangeTime;
    property ModificationTime: Int64 read Get_ModificationTime;
    property UID: Integer read Get_UID;
    property UserName: WideString read Get_UserName;
    property GID: Integer read Get_GID;
    property GroupName: WideString read Get_GroupName;
    property NodeId: Int64 read Get_NodeId;
    property NodeIdDevice: LongWord read Get_NodeIdDevice;
    property HardLinks: LongWord read Get_HardLinks;
    property DeviceNumber: LongWord read Get_DeviceNumber;
    property GenerationId: LongWord read Get_GenerationId;
    property UserFlags: LongWord read Get_UserFlags;
    property InternalAndReservedAttribute1IFsObjInfo: LongWord read Get_InternalAndReservedAttribute1IFsObjInfo;
    property InternalAndReservedAttribute2IFsObjInfo: LongWord read Get_InternalAndReservedAttribute2IFsObjInfo;
    property InternalAndReservedAttribute3IFsObjInfo: LongWord read Get_InternalAndReservedAttribute3IFsObjInfo;
    property InternalAndReservedAttribute4IFsObjInfo: LongWord read Get_InternalAndReservedAttribute4IFsObjInfo;
    property InternalAndReservedAttribute5IFsObjInfo: LongWord read Get_InternalAndReservedAttribute5IFsObjInfo;
    property InternalAndReservedAttribute6IFsObjInfo: LongWord read Get_InternalAndReservedAttribute6IFsObjInfo;
    property InternalAndReservedAttribute7IFsObjInfo: LongWord read Get_InternalAndReservedAttribute7IFsObjInfo;
    property InternalAndReservedAttribute8IFsObjInfo: LongWord read Get_InternalAndReservedAttribute8IFsObjInfo;
  end;

// *********************************************************************//
// DispIntf:  IFsObjInfoDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {081FC833-C6FA-430E-6020-6A505D086387}
// *********************************************************************//
  IFsObjInfoDisp = dispinterface
    ['{081FC833-C6FA-430E-6020-6A505D086387}']
    property Name: WideString readonly dispid 1610743808;
    property type_: FsObjType readonly dispid 1610743809;
    property FileAttributes: WideString readonly dispid 1610743810;
    property ObjectSize: Int64 readonly dispid 1610743811;
    property AllocatedSize: Int64 readonly dispid 1610743812;
    property AccessTime: Int64 readonly dispid 1610743813;
    property BirthTime: Int64 readonly dispid 1610743814;
    property ChangeTime: Int64 readonly dispid 1610743815;
    property ModificationTime: Int64 readonly dispid 1610743816;
    property UID: Integer readonly dispid 1610743817;
    property UserName: WideString readonly dispid 1610743818;
    property GID: Integer readonly dispid 1610743819;
    property GroupName: WideString readonly dispid 1610743820;
    property NodeId: Int64 readonly dispid 1610743821;
    property NodeIdDevice: LongWord readonly dispid 1610743822;
    property HardLinks: LongWord readonly dispid 1610743823;
    property DeviceNumber: LongWord readonly dispid 1610743824;
    property GenerationId: LongWord readonly dispid 1610743825;
    property UserFlags: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute1IFsObjInfo: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute2IFsObjInfo: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute3IFsObjInfo: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute4IFsObjInfo: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute5IFsObjInfo: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute6IFsObjInfo: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute7IFsObjInfo: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute8IFsObjInfo: LongWord readonly dispid 1610743834;
  end;

// *********************************************************************//
// Interface: IFile
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {59A235AC-2F1A-4D6C-81FC-E3FA843F49AE}
// *********************************************************************//
  IFile = interface(IDispatch)
    ['{59A235AC-2F1A-4D6C-81FC-E3FA843F49AE}']
    function Get_EventSource: IEventSource; safecall;
    function Get_Id: LongWord; safecall;
    function Get_InitialSize: Int64; safecall;
    function Get_Offset: Int64; safecall;
    function Get_Status: FileStatus; safecall;
    function Get_Filename: WideString; safecall;
    function Get_CreationMode: LongWord; safecall;
    function Get_OpenAction: FileOpenAction; safecall;
    function Get_AccessMode: FileAccessMode; safecall;
    function Get_InternalAndReservedAttribute1IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IFile: LongWord; safecall;
    procedure Close; safecall;
    function QueryInfo: IFsObjInfo; safecall;
    function QuerySize: Int64; safecall;
    function Read(aToRead: LongWord; aTimeoutMS: LongWord): PSafeArray; safecall;
    function ReadAt(aOffset: Int64; aToRead: LongWord; aTimeoutMS: LongWord): PSafeArray; safecall;
    function Seek(aOffset: Int64; aWhence: FileSeekOrigin): Int64; safecall;
    procedure SetACL(const aAcl: WideString; aMode: LongWord); safecall;
    procedure SetSize(aSize: Int64); safecall;
    function Write(aData: PSafeArray; aTimeoutMS: LongWord): LongWord; safecall;
    function WriteAt(aOffset: Int64; aData: PSafeArray; aTimeoutMS: LongWord): LongWord; safecall;
    procedure InternalAndReservedMethod1IFile; safecall;
    procedure InternalAndReservedMethod2IFile; safecall;
    procedure InternalAndReservedMethod3IFile; safecall;
    procedure InternalAndReservedMethod4IFile; safecall;
    property EventSource: IEventSource read Get_EventSource;
    property Id: LongWord read Get_Id;
    property InitialSize: Int64 read Get_InitialSize;
    property Offset: Int64 read Get_Offset;
    property Status: FileStatus read Get_Status;
    property Filename: WideString read Get_Filename;
    property CreationMode: LongWord read Get_CreationMode;
    property OpenAction: FileOpenAction read Get_OpenAction;
    property AccessMode: FileAccessMode read Get_AccessMode;
    property InternalAndReservedAttribute1IFile: LongWord read Get_InternalAndReservedAttribute1IFile;
    property InternalAndReservedAttribute2IFile: LongWord read Get_InternalAndReservedAttribute2IFile;
    property InternalAndReservedAttribute3IFile: LongWord read Get_InternalAndReservedAttribute3IFile;
    property InternalAndReservedAttribute4IFile: LongWord read Get_InternalAndReservedAttribute4IFile;
    property InternalAndReservedAttribute5IFile: LongWord read Get_InternalAndReservedAttribute5IFile;
    property InternalAndReservedAttribute6IFile: LongWord read Get_InternalAndReservedAttribute6IFile;
    property InternalAndReservedAttribute7IFile: LongWord read Get_InternalAndReservedAttribute7IFile;
    property InternalAndReservedAttribute8IFile: LongWord read Get_InternalAndReservedAttribute8IFile;
  end;

// *********************************************************************//
// DispIntf:  IFileDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {59A235AC-2F1A-4D6C-81FC-E3FA843F49AE}
// *********************************************************************//
  IFileDisp = dispinterface
    ['{59A235AC-2F1A-4D6C-81FC-E3FA843F49AE}']
    property EventSource: IEventSource readonly dispid 1610743808;
    property Id: LongWord readonly dispid 1610743809;
    property InitialSize: Int64 readonly dispid 1610743810;
    property Offset: Int64 readonly dispid 1610743811;
    property Status: FileStatus readonly dispid 1610743812;
    property Filename: WideString readonly dispid 1610743813;
    property CreationMode: LongWord readonly dispid 1610743814;
    property OpenAction: FileOpenAction readonly dispid 1610743815;
    property AccessMode: FileAccessMode readonly dispid 1610743816;
    property InternalAndReservedAttribute1IFile: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute2IFile: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute3IFile: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute4IFile: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute5IFile: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute6IFile: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute7IFile: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute8IFile: LongWord readonly dispid 1610743824;
    procedure Close; dispid 1610743825;
    function QueryInfo: IFsObjInfo; dispid 1610743826;
    function QuerySize: Int64; dispid 1610743827;
    function Read(aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743828;
    function ReadAt(aOffset: Int64; aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743829;
    function Seek(aOffset: Int64; aWhence: FileSeekOrigin): Int64; dispid 1610743830;
    procedure SetACL(const aAcl: WideString; aMode: LongWord); dispid 1610743831;
    procedure SetSize(aSize: Int64); dispid 1610743832;
    function Write(aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): LongWord; dispid 1610743833;
    function WriteAt(aOffset: Int64; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                     aTimeoutMS: LongWord): LongWord; dispid 1610743834;
    procedure InternalAndReservedMethod1IFile; dispid 1610743835;
    procedure InternalAndReservedMethod2IFile; dispid 1610743836;
    procedure InternalAndReservedMethod3IFile; dispid 1610743837;
    procedure InternalAndReservedMethod4IFile; dispid 1610743838;
  end;

// *********************************************************************//
// Interface: IGuestFile
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {92F21DC0-44DE-1653-B717-2EBF0CA9B664}
// *********************************************************************//
  IGuestFile = interface(IFile)
    ['{92F21DC0-44DE-1653-B717-2EBF0CA9B664}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {92F21DC0-44DE-1653-B717-2EBF0CA9B664}
// *********************************************************************//
  IGuestFileDisp = dispinterface
    ['{92F21DC0-44DE-1653-B717-2EBF0CA9B664}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property EventSource: IEventSource readonly dispid 1610743808;
    property Id: LongWord readonly dispid 1610743809;
    property InitialSize: Int64 readonly dispid 1610743810;
    property Offset: Int64 readonly dispid 1610743811;
    property Status: FileStatus readonly dispid 1610743812;
    property Filename: WideString readonly dispid 1610743813;
    property CreationMode: LongWord readonly dispid 1610743814;
    property OpenAction: FileOpenAction readonly dispid 1610743815;
    property AccessMode: FileAccessMode readonly dispid 1610743816;
    property InternalAndReservedAttribute1IFile: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute2IFile: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute3IFile: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute4IFile: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute5IFile: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute6IFile: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute7IFile: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute8IFile: LongWord readonly dispid 1610743824;
    procedure Close; dispid 1610743825;
    function QueryInfo: IFsObjInfo; dispid 1610743826;
    function QuerySize: Int64; dispid 1610743827;
    function Read(aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743828;
    function ReadAt(aOffset: Int64; aToRead: LongWord; aTimeoutMS: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743829;
    function Seek(aOffset: Int64; aWhence: FileSeekOrigin): Int64; dispid 1610743830;
    procedure SetACL(const aAcl: WideString; aMode: LongWord); dispid 1610743831;
    procedure SetSize(aSize: Int64); dispid 1610743832;
    function Write(aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; aTimeoutMS: LongWord): LongWord; dispid 1610743833;
    function WriteAt(aOffset: Int64; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                     aTimeoutMS: LongWord): LongWord; dispid 1610743834;
    procedure InternalAndReservedMethod1IFile; dispid 1610743835;
    procedure InternalAndReservedMethod2IFile; dispid 1610743836;
    procedure InternalAndReservedMethod3IFile; dispid 1610743837;
    procedure InternalAndReservedMethod4IFile; dispid 1610743838;
  end;

// *********************************************************************//
// Interface: IGuestFsObjInfo
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6620DB85-44E0-CA69-E9E0-D4907CECCBE5}
// *********************************************************************//
  IGuestFsObjInfo = interface(IFsObjInfo)
    ['{6620DB85-44E0-CA69-E9E0-D4907CECCBE5}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestFsObjInfoDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6620DB85-44E0-CA69-E9E0-D4907CECCBE5}
// *********************************************************************//
  IGuestFsObjInfoDisp = dispinterface
    ['{6620DB85-44E0-CA69-E9E0-D4907CECCBE5}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property Name: WideString readonly dispid 1610743808;
    property type_: FsObjType readonly dispid 1610743809;
    property FileAttributes: WideString readonly dispid 1610743810;
    property ObjectSize: Int64 readonly dispid 1610743811;
    property AllocatedSize: Int64 readonly dispid 1610743812;
    property AccessTime: Int64 readonly dispid 1610743813;
    property BirthTime: Int64 readonly dispid 1610743814;
    property ChangeTime: Int64 readonly dispid 1610743815;
    property ModificationTime: Int64 readonly dispid 1610743816;
    property UID: Integer readonly dispid 1610743817;
    property UserName: WideString readonly dispid 1610743818;
    property GID: Integer readonly dispid 1610743819;
    property GroupName: WideString readonly dispid 1610743820;
    property NodeId: Int64 readonly dispid 1610743821;
    property NodeIdDevice: LongWord readonly dispid 1610743822;
    property HardLinks: LongWord readonly dispid 1610743823;
    property DeviceNumber: LongWord readonly dispid 1610743824;
    property GenerationId: LongWord readonly dispid 1610743825;
    property UserFlags: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute1IFsObjInfo: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute2IFsObjInfo: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute3IFsObjInfo: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute4IFsObjInfo: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute5IFsObjInfo: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute6IFsObjInfo: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute7IFsObjInfo: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute8IFsObjInfo: LongWord readonly dispid 1610743834;
  end;

// *********************************************************************//
// Interface: IKeyboard
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A7C88B82-2330-44E3-B247-1421A018F9C1}
// *********************************************************************//
  IKeyboard = interface(IDispatch)
    ['{A7C88B82-2330-44E3-B247-1421A018F9C1}']
    function Get_KeyboardLEDs: PSafeArray; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_InternalAndReservedAttribute1IKeyboard: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IKeyboard: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IKeyboard: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IKeyboard: LongWord; safecall;
    procedure PutScancode(aScancode: Integer); safecall;
    function PutScancodes(aScancodes: PSafeArray): LongWord; safecall;
    procedure PutCAD; safecall;
    procedure ReleaseKeys; safecall;
    procedure InternalAndReservedMethod1IKeyboard; safecall;
    procedure InternalAndReservedMethod2IKeyboard; safecall;
    procedure InternalAndReservedMethod3IKeyboard; safecall;
    procedure InternalAndReservedMethod4IKeyboard; safecall;
    property KeyboardLEDs: PSafeArray read Get_KeyboardLEDs;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IKeyboard: LongWord read Get_InternalAndReservedAttribute1IKeyboard;
    property InternalAndReservedAttribute2IKeyboard: LongWord read Get_InternalAndReservedAttribute2IKeyboard;
    property InternalAndReservedAttribute3IKeyboard: LongWord read Get_InternalAndReservedAttribute3IKeyboard;
    property InternalAndReservedAttribute4IKeyboard: LongWord read Get_InternalAndReservedAttribute4IKeyboard;
  end;

// *********************************************************************//
// DispIntf:  IKeyboardDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A7C88B82-2330-44E3-B247-1421A018F9C1}
// *********************************************************************//
  IKeyboardDisp = dispinterface
    ['{A7C88B82-2330-44E3-B247-1421A018F9C1}']
    property KeyboardLEDs: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property EventSource: IEventSource readonly dispid 1610743809;
    property InternalAndReservedAttribute1IKeyboard: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IKeyboard: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute3IKeyboard: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute4IKeyboard: LongWord readonly dispid 1610743813;
    procedure PutScancode(aScancode: Integer); dispid 1610743814;
    function PutScancodes(aScancodes: {NOT_OLEAUTO(PSafeArray)}OleVariant): LongWord; dispid 1610743815;
    procedure PutCAD; dispid 1610743816;
    procedure ReleaseKeys; dispid 1610743817;
    procedure InternalAndReservedMethod1IKeyboard; dispid 1610743818;
    procedure InternalAndReservedMethod2IKeyboard; dispid 1610743819;
    procedure InternalAndReservedMethod3IKeyboard; dispid 1610743820;
    procedure InternalAndReservedMethod4IKeyboard; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IMouse
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {10CD08D0-E8B8-4838-B10C-45BA193734C1}
// *********************************************************************//
  IMouse = interface(IDispatch)
    ['{10CD08D0-E8B8-4838-B10C-45BA193734C1}']
    function Get_AbsoluteSupported: Integer; safecall;
    function Get_RelativeSupported: Integer; safecall;
    function Get_MultiTouchSupported: Integer; safecall;
    function Get_NeedsHostCursor: Integer; safecall;
    function Get_PointerShape: IMousePointerShape; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_InternalAndReservedAttribute1IMouse: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMouse: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMouse: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMouse: LongWord; safecall;
    procedure PutMouseEvent(aDx: Integer; aDy: Integer; aDz: Integer; aDw: Integer; 
                            aButtonState: Integer); safecall;
    procedure PutMouseEventAbsolute(aX: Integer; aY: Integer; aDz: Integer; aDw: Integer; 
                                    aButtonState: Integer); safecall;
    procedure PutEventMultiTouch(aCount: Integer; aContacts: PSafeArray; aScanTime: LongWord); safecall;
    procedure PutEventMultiTouchString(aCount: Integer; const aContacts: WideString; 
                                       aScanTime: LongWord); safecall;
    procedure InternalAndReservedMethod1IMouse; safecall;
    procedure InternalAndReservedMethod2IMouse; safecall;
    procedure InternalAndReservedMethod3IMouse; safecall;
    procedure InternalAndReservedMethod4IMouse; safecall;
    property AbsoluteSupported: Integer read Get_AbsoluteSupported;
    property RelativeSupported: Integer read Get_RelativeSupported;
    property MultiTouchSupported: Integer read Get_MultiTouchSupported;
    property NeedsHostCursor: Integer read Get_NeedsHostCursor;
    property PointerShape: IMousePointerShape read Get_PointerShape;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IMouse: LongWord read Get_InternalAndReservedAttribute1IMouse;
    property InternalAndReservedAttribute2IMouse: LongWord read Get_InternalAndReservedAttribute2IMouse;
    property InternalAndReservedAttribute3IMouse: LongWord read Get_InternalAndReservedAttribute3IMouse;
    property InternalAndReservedAttribute4IMouse: LongWord read Get_InternalAndReservedAttribute4IMouse;
  end;

// *********************************************************************//
// DispIntf:  IMouseDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {10CD08D0-E8B8-4838-B10C-45BA193734C1}
// *********************************************************************//
  IMouseDisp = dispinterface
    ['{10CD08D0-E8B8-4838-B10C-45BA193734C1}']
    property AbsoluteSupported: Integer readonly dispid 1610743808;
    property RelativeSupported: Integer readonly dispid 1610743809;
    property MultiTouchSupported: Integer readonly dispid 1610743810;
    property NeedsHostCursor: Integer readonly dispid 1610743811;
    property PointerShape: IMousePointerShape readonly dispid 1610743812;
    property EventSource: IEventSource readonly dispid 1610743813;
    property InternalAndReservedAttribute1IMouse: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute2IMouse: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute3IMouse: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute4IMouse: LongWord readonly dispid 1610743817;
    procedure PutMouseEvent(aDx: Integer; aDy: Integer; aDz: Integer; aDw: Integer; 
                            aButtonState: Integer); dispid 1610743818;
    procedure PutMouseEventAbsolute(aX: Integer; aY: Integer; aDz: Integer; aDw: Integer; 
                                    aButtonState: Integer); dispid 1610743819;
    procedure PutEventMultiTouch(aCount: Integer; aContacts: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                 aScanTime: LongWord); dispid 1610743820;
    procedure PutEventMultiTouchString(aCount: Integer; const aContacts: WideString; 
                                       aScanTime: LongWord); dispid 1610743821;
    procedure InternalAndReservedMethod1IMouse; dispid 1610743822;
    procedure InternalAndReservedMethod2IMouse; dispid 1610743823;
    procedure InternalAndReservedMethod3IMouse; dispid 1610743824;
    procedure InternalAndReservedMethod4IMouse; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IMousePointerShape
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1E775EA3-9070-4F9C-B0D5-53054496DBE0}
// *********************************************************************//
  IMousePointerShape = interface(IDispatch)
    ['{1E775EA3-9070-4F9C-B0D5-53054496DBE0}']
    function Get_Visible: Integer; safecall;
    function Get_Alpha: Integer; safecall;
    function Get_HotX: LongWord; safecall;
    function Get_HotY: LongWord; safecall;
    function Get_Width: LongWord; safecall;
    function Get_Height: LongWord; safecall;
    function Get_Shape: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IMousePointerShape: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMousePointerShape: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMousePointerShape: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMousePointerShape: LongWord; safecall;
    property Visible: Integer read Get_Visible;
    property Alpha: Integer read Get_Alpha;
    property HotX: LongWord read Get_HotX;
    property HotY: LongWord read Get_HotY;
    property Width: LongWord read Get_Width;
    property Height: LongWord read Get_Height;
    property Shape: PSafeArray read Get_Shape;
    property InternalAndReservedAttribute1IMousePointerShape: LongWord read Get_InternalAndReservedAttribute1IMousePointerShape;
    property InternalAndReservedAttribute2IMousePointerShape: LongWord read Get_InternalAndReservedAttribute2IMousePointerShape;
    property InternalAndReservedAttribute3IMousePointerShape: LongWord read Get_InternalAndReservedAttribute3IMousePointerShape;
    property InternalAndReservedAttribute4IMousePointerShape: LongWord read Get_InternalAndReservedAttribute4IMousePointerShape;
  end;

// *********************************************************************//
// DispIntf:  IMousePointerShapeDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1E775EA3-9070-4F9C-B0D5-53054496DBE0}
// *********************************************************************//
  IMousePointerShapeDisp = dispinterface
    ['{1E775EA3-9070-4F9C-B0D5-53054496DBE0}']
    property Visible: Integer readonly dispid 1610743808;
    property Alpha: Integer readonly dispid 1610743809;
    property HotX: LongWord readonly dispid 1610743810;
    property HotY: LongWord readonly dispid 1610743811;
    property Width: LongWord readonly dispid 1610743812;
    property Height: LongWord readonly dispid 1610743813;
    property Shape: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743814;
    property InternalAndReservedAttribute1IMousePointerShape: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute2IMousePointerShape: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute3IMousePointerShape: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute4IMousePointerShape: LongWord readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IDisplay
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AB4164DB-C13E-4DAB-842D-61EE3F0C1E87}
// *********************************************************************//
  IDisplay = interface(IDispatch)
    ['{AB4164DB-C13E-4DAB-842D-61EE3F0C1E87}']
    function Get_GuestScreenLayout: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute13IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute14IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute15IDisplay: LongWord; safecall;
    function Get_InternalAndReservedAttribute16IDisplay: LongWord; safecall;
    procedure GetScreenResolution(aScreenId: LongWord; out aWidth: LongWord; out aHeight: LongWord; 
                                  out aBitsPerPixel: LongWord; out aXOrigin: Integer; 
                                  out aYOrigin: Integer; out aGuestMonitorStatus: GuestMonitorStatus); safecall;
    function AttachFramebuffer(aScreenId: LongWord; const aFramebuffer: IFramebuffer): WideString; safecall;
    procedure DetachFramebuffer(aScreenId: LongWord; const aId: WideString); safecall;
    function QueryFramebuffer(aScreenId: LongWord): IFramebuffer; safecall;
    procedure SetVideoModeHint(aDisplay: LongWord; aEnabled: Integer; aChangeOrigin: Integer; 
                               aOriginX: Integer; aOriginY: Integer; aWidth: LongWord; 
                               aHeight: LongWord; aBitsPerPixel: LongWord); safecall;
    procedure SetSeamlessMode(aEnabled: Integer); safecall;
    procedure TakeScreenShot(aScreenId: LongWord; var aAddress: Byte; aWidth: LongWord; 
                             aHeight: LongWord; aBitmapFormat: BitmapFormat); safecall;
    function TakeScreenShotToArray(aScreenId: LongWord; aWidth: LongWord; aHeight: LongWord; 
                                   aBitmapFormat: BitmapFormat): PSafeArray; safecall;
    procedure DrawToScreen(aScreenId: LongWord; var aAddress: Byte; aX: LongWord; aY: LongWord; 
                           aWidth: LongWord; aHeight: LongWord); safecall;
    procedure InvalidateAndUpdate; safecall;
    procedure InvalidateAndUpdateScreen(aScreenId: LongWord); safecall;
    procedure CompleteVHWACommand(var aCommand: Byte); safecall;
    procedure ViewportChanged(aScreenId: LongWord; aX: LongWord; aY: LongWord; aWidth: LongWord; 
                              aHeight: LongWord); safecall;
    procedure QuerySourceBitmap(aScreenId: LongWord; out aDisplaySourceBitmap: IDisplaySourceBitmap); safecall;
    procedure NotifyScaleFactorChange(aScreenId: LongWord; aU32ScaleFactorWMultiplied: LongWord; 
                                      aU32ScaleFactorHMultiplied: LongWord); safecall;
    procedure NotifyHiDPIOutputPolicyChange(aFUnscaledHiDPI: Integer); safecall;
    procedure SetScreenLayout(aScreenLayoutMode: ScreenLayoutMode; aGuestScreenInfo: PSafeArray); safecall;
    procedure DetachScreens(aScreenIds: PSafeArray); safecall;
    function CreateGuestScreenInfo(aDisplay: LongWord; aStatus: GuestMonitorStatus; 
                                   aPrimary: Integer; aChangeOrigin: Integer; aOriginX: Integer; 
                                   aOriginY: Integer; aWidth: LongWord; aHeight: LongWord; 
                                   aBitsPerPixel: LongWord): IGuestScreenInfo; safecall;
    procedure InternalAndReservedMethod1IDisplay; safecall;
    procedure InternalAndReservedMethod2IDisplay; safecall;
    procedure InternalAndReservedMethod3IDisplay; safecall;
    procedure InternalAndReservedMethod4IDisplay; safecall;
    procedure InternalAndReservedMethod5IDisplay; safecall;
    procedure InternalAndReservedMethod6IDisplay; safecall;
    procedure InternalAndReservedMethod7IDisplay; safecall;
    procedure InternalAndReservedMethod8IDisplay; safecall;
    property GuestScreenLayout: PSafeArray read Get_GuestScreenLayout;
    property InternalAndReservedAttribute1IDisplay: LongWord read Get_InternalAndReservedAttribute1IDisplay;
    property InternalAndReservedAttribute2IDisplay: LongWord read Get_InternalAndReservedAttribute2IDisplay;
    property InternalAndReservedAttribute3IDisplay: LongWord read Get_InternalAndReservedAttribute3IDisplay;
    property InternalAndReservedAttribute4IDisplay: LongWord read Get_InternalAndReservedAttribute4IDisplay;
    property InternalAndReservedAttribute5IDisplay: LongWord read Get_InternalAndReservedAttribute5IDisplay;
    property InternalAndReservedAttribute6IDisplay: LongWord read Get_InternalAndReservedAttribute6IDisplay;
    property InternalAndReservedAttribute7IDisplay: LongWord read Get_InternalAndReservedAttribute7IDisplay;
    property InternalAndReservedAttribute8IDisplay: LongWord read Get_InternalAndReservedAttribute8IDisplay;
    property InternalAndReservedAttribute9IDisplay: LongWord read Get_InternalAndReservedAttribute9IDisplay;
    property InternalAndReservedAttribute10IDisplay: LongWord read Get_InternalAndReservedAttribute10IDisplay;
    property InternalAndReservedAttribute11IDisplay: LongWord read Get_InternalAndReservedAttribute11IDisplay;
    property InternalAndReservedAttribute12IDisplay: LongWord read Get_InternalAndReservedAttribute12IDisplay;
    property InternalAndReservedAttribute13IDisplay: LongWord read Get_InternalAndReservedAttribute13IDisplay;
    property InternalAndReservedAttribute14IDisplay: LongWord read Get_InternalAndReservedAttribute14IDisplay;
    property InternalAndReservedAttribute15IDisplay: LongWord read Get_InternalAndReservedAttribute15IDisplay;
    property InternalAndReservedAttribute16IDisplay: LongWord read Get_InternalAndReservedAttribute16IDisplay;
  end;

// *********************************************************************//
// DispIntf:  IDisplayDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AB4164DB-C13E-4DAB-842D-61EE3F0C1E87}
// *********************************************************************//
  IDisplayDisp = dispinterface
    ['{AB4164DB-C13E-4DAB-842D-61EE3F0C1E87}']
    property GuestScreenLayout: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1IDisplay: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IDisplay: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IDisplay: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IDisplay: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute5IDisplay: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute6IDisplay: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute7IDisplay: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute8IDisplay: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute9IDisplay: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute10IDisplay: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute11IDisplay: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute12IDisplay: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute13IDisplay: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute14IDisplay: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute15IDisplay: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute16IDisplay: LongWord readonly dispid 1610743824;
    procedure GetScreenResolution(aScreenId: LongWord; out aWidth: LongWord; out aHeight: LongWord; 
                                  out aBitsPerPixel: LongWord; out aXOrigin: Integer; 
                                  out aYOrigin: Integer; out aGuestMonitorStatus: GuestMonitorStatus); dispid 1610743825;
    function AttachFramebuffer(aScreenId: LongWord; const aFramebuffer: IFramebuffer): WideString; dispid 1610743826;
    procedure DetachFramebuffer(aScreenId: LongWord; const aId: WideString); dispid 1610743827;
    function QueryFramebuffer(aScreenId: LongWord): IFramebuffer; dispid 1610743828;
    procedure SetVideoModeHint(aDisplay: LongWord; aEnabled: Integer; aChangeOrigin: Integer; 
                               aOriginX: Integer; aOriginY: Integer; aWidth: LongWord; 
                               aHeight: LongWord; aBitsPerPixel: LongWord); dispid 1610743829;
    procedure SetSeamlessMode(aEnabled: Integer); dispid 1610743830;
    procedure TakeScreenShot(aScreenId: LongWord; var aAddress: Byte; aWidth: LongWord; 
                             aHeight: LongWord; aBitmapFormat: BitmapFormat); dispid 1610743831;
    function TakeScreenShotToArray(aScreenId: LongWord; aWidth: LongWord; aHeight: LongWord; 
                                   aBitmapFormat: BitmapFormat): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743832;
    procedure DrawToScreen(aScreenId: LongWord; var aAddress: Byte; aX: LongWord; aY: LongWord; 
                           aWidth: LongWord; aHeight: LongWord); dispid 1610743833;
    procedure InvalidateAndUpdate; dispid 1610743834;
    procedure InvalidateAndUpdateScreen(aScreenId: LongWord); dispid 1610743835;
    procedure CompleteVHWACommand(var aCommand: Byte); dispid 1610743836;
    procedure ViewportChanged(aScreenId: LongWord; aX: LongWord; aY: LongWord; aWidth: LongWord; 
                              aHeight: LongWord); dispid 1610743837;
    procedure QuerySourceBitmap(aScreenId: LongWord; out aDisplaySourceBitmap: IDisplaySourceBitmap); dispid 1610743838;
    procedure NotifyScaleFactorChange(aScreenId: LongWord; aU32ScaleFactorWMultiplied: LongWord; 
                                      aU32ScaleFactorHMultiplied: LongWord); dispid 1610743839;
    procedure NotifyHiDPIOutputPolicyChange(aFUnscaledHiDPI: Integer); dispid 1610743840;
    procedure SetScreenLayout(aScreenLayoutMode: ScreenLayoutMode; 
                              aGuestScreenInfo: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743841;
    procedure DetachScreens(aScreenIds: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743842;
    function CreateGuestScreenInfo(aDisplay: LongWord; aStatus: GuestMonitorStatus; 
                                   aPrimary: Integer; aChangeOrigin: Integer; aOriginX: Integer; 
                                   aOriginY: Integer; aWidth: LongWord; aHeight: LongWord; 
                                   aBitsPerPixel: LongWord): IGuestScreenInfo; dispid 1610743843;
    procedure InternalAndReservedMethod1IDisplay; dispid 1610743844;
    procedure InternalAndReservedMethod2IDisplay; dispid 1610743845;
    procedure InternalAndReservedMethod3IDisplay; dispid 1610743846;
    procedure InternalAndReservedMethod4IDisplay; dispid 1610743847;
    procedure InternalAndReservedMethod5IDisplay; dispid 1610743848;
    procedure InternalAndReservedMethod6IDisplay; dispid 1610743849;
    procedure InternalAndReservedMethod7IDisplay; dispid 1610743850;
    procedure InternalAndReservedMethod8IDisplay; dispid 1610743851;
  end;

// *********************************************************************//
// Interface: IGuestScreenInfo
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6B2F98F8-9641-4397-854A-040439D0114B}
// *********************************************************************//
  IGuestScreenInfo = interface(IDispatch)
    ['{6B2F98F8-9641-4397-854A-040439D0114B}']
    function Get_ScreenId: LongWord; safecall;
    function Get_GuestMonitorStatus: GuestMonitorStatus; safecall;
    function Get_Primary: Integer; safecall;
    function Get_Origin: Integer; safecall;
    function Get_OriginX: Integer; safecall;
    function Get_OriginY: Integer; safecall;
    function Get_Width: LongWord; safecall;
    function Get_Height: LongWord; safecall;
    function Get_BitsPerPixel: LongWord; safecall;
    function Get_ExtendedInfo: WideString; safecall;
    property ScreenId: LongWord read Get_ScreenId;
    property GuestMonitorStatus: GuestMonitorStatus read Get_GuestMonitorStatus;
    property Primary: Integer read Get_Primary;
    property Origin: Integer read Get_Origin;
    property OriginX: Integer read Get_OriginX;
    property OriginY: Integer read Get_OriginY;
    property Width: LongWord read Get_Width;
    property Height: LongWord read Get_Height;
    property BitsPerPixel: LongWord read Get_BitsPerPixel;
    property ExtendedInfo: WideString read Get_ExtendedInfo;
  end;

// *********************************************************************//
// DispIntf:  IGuestScreenInfoDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6B2F98F8-9641-4397-854A-040439D0114B}
// *********************************************************************//
  IGuestScreenInfoDisp = dispinterface
    ['{6B2F98F8-9641-4397-854A-040439D0114B}']
    property ScreenId: LongWord readonly dispid 1610743808;
    property GuestMonitorStatus: GuestMonitorStatus readonly dispid 1610743809;
    property Primary: Integer readonly dispid 1610743810;
    property Origin: Integer readonly dispid 1610743811;
    property OriginX: Integer readonly dispid 1610743812;
    property OriginY: Integer readonly dispid 1610743813;
    property Width: LongWord readonly dispid 1610743814;
    property Height: LongWord readonly dispid 1610743815;
    property BitsPerPixel: LongWord readonly dispid 1610743816;
    property ExtendedInfo: WideString readonly dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IFramebuffer
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1E8D3F27-B45C-48AE-8B36-D35E83D207AA}
// *********************************************************************//
  IFramebuffer = interface(IDispatch)
    ['{1E8D3F27-B45C-48AE-8B36-D35E83D207AA}']
    function Get_Width: LongWord; safecall;
    function Get_Height: LongWord; safecall;
    function Get_BitsPerPixel: LongWord; safecall;
    function Get_BytesPerLine: LongWord; safecall;
    function Get_PixelFormat: BitmapFormat; safecall;
    function Get_HeightReduction: LongWord; safecall;
    function Get_Overlay: IFramebufferOverlay; safecall;
    function Get_WinId: Int64; safecall;
    function Get_Capabilities: PSafeArray; safecall;
    procedure NotifyUpdate(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord); safecall;
    procedure NotifyUpdateImage(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord; 
                                aImage: PSafeArray); safecall;
    procedure NotifyChange(aScreenId: LongWord; aXOrigin: LongWord; aYOrigin: LongWord; 
                           aWidth: LongWord; aHeight: LongWord); safecall;
    function VideoModeSupported(aWidth: LongWord; aHeight: LongWord; aBpp: LongWord): Integer; safecall;
    function GetVisibleRegion(var aRectangles: Byte; aCount: LongWord): LongWord; safecall;
    procedure SetVisibleRegion(var aRectangles: Byte; aCount: LongWord); safecall;
    procedure ProcessVHWACommand(var aCommand: Byte; aEnmCmd: Integer; aFromGuest: Integer); safecall;
    procedure Notify3DEvent(aType: LongWord; aData: PSafeArray); safecall;
    property Width: LongWord read Get_Width;
    property Height: LongWord read Get_Height;
    property BitsPerPixel: LongWord read Get_BitsPerPixel;
    property BytesPerLine: LongWord read Get_BytesPerLine;
    property PixelFormat: BitmapFormat read Get_PixelFormat;
    property HeightReduction: LongWord read Get_HeightReduction;
    property Overlay: IFramebufferOverlay read Get_Overlay;
    property WinId: Int64 read Get_WinId;
    property Capabilities: PSafeArray read Get_Capabilities;
  end;

// *********************************************************************//
// DispIntf:  IFramebufferDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1E8D3F27-B45C-48AE-8B36-D35E83D207AA}
// *********************************************************************//
  IFramebufferDisp = dispinterface
    ['{1E8D3F27-B45C-48AE-8B36-D35E83D207AA}']
    property Width: LongWord readonly dispid 1610743808;
    property Height: LongWord readonly dispid 1610743809;
    property BitsPerPixel: LongWord readonly dispid 1610743810;
    property BytesPerLine: LongWord readonly dispid 1610743811;
    property PixelFormat: BitmapFormat readonly dispid 1610743812;
    property HeightReduction: LongWord readonly dispid 1610743813;
    property Overlay: IFramebufferOverlay readonly dispid 1610743814;
    property WinId: Int64 readonly dispid 1610743815;
    property Capabilities: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743816;
    procedure NotifyUpdate(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord); dispid 1610743817;
    procedure NotifyUpdateImage(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord; 
                                aImage: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743818;
    procedure NotifyChange(aScreenId: LongWord; aXOrigin: LongWord; aYOrigin: LongWord; 
                           aWidth: LongWord; aHeight: LongWord); dispid 1610743819;
    function VideoModeSupported(aWidth: LongWord; aHeight: LongWord; aBpp: LongWord): Integer; dispid 1610743820;
    function GetVisibleRegion(var aRectangles: Byte; aCount: LongWord): LongWord; dispid 1610743821;
    procedure SetVisibleRegion(var aRectangles: Byte; aCount: LongWord); dispid 1610743822;
    procedure ProcessVHWACommand(var aCommand: Byte; aEnmCmd: Integer; aFromGuest: Integer); dispid 1610743823;
    procedure Notify3DEvent(aType: LongWord; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IFramebufferOverlay
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AF398A9A-6B76-4805-8FAB-00A9DCF4732B}
// *********************************************************************//
  IFramebufferOverlay = interface(IFramebuffer)
    ['{AF398A9A-6B76-4805-8FAB-00A9DCF4732B}']
    function Get_X: LongWord; safecall;
    function Get_Y: LongWord; safecall;
    function Get_Visible: Integer; safecall;
    procedure Set_Visible(aVisible: Integer); safecall;
    function Get_Alpha: LongWord; safecall;
    procedure Set_Alpha(aAlpha: LongWord); safecall;
    procedure Move(aX: LongWord; aY: LongWord); safecall;
    property X: LongWord read Get_X;
    property Y: LongWord read Get_Y;
    property Visible: Integer read Get_Visible write Set_Visible;
    property Alpha: LongWord read Get_Alpha write Set_Alpha;
  end;

// *********************************************************************//
// DispIntf:  IFramebufferOverlayDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {AF398A9A-6B76-4805-8FAB-00A9DCF4732B}
// *********************************************************************//
  IFramebufferOverlayDisp = dispinterface
    ['{AF398A9A-6B76-4805-8FAB-00A9DCF4732B}']
    property X: LongWord readonly dispid 1610809344;
    property Y: LongWord readonly dispid 1610809345;
    property Visible: Integer dispid 1610809346;
    property Alpha: LongWord dispid 1610809348;
    procedure Move(aX: LongWord; aY: LongWord); dispid 1610809350;
    property Width: LongWord readonly dispid 1610743808;
    property Height: LongWord readonly dispid 1610743809;
    property BitsPerPixel: LongWord readonly dispid 1610743810;
    property BytesPerLine: LongWord readonly dispid 1610743811;
    property PixelFormat: BitmapFormat readonly dispid 1610743812;
    property HeightReduction: LongWord readonly dispid 1610743813;
    property Overlay: IFramebufferOverlay readonly dispid 1610743814;
    property WinId: Int64 readonly dispid 1610743815;
    property Capabilities: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743816;
    procedure NotifyUpdate(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord); dispid 1610743817;
    procedure NotifyUpdateImage(aX: LongWord; aY: LongWord; aWidth: LongWord; aHeight: LongWord; 
                                aImage: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743818;
    procedure NotifyChange(aScreenId: LongWord; aXOrigin: LongWord; aYOrigin: LongWord; 
                           aWidth: LongWord; aHeight: LongWord); dispid 1610743819;
    function VideoModeSupported(aWidth: LongWord; aHeight: LongWord; aBpp: LongWord): Integer; dispid 1610743820;
    function GetVisibleRegion(var aRectangles: Byte; aCount: LongWord): LongWord; dispid 1610743821;
    procedure SetVisibleRegion(var aRectangles: Byte; aCount: LongWord); dispid 1610743822;
    procedure ProcessVHWACommand(var aCommand: Byte; aEnmCmd: Integer; aFromGuest: Integer); dispid 1610743823;
    procedure Notify3DEvent(aType: LongWord; aData: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IDisplaySourceBitmap
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0B78DAEB-F52F-43B9-99E8-4A3C226CBE2D}
// *********************************************************************//
  IDisplaySourceBitmap = interface(IDispatch)
    ['{0B78DAEB-F52F-43B9-99E8-4A3C226CBE2D}']
    function Get_ScreenId: LongWord; safecall;
    procedure QueryBitmapInfo(out aAddress: PByte1; out aWidth: LongWord; out aHeight: LongWord; 
                              out aBitsPerPixel: LongWord; out aBytesPerLine: LongWord; 
                              out aBitmapFormat: BitmapFormat); safecall;
    property ScreenId: LongWord read Get_ScreenId;
  end;

// *********************************************************************//
// DispIntf:  IDisplaySourceBitmapDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0B78DAEB-F52F-43B9-99E8-4A3C226CBE2D}
// *********************************************************************//
  IDisplaySourceBitmapDisp = dispinterface
    ['{0B78DAEB-F52F-43B9-99E8-4A3C226CBE2D}']
    property ScreenId: LongWord readonly dispid 1610743808;
    procedure QueryBitmapInfo(out aAddress: {NOT_OLEAUTO(PByte1)}OleVariant; out aWidth: LongWord; 
                              out aHeight: LongWord; out aBitsPerPixel: LongWord; 
                              out aBytesPerLine: LongWord; out aBitmapFormat: BitmapFormat); dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IMachineDebugger
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E91BB944-F211-4BD5-B44C-8F1D0BEAFA13}
// *********************************************************************//
  IMachineDebugger = interface(IDispatch)
    ['{E91BB944-F211-4BD5-B44C-8F1D0BEAFA13}']
    function Get_SingleStep: Integer; safecall;
    procedure Set_SingleStep(aSingleStep: Integer); safecall;
    function Get_RecompileUser: Integer; safecall;
    procedure Set_RecompileUser(aRecompileUser: Integer); safecall;
    function Get_RecompileSupervisor: Integer; safecall;
    procedure Set_RecompileSupervisor(aRecompileSupervisor: Integer); safecall;
    function Get_ExecuteAllInIEM: Integer; safecall;
    procedure Set_ExecuteAllInIEM(aExecuteAllInIEM: Integer); safecall;
    function Get_PATMEnabled: Integer; safecall;
    procedure Set_PATMEnabled(aPATMEnabled: Integer); safecall;
    function Get_CSAMEnabled: Integer; safecall;
    procedure Set_CSAMEnabled(aCSAMEnabled: Integer); safecall;
    function Get_LogEnabled: Integer; safecall;
    procedure Set_LogEnabled(aLogEnabled: Integer); safecall;
    function Get_LogDbgFlags: WideString; safecall;
    function Get_LogDbgGroups: WideString; safecall;
    function Get_LogDbgDestinations: WideString; safecall;
    function Get_LogRelFlags: WideString; safecall;
    function Get_LogRelGroups: WideString; safecall;
    function Get_LogRelDestinations: WideString; safecall;
    function Get_ExecutionEngine: VMExecutionEngine; safecall;
    function Get_HWVirtExEnabled: Integer; safecall;
    function Get_HWVirtExNestedPagingEnabled: Integer; safecall;
    function Get_HWVirtExVPIDEnabled: Integer; safecall;
    function Get_HWVirtExUXEnabled: Integer; safecall;
    function Get_OSName: WideString; safecall;
    function Get_OSVersion: WideString; safecall;
    function Get_PAEEnabled: Integer; safecall;
    function Get_VirtualTimeRate: LongWord; safecall;
    procedure Set_VirtualTimeRate(aVirtualTimeRate: LongWord); safecall;
    function Get_VM: Int64; safecall;
    function Get_Uptime: Int64; safecall;
    function Get_InternalAndReservedAttribute1IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute13IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute14IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute15IMachineDebugger: LongWord; safecall;
    function Get_InternalAndReservedAttribute16IMachineDebugger: LongWord; safecall;
    procedure DumpGuestCore(const aFilename: WideString; const aCompression: WideString); safecall;
    procedure DumpHostProcessCore(const aFilename: WideString; const aCompression: WideString); safecall;
    function Info(const aName: WideString; const aArgs: WideString): WideString; safecall;
    procedure InjectNMI; safecall;
    procedure ModifyLogGroups(const aSettings: WideString); safecall;
    procedure ModifyLogFlags(const aSettings: WideString); safecall;
    procedure ModifyLogDestinations(const aSettings: WideString); safecall;
    function ReadPhysicalMemory(aAddress: Int64; aSize: LongWord): PSafeArray; safecall;
    procedure WritePhysicalMemory(aAddress: Int64; aSize: LongWord; aBytes: PSafeArray); safecall;
    function ReadVirtualMemory(aCpuId: LongWord; aAddress: Int64; aSize: LongWord): PSafeArray; safecall;
    procedure WriteVirtualMemory(aCpuId: LongWord; aAddress: Int64; aSize: LongWord; 
                                 aBytes: PSafeArray); safecall;
    function LoadPlugIn(const aName: WideString): WideString; safecall;
    procedure UnloadPlugIn(const aName: WideString); safecall;
    function DetectOS: WideString; safecall;
    function QueryOSKernelLog(aMaxMessages: LongWord): WideString; safecall;
    function GetRegister(aCpuId: LongWord; const aName: WideString): WideString; safecall;
    procedure GetRegisters(aCpuId: LongWord; out aNames: PSafeArray; out aValues: PSafeArray); safecall;
    procedure SetRegister(aCpuId: LongWord; const aName: WideString; const aValue: WideString); safecall;
    procedure SetRegisters(aCpuId: LongWord; aNames: PSafeArray; aValues: PSafeArray); safecall;
    function DumpGuestStack(aCpuId: LongWord): WideString; safecall;
    procedure ResetStats(const aPattern: WideString); safecall;
    procedure DumpStats(const aPattern: WideString); safecall;
    function GetStats(const aPattern: WideString; aWithDescriptions: Integer): WideString; safecall;
    procedure InternalAndReservedMethod1IMachineDebugger; safecall;
    procedure InternalAndReservedMethod2IMachineDebugger; safecall;
    procedure InternalAndReservedMethod3IMachineDebugger; safecall;
    procedure InternalAndReservedMethod4IMachineDebugger; safecall;
    procedure InternalAndReservedMethod5IMachineDebugger; safecall;
    procedure InternalAndReservedMethod6IMachineDebugger; safecall;
    procedure InternalAndReservedMethod7IMachineDebugger; safecall;
    procedure InternalAndReservedMethod8IMachineDebugger; safecall;
    procedure InternalAndReservedMethod9IMachineDebugger; safecall;
    procedure InternalAndReservedMethod10IMachineDebugger; safecall;
    procedure InternalAndReservedMethod11IMachineDebugger; safecall;
    procedure InternalAndReservedMethod12IMachineDebugger; safecall;
    procedure InternalAndReservedMethod13IMachineDebugger; safecall;
    procedure InternalAndReservedMethod14IMachineDebugger; safecall;
    procedure InternalAndReservedMethod15IMachineDebugger; safecall;
    procedure InternalAndReservedMethod16IMachineDebugger; safecall;
    property SingleStep: Integer read Get_SingleStep write Set_SingleStep;
    property RecompileUser: Integer read Get_RecompileUser write Set_RecompileUser;
    property RecompileSupervisor: Integer read Get_RecompileSupervisor write Set_RecompileSupervisor;
    property ExecuteAllInIEM: Integer read Get_ExecuteAllInIEM write Set_ExecuteAllInIEM;
    property PATMEnabled: Integer read Get_PATMEnabled write Set_PATMEnabled;
    property CSAMEnabled: Integer read Get_CSAMEnabled write Set_CSAMEnabled;
    property LogEnabled: Integer read Get_LogEnabled write Set_LogEnabled;
    property LogDbgFlags: WideString read Get_LogDbgFlags;
    property LogDbgGroups: WideString read Get_LogDbgGroups;
    property LogDbgDestinations: WideString read Get_LogDbgDestinations;
    property LogRelFlags: WideString read Get_LogRelFlags;
    property LogRelGroups: WideString read Get_LogRelGroups;
    property LogRelDestinations: WideString read Get_LogRelDestinations;
    property ExecutionEngine: VMExecutionEngine read Get_ExecutionEngine;
    property HWVirtExEnabled: Integer read Get_HWVirtExEnabled;
    property HWVirtExNestedPagingEnabled: Integer read Get_HWVirtExNestedPagingEnabled;
    property HWVirtExVPIDEnabled: Integer read Get_HWVirtExVPIDEnabled;
    property HWVirtExUXEnabled: Integer read Get_HWVirtExUXEnabled;
    property OSName: WideString read Get_OSName;
    property OSVersion: WideString read Get_OSVersion;
    property PAEEnabled: Integer read Get_PAEEnabled;
    property VirtualTimeRate: LongWord read Get_VirtualTimeRate write Set_VirtualTimeRate;
    property VM: Int64 read Get_VM;
    property Uptime: Int64 read Get_Uptime;
    property InternalAndReservedAttribute1IMachineDebugger: LongWord read Get_InternalAndReservedAttribute1IMachineDebugger;
    property InternalAndReservedAttribute2IMachineDebugger: LongWord read Get_InternalAndReservedAttribute2IMachineDebugger;
    property InternalAndReservedAttribute3IMachineDebugger: LongWord read Get_InternalAndReservedAttribute3IMachineDebugger;
    property InternalAndReservedAttribute4IMachineDebugger: LongWord read Get_InternalAndReservedAttribute4IMachineDebugger;
    property InternalAndReservedAttribute5IMachineDebugger: LongWord read Get_InternalAndReservedAttribute5IMachineDebugger;
    property InternalAndReservedAttribute6IMachineDebugger: LongWord read Get_InternalAndReservedAttribute6IMachineDebugger;
    property InternalAndReservedAttribute7IMachineDebugger: LongWord read Get_InternalAndReservedAttribute7IMachineDebugger;
    property InternalAndReservedAttribute8IMachineDebugger: LongWord read Get_InternalAndReservedAttribute8IMachineDebugger;
    property InternalAndReservedAttribute9IMachineDebugger: LongWord read Get_InternalAndReservedAttribute9IMachineDebugger;
    property InternalAndReservedAttribute10IMachineDebugger: LongWord read Get_InternalAndReservedAttribute10IMachineDebugger;
    property InternalAndReservedAttribute11IMachineDebugger: LongWord read Get_InternalAndReservedAttribute11IMachineDebugger;
    property InternalAndReservedAttribute12IMachineDebugger: LongWord read Get_InternalAndReservedAttribute12IMachineDebugger;
    property InternalAndReservedAttribute13IMachineDebugger: LongWord read Get_InternalAndReservedAttribute13IMachineDebugger;
    property InternalAndReservedAttribute14IMachineDebugger: LongWord read Get_InternalAndReservedAttribute14IMachineDebugger;
    property InternalAndReservedAttribute15IMachineDebugger: LongWord read Get_InternalAndReservedAttribute15IMachineDebugger;
    property InternalAndReservedAttribute16IMachineDebugger: LongWord read Get_InternalAndReservedAttribute16IMachineDebugger;
  end;

// *********************************************************************//
// DispIntf:  IMachineDebuggerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E91BB944-F211-4BD5-B44C-8F1D0BEAFA13}
// *********************************************************************//
  IMachineDebuggerDisp = dispinterface
    ['{E91BB944-F211-4BD5-B44C-8F1D0BEAFA13}']
    property SingleStep: Integer dispid 1610743808;
    property RecompileUser: Integer dispid 1610743810;
    property RecompileSupervisor: Integer dispid 1610743812;
    property ExecuteAllInIEM: Integer dispid 1610743814;
    property PATMEnabled: Integer dispid 1610743816;
    property CSAMEnabled: Integer dispid 1610743818;
    property LogEnabled: Integer dispid 1610743820;
    property LogDbgFlags: WideString readonly dispid 1610743822;
    property LogDbgGroups: WideString readonly dispid 1610743823;
    property LogDbgDestinations: WideString readonly dispid 1610743824;
    property LogRelFlags: WideString readonly dispid 1610743825;
    property LogRelGroups: WideString readonly dispid 1610743826;
    property LogRelDestinations: WideString readonly dispid 1610743827;
    property ExecutionEngine: VMExecutionEngine readonly dispid 1610743828;
    property HWVirtExEnabled: Integer readonly dispid 1610743829;
    property HWVirtExNestedPagingEnabled: Integer readonly dispid 1610743830;
    property HWVirtExVPIDEnabled: Integer readonly dispid 1610743831;
    property HWVirtExUXEnabled: Integer readonly dispid 1610743832;
    property OSName: WideString readonly dispid 1610743833;
    property OSVersion: WideString readonly dispid 1610743834;
    property PAEEnabled: Integer readonly dispid 1610743835;
    property VirtualTimeRate: LongWord dispid 1610743836;
    property VM: Int64 readonly dispid 1610743838;
    property Uptime: Int64 readonly dispid 1610743839;
    property InternalAndReservedAttribute1IMachineDebugger: LongWord readonly dispid 1610743840;
    property InternalAndReservedAttribute2IMachineDebugger: LongWord readonly dispid 1610743841;
    property InternalAndReservedAttribute3IMachineDebugger: LongWord readonly dispid 1610743842;
    property InternalAndReservedAttribute4IMachineDebugger: LongWord readonly dispid 1610743843;
    property InternalAndReservedAttribute5IMachineDebugger: LongWord readonly dispid 1610743844;
    property InternalAndReservedAttribute6IMachineDebugger: LongWord readonly dispid 1610743845;
    property InternalAndReservedAttribute7IMachineDebugger: LongWord readonly dispid 1610743846;
    property InternalAndReservedAttribute8IMachineDebugger: LongWord readonly dispid 1610743847;
    property InternalAndReservedAttribute9IMachineDebugger: LongWord readonly dispid 1610743848;
    property InternalAndReservedAttribute10IMachineDebugger: LongWord readonly dispid 1610743849;
    property InternalAndReservedAttribute11IMachineDebugger: LongWord readonly dispid 1610743850;
    property InternalAndReservedAttribute12IMachineDebugger: LongWord readonly dispid 1610743851;
    property InternalAndReservedAttribute13IMachineDebugger: LongWord readonly dispid 1610743852;
    property InternalAndReservedAttribute14IMachineDebugger: LongWord readonly dispid 1610743853;
    property InternalAndReservedAttribute15IMachineDebugger: LongWord readonly dispid 1610743854;
    property InternalAndReservedAttribute16IMachineDebugger: LongWord readonly dispid 1610743855;
    procedure DumpGuestCore(const aFilename: WideString; const aCompression: WideString); dispid 1610743856;
    procedure DumpHostProcessCore(const aFilename: WideString; const aCompression: WideString); dispid 1610743857;
    function Info(const aName: WideString; const aArgs: WideString): WideString; dispid 1610743858;
    procedure InjectNMI; dispid 1610743859;
    procedure ModifyLogGroups(const aSettings: WideString); dispid 1610743860;
    procedure ModifyLogFlags(const aSettings: WideString); dispid 1610743861;
    procedure ModifyLogDestinations(const aSettings: WideString); dispid 1610743862;
    function ReadPhysicalMemory(aAddress: Int64; aSize: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743863;
    procedure WritePhysicalMemory(aAddress: Int64; aSize: LongWord; 
                                  aBytes: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743864;
    function ReadVirtualMemory(aCpuId: LongWord; aAddress: Int64; aSize: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743865;
    procedure WriteVirtualMemory(aCpuId: LongWord; aAddress: Int64; aSize: LongWord; 
                                 aBytes: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743866;
    function LoadPlugIn(const aName: WideString): WideString; dispid 1610743867;
    procedure UnloadPlugIn(const aName: WideString); dispid 1610743868;
    function DetectOS: WideString; dispid 1610743869;
    function QueryOSKernelLog(aMaxMessages: LongWord): WideString; dispid 1610743870;
    function GetRegister(aCpuId: LongWord; const aName: WideString): WideString; dispid 1610743871;
    procedure GetRegisters(aCpuId: LongWord; out aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           out aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743872;
    procedure SetRegister(aCpuId: LongWord; const aName: WideString; const aValue: WideString); dispid 1610743873;
    procedure SetRegisters(aCpuId: LongWord; aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743874;
    function DumpGuestStack(aCpuId: LongWord): WideString; dispid 1610743875;
    procedure ResetStats(const aPattern: WideString); dispid 1610743876;
    procedure DumpStats(const aPattern: WideString); dispid 1610743877;
    function GetStats(const aPattern: WideString; aWithDescriptions: Integer): WideString; dispid 1610743878;
    procedure InternalAndReservedMethod1IMachineDebugger; dispid 1610743879;
    procedure InternalAndReservedMethod2IMachineDebugger; dispid 1610743880;
    procedure InternalAndReservedMethod3IMachineDebugger; dispid 1610743881;
    procedure InternalAndReservedMethod4IMachineDebugger; dispid 1610743882;
    procedure InternalAndReservedMethod5IMachineDebugger; dispid 1610743883;
    procedure InternalAndReservedMethod6IMachineDebugger; dispid 1610743884;
    procedure InternalAndReservedMethod7IMachineDebugger; dispid 1610743885;
    procedure InternalAndReservedMethod8IMachineDebugger; dispid 1610743886;
    procedure InternalAndReservedMethod9IMachineDebugger; dispid 1610743887;
    procedure InternalAndReservedMethod10IMachineDebugger; dispid 1610743888;
    procedure InternalAndReservedMethod11IMachineDebugger; dispid 1610743889;
    procedure InternalAndReservedMethod12IMachineDebugger; dispid 1610743890;
    procedure InternalAndReservedMethod13IMachineDebugger; dispid 1610743891;
    procedure InternalAndReservedMethod14IMachineDebugger; dispid 1610743892;
    procedure InternalAndReservedMethod15IMachineDebugger; dispid 1610743893;
    procedure InternalAndReservedMethod16IMachineDebugger; dispid 1610743894;
  end;

// *********************************************************************//
// Interface: IVRDEServerInfo
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C39EF4D6-7532-45E8-96DA-EB5986AE76E4}
// *********************************************************************//
  IVRDEServerInfo = interface(IDispatch)
    ['{C39EF4D6-7532-45E8-96DA-EB5986AE76E4}']
    function Get_Active: Integer; safecall;
    function Get_Port: Integer; safecall;
    function Get_NumberOfClients: LongWord; safecall;
    function Get_BeginTime: Int64; safecall;
    function Get_EndTime: Int64; safecall;
    function Get_BytesSent: Int64; safecall;
    function Get_BytesSentTotal: Int64; safecall;
    function Get_BytesReceived: Int64; safecall;
    function Get_BytesReceivedTotal: Int64; safecall;
    function Get_User: WideString; safecall;
    function Get_Domain: WideString; safecall;
    function Get_ClientName: WideString; safecall;
    function Get_ClientIP: WideString; safecall;
    function Get_ClientVersion: LongWord; safecall;
    function Get_EncryptionStyle: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IVRDEServerInfo: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IVRDEServerInfo: LongWord; safecall;
    property Active: Integer read Get_Active;
    property Port: Integer read Get_Port;
    property NumberOfClients: LongWord read Get_NumberOfClients;
    property BeginTime: Int64 read Get_BeginTime;
    property EndTime: Int64 read Get_EndTime;
    property BytesSent: Int64 read Get_BytesSent;
    property BytesSentTotal: Int64 read Get_BytesSentTotal;
    property BytesReceived: Int64 read Get_BytesReceived;
    property BytesReceivedTotal: Int64 read Get_BytesReceivedTotal;
    property User: WideString read Get_User;
    property Domain: WideString read Get_Domain;
    property ClientName: WideString read Get_ClientName;
    property ClientIP: WideString read Get_ClientIP;
    property ClientVersion: LongWord read Get_ClientVersion;
    property EncryptionStyle: LongWord read Get_EncryptionStyle;
    property InternalAndReservedAttribute1IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute1IVRDEServerInfo;
    property InternalAndReservedAttribute2IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute2IVRDEServerInfo;
    property InternalAndReservedAttribute3IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute3IVRDEServerInfo;
    property InternalAndReservedAttribute4IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute4IVRDEServerInfo;
    property InternalAndReservedAttribute5IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute5IVRDEServerInfo;
    property InternalAndReservedAttribute6IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute6IVRDEServerInfo;
    property InternalAndReservedAttribute7IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute7IVRDEServerInfo;
    property InternalAndReservedAttribute8IVRDEServerInfo: LongWord read Get_InternalAndReservedAttribute8IVRDEServerInfo;
  end;

// *********************************************************************//
// DispIntf:  IVRDEServerInfoDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C39EF4D6-7532-45E8-96DA-EB5986AE76E4}
// *********************************************************************//
  IVRDEServerInfoDisp = dispinterface
    ['{C39EF4D6-7532-45E8-96DA-EB5986AE76E4}']
    property Active: Integer readonly dispid 1610743808;
    property Port: Integer readonly dispid 1610743809;
    property NumberOfClients: LongWord readonly dispid 1610743810;
    property BeginTime: Int64 readonly dispid 1610743811;
    property EndTime: Int64 readonly dispid 1610743812;
    property BytesSent: Int64 readonly dispid 1610743813;
    property BytesSentTotal: Int64 readonly dispid 1610743814;
    property BytesReceived: Int64 readonly dispid 1610743815;
    property BytesReceivedTotal: Int64 readonly dispid 1610743816;
    property User: WideString readonly dispid 1610743817;
    property Domain: WideString readonly dispid 1610743818;
    property ClientName: WideString readonly dispid 1610743819;
    property ClientIP: WideString readonly dispid 1610743820;
    property ClientVersion: LongWord readonly dispid 1610743821;
    property EncryptionStyle: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute1IVRDEServerInfo: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2IVRDEServerInfo: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3IVRDEServerInfo: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4IVRDEServerInfo: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute5IVRDEServerInfo: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute6IVRDEServerInfo: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute7IVRDEServerInfo: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute8IVRDEServerInfo: LongWord readonly dispid 1610743830;
  end;

// *********************************************************************//
// Interface: IEmulatedUSB
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6E253EE8-477A-2497-6759-88B8292A5AF0}
// *********************************************************************//
  IEmulatedUSB = interface(IDispatch)
    ['{6E253EE8-477A-2497-6759-88B8292A5AF0}']
    function Get_Webcams: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IEmulatedUSB: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IEmulatedUSB: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IEmulatedUSB: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IEmulatedUSB: LongWord; safecall;
    procedure WebcamAttach(const aPath: WideString; const aSettings: WideString); safecall;
    procedure WebcamDetach(const aPath: WideString); safecall;
    procedure InternalAndReservedMethod1IEmulatedUSB; safecall;
    procedure InternalAndReservedMethod2IEmulatedUSB; safecall;
    procedure InternalAndReservedMethod3IEmulatedUSB; safecall;
    procedure InternalAndReservedMethod4IEmulatedUSB; safecall;
    property Webcams: PSafeArray read Get_Webcams;
    property InternalAndReservedAttribute1IEmulatedUSB: LongWord read Get_InternalAndReservedAttribute1IEmulatedUSB;
    property InternalAndReservedAttribute2IEmulatedUSB: LongWord read Get_InternalAndReservedAttribute2IEmulatedUSB;
    property InternalAndReservedAttribute3IEmulatedUSB: LongWord read Get_InternalAndReservedAttribute3IEmulatedUSB;
    property InternalAndReservedAttribute4IEmulatedUSB: LongWord read Get_InternalAndReservedAttribute4IEmulatedUSB;
  end;

// *********************************************************************//
// DispIntf:  IEmulatedUSBDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6E253EE8-477A-2497-6759-88B8292A5AF0}
// *********************************************************************//
  IEmulatedUSBDisp = dispinterface
    ['{6E253EE8-477A-2497-6759-88B8292A5AF0}']
    property Webcams: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1IEmulatedUSB: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IEmulatedUSB: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IEmulatedUSB: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IEmulatedUSB: LongWord readonly dispid 1610743812;
    procedure WebcamAttach(const aPath: WideString; const aSettings: WideString); dispid 1610743813;
    procedure WebcamDetach(const aPath: WideString); dispid 1610743814;
    procedure InternalAndReservedMethod1IEmulatedUSB; dispid 1610743815;
    procedure InternalAndReservedMethod2IEmulatedUSB; dispid 1610743816;
    procedure InternalAndReservedMethod3IEmulatedUSB; dispid 1610743817;
    procedure InternalAndReservedMethod4IEmulatedUSB; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: INetworkAdapter
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E9A0C183-7071-4894-93D6-DCBEC010FA91}
// *********************************************************************//
  INetworkAdapter = interface(IDispatch)
    ['{E9A0C183-7071-4894-93D6-DCBEC010FA91}']
    function Get_AdapterType: NetworkAdapterType; safecall;
    procedure Set_AdapterType(aAdapterType: NetworkAdapterType); safecall;
    function Get_Slot: LongWord; safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_MACAddress: WideString; safecall;
    procedure Set_MACAddress(const aMACAddress: WideString); safecall;
    function Get_AttachmentType: NetworkAttachmentType; safecall;
    procedure Set_AttachmentType(aAttachmentType: NetworkAttachmentType); safecall;
    function Get_BridgedInterface: WideString; safecall;
    procedure Set_BridgedInterface(const aBridgedInterface: WideString); safecall;
    function Get_HostOnlyInterface: WideString; safecall;
    procedure Set_HostOnlyInterface(const aHostOnlyInterface: WideString); safecall;
    function Get_InternalNetwork: WideString; safecall;
    procedure Set_InternalNetwork(const aInternalNetwork: WideString); safecall;
    function Get_NATNetwork: WideString; safecall;
    procedure Set_NATNetwork(const aNATNetwork: WideString); safecall;
    function Get_GenericDriver: WideString; safecall;
    procedure Set_GenericDriver(const aGenericDriver: WideString); safecall;
    function Get_CableConnected: Integer; safecall;
    procedure Set_CableConnected(aCableConnected: Integer); safecall;
    function Get_LineSpeed: LongWord; safecall;
    procedure Set_LineSpeed(aLineSpeed: LongWord); safecall;
    function Get_PromiscModePolicy: NetworkAdapterPromiscModePolicy; safecall;
    procedure Set_PromiscModePolicy(aPromiscModePolicy: NetworkAdapterPromiscModePolicy); safecall;
    function Get_TraceEnabled: Integer; safecall;
    procedure Set_TraceEnabled(aTraceEnabled: Integer); safecall;
    function Get_TraceFile: WideString; safecall;
    procedure Set_TraceFile(const aTraceFile: WideString); safecall;
    function Get_NATEngine: INATEngine; safecall;
    function Get_BootPriority: LongWord; safecall;
    procedure Set_BootPriority(aBootPriority: LongWord); safecall;
    function Get_BandwidthGroup: IBandwidthGroup; safecall;
    procedure Set_BandwidthGroup(const aBandwidthGroup: IBandwidthGroup); safecall;
    function Get_InternalAndReservedAttribute1INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute2INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute3INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute4INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute5INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute6INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute7INetworkAdapter: LongWord; safecall;
    function Get_InternalAndReservedAttribute8INetworkAdapter: LongWord; safecall;
    function GetProperty(const aKey: WideString): WideString; safecall;
    procedure SetProperty(const aKey: WideString; const aValue: WideString); safecall;
    function GetProperties(const aNames: WideString; out aReturnNames: PSafeArray): PSafeArray; safecall;
    procedure InternalAndReservedMethod1INetworkAdapter; safecall;
    procedure InternalAndReservedMethod2INetworkAdapter; safecall;
    procedure InternalAndReservedMethod3INetworkAdapter; safecall;
    procedure InternalAndReservedMethod4INetworkAdapter; safecall;
    property AdapterType: NetworkAdapterType read Get_AdapterType write Set_AdapterType;
    property Slot: LongWord read Get_Slot;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property MACAddress: WideString read Get_MACAddress write Set_MACAddress;
    property AttachmentType: NetworkAttachmentType read Get_AttachmentType write Set_AttachmentType;
    property BridgedInterface: WideString read Get_BridgedInterface write Set_BridgedInterface;
    property HostOnlyInterface: WideString read Get_HostOnlyInterface write Set_HostOnlyInterface;
    property InternalNetwork: WideString read Get_InternalNetwork write Set_InternalNetwork;
    property NATNetwork: WideString read Get_NATNetwork write Set_NATNetwork;
    property GenericDriver: WideString read Get_GenericDriver write Set_GenericDriver;
    property CableConnected: Integer read Get_CableConnected write Set_CableConnected;
    property LineSpeed: LongWord read Get_LineSpeed write Set_LineSpeed;
    property PromiscModePolicy: NetworkAdapterPromiscModePolicy read Get_PromiscModePolicy write Set_PromiscModePolicy;
    property TraceEnabled: Integer read Get_TraceEnabled write Set_TraceEnabled;
    property TraceFile: WideString read Get_TraceFile write Set_TraceFile;
    property NATEngine: INATEngine read Get_NATEngine;
    property BootPriority: LongWord read Get_BootPriority write Set_BootPriority;
    property BandwidthGroup: IBandwidthGroup read Get_BandwidthGroup write Set_BandwidthGroup;
    property InternalAndReservedAttribute1INetworkAdapter: LongWord read Get_InternalAndReservedAttribute1INetworkAdapter;
    property InternalAndReservedAttribute2INetworkAdapter: LongWord read Get_InternalAndReservedAttribute2INetworkAdapter;
    property InternalAndReservedAttribute3INetworkAdapter: LongWord read Get_InternalAndReservedAttribute3INetworkAdapter;
    property InternalAndReservedAttribute4INetworkAdapter: LongWord read Get_InternalAndReservedAttribute4INetworkAdapter;
    property InternalAndReservedAttribute5INetworkAdapter: LongWord read Get_InternalAndReservedAttribute5INetworkAdapter;
    property InternalAndReservedAttribute6INetworkAdapter: LongWord read Get_InternalAndReservedAttribute6INetworkAdapter;
    property InternalAndReservedAttribute7INetworkAdapter: LongWord read Get_InternalAndReservedAttribute7INetworkAdapter;
    property InternalAndReservedAttribute8INetworkAdapter: LongWord read Get_InternalAndReservedAttribute8INetworkAdapter;
  end;

// *********************************************************************//
// DispIntf:  INetworkAdapterDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E9A0C183-7071-4894-93D6-DCBEC010FA91}
// *********************************************************************//
  INetworkAdapterDisp = dispinterface
    ['{E9A0C183-7071-4894-93D6-DCBEC010FA91}']
    property AdapterType: NetworkAdapterType dispid 1610743808;
    property Slot: LongWord readonly dispid 1610743810;
    property Enabled: Integer dispid 1610743811;
    property MACAddress: WideString dispid 1610743813;
    property AttachmentType: NetworkAttachmentType dispid 1610743815;
    property BridgedInterface: WideString dispid 1610743817;
    property HostOnlyInterface: WideString dispid 1610743819;
    property InternalNetwork: WideString dispid 1610743821;
    property NATNetwork: WideString dispid 1610743823;
    property GenericDriver: WideString dispid 1610743825;
    property CableConnected: Integer dispid 1610743827;
    property LineSpeed: LongWord dispid 1610743829;
    property PromiscModePolicy: NetworkAdapterPromiscModePolicy dispid 1610743831;
    property TraceEnabled: Integer dispid 1610743833;
    property TraceFile: WideString dispid 1610743835;
    property NATEngine: INATEngine readonly dispid 1610743837;
    property BootPriority: LongWord dispid 1610743838;
    property BandwidthGroup: IBandwidthGroup dispid 1610743840;
    property InternalAndReservedAttribute1INetworkAdapter: LongWord readonly dispid 1610743842;
    property InternalAndReservedAttribute2INetworkAdapter: LongWord readonly dispid 1610743843;
    property InternalAndReservedAttribute3INetworkAdapter: LongWord readonly dispid 1610743844;
    property InternalAndReservedAttribute4INetworkAdapter: LongWord readonly dispid 1610743845;
    property InternalAndReservedAttribute5INetworkAdapter: LongWord readonly dispid 1610743846;
    property InternalAndReservedAttribute6INetworkAdapter: LongWord readonly dispid 1610743847;
    property InternalAndReservedAttribute7INetworkAdapter: LongWord readonly dispid 1610743848;
    property InternalAndReservedAttribute8INetworkAdapter: LongWord readonly dispid 1610743849;
    function GetProperty(const aKey: WideString): WideString; dispid 1610743850;
    procedure SetProperty(const aKey: WideString; const aValue: WideString); dispid 1610743851;
    function GetProperties(const aNames: WideString; 
                           out aReturnNames: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743852;
    procedure InternalAndReservedMethod1INetworkAdapter; dispid 1610743853;
    procedure InternalAndReservedMethod2INetworkAdapter; dispid 1610743854;
    procedure InternalAndReservedMethod3INetworkAdapter; dispid 1610743855;
    procedure InternalAndReservedMethod4INetworkAdapter; dispid 1610743856;
  end;

// *********************************************************************//
// Interface: INATEngine
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {8FAEF61E-6E15-4F71-A6A5-94E707FAFBCC}
// *********************************************************************//
  INATEngine = interface(IDispatch)
    ['{8FAEF61E-6E15-4F71-A6A5-94E707FAFBCC}']
    function Get_Network: WideString; safecall;
    procedure Set_Network(const aNetwork: WideString); safecall;
    function Get_HostIP: WideString; safecall;
    procedure Set_HostIP(const aHostIP: WideString); safecall;
    function Get_TFTPPrefix: WideString; safecall;
    procedure Set_TFTPPrefix(const aTFTPPrefix: WideString); safecall;
    function Get_TFTPBootFile: WideString; safecall;
    procedure Set_TFTPBootFile(const aTFTPBootFile: WideString); safecall;
    function Get_TFTPNextServer: WideString; safecall;
    procedure Set_TFTPNextServer(const aTFTPNextServer: WideString); safecall;
    function Get_AliasMode: LongWord; safecall;
    procedure Set_AliasMode(aAliasMode: LongWord); safecall;
    function Get_DNSPassDomain: Integer; safecall;
    procedure Set_DNSPassDomain(aDNSPassDomain: Integer); safecall;
    function Get_DNSProxy: Integer; safecall;
    procedure Set_DNSProxy(aDNSProxy: Integer); safecall;
    function Get_DNSUseHostResolver: Integer; safecall;
    procedure Set_DNSUseHostResolver(aDNSUseHostResolver: Integer); safecall;
    function Get_Redirects: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute2INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute3INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute4INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute5INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute6INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute7INATEngine: LongWord; safecall;
    function Get_InternalAndReservedAttribute8INATEngine: LongWord; safecall;
    procedure SetNetworkSettings(aMtu: LongWord; aSockSnd: LongWord; aSockRcv: LongWord; 
                                 aTcpWndSnd: LongWord; aTcpWndRcv: LongWord); safecall;
    procedure GetNetworkSettings(out aMtu: LongWord; out aSockSnd: LongWord; 
                                 out aSockRcv: LongWord; out aTcpWndSnd: LongWord; 
                                 out aTcpWndRcv: LongWord); safecall;
    procedure AddRedirect(const aName: WideString; aProto: NATProtocol; const aHostIP: WideString; 
                          aHostPort: Word; const aGuestIP: WideString; aGuestPort: Word); safecall;
    procedure RemoveRedirect(const aName: WideString); safecall;
    procedure InternalAndReservedMethod1INATEngine; safecall;
    procedure InternalAndReservedMethod2INATEngine; safecall;
    procedure InternalAndReservedMethod3INATEngine; safecall;
    procedure InternalAndReservedMethod4INATEngine; safecall;
    property Network: WideString read Get_Network write Set_Network;
    property HostIP: WideString read Get_HostIP write Set_HostIP;
    property TFTPPrefix: WideString read Get_TFTPPrefix write Set_TFTPPrefix;
    property TFTPBootFile: WideString read Get_TFTPBootFile write Set_TFTPBootFile;
    property TFTPNextServer: WideString read Get_TFTPNextServer write Set_TFTPNextServer;
    property AliasMode: LongWord read Get_AliasMode write Set_AliasMode;
    property DNSPassDomain: Integer read Get_DNSPassDomain write Set_DNSPassDomain;
    property DNSProxy: Integer read Get_DNSProxy write Set_DNSProxy;
    property DNSUseHostResolver: Integer read Get_DNSUseHostResolver write Set_DNSUseHostResolver;
    property Redirects: PSafeArray read Get_Redirects;
    property InternalAndReservedAttribute1INATEngine: LongWord read Get_InternalAndReservedAttribute1INATEngine;
    property InternalAndReservedAttribute2INATEngine: LongWord read Get_InternalAndReservedAttribute2INATEngine;
    property InternalAndReservedAttribute3INATEngine: LongWord read Get_InternalAndReservedAttribute3INATEngine;
    property InternalAndReservedAttribute4INATEngine: LongWord read Get_InternalAndReservedAttribute4INATEngine;
    property InternalAndReservedAttribute5INATEngine: LongWord read Get_InternalAndReservedAttribute5INATEngine;
    property InternalAndReservedAttribute6INATEngine: LongWord read Get_InternalAndReservedAttribute6INATEngine;
    property InternalAndReservedAttribute7INATEngine: LongWord read Get_InternalAndReservedAttribute7INATEngine;
    property InternalAndReservedAttribute8INATEngine: LongWord read Get_InternalAndReservedAttribute8INATEngine;
  end;

// *********************************************************************//
// DispIntf:  INATEngineDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {8FAEF61E-6E15-4F71-A6A5-94E707FAFBCC}
// *********************************************************************//
  INATEngineDisp = dispinterface
    ['{8FAEF61E-6E15-4F71-A6A5-94E707FAFBCC}']
    property Network: WideString dispid 1610743808;
    property HostIP: WideString dispid 1610743810;
    property TFTPPrefix: WideString dispid 1610743812;
    property TFTPBootFile: WideString dispid 1610743814;
    property TFTPNextServer: WideString dispid 1610743816;
    property AliasMode: LongWord dispid 1610743818;
    property DNSPassDomain: Integer dispid 1610743820;
    property DNSProxy: Integer dispid 1610743822;
    property DNSUseHostResolver: Integer dispid 1610743824;
    property Redirects: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743826;
    property InternalAndReservedAttribute1INATEngine: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute2INATEngine: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute3INATEngine: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute4INATEngine: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute5INATEngine: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute6INATEngine: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute7INATEngine: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute8INATEngine: LongWord readonly dispid 1610743834;
    procedure SetNetworkSettings(aMtu: LongWord; aSockSnd: LongWord; aSockRcv: LongWord; 
                                 aTcpWndSnd: LongWord; aTcpWndRcv: LongWord); dispid 1610743835;
    procedure GetNetworkSettings(out aMtu: LongWord; out aSockSnd: LongWord; 
                                 out aSockRcv: LongWord; out aTcpWndSnd: LongWord; 
                                 out aTcpWndRcv: LongWord); dispid 1610743836;
    procedure AddRedirect(const aName: WideString; aProto: NATProtocol; const aHostIP: WideString; 
                          aHostPort: Word; const aGuestIP: WideString; aGuestPort: Word); dispid 1610743837;
    procedure RemoveRedirect(const aName: WideString); dispid 1610743838;
    procedure InternalAndReservedMethod1INATEngine; dispid 1610743839;
    procedure InternalAndReservedMethod2INATEngine; dispid 1610743840;
    procedure InternalAndReservedMethod3INATEngine; dispid 1610743841;
    procedure InternalAndReservedMethod4INATEngine; dispid 1610743842;
  end;

// *********************************************************************//
// Interface: ISerialPort
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5587D0F6-A227-4F23-8278-2F675EEA1BB2}
// *********************************************************************//
  ISerialPort = interface(IDispatch)
    ['{5587D0F6-A227-4F23-8278-2F675EEA1BB2}']
    function Get_Slot: LongWord; safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_IOBase: LongWord; safecall;
    procedure Set_IOBase(aIOBase: LongWord); safecall;
    function Get_IRQ: LongWord; safecall;
    procedure Set_IRQ(aIRQ: LongWord); safecall;
    function Get_HostMode: PortMode; safecall;
    procedure Set_HostMode(aHostMode: PortMode); safecall;
    function Get_Server: Integer; safecall;
    procedure Set_Server(aServer: Integer); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const aPath: WideString); safecall;
    function Get_UartType: UartType; safecall;
    procedure Set_UartType(aUartType: UartType); safecall;
    function Get_InternalAndReservedAttribute1ISerialPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ISerialPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ISerialPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ISerialPort: LongWord; safecall;
    property Slot: LongWord read Get_Slot;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property IOBase: LongWord read Get_IOBase write Set_IOBase;
    property IRQ: LongWord read Get_IRQ write Set_IRQ;
    property HostMode: PortMode read Get_HostMode write Set_HostMode;
    property Server: Integer read Get_Server write Set_Server;
    property Path: WideString read Get_Path write Set_Path;
    property UartType: UartType read Get_UartType write Set_UartType;
    property InternalAndReservedAttribute1ISerialPort: LongWord read Get_InternalAndReservedAttribute1ISerialPort;
    property InternalAndReservedAttribute2ISerialPort: LongWord read Get_InternalAndReservedAttribute2ISerialPort;
    property InternalAndReservedAttribute3ISerialPort: LongWord read Get_InternalAndReservedAttribute3ISerialPort;
    property InternalAndReservedAttribute4ISerialPort: LongWord read Get_InternalAndReservedAttribute4ISerialPort;
  end;

// *********************************************************************//
// DispIntf:  ISerialPortDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5587D0F6-A227-4F23-8278-2F675EEA1BB2}
// *********************************************************************//
  ISerialPortDisp = dispinterface
    ['{5587D0F6-A227-4F23-8278-2F675EEA1BB2}']
    property Slot: LongWord readonly dispid 1610743808;
    property Enabled: Integer dispid 1610743809;
    property IOBase: LongWord dispid 1610743811;
    property IRQ: LongWord dispid 1610743813;
    property HostMode: PortMode dispid 1610743815;
    property Server: Integer dispid 1610743817;
    property Path: WideString dispid 1610743819;
    property UartType: UartType dispid 1610743821;
    property InternalAndReservedAttribute1ISerialPort: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute2ISerialPort: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute3ISerialPort: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute4ISerialPort: LongWord readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IParallelPort
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {788B87DF-7708-444B-9EEF-C116CE423D39}
// *********************************************************************//
  IParallelPort = interface(IDispatch)
    ['{788B87DF-7708-444B-9EEF-C116CE423D39}']
    function Get_Slot: LongWord; safecall;
    function Get_Enabled: Integer; safecall;
    procedure Set_Enabled(aEnabled: Integer); safecall;
    function Get_IOBase: LongWord; safecall;
    procedure Set_IOBase(aIOBase: LongWord); safecall;
    function Get_IRQ: LongWord; safecall;
    procedure Set_IRQ(aIRQ: LongWord); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const aPath: WideString); safecall;
    function Get_InternalAndReservedAttribute1IParallelPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IParallelPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IParallelPort: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IParallelPort: LongWord; safecall;
    property Slot: LongWord read Get_Slot;
    property Enabled: Integer read Get_Enabled write Set_Enabled;
    property IOBase: LongWord read Get_IOBase write Set_IOBase;
    property IRQ: LongWord read Get_IRQ write Set_IRQ;
    property Path: WideString read Get_Path write Set_Path;
    property InternalAndReservedAttribute1IParallelPort: LongWord read Get_InternalAndReservedAttribute1IParallelPort;
    property InternalAndReservedAttribute2IParallelPort: LongWord read Get_InternalAndReservedAttribute2IParallelPort;
    property InternalAndReservedAttribute3IParallelPort: LongWord read Get_InternalAndReservedAttribute3IParallelPort;
    property InternalAndReservedAttribute4IParallelPort: LongWord read Get_InternalAndReservedAttribute4IParallelPort;
  end;

// *********************************************************************//
// DispIntf:  IParallelPortDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {788B87DF-7708-444B-9EEF-C116CE423D39}
// *********************************************************************//
  IParallelPortDisp = dispinterface
    ['{788B87DF-7708-444B-9EEF-C116CE423D39}']
    property Slot: LongWord readonly dispid 1610743808;
    property Enabled: Integer dispid 1610743809;
    property IOBase: LongWord dispid 1610743811;
    property IRQ: LongWord dispid 1610743813;
    property Path: WideString dispid 1610743815;
    property InternalAndReservedAttribute1IParallelPort: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute2IParallelPort: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute3IParallelPort: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute4IParallelPort: LongWord readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IAppliance
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {86A98347-7619-41AA-AECE-B21AC5C1A7E6}
// *********************************************************************//
  IAppliance = interface(IDispatch)
    ['{86A98347-7619-41AA-AECE-B21AC5C1A7E6}']
    function Get_Path: WideString; safecall;
    function Get_Disks: PSafeArray; safecall;
    function Get_VirtualSystemDescriptions: PSafeArray; safecall;
    function Get_Machines: PSafeArray; safecall;
    function Get_Certificate: ICertificate; safecall;
    function Get_InternalAndReservedAttribute1IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IAppliance: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IAppliance: LongWord; safecall;
    function Read(const aFile: WideString): IProgress; safecall;
    procedure Interpret; safecall;
    function ImportMachines(aOptions: PSafeArray): IProgress; safecall;
    function CreateVFSExplorer(const aURI: WideString): IVFSExplorer; safecall;
    function Write(const aFormat: WideString; aOptions: PSafeArray; const aPath: WideString): IProgress; safecall;
    function GetWarnings: PSafeArray; safecall;
    function GetPasswordIds: PSafeArray; safecall;
    function GetMediumIdsForPasswordId(const aPasswordId: WideString): PSafeArray; safecall;
    procedure AddPasswords(aIdentifiers: PSafeArray; aPasswords: PSafeArray); safecall;
    procedure InternalAndReservedMethod1IAppliance; safecall;
    procedure InternalAndReservedMethod2IAppliance; safecall;
    procedure InternalAndReservedMethod3IAppliance; safecall;
    procedure InternalAndReservedMethod4IAppliance; safecall;
    procedure InternalAndReservedMethod5IAppliance; safecall;
    procedure InternalAndReservedMethod6IAppliance; safecall;
    procedure InternalAndReservedMethod7IAppliance; safecall;
    procedure InternalAndReservedMethod8IAppliance; safecall;
    property Path: WideString read Get_Path;
    property Disks: PSafeArray read Get_Disks;
    property VirtualSystemDescriptions: PSafeArray read Get_VirtualSystemDescriptions;
    property Machines: PSafeArray read Get_Machines;
    property Certificate: ICertificate read Get_Certificate;
    property InternalAndReservedAttribute1IAppliance: LongWord read Get_InternalAndReservedAttribute1IAppliance;
    property InternalAndReservedAttribute2IAppliance: LongWord read Get_InternalAndReservedAttribute2IAppliance;
    property InternalAndReservedAttribute3IAppliance: LongWord read Get_InternalAndReservedAttribute3IAppliance;
    property InternalAndReservedAttribute4IAppliance: LongWord read Get_InternalAndReservedAttribute4IAppliance;
    property InternalAndReservedAttribute5IAppliance: LongWord read Get_InternalAndReservedAttribute5IAppliance;
    property InternalAndReservedAttribute6IAppliance: LongWord read Get_InternalAndReservedAttribute6IAppliance;
    property InternalAndReservedAttribute7IAppliance: LongWord read Get_InternalAndReservedAttribute7IAppliance;
    property InternalAndReservedAttribute8IAppliance: LongWord read Get_InternalAndReservedAttribute8IAppliance;
  end;

// *********************************************************************//
// DispIntf:  IApplianceDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {86A98347-7619-41AA-AECE-B21AC5C1A7E6}
// *********************************************************************//
  IApplianceDisp = dispinterface
    ['{86A98347-7619-41AA-AECE-B21AC5C1A7E6}']
    property Path: WideString readonly dispid 1610743808;
    property Disks: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property VirtualSystemDescriptions: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743810;
    property Machines: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743811;
    property Certificate: ICertificate readonly dispid 1610743812;
    property InternalAndReservedAttribute1IAppliance: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute2IAppliance: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute3IAppliance: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute4IAppliance: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute5IAppliance: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute6IAppliance: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute7IAppliance: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute8IAppliance: LongWord readonly dispid 1610743820;
    function Read(const aFile: WideString): IProgress; dispid 1610743821;
    procedure Interpret; dispid 1610743822;
    function ImportMachines(aOptions: {NOT_OLEAUTO(PSafeArray)}OleVariant): IProgress; dispid 1610743823;
    function CreateVFSExplorer(const aURI: WideString): IVFSExplorer; dispid 1610743824;
    function Write(const aFormat: WideString; aOptions: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                   const aPath: WideString): IProgress; dispid 1610743825;
    function GetWarnings: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743826;
    function GetPasswordIds: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743827;
    function GetMediumIdsForPasswordId(const aPasswordId: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743828;
    procedure AddPasswords(aIdentifiers: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aPasswords: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743829;
    procedure InternalAndReservedMethod1IAppliance; dispid 1610743830;
    procedure InternalAndReservedMethod2IAppliance; dispid 1610743831;
    procedure InternalAndReservedMethod3IAppliance; dispid 1610743832;
    procedure InternalAndReservedMethod4IAppliance; dispid 1610743833;
    procedure InternalAndReservedMethod5IAppliance; dispid 1610743834;
    procedure InternalAndReservedMethod6IAppliance; dispid 1610743835;
    procedure InternalAndReservedMethod7IAppliance; dispid 1610743836;
    procedure InternalAndReservedMethod8IAppliance; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVirtualSystemDescription
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EC49259C-1C50-4353-97A5-0FD92E2CAAC2}
// *********************************************************************//
  IVirtualSystemDescription = interface(IDispatch)
    ['{EC49259C-1C50-4353-97A5-0FD92E2CAAC2}']
    function Get_Count: LongWord; safecall;
    function Get_InternalAndReservedAttribute1IVirtualSystemDescription: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IVirtualSystemDescription: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IVirtualSystemDescription: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IVirtualSystemDescription: LongWord; safecall;
    procedure GetDescription(out aTypes: PSafeArray; out aRefs: PSafeArray; 
                             out aOVFValues: PSafeArray; out aVBoxValues: PSafeArray; 
                             out aExtraConfigValues: PSafeArray); safecall;
    procedure GetDescriptionByType(aType: VirtualSystemDescriptionType; out aTypes: PSafeArray; 
                                   out aRefs: PSafeArray; out aOVFValues: PSafeArray; 
                                   out aVBoxValues: PSafeArray; out aExtraConfigValues: PSafeArray); safecall;
    procedure RemoveDescriptionByType(aType: VirtualSystemDescriptionType); safecall;
    function GetValuesByType(aType: VirtualSystemDescriptionType; 
                             aWhich: VirtualSystemDescriptionValueType): PSafeArray; safecall;
    procedure SetFinalValues(aEnabled: PSafeArray; aVBoxValues: PSafeArray; 
                             aExtraConfigValues: PSafeArray); safecall;
    procedure AddDescription(aType: VirtualSystemDescriptionType; const aVBoxValue: WideString; 
                             const aExtraConfigValue: WideString); safecall;
    procedure InternalAndReservedMethod1IVirtualSystemDescription; safecall;
    procedure InternalAndReservedMethod2IVirtualSystemDescription; safecall;
    procedure InternalAndReservedMethod3IVirtualSystemDescription; safecall;
    procedure InternalAndReservedMethod4IVirtualSystemDescription; safecall;
    property Count: LongWord read Get_Count;
    property InternalAndReservedAttribute1IVirtualSystemDescription: LongWord read Get_InternalAndReservedAttribute1IVirtualSystemDescription;
    property InternalAndReservedAttribute2IVirtualSystemDescription: LongWord read Get_InternalAndReservedAttribute2IVirtualSystemDescription;
    property InternalAndReservedAttribute3IVirtualSystemDescription: LongWord read Get_InternalAndReservedAttribute3IVirtualSystemDescription;
    property InternalAndReservedAttribute4IVirtualSystemDescription: LongWord read Get_InternalAndReservedAttribute4IVirtualSystemDescription;
  end;

// *********************************************************************//
// DispIntf:  IVirtualSystemDescriptionDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {EC49259C-1C50-4353-97A5-0FD92E2CAAC2}
// *********************************************************************//
  IVirtualSystemDescriptionDisp = dispinterface
    ['{EC49259C-1C50-4353-97A5-0FD92E2CAAC2}']
    property Count: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute1IVirtualSystemDescription: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IVirtualSystemDescription: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IVirtualSystemDescription: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IVirtualSystemDescription: LongWord readonly dispid 1610743812;
    procedure GetDescription(out aTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             out aRefs: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             out aOVFValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             out aVBoxValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             out aExtraConfigValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743813;
    procedure GetDescriptionByType(aType: VirtualSystemDescriptionType; 
                                   out aTypes: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                   out aRefs: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                   out aOVFValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                   out aVBoxValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                   out aExtraConfigValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743814;
    procedure RemoveDescriptionByType(aType: VirtualSystemDescriptionType); dispid 1610743815;
    function GetValuesByType(aType: VirtualSystemDescriptionType; 
                             aWhich: VirtualSystemDescriptionValueType): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743816;
    procedure SetFinalValues(aEnabled: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             aVBoxValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                             aExtraConfigValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743817;
    procedure AddDescription(aType: VirtualSystemDescriptionType; const aVBoxValue: WideString; 
                             const aExtraConfigValue: WideString); dispid 1610743818;
    procedure InternalAndReservedMethod1IVirtualSystemDescription; dispid 1610743819;
    procedure InternalAndReservedMethod2IVirtualSystemDescription; dispid 1610743820;
    procedure InternalAndReservedMethod3IVirtualSystemDescription; dispid 1610743821;
    procedure InternalAndReservedMethod4IVirtualSystemDescription; dispid 1610743822;
  end;

// *********************************************************************//
// Interface: ICertificate
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {392F1DE4-80E1-4A8A-93A1-67C5F92A838A}
// *********************************************************************//
  ICertificate = interface(IDispatch)
    ['{392F1DE4-80E1-4A8A-93A1-67C5F92A838A}']
    function Get_VersionNumber: CertificateVersion; safecall;
    function Get_SerialNumber: WideString; safecall;
    function Get_SignatureAlgorithmOID: WideString; safecall;
    function Get_SignatureAlgorithmName: WideString; safecall;
    function Get_IssuerName: PSafeArray; safecall;
    function Get_SubjectName: PSafeArray; safecall;
    function Get_FriendlyName: WideString; safecall;
    function Get_ValidityPeriodNotBefore: WideString; safecall;
    function Get_ValidityPeriodNotAfter: WideString; safecall;
    function Get_PublicKeyAlgorithmOID: WideString; safecall;
    function Get_PublicKeyAlgorithm: WideString; safecall;
    function Get_SubjectPublicKey: PSafeArray; safecall;
    function Get_IssuerUniqueIdentifier: WideString; safecall;
    function Get_SubjectUniqueIdentifier: WideString; safecall;
    function Get_CertificateAuthority: Integer; safecall;
    function Get_KeyUsage: LongWord; safecall;
    function Get_ExtendedKeyUsage: PSafeArray; safecall;
    function Get_RawCertData: PSafeArray; safecall;
    function Get_SelfSigned: Integer; safecall;
    function Get_Trusted: Integer; safecall;
    function Get_Expired: Integer; safecall;
    function Get_InternalAndReservedAttribute1ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute9ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute10ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute11ICertificate: LongWord; safecall;
    function Get_InternalAndReservedAttribute12ICertificate: LongWord; safecall;
    function IsCurrentlyExpired: Integer; safecall;
    function QueryInfo(aWhat: Integer): WideString; safecall;
    procedure InternalAndReservedMethod1ICertificate; safecall;
    procedure InternalAndReservedMethod2ICertificate; safecall;
    property VersionNumber: CertificateVersion read Get_VersionNumber;
    property SerialNumber: WideString read Get_SerialNumber;
    property SignatureAlgorithmOID: WideString read Get_SignatureAlgorithmOID;
    property SignatureAlgorithmName: WideString read Get_SignatureAlgorithmName;
    property IssuerName: PSafeArray read Get_IssuerName;
    property SubjectName: PSafeArray read Get_SubjectName;
    property FriendlyName: WideString read Get_FriendlyName;
    property ValidityPeriodNotBefore: WideString read Get_ValidityPeriodNotBefore;
    property ValidityPeriodNotAfter: WideString read Get_ValidityPeriodNotAfter;
    property PublicKeyAlgorithmOID: WideString read Get_PublicKeyAlgorithmOID;
    property PublicKeyAlgorithm: WideString read Get_PublicKeyAlgorithm;
    property SubjectPublicKey: PSafeArray read Get_SubjectPublicKey;
    property IssuerUniqueIdentifier: WideString read Get_IssuerUniqueIdentifier;
    property SubjectUniqueIdentifier: WideString read Get_SubjectUniqueIdentifier;
    property CertificateAuthority: Integer read Get_CertificateAuthority;
    property KeyUsage: LongWord read Get_KeyUsage;
    property ExtendedKeyUsage: PSafeArray read Get_ExtendedKeyUsage;
    property RawCertData: PSafeArray read Get_RawCertData;
    property SelfSigned: Integer read Get_SelfSigned;
    property Trusted: Integer read Get_Trusted;
    property Expired: Integer read Get_Expired;
    property InternalAndReservedAttribute1ICertificate: LongWord read Get_InternalAndReservedAttribute1ICertificate;
    property InternalAndReservedAttribute2ICertificate: LongWord read Get_InternalAndReservedAttribute2ICertificate;
    property InternalAndReservedAttribute3ICertificate: LongWord read Get_InternalAndReservedAttribute3ICertificate;
    property InternalAndReservedAttribute4ICertificate: LongWord read Get_InternalAndReservedAttribute4ICertificate;
    property InternalAndReservedAttribute5ICertificate: LongWord read Get_InternalAndReservedAttribute5ICertificate;
    property InternalAndReservedAttribute6ICertificate: LongWord read Get_InternalAndReservedAttribute6ICertificate;
    property InternalAndReservedAttribute7ICertificate: LongWord read Get_InternalAndReservedAttribute7ICertificate;
    property InternalAndReservedAttribute8ICertificate: LongWord read Get_InternalAndReservedAttribute8ICertificate;
    property InternalAndReservedAttribute9ICertificate: LongWord read Get_InternalAndReservedAttribute9ICertificate;
    property InternalAndReservedAttribute10ICertificate: LongWord read Get_InternalAndReservedAttribute10ICertificate;
    property InternalAndReservedAttribute11ICertificate: LongWord read Get_InternalAndReservedAttribute11ICertificate;
    property InternalAndReservedAttribute12ICertificate: LongWord read Get_InternalAndReservedAttribute12ICertificate;
  end;

// *********************************************************************//
// DispIntf:  ICertificateDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {392F1DE4-80E1-4A8A-93A1-67C5F92A838A}
// *********************************************************************//
  ICertificateDisp = dispinterface
    ['{392F1DE4-80E1-4A8A-93A1-67C5F92A838A}']
    property VersionNumber: CertificateVersion readonly dispid 1610743808;
    property SerialNumber: WideString readonly dispid 1610743809;
    property SignatureAlgorithmOID: WideString readonly dispid 1610743810;
    property SignatureAlgorithmName: WideString readonly dispid 1610743811;
    property IssuerName: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743812;
    property SubjectName: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743813;
    property FriendlyName: WideString readonly dispid 1610743814;
    property ValidityPeriodNotBefore: WideString readonly dispid 1610743815;
    property ValidityPeriodNotAfter: WideString readonly dispid 1610743816;
    property PublicKeyAlgorithmOID: WideString readonly dispid 1610743817;
    property PublicKeyAlgorithm: WideString readonly dispid 1610743818;
    property SubjectPublicKey: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743819;
    property IssuerUniqueIdentifier: WideString readonly dispid 1610743820;
    property SubjectUniqueIdentifier: WideString readonly dispid 1610743821;
    property CertificateAuthority: Integer readonly dispid 1610743822;
    property KeyUsage: LongWord readonly dispid 1610743823;
    property ExtendedKeyUsage: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743824;
    property RawCertData: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743825;
    property SelfSigned: Integer readonly dispid 1610743826;
    property Trusted: Integer readonly dispid 1610743827;
    property Expired: Integer readonly dispid 1610743828;
    property InternalAndReservedAttribute1ICertificate: LongWord readonly dispid 1610743829;
    property InternalAndReservedAttribute2ICertificate: LongWord readonly dispid 1610743830;
    property InternalAndReservedAttribute3ICertificate: LongWord readonly dispid 1610743831;
    property InternalAndReservedAttribute4ICertificate: LongWord readonly dispid 1610743832;
    property InternalAndReservedAttribute5ICertificate: LongWord readonly dispid 1610743833;
    property InternalAndReservedAttribute6ICertificate: LongWord readonly dispid 1610743834;
    property InternalAndReservedAttribute7ICertificate: LongWord readonly dispid 1610743835;
    property InternalAndReservedAttribute8ICertificate: LongWord readonly dispid 1610743836;
    property InternalAndReservedAttribute9ICertificate: LongWord readonly dispid 1610743837;
    property InternalAndReservedAttribute10ICertificate: LongWord readonly dispid 1610743838;
    property InternalAndReservedAttribute11ICertificate: LongWord readonly dispid 1610743839;
    property InternalAndReservedAttribute12ICertificate: LongWord readonly dispid 1610743840;
    function IsCurrentlyExpired: Integer; dispid 1610743841;
    function QueryInfo(aWhat: Integer): WideString; dispid 1610743842;
    procedure InternalAndReservedMethod1ICertificate; dispid 1610743843;
    procedure InternalAndReservedMethod2ICertificate; dispid 1610743844;
  end;

// *********************************************************************//
// Interface: IGuestOSType
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0D6C6D8-E5DB-4D2C-BAAA-C71053A6236D}
// *********************************************************************//
  IGuestOSType = interface(IDispatch)
    ['{D0D6C6D8-E5DB-4D2C-BAAA-C71053A6236D}']
    function Get_FamilyId: WideString; safecall;
    function Get_FamilyDescription: WideString; safecall;
    function Get_Id: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_Is64Bit: Integer; safecall;
    function Get_RecommendedIOAPIC: Integer; safecall;
    function Get_RecommendedVirtEx: Integer; safecall;
    function Get_RecommendedRAM: LongWord; safecall;
    function Get_RecommendedGraphicsController: GraphicsControllerType; safecall;
    function Get_RecommendedVRAM: LongWord; safecall;
    function Get_Recommended2DVideoAcceleration: Integer; safecall;
    function Get_Recommended3DAcceleration: Integer; safecall;
    function Get_RecommendedHDD: Int64; safecall;
    function Get_AdapterType: NetworkAdapterType; safecall;
    function Get_RecommendedPAE: Integer; safecall;
    function Get_RecommendedDVDStorageController: StorageControllerType; safecall;
    function Get_RecommendedDVDStorageBus: StorageBus; safecall;
    function Get_RecommendedHDStorageController: StorageControllerType; safecall;
    function Get_RecommendedHDStorageBus: StorageBus; safecall;
    function Get_RecommendedFirmware: FirmwareType; safecall;
    function Get_RecommendedUSBHID: Integer; safecall;
    function Get_RecommendedHPET: Integer; safecall;
    function Get_RecommendedUSBTablet: Integer; safecall;
    function Get_RecommendedRTCUseUTC: Integer; safecall;
    function Get_RecommendedChipset: ChipsetType; safecall;
    function Get_RecommendedAudioController: AudioControllerType; safecall;
    function Get_RecommendedAudioCodec: AudioCodecType; safecall;
    function Get_RecommendedFloppy: Integer; safecall;
    function Get_RecommendedUSB: Integer; safecall;
    function Get_RecommendedUSB3: Integer; safecall;
    function Get_RecommendedTFReset: Integer; safecall;
    function Get_RecommendedX2APIC: Integer; safecall;
    function Get_InternalAndReservedAttribute1IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute13IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute14IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute15IGuestOSType: LongWord; safecall;
    function Get_InternalAndReservedAttribute16IGuestOSType: LongWord; safecall;
    property FamilyId: WideString read Get_FamilyId;
    property FamilyDescription: WideString read Get_FamilyDescription;
    property Id: WideString read Get_Id;
    property Description: WideString read Get_Description;
    property Is64Bit: Integer read Get_Is64Bit;
    property RecommendedIOAPIC: Integer read Get_RecommendedIOAPIC;
    property RecommendedVirtEx: Integer read Get_RecommendedVirtEx;
    property RecommendedRAM: LongWord read Get_RecommendedRAM;
    property RecommendedGraphicsController: GraphicsControllerType read Get_RecommendedGraphicsController;
    property RecommendedVRAM: LongWord read Get_RecommendedVRAM;
    property Recommended2DVideoAcceleration: Integer read Get_Recommended2DVideoAcceleration;
    property Recommended3DAcceleration: Integer read Get_Recommended3DAcceleration;
    property RecommendedHDD: Int64 read Get_RecommendedHDD;
    property AdapterType: NetworkAdapterType read Get_AdapterType;
    property RecommendedPAE: Integer read Get_RecommendedPAE;
    property RecommendedDVDStorageController: StorageControllerType read Get_RecommendedDVDStorageController;
    property RecommendedDVDStorageBus: StorageBus read Get_RecommendedDVDStorageBus;
    property RecommendedHDStorageController: StorageControllerType read Get_RecommendedHDStorageController;
    property RecommendedHDStorageBus: StorageBus read Get_RecommendedHDStorageBus;
    property RecommendedFirmware: FirmwareType read Get_RecommendedFirmware;
    property RecommendedUSBHID: Integer read Get_RecommendedUSBHID;
    property RecommendedHPET: Integer read Get_RecommendedHPET;
    property RecommendedUSBTablet: Integer read Get_RecommendedUSBTablet;
    property RecommendedRTCUseUTC: Integer read Get_RecommendedRTCUseUTC;
    property RecommendedChipset: ChipsetType read Get_RecommendedChipset;
    property RecommendedAudioController: AudioControllerType read Get_RecommendedAudioController;
    property RecommendedAudioCodec: AudioCodecType read Get_RecommendedAudioCodec;
    property RecommendedFloppy: Integer read Get_RecommendedFloppy;
    property RecommendedUSB: Integer read Get_RecommendedUSB;
    property RecommendedUSB3: Integer read Get_RecommendedUSB3;
    property RecommendedTFReset: Integer read Get_RecommendedTFReset;
    property RecommendedX2APIC: Integer read Get_RecommendedX2APIC;
    property InternalAndReservedAttribute1IGuestOSType: LongWord read Get_InternalAndReservedAttribute1IGuestOSType;
    property InternalAndReservedAttribute2IGuestOSType: LongWord read Get_InternalAndReservedAttribute2IGuestOSType;
    property InternalAndReservedAttribute3IGuestOSType: LongWord read Get_InternalAndReservedAttribute3IGuestOSType;
    property InternalAndReservedAttribute4IGuestOSType: LongWord read Get_InternalAndReservedAttribute4IGuestOSType;
    property InternalAndReservedAttribute5IGuestOSType: LongWord read Get_InternalAndReservedAttribute5IGuestOSType;
    property InternalAndReservedAttribute6IGuestOSType: LongWord read Get_InternalAndReservedAttribute6IGuestOSType;
    property InternalAndReservedAttribute7IGuestOSType: LongWord read Get_InternalAndReservedAttribute7IGuestOSType;
    property InternalAndReservedAttribute8IGuestOSType: LongWord read Get_InternalAndReservedAttribute8IGuestOSType;
    property InternalAndReservedAttribute9IGuestOSType: LongWord read Get_InternalAndReservedAttribute9IGuestOSType;
    property InternalAndReservedAttribute10IGuestOSType: LongWord read Get_InternalAndReservedAttribute10IGuestOSType;
    property InternalAndReservedAttribute11IGuestOSType: LongWord read Get_InternalAndReservedAttribute11IGuestOSType;
    property InternalAndReservedAttribute12IGuestOSType: LongWord read Get_InternalAndReservedAttribute12IGuestOSType;
    property InternalAndReservedAttribute13IGuestOSType: LongWord read Get_InternalAndReservedAttribute13IGuestOSType;
    property InternalAndReservedAttribute14IGuestOSType: LongWord read Get_InternalAndReservedAttribute14IGuestOSType;
    property InternalAndReservedAttribute15IGuestOSType: LongWord read Get_InternalAndReservedAttribute15IGuestOSType;
    property InternalAndReservedAttribute16IGuestOSType: LongWord read Get_InternalAndReservedAttribute16IGuestOSType;
  end;

// *********************************************************************//
// DispIntf:  IGuestOSTypeDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0D6C6D8-E5DB-4D2C-BAAA-C71053A6236D}
// *********************************************************************//
  IGuestOSTypeDisp = dispinterface
    ['{D0D6C6D8-E5DB-4D2C-BAAA-C71053A6236D}']
    property FamilyId: WideString readonly dispid 1610743808;
    property FamilyDescription: WideString readonly dispid 1610743809;
    property Id: WideString readonly dispid 1610743810;
    property Description: WideString readonly dispid 1610743811;
    property Is64Bit: Integer readonly dispid 1610743812;
    property RecommendedIOAPIC: Integer readonly dispid 1610743813;
    property RecommendedVirtEx: Integer readonly dispid 1610743814;
    property RecommendedRAM: LongWord readonly dispid 1610743815;
    property RecommendedGraphicsController: GraphicsControllerType readonly dispid 1610743816;
    property RecommendedVRAM: LongWord readonly dispid 1610743817;
    property Recommended2DVideoAcceleration: Integer readonly dispid 1610743818;
    property Recommended3DAcceleration: Integer readonly dispid 1610743819;
    property RecommendedHDD: Int64 readonly dispid 1610743820;
    property AdapterType: NetworkAdapterType readonly dispid 1610743821;
    property RecommendedPAE: Integer readonly dispid 1610743822;
    property RecommendedDVDStorageController: StorageControllerType readonly dispid 1610743823;
    property RecommendedDVDStorageBus: StorageBus readonly dispid 1610743824;
    property RecommendedHDStorageController: StorageControllerType readonly dispid 1610743825;
    property RecommendedHDStorageBus: StorageBus readonly dispid 1610743826;
    property RecommendedFirmware: FirmwareType readonly dispid 1610743827;
    property RecommendedUSBHID: Integer readonly dispid 1610743828;
    property RecommendedHPET: Integer readonly dispid 1610743829;
    property RecommendedUSBTablet: Integer readonly dispid 1610743830;
    property RecommendedRTCUseUTC: Integer readonly dispid 1610743831;
    property RecommendedChipset: ChipsetType readonly dispid 1610743832;
    property RecommendedAudioController: AudioControllerType readonly dispid 1610743833;
    property RecommendedAudioCodec: AudioCodecType readonly dispid 1610743834;
    property RecommendedFloppy: Integer readonly dispid 1610743835;
    property RecommendedUSB: Integer readonly dispid 1610743836;
    property RecommendedUSB3: Integer readonly dispid 1610743837;
    property RecommendedTFReset: Integer readonly dispid 1610743838;
    property RecommendedX2APIC: Integer readonly dispid 1610743839;
    property InternalAndReservedAttribute1IGuestOSType: LongWord readonly dispid 1610743840;
    property InternalAndReservedAttribute2IGuestOSType: LongWord readonly dispid 1610743841;
    property InternalAndReservedAttribute3IGuestOSType: LongWord readonly dispid 1610743842;
    property InternalAndReservedAttribute4IGuestOSType: LongWord readonly dispid 1610743843;
    property InternalAndReservedAttribute5IGuestOSType: LongWord readonly dispid 1610743844;
    property InternalAndReservedAttribute6IGuestOSType: LongWord readonly dispid 1610743845;
    property InternalAndReservedAttribute7IGuestOSType: LongWord readonly dispid 1610743846;
    property InternalAndReservedAttribute8IGuestOSType: LongWord readonly dispid 1610743847;
    property InternalAndReservedAttribute9IGuestOSType: LongWord readonly dispid 1610743848;
    property InternalAndReservedAttribute10IGuestOSType: LongWord readonly dispid 1610743849;
    property InternalAndReservedAttribute11IGuestOSType: LongWord readonly dispid 1610743850;
    property InternalAndReservedAttribute12IGuestOSType: LongWord readonly dispid 1610743851;
    property InternalAndReservedAttribute13IGuestOSType: LongWord readonly dispid 1610743852;
    property InternalAndReservedAttribute14IGuestOSType: LongWord readonly dispid 1610743853;
    property InternalAndReservedAttribute15IGuestOSType: LongWord readonly dispid 1610743854;
    property InternalAndReservedAttribute16IGuestOSType: LongWord readonly dispid 1610743855;
  end;

// *********************************************************************//
// Interface: IPerformanceCollector
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B14290AD-CD54-400C-B858-797BCB82570E}
// *********************************************************************//
  IPerformanceCollector = interface(IDispatch)
    ['{B14290AD-CD54-400C-B858-797BCB82570E}']
    function Get_MetricNames: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IPerformanceCollector: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IPerformanceCollector: LongWord; safecall;
    function GetMetrics(aMetricNames: PSafeArray; aObjects: PSafeArray): PSafeArray; safecall;
    function SetupMetrics(aMetricNames: PSafeArray; aObjects: PSafeArray; aPeriod: LongWord; 
                          aCount: LongWord): PSafeArray; safecall;
    function EnableMetrics(aMetricNames: PSafeArray; aObjects: PSafeArray): PSafeArray; safecall;
    function DisableMetrics(aMetricNames: PSafeArray; aObjects: PSafeArray): PSafeArray; safecall;
    function QueryMetricsData(aMetricNames: PSafeArray; aObjects: PSafeArray; 
                              out aReturnMetricNames: PSafeArray; out aReturnObjects: PSafeArray; 
                              out aReturnUnits: PSafeArray; out aReturnScales: PSafeArray; 
                              out aReturnSequenceNumbers: PSafeArray; 
                              out aReturnDataIndices: PSafeArray; out aReturnDataLengths: PSafeArray): PSafeArray; safecall;
    procedure InternalAndReservedMethod1IPerformanceCollector; safecall;
    procedure InternalAndReservedMethod2IPerformanceCollector; safecall;
    procedure InternalAndReservedMethod3IPerformanceCollector; safecall;
    procedure InternalAndReservedMethod4IPerformanceCollector; safecall;
    property MetricNames: PSafeArray read Get_MetricNames;
    property InternalAndReservedAttribute1IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute1IPerformanceCollector;
    property InternalAndReservedAttribute2IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute2IPerformanceCollector;
    property InternalAndReservedAttribute3IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute3IPerformanceCollector;
    property InternalAndReservedAttribute4IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute4IPerformanceCollector;
    property InternalAndReservedAttribute5IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute5IPerformanceCollector;
    property InternalAndReservedAttribute6IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute6IPerformanceCollector;
    property InternalAndReservedAttribute7IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute7IPerformanceCollector;
    property InternalAndReservedAttribute8IPerformanceCollector: LongWord read Get_InternalAndReservedAttribute8IPerformanceCollector;
  end;

// *********************************************************************//
// DispIntf:  IPerformanceCollectorDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B14290AD-CD54-400C-B858-797BCB82570E}
// *********************************************************************//
  IPerformanceCollectorDisp = dispinterface
    ['{B14290AD-CD54-400C-B858-797BCB82570E}']
    property MetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1IPerformanceCollector: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IPerformanceCollector: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IPerformanceCollector: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IPerformanceCollector: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute5IPerformanceCollector: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute6IPerformanceCollector: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute7IPerformanceCollector: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute8IPerformanceCollector: LongWord readonly dispid 1610743816;
    function GetMetrics(aMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                        aObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743817;
    function SetupMetrics(aMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                          aObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant; aPeriod: LongWord; 
                          aCount: LongWord): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743818;
    function EnableMetrics(aMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                           aObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743819;
    function DisableMetrics(aMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            aObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743820;
    function QueryMetricsData(aMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              aObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnMetricNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnObjects: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnUnits: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnScales: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnSequenceNumbers: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnDataIndices: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                              out aReturnDataLengths: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743821;
    procedure InternalAndReservedMethod1IPerformanceCollector; dispid 1610743822;
    procedure InternalAndReservedMethod2IPerformanceCollector; dispid 1610743823;
    procedure InternalAndReservedMethod3IPerformanceCollector; dispid 1610743824;
    procedure InternalAndReservedMethod4IPerformanceCollector; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IPerformanceMetric
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {81314D14-FD1C-411A-95C5-E9BB1414E632}
// *********************************************************************//
  IPerformanceMetric = interface(IDispatch)
    ['{81314D14-FD1C-411A-95C5-E9BB1414E632}']
    function Get_MetricName: WideString; safecall;
    function Get_Object_: IUnknown; safecall;
    function Get_Description: WideString; safecall;
    function Get_Period: LongWord; safecall;
    function Get_Count: LongWord; safecall;
    function Get_Unit_: WideString; safecall;
    function Get_MinimumValue: Integer; safecall;
    function Get_MaximumValue: Integer; safecall;
    function Get_InternalAndReservedAttribute1IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IPerformanceMetric: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IPerformanceMetric: LongWord; safecall;
    property MetricName: WideString read Get_MetricName;
    property Object_: IUnknown read Get_Object_;
    property Description: WideString read Get_Description;
    property Period: LongWord read Get_Period;
    property Count: LongWord read Get_Count;
    property Unit_: WideString read Get_Unit_;
    property MinimumValue: Integer read Get_MinimumValue;
    property MaximumValue: Integer read Get_MaximumValue;
    property InternalAndReservedAttribute1IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute1IPerformanceMetric;
    property InternalAndReservedAttribute2IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute2IPerformanceMetric;
    property InternalAndReservedAttribute3IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute3IPerformanceMetric;
    property InternalAndReservedAttribute4IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute4IPerformanceMetric;
    property InternalAndReservedAttribute5IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute5IPerformanceMetric;
    property InternalAndReservedAttribute6IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute6IPerformanceMetric;
    property InternalAndReservedAttribute7IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute7IPerformanceMetric;
    property InternalAndReservedAttribute8IPerformanceMetric: LongWord read Get_InternalAndReservedAttribute8IPerformanceMetric;
  end;

// *********************************************************************//
// DispIntf:  IPerformanceMetricDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {81314D14-FD1C-411A-95C5-E9BB1414E632}
// *********************************************************************//
  IPerformanceMetricDisp = dispinterface
    ['{81314D14-FD1C-411A-95C5-E9BB1414E632}']
    property MetricName: WideString readonly dispid 1610743808;
    property Object_: IUnknown readonly dispid 1610743809;
    property Description: WideString readonly dispid 1610743810;
    property Period: LongWord readonly dispid 1610743811;
    property Count: LongWord readonly dispid 1610743812;
    property Unit_: WideString readonly dispid 1610743813;
    property MinimumValue: Integer readonly dispid 1610743814;
    property MaximumValue: Integer readonly dispid 1610743815;
    property InternalAndReservedAttribute1IPerformanceMetric: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute2IPerformanceMetric: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute3IPerformanceMetric: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute4IPerformanceMetric: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute5IPerformanceMetric: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute6IPerformanceMetric: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute7IPerformanceMetric: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute8IPerformanceMetric: LongWord readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IExtPackManager
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {70401EEF-C8E9-466B-9660-45CB3E9979E4}
// *********************************************************************//
  IExtPackManager = interface(IDispatch)
    ['{70401EEF-C8E9-466B-9660-45CB3E9979E4}']
    function Get_InstalledExtPacks: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IExtPackManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IExtPackManager: LongWord; safecall;
    function Find(const aName: WideString): IExtPack; safecall;
    function OpenExtPackFile(const aPath: WideString): IExtPackFile; safecall;
    function Uninstall(const aName: WideString; aForcedRemoval: Integer; 
                       const aDisplayInfo: WideString): IProgress; safecall;
    procedure Cleanup; safecall;
    function QueryAllPlugInsForFrontend(const aFrontendName: WideString): PSafeArray; safecall;
    function IsExtPackUsable(const aName: WideString): Integer; safecall;
    procedure InternalAndReservedMethod1IExtPackManager; safecall;
    procedure InternalAndReservedMethod2IExtPackManager; safecall;
    procedure InternalAndReservedMethod3IExtPackManager; safecall;
    procedure InternalAndReservedMethod4IExtPackManager; safecall;
    property InstalledExtPacks: PSafeArray read Get_InstalledExtPacks;
    property InternalAndReservedAttribute1IExtPackManager: LongWord read Get_InternalAndReservedAttribute1IExtPackManager;
    property InternalAndReservedAttribute2IExtPackManager: LongWord read Get_InternalAndReservedAttribute2IExtPackManager;
    property InternalAndReservedAttribute3IExtPackManager: LongWord read Get_InternalAndReservedAttribute3IExtPackManager;
    property InternalAndReservedAttribute4IExtPackManager: LongWord read Get_InternalAndReservedAttribute4IExtPackManager;
    property InternalAndReservedAttribute5IExtPackManager: LongWord read Get_InternalAndReservedAttribute5IExtPackManager;
    property InternalAndReservedAttribute6IExtPackManager: LongWord read Get_InternalAndReservedAttribute6IExtPackManager;
    property InternalAndReservedAttribute7IExtPackManager: LongWord read Get_InternalAndReservedAttribute7IExtPackManager;
    property InternalAndReservedAttribute8IExtPackManager: LongWord read Get_InternalAndReservedAttribute8IExtPackManager;
  end;

// *********************************************************************//
// DispIntf:  IExtPackManagerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {70401EEF-C8E9-466B-9660-45CB3E9979E4}
// *********************************************************************//
  IExtPackManagerDisp = dispinterface
    ['{70401EEF-C8E9-466B-9660-45CB3E9979E4}']
    property InstalledExtPacks: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1IExtPackManager: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2IExtPackManager: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3IExtPackManager: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4IExtPackManager: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute5IExtPackManager: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute6IExtPackManager: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute7IExtPackManager: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute8IExtPackManager: LongWord readonly dispid 1610743816;
    function Find(const aName: WideString): IExtPack; dispid 1610743817;
    function OpenExtPackFile(const aPath: WideString): IExtPackFile; dispid 1610743818;
    function Uninstall(const aName: WideString; aForcedRemoval: Integer; 
                       const aDisplayInfo: WideString): IProgress; dispid 1610743819;
    procedure Cleanup; dispid 1610743820;
    function QueryAllPlugInsForFrontend(const aFrontendName: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743821;
    function IsExtPackUsable(const aName: WideString): Integer; dispid 1610743822;
    procedure InternalAndReservedMethod1IExtPackManager; dispid 1610743823;
    procedure InternalAndReservedMethod2IExtPackManager; dispid 1610743824;
    procedure InternalAndReservedMethod3IExtPackManager; dispid 1610743825;
    procedure InternalAndReservedMethod4IExtPackManager; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IExtPackBase
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F25ACA3D-0B79-4350-BDD9-A0376CD6E6E3}
// *********************************************************************//
  IExtPackBase = interface(IDispatch)
    ['{F25ACA3D-0B79-4350-BDD9-A0376CD6E6E3}']
    function Get_Name: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_Revision: LongWord; safecall;
    function Get_Edition: WideString; safecall;
    function Get_VRDEModule: WideString; safecall;
    function Get_PlugIns: PSafeArray; safecall;
    function Get_Usable: Integer; safecall;
    function Get_WhyUnusable: WideString; safecall;
    function Get_ShowLicense: Integer; safecall;
    function Get_License: WideString; safecall;
    function Get_InternalAndReservedAttribute1IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IExtPackBase: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IExtPackBase: LongWord; safecall;
    function QueryLicense(const aPreferredLocale: WideString; const aPreferredLanguage: WideString; 
                          const aFormat: WideString): WideString; safecall;
    procedure InternalAndReservedMethod1IExtPackBase; safecall;
    procedure InternalAndReservedMethod2IExtPackBase; safecall;
    procedure InternalAndReservedMethod3IExtPackBase; safecall;
    procedure InternalAndReservedMethod4IExtPackBase; safecall;
    property Name: WideString read Get_Name;
    property Description: WideString read Get_Description;
    property Version: WideString read Get_Version;
    property Revision: LongWord read Get_Revision;
    property Edition: WideString read Get_Edition;
    property VRDEModule: WideString read Get_VRDEModule;
    property PlugIns: PSafeArray read Get_PlugIns;
    property Usable: Integer read Get_Usable;
    property WhyUnusable: WideString read Get_WhyUnusable;
    property ShowLicense: Integer read Get_ShowLicense;
    property License: WideString read Get_License;
    property InternalAndReservedAttribute1IExtPackBase: LongWord read Get_InternalAndReservedAttribute1IExtPackBase;
    property InternalAndReservedAttribute2IExtPackBase: LongWord read Get_InternalAndReservedAttribute2IExtPackBase;
    property InternalAndReservedAttribute3IExtPackBase: LongWord read Get_InternalAndReservedAttribute3IExtPackBase;
    property InternalAndReservedAttribute4IExtPackBase: LongWord read Get_InternalAndReservedAttribute4IExtPackBase;
    property InternalAndReservedAttribute5IExtPackBase: LongWord read Get_InternalAndReservedAttribute5IExtPackBase;
    property InternalAndReservedAttribute6IExtPackBase: LongWord read Get_InternalAndReservedAttribute6IExtPackBase;
    property InternalAndReservedAttribute7IExtPackBase: LongWord read Get_InternalAndReservedAttribute7IExtPackBase;
    property InternalAndReservedAttribute8IExtPackBase: LongWord read Get_InternalAndReservedAttribute8IExtPackBase;
  end;

// *********************************************************************//
// DispIntf:  IExtPackBaseDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F25ACA3D-0B79-4350-BDD9-A0376CD6E6E3}
// *********************************************************************//
  IExtPackBaseDisp = dispinterface
    ['{F25ACA3D-0B79-4350-BDD9-A0376CD6E6E3}']
    property Name: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property Version: WideString readonly dispid 1610743810;
    property Revision: LongWord readonly dispid 1610743811;
    property Edition: WideString readonly dispid 1610743812;
    property VRDEModule: WideString readonly dispid 1610743813;
    property PlugIns: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743814;
    property Usable: Integer readonly dispid 1610743815;
    property WhyUnusable: WideString readonly dispid 1610743816;
    property ShowLicense: Integer readonly dispid 1610743817;
    property License: WideString readonly dispid 1610743818;
    property InternalAndReservedAttribute1IExtPackBase: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute2IExtPackBase: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute3IExtPackBase: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute4IExtPackBase: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute5IExtPackBase: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute6IExtPackBase: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute7IExtPackBase: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute8IExtPackBase: LongWord readonly dispid 1610743826;
    function QueryLicense(const aPreferredLocale: WideString; const aPreferredLanguage: WideString; 
                          const aFormat: WideString): WideString; dispid 1610743827;
    procedure InternalAndReservedMethod1IExtPackBase; dispid 1610743828;
    procedure InternalAndReservedMethod2IExtPackBase; dispid 1610743829;
    procedure InternalAndReservedMethod3IExtPackBase; dispid 1610743830;
    procedure InternalAndReservedMethod4IExtPackBase; dispid 1610743831;
  end;

// *********************************************************************//
// Interface: IExtPack
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {431685DA-3618-4EBC-B038-833BA829B4B2}
// *********************************************************************//
  IExtPack = interface(IExtPackBase)
    ['{431685DA-3618-4EBC-B038-833BA829B4B2}']
    function QueryObject(const aObjUuid: WideString): IUnknown; safecall;
  end;

// *********************************************************************//
// DispIntf:  IExtPackDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {431685DA-3618-4EBC-B038-833BA829B4B2}
// *********************************************************************//
  IExtPackDisp = dispinterface
    ['{431685DA-3618-4EBC-B038-833BA829B4B2}']
    function QueryObject(const aObjUuid: WideString): IUnknown; dispid 1610809344;
    property Name: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property Version: WideString readonly dispid 1610743810;
    property Revision: LongWord readonly dispid 1610743811;
    property Edition: WideString readonly dispid 1610743812;
    property VRDEModule: WideString readonly dispid 1610743813;
    property PlugIns: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743814;
    property Usable: Integer readonly dispid 1610743815;
    property WhyUnusable: WideString readonly dispid 1610743816;
    property ShowLicense: Integer readonly dispid 1610743817;
    property License: WideString readonly dispid 1610743818;
    property InternalAndReservedAttribute1IExtPackBase: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute2IExtPackBase: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute3IExtPackBase: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute4IExtPackBase: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute5IExtPackBase: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute6IExtPackBase: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute7IExtPackBase: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute8IExtPackBase: LongWord readonly dispid 1610743826;
    function QueryLicense(const aPreferredLocale: WideString; const aPreferredLanguage: WideString; 
                          const aFormat: WideString): WideString; dispid 1610743827;
    procedure InternalAndReservedMethod1IExtPackBase; dispid 1610743828;
    procedure InternalAndReservedMethod2IExtPackBase; dispid 1610743829;
    procedure InternalAndReservedMethod3IExtPackBase; dispid 1610743830;
    procedure InternalAndReservedMethod4IExtPackBase; dispid 1610743831;
  end;

// *********************************************************************//
// Interface: IExtPackPlugIn
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {78861431-D545-44AA-8013-181B8C288554}
// *********************************************************************//
  IExtPackPlugIn = interface(IDispatch)
    ['{78861431-D545-44AA-8013-181B8C288554}']
    function Get_Name: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_Frontend: WideString; safecall;
    function Get_ModulePath: WideString; safecall;
    function Get_InternalAndReservedAttribute1IExtPackPlugIn: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IExtPackPlugIn: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IExtPackPlugIn: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IExtPackPlugIn: LongWord; safecall;
    property Name: WideString read Get_Name;
    property Description: WideString read Get_Description;
    property Frontend: WideString read Get_Frontend;
    property ModulePath: WideString read Get_ModulePath;
    property InternalAndReservedAttribute1IExtPackPlugIn: LongWord read Get_InternalAndReservedAttribute1IExtPackPlugIn;
    property InternalAndReservedAttribute2IExtPackPlugIn: LongWord read Get_InternalAndReservedAttribute2IExtPackPlugIn;
    property InternalAndReservedAttribute3IExtPackPlugIn: LongWord read Get_InternalAndReservedAttribute3IExtPackPlugIn;
    property InternalAndReservedAttribute4IExtPackPlugIn: LongWord read Get_InternalAndReservedAttribute4IExtPackPlugIn;
  end;

// *********************************************************************//
// DispIntf:  IExtPackPlugInDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {78861431-D545-44AA-8013-181B8C288554}
// *********************************************************************//
  IExtPackPlugInDisp = dispinterface
    ['{78861431-D545-44AA-8013-181B8C288554}']
    property Name: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property Frontend: WideString readonly dispid 1610743810;
    property ModulePath: WideString readonly dispid 1610743811;
    property InternalAndReservedAttribute1IExtPackPlugIn: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute2IExtPackPlugIn: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute3IExtPackPlugIn: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute4IExtPackPlugIn: LongWord readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IExtPackFile
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {41304F1B-7E72-4F34-B8F6-682785620C57}
// *********************************************************************//
  IExtPackFile = interface(IExtPackBase)
    ['{41304F1B-7E72-4F34-B8F6-682785620C57}']
    function Get_FilePath: WideString; safecall;
    function Get_InternalAndReservedAttribute1IExtPackFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IExtPackFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IExtPackFile: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IExtPackFile: LongWord; safecall;
    function Install(aReplace: Integer; const aDisplayInfo: WideString): IProgress; safecall;
    procedure InternalAndReservedMethod1IExtPackFile; safecall;
    procedure InternalAndReservedMethod2IExtPackFile; safecall;
    property FilePath: WideString read Get_FilePath;
    property InternalAndReservedAttribute1IExtPackFile: LongWord read Get_InternalAndReservedAttribute1IExtPackFile;
    property InternalAndReservedAttribute2IExtPackFile: LongWord read Get_InternalAndReservedAttribute2IExtPackFile;
    property InternalAndReservedAttribute3IExtPackFile: LongWord read Get_InternalAndReservedAttribute3IExtPackFile;
    property InternalAndReservedAttribute4IExtPackFile: LongWord read Get_InternalAndReservedAttribute4IExtPackFile;
  end;

// *********************************************************************//
// DispIntf:  IExtPackFileDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {41304F1B-7E72-4F34-B8F6-682785620C57}
// *********************************************************************//
  IExtPackFileDisp = dispinterface
    ['{41304F1B-7E72-4F34-B8F6-682785620C57}']
    property FilePath: WideString readonly dispid 1610809344;
    property InternalAndReservedAttribute1IExtPackFile: LongWord readonly dispid 1610809345;
    property InternalAndReservedAttribute2IExtPackFile: LongWord readonly dispid 1610809346;
    property InternalAndReservedAttribute3IExtPackFile: LongWord readonly dispid 1610809347;
    property InternalAndReservedAttribute4IExtPackFile: LongWord readonly dispid 1610809348;
    function Install(aReplace: Integer; const aDisplayInfo: WideString): IProgress; dispid 1610809349;
    procedure InternalAndReservedMethod1IExtPackFile; dispid 1610809350;
    procedure InternalAndReservedMethod2IExtPackFile; dispid 1610809351;
    property Name: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property Version: WideString readonly dispid 1610743810;
    property Revision: LongWord readonly dispid 1610743811;
    property Edition: WideString readonly dispid 1610743812;
    property VRDEModule: WideString readonly dispid 1610743813;
    property PlugIns: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743814;
    property Usable: Integer readonly dispid 1610743815;
    property WhyUnusable: WideString readonly dispid 1610743816;
    property ShowLicense: Integer readonly dispid 1610743817;
    property License: WideString readonly dispid 1610743818;
    property InternalAndReservedAttribute1IExtPackBase: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute2IExtPackBase: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute3IExtPackBase: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute4IExtPackBase: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute5IExtPackBase: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute6IExtPackBase: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute7IExtPackBase: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute8IExtPackBase: LongWord readonly dispid 1610743826;
    function QueryLicense(const aPreferredLocale: WideString; const aPreferredLanguage: WideString; 
                          const aFormat: WideString): WideString; dispid 1610743827;
    procedure InternalAndReservedMethod1IExtPackBase; dispid 1610743828;
    procedure InternalAndReservedMethod2IExtPackBase; dispid 1610743829;
    procedure InternalAndReservedMethod3IExtPackBase; dispid 1610743830;
    procedure InternalAndReservedMethod4IExtPackBase; dispid 1610743831;
  end;

// *********************************************************************//
// Interface: ICloudProviderManager
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9128800F-762E-4120-871C-A2014234A607}
// *********************************************************************//
  ICloudProviderManager = interface(IDispatch)
    ['{9128800F-762E-4120-871C-A2014234A607}']
    function Get_Providers: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ICloudProviderManager: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ICloudProviderManager: LongWord; safecall;
    function GetProviderById(const aProviderId: WideString): ICloudProvider; safecall;
    function GetProviderByShortName(const aProviderName: WideString): ICloudProvider; safecall;
    function GetProviderByName(const aProviderName: WideString): ICloudProvider; safecall;
    procedure InternalAndReservedMethod1ICloudProviderManager; safecall;
    procedure InternalAndReservedMethod2ICloudProviderManager; safecall;
    procedure InternalAndReservedMethod3ICloudProviderManager; safecall;
    procedure InternalAndReservedMethod4ICloudProviderManager; safecall;
    property Providers: PSafeArray read Get_Providers;
    property InternalAndReservedAttribute1ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute1ICloudProviderManager;
    property InternalAndReservedAttribute2ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute2ICloudProviderManager;
    property InternalAndReservedAttribute3ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute3ICloudProviderManager;
    property InternalAndReservedAttribute4ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute4ICloudProviderManager;
    property InternalAndReservedAttribute5ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute5ICloudProviderManager;
    property InternalAndReservedAttribute6ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute6ICloudProviderManager;
    property InternalAndReservedAttribute7ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute7ICloudProviderManager;
    property InternalAndReservedAttribute8ICloudProviderManager: LongWord read Get_InternalAndReservedAttribute8ICloudProviderManager;
  end;

// *********************************************************************//
// DispIntf:  ICloudProviderManagerDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9128800F-762E-4120-871C-A2014234A607}
// *********************************************************************//
  ICloudProviderManagerDisp = dispinterface
    ['{9128800F-762E-4120-871C-A2014234A607}']
    property Providers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743808;
    property InternalAndReservedAttribute1ICloudProviderManager: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute2ICloudProviderManager: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute3ICloudProviderManager: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute4ICloudProviderManager: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute5ICloudProviderManager: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute6ICloudProviderManager: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute7ICloudProviderManager: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute8ICloudProviderManager: LongWord readonly dispid 1610743816;
    function GetProviderById(const aProviderId: WideString): ICloudProvider; dispid 1610743817;
    function GetProviderByShortName(const aProviderName: WideString): ICloudProvider; dispid 1610743818;
    function GetProviderByName(const aProviderName: WideString): ICloudProvider; dispid 1610743819;
    procedure InternalAndReservedMethod1ICloudProviderManager; dispid 1610743820;
    procedure InternalAndReservedMethod2ICloudProviderManager; dispid 1610743821;
    procedure InternalAndReservedMethod3ICloudProviderManager; dispid 1610743822;
    procedure InternalAndReservedMethod4ICloudProviderManager; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: ICloudProvider
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {22363CFC-07DA-41EC-AC4A-3DD99DB35594}
// *********************************************************************//
  ICloudProvider = interface(IDispatch)
    ['{22363CFC-07DA-41EC-AC4A-3DD99DB35594}']
    function Get_Name: WideString; safecall;
    function Get_ShortName: WideString; safecall;
    function Get_Id: WideString; safecall;
    function Get_Profiles: PSafeArray; safecall;
    function Get_ProfileNames: PSafeArray; safecall;
    function Get_SupportedPropertyNames: PSafeArray; safecall;
    function Get_InternalAndReservedAttribute1ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute9ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute10ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute11ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute12ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute13ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute14ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute15ICloudProvider: LongWord; safecall;
    function Get_InternalAndReservedAttribute16ICloudProvider: LongWord; safecall;
    function GetPropertyDescription(const aName: WideString): WideString; safecall;
    procedure CreateProfile(const aProfileName: WideString; aNames: PSafeArray; aValues: PSafeArray); safecall;
    procedure ImportProfiles; safecall;
    procedure RestoreProfiles; safecall;
    procedure SaveProfiles; safecall;
    function GetProfileByName(const aProfileName: WideString): ICloudProfile; safecall;
    procedure PrepareUninstall; safecall;
    procedure InternalAndReservedMethod1ICloudProvider; safecall;
    procedure InternalAndReservedMethod2ICloudProvider; safecall;
    procedure InternalAndReservedMethod3ICloudProvider; safecall;
    procedure InternalAndReservedMethod4ICloudProvider; safecall;
    procedure InternalAndReservedMethod5ICloudProvider; safecall;
    procedure InternalAndReservedMethod6ICloudProvider; safecall;
    procedure InternalAndReservedMethod7ICloudProvider; safecall;
    procedure InternalAndReservedMethod8ICloudProvider; safecall;
    property Name: WideString read Get_Name;
    property ShortName: WideString read Get_ShortName;
    property Id: WideString read Get_Id;
    property Profiles: PSafeArray read Get_Profiles;
    property ProfileNames: PSafeArray read Get_ProfileNames;
    property SupportedPropertyNames: PSafeArray read Get_SupportedPropertyNames;
    property InternalAndReservedAttribute1ICloudProvider: LongWord read Get_InternalAndReservedAttribute1ICloudProvider;
    property InternalAndReservedAttribute2ICloudProvider: LongWord read Get_InternalAndReservedAttribute2ICloudProvider;
    property InternalAndReservedAttribute3ICloudProvider: LongWord read Get_InternalAndReservedAttribute3ICloudProvider;
    property InternalAndReservedAttribute4ICloudProvider: LongWord read Get_InternalAndReservedAttribute4ICloudProvider;
    property InternalAndReservedAttribute5ICloudProvider: LongWord read Get_InternalAndReservedAttribute5ICloudProvider;
    property InternalAndReservedAttribute6ICloudProvider: LongWord read Get_InternalAndReservedAttribute6ICloudProvider;
    property InternalAndReservedAttribute7ICloudProvider: LongWord read Get_InternalAndReservedAttribute7ICloudProvider;
    property InternalAndReservedAttribute8ICloudProvider: LongWord read Get_InternalAndReservedAttribute8ICloudProvider;
    property InternalAndReservedAttribute9ICloudProvider: LongWord read Get_InternalAndReservedAttribute9ICloudProvider;
    property InternalAndReservedAttribute10ICloudProvider: LongWord read Get_InternalAndReservedAttribute10ICloudProvider;
    property InternalAndReservedAttribute11ICloudProvider: LongWord read Get_InternalAndReservedAttribute11ICloudProvider;
    property InternalAndReservedAttribute12ICloudProvider: LongWord read Get_InternalAndReservedAttribute12ICloudProvider;
    property InternalAndReservedAttribute13ICloudProvider: LongWord read Get_InternalAndReservedAttribute13ICloudProvider;
    property InternalAndReservedAttribute14ICloudProvider: LongWord read Get_InternalAndReservedAttribute14ICloudProvider;
    property InternalAndReservedAttribute15ICloudProvider: LongWord read Get_InternalAndReservedAttribute15ICloudProvider;
    property InternalAndReservedAttribute16ICloudProvider: LongWord read Get_InternalAndReservedAttribute16ICloudProvider;
  end;

// *********************************************************************//
// DispIntf:  ICloudProviderDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {22363CFC-07DA-41EC-AC4A-3DD99DB35594}
// *********************************************************************//
  ICloudProviderDisp = dispinterface
    ['{22363CFC-07DA-41EC-AC4A-3DD99DB35594}']
    property Name: WideString readonly dispid 1610743808;
    property ShortName: WideString readonly dispid 1610743809;
    property Id: WideString readonly dispid 1610743810;
    property Profiles: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743811;
    property ProfileNames: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743812;
    property SupportedPropertyNames: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743813;
    property InternalAndReservedAttribute1ICloudProvider: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute2ICloudProvider: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute3ICloudProvider: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute4ICloudProvider: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute5ICloudProvider: LongWord readonly dispid 1610743818;
    property InternalAndReservedAttribute6ICloudProvider: LongWord readonly dispid 1610743819;
    property InternalAndReservedAttribute7ICloudProvider: LongWord readonly dispid 1610743820;
    property InternalAndReservedAttribute8ICloudProvider: LongWord readonly dispid 1610743821;
    property InternalAndReservedAttribute9ICloudProvider: LongWord readonly dispid 1610743822;
    property InternalAndReservedAttribute10ICloudProvider: LongWord readonly dispid 1610743823;
    property InternalAndReservedAttribute11ICloudProvider: LongWord readonly dispid 1610743824;
    property InternalAndReservedAttribute12ICloudProvider: LongWord readonly dispid 1610743825;
    property InternalAndReservedAttribute13ICloudProvider: LongWord readonly dispid 1610743826;
    property InternalAndReservedAttribute14ICloudProvider: LongWord readonly dispid 1610743827;
    property InternalAndReservedAttribute15ICloudProvider: LongWord readonly dispid 1610743828;
    property InternalAndReservedAttribute16ICloudProvider: LongWord readonly dispid 1610743829;
    function GetPropertyDescription(const aName: WideString): WideString; dispid 1610743830;
    procedure CreateProfile(const aProfileName: WideString; 
                            aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743831;
    procedure ImportProfiles; dispid 1610743832;
    procedure RestoreProfiles; dispid 1610743833;
    procedure SaveProfiles; dispid 1610743834;
    function GetProfileByName(const aProfileName: WideString): ICloudProfile; dispid 1610743835;
    procedure PrepareUninstall; dispid 1610743836;
    procedure InternalAndReservedMethod1ICloudProvider; dispid 1610743837;
    procedure InternalAndReservedMethod2ICloudProvider; dispid 1610743838;
    procedure InternalAndReservedMethod3ICloudProvider; dispid 1610743839;
    procedure InternalAndReservedMethod4ICloudProvider; dispid 1610743840;
    procedure InternalAndReservedMethod5ICloudProvider; dispid 1610743841;
    procedure InternalAndReservedMethod6ICloudProvider; dispid 1610743842;
    procedure InternalAndReservedMethod7ICloudProvider; dispid 1610743843;
    procedure InternalAndReservedMethod8ICloudProvider; dispid 1610743844;
  end;

// *********************************************************************//
// Interface: ICloudProfile
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B1D978B8-F7B7-4B05-900E-2A9253C00F51}
// *********************************************************************//
  ICloudProfile = interface(IDispatch)
    ['{B1D978B8-F7B7-4B05-900E-2A9253C00F51}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const aName: WideString); safecall;
    function Get_ProviderId: WideString; safecall;
    function Get_InternalAndReservedAttribute1ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ICloudProfile: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ICloudProfile: LongWord; safecall;
    function GetProperty(const aName: WideString): WideString; safecall;
    procedure SetProperty(const aName: WideString; const aValue: WideString); safecall;
    function GetProperties(const aNames: WideString; out aReturnNames: PSafeArray): PSafeArray; safecall;
    procedure SetProperties(aNames: PSafeArray; aValues: PSafeArray); safecall;
    procedure Remove; safecall;
    function CreateCloudClient: ICloudClient; safecall;
    procedure InternalAndReservedMethod1ICloudProfile; safecall;
    procedure InternalAndReservedMethod2ICloudProfile; safecall;
    procedure InternalAndReservedMethod3ICloudProfile; safecall;
    procedure InternalAndReservedMethod4ICloudProfile; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property ProviderId: WideString read Get_ProviderId;
    property InternalAndReservedAttribute1ICloudProfile: LongWord read Get_InternalAndReservedAttribute1ICloudProfile;
    property InternalAndReservedAttribute2ICloudProfile: LongWord read Get_InternalAndReservedAttribute2ICloudProfile;
    property InternalAndReservedAttribute3ICloudProfile: LongWord read Get_InternalAndReservedAttribute3ICloudProfile;
    property InternalAndReservedAttribute4ICloudProfile: LongWord read Get_InternalAndReservedAttribute4ICloudProfile;
    property InternalAndReservedAttribute5ICloudProfile: LongWord read Get_InternalAndReservedAttribute5ICloudProfile;
    property InternalAndReservedAttribute6ICloudProfile: LongWord read Get_InternalAndReservedAttribute6ICloudProfile;
    property InternalAndReservedAttribute7ICloudProfile: LongWord read Get_InternalAndReservedAttribute7ICloudProfile;
    property InternalAndReservedAttribute8ICloudProfile: LongWord read Get_InternalAndReservedAttribute8ICloudProfile;
  end;

// *********************************************************************//
// DispIntf:  ICloudProfileDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B1D978B8-F7B7-4B05-900E-2A9253C00F51}
// *********************************************************************//
  ICloudProfileDisp = dispinterface
    ['{B1D978B8-F7B7-4B05-900E-2A9253C00F51}']
    property Name: WideString dispid 1610743808;
    property ProviderId: WideString readonly dispid 1610743810;
    property InternalAndReservedAttribute1ICloudProfile: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute2ICloudProfile: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute3ICloudProfile: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute4ICloudProfile: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute5ICloudProfile: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute6ICloudProfile: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute7ICloudProfile: LongWord readonly dispid 1610743817;
    property InternalAndReservedAttribute8ICloudProfile: LongWord readonly dispid 1610743818;
    function GetProperty(const aName: WideString): WideString; dispid 1610743819;
    procedure SetProperty(const aName: WideString; const aValue: WideString); dispid 1610743820;
    function GetProperties(const aNames: WideString; 
                           out aReturnNames: {NOT_OLEAUTO(PSafeArray)}OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743821;
    procedure SetProperties(aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                            aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743822;
    procedure Remove; dispid 1610743823;
    function CreateCloudClient: ICloudClient; dispid 1610743824;
    procedure InternalAndReservedMethod1ICloudProfile; dispid 1610743825;
    procedure InternalAndReservedMethod2ICloudProfile; dispid 1610743826;
    procedure InternalAndReservedMethod3ICloudProfile; dispid 1610743827;
    procedure InternalAndReservedMethod4ICloudProfile; dispid 1610743828;
  end;

// *********************************************************************//
// Interface: ICloudClient
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3D9AACBE-B3BC-4126-9633-5634BAD24AD7}
// *********************************************************************//
  ICloudClient = interface(IDispatch)
    ['{3D9AACBE-B3BC-4126-9633-5634BAD24AD7}']
    function Get_InternalAndReservedAttribute1ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute2ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute3ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute4ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute5ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute6ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute7ICloudClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute8ICloudClient: LongWord; safecall;
    function GetExportLaunchParameters: WideString; safecall;
    procedure ExportLaunchVM(const aDescription: IVirtualSystemDescription; 
                             const aProgress: IProgress; const aVirtualBox: IVirtualBox); safecall;
    procedure InternalAndReservedMethod1ICloudClient; safecall;
    procedure InternalAndReservedMethod2ICloudClient; safecall;
    procedure InternalAndReservedMethod3ICloudClient; safecall;
    procedure InternalAndReservedMethod4ICloudClient; safecall;
    procedure InternalAndReservedMethod5ICloudClient; safecall;
    procedure InternalAndReservedMethod6ICloudClient; safecall;
    procedure InternalAndReservedMethod7ICloudClient; safecall;
    procedure InternalAndReservedMethod8ICloudClient; safecall;
    procedure InternalAndReservedMethod9ICloudClient; safecall;
    procedure InternalAndReservedMethod10ICloudClient; safecall;
    procedure InternalAndReservedMethod11ICloudClient; safecall;
    procedure InternalAndReservedMethod12ICloudClient; safecall;
    procedure InternalAndReservedMethod13ICloudClient; safecall;
    procedure InternalAndReservedMethod14ICloudClient; safecall;
    procedure InternalAndReservedMethod15ICloudClient; safecall;
    procedure InternalAndReservedMethod16ICloudClient; safecall;
    property InternalAndReservedAttribute1ICloudClient: LongWord read Get_InternalAndReservedAttribute1ICloudClient;
    property InternalAndReservedAttribute2ICloudClient: LongWord read Get_InternalAndReservedAttribute2ICloudClient;
    property InternalAndReservedAttribute3ICloudClient: LongWord read Get_InternalAndReservedAttribute3ICloudClient;
    property InternalAndReservedAttribute4ICloudClient: LongWord read Get_InternalAndReservedAttribute4ICloudClient;
    property InternalAndReservedAttribute5ICloudClient: LongWord read Get_InternalAndReservedAttribute5ICloudClient;
    property InternalAndReservedAttribute6ICloudClient: LongWord read Get_InternalAndReservedAttribute6ICloudClient;
    property InternalAndReservedAttribute7ICloudClient: LongWord read Get_InternalAndReservedAttribute7ICloudClient;
    property InternalAndReservedAttribute8ICloudClient: LongWord read Get_InternalAndReservedAttribute8ICloudClient;
  end;

// *********************************************************************//
// DispIntf:  ICloudClientDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3D9AACBE-B3BC-4126-9633-5634BAD24AD7}
// *********************************************************************//
  ICloudClientDisp = dispinterface
    ['{3D9AACBE-B3BC-4126-9633-5634BAD24AD7}']
    property InternalAndReservedAttribute1ICloudClient: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute2ICloudClient: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute3ICloudClient: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute4ICloudClient: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute5ICloudClient: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute6ICloudClient: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute7ICloudClient: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute8ICloudClient: LongWord readonly dispid 1610743815;
    function GetExportLaunchParameters: WideString; dispid 1610743816;
    procedure ExportLaunchVM(const aDescription: IVirtualSystemDescription; 
                             const aProgress: IProgress; const aVirtualBox: IVirtualBox); dispid 1610743817;
    procedure InternalAndReservedMethod1ICloudClient; dispid 1610743818;
    procedure InternalAndReservedMethod2ICloudClient; dispid 1610743819;
    procedure InternalAndReservedMethod3ICloudClient; dispid 1610743820;
    procedure InternalAndReservedMethod4ICloudClient; dispid 1610743821;
    procedure InternalAndReservedMethod5ICloudClient; dispid 1610743822;
    procedure InternalAndReservedMethod6ICloudClient; dispid 1610743823;
    procedure InternalAndReservedMethod7ICloudClient; dispid 1610743824;
    procedure InternalAndReservedMethod8ICloudClient; dispid 1610743825;
    procedure InternalAndReservedMethod9ICloudClient; dispid 1610743826;
    procedure InternalAndReservedMethod10ICloudClient; dispid 1610743827;
    procedure InternalAndReservedMethod11ICloudClient; dispid 1610743828;
    procedure InternalAndReservedMethod12ICloudClient; dispid 1610743829;
    procedure InternalAndReservedMethod13ICloudClient; dispid 1610743830;
    procedure InternalAndReservedMethod14ICloudClient; dispid 1610743831;
    procedure InternalAndReservedMethod15ICloudClient; dispid 1610743832;
    procedure InternalAndReservedMethod16ICloudClient; dispid 1610743833;
  end;

// *********************************************************************//
// Interface: IUnattended
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6F89464F-7193-426C-A41F-522E8F537FA0}
// *********************************************************************//
  IUnattended = interface(IDispatch)
    ['{6F89464F-7193-426C-A41F-522E8F537FA0}']
    function Get_IsoPath: WideString; safecall;
    procedure Set_IsoPath(const aIsoPath: WideString); safecall;
    function Get_Machine: IMachine; safecall;
    procedure Set_Machine(const aMachine: IMachine); safecall;
    function Get_User: WideString; safecall;
    procedure Set_User(const aUser: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const aPassword: WideString); safecall;
    function Get_FullUserName: WideString; safecall;
    procedure Set_FullUserName(const aFullUserName: WideString); safecall;
    function Get_ProductKey: WideString; safecall;
    procedure Set_ProductKey(const aProductKey: WideString); safecall;
    function Get_AdditionsIsoPath: WideString; safecall;
    procedure Set_AdditionsIsoPath(const aAdditionsIsoPath: WideString); safecall;
    function Get_InstallGuestAdditions: Integer; safecall;
    procedure Set_InstallGuestAdditions(aInstallGuestAdditions: Integer); safecall;
    function Get_ValidationKitIsoPath: WideString; safecall;
    procedure Set_ValidationKitIsoPath(const aValidationKitIsoPath: WideString); safecall;
    function Get_InstallTestExecService: Integer; safecall;
    procedure Set_InstallTestExecService(aInstallTestExecService: Integer); safecall;
    function Get_TimeZone: WideString; safecall;
    procedure Set_TimeZone(const aTimeZone: WideString); safecall;
    function Get_Locale: WideString; safecall;
    procedure Set_Locale(const aLocale: WideString); safecall;
    function Get_Language: WideString; safecall;
    procedure Set_Language(const aLanguage: WideString); safecall;
    function Get_Country: WideString; safecall;
    procedure Set_Country(const aCountry: WideString); safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const aProxy: WideString); safecall;
    function Get_PackageSelectionAdjustments: WideString; safecall;
    procedure Set_PackageSelectionAdjustments(const aPackageSelectionAdjustments: WideString); safecall;
    function Get_Hostname: WideString; safecall;
    procedure Set_Hostname(const aHostname: WideString); safecall;
    function Get_AuxiliaryBasePath: WideString; safecall;
    procedure Set_AuxiliaryBasePath(const aAuxiliaryBasePath: WideString); safecall;
    function Get_ImageIndex: LongWord; safecall;
    procedure Set_ImageIndex(aImageIndex: LongWord); safecall;
    function Get_ScriptTemplatePath: WideString; safecall;
    procedure Set_ScriptTemplatePath(const aScriptTemplatePath: WideString); safecall;
    function Get_PostInstallScriptTemplatePath: WideString; safecall;
    procedure Set_PostInstallScriptTemplatePath(const aPostInstallScriptTemplatePath: WideString); safecall;
    function Get_PostInstallCommand: WideString; safecall;
    procedure Set_PostInstallCommand(const aPostInstallCommand: WideString); safecall;
    function Get_ExtraInstallKernelParameters: WideString; safecall;
    procedure Set_ExtraInstallKernelParameters(const aExtraInstallKernelParameters: WideString); safecall;
    function Get_DetectedOSTypeId: WideString; safecall;
    function Get_DetectedOSVersion: WideString; safecall;
    function Get_DetectedOSFlavor: WideString; safecall;
    function Get_DetectedOSLanguages: WideString; safecall;
    function Get_DetectedOSHints: WideString; safecall;
    function Get_InternalAndReservedAttribute1IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute9IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute10IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute11IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute12IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute13IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute14IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute15IUnattended: LongWord; safecall;
    function Get_InternalAndReservedAttribute16IUnattended: LongWord; safecall;
    procedure DetectIsoOS; safecall;
    procedure Prepare; safecall;
    procedure ConstructMedia; safecall;
    procedure ReconfigureVM; safecall;
    procedure Done; safecall;
    procedure InternalAndReservedMethod1IUnattended; safecall;
    procedure InternalAndReservedMethod2IUnattended; safecall;
    procedure InternalAndReservedMethod3IUnattended; safecall;
    procedure InternalAndReservedMethod4IUnattended; safecall;
    property IsoPath: WideString read Get_IsoPath write Set_IsoPath;
    property Machine: IMachine read Get_Machine write Set_Machine;
    property User: WideString read Get_User write Set_User;
    property Password: WideString read Get_Password write Set_Password;
    property FullUserName: WideString read Get_FullUserName write Set_FullUserName;
    property ProductKey: WideString read Get_ProductKey write Set_ProductKey;
    property AdditionsIsoPath: WideString read Get_AdditionsIsoPath write Set_AdditionsIsoPath;
    property InstallGuestAdditions: Integer read Get_InstallGuestAdditions write Set_InstallGuestAdditions;
    property ValidationKitIsoPath: WideString read Get_ValidationKitIsoPath write Set_ValidationKitIsoPath;
    property InstallTestExecService: Integer read Get_InstallTestExecService write Set_InstallTestExecService;
    property TimeZone: WideString read Get_TimeZone write Set_TimeZone;
    property Locale: WideString read Get_Locale write Set_Locale;
    property Language: WideString read Get_Language write Set_Language;
    property Country: WideString read Get_Country write Set_Country;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property PackageSelectionAdjustments: WideString read Get_PackageSelectionAdjustments write Set_PackageSelectionAdjustments;
    property Hostname: WideString read Get_Hostname write Set_Hostname;
    property AuxiliaryBasePath: WideString read Get_AuxiliaryBasePath write Set_AuxiliaryBasePath;
    property ImageIndex: LongWord read Get_ImageIndex write Set_ImageIndex;
    property ScriptTemplatePath: WideString read Get_ScriptTemplatePath write Set_ScriptTemplatePath;
    property PostInstallScriptTemplatePath: WideString read Get_PostInstallScriptTemplatePath write Set_PostInstallScriptTemplatePath;
    property PostInstallCommand: WideString read Get_PostInstallCommand write Set_PostInstallCommand;
    property ExtraInstallKernelParameters: WideString read Get_ExtraInstallKernelParameters write Set_ExtraInstallKernelParameters;
    property DetectedOSTypeId: WideString read Get_DetectedOSTypeId;
    property DetectedOSVersion: WideString read Get_DetectedOSVersion;
    property DetectedOSFlavor: WideString read Get_DetectedOSFlavor;
    property DetectedOSLanguages: WideString read Get_DetectedOSLanguages;
    property DetectedOSHints: WideString read Get_DetectedOSHints;
    property InternalAndReservedAttribute1IUnattended: LongWord read Get_InternalAndReservedAttribute1IUnattended;
    property InternalAndReservedAttribute2IUnattended: LongWord read Get_InternalAndReservedAttribute2IUnattended;
    property InternalAndReservedAttribute3IUnattended: LongWord read Get_InternalAndReservedAttribute3IUnattended;
    property InternalAndReservedAttribute4IUnattended: LongWord read Get_InternalAndReservedAttribute4IUnattended;
    property InternalAndReservedAttribute5IUnattended: LongWord read Get_InternalAndReservedAttribute5IUnattended;
    property InternalAndReservedAttribute6IUnattended: LongWord read Get_InternalAndReservedAttribute6IUnattended;
    property InternalAndReservedAttribute7IUnattended: LongWord read Get_InternalAndReservedAttribute7IUnattended;
    property InternalAndReservedAttribute8IUnattended: LongWord read Get_InternalAndReservedAttribute8IUnattended;
    property InternalAndReservedAttribute9IUnattended: LongWord read Get_InternalAndReservedAttribute9IUnattended;
    property InternalAndReservedAttribute10IUnattended: LongWord read Get_InternalAndReservedAttribute10IUnattended;
    property InternalAndReservedAttribute11IUnattended: LongWord read Get_InternalAndReservedAttribute11IUnattended;
    property InternalAndReservedAttribute12IUnattended: LongWord read Get_InternalAndReservedAttribute12IUnattended;
    property InternalAndReservedAttribute13IUnattended: LongWord read Get_InternalAndReservedAttribute13IUnattended;
    property InternalAndReservedAttribute14IUnattended: LongWord read Get_InternalAndReservedAttribute14IUnattended;
    property InternalAndReservedAttribute15IUnattended: LongWord read Get_InternalAndReservedAttribute15IUnattended;
    property InternalAndReservedAttribute16IUnattended: LongWord read Get_InternalAndReservedAttribute16IUnattended;
  end;

// *********************************************************************//
// DispIntf:  IUnattendedDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6F89464F-7193-426C-A41F-522E8F537FA0}
// *********************************************************************//
  IUnattendedDisp = dispinterface
    ['{6F89464F-7193-426C-A41F-522E8F537FA0}']
    property IsoPath: WideString dispid 1610743808;
    property Machine: IMachine dispid 1610743810;
    property User: WideString dispid 1610743812;
    property Password: WideString dispid 1610743814;
    property FullUserName: WideString dispid 1610743816;
    property ProductKey: WideString dispid 1610743818;
    property AdditionsIsoPath: WideString dispid 1610743820;
    property InstallGuestAdditions: Integer dispid 1610743822;
    property ValidationKitIsoPath: WideString dispid 1610743824;
    property InstallTestExecService: Integer dispid 1610743826;
    property TimeZone: WideString dispid 1610743828;
    property Locale: WideString dispid 1610743830;
    property Language: WideString dispid 1610743832;
    property Country: WideString dispid 1610743834;
    property Proxy: WideString dispid 1610743836;
    property PackageSelectionAdjustments: WideString dispid 1610743838;
    property Hostname: WideString dispid 1610743840;
    property AuxiliaryBasePath: WideString dispid 1610743842;
    property ImageIndex: LongWord dispid 1610743844;
    property ScriptTemplatePath: WideString dispid 1610743846;
    property PostInstallScriptTemplatePath: WideString dispid 1610743848;
    property PostInstallCommand: WideString dispid 1610743850;
    property ExtraInstallKernelParameters: WideString dispid 1610743852;
    property DetectedOSTypeId: WideString readonly dispid 1610743854;
    property DetectedOSVersion: WideString readonly dispid 1610743855;
    property DetectedOSFlavor: WideString readonly dispid 1610743856;
    property DetectedOSLanguages: WideString readonly dispid 1610743857;
    property DetectedOSHints: WideString readonly dispid 1610743858;
    property InternalAndReservedAttribute1IUnattended: LongWord readonly dispid 1610743859;
    property InternalAndReservedAttribute2IUnattended: LongWord readonly dispid 1610743860;
    property InternalAndReservedAttribute3IUnattended: LongWord readonly dispid 1610743861;
    property InternalAndReservedAttribute4IUnattended: LongWord readonly dispid 1610743862;
    property InternalAndReservedAttribute5IUnattended: LongWord readonly dispid 1610743863;
    property InternalAndReservedAttribute6IUnattended: LongWord readonly dispid 1610743864;
    property InternalAndReservedAttribute7IUnattended: LongWord readonly dispid 1610743865;
    property InternalAndReservedAttribute8IUnattended: LongWord readonly dispid 1610743866;
    property InternalAndReservedAttribute9IUnattended: LongWord readonly dispid 1610743867;
    property InternalAndReservedAttribute10IUnattended: LongWord readonly dispid 1610743868;
    property InternalAndReservedAttribute11IUnattended: LongWord readonly dispid 1610743869;
    property InternalAndReservedAttribute12IUnattended: LongWord readonly dispid 1610743870;
    property InternalAndReservedAttribute13IUnattended: LongWord readonly dispid 1610743871;
    property InternalAndReservedAttribute14IUnattended: LongWord readonly dispid 1610743872;
    property InternalAndReservedAttribute15IUnattended: LongWord readonly dispid 1610743873;
    property InternalAndReservedAttribute16IUnattended: LongWord readonly dispid 1610743874;
    procedure DetectIsoOS; dispid 1610743875;
    procedure Prepare; dispid 1610743876;
    procedure ConstructMedia; dispid 1610743877;
    procedure ReconfigureVM; dispid 1610743878;
    procedure Done; dispid 1610743879;
    procedure InternalAndReservedMethod1IUnattended; dispid 1610743880;
    procedure InternalAndReservedMethod2IUnattended; dispid 1610743881;
    procedure InternalAndReservedMethod3IUnattended; dispid 1610743882;
    procedure InternalAndReservedMethod4IUnattended; dispid 1610743883;
  end;

// *********************************************************************//
// Interface: IInternalMachineControl
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CDBC59DF-4F4D-4CF2-809C-917601355AFC}
// *********************************************************************//
  IInternalMachineControl = interface(IDispatch)
    ['{CDBC59DF-4F4D-4CF2-809C-917601355AFC}']
    procedure UpdateState(aState: MachineState); safecall;
    procedure BeginPowerUp(const aProgress: IProgress); safecall;
    procedure EndPowerUp(aResult: Integer); safecall;
    procedure BeginPoweringDown(out aProgress: IProgress); safecall;
    procedure EndPoweringDown(aResult: Integer; const aErrMsg: WideString); safecall;
    procedure RunUSBDeviceFilters(const aDevice: IUSBDevice; out aMatched: Integer; 
                                  out aMaskedInterfaces: LongWord); safecall;
    procedure CaptureUSBDevice(const aId: WideString; const aCaptureFilename: WideString); safecall;
    procedure DetachUSBDevice(const aId: WideString; aDone: Integer); safecall;
    procedure AutoCaptureUSBDevices; safecall;
    procedure DetachAllUSBDevices(aDone: Integer); safecall;
    function OnSessionEnd(const aSession: ISession): IProgress; safecall;
    procedure FinishOnlineMergeMedium; safecall;
    procedure PullGuestProperties(out aNames: PSafeArray; out aValues: PSafeArray; 
                                  out aTimestamps: PSafeArray; out aFlags: PSafeArray); safecall;
    procedure PushGuestProperty(const aName: WideString; const aValue: WideString; 
                                aTimeStamp: Int64; const aFlags: WideString); safecall;
    procedure LockMedia; safecall;
    procedure UnlockMedia; safecall;
    function EjectMedium(const aAttachment: IMediumAttachment): IMediumAttachment; safecall;
    procedure ReportVmStatistics(aValidStats: LongWord; aCpuUser: LongWord; aCpuKernel: LongWord; 
                                 aCpuIdle: LongWord; aMemTotal: LongWord; aMemFree: LongWord; 
                                 aMemBalloon: LongWord; aMemShared: LongWord; aMemCache: LongWord; 
                                 aPagedTotal: LongWord; aMemAllocTotal: LongWord; 
                                 aMemFreeTotal: LongWord; aMemBalloonTotal: LongWord; 
                                 aMemSharedTotal: LongWord; aVmNetRx: LongWord; aVmNetTx: LongWord); safecall;
    procedure AuthenticateExternal(aAuthParams: PSafeArray; out aResult: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IInternalMachineControlDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CDBC59DF-4F4D-4CF2-809C-917601355AFC}
// *********************************************************************//
  IInternalMachineControlDisp = dispinterface
    ['{CDBC59DF-4F4D-4CF2-809C-917601355AFC}']
    procedure UpdateState(aState: MachineState); dispid 1610743808;
    procedure BeginPowerUp(const aProgress: IProgress); dispid 1610743809;
    procedure EndPowerUp(aResult: Integer); dispid 1610743810;
    procedure BeginPoweringDown(out aProgress: IProgress); dispid 1610743811;
    procedure EndPoweringDown(aResult: Integer; const aErrMsg: WideString); dispid 1610743812;
    procedure RunUSBDeviceFilters(const aDevice: IUSBDevice; out aMatched: Integer; 
                                  out aMaskedInterfaces: LongWord); dispid 1610743813;
    procedure CaptureUSBDevice(const aId: WideString; const aCaptureFilename: WideString); dispid 1610743814;
    procedure DetachUSBDevice(const aId: WideString; aDone: Integer); dispid 1610743815;
    procedure AutoCaptureUSBDevices; dispid 1610743816;
    procedure DetachAllUSBDevices(aDone: Integer); dispid 1610743817;
    function OnSessionEnd(const aSession: ISession): IProgress; dispid 1610743818;
    procedure FinishOnlineMergeMedium; dispid 1610743819;
    procedure PullGuestProperties(out aNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                  out aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                  out aTimestamps: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                  out aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743820;
    procedure PushGuestProperty(const aName: WideString; const aValue: WideString; 
                                aTimeStamp: Int64; const aFlags: WideString); dispid 1610743821;
    procedure LockMedia; dispid 1610743822;
    procedure UnlockMedia; dispid 1610743823;
    function EjectMedium(const aAttachment: IMediumAttachment): IMediumAttachment; dispid 1610743824;
    procedure ReportVmStatistics(aValidStats: LongWord; aCpuUser: LongWord; aCpuKernel: LongWord; 
                                 aCpuIdle: LongWord; aMemTotal: LongWord; aMemFree: LongWord; 
                                 aMemBalloon: LongWord; aMemShared: LongWord; aMemCache: LongWord; 
                                 aPagedTotal: LongWord; aMemAllocTotal: LongWord; 
                                 aMemFreeTotal: LongWord; aMemBalloonTotal: LongWord; 
                                 aMemSharedTotal: LongWord; aVmNetRx: LongWord; aVmNetTx: LongWord); dispid 1610743825;
    procedure AuthenticateExternal(aAuthParams: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                   out aResult: WideString); dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IPCIAddress
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C984D15F-E191-400B-840E-970F3DAD7296}
// *********************************************************************//
  IPCIAddress = interface(IDispatch)
    ['{C984D15F-E191-400B-840E-970F3DAD7296}']
    function Get_Bus: Smallint; safecall;
    procedure Set_Bus(aBus: Smallint); safecall;
    function Get_Device: Smallint; safecall;
    procedure Set_Device(aDevice: Smallint); safecall;
    function Get_DevFunction: Smallint; safecall;
    procedure Set_DevFunction(aDevFunction: Smallint); safecall;
    function AsLong: Integer; safecall;
    procedure FromLong(aNumber: Integer); safecall;
    property Bus: Smallint read Get_Bus write Set_Bus;
    property Device: Smallint read Get_Device write Set_Device;
    property DevFunction: Smallint read Get_DevFunction write Set_DevFunction;
  end;

// *********************************************************************//
// DispIntf:  IPCIAddressDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C984D15F-E191-400B-840E-970F3DAD7296}
// *********************************************************************//
  IPCIAddressDisp = dispinterface
    ['{C984D15F-E191-400B-840E-970F3DAD7296}']
    property Bus: Smallint dispid 1610743808;
    property Device: Smallint dispid 1610743810;
    property DevFunction: Smallint dispid 1610743812;
    function AsLong: Integer; dispid 1610743814;
    procedure FromLong(aNumber: Integer); dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IInternalProgressControl
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {41A033B8-CC87-4F6E-A0E9-47BB7F2D4BE5}
// *********************************************************************//
  IInternalProgressControl = interface(IDispatch)
    ['{41A033B8-CC87-4F6E-A0E9-47BB7F2D4BE5}']
    function Get_InternalAndReservedAttribute1IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IInternalProgressControl: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IInternalProgressControl: LongWord; safecall;
    procedure SetCurrentOperationProgress(aPercent: LongWord); safecall;
    procedure WaitForOtherProgressCompletion(const aProgressOther: IProgress; aTimeoutMS: LongWord); safecall;
    procedure SetNextOperation(const aNextOperationDescription: WideString; 
                               aNextOperationsWeight: LongWord); safecall;
    procedure NotifyPointOfNoReturn; safecall;
    procedure NotifyComplete(aResultCode: Integer; const aErrorInfo: IVirtualBoxErrorInfo); safecall;
    procedure InternalAndReservedMethod1IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod2IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod3IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod4IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod5IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod6IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod7IInternalProgressControl; safecall;
    procedure InternalAndReservedMethod8IInternalProgressControl; safecall;
    property InternalAndReservedAttribute1IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute1IInternalProgressControl;
    property InternalAndReservedAttribute2IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute2IInternalProgressControl;
    property InternalAndReservedAttribute3IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute3IInternalProgressControl;
    property InternalAndReservedAttribute4IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute4IInternalProgressControl;
    property InternalAndReservedAttribute5IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute5IInternalProgressControl;
    property InternalAndReservedAttribute6IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute6IInternalProgressControl;
    property InternalAndReservedAttribute7IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute7IInternalProgressControl;
    property InternalAndReservedAttribute8IInternalProgressControl: LongWord read Get_InternalAndReservedAttribute8IInternalProgressControl;
  end;

// *********************************************************************//
// DispIntf:  IInternalProgressControlDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {41A033B8-CC87-4F6E-A0E9-47BB7F2D4BE5}
// *********************************************************************//
  IInternalProgressControlDisp = dispinterface
    ['{41A033B8-CC87-4F6E-A0E9-47BB7F2D4BE5}']
    property InternalAndReservedAttribute1IInternalProgressControl: LongWord readonly dispid 1610743808;
    property InternalAndReservedAttribute2IInternalProgressControl: LongWord readonly dispid 1610743809;
    property InternalAndReservedAttribute3IInternalProgressControl: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute4IInternalProgressControl: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute5IInternalProgressControl: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute6IInternalProgressControl: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute7IInternalProgressControl: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute8IInternalProgressControl: LongWord readonly dispid 1610743815;
    procedure SetCurrentOperationProgress(aPercent: LongWord); dispid 1610743816;
    procedure WaitForOtherProgressCompletion(const aProgressOther: IProgress; aTimeoutMS: LongWord); dispid 1610743817;
    procedure SetNextOperation(const aNextOperationDescription: WideString; 
                               aNextOperationsWeight: LongWord); dispid 1610743818;
    procedure NotifyPointOfNoReturn; dispid 1610743819;
    procedure NotifyComplete(aResultCode: Integer; const aErrorInfo: IVirtualBoxErrorInfo); dispid 1610743820;
    procedure InternalAndReservedMethod1IInternalProgressControl; dispid 1610743821;
    procedure InternalAndReservedMethod2IInternalProgressControl; dispid 1610743822;
    procedure InternalAndReservedMethod3IInternalProgressControl; dispid 1610743823;
    procedure InternalAndReservedMethod4IInternalProgressControl; dispid 1610743824;
    procedure InternalAndReservedMethod5IInternalProgressControl; dispid 1610743825;
    procedure InternalAndReservedMethod6IInternalProgressControl; dispid 1610743826;
    procedure InternalAndReservedMethod7IInternalProgressControl; dispid 1610743827;
    procedure InternalAndReservedMethod8IInternalProgressControl; dispid 1610743828;
  end;

// *********************************************************************//
// Interface: IUSBProxyBackend
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DFE56449-6989-4002-80CF-3607F377D40C}
// *********************************************************************//
  IUSBProxyBackend = interface(IDispatch)
    ['{DFE56449-6989-4002-80CF-3607F377D40C}']
    function Get_Name: WideString; safecall;
    function Get_type_: WideString; safecall;
    function Get_InternalAndReservedAttribute1IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute5IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute6IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute7IUSBProxyBackend: LongWord; safecall;
    function Get_InternalAndReservedAttribute8IUSBProxyBackend: LongWord; safecall;
    procedure InternalAndReservedMethod1IUSBProxyBackend; safecall;
    procedure InternalAndReservedMethod2IUSBProxyBackend; safecall;
    procedure InternalAndReservedMethod3IUSBProxyBackend; safecall;
    procedure InternalAndReservedMethod4IUSBProxyBackend; safecall;
    property Name: WideString read Get_Name;
    property type_: WideString read Get_type_;
    property InternalAndReservedAttribute1IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute1IUSBProxyBackend;
    property InternalAndReservedAttribute2IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute2IUSBProxyBackend;
    property InternalAndReservedAttribute3IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute3IUSBProxyBackend;
    property InternalAndReservedAttribute4IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute4IUSBProxyBackend;
    property InternalAndReservedAttribute5IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute5IUSBProxyBackend;
    property InternalAndReservedAttribute6IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute6IUSBProxyBackend;
    property InternalAndReservedAttribute7IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute7IUSBProxyBackend;
    property InternalAndReservedAttribute8IUSBProxyBackend: LongWord read Get_InternalAndReservedAttribute8IUSBProxyBackend;
  end;

// *********************************************************************//
// DispIntf:  IUSBProxyBackendDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DFE56449-6989-4002-80CF-3607F377D40C}
// *********************************************************************//
  IUSBProxyBackendDisp = dispinterface
    ['{DFE56449-6989-4002-80CF-3607F377D40C}']
    property Name: WideString readonly dispid 1610743808;
    property type_: WideString readonly dispid 1610743809;
    property InternalAndReservedAttribute1IUSBProxyBackend: LongWord readonly dispid 1610743810;
    property InternalAndReservedAttribute2IUSBProxyBackend: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute3IUSBProxyBackend: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute4IUSBProxyBackend: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute5IUSBProxyBackend: LongWord readonly dispid 1610743814;
    property InternalAndReservedAttribute6IUSBProxyBackend: LongWord readonly dispid 1610743815;
    property InternalAndReservedAttribute7IUSBProxyBackend: LongWord readonly dispid 1610743816;
    property InternalAndReservedAttribute8IUSBProxyBackend: LongWord readonly dispid 1610743817;
    procedure InternalAndReservedMethod1IUSBProxyBackend; dispid 1610743818;
    procedure InternalAndReservedMethod2IUSBProxyBackend; dispid 1610743819;
    procedure InternalAndReservedMethod3IUSBProxyBackend; dispid 1610743820;
    procedure InternalAndReservedMethod4IUSBProxyBackend; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IInternalSessionControl
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B1C3994E-F8CD-4D02-94D0-1AAF884751ED}
// *********************************************************************//
  IInternalSessionControl = interface(IDispatch)
    ['{B1C3994E-F8CD-4D02-94D0-1AAF884751ED}']
    function Get_PID: LongWord; safecall;
    function Get_RemoteConsole: IConsole; safecall;
    function Get_NominalState: MachineState; safecall;
    procedure AssignRemoteMachine(const aMachine: IMachine; const aConsole: IConsole); safecall;
    procedure UpdateMachineState(aMachineState: MachineState); safecall;
    procedure Uninitialize; safecall;
    procedure OnNetworkAdapterChange(const aNetworkAdapter: INetworkAdapter; aChangeAdapter: Integer); safecall;
    procedure OnAudioAdapterChange(const aAudioAdapter: IAudioAdapter); safecall;
    procedure OnSerialPortChange(const aSerialPort: ISerialPort); safecall;
    procedure OnParallelPortChange(const aParallelPort: IParallelPort); safecall;
    procedure OnStorageControllerChange; safecall;
    procedure OnMediumChange(const aMediumAttachment: IMediumAttachment; aForce: Integer); safecall;
    procedure OnStorageDeviceChange(const aMediumAttachment: IMediumAttachment; aRemove: Integer; 
                                    aSilent: Integer); safecall;
    procedure OnClipboardModeChange(aClipboardMode: ClipboardMode); safecall;
    procedure OnDnDModeChange(aDnDMode: DnDMode); safecall;
    procedure OnCPUChange(aCpu: LongWord; aAdd: Integer); safecall;
    procedure OnCPUExecutionCapChange(aExecutionCap: LongWord); safecall;
    procedure OnVRDEServerChange(aRestart: Integer); safecall;
    procedure OnRecordingChange(aEnable: Integer); safecall;
    procedure OnUSBControllerChange; safecall;
    procedure OnSharedFolderChange(aGlobal: Integer); safecall;
    procedure OnUSBDeviceAttach(const aDevice: IUSBDevice; const aError: IVirtualBoxErrorInfo; 
                                aMaskedInterfaces: LongWord; const aCaptureFilename: WideString); safecall;
    procedure OnUSBDeviceDetach(const aId: WideString; const aError: IVirtualBoxErrorInfo); safecall;
    procedure OnShowWindow(aCheck: Integer; out aCanShow: Integer; out aWinId: Int64); safecall;
    procedure OnBandwidthGroupChange(const aBandwidthGroup: IBandwidthGroup); safecall;
    procedure AccessGuestProperty(const aName: WideString; const aValue: WideString; 
                                  const aFlags: WideString; aAccessMode: LongWord; 
                                  out aRetValue: WideString; out aRetTimestamp: Int64; 
                                  out aRetFlags: WideString); safecall;
    procedure EnumerateGuestProperties(const aPatterns: WideString; out aKeys: PSafeArray; 
                                       out aValues: PSafeArray; out aTimestamps: PSafeArray; 
                                       out aFlags: PSafeArray); safecall;
    procedure OnlineMergeMedium(const aMediumAttachment: IMediumAttachment; aSourceIdx: LongWord; 
                                aTargetIdx: LongWord; const aProgress: IProgress); safecall;
    procedure ReconfigureMediumAttachments(aAttachments: PSafeArray); safecall;
    procedure EnableVMMStatistics(aEnable: Integer); safecall;
    procedure PauseWithReason(aReason: Reason); safecall;
    procedure ResumeWithReason(aReason: Reason); safecall;
    function SaveStateWithReason(aReason: Reason; const aProgress: IProgress; 
                                 const aSnapshot: ISnapshot; const aStateFilePath: WideString; 
                                 aPauseVM: Integer): Integer; safecall;
    procedure CancelSaveStateWithReason; safecall;
    procedure AssignMachine(const aMachine: IMachine; aLockType: LockType; 
                            const aTokenId: WideString); safecall;
    property PID: LongWord read Get_PID;
    property RemoteConsole: IConsole read Get_RemoteConsole;
    property NominalState: MachineState read Get_NominalState;
  end;

// *********************************************************************//
// DispIntf:  IInternalSessionControlDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B1C3994E-F8CD-4D02-94D0-1AAF884751ED}
// *********************************************************************//
  IInternalSessionControlDisp = dispinterface
    ['{B1C3994E-F8CD-4D02-94D0-1AAF884751ED}']
    property PID: LongWord readonly dispid 1610743808;
    property RemoteConsole: IConsole readonly dispid 1610743809;
    property NominalState: MachineState readonly dispid 1610743810;
    procedure AssignRemoteMachine(const aMachine: IMachine; const aConsole: IConsole); dispid 1610743811;
    procedure UpdateMachineState(aMachineState: MachineState); dispid 1610743812;
    procedure Uninitialize; dispid 1610743813;
    procedure OnNetworkAdapterChange(const aNetworkAdapter: INetworkAdapter; aChangeAdapter: Integer); dispid 1610743814;
    procedure OnAudioAdapterChange(const aAudioAdapter: IAudioAdapter); dispid 1610743815;
    procedure OnSerialPortChange(const aSerialPort: ISerialPort); dispid 1610743816;
    procedure OnParallelPortChange(const aParallelPort: IParallelPort); dispid 1610743817;
    procedure OnStorageControllerChange; dispid 1610743818;
    procedure OnMediumChange(const aMediumAttachment: IMediumAttachment; aForce: Integer); dispid 1610743819;
    procedure OnStorageDeviceChange(const aMediumAttachment: IMediumAttachment; aRemove: Integer; 
                                    aSilent: Integer); dispid 1610743820;
    procedure OnClipboardModeChange(aClipboardMode: ClipboardMode); dispid 1610743821;
    procedure OnDnDModeChange(aDnDMode: DnDMode); dispid 1610743822;
    procedure OnCPUChange(aCpu: LongWord; aAdd: Integer); dispid 1610743823;
    procedure OnCPUExecutionCapChange(aExecutionCap: LongWord); dispid 1610743824;
    procedure OnVRDEServerChange(aRestart: Integer); dispid 1610743825;
    procedure OnRecordingChange(aEnable: Integer); dispid 1610743826;
    procedure OnUSBControllerChange; dispid 1610743827;
    procedure OnSharedFolderChange(aGlobal: Integer); dispid 1610743828;
    procedure OnUSBDeviceAttach(const aDevice: IUSBDevice; const aError: IVirtualBoxErrorInfo; 
                                aMaskedInterfaces: LongWord; const aCaptureFilename: WideString); dispid 1610743829;
    procedure OnUSBDeviceDetach(const aId: WideString; const aError: IVirtualBoxErrorInfo); dispid 1610743830;
    procedure OnShowWindow(aCheck: Integer; out aCanShow: Integer; out aWinId: Int64); dispid 1610743831;
    procedure OnBandwidthGroupChange(const aBandwidthGroup: IBandwidthGroup); dispid 1610743832;
    procedure AccessGuestProperty(const aName: WideString; const aValue: WideString; 
                                  const aFlags: WideString; aAccessMode: LongWord; 
                                  out aRetValue: WideString; out aRetTimestamp: Int64; 
                                  out aRetFlags: WideString); dispid 1610743833;
    procedure EnumerateGuestProperties(const aPatterns: WideString; 
                                       out aKeys: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aValues: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aTimestamps: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                       out aFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743834;
    procedure OnlineMergeMedium(const aMediumAttachment: IMediumAttachment; aSourceIdx: LongWord; 
                                aTargetIdx: LongWord; const aProgress: IProgress); dispid 1610743835;
    procedure ReconfigureMediumAttachments(aAttachments: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743836;
    procedure EnableVMMStatistics(aEnable: Integer); dispid 1610743837;
    procedure PauseWithReason(aReason: Reason); dispid 1610743838;
    procedure ResumeWithReason(aReason: Reason); dispid 1610743839;
    function SaveStateWithReason(aReason: Reason; const aProgress: IProgress; 
                                 const aSnapshot: ISnapshot; const aStateFilePath: WideString; 
                                 aPauseVM: Integer): Integer; dispid 1610743840;
    procedure CancelSaveStateWithReason; dispid 1610743841;
    procedure AssignMachine(const aMachine: IMachine; aLockType: LockType; 
                            const aTokenId: WideString); dispid 1610743842;
  end;

// *********************************************************************//
// Interface: IVirtualBoxClient
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D2937A8E-CB8D-4382-90BA-B7DA78A74573}
// *********************************************************************//
  IVirtualBoxClient = interface(IDispatch)
    ['{D2937A8E-CB8D-4382-90BA-B7DA78A74573}']
    function Get_VirtualBox: IVirtualBox; safecall;
    function Get_Session: ISession; safecall;
    function Get_EventSource: IEventSource; safecall;
    function Get_InternalAndReservedAttribute1IVirtualBoxClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute2IVirtualBoxClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute3IVirtualBoxClient: LongWord; safecall;
    function Get_InternalAndReservedAttribute4IVirtualBoxClient: LongWord; safecall;
    procedure CheckMachineError(const aMachine: IMachine); safecall;
    procedure InternalAndReservedMethod1IVirtualBoxClient; safecall;
    procedure InternalAndReservedMethod2IVirtualBoxClient; safecall;
    procedure InternalAndReservedMethod3IVirtualBoxClient; safecall;
    procedure InternalAndReservedMethod4IVirtualBoxClient; safecall;
    property VirtualBox: IVirtualBox read Get_VirtualBox;
    property Session: ISession read Get_Session;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute1IVirtualBoxClient;
    property InternalAndReservedAttribute2IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute2IVirtualBoxClient;
    property InternalAndReservedAttribute3IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute3IVirtualBoxClient;
    property InternalAndReservedAttribute4IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute4IVirtualBoxClient;
  end;

// *********************************************************************//
// DispIntf:  IVirtualBoxClientDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D2937A8E-CB8D-4382-90BA-B7DA78A74573}
// *********************************************************************//
  IVirtualBoxClientDisp = dispinterface
    ['{D2937A8E-CB8D-4382-90BA-B7DA78A74573}']
    property VirtualBox: IVirtualBox readonly dispid 1610743808;
    property Session: ISession readonly dispid 1610743809;
    property EventSource: IEventSource readonly dispid 1610743810;
    property InternalAndReservedAttribute1IVirtualBoxClient: LongWord readonly dispid 1610743811;
    property InternalAndReservedAttribute2IVirtualBoxClient: LongWord readonly dispid 1610743812;
    property InternalAndReservedAttribute3IVirtualBoxClient: LongWord readonly dispid 1610743813;
    property InternalAndReservedAttribute4IVirtualBoxClient: LongWord readonly dispid 1610743814;
    procedure CheckMachineError(const aMachine: IMachine); dispid 1610743815;
    procedure InternalAndReservedMethod1IVirtualBoxClient; dispid 1610743816;
    procedure InternalAndReservedMethod2IVirtualBoxClient; dispid 1610743817;
    procedure InternalAndReservedMethod3IVirtualBoxClient; dispid 1610743818;
    procedure InternalAndReservedMethod4IVirtualBoxClient; dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IReusableEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {69BFB134-80F6-4266-8E20-16371F68FA25}
// *********************************************************************//
  IReusableEvent = interface(IEvent)
    ['{69BFB134-80F6-4266-8E20-16371F68FA25}']
    function Get_Generation: LongWord; safecall;
    procedure Reuse; safecall;
    property Generation: LongWord read Get_Generation;
  end;

// *********************************************************************//
// DispIntf:  IReusableEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {69BFB134-80F6-4266-8E20-16371F68FA25}
// *********************************************************************//
  IReusableEventDisp = dispinterface
    ['{69BFB134-80F6-4266-8E20-16371F68FA25}']
    property Generation: LongWord readonly dispid 1610809344;
    procedure Reuse; dispid 1610809345;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMachineEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {92ED7B1A-0D96-40ED-AE46-A564D484325E}
// *********************************************************************//
  IMachineEvent = interface(IEvent)
    ['{92ED7B1A-0D96-40ED-AE46-A564D484325E}']
    function Get_MachineId: WideString; safecall;
    property MachineId: WideString read Get_MachineId;
  end;

// *********************************************************************//
// DispIntf:  IMachineEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {92ED7B1A-0D96-40ED-AE46-A564D484325E}
// *********************************************************************//
  IMachineEventDisp = dispinterface
    ['{92ED7B1A-0D96-40ED-AE46-A564D484325E}']
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMachineStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5748F794-48DF-438D-85EB-98FFD70D18C9}
// *********************************************************************//
  IMachineStateChangedEvent = interface(IMachineEvent)
    ['{5748F794-48DF-438D-85EB-98FFD70D18C9}']
    function Get_State: MachineState; safecall;
    property State: MachineState read Get_State;
  end;

// *********************************************************************//
// DispIntf:  IMachineStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {5748F794-48DF-438D-85EB-98FFD70D18C9}
// *********************************************************************//
  IMachineStateChangedEventDisp = dispinterface
    ['{5748F794-48DF-438D-85EB-98FFD70D18C9}']
    property State: MachineState readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMachineDataChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {ABE94809-2E88-4436-83D7-50F3E64D0503}
// *********************************************************************//
  IMachineDataChangedEvent = interface(IMachineEvent)
    ['{ABE94809-2E88-4436-83D7-50F3E64D0503}']
    function Get_Temporary: Integer; safecall;
    property Temporary: Integer read Get_Temporary;
  end;

// *********************************************************************//
// DispIntf:  IMachineDataChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {ABE94809-2E88-4436-83D7-50F3E64D0503}
// *********************************************************************//
  IMachineDataChangedEventDisp = dispinterface
    ['{ABE94809-2E88-4436-83D7-50F3E64D0503}']
    property Temporary: Integer readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMediumRegisteredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {53FAC49A-B7F1-4A5A-A4EF-A11DD9C2A458}
// *********************************************************************//
  IMediumRegisteredEvent = interface(IEvent)
    ['{53FAC49A-B7F1-4A5A-A4EF-A11DD9C2A458}']
    function Get_MediumId: WideString; safecall;
    function Get_MediumType: DeviceType; safecall;
    function Get_Registered: Integer; safecall;
    property MediumId: WideString read Get_MediumId;
    property MediumType: DeviceType read Get_MediumType;
    property Registered: Integer read Get_Registered;
  end;

// *********************************************************************//
// DispIntf:  IMediumRegisteredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {53FAC49A-B7F1-4A5A-A4EF-A11DD9C2A458}
// *********************************************************************//
  IMediumRegisteredEventDisp = dispinterface
    ['{53FAC49A-B7F1-4A5A-A4EF-A11DD9C2A458}']
    property MediumId: WideString readonly dispid 1610809344;
    property MediumType: DeviceType readonly dispid 1610809345;
    property Registered: Integer readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMediumConfigChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DD3E2654-A161-41F1-B583-4892F4A9D5D5}
// *********************************************************************//
  IMediumConfigChangedEvent = interface(IEvent)
    ['{DD3E2654-A161-41F1-B583-4892F4A9D5D5}']
    function Get_Medium: IMedium; safecall;
    property Medium: IMedium read Get_Medium;
  end;

// *********************************************************************//
// DispIntf:  IMediumConfigChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DD3E2654-A161-41F1-B583-4892F4A9D5D5}
// *********************************************************************//
  IMediumConfigChangedEventDisp = dispinterface
    ['{DD3E2654-A161-41F1-B583-4892F4A9D5D5}']
    property Medium: IMedium readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMachineRegisteredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C354A762-3FF2-4F2E-8F09-07382EE25088}
// *********************************************************************//
  IMachineRegisteredEvent = interface(IMachineEvent)
    ['{C354A762-3FF2-4F2E-8F09-07382EE25088}']
    function Get_Registered: Integer; safecall;
    property Registered: Integer read Get_Registered;
  end;

// *********************************************************************//
// DispIntf:  IMachineRegisteredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C354A762-3FF2-4F2E-8F09-07382EE25088}
// *********************************************************************//
  IMachineRegisteredEventDisp = dispinterface
    ['{C354A762-3FF2-4F2E-8F09-07382EE25088}']
    property Registered: Integer readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISessionStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {714A3EEF-799A-4489-86CD-FE8E45B2FF8E}
// *********************************************************************//
  ISessionStateChangedEvent = interface(IMachineEvent)
    ['{714A3EEF-799A-4489-86CD-FE8E45B2FF8E}']
    function Get_State: SessionState; safecall;
    property State: SessionState read Get_State;
  end;

// *********************************************************************//
// DispIntf:  ISessionStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {714A3EEF-799A-4489-86CD-FE8E45B2FF8E}
// *********************************************************************//
  ISessionStateChangedEventDisp = dispinterface
    ['{714A3EEF-799A-4489-86CD-FE8E45B2FF8E}']
    property State: SessionState readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestPropertyChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3F63597A-26F1-4EDB-8DD2-6BDDD0912368}
// *********************************************************************//
  IGuestPropertyChangedEvent = interface(IMachineEvent)
    ['{3F63597A-26F1-4EDB-8DD2-6BDDD0912368}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    function Get_Flags: WideString; safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value;
    property Flags: WideString read Get_Flags;
  end;

// *********************************************************************//
// DispIntf:  IGuestPropertyChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3F63597A-26F1-4EDB-8DD2-6BDDD0912368}
// *********************************************************************//
  IGuestPropertyChangedEventDisp = dispinterface
    ['{3F63597A-26F1-4EDB-8DD2-6BDDD0912368}']
    property Name: WideString readonly dispid 1610874880;
    property Value: WideString readonly dispid 1610874881;
    property Flags: WideString readonly dispid 1610874882;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISnapshotEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {21637B0E-34B8-42D3-ACFB-7E96DAF77C22}
// *********************************************************************//
  ISnapshotEvent = interface(IMachineEvent)
    ['{21637B0E-34B8-42D3-ACFB-7E96DAF77C22}']
    function Get_SnapshotId: WideString; safecall;
    property SnapshotId: WideString read Get_SnapshotId;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {21637B0E-34B8-42D3-ACFB-7E96DAF77C22}
// *********************************************************************//
  ISnapshotEventDisp = dispinterface
    ['{21637B0E-34B8-42D3-ACFB-7E96DAF77C22}']
    property SnapshotId: WideString readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISnapshotTakenEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D27C0B3D-6038-422C-B45E-6D4A0503D9F1}
// *********************************************************************//
  ISnapshotTakenEvent = interface(ISnapshotEvent)
    ['{D27C0B3D-6038-422C-B45E-6D4A0503D9F1}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotTakenEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D27C0B3D-6038-422C-B45E-6D4A0503D9F1}
// *********************************************************************//
  ISnapshotTakenEventDisp = dispinterface
    ['{D27C0B3D-6038-422C-B45E-6D4A0503D9F1}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610940416;
    property SnapshotId: WideString readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISnapshotDeletedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C48F3401-4A9E-43F4-B7A7-54BD285E22F4}
// *********************************************************************//
  ISnapshotDeletedEvent = interface(ISnapshotEvent)
    ['{C48F3401-4A9E-43F4-B7A7-54BD285E22F4}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotDeletedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C48F3401-4A9E-43F4-B7A7-54BD285E22F4}
// *********************************************************************//
  ISnapshotDeletedEventDisp = dispinterface
    ['{C48F3401-4A9E-43F4-B7A7-54BD285E22F4}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610940416;
    property SnapshotId: WideString readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISnapshotRestoredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F4D803B4-9B2D-4377-BFE6-9702E881516B}
// *********************************************************************//
  ISnapshotRestoredEvent = interface(ISnapshotEvent)
    ['{F4D803B4-9B2D-4377-BFE6-9702E881516B}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotRestoredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F4D803B4-9B2D-4377-BFE6-9702E881516B}
// *********************************************************************//
  ISnapshotRestoredEventDisp = dispinterface
    ['{F4D803B4-9B2D-4377-BFE6-9702E881516B}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610940416;
    property SnapshotId: WideString readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISnapshotChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {07541941-8079-447A-A33E-47A69C7980DB}
// *********************************************************************//
  ISnapshotChangedEvent = interface(ISnapshotEvent)
    ['{07541941-8079-447A-A33E-47A69C7980DB}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  ISnapshotChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {07541941-8079-447A-A33E-47A69C7980DB}
// *********************************************************************//
  ISnapshotChangedEventDisp = dispinterface
    ['{07541941-8079-447A-A33E-47A69C7980DB}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610940416;
    property SnapshotId: WideString readonly dispid 1610874880;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMousePointerShapeChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A6DCF6E8-416B-4181-8C4A-45EC95177AEF}
// *********************************************************************//
  IMousePointerShapeChangedEvent = interface(IEvent)
    ['{A6DCF6E8-416B-4181-8C4A-45EC95177AEF}']
    function Get_Visible: Integer; safecall;
    function Get_Alpha: Integer; safecall;
    function Get_Xhot: LongWord; safecall;
    function Get_Yhot: LongWord; safecall;
    function Get_Width: LongWord; safecall;
    function Get_Height: LongWord; safecall;
    function Get_Shape: PSafeArray; safecall;
    property Visible: Integer read Get_Visible;
    property Alpha: Integer read Get_Alpha;
    property Xhot: LongWord read Get_Xhot;
    property Yhot: LongWord read Get_Yhot;
    property Width: LongWord read Get_Width;
    property Height: LongWord read Get_Height;
    property Shape: PSafeArray read Get_Shape;
  end;

// *********************************************************************//
// DispIntf:  IMousePointerShapeChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A6DCF6E8-416B-4181-8C4A-45EC95177AEF}
// *********************************************************************//
  IMousePointerShapeChangedEventDisp = dispinterface
    ['{A6DCF6E8-416B-4181-8C4A-45EC95177AEF}']
    property Visible: Integer readonly dispid 1610809344;
    property Alpha: Integer readonly dispid 1610809345;
    property Xhot: LongWord readonly dispid 1610809346;
    property Yhot: LongWord readonly dispid 1610809347;
    property Width: LongWord readonly dispid 1610809348;
    property Height: LongWord readonly dispid 1610809349;
    property Shape: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809350;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMouseCapabilityChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {70E7779A-E64A-4908-804E-371CAD23A756}
// *********************************************************************//
  IMouseCapabilityChangedEvent = interface(IEvent)
    ['{70E7779A-E64A-4908-804E-371CAD23A756}']
    function Get_SupportsAbsolute: Integer; safecall;
    function Get_SupportsRelative: Integer; safecall;
    function Get_SupportsMultiTouch: Integer; safecall;
    function Get_NeedsHostCursor: Integer; safecall;
    property SupportsAbsolute: Integer read Get_SupportsAbsolute;
    property SupportsRelative: Integer read Get_SupportsRelative;
    property SupportsMultiTouch: Integer read Get_SupportsMultiTouch;
    property NeedsHostCursor: Integer read Get_NeedsHostCursor;
  end;

// *********************************************************************//
// DispIntf:  IMouseCapabilityChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {70E7779A-E64A-4908-804E-371CAD23A756}
// *********************************************************************//
  IMouseCapabilityChangedEventDisp = dispinterface
    ['{70E7779A-E64A-4908-804E-371CAD23A756}']
    property SupportsAbsolute: Integer readonly dispid 1610809344;
    property SupportsRelative: Integer readonly dispid 1610809345;
    property SupportsMultiTouch: Integer readonly dispid 1610809346;
    property NeedsHostCursor: Integer readonly dispid 1610809347;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IKeyboardLedsChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6DDEF35E-4737-457B-99FC-BC52C851A44F}
// *********************************************************************//
  IKeyboardLedsChangedEvent = interface(IEvent)
    ['{6DDEF35E-4737-457B-99FC-BC52C851A44F}']
    function Get_NumLock: Integer; safecall;
    function Get_CapsLock: Integer; safecall;
    function Get_ScrollLock: Integer; safecall;
    property NumLock: Integer read Get_NumLock;
    property CapsLock: Integer read Get_CapsLock;
    property ScrollLock: Integer read Get_ScrollLock;
  end;

// *********************************************************************//
// DispIntf:  IKeyboardLedsChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6DDEF35E-4737-457B-99FC-BC52C851A44F}
// *********************************************************************//
  IKeyboardLedsChangedEventDisp = dispinterface
    ['{6DDEF35E-4737-457B-99FC-BC52C851A44F}']
    property NumLock: Integer readonly dispid 1610809344;
    property CapsLock: Integer readonly dispid 1610809345;
    property ScrollLock: Integer readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4376693C-CF37-453B-9289-3B0F521CAF27}
// *********************************************************************//
  IStateChangedEvent = interface(IEvent)
    ['{4376693C-CF37-453B-9289-3B0F521CAF27}']
    function Get_State: MachineState; safecall;
    property State: MachineState read Get_State;
  end;

// *********************************************************************//
// DispIntf:  IStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4376693C-CF37-453B-9289-3B0F521CAF27}
// *********************************************************************//
  IStateChangedEventDisp = dispinterface
    ['{4376693C-CF37-453B-9289-3B0F521CAF27}']
    property State: MachineState readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IAdditionsStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D70F7915-DA7C-44C8-A7AC-9F173490446A}
// *********************************************************************//
  IAdditionsStateChangedEvent = interface(IEvent)
    ['{D70F7915-DA7C-44C8-A7AC-9F173490446A}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IAdditionsStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D70F7915-DA7C-44C8-A7AC-9F173490446A}
// *********************************************************************//
  IAdditionsStateChangedEventDisp = dispinterface
    ['{D70F7915-DA7C-44C8-A7AC-9F173490446A}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INetworkAdapterChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {08889892-1EC6-4883-801D-77F56CFD0103}
// *********************************************************************//
  INetworkAdapterChangedEvent = interface(IEvent)
    ['{08889892-1EC6-4883-801D-77F56CFD0103}']
    function Get_NetworkAdapter: INetworkAdapter; safecall;
    property NetworkAdapter: INetworkAdapter read Get_NetworkAdapter;
  end;

// *********************************************************************//
// DispIntf:  INetworkAdapterChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {08889892-1EC6-4883-801D-77F56CFD0103}
// *********************************************************************//
  INetworkAdapterChangedEventDisp = dispinterface
    ['{08889892-1EC6-4883-801D-77F56CFD0103}']
    property NetworkAdapter: INetworkAdapter readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IAudioAdapterChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D5ABC823-04D0-4DB6-8D66-DC2F033120E1}
// *********************************************************************//
  IAudioAdapterChangedEvent = interface(IEvent)
    ['{D5ABC823-04D0-4DB6-8D66-DC2F033120E1}']
    function Get_AudioAdapter: IAudioAdapter; safecall;
    property AudioAdapter: IAudioAdapter read Get_AudioAdapter;
  end;

// *********************************************************************//
// DispIntf:  IAudioAdapterChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D5ABC823-04D0-4DB6-8D66-DC2F033120E1}
// *********************************************************************//
  IAudioAdapterChangedEventDisp = dispinterface
    ['{D5ABC823-04D0-4DB6-8D66-DC2F033120E1}']
    property AudioAdapter: IAudioAdapter readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISerialPortChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3BA329DC-659C-488B-835C-4ECA7AE71C6C}
// *********************************************************************//
  ISerialPortChangedEvent = interface(IEvent)
    ['{3BA329DC-659C-488B-835C-4ECA7AE71C6C}']
    function Get_SerialPort: ISerialPort; safecall;
    property SerialPort: ISerialPort read Get_SerialPort;
  end;

// *********************************************************************//
// DispIntf:  ISerialPortChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {3BA329DC-659C-488B-835C-4ECA7AE71C6C}
// *********************************************************************//
  ISerialPortChangedEventDisp = dispinterface
    ['{3BA329DC-659C-488B-835C-4ECA7AE71C6C}']
    property SerialPort: ISerialPort readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IParallelPortChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {813C99FC-9849-4F47-813E-24A75DC85615}
// *********************************************************************//
  IParallelPortChangedEvent = interface(IEvent)
    ['{813C99FC-9849-4F47-813E-24A75DC85615}']
    function Get_ParallelPort: IParallelPort; safecall;
    property ParallelPort: IParallelPort read Get_ParallelPort;
  end;

// *********************************************************************//
// DispIntf:  IParallelPortChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {813C99FC-9849-4F47-813E-24A75DC85615}
// *********************************************************************//
  IParallelPortChangedEventDisp = dispinterface
    ['{813C99FC-9849-4F47-813E-24A75DC85615}']
    property ParallelPort: IParallelPort readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IStorageControllerChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {715212BF-DA59-426E-8230-3831FAA52C56}
// *********************************************************************//
  IStorageControllerChangedEvent = interface(IEvent)
    ['{715212BF-DA59-426E-8230-3831FAA52C56}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IStorageControllerChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {715212BF-DA59-426E-8230-3831FAA52C56}
// *********************************************************************//
  IStorageControllerChangedEventDisp = dispinterface
    ['{715212BF-DA59-426E-8230-3831FAA52C56}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IMediumChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0FE2DA40-5637-472A-9736-72019EABD7DE}
// *********************************************************************//
  IMediumChangedEvent = interface(IEvent)
    ['{0FE2DA40-5637-472A-9736-72019EABD7DE}']
    function Get_MediumAttachment: IMediumAttachment; safecall;
    property MediumAttachment: IMediumAttachment read Get_MediumAttachment;
  end;

// *********************************************************************//
// DispIntf:  IMediumChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0FE2DA40-5637-472A-9736-72019EABD7DE}
// *********************************************************************//
  IMediumChangedEventDisp = dispinterface
    ['{0FE2DA40-5637-472A-9736-72019EABD7DE}']
    property MediumAttachment: IMediumAttachment readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IClipboardModeChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CAC21692-7997-4595-A731-3A509DB604E5}
// *********************************************************************//
  IClipboardModeChangedEvent = interface(IEvent)
    ['{CAC21692-7997-4595-A731-3A509DB604E5}']
    function Get_ClipboardMode: ClipboardMode; safecall;
    property ClipboardMode: ClipboardMode read Get_ClipboardMode;
  end;

// *********************************************************************//
// DispIntf:  IClipboardModeChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {CAC21692-7997-4595-A731-3A509DB604E5}
// *********************************************************************//
  IClipboardModeChangedEventDisp = dispinterface
    ['{CAC21692-7997-4595-A731-3A509DB604E5}']
    property ClipboardMode: ClipboardMode readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IDnDModeChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B55CF856-1F8B-4692-ABB4-462429FAE5E9}
// *********************************************************************//
  IDnDModeChangedEvent = interface(IEvent)
    ['{B55CF856-1F8B-4692-ABB4-462429FAE5E9}']
    function Get_DnDMode: DnDMode; safecall;
    property DnDMode: DnDMode read Get_DnDMode;
  end;

// *********************************************************************//
// DispIntf:  IDnDModeChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B55CF856-1F8B-4692-ABB4-462429FAE5E9}
// *********************************************************************//
  IDnDModeChangedEventDisp = dispinterface
    ['{B55CF856-1F8B-4692-ABB4-462429FAE5E9}']
    property DnDMode: DnDMode readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ICPUChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4DA2DEC7-71B2-4817-9A64-4ED12C17388E}
// *********************************************************************//
  ICPUChangedEvent = interface(IEvent)
    ['{4DA2DEC7-71B2-4817-9A64-4ED12C17388E}']
    function Get_CPU: LongWord; safecall;
    function Get_Add: Integer; safecall;
    property CPU: LongWord read Get_CPU;
    property Add: Integer read Get_Add;
  end;

// *********************************************************************//
// DispIntf:  ICPUChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4DA2DEC7-71B2-4817-9A64-4ED12C17388E}
// *********************************************************************//
  ICPUChangedEventDisp = dispinterface
    ['{4DA2DEC7-71B2-4817-9A64-4ED12C17388E}']
    property CPU: LongWord readonly dispid 1610809344;
    property Add: Integer readonly dispid 1610809345;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ICPUExecutionCapChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DFA7E4F5-B4A4-44CE-85A8-127AC5EB59DC}
// *********************************************************************//
  ICPUExecutionCapChangedEvent = interface(IEvent)
    ['{DFA7E4F5-B4A4-44CE-85A8-127AC5EB59DC}']
    function Get_ExecutionCap: LongWord; safecall;
    property ExecutionCap: LongWord read Get_ExecutionCap;
  end;

// *********************************************************************//
// DispIntf:  ICPUExecutionCapChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DFA7E4F5-B4A4-44CE-85A8-127AC5EB59DC}
// *********************************************************************//
  ICPUExecutionCapChangedEventDisp = dispinterface
    ['{DFA7E4F5-B4A4-44CE-85A8-127AC5EB59DC}']
    property ExecutionCap: LongWord readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestKeyboardEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {88394258-7006-40D4-B339-472EE3801844}
// *********************************************************************//
  IGuestKeyboardEvent = interface(IEvent)
    ['{88394258-7006-40D4-B339-472EE3801844}']
    function Get_Scancodes: PSafeArray; safecall;
    property Scancodes: PSafeArray read Get_Scancodes;
  end;

// *********************************************************************//
// DispIntf:  IGuestKeyboardEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {88394258-7006-40D4-B339-472EE3801844}
// *********************************************************************//
  IGuestKeyboardEventDisp = dispinterface
    ['{88394258-7006-40D4-B339-472EE3801844}']
    property Scancodes: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestMouseEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {179F8647-319C-4E7E-8150-C5837BD265F6}
// *********************************************************************//
  IGuestMouseEvent = interface(IReusableEvent)
    ['{179F8647-319C-4E7E-8150-C5837BD265F6}']
    function Get_Mode: GuestMouseEventMode; safecall;
    function Get_X: Integer; safecall;
    function Get_Y: Integer; safecall;
    function Get_Z: Integer; safecall;
    function Get_W: Integer; safecall;
    function Get_Buttons: Integer; safecall;
    property Mode: GuestMouseEventMode read Get_Mode;
    property X: Integer read Get_X;
    property Y: Integer read Get_Y;
    property Z: Integer read Get_Z;
    property W: Integer read Get_W;
    property Buttons: Integer read Get_Buttons;
  end;

// *********************************************************************//
// DispIntf:  IGuestMouseEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {179F8647-319C-4E7E-8150-C5837BD265F6}
// *********************************************************************//
  IGuestMouseEventDisp = dispinterface
    ['{179F8647-319C-4E7E-8150-C5837BD265F6}']
    property Mode: GuestMouseEventMode readonly dispid 1610874880;
    property X: Integer readonly dispid 1610874881;
    property Y: Integer readonly dispid 1610874882;
    property Z: Integer readonly dispid 1610874883;
    property W: Integer readonly dispid 1610874884;
    property Buttons: Integer readonly dispid 1610874885;
    property Generation: LongWord readonly dispid 1610809344;
    procedure Reuse; dispid 1610809345;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestMultiTouchEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {BE8A0EB5-F4F4-4DD0-9D30-C89B873247EC}
// *********************************************************************//
  IGuestMultiTouchEvent = interface(IEvent)
    ['{BE8A0EB5-F4F4-4DD0-9D30-C89B873247EC}']
    function Get_ContactCount: Integer; safecall;
    function Get_XPositions: PSafeArray; safecall;
    function Get_YPositions: PSafeArray; safecall;
    function Get_ContactIds: PSafeArray; safecall;
    function Get_ContactFlags: PSafeArray; safecall;
    function Get_ScanTime: LongWord; safecall;
    property ContactCount: Integer read Get_ContactCount;
    property XPositions: PSafeArray read Get_XPositions;
    property YPositions: PSafeArray read Get_YPositions;
    property ContactIds: PSafeArray read Get_ContactIds;
    property ContactFlags: PSafeArray read Get_ContactFlags;
    property ScanTime: LongWord read Get_ScanTime;
  end;

// *********************************************************************//
// DispIntf:  IGuestMultiTouchEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {BE8A0EB5-F4F4-4DD0-9D30-C89B873247EC}
// *********************************************************************//
  IGuestMultiTouchEventDisp = dispinterface
    ['{BE8A0EB5-F4F4-4DD0-9D30-C89B873247EC}']
    property ContactCount: Integer readonly dispid 1610809344;
    property XPositions: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809345;
    property YPositions: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809346;
    property ContactIds: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809347;
    property ContactFlags: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610809348;
    property ScanTime: LongWord readonly dispid 1610809349;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestSessionEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B9ACD33F-647D-45AC-8FE9-F49B3183BA37}
// *********************************************************************//
  IGuestSessionEvent = interface(IEvent)
    ['{B9ACD33F-647D-45AC-8FE9-F49B3183BA37}']
    function Get_Session: IGuestSession; safecall;
    property Session: IGuestSession read Get_Session;
  end;

// *********************************************************************//
// DispIntf:  IGuestSessionEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B9ACD33F-647D-45AC-8FE9-F49B3183BA37}
// *********************************************************************//
  IGuestSessionEventDisp = dispinterface
    ['{B9ACD33F-647D-45AC-8FE9-F49B3183BA37}']
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestSessionStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {327E3C00-EE61-462F-AED3-0DFF6CBF9904}
// *********************************************************************//
  IGuestSessionStateChangedEvent = interface(IGuestSessionEvent)
    ['{327E3C00-EE61-462F-AED3-0DFF6CBF9904}']
    function Get_Id: LongWord; safecall;
    function Get_Status: GuestSessionStatus; safecall;
    function Get_Error: IVirtualBoxErrorInfo; safecall;
    property Id: LongWord read Get_Id;
    property Status: GuestSessionStatus read Get_Status;
    property Error: IVirtualBoxErrorInfo read Get_Error;
  end;

// *********************************************************************//
// DispIntf:  IGuestSessionStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {327E3C00-EE61-462F-AED3-0DFF6CBF9904}
// *********************************************************************//
  IGuestSessionStateChangedEventDisp = dispinterface
    ['{327E3C00-EE61-462F-AED3-0DFF6CBF9904}']
    property Id: LongWord readonly dispid 1610874880;
    property Status: GuestSessionStatus readonly dispid 1610874881;
    property Error: IVirtualBoxErrorInfo readonly dispid 1610874882;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestSessionRegisteredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B79DE686-EABD-4FA6-960A-F1756C99EA1C}
// *********************************************************************//
  IGuestSessionRegisteredEvent = interface(IGuestSessionEvent)
    ['{B79DE686-EABD-4FA6-960A-F1756C99EA1C}']
    function Get_Registered: Integer; safecall;
    property Registered: Integer read Get_Registered;
  end;

// *********************************************************************//
// DispIntf:  IGuestSessionRegisteredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B79DE686-EABD-4FA6-960A-F1756C99EA1C}
// *********************************************************************//
  IGuestSessionRegisteredEventDisp = dispinterface
    ['{B79DE686-EABD-4FA6-960A-F1756C99EA1C}']
    property Registered: Integer readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {2405F0E5-6588-40A3-9B0A-68C05BA52C4B}
// *********************************************************************//
  IGuestProcessEvent = interface(IGuestSessionEvent)
    ['{2405F0E5-6588-40A3-9B0A-68C05BA52C4B}']
    function Get_Process: IGuestProcess; safecall;
    function Get_PID: LongWord; safecall;
    property Process: IGuestProcess read Get_Process;
    property PID: LongWord read Get_PID;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {2405F0E5-6588-40A3-9B0A-68C05BA52C4B}
// *********************************************************************//
  IGuestProcessEventDisp = dispinterface
    ['{2405F0E5-6588-40A3-9B0A-68C05BA52C4B}']
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessRegisteredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1D89E2B3-C6EA-45B6-9D43-DC6F70CC9F02}
// *********************************************************************//
  IGuestProcessRegisteredEvent = interface(IGuestProcessEvent)
    ['{1D89E2B3-C6EA-45B6-9D43-DC6F70CC9F02}']
    function Get_Registered: Integer; safecall;
    property Registered: Integer read Get_Registered;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessRegisteredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {1D89E2B3-C6EA-45B6-9D43-DC6F70CC9F02}
// *********************************************************************//
  IGuestProcessRegisteredEventDisp = dispinterface
    ['{1D89E2B3-C6EA-45B6-9D43-DC6F70CC9F02}']
    property Registered: Integer readonly dispid 1610940416;
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C365FB7B-4430-499F-92C8-8BED814A567A}
// *********************************************************************//
  IGuestProcessStateChangedEvent = interface(IGuestProcessEvent)
    ['{C365FB7B-4430-499F-92C8-8BED814A567A}']
    function Get_Status: ProcessStatus; safecall;
    function Get_Error: IVirtualBoxErrorInfo; safecall;
    property Status: ProcessStatus read Get_Status;
    property Error: IVirtualBoxErrorInfo read Get_Error;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C365FB7B-4430-499F-92C8-8BED814A567A}
// *********************************************************************//
  IGuestProcessStateChangedEventDisp = dispinterface
    ['{C365FB7B-4430-499F-92C8-8BED814A567A}']
    property Status: ProcessStatus readonly dispid 1610940416;
    property Error: IVirtualBoxErrorInfo readonly dispid 1610940417;
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessIOEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9EA9227C-E9BB-49B3-BFC7-C5171E93EF38}
// *********************************************************************//
  IGuestProcessIOEvent = interface(IGuestProcessEvent)
    ['{9EA9227C-E9BB-49B3-BFC7-C5171E93EF38}']
    function Get_Handle: LongWord; safecall;
    function Get_Processed: LongWord; safecall;
    property Handle: LongWord read Get_Handle;
    property Processed: LongWord read Get_Processed;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessIOEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9EA9227C-E9BB-49B3-BFC7-C5171E93EF38}
// *********************************************************************//
  IGuestProcessIOEventDisp = dispinterface
    ['{9EA9227C-E9BB-49B3-BFC7-C5171E93EF38}']
    property Handle: LongWord readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessInputNotifyEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0DE887F2-B7DB-4616-AAC6-CFB94D89BA78}
// *********************************************************************//
  IGuestProcessInputNotifyEvent = interface(IGuestProcessIOEvent)
    ['{0DE887F2-B7DB-4616-AAC6-CFB94D89BA78}']
    function Get_Status: ProcessInputStatus; safecall;
    property Status: ProcessInputStatus read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessInputNotifyEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0DE887F2-B7DB-4616-AAC6-CFB94D89BA78}
// *********************************************************************//
  IGuestProcessInputNotifyEventDisp = dispinterface
    ['{0DE887F2-B7DB-4616-AAC6-CFB94D89BA78}']
    property Status: ProcessInputStatus readonly dispid 1611005952;
    property Handle: LongWord readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestProcessOutputEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D3D5F1EE-BCB2-4905-A7AB-CC85448A742B}
// *********************************************************************//
  IGuestProcessOutputEvent = interface(IGuestProcessIOEvent)
    ['{D3D5F1EE-BCB2-4905-A7AB-CC85448A742B}']
    function Get_Data: PSafeArray; safecall;
    property Data: PSafeArray read Get_Data;
  end;

// *********************************************************************//
// DispIntf:  IGuestProcessOutputEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D3D5F1EE-BCB2-4905-A7AB-CC85448A742B}
// *********************************************************************//
  IGuestProcessOutputEventDisp = dispinterface
    ['{D3D5F1EE-BCB2-4905-A7AB-CC85448A742B}']
    property Data: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1611005952;
    property Handle: LongWord readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property Process: IGuestProcess readonly dispid 1610874880;
    property PID: LongWord readonly dispid 1610874881;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C8ADB7B0-057D-4391-B928-F14B06B710C5}
// *********************************************************************//
  IGuestFileEvent = interface(IGuestSessionEvent)
    ['{C8ADB7B0-057D-4391-B928-F14B06B710C5}']
    function Get_File_: IGuestFile; safecall;
    property File_: IGuestFile read Get_File_;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {C8ADB7B0-057D-4391-B928-F14B06B710C5}
// *********************************************************************//
  IGuestFileEventDisp = dispinterface
    ['{C8ADB7B0-057D-4391-B928-F14B06B710C5}']
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileRegisteredEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0D93830-70A2-487E-895E-D3FC9679F7B3}
// *********************************************************************//
  IGuestFileRegisteredEvent = interface(IGuestFileEvent)
    ['{D0D93830-70A2-487E-895E-D3FC9679F7B3}']
    function Get_Registered: Integer; safecall;
    property Registered: Integer read Get_Registered;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileRegisteredEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D0D93830-70A2-487E-895E-D3FC9679F7B3}
// *********************************************************************//
  IGuestFileRegisteredEventDisp = dispinterface
    ['{D0D93830-70A2-487E-895E-D3FC9679F7B3}']
    property Registered: Integer readonly dispid 1610940416;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D37FE88F-0979-486C-BAA1-3ABB144DC82D}
// *********************************************************************//
  IGuestFileStateChangedEvent = interface(IGuestFileEvent)
    ['{D37FE88F-0979-486C-BAA1-3ABB144DC82D}']
    function Get_Status: FileStatus; safecall;
    function Get_Error: IVirtualBoxErrorInfo; safecall;
    property Status: FileStatus read Get_Status;
    property Error: IVirtualBoxErrorInfo read Get_Error;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D37FE88F-0979-486C-BAA1-3ABB144DC82D}
// *********************************************************************//
  IGuestFileStateChangedEventDisp = dispinterface
    ['{D37FE88F-0979-486C-BAA1-3ABB144DC82D}']
    property Status: FileStatus readonly dispid 1610940416;
    property Error: IVirtualBoxErrorInfo readonly dispid 1610940417;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileIOEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B5191A7C-9536-4EF8-820E-3B0E17E5BBC8}
// *********************************************************************//
  IGuestFileIOEvent = interface(IGuestFileEvent)
    ['{B5191A7C-9536-4EF8-820E-3B0E17E5BBC8}']
    function Get_Offset: Int64; safecall;
    function Get_Processed: LongWord; safecall;
    property Offset: Int64 read Get_Offset;
    property Processed: LongWord read Get_Processed;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileIOEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B5191A7C-9536-4EF8-820E-3B0E17E5BBC8}
// *********************************************************************//
  IGuestFileIOEventDisp = dispinterface
    ['{B5191A7C-9536-4EF8-820E-3B0E17E5BBC8}']
    property Offset: Int64 readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileOffsetChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E8F79A21-1207-4179-94CF-CA250036308F}
// *********************************************************************//
  IGuestFileOffsetChangedEvent = interface(IGuestFileIOEvent)
    ['{E8F79A21-1207-4179-94CF-CA250036308F}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileOffsetChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E8F79A21-1207-4179-94CF-CA250036308F}
// *********************************************************************//
  IGuestFileOffsetChangedEventDisp = dispinterface
    ['{E8F79A21-1207-4179-94CF-CA250036308F}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1611005952;
    property Offset: Int64 readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileSizeChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D78374E9-486E-472F-481B-969746AF2480}
// *********************************************************************//
  IGuestFileSizeChangedEvent = interface(IGuestFileEvent)
    ['{D78374E9-486E-472F-481B-969746AF2480}']
    function Get_NewSize: Int64; safecall;
    property NewSize: Int64 read Get_NewSize;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileSizeChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D78374E9-486E-472F-481B-969746AF2480}
// *********************************************************************//
  IGuestFileSizeChangedEventDisp = dispinterface
    ['{D78374E9-486E-472F-481B-969746AF2480}']
    property NewSize: Int64 readonly dispid 1610940416;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileReadEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4EE3CBCB-486F-40DB-9150-DEEE3FD24189}
// *********************************************************************//
  IGuestFileReadEvent = interface(IGuestFileIOEvent)
    ['{4EE3CBCB-486F-40DB-9150-DEEE3FD24189}']
    function Get_Data: PSafeArray; safecall;
    property Data: PSafeArray read Get_Data;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileReadEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {4EE3CBCB-486F-40DB-9150-DEEE3FD24189}
// *********************************************************************//
  IGuestFileReadEventDisp = dispinterface
    ['{4EE3CBCB-486F-40DB-9150-DEEE3FD24189}']
    property Data: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1611005952;
    property Offset: Int64 readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestFileWriteEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E062A915-3CF5-4C0A-BC90-9B8D4CC94D89}
// *********************************************************************//
  IGuestFileWriteEvent = interface(IGuestFileIOEvent)
    ['{E062A915-3CF5-4C0A-BC90-9B8D4CC94D89}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IGuestFileWriteEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E062A915-3CF5-4C0A-BC90-9B8D4CC94D89}
// *********************************************************************//
  IGuestFileWriteEventDisp = dispinterface
    ['{E062A915-3CF5-4C0A-BC90-9B8D4CC94D89}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1611005952;
    property Offset: Int64 readonly dispid 1610940416;
    property Processed: LongWord readonly dispid 1610940417;
    property File_: IGuestFile readonly dispid 1610874880;
    property Session: IGuestSession readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVRDEServerChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A06FD66A-3188-4C8C-8756-1395E8CB691C}
// *********************************************************************//
  IVRDEServerChangedEvent = interface(IEvent)
    ['{A06FD66A-3188-4C8C-8756-1395E8CB691C}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IVRDEServerChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A06FD66A-3188-4C8C-8756-1395E8CB691C}
// *********************************************************************//
  IVRDEServerChangedEventDisp = dispinterface
    ['{A06FD66A-3188-4C8C-8756-1395E8CB691C}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVRDEServerInfoChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DD6A1080-E1B7-4339-A549-F0878115596E}
// *********************************************************************//
  IVRDEServerInfoChangedEvent = interface(IEvent)
    ['{DD6A1080-E1B7-4339-A549-F0878115596E}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IVRDEServerInfoChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DD6A1080-E1B7-4339-A549-F0878115596E}
// *********************************************************************//
  IVRDEServerInfoChangedEventDisp = dispinterface
    ['{DD6A1080-E1B7-4339-A549-F0878115596E}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IRecordingChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B5DDB370-08A7-4C8F-910D-47AABD67253A}
// *********************************************************************//
  IRecordingChangedEvent = interface(IEvent)
    ['{B5DDB370-08A7-4C8F-910D-47AABD67253A}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IRecordingChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B5DDB370-08A7-4C8F-910D-47AABD67253A}
// *********************************************************************//
  IRecordingChangedEventDisp = dispinterface
    ['{B5DDB370-08A7-4C8F-910D-47AABD67253A}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IUSBControllerChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {93BADC0C-61D9-4940-A084-E6BB29AF3D83}
// *********************************************************************//
  IUSBControllerChangedEvent = interface(IEvent)
    ['{93BADC0C-61D9-4940-A084-E6BB29AF3D83}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IUSBControllerChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {93BADC0C-61D9-4940-A084-E6BB29AF3D83}
// *********************************************************************//
  IUSBControllerChangedEventDisp = dispinterface
    ['{93BADC0C-61D9-4940-A084-E6BB29AF3D83}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IUSBDeviceStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {806DA61B-6679-422A-B629-51B06B0C6D93}
// *********************************************************************//
  IUSBDeviceStateChangedEvent = interface(IEvent)
    ['{806DA61B-6679-422A-B629-51B06B0C6D93}']
    function Get_Device: IUSBDevice; safecall;
    function Get_Attached: Integer; safecall;
    function Get_Error: IVirtualBoxErrorInfo; safecall;
    property Device: IUSBDevice read Get_Device;
    property Attached: Integer read Get_Attached;
    property Error: IVirtualBoxErrorInfo read Get_Error;
  end;

// *********************************************************************//
// DispIntf:  IUSBDeviceStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {806DA61B-6679-422A-B629-51B06B0C6D93}
// *********************************************************************//
  IUSBDeviceStateChangedEventDisp = dispinterface
    ['{806DA61B-6679-422A-B629-51B06B0C6D93}']
    property Device: IUSBDevice readonly dispid 1610809344;
    property Attached: Integer readonly dispid 1610809345;
    property Error: IVirtualBoxErrorInfo readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ISharedFolderChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B66349B5-3534-4239-B2DE-8E1535D94C0B}
// *********************************************************************//
  ISharedFolderChangedEvent = interface(IEvent)
    ['{B66349B5-3534-4239-B2DE-8E1535D94C0B}']
    function Get_Scope: Scope; safecall;
    property Scope: Scope read Get_Scope;
  end;

// *********************************************************************//
// DispIntf:  ISharedFolderChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B66349B5-3534-4239-B2DE-8E1535D94C0B}
// *********************************************************************//
  ISharedFolderChangedEventDisp = dispinterface
    ['{B66349B5-3534-4239-B2DE-8E1535D94C0B}']
    property Scope: Scope readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IRuntimeErrorEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {883DD18B-0721-4CDE-867C-1A82ABAF914C}
// *********************************************************************//
  IRuntimeErrorEvent = interface(IEvent)
    ['{883DD18B-0721-4CDE-867C-1A82ABAF914C}']
    function Get_Fatal: Integer; safecall;
    function Get_Id: WideString; safecall;
    function Get_Message: WideString; safecall;
    property Fatal: Integer read Get_Fatal;
    property Id: WideString read Get_Id;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  IRuntimeErrorEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {883DD18B-0721-4CDE-867C-1A82ABAF914C}
// *********************************************************************//
  IRuntimeErrorEventDisp = dispinterface
    ['{883DD18B-0721-4CDE-867C-1A82ABAF914C}']
    property Fatal: Integer readonly dispid 1610809344;
    property Id: WideString readonly dispid 1610809345;
    property Message: WideString readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IEventSourceChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E7932CB8-F6D4-4AB6-9CBF-558EB8959A6A}
// *********************************************************************//
  IEventSourceChangedEvent = interface(IEvent)
    ['{E7932CB8-F6D4-4AB6-9CBF-558EB8959A6A}']
    function Get_Listener: IEventListener; safecall;
    function Get_Add: Integer; safecall;
    property Listener: IEventListener read Get_Listener;
    property Add: Integer read Get_Add;
  end;

// *********************************************************************//
// DispIntf:  IEventSourceChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {E7932CB8-F6D4-4AB6-9CBF-558EB8959A6A}
// *********************************************************************//
  IEventSourceChangedEventDisp = dispinterface
    ['{E7932CB8-F6D4-4AB6-9CBF-558EB8959A6A}']
    property Listener: IEventListener readonly dispid 1610809344;
    property Add: Integer readonly dispid 1610809345;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IExtraDataChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {024F00CE-6E0B-492A-A8D0-968472A94DC7}
// *********************************************************************//
  IExtraDataChangedEvent = interface(IEvent)
    ['{024F00CE-6E0B-492A-A8D0-968472A94DC7}']
    function Get_MachineId: WideString; safecall;
    function Get_Key: WideString; safecall;
    function Get_Value: WideString; safecall;
    property MachineId: WideString read Get_MachineId;
    property Key: WideString read Get_Key;
    property Value: WideString read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  IExtraDataChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {024F00CE-6E0B-492A-A8D0-968472A94DC7}
// *********************************************************************//
  IExtraDataChangedEventDisp = dispinterface
    ['{024F00CE-6E0B-492A-A8D0-968472A94DC7}']
    property MachineId: WideString readonly dispid 1610809344;
    property Key: WideString readonly dispid 1610809345;
    property Value: WideString readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVetoEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {7C5E945F-2354-4267-883F-2F417D216519}
// *********************************************************************//
  IVetoEvent = interface(IEvent)
    ['{7C5E945F-2354-4267-883F-2F417D216519}']
    procedure AddVeto(const aReason: WideString); safecall;
    function IsVetoed: Integer; safecall;
    function GetVetos: PSafeArray; safecall;
    procedure AddApproval(const aReason: WideString); safecall;
    function IsApproved: Integer; safecall;
    function GetApprovals: PSafeArray; safecall;
  end;

// *********************************************************************//
// DispIntf:  IVetoEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {7C5E945F-2354-4267-883F-2F417D216519}
// *********************************************************************//
  IVetoEventDisp = dispinterface
    ['{7C5E945F-2354-4267-883F-2F417D216519}']
    procedure AddVeto(const aReason: WideString); dispid 1610809344;
    function IsVetoed: Integer; dispid 1610809345;
    function GetVetos: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809346;
    procedure AddApproval(const aReason: WideString); dispid 1610809347;
    function IsApproved: Integer; dispid 1610809348;
    function GetApprovals: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809349;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IExtraDataCanChangeEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {245D88BD-800A-40F8-87A6-170D02249A55}
// *********************************************************************//
  IExtraDataCanChangeEvent = interface(IVetoEvent)
    ['{245D88BD-800A-40F8-87A6-170D02249A55}']
    function Get_MachineId: WideString; safecall;
    function Get_Key: WideString; safecall;
    function Get_Value: WideString; safecall;
    property MachineId: WideString read Get_MachineId;
    property Key: WideString read Get_Key;
    property Value: WideString read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  IExtraDataCanChangeEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {245D88BD-800A-40F8-87A6-170D02249A55}
// *********************************************************************//
  IExtraDataCanChangeEventDisp = dispinterface
    ['{245D88BD-800A-40F8-87A6-170D02249A55}']
    property MachineId: WideString readonly dispid 1610874880;
    property Key: WideString readonly dispid 1610874881;
    property Value: WideString readonly dispid 1610874882;
    procedure AddVeto(const aReason: WideString); dispid 1610809344;
    function IsVetoed: Integer; dispid 1610809345;
    function GetVetos: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809346;
    procedure AddApproval(const aReason: WideString); dispid 1610809347;
    function IsApproved: Integer; dispid 1610809348;
    function GetApprovals: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809349;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ICanShowWindowEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {ADF292B0-92C9-4A77-9D35-E058B39FE0B9}
// *********************************************************************//
  ICanShowWindowEvent = interface(IVetoEvent)
    ['{ADF292B0-92C9-4A77-9D35-E058B39FE0B9}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  ICanShowWindowEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {ADF292B0-92C9-4A77-9D35-E058B39FE0B9}
// *********************************************************************//
  ICanShowWindowEventDisp = dispinterface
    ['{ADF292B0-92C9-4A77-9D35-E058B39FE0B9}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    procedure AddVeto(const aReason: WideString); dispid 1610809344;
    function IsVetoed: Integer; dispid 1610809345;
    function GetVetos: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809346;
    procedure AddApproval(const aReason: WideString); dispid 1610809347;
    function IsApproved: Integer; dispid 1610809348;
    function GetApprovals: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610809349;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IShowWindowEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B0A0904D-2F05-4D28-855F-488F96BAD2B2}
// *********************************************************************//
  IShowWindowEvent = interface(IEvent)
    ['{B0A0904D-2F05-4D28-855F-488F96BAD2B2}']
    function Get_WinId: Int64; safecall;
    procedure Set_WinId(aWinId: Int64); safecall;
    property WinId: Int64 read Get_WinId write Set_WinId;
  end;

// *********************************************************************//
// DispIntf:  IShowWindowEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {B0A0904D-2F05-4D28-855F-488F96BAD2B2}
// *********************************************************************//
  IShowWindowEventDisp = dispinterface
    ['{B0A0904D-2F05-4D28-855F-488F96BAD2B2}']
    property WinId: Int64 dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATRedirectEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {24EEF068-C380-4510-BC7C-19314A7352F1}
// *********************************************************************//
  INATRedirectEvent = interface(IMachineEvent)
    ['{24EEF068-C380-4510-BC7C-19314A7352F1}']
    function Get_Slot: LongWord; safecall;
    function Get_Remove: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Proto: NATProtocol; safecall;
    function Get_HostIP: WideString; safecall;
    function Get_HostPort: Integer; safecall;
    function Get_GuestIP: WideString; safecall;
    function Get_GuestPort: Integer; safecall;
    property Slot: LongWord read Get_Slot;
    property Remove: Integer read Get_Remove;
    property Name: WideString read Get_Name;
    property Proto: NATProtocol read Get_Proto;
    property HostIP: WideString read Get_HostIP;
    property HostPort: Integer read Get_HostPort;
    property GuestIP: WideString read Get_GuestIP;
    property GuestPort: Integer read Get_GuestPort;
  end;

// *********************************************************************//
// DispIntf:  INATRedirectEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {24EEF068-C380-4510-BC7C-19314A7352F1}
// *********************************************************************//
  INATRedirectEventDisp = dispinterface
    ['{24EEF068-C380-4510-BC7C-19314A7352F1}']
    property Slot: LongWord readonly dispid 1610874880;
    property Remove: Integer readonly dispid 1610874881;
    property Name: WideString readonly dispid 1610874882;
    property Proto: NATProtocol readonly dispid 1610874883;
    property HostIP: WideString readonly dispid 1610874884;
    property HostPort: Integer readonly dispid 1610874885;
    property GuestIP: WideString readonly dispid 1610874886;
    property GuestPort: Integer readonly dispid 1610874887;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IHostPCIDevicePlugEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A0BAD6DF-D612-47D3-89D4-DB3992533948}
// *********************************************************************//
  IHostPCIDevicePlugEvent = interface(IMachineEvent)
    ['{A0BAD6DF-D612-47D3-89D4-DB3992533948}']
    function Get_Plugged: Integer; safecall;
    function Get_Success: Integer; safecall;
    function Get_Attachment: IPCIDeviceAttachment; safecall;
    function Get_Message: WideString; safecall;
    property Plugged: Integer read Get_Plugged;
    property Success: Integer read Get_Success;
    property Attachment: IPCIDeviceAttachment read Get_Attachment;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  IHostPCIDevicePlugEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A0BAD6DF-D612-47D3-89D4-DB3992533948}
// *********************************************************************//
  IHostPCIDevicePlugEventDisp = dispinterface
    ['{A0BAD6DF-D612-47D3-89D4-DB3992533948}']
    property Plugged: Integer readonly dispid 1610874880;
    property Success: Integer readonly dispid 1610874881;
    property Attachment: IPCIDeviceAttachment readonly dispid 1610874882;
    property Message: WideString readonly dispid 1610874883;
    property MachineId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVBoxSVCAvailabilityChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {97C78FCD-D4FC-485F-8613-5AF88BFCFCDC}
// *********************************************************************//
  IVBoxSVCAvailabilityChangedEvent = interface(IEvent)
    ['{97C78FCD-D4FC-485F-8613-5AF88BFCFCDC}']
    function Get_Available: Integer; safecall;
    property Available: Integer read Get_Available;
  end;

// *********************************************************************//
// DispIntf:  IVBoxSVCAvailabilityChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {97C78FCD-D4FC-485F-8613-5AF88BFCFCDC}
// *********************************************************************//
  IVBoxSVCAvailabilityChangedEventDisp = dispinterface
    ['{97C78FCD-D4FC-485F-8613-5AF88BFCFCDC}']
    property Available: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IBandwidthGroupChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {334DF94A-7556-4CBC-8C04-043096B02D82}
// *********************************************************************//
  IBandwidthGroupChangedEvent = interface(IEvent)
    ['{334DF94A-7556-4CBC-8C04-043096B02D82}']
    function Get_BandwidthGroup: IBandwidthGroup; safecall;
    property BandwidthGroup: IBandwidthGroup read Get_BandwidthGroup;
  end;

// *********************************************************************//
// DispIntf:  IBandwidthGroupChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {334DF94A-7556-4CBC-8C04-043096B02D82}
// *********************************************************************//
  IBandwidthGroupChangedEventDisp = dispinterface
    ['{334DF94A-7556-4CBC-8C04-043096B02D82}']
    property BandwidthGroup: IBandwidthGroup readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestMonitorChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0F7B8A22-C71F-4A36-8E5F-A77D01D76090}
// *********************************************************************//
  IGuestMonitorChangedEvent = interface(IEvent)
    ['{0F7B8A22-C71F-4A36-8E5F-A77D01D76090}']
    function Get_ChangeType: GuestMonitorChangedEventType; safecall;
    function Get_ScreenId: LongWord; safecall;
    function Get_OriginX: LongWord; safecall;
    function Get_OriginY: LongWord; safecall;
    function Get_Width: LongWord; safecall;
    function Get_Height: LongWord; safecall;
    property ChangeType: GuestMonitorChangedEventType read Get_ChangeType;
    property ScreenId: LongWord read Get_ScreenId;
    property OriginX: LongWord read Get_OriginX;
    property OriginY: LongWord read Get_OriginY;
    property Width: LongWord read Get_Width;
    property Height: LongWord read Get_Height;
  end;

// *********************************************************************//
// DispIntf:  IGuestMonitorChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {0F7B8A22-C71F-4A36-8E5F-A77D01D76090}
// *********************************************************************//
  IGuestMonitorChangedEventDisp = dispinterface
    ['{0F7B8A22-C71F-4A36-8E5F-A77D01D76090}']
    property ChangeType: GuestMonitorChangedEventType readonly dispid 1610809344;
    property ScreenId: LongWord readonly dispid 1610809345;
    property OriginX: LongWord readonly dispid 1610809346;
    property OriginY: LongWord readonly dispid 1610809347;
    property Width: LongWord readonly dispid 1610809348;
    property Height: LongWord readonly dispid 1610809349;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestUserStateChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {39B4E759-1EC0-4C0F-857F-FBE2A737A256}
// *********************************************************************//
  IGuestUserStateChangedEvent = interface(IEvent)
    ['{39B4E759-1EC0-4C0F-857F-FBE2A737A256}']
    function Get_Name: WideString; safecall;
    function Get_Domain: WideString; safecall;
    function Get_State: GuestUserState; safecall;
    function Get_StateDetails: WideString; safecall;
    property Name: WideString read Get_Name;
    property Domain: WideString read Get_Domain;
    property State: GuestUserState read Get_State;
    property StateDetails: WideString read Get_StateDetails;
  end;

// *********************************************************************//
// DispIntf:  IGuestUserStateChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {39B4E759-1EC0-4C0F-857F-FBE2A737A256}
// *********************************************************************//
  IGuestUserStateChangedEventDisp = dispinterface
    ['{39B4E759-1EC0-4C0F-857F-FBE2A737A256}']
    property Name: WideString readonly dispid 1610809344;
    property Domain: WideString readonly dispid 1610809345;
    property State: GuestUserState readonly dispid 1610809346;
    property StateDetails: WideString readonly dispid 1610809347;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IStorageDeviceChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {232E9151-AE84-4B8E-B0F3-5C20C35CAAC9}
// *********************************************************************//
  IStorageDeviceChangedEvent = interface(IEvent)
    ['{232E9151-AE84-4B8E-B0F3-5C20C35CAAC9}']
    function Get_StorageDevice: IMediumAttachment; safecall;
    function Get_Removed: Integer; safecall;
    function Get_Silent: Integer; safecall;
    property StorageDevice: IMediumAttachment read Get_StorageDevice;
    property Removed: Integer read Get_Removed;
    property Silent: Integer read Get_Silent;
  end;

// *********************************************************************//
// DispIntf:  IStorageDeviceChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {232E9151-AE84-4B8E-B0F3-5C20C35CAAC9}
// *********************************************************************//
  IStorageDeviceChangedEventDisp = dispinterface
    ['{232E9151-AE84-4B8E-B0F3-5C20C35CAAC9}']
    property StorageDevice: IMediumAttachment readonly dispid 1610809344;
    property Removed: Integer readonly dispid 1610809345;
    property Silent: Integer readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {101AE042-1A29-4A19-92CF-02285773F3B5}
// *********************************************************************//
  INATNetworkChangedEvent = interface(IEvent)
    ['{101AE042-1A29-4A19-92CF-02285773F3B5}']
    function Get_NetworkName: WideString; safecall;
    property NetworkName: WideString read Get_NetworkName;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {101AE042-1A29-4A19-92CF-02285773F3B5}
// *********************************************************************//
  INATNetworkChangedEventDisp = dispinterface
    ['{101AE042-1A29-4A19-92CF-02285773F3B5}']
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkStartStopEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {269D8F6B-FA1E-4CEE-91C7-6D8496BEA3C1}
// *********************************************************************//
  INATNetworkStartStopEvent = interface(INATNetworkChangedEvent)
    ['{269D8F6B-FA1E-4CEE-91C7-6D8496BEA3C1}']
    function Get_StartEvent: Integer; safecall;
    property StartEvent: Integer read Get_StartEvent;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkStartStopEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {269D8F6B-FA1E-4CEE-91C7-6D8496BEA3C1}
// *********************************************************************//
  INATNetworkStartStopEventDisp = dispinterface
    ['{269D8F6B-FA1E-4CEE-91C7-6D8496BEA3C1}']
    property StartEvent: Integer readonly dispid 1610874880;
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkAlterEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D947ADF5-4022-DC80-5535-6FB116815604}
// *********************************************************************//
  INATNetworkAlterEvent = interface(INATNetworkChangedEvent)
    ['{D947ADF5-4022-DC80-5535-6FB116815604}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkAlterEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {D947ADF5-4022-DC80-5535-6FB116815604}
// *********************************************************************//
  INATNetworkAlterEventDisp = dispinterface
    ['{D947ADF5-4022-DC80-5535-6FB116815604}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkCreationDeletionEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {8D984A7E-B855-40B8-AB0C-44D3515B4528}
// *********************************************************************//
  INATNetworkCreationDeletionEvent = interface(INATNetworkAlterEvent)
    ['{8D984A7E-B855-40B8-AB0C-44D3515B4528}']
    function Get_CreationEvent: Integer; safecall;
    property CreationEvent: Integer read Get_CreationEvent;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkCreationDeletionEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {8D984A7E-B855-40B8-AB0C-44D3515B4528}
// *********************************************************************//
  INATNetworkCreationDeletionEventDisp = dispinterface
    ['{8D984A7E-B855-40B8-AB0C-44D3515B4528}']
    property CreationEvent: Integer readonly dispid 1610940416;
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkSettingEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9DB3A9E6-7F29-4AAE-A627-5A282C83092C}
// *********************************************************************//
  INATNetworkSettingEvent = interface(INATNetworkAlterEvent)
    ['{9DB3A9E6-7F29-4AAE-A627-5A282C83092C}']
    function Get_Enabled: Integer; safecall;
    function Get_Network: WideString; safecall;
    function Get_Gateway: WideString; safecall;
    function Get_AdvertiseDefaultIPv6RouteEnabled: Integer; safecall;
    function Get_NeedDhcpServer: Integer; safecall;
    property Enabled: Integer read Get_Enabled;
    property Network: WideString read Get_Network;
    property Gateway: WideString read Get_Gateway;
    property AdvertiseDefaultIPv6RouteEnabled: Integer read Get_AdvertiseDefaultIPv6RouteEnabled;
    property NeedDhcpServer: Integer read Get_NeedDhcpServer;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkSettingEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {9DB3A9E6-7F29-4AAE-A627-5A282C83092C}
// *********************************************************************//
  INATNetworkSettingEventDisp = dispinterface
    ['{9DB3A9E6-7F29-4AAE-A627-5A282C83092C}']
    property Enabled: Integer readonly dispid 1610940416;
    property Network: WideString readonly dispid 1610940417;
    property Gateway: WideString readonly dispid 1610940418;
    property AdvertiseDefaultIPv6RouteEnabled: Integer readonly dispid 1610940419;
    property NeedDhcpServer: Integer readonly dispid 1610940420;
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: INATNetworkPortForwardEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {2514881B-23D0-430A-A7FF-7ED7F05534BC}
// *********************************************************************//
  INATNetworkPortForwardEvent = interface(INATNetworkAlterEvent)
    ['{2514881B-23D0-430A-A7FF-7ED7F05534BC}']
    function Get_Create: Integer; safecall;
    function Get_Ipv6: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Proto: NATProtocol; safecall;
    function Get_HostIP: WideString; safecall;
    function Get_HostPort: Integer; safecall;
    function Get_GuestIP: WideString; safecall;
    function Get_GuestPort: Integer; safecall;
    property Create: Integer read Get_Create;
    property Ipv6: Integer read Get_Ipv6;
    property Name: WideString read Get_Name;
    property Proto: NATProtocol read Get_Proto;
    property HostIP: WideString read Get_HostIP;
    property HostPort: Integer read Get_HostPort;
    property GuestIP: WideString read Get_GuestIP;
    property GuestPort: Integer read Get_GuestPort;
  end;

// *********************************************************************//
// DispIntf:  INATNetworkPortForwardEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {2514881B-23D0-430A-A7FF-7ED7F05534BC}
// *********************************************************************//
  INATNetworkPortForwardEventDisp = dispinterface
    ['{2514881B-23D0-430A-A7FF-7ED7F05534BC}']
    property Create: Integer readonly dispid 1610940416;
    property Ipv6: Integer readonly dispid 1610940417;
    property Name: WideString readonly dispid 1610940418;
    property Proto: NATProtocol readonly dispid 1610940419;
    property HostIP: WideString readonly dispid 1610940420;
    property HostPort: Integer readonly dispid 1610940421;
    property GuestIP: WideString readonly dispid 1610940422;
    property GuestPort: Integer readonly dispid 1610940423;
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property NetworkName: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IHostNameResolutionConfigurationChangeEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F9B9E1CF-CB63-47A1-84FB-02C4894B89A9}
// *********************************************************************//
  IHostNameResolutionConfigurationChangeEvent = interface(IEvent)
    ['{F9B9E1CF-CB63-47A1-84FB-02C4894B89A9}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IHostNameResolutionConfigurationChangeEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F9B9E1CF-CB63-47A1-84FB-02C4894B89A9}
// *********************************************************************//
  IHostNameResolutionConfigurationChangeEventDisp = dispinterface
    ['{F9B9E1CF-CB63-47A1-84FB-02C4894B89A9}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IProgressEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DAAF9016-1F04-4191-AA2F-1FAC9646AE4C}
// *********************************************************************//
  IProgressEvent = interface(IEvent)
    ['{DAAF9016-1F04-4191-AA2F-1FAC9646AE4C}']
    function Get_ProgressId: WideString; safecall;
    property ProgressId: WideString read Get_ProgressId;
  end;

// *********************************************************************//
// DispIntf:  IProgressEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {DAAF9016-1F04-4191-AA2F-1FAC9646AE4C}
// *********************************************************************//
  IProgressEventDisp = dispinterface
    ['{DAAF9016-1F04-4191-AA2F-1FAC9646AE4C}']
    property ProgressId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IProgressPercentageChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F05D7E60-1BCF-4218-9807-04E036CC70F1}
// *********************************************************************//
  IProgressPercentageChangedEvent = interface(IProgressEvent)
    ['{F05D7E60-1BCF-4218-9807-04E036CC70F1}']
    function Get_Percent: Integer; safecall;
    property Percent: Integer read Get_Percent;
  end;

// *********************************************************************//
// DispIntf:  IProgressPercentageChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {F05D7E60-1BCF-4218-9807-04E036CC70F1}
// *********************************************************************//
  IProgressPercentageChangedEventDisp = dispinterface
    ['{F05D7E60-1BCF-4218-9807-04E036CC70F1}']
    property Percent: Integer readonly dispid 1610874880;
    property ProgressId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IProgressTaskCompletedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A5BBDB7D-8CE7-469F-A4C2-6476F581FF72}
// *********************************************************************//
  IProgressTaskCompletedEvent = interface(IProgressEvent)
    ['{A5BBDB7D-8CE7-469F-A4C2-6476F581FF72}']
    function Get_MidlDoesNotLikeEmptyInterfaces: Integer; safecall;
    property MidlDoesNotLikeEmptyInterfaces: Integer read Get_MidlDoesNotLikeEmptyInterfaces;
  end;

// *********************************************************************//
// DispIntf:  IProgressTaskCompletedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {A5BBDB7D-8CE7-469F-A4C2-6476F581FF72}
// *********************************************************************//
  IProgressTaskCompletedEventDisp = dispinterface
    ['{A5BBDB7D-8CE7-469F-A4C2-6476F581FF72}']
    property MidlDoesNotLikeEmptyInterfaces: Integer readonly dispid 1610874880;
    property ProgressId: WideString readonly dispid 1610809344;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: ICursorPositionChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6F302674-C927-11E7-B788-33C248E71FC7}
// *********************************************************************//
  ICursorPositionChangedEvent = interface(IEvent)
    ['{6F302674-C927-11E7-B788-33C248E71FC7}']
    function Get_HasData: Integer; safecall;
    function Get_X: LongWord; safecall;
    function Get_Y: LongWord; safecall;
    property HasData: Integer read Get_HasData;
    property X: LongWord read Get_X;
    property Y: LongWord read Get_Y;
  end;

// *********************************************************************//
// DispIntf:  ICursorPositionChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {6F302674-C927-11E7-B788-33C248E71FC7}
// *********************************************************************//
  ICursorPositionChangedEventDisp = dispinterface
    ['{6F302674-C927-11E7-B788-33C248E71FC7}']
    property HasData: Integer readonly dispid 1610809344;
    property X: LongWord readonly dispid 1610809345;
    property Y: LongWord readonly dispid 1610809346;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IGuestAdditionsStatusChangedEvent
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FD1A34AD-0B74-4E2B-ED0F-46222DE8A883}
// *********************************************************************//
  IGuestAdditionsStatusChangedEvent = interface(IEvent)
    ['{FD1A34AD-0B74-4E2B-ED0F-46222DE8A883}']
    function Get_Facility: AdditionsFacilityType; safecall;
    procedure Set_Facility(aFacility: AdditionsFacilityType); safecall;
    function Get_Status: AdditionsFacilityStatus; safecall;
    function Get_RunLevel: AdditionsRunLevelType; safecall;
    function Get_TimeStamp: Int64; safecall;
    property Facility: AdditionsFacilityType read Get_Facility write Set_Facility;
    property Status: AdditionsFacilityStatus read Get_Status;
    property RunLevel: AdditionsRunLevelType read Get_RunLevel;
    property TimeStamp: Int64 read Get_TimeStamp;
  end;

// *********************************************************************//
// DispIntf:  IGuestAdditionsStatusChangedEventDisp
// Flags:     (20800) Dual OleAutomation DispatchableSmallint
// GUID:      {FD1A34AD-0B74-4E2B-ED0F-46222DE8A883}
// *********************************************************************//
  IGuestAdditionsStatusChangedEventDisp = dispinterface
    ['{FD1A34AD-0B74-4E2B-ED0F-46222DE8A883}']
    property Facility: AdditionsFacilityType dispid 1610809344;
    property Status: AdditionsFacilityStatus readonly dispid 1610809346;
    property RunLevel: AdditionsRunLevelType readonly dispid 1610809347;
    property TimeStamp: Int64 readonly dispid 1610809348;
    property type_: VBoxEventType readonly dispid 1610743808;
    property Source: IEventSource readonly dispid 1610743809;
    property Waitable: Integer readonly dispid 1610743810;
    procedure SetProcessed; dispid 1610743811;
    function WaitProcessed(aTimeout: Integer): Integer; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVBoxSVCRegistration
// Flags:     (16640) OleAutomationSmallint
// GUID:      {9E106366-4521-44CC-DF95-186E4D057C83}
// *********************************************************************//
  IVBoxSVCRegistration = interface(IUnknown)
    ['{9E106366-4521-44CC-DF95-186E4D057C83}']
    function GetVirtualBox(out aResult: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IVirtualBoxSDS
// Flags:     (16640) OleAutomationSmallint
// GUID:      {152265B8-FE7D-4077-9DD6-032BC3F1C5A3}
// *********************************************************************//
  IVirtualBoxSDS = interface(IUnknown)
    ['{152265B8-FE7D-4077-9DD6-032BC3F1C5A3}']
    function RegisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer; 
                             out aExistingVirtualBox: IUnknown): HResult; stdcall;
    function DeregisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoVirtualBox_ provides a Create and CreateRemote method to          
// create instances of the default interface IVirtualBox exposed by              
// the CoClass VirtualBox_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVirtualBox_ = class
    class function Create: IVirtualBox;
    class function CreateRemote(const MachineName: string): IVirtualBox;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVirtualBox
// Help String      : 
// Default Interface: IVirtualBox
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TVirtualBox = class(TOleServer)
  private
    FIntf: IVirtualBox;
    function GetDefaultInterface: IVirtualBox;
  protected
    procedure InitServerData; override;
    function Get_Version: WideString;
    function Get_VersionNormalized: WideString;
    function Get_Revision: LongWord;
    function Get_PackageType: WideString;
    function Get_APIVersion: WideString;
    function Get_APIRevision: Int64;
    function Get_HomeFolder: WideString;
    function Get_SettingsFilePath: WideString;
    function Get_Host: IHost;
    function Get_SystemProperties: ISystemProperties;
    function Get_Machines: PSafeArray;
    function Get_MachineGroups: PSafeArray;
    function Get_HardDisks: PSafeArray;
    function Get_DVDImages: PSafeArray;
    function Get_FloppyImages: PSafeArray;
    function Get_ProgressOperations: PSafeArray;
    function Get_GuestOSTypes: PSafeArray;
    function Get_SharedFolders: PSafeArray;
    function Get_PerformanceCollector: IPerformanceCollector;
    function Get_DHCPServers: PSafeArray;
    function Get_NATNetworks: PSafeArray;
    function Get_EventSource: IEventSource;
    function Get_ExtensionPackManager: IExtPackManager;
    function Get_InternalNetworks: PSafeArray;
    function Get_GenericNetworkDrivers: PSafeArray;
    function Get_CloudProviderManager: ICloudProviderManager;
    function Get_InternalAndReservedAttribute1IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute2IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute3IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute4IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute5IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute6IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute7IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute8IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute9IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute10IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute11IVirtualBox: LongWord;
    function Get_InternalAndReservedAttribute12IVirtualBox: LongWord;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IVirtualBox);
    procedure Disconnect; override;
    function ComposeMachineFilename(const aName: WideString; const aGroup: WideString; 
                                    const aCreateFlags: WideString; const aBaseFolder: WideString): WideString;
    function CreateMachine(const aSettingsFile: WideString; const aName: WideString; 
                           aGroups: PSafeArray; const aOSTypeId: WideString; 
                           const aFlags: WideString): IMachine;
    function OpenMachine(const aSettingsFile: WideString): IMachine;
    procedure RegisterMachine(const aMachine: IMachine);
    function FindMachine(const aNameOrId: WideString): IMachine;
    function GetMachinesByGroups(aGroups: PSafeArray): PSafeArray;
    function GetMachineStates(aMachines: PSafeArray): PSafeArray;
    function CreateAppliance: IAppliance;
    function CreateUnattendedInstaller: IUnattended;
    function CreateMedium(const aFormat: WideString; const aLocation: WideString; 
                          aAccessMode: AccessMode; aADeviceTypeType: DeviceType): IMedium;
    function OpenMedium(const aLocation: WideString; aDeviceType: DeviceType; 
                        aAccessMode: AccessMode; aForceNewUuid: Integer): IMedium;
    function GetGuestOSType(const aId: WideString): IGuestOSType;
    procedure CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                 aWritable: Integer; aAutoMount: Integer; 
                                 const aAutoMountPoint: WideString);
    procedure RemoveSharedFolder(const aName: WideString);
    function GetExtraDataKeys: PSafeArray;
    function GetExtraData(const aKey: WideString): WideString;
    procedure SetExtraData(const aKey: WideString; const aValue: WideString);
    procedure SetSettingsSecret(const aPassword: WideString);
    function CreateDHCPServer(const aName: WideString): IDHCPServer;
    function FindDHCPServerByNetworkName(const aName: WideString): IDHCPServer;
    procedure RemoveDHCPServer(const aServer: IDHCPServer);
    function CreateNATNetwork(const aNetworkName: WideString): INATNetwork;
    function FindNATNetworkByName(const aNetworkName: WideString): INATNetwork;
    procedure RemoveNATNetwork(const aNetwork: INATNetwork);
    function CheckFirmwarePresent(aFirmwareType: FirmwareType; const aVersion: WideString; 
                                  out aUrl: WideString; out aFile: WideString): Integer;
    procedure InternalAndReservedMethod1IVirtualBox;
    procedure InternalAndReservedMethod2IVirtualBox;
    procedure InternalAndReservedMethod3IVirtualBox;
    procedure InternalAndReservedMethod4IVirtualBox;
    procedure InternalAndReservedMethod5IVirtualBox;
    procedure InternalAndReservedMethod6IVirtualBox;
    procedure InternalAndReservedMethod7IVirtualBox;
    procedure InternalAndReservedMethod8IVirtualBox;
    property DefaultInterface: IVirtualBox read GetDefaultInterface;
    property Version: WideString read Get_Version;
    property VersionNormalized: WideString read Get_VersionNormalized;
    property Revision: LongWord read Get_Revision;
    property PackageType: WideString read Get_PackageType;
    property APIVersion: WideString read Get_APIVersion;
    property APIRevision: Int64 read Get_APIRevision;
    property HomeFolder: WideString read Get_HomeFolder;
    property SettingsFilePath: WideString read Get_SettingsFilePath;
    property Host: IHost read Get_Host;
    property SystemProperties: ISystemProperties read Get_SystemProperties;
    property Machines: PSafeArray read Get_Machines;
    property MachineGroups: PSafeArray read Get_MachineGroups;
    property HardDisks: PSafeArray read Get_HardDisks;
    property DVDImages: PSafeArray read Get_DVDImages;
    property FloppyImages: PSafeArray read Get_FloppyImages;
    property ProgressOperations: PSafeArray read Get_ProgressOperations;
    property GuestOSTypes: PSafeArray read Get_GuestOSTypes;
    property SharedFolders: PSafeArray read Get_SharedFolders;
    property PerformanceCollector: IPerformanceCollector read Get_PerformanceCollector;
    property DHCPServers: PSafeArray read Get_DHCPServers;
    property NATNetworks: PSafeArray read Get_NATNetworks;
    property EventSource: IEventSource read Get_EventSource;
    property ExtensionPackManager: IExtPackManager read Get_ExtensionPackManager;
    property InternalNetworks: PSafeArray read Get_InternalNetworks;
    property GenericNetworkDrivers: PSafeArray read Get_GenericNetworkDrivers;
    property CloudProviderManager: ICloudProviderManager read Get_CloudProviderManager;
    property InternalAndReservedAttribute1IVirtualBox: LongWord read Get_InternalAndReservedAttribute1IVirtualBox;
    property InternalAndReservedAttribute2IVirtualBox: LongWord read Get_InternalAndReservedAttribute2IVirtualBox;
    property InternalAndReservedAttribute3IVirtualBox: LongWord read Get_InternalAndReservedAttribute3IVirtualBox;
    property InternalAndReservedAttribute4IVirtualBox: LongWord read Get_InternalAndReservedAttribute4IVirtualBox;
    property InternalAndReservedAttribute5IVirtualBox: LongWord read Get_InternalAndReservedAttribute5IVirtualBox;
    property InternalAndReservedAttribute6IVirtualBox: LongWord read Get_InternalAndReservedAttribute6IVirtualBox;
    property InternalAndReservedAttribute7IVirtualBox: LongWord read Get_InternalAndReservedAttribute7IVirtualBox;
    property InternalAndReservedAttribute8IVirtualBox: LongWord read Get_InternalAndReservedAttribute8IVirtualBox;
    property InternalAndReservedAttribute9IVirtualBox: LongWord read Get_InternalAndReservedAttribute9IVirtualBox;
    property InternalAndReservedAttribute10IVirtualBox: LongWord read Get_InternalAndReservedAttribute10IVirtualBox;
    property InternalAndReservedAttribute11IVirtualBox: LongWord read Get_InternalAndReservedAttribute11IVirtualBox;
    property InternalAndReservedAttribute12IVirtualBox: LongWord read Get_InternalAndReservedAttribute12IVirtualBox;
  published
  end;

// *********************************************************************//
// The Class CoVirtualBoxClient provides a Create and CreateRemote method to          
// create instances of the default interface IVirtualBoxClient exposed by              
// the CoClass VirtualBoxClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVirtualBoxClient = class
    class function Create: IVirtualBoxClient;
    class function CreateRemote(const MachineName: string): IVirtualBoxClient;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVirtualBoxClient
// Help String      : 
// Default Interface: IVirtualBoxClient
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TVirtualBoxClient = class(TOleServer)
  private
    FIntf: IVirtualBoxClient;
    function GetDefaultInterface: IVirtualBoxClient;
  protected
    procedure InitServerData; override;
    function Get_VirtualBox: IVirtualBox;
    function Get_Session: ISession;
    function Get_EventSource: IEventSource;
    function Get_InternalAndReservedAttribute1IVirtualBoxClient: LongWord;
    function Get_InternalAndReservedAttribute2IVirtualBoxClient: LongWord;
    function Get_InternalAndReservedAttribute3IVirtualBoxClient: LongWord;
    function Get_InternalAndReservedAttribute4IVirtualBoxClient: LongWord;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IVirtualBoxClient);
    procedure Disconnect; override;
    procedure CheckMachineError(const aMachine: IMachine);
    procedure InternalAndReservedMethod1IVirtualBoxClient;
    procedure InternalAndReservedMethod2IVirtualBoxClient;
    procedure InternalAndReservedMethod3IVirtualBoxClient;
    procedure InternalAndReservedMethod4IVirtualBoxClient;
    property DefaultInterface: IVirtualBoxClient read GetDefaultInterface;
    property VirtualBox: IVirtualBox read Get_VirtualBox;
    property Session: ISession read Get_Session;
    property EventSource: IEventSource read Get_EventSource;
    property InternalAndReservedAttribute1IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute1IVirtualBoxClient;
    property InternalAndReservedAttribute2IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute2IVirtualBoxClient;
    property InternalAndReservedAttribute3IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute3IVirtualBoxClient;
    property InternalAndReservedAttribute4IVirtualBoxClient: LongWord read Get_InternalAndReservedAttribute4IVirtualBoxClient;
  published
  end;

// *********************************************************************//
// The Class CoSession provides a Create and CreateRemote method to          
// create instances of the default interface ISession exposed by              
// the CoClass Session. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSession = class
    class function Create: ISession;
    class function CreateRemote(const MachineName: string): ISession;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSession
// Help String      : 
// Default Interface: ISession
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSession = class(TOleServer)
  private
    FIntf: ISession;
    function GetDefaultInterface: ISession;
  protected
    procedure InitServerData; override;
    function Get_State: SessionState;
    function Get_type_: SessionType;
    function Get_Name: WideString;
    procedure Set_Name(const aName: WideString);
    function Get_Machine: IMachine;
    function Get_Console: IConsole;
    function Get_InternalAndReservedAttribute1ISession: LongWord;
    function Get_InternalAndReservedAttribute2ISession: LongWord;
    function Get_InternalAndReservedAttribute3ISession: LongWord;
    function Get_InternalAndReservedAttribute4ISession: LongWord;
    function Get_InternalAndReservedAttribute5ISession: LongWord;
    function Get_InternalAndReservedAttribute6ISession: LongWord;
    function Get_InternalAndReservedAttribute7ISession: LongWord;
    function Get_InternalAndReservedAttribute8ISession: LongWord;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISession);
    procedure Disconnect; override;
    procedure UnlockMachine;
    procedure InternalAndReservedMethod1ISession;
    procedure InternalAndReservedMethod2ISession;
    procedure InternalAndReservedMethod3ISession;
    procedure InternalAndReservedMethod4ISession;
    property DefaultInterface: ISession read GetDefaultInterface;
    property State: SessionState read Get_State;
    property type_: SessionType read Get_type_;
    property Machine: IMachine read Get_Machine;
    property Console: IConsole read Get_Console;
    property InternalAndReservedAttribute1ISession: LongWord read Get_InternalAndReservedAttribute1ISession;
    property InternalAndReservedAttribute2ISession: LongWord read Get_InternalAndReservedAttribute2ISession;
    property InternalAndReservedAttribute3ISession: LongWord read Get_InternalAndReservedAttribute3ISession;
    property InternalAndReservedAttribute4ISession: LongWord read Get_InternalAndReservedAttribute4ISession;
    property InternalAndReservedAttribute5ISession: LongWord read Get_InternalAndReservedAttribute5ISession;
    property InternalAndReservedAttribute6ISession: LongWord read Get_InternalAndReservedAttribute6ISession;
    property InternalAndReservedAttribute7ISession: LongWord read Get_InternalAndReservedAttribute7ISession;
    property InternalAndReservedAttribute8ISession: LongWord read Get_InternalAndReservedAttribute8ISession;
    property Name: WideString read Get_Name write Set_Name;
  published
  end;

// *********************************************************************//
// The Class CoVirtualBoxSDS provides a Create and CreateRemote method to          
// create instances of the default interface IVirtualBoxSDS exposed by              
// the CoClass VirtualBoxSDS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVirtualBoxSDS = class
    class function Create: IVirtualBoxSDS;
    class function CreateRemote(const MachineName: string): IVirtualBoxSDS;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVirtualBoxSDS
// Help String      : 
// Default Interface: IVirtualBoxSDS
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TVirtualBoxSDS = class(TOleServer)
  private
    FIntf: IVirtualBoxSDS;
    function GetDefaultInterface: IVirtualBoxSDS;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IVirtualBoxSDS);
    procedure Disconnect; override;
    function RegisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer; 
                             out aExistingVirtualBox: IUnknown): HResult;
    function DeregisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer): HResult;
    property DefaultInterface: IVirtualBoxSDS read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoVirtualBox_.Create: IVirtualBox;
begin
  Result := CreateComObject(CLASS_VirtualBox_) as IVirtualBox;
end;

class function CoVirtualBox_.CreateRemote(const MachineName: string): IVirtualBox;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VirtualBox_) as IVirtualBox;
end;

procedure TVirtualBox.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B1A7A4F2-47B9-4A1E-82B2-07CCD5323C3F}';
    IntfIID:   '{D0A0163F-E254-4E5B-A1F2-011CF991C38D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVirtualBox.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IVirtualBox;
  end;
end;

procedure TVirtualBox.ConnectTo(svrIntf: IVirtualBox);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVirtualBox.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVirtualBox.GetDefaultInterface: IVirtualBox;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVirtualBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TVirtualBox.Destroy;
begin
  inherited Destroy;
end;

function TVirtualBox.Get_Version: WideString;
begin
  Result := DefaultInterface.Version;
end;

function TVirtualBox.Get_VersionNormalized: WideString;
begin
  Result := DefaultInterface.VersionNormalized;
end;

function TVirtualBox.Get_Revision: LongWord;
begin
  Result := DefaultInterface.Revision;
end;

function TVirtualBox.Get_PackageType: WideString;
begin
  Result := DefaultInterface.PackageType;
end;

function TVirtualBox.Get_APIVersion: WideString;
begin
  Result := DefaultInterface.APIVersion;
end;

function TVirtualBox.Get_APIRevision: Int64;
begin
  Result := DefaultInterface.APIRevision;
end;

function TVirtualBox.Get_HomeFolder: WideString;
begin
  Result := DefaultInterface.HomeFolder;
end;

function TVirtualBox.Get_SettingsFilePath: WideString;
begin
  Result := DefaultInterface.SettingsFilePath;
end;

function TVirtualBox.Get_Host: IHost;
begin
  Result := DefaultInterface.Host;
end;

function TVirtualBox.Get_SystemProperties: ISystemProperties;
begin
  Result := DefaultInterface.SystemProperties;
end;

function TVirtualBox.Get_Machines: PSafeArray;
begin
  Result := DefaultInterface.Machines;
end;

function TVirtualBox.Get_MachineGroups: PSafeArray;
begin
  Result := DefaultInterface.MachineGroups;
end;

function TVirtualBox.Get_HardDisks: PSafeArray;
begin
  Result := DefaultInterface.HardDisks;
end;

function TVirtualBox.Get_DVDImages: PSafeArray;
begin
  Result := DefaultInterface.DVDImages;
end;

function TVirtualBox.Get_FloppyImages: PSafeArray;
begin
  Result := DefaultInterface.FloppyImages;
end;

function TVirtualBox.Get_ProgressOperations: PSafeArray;
begin
  Result := DefaultInterface.ProgressOperations;
end;

function TVirtualBox.Get_GuestOSTypes: PSafeArray;
begin
  Result := DefaultInterface.GuestOSTypes;
end;

function TVirtualBox.Get_SharedFolders: PSafeArray;
begin
  Result := DefaultInterface.SharedFolders;
end;

function TVirtualBox.Get_PerformanceCollector: IPerformanceCollector;
begin
  Result := DefaultInterface.PerformanceCollector;
end;

function TVirtualBox.Get_DHCPServers: PSafeArray;
begin
  Result := DefaultInterface.DHCPServers;
end;

function TVirtualBox.Get_NATNetworks: PSafeArray;
begin
  Result := DefaultInterface.NATNetworks;
end;

function TVirtualBox.Get_EventSource: IEventSource;
begin
  Result := DefaultInterface.EventSource;
end;

function TVirtualBox.Get_ExtensionPackManager: IExtPackManager;
begin
  Result := DefaultInterface.ExtensionPackManager;
end;

function TVirtualBox.Get_InternalNetworks: PSafeArray;
begin
  Result := DefaultInterface.InternalNetworks;
end;

function TVirtualBox.Get_GenericNetworkDrivers: PSafeArray;
begin
  Result := DefaultInterface.GenericNetworkDrivers;
end;

function TVirtualBox.Get_CloudProviderManager: ICloudProviderManager;
begin
  Result := DefaultInterface.CloudProviderManager;
end;

function TVirtualBox.Get_InternalAndReservedAttribute1IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute1IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute2IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute2IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute3IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute3IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute4IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute4IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute5IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute5IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute6IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute6IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute7IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute7IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute8IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute8IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute9IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute9IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute10IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute10IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute11IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute11IVirtualBox;
end;

function TVirtualBox.Get_InternalAndReservedAttribute12IVirtualBox: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute12IVirtualBox;
end;

function TVirtualBox.ComposeMachineFilename(const aName: WideString; const aGroup: WideString; 
                                            const aCreateFlags: WideString; 
                                            const aBaseFolder: WideString): WideString;
begin
  Result := DefaultInterface.ComposeMachineFilename(aName, aGroup, aCreateFlags, aBaseFolder);
end;

function TVirtualBox.CreateMachine(const aSettingsFile: WideString; const aName: WideString; 
                                   aGroups: PSafeArray; const aOSTypeId: WideString; 
                                   const aFlags: WideString): IMachine;
begin
  Result := DefaultInterface.CreateMachine(aSettingsFile, aName, aGroups, aOSTypeId, aFlags);
end;

function TVirtualBox.OpenMachine(const aSettingsFile: WideString): IMachine;
begin
  Result := DefaultInterface.OpenMachine(aSettingsFile);
end;

procedure TVirtualBox.RegisterMachine(const aMachine: IMachine);
begin
  DefaultInterface.RegisterMachine(aMachine);
end;

function TVirtualBox.FindMachine(const aNameOrId: WideString): IMachine;
begin
  Result := DefaultInterface.FindMachine(aNameOrId);
end;

function TVirtualBox.GetMachinesByGroups(aGroups: PSafeArray): PSafeArray;
begin
  Result := DefaultInterface.GetMachinesByGroups(aGroups);
end;

function TVirtualBox.GetMachineStates(aMachines: PSafeArray): PSafeArray;
begin
  Result := DefaultInterface.GetMachineStates(aMachines);
end;

function TVirtualBox.CreateAppliance: IAppliance;
begin
  Result := DefaultInterface.CreateAppliance;
end;

function TVirtualBox.CreateUnattendedInstaller: IUnattended;
begin
  Result := DefaultInterface.CreateUnattendedInstaller;
end;

function TVirtualBox.CreateMedium(const aFormat: WideString; const aLocation: WideString; 
                                  aAccessMode: AccessMode; aADeviceTypeType: DeviceType): IMedium;
begin
  Result := DefaultInterface.CreateMedium(aFormat, aLocation, aAccessMode, aADeviceTypeType);
end;

function TVirtualBox.OpenMedium(const aLocation: WideString; aDeviceType: DeviceType; 
                                aAccessMode: AccessMode; aForceNewUuid: Integer): IMedium;
begin
  Result := DefaultInterface.OpenMedium(aLocation, aDeviceType, aAccessMode, aForceNewUuid);
end;

function TVirtualBox.GetGuestOSType(const aId: WideString): IGuestOSType;
begin
  Result := DefaultInterface.GetGuestOSType(aId);
end;

procedure TVirtualBox.CreateSharedFolder(const aName: WideString; const aHostPath: WideString; 
                                         aWritable: Integer; aAutoMount: Integer; 
                                         const aAutoMountPoint: WideString);
begin
  DefaultInterface.CreateSharedFolder(aName, aHostPath, aWritable, aAutoMount, aAutoMountPoint);
end;

procedure TVirtualBox.RemoveSharedFolder(const aName: WideString);
begin
  DefaultInterface.RemoveSharedFolder(aName);
end;

function TVirtualBox.GetExtraDataKeys: PSafeArray;
begin
  Result := DefaultInterface.GetExtraDataKeys;
end;

function TVirtualBox.GetExtraData(const aKey: WideString): WideString;
begin
  Result := DefaultInterface.GetExtraData(aKey);
end;

procedure TVirtualBox.SetExtraData(const aKey: WideString; const aValue: WideString);
begin
  DefaultInterface.SetExtraData(aKey, aValue);
end;

procedure TVirtualBox.SetSettingsSecret(const aPassword: WideString);
begin
  DefaultInterface.SetSettingsSecret(aPassword);
end;

function TVirtualBox.CreateDHCPServer(const aName: WideString): IDHCPServer;
begin
  Result := DefaultInterface.CreateDHCPServer(aName);
end;

function TVirtualBox.FindDHCPServerByNetworkName(const aName: WideString): IDHCPServer;
begin
  Result := DefaultInterface.FindDHCPServerByNetworkName(aName);
end;

procedure TVirtualBox.RemoveDHCPServer(const aServer: IDHCPServer);
begin
  DefaultInterface.RemoveDHCPServer(aServer);
end;

function TVirtualBox.CreateNATNetwork(const aNetworkName: WideString): INATNetwork;
begin
  Result := DefaultInterface.CreateNATNetwork(aNetworkName);
end;

function TVirtualBox.FindNATNetworkByName(const aNetworkName: WideString): INATNetwork;
begin
  Result := DefaultInterface.FindNATNetworkByName(aNetworkName);
end;

procedure TVirtualBox.RemoveNATNetwork(const aNetwork: INATNetwork);
begin
  DefaultInterface.RemoveNATNetwork(aNetwork);
end;

function TVirtualBox.CheckFirmwarePresent(aFirmwareType: FirmwareType; const aVersion: WideString; 
                                          out aUrl: WideString; out aFile: WideString): Integer;
begin
  Result := DefaultInterface.CheckFirmwarePresent(aFirmwareType, aVersion, aUrl, aFile);
end;

procedure TVirtualBox.InternalAndReservedMethod1IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod1IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod2IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod2IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod3IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod3IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod4IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod4IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod5IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod5IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod6IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod6IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod7IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod7IVirtualBox;
end;

procedure TVirtualBox.InternalAndReservedMethod8IVirtualBox;
begin
  DefaultInterface.InternalAndReservedMethod8IVirtualBox;
end;

class function CoVirtualBoxClient.Create: IVirtualBoxClient;
begin
  Result := CreateComObject(CLASS_VirtualBoxClient) as IVirtualBoxClient;
end;

class function CoVirtualBoxClient.CreateRemote(const MachineName: string): IVirtualBoxClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VirtualBoxClient) as IVirtualBoxClient;
end;

procedure TVirtualBoxClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DD3FC71D-26C0-4FE1-BF6F-67F633265BBA}';
    IntfIID:   '{D2937A8E-CB8D-4382-90BA-B7DA78A74573}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVirtualBoxClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IVirtualBoxClient;
  end;
end;

procedure TVirtualBoxClient.ConnectTo(svrIntf: IVirtualBoxClient);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVirtualBoxClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVirtualBoxClient.GetDefaultInterface: IVirtualBoxClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVirtualBoxClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TVirtualBoxClient.Destroy;
begin
  inherited Destroy;
end;

function TVirtualBoxClient.Get_VirtualBox: IVirtualBox;
begin
  Result := DefaultInterface.VirtualBox;
end;

function TVirtualBoxClient.Get_Session: ISession;
begin
  Result := DefaultInterface.Session;
end;

function TVirtualBoxClient.Get_EventSource: IEventSource;
begin
  Result := DefaultInterface.EventSource;
end;

function TVirtualBoxClient.Get_InternalAndReservedAttribute1IVirtualBoxClient: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute1IVirtualBoxClient;
end;

function TVirtualBoxClient.Get_InternalAndReservedAttribute2IVirtualBoxClient: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute2IVirtualBoxClient;
end;

function TVirtualBoxClient.Get_InternalAndReservedAttribute3IVirtualBoxClient: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute3IVirtualBoxClient;
end;

function TVirtualBoxClient.Get_InternalAndReservedAttribute4IVirtualBoxClient: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute4IVirtualBoxClient;
end;

procedure TVirtualBoxClient.CheckMachineError(const aMachine: IMachine);
begin
  DefaultInterface.CheckMachineError(aMachine);
end;

procedure TVirtualBoxClient.InternalAndReservedMethod1IVirtualBoxClient;
begin
  DefaultInterface.InternalAndReservedMethod1IVirtualBoxClient;
end;

procedure TVirtualBoxClient.InternalAndReservedMethod2IVirtualBoxClient;
begin
  DefaultInterface.InternalAndReservedMethod2IVirtualBoxClient;
end;

procedure TVirtualBoxClient.InternalAndReservedMethod3IVirtualBoxClient;
begin
  DefaultInterface.InternalAndReservedMethod3IVirtualBoxClient;
end;

procedure TVirtualBoxClient.InternalAndReservedMethod4IVirtualBoxClient;
begin
  DefaultInterface.InternalAndReservedMethod4IVirtualBoxClient;
end;

class function CoSession.Create: ISession;
begin
  Result := CreateComObject(CLASS_Session) as ISession;
end;

class function CoSession.CreateRemote(const MachineName: string): ISession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Session) as ISession;
end;

procedure TSession.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3C02F46D-C9D2-4F11-A384-53F0CF917214}';
    IntfIID:   '{C0447716-FF5A-4795-B57A-ECD5FFFA18A4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSession.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISession;
  end;
end;

procedure TSession.ConnectTo(svrIntf: ISession);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSession.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSession.GetDefaultInterface: ISession;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSession.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSession.Destroy;
begin
  inherited Destroy;
end;

function TSession.Get_State: SessionState;
begin
  Result := DefaultInterface.State;
end;

function TSession.Get_type_: SessionType;
begin
  Result := DefaultInterface.type_;
end;

function TSession.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TSession.Set_Name(const aName: WideString);
begin
  DefaultInterface.Name := aName;
end;

function TSession.Get_Machine: IMachine;
begin
  Result := DefaultInterface.Machine;
end;

function TSession.Get_Console: IConsole;
begin
  Result := DefaultInterface.Console;
end;

function TSession.Get_InternalAndReservedAttribute1ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute1ISession;
end;

function TSession.Get_InternalAndReservedAttribute2ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute2ISession;
end;

function TSession.Get_InternalAndReservedAttribute3ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute3ISession;
end;

function TSession.Get_InternalAndReservedAttribute4ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute4ISession;
end;

function TSession.Get_InternalAndReservedAttribute5ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute5ISession;
end;

function TSession.Get_InternalAndReservedAttribute6ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute6ISession;
end;

function TSession.Get_InternalAndReservedAttribute7ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute7ISession;
end;

function TSession.Get_InternalAndReservedAttribute8ISession: LongWord;
begin
  Result := DefaultInterface.InternalAndReservedAttribute8ISession;
end;

procedure TSession.UnlockMachine;
begin
  DefaultInterface.UnlockMachine;
end;

procedure TSession.InternalAndReservedMethod1ISession;
begin
  DefaultInterface.InternalAndReservedMethod1ISession;
end;

procedure TSession.InternalAndReservedMethod2ISession;
begin
  DefaultInterface.InternalAndReservedMethod2ISession;
end;

procedure TSession.InternalAndReservedMethod3ISession;
begin
  DefaultInterface.InternalAndReservedMethod3ISession;
end;

procedure TSession.InternalAndReservedMethod4ISession;
begin
  DefaultInterface.InternalAndReservedMethod4ISession;
end;

class function CoVirtualBoxSDS.Create: IVirtualBoxSDS;
begin
  Result := CreateComObject(CLASS_VirtualBoxSDS) as IVirtualBoxSDS;
end;

class function CoVirtualBoxSDS.CreateRemote(const MachineName: string): IVirtualBoxSDS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VirtualBoxSDS) as IVirtualBoxSDS;
end;

procedure TVirtualBoxSDS.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{74AB5FFE-8726-4435-AA7E-876D705BCBA5}';
    IntfIID:   '{152265B8-FE7D-4077-9DD6-032BC3F1C5A3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVirtualBoxSDS.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IVirtualBoxSDS;
  end;
end;

procedure TVirtualBoxSDS.ConnectTo(svrIntf: IVirtualBoxSDS);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVirtualBoxSDS.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVirtualBoxSDS.GetDefaultInterface: IVirtualBoxSDS;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVirtualBoxSDS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TVirtualBoxSDS.Destroy;
begin
  inherited Destroy;
end;

function TVirtualBoxSDS.RegisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer; 
                                        out aExistingVirtualBox: IUnknown): HResult;
begin
  Result := DefaultInterface.RegisterVBoxSVC(aVboxSVC, aPID, aExistingVirtualBox);
end;

function TVirtualBoxSDS.DeregisterVBoxSVC(const aVboxSVC: IVBoxSVCRegistration; aPID: Integer): HResult;
begin
  Result := DefaultInterface.DeregisterVBoxSVC(aVboxSVC, aPID);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TVirtualBox, TVirtualBoxClient, TSession, TVirtualBoxSDS]);
end;

end.
