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

M107 ; turn off fan

G0 X50.00 ; go to X=50
G0 Y50.00 ; go to Y=50

G0 X200.00 ; go to X

G0 Y200.00 ; go to Y

G0 X50.00 ; go to X

G0 Y50.00 ; go to Y

