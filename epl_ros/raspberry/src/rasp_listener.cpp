#include "ros/ros.h"
#include "std_msgs/String.h"

#include <signal.h>
#include <time.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdlib.h>
#include <sched.h>

#include <raspberry/Signal.h>
#include <raspberry/MemoryAPI.h>
#include <raspberry/PrioritySetter.h>

#include <raspberry/ros_wrapper.h>

#include <sys/io.h>
#include <sys/types.h>
#include <fcntl.h>

#define LPT 0x378

using namespace std;

void powerlink_out_callback(const raspberry::PowerlinkOut::ConstPtr& msg);

void user_signal_handler(int sig);
void shutdown_handler(int sig);
int init_signal_hooks();
void check_shared_memory();

bool ros_memory_ready;
int tem;

int main(int argc, char **argv)
{
    if (init_signal_hooks())
    {
        return 1;
    }

    int pid = getpid();

    stringstream node_name;
    node_name << "listener_" << pid;
    ros::init(argc, argv, node_name.str(), ros::init_options::NoSigintHandler);

    if (ioperm(LPT, 3, 1))
    {
        ROS_ERROR("Locking LPT: FAIL");
    }
    else
    {
        ROS_INFO("Locking LPT: OK");
        tem = fcntl(0, F_GETFL, 0);
        fcntl(0, F_SETFL, tem | O_NDELAY);
    }

    ros::NodeHandle n;
    ros::Subscriber powerlink_out_sub = n.subscribe("PowerlinkOut", 1000, powerlink_out_callback);
    ros::Publisher powerlink_in_pub = n.advertise<raspberry::PowerlinkIn>("PowerlinkIn", 1000);

    ros::ServiceClient client = n.serviceClient<raspberry::Signal>("signal");

    set_group_priority(getpgrp());

    ros::Rate loop_rate(1000);

    raspberry::Signal srv;
    srv.request.do_add = true;
    srv.request.pid = getpgrp();
    if ((client.call(srv)) && (srv.response.success))
    {
        ROS_INFO("Signal service request: OK");
    }
    else
    {
        ROS_ERROR("Signal service request: FAIL");
        return 1;
    }

    raspberry::PowerlinkIn powerlink_in_msg;
    powerlink_in_msg.pid = pid;
    powerlink_in_msg.shm_name = powerlink_in.shm_name;

    ROS_INFO("-------------------------");
    ROS_INFO("Entering ROS loop");

    ros::spin();

    return 0;
}

void powerlink_out_callback(const raspberry::PowerlinkOut::ConstPtr& msg)
{
    check_shared_memory();
}

void user_signal_handler(int sig)
{
    if (!ros_memory_ready)
    {
        check_shared_memory();
    }
    if (sig == SIGUSR1)
    {
        outb(0xFF, LPT);
        powerlink_in.buffer_a->CN1_M00_DigitalOutput_00h_AU8_DigitalOutput = 1;
    }
    if (sig == SIGUSR2)
    {
        outb(0x00, LPT);
        powerlink_in.buffer_b->CN1_M00_DigitalOutput_00h_AU8_DigitalOutput = 1;
    }
}

int init_signal_hooks()
{
    if (signal(SIGUSR1, user_signal_handler) == SIG_ERR)
    {
        ROS_ERROR("Setting USR1 hook: FAIL");
    }
    else
    {
        ROS_INFO("Setting USR1 hook: OK");
    }
    if (signal(SIGUSR2, user_signal_handler) == SIG_ERR)
    {
        ROS_ERROR("Setting USR2 hook: FAIL");
    }
    else
    {
        ROS_INFO("Setting USR2 hook: OK");
    }
    if (signal(SIGINT, shutdown_handler) == SIG_ERR)
    {
        ROS_ERROR("Setting SIGINT hook: FAIL");
    }
    else
    {
        ROS_INFO("Setting SIGINT hook: OK");
    }
    return 0;
}

void check_shared_memory()
{
    if (!ros_memory_ready)
    {
        if (init_ros_memory(0))
        {
            ros::shutdown();
        }
        ros_memory_ready = true;
    }
}

void shutdown_handler(int sig)
{
    if (ioperm(LPT, 3, 0))
    {
        ROS_ERROR("Unlocking LPT: FAIL");
    }
    else
    {
        ROS_INFO("Unlocking LPT: OK");
        fcntl(0, F_SETFL, tem);
        outb(0x00, LPT);
    }
    ros::shutdown();
}
