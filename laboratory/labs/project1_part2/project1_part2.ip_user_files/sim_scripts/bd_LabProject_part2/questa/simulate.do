onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib bd_LabProject_part2_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bd_LabProject_part2.udo}

run 1000ns

quit -force
