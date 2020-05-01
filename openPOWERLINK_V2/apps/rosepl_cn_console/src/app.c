/**
********************************************************************************
\file   app.c

\brief  Demo CN application which implements a digital input/output node

This file contains a demo application for digital input/output data.

\ingroup module_demo_cn_console
*******************************************************************************/

/*------------------------------------------------------------------------------
Copyright (c) 2015, Bernecker+Rainer Industrie-Elektronik Ges.m.b.H. (B&R)
Copyright (c) 2013, SYSTEC electronic GmbH
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
#include <stddef.h>

#include <oplk/oplk.h>
#include <oplk/debugstr.h>

#include <stdio.h>

#include <eventlog/eventlog.h>

#include <string.h>
#include <signal.h>
#include <stdint.h>

#include "app.h"
#include "memory_api.h"
#include "shm_structs.h"
#include "xap.h"

// typedef struct
// {
//     BYTE digitalIn;
// } PI_IN;

// typedef struct
// {
//     BYTE digitalOut;
// } PI_OUT;

//============================================================================//
//            G L O B A L   D E F I N I T I O N S                             //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// module global vars
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// global function prototypes
//------------------------------------------------------------------------------


//============================================================================//
//            P R I V A T E   D E F I N I T I O N S                           //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// local types
//------------------------------------------------------------------------------
/* structure for input process image */

// local vars
//------------------------------------------------------------------------------
/* process image */
static PI_IN*   pProcessImageIn_l;
static PI_OUT*  pProcessImageOut_l;

static IPC_DATA     imageInData;
static PI_IN*       shmImageIn;
static IPC_DATA     imageOutData;
static PI_OUT*      shmImageOut;
static IPC_DATA     sdoData;
static SDO*      sdo;
static IPC_DATA     wrapperInfoData;
static WRAPPER_INFO*      wrapperInfo;

static int wrapper_pid;

//------------------------------------------------------------------------------
// local function prototypes
//------------------------------------------------------------------------------
static tOplkError initProcessImage(void);
static int IN_SIZE;
static int OUT_SIZE;

//============================================================================//
//            P U B L I C   F U N C T I O N S                                 //
//============================================================================//

//------------------------------------------------------------------------------
/**
\brief  Initialize the synchronous data application

The function initializes the synchronous data application

\return The function returns a tOplkError error code.

\ingroup module_demo_cn_console
*/
//------------------------------------------------------------------------------
tOplkError initApp(int wrapper_pid_income)
{
    tOplkError ret = kErrorOk;

    IN_SIZE = sizeof(PI_IN);
    OUT_SIZE = sizeof(PI_OUT);

    imageInData.shm_name = "OPLK_PI_IN";
    imageInData.length = IN_SIZE;
    init_shared_memory(&imageInData);
    if (imageInData.is_initialized)
    {
        shmImageIn = (PI_IN*)imageInData.address;
        printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", imageInData.shm_name);
    }
    else
    {
        printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", imageInData.shm_name);
        return 1;
    }

    imageOutData.shm_name = "OPLK_PI_OUT";
    imageOutData.length = sizeof(PI_OUT);
    init_shared_memory(&imageOutData);
    if (imageOutData.is_initialized)
    {
        shmImageOut = (PI_OUT*)imageOutData.address;
        printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", imageOutData.shm_name);
    }
    else
    {
        printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", imageOutData.shm_name);
        return 1;
    }

    sdoData.shm_name = "OPLK_SDO";
    sdoData.length = sizeof(SDO);
    init_shared_memory(&sdoData);
    if (sdoData.is_initialized)
    {
        sdo = sdoData.address;
        printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", sdoData.shm_name);
    }
    else
    {
        printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", sdoData.shm_name);
        return 1;
    }

    wrapperInfoData.shm_name = "OPLK_WRAPPER_INFO";
    wrapperInfoData.length = sizeof(WRAPPER_INFO);
    init_shared_memory(&wrapperInfoData);
    if (wrapperInfoData.is_initialized)
    {
        wrapperInfo = wrapperInfoData.address;
        printf("[SH_MEM]\tAccessing shared memory for %s: OK\n", wrapperInfoData.shm_name);
    }
    else
    {
        printf("[SH_MEM]\tAccessing shared memory for %s: FAIL\n", wrapperInfoData.shm_name);
        return 1;
    }

    // wrapper_pid = wrapperInfo->pid;
    wrapper_pid = wrapper_pid_income;
    printf("Wrapper PID is %i\n", wrapper_pid);

    ret = initProcessImage();

    return ret;
}

