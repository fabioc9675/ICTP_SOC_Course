# VHDL Introduction

## Introduction to VHDL (Hardware Description Language)

---

some introduction
-----------------

### Understanding concurrency

the idea is to split hierarchical the design, evaluate what is in the top level

synthesize translate the VHDL code to gates, you need after that to verify the functonshio of the code, it can be done with testbench.

#### VHDL Data Types

this languaje is strongly typeset, it is necessary to define the type of variables or data, it allows to reduce the errors and overflowing of memory.

std_logic types

```vhdl
PACKAGE std_logic_1164 IS
    -----------------------------------------------------------
    -- logic sgate system (unresolved)
    -----------------------------------------------------------
    TYPE std_ulogic IS ( 'U',    -- Uninitialized
                         'X',    -- Forcing unknown
                         '0',    -- Forcing 0
                         '1',    -- Forcing 1
                         'Z',    -- High Impedance
                         'W',    -- Weak        Unknown
                         'L',    -- Weak 0
                         'H',    -- Weak 1
                         '-',    -- Wild card
                       );
    SUBTYPE std_logic IS resolved std_ulogic;
```

it is possible to do casting to, for aritmetical operations

`datatype <= type(datatype)`

```vhdl
signal max_rem: unsigned (7 downto 0);
signal more_t: std_logic_vector (7 downto 0);

max_rem <= more_t;

max_rem <= unsigned(more_t);
```

Also is possible to use a conversion function to make the cast

## Reconfigurable virtual instrumentation

#### From Advanced Instrumentation Towards Supercomputing

- **Supercomputing**: Activities regarding to the mos efficient and high performance computong.
- **Reconfigurable computing**: Provides the possibility to create your own hardware to implement supercomputing

##### Custom computing problem

- Which is the best reconfigurable harware?
- Which language dshould be used
- Which tools should be developed to configure the hardware needed
- Which tools should be developed to compile the code for the efficient execution

### Two main Computational Paradigms

Scarcity of area and low circuit integration (**The uProcesor paradigm**)

- Intensive reutilization of limited HW resources
- Computation along time
  - Usaully provide serial and sequential computing capabilities,

Abindance of area anf high circuit integration (**The FPGA paradigm**)

- Allocation of HW resources as needed
- Computation along space
  - provide posibility to do parallel computation depending on the design. programing logic resources.

---

##### Instrument architecture

PC `<=>` Microprocessor `<=>` FPGA

- **PC**: Allows to implement the virtual instrument to interact with the hardware
- **uPS**: Allows not to much reconfiguration but it is easy to implement and control from PC
- **FPGA**: Provide more possibilities from hradware reconfiguration and synthesis

##### COMPASS Experiment

Creation of instruments to acquire data from 400 channels

##### DSP

DSP or digital Signal Processing are systems that allows to do complex aritmetical operation to do more complex calculations and operations.

#### The abstraction

This involves the hardware configuration and the definition of the activities to be developed with this hardware.

We need to describe the activity, the activity means exchange of data. Synchronization, we assume the activity is synchronous, is move through a clock signal. how much activity can be done in a peroid of time.

In ICTP, they create Universal Direct Memory Access `UDMA`, to create the hardware interconnection.

### UDMA Instructions

`UDMA 0x0000F001 0x0000F00A 1 1 256` 	RAM to RAM

`UDMA 0x0000F002 0x0002F00B 1 0 1024` 	RAM to FIFO

`UDMA 0x0000F003 0x0004F00C 0 1 256` 	FIFO to RAM

`UDMA 0xAAAAF003 0x008FAA80 4 1 2000` 	RAM to RAM

`UDMA 0xAAAA4004 0x000FAA40 0 0 0` 		Permanent Link

`UDMA 0xFFFF4004 0x000FAA00 4 1 1024 "time > countmax" Abort` 		Conditional data transfer

`UDMA 0xFFFF4004 0x000FAA00 4 1 1024 "counter1 == 31" Suspend` 		Conditional data transfer

Other instructions are

`UDMA_BC SA {DA_1, ..., DA_k} N NC <BC> <R>`

`UDMA_GRR {SA_1, ..., SA_k} DA N NC <BC> <R>`

* **SA**: Source Address
* **DA**: Destination Address
* **N**: Number of words per cycle
* **NC**: Number of cycles
* **BC**: Boolean condition
* **R**: Reaction

| Function      | Description               |
| ------------- | ------------------------- |
| `UDMA_BC`   | BroadCast                 |
| `UDMA_DRR`  | Distribute Round Robin    |
| `UDMA_DTFF` | Distribute Till FIFO Full |
| `UDMA_GRR`  | Gathering Round Robin     |
| `UDMA_GTFE` | Gathering Till FIFO Empty |

TO associate VHDL code with these instructuons we need to stardardizate a port and everything that this involves.

For advance instrumentation, everything is designed in FPGA side, because the limitations of the co-processor, mainly when there are critical parts to consider in the design.

The industry demands a lot of programmers becuase is centered in make more confortable the programming, frezze the hardware and provide the possibilities for programmers, but in Scientific instrumentation, the process of measurement are centered in use high performance tools, then it is necessary to design in High Level Tools (FPGA). Normally in instrumentation is in FPGA part.

