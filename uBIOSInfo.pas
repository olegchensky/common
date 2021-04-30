unit uBIOSInfo;

interface

uses
  Classes;

procedure CollectBIOSData(var SL: TStringList);

implementation

uses
  System.SysUtils, uSMBIOS, TypInfo, uCommonTools;

function ByteToBinStr(aValue: Byte) : string;
 const
   Bits: array[1..8] of Byte = (128, 64, 32, 16, 8, 4, 2, 1);
 var
   I: Integer;
begin
  Result := '00000000';
  if (aValue <> 0) then for I := 1 to 8 do if (aValue and Bits[i]) <> 0 then Result[I] := '1';
end;

function WordToBinStr(aValue: Word): String;
 const
    Bits: array[1..16] of Word = (32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1);
 var
    I: Integer;
begin
  Result := '0000000000000000';
  if (aValue <> 0) then for I := 1 to 16 do if (aValue and Bits[I]) <> 0 then Result[I] := '1';
end;

function SetToString(Info: PTypeInfo; const Value): String;
 var
   LTypeInfo: PTypeInfo;
   LIntegerSet: TIntegerSet;
   I: Integer;

 function _GetOrdValue: Integer;
 begin
   Result := 0;
   case GetTypeData(Info)^.OrdType of
     otSByte, otUByte: Result := Byte(Value);
     otSWord, otUWord: Result := Word(Value);
     otSLong, otULong: Result := Integer(Value);
   end;
 end;

begin
  Result := '';
  Integer(LIntegerSet) := _GetOrdValue;
  LTypeInfo := GetTypeData(Info)^.CompType{$IFNDEF FPC}^{$ENDIF};
  for I := 0 to SizeOf(Integer) * 8 - 1 do if I in LIntegerSet then begin
    if Result <> '' then Result := Result + ',';
    Result := Result + GetEnumName(LTypeInfo, I);
  end;
end;

procedure CollectBIOSData(var SL: TStringList);
 var
   SMBios: TSMBios;
   LSRAMTypes: TCacheSRAMTypes;
   I, J: Integer;

  procedure _ProcessCacheInformation(CI: TCacheInformation; ChacheId: Integer);
  begin
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Socket Designation'] := String(SMBios.ProcessorInfo[I].L1Chache.SocketDesignationStr);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Cache Configuration'] := Format('%.4x', [SMBios.ProcessorInfo[I].L1Chache.RAWCacheInformation^.CacheConfiguration]);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Maximum Cache Size'] := Format('%d Kb', [SMBios.ProcessorInfo[I].L1Chache.GetMaximumCacheSize]);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Installed Cache Size'] := Format('%d Kb', [SMBios.ProcessorInfo[I].L1Chache.GetInstalledCacheSize]);
    LSRAMTypes := SMBios.ProcessorInfo[I].L1Chache.GetSupportedSRAMType;
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Supported SRAM Type'] := Format('[%s]', [SetToString(TypeInfo(TCacheSRAMTypes), LSRAMTypes)]);
    LSRAMTypes := SMBios.ProcessorInfo[I].L1Chache.GetCurrentSRAMType;
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Current SRAM Type'] := Format('[%s]', [SetToString(TypeInfo(TCacheSRAMTypes), LSRAMTypes)]);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Error Correction Type'] := Format('%s', [ErrorCorrectionTypeStr[SMBios.ProcessorInfo[I].L1Chache.GetErrorCorrectionType]]);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' System Cache Type'] := Format('%s', [SystemCacheTypeStr[SMBios.ProcessorInfo[I].L1Chache.GetSystemCacheType]]);
    SL.Values['Processor Info ' + I.ToString + ' L' + ChacheId.ToString + ' Associativity'] := Format('%s', [SMBios.ProcessorInfo[I].L1Chache.AssociativityStr]);
  end;

