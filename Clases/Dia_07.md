# The European Spallation Source Data Acquisition

Author: Richard HALL-WILTON

Spallation facilities has one of the biggest Neutrino ray in the world.

![1701159750772](image/Dia_07/1701159750772.png)

Measurement of the cross section and the probability to measure the Neutrino from the beam.

The target is located in the center of the experiment, and the neutrino bean is accelerate to this. Also they mentioned the use of Proton beam.

![1701160094637](image/Dia_07/1701160094637.png)

About the sensor:

**Typical detector requirements**:

- Size from 0.25m^2 up to 30m^2
- Position resoluton 100um - 10mm
- Time resolution <1us
- Rate and DAQ requirements very much defined by the instrument and data topology
- Can be >MHz/channel instantaneous in some cases
- Average rates much lower
- Every instrument is very much a bespoke individual design
- For a good user experience
  - it is important to design the detector to the individual detector
  - It is important to make sure that the DAQ can cope with the and has a homogeneous look and feel.

### Structure of a Detector


### Pipeline

- **Data acquisition**
- **Calculation**: Based on previous experiments, previous observations, model building
- Simulation
- Prototype

![1701160919900](image/Dia_07/1701160919900.png)

## Some Spectral techniques

![1701161105332](image/Dia_07/1701161105332.png)

![1701161200511](image/Dia_07/1701161200511.png)

It is how a final data processed is looked

![1701161217055](image/Dia_07/1701161217055.png)

## Data Acquisition Chain

The integration of the DAQ for the instruments is done at hte backend readout electronics

![1701161482634](image/Dia_07/1701161482634.png)

How the Readout electronics is configurate?

![1701161875528](image/Dia_07/1701161875528.png)

**VMM3A** is equivalent to the **VFAT**, also can to works with GEMs.

![1701162030895](image/Dia_07/1701162030895.png)

#### Some final thought

- Development time is long, takes around 10 years to have data
- All the proposal project begins in 1950 and is spected that works fully in 2030.
- It is necessary to do collaboration with other institutions to build the different stages of the experiment.

## Summary

![1701162497079](image/Dia_07/1701162497079.png)

---

# Switch architectures for Data Center networks

Author: Piero CASTOLDI

Director of Scoula Superiore Sant'Anna in Pissa. FPhotonics and integrated circuits.

> Instituto comprises telecommunications, working in different segments of tlecom, 5g, mobile, Also cyberphysical systems. Artificial Intelligence, Robotics, Photonics as the evolution of electronics, based on the transport of photons. 
>
> They have a PhD program in photonics, and they are open for applications.

## Data Center Architectures

Server racks in Google DC

Classical architecture is made as blades, now there is a hierarchical architecture

- THe interconnection is made by switchs

The two times redundancy is applyed to the architecture

- Distributed architecture:

![1701165236848](image/Dia_07/1701165236848.png)

#### Difference between electronics and photonics

Photonics allows high speed but not memory, you can not store information in photonics domain.

![1701165409732](image/Dia_07/1701165409732.png)

Other difference is that the time domain is possible both in electronics and photonics, but wavelength domain are also available in both but in electronics with a lot of limitations.

![1701165561795](image/Dia_07/1701165561795.png)

In communication architecture is necessary to do switch between electronics and photonics, photonics is so usefull for high speed information transmition, but still it is necessary electronics to make a information storage and persistance.

**Interesting topic: Photonics in circuit**

### Types of architectures

![1701165992259](image/Dia_07/1701165992259.png)

##### Typical scheme to transform from pohotonics to electronics

In this when there is a photon in the photodiode, this produce a current thart moves through the resistor and produce a voltage drop in the circuit, this can be interpretate as a input signal as well.

![1701166428776](image/Dia_07/1701166428776.png)

#### Other architecture

![1701166509717](image/Dia_07/1701166509717.png)

There is a central wave guide in a microscale, also there are microrings that can transfer the optical power into the ring. other part is to change the temperature inside. the ring works to couple of decouple.

![1701166705763](image/Dia_07/1701166705763.png)

They reconfigurates itself to move data from source to a sink in different space directions.  

The synchronization and the transport is managed by a scheduler algoritm. there are a lot of these units in the system.

![1701167224305](image/Dia_07/1701167224305.png)

---
