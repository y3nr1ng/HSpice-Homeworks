.Title Homework
.global gnd
+ vdd

.op
.optionms post
.tran 1 50

R1 vdd A 12
R2 A C 12 
R3 C E 3
R4 A gnd 16 
R5 C gnd 6 
R6 E gnd 9

v1 vdd 0 80
v2 gnd 0 0

.probe i(R2) i(R3) v(A) v(C) v(E)
* .plot v(E)
.end