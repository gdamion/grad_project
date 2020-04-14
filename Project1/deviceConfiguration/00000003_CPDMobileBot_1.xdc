<?xml version="1.0" encoding="UTF-8"?>
<!--
*******************************************************************************

 Ethernet POWERLINK XML device description

*******************************************************************************

 File:        00000003_CPDMobileBot.xdd
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
    <ProfileBody xsi:type="ProfileBody_Device_Powerlink" fileName="00000003_CPDMobileBot.xdd" fileCreator="FPGA Simple CN XDD Generator" fileCreationDate="2019-06-10" fileVersion="01.00" supportedLanguages="en">
      <DeviceIdentity>
        <vendorName>Russian Technological University (MIREA)</vendorName>
        <vendorID>0xFFFF0015</vendorID>
        <productName>CPDMobileBot</productName>
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
      <ProfileName>CPDMobileBot communication profile</ProfileName>
      <ProfileSource/>
      <ProfileClassID>CommunicationNetwork</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>4</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>Powerlink</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_CommunicationNetwork_Powerlink" fileName="00000003_CPDMobileBot.xdd" fileCreator="Ethernet POWERLINK Standardization Group" fileCreationDate="2019-06-10" fileCreationTime="22:19:28" fileModificationDate="2019-06-10" fileModificationTime="22:19:28" fileModifiedBy="Ethernet POWERLINK Standardization Group" fileVersion="01.00" supportedLanguages="en">
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
          <Object index="1006" name="NMT_CycleLen_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="0"/>
          <Object index="1018" name="NMT_IdentityObject_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="4"/>
            <SubObject subIndex="01" name="VendorId_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0xFFFF0015"/>
            <SubObject subIndex="02" name="ProductCode_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000003"/>
            <SubObject subIndex="03" name="RevisionNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="000000001"/>
            <SubObject subIndex="04" name="SerialNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
          </Object>
          <Object index="1020" name="CFM_VerifyConfiguration_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2"/>
            <SubObject subIndex="01" name="ConfDate_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x00000000"/>
            <SubObject subIndex="02" name="ConfTime_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0x00000000"/>
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
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="16"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010000000002001"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010001000002002"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0008002000002003"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0008002800002004"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010003000002005"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010004000002006"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010005000002007"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020006000002008"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010008000002009"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x001000900000200A"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x001000A00000200B"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000800B00000200C"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000800B80000200D"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x001000C00000200E"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002000D00000200F"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002000F000002010"/>
          </Object>
          <Object index="1800" name="PDO_TxCommParam_00h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1A00" name="PDO_TxMappParam_00h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="29"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010000000002101"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010001000002102"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010002000002103"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010003000002104"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010004000002105"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010005000002106"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010006000002107"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010007000002108"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020008000002111"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002000A000002112"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002000C000002113"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002000E000002114"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0008010000002115"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0008010800002116"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010011000002117"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010012000002118"/>
            <SubObject subIndex="11" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020013000002121"/>
            <SubObject subIndex="12" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020015000002122"/>
            <SubObject subIndex="13" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020017000002123"/>
            <SubObject subIndex="14" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020019000002124"/>
            <SubObject subIndex="15" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000801B000002125"/>
            <SubObject subIndex="16" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000801B800002126"/>
            <SubObject subIndex="17" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x001001C000002127"/>
            <SubObject subIndex="18" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x001001D000002128"/>
            <SubObject subIndex="19" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000801E000002131"/>
            <SubObject subIndex="1A" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x000801E800002132"/>
            <SubObject subIndex="1B" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x002001F000002201"/>
            <SubObject subIndex="1C" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0020021000002202"/>
            <SubObject subIndex="1D" name="ObjectMapping" objectType="7" dataType="001B" accessType="ro" PDOmapping="no" defaultValue="0x0010023000002203"/>
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
          <Object index="1F8C" name="NMT_CurrNMTState_U8" objectType="7" dataType="0005" PDOmapping="no" accessType="ro"/>
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
            <SubObject subIndex="04" name="PReqActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36" actualValue="72"/>
            <SubObject subIndex="05" name="PResActPayloadLimit_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="36"/>
            <SubObject subIndex="06" name="ASndMaxLatency_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="2000"/>
            <SubObject subIndex="07" name="MultiplCycleCnt_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="08" name="AsyncMTU_U16" objectType="7" dataType="0006" accessType="rw" PDOmapping="no" defaultValue="300"/>
          </Object>
          <Object index="1F99" name="NMT_CNBasicEthernetTimeout_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="5000000"/>
          <Object index="1F9E" name="NMT_ResetCmd_U8" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="255"/>

          <!-- Manufacturer Specific Profile Area (0x2000 - 0x5FFF) -->
          <Object index="2101" name="vl" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2102" name="vr" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2103" name="sv" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2104" name="sw" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2105" name="svl" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2106" name="svr" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2107" name="ul" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2108" name="ur" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2111" name="Timestamp_L" objectType="7" dataType="0007" accessType="rw" PDOmapping="default"/>
          <Object index="2112" name="X_L" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2113" name="Y_L" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2114" name="Z_L" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2115" name="Flags_L" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2116" name="ID_L" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2117" name="Angle_L" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="2118" name="ETime_L" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="2121" name="Timestamp_R" objectType="7" dataType="0007" accessType="rw" PDOmapping="default"/>
          <Object index="2122" name="X_R" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2123" name="Y_R" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2124" name="Z_R" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2125" name="Flags_R" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2126" name="ID_R" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2127" name="Angle_R" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="2128" name="ETime_R" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="2131" name="Actual_Filter_ID_L" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2132" name="Actual_Filter_ID_R" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2201" name="X_act" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2202" name="Y_act" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2203" name="Angle_act" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2001" name="vl_set" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2002" name="vr_set" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2003" name="mode" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2004" name="resets" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="2005" name="kv" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2006" name="kw" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2007" name="kp" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="2008" name="ki" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2009" name="tm" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="200A" name="t" objectType="7" dataType="0006" accessType="rw" PDOmapping="default"/>
          <Object index="200B" name="s_gain" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="200C" name="F_ID_L" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="200D" name="F_ID_R" objectType="7" dataType="0005" accessType="rw" PDOmapping="default"/>
          <Object index="200E" name="angle_offset" objectType="7" dataType="0003" accessType="rw" PDOmapping="default"/>
          <Object index="200F" name="xs" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <Object index="2010" name="ys" objectType="7" dataType="0004" accessType="rw" PDOmapping="default"/>
          <!-- Standardised Device Profile Area (0x6000 - 0x9FFF) -->
        </ObjectList>
      </ApplicationLayers>
      <TransportLayers/>
      <NetworkManagement>
        <GeneralFeatures DLLFeatureMN="false" NMTBootTimeNotActive="3000000" NMTCycleTimeMin="0" NMTCycleTimeMax="4294967295" NMTErrorEntries="2" NWLIPSupport="false" SDOServer="true" SDOMaxConnections="1" SDOMaxParallelConnections="1" SDOCmdWriteAllByIndex="false" SDOCmdReadAllByIndex="false" SDOCmdWriteByName="false" SDOCmdReadByName="false" SDOCmdWriteMultParam="false" NMTFlushArpEntry="false" NMTNetHostNameSet="false" PDORPDOChannels="1" PDORPDOChannelObjects="16" PDOSelfReceipt="false" PDOTPDOChannelObjects="29"/>
        <CNFeatures DLLCNFeatureMultiplex="false" DLLCNPResChaining="false" NMTCNSoC2PReq="0"/>
        <Diagnostic/>
      </NetworkManagement>
    </ProfileBody>
  </ISO15745Profile>
</ISO15745ProfileContainer>
