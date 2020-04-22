DevName = 'ROS_CN';        %Имя устройства в XDD
Inputs=[                      %Входы со стороны PLC
        {'DI1' 'BOOL'}
       ];

Outputs=[                     %Выходы со стороны PLC
          {'DO1' 'BOOL'}
        ];

xdd_gen_app(DevName,Inputs,Outputs);