//------------------------------------------------------------------------------
/**
\brief  Shutdown the synchronous data application

The function shuts down the synchronous data application

\return The function returns a tOplkError error code.

\ingroup module_demo_cn_console
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

    if (sdoData.is_initialized)
    {
        munmap(sdoData.address, sdoData.length * 2);
        shm_unlink(sdoData.shm_name);
        printf("[SH_MEM]\tShared memory unlinking for %s: OK\n", sdoData.shm_name);
    }

    if (wrapperInfoData.is_initialized)
    {
        munmap(wrapperInfoData.address, wrapperInfoData.length * 2);
        shm_unlink(wrapperInfoData.shm_name);
        printf("[SH_MEM]\tShared memory unlinking for %s: OK\n", wrapperInfoData.shm_name);
    }

    oplk_freeProcessImage();
}

//------------------------------------------------------------------------------
/**
\brief  Synchronous data handler

The function implements the synchronous data handler.

\return The function returns a tOplkError error code.

\ingroup module_demo_cn_console
*/
//------------------------------------------------------------------------------
tOplkError processSync(void)
{
    tOplkError      ret = kErrorOk;

    if (oplk_waitSyncEvent(100000) != kErrorOk)
        return ret;

    ret = oplk_exchangeProcessImageOut();
    if (ret != kErrorOk)
        return ret;

    memcpy(pProcessImageIn_l, shmImageIn, sizeof(PI_IN));
    memcpy(shmImageOut, pProcessImageOut_l, sizeof(PI_OUT));

    if(kill(wrapper_pid, SIGUSR1))
    {
        kill(0, SIGINT);
    }

    ret = oplk_exchangeProcessImageIn();

    return ret;
}

