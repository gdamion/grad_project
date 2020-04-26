DevName = 'ROS_CN';        %Имя устройства в XDD
Inputs=[                      %Входы со стороны PLC
        {'mm_x_pos1' 'REAL64'}
        {'mm_y_pos2' 'REAL64'}
        {'mm_z_pos3' 'REAL64'} 
        {'mm_x_orient4' 'REAL64'}
        {'mm_y_orient5' 'REAL64'}
        {'mm_z_orient6' 'REAL64'}
        {'mm_w_orient7' 'REAL64'} 
        {'mm_x_linear8' 'REAL64'}
        {'mm_y_linear9' 'REAL64'}
        {'mm_z_linear10' 'REAL64'} 
        {'mm_x_angular11' 'REAL64'}
        {'mm_y_angular12' 'REAL64'}
        {'mm_z_angular13' 'REAL64'}

        {'odom_x_pos14' 'REAL64'}
        {'odom_y_pos15' 'REAL64'}
        {'odom_z_pos16' 'REAL64'} 
        {'odom_x_orient17' 'REAL64'}
        {'odom_y_orient18' 'REAL64'}
        {'odom_z_orient19' 'REAL64'}
        {'odom_w_orient20' 'REAL64'} 
        {'odom_x_linear21' 'REAL64'}
        {'odom_y_linear22' 'REAL64'}
        {'odom_z_linear23' 'REAL64'} 
        {'odom_x_angular24' 'REAL64'}
        {'odom_y_angular25' 'REAL64'}
        {'odom_z_angular26' 'REAL64'}
       ];

Outputs=[                     %Выходы со стороны PLC
        {'cmdvel_x_linear1' 'REAL64'}
        {'cmdvel_y_linear2' 'REAL64'}
        {'cmdvel_z_linear3' 'REAL64'} 
        {'cmdvel_x_angular4' 'REAL64'}
        {'cmdvel_y_angular5' 'REAL64'}
        {'cmdvel_z_angular6' 'REAL64'}
        ];

xdd_gen_app(DevName,Inputs,Outputs);