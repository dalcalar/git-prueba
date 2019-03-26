 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE 01 TO meRr
 DO taB_cargos_cli IN PUX0003A
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f3500tdo+f3500ser+f3500doc TAG f3500doc
 INDEX ON SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4, 2)+ ;
       SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fem
 INDEX ON SUBSTR(DTOC(f3500fve), 7, 4)+SUBSTR(DTOC(f3500fve), 4, 2)+ ;
       SUBSTR(DTOC(f3500fve), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fve
 INDEX ON UPPER(f3500nom)+f3500cli+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nom
 INDEX ON UPPER(f3500nti)+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nti
 INDEX ON UPPER(f3500nve)+f3500ven+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nve
 INDEX ON STR(f3500mon, 1, 0)+STRTRAN(STR(f3500tot+f3500int-f3500acu, 12,  ;
       2), " ", "0")+f3500tdo+f3500ser+f3500doc TAG f3500tot
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm2_3500a IN PCC3500A
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
 Use &mDBF Exclusive
 INDEX ON ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num TAG ftM2doc
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm3_3500a IN PCC3500A
 STORE "TM01"+ntM3+meXt TO mdBf
 DO WHILE .T.
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM3+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 DO tm4_3500a IN PCC3500A
 STORE "TM01"+ntM4+meXt TO mdBf
 DO WHILE .T.
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM4+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 IF BOF()
      STORE "No hay Documentos de Ventas procesados..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3501", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ctas_Ini_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3501DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Copia
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Pagos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3500a IN PCC3500A
 STORE "" TO veSt
 SELECT peNd_vtas
 STORE f3500tdo TO dtDo
 STORE f3500ser TO dsEr
 STORE f3500doc TO ddOc
 GOTO BOTTOM
 STORE f3500tdo TO htDo
 STORE f3500ser TO hsEr
 STORE f3500doc TO hdOc
 DO muE_3500b IN PCC3500B WITH "F", "v"
 SET READBORDER ON
 DO p00_3501a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO toT_3500a IN PCC3500A
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3501a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500a IN PCC3500A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3501a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3501a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=6
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_3500a IN PCC3500A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_3500a IN PCC3500A WITH "3501"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE vsW0=4
                          STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
                     CASE vsW0=5
                          STORE SUBSTR(DTOC(vfVe), 7, 4) TO vaNv
                          STORE SUBSTR(DTOC(vfVe), 4, 2) TO vmEv
                          STORE SUBSTR(DTOC(vfVe), 1, 2) TO vdIv
                ENDCASE
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                ELSE
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
                     DO pcC3501b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SET READBORDER ON
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
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE vsW0=1
                STORE VAL(vdOc) TO vdOc
                @iFIL-4,mCO0+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
                @iFIL-4,mCO0+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
                @iFIL-4,mCO0+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+14.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,32,70
           CASE vsW0=3
                @iFIL-4,mCO0+14.0 Edit vNTI Font "&mLetRom",11 Style "NQ" Size 1,32,70
           CASE vsW0=4
                @iFIL-4,mCO0+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=5
                @iFIL-4,mCO0+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=6
                @iFIL-4,mCO0+16.5 Edit vNVE Font "&mLetRom",11 Style "NQ" Size 1,30,50
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF vsW0=1
           DO coLbln
           vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
           @iFIL-4,mCO0+33.3 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999"
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE P00_3501a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mfI0+muFi+1.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl, ffFs
 STORE mfI0+5 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffFs-ifFs) TO ffFs
 STORE ffFs-1 TO ffFs
 STORE mcO0+46.1 TO vcL1
 DO CASE
      CASE mrEs="3"
           STORE mcO0+142.9 TO vcL2
           STORE mcO0+160.4 TO vcL3
           STORE mcO0+177.7 TO vcL4
           STORE mcO0+074.6 TO vcL5
           STORE mcO0+146.5 TO vcL6
           STORE mcO0+085.0 TO vcLa
           STORE mcO0+111.0 TO vcLb
           STORE mcO0+140.0 TO vcLc
      CASE mrEs="4"
           STORE mcO0+194.9 TO vcL2
           STORE mcO0+212.4 TO vcL3
           STORE mcO0+229.7 TO vcL4
           STORE mcO0+126.2 TO vcL5
           STORE mcO0+198.6 TO vcL6
           STORE mcO0+105.0 TO vcLa
           STORE mcO0+151.0 TO vcLb
           STORE mcO0+192.0 TO vcLc
      OTHERWISE
           STORE mcO0+211.9 TO vcL2
           STORE mcO0+229.4 TO vcL3
           STORE mcO0+246.7 TO vcL4
           STORE mcO0+142.2 TO vcL5
           STORE mcO0+215.6 TO vcL6
           STORE mcO0+115.0 TO vcLa
           STORE mcO0+161.0 TO vcLb
           STORE mcO0+202.0 TO vcLc
 ENDCASE
 STORE mcO0+muCo-16.4 TO vcLf
 STORE vcLf-05.6 TO vcLe
 STORE vcLe-09.2 TO vcLd
 DO tiT_0000a WITH "Histórico de Cuentas de Ventas"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_3500a IN PCC3500A
 DO liN_3500a IN PCC3500A WITH ifIl-1.5, ffIl+1.1
 DO li1_3500a IN PCC3500A WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO coLsc1
 @iFIL-1.3,mCO0+02.0 Say "Documento" Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+21.5 Say "Emisión"   Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+34.5 Say "Vencim."   Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,vCL2-04.0 Say "Mn"        Font "&mLetAri",9 Style "NT"
 DO p01_3500a IN PCC3500A
 DO coLsc6
 @ ffIl+1.1, vcL5+000.3 TO ffIl+3.5, vcL5+125.2 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, vcL5+021.0 TO ffIl+3.5, vcL5+041.7
 @ ffIl+1.1, vcL5+062.2 TO ffIl+3.5, vcL5+063.2
 @ ffIl+1.1, vcL5+062.6 TO ffIl+3.5, vcL5+062.6
 @ ffIl+1.1, vcL5+083.8 TO ffIl+3.5, vcL5+104.6
 @fFIL+1.2,vCL5+005.5 Say "Totales S/."   Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+024.6 Say "Pagos A/C S/." Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+046.0 Say "Saldos S/."    Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+066.0 Say "Totales US$"   Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,vCL5+085.8 Say "Pagos A/C US$" Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,vCL5+107.6 Say "Saldos US$"    Font "&mLetAri",9 Style "NT" Color 1
 DO geT_3500a IN PCC3500A
 DO toT_3500a IN PCC3500A
 DO boT_3500a IN PCC3500A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @mFI0+mUFI,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,60 Pict "@S65"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Res_3501a
 DO p00_3501a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT peNd_vtas
           CASE vsW1=2
                SELECT coPia
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3500b IN PCC3500B WITH "v", "c"
      DO seE_3500b IN PCC3500B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3500b IN PCC3500B WITH "v", "c"
           DO muE_3500b IN PCC3500B WITH "v", "i"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3500b IN PCC3500B WITH "i"
      DO paN_3501b IN PCC3501B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3500b IN PCC3500B WITH "c", "v"
      DO seE_3500b IN PCC3500B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Hl1_3501a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 2.000 SAY  ;
   "Esta consulta muestra todos los Documentos Pendientes y Cancelados. Se"
 @ pfIl+01, 2.000 SAY  ;
   "puede ver esta consulta de diferentes maneras, como x Nombre del Clien-"
 @ pfIl+02, 2.000 SAY "te, Fecha de Vencimiento ,etc."
 @ pfIl+04, 2.000 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 18.500 SAY ":" STYLE "BT"
 @ pfIl+07, 18.500 SAY ":" STYLE "BT"
 @ pfIl+08, 18.500 SAY ":" STYLE "BT"
 @ pfIl+09, 18.500 SAY ":" STYLE "BT"
 @ pfIl+10, 18.500 SAY ":" STYLE "BT"
 @ pfIl+11, 18.500 SAY ":" STYLE "BT"
 @ pfIl+06, 2.000 SAY "ESC" STYLE "BT"
 @ pfIl+07, 2.000 SAY "F10" STYLE "BT"
 @ pfIl+08, 2.000 SAY "F1" STYLE "BT"
 @ pfIl+09, 2.000 SAY "F6" STYLE "BT"
 @ pfIl+10, 2.000 SAY "F9" STYLE "BT"
 @ pfIl+11, 2.000 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+12, 2.000 SAY "CTRL ->," STYLE "BT"
 @ pfIl+13, 2.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+06, 20.000 SAY "Regresar al Menú Principal"
 @ pfIl+07, 20.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 20.000 SAY "Ayuda del Programa"
 @ pfIl+09, 20.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 20.000 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 20.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+12, 20.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 DO boR_3500a IN PCC3500A
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
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "N"
 DO deL_file2 WITH "4", "N"
 RELEASE ntM1, ntM2, ntM3, ntM4
ENDPROC
*
