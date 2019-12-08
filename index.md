---
title: "Print Diagnoser"
layout: Layout
date: 2019-12-2
emoji:
---
# Concepts

## Kinematic Analysis

## Frequency Analysis

Frequency analysis is the process under which we can determine patterns of oscillation of a system, such as an object repeatedly jittering or moving in any repeatable way. Mathematical techniques, including the Fourier transform, allow us to determine what speeds of oscillation are present in a signal and how much there is. Based on this information, we can frequently draw conclusions about the nature of a physical phenomena.

# Background

## Fourier transforms → FFT

## MEMS accelerometer

A MEMS (Micro-Electro-Mechanical Systems) accelerometer is a small electrical chip which features miniaturized versions of mass-spring systems. Similar to larger versions of such a system, these chips allow electrical devices like smartphones to measure their acceleration in multiples axes. 

As an aside, in our particular experimental setup, some resources suggest that the smartphone we possess have very high sampling rates which allow for details analysis

https://www.macrumors.com/2014/09/26/iphone-6-6-plus-two-accelerometers/

However, the Matlab app restricts sampling to a rate of 100 Hz, and we could not find an app on the Apple App Store which advertises a higher rate of sampling.

## Smartphone Data Collection

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2236d3bd-48de-44af-a2df-2c8c97911dc2/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2236d3bd-48de-44af-a2df-2c8c97911dc2/Untitled.png)

For this experiment, and the project in general, we placed the phone screen up on the stepper motor which is located on the print head. 

As a primary tool for this project, we are using a smartphone which has the Matlab app installed to log accelerometer data. We are then able to process this data in Matlab to distinguish between functioning and malfunctioning prints. This system provides an easy to use interface with the MEMS sensor in the smartphone, which is oriented in the smartphone as shown above.

## 3D printers

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ea1645cc-719d-4cd6-a290-eb99f31ac552/MK3_poster_V6.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ea1645cc-719d-4cd6-a290-eb99f31ac552/MK3_poster_V6.jpg)

A Prusa i3 MK3 3d printer. One of the models which we use frequently at Olin and one which is both popular and easy to modify or adapt to one's needs.

A 3d printer is a manufacturing device which heats up plastic "filament" and deposits it in programmed locations.

### G-Code

Virtually all FDM 3D printers are controlled using G-Code files, which specify precise movement commands for a 3D printer to follow. We hand-wrote custom G-Code scripts based on Marlin-style G-Code to control the motion of the printer along known shapes that can be defined as parametric curves and analyzed under our motion model. Here is a hand-written G-Code file, documented inline, that moves the extruder in a convenient box, which can be useful in characterizing mid-frequency (~25-50Hz) stepper noise that could indicate a failure:
``` lisp
    M82 ;absolute extrusion mode
    G21 ; set units to millimeters
    G90 ; use absolute positioning
    M82 ; absolute extrusion mode
    
    G28 W ; home all without mesh bed level
    ; G80 ; mesh bed leveling
    G28 X0.00 ; home all without mesh bed level
    
    G0 X0.00 ; go to X=0
    G0 Y0.00 ; go to Y=0
    G0 Z0.00 ; go to Z=0
    ; currently should be at bottom left corner
    
    M107 ; turn off fan
    
    G0 X50.00 ; go to X=50
    G0 Y50.00 ; go to Y=50
    ; currently should be a little inwards from bottom left corner
    
    G0 X200.00 ; go to X=200 (bottom right corner of square)
    
    G0 Y200.00 ; go to Y=200 (top right corner of square)
    
    G0 X50.00 ; go to X=50 (top left corner of square)
    
    G0 Y50.00 ; go to Y=50 (return to bottom left corner of square)
```
This G-Code takes advantage of absolute positioning to maintain a record of desired locations of the extruder at each step. We can compare filtered experimental data collected along this path with previous filtered results to diagnose unexpected behaviors.

## Stepper Motors

Stepper motors are a type of electrical motor which most 3d printers use to operate both the filament feeder and the gantry which moves the print head (which houses the feeder) around. They are composed of wire coils which produce magnetic fields, when, if programmed correctly, rotate a rotor.

