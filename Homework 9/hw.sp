.Title hw
.global gnd + vdd
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 0.05n 25n
v1 vdd 0 5
v2 gnd 0 0 
v3 a 0 pulse(0 5 4n 0 0 4n 8n)
v4 b 0 pulse(0 5 2n 0 0 2n 4n)
v5 c 0 pulse(0 5 1n 0 0 1n 2n)
m1 vdd a d gnd Nch W=2u L=1u 
m2 vdd b d gnd Nch W=1u L=1u
m3 vdd c d gnd Nch W=0.5u L=1u
r4 d gnd 1
.probe i(r4)
.end