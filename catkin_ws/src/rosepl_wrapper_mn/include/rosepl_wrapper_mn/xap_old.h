
#ifndef XAP_h
#define XAP_h

#define COMPUTED_PI_OUT_SIZE 4
typedef struct
{
	unsigned CN1_DigitalInput_00h_AU8_DigitalInput:8;
	unsigned CN32_DigitalInput_00h_AU8_DigitalInput:8;
	unsigned CN110_DigitalInput_00h_AU8_DigitalInput:8;
	unsigned PADDING_VAR_1:8;
} PI_OUT;

#define COMPUTED_PI_IN_SIZE 4
typedef struct
{
	unsigned CN1_DigitalOutput_00h_AU8_DigitalOutput:8;
	unsigned CN32_DigitalOutput_00h_AU8_DigitalOutput:8;
	unsigned CN110_DigitalOutput_00h_AU8_DigitalOutput:8;
	unsigned PADDING_VAR_1:8;
} PI_IN;

#endif
