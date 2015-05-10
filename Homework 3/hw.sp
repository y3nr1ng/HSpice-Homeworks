.Title Homework
.global gnd + vdd

.protect
.lib '.\mm0355v.l' TT
.unprotect

.op
.optionms post
.tran 1n 500u

R1 vdd swIn1 1
M1 swIn1 pulse1 swOut1 gnd Nch W=100u L=0.35u
M2 swOut1 pulse2 swOut2 gnd Nch W=100u L=0.35u
R2 swOut2 gnd 1000
C1 swOut1 gnd 10n

v1 vdd 0 4
v2 gnd 0 0
v3 pulse1 0 pulse(0 3 100u 0 0 40u 100u)
v4 pulse2 0 pulse(0 3 150u 0 0 40u 100u)

.probe v(swOut1) i(C1)
.end