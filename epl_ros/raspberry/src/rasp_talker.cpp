#include "ros/ros.h"
#include "std_msgs/String.h"

#include <signal.h>
#include <time.h>
#include <sched.h>
#include <stdio.h>

#include <raspberry/Signal.h>
#include <raspberry/MemoryAPI.h>
#include <raspberry/PrioritySetter.h>

#include <raspberry/ros_wrapper.h>

void shutdown_handler(int sig);
void oplk_handler(int sig);
bool signal_service_handler(raspberry::Signal::Request &req, raspberry::Signal::Response &res);
int init_signal_hooks();
void send_sig(int sig);

int pid = getpid();
bool tick;

int main(int argc, char **argv)
{
    ROS_INFO("-------------------------");
    ROS_INFO("Starting ROS-OPLK wrapper");

    FILE *pid_file = fopen("/home/dev/ros_wrapper.pid", "w");
    fprintf(pid_file, "%i\n", pid);
    fclose(pid_file);

    if (init_signal_hooks())
    {
        return 1;
    }

    ROS_INFO("Booting up wrapper...");
    sleep(5);

    if (init_oplk_memory())
    {
        return 1;
    }

    if (init_ros_memory(pid))
    {
        return 1;
    }

    ROS_INFO("-------------------------");
    ROS_INFO("Initializing ROS framework");
    ros::init(argc, argv, "talker", ros::init_options::NoSigintHandler);

    ros::NodeHandle n;

    ros::Publisher powerlink_out_pub = n.advertise<raspberry::PowerlinkOut>("PowerlinkOut", 1000);

    ros::ServiceServer service = n.advertiseService("signal", signal_service_handler);
    ros::Rate loop_rate(1000);

    set_group_priority(getpgrp());

    raspberry::PowerlinkOut powerlink_out_msg;
    powerlink_out_msg.pid = pid;
    powerlink_out_msg.shm_name = powerlink_out.shm_name;

    ROS_INFO("-------------------------");
    ROS_INFO("Entering ROS loop");

    ros::spin();
    
    return 0;
}

void shutdown_handler(int sig)
{
    ROS_INFO("Terminating...");
    unlink_memory();
    ros::shutdown();
}

bool signal_service_handler(raspberry::Signal::Request &req, raspberry::Signal::Response &res)
{
    if (req.do_add)
    {
        if (std::find(powerlink_in.pids.begin(), powerlink_in.pids.end(), req.pid) == powerlink_in.pids.end())
        {
           ROS_INFO("Adding PID %i to subscribers list", req.pid);
           powerlink_in.pids.push_back(req.pid);
        }
    }
    else
    {
        if (std::find(powerlink_in.pids.begin(), powerlink_in.pids.end(), req.pid) != powerlink_in.pids.end())
        {
           ROS_INFO("Removing PID %i from subscribers list", req.pid);
           powerlink_in.pids.remove(req.pid);
        }
    }
    res.success = true;
    return true;
}

void oplk_handler(int sig)
{
    tick = !tick;
    if (!powerlink_in.is_buffers_initialized)
    {
        return;
    }
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
}

void send_sig(int sig)
{
    for (auto iterator = powerlink_in.pids.begin(), end = powerlink_in.pids.end(); iterator != end; ++iterator)
    {
        if (killpg(*iterator, sig))
        {
            ROS_WARN("PID %i is no longer alive, removing from subscribers list", *iterator);
            iterator = powerlink_in.pids.erase(iterator);
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
