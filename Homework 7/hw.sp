.Title Inverter
.global gnd + vdd
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 0.05n 25n
v1 vdd 0 5
v2 gnd 0 0
v3 vin 0 pulse(0 5 0.1n 0.1n 0.1n 0.5n 1.2n)
m1 vout vin vdd vdd Pch W=3u L=350n
m2 vout vin gnd gnd Nch W=1u L=350n
.probe v(vout)
.end