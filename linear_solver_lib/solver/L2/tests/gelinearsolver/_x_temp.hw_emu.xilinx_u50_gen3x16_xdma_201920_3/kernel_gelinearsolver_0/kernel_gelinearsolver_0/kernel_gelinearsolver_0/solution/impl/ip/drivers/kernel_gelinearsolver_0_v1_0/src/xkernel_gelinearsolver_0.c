// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkernel_gelinearsolver_0.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKernel_gelinearsolver_0_CfgInitialize(XKernel_gelinearsolver_0 *InstancePtr, XKernel_gelinearsolver_0_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKernel_gelinearsolver_0_Start(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKernel_gelinearsolver_0_IsDone(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKernel_gelinearsolver_0_IsIdle(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKernel_gelinearsolver_0_IsReady(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKernel_gelinearsolver_0_Continue(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKernel_gelinearsolver_0_EnableAutoRestart(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKernel_gelinearsolver_0_DisableAutoRestart(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL, 0);
}

void XKernel_gelinearsolver_0_Set_na(XKernel_gelinearsolver_0 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_NA_DATA, Data);
}

u32 XKernel_gelinearsolver_0_Get_na(XKernel_gelinearsolver_0 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_NA_DATA);
    return Data;
}

void XKernel_gelinearsolver_0_Set_dataA(XKernel_gelinearsolver_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAA_DATA, (u32)(Data));
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAA_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_gelinearsolver_0_Get_dataA(XKernel_gelinearsolver_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAA_DATA);
    Data += (u64)XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAA_DATA + 4) << 32;
    return Data;
}

void XKernel_gelinearsolver_0_Set_dataB(XKernel_gelinearsolver_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAB_DATA, (u32)(Data));
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAB_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_gelinearsolver_0_Get_dataB(XKernel_gelinearsolver_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAB_DATA);
    Data += (u64)XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAB_DATA + 4) << 32;
    return Data;
}

void XKernel_gelinearsolver_0_InterruptGlobalEnable(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_GIE, 1);
}

void XKernel_gelinearsolver_0_InterruptGlobalDisable(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_GIE, 0);
}

void XKernel_gelinearsolver_0_InterruptEnable(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER);
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER, Register | Mask);
}

void XKernel_gelinearsolver_0_InterruptDisable(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER);
    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKernel_gelinearsolver_0_InterruptClear(XKernel_gelinearsolver_0 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_gelinearsolver_0_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_ISR, Mask);
}

u32 XKernel_gelinearsolver_0_InterruptGetEnabled(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER);
}

u32 XKernel_gelinearsolver_0_InterruptGetStatus(XKernel_gelinearsolver_0 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_gelinearsolver_0_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_ISR);
}

