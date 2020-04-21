#include <powerlink_test/ros_wrapper.h>

IPC_DATA<PI_IN> oplk_pi_in_data;
PI_IN *oplk_pi_in;
IPC_DATA<PI_OUT> oplk_pi_out_data;
PI_OUT *oplk_pi_out;

IPC_DATA<POWERLINK_IN> powerlink_in;
IPC_DATA<FALLBACK_IN> fallback_in;
IPC_DATA<POWERLINK_OUT> powerlink_out;
IPC_DATA<STATUS_OUT> status_out;
IPC_DATA<TESTING_OUT> testing_out;

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
    fallback_in.shm_name = "fallback_in";
    fallback_in.address = init_shared_memory(fallback_in.shm_name.c_str(), fallback_in.length);
    if (map_shared_memory<FALLBACK_IN>(&fallback_in, pid))
    {
        return 1;
    }
    powerlink_out.shm_name = "powerlink_out";
    powerlink_out.address = init_shared_memory(powerlink_out.shm_name.c_str(), powerlink_out.length);
    if (map_shared_memory<POWERLINK_OUT>(&powerlink_out, pid))
    {
        return 1;
    }
    status_out.shm_name = "status_out";
    status_out.address = init_shared_memory(status_out.shm_name.c_str(), status_out.length);
    if (map_shared_memory<STATUS_OUT>(&status_out, pid))
    {
        return 1;
    }
    testing_out.shm_name = "testing_out";
    testing_out.address = init_shared_memory(testing_out.shm_name.c_str(), testing_out.length);
    if (map_shared_memory<TESTING_OUT>(&testing_out, pid))
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
    munmap(fallback_in.address, fallback_in.length * 2);
    shm_unlink(fallback_in.shm_name.c_str());
    munmap(powerlink_out.address, powerlink_out.length * 2);
    shm_unlink(powerlink_out.shm_name.c_str());
    munmap(status_out.address, status_out.length * 2);
    shm_unlink(status_out.shm_name.c_str());
    munmap(testing_out.address, testing_out.length * 2);
    shm_unlink(testing_out.shm_name.c_str());
    ROS_INFO("Shared memory unlinking: OK");
}

void set_powerlink_in(powerlink_test::PowerlinkIn msg)
{
    oplk_pi_in->CN1_M02_X20DO9322_DigitalOutput = msg.CN1_M02_X20DO9322_DigitalOutput;
    oplk_pi_in->CN2_M01_Cross_Traf_B1 = msg.CN2_M01_Cross_Traf_B1;
}

void set_powerlink_in_struct(POWERLINK_IN *data)
{
    oplk_pi_in->CN1_M02_X20DO9322_DigitalOutput = data->CN1_M02_X20DO9322_DigitalOutput;
    oplk_pi_in->CN2_M01_Cross_Traf_B1 = data->CN2_M01_Cross_Traf_B1;
}

void set_fallback_in(powerlink_test::FallbackIn msg)
{
    oplk_pi_in->CN1_M02_X20DO9322_DigitalOutput = msg.CN1_M02_X20DO9322_DigitalOutput;
}

void set_fallback_in_struct(FALLBACK_IN *data)
{
    oplk_pi_in->CN1_M02_X20DO9322_DigitalOutput = data->CN1_M02_X20DO9322_DigitalOutput;
}

void get_powerlink_out(powerlink_test::PowerlinkOut *msg)
{
    msg->CN1_M00_X20PS9400a_NetworkStatus = oplk_pi_out->CN1_M00_X20PS9400a_NetworkStatus;
    msg->CN1_M00_X20PS9400a_StatusInput01 = oplk_pi_out->CN1_M00_X20PS9400a_StatusInput01;
    msg->CN1_M00_X20PS9400a_StatusInput02 = oplk_pi_out->CN1_M00_X20PS9400a_StatusInput02;
    msg->CN1_M01_X20DI9371_NetworkStatus = oplk_pi_out->CN1_M01_X20DI9371_NetworkStatus;
    msg->CN1_M01_X20DI9371_DigitalInput = oplk_pi_out->CN1_M01_X20DI9371_DigitalInput;
    msg->CN1_M02_X20DO9322_NetworkStatus = oplk_pi_out->CN1_M02_X20DO9322_NetworkStatus;
    msg->CN1_M02_X20DO9322_StatusInput01 = oplk_pi_out->CN1_M02_X20DO9322_StatusInput01;
}

void get_powerlink_out_struct(POWERLINK_OUT *data)
{
    data->CN1_M00_X20PS9400a_NetworkStatus = oplk_pi_out->CN1_M00_X20PS9400a_NetworkStatus;
    data->CN1_M00_X20PS9400a_StatusInput01 = oplk_pi_out->CN1_M00_X20PS9400a_StatusInput01;
    data->CN1_M00_X20PS9400a_StatusInput02 = oplk_pi_out->CN1_M00_X20PS9400a_StatusInput02;
    data->CN1_M01_X20DI9371_NetworkStatus = oplk_pi_out->CN1_M01_X20DI9371_NetworkStatus;
    data->CN1_M01_X20DI9371_DigitalInput = oplk_pi_out->CN1_M01_X20DI9371_DigitalInput;
    data->CN1_M02_X20DO9322_NetworkStatus = oplk_pi_out->CN1_M02_X20DO9322_NetworkStatus;
    data->CN1_M02_X20DO9322_StatusInput01 = oplk_pi_out->CN1_M02_X20DO9322_StatusInput01;
}

void get_status_out(powerlink_test::StatusOut *msg)
{
    msg->CN1_M00_X20PS9400a_NetworkStatus = oplk_pi_out->CN1_M00_X20PS9400a_NetworkStatus;
    msg->CN1_M01_X20DI9371_NetworkStatus = oplk_pi_out->CN1_M01_X20DI9371_NetworkStatus;
    msg->CN1_M02_X20DO9322_NetworkStatus = oplk_pi_out->CN1_M02_X20DO9322_NetworkStatus;
}

void get_status_out_struct(STATUS_OUT *data)
{
    data->CN1_M00_X20PS9400a_NetworkStatus = oplk_pi_out->CN1_M00_X20PS9400a_NetworkStatus;
    data->CN1_M01_X20DI9371_NetworkStatus = oplk_pi_out->CN1_M01_X20DI9371_NetworkStatus;
    data->CN1_M02_X20DO9322_NetworkStatus = oplk_pi_out->CN1_M02_X20DO9322_NetworkStatus;
}

void get_testing_out(powerlink_test::TestingOut *msg)
{
    msg->CN1_M01_X20DI9371_DigitalInput = oplk_pi_out->CN1_M01_X20DI9371_DigitalInput;
}

void get_testing_out_struct(TESTING_OUT *data)
{
    data->CN1_M01_X20DI9371_DigitalInput = oplk_pi_out->CN1_M01_X20DI9371_DigitalInput;
}
