function [pdo_str, n_offset] = pdo2str (pdo_struct, o_offset)
  switch (hex2dec(pdo_struct.type))
        case {1,2,5} 
          size = 1;  
        case {3,6}
          size = 2;  
        case {16,22}
          size = 3;
        case {4,7,8}
            size = 4;  
        case {18,24}
            size = 5;
        case {19,25}
            size = 6;
        case {20,26}
            size = 7;
        case {11,17,21,27}
            size = 8;
  endswitch

  index    = dec2hex(hex2dec(pdo_struct.index),4);
  subindex = dec2hex(0,2);
  res      = dec2hex(0,2);
  offset   = dec2hex(o_offset*8,4);
  len      = dec2hex(size*8,4);
  n_offset = o_offset + size;
  pdo_str = [len, offset, res, subindex, index];

endfunction
