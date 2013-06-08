** Generated for: hspiceD
** Generated on: Apr 26 11:09:28 2013
** Design library name: my
** Design cell name: SPD3L_C1_4b_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 800e-12 START=0.0 SWEEP DATA=D
.DATA D
+A3_ A2_ A1_ A0_ B3_ B2_ B1_ B0_ Ci_ !A3_ !A2_ !A1_ !A0_ !B3_ !B2_ !B1_ !B0_ !Ci_
+0   0   0   1.1 0   1.1 0   1.1 0   1.1  1.1  1.1  0    1.1  0    1.1  0    1.1
+1.1 0   1.1 0   0   0   1.1 1.1 1.1 0    1.1  0    1.1  1.1  1.1  0    0    0
+0   0   0   0   1.1 1.1 1.1 1.1 1.1 1.1  1.1  1.1  1.1  0    0    0    0    0
+1.1 1.1 1.1 1.1 0   1.1 1.1 1.1 1.1 0    0    0    0    1.1  0    0    0    0
+1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 0    0    0    0    0    0    0    0    0	  
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
** Cell name: SPD3L_C1_4b_test
** View name: schematic
xi26 a3 b3 net24 net25 co co_b pc s3 SPD3L_C1_1b
xi25 a2 b2 net22 net23 net24 net25 pc s2 SPD3L_C1_1b
xi24 a1 b1 net20 net21 net22 net23 pc s1 SPD3L_C1_1b
xi23 a0 b0 ci ci_b net20 net21 pc s0 SPD3L_C1_1b
v0 vdd! 0 DC=1.1

v4 pc 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12

v17 a3 0 PULSE !A3_ A3_ 0 10e-12 10e-12 240e-12 400e-12
v14 a2 0 PULSE !A2_ A2_ 0 10e-12 10e-12 240e-12 400e-12
v7  a1 0 PULSE !A1_ A1_ 0 10e-12 10e-12 240e-12 400e-12
v13 a0 0 PULSE !A0_ A0_ 0 10e-12 10e-12 240e-12 400e-12

v16 b3 0 PULSE !B3_ B3_ 0 10e-12 10e-12 240e-12 400e-12
v15 b2 0 PULSE !B2_ B2_ 0 10e-12 10e-12 240e-12 400e-12
v6  b1 0 PULSE !B1_ B1_ 0 10e-12 10e-12 240e-12 400e-12
v12 b0 0 PULSE !B0_ B0_ 0 10e-12 10e-12 240e-12 400e-12

v5  ci   0 PULSE !Ci_ Ci_ 0 10e-12 10e-12 240e-12 400e-12
v18 ci_b 0 PULSE Ci_ !Ci_ 0 10e-12 10e-12 240e-12 400e-12
**Testing for NanoSim
***************************************************
**Test1
**v17 a3 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v14 a2 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v7  a1 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v13 a0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v16 b3 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v15 b2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v6  b1 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v12 b0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v5  ci   0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v18 ci_b 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
******************************************************

**Test2
**v17 a3 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v14 a2 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v7  a1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v13 a0 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12

**v16 b3 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v15 b2 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v6  b1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v12 b0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v5  ci   0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v18 ci_b 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
******************************************************

**Test3
**v17 a3 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v14 a2 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v7  a1 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v13 a0 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12

**v16 b3 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v15 b2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v6  b1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v12 b0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v5  ci   0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v18 ci_b 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
******************************************************

**Test4
**v17 a3 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v14 a2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v7  a1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v13 a0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v16 b3 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
**v15 b2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v6  b1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v12 b0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v5  ci   0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v18 ci_b 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
******************************************************

**Test5
**v17 a3 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v14 a2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v7  a1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v13 a0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v16 b3 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v15 b2 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v6  b1 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v12 b0 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12

**v5  ci   0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
**v18 ci_b 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
******************************************************

c7 co 0 1e-15
c6 co_b 0 1e-15
c5 s3 0 1e-15
c4 s2 0 1e-15
c3 s1 0 1e-15
c0 s0 0 1e-15
.END
