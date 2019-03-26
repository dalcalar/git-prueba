 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE 01 TO meRr
 DO taB_cargos_prv IN PUX0003A
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
 INDEX ON f3600tdo+f3600ser+f3600doc TAG f3600doc
 INDEX ON f3600est+f3600tdo+f3600ser+f3600doc TAG f3600pen
 INDEX ON f3600est+SUBSTR(DTOC(f3600fem), 7, 4)+SUBSTR(DTOC(f3600fem), 4,  ;
       2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fe2
 INDEX ON f3600est+SUBSTR(DTOC(f3600fve), 7, 4)+SUBSTR(DTOC(f3600fve), 4,  ;
       2)+SUBSTR(DTOC(f3600fve), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fv2
 INDEX ON f3600est+UPPER(f3600nom)+f3600prv+SUBSTR(DTOC(f3600fem), 7, 4)+ ;
       SUBSTR(DTOC(f3600fem), 4, 2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+ ;
       f3600ser+f3600doc TAG f3600no2
 INDEX ON f3600est+STR(f3600mon, 1, 0)+STRTRAN(STR(f3600tot-f3600acu, 12,  ;
       2), " ", "0")+f3600tdo+f3600ser+f3600doc TAG f3600pto
 INDEX ON f3600est+f3600td1+f3600sr1+f3600do1+f3600tdo+f3600ser+f3600doc  ;
       TAG f3600fa2
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm2_3600a
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
 DO tm3_3600a
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
 DO tm4_3600a
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
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pend_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600PEN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3601", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ctas_Ini_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ctas_Total_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3210", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras_Prv
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3521DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3541DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Copia
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600PEN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
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
 SELECT 11
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vxLs, vpAl, cpAl,  ;
        icLn, ucLn
 PUBLIC vcLn, icL1, ucL1, vcB1, vcB2, vcB3, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
        vfFs, ifFs
 PUBLIC ufFs, ffFs, cfFs, vtO1, vtO2, vaC1, vaC2, ttO1, ttO2, taC1, taC2,  ;
        vtDo, itDo
 PUBLIC utDo, ctDo, xtDo, dtDo, htDo, vsEr, isEr, usEr, csEr, xsEr, dsEr,  ;
        hsEr, vdOc
 PUBLIC idOc, udOc, cdOc, xdOc, ddOc, hdOc, vpRv, ipRv, upRv, cpRv, xpRv,  ;
        vnOm, inOm
 PUBLIC unOm, cnOm, xnOm, vaNo, iaNo, uaNo, caNo, xaNo, vmEs, imEs, umEs,  ;
        cmEs, xmEs
 PUBLIC vdIa, idIa, udIa, cdIa, xdIa, vaNv, iaNv, uaNv, caNv, xaNv, vmEv,  ;
        imEv, umEv
 PUBLIC cmEv, xmEv, vdIv, idIv, udIv, cdIv, xdIv, vmOn, imOn, umOn, cmOn,  ;
        xmOn, vsLd
 PUBLIC isLd, usLd, csLd, xsLd, vfEm, xfEm, dfEm, hfEm, vfVe, xfVe, iaN1,  ;
        vaN1, caN1
 PUBLIC uaN1, imE1, vmE1, cmE1, umE1, idI1, vdI1, cdI1, udI1, itTt, vtTt,  ;
        ctTt, utTt
 PUBLIC vtD1, itD1, utD1, ctD1, xtD1, vsRr, isRr, usRr, csRr, xsRr, vdO1,  ;
        idO1, udO1
 PUBLIC cdO1, xdO1, isR1, vsR1, csR1, usR1, inUm, vnUm, cnUm, unUm, veSt,  ;
        xeSt, xaCu
 PUBLIC vaCu, xfCa, vfCa, xsUc, xrUc, xtPr, xnTp, xfPa, xnFp, xpRe, xpIg,  ;
        xtOt, xtO1
 PUBLIC xtO2, xaC1, xaC2, xsL1, xsL2, vrEn, tfA1, tfA2, tbO1, tbO2, tnP1,  ;
        tnP2, tnC1
 PUBLIC tnC2, tnD1, tnD2, tlE1, tlE2, tpU1, tpU2, vfA1, vfA2, vbO1, vbO2,  ;
        vnP1, vnP2
 PUBLIC vnC1, vnC2, vnD1, vnD2, vlE1, vlE2, vpU1, vpU2, vlIn, vpAg, voPc,  ;
        voP1, voP2
 PUBLIC csL1, csL2, ctT1, ctT2, vsIg, vpA1, vpA2, viMp
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE SPACE(07) TO idOc, idO1
 STORE SPACE(70) TO vnOm, vpAl, cpAl
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, voP1, voP2
 STORE 00 TO ttO1, ttO2, taC1, taC2, vtO1, vtO2
 STORE 00 TO vaC1, vaC2, vpA1, vpA2, viMp
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE " " TO veSt
 STORE DATE() TO vfEm, vfVe
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt
 IF EOF()
      STORE "No hay Documentos Pendientes por Pagar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      DO deL_files
      RETURN
 ENDIF
 SELECT ctAs_total_cpras
 SUM f3602to1 TO ttO1 ALL FOR f3602tdo<>"NC"
 SUM f3602ac1 TO taC1 ALL FOR f3602tdo<>"NC"
 SUM f3602to2 TO ttO2 ALL FOR f3602tdo<>"NC"
 SUM f3602ac2 TO taC2 ALL FOR f3602tdo<>"NC"
 SUM f3602to1 TO itO1 ALL FOR f3602tdo="NC"
 SUM f3602ac1 TO iaC1 ALL FOR f3602tdo="NC"
 SUM f3602to2 TO itO2 ALL FOR f3602tdo="NC"
 SUM f3602ac2 TO iaC2 ALL FOR f3602tdo="NC"
 STORE ttO1-itO1 TO ttO1
 STORE taC1-iaC1 TO taC1
 STORE ttO2-itO2 TO ttO2
 STORE taC2-iaC2 TO taC2
 SELECT peNd_cpras
 STORE f3600tdo TO dtDo
 STORE f3600ser TO dsEr
 STORE f3600doc TO ddOc
 SET NEAR ON
 SEEK veSt+"ZZ"
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ELSE
      SKIP -1
 ENDIF
 STORE f3600tdo TO htDo
 STORE f3600ser TO hsEr
 STORE f3600doc TO hdOc
 DO muE_3600b IN PCC3600B WITH "F", "v"
 SET READBORDER ON
 DO p00_3600a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO toT_3600a IN PCC3600A
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3600a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F5 .AND. miMp=1
                DO op1_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=5
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_3600a
           CASE mkEy=k_F9
                DO opC_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE vsW0=3
                          STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
                     CASE vsW0=4
                          STORE SUBSTR(DTOC(vfVe), 7, 4) TO vaNv
                          STORE SUBSTR(DTOC(vfVe), 4, 2) TO vmEv
                          STORE SUBSTR(DTOC(vfVe), 1, 2) TO vdIv
                ENDCASE
                DO CASE
                     CASE vsW1=01
                          SELECT peNd_cpras
                     CASE vsW1=02
                          SELECT coPia
                ENDCASE
                GOTO TOP
                SEEK veSt
                IF BOF() .OR. EOF() .OR. f3600est<>veSt
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
                     DO pcC3600b
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
                @iFIL-4,iCLN+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
                @iFIL-4,iCLN+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
                @iFIL-4,iCLN+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,iCLN+18.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,28,70
           CASE vsW0=3
                @iFIL-4,iCLN+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=4
                @iFIL-4,iCLN+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=5
                @iFIL-4,iCLN+17.0 Get  vTD1 Font "&mLetRom",11 Style "NQ" Size 1,3.5  Pict "!!"                   Color ,&mColBlN
                @iFIL-4,iCLN+23.3 Get  vSRR Font "&mLetRom",11 Style "NQ" Size 1,4    Pict "999"                  Color ,&mColBlN
                @iFIL-4,iCLN+30.3 Get  vDO1 Font "&mLetRom",11 Style "NQ" Size 1,19.1 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF vsW0=1
           DO coLbln
           vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
           @iFIL-4,iCLN+33.3 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999"
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_3600a
 DO rs2_3600a IN PCC3600A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_3600a IN PCC3600A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.80
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_3600a
           CASE mkEy=k_F12
                DO reS_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_3600a IN PCC3600A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_cpras
                GOTO TOP
                SEEK veSt
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, vfA1, vfA2, vbO1
                STORE 00 TO vbO2, vnP1, vnP2, vlE1, vlE2, vnC1, vnC2,  ;
                      vnD1, vnD2
                DO WHILE  .NOT. EOF() .AND. f3600est=veSt
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3600nom)))<>0
                          DO muE_3600a IN PCC3600A
                          DO grA_3600a IN PCC3600A
                          DO CASE
                               CASE f3600mon=1 .AND. f3600td1="NC"
                                    STORE vtO1-f3600tot TO vtO1
                                    STORE vaC1-f3600acu TO vaC1
                               CASE f3600mon=1
                                    STORE vtO1+f3600tot TO vtO1
                                    STORE vaC1+f3600acu TO vaC1
                               CASE f3600mon=2 .AND. f3600td1="NC"
                                    STORE vtO2-f3600tot TO vtO2
                                    STORE vaC2-f3600acu TO vaC2
                               CASE f3600mon=2
                                    STORE vtO2+f3600tot TO vtO2
                                    STORE vaC2+f3600acu TO vaC2
                          ENDCASE
                          DO CASE
                               CASE f3600td1="FA" .AND. f3600mon=1
                                    STORE vfA1+(f3600tot-f3600acu) TO vfA1
                               CASE f3600td1="FA" .AND. f3600mon=2
                                    STORE vfA2+(f3600tot-f3600acu) TO vfA2
                               CASE f3600td1="BO" .AND. f3600mon=1
                                    STORE vbO1+(f3600tot-f3600acu) TO vbO1
                               CASE f3600td1="BO" .AND. f3600mon=2
                                    STORE vbO2+(f3600tot-f3600acu) TO vbO2
                               CASE f3600td1="NP" .AND. f3600mon=1
                                    STORE vnP1+(f3600tot-f3600acu) TO vnP1
                               CASE f3600td1="NP" .AND. f3600mon=2
                                    STORE vnP2+(f3600tot-f3600acu) TO vnP2
                               CASE f3600td1="LP" .AND. f3600mon=1
                                    STORE vlE1+(f3600tot-f3600acu) TO vlE1
                               CASE f3600td1="LP" .AND. f3600mon=2
                                    STORE vlE2+(f3600tot-f3600acu) TO vlE2
                               CASE f3600td1="ND" .AND. f3600mon=1
                                    STORE vnD1+(f3600tot-f3600acu) TO vnD1
                               CASE f3600td1="ND" .AND. f3600mon=2
                                    STORE vnD2+(f3600tot-f3600acu) TO vnD2
                               CASE f3600td1="NC" .AND. f3600mon=1
                                    STORE vnC1+(f3600tot-f3600acu) TO vnC1
                               CASE f3600td1="NC" .AND. f3600mon=2
                                    STORE vnC2+(f3600tot-f3600acu) TO vnC2
                          ENDCASE
                          SELECT peNd_cpras
                     ENDIF
                     SKIP
                ENDDO
                SELECT coPia
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,iCLN+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,65,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1,iCLN+1  Say "Palabra:" Font "&mLetRom",9 Style "BQ" Size 1,10
 @mFI0+mUFI-1,iCLN+11 Say vPAL       Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 DO toT_3600a IN PCC3600A