Most of these motors, especially hobbyist ones, do not contain an internal feedback mechanism such as an encoder. As a result, it isn't obvious when a "step" has been skipped in the control of the stepper in most cases. In some systems, people attach encoders to the stepper outputs to track that data and correct for it.

Stepper motor resource:

https://cdn-learn.adafruit.com/downloads/pdf/all-about-stepper-motors.pdf

# Audience

Our audience is wide reaching. Anyone who uses 3D printers on a regular basis can benefit from the introduction of this tool into their printing process. In particular, anyone who is responsible for managing a large number of printers, or who services and maintains 3d printers as a small portion of their overall duties. People working in libraries or maker spaces are often in the position of needing to take care of many 3d printers, or many different types of machines at once. Additionally, in these situations many different people, some of whom not very familiar with the process, use such publicly available devices to manufacture designs. 

# The Product

While basic monitoring systems exist which utilize video cameras that can be monitored over the internet, there does not exist an easy to install system which monitors and provides automatic corrections to 3d printers while reporting on the health of the system. Our product, is a modular kit designed to be attached onto a Prusa 3d printer which incorporates an accelerator and processing suite to alert users when a print fails and when a printer needs repairs.

Within the scope of this preliminary two week project, we are determining the feasibility of an accelerometer based sensor suite for 3d print monitoring. Next steps in the process would include extensive product design, hardware iteration beyond simply using a smartphone (which is quite overkill for the task), and integration with existing printing controllers to allow for automatic stopping and adjustment to printers as print health data streams in from our processor to the print controller.

To start, we collected data which allowed us to get a picture of what accelerations are present during a print. Shown below is a nine minute stretch of printing in which the print head performs an infill operation (essentially going back and forth quickly while filling in a section of plastic) from 14:36 until approximately 14:40, then again from 14:43 onwards. Between those two sections, the printer is performing a less jittery operation in which the print head draws the outline of the next layer which it proceeds to fill in. At the end of the data sample, the phone fell off of the printer as we didn't connect it securely enough.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6364e450-ab60-4730-921d-5cbdf6f999b1/acceleration-timeseries.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6364e450-ab60-4730-921d-5cbdf6f999b1/acceleration-timeseries.png)

Acceleration plot for the three axes of a non-failing print, with a catastrophic failure (phone fell off the print head) at the end of the file.

As the next step in our preliminary analysis, we took the discrete Fourier transform of the entire sample, which we recorded as a 100 Hz sampling rate (the highest available in the matlab app.) As seen below, it isn't very intelligible. We hypothesized that we might discover something by isolating infill or outlining sample regions.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f79c47b7-ec2a-4e19-9336-3fb2d3f77053/entire-fft.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f79c47b7-ec2a-4e19-9336-3fb2d3f77053/entire-fft.png)

FFT for the entire data set from the aforementioned non-failed print, including the failure point at the end of the file.

We show the infill shifted fft below. As shown below, there does not appear to be very many distinct features present in the data. We aren't entirely sure about the validity of our measurement, and are still working to validate it before reaching a conclusion about it. However, we do think that we will either need to scope the project to determining successful transitions from infills to outlining, or perhaps using statistical analysis on the whole region to distinguish between particular print health states. 

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/24992624-1fc8-4403-980c-195cd766e9fe/infill-fft.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/24992624-1fc8-4403-980c-195cd766e9fe/infill-fft.png)

fft during a section of the print in which the printer executed an infill operation (needs confirmation, but suspected)

As we can see below in the outline-scoped sample region fft, there is still not a terribly distinct frequency given the level of noise in the data currently. In fact, in terms of frequency distribution, it looks very random. We hypothesize that the complexity of the system and the number of oscillating factors at similar orders of magnitude result in significant aliasing at a 100 Hz sampling rate. However, 

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1fe49017-9cd4-44ca-8a21-0949f436d775/outline-fft.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1fe49017-9cd4-44ca-8a21-0949f436d775/outline-fft.png)

fft during a section of the print in which the printer executed an outling operation (needs confirmation, but suspected)