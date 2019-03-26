 SET CENTURY ON
 PUBLIC vtAb
 STORE 21 TO muFi
 STORE 108 TO muCo
 DO p00_0002a
 ON SELECTION BAR 1 OF vtAb DO TOD_0002A
 ON SELECTION BAR 2 OF vtAb DO PRV_0002A
 ON SELECTION BAR 3 OF vtAb DO SUC_0002A
 ON SELECTION BAR 4 OF vtAb DO PRO_0002A
 ON SELECTION BAR 5 OF vtAb DO PRU_0002A
 ON SELECTION BAR 6 OF vtAb DO PRT_0002A
 ON SELECTION BAR 7 OF vtAb DO SER_0002A
 ON SELECTION BAR 8 OF vtAb DO PL1_0002A
 ON SELECTION BAR 9 OF vtAb DO ORC_0002A
 ON SELECTION BAR 10 OF vtAb DO ORD_0002A
 ON SELECTION BAR 11 OF vtAb DO CPC_0002A
 ON SELECTION BAR 12 OF vtAb DO CP1_0002A
 ON SELECTION BAR 13 OF vtAb DO CP2_0002A
 ON SELECTION BAR 14 OF vtAb DO CP3_0002A
 ON SELECTION BAR 15 OF vtAb DO CP4_0002A
 ON SELECTION BAR 16 OF vtAb DO REC_0002A
 ON SELECTION BAR 17 OF vtAb DO RE1_0002A
 ON SELECTION BAR 18 OF vtAb DO RE2_0002A
 ON SELECTION BAR 19 OF vtAb DO RE3_0002A
 ON SELECTION BAR 20 OF vtAb DO RE4_0002A
 ON SELECTION BAR 21 OF vtAb DO INC_0002A
 ON SELECTION BAR 22 OF vtAb DO IN1_0002A
 ON SELECTION BAR 23 OF vtAb DO IN2_0002A
 ON SELECTION BAR 24 OF vtAb DO IN3_0002A
 ON SELECTION BAR 25 OF vtAb DO SAC_0002A
 ON SELECTION BAR 26 OF vtAb DO SA1_0002A
 ON SELECTION BAR 27 OF vtAb DO SA2_0002A
 ON SELECTION BAR 28 OF vtAb DO SA3_0002A
 ON SELECTION BAR 29 OF vtAb DO LS1_0002A
 ON SELECTION BAR 30 OF vtAb DO LS2_0002A
 ON SELECTION BAR 31 OF vtAb DO CO1_0002A
 ON SELECTION BAR 32 OF vtAb DO CO2_0002A
 ON SELECTION BAR 33 OF vtAb DO CO3_0002A
 ON SELECTION BAR 34 OF vtAb DO KAR_0002A
 ON SELECTION BAR 35 OF vtAb DO KA2_0002A
 ON SELECTION BAR 36 OF vtAb DO SPA_0002A
 STORE 99 TO mkEy
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0002a
 DO td1_0002a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0002a
 DO prV_0002a IN PUX0002A
 DO suC_0002a IN PUX0002A
 DO prO_0002a IN PUX0002A
 DO prU_0002a IN PUX0002A
 DO prT_0002a IN PUX0002A
 DO seR_0002a IN PUX0002A
 DO pl1_0002a IN PUX0002A
 DO orC_0002a IN PUX0002A
 DO orD_0002a IN PUX0002A
 DO cpC_0002a IN PUX0002A
 DO cp1_0002a IN PUX0002A
 DO cp2_0002a IN PUX0002A
 DO cp3_0002a IN PUX0002A
 DO cp4_0002a IN PUX0002A
 DO reC_0002a IN PUX0002A
 DO re1_0002a IN PUX0002A
 DO re2_0002a IN PUX0002A
 DO re3_0002a IN PUX0002A
 DO re4_0002a IN PUX0002A
 DO inC_0002a IN PUX0002A
 DO in1_0002a IN PUX0002A
 DO in2_0002a IN PUX0002A
 DO in3_0002a IN PUX0002A
 DO saC_0002a IN PUX0002A
 DO sa1_0002a IN PUX0002A
 DO sa2_0002a IN PUX0002A
 DO sa3_0002a IN PUX0002A
 DO ls1_0002a IN PUX0002A
 DO ls2_0002a IN PUX0002A
 DO co1_0002a IN PUX0002A
 DO co2_0002a IN PUX0002A
 DO co3_0002a IN PUX0002A
 DO kaR_0002a IN PUX0002A
 DO ka2_0002a IN PUX0002A
 DO spA_0002a IN PUX0002A
