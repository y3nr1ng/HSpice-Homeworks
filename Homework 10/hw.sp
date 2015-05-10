.title high_pass_filter
.global gnd + vdd
.op
.optionms post
.tran 0.01 1 
*v1 vdd 0 sin(0 5 10 0 0)
v1 vdd 0 sin(0 5 6k 0 0)
v2 gnd 0 0
c1 vdd a 10u
r1 a gnd 1
l1 a gnd 10u
.probe v(a)
.end