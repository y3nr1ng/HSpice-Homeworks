.subckt 3_nand a b c vout 
m1 o a vdd vdd Pch W=20u L=0.5u
m2 o b vdd vdd Pch W=20u L=0.5u
m3 o c vdd vdd Pch W=20u L=0.5u
m4 o a l gnd Nch W=20u L=0.5u
m5 l b m gnd Nch W=20u L=0.5u
m6 m c gnd gnd Nch W=20u L=0.5u
.ends 3_nand