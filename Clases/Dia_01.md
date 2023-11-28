# Introduction

Adum Salam, fundador del ICTP, tienen la responsabilidad de contribuir al desarrollo de países en desarrollo

Microporcesadores, sistemas operativos en tiempo real, VLSI design technics, FPGA Design and VHDL, y Reconfigurable computing

Embedded programer, the course is challenging and very complex, in just two weeks,

They provide some templates and show to make some projects.

Instrumentation is very complex, huge computational requirements.

Lecturers for different worlds, academia, industry, research institutions.

Particle physics experiments, this kind of experiments are characterized by the huge amount of channels, houndre of thousand of channels or million channels.

Welcome to the school.

Website: https://indico.ictp.it/event/10225

Email: smr3891@ictp.it

Gitlab: https://gitlab.com/ictp-mlab/smr-3891/-/wikis/home

————————————————————————————————————————————————————————————————————————

System on a Programable Chip (SoPC) - Cristian Sisterna

VHDL and Verilog, FPGA, SoC, ‘C’

Division are on ASIC-> Soc

Application Specific Integrated Circuit

PLD -> Programable Logic Device

ASICs includes memory block, microprocessors.

FPGA -> Field Programmable Gate Array

Is designed to be configurative after the production of tele chip for a designer, that why it is call field programable, depends of a field of application.

FPGA are not mad4e to ne application specirbivf as opposed to ASICs

FPGA configuration is made on HDL language

Can be see as LEGO bricks

FPGA has, memory blocks, DSP blocks, Clock Manager, I/O Blocks, Logic + FlipFlops, and communication interfaces

What is a SOC, it is an integrated circuit.

System o a board, all the elemento of the circuit distributed on a board, now the methodology is related to the use of system on a chip, the system is integrated on a chip. They are very expensive to fabricate.

Embedded system on chip, processor, memory, and peripherals connected through AXI Bus.peripherals has capability to connectt externally through I/O pins.

SoC is divide on PS (Processor system) and PL (Programmable Logic).

AXI Bus… made taxi communications

In the processor can be allocate the application, aporating system and hardware interface. That is call Software Stack.

PL side we are going to use VHDL, also we can use Third part IPs. (opencores.org), HLS high level synthesis. HDL coder for MatLab, core generator for Simulink
The three last are for Rising the Abstraction level.

We use Zynq - AMD SoPC.

ASIC SoC:

AntiFuse, is a technology inverse to fuse, when something demands current, the connection is made.

SoPC Design Flow

- Know the requirements
- Define the specifications
- System design, Software/Hardware partitioning

* Hardware development and simulation					* Software development and simulation

- IP Cores									- Software modules
- Placement and timing constrains					- Operating systems

+ Vivado IP Integrator							+ Software development Vitis

System Integration and Debug.

Constrains -Routeplaning is to configure the places of the FPGA to improve the performance.

Constrains is define the location of the pins

In the development is very important the simulation.

Vivado produce .bit file (Bitstream), Vitis produce .elf file (Executable and Linkable Format)

—————————————————————————————————————————

SoPC Architecture and Design Methodology

The basic part is the CLB

Combinatory are implemented on the LUT, Look Up Tables
Sequential are implemented on the FFS, FlipFlops

The most important part in the PS part are the ARM Cores.

- Application processing unit (APU)
- I/O peripherals (IOP): multiplexed I/O (MIO) or Extended Multiplexed (EMIO)

Clock are PLL or DLL, input frequency.

PS-PL interface

AXI high performance space ports (HP0-HP3)

- configurarle 32 bit or 64 bit data width
- Access to OCM and DDR only
  AXI FIFO interface

MIO are directly connected to the PS, they are not available for the PL side

———————————————————————————————————

Design methodology

Define specifications

- use of IP cores and design in HDL
- Create a project using block design
- define the constrains
- Elaborate and make behavioral verification.
- Synthesis takes the VHDL code and transform in connections between LUT and FFS to make logic.
- Place and route
- Timing verification (Running in a very high performance applications)

* Bitstream generation and hardware export

Design Specifications

- Spec can specify:

* Functionality
* Timing
* Interfaces
* Power

Funcional verification:

- Development of a test plan
- Development of test benches
- Execution of the simulation

RTL desing

Test plan:

- involve exhaustive simulation
-
