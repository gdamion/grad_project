DevName = 'MyBlock';        %Имя устройства в XDD
Inputs=[                      %Входы со стороны PLC
        {'DI1' 'BOOL'};
        {'DI2' 'BOOL'};
       ];

Outputs=[                     %Выходы со стороны PLC
         
        ];

xdd_gen_app(DevName,Inputs,Outputs);