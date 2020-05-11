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

# Run rosepl_wrapper_mn node
cd /home/al/grad_project/catkin_ws/devel/lib/rosepl_wrapper_mn
./rosepl_wrapper_mn_node & MN_WRAPPER_PID=$!
# echo $MN_WRAPPER_PID > ~/grad_project/dev/ros_wrapper.pid

sleep 1

# Run rosepl_mn_console
cd /home/al/grad_project/openPOWERLINK_V2/apps/rosepl_mn_console/build/linux
echo $MN_WRAPPER_PID
sudo ./rosepl_mn_console -w $MN_WRAPPER_PID -c ../../mnobd_new2.cdc