ENDPROC
*
PROCEDURE Op1_3600a
 DO rs3_3600a IN PCC3600A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs3_3600a IN PCC3600A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.80
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_3600a
           CASE mkEy=k_F12
                DO reS_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs3_3600a IN PCC3600A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_cpras
                GOTO TOP
                SEEK veSt
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, vfA1, vfA2, vbO1
                STORE 00 TO vbO2, vnP1, vnP2, vlE1, vlE2, vnC1, vnC2,  ;
                      vnD1, vnD2
                DO WHILE  .NOT. EOF() .AND. f3600est=veSt
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3600ped)))<>0
                          DO muE_3600a IN PCC3600A
                          DO grA_3600a IN PCC3600A
                          DO CASE
                               CASE f3600mon=1 .AND. f3600td1="NC"
                                    STORE vtO1-f3600tot TO vtO1
                                    STORE vaC1-f3600acu TO vaC1
                               CASE f3600mon=1
                                    STORE vtO1+f3600tot TO vtO1
                                    STORE vaC1+f3600acu TO vaC1
                               CASE f3600mon=2 .AND. f3600td1="NC"
                                    STORE vtO2-f3600tot TO vtO2
                                    STORE vaC2-f3600acu TO vaC2
                               CASE f3600mon=2
                                    STORE vtO2+f3600tot TO vtO2
                                    STORE vaC2+f3600acu TO vaC2
                          ENDCASE
                          DO CASE
                               CASE f3600td1="FA" .AND. f3600mon=1
                                    STORE vfA1+(f3600tot-f3600acu) TO vfA1
                               CASE f3600td1="FA" .AND. f3600mon=2
                                    STORE vfA2+(f3600tot-f3600acu) TO vfA2
                               CASE f3600td1="BO" .AND. f3600mon=1
                                    STORE vbO1+(f3600tot-f3600acu) TO vbO1
                               CASE f3600td1="BO" .AND. f3600mon=2
                                    STORE vbO2+(f3600tot-f3600acu) TO vbO2
                               CASE f3600td1="NP" .AND. f3600mon=1
                                    STORE vnP1+(f3600tot-f3600acu) TO vnP1
                               CASE f3600td1="NP" .AND. f3600mon=2
                                    STORE vnP2+(f3600tot-f3600acu) TO vnP2
                               CASE f3600td1="LP" .AND. f3600mon=1
                                    STORE vlE1+(f3600tot-f3600acu) TO vlE1
                               CASE f3600td1="LP" .AND. f3600mon=2
                                    STORE vlE2+(f3600tot-f3600acu) TO vlE2
                               CASE f3600td1="ND" .AND. f3600mon=1
                                    STORE vnD1+(f3600tot-f3600acu) TO vnD1
                               CASE f3600td1="ND" .AND. f3600mon=2
                                    STORE vnD2+(f3600tot-f3600acu) TO vnD2
                               CASE f3600td1="NC" .AND. f3600mon=1
                                    STORE vnC1+(f3600tot-f3600acu) TO vnC1
                               CASE f3600td1="NC" .AND. f3600mon=2
                                    STORE vnC2+(f3600tot-f3600acu) TO vnC2
                          ENDCASE
                          SELECT peNd_cpras
                     ENDIF
                     SKIP
                ENDDO
                SELECT coPia
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,iCLN+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,10,7
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1,iCLN+1  Say "Pedido:" Font "&mLetRom",9 Style "BQ" Size 1,10
 @mFI0+mUFI-1,iCLN+11 Say vPAL      Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 DO toT_3600a IN PCC3600A
