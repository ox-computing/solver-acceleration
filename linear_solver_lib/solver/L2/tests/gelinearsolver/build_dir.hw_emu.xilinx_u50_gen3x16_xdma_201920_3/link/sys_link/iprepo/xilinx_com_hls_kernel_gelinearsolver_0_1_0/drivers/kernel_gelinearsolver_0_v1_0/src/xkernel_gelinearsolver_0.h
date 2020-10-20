// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKERNEL_GELINEARSOLVER_0_H
#define XKERNEL_GELINEARSOLVER_0_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkernel_gelinearsolver_0_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XKernel_gelinearsolver_0_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XKernel_gelinearsolver_0;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKernel_gelinearsolver_0_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKernel_gelinearsolver_0_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKernel_gelinearsolver_0_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKernel_gelinearsolver_0_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKernel_gelinearsolver_0_Initialize(XKernel_gelinearsolver_0 *InstancePtr, u16 DeviceId);
XKernel_gelinearsolver_0_Config* XKernel_gelinearsolver_0_LookupConfig(u16 DeviceId);
int XKernel_gelinearsolver_0_CfgInitialize(XKernel_gelinearsolver_0 *InstancePtr, XKernel_gelinearsolver_0_Config *ConfigPtr);
#else
int XKernel_gelinearsolver_0_Initialize(XKernel_gelinearsolver_0 *InstancePtr, const char* InstanceName);
int XKernel_gelinearsolver_0_Release(XKernel_gelinearsolver_0 *InstancePtr);
#endif

void XKernel_gelinearsolver_0_Start(XKernel_gelinearsolver_0 *InstancePtr);
u32 XKernel_gelinearsolver_0_IsDone(XKernel_gelinearsolver_0 *InstancePtr);
u32 XKernel_gelinearsolver_0_IsIdle(XKernel_gelinearsolver_0 *InstancePtr);
u32 XKernel_gelinearsolver_0_IsReady(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_Continue(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_EnableAutoRestart(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_DisableAutoRestart(XKernel_gelinearsolver_0 *InstancePtr);

void XKernel_gelinearsolver_0_Set_na(XKernel_gelinearsolver_0 *InstancePtr, u32 Data);
u32 XKernel_gelinearsolver_0_Get_na(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_Set_dataA(XKernel_gelinearsolver_0 *InstancePtr, u64 Data);
u64 XKernel_gelinearsolver_0_Get_dataA(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_Set_dataB(XKernel_gelinearsolver_0 *InstancePtr, u64 Data);
u64 XKernel_gelinearsolver_0_Get_dataB(XKernel_gelinearsolver_0 *InstancePtr);

void XKernel_gelinearsolver_0_InterruptGlobalEnable(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_InterruptGlobalDisable(XKernel_gelinearsolver_0 *InstancePtr);
void XKernel_gelinearsolver_0_InterruptEnable(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask);
void XKernel_gelinearsolver_0_InterruptDisable(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask);
void XKernel_gelinearsolver_0_InterruptClear(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask);
u32 XKernel_gelinearsolver_0_InterruptGetEnabled(XKernel_gelinearsolver_0 *InstancePtr);
u32 XKernel_gelinearsolver_0_InterruptGetStatus(XKernel_gelinearsolver_0 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
