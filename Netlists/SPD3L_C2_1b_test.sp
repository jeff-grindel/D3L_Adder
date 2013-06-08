** Generated for: hspiceD
** Generated on: Apr 25 15:33:01 2013
** Design library name: my
** Design cell name: SPD3L_C2_1b_test
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
** Cell name: SPD3L_C2_1b
** View name: schematic
.subckt SPD3L_C2_1b a b_ ci ci_b co co_b pc s
m67 co1 p vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m51 s2 p_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m50 s2 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m49 s1 s vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m46 s1 p vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m45 p4 p_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m32 net064 g_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m31 net064 co_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m58 g2 b_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m57 g1 g_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m54 g1 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m21 net044 g vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net044 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m39 p2 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m42 p2 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 p3 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m14 p3 p_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m64 co1 co vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m63 co2 co vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m61 co2 g vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m60 g2 g_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m43 p4 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 p1 a_ vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m0 p1 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m66 net0129 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m65 co1 p net0129 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m53 s2 p_b net0119 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m52 net0119 ci 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m48 s1 p net0120 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m47 net0120 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m44 p4 a_ net0110 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m35 net060 ci_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m34 net060 p_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m33 net064 g_b net060 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m59 g2 b_b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m55 g1 a_b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m22 net067 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m20 net044 a_ net067 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m17 p3 a_b net17 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m40 net0110 b_ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m62 co2 g 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m41 p2 a_b net0110 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m4 net17 b_b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 p1 a_ net17 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi25 pc net0101 b_b AND2
xi2 net18 pc a_b AND2
xi0 a pc a_ AND2
xi21 net064 co_b inv
xi14 net044 g inv
xi12 b_ net0101 inv
xi1 a net18 inv
xi48 co2 co1 co NAND2
xi37 s2 s1 s NAND2
xi32 p4 p3 p_b NAND2
xi31 p2 p1 p NAND2
xi43 g2 g1 g_b NAND2
.ends SPD3L_C2_1b
** End of subcircuit definition.

** Library name: my
** Cell name: SPD3L_C2_1b_test
** View name: schematic
xi13 a b cin cin_b cout cout_b pc_ctrl s SPD3L_C2_1b
v0 vdd! 0 DC=1.1

v1 pc_ctrl 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12

v4 a 0 PULSE !A1 A1 0 10e-12 10e-12 240e-12 400e-12
v2 b 0 PULSE !B1 B1 0 10e-12 10e-12 240e-12 400e-12
v5 cin 0 PULSE !C1 C1 0 10e-12 10e-12 240e-12 400e-12
**For nanosim testing
**v4 a 0 PULSE   0   1.1 0 10e-12 10e-12 240e-12 400e-12
**v2 b 0 PULSE   0   1.1   0 10e-12 10e-12 240e-12 400e-12
**v5 cin 0 PULSE 0   1.1   0 10e-12 10e-12 240e-12 400e-12

c2 cout 0 1e-15
c1 cout_b 0 1e-15
c0 s 0 1e-15
xi9 cin cin_b inv
.END