| Hardware configuration | Software programming |
| ---------------------- | -------------------- |
| Modularity             | Time computation     |
| Hierarchy              | Space computation    |
| Functional blocks      | uP Instruction set   |
| Instatiation           | UDMA instruction set |
| Memory mapping         | Architecture         |
| Interconnection        | Implementation       |

In ICTP there are an architecture of computing made by an array of FPGA UltraScale+, in the photo they show 4x4 architecture, everything interconnected to improve the speed of sharing of the data, but it is scalable to NxN size. All the FPGA are connected with their neighbors. The interconnection is made under the OSI Model and can to have any topology that they wish. They use this as a computation cluster. Each board has an external memory. You can to use external RAM memory devices ut you need to design your electronics and it is very sensible to economical costs.

---

# VHDL statements

### Exercise

Translate the follow truth table to VHDL code

| A | B | C | Y |
| - | - | - | - |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | - |
| 1 | 1 | 1 | - |

The solution is:

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity TRUTH_TABLE is
    port(A, B, C: in  std_logic;
               Y: out std_logic);
end TRUTH_TABLE;

architecture BEHAVE of TRUTH_TABLE is
    signal S1: std_logic_vector(2 downto 0);
begin
    S1 <= A & B & C; -- concatenate A, B, C
    with S1 select
        Y <= '1' when "000" | "010" | "100" ,
             '0' when "001" | "011" | "101" ,
             '-' when others;
end BEHAVE;
```

#### Process Statement

A process statement is a concurrent sequential statement, can be see as a infinity loop.

A process has two states, execution and wait, wait is until a condition is satisfied

```vhdl
[process_label:] process [(sensitivity_list)] [is]
[process_data_object_declarations]
begin
  everything_is_here_inside
end process [process_label]
```

Combinational process contains all the input signals in a sensitivity list, If a signal is ommited from the sensitivity list, the behavior can be wrong. All he output signals from the process must be assigned value.

#### if Statement

```vhdl
if (var = "00") then
   outvar <= "0101";
elsif (var = "01") then
   outvar <= "0001";
else
   outvar <= "0000";
end if;
```

one mistake, it is necessary to assign values to all the signals in the statement, because if not, it can cause some warnings an more hardware.

#### case Statement

```vhdl
case sel is
    when "00" =>
       outvar <= '0';
    when "01" =>
       outvar <= '1';
    when "10" =>
       outvar <= '0';
    when others =>
       outvar <= '1';
end case;
```

#### for Statement

```vhdl
entity match_bit is
  port (a, b    : in  std_logic_vector(7 downto 0);
           y    : out std_logic_vector(7 downto 0));

end match_bit;

architecture behavior of match_bit is
begin
  for i in a'range loop
    y <= '1';
  end loop;
end behavior;
```

`range` is call atributte, takes information of the signal, in thos case takes the size, and replace the `a'range` for `(7 downto 0)`. there is another attribute call `len` that return the leng of the vector, in this case `a'len` is `8`

`signal` works as a wire between inputs and outputs.

you can not mix types in VHDL, there will present a error.

#### D Flip-Flop VHDL

---

# Verification and TestBench

It is important part of the design process, helps to know if the design works as I spect.

The structure of verification code is the follow:

```vhdl
library ieee;
use ieee.std_logic_1164.all;                -- Define library, same as in VHDL source code

entity test_my_design is
end test_my_design;                         -- VHDL model without entity interface

architecture testbench of test_my_design is
  component my_design is
    port (a, b : in  std_logic;
          x, y : out std_logic);
  end component;                            -- Component declaration of the device to test

  signal as, bs : std_logic:='1';  
  signal xs, ys : std_logic;                -- Define signal names, the initialization of value just works in test, not in synth.

begin
  uut : my_design port map
        (a=>as, b=>bs, x=>xs, y=>ys);       -- Instatiate UUT in testbench

    as <= not(as) after 50 us;  

  process begin
    bs <= '1'; wait for 75 us;
    bs <= '0'; wait for 25 us;
  end process;

end testbench;                              -- Define the stimulus for the inputs of the cmponent under test
```

#### Wait statements

`wait for` is to wait for certain time and going

`wait on` is to wait until some condition occurs

#### Period signal generation

this generates signal clocks with a specific period of time

#### Data generation

This assign values to the variables, can be use with wait to stop the execution for a period of time

`assert` is use to compare the output with an spected value, in case it is not, can to be generate a `report severity ERROR;`

---

# Laboratory 2 - ComBlock

AXI Bus allows to connect the PL with the PS, it provide an address that is used for the PS, the `ComBlock` or Communication Block was designed for ICTP to connect to the AXI Bus any interface easily, as for example RAM, FIFOS, Peripherals, etc.

ComBlock is asynchronous, it does not deppend of the system clock.

TDRAM can comunicato to the PL and to the PS.

everything configured on AXI protocol is mapped on `xparameter.h` file, now, everything configurate in ComBlock in in `comblock.h` file.

### Functions to read and write data

```c
/* Interaction with single data */
void cbWrite(UINTPTR baseaddr, u32 reg, u32 value);
u32 cbRead(UINTPTR baseaddr, u32 reg);

/* Interaction with streaming data */
void cbWriteBulk(UINTPTR baseaddr, int *buffer, u32 depth);
void cbReadBulk(int *buffer, UINTPTR baseaddr, u32 depth);
```

### Comblock availability

the ComBlock IP can be clone from the [repository](https://gitlab.com/ictp-mlab/core-comblock.git), and it is free for use.
