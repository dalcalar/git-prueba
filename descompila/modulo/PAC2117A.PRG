 PARAMETER wnV1
 STORE "3" TO wnIv
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO tmP_2111a IN PAC2111A
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "CODIGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DESCRIPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "UNID_INV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "STOCK"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_LOC_1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_LOC_2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_LOC_3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_LOC_4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_TOTAL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_SUMA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "ST_COST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Productos/Servicios/Activos Fijos no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SET FILTER TO f2111tpo=1 .AND. f2111est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos para esta consulta" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tot_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT prOductos
 STORE 8 TO muLt
 STORE 00 TO meRr
 DO vaR_2111a IN PAC2111A
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsWa, vsWb, vpAl, cpAl, icL1, vfIl,  ;
        ifIl, ufIl
 PUBLIC ffIl, cfIl, vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs, idEs, udEs,  ;
        cdEs, vaL2
 PUBLIC vaL3, vaL4, vaL5, vaLt, vnO1, vnO2, vnO3, vnO4, vnO5, vsT1, vsT2,  ;
        vsT3, vsT4
 PUBLIC vsT5, vsTo, tsT1, tsT2, tsT3, tsT4, tsT5, ysT1, ysT2, ysT3, ysT4,  ;
        ysT5, vnUm
 PUBLIC vtOt, vcA1, vcA2, vwW1, vwW2, vwW3, vwW4, vwW5, vpT2, vpT3, vpT4, vpT5
 PUBLIC vpAn_11
 STORE SPACE(01) TO vtPp
 STORE SPACE(02) TO vgRu
 STORE SPACE(70) TO vpAl, vmAr
 STORE SPACE(mtMa) TO vcOd, icOd, ucOd
 STORE SPACE(120) TO vdEs, idEs, udEs
 STORE SPACE(30) TO vnGr, vnTi, vnO1, vnO2, vnO3, vnO4, vnO5
 STORE 02 TO vsWb
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0, csW0, vsW1, vsWa, voP1, vaLt, vsW2
 STORE 00 TO csW1, voP2, voP3, voP4, vaL2, vaL3, vaL4, vaL5
 STORE 00 TO vwW1, vwW2, vwW3, vwW4, vwW5, tsT1, tsT2, tsT3, tsT4, tsT5
 SELECT toT_prod
 STORE f2119vs1 TO tsT1
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tiPos
 GOTO TOP
 STORE f9211tip TO vtPp
 STORE f9211nti TO vnTi
 WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO1)+"..."
 SELECT tiEndas
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9991cod TO vcOd
      DO CASE
           CASE vcOd="01"
                STORE f9991nom TO vnO1
                SKIP
                LOOP
           CASE vcOd="02"
                SKIP
                LOOP
           CASE vcOd="03"
                STORE f9991nom TO vnO2
                STORE f9991pth TO vpT2
           CASE vcOd="04"
                STORE f9991nom TO vnO3
                STORE f9991pth TO vpT3
           CASE vcOd="05"
                STORE f9991nom TO vnO4
                STORE f9991pth TO vpT4
           CASE vcOd="06"
                STORE f9991nom TO vnO5
                STORE f9991pth TO vpT5
           OTHERWISE
                EXIT
      ENDCASE
      DO seL_0000a WITH muLt
      DO CASE
           CASE vcOd="03"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO2)+"..."
                STORE ALLTRIM(vpT2)+"FA012118.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO2)+" APAG" TO vnO2
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO2) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 1 TO vaL2
           CASE vcOd="04"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO3)+"..."
                STORE ALLTRIM(vpT3)+"FA012118.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO3)+" APAG" TO vnO3
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO3) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda3
                STORE 1 TO vaL3
           CASE vcOd="05"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO4)+"..."
                STORE ALLTRIM(vpT4)+"FA012118.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO4)+" APAG" TO vnO4
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO4) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda4
                STORE 1 TO vaL4
           CASE vcOd="06"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO5)+"..."
                STORE ALLTRIM(vpT5)+"FA012118.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO5)+" APAG" TO vnO5
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO5) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda5
                STORE 1 TO vaL5
      ENDCASE
      IF mkEy=k_Esc
           EXIT
      ENDIF
      SET ORDER TO F2118COD
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO seL_0000a WITH muLt+1
      DO CASE
           CASE vcOd="03" .AND. vaL2=1
                STORE ALLTRIM(vpT2)+"FA012119.DBF" TO mdBf
                Use &mDBF Shared Alias Tot_Tda2
                STORE f2119vs1 TO tsT2
           CASE vcOd="04" .AND. vaL3=1
                STORE ALLTRIM(vpT3)+"FA012119.DBF" TO mdBf
                Use &mDBF Shared Alias Tot_Tda3
                STORE f2119vs1 TO tsT3
           CASE vcOd="05" .AND. vaL4=1
                STORE ALLTRIM(vpT4)+"FA012119.DBF" TO mdBf
                Use &mDBF Shared Alias Tot_Tda4
                STORE f2119vs1 TO tsT4
           CASE vcOd="06" .AND. vaL5=1
                STORE ALLTRIM(vpT5)+"FA012119.DBF" TO mdBf
                Use &mDBF Shared Alias Tot_Tda5
                STORE f2119vs1 TO tsT5
      ENDCASE
      IF mkEy=k_Esc
           EXIT
      ENDIF
      STORE muLt+2 TO muLt
      SELECT tiEndas
      SKIP
 ENDDO
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 WAIT CLEAR
 SELECT prOductos
 GOTO TOP
 STORE f2111cod TO vcOd, icOd, dcOd
 STORE f2111des TO vdEs, idEs
 GOTO BOTTOM
 STORE f2111cod TO hcOd
 SET READBORDER ON
 DO p00_2117a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2117a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2117a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2117a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2117a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO coD_2113a IN PAC2113A
           CASE mkEy=k_F9
                DO opC_2111a IN PAC2111A WITH "PAC2117A", "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vsW1=2
                     SAVE SCREEN TO mpAn_11
                     SELECT teMporal
                     GOTO TOP
                     DO coLbln
                     STORE 0 TO ysT1, ysT2, ysT3, ysT4, ysT5
                     DO WHILE  .NOT. EOF()
                          STORE f2111cod TO xcOd
                          @ ifIl+2, icL1 SAY xcOd SIZE 1, 20
                          STORE ysT1+(f2111sto*f2111vcs) TO ysT1
                          IF vaL2=1
                               SELECT tiEnda2
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT2+(f2118sto*f2118vcs) TO ysT2
                               ENDIF
                          ENDIF
                          IF vaL3=1
                               SELECT tiEnda3
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT3+(f2118sto*f2118vcs) TO ysT3
                               ENDIF
                          ENDIF
                          IF vaL4=1
                               SELECT tiEnda4
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT4+(f2118sto*f2118vcs) TO ysT4
                               ENDIF
                          ENDIF
                          IF vaL5=1
                               SELECT tiEnda5
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT5+(f2118sto*f2118vcs) TO ysT5
                               ENDIF
                          ENDIF
                          SELECT teMporal
                          SKIP
                     ENDDO
                     RESTORE SCREEN FROM mpAn_11
                ENDIF
                IF wnV1="1"
                     DO toT_2117a IN PAC2117A
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO paC2117b
                SET READBORDER ON
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coL_boton
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO geT_2111a IN PAC2111A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE P00_2117a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 IF mrEs="3"
      STORE muCo+2 TO muCo
 ENDIF
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-6) TO ffIl
 STORE ifIl+4.7 TO vfB1
 STORE ifIl+7.9 TO vfB2
 STORE ifIl+0.5 TO vfB3
 STORE ifIl+3.5 TO vfB4
 STORE ifIl+6.7 TO vfB5
 STORE ifIl+9.9 TO vfB6
 STORE mcO0 TO icLn
 STORE mcO0+muCo TO ucLn
 DO CASE
      CASE mrEs="3"
           STORE mcO0+62 TO vcB3, vcB4, vcB5, vcB6
           STORE mcO0+070 TO icL1
      OTHERWISE
           STORE mcO0+102 TO vcB3, vcB4, vcB5, vcB6
           STORE mcO0+136.9 TO icL1
 ENDCASE
 STORE vcB3+40 TO vcB1, vcB2
 DO CASE
      CASE wnV1="1"
           DO tiT_0000a WITH "Consulta de Stocks x Almacén Valorizado"
      CASE wnV1="2"
           DO tiT_0000a WITH "Consulta de Stocks x Almacén"
 ENDCASE
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coD_2113a IN PAC2113A
 DO geT_2111a IN PAC2111A
 READ TIMEOUT 0.01
 DO liN_2117a WITH ifIl-1.3, ffIl+1
 DO coLsc1
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 @iFIL-1.3,iCLN+000.4 Say "Código"      Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,iCLN+031.1 Say "Descripción" Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,iCL1-010.6 Say "Und.Cpra"    Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,iCL1+114.8 Say "Total Stock" Font "&mLetAri",8 Style "BQ"
 DO tiT_2117a
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:" Font "&mLetRom",10 Style "BT"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wnV1="1"
      DO coLsc1
      @ ffIl+1.3, icL1 TO ffIl+3.3, icL1+022.2
      @ ffIl+1.3, icL1+022.0 TO ffIl+3.3, icL1+044.2
      @ ffIl+1.3, icL1+044.0 TO ffIl+3.3, icL1+066.2
      @ ffIl+1.3, icL1+066.0 TO ffIl+3.3, icL1+088.2
      @ ffIl+1.3, icL1+088.0 TO ffIl+3.3, icL1+110.1
      @ ffIl+1.3, icL1+109.9 TO ffIl+3.3, muCo+002.2
      DO toT_2117a IN PAC2117A
      DO bt1_2117a IN PAC2117A
 ENDIF
 DO paL_2111a IN PAC2111A
 DO tb1_2111a IN PAC2111A
 IF wnV1="1"
      DO boT_2117a IN PAC2117A
 ENDIF
