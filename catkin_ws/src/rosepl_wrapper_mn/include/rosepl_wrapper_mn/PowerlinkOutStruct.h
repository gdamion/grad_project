// Generated with epl_ros_generator.py

#ifndef POWERLINK_OUT_H
#define POWERLINK_OUT_H

typedef struct POWERLINK_OUT
{
	int pid;
	// unsigned int CN1_DigitalInput_00h_AU8_DigitalInput:8;
	// unsigned int CN32_DigitalInput_00h_AU8_DigitalInput:8;
	// unsigned int CN110_DigitalInput_00h_AU8_DigitalInput:8;
	int64_t mm_x_pos;
	int64_t mm_y_pos;
	int64_t mm_z_pos;
	int64_t mm_x_orient;
	int64_t mm_y_orient;
	int64_t mm_z_orient;
	int64_t mm_w_orient;
	int64_t odom_lwheel;
	int64_t odom_rwheel;
} POWERLINK_OUT;

#endif
