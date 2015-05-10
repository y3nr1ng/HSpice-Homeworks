.title band_reject_filter
.global gnd + vdd
.op
.optionms post
.tran 0.01 1 
*v1 vdd 0 sin(0 5 150 0 0)
*v1 vdd 0 sin(0 5 160 0 0)
v1 vdd 0 sin(0 5 156.75 0 0)
v2 gnd 0 0
c1 vdd a 1u
r1 a gnd 10k
l1 vdd a 1
.probe v(a)
.end