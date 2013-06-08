** Generated for: hspiceD
** Generated on: Apr 24 09:07:33 2013
** Design library name: my
** Design cell name: SPD3L_C1_1b_test
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

.OP

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST
.INCLUDE "/apps/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

**.PRINT TRAN POWER
**.MEASURE TRAN avgpwr AVG POWER FROM 0 TO 800e-12
**.MEASURE TRAN maxpwr MAX POWER FROM 0 TO 800e-12
**.MEASURE TRAN avg_vdd AVG P(v0) FROM 0 TO 800e-12

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
** Cell name: SPD3L_C1_1b
** View name: schematic
.subckt SPD3L_C1_1b a b ci ci_b co co_b pc s
m1 s1 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 s1 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m6 s2 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m17 c4 b_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m14 c3 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m31 c2 co vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m16 c4 co_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m27 c1 co vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m30 c2 b_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m5 s2 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m25 c1 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m15 c3 co_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 net10 ci 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m7 net3 b_ net10 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m4 net11 ci_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m3 net3 b_b net11 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m2 s1 a_ net3 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m10 net050 b_b net035 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m9 s2 a_b net050 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m19 net08 b_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m22 net061 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m18 c3 a_b net08 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m26 net044 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m21 c4 b_b net061 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m20 net08 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m13 net034 ci_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m12 net050 b_ net034 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m11 net035 ci 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m24 c1 a_ net044 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m29 net075 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m28 c2 b_ net075 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m23 net044 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi20 b net015 inv
xi19 a net016 inv
xi26 s1 s2 s NAND2
xi36 c2 c1 co NAND2
xi35 c4 c3 co_b NAND2
xi21 net016 pc a_b AND2
xi18 pc b b_ AND2
xi17 a pc a_ AND2
xi22 pc net015 b_b AND2
.ends SPD3L_C1_1b
** End of subcircuit definition.

** Library name: my
** Cell name: SPD3L_C1_1b_test
** View name: schematic
xi10 a b cin cin_b cout cout_b pc_ctrl s SPD3L_C1_1b
v0 vdd! 0 DC=1.1

v1 pc_ctrl 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12

v4 a 0 PULSE !A1 A1 0 10e-12 10e-12 240e-12 400e-12
v2 b 0 PULSE !B1 B1 0 10e-12 10e-12 240e-12 400e-12
v5 cin 0 PULSE !C1 C1 0 10e-12 10e-12 240e-12 400e-12

**Below for nanoSim testing
**v4 a 0 PULSE   0   1.1 0 10e-12 10e-12 240e-12 400e-12
**v2 b 0 PULSE   0   1.1   0 10e-12 10e-12 240e-12 400e-12
**v5 cin 0 PULSE 0   1.1 0 10e-12 10e-12 240e-12 400e-12

c2 cout 0 1e-15
c1 cout_b 0 1e-15
c0 s 0 1e-15
xi9 cin cin_b inv
.END
