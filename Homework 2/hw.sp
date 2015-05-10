.Title Homework
.global gnd + vdd

.op
.optionms post
.tran 1n 3u

R1 vdd A 5
C1 A gnd 40n

v1 vdd 0 pulse(0 4 0 0 0 1u 2u)
v2 gnd 0 0

.probe v(A) i(C1)
.end