ENDPROC
*
PROCEDURE Bt1_2117a
 IF vsW2=1
      DO prEsiona WITH "2", "CUADRO", ifIl-3.5, muCo-12
 ELSE
      DO prEsiona WITH "1", "CUADRO", ifIl-3.4, muCo-12
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=2
      DO prEsiona WITH "2", "CUADRO", ifIl-3.5, muCo-28
 ELSE
      DO prEsiona WITH "1", "CUADRO", ifIl-3.4, muCo-28
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblz
 @iFIL-3.1,mUCO-09.2 Say "CON IGV" Font "&mLetAri",8 Style "BT"
 @iFIL-3.2,mUCO-25.2 Say "SIN IGV" Font "&mLetAri",8 Style "BT"
ENDPROC
*
PROCEDURE Lin_2117a
 PARAMETER piNi, pfIn
 DO coLsc1
 @ piNi, icLn+030.6 TO pfIn, icLn+030.6
 @ piNi-0.3, icL1-011.2 TO pfIn+0.2, icL1-011.2
 @ piNi-0.3, icL1 TO pfIn+0.2, icL1
 @ piNi-0.3, icL1+022.0 TO pfIn+0.2, icL1+022.0
 @ piNi-0.3, icL1+044.0 TO pfIn+0.2, icL1+044.0
 @ piNi-0.3, icL1+066.0 TO pfIn+0.2, icL1+066.0
 @ piNi-0.3, icL1+088.0 TO pfIn+0.2, icL1+088.0
 @ piNi-0.3, icL1+110.1 TO pfIn+0.2, icL1+110.1