static tOplkError initProcessImage(void)
{
    tOplkError      ret = kErrorOk;
    UINT            varEntries;
    /* Allocate process image */

    ret = oplk_allocProcessImage(sizeof(PI_IN), sizeof(PI_OUT));
    if (ret != kErrorOk)
    {
        return ret;
    }

    pProcessImageIn_l = oplk_getProcessImageIn();
    pProcessImageOut_l = oplk_getProcessImageOut();

    fprintf(stderr, "Linking process vars... START\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6000, 0x01, offsetof(PI_IN, CN1_M01_mm_x_pos1_mm_x_pos1),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M01_mm_x_pos1_mm_x_pos1), &varEntries);
    fprintf(stderr, "Linking process vars... 1\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6001, 0x01, offsetof(PI_IN, CN1_M02_mm_y_pos2_mm_y_pos2),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M02_mm_y_pos2_mm_y_pos2), &varEntries);
    fprintf(stderr, "Linking process vars... 2\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6002, 0x01, offsetof(PI_IN, CN1_M03_mm_z_pos3_mm_z_pos3),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M03_mm_z_pos3_mm_z_pos3), &varEntries);
    fprintf(stderr, "Linking process vars... 3\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6003, 0x01, offsetof(PI_IN, CN1_M04_mm_x_orient4_mm_x_orient4),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M04_mm_x_orient4_mm_x_orient4), &varEntries);
    fprintf(stderr, "Linking process vars... 4\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6004, 0x01, offsetof(PI_IN, CN1_M05_mm_y_orient5_mm_y_orient5),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M05_mm_y_orient5_mm_y_orient5), &varEntries);
    fprintf(stderr, "Linking process vars... 5\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6005, 0x01, offsetof(PI_IN, CN1_M06_mm_z_orient6_mm_z_orient6),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M06_mm_z_orient6_mm_z_orient6), &varEntries);
    fprintf(stderr, "Linking process vars... 6\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6006, 0x01, offsetof(PI_IN, CN1_M07_mm_w_orient7_mm_w_orient7),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M07_mm_w_orient7_mm_w_orient7), &varEntries);
    fprintf(stderr, "Linking process vars... 7\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6007, 0x01, offsetof(PI_IN, CN1_M08_odom_lwheel14_odom_lwheel14),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M08_odom_lwheel14_odom_lwheel14), &varEntries);
    fprintf(stderr, "Linking process vars... 8\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6008, 0x01, offsetof(PI_IN, CN1_M09_odom_rwheel15_odom_rwheel15),
                                      FALSE, sizeof(pProcessImageIn_l->CN1_M09_odom_rwheel15_odom_rwheel15), &varEntries);
    fprintf(stderr, "Linking process vars... 9\n\n");


    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6200, 0x01, offsetof(PI_OUT, CN1_M0A_cmdvel_lwheel1_cmdvel_lwheel1),
                                      TRUE, sizeof(pProcessImageOut_l->CN1_M0A_cmdvel_lwheel1_cmdvel_lwheel1), &varEntries);
    fprintf(stderr, "Linking process vars... 10\n\n");

    varEntries = 1;
    ret = oplk_linkProcessImageObject(0x6201, 0x01, offsetof(PI_OUT, CN1_M0B_cmdvel_rwheel2_cmdvel_rwheel2),
                                      TRUE, sizeof(pProcessImageOut_l->CN1_M0B_cmdvel_rwheel2_cmdvel_rwheel2), &varEntries);

    fprintf(stderr, "Linking process vars... ok\n\n");

    return kErrorOk;
}

// static tOplkError initProcessImage(void)
// {
//     tOplkError      ret = kErrorOk;
//     /* Allocate process image */

//     ret = oplk_allocProcessImage(IN_SIZE, OUT_SIZE);
//     if (ret != kErrorOk)
//     {
//         return ret;
//     }

//     pProcessImageIn_l = oplk_getProcessImageIn();
//     pProcessImageOut_l = oplk_getProcessImageOut();

//     FILE *map_file = fopen("/home/al/grad_project/dev/cn.map", "r");
//     if (map_file == NULL)
//     {
//         printf("Couldn't find cn.map file\n");
// 	    return 1;
//     }

//     char header[32];
//     if (fscanf(map_file, "%s\n", header) != 1)
//     {
//         printf("Error while reading cn.map file header\n");
//         return 1;
//     }
//     if (strcmp(header, "--CN_MAPPING--"))
//     {
//        printf("Wrong mapping format\n");
//        return 1;
//     }

//     int in_offset = 0;
//     int out_offset = 0;

//     UINT in_entries = 1;
//     UINT out_entries = 1;

//     while (!feof(map_file))
//     {
//         int size;
//         char type;
//         char index[6];
//         int subindex;

//         if (fscanf(map_file, "%c %s %i %i\n", &type, index, &subindex, &size) == -1)
//         {
//             printf("Error while reading cn.map file\n");
//             return 1;
//         }
//         if (type == 'i')
//         {
//             printf("Init process image object for input\n");
//             printf("Index: %d | Subindex: %d | Size: %d\n", (int)strtol(index, NULL, 16), subindex, size);
//             ret = oplk_linkProcessImageObject((int)strtol(index, NULL, 16), subindex, in_offset, FALSE, size, &in_entries);
//             in_offset += size;
//         }
//         else
//         {
//             printf("Init process image object for output\n");
//             printf("Index: %d | Subindex: %d | Size: %d\n", (int)strtol(index, NULL, 16), subindex, size);
//             ret = oplk_linkProcessImageObject((int)strtol(index, NULL, 16), subindex, out_offset, TRUE, size, &out_entries);
//             out_offset += size;
//         }
//         if (ret != kErrorOk)
//         {
//             printf("Error while linking image object: %i\n", ret);
//             return ret;
//         }
//     }

//     fclose(map_file);
//     return kErrorOk;
// }

// static tOplkError initProcessImage(void)
// {
//     tOplkError      ret = kErrorOk;
//     UINT            varEntries;
//     tObdSize        obdSize;
//     /* Allocate process image */

//     ret = oplk_allocProcessImage(sizeof(PI_IN), sizeof(PI_OUT));
//     if (ret != kErrorOk)
//     {
//         return ret;
//     }

//     pProcessImageIn_l = oplk_getProcessImageIn();
//     pProcessImageOut_l = oplk_getProcessImageOut();


//     obdSize = sizeof(pProcessImageIn_l->digitalIn);
//     varEntries = 1;
//     ret = oplk_linkProcessImageObject(0x6000, 0x01, offsetof(PI_IN, digitalIn),
//                                       FALSE, obdSize, &varEntries);
//     if (ret != kErrorOk)
//     {
//         fprintf(stderr, "linking process vars failed with \"%s\" (0x%04x)\n", debugstr_getRetValStr(ret), ret);
//         return ret;
//     }

//     obdSize = sizeof(pProcessImageOut_l->digitalOut);
//     varEntries = 1;
//     ret = oplk_linkProcessImageObject(0x6200, 0x01, offsetof(PI_OUT, digitalOut),
//                                       TRUE, obdSize, &varEntries);
//     if (ret != kErrorOk)
//     {
//         fprintf(stderr, "linking process vars failed with \"%s\" (0x%04x)\n", debugstr_getRetValStr(ret), ret);
//         return ret;
//     }


