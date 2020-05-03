/*
*
*	This file was generated with EPL ROS generator
*	Generated on: $TIMESTAMP
*	Version: $VERSION
*	License: $LICENSE
*
*/

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "gazebo_msgs/ModelStates.h"
#include "geometry_msgs/Pose.h"

#include <signal.h>
#include <time.h>
#include <stdio.h>
#include <inttypes.h>

#include <rosepl_wrapper_mn/MemoryAPI.h>
#include <rosepl_wrapper_mn/PrioritySetter.h>

#include <rosepl_wrapper_mn/SignalSync.h>
#include <rosepl_wrapper_mn/SdoTransfer.h>

#include <rosepl_wrapper_mn/generated_wrapper.h>

int init_signal_hooks();
void send_sig(int sig);

void shutdown_handler(int sig);
void oplk_handler(int sig);
bool signal_sync_handler(rosepl_wrapper_mn::SignalSync::Request &req, rosepl_wrapper_mn::SignalSync::Response &res);
bool sdo_transfer_handler(rosepl_wrapper_mn::SdoTransfer::Request &req, rosepl_wrapper_mn::SdoTransfer::Response &res);

void powerlink_in_callback(const rosepl_wrapper_mn::PowerlinkIn::ConstPtr& msg);
void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg);

int pid = getpid();
bool tick;
bool last_tick;
bool can_run_cycle;
bool ready;
list<int> pids;
int sdo_client_pid;
bool sdo_is_busy;

ros::Publisher odom_pub;
ros::Publisher coord_pub;

ros::Subscriber cmd_vel_sub;

int main(int argc, char **argv)
{
	ROS_INFO("-------------------------");
	ROS_INFO("Starting EPL wrapper");

	if (init_signal_hooks())
	{
		return 1;
	}

	if (init_oplk_memory())
	{
		return 1;
	}

	oplk_wrapper_info->pid = pid;

	if (init_ros_memory(pid))
	{
		return 1;
	}

	ready = true;

	ROS_INFO("-------------------------");
	ROS_INFO("Initializing ROS framework");
	ros::init(argc, argv, "rosepl_wrapper_mn", ros::init_options::NoSigintHandler);

	ros::NodeHandle node;

	ros::Publisher powerlink_out_pub = node.advertise<rosepl_wrapper_mn::PowerlinkOut>("PowerlinkOut", 1);
	odom_pub = node.advertise<nav_msgs::Odometry>("odom", 1);
	coord_pub = node.advertise<geometry_msgs::Pose>("coord", 1);

	// ros::Subscriber powerlink_in_sub = node.subscribe("PowerlinkIn", 1, powerlink_in_callback);
	cmd_vel_sub = node.subscribe("cmd_vel", 1, cmd_vel_callback);


	ros::ServiceServer signal_sync_service = node.advertiseService("signalSync", signal_sync_handler);
	ros::ServiceServer sdo_service = node.advertiseService("sdoTransfer", sdo_transfer_handler);

	// set_group_priority(getpgrp());

	// rosepl_wrapper_mn::PowerlinkOut powerlink_out_msg;
	// powerlink_out_msg.pid = pid;
	// powerlink_out_msg.shm_name = powerlink_out.shm_name;
	nav_msgs::Odometry odom_msg;
	geometry_msgs::Pose coord_msg;

	ROS_INFO("-------------------------");
	ROS_INFO("Entering ROS loop");

	while (ros::ok())
	{
		if ((tick == last_tick) || (!can_run_cycle))
		{
			continue;
		}
		can_run_cycle = false;
		// ROS_INFO("Sync flow");
		// get_powerlink_out(&powerlink_out_msg);
		odom_msg.pose.pose.position.x = (double)(oplk_pi_out->odom_lwheel / COEF_FLOAT_POINT);
		odom_msg.pose.pose.position.y = (double)(oplk_pi_out->odom_rwheel / COEF_FLOAT_POINT);

		coord_msg.position.x = (double)(oplk_pi_out->mm_x_pos / COEF_FLOAT_POINT);
		coord_msg.position.y = (double)(oplk_pi_out->mm_y_pos / COEF_FLOAT_POINT);
		coord_msg.position.z = (double)(oplk_pi_out->mm_z_pos / COEF_FLOAT_POINT);
		coord_msg.orientation.x = (double)(oplk_pi_out->mm_x_orient / COEF_FLOAT_POINT);
		coord_msg.orientation.y = (double)(oplk_pi_out->mm_y_orient / COEF_FLOAT_POINT);
		coord_msg.orientation.z = (double)(oplk_pi_out->mm_z_orient / COEF_FLOAT_POINT);
		coord_msg.orientation.w = (double)(oplk_pi_out->mm_w_orient / COEF_FLOAT_POINT);

		// powerlink_out_pub.publish(powerlink_out_msg);
		odom_pub.publish(odom_msg);
		coord_pub.publish(coord_msg);

		ros::spinOnce();
	}

	return 0;
}

