function [rev_str] = rvs(s)
  rev_str=s;
  l=length(s);
  for i=l:-2:1;
    rev_str(l-i+1:l-i+2)=s(i-1:i);
  endfor
endfunction