begin
  if not Assigned(SL) then Exit;

  SL.Clear;
  SMBios := TSMBios.Create;
  try

    SL.Values['BIOS Vendor'] := String(SMBios.BIOSInfo.VendorStr);
    SL.Values['BIOS Version'] := String(SMBios.BIOSInfo.VersionStr);
    SL.Values['BIOS Start Segment'] := IntToHex(SMBios.BIOSInfo.RAWBiosInformation.StartingSegment, 4);
    SL.Values['BIOS Release Date'] := String(SMBios.BIOSInfo.ReleaseDateStr);
    SL.Values['BIOS Bios Rom Size'] := Format('%dk', [64 * (SMBios.BIOSInfo.RAWBiosInformation.BiosRomSize + 1)]);
    SL.Values['BIOS System Major Release'] := Format('%d', [SMBios.BIOSInfo.RAWBiosInformation.SystemBIOSMajorRelease]);
    SL.Values['BIOS System Minor Release'] := Format('%d', [SMBios.BIOSInfo.RAWBiosInformation.SystemBIOSMinorRelease]);
    SL.Values['BIOS Embedded Controller Firmware Major Release'] := Format('%d', [SMBios.BIOSInfo.RAWBiosInformation.EmbeddedControllerFirmwareMajorRelease]);
    SL.Values['BIOS Embedded Controller Firmware Minor Release'] := Format('%d', [SMBios.BIOSInfo.RAWBiosInformation.EmbeddedControllerFirmwareMinorRelease]);

    if SMBios.HasOEMStringsInfo then for I := Low(SMBios.OEMStringsInfo) to High(SMBios.OEMStringsInfo) do for J := 1 to SMBios.OEMStringsInfo[I].RAWOEMStringsInformation.Count do SL.Values['OEM String ' + I.ToString] := String(SMBios.OEMStringsInfo[I].GetOEMString(J));

    SL.Values['System Manufacter'] := String(SMBios.SysInfo.ManufacturerStr);
    SL.Values['System Product Name'] := String(SMBios.SysInfo.ProductNameStr);
    SL.Values['System Version'] := String(SMBios.SysInfo.VersionStr);
    SL.Values['System Serial Number'] := String(SMBios.SysInfo.SerialNumberStr);
    if SMBios.SmbiosVersion >= '2.4' then begin
      SL.Values['System SKU Number'] := String(SMBios.SysInfo.SKUNumberStr);
      SL.Values['System Family'] :=  String(SMBios.SysInfo.FamilyStr);
    end;

    if SMBios.HasBaseBoardInfo then for I := Low(SMBios.BaseBoardInfo) to High(SMBios.BaseBoardInfo) do begin
      SL.Values['Base Board ' + I.ToString + ' Manufacter'] := String(SMBios.BaseBoardInfo[I].ManufacturerStr);
      SL.Values['Base Board ' + I.ToString + ' Product'] := String(SMBios.BaseBoardInfo[I].ProductStr);
      SL.Values['Base Board ' + I.ToString + ' Version'] := String(SMBios.BaseBoardInfo[I].VersionStr);
      SL.Values['Base Board ' + I.ToString + ' Serial Number'] := String(SMBios.BaseBoardInfo[I].SerialNumberStr);
      SL.Values['Base Board ' + I.ToString + ' Asset Tag'] := String(SMBios.BaseBoardInfo[I].AssetTagStr);
      SL.Values['Base Board ' + I.ToString + ' Feature Flags'] := ByteToBinStr(SMBios.BaseBoardInfo[I].RAWBaseBoardInformation.FeatureFlags);
      SL.Values['Base Board ' + I.ToString + ' Location in Chassis'] := String(SMBios.BaseBoardInfo[I].LocationinChassisStr);
      SL.Values['Base Board ' + I.ToString + ' Chassis Handle'] := Format('%0.4x', [SMBios.BaseBoardInfo[I].RAWBaseBoardInformation.ChassisHandle]);
      SL.Values['Base Board ' + I.ToString + ' Board Type'] := Format('%0.2x %s', [SMBios.BaseBoardInfo[I].RAWBaseBoardInformation.BoardType,  SMBios.BaseBoardInfo[I].BoardTypeStr]);
      SL.Values['Base Board ' + I.ToString + ' Number of Contained Object Handles'] := SMBios.BaseBoardInfo[I].RAWBaseBoardInformation.NumberofContainedObjectHandles.ToString;
    end;

    if SMBios.HasEnclosureInfo then for I := Low(SMBios.EnclosureInfo) to High(SMBios.EnclosureInfo) do begin
      SL.Values['Enclosure ' + I.ToString + ' Manufacter'] := String(SMBios.EnclosureInfo[I].ManufacturerStr);
      SL.Values['Enclosure ' + I.ToString + ' Version'] := String(SMBios.EnclosureInfo[I].VersionStr);
      SL.Values['Enclosure ' + I.ToString + ' Serial Number'] := String(SMBios.EnclosureInfo[I].SerialNumberStr);
      SL.Values['Enclosure ' + I.ToString + ' Asset Tag Number'] := String(SMBios.EnclosureInfo[I].AssetTagNumberStr);
      SL.Values['Enclosure ' + I.ToString + ' Type'] := String(SMBios.EnclosureInfo[I].TypeStr);
      SL.Values['Enclosure ' + I.ToString + ' Power Supply State'] := String(SMBios.EnclosureInfo[I].PowerSupplyStateStr);
      SL.Values['Enclosure ' + I.ToString + ' BootUp State'] := String(SMBios.EnclosureInfo[I].BootUpStateStr);
    end;

    if SMBios.HasProcessorInfo then for I := Low(SMBios.ProcessorInfo) to High(SMBios.ProcessorInfo) do begin
      SL.Values['Processor Info ' + I.ToString + ' Manufacter'] := String(SMBios.ProcessorInfo[I].ProcessorManufacturerStr);
      SL.Values['Processor Info ' + I.ToString + ' Socket Designation'] := String(SMBios.ProcessorInfo[I].SocketDesignationStr);
      SL.Values['Processor Info ' + I.ToString + ' Type'] := String(SMBios.ProcessorInfo[I].ProcessorTypeStr);
      SL.Values['Processor Info ' + I.ToString + ' Familiy'] := String(SMBios.ProcessorInfo[I].ProcessorFamilyStr);
      SL.Values['Processor Info ' + I.ToString + ' Version'] := String(SMBios.ProcessorInfo[I].ProcessorVersionStr);
      SL.Values['Processor Info ' + I.ToString + ' Processor ID'] := Format('%x', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.ProcessorID]);
      SL.Values['Processor Info ' + I.ToString + ' Voltage'] := Format('%n', [SMBios.ProcessorInfo[I].GetProcessorVoltaje]);
      SL.Values['Processor Info ' + I.ToString + ' External Clock'] := Format('%d  Mhz', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.ExternalClock]);
      SL.Values['Processor Info ' + I.ToString + ' Maximum processor speed'] := Format('%d  Mhz', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.MaxSpeed]);
      SL.Values['Processor Info ' + I.ToString + ' Current processor speed'] := Format('%d  Mhz', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.CurrentSpeed]);
      SL.Values['Processor Info ' + I.ToString + ' Processor Upgrade'] := String(SMBios.ProcessorInfo[I].ProcessorUpgradeStr);
      SL.Values['Processor Info ' + I.ToString + ' External Clock'] := Format('%d  Mhz', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.ExternalClock]);
      if SMBios.SmbiosVersion >= '2.3' then begin
        SL.Values['Processor Info ' + I.ToString + ' Serial Number'] := String(SMBios.ProcessorInfo[I].SerialNumberStr);
        SL.Values['Processor Info ' + I.ToString + ' Asset Tag'] := String(SMBios.ProcessorInfo[I].AssetTagStr);
        SL.Values['Processor Info ' + I.ToString + ' Part Number'] := String(SMBios.ProcessorInfo[I].PartNumberStr);
        if SMBios.SmbiosVersion >= '2.5' then begin
          SL.Values['Processor Info ' + I.ToString + ' Core Count'] := Format('%d', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.CoreCount]);
          SL.Values['Processor Info ' + I.ToString + ' Cores Enabled'] := Format('%d', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.CoreEnabled]);
          SL.Values['Processor Info ' + I.ToString + ' Threads Count'] := Format('%d', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.ThreadCount]);
          SL.Values['Processor Info ' + I.ToString + ' Processor Characteristics'] := Format('%.4x', [SMBios.ProcessorInfo[I].RAWProcessorInformation^.ProcessorCharacteristics]);
        end;
      end;
      if (SMBios.ProcessorInfo[I].RAWProcessorInformation^.L1CacheHandle > 0) and (SMBios.ProcessorInfo[I].L1Chache <> nil) then _ProcessCacheInformation(SMBios.ProcessorInfo[I].L1Chache, 1);
      if (SMBios.ProcessorInfo[I].RAWProcessorInformation^.L2CacheHandle > 0) and (SMBios.ProcessorInfo[I].L2Chache <> nil) then _ProcessCacheInformation(SMBios.ProcessorInfo[I].L2Chache, 2);
      if (SMBios.ProcessorInfo[I].RAWProcessorInformation^.L3CacheHandle > 0) and (SMBios.ProcessorInfo[I].L3Chache <> nil) then _ProcessCacheInformation(SMBios.ProcessorInfo[I].L3Chache, 3);
    end;

    if SMBios.HasMemoryControllerInfo then for I := Low(SMBios.MemoryControllerInfo) to High(SMBios.MemoryControllerInfo) do begin
      SL.Values['Memory Controller Info ' + I.ToString + ' Detecting Method'] := Format('%d - %s', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.ErrorDetectingMethod, SMBios.MemoryControllerInfo[I].GetErrorDetectingMethodDescr]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Error Correcting Capability'] := Format('%s', [ByteToBinStr(SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.ErrorCorrectingCapability)]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Supported Interleave'] := Format('%d - %s', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.SupportedInterleave, SMBios.MemoryControllerInfo[I].GetSupportedInterleaveDescr]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Current Interleave'] := Format('%d - %s', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.CurrentInterleave, SMBios.MemoryControllerInfo[I].GetCurrentInterleaveDescr]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Maximum Memory Module Size'] := Format('%d', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.MaximumMemoryModuleSize]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Supported Speeds'] := Format('%s', [WordToBinStr(SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.SupportedSpeeds)]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Supported Memory Types'] := Format('%s', [WordToBinStr(SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.SupportedMemoryTypes)]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Memory Module Voltage'] := Format('%s', [ByteToBinStr(SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.MemoryModuleVoltage)]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Number of Associated Memory Slots'] := Format('%d', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.NumberofAssociatedMemorySlots]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Memory Module Configuration Handles'] := Format('%d', [SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.MemoryModuleConfigurationHandles]);
      SL.Values['Memory Controller Info ' + I.ToString + ' Error Correcting Capability'] := Format('%s', [ByteToBinStr(SMBios.MemoryControllerInfo[I].RAWMemoryControllerInformation.ErrorCorrectingCapability)]);
    end;

    if SMBios.HasMemoryModuleInfo then for I := Low(SMBios.MemoryModuleInfo) to High(SMBios.MemoryModuleInfo) do begin
      SL.Values['Memory Module Info ' + I.ToString + ' Socket Designation'] := Format('%s', [SMBios.MemoryModuleInfo[I].GetSocketDesignationDescr]);
      SL.Values['Memory Module Info ' + I.ToString + ' Bank Connections'] := Format('%s', [ByteToBinStr(SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.BankConnections)]);
      SL.Values['Memory Module Info ' + I.ToString + ' CurrentSpeed'] := Format('%d ns', [SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.CurrentSpeed]);
      SL.Values['Memory Module Info ' + I.ToString + ' Current Memory Type'] := Format('%s', [WordToBinStr(SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.CurrentMemoryType)]);
      SL.Values['Memory Module Info ' + I.ToString + ' Installed Size'] := Format('%s', [ByteToBinStr(SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.InstalledSize)]);
      SL.Values['Memory Module Info ' + I.ToString + ' Enabled Size'] := Format('%s', [ByteToBinStr(SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.EnabledSize)]);
      SL.Values['Memory Module Info ' + I.ToString + ' Error Status'] := Format('%s', [ByteToBinStr(SMBios.MemoryModuleInfo[I].RAWMemoryModuleInformation.ErrorStatus)]);
    end;

    if SMBios.HasPortConnectorInfo then for I := Low(SMBios.PortConnectorInfo) to High(SMBios.PortConnectorInfo) do begin
      SL.Values['Port Connector Info ' + I.ToString + ' Internal Reference Designator'] := String(SMBios.PortConnectorInfo[I].InternalReferenceDesignatorStr);
      SL.Values['Port Connector Info ' + I.ToString + ' Internal Connector Type'] := String(SMBios.PortConnectorInfo[I].GetConnectorType(SMBios.PortConnectorInfo[I].RAWPortConnectorInformation.InternalConnectorType));
      SL.Values['Port Connector Info ' + I.ToString + ' External Reference Designator'] := String(SMBios.PortConnectorInfo[I].ExternalReferenceDesignatorStr);
      SL.Values['Port Connector Info ' + I.ToString + ' External Connector Type'] := String(SMBios.PortConnectorInfo[I].GetConnectorType(SMBios.PortConnectorInfo[I].RAWPortConnectorInformation.ExternalConnectorType));
      SL.Values['Port Connector Info ' + I.ToString + ' Port Type'] := String(SMBios.PortConnectorInfo[I].PortTypeStr);
    end;

    if SMBios.HasSystemSlotInfo then for I := Low(SMBios.SystemSlotInfo) to High(SMBios.SystemSlotInfo) do begin
      SL.Values['System Slot Info ' + I.ToString + ' Slot Designation'] := String(SMBios.SystemSlotInfo[I].SlotDesignationStr);
      SL.Values['System Slot Info ' + I.ToString + ' Slot Type'] := String(SMBios.SystemSlotInfo[I].GetSlotType);
      SL.Values['System Slot Info ' + I.ToString + ' Slot Data Bus Width'] := String(SMBios.SystemSlotInfo[I].GetSlotDataBusWidth);
      SL.Values['System Slot Info ' + I.ToString + ' Current Usage'] := String(SMBios.SystemSlotInfo[I].GetCurrentUsage);
      SL.Values['System Slot Info ' + I.ToString + ' Slot Length'] := String(SMBios.SystemSlotInfo[I].GetSlotLength);
      SL.Values['System Slot Info ' + I.ToString + ' Slot ID'] := Format('%.4x', [SMBios.SystemSlotInfo[I].RAWSystemSlotInformation.SlotID]);
      SL.Values['System Slot Info ' + I.ToString + ' Characteristics 1'] := ByteToBinStr(SMBios.SystemSlotInfo[I].RAWSystemSlotInformation.SlotCharacteristics1);
      SL.Values['System Slot Info ' + I.ToString + ' Characteristics 2'] := ByteToBinStr(SMBios.SystemSlotInfo[I].RAWSystemSlotInformation.SlotCharacteristics2);
      if SMBios.SmbiosVersion >= '2.6' then begin
        SL.Values['System Slot Info ' + I.ToString + ' Segment Group Number'] := Format('%.4x', [SMBios.SystemSlotInfo[I].RAWSystemSlotInformation.SegmentGroupNumber]);
        SL.Values['System Slot Info ' + I.ToString + ' Bus Number'] := Format('%d', [SMBios.SystemSlotInfo[I].RAWSystemSlotInformation.BusNumber]);
      end;
    end;

    if SMBios.HasOnBoardSystemInfo then for I := Low(SMBios.OnBoardSystemInfo) to High(SMBios.OnBoardSystemInfo) do begin
      SL.Values['OnBoard System Info ' + I.ToString + ' Device Type'] := SMBios.OnBoardSystemInfo[I].RAWOnBoardSystemInfo.DeviceType.ToString;
      SL.Values['OnBoard System Info ' + I.ToString + ' Description'] := String(SMBios.OnBoardSystemInfo[I].GetDescription);
      SL.Values['OnBoard System Info ' + I.ToString + ' Enabled'] := BoolToStr(SMBios.OnBoardSystemInfo[I].Enabled, True);
      SL.Values['OnBoard System Info ' + I.ToString + ' Device Type Description'] := String(SMBios.OnBoardSystemInfo[I].GetTypeDescription);
    end;

    if SMBios.HasSystemConfInfo then for I := Low(SMBios.SystemConfInfo) to High(SMBios.SystemConfInfo) do for J := 1 to SMBios.SystemConfInfo[I].RAWSystemConfInformation.Count do SL.Values['System Config Info ' + I.ToString] := String(SMBios.SystemConfInfo[I].GetConfString(J));

    if SMBios.HasBIOSLanguageInfo then for I := Low(SMBios.BIOSLanguageInfo) to High(SMBios.BIOSLanguageInfo) do begin
      SL.Values['Language Info ' + I.ToString + ' Installable Languages'] := SMBios.BIOSLanguageInfo[I].RAWBIOSLanguageInformation.InstallableLanguages.ToString;
      SL.Values['Language Info ' + I.ToString + ' Flags'] := ByteToBinStr(SMBios.BIOSLanguageInfo[I].RAWBIOSLanguageInformation.Flags);
      SL.Values['Language Info ' + I.ToString + ' Current Language'] := String(SMBios.BIOSLanguageInfo[I].GetCurrentLanguageStr);
      if SMBios.BIOSLanguageInfo[I].RAWBIOSLanguageInformation.InstallableLanguages > 1 then for J := 1 to SMBios.BIOSLanguageInfo[I].RAWBIOSLanguageInformation.InstallableLanguages do SL.Values['Language Info ' + I.ToString + ' String ' + J.ToString] := String(SMBios.BIOSLanguageInfo[I].GetLanguageString(J));
    end;

    if SMBios.HasGroupAssociationsInfo then for I := Low(SMBios.GroupAssociationsInformation) to High(SMBios.GroupAssociationsInformation) do begin
      SL.Values['Group Associations Information ' + I.ToString + ' Group Name'] := String(SMBios.GroupAssociationsInformation[I].GetGroupName);
      SL.Values['Group Associations Information ' + I.ToString + ' Item Type'] := SMBios.GroupAssociationsInformation[I].RAWGroupAssociationsInformation.ItemType.ToString;
      SL.Values['Group Associations Information ' + I.ToString + ' Item Handle'] := SMBios.GroupAssociationsInformation[I].RAWGroupAssociationsInformation.ItemHandle.ToString;
    end;

    if SMBios.HasPhysicalMemoryArrayInfo then for I := Low(SMBios.PhysicalMemoryArrayInfo) to High(SMBios.PhysicalMemoryArrayInfo) do begin
      SL.Values['Physical Memory Array Info ' + I.ToString + ' Location'] := String(SMBios.PhysicalMemoryArrayInfo[I].GetLocationStr);
      SL.Values['Physical Memory Array Info ' + I.ToString + ' Use'] := String(SMBios.PhysicalMemoryArrayInfo[I].GetUseStr);
      SL.Values['Physical Memory Array Info ' + I.ToString + ' Error Correction'] := String(SMBios.PhysicalMemoryArrayInfo[I].GetErrorCorrectionStr);
      if SMBios.PhysicalMemoryArrayInfo[I].RAWPhysicalMemoryArrayInformation.MaximumCapacity <> $80000000 then SL.Values['Physical Memory Array Info ' + I.ToString + ' Maximum Capacity'] := Format('%d Kb', [SMBios.PhysicalMemoryArrayInfo[I].RAWPhysicalMemoryArrayInformation.MaximumCapacity])
      else SL.Values['Physical Memory Array Info ' + I.ToString + ' Maximum Capacity'] := Format('%d bytes', [SMBios.PhysicalMemoryArrayInfo[I].RAWPhysicalMemoryArrayInformation.ExtendedMaximumCapacity]);
      SL.Values['Physical Memory Array Info ' + I.ToString + ' Memory devices'] := Format('%d', [SMBios.PhysicalMemoryArrayInfo[I].RAWPhysicalMemoryArrayInformation.NumberofMemoryDevices]);
    end;

    if SMBios.HasMemoryDeviceInfo then for I := Low(SMBios.MemoryDeviceInfo) to High(SMBios.MemoryDeviceInfo) do begin
      SL.Values['Memory Device Info ' + I.ToString + ' Total Width'] := Format('%d bits', [SMBios.MemoryDeviceInfo[I].RAWMemoryDeviceInfo.TotalWidth]);
      SL.Values['Memory Device Info ' + I.ToString + ' Data Width'] := Format('%d bits', [SMBios.MemoryDeviceInfo[I].RAWMemoryDeviceInfo.DataWidth]);
      SL.Values['Memory Device Info ' + I.ToString + ' Size'] := Format('%d Mbytes', [SMBios.MemoryDeviceInfo[I].GetSize]);
      SL.Values['Memory Device Info ' + I.ToString + ' Form Factor'] := Format('%s', [SMBios.MemoryDeviceInfo[I].GetFormFactor]);
      SL.Values['Memory Device Info ' + I.ToString + ' Device Locator'] := Format('%s', [SMBios.MemoryDeviceInfo[I].GetDeviceLocatorStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Bank Locator'] := Format('%s', [SMBios.MemoryDeviceInfo[I].GetBankLocatorStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Memory Type'] := Format('%s', [SMBios.MemoryDeviceInfo[I].GetMemoryTypeStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Speed'] := Format('%d MHz', [SMBios.MemoryDeviceInfo[I].RAWMemoryDeviceInfo.Speed]);
      SL.Values['Memory Device Info ' + I.ToString + ' Manufacturer'] := Format('%s', [SMBios.MemoryDeviceInfo[I].ManufacturerStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Serial Number'] := Format('%s', [SMBios.MemoryDeviceInfo[I].SerialNumberStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Asset Tag'] := Format('%s', [SMBios.MemoryDeviceInfo[I].AssetTagStr]);
      SL.Values['Memory Device Info ' + I.ToString + ' Part Number'] := Format('%s', [SMBios.MemoryDeviceInfo[I].PartNumberStr]);
      if SMBios.MemoryDeviceInfo[I].RAWMemoryDeviceInfo.PhysicalMemoryArrayHandle > 0 then begin
        SL.Values['Memory Device Info ' + I.ToString + ' Location'] := String(SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.GetLocationStr);
        SL.Values['Memory Device Info ' + I.ToString + ' Use'] := String(SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.GetUseStr);
        SL.Values['Memory Device Info ' + I.ToString + ' Error Correction'] := String(SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.GetErrorCorrectionStr);
        if SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.MaximumCapacity <> $80000000 then SL.Values['Memory Device Info ' + I.ToString + ' Maximum Capacity'] := Format('%d Kb', [SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.MaximumCapacity])
        else SL.Values['Memory Device Info ' + I.ToString + ' Maximum Capacity'] := Format('%d bytes', [SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.ExtendedMaximumCapacity]);
        SL.Values['Memory Device Info ' + I.ToString + ' Memory devices'] := Format('%d', [SMBios.MemoryDeviceInfo[I].PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.NumberofMemoryDevices]);
      end;
    end;

    if SMBios.HasMemoryArrayMappedAddressInfo then for I := Low(SMBios.MemoryArrayMappedAddressInformation) to High(SMBios.MemoryArrayMappedAddressInformation) do begin
      SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Starting Address'] := Format('%.8x ', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.StartingAddress]);
      SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Ending Address'] := Format('%.8x ', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.EndingAddress]);
      SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Memory Array Handle'] := Format('%.4x ', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.MemoryArrayHandle]);
      SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Partition Width'] := Format('%d ', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.PartitionWidth]);
      if SMBios.SmbiosVersion >= '2.7' then begin
        SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Extended Starting Address'] := Format('%x', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.ExtendedStartingAddress]);
        SL.Values['Memory Array Mapped Address Information ' + I.ToString + ' Extended Ending Address'] := Format('%x', [SMBios.MemoryArrayMappedAddressInformation[I].RAWMemoryArrayMappedAddressInfo.ExtendedEndingAddress]);
      end;
    end;

    if SMBios.HasMemoryDeviceMappedAddressInfo then for I := Low(SMBios.MemoryDeviceMappedAddressInformation) to High(SMBios.MemoryDeviceMappedAddressInformation) do begin
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Starting Address'] := Format('%.8x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.StartingAddress]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Ending Address'] := Format('%.8x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.EndingAddress]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Memory Device Handle'] := Format('%.4x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.MemoryDeviceHandle]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Memory Array Mapped Address Handle'] := Format('%.4x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.MemoryArrayMappedAddressHandle]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Partition Row Position'] := Format('%d', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.PartitionRowPosition]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Interleave Position'] := Format('%d', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.InterleavePosition]);
      SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Interleaved Data Depth'] := Format('%d', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.InterleavedDataDepth]);
      if SMBios.SmbiosVersion >= '2.7' then begin
        SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Extended Starting Address'] := Format('%x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.ExtendedStartingAddress]);
        SL.Values['Memory Device Mapped Address Information ' + I.ToString + ' Extended Ending Address'] := Format('%x', [SMBios.MemoryDeviceMappedAddressInformation[I].RAWMemoryDeviceMappedAddressInfo.ExtendedEndingAddress]);
      end;
    end;

    if SMBios.HasBuiltInPointingDeviceInfo then for I := Low(SMBios.BuiltInPointingDeviceInformation) to High(SMBios.BuiltInPointingDeviceInformation) do begin
      SL.Values['BuiltIn Pointing Device Information ' + I.ToString + ' Type'] := Format('%s', [SMBios.BuiltInPointingDeviceInformation[I].GetType]);
      SL.Values['BuiltIn Pointing Device Information ' + I.ToString + ' Interface'] := Format('%s', [SMBios.BuiltInPointingDeviceInformation[I].GetInterface]);
      SL.Values['BuiltIn Pointing Device Information ' + I.ToString + ' Number of Buttons'] := Format('%d', [SMBios.BuiltInPointingDeviceInformation[I].RAWBuiltInPointingDeviceInfo.NumberofButtons]);
    end;

    if SMBios.HasBatteryInfo then for I := Low(SMBios.BatteryInformation) to High(SMBios.BatteryInformation) do begin
      SL.Values['Battery Information ' + I.ToString + ' Location'] := String(SMBios.BatteryInformation[I].GetLocationStr);
      SL.Values['Battery Information ' + I.ToString + ' Manufacturer'] := String(SMBios.BatteryInformation[I].GetManufacturerStr);
      SL.Values['Battery Information ' + I.ToString + ' Manufacturer Date'] := String(SMBios.BatteryInformation[I].GetManufacturerDateStr);
      SL.Values['Battery Information ' + I.ToString + ' Serial Number'] := String(SMBios.BatteryInformation[I].GetSerialNumberStr);
      SL.Values['Battery Information ' + I.ToString + ' Device Name'] := String(SMBios.BatteryInformation[I].GetDeviceNameStr);
      SL.Values['Battery Information ' + I.ToString + ' Device Chemistry'] := String(SMBios.BatteryInformation[I].GetDeviceChemistry);
      SL.Values['Battery Information ' + I.ToString + ' Design Capacity'] := Format('%d mWatt/hours', [SMBios.BatteryInformation[I].RAWBatteryInfo.DesignCapacity * SMBios.BatteryInformation[I].RAWBatteryInfo.DesignCapacityMultiplier]);
      SL.Values['Battery Information ' + I.ToString + ' Design Voltage'] := Format('%d mVolts', [SMBios.BatteryInformation[I].RAWBatteryInfo.DesignVoltage]);
      SL.Values['Battery Information ' + I.ToString + ' SBDS Version Number'] := String(SMBios.BatteryInformation[I].GetSBDSVersionNumberStr);
      SL.Values['Battery Information ' + I.ToString + ' Maximum Error in Battery Data'] := Format('%d%%', [SMBios.BatteryInformation[I].RAWBatteryInfo.MaximumErrorInBatteryData]);
      SL.Values['Battery Information ' + I.ToString + ' SBDS Version Number'] := Format('%.4x', [SMBios.BatteryInformation[I].RAWBatteryInfo.SBDSSerialNumber]);
      SL.Values['Battery Information ' + I.ToString + ' SBDS Manufacture Date'] := FormatDateTime('dd-mm-yyyy', SMBios.BatteryInformation[I].GetSBDSManufacturerDate);
      SL.Values['Battery Information ' + I.ToString + ' SBDS Device Chemistry'] := String(SMBios.BatteryInformation[I].GetSBDSDeviceChemistryStr);
      SL.Values['Battery Information ' + I.ToString + ' OEM Specific'] := Format('%.8x', [SMBios.BatteryInformation[I].RAWBatteryInfo.OEM_Specific]);
    end;

    if SMBios.HasVoltageProbeInfo then for I := Low(SMBios.VoltageProbeInformation) to High(SMBios.VoltageProbeInformation) do begin
      SL.Values['Voltage Probe Information ' + I.ToString + ' Description'] := Format('%s', [SMBios.VoltageProbeInformation[I].GetDescriptionStr]);
      SL.Values['Voltage Probe Information ' + I.ToString + ' Location and Status'] := Format('%s', [ByteToBinStr(SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.LocationandStatus)]);
      SL.Values['Voltage Probe Information ' + I.ToString + ' Location'] := Format('%s', [SMBios.VoltageProbeInformation[I].GetLocation]);
      SL.Values['Voltage Probe Information ' + I.ToString + ' Status'] := Format('%s', [SMBios.VoltageProbeInformation[I].GetStatus]);
      if SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.MaximumValue <> $8000 then SL.Values['Voltage Probe Information ' + I.ToString + ' Maximum Value'] := Format('%d', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.MaximumValue]);
      if SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.MinimumValue <> $8000 then SL.Values['Voltage Probe Information ' + I.ToString + ' Minimum Value'] := Format('%d', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.MinimumValue]);
      if SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.Resolution <> $8000 then SL.Values['Voltage Probe Information ' + I.ToString + ' Resolution'] := Format('%d', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.Resolution]);
      if SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.Tolerance <> $8000 then SL.Values['Voltage Probe Information ' + I.ToString + ' Tolerance'] := Format('%d', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.Tolerance]);
      SL.Values['Voltage Probe Information ' + I.ToString + ' OEM Specific'] := Format('%.8x', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.OEMdefined]);
      if (SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.Header.Length > $14) and (SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.NominalValue <> $8000) then SL.Values['Voltage Probe Information ' + I.ToString + ' Nominal Value'] := Format('%d', [SMBios.VoltageProbeInformation[I].RAWVoltageProbeInfo.NominalValue]);
    end;

    if SMBios.HasCoolingDeviceInfo then for I := Low(SMBios.CoolingDeviceInformation) to High(SMBios.CoolingDeviceInformation) do begin
      if SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.TemperatureProbeHandle <> $FFFF then SL.Values['Cooling Device Information ' + I.ToString + ' Temperature Probe Handle'] := Format('%.4x', [SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.TemperatureProbeHandle]);
      SL.Values['Cooling Device Information ' + I.ToString + ' Device Type and Status'] := Format('%s', [ByteToBinStr(SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.DeviceTypeandStatus)]);
      SL.Values['Cooling Device Information ' + I.ToString + ' Type'] := Format('%s', [SMBios.CoolingDeviceInformation[I].GetDeviceType]);
      SL.Values['Cooling Device Information ' + I.ToString + ' Status'] := Format('%s', [SMBios.CoolingDeviceInformation[I].GetStatus]);
      SL.Values['Cooling Device Information ' + I.ToString + ' Cooling Unit Group'] := Format('%d', [SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.CoolingUnitGroup]);
      SL.Values['Cooling Device Information ' + I.ToString + ' OEM Specific'] := Format('%.8x', [SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.OEMdefined]);
      if SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.NominalSpeed <> $8000 then SL.Values['Cooling Device Information ' + I.ToString + ' Nominal Speed'] := Format('%d rpm', [SMBios.CoolingDeviceInformation[I].RAWCoolingDeviceInfo.NominalSpeed]);
      if SMBios.SmbiosVersion >= '2.7' then SL.Values['Cooling Device Information ' + I.ToString + ' Description'] := Format('%s', [SMBios.CoolingDeviceInformation[I].GetDescriptionStr]);
    end;

    if SMBios.HasTemperatureProbeInfo then for I := Low(SMBios.TemperatureProbeInformation) to High(SMBios.TemperatureProbeInformation) do begin
      SL.Values['Temperature Probe Information ' + I.ToString + ' Description'] := Format('%s', [SMBios.TemperatureProbeInformation[I].GetDescriptionStr]);
      SL.Values['Temperature Probe Information ' + I.ToString + ' Location and Status'] := Format('%s', [ByteToBinStr(SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.LocationandStatus)]);
      SL.Values['Temperature Probe Information ' + I.ToString + ' Location'] := Format('%s', [SMBios.TemperatureProbeInformation[I].GetLocation]);
      SL.Values['Temperature Probe Information ' + I.ToString + ' Status'] := Format('%s', [SMBios.TemperatureProbeInformation[I].GetStatus]);
      if SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.MaximumValue <> $8000 then SL.Values['Temperature Probe Information ' + I.ToString + ' Maximum Value'] := Format('%d C°', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.MaximumValue div 10]);
      if SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.MinimumValue <> $8000 then SL.Values['Temperature Probe Information ' + I.ToString + ' Minimum Value'] := Format('%d C°', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.MinimumValue div 10]);
      if SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.Resolution <> $8000 then SL.Values['Temperature Probe Information ' + I.ToString + ' Resolution'] := Format('%d C°', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.Resolution div 1000]);
      if SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.Tolerance <> $8000 then SL.Values['Temperature Probe Information ' + I.ToString + ' Tolerance'] := Format('%n C°', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.Tolerance / 10]);
      SL.Values['Temperature Probe Information ' + I.ToString + ' OEM Specific'] := Format('%.8x', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.OEMdefined]);
      if (SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.Header.Length > $14) and (SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.NominalValue <> $8000) then SL.Values['Temperature Probe Information ' + I.ToString + ' Nominal Value'] := Format('d C°', [SMBios.TemperatureProbeInformation[I].RAWTemperatureProbeInfo.NominalValue div 10]);
    end;

    if SMBios.HasElectricalCurrentProbeInfo then for I := Low(SMBios.ElectricalCurrentProbeInformation) to High(SMBios.ElectricalCurrentProbeInformation) do begin
      SL.Values['Electrical Current Probe Information ' + I.ToString + ' Description'] := Format('%s', [SMBios.ElectricalCurrentProbeInformation[I].GetDescriptionStr]);
      SL.Values['Electrical Current Probe Information ' + I.ToString + ' Location and Status'] := Format('%s', [ByteToBinStr(SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.LocationandStatus)]);
      SL.Values['Electrical Current Probe Information ' + I.ToString + ' Location'] := Format('%s', [SMBios.ElectricalCurrentProbeInformation[I].GetLocation]);
      SL.Values['Electrical Current Probe Information ' + I.ToString + ' Status'] := Format('%s', [SMBios.ElectricalCurrentProbeInformation[I].GetStatus]);
      if SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.MaximumValue <> $8000 then SL.Values['Electrical Current Probe Information ' + I.ToString + ' Maximum Value'] := Format('%d milliamps.', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.MaximumValue]);
      if SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.MinimumValue <> $8000 then SL.Values['Electrical Current Probe Information ' + I.ToString + ' Minimum Value'] := Format('%d milliamps.', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.MinimumValue]);
      if SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.Resolution <> $8000 then SL.Values['Electrical Current Probe Information ' + I.ToString + ' Resolution'] := Format('%d milliamps.', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.Resolution div 10]);
      if SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.Tolerance <> $8000 then SL.Values['Electrical Current Probe Information ' + I.ToString + ' Tolerance'] := Format('%n milliamps.', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.Tolerance]);
      SL.Values['Electrical Current Probe Information ' + I.ToString + ' OEM Specific'] := Format('%.8x', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.OEMdefined]);
      if (SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.Header.Length > $14) and (SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.NominalValue <> $8000) then SL.Values['Electrical Current Probe Information ' + I.ToString + ' Nominal Value'] := Format('%d milliamps.', [SMBios.ElectricalCurrentProbeInformation[I].RAWElectricalCurrentProbeInfo.NominalValue]);
    end;

  finally
    SMBios.Free;
  end;
end;

end.
