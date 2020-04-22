DevName = 'Testbench';        %Имя устройства в XDD
Inputs=[                      %Входы со стороны PLC
        {'DI1' 'BOOL'};
        {'DI2' 'BOOL'};
        {'InBigInt' 'DINT'};
        {'InReal1' 'REAL'}
        {'InReal2' 'REAL'}
        {'InReal3' 'REAL'}
        {'InReal4' 'REAL'}
        {'InReal4' 'REAL'}
        {'InReal5' 'REAL'}
        {'InReal6' 'REAL'}
        {'InReal7' 'REAL'}
        {'InReal8' 'REAL'}
        {'InReal9' 'REAL'}
        {'InReal10' 'REAL'}
        {'InReal11' 'REAL'}
        {'InReal12' 'REAL'}
        {'InReal13' 'REAL'}
        {'InReal14' 'REAL'}
       ];

Outputs=[                     %Выходы со стороны PLC
          {'DO1' 'BOOL'};
          {'OutInt1' 'DINT'};
          {'OutInt2' 'DINT'};
          {'OutInt3' 'DINT'};
          {'OutInt4' 'DINT'};
          {'OutInt5' 'DINT'};
          {'OutInt6' 'DINT'};
          {'OutInt7' 'DINT'};
          {'OutInt8' 'DINT'};
          {'OutInt9' 'DINT'};
          {'OutInt10' 'DINT'};
          {'OutInt11' 'DINT'};
          {'OutInt12' 'DINT'};
          {'OutInt13' 'DINT'};
          {'OutInt14' 'DINT'};
          {'OutInt15' 'DINT'};
          {'OutInt16' 'DINT'};
          {'OutInt17' 'DINT'};
          {'OutInt18' 'DINT'};
          {'OutInt19' 'DINT'};
          
 %         {'OutBigReal' 'LREAL'};  //Почему-то нее видется
        ];

xdd_gen_app(DevName,Inputs,Outputs);