.Title Homework
.global gnd + vdd

.protect
.lib 'C:\synopsys\Hspice2003.09-SP1\lib\mm0355v.l' TT
.unprotect

.op
.optionms post
.tran 1n 500u

R1 vdd swIn1 1
*R1 vdd 1 1
M1 swIn1 pulse1 swOut1 gnd Nch W=100u L=0.35u
M2 swOut1 pulse2 swOut2 gnd Nch W=100u L=0.35u
R2 swOut2 gnd 1000
*R2 1 gnd 100
L1 swOut1 gnd 0.1
*C1 1 gnd 47u

*v1 vdd 0 3 pulse(0 3 0 0 0 50u 100u)
v1 vdd 0 3
v2 gnd 0 0
v3 pulse1 0 pulse(0 3 100u 0 0 40u 100u)
v4 pulse2 0 pulse(0 3 150u 0 0 40u 100u)

.probe v(swOut1) i(L1)
*.probe v(1) i(C1)
.end