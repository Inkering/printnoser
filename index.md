---
title: "Print Diagnoser"
layout: Layout
date: 2019-12-2
emoji:
---

# Introducing the printnoser

The printnoser quickly and accurately diagnoses  your 3D prints and
removes the need to constantly baby 3D prints. In the past, it was often
necessary or tempting to run between your office and your print area, but now
you can monitor from afar!

## Purpose

We built a diagnosis tool for identifying and alerting print farm managers and
makerspace employees of 3D print failures.

Anyone who uses 3D printers on a regular basis can benefit from the introduction
of this tool into their printing process. In particular, anyone who is
responsible for managing a large number of printers, or who services and
maintains 3d printers as a small portion of their overall duties. People working
in libraries or maker spaces are often in the position of needing to take care
of many 3d printers, or many different types of machines at once. Additionally,
in these situations many different people, some of whom not very familiar with
the process, use such publicly available devices to manufacture parts. This can
lead to reduced printer reliability, which we aim to fix.

## How it works

Our tool is based on data from an accelerometer mounted on the print head of a
3D printer. Modular and uninstrusive, it can be mounted and calibrated on any
printer, removing the barriers of expensive tooling that makerspaces and
students cannot afford.

**[Check out some more of the math, programming,  and context  behind it](./background.md)**

### The mount

<img class="profile2" src="experiment.jpg" alt="picture of phone on printer during experiment">

*Our prototype experimental setup, featuring a smart phone and a prusa printer*

<img class="profile1" src="printer_face_on.png" alt="Picture of printer front">

*A front view of the axes of our system*

<div class="profilecontainer">
	<div class="profile">
		<img class="profile2" src="printer_top.png" alt="Picture of printer top">


 *top view of the axes of our system*

</div>
	<div class="profile">
		<img class="profile2" src="printer_perspective.png" alt="3/4 view of printer">

 *top view of the axes of our system*

</div>
</div>

Green represents the y-axis, Red represents the x-axis, and Blue represents the z-axis

## Outputs

* analysis plots
* failure status indicator

## Made by
<div class="profilecontainer">
<div class="profile">

### Sam Daitzman

<img class="profile1" src="sam.jpg" alt="Picture of Sam">

*[sam.daitzman.com](http://sam.daitzman.com)*  
[Github](https://github.com/sdaitzman)  

</div>

<div class="profile">

### Dieter Brehm

<img class="profile2" src="dieter.jpeg" alt="Picture of Dieter">

*[dieterbrehm.com](https://www.dieterbrehm.com)*  
[Github](https://github.com/inkering)  


</div>
</div>


## What's Next

The next steps of this project will be to improve the user experience and
software integration. Additionally, we will work to increase the number of
different failure modes which we can detect, including being able to
detect potential decreases in print quality such as miniscule stepper failures.
	
