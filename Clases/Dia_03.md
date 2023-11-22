# VHDL Introduction




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
_vectorsignal max_rem: unsigned (7 downto 0);
signal more_t: std_logic_vector (7 downto 0);

max_rem <= more_t;

max_rem <= unsigned(more_t);
```

Also is possible to use a conversion function to make the cast


## Reconfigurable virtual instrumentation 

#### From Advanced Instrumentation Towards Supercomputing

- **Supercomputing**: Activities regarding to the mos efficient and high performance computong.
- **Reconfigurable computing**: Provides the possibility to create your own hardware to implement supercomputing
