/**
********************************************************************************
\file   app.c

\brief  Demo MN application which implements a running light

This file contains a demo application for digital input/output data.
It implements a running light on the digital outputs. The speed of
the running light is controlled by the read digital inputs.

\ingroup module_demo_mn_console
*******************************************************************************/

/*------------------------------------------------------------------------------
Copyright (c) 2015, Bernecker+Rainer Industrie-Elektronik Ges.m.b.H. (B&R)
Copyright (c) 2013, SYSTEC electronik GmbH
Copyright (c) 2013, Kalycito Infotech Private Ltd.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
	* Redistributions of source code must retain the above copyright
	  notice, this list of conditions and the following disclaimer.
	* Redistributions in binary form must reproduce the above copyright
	  notice, this list of conditions and the following disclaimer in the
	  documentation and/or other materials provided with the distribution.
	* Neither the name of the copyright holders nor the
	  names of its contributors may be used to endorse or promote products
	  derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
------------------------------------------------------------------------------*/

//------------------------------------------------------------------------------
// includes
//------------------------------------------------------------------------------
#include <oplk/oplk.h>
#include <oplk/debugstr.h>
#include <user/sdoasnd.h>
#include <common/oplkinc.h>

#include <eventlog/eventlog.h>

#include <string.h>
#include <signal.h>

#include "app.h"
#include "xap.h"
#include "memory_api.h"

//============================================================================//
//			G L O B A L   D E F I N I T I O N S							 //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------
#define DEFAULT_MAX_CYCLE_COUNT 20	  // 6 is very fast

//------------------------------------------------------------------------------
// module global vars
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// global function prototypes
//------------------------------------------------------------------------------

//============================================================================//
//			P R I V A T E   D E F I N I T I O N S						   //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// local types
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// local vars
//------------------------------------------------------------------------------
static void*		pProcessImageIn_l;
static void*		pProcessImageOut_l;

static IPC_DATA	 imageInData;
static void*	   shmImageIn;
static IPC_DATA	 imageOutData;
static void*	  shmImageOut;

static int IN_SIZE;
static int OUT_SIZE;

static int wrapper_pid;

//------------------------------------------------------------------------------
// local function prototypes
//------------------------------------------------------------------------------
static tOplkError initProcessImage(void);

//============================================================================//
//			P U B L I C   F U N C T I O N S								 //
//============================================================================//

//------------------------------------------------------------------------------
/**
\brief  Initialize the synchronous data application

The function initializes the synchronous data application

\return The function returns a tOplkError error code.

\ingroup module_demo_mn_console
*/
//------------------------------------------------------------------------------
tOplkError initApp(int wrapper_pid_income)
{
	printf("Booting up OPLK...\n");
	sleep(5);

	// FILE *pid_file = fopen("/home/al/dev/ros_wrapper.pid", "r");
	// if (pid_file == NULL)
	// {
	//	 printf("Error while booting up\n");
	//	 return 1;
	// }
	// fscanf(pid_file, "%i", &wrapper_pid);
	// fclose(pid_file);

	wrapper_pid = wrapper_pid_income;
	printf("Wrapper PID is %i\n", wrapper_pid);
	// FILE *map_file = fopen("/home/al/dev/mn.map", "r");
	// if (map_file == NULL)
	// {
	//	 printf("Couldn't find mn.map file\n");
	//	 return 1;
	// }
	// char header[32];
	// fscanf(map_file, "%s", header);
	// if (strcmp(header, "--MN_MAPPING--"))
	// {
	//	 printf("Wrong mapping format\n");
	//	 return 1;
	// }
	// fscanf(map_file, "%i %i", &IN_SIZE, &OUT_SIZE);
	// fclose(map_file);

	IN_SIZE = sizeof(PI_IN);
	OUT_SIZE = sizeof(PI_OUT);

	imageInData.shm_name = "OPLK_PI_IN";
	imageInData.length = IN_SIZE;
	init_shared_memory(&imageInData);
	if (imageInData.is_initialized)
	{
		shmImageIn = imageInData.address;
		printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", imageInData.shm_name);
	}
	else
	{
		printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", imageInData.shm_name);
	}

	imageOutData.shm_name = "OPLK_PI_OUT";
	imageOutData.length = OUT_SIZE;
	init_shared_memory(&imageOutData);
	if (imageOutData.is_initialized)
	{
		shmImageOut = (PI_OUT*)imageOutData.address;
		printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", imageOutData.shm_name);
	}
	else
	{
		printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", imageOutData.shm_name);
	}

	tOplkError ret = kErrorOk;

	ret = initProcessImage();

	return ret;
}

//------------------------------------------------------------------------------
/**
\brief  Shutdown the synchronous data application

The function shuts down the synchronous data application

\return The function returns a tOplkError error code.

\ingroup module_demo_mn_console
*/
//------------------------------------------------------------------------------
void shutdownApp(void)
{
	if (imageInData.is_initialized)
	{
		munmap(imageInData.address, imageInData.length * 2);
		shm_unlink(imageInData.shm_name);
		printf("[SH_MEM]\tShared memory unlinking for %s: OK\n", imageInData.shm_name);
	}
	if (imageOutData.is_initialized)
	{
		munmap(imageOutData.address, imageOutData.length * 2);
		shm_unlink(imageOutData.shm_name);
		printf("[SH_MEM]\tShared memory unlinking for %s: OK\n", imageOutData.shm_name);
	}

	tOplkError ret = kErrorOk;
	ret = oplk_freeProcessImage();
	if (ret != kErrorOk)
	{
		fprintf(stderr, "oplk_freeProcessImage() failed with \"%s\" (0x%04x)\n",
				debugstr_getRetValStr(ret), ret);
	}
}

