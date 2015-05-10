.global vdd + gnd
.subckt inverter vin vout 
m1 vout vin vdd vdd Pch W=20u L=0.5u
m2 vout vin gnd gnd Nch W=20u L=0.5u
.ends inverter