// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkernel_gelinearsolver_0.h"

extern XKernel_gelinearsolver_0_Config XKernel_gelinearsolver_0_ConfigTable[];

XKernel_gelinearsolver_0_Config *XKernel_gelinearsolver_0_LookupConfig(u16 DeviceId) {
	XKernel_gelinearsolver_0_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNEL_GELINEARSOLVER_0_NUM_INSTANCES; Index++) {
		if (XKernel_gelinearsolver_0_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKernel_gelinearsolver_0_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_gelinearsolver_0_Initialize(XKernel_gelinearsolver_0 *InstancePtr, u16 DeviceId) {
	XKernel_gelinearsolver_0_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_gelinearsolver_0_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_gelinearsolver_0_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

