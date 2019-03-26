 SET CENTURY ON
 PUBLIC vtAb
 STORE 14 TO muFi
 STORE 100 TO muCo
 DO p00_0005a
 ON SELECTION BAR 1 OF vtAb DO TOD_0005A
 ON SELECTION BAR 2 OF vtAb DO PLA_0005A
 STORE 99 TO mkEy
 SHOW POPUP SAVE vtAb
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0005a
 DO td1_0005a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0005a
 DO plA_0005a IN PUX0005A
ENDPROC
*
PROCEDURE Pla_0005a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4100", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo del Plan de Cuentas..."
      PUBLIC afIl, x
      DIMENSION afIl[15, 04]
      STORE 1 TO x
      afIl[x, 1] = "F4100COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100GLO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100TIP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100VTA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100CPR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100CT1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100CT2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100CT3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100CT4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4100MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Plan de Cuentas..."
 DO abB_0000a IN PUX0000A
 INDEX ON ALLTRIM(f4100cod)+"*" TAG f4100cod
 INDEX ON UPPER(f4100glo)+ALLTRIM(f4100cod)+"*" TAG f4100glo
 INDEX ON STR(f4100vta, 1, 0)+STR(f4100mon, 1, 0)+ALLTRIM(f4100cod)+"*"  ;
       TAG f4100vta
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE P00_0005a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-2,mCO0+55 to mFI0+mUFI,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                            "
 DEFINE BAR 2 OF vtAb PROMPT " PLAN DE CUENTAS                  "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Contabilidad"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
