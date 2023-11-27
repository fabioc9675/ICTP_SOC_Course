
/* from https://gitlab.com/kbogt/infn_pamp/-/blob/master/SDK/UDMA_workspace/udma/src/comblock_configs.h
This file contains the definitions for the multiple instantiated Comblocks.
For each new Comblock in the design a new entry in the XComblock_ConfigTable must be done.
All required values are defined inside xparameters.h file.
*/

#ifndef COMBLOCK_CONFIG
#define COMBLOCK_CONFIG

#include "xparameters.h"
#include "comblock.h"

#define true 1
#define false 0

typedef struct {
    u32 DEVICE_ID;
    u32 AXIL_BASEADDR;
    u32 AXIL_HIGHADDR;
    u32 AXIF_BASEADDR;
    u32 AXIF_HIGHADDR;
    u32 REGS_IN_ENA;
    u32 REGS_IN_DWIDTH;
    u32 REGS_IN_DEPTH;
    u32 REGS_OUT_ENA;
    u32 REGS_OUT_DWIDTH;
    u32 REGS_OUT_DEPTH;
    u32 DRAM_IO_ENA;
    u32 DRAM_IO_DWIDTH;
    u32 DRAM_IO_AWIDTH;
    u32 DRAM_IO_DEPTH;
    u32 FIFO_IN_ENA;
    u32 FIFO_IN_DWIDTH;
    u32 FIFO_IN_DEPTH;
    u32 FIFO_IN_AFOFFSET;
    u32 FIFO_IN_AEOFFSET;
    u32 FIFO_OUT_ENA;
    u32 FIFO_OUT_DWIDTH;
    u32 FIFO_OUT_DEPTH;
    u32 FIFO_OUT_AFOFFSET;
    u32 FIFO_OUT_AEOFFSET;
} Comblock_Config;
        
Comblock_Config XComblock_ConfigTable[XPAR_COMBLOCK_NUM_INSTANCES] = 
{
    {
    	XPAR_COMBLOCK_0_DEVICE_ID,
    	XPAR_COMBLOCK_0_AXIL_BASEADDR,
    	XPAR_COMBLOCK_0_AXIL_HIGHADDR,
        XPAR_COMBLOCK_0_AXIF_BASEADDR,
        XPAR_COMBLOCK_0_AXIF_HIGHADDR,
    	XPAR_COMBLOCK_0_REGS_IN_ENA,
    	XPAR_COMBLOCK_0_REGS_IN_DWIDTH,
    	XPAR_COMBLOCK_0_REGS_IN_DEPTH,
    	XPAR_COMBLOCK_0_REGS_OUT_ENA,
    	XPAR_COMBLOCK_0_REGS_OUT_DWIDTH,
    	XPAR_COMBLOCK_0_REGS_OUT_DEPTH,
    	XPAR_COMBLOCK_0_DRAM_IO_ENA,
    	XPAR_COMBLOCK_0_DRAM_IO_DWIDTH,
    	XPAR_COMBLOCK_0_DRAM_IO_AWIDTH,
    	XPAR_COMBLOCK_0_DRAM_IO_DEPTH,
    	XPAR_COMBLOCK_0_FIFO_IN_ENA,
    	XPAR_COMBLOCK_0_FIFO_IN_DWIDTH,
    	XPAR_COMBLOCK_0_FIFO_IN_DEPTH,
    	XPAR_COMBLOCK_0_FIFO_IN_AFOFFSET,
    	XPAR_COMBLOCK_0_FIFO_IN_AEOFFSET,
    	XPAR_COMBLOCK_0_FIFO_OUT_ENA,
    	XPAR_COMBLOCK_0_FIFO_OUT_DWIDTH,
    	XPAR_COMBLOCK_0_FIFO_OUT_DEPTH,
    	XPAR_COMBLOCK_0_FIFO_OUT_AFOFFSET,
    	XPAR_COMBLOCK_0_FIFO_OUT_AEOFFSET
    }
    
};
#endif
