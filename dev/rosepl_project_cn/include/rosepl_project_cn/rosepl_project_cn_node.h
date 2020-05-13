/*
*
*    This file was generated with EPL ROS generator
*    Generated on: Wed Apr 22 13:30:05 2020
*    Version: 0.5.0
*    License: BSD
*
*/

#ifndef rosepl_project_cn_node_H
#define rosepl_project_cn_node_H

#include "ros/ros.h"
#include "std_msgs/String.h"

#include <signal.h>
#include <time.h>
#include <stdio.h>
#include <cstring>

#define SDO_ACTION_LOCK 0
#define SDO_ACTION_READ 1
#define SDO_ACTION_WRITE 2
#define SDO_ACTION_CHECK 3
#define SDO_ACTION_UNLOCK 4

#include <rosepl_project_cn/PrioritySetter.h>

#include <rosepl_wrapper_cn/SignalSync.h>
#include <rosepl_wrapper_cn/SdoTransfer.h>

#include <rosepl_wrapper_cn/PowerlinkIn.h>
#include <rosepl_wrapper_cn/PowerlinkOut.h>

#include <rosepl_project_cn/user_app.h>

extern rosepl_wrapper_cn::PowerlinkOut::ConstPtr powerlink_out_msg;

extern rosepl_wrapper_cn::PowerlinkIn powerlink_in_msg;

#endif
