 SET CENTURY ON
 PUBLIC vtAb
 STORE 19 TO muFi
 STORE 100 TO muCo
 DO p00_0001a
 ON SELECTION BAR 1 OF vtAb DO TOD_0001A
 ON SELECTION BAR 2 OF vtAb DO CLI_0001A
 ON SELECTION BAR 3 OF vtAb DO SUC_0001A
 ON SELECTION BAR 4 OF vtAb DO AGE_0001A
 ON SELECTION BAR 5 OF vtAb DO CDG_0001A
 ON SELECTION BAR 6 OF vtAb DO PDC_0001A
 ON SELECTION BAR 7 OF vtAb DO PD1_0001A
 ON SELECTION BAR 8 OF vtAb DO PD2_0001A
 ON SELECTION BAR 9 OF vtAb DO PD3_0001A
 ON SELECTION BAR 10 OF vtAb DO PD4_0001A
 ON SELECTION BAR 11 OF vtAb DO FCC_0001A
 ON SELECTION BAR 12 OF vtAb DO FC1_0001A
 ON SELECTION BAR 13 OF vtAb DO FC2_0001A
 ON SELECTION BAR 14 OF vtAb DO FC3_0001A
 ON SELECTION BAR 15 OF vtAb DO FC4_0001A
 ON SELECTION BAR 16 OF vtAb DO FC5_0001A
 ON SELECTION BAR 17 OF vtAb DO PED_0001A
 STORE 99 TO mkEy
 SHOW POPUP SAVE vtAb
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0001a
 DO td1_0001a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0001a
 DO clI_0001a IN PUX0001A
 DO suC_0001a IN PUX0001A
 DO cdG_0001a IN PUX0001A
 DO pdC_0001a IN PUX0001A
 DO pd1_0001a IN PUX0001A
 DO pd2_0001a IN PUX0001A
 DO pd3_0001a IN PUX0001A
 DO pd4_0001a IN PUX0001A
 DO fcC_0001a IN PUX0001A
 DO fc1_0001a IN PUX0001A
 DO fc2_0001a IN PUX0001A
 DO fc3_0001a IN PUX0001A
 DO fc4_0001a IN PUX0001A
 DO fc5_0001a IN PUX0001A
 DO peD_0001a IN PUX0001A