void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
	// set_powerlink_in(*msg);
	oplk_pi_in->cmdvel_lwheel = (int64_t)(msg->linear.x * COEF_FLOAT_POINT);
	oplk_pi_in->cmdvel_rwheel = (int64_t)(msg->linear.y * COEF_FLOAT_POINT);

	ROS_INFO("Odom callback: cmdvel_lwheel = %ld | cmdvel_rwheel = %ld",\
		oplk_pi_in->cmdvel_lwheel, oplk_pi_in->cmdvel_rwheel);
}

// void powerlink_in_callback(const rosepl_wrapper_mn::PowerlinkIn::ConstPtr& msg)
// {
// 	set_powerlink_in(*msg);
// }

void shutdown_handler(int sig)
{
	ROS_INFO("Terminating EPL wrapper");
	unlink_memory();
	ros::shutdown();
}

bool signal_sync_handler(rosepl_wrapper_mn::SignalSync::Request &req, rosepl_wrapper_mn::SignalSync::Response &res)
{
	if (req.do_add)
	{
		if (std::find(pids.begin(), pids.end(), req.pid) == pids.end())
		{
		   ROS_INFO("Adding PID %i to subscribers list", req.pid);
		   pids.push_back(req.pid);
		}
	}
	else
	{
		if (std::find(pids.begin(), pids.end(), req.pid) != pids.end())
		{
		   ROS_INFO("Removing PID %i from subscribers list", req.pid);
		   pids.remove(req.pid);
		}
	}
	res.success = true;
	return true;
}

bool sdo_transfer_handler(rosepl_wrapper_mn::SdoTransfer::Request &req, rosepl_wrapper_mn::SdoTransfer::Response &res)
{
	res.error = 0;
	switch (req.action)
	{
		case SDO_ACTION_LOCK:
		{
			if (!sdo_client_pid)
			{
				sdo_client_pid = req.pid;
				sdo_is_busy = false;
			}
			else
			{
				res.error = 1;
			}
			break;
		}

		case SDO_ACTION_READ:
		case SDO_ACTION_WRITE:
		{
			if (sdo_is_busy)
			{
				res.error = 1;
				break;
			}
			sdo_is_busy = true;
			oplk_sdo->node = req.node;
			oplk_sdo->index = req.index;
			oplk_sdo->subindex = req.subindex;
			oplk_sdo->is_output = req.action == SDO_ACTION_WRITE;
			oplk_sdo->data = req.data;
			oplk_sdo->size = req.size;
			oplk_sdo->is_ready = false;
			oplk_sdo->do_transfer = true;
			break;
		}

		case SDO_ACTION_CHECK:
		{
			res.is_ready = oplk_sdo->is_ready;
			sdo_is_busy = !res.is_ready;
			res.error = oplk_sdo->error;
			res.data = oplk_sdo->data;
			break;
		}

		case SDO_ACTION_UNLOCK:
		{
			if (sdo_is_busy)
			{
				res.error = 1;
				break;
			}
			sdo_client_pid = 0;
		}
	}

	return true;
}

void oplk_handler(int sig)
{
	if (!ready)
	{
		return;
	}
	last_tick = tick;
	tick = !tick;
	can_run_cycle = true;

	if (tick)
	{
		get_powerlink_out_struct(powerlink_out.buffer_a);
		set_powerlink_in_struct(powerlink_in.buffer_b);
		send_sig(SIGUSR1);
	}
	else
	{
		get_powerlink_out_struct(powerlink_out.buffer_b);
		set_powerlink_in_struct(powerlink_in.buffer_a);
		send_sig(SIGUSR2);
	}
	ROS_INFO("oplk_pi_in:\n	cmdvel_lwheel=%ld | cmdvel_rwheel=%ld",\
	oplk_pi_in->cmdvel_lwheel, oplk_pi_in->cmdvel_rwheel);
}

void send_sig(int sig)
{
	for (auto iterator = pids.begin(), end = pids.end(); iterator != end; ++iterator)
	{
		if (killpg(*iterator, sig))
		{
			ROS_WARN("PID %i is no longer alive, removing from subscribers list", *iterator);
			if (*iterator == sdo_client_pid)
			{
				ROS_WARN("SDO channel will be unlocked because of %i death", sdo_client_pid);
				sdo_client_pid = 0;
				sdo_is_busy = false;
			}
			iterator = pids.erase(iterator);
		}
	}
}

int init_signal_hooks()
{
	if (signal(SIGINT, shutdown_handler) == SIG_ERR)
	{
		ROS_ERROR("Setting SIGINT hook: FAIL");
		return 1;
	}
	else
	{
		ROS_INFO("Setting SIGINT hook: OK");
	}
	if (signal(SIGTERM, shutdown_handler) == SIG_ERR)
	{
		ROS_ERROR("Setting SIGTERM hook: FAIL");
		return 1;
	}
	else
	{
		ROS_INFO("Setting SIGTERM hook: OK");
	}
	if (signal(SIGUSR1, oplk_handler) == SIG_ERR)
	{
		ROS_ERROR("Setting USR1 hook: FAIL");
		return 1;
	}
	else
	{
		ROS_INFO("Setting USR1 hook: OK");
	}
	return 0;
}