ENDPROC
*
PROCEDURE Tot_3600a
 DO coLsc6
 DO CASE
      CASE vsW1=01
           @fFIL+2.2,iCLN+072.0 Say tTO1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+092.6 Say tAC1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+113.2 Say tTO1-tAC1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+134.8 Say tTO2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+155.4 Say tAC2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+176.0 Say tTO2-tAC2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
      CASE vsW1=02
           @fFIL+2.2,iCLN+072.0 Say vTO1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+092.6 Say vAC1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+113.2 Say vTO1-vAC1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+134.8 Say vTO2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+155.4 Say vAC2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,iCLN+176.0 Say vTO2-vAC2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3600a
 STORE f3600tdo TO xtDo
 STORE f3600ser TO xsEr
 STORE f3600doc TO xdOc
 STORE f3600td1 TO xtD1
 STORE f3600sr1 TO xsRr
 STORE f3600do1 TO xdO1
 STORE f3600prv TO xpRv
 STORE f3600suc TO xsUc
 STORE f3600ruc TO xrUc
 STORE f3600nom TO xnOm
 STORE f3600tpr TO xtPr
 STORE f3600ntp TO xnTp
 STORE f3600fpa TO xfPa
 STORE f3600nfp TO xnFp
 STORE f3600fem TO xfEm
 STORE f3600pre TO xpRe
 STORE f3600fve TO xfVe
 STORE f3600fca TO xfCa
 STORE f3600mon TO xmOn
 STORE f3600pig TO xpIg
 STORE f3600tot TO xtOt
 STORE f3600acu TO xaCu
 STORE f3600est TO xeSt
