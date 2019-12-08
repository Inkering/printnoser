M82 ;absolute extrusion mode
G21 ; set units to millimeters
G90 ; use absolute positioning
M82 ; absolute extrusion mode

G28 W ; home all without mesh bed level
; G80 ; mesh bed leveling
G28 X0.00 ; home all without mesh bed level

G0 F2100 ; move speed 2100 mm / min

G1 X0.00 ; go to X=0
G1 Y0.00 ; go to Y=0
G1 Z0.00 ; go to Z=0
; currently should be at bottom left corner

M107 ; turn off fan

G1 X50.00 ; go to X=50
G1 Y50.00 ; go to Y=50
; currently should be a little inwards from bottom left corner

G1 X200.00 ; go to X=200 (bottom right corner of square)
