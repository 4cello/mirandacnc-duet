if {move.axes[2].machinePosition < sensors.probes[0].triggerHeight}
  G92 Z{sensors.probes[0].triggerHeight + 5}
G30 S-1 ; move down until probe triggers
G92 Z{sensors.probes[0].triggerHeight} ; adjust Z offset
G91
G1 Z10    ; move 10mm up
G90