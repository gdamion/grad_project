dev_id = hex2dec('00000002');
vendor_id = 'FFFF0015';

revision_num='00000001';
serial_num='00000000';

verify_conf_date= '00000000';
verify_conf_time= '00000000';

fflags = bin2dec('00000000000000000000000000000101');       
mtu=300;

RespTime = 2000; %Time between PReq and PRes (us)
DeviceType = '00000191';

PDOSize = 36;

EPLVersion = '20';    %EPL 2.0
Reserve0='00';
FeatureFlags =  dec2hex(fflags,8);   %Only isochronous communication
MTU = dec2hex(mtu,4);
PollInSize = dec2hex(PDOSize,4);
PollOutSize = dec2hex(PDOSize,4);
ResponseTime = dec2hex(RespTime,8);
Reserve1 = dec2hex(0,4);
devtype = DeviceType;
VendorID = vendor_id;
ProductCode = dec2hex(dev_id,8);
RevisionNumber = revision_num;
SerialNumber = serial_num;
VendorSpecificExtension1 = '0000000000000000';
VerifyConfigDate = verify_conf_date;
VerifyConfigTime = verify_conf_time;
AppSwDate = '00000000';
AppSwTime = '00000000';
IPAddress = '00000000';
SubnetMask = '00000000'; 
DefaultGateway = '00000000'; 
Hostname = char('0'.*ones(1,32*2));
VendorSpecificExtension2 = char('0'.*ones(1,48*2));

ires_mem = [rvs(EPLVersion) rvs(Reserve0) rvs(FeatureFlags) rvs(MTU) rvs(PollInSize) rvs(PollOutSize) ...
            rvs(ResponseTime) rvs(Reserve1) rvs(devtype) rvs(VendorID) rvs(ProductCode) rvs(RevisionNumber)...
            rvs(SerialNumber) rvs(VendorSpecificExtension1) rvs(VerifyConfigDate) rvs(VerifyConfigTime) ...
            rvs(AppSwDate) rvs(AppSwTime) rvs(IPAddress) rvs(SubnetMask) rvs(DefaultGateway) rvs(Hostname)...
            rvs(VendorSpecificExtension2)];

f=fopen('../iresp.hex','w+');
for i=1:2:length(ires_mem);
%  fprintf(f,'   response_mem[%i] = 8''h%s;\n',floor(i/2),ires_mem(i:i+1));
  fprintf(f,'%s\n',ires_mem(i:i+1));
end
for i=length(ires_mem)/2:1:254;
  fprintf(f,'00\n');
end
fprintf(f,'00');
fclose(f);