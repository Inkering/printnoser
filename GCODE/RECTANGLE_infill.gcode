M82 ;absolute extrusion mode
G21 ; set units to millimeters
G90 ; use absolute positioning
M82 ; absolute extrusion mode


; M104 S215 ; set extruder temp
; M140 S60 ; set bed temp
; M190 S60 ; wait for bed temp
; M109 S215 ; wait for extruder temp

G28 W ; home all without mesh bed level
; G80 ; mesh bed leveling
G28 X0.00 ; home all without mesh bed level

G0 F3000 ; move speed 3000 mm / min

G1 X0.00 ; go to X=0
G1 Y0.00 ; go to Y=0
G1 Z0.00 ; go to Z=0
; currently should be at bottom left corner

M107 ; turn off fan
; G92 E0.0 ; reset extruder distance position
; G1 F2100 E-0.8


G1 X50.00 ; go to X=50
G1 Y50.00 ; go to Y=50
; currently should be a little inwards from bottom left corner

G1 X200.00 ; go to X=200 (bottom right corner of square)

G1 Y200.00 ; go to Y=200 (top right corner of square)

G1 X50.00 ; go to X=50 (top left corner of square)

G1 Y50.00 ; go to Y=50 (return to bottom left corner of square)

G91 ; switch to relative positioning



; PRINT INFILL

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10

G1 Y5
G1 X10
G1 Y5
G1 X-10