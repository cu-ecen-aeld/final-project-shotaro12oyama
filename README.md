# ECEA 5307 Linux Embedded System Topics and Projects

# Overview
## Motivation
I worry about my kids play outside in extreme hot summer.
My project aim at tracking the weather information in the park periodically, then find if it is safe.

## Project Goals
+ Build a custom build root image for the Rapsberry pi
+ Write a custom I2C driver to communicate the temperature sensor and so on.
+ Write a user application to record the log of sensor information periodically

## Block Diagram
![Block Diagram](https://github.com/shotaro12oyama/final-project-assignment-shotaro12oyama/blob/main/Block.jpeg)


# Target Build System
Target Build System is buildroot. 

# Hardware Platform
I am using Rapsberry pi. Refer to the detais are [here](https://github.com/cu-ecen-aeld/buildroot-assignments-base/wiki/Raspberry-Pi-Hardware-Support). 


# Open Source Projects Used
1. [Linux source code tree](https://github.com/torvalds/linux)
2. [Raspberry Pi](https://www.raspberrypi.com/)

# Previously Discussed Content
1. Device Driver development - Lectures, Assignment (7-9), Linux Device Drivers, 3rd Edition, Jonathan Corbet, Alessandro Rubini.
2. Socket programming - Lectures, Assignment (4-9), Linux System Programming, 2nd Edition, Robert love
3. Building Linux kernel and image with buildroot - Lectures, Assignment 4,5,7,8


# New Content
+ Buildroot build for Raspberry Pi
+ Temperature sensors configuration
+ I2C custom driver and device tree configuration

# Shared Material
N/A

# Source Code Organization
Source code of this project is [here](https://github.com/cu-ecen-aeld/final-project-shotaro12oyama)

# Schedule Page
Shedule is [here](https://github.com/users/shotaro12oyama/projects/1).
