** Generated for: hspiceD
** Generated on: Apr 25 20:34:25 2013
** Design library name: my
** Design cell name: D3L_C3_1b_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 800e-12 START=0.0 SWEEP DATA=D
.DATA D
+A1  !A1  B1   !B1   C1  !C1
+0   1.1  0    1.1   0	  1.1
+0   1.1  0    1.1   1.1  0
+0   1.1  1.1  0     0    1.1
+0   1.1  1.1  0     1.1  0
+1.1 0    0    1.1   0    1.1
+1.1 0    0    1.1   1.1  0
+1.1 0    1.1   0    0    1.1 
+1.1 0    1.1   0    1.1  0
.ENDDATA

**.PRINT TRAN POWER
**.MEASURE TRAN avgpwr AVG POWER FROM 0 TO 800e-12
**.MEASURE TRAN maxpwr MAX POWER FROM 0 TO 800e-12
**.MEASURE TRAN avg_vdd AVG P(v0) FROM 0 TO 800e-12

.OP

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST
.INCLUDE "/apps/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

** Library name: my
** Cell name: inv
** View name: schematic
.subckt inv in out
m0 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends inv
** End of subcircuit definition.

** Library name: my
** Cell name: NAND2
** View name: schematic
.subckt NAND2 a b y
m0 y a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 y b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net11 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 y a net11 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends NAND2
** End of subcircuit definition.

** Library name: my
** Cell name: AND2
** View name: schematic
.subckt AND2 a b y
xi0 a b net7 NAND2
xi1 net7 y inv
.ends AND2
** End of subcircuit definition.

** Library name: my
** Cell name: D3L_C3_1b
** View name: schematic
.subckt D3L_C3_1b a b cin cin_b cout cout_b pc_ctrl s
m34 net062 cin_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m33 net044 b_b net062 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m32 net012 cin_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m31 net012 b_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m30 net044 a_b net012 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m26 net064 cin 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m25 net045 b_ net064 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m24 net016 cin 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m23 net016 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m22 net045 a_ net016 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m38 net034 a_ net048 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m40 net047 cin 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m39 net048 b_ net047 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m44 net051 cin 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m42 net051 a_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m41 net034 cout_b net051 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m43 net051 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m29 net063 b_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m28 net044 a_b net063 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m27 net044 cout_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m21 net065 b_ vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m20 net045 a_ net065 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m19 net045 cout vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m37 net034 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m35 net034 cout_b net049 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m36 net049 a_ vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
xi14 a net067 inv
xi9 net044 cout_b inv
xi6 net045 cout inv
xi18 b net068 inv
xi20 net034 s inv
xi17 pc_ctrl net068 b_b AND2
xi13 pc_ctrl b b_ AND2
xi12 a pc_ctrl a_ AND2
xi16 net067 pc_ctrl a_b AND2
.ends D3L_C3_1b
** End of subcircuit definition.

** Library name: my
** Cell name: D3L_C3_1b_test
** View name: schematic
xi13 a b cin cin_b cout cout_b pc_ctrl s D3L_C3_1b
v0 vdd! 0 DC=1.1

v1 pc_ctrl 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12

v4 a 0 PULSE !A1 A1 0 10e-12 10e-12 240e-12 400e-12
v2 b 0 PULSE !B1 B1 0 10e-12 10e-12 240e-12 400e-12
v5 cin 0 PULSE !C1 C1 0 10e-12 10e-12 240e-12 400e-12
**For nanosim testing
**v4 a 0 PULSE   0  1.1   0 10e-12 10e-12 240e-12 400e-12
**v2 b 0 PULSE   0  1.1   0 10e-12 10e-12 240e-12 400e-12
**v5 cin 0 PULSE 0  1.1   0 10e-12 10e-12 240e-12 400e-12

c2 cout 0 1e-15
c1 cout_b 0 1e-15
c0 s 0 1e-15
xi9 cin cin_b inv
.END