ENDPROC
*
PROCEDURE Gra_3600a
 SELECT coPia
 APPEND BLANK
 REPLACE f3600tdo WITH xtDo
 REPLACE f3600ser WITH xsEr
 REPLACE f3600doc WITH xdOc
 REPLACE f3600td1 WITH xtD1
 REPLACE f3600sr1 WITH xsRr
 REPLACE f3600do1 WITH xdO1
 REPLACE f3600prv WITH xpRv
 REPLACE f3600suc WITH xsUc
 REPLACE f3600ruc WITH xrUc
 REPLACE f3600nom WITH xnOm
 REPLACE f3600tpr WITH xtPr
 REPLACE f3600ntp WITH xnTp
 REPLACE f3600fpa WITH xfPa
 REPLACE f3600nfp WITH xnFp
 REPLACE f3600fem WITH xfEm
 REPLACE f3600pre WITH xpRe
 REPLACE f3600fve WITH xfVe
 REPLACE f3600fca WITH xfCa
 REPLACE f3600mon WITH xmOn
 REPLACE f3600pig WITH xpIg
 REPLACE f3600tot WITH xtOt
 REPLACE f3600acu WITH xaCu
 REPLACE f3600est WITH xeSt
ENDPROC
*
PROCEDURE Lin_3600a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icLn+003.8 TO pfIn, icLn+003.8
 @ piNi, icLn+008.6 TO pfIn, icLn+008.6
 @ piNi, icLn+019.4 TO pfIn, icLn+019.4
 @ piNi, icLn+032.6 TO pfIn, icLn+032.6
 @ piNi, icLn+045.7 TO pfIn, icLn+045.7
 @ piNi, icLn+136.8 TO pfIn, icLn+136.8
 @ piNi, icLn+140.9 TO pfIn, icLn+140.9
 @ piNi, icLn+158.3 TO pfIn, icLn+158.3
 @ piNi, icLn+175.8 TO pfIn, icLn+175.8
 @ piNi, icLn+193.8 TO pfIn, icLn+193.8
 @ piNi, icLn+196.3 TO pfIn, icLn+196.3
 IF vsW4=2 .AND. (vsW2=1 .OR. vsW2=3 .OR. vsW2=4)
 ELSE
      @ piNi, icLn+52.3 TO pfIn, icLn+52.3
      IF vsW3=1 .OR. vsW4=1
           @ piNi, icLn+94.3 TO pfIn, icLn+94.3
           IF vsW2<>1 .AND. vsW2<>3 .AND. vsW2<>4
                @ piNi, icLn+100.9 TO pfIn, icLn+100.9
           ENDIF
      ENDIF
 ENDIF
 RELEASE piNi, pfIn
