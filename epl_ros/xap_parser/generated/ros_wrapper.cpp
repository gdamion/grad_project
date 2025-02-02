#include <powerlink_test/ros_wrapper.h>

IPC_DATA<PI_IN> oplk_pi_in_data;
PI_IN *oplk_pi_in;
IPC_DATA<PI_OUT> oplk_pi_out_data;
PI_OUT *oplk_pi_out;

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

void set_powerlink_in(powerlink_test::PowerlinkIn msg)
{
    oplk_pi_in->CN1_M00_DigitalOutput_00h_AU8_DigitalOutput = msg.CN1_M00_DigitalOutput_00h_AU8_DigitalOutput;
    oplk_pi_in->CN32_M00_DigitalOutput_00h_AU8_DigitalOutput = msg.CN32_M00_DigitalOutput_00h_AU8_DigitalOutput;
    oplk_pi_in->CN110_M00_DigitalOutput_00h_AU8_DigitalOutput = msg.CN110_M00_DigitalOutput_00h_AU8_DigitalOutput;
}

void set_powerlink_in_struct(POWERLINK_IN *data)
{
    oplk_pi_in->CN1_M00_DigitalOutput_00h_AU8_DigitalOutput = data->CN1_M00_DigitalOutput_00h_AU8_DigitalOutput;
    oplk_pi_in->CN32_M00_DigitalOutput_00h_AU8_DigitalOutput = data->CN32_M00_DigitalOutput_00h_AU8_DigitalOutput;
    oplk_pi_in->CN110_M00_DigitalOutput_00h_AU8_DigitalOutput = data->CN110_M00_DigitalOutput_00h_AU8_DigitalOutput;
}

void get_powerlink_out(powerlink_test::PowerlinkOut *msg)
{
    msg->CN1_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN1_M00_DigitalInput_00h_AU8_DigitalInput;
    msg->CN32_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN32_M00_DigitalInput_00h_AU8_DigitalInput;
    msg->CN110_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN110_M00_DigitalInput_00h_AU8_DigitalInput;
}

void get_powerlink_out_struct(POWERLINK_OUT *data)
{
    data->CN1_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN1_M00_DigitalInput_00h_AU8_DigitalInput;
    data->CN32_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN32_M00_DigitalInput_00h_AU8_DigitalInput;
    data->CN110_M00_DigitalInput_00h_AU8_DigitalInput = oplk_pi_out->CN110_M00_DigitalInput_00h_AU8_DigitalInput;
}

