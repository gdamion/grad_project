/*
*
*    This file was generated with EPL ROS generator
*    Generated on: Fri Apr 17 18:15:22 2020
*    Version: 0.5.0
*    License: BSD
*
*/

#include <rosepl_project_mn/epl_ros_node.h>

int init_signal_hooks();

void user_signal_handler(int sig);

POWERLINK_IN powerlink_in_var;
POWERLINK_OUT powerlink_out_var;

bool tick;
bool last_tick;
bool can_run_cycle;
bool ready;

int main(int argc, char **argv)
{
    ROS_INFO("-------------------------");
    ROS_INFO("Starting epl_ros_node");

    if (init_signal_hooks())
    {
        return 1;
    }

    if (init_ros_memory(0))
    {
        return 1;
    }

    ready = true;

    ROS_INFO("-------------------------");
    ROS_INFO("Initializing ROS framework");
    ros::init(argc, argv, "epl_ros_node");

    ros::NodeHandle node;

    ros::ServiceClient syncClient = node.serviceClient<rosepl_wrapper_mn::SignalSync>("signalSync");
    ros::ServiceClient sdoClient = node.serviceClient<rosepl_wrapper_mn::SdoTransfer>("sdoTransfer");

    rosepl_wrapper_mn::SignalSync sync;
    sync.request.do_add = true;
    sync.request.pid = getpgrp();

    if ((syncClient.call(sync)) && (sync.response.success))
    {
        ROS_INFO("Signal service request: OK");
    }
    else
    {
        ROS_ERROR("Signal service request: FAIL");
        return 1;
    }

    init();

    ROS_INFO("-------------------------");
    ROS_INFO("Entering ROS loop");

    bool sdo_ready = false;
    rosepl_wrapper_mn::SdoTransfer sdo;
    sdo.request.action = SDO_ACTION_LOCK;
    sdo.request.pid = getpgrp();

    while (!sdo_ready)
    {
        ros::Duration(0.5).sleep();
        switch (sdo.request.action)
        {
            case SDO_ACTION_LOCK:
            {
                if ((sdoClient.call(sdo)) && (!sdo.response.error))
                {
                    ROS_INFO("Locking SDO channel: OK");
                    sdo.request.action = SDO_ACTION_WRITE;
                }
                else
                {
                    ROS_ERROR("Locking SDO channel: FAIL");
                    break;
                }
                break;
            }

            case SDO_ACTION_WRITE:
            {
                sdo.request.node = 240;
                sdo.request.index = 0x1006;
                sdo.request.subindex = 0;
                sdo.request.data = 50000;
                sdo.request.size = 4;

                if ((sdoClient.call(sdo)) && (!sdo.response.error))
                {
                    ROS_INFO("Starting SDO write: OK");
                    sdo.request.action = SDO_ACTION_CHECK;
                }
                else
                {
                    ROS_ERROR("Starting SDO write: FAIL");
                    break;
                }
                break;
            }

            case SDO_ACTION_CHECK:
            {
                if (sdoClient.call(sdo))
                {
                    ROS_INFO("SDO check: OK");
                }
                else
                {
                    ROS_ERROR("SDO check: FAIL");
                    break;
                }
                bool valid = true;
                if (!sdo.response.is_ready)
                {
                    ROS_ERROR("SDO check: NOT_READY");
                    valid = false;
                }
                if (sdo.response.error)
                {
                    ROS_ERROR("SDO check: ERROR %i", sdo.response.error);
                    sdo.request.action = SDO_ACTION_UNLOCK;
                    valid = false;
                }
                if (!valid)
                {
                    break;
                }
                ROS_INFO("SDO answer: %i", sdo.response.data);
                sdo.request.action = SDO_ACTION_UNLOCK;
                break;
            }

            case SDO_ACTION_UNLOCK:
            {
                if ((sdoClient.call(sdo)) && (!sdo.response.error))
                {
                    ROS_INFO("Unlocking SDO channel: OK");
                    sdo_ready = true;
                }
                else
                {
                    ROS_ERROR("Unlocking SDO channel: FAIL");
                }
                break;
            }
        }
    }

    while (ros::ok())
    {
        if ((tick == last_tick) || (!can_run_cycle))
        {
            continue;
        }
        can_run_cycle = false;

        ros::spinOnce();
    }

    terminate();

    return 0;
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

void user_signal_handler(int sig)
{
    if (!ready)
    {
        return;
    }
    last_tick = tick;
    tick = !tick;
    can_run_cycle = true;

    if (sig == SIGUSR1)
    {
        memcpy(powerlink_in.buffer_a, &powerlink_in_var, powerlink_in.length);

        memcpy(&powerlink_out_var, powerlink_out.buffer_b, powerlink_out.length);
    }
    if (sig == SIGUSR2)
    {
        memcpy(powerlink_in.buffer_b, &powerlink_in_var, powerlink_in.length);

        memcpy(&powerlink_out_var, powerlink_out.buffer_a, powerlink_out.length);
    }

    cycle();
}
