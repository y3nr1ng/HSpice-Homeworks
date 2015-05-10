.title current_mirror_2
.global gnd + vdd
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 1n 500u
v1 vdd 0 5
v2 gnd 0 0
r1 vdd a 1k
r2 vdd b 1k
m1 a a c c Nch W=20u L=0.5u
m2 b a d d Nch W=100u L=0.5u
m3 c c gnd gnd Nch W=20u L=0.5u
m4 d c gnd gnd Nch W=100u L=0.5u
.probe i(r1) i(r2)
.end