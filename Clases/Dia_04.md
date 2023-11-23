# The importance of Reconfigurable Hardware in Virtualized Communication Network

author: luca.valcarenghi@santannapisa.it

The problem of have hardware accelerator and processor is to communicate the data beetween them, is to transport and synchronize the data to obtain the desire performance.

Data transfer impact the Virtualized Network Function (VNF) 

Acceleration can impruve the performance of the network, but consider the issues in the data transfer. If you have the possibility to access to the memory very quickly, faster you can to make the data processing.

The virtualization begins with virtual machines

Use of Smart Network Interface Cards (Smart NIC), to improve the performance of physical layers.

![1700729497683](image/Dia_04/1700729497683.png)

There is limitations between the quantity of data received through the communication bus and the quantity of data to be processed.

The pipeline is: Hardware acceleration -> performance -> Data packing -> Data sharing and processing.

**OFDM**, is a technique of modulation in frequency to send data.

The CPU usually is more energy hungry than the FPGA, that is other advantage of the reconfigurable hardware.

#### Performance meaurements

- Speed of processing

![1700730137683](image/Dia_04/1700730137683.png)

GPU shows the best performance, but an interesting think is the stability of the FPGA performance don't matter the size of the data to be process, , CPU only are better since the number of cores increases.

- Energy usage

![1700730242242](image/Dia_04/1700730242242.png)

GPU has more power comsumption, but the FPGA has better stability an lower comsumption.

---
