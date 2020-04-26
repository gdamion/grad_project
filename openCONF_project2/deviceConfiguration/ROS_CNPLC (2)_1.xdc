<?xml version="1.0" encoding="UTF-8"?>
<!--
*******************************************************************************

 Ethernet POWERLINK XML device description

*******************************************************************************

 File:        ROS_CNPLC.xdd
 Version:     01.00

 
*******************************************************************************
-->
<ISO15745ProfileContainer xmlns="http://www.ethernet-powerlink.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ethernet-powerlink.org Powerlink_Main.xsd">
  <ISO15745Profile>
    <ProfileHeader>
      <ProfileIdentification>Powerlink_Device_Profile</ProfileIdentification>
      <ProfileRevision>1</ProfileRevision>
      <ProfileName>MyDevice static device profile</ProfileName>
      <ProfileSource/>
      <ProfileClassID>Device</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>4</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>Powerlink</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_Device_Powerlink" fileName="ROS_CNPLC.xdd" fileCreator="FPGA Simulation XDD Generator" fileCreationDate="2020-04-26" fileVersion="01.00" supportedLanguages="en">
      <DeviceIdentity>
        <vendorName>Russian Technological University (RTU MIREA)</vendorName>
        <vendorID>0xFFFF0015</vendorID>
        <productName>ROS_CNPLC</productName>
        <version versionType="HW">1.00</version>
        <version versionType="SW">1.00</version>
      </DeviceIdentity>
      <DeviceFunction>
        <capabilities>
          <characteristicsList>
            <characteristic>
              <characteristicName>
                <label lang="en">Transfer rate</label>
              </characteristicName>
              <characteristicContent>
                <label lang="en">100 MBit/s</label>
              </characteristicContent>
            </characteristic>
          </characteristicsList>
        </capabilities>
      </DeviceFunction>
    </ProfileBody>
  </ISO15745Profile>
  <ISO15745Profile>
    <ProfileHeader>
      <ProfileIdentification>Powerlink_Communication_Profile</ProfileIdentification>
      <ProfileRevision>1</ProfileRevision>
      <ProfileName>ROS_CNPLC communication profile</ProfileName>
      <ProfileSource/>
      <ProfileClassID>CommunicationNetwork</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>4</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>Powerlink</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_CommunicationNetwork_Powerlink" fileName="ROS_CNPLC.xdd" fileCreator="Ethernet POWERLINK Standardization Group" fileCreationDate="2020-04-26" fileCreationTime="15:31:26" fileModificationDate="2020-04-26" fileModificationTime="15:31:26" fileModifiedBy="Ethernet POWERLINK Standardization Group" fileVersion="01.00" supportedLanguages="en">
      <ApplicationLayers>
        <identity>
          <vendorID>0xFFFF0015</vendorID>
        </identity>
        <DataTypeList>
          <defType dataType="0001">
            <Boolean/>
          </defType>
          <defType dataType="0002">
            <Integer8/>
          </defType>
          <defType dataType="0003">
            <Integer16/>
          </defType>
          <defType dataType="0004">
            <Integer32/>
          </defType>
          <defType dataType="0005">
            <Unsigned8/>
          </defType>
          <defType dataType="0006">
            <Unsigned16/>
          </defType>
          <defType dataType="0007">
            <Unsigned32/>
          </defType>
          <defType dataType="0008">
            <Real32/>
          </defType>
          <defType dataType="0009">
            <Visible_String/>
          </defType>
          <defType dataType="0010">
            <Integer24/>
          </defType>
          <defType dataType="0011">
            <Real64/>
          </defType>
          <defType dataType="0012">
            <Integer40/>
          </defType>
          <defType dataType="0013">
            <Integer48/>
          </defType>
          <defType dataType="0014">
            <Integer56/>
          </defType>
          <defType dataType="0015">
            <Integer64/>
          </defType>
          <defType dataType="000A">
            <Octet_String/>
          </defType>
          <defType dataType="000B">
            <Unicode_String/>
          </defType>
          <defType dataType="000C">
            <Time_of_Day/>
          </defType>
          <defType dataType="000D">
            <Time_Diff/>
          </defType>
          <defType dataType="000F">
            <Domain/>
          </defType>
          <defType dataType="0016">
            <Unsigned24/>
          </defType>
          <defType dataType="0018">
            <Unsigned40/>
          </defType>
          <defType dataType="0019">
            <Unsigned48/>
          </defType>
          <defType dataType="001A">
            <Unsigned56/>
          </defType>
          <defType dataType="001B">
            <Unsigned64/>
          </defType>
          <defType dataType="0401">
            <MAC_ADDRESS/>
          </defType>
          <defType dataType="0402">
            <IP_ADDRESS/>
          </defType>
          <defType dataType="0403">
            <NETTIME/>
          </defType>
        </DataTypeList>
        <ObjectList>
          <!-- Communication Profile Area (0x1000 - 0x1FFF): defined by EPSG 301 -->
          <Object index="1000" name="NMT_DeviceType_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000191"/>
          <Object index="1001" name="ERR_ErrorRegister_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="optional" defaultValue="0"/>
          <Object index="1006" name="NMT_CycleLen_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="400"/>
          <Object index="1018" name="NMT_IdentityObject_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="4"/>
            <SubObject subIndex="01" name="VendorId_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0xFFFF0015"/>
            <SubObject subIndex="02" name="ProductCode_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000002"/>
            <SubObject subIndex="03" name="RevisionNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="000000001"/>
            <SubObject subIndex="04" name="SerialNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
          </Object>
          <Object index="1020" name="CFM_VerifyConfiguration_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2"/>
            <SubObject subIndex="01" name="ConfDate_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x00000000" actualValue="13265"/>
            <SubObject subIndex="02" name="ConfTime_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x00000000" actualValue="45463000"/>
          </Object>
          <Object index="1030" name="NMT_InterfaceGroup_0h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="9"/>
            <SubObject subIndex="01" name="InterfaceIndex_U16" objectType="7" dataType="0006" accessType="ro" PDOmapping="no" defaultValue="1"/>
            <SubObject subIndex="02" name="InterfaceDescription_VSTR" objectType="7" dataType="0009" accessType="const" PDOmapping="no" defaultValue="Interface 1"/>
            <SubObject subIndex="03" name="InterfaceType_U8" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="6"/>
            <SubObject subIndex="04" name="InterfaceMtu_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1500"/>
            <SubObject subIndex="05" name="InterfacePhysAddress_OSTR" objectType="7" dataType="000A" accessType="const" PDOmapping="no"/>
            <SubObject subIndex="06" name="InterfaceName_VSTR" objectType="7" dataType="0009" accessType="ro" PDOmapping="no" defaultValue="Interface 1"/>
            <SubObject subIndex="07" name="InterfaceOperStatus_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="1"/>
            <SubObject subIndex="08" name="InterfaceAdminState_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="1"/>
            <SubObject subIndex="09" name="Valid_BOOL" objectType="7" dataType="0001" accessType="rw" PDOmapping="no" defaultValue="true"/>
          </Object>
          <Object index="1300" name="SDO_SequLayerTimeout_U32" objectType="7" PDOmapping="no" accessType="rw" dataType="0007" defaultValue="15000"/>
          <Object index="1400" name="PDO_RxCommParam_00h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1600" name="PDO_RxMappParam_00h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x004000000000200A"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x004000400000200B"/>
          </Object>
          <Object index="1800" name="PDO_TxCommParam_00h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1A00" name="PDO_TxMappParam_00h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0x9"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040000000002001"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040004000002002"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040008000002003"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x004000C000002004"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040010000002005"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040014000002006"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040018000002007"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x004001C000002008"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0040020000002009"/>
          </Object>
          <Object index="1C0B" name="DLL_CNLossSoC_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="3"/>
            <SubObject subIndex="01" name="CumulativeCnt_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no"/>
            <SubObject subIndex="02" name="ThresholdCnt_U32" objectType="7" dataType="0007" accessType="ro" PDOmapping="no"/>
            <SubObject subIndex="03" name="Threshold_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="15" actualValue="0x50"/>
          </Object>
          <Object index="1C0F" name="DLL_CNCRCError_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="3"/>
            <SubObject subIndex="01" name="CumulativeCnt_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no"/>
            <SubObject subIndex="02" name="ThresholdCnt_U32" objectType="7" dataType="0007" accessType="ro" PDOmapping="no"/>
            <SubObject subIndex="03" name="Threshold_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="15"/>
          </Object>
          <Object index="1C14" name="DLL_CNLossOfSocTolerance_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="100000"/>
          <Object index="1F82" name="NMT_FeatureFlags_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000005"/>
          <Object index="1F83" name="NMT_EPLVersion_U8" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="0x20"/>
          <Object index="1F8C" name="NMT_CurrNMTState_U8" objectType="7" dataType="0005" accessType="ro"/>
          <Object index="1F93" name="NMT_EPLNodeID_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no"/>
            <SubObject subIndex="02" name="NodeIDByHW_BOOL" objectType="7" dataType="0001" accessType="ro" PDOmapping="no" defaultValue="true"/>
          </Object>
          <Object index="1F98" name="NMT_CycleTiming_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="8"/>
            <SubObject subIndex="01" name="IsochrTxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1490"/>
            <SubObject subIndex="02" name="IsochrRxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="1490"/>
            <SubObject subIndex="03" name="PResMaxLatency_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="2000"/>
            <SubObject subIndex="04" name="PReqActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36"/>
            <SubObject subIndex="05" name="PResActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36" actualValue="0x48"/>
            <SubObject subIndex="06" name="ASndMaxLatency_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="2000"/>
            <SubObject subIndex="07" name="MultiplCycleCnt_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="08" name="AsyncMTU_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="300"/>
          </Object>
          <Object index="1F99" name="NMT_CNBasicEthernetTimeout_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="5000000"/>
          <Object index="1F9E" name="NMT_ResetCmd_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="255"/>

          <!-- Manufacturer Specific Profile Area (0x2000 - 0x5FFF) -->
          <Object index="2001" name="mm_x_pos1" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2002" name="mm_y_pos2" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2003" name="mm_z_pos3" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2004" name="mm_x_orient4" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2005" name="mm_y_orient5" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2006" name="mm_z_orient6" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2007" name="mm_w_orient7" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2008" name="odom_lwheel14" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="2009" name="odom_rwheel15" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="200A" name="cmdvel_lwheel1" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <Object index="200B" name="cmdvel_rwheel2" objectType="7" dataType="0015" accessType="rw" PDOmapping="default"/>
          <!-- Standardised Device Profile Area (0x6000 - 0x9FFF) -->
        </ObjectList>
      </ApplicationLayers>
      <TransportLayers/>
      <NetworkManagement>
        <GeneralFeatures DLLFeatureMN="false" NMTBootTimeNotActive="3000000" NMTCycleTimeMin="0" NMTCycleTimeMax="4294967295" NMTErrorEntries="2" NWLIPSupport="false" SDOServer="true" SDOMaxConnections="1" SDOMaxParallelConnections="1" SDOCmdWriteAllByIndex="false" SDOCmdReadAllByIndex="false" SDOCmdWriteByName="false" SDOCmdReadByName="false" SDOCmdWriteMultParam="false" NMTFlushArpEntry="false" NMTNetHostNameSet="false" PDORPDOChannels="1" PDORPDOChannelObjects="2" PDOSelfReceipt="false" PDOTPDOChannelObjects="9"/>
        <CNFeatures DLLCNFeatureMultiplex="false" DLLCNPResChaining="false" NMTCNSoC2PReq="0"/>
        <Diagnostic/>
      </NetworkManagement>
    </ProfileBody>
  </ISO15745Profile>
</ISO15745ProfileContainer>