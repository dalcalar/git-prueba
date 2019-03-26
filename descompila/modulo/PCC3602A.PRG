 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE 01 TO meRr
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DV1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DV2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CV1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CV2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CN2"
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
 INDEX ON ftM1prv TAG ftM1prv
 INDEX ON UPPER(ftM1nom)+ftM1prv TAG ftM1nom
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm2_3600a IN PCC3600A
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
 DO tm3_3602a
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
 INDEX ON ftM3nti+ftM3tip TAG ftM3nti
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm4_3602a
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
           DO deL_file2 WITH "3", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 DO tm3_3600a IN PCC3600A
 STORE "TM01"+ntM5+meXt TO mdBf
 DO WHILE .T.
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM5+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
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
 SET ORDER TO F3600TPR
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
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
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
 Use &mDBF Exclusive Alias Tmp_Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3NTI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vlIn, vpAg, vpAl, cpAl, vxLs, vsW0, csW0, vsW1, csW1, vsW2, vfIl,  ;
        ifIl, ufIl
 PUBLIC ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vfFr, ifFr, ufFr, ffFr,  ;
        cfFr, vtB1
 PUBLIC vfBi, vcBi, vcB1, vcB2, vcLn, icLn, icL1, icL2, ucLn, ucL1, ucL2,  ;
        veSt, vtPr
 PUBLIC ctPr, vnTp, vpRv, ipRv, upRv, cpRv, dpRv, hpRv, vaNv, vmEv, vdIv,  ;
        vtDo, ctDo
 PUBLIC xtDo, itDo, utDo, vsEr, csEr, xsEr, isEr, usEr, vdOc, cdOc, xdOc,  ;
        idOc, udOc
 PUBLIC vnOm, cnOm, inOm, unOm, vaNo, iaNo, uaNo, caNo, xaNo, vmEs, imEs,  ;
        umEs, cmEs
 PUBLIC xmEs, vdIa, idIa, udIa, cdIa, xdIa, iaN1, vaN1, caN1, uaN1, imE1,  ;
        vmE1, cmE1
 PUBLIC umE1, idI1, vdI1, cdI1, udI1, itTt, vtTt, ctTt, utTt, isR1, vsR1,  ;
        csR1, usR1
 PUBLIC inU1, vnU1, cnU1, unU1, vfEm, vfVe, vmOn, vtOt, vaCu, vfCa, vpA1,  ;
        vpA2, vrEn
 PUBLIC tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1, tcN2, vdV1, vdV2, vdN1,  ;
        vdN2, vcV1
 PUBLIC vcV2, vcN1, vcN2, voPc, vsIg, vfA1, vfA2, vbO1, vbO2, vnP1, vnP2,  ;
        vnC1, vnC2
 PUBLIC vnD1, vnD2, vlE1, vlE2, vpU1, vpU2, xtO1, xtO2, xaC1, xaC2, vtD1
 PUBLIC vpAn_99, vpAn_11, vpAn_12, vpAn_13
 STORE SPACE(01) TO veSt
 STORE SPACE(02) TO ctPr
 STORE SPACE(04) TO ipRv
 STORE SPACE(70) TO vpAl, cpAl
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0, csW0, vsW1, csW1
 STORE 00 TO tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1, tcN2
 STORE 00 TO vdV1, vdV2, vdN1, vdN2, vcV1, vcV2, vcN1, vcN2
 SELECT tiPos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9210tip TO vtPr
      STORE f9210nti TO vnTp
      SELECT tmP_tipos
      APPEND BLANK
      REPLACE ftM3tip WITH vtPr
      REPLACE ftM3nti WITH vnTp
      SELECT tiPos
      SKIP
 ENDDO
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt
      STORE f3600tpr TO vtPr
      SELECT tiPos
      SEEK vtPr
      IF EOF()
           SELECT tmP_tipos
           APPEND BLANK
           REPLACE ftM3tip WITH vtPr
           REPLACE ftM3nti WITH vtPr+" No registrado..."
      ENDIF
      SELECT peNd_cpras
      SET NEAR ON
      SEEK veSt+vtPr+"ZZ"
      SET NEAR OFF
      IF EOF() .OR. f3600est<>veSt
           EXIT
      ENDIF
      SKIP
 ENDDO
 SELECT tiPos
 GOTO TOP
 STORE f9210tip TO vtPr
 STORE f9210nti TO vnTp
 SET READBORDER ON
 DO p00_3602a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3602a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3602a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3602a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3602a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO tiP_3602a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                IF mkEy=k_Enter
                     LOOP
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                IF ctPr<>vtPr
                     SELECT teMporal
                     SET FILTER TO
                     ZAP
                     REINDEX
                     SET ORDER TO FTM1PRV
                     SELECT peNd_cpras
                     GOTO TOP
                     SEEK veSt+vtPr
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     STORE SPACE(04) TO ipRv
                     STORE k_Tab TO mkEy
                     STORE 00 TO tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1, tcN2
                     STORE 00 TO vdV1, vdV2, vdN1, vdN2, vcV1, vcV2, vcN1, vcN2
                     DO WHILE  .NOT. EOF() .AND. f3600est+f3600tpr=veSt+vtPr
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          STORE f3600tdo TO vtDo
                          STORE f3600ser TO vsEr
                          STORE f3600doc TO vdOc
                          STORE f3600td1 TO vtD1
                          STORE f3600prv TO vpRv
                          STORE f3600nom TO vnOm
                          STORE f3600fem TO vfEm
                          STORE f3600fve TO vfVe
                          STORE f3600mon TO vmOn
                          STORE f3600tot TO vtOt
                          STORE f3600acu TO vaCu
                          STORE SUBSTR(DTOC(vfVe), 7, 4) TO vaNv
                          STORE SUBSTR(DTOC(vfVe), 4, 2) TO vmEv
                          STORE SUBSTR(DTOC(vfVe), 1, 2) TO vdIv
                          WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+ ;
                               vtDo+":"+vsEr+"-"+vdOc+"..."+CHR(13)+ ;
                               CHR(13)+"Presionar ESC para Salir..."
                          SELECT teMporal
                          SEEK vpRv
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM1prv WITH vpRv
                               REPLACE ftM1nom WITH vnOm
                               REPLACE ftM1dv1 WITH 0
                               REPLACE ftM1dv2 WITH 0
                               REPLACE ftM1dn1 WITH 0
                               REPLACE ftM1dn2 WITH 0
                               REPLACE ftM1cv1 WITH 0
                               REPLACE ftM1cv2 WITH 0
                               REPLACE ftM1cn1 WITH 0
                               REPLACE ftM1cn2 WITH 0
                          ENDIF
                          DO CASE
                               CASE vfVe<=DATE() .AND. vtD1="NC" .AND. vmOn=1
                                    REPLACE ftM1dv1 WITH ftM1dv1-vtOt
                                    REPLACE ftM1cv1 WITH ftM1cv1-vaCu
                               CASE vfVe<=DATE() .AND. vtD1="NC" .AND. vmOn=2
                                    REPLACE ftM1dv2 WITH ftM1dv2-vtOt
                                    REPLACE ftM1cv2 WITH ftM1cv2-vaCu
                               CASE vfVe<=DATE() .AND. vmOn=1
                                    REPLACE ftM1dv1 WITH ftM1dv1+vtOt
                                    REPLACE ftM1cv1 WITH ftM1cv1+vaCu
                               CASE vfVe<=DATE() .AND. vmOn=2
                                    REPLACE ftM1dv2 WITH ftM1dv2+vtOt
                                    REPLACE ftM1cv2 WITH ftM1cv2+vaCu
                               CASE vtD1="NC" .AND. vmOn=1
                                    REPLACE ftM1dn1 WITH ftM1dn1-vtOt
                                    REPLACE ftM1cn1 WITH ftM1cn1-vaCu
                               CASE vtD1="NC" .AND. vmOn=2
                                    REPLACE ftM1dn2 WITH ftM1dn2-vtOt
                                    REPLACE ftM1cn2 WITH ftM1cn2-vaCu
                               CASE vmOn=1
                                    REPLACE ftM1dn1 WITH ftM1dn1+vtOt
                                    REPLACE ftM1cn1 WITH ftM1cn1+vaCu
                               CASE vmOn=2
                                    REPLACE ftM1dn2 WITH ftM1dn2+vtOt
                                    REPLACE ftM1cn2 WITH ftM1cn2+vaCu
                          ENDCASE
                          SELECT peNd_cpras
                          SKIP
                     ENDDO
                     WAIT CLEAR
                     SET ESCAPE OFF
                     ON ESCAPE
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT teMporal
                     SUM ftM1dv1 TO tdV1 ALL
                     SUM ftM1dv2 TO tdV2 ALL
                     SUM ftM1dn1 TO tdN1 ALL
                     SUM ftM1dn2 TO tdN2 ALL
                     SUM ftM1cv1 TO tcV1 ALL
                     SUM ftM1cv2 TO tcV2 ALL
                     SUM ftM1cn1 TO tcN1 ALL
                     SUM ftM1cn2 TO tcN2 ALL
                ENDIF
                IF mkEy=k_Tab
                     SELECT teMporal
                     SET FILTER TO
                     SET ORDER TO FTM1NOM
                     IF vsW1=2
                          STORE 1 TO vsW1, csW1
                          STORE SPACE(70) TO vpAl
                          STORE SPACE(04) TO ipRv
                     ENDIF
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay datos registrados..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     ELSE
                          STORE vtPr TO ctPr
                          DO toT_3602a
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
                          DO pcC3602b
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
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_3602a
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, mcO0+006.4 TO pfIn, mcO0+006.4
 @ piNi, mcO0+073.0 TO pfIn, mcO0+073.0
 @ piNi, mcO0+094.0 TO pfIn, mcO0+094.0
 @ piNi, mcO0+115.0 TO pfIn, mcO0+115.0
 @ piNi, mcO0+136.0 TO pfIn, mcO0+136.0
 @ piNi, mcO0+157.0 TO pfIn, mcO0+157.0
 @ piNi, mcO0+178.0 TO pfIn, mcO0+178.0