ENDPROC
*
PROCEDURE Cli_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1101", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Clientes..."
      PUBLIC afIl, x
      DIMENSION afIl[33, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1101COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101PPE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F1101TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101DCT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F1101TPP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101APP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101APM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101NO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101ALI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101TDI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101ELE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101MED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101VEN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101LIS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101LI2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101LI3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101GIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101LIC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101REG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101INI"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101CRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101NAC"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101CON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Clientes..."
 DO abB_0000a IN PUX0000A
 INDEX ON f1101est+f1101cod TAG f1101est
 INDEX ON UPPER(f1101nom)+f1101cod TAG f1101nom
 INDEX ON ALLTRIM(f1101ruc)+"*"+f1101cod TAG f1101ruc
 INDEX ON ALLTRIM(f1101ele)+"*"+f1101cod TAG f1101ele
 INDEX ON f1101ven+UPPER(f1101nom)+f1101cod TAG f1101ven
 INDEX ON f1101tip+UPPER(f1101nom)+f1101cod TAG f1101tip
 INDEX ON f1101cod TAG f1101cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Suc_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1102", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Sucursales..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1102COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102SUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102NDI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102NDP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102ENT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DIE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102ND1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102NP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CT1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102TL1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102AN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102FA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102MAI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CT2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102TL2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102AN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102FA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102MA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CT3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102CA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102TL3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102AN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102FA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102MA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102ALQ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1102MAQ"
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
 INDEX ON f1102dpt+f1102dis+f1102cod+f1102suc TAG f1102dpt
 INDEX ON f1102cod+f1102suc TAG f1102cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Age_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1103", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Agenda..."
      PUBLIC afIl, x
      DIMENSION afIl[07, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1103COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103HOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103PRO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1103PRE"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Agenda..."
 DO abB_0000a IN PUX0000A
 INDEX ON f1103cod TAG f1103cod
 INDEX ON SUBSTR(DTOC(f1103fem), 7, 4)+SUBSTR(DTOC(f1103fem), 4, 2)+ ;
       SUBSTR(DTOC(f1103fem), 1, 2)+f1103cod TAG f1103fem
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cdg_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1104", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Códigos de Cliente en referencia..."
      PUBLIC afIl, x
      DIMENSION afIl[7, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1104COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104CLI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1104MAQ"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Códigos de Clientes en Referencia..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f1104cod)+"*"+f1104cli TAG f1104cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE PdC_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1200", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Pedidos de Venta..."
      DO taB_pedidos
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera Pedidos de Venta..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1200tdo))=0 .OR. LEN(ALLTRIM(f1200ser))=0 .OR.  ;
        LEN(ALLTRIM(f1200doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f1200fem), 7, 4)+SUBSTR(DTOC(f1200fem), 4, 2)+ ;
       SUBSTR(DTOC(f1200fem), 1, 2)+f1200tdo+f1200ser+f1200doc TAG f1200fem
 INDEX ON UPPER(f1200nom)+f1200tdo+f1200ser+f1200doc TAG f1200nom
 INDEX ON UPPER(f1200ntt)+f1200tdo+f1200ser+f1200doc TAG f1200ntt
 INDEX ON ALLTRIM(f1200ruc)+"*"+f1200tdo+f1200ser+f1200doc TAG f1200ruc
 INDEX ON ALLTRIM(f1200ele)+"*"+f1200tdo+f1200ser+f1200doc TAG f1200ele
 INDEX ON f1200tdo+f1200ser+f1200doc TAG f1200doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pd1_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1201", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Pedidos de Venta..."
      DO taB_det_pedidos
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle Pedidos de Venta..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1201tdo))=0 .OR. LEN(ALLTRIM(f1201ser))=0 .OR.  ;
        LEN(ALLTRIM(f1201doc))=0
 PACK
 INDEX ON ALLTRIM(f1201cod)+"*"+STR(f1201can-f1201cad, 12, 4)+f1201tdo+ ;
       f1201ser+f1201doc+STR(f1201ite, 2, 0) TAG f1201cd1
 INDEX ON ALLTRIM(f1201cod)+"*"+f1201tdo+f1201ser+f1201doc+STR(f1201ite,  ;
       2, 0) TAG f1201cod
 INDEX ON f1201tdo+f1201ser+f1201doc+STR(f1201ite, 2, 0) TAG f1201doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pd2_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1202", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Ítems de Pedidos de Venta..."
      PUBLIC afIl, x
      DIMENSION afIl[36, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1202TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202RCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202OPC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202UN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202UN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202MLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F1202MAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 6
      STORE x+1 TO x
      afIl[x, 1] = "F1202P11"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202P12"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202P21"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202P22"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CTD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CA3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CA4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202MM1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CX1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CY1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202MM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CX2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CY2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202MM3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CX3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CY3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202MM4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CX4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202CY4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1202PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 14
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1202CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1202CM2"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle Pedidos de Venta..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1202tdo))=0 .OR. LEN(ALLTRIM(f1202ser))=0 .OR.  ;
        LEN(ALLTRIM(f1202doc))=0
 PACK
 INDEX ON f1202tdo+f1202ser+f1202doc+ALLTRIM(f1202cod)+"*"+STR(f1202rcc,  ;
       3, 0) TAG f1202doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pd3_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1203", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Series de Pedidos de Venta..."
      PUBLIC afIl, x
      DIMENSION afIl[7, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1203TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203SEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1203PLA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Series Pedidos de Venta..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1203tdo))=0 .OR. LEN(ALLTRIM(f1203ser))=0 .OR.  ;
        LEN(ALLTRIM(f1203doc))=0
 PACK
 INDEX ON ALLTRIM(f1203cod)+"*"+ALLTRIM(f1203ped)+f1203sec+f1203tdo+ ;
       f1203ser+f1203doc TAG f1203cod
 INDEX ON f1203tdo+f1203ser+f1203doc+ALLTRIM(f1203cod)+"*"+ ;
       ALLTRIM(f1203ped)+f1203sec TAG f1203doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Pd4_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1204", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Conjuntos de Pedidos de Ventas..."
      PUBLIC afIl, x
      DIMENSION afIl[11, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1204TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204CDG"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204CUN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1204CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1204FOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1204DSP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 4
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F1204DST"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1204TTT"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Conjuntos Pedidos de Venta..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1204tdo))=0 .OR. LEN(ALLTRIM(f1204ser))=0 .OR.  ;
        LEN(ALLTRIM(f1204doc))=0
 PACK
 INDEX ON ALLTRIM(f1204cdg)+"*"+f1204tdo+f1204ser+f1204doc+ ;
       ALLTRIM(f1204cod)+"*" TAG f1204cdg
 INDEX ON f1204tdo+f1204ser+f1204doc+ALLTRIM(f1204cdg)+"*"+ ;
       ALLTRIM(f1204cod)+"*" TAG f1204cd1
 INDEX ON f1204tdo+f1204ser+f1204doc+ALLTRIM(f1204cod)+"*"+ ;
       ALLTRIM(f1204cdg)+"*" TAG f1204doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE FcC_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1300", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Cabecera de Documentos de Ventas..."
      DO taB_facturas
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
      "Reorganizando Índices de Cabecera de Documentos de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1300tdo))=0 .OR. LEN(ALLTRIM(f1300ser))=0 .OR.  ;
        LEN(ALLTRIM(f1300doc))=0
 PACK
 INDEX ON UPPER(f1300nom)+f1300tdo+f1300ser+f1300doc TAG f1300nom
 INDEX ON UPPER(f1300cm1)+f1300tdo+f1300ser+f1300doc TAG f1300cm1
 INDEX ON UPPER(f1300ntt)+f1300tdo+f1300ser+f1300doc TAG f1300ntt
 INDEX ON ALLTRIM(f1300ruc)+"*"+f1300tdo+f1300ser+f1300doc TAG f1300ruc
 INDEX ON ALLTRIM(f1300ele)+"*"+f1300tdo+f1300ser+f1300doc TAG f1300ele
 INDEX ON f1300tdo+f1300ser+doC TAG doC
 INDEX ON f1300tit+f1300tdo+f1300ser+f1300doc TAG f1300tit
 INDEX ON f1300fpa+f1300tdo+f1300ser+f1300doc TAG f1300fpa
 INDEX ON f1300ven+f1300tdo+f1300ser+f1300doc TAG f1300ven
 INDEX ON SUBSTR(DTOC(f1300fem), 7, 4)+SUBSTR(DTOC(f1300fem), 4, 2)+ ;
       SUBSTR(DTOC(f1300fem), 1, 2)+f1300tdo+f1300ser+f1300doc TAG f1300fem
 INDEX ON SUBSTR(DTOC(f1300fde), 7, 4)+SUBSTR(DTOC(f1300fde), 4, 2)+ ;
       SUBSTR(DTOC(f1300fde), 1, 2)+f1300tdo+f1300ser+f1300doc TAG f1300fde
 INDEX ON SUBSTR(DTOC(f1300dat), 7, 4)+SUBSTR(DTOC(f1300dat), 4, 2)+ ;
       SUBSTR(DTOC(f1300dat), 1, 2)+f1300tdo+f1300ser+f1300doc TAG f1300dat
 INDEX ON f1300tdo+f1300ser+f1300doc TAG f1300doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fc1_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1301", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Detalle de Documentos de Ventas..."
      DO taB_det_fact IN PUX0001A
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
      "Reorganizando Índices de Detalle de Documentos de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1301tdo))=0 .OR. LEN(ALLTRIM(f1301ser))=0 .OR.  ;
        LEN(ALLTRIM(f1301doc))=0
 PACK
 INDEX ON ALLTRIM(f1301cod)+"*"+f1301tdo+f1301ser+f1301doc+STR(f1301ite,  ;
       2, 0) TAG f1301cod
 INDEX ON f1301tdo+f1301ser+doC+STR(f1301ite, 2, 0) TAG doC
 INDEX ON f1301tdo+f1301ser+f1301doc+STR(f1301ite, 2, 0) TAG f1301doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fc2_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1302", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Ítems de Documentos de Ventas..."
      DO taB_ite_fact IN PUX0001A
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
      "Reorganizando Índices de Series de Documentos de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1302tdo))=0 .OR. LEN(ALLTRIM(f1302ser))=0 .OR.  ;
        LEN(ALLTRIM(f1302doc))=0
 PACK
 INDEX ON f1302tdo+f1302ser+doC+ALLTRIM(f1302cod)+"*"+STR(f1302rcc, 3, 0)  ;
       TAG doC
 INDEX ON f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"+STR(f1302rcc,  ;
       3, 0) TAG f1302doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fc3_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1303", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Series de Documentos de Ventas..."
      DO taB_ser_fact IN PUX0001A
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Ítems de Documentos de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1303tdo))=0 .OR. LEN(ALLTRIM(f1303ser))=0 .OR.  ;
        LEN(ALLTRIM(f1303doc))=0
 PACK
 INDEX ON ALLTRIM(f1303cod)+"*"+ALLTRIM(f1303ped)+f1303sec+f1303tdo+ ;
       f1303ser+f1303doc TAG f1303cod
 INDEX ON f1303tdo+f1303ser+doC+ALLTRIM(f1303cod)+"*"+ALLTRIM(f1303ped)+ ;
       f1303sec TAG doC
 INDEX ON f1303tdo+f1303ser+f1303doc+ALLTRIM(f1303cod)+"*"+ ;
       ALLTRIM(f1303ped)+f1303sec TAG f1303doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fc4_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1304", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Conjuntos de Documentos de Ventas..."
      DO taB_con_fact IN PUX0001A
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
      "Reorganizando Índices de Conjuntos de Documentos de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1304tdo))=0 .OR. LEN(ALLTRIM(f1304ser))=0 .OR.  ;
        LEN(ALLTRIM(f1304doc))=0
 PACK
 INDEX ON ALLTRIM(f1304cdg)+"*"+f1304tdo+f1304ser+f1304doc+ ;
       ALLTRIM(f1304cod)+"*" TAG f1304cdg
 INDEX ON f1304tdo+f1304ser+doC+ALLTRIM(f1304cod)+"*"+ALLTRIM(f1304cdg)+ ;
       "*" TAG doC
 INDEX ON f1304tdo+f1304ser+f1304doc+ALLTRIM(f1304cod)+"*"+ ;
       ALLTRIM(f1304cdg)+"*" TAG f1304doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fc5_0001a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "1305", "V"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Detalle de Percepciones de Ventas..."
      DO taB_per_fact IN PUX0001A
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Percepciones de Ventas..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f1305ser))=0 .OR. LEN(ALLTRIM(f1305doc))=0
 PACK
 INDEX ON f1305ser+f1305doc+f1305sr1+f1305fac TAG f1305doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ped_0001a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"FV011200"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"FV011200"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Pase SPT de Cabecera de Pedidos de Venta..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1200TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1200SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1200DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1200NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1200FEM"
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
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"FV011201"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"FV011201"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Pase SPT de Detalle de Pedidos de Venta..."
      PUBLIC afIl, x
      DIMENSION afIl[11, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1201TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1201SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1201DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1201COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1201DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1201CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1201CAD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F1201LA1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1201AN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1201LA2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F1201AN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 3
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 STORE 00 TO meRr
 CLOSE INDEXES
 CLOSE DATABASES
 WAIT WINDOW TIMEOUT 0.01 "Fin de este proceso..."
ENDPROC
*
PROCEDURE Tab_Pedidos
 PUBLIC afIl, x
 DIMENSION afIl[46, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1200TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200NTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DEP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200LUG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200LUD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200LUP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200COM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200DTC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200DCL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200SWG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200PGD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200NFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DIA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TFP"
 afIl[x, 2] = "L"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1200CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 90
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DA1"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TI1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200DA2"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200TI2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1200MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Det_Pedidos
 PUBLIC afIl, x
 DIMENSION afIl[60, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1201TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201ITE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201CAD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201CJD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201PDC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1201DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201PRO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201MD1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201MD2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201MD3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201LAR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201LA9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201ANC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AN9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201ALT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201AL9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1201ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1201REF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 60
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1201PR1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1201TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1201TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Tab_Facturas
 PUBLIC afIl, x
 DIMENSION afIl[62, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1300TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CUO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300APP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300APM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DEP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TRA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300LUG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300LUD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300LUP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PPN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PPD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PPP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300COM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300TEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NTE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DTC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300DCL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300SWG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PGD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300FDE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300NFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DIA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TFP"
 afIl[x, 2] = "L"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300INT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1300SRP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 48
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 90
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300COP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300CMM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Det_Fact
 PUBLIC afIl, x
 DIMENSION afIl[62, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1301TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301ITE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 60
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301CDE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301PDC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1301DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1301PRO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301MD1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301MD2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301MD3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301LAR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301LA9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301ANC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AN9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301ALT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301AL9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1301ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1301REF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 150
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301PES"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301FDE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1301PR1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1301TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1301TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Tab_Ite_Fact
 PUBLIC afIl, x
 DIMENSION afIl[37, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1302TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302RCC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302OPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302UN1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302UN2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302MLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F1302MAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "F1302P11"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302P12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302P21"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302P22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CTD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302POR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302MM1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CX1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CY1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302MM2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CX2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CY2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302MM3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CX3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CY3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302MM4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CX4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302CY4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F1302PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1302CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1302FDE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Ser_Fact
 PUBLIC afIl, x
 DIMENSION afIl[15, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1303TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1303PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1303MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1303DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Con_Fact
 PUBLIC afIl, x
 DIMENSION afIl[12, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1304TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304CUN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1304CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1304FOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1304DSP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1304DST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F1304TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Per_Fact
 PUBLIC afIl, x
 DIMENSION afIl[7, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1305SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305FAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1305TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE P00_0001a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-3,mCO0+55 to mFI0+mUFI,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                                "
 DEFINE BAR 2 OF vtAb PROMPT " CLIENTES                             "
 DEFINE BAR 3 OF vtAb PROMPT " DIRECCIONES/SUCURSALES               "
 DEFINE BAR 4 OF vtAb PROMPT " AGENDA                               "
 DEFINE BAR 5 OF vtAb PROMPT " CODIGOS DE CLIENTES (EN REFERENCIA)  "
 DEFINE BAR 6 OF vtAb PROMPT " PEDIDOS (CABECERA)                   "
 DEFINE BAR 7 OF vtAb PROMPT " PEDIDOS (DETALLE GENERAL)            "
 DEFINE BAR 8 OF vtAb PROMPT " PEDIDOS (DETALLE ITEMS)              "
 DEFINE BAR 9 OF vtAb PROMPT " PEDIDOS (DETALLE SERIES)             "
 DEFINE BAR 10 OF vtAb PROMPT " PEDIDOS (DETALLE CONJUNTOS)          "
 DEFINE BAR 11 OF vtAb PROMPT " FACTURAS/BOLETAS (CABECERA)          "
 DEFINE BAR 12 OF vtAb PROMPT " FACTURAS/BOLETAS (DETALLE GENERAL)   "
 DEFINE BAR 13 OF vtAb PROMPT " FACTURAS/BOLETAS (DETALLE ITEMS)     "
 DEFINE BAR 14 OF vtAb PROMPT " FACTURAS/BOLETAS (DETALLE SERIES)    "
 DEFINE BAR 15 OF vtAb PROMPT " FACTURAS/BOLETAS (DETALLE CONJUNTOS) "
 DEFINE BAR 16 OF vtAb PROMPT " DETALLE DE PERCEPCIONES              "
 DEFINE BAR 17 OF vtAb PROMPT " PEDIDOS DE VENTAS DE SPT             "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Ventas"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
