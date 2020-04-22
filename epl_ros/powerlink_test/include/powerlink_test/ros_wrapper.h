#ifndef GENERATED_H
#define GENERATED_H

#include <ros/ros.h>
#include <powerlink_test/MemoryAPI.h>

#include <powerlink_test/PowerlinkIn.h>
#include <powerlink_test/PowerlinkInStruct.h>
#include <powerlink_test/FallbackIn.h>
#include <powerlink_test/FallbackInStruct.h>
#include <powerlink_test/PowerlinkOut.h>
#include <powerlink_test/PowerlinkOutStruct.h>
#include <powerlink_test/StatusOut.h>
#include <powerlink_test/StatusOutStruct.h>
#include <powerlink_test/TestingOut.h>
#include <powerlink_test/TestingOutStruct.h>
#include "/home/dev/powerlink_new/apps/common/openCONFIGURATOR_projects/andrej/output/xap.h"

extern IPC_DATA<PI_IN> oplk_pi_in_data;
extern PI_IN *oplk_pi_in;
extern IPC_DATA<PI_OUT> oplk_pi_out_data;
extern PI_OUT *oplk_pi_out;

extern IPC_DATA<POWERLINK_IN> powerlink_in;
extern IPC_DATA<FALLBACK_IN> fallback_in;
extern IPC_DATA<POWERLINK_OUT> powerlink_out;
extern IPC_DATA<STATUS_OUT> status_out;
extern IPC_DATA<TESTING_OUT> testing_out;

int init_ros_memory(int pid);
int init_oplk_memory();
void unlink_memory();

void set_powerlink_in(powerlink_test::PowerlinkIn msg);
void set_powerlink_in_struct(POWERLINK_IN *msg);
void set_fallback_in(powerlink_test::FallbackIn msg);
void set_fallback_in_struct(FALLBACK_IN *msg);
void get_powerlink_out(powerlink_test::PowerlinkOut *msg);
void get_powerlink_out_struct(POWERLINK_OUT *data);
void get_status_out(powerlink_test::StatusOut *msg);
void get_status_out_struct(STATUS_OUT *data);
void get_testing_out(powerlink_test::TestingOut *msg);
void get_testing_out_struct(TESTING_OUT *data);

#endif
