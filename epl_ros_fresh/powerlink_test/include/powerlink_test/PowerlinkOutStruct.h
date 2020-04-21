// Generated with xap_parser.py

#ifndef POWERLINK_OUT_H
#define POWERLINK_OUT_H

typedef struct POWERLINK_OUT
{
	int pid;
	unsigned int CN1_M00_X20PS9400a_NetworkStatus:8;
	unsigned int CN1_M00_X20PS9400a_StatusInput01:1;
	unsigned int CN1_M00_X20PS9400a_StatusInput02:1;
	unsigned int CN1_M01_X20DI9371_NetworkStatus:8;
	unsigned int CN1_M01_X20DI9371_DigitalInput:16;
	unsigned int CN1_M02_X20DO9322_NetworkStatus:8;
	unsigned int CN1_M02_X20DO9322_StatusInput01:16;
} POWERLINK_OUT;

#endif
