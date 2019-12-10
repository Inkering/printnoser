---
title: "Print Diagnoser"
layout: Layout
date: 2019-12-2
emoji:
---

# Introducing the printnoser

The printnoser quickly and accurately diagnoses the art of your 3D prints and
removes the need to constantly baby 3D prints. In the past, it was often
necessary or tempting to run between your office and your print area, but now
you can monitor from afar!

## Purpose

We built a diagnosis tool for identifying and alterting print farm managers and
makerspace employees of 3D print failures.

## How it works

Our tool is based on data from an accelerometer mounted on the print head of a
3D printer. Modular and uninstrusive, it can be mounted and calibrated on any
printer, removing the barriers of expensive tooling that makerspaces and
students cannot afford.
* picture of mount
* render of printer mount
* picture of experiment in progress

[Check out some more of the path behind it](./background.md)

### The mount

<img class="profile1" src="printer_face_on.png" alt="Picture of printer front">


<div class="profilecontainer">
	<div class="profile">
		<img class="profile2" src="printer_top.png" alt="Picture of printer top">
	</div>
	<div class="profile">
		<img class="profile2" src="printer_perspective.png" alt="3/4 view of printer">
	</div>
</div>

*Green represents the y-axis, Red represents the x-axis, and Blue represents the
z-axis*

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
different failure modes which we can detect, hopefully eventually being able to
detect potential decreases in print quality such as miniscule stepper failures.
