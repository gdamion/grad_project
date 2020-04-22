function xdd_generator_sim(dev_name,filename,tpdos,rpdos)
  dev_version = '01.00';
  dev_id = hex2dec('00000002');
  vendor = 'Russian Technological University (RTU MIREA)';
  vendor_id = 'FFFF0015';
  hw_ver = '1.00';
  sw_ver = '1.00';
  mac = '000000000000';

  revision_num='00000001';
  serial_num='00000000';

  verify_conf_date= '00000000';
  verify_conf_time= '00000000';

  fflags = bin2dec('00000000000000000000000000000101');       
  mtu=300;

  RespTime = 2000; %Time between PReq and PRes (us)
  DeviceType = '00000191';

  f=fopen(filename,'w');

  fprintf(f,'<?xml version="1.0" encoding="utf-8"?>\n');
  fprintf(f,'<!--\n');
  fprintf(f,'*******************************************************************************\n');
  fprintf(f,'\n');
  fprintf(f,' Ethernet POWERLINK XML device description\n');
  fprintf(f,'\n');
  fprintf(f,'*******************************************************************************\n');
  fprintf(f,'\n');
  fprintf(f,' File:        %s\n',filename);
  fprintf(f,' Version:     %s\n',dev_version);
  fprintf(f,'\n');
  fprintf(f,' \n');
  fprintf(f,'*******************************************************************************\n');
  fprintf(f,'-->\n');
  fprintf(f,'<ISO15745ProfileContainer\n');
  fprintf(f,'  xmlns="http://www.ethernet-powerlink.org"\n');
  fprintf(f,'  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"\n');
  fprintf(f,'  xsi:schemaLocation="http://www.ethernet-powerlink.org Powerlink_Main.xsd">\n');
  fprintf(f,'  <ISO15745Profile>\n');
  fprintf(f,'    <ProfileHeader>\n');
  fprintf(f,'      <ProfileIdentification>Powerlink_Device_Profile</ProfileIdentification>\n');
  fprintf(f,'      <ProfileRevision>1</ProfileRevision>\n');
  fprintf(f,'      <ProfileName>MyDevice static device profile</ProfileName>\n');
  fprintf(f,'      <ProfileSource/>\n');
  fprintf(f,'      <ProfileClassID>Device</ProfileClassID>\n');
  fprintf(f,'      <ISO15745Reference>\n');
  fprintf(f,'        <ISO15745Part>4</ISO15745Part>\n');
  fprintf(f,'        <ISO15745Edition>1</ISO15745Edition>\n');
  fprintf(f,'        <ProfileTechnology>Powerlink</ProfileTechnology>\n');
  fprintf(f,'      </ISO15745Reference>\n');
  fprintf(f,'    </ProfileHeader>\n');
  fprintf(f,'    <ProfileBody\n');
  fprintf(f,'      xsi:type="ProfileBody_Device_Powerlink"\n');
  fprintf(f,'      fileName="%s"\n',filename);
  fprintf(f,'      fileCreator="FPGA Simulation XDD Generator"\n');
  fprintf(f,'      fileCreationDate="%s"\n',datestr(now,'yyyy-mm-dd'));
  fprintf(f,'      fileVersion="%s"\n',dev_version);
  fprintf(f,'      supportedLanguages="en">\n');
  fprintf(f,'      <DeviceIdentity>\n');
  fprintf(f,'        <vendorName>%s</vendorName>\n',vendor);
  fprintf(f,'        <vendorID>0x%s</vendorID>\n',vendor_id);
  fprintf(f,'        <productName>%s</productName>\n',dev_name);
  fprintf(f,'        <version versionType="HW">%s</version>\n',hw_ver);
  fprintf(f,'        <version versionType="SW">%s</version>\n',sw_ver);
  fprintf(f,'      </DeviceIdentity>\n');
  fprintf(f,'      <DeviceFunction>\n');
  fprintf(f,'        <capabilities>\n');
  fprintf(f,'          <characteristicsList>\n');
  fprintf(f,'            <characteristic>\n');
  fprintf(f,'              <characteristicName>\n');
  fprintf(f,'                <label lang="en">Transfer rate</label>\n');
  fprintf(f,'              </characteristicName>\n');
  fprintf(f,'              <characteristicContent>\n');
  fprintf(f,'                <label lang="en">100 MBit/s</label>\n');
  fprintf(f,'              </characteristicContent>\n');
  fprintf(f,'            </characteristic>\n');
  fprintf(f,'          </characteristicsList>\n');
  fprintf(f,'        </capabilities>\n');
  fprintf(f,'      </DeviceFunction>\n');
  fprintf(f,'    </ProfileBody>\n');
  fprintf(f,'  </ISO15745Profile>\n');
  fprintf(f,'  <ISO15745Profile>\n');
  fprintf(f,'    <ProfileHeader>\n');
  fprintf(f,'      <ProfileIdentification>Powerlink_Communication_Profile</ProfileIdentification>\n');
  fprintf(f,'      <ProfileRevision>1</ProfileRevision>\n');
  fprintf(f,'      <ProfileName>%s communication profile</ProfileName>\n',dev_name);
  fprintf(f,'      <ProfileSource/>\n');
  fprintf(f,'      <ProfileClassID>CommunicationNetwork</ProfileClassID>\n');
  fprintf(f,'      <ISO15745Reference>\n');
  fprintf(f,'        <ISO15745Part>4</ISO15745Part>\n');
  fprintf(f,'        <ISO15745Edition>1</ISO15745Edition>\n');
  fprintf(f,'        <ProfileTechnology>Powerlink</ProfileTechnology>\n');
  fprintf(f,'      </ISO15745Reference>\n');
  fprintf(f,'    </ProfileHeader>\n');
  fprintf(f,'    <ProfileBody\n');
  fprintf(f,'      xsi:type="ProfileBody_CommunicationNetwork_Powerlink"\n');
  fprintf(f,'      fileName="%s"\n',filename);
  fprintf(f,'      fileCreator="Ethernet POWERLINK Standardization Group"\n');
  fprintf(f,'      fileCreationDate="%s"\n',datestr(now,'yyyy-mm-dd'));
  fprintf(f,'      fileCreationTime="%s"\n',strftime('%H:%M:%S',localtime(time)));
  fprintf(f,'      fileModificationDate="%s"\n',datestr(now,'yyyy-mm-dd'));
  fprintf(f,'      fileModificationTime="%s"\n',strftime('%H:%M:%S',localtime(time)));
  fprintf(f,'      fileModifiedBy="Ethernet POWERLINK Standardization Group"\n');
  fprintf(f,'      fileVersion="%s"\n',dev_version);
  fprintf(f,'      supportedLanguages="en">\n');
  fprintf(f,'      <ApplicationLayers>\n');
  fprintf(f,'        <identity>\n');
  fprintf(f,'          <vendorID>0x%s</vendorID>\n',vendor_id);
  fprintf(f,'        </identity>\n');
  fprintf(f,'        <DataTypeList>\n');
  fprintf(f,'          <defType dataType="0001">\n');
  fprintf(f,'            <Boolean/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0002">\n');
  fprintf(f,'            <Integer8/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0003">\n');
  fprintf(f,'            <Integer16/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0004">\n');
  fprintf(f,'            <Integer32/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0005">\n');
  fprintf(f,'            <Unsigned8/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0006">\n');
  fprintf(f,'            <Unsigned16/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0007">\n');
  fprintf(f,'            <Unsigned32/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0008">\n');
  fprintf(f,'            <Real32/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0009">\n');
  fprintf(f,'            <Visible_String/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0010">\n');
  fprintf(f,'            <Integer24/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0011">\n');
  fprintf(f,'            <Real64/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0012">\n');
  fprintf(f,'            <Integer40/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0013">\n');
  fprintf(f,'            <Integer48/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0014">\n');
  fprintf(f,'            <Integer56/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0015">\n');
  fprintf(f,'            <Integer64/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="000A">\n');
  fprintf(f,'            <Octet_String/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="000B">\n');
  fprintf(f,'            <Unicode_String/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="000C">\n');
  fprintf(f,'            <Time_of_Day/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="000D">\n');
  fprintf(f,'            <Time_Diff/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="000F">\n');
  fprintf(f,'            <Domain/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0016">\n');
  fprintf(f,'            <Unsigned24/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0018">\n');
  fprintf(f,'            <Unsigned40/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0019">\n');
  fprintf(f,'            <Unsigned48/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="001A">\n');
  fprintf(f,'            <Unsigned56/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="001B">\n');
  fprintf(f,'            <Unsigned64/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0401">\n');
  fprintf(f,'            <MAC_ADDRESS/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0402">\n');
  fprintf(f,'            <IP_ADDRESS/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'          <defType dataType="0403">\n');
  fprintf(f,'            <NETTIME/>\n');
  fprintf(f,'          </defType>\n');
  fprintf(f,'        </DataTypeList>\n');
  fprintf(f,'        <ObjectList>\n');
  fprintf(f,'          <!-- Communication Profile Area (0x1000 - 0x1FFF): defined by EPSG 301 -->\n');

  fprintf(f,'          <Object index="1000" name="NMT_DeviceType_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x%s"/>\n',DeviceType);
  fprintf(f,'          <Object index="1001" name="ERR_ErrorRegister_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="optional" defaultValue="0"/>\n');

  fprintf(f,'          <Object index="1006" name="NMT_CycleLen_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="0"/>\n');

  fprintf(f,'          <Object index="1018" name="NMT_IdentityObject_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="4"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="VendorId_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x%s"/>\n',vendor_id);
  fprintf(f,'            <SubObject subIndex="02" name="ProductCode_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x%s"/>\n',dec2hex(dev_id,8));
  fprintf(f,'            <SubObject subIndex="03" name="RevisionNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0%s"/>\n',revision_num);
  fprintf(f,'            <SubObject subIndex="04" name="SerialNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x%s"/>\n',serial_num);
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1020" name="CFM_VerifyConfiguration_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="ConfDate_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x%s"/>\n',verify_conf_date);
  fprintf(f,'            <SubObject subIndex="02" name="ConfTime_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x%s"/>\n',verify_conf_time);
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1030" name="NMT_InterfaceGroup_0h_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="9"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="InterfaceIndex_U16" objectType="7" dataType="0006" accessType="ro" PDOmapping="no" defaultValue="1"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="InterfaceDescription_VSTR" objectType="7" dataType="0009" accessType="const" PDOmapping="no" defaultValue="Interface 1"/>\n');
  fprintf(f,'            <SubObject subIndex="03" name="InterfaceType_U8" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="6"/>\n');
  fprintf(f,'            <SubObject subIndex="04" name="InterfaceMtu_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1500"/>\n');
  fprintf(f,'            <SubObject subIndex="05" name="InterfacePhysAddress_OSTR" objectType="7" dataType="000A" accessType="const" PDOmapping="no" />\n');
  fprintf(f,'            <SubObject subIndex="06" name="InterfaceName_VSTR" objectType="7" dataType="0009" accessType="ro" PDOmapping="no" defaultValue="Interface 1"/>\n');
  fprintf(f,'            <SubObject subIndex="07" name="InterfaceOperStatus_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="1"/>\n');
  fprintf(f,'            <SubObject subIndex="08" name="InterfaceAdminState_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="1"/>\n');
  fprintf(f,'            <SubObject subIndex="09" name="Valid_BOOL" objectType="7" dataType="0001" accessType="rw" PDOmapping="no" defaultValue="true"/>\n');
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1300" name="SDO_SequLayerTimeout_U32" objectType="7" PDOmapping="no" accessType="rw" dataType="0007" defaultValue="15000"/>\n');


  %Mapping (RPDO)
  fprintf(f,'          <Object index="1400" name="PDO_RxCommParam_00h_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="0"/>\n');
  fprintf(f,'          </Object>\n');

  fprintf(f,'          <Object index="1600" name="PDO_RxMappParam_00h_AU64" objectType="8">\n');
  %Number of mapped objects
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="%i"/>\n',length(rpdos));
  offset=0;
  subind=1;
  rpdo_map=uint64(zeros(1,length(rpdos)));
  for i=1:length(rpdos)
    [rpdo_str, offset]=pdo2str(rpdos(i), offset);
    rpdo_map(i)=hex2dec(rpdo_str);
    fprintf(f,'            <SubObject subIndex="%s" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x%s"/>\n',dec2hex(subind,2),rpdo_str);
    subind=subind+1;
  end
  PReqSize = offset; 

  if(PReqSize<36)
      PReqSize = 36;
  end

  fprintf(f,'          </Object>\n');

  %Mapping (TPDO)
  fprintf(f,'          <Object index="1800" name="PDO_TxCommParam_00h_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="0"/>\n');
  fprintf(f,'          </Object>\n');

  fprintf(f,'          <Object index="1A00" name="PDO_TxMappParam_00h_AU64" objectType="8">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0x%i"/>\n',length(tpdos));

  offset=0;
  subind=1;
  tpdo_map=uint64(zeros(1,length(tpdos)));
  for i=1:length(tpdos)
    [tpdo_str, offset]=pdo2str(tpdos(i), offset);
    tpdo_map(i)=hex2dec(tpdo_str);
    fprintf(f,'            <SubObject subIndex="%s" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x%s"/>\n',dec2hex(subind,2),tpdo_str);
    subind=subind+1;
  end
  PResSize = offset;

  if(PResSize<36)
      PResSize = 36;
  end


  fprintf(f,'          </Object>\n');


  fprintf(f,'          <Object index="1C0B" name="DLL_CNLossSoC_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="3"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="CumulativeCnt_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" />\n');
  fprintf(f,'            <SubObject subIndex="02" name="ThresholdCnt_U32" objectType="7" dataType="0007" accessType="ro" PDOmapping="no" />\n');
  fprintf(f,'            <SubObject subIndex="03" name="Threshold_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="15"/>\n');
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1C0F" name="DLL_CNCRCError_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="3"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="CumulativeCnt_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="ThresholdCnt_U32" objectType="7" dataType="0007" accessType="ro" PDOmapping="no"/>\n');
  fprintf(f,'            <SubObject subIndex="03" name="Threshold_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="15"/>\n');
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1C14" name="DLL_CNLossOfSocTolerance_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="100000"/>\n');
  fprintf(f,'          <Object index="1F82" name="NMT_FeatureFlags_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x%s"/>\n',dec2hex(fflags,8));
  fprintf(f,'          <Object index="1F83" name="NMT_EPLVersion_U8" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="0x20"/>\n');
  fprintf(f,'          <Object index="1F8C" name="NMT_CurrNMTState_U8" objectType="7" dataType="0005" accessType="ro"/>\n');
  fprintf(f,'          <Object index="1F93" name="NMT_EPLNodeID_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="NodeIDByHW_BOOL" objectType="7" dataType="0001" accessType="ro" PDOmapping="no" defaultValue="true"/>\n');
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1F98" name="NMT_CycleTiming_REC" objectType="9">\n');
  fprintf(f,'            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="8"/>\n');
  fprintf(f,'            <SubObject subIndex="01" name="IsochrTxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1490"/>\n');
  fprintf(f,'            <SubObject subIndex="02" name="IsochrRxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1490"/>\n');
  fprintf(f,'            <SubObject subIndex="03" name="PResMaxLatency_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="%i"/>\n',RespTime);
  fprintf(f,'            <SubObject subIndex="04" name="PReqActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36" actualValue="%i"/>\n',PResSize);
  fprintf(f,'            <SubObject subIndex="05" name="PResActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36" actualValue="%i"/>\n',PReqSize);
  fprintf(f,'            <SubObject subIndex="06" name="ASndMaxLatency_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="2000"/>\n');
  fprintf(f,'            <SubObject subIndex="07" name="MultiplCycleCnt_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>\n');
  fprintf(f,'            <SubObject subIndex="08" name="AsyncMTU_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="%i"/>\n',mtu);
  fprintf(f,'          </Object>\n');
  fprintf(f,'          <Object index="1F99" name="NMT_CNBasicEthernetTimeout_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="5000000"/>\n');
  fprintf(f,'          <Object index="1F9E" name="NMT_ResetCmd_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="255"/>\n');
  fprintf(f,'\n');


  fprintf(f,'          <!-- Manufacturer Specific Profile Area (0x2000 - 0x5FFF) -->\n');
  for i=1:length(tpdos)
    fprintf(f,'          <Object index="%s" name="%s" objectType="7" dataType="%s" accessType="rw" PDOmapping="default" />\n',tpdos(i).index,tpdos(i).name,tpdos(i).type);
  end
  for i=1:length(rpdos)
    fprintf(f,'          <Object index="%s" name="%s" objectType="7" dataType="%s" accessType="rw" PDOmapping="default" />\n',rpdos(i).index,rpdos(i).name,rpdos(i).type);
  end


  fprintf(f,'          <!-- Standardised Device Profile Area (0x6000 - 0x9FFF) -->\n');
  fprintf(f,'        </ObjectList>\n');
  fprintf(f,'      </ApplicationLayers>\n');
  fprintf(f,'      <TransportLayers/>\n');
  fprintf(f,'      <NetworkManagement>\n');
  fprintf(f,'        <GeneralFeatures\n');
  fprintf(f,'          DLLFeatureMN="false"\n');
  fprintf(f,'          NMTBootTimeNotActive="3000000"\n');
  fprintf(f,'          NMTCycleTimeMin="0"\n');
  fprintf(f,'          NMTCycleTimeMax="4294967295"\n');
  fprintf(f,'          NMTErrorEntries="2"\n');
  fprintf(f,'          NWLIPSupport="false"\n');
  fprintf(f,'          SDOServer="true"\n');
  fprintf(f,'          SDOMaxConnections="1"\n');
  fprintf(f,'          SDOMaxParallelConnections="1"\n');
  fprintf(f,'          SDOCmdWriteAllByIndex="false"\n');
  fprintf(f,'          SDOCmdReadAllByIndex="false"\n');
  fprintf(f,'          SDOCmdWriteByName="false"\n');
  fprintf(f,'          SDOCmdReadByName="false"\n');
  fprintf(f,'          SDOCmdWriteMultParam="false"\n');
  fprintf(f,'          NMTFlushArpEntry="false"\n');
  fprintf(f,'          NMTNetHostNameSet="false"\n');
  fprintf(f,'          PDORPDOChannels="1"\n');
  fprintf(f,'          PDORPDOChannelObjects="%i"\n',length(rpdos));
  fprintf(f,'          PDOSelfReceipt="false"\n');
  fprintf(f,'          PDOTPDOChannelObjects="%i"\n',length(tpdos));
  fprintf(f,'        />\n');
  fprintf(f,'        <CNFeatures\n');
  fprintf(f,'          DLLCNFeatureMultiplex="false"\n');
  fprintf(f,'          DLLCNPResChaining="false"\n');
  fprintf(f,'          NMTCNSoC2PReq="0"\n');
  fprintf(f,'        />\n');
  fprintf(f,'        <Diagnostic/>\n');
  fprintf(f,'      </NetworkManagement>\n');
  fprintf(f,'    </ProfileBody>\n');
  fprintf(f,'  </ISO15745Profile>\n');
  fprintf(f,'</ISO15745ProfileContainer>\n');

  fclose(f);
endfunction  
  