ENDPROC
*
PROCEDURE Tot_2117a
 PRIVATE ptSt
 DO coLsc1
 STORE 0 TO ptSt
 DO CASE
      CASE vsW2=1 .AND. vsW1=1
           @fFIL+1.7,iCL1+00.6 Say tST1                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+22.6 Say tST2                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+44.6 Say tST3                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+66.6 Say tST4                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+88.6 Say tST5                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
      CASE vsW2=1 .AND. vsW1=2
           @fFIL+1.7,iCL1+00.6 Say yST1                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+22.6 Say yST2                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+44.6 Say yST3                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+66.6 Say yST4                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+88.6 Say yST5                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
      CASE vsW2=2 .AND. vsW1=1
           @fFIL+1.7,iCL1+00.6 Say Round(tST1/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+22.6 Say Round(tST2/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+44.6 Say Round(tST3/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+66.6 Say Round(tST4/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+88.6 Say Round(tST5/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
      CASE vsW2=2 .AND. vsW1=2
           @fFIL+1.7,iCL1+00.6 Say Round(yST1/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+22.6 Say Round(yST2/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+44.6 Say Round(yST3/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+66.6 Say Round(yST4/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
           @fFIL+1.7,iCL1+88.6 Say Round(yST5/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
 ENDCASE
 DO CASE
      CASE vsW1=1 .AND. vwW1=1
           STORE ptSt+tsT1 TO ptSt
      CASE vsW1=2 .AND. vwW1=1
           STORE ptSt+ysT1 TO ptSt
 ENDCASE
 DO CASE
      CASE vsW1=1 .AND. vwW2=1
           STORE ptSt+tsT2 TO ptSt
      CASE vsW1=2 .AND. vwW2=1
           STORE ptSt+ysT2 TO ptSt
 ENDCASE
 DO CASE
      CASE vsW1=1 .AND. vwW3=1
           STORE ptSt+tsT3 TO ptSt
      CASE vsW1=2 .AND. vwW3=1
           STORE ptSt+ysT3 TO ptSt
 ENDCASE
 DO CASE
      CASE vsW1=1 .AND. vwW4=1
           STORE ptSt+tsT4 TO ptSt
      CASE vsW1=2 .AND. vwW4=1
           STORE ptSt+ysT4 TO ptSt
 ENDCASE
 DO CASE
      CASE vsW1=1 .AND. vwW5=1
           STORE ptSt+tsT5 TO ptSt
      CASE vsW1=2 .AND. vwW5=1
           STORE ptSt+ysT5 TO ptSt
 ENDCASE
 IF vwW1+vwW2+vwW3+vwW4+vwW5=0
      DO CASE
           CASE vsW1=1
                STORE tsT1+tsT2+tsT3+tsT4+tsT5 TO ptSt
           CASE vsW1=2
                STORE ysT1+ysT2+ysT3+ysT4+ysT5 TO ptSt
      ENDCASE
 ENDIF
 IF vsW2=1
      @fFIL+1.7,iCL1+110.6 Say pTST                         Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
 ELSE
      @fFIL+1.7,iCL1+110.6 Say Round(pTST/(1+(mIGV/100)),4) Font "&mLetAri",9 Style "BQ" Size 1,17.5 Pict "99,999,999.9999"
 ENDIF
ENDPROC
*
PROCEDURE Tit_2117a
 DO coLsc1
 IF vwW1=1
      DO coL_beige
 ENDIF
 @iFIL-1.3,iCL1+00.3 Say "Stock "+vNO1 Font "&mLetAri",8 Style "BQ" Size 1,21.3 Pict "@S21"
 DO coLsc1
 IF vwW2=1
      DO coL_beige
 ENDIF
 @iFIL-1.3,iCL1+22.3 Say "Stock "+vNO2 Font "&mLetAri",8 Style "BQ" Size 1,21.3 Pict "@S21"
 DO coLsc1
 IF vwW3=1
      DO coL_beige
 ENDIF
 @iFIL-1.3,iCL1+44.3 Say "Stock "+vNO3 Font "&mLetAri",8 Style "BQ" Size 1,21.3 Pict "@S21"
 DO coLsc1
 IF vwW4=1
      DO coL_beige
 ENDIF
 @iFIL-1.3,iCL1+66.3 Say "Stock "+vNO4 Font "&mLetAri",8 Style "BQ" Size 1,21.3 Pict "@S21"
 DO coLsc1
 IF vwW5=1
      DO coL_beige
 ENDIF
 @iFIL-1.3,iCL1+88.3 Say "Stock "+vNO5 Font "&mLetAri",8 Style "BQ" Size 1,21.3 Pict "@S21"
ENDPROC
*
PROCEDURE Bot_2117a
 IF vaLt=0
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", ifIl-2.7, icL1+009.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", ifIl-2.7, icL1+031.9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", ifIl-2.7, icL1+054.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", ifIl-2.7, icL1+076.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", ifIl-2.7, icL1+96.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vwW1=1
      DO prEsiona WITH "1", "SI", ifIl-2.7, icL1+09.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vwW2=1
      DO prEsiona WITH "1", "SI", ifIl-2.7, icL1+31.9
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vwW3=1
      DO prEsiona WITH "1", "SI", ifIl-2.7, icL1+54.6
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vwW4=1
      DO prEsiona WITH "1", "SI", ifIl-2.7, icL1+76.4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vwW5=1
      DO prEsiona WITH "1", "SI", ifIl-2.7, icL1+96.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2117a
 DO p00_2117a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW1=01
                SELECT prOductos
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "v", "c"
      DO seE_2112b IN PAC2112B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_2112b IN PAC2112B WITH "v", "c"
           DO muE_2112b IN PAC2112B WITH "v", "i"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      DO paN_2117b IN PAC2117B
      DO muE_2112b IN PAC2112B WITH "c", "v"
      DO seE_2112b IN PAC2112B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Clp_2117a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=ifIl-3.514 .AND. mfIl<=ifIl-1.942 .AND. wnV1="1" .AND.  ;
           mcCc>=muCo-28.2 .AND. mcCc<=muCo-14 .AND. vsW2<>2
           STORE 2 TO vsW2
           DO bt1_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-3.514 .AND. mfIl<=ifIl-1.942 .AND. wnV1="1" .AND.  ;
           mcCc>=muCo-12 .AND. mcCc<=muCo-2.2 .AND. vsW2<>1
           STORE 1 TO vsW2
           DO bt1_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND. wnV1="1" .AND.  ;
           mcCc>=icL1+009.0 .AND. mcCc<=icL1+011.6 .AND. vaLt>0
           IF vwW1=1
                STORE 0 TO vwW1
           ELSE
                STORE 1 TO vwW1
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           DO seE_2112b IN PAC2112B WITH "i"
           DO paN_2117b IN PAC2117B
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
           DO seE_2112b IN PAC2112B WITH "v"
           DO diS_2117b IN PAC2117B WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO2))<>0 .AND. mcCc>=icL1+031.6 .AND. mcCc<=icL1+ ;
           034.2 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW2=1
                STORE 0 TO vwW2
           ELSE
                STORE 1 TO vwW2
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           DO seE_2112b IN PAC2112B WITH "i"
           DO paN_2117b IN PAC2117B
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
           DO seE_2112b IN PAC2112B WITH "v"
           DO diS_2117b IN PAC2117B WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO3))<>0 .AND. mcCc>=icL1+054.4 .AND. mcCc<=icL1+ ;
           057.0 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW3=1
                STORE 0 TO vwW3
           ELSE
                STORE 1 TO vwW3
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           DO seE_2112b IN PAC2112B WITH "i"
           DO paN_2117b IN PAC2117B
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
           DO seE_2112b IN PAC2112B WITH "v"
           DO diS_2117b IN PAC2117B WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO4))<>0 .AND. mcCc>=icL1+076.2 .AND. mcCc<=icL1+ ;
           078.8 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW4=1
                STORE 0 TO vwW4
           ELSE
                STORE 1 TO vwW4
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           DO seE_2112b IN PAC2112B WITH "i"
           DO paN_2117b IN PAC2117B
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
           DO seE_2112b IN PAC2112B WITH "v"
           DO diS_2117b IN PAC2117B WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO5))<>0 .AND. mcCc>=icL1+096.2 .AND. mcCc<=icL1+ ;
           098.8 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW5=1
                STORE 0 TO vwW5
           ELSE
                STORE 1 TO vwW5
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           DO seE_2112b IN PAC2112B WITH "i"
           DO paN_2117b IN PAC2117B
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
           DO seE_2112b IN PAC2112B WITH "v"
           DO diS_2117b IN PAC2117B WITH "R"
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2117a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Productos con sus stocks disponibles por"
 @ pfIl+01, 02 SAY "almacén, no incluyen los que están anulados."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+10, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 01 SAY "ESC" STYLE "BT"
 @ pfIl+06, 01 SAY "F10" STYLE "BT"
 @ pfIl+07, 01 SAY "F1" STYLE "BT"
 @ pfIl+08, 01 SAY "F6" STYLE "BT"
 @ pfIl+09, 01 SAY "F9" STYLE "BT"
 @ pfIl+10, 01 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+11, 01 SAY "CTRL ->, " STYLE "BT"
 @ pfIl+12, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 20 SAY "Buscar palabra o frase dentro de la descripción"
 @ pfIl+10, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+11, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 DO bvA_2111a IN PAC2111A
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsWa, vsWb, vpAl, cpAl, icL1, vfIl,  ;
         ifIl, ufIl
 RELEASE ffIl, cfIl, vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs, idEs, udEs,  ;
         cdEs, vaL2
 RELEASE vaL3, vaL4, vaL5, vaLt, vnO1, vnO2, vnO3, vnO4, vnO5, vsT1, vsT2,  ;
         vsT3, vsT4
 RELEASE vsT5, vsTo, tsT1, tsT2, tsT3, tsT4, tsT5, ysT1, ysT2, ysT3, ysT4,  ;
         ysT5, vnUm
 RELEASE vtOt, vcA1, vcA2, vwW1, vwW2, vwW3, vwW4, vwW5, vpTh
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 WITH "1", "S"
 DO deL_file2 WITH "2", "N"
 RELEASE ntM1, ntM2
ENDPROC
*
