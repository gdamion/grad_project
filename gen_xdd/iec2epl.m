function [epl_type] = iec2epl(iec_type)
  switch (lower(iec_type))
    case 'bool'
      epl_type = '0001';
    case 'sint'
      epl_type = '0002';
    case 'int'
      epl_type = '0003';
    case 'dint'
      epl_type = '0004';
    case 'usint'
      epl_type = '0005';
    case 'uint'
      epl_type = '0006';
    case 'udint'
      epl_type = '0007';
    case 'real'
      epl_type = '0008';
    case 'lreal'
      epl_type = '0011';
    otherwise
      epl_type = iec_type;
  endswitch
end