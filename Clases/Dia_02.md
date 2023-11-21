# Zynq and ZedBoard

Take care with the USB connectors

Depending of the jumpers are connected, the boot could be done by JTAG, QUAD-SPI flash memory or SD Memory card

SRAM (Synchronous RAM)

FPGA never save the bitstream inside their memory, has not flash memory inside, to make a persistence in the bitstream, it is necessary to sen the bitstream to the QUAD-SPI flash memory in order to the FPGA load this bitstream every time it turned on

Single ended and differential:
LVDS, electrical standard for input and output integrate circuits, it works mainly in high frequencies

Some time before the strategy was to transmit information through parallel interface, the problem is the noise inducted in the communication, but it was changed for a serial interface call LVDS where the signals switching between them, making a better noise rejection, the problem is they need to increase the frequency of the signals, this kind of configuration are call differential pairs.

PLL Phase Lock Loop, provide an interface to multiply an input frequency.

The input clock are provide for an external crystal, it feeds the PS and PL sides both.

———————————————————————————————————————————————

Differences between C and Embedded C

The capabilities of the processor systems are the most important constrain.

Code speed and code size

C for embedded systems use a particular compiler for ARM processors, it is build for a particular target and processors, it is different for Texas Instruments and microchip and others.

Some advantages:

It is small and reasonable simple to learn.
C has advantages in processor independence and is nor specific for any particular microprocessor

---

## C concepts

Basic types

- local variables and global variables:

Local are only accessed by the function itself, global are available on all the program, has a high memory consumption.

Static modifier makes the global variables works as local in a specific file, you can to use ‘static int flag’ in different files and the variable can to have different values on these files.

Volatile implies that the variable can be changed outside to the program, probably by the hardware, if not volatile and there is a condition dependen of a variable that not change in the program, the compiler optimize and delete the conditional, but with volatile it will not optimized.

Use of pointers:
Pointer correspond to a MEMORY ADDRESS


---

### GPIO set data direction

```c
void XGpio_SetDataDirection(XGpio *InstancePtr, unsigned Channel, u32 DirectionMask);
```

to read a pin value

```c
u32 XGpio_DiscreteRead(XGpio *InstancePtr, unsigned Channel);
```

and similar to write

when you include an IPCore in vivado, it willbe include in Vitis in the C Code

```c
#include "xspi.h"  /* SPI device driver */
```

it is important to know how to build your own custom IP. custom IP allow us to implement an IPCore that can be to imported into the Vivado environment.

AXI bus assigns a custom address to the specific IP Core.

It is possible to define macros as well

```c
#define LED_IP_mWriteReg(BaseAddress, RegOffset, Data) Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))
```


- When you create a custom IP< you need to load the specific IP Address in Vitis before use it.

---
