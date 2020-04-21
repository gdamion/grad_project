#ifndef GENERATED_H
#define GENERATED_H

#include <ros/ros.h>
#include <powerlink_test/MemoryAPI.h>

#include <powerlink_test/PowerlinkIn.h>
#include <powerlink_test/PowerlinkInStruct.h>
#include <powerlink_test/PowerlinkOut.h>
#include <powerlink_test/PowerlinkOutStruct.h>
#include "/home/ilia/Dropbox/Documents/Development/Python/xap_parser/xap.h"

extern IPC_DATA<PI_IN> oplk_pi_in_data;
extern PI_IN *oplk_pi_in;
extern IPC_DATA<PI_OUT> oplk_pi_out_data;
extern PI_OUT *oplk_pi_out;

extern IPC_DATA<POWERLINK_IN> powerlink_in;
extern IPC_DATA<POWERLINK_OUT> powerlink_out;

int init_ros_memory(int pid);
int init_oplk_memory();
void unlink_memory();

void set_powerlink_in(powerlink_test::PowerlinkIn msg);
void set_powerlink_in_struct(POWERLINK_IN *msg);
void get_powerlink_out(powerlink_test::PowerlinkOut *msg);
void get_powerlink_out_struct(POWERLINK_OUT *data);

#endif