PMSM Motor Simulink Model for the IO334 FPGA module
===================================================

This repository contains the test and main models for the simulation of PMSM motors on the IO334 FPGA module. Models in _hil_ folders require hardware interfacing via the I/O box or IO3XX-21 rear plugin to be able to run the model properly, while models in _sim_ folders are entirely software-based simulations.

How to run
----------

For both hardware-in-the-loop (HIL) and software simulation, run the corresponding Simulink Real-Time (SLRT) model located the the folder _pmsm_fpga_. For the HIL version, an embedded controller is required to drive the PMSM. The pin and analog output mappings are listed below:

> **IO3XX-21 rear plugin**
> 
> Inports:
> 
> - Pin 1 - _TTL_CAP_A_
> - Pin 2 - _TTL_CAP_B_
> - Pin 3 - _TTL_CAP_C_
> 
> Outports:
>
> - Pin 10 - _TTL_QAE_A_
> - Pin 11 - _TTL_QAE_B_
> - Pin 12 - _TTL_QAE_C_

> **IO334 I/O box**
> - AO Channel 1 - _DAC_ia_
> - AO Channel 2 - _DAC_ib_
> - AO Channel 3 - _DAC_ic_
> 
> RJ45 Pin Mapping:
> 
> - Pin 2 - _AO Channel 1_
> - Pin 6 - _AO Channel 2_
> - Pin 5 - _AO Channel 3_
> 
> Use RJ45 pins 1, 3, 4, or 7 for ground.

Reading current
---------------

The current values within the Simulink model has a 1:1 ratio with amperage. Due to the FPGA analog output channel being 16-bit, the current values have been upscaled by a factor of 8 to preserve precision during their conversion from a _double_ to _int16_ data type. Additionally, the analog output has a voltage range of ±10 V. Therefore, the current values have been scaled proportionally to project a voltage range of 0–3.3 V in order to accommodate the operating voltage range of a typical microcontroller.

In order to get the correct current readings of the motor from the analog output, the voltage values have to be mapped from 0–3.3 V to -32768–32767, followed by a divison of 8.
