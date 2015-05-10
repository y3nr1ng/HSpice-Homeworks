.Title and
.global gnd + vdd
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 0.05n 25n
v1 a 0 pulse(0 5 10n 0 0 15n 100n)
v2 b 0 pulse(0 5 5n 0 0 15n 100n) 
v3 c 0 pulse(0 5 0 0 0 15n 100n)
v4 vdd 0 5
v5 gnd 0 0
m1 o a vdd vdd Pch W=20u L=0.5u
m2 o b vdd vdd Pch W=20u L=0.5u
m3 o c vdd vdd Pch W=20u L=0.5u
m4 o a l gnd Nch W=20u L=0.5u
m5 l b m gnd Nch W=20u L=0.5u
m6 m c gnd gnd Nch W=20u L=0.5u
m7 os o vdd vdd Pch W=20u L=0.5u
m8 os o gnd gnd Nch W=20u L=0.5u
.probe v(os)
.end