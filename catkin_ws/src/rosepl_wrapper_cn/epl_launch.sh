#!/usr/bin/env bash

cd /home/al/Code/catkin_ws/devel/lib/rosepl_wrapper_cn
./wrapper & echo $! > ~/dev/ros_wrapper.pid
sleep 1
cd /home/al/Code/diploma/EPL_ROS/openPOWERLINK_V2/apps/demo_cn_console_my/build/linux
sudo ./demo_cn_console
