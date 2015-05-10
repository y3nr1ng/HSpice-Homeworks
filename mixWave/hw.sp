.title mix_wave
.global gnd + vdd
.protect
.lib '.\mm0355v.l' TT
.unprotect
.op
.optionms post
.tran 0.01 10 
v1 vdd 0 sin(0 10 5 0 0 )
v2 gnd 0 0
v3 mix 0 sin(0 5 0.5 0 0)
r1 vdd a 1
r2 mix a 1
r3 a gnd 2 

.probe v(vdd) v(mix) v(a) v(b)
.end