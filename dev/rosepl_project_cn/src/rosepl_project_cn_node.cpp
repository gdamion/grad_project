/*
*
*    This file was generated with EPL ROS generator
*    Generated on: Wed Apr 22 13:30:05 2020
*    Version: 0.5.0
*    License: BSD
*
*/

#include <rosepl_project_cn/rosepl_project_cn_node.h>

void powerlink_out_callback(const rosepl_wrapper_cn::PowerlinkOut::ConstPtr& msg);

int init_signal_hooks();
void user_signal_handler(int sig);


rosepl_wrapper_cn::PowerlinkOut::ConstPtr powerlink_out_msg;

rosepl_wrapper_cn::PowerlinkIn powerlink_in_msg;

bool ready;
bool tick;
bool last_tick;
bool can_run_cycle;

int main(int argc, char **argv)
{
    ROS_INFO("-------------------------");
    ROS_INFO("Starting rosepl_project_cn_node");

    if (init_signal_hooks())
    {
        return 1;
    }

    ros::init(argc, argv, "rosepl_project_cn_node");

    ros::NodeHandle node;

    ros::Publisher powerlink_in_pub = node.advertise<rosepl_wrapper_cn::PowerlinkIn>("PowerlinkIn", 1);

    ros::Subscriber powerlink_out_sub = node.subscribe("PowerlinkOut", 1, powerlink_out_callback);

    ros::ServiceClient syncClient = node.serviceClient<rosepl_wrapper_cn::SignalSync>("signalSync");
    ros::ServiceClient sdoClient = node.serviceClient<rosepl_wrapper_cn::SdoTransfer>("sdoTransfer");

    rosepl_wrapper_cn::SignalSync sync;
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

    bool sdo_ready = false;
    rosepl_wrapper_cn::SdoTransfer sdo;
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
                    ROS_INFO("Starting SDO read: OK");
                    sdo.request.action = SDO_ACTION_CHECK;
                }
                else
                {
                    ROS_ERROR("Starting SDO read: FAIL");
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

    init();

    ready = true;

    ROS_INFO("-------------------------");
    ROS_INFO("Entering ROS loop");

    while (ros::ok())
    {
        if ((tick == last_tick) || (!can_run_cycle))
        {
            continue;
        }
        can_run_cycle = false;

        // powerlink_in_msg.pid = sync.request.pid;
        // powerlink_in_msg.DigitalOutput = 228;
        powerlink_in_pub.publish(powerlink_in_msg);

        cycle();
        ros::spinOnce();
    }

    terminate();

    return 0;
}

// typedef struct POWERLINK_IN
// {
// 	int pid;
// 	unsigned int DigitalOutput:8;
// } POWERLINK_IN;

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

}

void powerlink_out_callback(const rosepl_wrapper_cn::PowerlinkOut::ConstPtr& msg)
{
    powerlink_out_msg = msg;
}
