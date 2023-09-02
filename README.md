# ECEA 5307 Linux Embedded System Topics and Projects

# Overview
## Motivation
I believe there are pet owners who want to know how thier cat walk around during day time.
My project aim at tracking the cat behavior by using the GPS sensor and record its location periodically.

## Project Goals
+ Build a custom build root image for the Rapsberry pi
+ Write a custom UART driver to communicate the GPS driver
+ Write a user application to record the log of GPS information periodically

## Block Diagram





# Target Build System
Target Build System is buildroot. 

# Hardware Platform
I am using Rapsberry pi. Refer to the detais are [here](https://github.com/cu-ecen-aeld/buildroot-assignments-base/wiki/Raspberry-Pi-Hardware-Support). 


# Open Source Projects Used
N/A

# Previously Discussed Content
1. Device Driver development - Lectures, Assignment (7-9), Linux Device Drivers, 3rd Edition, Jonathan Corbet, Alessandro Rubini.
2. Socket programming - Lectures, Assignment (4-9), Linux System Programming, 2nd Edition, Robert love
3. Building Linux kernel and image with buildroot - Lectures, Assignment 4,5,7,8


# New Content
Buildroot build for rapsberry pi
GPS sensor (MTK3339) and Accelerometer MPU 6050 sensors configuration.
UART custom driver and device tree configuration.
Build WebClient with server Thingspeak

# Shared Material
TBD: Detail any portion of the project leveraged from other coursework or using [components from previous semesters](https://github.com/cu-ecen-5013/buildroot-assignments-base/wiki) by yourself or others.

# Source Code Organization
TBD: Modify the content below:

Buildroot or Yocto Repository will be hosted at [TBD]

ApplicationX code will be hosted in in a repository at [TBD]

We request X additional repositories for application Y and Z.

# Schedule Page
Shedule is [here](https://github.com/users/shotaro12oyama/projects/1).