ENDPROC
*
PROCEDURE Li2_3600a
 DO coLplp
 @ ifIl-1.5, icLn+019.4 TO ifIl-0.2, icLn+019.4
 @ ifIl-1.5, icLn+032.6 TO ifIl-0.2, icLn+032.6
 @ ifIl-1.5, icLn+045.7 TO ifIl-0.2, icLn+045.7
 IF vsW3=1 .OR. vsW4=1
      @ ifIl-1.5, icLn+94.3 TO ifIl-0.2, icLn+94.3
 ENDIF
 @ ifIl-1.5, icLn+136.8 TO ifIl-0.2, icLn+136.8
 @ ifIl-1.5, icLn+140.9 TO ifIl-0.2, icLn+140.9
 @ ifIl-1.5, icLn+158.3 TO ifIl-0.2, icLn+158.3
 @ ifIl-1.5, icLn+175.8 TO ifIl-0.2, icLn+175.8
 @ ifIl-1.5, icLn+193.8 TO ifIl-0.2, icLn+193.8
 @ ifIl-1.5, icLn+196.3 TO ifIl-0.2, icLn+196.3
ENDPROC
*
PROCEDURE Tit_3600a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO CASE
      CASE vsW0=1
           @iFIL-4,iCLN+0.8 Say "Documento:"            Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,iCLN+0.8 Say "Proveedor:"            Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,iCLN+0.8 Say "Fecha de Emisión:"     Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,iCLN+0.8 Say "Fecha de Vencimiento:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=5
           @iFIL-4,iCLN+0.8 Say "Doc.Real:"             Font "&mLetRom",13 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE P00_3600a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 039.2 TO muFi
 STORE 178.8 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl, ffFs
 STORE mfI0+5 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffFs-ifFs) TO ffFs
 STORE ffFs-2 TO ffFs
 STORE mcO0 TO icLn, icL1
 STORE mcO0+198.8 TO ucLn
 STORE mcO0+197.9 TO ucL1
 STORE mcO0+46.1 TO vcB1
 STORE mcO0+94.8 TO vcB2
 STORE mcO0+176.1 TO vcB3
 DO tiT_0000a WITH "Cuentas por Pagar detalladas"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, icLn, mfI0+muFi, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_3600a
 DO liN_3600a IN PCC3600A WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 DO coLsc1
 @iFIL-1.3,iCLN+002.0 Say "Documento"  Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,iCLN+021.8 Say "Emisión"    Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,iCLN+033.4 Say "Vencimien"  Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,iCLN+137.4 Say "Mn"         Font "&mLetAri",9 Style "NT"
 DO p02_3600a IN PCC3600A
 DO li2_3600a IN PCC3600A
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,iCLN+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
           @iFIL-4,iCLN+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
           @iFIL-4,iCLN+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,iCLN+18.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,28,70
      CASE vsW0=3
           @iFIL-4,iCLN+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      CASE vsW0=4
           @iFIL-4,iCLN+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      CASE vsW0=5
           @iFIL-4,iCLN+17.0 Get  vTD1 Font "&mLetRom",11 Style "NQ" Size 1,3.5  Pict "!!"                   Color ,&mColBlN
           @iFIL-4,iCLN+23.3 Get  vSRR Font "&mLetRom",11 Style "NQ" Size 1,4    Pict "999"                  Color ,&mColBlN
           @iFIL-4,iCLN+30.3 Get  vDO1 Font "&mLetRom",11 Style "NQ" Size 1,19.1 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
 ENDCASE
 READ TIMEOUT 0.01
 DO coLsc6
 @ ffIl+1.1, icLn+071.3 TO ffIl+3.5, icLn+196.2 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, icLn+092.0 TO ffIl+3.5, icLn+112.7
 @ ffIl+1.1, icLn+133.2 TO ffIl+3.5, icLn+134.2
 @ ffIl+1.1, icLn+133.6 TO ffIl+3.5, icLn+133.6
 @ ffIl+1.1, icLn+154.8 TO ffIl+3.5, icLn+175.6
 @fFIL+1.2,iCLN+076.5 Say "Totales S/."   Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,iCLN+095.6 Say "Pagos A/C S/." Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,iCLN+117.0 Say "Saldos S/."    Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,iCLN+137.0 Say "Totales US$"   Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,iCLN+156.8 Say "Pagos A/C US$" Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,iCLN+178.6 Say "Saldos US$"    Font "&mLetAri",9 Style "NT" Color 1
 DO toT_3600a IN PCC3600A
 DO coLsc1
 IF viMp=1
      @mFI0+mUFI-1,iCLN+1  Say "Pedido:"  Font "&mLetRom",9 Style "BQ" Size 1,10
      @mFI0+mUFI-1,iCLN+11 Say vPAL       Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 ELSE
      @mFI0+mUFI-1,iCLN+1  Say "Palabra:" Font "&mLetRom",9 Style "BQ" Size 1,10
      @mFI0+mUFI-1,iCLN+11 Say vPAL       Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 ENDIF
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE P02_3600a
 DO coLsc1
 DO CASE
      CASE vsW3=1
           @iFIL-1.3,iCLN+67 Say "Proveedor"           Font "&mLetAri",9 Style "NQ" Size 1,27.3
      CASE vsW3=2
           @iFIL-1.3,iCLN+67 Say Space(40)+"Proveedor" Font "&mLetAri",9 Style "NQ" Size 1,70.0
 ENDCASE
 DO CASE
      CASE vsW2=1 .AND. vsW4=1
           @iFIL-1.3,iCLN+94.4 Say Space(22)+"Documento Real"          Font "&mLetAri",9 Style "NQ" Size 1,41.9 Pict "@S44"
      CASE vsW2=2 .AND. vsW4=1
           @iFIL-1.3,iCLN+94.4 Say Space(22)+"Tipo de Proveedor"       Font "&mLetAri",9 Style "NQ" Size 1,41.9 Pict "@S44"
      CASE vsW2=3 .AND. vsW4=1
           @iFIL-1.3,iCLN+94.4 Say Space(13)+"Documentos relacionados" Font "&mLetAri",9 Style "NQ" Size 1,41.9 Pict "@S44"
      CASE vsW2=4 .AND. vsW4=1
           @iFIL-1.3,iCLN+94.4 Say Space(27)+"Pedidos"                 Font "&mLetAri",9 Style "NQ" Size 1,41.9 Pict "@S44"
      CASE vsW2=1 .AND. vsW4=2
           @iFIL-1.3,iCLN+67 Say Space(38)+"Documento Real"            Font "&mLetAri",9 Style "NQ" Size 1,69.1 Pict "@S72"
      CASE vsW2=2 .AND. vsW4=2
           @iFIL-1.3,iCLN+67 Say Space(38)+"Tipo de Proveedor"         Font "&mLetAri",9 Style "NQ" Size 1,69.1 Pict "@S72"
      CASE vsW2=3 .AND. vsW4=2
           @iFIL-1.3,iCLN+67 Say Space(28)+"Documentos relacionados"   Font "&mLetAri",9 Style "NQ" Size 1,69.1 Pict "@S72"
      CASE vsW2=4 .AND. vsW4=2
           @iFIL-1.3,iCLN+67 Say Space(42)+"Pedidos"                   Font "&mLetAri",9 Style "NQ" Size 1,69.1 Pict "@S72"
 ENDCASE
 @iFIL-1.3,iCLN+142.0 Say "       Total"   Font "&mLetAri",9 Style "NQ" Size 1,13.9
 @iFIL-1.3,iCLN+159.2 Say "    a Cuenta"   Font "&mLetAri",9 Style "NQ" Size 1,13.9
 @iFIL-1.3,iCLN+177.1 Say "Tot - a Cuenta" Font "&mLetAri",9 Style "NQ" Size 1,13.9
 DO prEsiona WITH "1", "CONSU3", ifIl-1.5, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW4=1
      DO prEsiona WITH "1", "ABREI", ifIl-1.2, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSU5", ifIl-1, vcB1+2.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "ABRED", ifIl-1.2, vcB1+3.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vsW3=1
      DO prEsiona WITH "1", "ABREI", ifIl-1.2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSU5", ifIl-1, vcB2+2.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "ABRED", ifIl-1.2, vcB2+3.5
 ENDIF
