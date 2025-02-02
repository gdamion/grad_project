#include "ros/ros.h"
#include "std_msgs/String.h"

#include <signal.h>
#include <time.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdlib.h>
#include <sched.h>

#include <powerlink_test/Signal.h>
#include <powerlink_test/MemoryAPI.h>
#include <powerlink_test/PrioritySetter.h>

#include <powerlink_test/ros_wrapper.h>

using namespace std;

void powerlink_out_callback(const powerlink_test::PowerlinkOut::ConstPtr& msg);
void status_out_callback(const powerlink_test::StatusOut::ConstPtr& msg);
void testing_out_callback(const powerlink_test::TestingOut::ConstPtr& msg);

void user_signal_handler(int sig);
int init_signal_hooks();
void check_shared_memory();

bool ros_memory_ready;

int main(int argc, char **argv)
{
    if (init_signal_hooks())
    {
        return 1;
    }

    int pid = getpid();

    stringstream node_name;
    node_name << "listener_" << pid;
    ros::init(argc, argv, node_name.str());

    ros::NodeHandle n;
    ros::Subscriber powerlink_out_sub = n.subscribe("PowerlinkOut", 1000, powerlink_out_callback);
    ros::Subscriber status_out_sub = n.subscribe("StatusOut", 1000, status_out_callback);
    ros::Subscriber testing_out_sub = n.subscribe("TestingOut", 1000, testing_out_callback);
    ros::Publisher powerlink_in_pub = n.advertise<powerlink_test::PowerlinkIn>("PowerlinkIn", 1000);
    ros::Publisher fallback_in_pub = n.advertise<powerlink_test::FallbackIn>("FallbackIn", 1000);

    ros::ServiceClient client = n.serviceClient<powerlink_test::Signal>("signal");

    set_group_priority(getpgrp());

    ros::Rate loop_rate(1000);

    powerlink_test::Signal srv;
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

    powerlink_test::PowerlinkIn powerlink_in_msg;
    powerlink_in_msg.pid = pid;
    powerlink_in_msg.shm_name = powerlink_in.shm_name;

    powerlink_test::FallbackIn fallback_in_msg;
    fallback_in_msg.pid = pid;
    fallback_in_msg.shm_name = fallback_in.shm_name;

    ROS_INFO("-------------------------");
    ROS_INFO("Entering ROS loop");

    ros::spin();

    return 0;
}

void powerlink_out_callback(const powerlink_test::PowerlinkOut::ConstPtr& msg)
{
    check_shared_memory();
}

void status_out_callback(const powerlink_test::StatusOut::ConstPtr& msg)
{
    check_shared_memory();
}

void testing_out_callback(const powerlink_test::TestingOut::ConstPtr& msg)
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
        powerlink_in.buffer_a->CN1_M02_X20DO9322_DigitalOutput = 1;
        // ROS_INFO("My DI is: %i", powerlink_out.buffer_a->CN1_M01_X20DI9371_DigitalInput);
    }
    if (sig == SIGUSR2)
    {
        powerlink_in.buffer_b->CN1_M02_X20DO9322_DigitalOutput = 0;
        // ROS_INFO("My DI is: %i", powerlink_out.buffer_b->CN1_M01_X20DI9371_DigitalInput);
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