//------------------------------------------------------------------------------
/**
\brief  Synchronous data handler

The function implements the synchronous data handler.

\return The function returns a tOplkError error code.

\ingroup module_demo_mn_console
*/
//------------------------------------------------------------------------------
tOplkError processSync(void)
{
	tOplkError	ret = kErrorOk;
	PI_IN		*test_pi_in;
	PI_OUT		*test_pi_out;

	ret = oplk_waitSyncEvent(100000);
	if (ret != kErrorOk)
		return ret;

	ret = oplk_exchangeProcessImageOut();
	if (ret != kErrorOk)
		return ret;

	test_pi_in = (PI_IN*)shmImageIn;
	test_pi_out = (PI_OUT*)pProcessImageOut_l;

	// printf("shmImageIn BEFORE:\n	cmdvel_lwheel=%ld | cmdvel_rwheel=%ld\n",\
	// test_pi_in->CN1_M0A_cmdvel_lwheel1, test_pi_in->CN1_M0B_cmdvel_rwheel2);
	// printf("pProcessImageOut_l BEFORE:\n	x_pos=%ld | y_pos=%ld | z_pos=%ld \n	x_orient=%ld | y_orient=%ld | z_orient=%ld | w_orient=%ld\n	odom_lwheel=%ld | odom_rwheel=%ld\n",\
	// test_pi_out->CN1_M01_mm_x_pos1, test_pi_out->CN1_M02_mm_y_pos2, test_pi_out->CN1_M03_mm_z_pos3, \
	// test_pi_out->CN1_M04_mm_x_orient4, test_pi_out->CN1_M05_mm_y_orient5, test_pi_out->CN1_M06_mm_z_orient6, test_pi_out->CN1_M07_mm_w_orient7, \
	// test_pi_out->CN1_M08_odom_lwheel8, test_pi_out->CN1_M09_odom_rwheel9);

	memcpy(pProcessImageIn_l, shmImageIn, IN_SIZE);
	memcpy(shmImageOut, pProcessImageOut_l, OUT_SIZE);

	test_pi_in = (PI_IN*)pProcessImageIn_l;
	test_pi_out = (PI_OUT*)shmImageOut;

	printf("pProcessImageIn_l AFTER:\n	cmdvel_lwheel=%ld | cmdvel_rwheel=%ld\n",\
	test_pi_in->CN1_M0A_cmdvel_lwheel1, test_pi_in->CN1_M0B_cmdvel_rwheel2);
	printf("shmImageOut AFTER:\n	x_pos=%ld | y_pos=%ld | z_pos=%ld \n	x_orient=%ld | y_orient=%ld | z_orient=%ld | w_orient=%ld\n	odom_lwheel=%ld | odom_rwheel=%ld\n",\
	test_pi_out->CN1_M01_mm_x_pos1, test_pi_out->CN1_M02_mm_y_pos2, test_pi_out->CN1_M03_mm_z_pos3, \
	test_pi_out->CN1_M04_mm_x_orient4, test_pi_out->CN1_M05_mm_y_orient5, test_pi_out->CN1_M06_mm_z_orient6, test_pi_out->CN1_M07_mm_w_orient7, \
	test_pi_out->CN1_M08_odom_lwheel8, test_pi_out->CN1_M09_odom_rwheel9);

	if(kill(wrapper_pid, SIGUSR1))
	{
		kill(0, SIGINT);
	}

	ret = oplk_exchangeProcessImageIn();

	/*
	UINT32 cyclen_read;
	UINT cyclen_len = 4;
	ret = oplk_readObject(&hdl, 1, 0x1006, 0, &cyclen_read, &cyclen_len, kSdoTypeAsnd, NULL);
	__bswap_32(cyclen_read);
	printf("(%i) My cycle is %i\n", ret, cyclen_read);
	*/

	return ret;
}

//============================================================================//
//			P R I V A T E   F U N C T I O N S							   //
//============================================================================//
/// \name Private Functions
/// \{

//------------------------------------------------------------------------------
/**
\brief  Initialize process image

The function initializes the process image of the application.

\return The function returns a tOplkError error code.
*/
//------------------------------------------------------------------------------
static tOplkError initProcessImage(void)
{
	tOplkError	  ret = kErrorOk;

	printf("Initializing process image...\n");

	ret = oplk_allocProcessImage(sizeof(PI_IN), sizeof(PI_OUT));
	if (ret != kErrorOk)
	{
		printf("mn initProcessImage: process image allocation failure\n");
		return ret;
	}
	printf("mn initProcessImage: process image allocated, ret = %u\n", ret);

	pProcessImageIn_l = (PI_IN*)oplk_getProcessImageIn();
	pProcessImageOut_l = (PI_OUT*)oplk_getProcessImageOut();

	ret = obdpi_setupProcessImage();
	printf("mn initProcessImage: function ret value = %u\n", ret);

	return ret;
}

/// \}