ENDPROC
*
PROCEDURE Res_3600a
 DO p00_3600a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=01
                SELECT peNd_cpras
           CASE vsW1=02
                SELECT coPia
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3600b IN PCC3600B WITH "v", "c"
      DO seE_3600b IN PCC3600B WITH "i"
      DO WHILE  .NOT. EOF() .AND. f3600est=veSt .AND. vfIl<ffIl+1
           IF f3600tdo+f3600ser+f3600doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3600b IN PCC3600B WITH "v", "c"
           DO muE_3600b IN PCC3600B WITH "v", "i"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3600b IN PCC3600B WITH "i"
      DO paN_3600b IN PCC3600B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3600b IN PCC3600B WITH "c", "v"
      DO seE_3600b IN PCC3600B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Rs2_3600a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, icLn+61 TO ifIl+4.0, icLn+137.1 PATTERN 1 PEN 1
 @ ifIl+0.0, icLn+60 TO ifIl+3.5, icLn+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,iCLN+61 Say "Digitar el nombre o Razón Social en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Rs3_3600a
 DO coLsc7
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, icLn+61 TO ifIl+4.0, icLn+137.1 PATTERN 1 PEN 1
 @ ifIl+0.0, icLn+60 TO ifIl+3.5, icLn+138.0 PATTERN 1 PEN 3
 @iFIL+0.4,mCO0+61 Say "Digitar No. de Pedido de Importación:" Font "&mLetAri",11 Style "NQ"