ENDPROC
*
PROCEDURE Prv_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2101", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Proveedores..."
      PUBLIC afIl, x
      DIMENSION afIl[15, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2101COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101TDI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101CRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101CON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2101MAQ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Proveedores..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(f2101nom)+f2101cod TAG f2101nom
 INDEX ON f2101tip+f2101cod TAG f2101tip
 INDEX ON f2101ruc+f2101cod TAG f2101ruc
 INDEX ON f2101cod TAG f2101cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Suc_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2102", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Sucursales..."
      PUBLIC afIl, x
      DIMENSION afIl[26, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2102COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102SUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102MAI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102DIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102ENT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102DIE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 25
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CT1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CT2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CT3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102CA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102TL1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102TL2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102TL3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102AN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102AN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102AN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102FA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102FA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102FA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2102MAQ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Sucursales..."
 DO abB_0000a IN PUX0000A
 INDEX ON f2102cod+f2102suc TAG f2102cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pro_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2111", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Productos/Servicios/Activos Fijos..."
      DO taB_productos
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Productos..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(ALLTRIM(f2111des))+UPPER(ALLTRIM(f2111cod))+"*" TAG f2111des
 INDEX ON f2111tip+UPPER(ALLTRIM(f2111des))+UPPER(ALLTRIM(f2111cod))+"*"  ;
       TAG f2111tip
 INDEX ON f2111est+STR(f2111tpo, 1, 0)+UPPER(ALLTRIM(f2111cod))+"*" TAG  ;
       f2111es1
 INDEX ON f2111gru+UPPER(ALLTRIM(f2111cod))+"*" TAG f2111grc
 INDEX ON UPPER(ALLTRIM(f2111bas))+"*"+UPPER(ALLTRIM(f2111cod))+"*" TAG  ;
       f2111bas
 INDEX ON STR(f2111esp, 6, 2)+ALLTRIM(f2111tam)+"*"+ ;
       UPPER(ALLTRIM(f2111cod))+"*" TAG f2111esp
 INDEX ON UPPER(ALLTRIM(f2111cod))+"*" TAG f2111cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ser_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2112", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Números de Series..."
      DO taB_series
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Series..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(ALLTRIM(f2112cod))+"*"+f2112td1+f2112sr1+f2112do1+ ;
       ALLTRIM(f2112ped)+f2112sec TAG f2112do1
 INDEX ON UPPER(ALLTRIM(f2112cod))+"*"+f2112td2+f2112sr2+f2112do2+ ;
       ALLTRIM(f2112ped)+f2112sec TAG f2112do2
 INDEX ON UPPER(ALLTRIM(f2112cod))+"*"+f2112td3+f2112sr3+f2112do3+ ;
       ALLTRIM(f2112ped)+f2112sec TAG f2112do3
 INDEX ON f2112est+UPPER(ALLTRIM(f2112cod))+"*"+STR(f2112pla, 9, 4)+ ;
       ALLTRIM(f2112ped)+f2112sec TAG f2112es1
 INDEX ON UPPER(ALLTRIM(f2112cod))+"*"+ALLTRIM(f2112ped)+f2112sec TAG f2112cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pl1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2113", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Plc-1..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2113COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2113ESP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2113LAR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2113ANC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2113CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE PrU_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2118", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Total x Productos (Cantidad y Costos)..."
      PUBLIC afIl, x
      DIMENSION afIl[14, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2118COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2118STO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2118CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2118CPE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2118CJP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2118STS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2118ORP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2118VCP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2118VCS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2118PRM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2118CO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2118FE1"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2118CO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2118FE2"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Productos..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(ALLTRIM(f2118cod))+"*" TAG f2118cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE PrT_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2119", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Total de Productos x Cantidad y Costos..."
      PUBLIC afIl, x
      DIMENSION afIl[13, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2119STO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2119CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2119CPE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2119CJP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2119STS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2119ORP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2119PRM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2119VS1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2119VS2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2119VP1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2119VP2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2119VO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2119VO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Total de Productos x Cantidad y Costos..."
 DO abB_0000a IN PUX0000A
 GOTO TOP
 IF EOF()
      APPEND BLANK
      REPLACE f2119sto WITH 0
      REPLACE f2119caj WITH 0
      REPLACE f2119cpe WITH 0
      REPLACE f2119cjp WITH 0
      REPLACE f2119sts WITH 0
      REPLACE f2119orp WITH 0
      REPLACE f2119prm WITH 0
      REPLACE f2119vs1 WITH 0
      REPLACE f2119vs2 WITH 0
      REPLACE f2119vp1 WITH 0
      REPLACE f2119vp2 WITH 0
      REPLACE f2119vo1 WITH 0
      REPLACE f2119vo2 WITH 0
 ENDIF
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ls1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2105", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Cabecera de Lista de Precios de Proveedores..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2105PRV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2105FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2105CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2105CM2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2105TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Cabecera de Lista de Precios de Proveedores..."
 DO abB_0000a IN PUX0000A
 INDEX ON f2105prv+SUBSTR(DTOC(f2105fem), 7, 4)+SUBSTR(DTOC(f2105fem), 4,  ;
       2)+SUBSTR(DTOC(f2105fem), 1, 2) TAG f2105prv
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ls2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2106", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Detalle de Lista de Precios de Proveedores..."
      PUBLIC afIl, x
      DIMENSION afIl[30, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2106PRV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106CUX"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106NUX"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106MON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106SIG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2106TCA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F2106FOB"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106CFR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106CIF"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106PD8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2106FAC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106FO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106CF1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106CI1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2106CM3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Detalle de Lista de Precios de Proveedores..."
 DO abB_0000a IN PUX0000A
 INDEX ON f2106prv+SUBSTR(DTOC(f2106fem), 7, 4)+SUBSTR(DTOC(f2106fem), 4,  ;
       2)+SUBSTR(DTOC(f2106fem), 1, 2)+STR(f2106ite, 4, 0) TAG f2106prv
 INDEX ON f2106prv+SUBSTR(DTOC(f2106fem), 7, 4)+SUBSTR(DTOC(f2106fem), 4,  ;
       2)+SUBSTR(DTOC(f2106fem), 1, 2)+ALLTRIM(f2106cod)+"*"+STR(f2106ite,  ;
       4, 0) TAG f2106cd1
 INDEX ON f2106prv+ALLTRIM(f2106cod)+"*"+SUBSTR(DTOC(f2106fem), 7, 4)+ ;
       SUBSTR(DTOC(f2106fem), 4, 2)+SUBSTR(DTOC(f2106fem), 1, 2)+ ;
       STR(f2106ite, 4, 0) TAG f2106cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE OrC_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2910", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Ordenes de Compra..."
      DO taB_orden
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Ordenes de Compra..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2910tdo))=0 .OR. LEN(ALLTRIM(f2910ser))=0 .OR.  ;
        LEN(ALLTRIM(f2910doc))=0
 PACK
 INDEX ON UPPER(f2910nom)+f2910tdo+f2910ser+f2910doc TAG f2910nom
 INDEX ON SUBSTR(DTOC(f2910fem), 7, 4)+SUBSTR(DTOC(f2910fem), 4, 2)+ ;
       SUBSTR(DTOC(f2910fem), 1, 2)+f2910tdo+f2910ser+f2910doc TAG f2910fem
 INDEX ON f2910est+f2910tdo+f2910ser+f2910doc TAG f2910do1
 INDEX ON f2910est+UPPER(f2910nom)+f2910tdo+f2910ser+f2910doc TAG f2910no1
 INDEX ON f2910est+SUBSTR(DTOC(f2910fem), 7, 4)+SUBSTR(DTOC(f2910fem), 4,  ;
       2)+SUBSTR(DTOC(f2910fem), 1, 2)+f2910tdo+f2910ser+f2910doc TAG f2910fe1
 INDEX ON f2910tdo+f2910ser+f2910doc TAG f2910doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE OrD_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2911", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Ordenes de Compra..."
      PUBLIC afIl, x
      DIMENSION afIl[27, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2911TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CUX"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911NUX"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911MON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911SIG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911TCA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F2911FOB"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2911CFR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2911CIF"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2911CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2911CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2911CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CJD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911CND"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2911PUN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2911PRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2911TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Ordenes de Compra..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2911tdo))=0 .OR. LEN(ALLTRIM(f2911ser))=0 .OR.  ;
        LEN(ALLTRIM(f2911doc))=0
 PACK
 INDEX ON ALLTRIM(f2911cod)+"*"+f2911tdo+f2911ser+f2911doc+STR(f2911ite,  ;
       4, 0) TAG f2911cod
 INDEX ON f2911tdo+f2911ser+f2911doc+STR(f2911ite, 4, 0) TAG f2911doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE CpC_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2400", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Compras/Gastos..."
      DO taB_compras
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Compras/Gastos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2400tdo))=0 .OR. LEN(ALLTRIM(f2400ser))=0 .OR.  ;
        LEN(ALLTRIM(f2400doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f2400fem), 7, 4)+SUBSTR(DTOC(f2400fem), 4, 2)+ ;
       SUBSTR(DTOC(f2400fem), 1, 2)+f2400tdo+f2400ser+f2400doc TAG f2400fem
 INDEX ON SUBSTR(DTOC(f2400reg), 7, 4)+SUBSTR(DTOC(f2400reg), 4, 2)+ ;
       SUBSTR(DTOC(f2400reg), 1, 2)+f2400tdo+f2400ser+f2400doc TAG f2400reg
 INDEX ON f2400td1+ALLTRIM(f2400sr1)+"*"+ALLTRIM(f2400fac)+"*"+f2400tdo+ ;
       f2400ser+f2400doc TAG f2400fac
 INDEX ON UPPER(f2400nom)+f2400tdo+f2400ser+f2400doc TAG f2400nom
 INDEX ON ALLTRIM(f2400ped)+"*"+f2400tdo+f2400ser+f2400doc TAG f2400ped
 INDEX ON f2400tdo+f2400ser+f2400doc TAG f2400doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cp1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2401", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Compras/Gastos..."
      PUBLIC afIl, x
      DIMENSION afIl[24, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2401TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401MED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2401CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2401PRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2401CO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2401CO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 17
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2401PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2401LA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2401LA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2401AN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2401AN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2401ESP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2401TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Compras/Gastos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2401tdo))=0 .OR. LEN(ALLTRIM(f2401ser))=0 .OR.  ;
        LEN(ALLTRIM(f2401doc))=0
 PACK
 INDEX ON ALLTRIM(f2401cod)+"*"+f2401tdo+f2401ser+f2401doc+STR(f2401ite,  ;
       2, 0) TAG f2401cod
 INDEX ON f2401tdo+f2401ser+f2401doc+ALLTRIM(f2401cod)+"*"+STR(f2401ite,  ;
       2, 0) TAG f2401co1
 INDEX ON f2401tdo+f2401ser+f2401doc+STR(f2401ite, 2, 0) TAG f2401doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cp2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2402", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Ítems de Detalle de Compras/Gastos..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2402TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402RCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402OPC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402UN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402UN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402MLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2402MAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2402P11"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402P12"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402P21"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402P22"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402MM1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CX1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CY1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402MM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CX2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CY2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402MM3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CX3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CY3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402MM4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CX4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402CY4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2402PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2402CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2402CM2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Ítems de Compras/Gastos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2402tdo))=0 .OR. LEN(ALLTRIM(f2402ser))=0 .OR.  ;
        LEN(ALLTRIM(f2402doc))=0
 PACK
 INDEX ON f2402tdo+f2402ser+f2402doc+ALLTRIM(f2402cod)+"*"+STR(f2402rcc,  ;
       3, 0) TAG f2402doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cp3_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2403", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Series de Ítems de Compras/Gastos..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2403TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2403PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2403PLO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2403MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Series de Compras/Gastos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2403tdo))=0 .OR. LEN(ALLTRIM(f2403ser))=0 .OR.  ;
        LEN(ALLTRIM(f2403doc))=0
 PACK
 INDEX ON ALLTRIM(f2403cod)+"*"+ALLTRIM(f2403ped)+f2403sec+f2403tdo+ ;
       f2403ser+f2403doc TAG f2403cod
 INDEX ON f2403tdo+f2403ser+f2403doc+ALLTRIM(f2403cod)+"*"+ ;
       ALLTRIM(f2403ped)+f2403sec TAG f2403doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cp4_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2404", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Adicionales a Importaciones..."
      PUBLIC afIl, x
      DIMENSION afIl[10, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2404TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404CPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404DCP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404PRC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2404POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2404PRT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2404VIN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Datos Adicionales..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2404tdo))=0 .OR. LEN(ALLTRIM(f2404ser))=0 .OR.  ;
        LEN(ALLTRIM(f2404doc))=0
 PACK
 INDEX ON f2404tdo+f2404ser+f2404doc+f2404cpt+STR(f2404ite, 3, 0) TAG f2404cpt
 INDEX ON f2404tdo+f2404ser+f2404doc+STR(f2404ite, 3, 0) TAG f2404doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE ReC_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2600", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Guías de Remisión..."
      DO taB_remision
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Guías de Remisión..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2600tdo))=0 .OR. LEN(ALLTRIM(f2600ser))=0 .OR.  ;
        LEN(ALLTRIM(f2600doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f2600fem), 7, 4)+SUBSTR(DTOC(f2600fem), 4, 2)+ ;
       SUBSTR(DTOC(f2600fem), 1, 2)+f2600tdo+f2600ser+f2600doc TAG f2600fem
 INDEX ON UPPER(f2600nom)+f2600tdo+f2600ser+f2600doc TAG f2600nom
 INDEX ON f2600tdo+f2600ser+f2600doc TAG f2600doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Re1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2601", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Guías de Remisión..."
      PUBLIC afIl, x
      DIMENSION afIl[51, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2601TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601MED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2601CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601REF"
      afIl[x, 2] = "C"
      afIl[x, 3] = 60
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2601PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2601LAR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601LA9"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601ANC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AN9"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601ALT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601AL9"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2601ESP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2601PES"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2601CO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2601CO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2601TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Guías de Remisión..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2601tdo))=0 .OR. LEN(ALLTRIM(f2601ser))=0 .OR.  ;
        LEN(ALLTRIM(f2601doc))=0
 PACK
 INDEX ON ALLTRIM(f2601cod)+"*"+f2601tdo+f2601ser+f2601doc+STR(f2601ite,  ;
       2, 0) TAG f2601cod
 INDEX ON f2601tdo+f2601ser+f2601doc+STR(f2601ite, 2, 0) TAG f2601doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Re2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2602", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Ítems de Detalle de Guías de Remisión..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2602TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602RCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602OPC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602UN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602UN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602MLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2602MAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2602P11"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602P12"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602P21"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602P22"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602MM1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CX1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CY1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602MM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CX2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CY2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602MM3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CX3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CY3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602MM4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CX4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602CY4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2602PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2602CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2602CM2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Ítems de Guías de Remisión..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2602tdo))=0 .OR. LEN(ALLTRIM(f2602ser))=0 .OR.  ;
        LEN(ALLTRIM(f2602doc))=0
 PACK
 INDEX ON f2602tdo+f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"+STR(f2602rcc,  ;
       3, 0) TAG f2602doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Re3_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2603", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Series de Ítems de Guías de Remisión..."
      PUBLIC afIl, x
      DIMENSION afIl[12, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2603TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2603PLO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2603MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2603DO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Series de Guías de Remisión..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2603tdo))=0 .OR. LEN(ALLTRIM(f2603ser))=0 .OR.  ;
        LEN(ALLTRIM(f2603doc))=0
 PACK
 INDEX ON ALLTRIM(f2603cod)+"*"+ALLTRIM(f2603ped)+f2603sec+f2603tdo+ ;
       f2603ser+f2603doc TAG f2603cod
 INDEX ON f2603tdo+f2603ser+f2603doc+ALLTRIM(f2603cod)+"*"+ ;
       ALLTRIM(f2603ped)+f2603sec TAG f2603doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Re4_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2604", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Conjuntos..."
      PUBLIC afIl, x
      DIMENSION afIl[11, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2604TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604CUN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2604CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2604FOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2604DSP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2604DST"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2604TTT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Conjuntos de Guías de Remisión..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2604tdo))=0 .OR. LEN(ALLTRIM(f2604ser))=0 .OR.  ;
        LEN(ALLTRIM(f2604doc))=0
 PACK
 INDEX ON ALLTRIM(f2604cdg)+"*"+f2604tdo+f2604ser+f2604doc+ ;
       ALLTRIM(f2604cod)+"*" TAG f2604cdg
 INDEX ON f2604tdo+f2604ser+f2604doc+ALLTRIM(f2604cod)+"*"+ ;
       ALLTRIM(f2604cdg)+"*" TAG f2604doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE InC_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2700", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Guías de Ingreso..."
      DO taB_entradas
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Guías de Ingreso..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2700tdo))=0 .OR. LEN(ALLTRIM(f2700ser))=0 .OR.  ;
        LEN(ALLTRIM(f2700doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f2700fem), 7, 4)+SUBSTR(DTOC(f2700fem), 4, 2)+ ;
       SUBSTR(DTOC(f2700fem), 1, 2)+f2700tdo+f2700ser+f2700doc TAG f2700fem
 INDEX ON UPPER(f2700cm1)+f2700tdo+f2700ser+f2700doc TAG f2700cm1
 INDEX ON f2700tdo+f2700ser+f2700doc TAG f2700doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE In1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2701", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Guías de Ingreso..."
      PUBLIC afIl, x
      DIMENSION afIl[27, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2701TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701MED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2701CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701COS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2701CMT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2701PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2701LA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2701LA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2701AN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2701AN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2701ESP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2701TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701SGS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701NGS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2701CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Guías de Ingreso..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2701tdo))=0 .OR. LEN(ALLTRIM(f2701ser))=0 .OR.  ;
        LEN(ALLTRIM(f2701doc))=0
 PACK
 INDEX ON ALLTRIM(f2701cod)+"*"+f2701tdo+f2701ser+f2701doc+STR(f2701ite,  ;
       4, 0) TAG f2701cod
 INDEX ON f2701tdo+f2701ser+f2701doc+UPPER(f2701des)+STR(f2701ite, 4, 0)  ;
       TAG f2701des
 INDEX ON f2701tdo+f2701ser+f2701doc+STR(f2701ite, 4, 0) TAG f2701doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE In2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2702", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Ítems de Detalle de Guías de Ingreso..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2702TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702RCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702OPC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702UN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702UN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702MLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2702MAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2702P11"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702P12"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702P21"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702P22"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702MM1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CX1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CY1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702MM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CX2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CY2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702MM3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CX3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CY3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702MM4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CX4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702CY4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2702PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2702CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2702CM2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Ítems de Guías de Ingreso..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2702tdo))=0 .OR. LEN(ALLTRIM(f2702ser))=0 .OR.  ;
        LEN(ALLTRIM(f2702doc))=0
 PACK
 INDEX ON f2702tdo+f2702ser+f2702doc+ALLTRIM(f2702cod)+"*"+STR(f2702rcc,  ;
       3, 0) TAG f2702doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE In3_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2703", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Series de Ítems de Guías de Ingreso..."
      PUBLIC afIl, x
      DIMENSION afIl[12, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2703TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2703PLO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2703MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2703DO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Series de Guías de Ingreso..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2703tdo))=0 .OR. LEN(ALLTRIM(f2703ser))=0 .OR.  ;
        LEN(ALLTRIM(f2703doc))=0
 PACK
 INDEX ON ALLTRIM(f2703cod)+"*"+ALLTRIM(f2703ped)+f2703sec+f2703tdo+ ;
       f2703ser+f2703doc TAG f2703cod
 INDEX ON f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+"*"+ ;
       ALLTRIM(f2703ped)+f2703sec TAG f2703doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE SaC_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2800", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Guías de Salida..."
      DO taB_salidas
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Guías de Salida..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2800tdo))=0 .OR. LEN(ALLTRIM(f2800ser))=0 .OR.  ;
        LEN(ALLTRIM(f2800doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f2800fem), 7, 4)+SUBSTR(DTOC(f2800fem), 4, 2)+ ;
       SUBSTR(DTOC(f2800fem), 1, 2)+f2800tdo+f2800ser+f2800doc TAG f2800fem
 INDEX ON UPPER(f2800cm1)+f2800tdo+f2800ser+f2800doc TAG f2800cm1
 INDEX ON f2800tdo+f2800ser+f2800doc TAG f2800doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Sa1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2801", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Guías de Salida..."
      PUBLIC afIl, x
      DIMENSION afIl[28, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2801TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801CUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801NUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801MED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2801CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2801LA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2801AN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2801LA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2801AN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2801ESP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2801COS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2801CMT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2801TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801TGI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801SGI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801NGI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2801CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Guías de Salida..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2801tdo))=0 .OR. LEN(ALLTRIM(f2801ser))=0 .OR.  ;
        LEN(ALLTRIM(f2801doc))=0
 PACK
 INDEX ON ALLTRIM(f2801cod)+"*"+f2801tdo+f2801ser+f2801doc+STR(f2801ite,  ;
       4, 0) TAG f2801cod
 INDEX ON f2801tdo+f2801ser+f2801doc+STR(f2801ite, 4, 0) TAG f2801doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Sa2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2802", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Ítems de Detalle de Guías de Ingreso..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2802TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802RCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802OPC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802UN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802UN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802MLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2802MAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F2802P11"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802P12"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802P21"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802P22"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802MM1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CX1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CY1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802MM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CX2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CY2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802MM3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CX3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CY3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802MM4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CX4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802CY4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2802PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2802CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2802CM2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Guías de Salida..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2802tdo))=0 .OR. LEN(ALLTRIM(f2802ser))=0 .OR.  ;
        LEN(ALLTRIM(f2802doc))=0
 PACK
 INDEX ON f2802tdo+f2802ser+f2802doc+ALLTRIM(f2802cod)+"*"+STR(f2802rcc,  ;
       3, 0) TAG f2802doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Sa3_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2803", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Series de Ítems de Guías de Ingreso..."
      PUBLIC afIl, x
      DIMENSION afIl[12, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2803TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2803PLO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2803MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2803DO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Guías de Salida..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f2803tdo))=0 .OR. LEN(ALLTRIM(f2803ser))=0 .OR.  ;
        LEN(ALLTRIM(f2803doc))=0
 PACK
 INDEX ON ALLTRIM(f2803cod)+"*"+ALLTRIM(f2803ped)+f2803sec+f2803tdo+ ;
       f2803ser+f2803doc TAG f2803cod
 INDEX ON f2803tdo+f2803ser+f2803doc+ALLTRIM(f2803cod)+"*"+ ;
       ALLTRIM(f2803ped)+f2803sec TAG f2803doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Co1_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2920", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Cabecera de Conjuntos de Productos..."
      PUBLIC afIl, x
      DIMENSION afIl[33, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2920COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920FOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 40
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LAR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA8"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920LA9"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920ANC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN8"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AN9"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920ALT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL8"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2920AL9"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Cabecera de Conjuntos de Productos..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f2920cod)+"*" TAG f2920cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Co2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2921", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Detalle de Conjuntos de Productos..."
      PUBLIC afIl, x
      DIMENSION afIl[10, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2921COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2921FOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921DSP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F2921TTT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2921CAM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Detalle de Conjuntos de Productos..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f2921cdg)+"*"+ALLTRIM(f2921cod)+"*" TAG f2921cdg
 INDEX ON ALLTRIM(f2921cod)+"*"+ALLTRIM(f2921cdg)+"*" TAG f2921cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Co3_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2922", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Cambios en Conjuntos de Productos..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2922COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2922CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2922ALT"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Cambios de Conjuntos de Productos..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f2922cod)+"*"+ALLTRIM(f2922cdg)+"*"+ALLTRIM(f2922alt)+ ;
       "*" TAG f2922cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Kar_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2990", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Kardex de Unidades..."
      PUBLIC afIl, x
      DIMENSION afIl[41, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2990COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990DIA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990TPO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990TPP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990TRA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990SLD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990SLC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990SLS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990SCS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990COS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990DCT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990GAS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990PRM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990CUO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990REM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990SRF"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990FAC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990SOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990ORD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990EMI"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990TIT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990CLI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2990PIG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F2990TNE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 16
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990TIG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 16
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990TFA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 16
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2990TEN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices del Kardex de Unidades..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f2990cod)+"*"+STR(f2990sld, 15, 4)+f2990ano+f2990mes+ ;
       f2990dia+f2990tpo+f2990tpp+f2990tdo+f2990ser+f2990doc TAG f2990sld
 INDEX ON ALLTRIM(f2990cod)+"*"+f2990tdo+f2990ser+f2990doc+f2990ano+ ;
       f2990mes+f2990dia+f2990tpo+f2990tpp TAG f2990doc
 INDEX ON ALLTRIM(f2990cod)+"*"+f2990tdo+f2990ano+f2990mes+f2990dia+ ;
       f2990ser+f2990doc+f2990tpo+f2990tpp TAG f2990td1
 INDEX ON ALLTRIM(f2990cod)+"*"+f2990tdo+f2990ser+doC+f2990ano+f2990mes+ ;
       f2990dia+f2990tpo+f2990tpp TAG doC
 INDEX ON f2990tdo+f2990ten+ALLTRIM(f2990cod)+"*"+f2990ano+f2990mes+ ;
       f2990dia+f2990tpo+f2990tpp+f2990tdo+f2990ser+f2990doc TAG f2990tdo
 INDEX ON ALLTRIM(f2990cod)+"*"+f2990ano+f2990mes+f2990dia+f2990tpo+ ;
       f2990tpp+f2990tdo+f2990ser+f2990doc TAG f2990cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ka2_0002a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "2991", "A"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Kardex de Series..."
      PUBLIC afIl, x
      DIMENSION afIl[15, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2991COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991DIA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991TPP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991TPO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2991MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2991EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices del Kardex de Series..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f2991cod)+"*"+f2991tdo+f2991ser+doC+ALLTRIM(f2991ped)+ ;
       f2991sec+f2991ano+f2991mes+f2991dia+f2991tpo+f2991tpp TAG doC
 INDEX ON ALLTRIM(f2991cod)+"*"+f2991tdo+f2991ser+f2991doc+ ;
       ALLTRIM(f2991ped)+f2991sec+f2991ano+f2991mes+f2991dia+f2991tpo+ ;
       f2991tpp TAG f2991doc
 INDEX ON ALLTRIM(f2991cod)+"*"+ALLTRIM(f2991ped)+f2991sec+f2991ano+ ;
       f2991mes+f2991dia+f2991tpo+f2991tpp+f2991tdo+f2991ser+f2991doc TAG  ;
       f2991cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE SPa_0002a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"FA012112"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"FA012112"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT Números de Series..."
      PUBLIC afIl, x
      DIMENSION afIl[7, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2112COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2112PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2112SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2112PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2112EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2112PLO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F2112MOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Tab_Productos
 PUBLIC afIl, x
 DIMENSION afIl[124, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2111COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CUB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 16
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DIN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111VTA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MD1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MD2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MD3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VV0"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVB"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVF"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVH"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VVJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111FLI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MV0"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVB"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVF"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVH"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MVJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111GRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NUI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CUX"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NUX"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111TAM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111SER"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MIN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111MAX"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111TIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111IMP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111PRO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MAR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111LA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111AN3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111ADV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111VCP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111VCS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111PRM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111MOV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111UTI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111UT0"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111DC0"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111STO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F2111STS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F2111STM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F2111CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CAS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111PXC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CX1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111CX2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111BAS"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111COM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111FOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111PES"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2111CMX"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F2111PDT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2111MIL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111ULT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111CUO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Series
 PUBLIC afIl, x
 DIMENSION afIl[19, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2112COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2112EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112REP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2112MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112FE1"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112TD2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112DO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112FE2"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112TD3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SR3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112DO3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Compras
 PUBLIC afIl, x
 DIMENSION afIl[63, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2400TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400CUO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SW0"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400FIN"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400REG"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400FAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400REM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400ORD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400PLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DEC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2400PER"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400CCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400NCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400NFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DIA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400VAL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400RED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400NT1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400IG1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2400TRA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TDS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400SES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DOS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400MN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400COS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2400DTR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400FDT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DUA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2400MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Remision
 PUBLIC afIl, x
 DIMENSION afIl[60, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2600TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DEP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TD2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600AL1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LUG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LUD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LUP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LG2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LD2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LP2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600ALM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TRA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TNO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TDS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TDP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600FFA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600SRP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600MOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600MR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600PLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600MR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600PL2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CC1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CHO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LC1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CC2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CH2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600LC2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600PES"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2600CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 85
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 90
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CPS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600CPN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Entradas
 PUBLIC afIl, x
 DIMENSION afIl[21, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2700TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700SOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700ORD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700COS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2700TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700ALM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2700MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Salidas
 PUBLIC afIl, x
 DIMENSION afIl[22, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2800TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800TEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800NTE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800COS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2800ALM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2800MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Orden
 PUBLIC afIl, x
 DIMENSION afIl[38, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2910TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910EMB"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910FLL"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910MON"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910SIG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "F2910FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910PRO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910PLZ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910PLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910TCO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910ENT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910CM6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910VAP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910FDI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910HDI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2910MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE P00_0002a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-4,mCO0+55 to mFI0+mUFI+2,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                                   "
 DEFINE BAR 2 OF vtAb PROMPT " PROVEEDORES                             "
 DEFINE BAR 3 OF vtAb PROMPT " DIRECCIONES/SUCURSALES                  "
 DEFINE BAR 4 OF vtAb PROMPT " PRODUCTOS/SERVICIOS/ACTIVOS FIJOS       "
 DEFINE BAR 5 OF vtAb PROMPT " TOTALES x PRODUCTO                      "
 DEFINE BAR 6 OF vtAb PROMPT " TOTALES DE PRODUCTOS                    "
 DEFINE BAR 7 OF vtAb PROMPT " SERIES                                  "
 DEFINE BAR 8 OF vtAb PROMPT " PLC-1                                   "
 DEFINE BAR 9 OF vtAb PROMPT " ORDENES DE COMPRA (CABECERA)            "
 DEFINE BAR 10 OF vtAb PROMPT " ORDENES DE COMPRA (DETALLE)             "
 DEFINE BAR 11 OF vtAb PROMPT " COMPRAS/GASTOS (CABECERA)               "
 DEFINE BAR 12 OF vtAb PROMPT " COMPRAS/GASTOS (DETALLE-1)              "
 DEFINE BAR 13 OF vtAb PROMPT " COMPRAS/GASTOS (DETALLE-2)              "
 DEFINE BAR 14 OF vtAb PROMPT " COMPRAS/GASTOS (DETALLE-3)              "
 DEFINE BAR 15 OF vtAb PROMPT " COMPRAS/GASTOS (DETALLE-4)              "
 DEFINE BAR 16 OF vtAb PROMPT " GUÍAS DE REMISIÓN (CABECERA)            "
 DEFINE BAR 17 OF vtAb PROMPT " GUÍAS DE REMISIÓN (DETALLE-1)           "
 DEFINE BAR 18 OF vtAb PROMPT " GUÍAS DE REMISIÓN (DETALLE-2)           "
 DEFINE BAR 19 OF vtAb PROMPT " GUÍAS DE REMISIÓN (DETALLE-3)           "
 DEFINE BAR 20 OF vtAb PROMPT " GUÍAS DE REMISIÓN (DETALLE-4)           "
 DEFINE BAR 21 OF vtAb PROMPT " GUÍAS DE INGRESO (CABECERA)             "
 DEFINE BAR 22 OF vtAb PROMPT " GUÍAS DE INGRESO (DETALLE-1)            "
 DEFINE BAR 23 OF vtAb PROMPT " GUÍAS DE INGRESO (DETALLE-2)            "
 DEFINE BAR 24 OF vtAb PROMPT " GUÍAS DE INGRESO (DETALLE-3)            "
 DEFINE BAR 25 OF vtAb PROMPT " GUÍAS DE SALIDA (CABECERA)              "
 DEFINE BAR 26 OF vtAb PROMPT " GUÍAS DE SALIDA (DETALLE-1)             "
 DEFINE BAR 27 OF vtAb PROMPT " GUÍAS DE SALIDA (DETALLE-2)             "
 DEFINE BAR 28 OF vtAb PROMPT " GUÍAS DE SALIDA (DETALLE-3)             "
 DEFINE BAR 29 OF vtAb PROMPT " LISTA DE PRECIOS PROVEEDORES (CABECERA) "
 DEFINE BAR 30 OF vtAb PROMPT " LISTA DE PRECIOS PROVEEDORES (DETALLE)  "
 DEFINE BAR 31 OF vtAb PROMPT " CONJUNTOS (CABECERA)                    "
 DEFINE BAR 32 OF vtAb PROMPT " CONJUNTOS (DETALLE)                     "
 DEFINE BAR 33 OF vtAb PROMPT " CONJUNTOS (CAMBIOS)                     "
 DEFINE BAR 34 OF vtAb PROMPT " KARDEX DE UNIDADES                      "
 DEFINE BAR 35 OF vtAb PROMPT " KARDEX DE SERIES                        "
 DEFINE BAR 36 OF vtAb PROMPT " SERIES DE SPT                           "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Inventarios"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
