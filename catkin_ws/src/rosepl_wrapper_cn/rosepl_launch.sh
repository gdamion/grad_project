#!/usr/bin/env bash

# Run rosmaster
res=$(($(rostopic list | wc -l)))
if (($res > 0))
then
    echo "rosmaster in already running"
else
    roscore &
fi

sleep 5

# Run rosepl_wrapper_cn node
cd /home/al/grad_project/catkin_ws/devel/lib/rosepl_wrapper_cn
./rosepl_wrapper_cn_node & CN_WRAPPER_PID=$!
# echo $CN_WRAPPER_PID > ~/grad_project/dev/ros_wrapper.pid

sleep 1

# Run rosepl_cn_console
cd /home/al/grad_project/openPOWERLINK_V2/apps/rosepl_cn_console/build/linux
echo $CN_WRAPPER_PID
sudo ./rosepl_cn_console -w $CN_WRAPPER_PID
