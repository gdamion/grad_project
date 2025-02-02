<?xml version="1.0" encoding="UTF-8"?>
<ISO15745ProfileContainer xmlns="http://www.ethernet-powerlink.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ethernet-powerlink.org Powerlink_Main.xsd">
  <ISO15745Profile>
    <ProfileHeader>
      <ProfileIdentification>Powerlink_Device_Profile</ProfileIdentification>
      <ProfileRevision>1</ProfileRevision>
      <ProfileName>openPOWERLINK CN device profile</ProfileName>
      <ProfileSource/>
      <ProfileClassID>Device</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>4</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>Powerlink</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_Device_Powerlink" fileName="openPOWERLINK_CN.xdd" fileCreator="Kalycito Infotech Pvt Ltd" fileCreationDate="2009-09-18" fileCreationTime="15:50:00+01:00" fileModificationDate="2010-09-30" fileModificationTime="15:50:00+01:00" fileModifiedBy="Kalycito Infotech Pvt Ltd" fileVersion="01.00" supportedLanguages="en">
      <DeviceIdentity>
        <vendorName>Unknown vendor</vendorName>
        <vendorID>0x00000000</vendorID>
        <productName>openPOWERLINK device</productName>
        <version versionType="HW">1.00</version>
        <version versionType="SW">1.7</version>
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
      <ProfileName>openPOWERLINK CN communication profile</ProfileName>
      <ProfileSource/>
      <ProfileClassID>CommunicationNetwork</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>4</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>Powerlink</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_CommunicationNetwork_Powerlink" fileName="openPOWERLINK_CN.xdd" fileCreator="Kalycito Infotech Pvt Ltd" fileCreationDate="2009-09-18" fileCreationTime="15:50:00+01:00" fileModificationDate="2010-09-30" fileModificationTime="15:50:00+01:00" fileModifiedBy="Kalycito Infotech Pvt Ltd" fileVersion="01.00" supportedLanguages="en">
      <ApplicationLayers>
        <identity>
          <vendorID>0x00000000</vendorID>
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
          <Object index="1000" name="NMT_DeviceType_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
          <Object index="1001" name="ERR_ErrorRegister_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="optional" defaultValue="0"/>
          <Object index="1006" name="NMT_CycleLen_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="50000" actualValue="400"/>
          <Object index="1008" name="NMT_ManufactDevName_VS" objectType="7" dataType="0009" accessType="const" defaultValue="openPOWERLINK device"/>
          <Object index="1009" name="NMT_ManufactHwVers_VS" objectType="7" dataType="0009" accessType="const" defaultValue="1.00"/>
          <Object index="100A" name="NMT_ManufactSwVers_VS" objectType="7" dataType="0009" accessType="const"/>
          <Object index="1018" name="NMT_IdentityObject_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="4"/>
            <SubObject subIndex="01" name="VendorId_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
            <SubObject subIndex="02" name="ProductCode_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
            <SubObject subIndex="03" name="RevisionNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
            <SubObject subIndex="04" name="SerialNo_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x00000000"/>
          </Object>
          <Object index="1020" name="CFM_VerifyConfiguration_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2"/>
            <SubObject subIndex="01" name="ConfDate_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0" actualValue="13278"/>
            <SubObject subIndex="02" name="ConfTime_U32" objectType="7" dataType="0007" accessType="rw" defaultValue="0" actualValue="57625000"/>
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
            <SubObject subIndex="09" name="Valid_BOOL" objectType="7" dataType="0001" accessType="rw" PDOmapping="no" defaultValue="false"/>
          </Object>
          <Object index="1050" name="NMT_RelativeLatencyDiff_AU32" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="ro" defaultValue="254"/>
            <SubObject subIndex="01" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="02" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="03" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="04" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="05" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="06" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="07" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="08" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="09" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="0F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="10" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="11" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="12" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="13" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="14" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="15" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="16" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="17" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="18" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="19" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="1F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="20" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="21" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="22" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="23" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="24" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="25" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="26" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="27" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="28" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="29" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="2F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="30" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="31" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="32" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="33" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="34" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="35" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="36" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="37" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="38" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="39" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="3F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="40" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="41" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="42" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="43" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="44" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="45" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="46" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="47" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="48" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="49" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="4F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="50" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="51" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="52" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="53" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="54" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="55" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="56" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="57" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="58" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="59" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="5F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="60" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="61" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="62" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="63" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="64" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="65" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="66" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="67" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="68" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="69" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="6F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="70" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="71" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="72" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="73" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="74" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="75" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="76" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="77" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="78" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="79" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="7F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="80" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="81" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="82" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="83" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="84" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="85" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="86" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="87" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="88" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="89" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="8F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="90" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="91" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="92" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="93" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="94" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="95" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="96" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="97" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="98" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="99" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9A" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9B" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9C" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9D" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9E" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="9F" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="A9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AD" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="AF" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="B9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BD" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="BF" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="C9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CD" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="CF" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="D9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DD" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="DF" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="E9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="EA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="EB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="EC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="ED" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="EE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="EF" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F0" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F1" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F2" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F3" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F4" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F5" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F6" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F7" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F8" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="F9" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="FA" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="FB" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="FC" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="FD" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
            <SubObject subIndex="FE" name="RelativeLatencyDiff" objectType="7" dataType="0007" accessType="ro" defaultValue="0"/>
          </Object>
          <Object index="1300" name="SDO_SequLayerTimeout_U32" objectType="7" PDOmapping="no" accessType="rw" dataType="0007" defaultValue="5000"/>
          <Object index="1400" name="PDO_RxCommParam_00h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2" PDOmapping="no"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
          </Object>
          <Object index="1401" name="PDO_RxCommParam_01h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2" PDOmapping="no"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
          </Object>
          <Object index="1402" name="PDO_RxCommParam_02h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2" PDOmapping="no"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
          </Object>
          <Object index="1600" name="PDO_RxMappParam_00h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no" actualValue="2"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x004000000000200A"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x004000400000200B"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="11" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="12" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="13" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="14" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="15" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="16" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="17" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="18" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="19" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1601" name="PDO_RxMappParam_01h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="11" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="12" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="13" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="14" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="15" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="16" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="17" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="18" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="19" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1602" name="PDO_RxMappParam_02h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="11" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="12" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="13" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="14" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="15" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="16" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="17" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="18" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="19" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1800" name="PDO_TxCommParam_00h_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" defaultValue="2" PDOmapping="no"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
            <SubObject subIndex="02" name="MappingVersion_U8" objectType="7" dataType="0005" accessType="rw" defaultValue="0" PDOmapping="no"/>
          </Object>
          <Object index="1A00" name="PDO_TxMappParam_00h_AU64" objectType="8">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="9"/>
            <SubObject subIndex="01" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040000000002001"/>
            <SubObject subIndex="02" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040004000002002"/>
            <SubObject subIndex="03" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040008000002003"/>
            <SubObject subIndex="04" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x004000C000002004"/>
            <SubObject subIndex="05" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040010000002005"/>
            <SubObject subIndex="06" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040014000002006"/>
            <SubObject subIndex="07" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040018000002007"/>
            <SubObject subIndex="08" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x004001C000002008"/>
            <SubObject subIndex="09" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0" actualValue="0x0040020000002009"/>
            <SubObject subIndex="0A" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0B" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0C" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0D" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0E" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="0F" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="10" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="11" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="12" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="13" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="14" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="15" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="16" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="17" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="18" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="19" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
            <SubObject subIndex="1A" name="ObjectMapping" objectType="7" dataType="001B" accessType="rw" PDOmapping="no" defaultValue="0"/>
          </Object>
          <Object index="1C0B" name="DLL_CNLossSoC_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="3"/>
            <SubObject subIndex="01" name="CumulativeCnt_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no"/>
            <SubObject subIndex="02" name="ThresholdCnt_U32" objectType="7" dataType="0007" accessType="ro" PDOmapping="no"/>
            <SubObject subIndex="03" name="Threshold_U32" objectType="7" dataType="0007" accessType="rw" PDOmapping="no" defaultValue="15" actualValue="0x50"/>
          </Object>
          <Object index="1C0D" name="DLL_CNLossPReq_REC" objectType="9">
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
          <Object index="1F81" name="NMT_NodeAssignment_AU32" objectType="8" dataType="0007" subNumber="255">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" defaultValue="254"/>
            <SubObject subIndex="01" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="02" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="03" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="04" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="05" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="06" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="07" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="08" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="09" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="10" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="11" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="12" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="13" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="14" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="15" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="16" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="17" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="18" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="19" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="20" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="21" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="22" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="23" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="24" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="25" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="26" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="27" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="28" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="29" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="30" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="31" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="32" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="33" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="34" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="35" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="36" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="37" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="38" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="39" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="40" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="41" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="42" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="43" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="44" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="45" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="46" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="47" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="48" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="49" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="50" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="51" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="52" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="53" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="54" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="55" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="56" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="57" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="58" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="59" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="60" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="61" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="62" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="63" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="64" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="65" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="66" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="67" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="68" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="69" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="70" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="71" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="72" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="73" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="74" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="75" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="76" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="77" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="78" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="79" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="80" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="81" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="82" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="83" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="84" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="85" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="86" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="87" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="88" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="89" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="90" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="91" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="92" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="93" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="94" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="95" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="96" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="97" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="98" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="99" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9A" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9B" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9C" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9D" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9E" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9F" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AD" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AF" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BD" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BF" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CD" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CF" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DD" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DF" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="ED" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EF" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F0" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F1" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F2" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F3" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F4" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F5" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F6" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F7" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F8" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F9" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FA" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FB" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FC" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FD" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FE" name="NodeAssignment" objectType="7" dataType="0007" accessType="rw" defaultValue="0"/>
          </Object>
          <Object index="1F82" name="NMT_FeatureFlags_U32" objectType="7" dataType="0007" accessType="const" PDOmapping="no" defaultValue="0x40245"/>
          <Object index="1F83" name="NMT_EPLVersion_U8" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="0x20"/>
          <Object index="1F8C" name="NMT_CurrNMTState_U8" objectType="7" dataType="0005" PDOmapping="optional" accessType="ro"/>
          <Object index="1F8D" name="NMT_PResPayloadLimitList_AU16" objectType="8" dataType="0006" subNumber="255">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="rw" defaultValue="254"/>
            <SubObject subIndex="01" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="02" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="03" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="04" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="05" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="06" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="07" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="08" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="09" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="0F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="10" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="11" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="12" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="13" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="14" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="15" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="16" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="17" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="18" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="19" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="1F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="20" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="21" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="22" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="23" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="24" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="25" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="26" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="27" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="28" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="29" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="2F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="30" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="31" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="32" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="33" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="34" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="35" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="36" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="37" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="38" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="39" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="3F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="40" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="41" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="42" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="43" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="44" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="45" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="46" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="47" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="48" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="49" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="4F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="50" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="51" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="52" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="53" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="54" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="55" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="56" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="57" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="58" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="59" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="5F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="60" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="61" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="62" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="63" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="64" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="65" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="66" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="67" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="68" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="69" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="6F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="70" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="71" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="72" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="73" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="74" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="75" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="76" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="77" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="78" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="79" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="7F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="80" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="81" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="82" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="83" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="84" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="85" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="86" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="87" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="88" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="89" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="8F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="90" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="91" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="92" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="93" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="94" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="95" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="96" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="97" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="98" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="99" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9A" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9B" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9C" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9D" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9E" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="9F" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="A9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AD" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="AF" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="B9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BD" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="BF" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="C9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CD" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="CF" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="D9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DD" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="DF" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="E9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="ED" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="EF" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F0" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F1" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F2" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F3" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F4" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F5" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F6" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F7" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F8" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="F9" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FA" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FB" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FC" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FD" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
            <SubObject subIndex="FE" name="PResPayloadLimit" objectType="7" dataType="0006" accessType="rw" defaultValue="0"/>
          </Object>
          <Object index="1F93" name="NMT_EPLNodeID_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="2"/>
            <SubObject subIndex="01" name="NodeID_U8" objectType="7" dataType="0005" accessType="ro" PDOmapping="no"/>
            <SubObject subIndex="02" name="NodeIDByHW_BOOL" objectType="7" dataType="0001" accessType="ro" PDOmapping="no"/>
          </Object>
          <Object index="1F98" name="NMT_CycleTiming_REC" objectType="9">
            <SubObject subIndex="00" name="NumberOfEntries" objectType="7" dataType="0005" accessType="const" PDOmapping="no" defaultValue="8"/>
            <SubObject subIndex="01" name="IsochrTxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="256"/>
            <SubObject subIndex="02" name="IsochrRxMaxPayload_U16" objectType="7" dataType="0006" accessType="const" PDOmapping="no" defaultValue="256"/>
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
          <Object index="2001" name="mm_x_pos1" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2002" name="mm_y_pos2" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2003" name="mm_z_pos3" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2004" name="mm_x_orient4" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2005" name="mm_y_orient5" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2006" name="mm_z_orient6" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2007" name="mm_w_orient7" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2008" name="odom_lwheel14" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="2009" name="odom_rwheel15" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="200A" name="cmdvel_lwheel1" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
          <Object index="200B" name="cmdvel_rwheel2" objectType="7" dataType="0015" accessType="rw" PDOmapping="optional"/>
        </ObjectList>
      </ApplicationLayers>
      <TransportLayers/>
      <NetworkManagement>
        <GeneralFeatures DLLFeatureMN="false" NMTBootTimeNotActive="3000000" NMTCycleTimeMin="400" NMTCycleTimeMax="60000" NMTErrorEntries="2" NWLIPSupport="false" SDOServer="true" SDOMaxConnections="2" SDOMaxParallelConnections="2" SDOCmdWriteAllByIndex="false" SDOCmdReadAllByIndex="false" SDOCmdWriteByName="false" SDOCmdReadByName="false" SDOCmdWriteMultParam="false" NMTFlushArpEntry="false" NMTNetHostNameSet="false" PDORPDOChannels="3" PDORPDOChannelObjects="25" PDORPDOOverallObjects="75" PDOSelfReceipt="false" PDOTPDOChannelObjects="26" PDOTPDOOverallObjects="26"/>
        <CNFeatures DLLCNFeatureMultiplex="true" DLLCNPResChaining="true" NMTCNSoC2PReq="0"/>
        <Diagnostic/>
      </NetworkManagement>
    </ProfileBody>
  </ISO15745Profile>
</ISO15745ProfileContainer>