ENDPROC
*
PROCEDURE Clp_3600a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Tm2_3600a
 DIMENSION afIl[25, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2RCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SRL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DNC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PAG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
ENDPROC
*
PROCEDURE Tm3_3600a
 DIMENSION afIl[13, 4]
 STORE 1 TO x
 afIl[x, 1] = "DOCUMEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 14
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC_REAL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 24
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "EMISION"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "VENCIMI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COD_PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "PROVEED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "MONEDA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOT_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "ACU_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "TOT_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "ACU_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Tm4_3600a
 DIMENSION afIl[9, 4]
 STORE 1 TO x
 afIl[x, 1] = "DOCUMEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 19
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FECHA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "GLOSA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "BANCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CUENTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "OPERAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "MONEDA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "T_CAMB"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "PAGO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
ENDPROC
*
PROCEDURE Hl1_3600a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2.000 SAY  ;
   "Esta consulta muestra los Documentos Pendientes x Pagar. Se puede"
 @ pfIl+1, 2.000 SAY  ;
   "ver esta consulta de diferentes maneras, como x Nombre del Proveedor,"
 @ pfIl+2, 2.000 SAY "x Fecha de Vencimiento ,etc."
 @ pfIl+4, 2.000 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 18.500 SAY ":" STYLE "BT"
 @ pfIl+7, 18.500 SAY ":" STYLE "BT"
 @ pfIl+8, 18.500 SAY ":" STYLE "BT"
 @ pfIl+6, 2.000 SAY "ESC" STYLE "BT"
 @ pfIl+7, 2.000 SAY "F10" STYLE "BT"
 @ pfIl+8, 2.000 SAY "F1" STYLE "BT"
 @ pfIl+6, 20.000 SAY "Regresar al Menú Principal"
 @ pfIl+7, 20.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 20.000 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF miMp=1
      @ pfIl, 18.500 SAY ":" STYLE "BT"
      @ pfIl, 2.000 SAY "F5" STYLE "BT"
      @ pfIl, 20.000 SAY "Buscar x Pedido"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 18.500 SAY ":" STYLE "BT"
 @ pfIl+1, 18.500 SAY ":" STYLE "BT"
 @ pfIl+2, 18.500 SAY ":" STYLE "BT"
 @ pfIl+0, 2.000 SAY "F6" STYLE "BT"
 @ pfIl+1, 2.000 SAY "F9" STYLE "BT"
 @ pfIl+2, 2.000 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+3, 2.000 SAY "CTRL ->," STYLE "BT"
 @ pfIl+4, 2.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 20.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+1, 20.000 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+2, 20.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+3, 20.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3600a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social."
 @ pfIl+01, 03 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de los Do-"
 @ pfIl+02, 03 SAY  ;
   "cumentos, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 03 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Cabecera"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar a Cabecera"
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
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vxLs, vpAl, cpAl,  ;
         icLn, ucLn
 RELEASE vcLn, icL1, ucL1, vcB1, vcB2, vcB3, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
         vfFs, ifFs
 RELEASE ufFs, ffFs, cfFs, vtO1, vtO2, vaC1, vaC2, ttO1, ttO2, taC1, taC2,  ;
         vtDo, itDo
 RELEASE utDo, ctDo, xtDo, dtDo, htDo, vsEr, isEr, usEr, csEr, xsEr, dsEr,  ;
         hsEr, vdOc
 RELEASE idOc, udOc, cdOc, xdOc, ddOc, hdOc, vpRv, ipRv, upRv, cpRv, xpRv,  ;
         vnOm, inOm
 RELEASE unOm, cnOm, xnOm, vaNo, iaNo, uaNo, caNo, xaNo, vmEs, imEs, umEs,  ;
         cmEs, xmEs
 RELEASE vdIa, idIa, udIa, cdIa, xdIa, vaNv, iaNv, uaNv, caNv, xaNv, vmEv,  ;
         imEv, umEv
 RELEASE cmEv, xmEv, vdIv, idIv, udIv, cdIv, xdIv, vmOn, imOn, umOn, cmOn,  ;
         xmOn, vsLd
 RELEASE isLd, usLd, csLd, xsLd, vfEm, xfEm, dfEm, hfEm, vfVe, xfVe, iaN1,  ;
         vaN1, caN1
 RELEASE uaN1, imE1, vmE1, cmE1, umE1, idI1, vdI1, cdI1, udI1, itTt, vtTt,  ;
         ctTt, utTt
 RELEASE vtD1, itD1, utD1, ctD1, xtD1, vsRr, isRr, usRr, csRr, xsRr, vdO1,  ;
         idO1, udO1
 RELEASE cdO1, xdO1, isR1, vsR1, csR1, usR1, inUm, vnUm, cnUm, unUm, veSt,  ;
         xeSt, xaCu
 RELEASE vaCu, xfCa, vfCa, xsUc, xrUc, xtPr, xnTp, xfPa, xnFp, xpRe, xpIg,  ;
         xtOt, xtO1
 RELEASE xtO2, xaC1, xaC2, xsL1, xsL2, vrEn, tfA1, tfA2, tbO1, tbO2, tnP1,  ;
         tnP2, tnC1
 RELEASE tnC2, tnD1, tnD2, tlE1, tlE2, tpU1, tpU2, vfA1, vfA2, vbO1, vbO2,  ;
         vnP1, vnP2
 RELEASE vnC1, vnC2, vnD1, vnD2, vlE1, vlE2, vpU1, vpU2, vlIn, vpAg, voPc,  ;
         voP1, voP2
 RELEASE csL1, csL2, ctT1, ctT2, vsIg, vpA1, vpA2, viMp
 RELEASE vpAn_11, vpAn_12, vpAn_99
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
