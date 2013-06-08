** Generated for: hspiceD
** Generated on: Apr 26 11:15:23 2013
** Design library name: my
** Design cell name: D3L_C2_4b_test
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
** Cell name: inv
** View name: schematic
.subckt inv in out
m0 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends inv
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
** Cell name: D3L_C2_1b
** View name: schematic
.subckt D3L_C2_1b a b_ ci ci_b co co_b pc s
m32 net064 g_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m31 net064 co_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m30 net049 co vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m29 net049 p net080 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m28 net080 g vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m27 net051 g_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m25 net051 b_b net066 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m24 net066 a_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m21 net044 g vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net044 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m16 net019 a_ net032 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m15 net032 a_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m14 net019 p_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m13 net015 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m10 net015 p net023 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m9 net023 p_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m2 net07 a_ net15 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m1 net15 a_b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m0 net07 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m38 net049 g 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m37 net088 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m36 net049 p net088 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m35 net060 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m34 net060 p_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m33 net064 g_b net060 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m26 net051 b_b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m23 net051 a_b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m22 net067 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m20 net044 a_ net067 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m18 net019 a_ net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m17 net019 a_b net17 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m12 net022 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m11 net015 p_b net022 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m8 net024 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m7 net015 p net024 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m6 net16 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m5 net07 a_b net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m4 net17 b_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net07 a_ net17 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi25 pc net0101 b_b AND2
xi2 net18 pc a_b AND2
xi0 a pc a_ AND2
xi21 net064 co_b inv
xi20 net049 co inv
xi18 net051 g_b inv
xi14 net044 g inv
xi12 b_ net0101 inv
xi10 net019 p_b inv
xi8 net015 s inv
xi5 net07 p inv
xi1 a net18 inv
.ends D3L_C2_1b
** End of subcircuit definition.

** Library name: my
** Cell name: D3L_C2_4b_test
** View name: schematic
xi30 a3 b3 net24 net25 co co_b pc s3 D3L_C2_1b
xi29 a2 b2 net22 net23 net24 net25 pc s2 D3L_C2_1b
xi28 a1 b1 net20 net21 net22 net23 pc s1 D3L_C2_1b
xi27 a0 b0 ci ci_b net20 net21 pc s0 D3L_C2_1b
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

**For nanosim testing
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
