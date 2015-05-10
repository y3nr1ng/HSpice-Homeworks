.Title CurrentMirror1
.global gnd! + vdd!
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 1n 500u
v1 vdd! 0 5
v2 gnd! 0 0
r1 vdd! a 1k
m1 a a gnd! gnd! Nch W=20u L=0.5u
m2 b a gnd! gnd! Nch W=100u L=0.5u
r2 vdd! b 1k
.probe i(m1) i(m2) i(r1) i(r2)
.end