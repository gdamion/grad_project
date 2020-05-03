#include <rosepl_wrapper_cn/generated_wrapper.h>

IPC_DATA<PI_IN> oplk_pi_in_data;
PI_IN *oplk_pi_in;
IPC_DATA<PI_OUT> oplk_pi_out_data;
PI_OUT *oplk_pi_out;
IPC_DATA<SDO> oplk_sdo_data;
SDO *oplk_sdo;
IPC_DATA<WRAPPER_INFO> oplk_wrapper_info_data;
WRAPPER_INFO *oplk_wrapper_info;

IPC_DATA<POWERLINK_IN> powerlink_in;
IPC_DATA<POWERLINK_OUT> powerlink_out;

int init_ros_memory(int pid)
{
	ROS_INFO("-------------------------");
	ROS_INFO("Initializing ROS shared memory");
	powerlink_in.shm_name = "powerlink_in";
	powerlink_in.address = init_shared_memory(powerlink_in.shm_name.c_str(), powerlink_in.length);
	if (map_shared_memory<POWERLINK_IN>(&powerlink_in, pid))
	{
		return 1;
	}
	powerlink_out.shm_name = "powerlink_out";
	powerlink_out.address = init_shared_memory(powerlink_out.shm_name.c_str(), powerlink_out.length);
	if (map_shared_memory<POWERLINK_OUT>(&powerlink_out, pid))
	{
		return 1;
	}
	return 0;
}

int init_oplk_memory()
{
	oplk_pi_in_data.shm_name = "OPLK_PI_IN";
	oplk_pi_in_data.address = init_shared_memory(oplk_pi_in_data.shm_name.c_str(), oplk_pi_in_data.length);
	if (oplk_pi_in_data.address == (void*)-1)
	{
		ROS_ERROR("Accessing OPLK shared memory for %s: FAIL", oplk_pi_in_data.shm_name.c_str());
		return 1;
	}
	else
	{
		oplk_pi_in = (PI_IN*)oplk_pi_in_data.address;
		ROS_INFO("Accessing OPLK shared memory for %s: OK", oplk_pi_in_data.shm_name.c_str());
	}
	oplk_pi_out_data.shm_name = "OPLK_PI_OUT";
	oplk_pi_out_data.address = init_shared_memory(oplk_pi_out_data.shm_name.c_str(), oplk_pi_out_data.length);
	if (oplk_pi_out_data.address == (void*)-1)
	{
		ROS_ERROR("Accessing OPLK shared memory for %s: FAIL", oplk_pi_out_data.shm_name.c_str());
		return 1;
	}
	else
	{
		oplk_pi_out = (PI_OUT*)oplk_pi_out_data.address;
		ROS_INFO("Accessing OPLK shared memory for %s: OK", oplk_pi_out_data.shm_name.c_str());
	}
	oplk_sdo_data.shm_name = "OPLK_SDO";
	oplk_sdo_data.address = init_shared_memory(oplk_sdo_data.shm_name.c_str(), oplk_sdo_data.length);
	if (oplk_sdo_data.address == (void*)-1)
	{
		ROS_ERROR("Accessing OPLK shared memory for %s: FAIL", oplk_sdo_data.shm_name.c_str());
		return 1;
	}
	else
	{
		oplk_sdo = (SDO*)oplk_sdo_data.address;
		ROS_INFO("Accessing OPLK shared memory for %s: OK", oplk_sdo_data.shm_name.c_str());
	}
	oplk_wrapper_info_data.shm_name = "OPLK_WRAPPER_INFO";
	oplk_wrapper_info_data.address = init_shared_memory(oplk_wrapper_info_data.shm_name.c_str(), oplk_wrapper_info_data.length);
	if (oplk_wrapper_info_data.address == (void*)-1)
	{
		ROS_ERROR("Accessing OPLK shared memory for %s: FAIL", oplk_wrapper_info_data.shm_name.c_str());
		return 1;
	}
	else
	{
		oplk_wrapper_info = (WRAPPER_INFO*)oplk_wrapper_info_data.address;
		ROS_INFO("Accessing OPLK shared memory for %s: OK", oplk_wrapper_info_data.shm_name.c_str());
	}
	return 0;
}

void unlink_memory()
{
	munmap(powerlink_in.address, powerlink_in.length * 2);
	shm_unlink(powerlink_in.shm_name.c_str());
	munmap(powerlink_out.address, powerlink_out.length * 2);
	shm_unlink(powerlink_out.shm_name.c_str());
	ROS_INFO("Shared memory unlinking: OK");
}

// void set_powerlink_in(rosepl_wrapper_cn::PowerlinkIn msg)
// {
// 	// oplk_pi_in->DigitalOutput = msg.DigitalOutput;

// 	oplk_pi_in->mm_x_pos = msg.mm_x_pos;
// 	oplk_pi_in->mm_y_pos = msg.mm_y_pos;
// 	oplk_pi_in->mm_z_pos = msg.mm_z_pos;
// 	oplk_pi_in->mm_x_orient = msg.mm_x_orient;
// 	oplk_pi_in->mm_y_orient = msg.mm_y_orient;
// 	oplk_pi_in->mm_w_orient = msg.mm_w_orient;
// 	oplk_pi_in->odom_lwheel = msg.odom_lwheel;
// 	oplk_pi_in->odom_rwheel = msg.odom_rwheel;
// }

void set_powerlink_in_struct(POWERLINK_IN *data)
{
	// oplk_pi_in->DigitalOutput = data->DigitalOutput;
	ROS_INFO("set_epl_in_struct:\n	x_pos=%ld | y_pos=%ld | z_pos=%ld \n	x_orient=%ld | y_orient=%ld | z_orient=%ld | w_orient=%ld\n	odom_lwheel=%ld | odom_rwheel=%ld",\
	data->mm_x_pos, data->mm_y_pos, data->mm_z_pos, \
	data->mm_x_orient, data->mm_y_orient,data->mm_z_orient, data->mm_w_orient, \
	data->odom_lwheel, data->odom_rwheel);

	oplk_pi_in->mm_x_pos = data->mm_x_pos;
	oplk_pi_in->mm_y_pos = data->mm_y_pos;
	oplk_pi_in->mm_z_pos = data->mm_z_pos;
	oplk_pi_in->mm_x_orient = data->mm_x_orient;
	oplk_pi_in->mm_y_orient = data->mm_y_orient;
	oplk_pi_in->mm_z_orient = data->mm_z_orient;
	oplk_pi_in->mm_w_orient = data->mm_w_orient;
	oplk_pi_in->odom_lwheel = data->odom_lwheel;
	oplk_pi_in->odom_rwheel = data->odom_rwheel;
}

// void get_powerlink_out(rosepl_wrapper_cn::PowerlinkOut *msg)
// {
// 	// msg->DigitalInput = oplk_pi_out->DigitalInput;

// 	msg->cmdvel_lwheel = oplk_pi_out->cmdvel_lwheel;
// 	msg->cmdvel_rwheel = oplk_pi_out->cmdvel_rwheel;
// }

void get_powerlink_out_struct(POWERLINK_OUT *data)
{
	// data->DigitalInput = oplk_pi_out->DigitalInput;
	ROS_INFO("get_epl_out_struct:\n	cmdvel_lwheel=%ld | cmdvel_rwheel=%ld",
	oplk_pi_out->cmdvel_lwheel, oplk_pi_out ->cmdvel_rwheel);

	data->cmdvel_lwheel = oplk_pi_out->cmdvel_lwheel;
	data->cmdvel_rwheel = oplk_pi_out->cmdvel_rwheel;
}

