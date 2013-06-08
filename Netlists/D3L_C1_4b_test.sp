** Generated for: hspiceD
** Generated on: Apr 26 09:42:59 2013
** Design library name: my
** Design cell name: D3L_C1_4b_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 800e-12 START=0.0 SWEEP DATA=D
.DATA D
+A3_ A2_ A1_ A0_ B3_ B2_ B1_ B0_ Ci_ !A3_ !A2_ !A1_ !A0_ !B3_ !B2_ !B1_ !B0_ !Ci_	
+0   0   0   1.1 0   1.1 0   1.1 0   1.1  1.1  1.1  0    1.1  0    1.1  0    1.1	** 1 + 5 + 0
+1.1 0   1.1 0   0   0   1.1 1.1 1.1 0    1.1  0    1.1  1.1  1.1  0    0    0		** 10 + 3 + 1
+0   0   0   0   1.1 1.1 1.1 1.1 1.1 1.1  1.1  1.1  1.1  0    0    0    0    0		** 0 + 15 + 1
+1.1 1.1 1.1 1.1 0   1.1 1.1 1.1 1.1 0    0    0    0    1.1  0    0    0    0		** 7 + 15 + 1
+1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 0    0    0    0    0    0    0    0    0	  	**	15 + 15 + 1
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
** Cell name: D3L_C1_1b
** View name: schematic
.subckt D3L_C1_1b a b cin cin_b cout cout_b pc_ctrl s
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
m14 net40 cin_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m8 net41 cin 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m13 net30 b_ net40 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m6 net30 b_b net41 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m15 net12 b_ net34 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m4 net38 cin_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m16 net34 cin 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m2 net12 b_b net38 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m17 net31 a_b net30 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m0 net31 a_ net12 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m29 net063 b_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m28 net044 a_b net063 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m27 net044 cout_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m21 net065 b_ vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m20 net045 a_ net065 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m19 net045 cout vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m18 net31 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 net31 a_ net39 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m10 net39 a_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
xi14 a net067 inv
xi9 net044 cout_b inv
xi6 net045 cout inv
xi15 b net068 inv
xi2 net31 s inv
xi17 pc_ctrl net068 b_b AND2
xi13 pc_ctrl b b_ AND2
xi12 a pc_ctrl a_ AND2
xi16 net067 pc_ctrl a_b AND2
.ends D3L_C1_1b
** End of subcircuit definition.

** Library name: my
** Cell name: D3L_C1_4b_test
** View name: schematic
xi19 a0 b0 ci ci_b net20 net21 pc s0 D3L_C1_1b
xi21 a2 b2 net021 net022 net17 net16 pc s2 D3L_C1_1b
xi20 a1 b1 net20 net21 net021 net022 pc s1 D3L_C1_1b
xi22 a3 b3 net17 net16 co co_b pc s3 D3L_C1_1b
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

**Below Used for NanoSim Testing
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
