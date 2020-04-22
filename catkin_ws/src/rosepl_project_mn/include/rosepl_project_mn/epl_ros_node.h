/*
*
*    This file was generated with EPL ROS generator
*    Generated on: Fri Apr 17 18:15:22 2020
*    Version: 0.5.0
*    License: BSD
*
*/

#ifndef epl_ros_node_H
#define epl_ros_node_H

#include "ros/ros.h"
#include "std_msgs/String.h"

#include <signal.h>
#include <time.h>
#include <stdio.h>
#include <cstring>

#include <rosepl_wrapper_mn/SignalSync.h>
#include <rosepl_wrapper_mn/SdoTransfer.h>
#include <rosepl_project_mn/MemoryAPI.h>
#include <rosepl_project_mn/PrioritySetter.h>

#include <rosepl_project_mn/PowerlinkInStruct.h>
#include <rosepl_project_mn/PowerlinkOutStruct.h>

#include <rosepl_project_mn/generated_wrapper.h>
#include <rosepl_project_mn/user_app.h>

extern POWERLINK_IN powerlink_in_var;
extern POWERLINK_OUT powerlink_out_var;

#endif
