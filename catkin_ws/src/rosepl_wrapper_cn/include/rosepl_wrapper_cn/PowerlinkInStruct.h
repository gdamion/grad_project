// Generated with epl_ros_generator.py

#ifndef POWERLINK_IN_H
#define POWERLINK_IN_H

typedef struct POWERLINK_IN
{
	int pid;
	// unsigned int DigitalOutput:8;
	int64_t mm_x_pos;
	int64_t mm_y_pos;
	int64_t mm_z_pos;
	int64_t mm_x_orient;
	int64_t mm_y_orient;
	int64_t mm_z_orient;
	int64_t mm_w_orient;
	int64_t odom_lwheel;
	int64_t odom_rwheel;
} POWERLINK_IN;

#endif
