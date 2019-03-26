 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[13, 4]
 STORE 01 TO x
 afIl[x, 1] = "F3500TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500INT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
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
 SET ORDER TO F3500TC5
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
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
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC veSt, vsW0, vsW1, vsW2, vlIn, vpAg, vfB1, vcB1, vtB1, vfIl, ifIl, ufIl
 PUBLIC ffIl, cfIl, vtCl, ctCl, vnTc, vtDo, itDo, utDo, ctDo, xtDo, vsEr,  ;
        isEr, usEr
 PUBLIC csEr, xsEr, vdOc, idOc, udOc, cdOc, xdOc, vtIt, vnTi, vcLi, vnOm,  ;
        vfEm, vfVe
 PUBLIC vmOn, vtOt, viNt, vaCu, vsIg, xtD1, xsR1, xdO1, vcHe, xaN1, xmE1,  ;
        xsR2, xnUm
 PUBLIC ttO1, tiN1, taC1, ttO2, tiN2, taC2, cdIa, icLn, ucLn
 PUBLIC vpAn_11, vpAn_12
 STORE SPACE(01) TO veSt
 STORE SPACE(02) TO vtDo, itDo, utDo, ctCl
 STORE SPACE(03) TO vsEr, isEr, usEr
 STORE SPACE(07) TO vdOc, idOc, udOc
 STORE 88 TO mpAg
 STORE 01 TO vsW0
 STORE 00 TO ttO1, tiN1, taC1, ttO2, tiN2, taC2
 STORE DATE() TO dfEm, hfEm
 STORE CTOD("  /  /    ") TO cdFe, chFe
 SELECT tiPos
 GOTO TOP
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SET ORDER TO F9110NTI
 STORE 00 TO meRr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE f9110tip TO vtCl
 STORE f9110nti TO vnTc
 SET READBORDER ON
 DO p00_3557a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3557a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3557a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3557a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3557a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE dfEm=CTOD("  /  /    ")
                          STORE "Fecha inicial no puede estar vacía..." TO mmSj
                     CASE hfEm=CTOD("  /  /    ")
                          STORE "Fecha final no puede estar vacía..." TO mmSj
                     CASE dfEm>hfEm
                          STORE "Fecha inicial es mayor que fecha final..."  ;
                                TO mmSj
                     CASE ctCl<>vtCl .OR. cdFe<>dfEm .OR. chFe<>hfEm
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                          SELECT peNd_vtas
                          GOTO TOP
                          SET NEAR ON
                          SEEK veSt+vtCl+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                               SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
                               1, 2)
                          SET NEAR OFF
                          SET ESCAPE ON
                          ON ESCAPE STORE K_ESC TO MKEY
                          STORE 00 TO ttO1, ttO2, tiN1, tiN2, taC1, taC2
                          DO WHILE  .NOT. EOF() .AND. f3500est+f3500tcl= ;
                             veSt+vtCl .AND. f3500fem<=hfEm
                               IF mkEy=k_Esc
                                    SELECT teMporal
                                    ZAP
                                    REINDEX
                                    EXIT
                               ENDIF
                               WAIT WINDOW NOCLEAR NOWAIT  ;
                                    "L E Y E N D O "+f3500tdo+":"+ ;
                                    f3500ser+"-"+f3500doc+"..."+CHR(13)+ ;
                                    CHR(13)+"Presionar ESC para Salir..."
                               STORE f3500tdo TO vtDo
                               STORE f3500ser TO vsEr
                               STORE f3500doc TO vdOc
                               STORE f3500tit TO vtIt
                               STORE f3500nti TO vnTi
                               STORE f3500cli TO vcLi
                               STORE f3500nom TO vnOm
                               STORE f3500fem TO vfEm
                               STORE f3500fve TO vfVe
                               STORE f3500mon TO vmOn
                               STORE f3500tot TO vtOt
                               STORE f3500int TO viNt
                               STORE f3500acu TO vaCu
                               IF (LEN(ALLTRIM(f3500tit))=0 .AND.  ;
                                  LEN(ALLTRIM(f3500cli))<>0) .OR.  ;
                                  (LEN(ALLTRIM(f3500nti))=0 .AND.  ;
                                  f3500tit=f3500cli .AND.  ;
                                  LEN(ALLTRIM(f3500cli))<>0)
                                    SEEK veSt+vtCl+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH veSt+vtCl+ ;
                                          SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                          SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                          SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                                          vsEr+vdOc
                                         IF mkEy=k_Esc
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              DO deL_files
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    REPLACE f3500tit WITH f3500cli
                                    REPLACE f3500nti WITH f3500nom
                                    UNLOCK
                                    STORE f3500tit TO vtIt
                                    STORE f3500nti TO vnTi
                               ELSE
                                    IF LEN(ALLTRIM(f3500tit))<>0 .AND.  ;
                                       LEN(ALLTRIM(f3500nti))=0
                                         SELECT clIentes
                                         SEEK vtIt
                                         IF  .NOT. EOF()
                                              STORE f1101nom TO vnTi
                                              SELECT peNd_vtas
                                              SEEK veSt+vtCl+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+vdOc
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH veSt+ ;
                                                    vtCl+ ;
                                                    SUBSTR(DTOC(vfEm), 7,  ;
                                                    4)+SUBSTR(DTOC(vfEm),  ;
                                                    4, 2)+ ;
                                                    SUBSTR(DTOC(vfEm), 1,  ;
                                                    2)+vtDo+vsEr+vdOc
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        DO deL_files
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                              REPLACE f3500nti WITH vnTi
                                              UNLOCK
                                         ENDIF
                                    ENDIF
                               ENDIF
                               IF LEN(ALLTRIM(vtIt))=0
                                    STORE  ;
                                     "Varios que no tienen Cliente registrado"  ;
                                     TO vnTi
                               ENDIF
                               SELECT teMporal
                               APPEND BLANK
                               REPLACE f3500tdo WITH vtDo
                               REPLACE f3500ser WITH vsEr
                               REPLACE f3500doc WITH vdOc
                               REPLACE f3500tit WITH vtIt
                               REPLACE f3500nti WITH vnTi
                               REPLACE f3500cli WITH vcLi
                               REPLACE f3500nom WITH vnOm
                               REPLACE f3500fem WITH vfEm
                               REPLACE f3500fve WITH vfVe
                               REPLACE f3500mon WITH vmOn
                               REPLACE f3500tot WITH vtOt
                               REPLACE f3500int WITH viNt
                               REPLACE f3500acu WITH vaCu
                               DO CASE
                                    CASE (vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3") .AND. vmOn=1
                                         STORE ttO1-vtOt TO ttO1
                                         STORE tiN1-viNt TO tiN1
                                         STORE taC1-vaCu TO taC1
                                    CASE vmOn=1
                                         STORE ttO1+vtOt TO ttO1
                                         STORE tiN1+viNt TO tiN1
                                         STORE taC1+vaCu TO taC1
                                    CASE (vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3") .AND. vmOn=2
                                         STORE ttO2-vtOt TO ttO2
                                         STORE tiN2-viNt TO tiN2
                                         STORE taC2-vaCu TO taC2
                                    CASE vmOn=2
                                         STORE ttO2+vtOt TO ttO2
                                         STORE tiN2+viNt TO tiN2
                                         STORE taC2+vaCu TO taC2
                               ENDCASE
                               SELECT peNd_vtas
                               SKIP
                          ENDDO
                          SET ESCAPE OFF
                          ON ESCAPE
                          IF mkEy<>k_Esc
                               STORE vtCl TO ctCl
                               STORE dfEm TO cdFe
                               STORE hfEm TO chFe
                          ENDIF
                          WAIT CLEAR
                ENDCASE
                IF mkEy<>k_Esc
                     STORE 99 TO mkEy
                     SELECT teMporal
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay datos registrados..." TO mmSj
                     ELSE
                          DO coLsc6
                          @fFIL+2.2,mCO0+157 Say tTO1           Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          @fFIL+3.6,mCO0+157 Say tIN1           Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          @fFIL+5.0,mCO0+157 Say tTO1+tIN1-tAC1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          @fFIL+2.2,mCO0+176 Say tTO2           Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          @fFIL+3.6,mCO0+176 Say tIN2           Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          @fFIL+5.0,mCO0+176 Say tTO2+tIN2-tAC2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
                          DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
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
                          DO pcC3557b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SET READBORDER ON
                          DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SET COLOR TO RGB(0,0,0,224,226,209)
                          @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      @iFIL-4,mCO0+07.5 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      @iFIL-4,mCO0+26.5 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_3557a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.8 TO pfIn, mcO0+019.8
 @ piNi, mcO0+033.4 TO pfIn, mcO0+033.4
 @ piNi, mcO0+047.0 TO pfIn, mcO0+047.0
 @ piNi, mcO0+054.0 TO pfIn, mcO0+054.0
 @ piNi, mcO0+086.1 TO pfIn, mcO0+086.1
 @ piNi, mcO0+093.1 TO pfIn, mcO0+093.1
 @ piNi, mcO0+125.8 TO pfIn, mcO0+125.8
 @ piNi, mcO0+130.5 TO pfIn, mcO0+130.5
 @ piNi, mcO0+146.9 TO pfIn, mcO0+146.9
 @ piNi, mcO0+163.3 TO pfIn, mcO0+163.3
 @ piNi, mcO0+179.8 TO pfIn, mcO0+179.8
 @ piNi, mcO0+196.1 TO pfIn, mcO0+196.1
ENDPROC
*
PROCEDURE P00_3557a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 039.4 TO muFi
 STORE 198.4 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ifIl-4.05 TO vfB1
 STORE mcO0+72.3 TO vcB1
 STORE mcO0 TO icLn
 STORE mcO0+198.1 TO ucLn
 Define Popup vTB1 from mFI0-1.3,mCO0+24 to fFIL+6.9,mCO0+77 Font "&mLetCou",9 Style "NQ" Prompt Field F9110NTI Scroll Color Scheme 3 Footer "CONSULTA DE TIPOS DE CLIENTES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH  ;
    "Ctas.x Cobrar: Rango de Fechas de Emisión y Tipo de Cliente"
 DO coLsc1
 SAVE SCREEN TO vpAn_11
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 DO prEsiona WITH "1", "OPCIO1", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFIL-4,mCO0+0.8 Say "Del" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+22  Say "al"  Font "&mLetRom",13 Style "BT"
 DO liN_3557a WITH ifIl-0.2, ffIl+1
 @ ifIl-1.3, mcO0+019.8 TO ifIl-0.2, mcO0+019.8
 @ ifIl-1.3, mcO0+033.4 TO ifIl-0.2, mcO0+033.4
 @ ifIl-1.3, mcO0+047.0 TO ifIl-0.2, mcO0+047.0
 @ ifIl-1.3, mcO0+086.1 TO ifIl-0.2, mcO0+086.1
 @ ifIl-1.3, mcO0+125.8 TO ifIl-0.2, mcO0+125.8
 @ ifIl-1.3, mcO0+130.5 TO ifIl-0.2, mcO0+130.5
 @ ifIl-1.3, mcO0+146.9 TO ifIl-0.2, mcO0+146.9
 @ ifIl-1.3, mcO0+163.3 TO ifIl-0.2, mcO0+163.3
 @ ifIl-1.3, mcO0+179.8 TO ifIl-0.2, mcO0+179.8
 @ ifIl-1.3, mcO0+196.1 TO ifIl-0.2, mcO0+196.1
 DO coLsc1
 @ ffIl+1.2, mcO0+139.0 TO ffIl+6.2, mcO0+194.1 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.2, mcO0+155.9 TO ffIl+6.2, mcO0+155.9
 @ ffIl+1.2, mcO0+174.9 TO ffIl+6.2, mcO0+174.9
 @iFIL-1.3,mCO0+000.0 Say "Documento"    Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+022.4 Say "Emisión"      Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+034.2 Say "Vencimien"    Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+048.0 Say "Cliente"      Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+086.7 Say "Titular"      Font "&mLetAri",9 Style "BQ" Size 1,10
 @iFIL-1.3,mCO0+126.5 Say "Mn"           Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+131.1 Say "Total Docum." Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+152.4 Say "A/C"          Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+165.9 Say "Intereses"    Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+184.9 Say "Saldo"        Font "&mLetAri",9 Style "BQ"
 DO coLsc1
 @fFIL+2.2,mCO0+140 Say "Saldos:"        Font "&mLetAri",9 Style "BT"
 @fFIL+3.6,mCO0+140 Say "Intereses:"     Font "&mLetAri",9 Style "BT"
 @fFIL+5.0,mCO0+140 Say "Deuda Total:"   Font "&mLetAri",9 Style "BT"
 DO coLsc6
 @fFIL+1.2,mCO0+163.8 Say "S/."          Font "&mLetAri",9 Style "BT"
 @fFIL+1.2,mCO0+181.4 Say "US$"          Font "&mLetAri",9 Style "BT"
 @fFIL+2.2,mCO0+157 Say tTO1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+3.6,mCO0+157 Say tIN1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+5.0,mCO0+157 Say tTO1+tIN1-tAC1   Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+2.2,mCO0+176 Say tTO2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+3.6,mCO0+176 Say tIN2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+5.0,mCO0+176 Say tTO2+tIN2-tAC2   Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 DO coLbln
 @iFIL-4,mCO0+07.5 Get  dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+26.5 Get  hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 DO coLsc1
 @iFIL-4,mCO0+43.5 Edit vNTC Font "&mLetRom",11 Style "NQ" Size 1,23.5,20
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_3557a
 DO p00_3557a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      STORE vtDo TO ctDo
      STORE vsEr TO csEr
      STORE vdOc TO cdOc
      SELECT teMporal
      SEEK itDo+isEr+idOc
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE vtDo TO itDo, ctDo
           STORE vsEr TO isEr, csEr
           STORE vdOc TO idOc, cdOc
           STORE ifIl TO vfIl, cfIl
      ENDIF
      SEEK itDo+isEr+idOc
      DO paN_3557b IN PCC3557B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ctDo TO vtDo
      STORE csEr TO vsEr
      STORE cdOc TO vdOc
      STORE cfIl TO vfIl
      SEEK vtDo+vsEr+vdOc
 ENDIF
ENDPROC
*
PROCEDURE Tip_3557a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTc)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9110tip<>vtCl
      DO coLsc1
      STORE f9110tip TO vtCl
      STORE f9110nti TO vnTc
      @iFIL-4,mCO0+43.5 Say vNTC Font "&mLetRom",11 Style "NQ" Size 1,23.5 Pict "@S20"
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3557a
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfB1-0.05 .AND. mfIl<=vfB1+1.521 .AND. mcCc>=vcB1-0.30  ;
           .AND. mcCc<=vcB1+3.900
           DO tiP_3557a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3557a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta consulta muestra los Documentos pendientes x Cobrar, en orden de"
 @ 1.200, 02 SAY  ;
   "documentos seleccionados por rangos de fechas y Tipos de Clientes.   "
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 18 SAY ":" STYLE "BT"
 @ 6.200, 18 SAY ":" STYLE "BT"
 @ 7.200, 18 SAY ":" STYLE "BT"
 @ 8.200, 18 SAY ":" STYLE "BT"
 @ 5.200, 02 SAY "ESC" STYLE "BT"
 @ 6.200, 02 SAY "F10" STYLE "BT"
 @ 7.200, 02 SAY "F1" STYLE "BT"
 @ 8.200, 02 SAY "ENTER, TAB," STYLE "BT"
 @ 9.200, 02 SAY "CTRL ->," STYLE "BT"
 @ 10.200, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ 5.200, 20 SAY "Regresar al Menú Principal"
 @ 6.200, 20 SAY "Cerrar y regresar a Windows"
 @ 7.200, 20 SAY "Ayuda del Programa"
 @ 8.200, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ 9.200, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE veSt, vsW0, vsW1, vsW2, vlIn, vpAg, vfB1, vcB1, vtB1, vfIl, ifIl, ufIl
 RELEASE ffIl, cfIl, vtCl, ctCl, vnTc, vtDo, itDo, utDo, ctDo, xtDo, vsEr,  ;
         isEr, usEr
 RELEASE csEr, xsEr, vdOc, idOc, udOc, cdOc, xdOc, vtIt, vnTi, vcLi, vnOm,  ;
         vfEm, vfVe
 RELEASE vmOn, vtOt, viNt, vaCu, vsIg, xtD1, xsR1, xdO1, vcHe, xaN1, xmE1,  ;
         xsR2, xnUm
 RELEASE ttO1, tiN1, taC1, ttO2, tiN2, taC2, cdIa, icLn, ucLn
 RELEASE vpAn_11, vpAn_12
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
 RELEASE ntM1
ENDPROC
*
