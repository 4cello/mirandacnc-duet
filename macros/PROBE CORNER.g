var z_offset = 7
var tool_diameter = 0

G38.2 Z-9999         ; Probe Z
G92 X0 Y0 Z{z_offset}; Top of the edge finder = 6mm
G1 Z2 F1000	         ; Move 2mm up
G1 X-50              ; 50mm to the left
G38.3 Z-4            ; Probe until Z=-4 down
if {move.axes[2].machinePosition + 4 > 0.02} ; Probe didn't make it all the way down
  abort "Allgemeiner Ausnahmefehler"
G38.2 X0             ; find left edge
G92 X{-tool_diameter / 2} ; set left edge
G1 X-5               ; move away
G1 Z3                ; up
G1 X25               ; to the center of the finder
G1 Y-50              ; past the front
G38.3 Z-4            ; Probe until Z=-4 down
if {move.axes[2].machinePosition + 4 > 0.02} ; Probe didn't make it all the way down
  abort "Allgemeiner Ausnahmefehler"
G38.2 Y0			 ; probe front edge
G92 Y{tool_diameter / 2} ; set front edge
G1 Y-5               ; away from edge
G1 Z3                ; up
G1 X0 Y0             ; move to corner