ENDPROC
*
PROCEDURE Tit_3602a
 SET COLOR TO RGB(0,0,0,164,172,170)
 DO CASE
      CASE vsW0=1
           @iFIL-2.4,mCO0+073.6 Say " Saldos Vencidos"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,mCO0+094.6 Say "  Sld.no vencidos"  Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,mCO0+115.6 Say "      Total Saldos" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,mCO0+136.6 Say " Saldos Vencidos"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,mCO0+157.6 Say "  Sld.no vencidos"  Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,mCO0+178.6 Say "      Total Saldos" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+073.6 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+094.6 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+115.6 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+136.6 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+157.6 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,mCO0+178.6 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
 ENDCASE
ENDPROC
*
PROCEDURE Tot_3602a
 PRIVATE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2
 PRIVATE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 DO CASE
      CASE vsW1=1
           STORE tdV1 TO pdV1
           STORE tdV2 TO pdV2
           STORE tdN1 TO pdN1
           STORE tdN2 TO pdN2
           STORE tcV1 TO pcV1
           STORE tcV2 TO pcV2
           STORE tcN1 TO pcN1
           STORE tcN2 TO pcN2
      CASE vsW1=2
           STORE vdV1 TO pdV1
           STORE vdV2 TO pdV2
           STORE vdN1 TO pdN1
           STORE vdN2 TO pdN2
           STORE vcV1 TO pcV1
           STORE vcV2 TO pcV2
           STORE vcN1 TO pcN1
           STORE vcN2 TO pcN2
 ENDCASE
 STORE pdV1-pcV1 TO pvE1
 STORE pdV2-pcV2 TO pvE2
 STORE pdN1+pcN1 TO pnV1
 STORE pdN2+pcN2 TO pnV2
 STORE pvE1+pnV1 TO ptO1
 STORE pvE2+pnV2 TO ptO2
 SET COLOR TO RGB(0,0,0,164,172,170)
 IF vsW0=1
      @fFIL+1.5,mCO0+073.6 Say pVE1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @fFIL+1.5,mCO0+094.6 Say pNV1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @fFIL+1.5,mCO0+115.6 Say pTO1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @fFIL+1.5,mCO0+136.6 Say pVE2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @fFIL+1.5,mCO0+157.6 Say pNV2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @fFIL+1.5,mCO0+178.6 Say pTO2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
 ENDIF
 RELEASE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2
 RELEASE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE P00_3602a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 038.4 TO muFi
 STORE 198.8 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+02.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+03.3 TO ifFr, ufFr, vfFr
 STORE ifFr+(INT(muFi)-5) TO ffFr
 STORE mfI0+05.3 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE ifIl-5.10 TO vfBi
 STORE mcO0+62.2 TO vcBi
 STORE mcO0 TO icLn, icL1, icL2
 STORE mcO0+126 TO ucLn
 STORE ucLn+072.8 TO ucLn
 STORE mcO0+198.1 TO ucL1
 STORE mcO0+197.9 TO ucL2
 STORE mcO0+46.1 TO vcB1
 STORE mcO0+94.8 TO vcB2
 Define Popup vTB1 from mFI0-1.3,mCO0-0.6 to fFIL+6.9,mCO0+53.7 Font "&mLetCou",9 Style "NQ" Prompt Field FTM3NTI Scroll Color Scheme 3 Footer "CONSULTA DE TIPOS DE PROVEEDORS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Cuentas x Pagar x Tipo de Proveedor"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCIO1", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-5,mCO0+0.8 Say "Tipo de Proveedor:" Font "&mLetRom",13 Style "BT"
 DO p01_3602a
 DO coLsc1
 @iFIL-1.3,mCO0 Say "Proveedor" Font "&mLetAri",9 Style "BT"
 DO tiT_3602a
 DO toT_3602a
 DO coLsc1
 @iFIL-5,mCO0+32 Edit vNTP Font "&mLetRom",11 Style "NQ" Size 1,25,30
 READ TIMEOUT 0.01
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,40 Pict "@S42"
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE P01_3602a
 DO liN_3602a IN PCC3602A WITH ifIl-0.2, ffIl+1.2
 SET COLOR TO RGB(0,0,0,164,172,170)
 @ ifIl-2.5, mcO0 CLEAR TO ifIl-0.2, mcO0+muCo
 DO coLbln
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 @ ifIl-2.5, mcO0+073.0 TO ifIl-0.2, mcO0+073.0
 @ ifIl-2.5, mcO0+094.0 TO ifIl-0.2, mcO0+094.0
 @ ifIl-2.5, mcO0+115.0 TO ifIl-0.2, mcO0+115.0
 @ ifIl-2.5, mcO0+136.0 TO ifIl-0.2, mcO0+136.0
 @ ifIl-2.5, mcO0+157.0 TO ifIl-0.2, mcO0+157.0
 @ ifIl-2.5, mcO0+178.0 TO ifIl-0.2, mcO0+178.0
 SET COLOR TO RGB(0,0,0,164,172,170)
 @ ffIl+1.2, mcO0+073.0 CLEAR TO ffIl+2.7, mcO0+muCo
 @ ffIl+1.2, mcO0+073.0 TO ffIl+2.7, mcO0+muCo
 @ ffIl+1.2, mcO0+073.0 TO ffIl+2.7, mcO0+073.0
 @ ffIl+1.2, mcO0+094.0 TO ffIl+2.7, mcO0+094.0
 @ ffIl+1.2, mcO0+115.0 TO ffIl+2.7, mcO0+115.0
 @ ffIl+1.2, mcO0+136.0 TO ffIl+2.7, mcO0+136.0
 @ ffIl+1.2, mcO0+157.0 TO ffIl+2.7, mcO0+157.0
 @ ffIl+1.2, mcO0+178.0 TO ffIl+2.7, mcO0+178.0
