; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;
; generated by RepRapFirmware Configuration Tool v3.3.2 on Mon Sep 06 2021 17:45:35 GMT+0200 (Mitteleuropäische Sommerzeit)

G91
G1 Z15 F500 ; move up 15mm
G90
M106 P0 S0 ; turn off electronics fan