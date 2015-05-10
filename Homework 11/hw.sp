.title low_pass_filter
.global gnd + vdd
.op
.optionms post
.tran 0.01 1 
v1 vdd 0 sin(0 5 150 0 0)
*v1 vdd 0 sin(0 5 200 0 0)
v2 gnd 0 0
c1 a gnd 10u
r1 vdd a 10k
l1 vdd a 1
.probe v(a)
.end