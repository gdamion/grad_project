function [epl_type] = iec2epl(iec_type)
  switch (lower(iec_type))
    case 'boolean'
      epl_type = '0001';
    case 'integer8'
      epl_type = '0002';
    case 'integer16'
      epl_type = '0003';
    case 'integer32'
      epl_type = '0004';
    case 'unsigned8'
      epl_type = '0005';
    case 'unsigned16'
      epl_type = '0006';
    case 'unsigned32'
      epl_type = '0007';
    case 'real32'
      epl_type = '0008';
    case 'visible_string'
      epl_type = '0009';
    case 'integer24'
      epl_type = '0010';
    case 'real64'
      epl_type = '0011';
    case 'integer40'
      epl_type = '0012';
    case 'integer48'
      epl_type = '0013';
    case 'integer56'
      epl_type = '0014';
    case 'integer64'
      epl_type = '0015';
    case 'octet_string'
      epl_type = '000A';
    case 'unicode_string'
      epl_type = '000B';
    case 'time_of_day'
      epl_type = '000C';
    case 'time_diff'
      epl_type = '000D';
    case 'domain'
      epl_type = '0016';
    case 'unsigned24'
      epl_type = '0018';
    case 'unsigned40'
      epl_type = '0019';
    case 'unsigned48'
      epl_type = '001A';
    case 'unsigned56'
      epl_type = '001B';
    case 'unsigned64'
      epl_type = '0401';
    case 'mac_address'
      epl_type = '0402';
    case 'ip_address'
      epl_type = '0403';
    otherwise
      epl_type = iec_type;
  endswitch
end