ENDPROC
*
PROCEDURE Res_3602a
 DO p00_3602a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(ipRv))<>0
      SELECT teMporal
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3602b IN PCC3602B WITH "v", "c"
      DO seE_3602b IN PCC3602B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1prv=vpRv
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3602b IN PCC3602B WITH "v", "i"
           DO muE_3602b IN PCC3602B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3602b IN PCC3602B WITH "i"
      DO paN_3602b IN PCC3602B
      STORE cfIl TO vfIl
      DO muE_3602b IN PCC3602B WITH "c", "v"
      DO seE_3602b IN PCC3602B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Tip_3602a
 = INKEY(0.01)
 SELECT tmP_tipos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTp)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLsc1
      STORE ftM3tip TO vtPr
      STORE ftM3nti TO vnTp
      @iFIL-5,mCO0+32 Say vNTP Font "&mLetRom",11 Style "NQ" Size 1,25 Pict "@S28"
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tm3_3602a
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tm4_3602a
 DIMENSION afIl[8, 4]
 STORE 1 TO x
 afIl[x, 1] = "COD_PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOMBRE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "VENCIDO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "N_VENCI1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_SOLE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "VENCIDO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "NO_VENC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_DOLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Clp_3602a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE k_F2 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
           DO tiP_3602a
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
PROCEDURE Hl1_3602a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra los Proveedores pendientes x Pagar, ordena-"
 @ pfIl+01, 02 SAY "dos x nombres, filtrado x Tipo."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "F2" STYLE "BT"
 @ pfIl+09, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+10, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Ver Tipos de Proveedores"
 @ pfIl+09, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+10, 20 SAY "trado va al final del Archivo"
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
 RELEASE vlIn, vpAg, vpAl, cpAl, vxLs, vsW0, csW0, vsW1, csW1, vsW2, vfIl,  ;
         ifIl, ufIl
 RELEASE ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vfFr, ifFr, ufFr, ffFr,  ;
         cfFr, vtB1
 RELEASE vfBi, vcBi, vcB1, vcB2, vcLn, icLn, icL1, icL2, ucLn, ucL1, ucL2,  ;
         veSt, vtPr
 RELEASE ctPr, vnTp, vpRv, ipRv, upRv, cpRv, dpRv, hpRv, vaNv, vmEv, vdIv,  ;
         vtDo, ctDo
 RELEASE xtDo, itDo, utDo, vsEr, csEr, xsEr, isEr, usEr, vdOc, cdOc, xdOc,  ;
         idOc, udOc
 RELEASE vnOm, cnOm, inOm, unOm, vaNo, iaNo, uaNo, caNo, xaNo, vmEs, imEs,  ;
         umEs, cmEs
 RELEASE xmEs, vdIa, idIa, udIa, cdIa, xdIa, iaN1, vaN1, caN1, uaN1, imE1,  ;
         vmE1, cmE1
 RELEASE umE1, idI1, vdI1, cdI1, udI1, itTt, vtTt, ctTt, utTt, isR1, vsR1,  ;
         csR1, usR1
 RELEASE inU1, vnU1, cnU1, unU1, vfEm, vfVe, vmOn, vtOt, vaCu, vfCa, vpA1,  ;
         vpA2, vrEn
 RELEASE tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1, tcN2, vdV1, vdV2, vdN1,  ;
         vdN2, vcV1
 RELEASE vcV2, vcN1, vcN2, voPc, vsIg, vfA1, vfA2, vbO1, vbO2, vnP1, vnP2,  ;
         vnC1, vnC2
 RELEASE vnD1, vnD2, vlE1, vlE2, vpU1, vpU2, xtO1, xtO2, xaC1, xaC2, vtD1
 RELEASE vpAn_99, vpAn_11, vpAn_12, vpAn_13
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
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "N"
 DO deL_file2 WITH "5", "N"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5
ENDPROC
*
