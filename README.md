### PMSM Motor Simulink Model for the IO334 FPGA module

This repo contains the test models and main models for the simulation of PMSM motors on the IO334 FPGA module. Models in _hdw_ folders require hardware interfacing via the I/O box or IO3XX-21 rear plugin to be able to run the modek properly, while models in _pcie_ folders are entirely software-based simulations.

HDL project folders are not included, so they have to be rebuilt using HDL Workflow Advisor to be able to run the model.

Run _motor.mat_ to load workspace variables for the PMSM motor.