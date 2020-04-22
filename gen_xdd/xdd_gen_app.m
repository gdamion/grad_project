function xdd_gen_app(DevName,Inputs,Outputs)
  base_addr=hex2dec('2001');
  tpdos=[];
  for i=1:size(Inputs,1)
    tpdos(i).name=cell2mat(Inputs(i,1));
    tpdos(i).type=iec2epl(cell2mat(Inputs(i,2)));
    tpdos(i).index=dec2hex(base_addr,4);
    base_addr=base_addr+1;
  end

  rpdos=[];
  for i=1:size(Outputs,1)
    rpdos(i).name=cell2mat(Outputs(i,1));
    rpdos(i).type=iec2epl(cell2mat(Outputs(i,2)));
    rpdos(i).index=dec2hex(base_addr,4);
    base_addr=base_addr+1;
  end

  fname = strrep(DevName,' ','_');
  xdd_generator_sim([DevName 'PLC'],[fname 'PLC.xdd'],tpdos,rpdos);
  xdd_generator_sim([DevName 'SIM'],[fname 'SIM.xdd'],rpdos,tpdos);
endfunction