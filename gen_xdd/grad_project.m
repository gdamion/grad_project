DevName = 'ROS_CN';        %Имя устройства в XDD
Inputs=[                      %Входы со стороны PLC
        {'mm_x_pos1' 'INTEGER64'}
        {'mm_y_pos2' 'INTEGER64'}
        {'mm_z_pos3' 'INTEGER64'} 
        {'mm_x_orient4' 'INTEGER64'}
        {'mm_y_orient5' 'INTEGER64'}
        {'mm_z_orient6' 'INTEGER64'}
        {'mm_w_orient7' 'INTEGER64'} 
        {'odom_lwheel14' 'INTEGER64'}
        {'odom_rwheel15' 'INTEGER64'}
       ];

Outputs=[                     %Выходы со стороны PLC
        {'cmdvel_lwheel1' 'INTEGER64'}
        {'cmdvel_rwheel2' 'INTEGER64'}
        ];

xdd_gen_app(DevName,Inputs,Outputs);