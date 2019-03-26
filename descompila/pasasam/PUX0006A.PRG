 SET CENTURY ON
 PUBLIC vtAb
 STORE 14 TO muFi
 STORE 100 TO muCo
 DO p00_0006a
 ON SELECTION BAR 1 OF vtAb DO TOD_0006A
 ON SELECTION BAR 2 OF vtAb DO FAC_0006A
 STORE 99 TO mkEy
 SHOW POPUP SAVE vtAb
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0006a
 DO td1_0006a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0006a
 DO faC_0006a IN PUX0006A
ENDPROC
*
PROCEDURE Fac_0006a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "7000", "F"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Facturas Electrónicas..."
      PUBLIC afIl, x
      DIMENSION afIl[51, 04]
      STORE 1 TO x
      afIl[x, 1] = "F7000FEM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000FIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000RAZ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000COM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 223
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000RU1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 13
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000RU2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 16
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000UNI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F7000DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 250
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000PRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F7000PR2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 17
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000AFE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 45
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000ISC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 45
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000INA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000EXO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000VVA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000IIG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 43
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 43
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TTR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 43
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000OTR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TDC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TSE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000MON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000REM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 32
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000DO2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 45
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000LEY"
      afIl[x, 2] = "C"
      afIl[x, 3] = 104
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000PER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 49
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000ORD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000NON"
      afIl[x, 2] = "C"
      afIl[x, 3] = 17
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000UBL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TRA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000PES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 19
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000TES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 154
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000LDE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 45
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000FDE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 14
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000MTC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 24
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000VEH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 24
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000POR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 104
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000PDE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 104
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000VPR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 119
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000FCO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 14
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000GRA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 22
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000DCT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F7000DCI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de  de Facturas Electrónicas..."
 DO abB_0000a IN PUX0000A
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE P00_0006a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-2,mCO0+55 to mFI0+mUFI,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                            "
 DEFINE BAR 2 OF vtAb PROMPT " FACTURAS                         "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Fact.Elect"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
