#ifndef GENERATED_H
#define GENERATED_H

#include <ros/ros.h>
#include <cstdint>

#include <rosepl_wrapper_cn/MemoryAPI.h>

#define SDO_ACTION_LOCK 0
#define SDO_ACTION_READ 1
#define SDO_ACTION_WRITE 2
#define SDO_ACTION_CHECK 3
#define SDO_ACTION_UNLOCK 4

#include <rosepl_wrapper_cn/PowerlinkIn.h>
#include <rosepl_wrapper_cn/PowerlinkInStruct.h>
#include <rosepl_wrapper_cn/PowerlinkOut.h>
#include <rosepl_wrapper_cn/PowerlinkOutStruct.h>

#include <rosepl_wrapper_cn/shm_structs.h>
#include <rosepl_wrapper_cn/xap.h>

extern IPC_DATA<PI_IN> oplk_pi_in_data;
extern PI_IN *oplk_pi_in;
extern IPC_DATA<PI_OUT> oplk_pi_out_data;
extern PI_OUT *oplk_pi_out;
extern IPC_DATA<SDO> oplk_sdo_data;
extern SDO *oplk_sdo;
extern IPC_DATA<WRAPPER_INFO> oplk_wrapper_info_data;
extern WRAPPER_INFO *oplk_wrapper_info;

extern IPC_DATA<POWERLINK_IN> powerlink_in;
extern IPC_DATA<POWERLINK_OUT> powerlink_out;

int init_ros_memory(int pid);
int init_oplk_memory();
void unlink_memory();

void set_powerlink_in(rosepl_wrapper_cn::PowerlinkIn msg);
void set_powerlink_in_struct(POWERLINK_IN *msg);
void get_powerlink_out(rosepl_wrapper_cn::PowerlinkOut *msg);
void get_powerlink_out_struct(POWERLINK_OUT *data);

#endif
