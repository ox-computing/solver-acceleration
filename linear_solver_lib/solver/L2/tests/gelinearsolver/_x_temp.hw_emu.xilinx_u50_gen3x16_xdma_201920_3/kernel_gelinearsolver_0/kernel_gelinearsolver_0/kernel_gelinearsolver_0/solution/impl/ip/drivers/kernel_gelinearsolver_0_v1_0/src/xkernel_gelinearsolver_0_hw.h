// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of na
//        bit 31~0 - na[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of dataA
//        bit 31~0 - dataA[31:0] (Read/Write)
// 0x1c : Data signal of dataA
//        bit 31~0 - dataA[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of dataB
//        bit 31~0 - dataB[31:0] (Read/Write)
// 0x28 : Data signal of dataB
//        bit 31~0 - dataB[63:32] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_AP_CTRL    0x00
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_GIE        0x04
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_IER        0x08
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_ISR        0x0c
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_NA_DATA    0x10
#define XKERNEL_GELINEARSOLVER_0_CONTROL_BITS_NA_DATA    32
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAA_DATA 0x18
#define XKERNEL_GELINEARSOLVER_0_CONTROL_BITS_DATAA_DATA 64
#define XKERNEL_GELINEARSOLVER_0_CONTROL_ADDR_DATAB_DATA 0x24
#define XKERNEL_GELINEARSOLVER_0_CONTROL_BITS_DATAB_DATA 64

