 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 DO tm1_3502a IN PCC3502A
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
 INDEX ON ftM1tit TAG ftM1tit
 INDEX ON UPPER(ftM1ntt)+ftM1tit TAG ftM1ntt
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
 DO tm3_3502a IN PCC3502A
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
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500TCL
 IF mkEy=k_Esc
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
 Use &mDBF Shared NoUpdate Alias Ctas_Total_Vtas
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
 SELECT 10
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
 SELECT 11
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
 SELECT 12
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
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
 SELECT 14
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
 STORE 00 TO meRr
 PUBLIC vlIn, vpAg, vpAl, cpAl, vxLs, vsW0, csW0, vsW1, csW1, vsW2, vsW3,  ;
        vsW4, vsW5
 PUBLIC vsW6, vsW7, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs,  ;
        cfFs, vfFr
 PUBLIC ifFr, ufFr, ffFr, cfFr, vtB1, vfBi, vcBi, vcB1, vcB2, vcLn, vcL1,  ;
        vcL2, icL1
 PUBLIC ucL1, vcL2, icL3, icL4, vcL6, vcLa, vcLb, vcLc, vcLd, vcLe, vcLf,  ;
        veSt, vtCl
 PUBLIC ctCl, vnTc, vtIt, itIt, utIt, ctIt, dtIt, htIt, vaNv, vmEv, vdIv,  ;
        vtDo, ctDo
 PUBLIC xtDo, itDo, utDo, dtDo, htDo, vsEr, csEr, xsEr, isEr, usEr, dsEr,  ;
        hsEr, vdOc
 PUBLIC cdOc, xdOc, idOc, udOc, ddOc, hdOc, vnTt, cnTt, inTt, unTt, vaNo,  ;
        iaNo, uaNo
 PUBLIC caNo, xaNo, vmEs, imEs, umEs, cmEs, xmEs, vdIa, idIa, udIa, cdIa,  ;
        xdIa, iaN1
 PUBLIC vaN1, caN1, uaN1, imE1, vmE1, cmE1, umE1, idI1, vdI1, cdI1, udI1,  ;
        itTt, vtTt
 PUBLIC ctTt, utTt, isR1, vsR1, csR1, usR1, inUm, vnUm, cnUm, unUm, vcLi,  ;
        vnOm, vfEm
 PUBLIC dfEm, hfEm, vfVe, vmOn, vtOt, viNt, vaCu, vfCa, vpA1, vpA2, vrEn,  ;
        tdV1, tdV2
 PUBLIC tdN1, tdN2, tcV1, tcV2, tcN1, tcN2, tiV1, tiV2, tiN1, tiN2, vdV1,  ;
        vdV2, vdN1
 PUBLIC vdN2, vcV1, vcV2, vcN1, vcN2, viV1, viV2, viN1, viN2, voPn, vsIg,  ;
        vfA1, vfA2
 PUBLIC vbO1, vbO2, vnP1, vnP2, vnC1, vnC2, vnD1, vnD2, vlE1, vlE2, xtO1,  ;
        xtO2, xiN1
 PUBLIC xiN2, xaC1, xaC2, vvEn, ivEn, uvEn, cvEn, dvEn, hvEn, vnVe, inVe,  ;
        unVe, cnVe
 PUBLIC vuLt, xlTr, xcHe, xcJn, xlEt, voPc, voP1, voP2
 PUBLIC vpAn_99, vpAn_11, vpAn_12, vpAn_13
 STORE SPACE(01) TO veSt
 STORE SPACE(04) TO itIt
 STORE SPACE(70) TO vpAl, cpAl
 STORE SPACE(02) TO ctCl, vvEn, ivEn, uvEn, cvEn, vnVe, inVe, unVe, cnVe
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW7
 STORE 00 TO tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1, tcN2, tiV1, tiV2,  ;
       tiN1, tiN2
 STORE 00 TO vdV1, vdV2, vdN1, vdN2, vcV1, vcV2, vcN1, vcN2, viV1, viV2,  ;
       viN1, viN2
 DO tpO_3502a IN PCC3502A
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT tiPos
 GOTO TOP
 STORE f9110tip TO vtCl
 STORE f9110nti TO vnTc
 SET READBORDER ON
 DO p00_3502a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3502a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3502a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3502a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3502a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO tiP_3502a
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
                STORE SPACE(01) TO veSt
                IF ctCl<>vtCl
                     SELECT teMporal
                     SET FILTER TO
                     ZAP
                     REINDEX
                     SET ORDER TO FTM1TIT
                     SELECT peNd_vtas
                     GOTO TOP
                     SEEK veSt+vtCl
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     STORE SPACE(04) TO itIt
                     STORE k_Tab TO mkEy
                     STORE 00 TO tdV1, tdV2, tdN1, tdN2, tcV1, tcV2, tcN1,  ;
                           tcN2, tiV1, tiV2, tiN1, tiN2
                     STORE 00 TO vdV1, vdV2, vdN1, vdN2, vcV1, vcV2, vcN1,  ;
                           vcN2, viV1, viV2, viN1, viN2
                     DO WHILE  .NOT. EOF() .AND. f3500est+f3500tcl=veSt+vtCl
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          STORE f3500tdo TO vtDo
                          STORE f3500ser TO vsEr
                          STORE f3500doc TO vdOc
                          STORE f3500tit TO vtIt
                          STORE f3500nti TO vnTt
                          STORE f3500cli TO vcLi
                          STORE f3500nom TO vnOm
                          STORE f3500fem TO vfEm
                          STORE f3500fve TO vfVe
                          STORE f3500mon TO vmOn
                          STORE f3500tot TO vtOt
                          STORE f3500int TO viNt
                          STORE f3500acu TO vaCu
                          STORE SUBSTR(DTOC(vfVe), 7, 4) TO vaNv
                          STORE SUBSTR(DTOC(vfVe), 4, 2) TO vmEv
                          STORE SUBSTR(DTOC(vfVe), 1, 2) TO vdIv
                          WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+ ;
                               vtDo+":"+vsEr+"-"+vdOc+"..."+CHR(13)+ ;
                               CHR(13)+"Presionar ESC para Salir..."
                          IF LEN(ALLTRIM(vtIt))=0 .AND. LEN(ALLTRIM(vcLi))<>0
                               STORE vcLi TO vtIt
                          ENDIF
                          SELECT clIentes
                          SEEK vtIt
                          IF  .NOT. EOF()
                               STORE f1101nom TO vnTt
                          ELSE
                               STORE "Sin Titular registrado" TO vnTt
                          ENDIF
                          SELECT teMporal
                          SEEK vtIt
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM1tit WITH vtIt
                               REPLACE ftM1ntt WITH vnTt
                               REPLACE ftM1dv1 WITH 0
                               REPLACE ftM1dv2 WITH 0
                               REPLACE ftM1dn1 WITH 0
                               REPLACE ftM1dn2 WITH 0
                               REPLACE ftM1cv1 WITH 0
                               REPLACE ftM1cv2 WITH 0
                               REPLACE ftM1cn1 WITH 0
                               REPLACE ftM1cn2 WITH 0
                               REPLACE ftM1iv1 WITH 0
                               REPLACE ftM1iv2 WITH 0
                               REPLACE ftM1in1 WITH 0
                               REPLACE ftM1in2 WITH 0
                          ENDIF
                          DO CASE
                               CASE vfVe<=DATE() .AND. (vtDo="NC" .OR.  ;
                                    vtDo="N1" .OR. vtDo="N3") .AND. vmOn=1
                                    REPLACE ftM1dv1 WITH ftM1dv1-vtOt
                                    REPLACE ftM1cv1 WITH ftM1cv1-vaCu
                                    REPLACE ftM1iv1 WITH ftM1iv1-viNt
                               CASE vfVe<=DATE() .AND. (vtDo="NC" .OR.  ;
                                    vtDo="N1" .OR. vtDo="N3") .AND. vmOn=2
                                    REPLACE ftM1dv2 WITH ftM1dv2-vtOt
                                    REPLACE ftM1cv2 WITH ftM1cv2-vaCu
                                    REPLACE ftM1iv2 WITH ftM1iv2-viNt
                               CASE vfVe<=DATE() .AND. vmOn=1
                                    REPLACE ftM1dv1 WITH ftM1dv1+vtOt
                                    REPLACE ftM1cv1 WITH ftM1cv1+vaCu
                                    REPLACE ftM1iv1 WITH ftM1iv1+viNt
                               CASE vfVe<=DATE() .AND. vmOn=2
                                    REPLACE ftM1dv2 WITH ftM1dv2+vtOt
                                    REPLACE ftM1cv2 WITH ftM1cv2+vaCu
                                    REPLACE ftM1iv2 WITH ftM1iv2+viNt
                               CASE (vtDo="NC" .OR. vtDo="N1" .OR. vtDo= ;
                                    "N3") .AND. vmOn=1
                                    REPLACE ftM1dn1 WITH ftM1dn1-vtOt
                                    REPLACE ftM1cn1 WITH ftM1cn1-vaCu
                                    REPLACE ftM1in1 WITH ftM1in1-viNt
                               CASE (vtDo="NC" .OR. vtDo="N1" .OR. vtDo= ;
                                    "N3") .AND. vmOn=2
                                    REPLACE ftM1dn2 WITH ftM1dn2-vtOt
                                    REPLACE ftM1cn2 WITH ftM1cn2-vaCu
                                    REPLACE ftM1in2 WITH ftM1in2-viNt
                               CASE vmOn=1
                                    REPLACE ftM1dn1 WITH ftM1dn1+vtOt
                                    REPLACE ftM1cn1 WITH ftM1cn1+vaCu
                                    REPLACE ftM1in1 WITH ftM1in1+viNt
                               CASE vmOn=2
                                    REPLACE ftM1dn2 WITH ftM1dn2+vtOt
                                    REPLACE ftM1cn2 WITH ftM1cn2+vaCu
                                    REPLACE ftM1in2 WITH ftM1in2+viNt
                          ENDCASE
                          SELECT peNd_vtas
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
                     SUM ftM1iv1 TO tiV1 ALL
                     SUM ftM1iv2 TO tiV2 ALL
                     SUM ftM1in1 TO tiN1 ALL
                     SUM ftM1in2 TO tiN2 ALL
                ENDIF
                IF mkEy=k_Tab
                     SELECT teMporal
                     SET FILTER TO
                     SET ORDER TO FTM1NTT
                     IF vsW1=2
                          STORE 1 TO vsW1, csW1
                          STORE SPACE(70) TO vpAl
                          STORE SPACE(04) TO itIt
                     ENDIF
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay datos registrados..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     ELSE
                          STORE vtCl TO ctCl
                          DO toT_3502a
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
                          DO pcC3502b
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
PROCEDURE Tit_3502a
 SET COLOR TO RGB(0,0,0,164,172,170)
 DO CASE
      CASE vsW0=1
           @iFIL-2.4,vCL1+000.0 Say " Saldos Vencidos"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+020.6 Say "  Sld.no vencidos"  Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+041.2 Say "      Total Saldos" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+061.8 Say " Saldos Vencidos"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+082.4 Say "  Sld.no vencidos"  Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+103.0 Say "      Total Saldos" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+000.0 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+020.6 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+041.2 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+061.8 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+082.4 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+103.0 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
      CASE vsW0=2 .AND. miNt<>0
           @iFIL-2.4,vCL1+000.0 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+020.6 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+041.2 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+061.8 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+082.4 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+103.0 Say "Saldos sin Interes" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+000.0 Say "  Vencidos en S/. " Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+020.6 Say "no Vencidos en S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+041.2 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+061.8 Say "   Vencidos US$   " Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+082.4 Say " no Vencidos US$  " Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+103.0 Say "             US$  " Font "&mLetAri",9 Style "NQ" Size 1,19.9
      CASE vsW0=3 .AND. miNt<>0
           @iFIL-2.4,vCL1+000.0 Say " Intereses Vencid." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+020.6 Say "Intereses no Venc." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+041.2 Say "   Total Intereses" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+061.8 Say " Intereses Vencid." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+082.4 Say "Intereses no Venc." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-2.4,vCL1+103.0 Say "   Total Intereses" Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+000.0 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+020.6 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+041.2 Say "               S/." Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+061.8 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+082.4 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
           @iFIL-1.3,vCL1+103.0 Say "             US$"   Font "&mLetAri",9 Style "NQ" Size 1,19.9
 ENDCASE
 IF vuLt>1
      DO coLblr
      DO prEsiona WITH "1", "BOTON", ifIl-4.7, mcO0+muCo-10
      @iFIL-4.5,mCO0+mUCO-07.9 Say Str(vSW0,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE VaT_3502a
 PUBLIC pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1, piV2, piN1, piN2
 PUBLIC pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
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
           STORE tiV1 TO piV1
           STORE tiV2 TO piV2
           STORE tiN1 TO piN1
           STORE tiN2 TO piN2
      CASE vsW1=2
           STORE vdV1 TO pdV1
           STORE vdV2 TO pdV2
           STORE vdN1 TO pdN1
           STORE vdN2 TO pdN2
           STORE vcV1 TO pcV1
           STORE vcV2 TO pcV2
           STORE vcN1 TO pcN1
           STORE vcN2 TO pcN2
           STORE viV1 TO piV1
           STORE viV2 TO piV2
           STORE viN1 TO piN1
           STORE viN2 TO piN2
 ENDCASE
 STORE pdV1+piV1-pcV1 TO pvE1
 STORE pdV2+piV2-pcV2 TO pvE2
 STORE pdN1+piN1-pcN1 TO pnV1
 STORE pdN2+piN2-pcN2 TO pnV2
 STORE pvE1+pnV1 TO ptO1
 STORE pvE2+pnV2 TO ptO2
ENDPROC
*
PROCEDURE BrT_3502a
 RELEASE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1, piV2, piN1, piN2
 RELEASE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE Tot_3502a
 DO vaT_3502a IN PCC3502A
 SET COLOR TO RGB(0,0,0,164,172,170)
 DO CASE
      CASE vsW0=1
           @fFIL+1.5,vCL1+000.0 Say pVE1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+020.6 Say pNV1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+041.2 Say pTO1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+061.8 Say pVE2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+082.4 Say pNV2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+103.0 Say pTO2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      CASE vsW0=2 .AND. miNt>0
           @fFIL+1.5,vCL1+000.0 Say pVE1-pIV1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+020.6 Say pNV1-pIN1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+041.2 Say pTO1-(pIV1+pIN1) Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+061.8 Say pVE2-pIV2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+082.4 Say pNV2-pIN2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+103.0 Say pTO2-(pIV2+pIN2) Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      CASE vsW0=3 .AND. miNt>0
           @fFIL+1.5,vCL1+000.0 Say pIV1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+020.6 Say pIN1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+041.2 Say pIV1+pIN1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+061.8 Say pIV2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+082.4 Say pIN2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @fFIL+1.5,vCL1+103.0 Say pIV2+pIN2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
 ENDCASE
 DO brT_3502a IN PCC3502A
ENDPROC
*
PROCEDURE P00_3502a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-2) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+02.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ifIl-5.10 TO vfBi
 STORE mcO0+49.2 TO vcBi
 STORE mcO0 TO icL1
 STORE mcO0+muCo-123 TO vcL1
 STORE icL1-0.2 TO icL1
 STORE icL1+muCo TO ucL1
 DO CASE
      CASE mrEs="3"
           STORE vcL1-0.2 TO vcL1
      OTHERWISE
           STORE vcL1-0.1 TO vcL1
 ENDCASE
 DO p02_3502a IN PCC3502A WITH "3502"
 Define Popup vTB1 from mFI0-1.3,mCO0-0.6 to fFIL+6.9,mCO0+53.7 Font "&mLetCou",9 Style "NQ" Prompt Field FTM3NTI Scroll Color Scheme 3 Footer "CONSULTA DE TIPOS DE CLIENTES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Cuentas por Cobrar x Tipos de Clientes"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-5,mCO0+0.8 Say "Tipo de Cliente:" Font "&mLetRom",13 Style "BT"
 DO p01_3502a IN PCC3502A WITH "3502"
 DO coLsc1
 @iFIL-1.3,mCO0 Say "Cliente Titular" Font "&mLetAri",9 Style "BT"
 DO tiT_3502a
 DO toT_3502a
 DO coLsc1
 @iFIL-5,mCO0+25 Edit vNTC Font "&mLetRom",11 Style "NQ" Size 1,19.8,20
 READ TIMEOUT 0.01
 DO coLsc7
 @mFI0+mUFI,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,60 Pict "@S65"
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
PROCEDURE P01_3502a
 PARAMETER ppRg
 DO liN_3502a IN PCC3502A WITH ifIl-0.2, ffIl+1.2, ppRg
 SET COLOR TO RGB(0,0,0,164,172,170)
 @ ifIl-2.5, mcO0 CLEAR TO ifIl-0.2, mcO0+muCo
 DO coLbln
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 @ ifIl-2.5, vcL1-000.4 TO ifIl-0.2, vcL1-000.4
 @ ifIl-2.5, vcL1+020.1 TO ifIl-0.2, vcL1+020.1
 @ ifIl-2.5, vcL1+040.7 TO ifIl-0.2, vcL1+040.7
 @ ifIl-2.5, vcL1+061.3 TO ifIl-0.2, vcL1+061.3
 @ ifIl-2.5, vcL1+081.9 TO ifIl-0.2, vcL1+081.9
 @ ifIl-2.5, vcL1+102.5 TO ifIl-0.2, vcL1+102.5
 SET COLOR TO RGB(0,0,0,164,172,170)
 @ ffIl+1.2, vcL1-000.4 CLEAR TO ffIl+2.7, mcO0+muCo+0.3
 @ ffIl+1.2, vcL1-000.4 TO ffIl+2.7, mcO0+muCo+0.3
 @ ffIl+1.2, vcL1-000.4 TO ffIl+2.7, vcL1-000.4
 @ ffIl+1.2, vcL1+020.1 TO ffIl+2.7, vcL1+020.1
 @ ffIl+1.2, vcL1+040.7 TO ffIl+2.7, vcL1+040.7
 @ ffIl+1.2, vcL1+061.3 TO ffIl+2.7, vcL1+061.3
 @ ffIl+1.2, vcL1+081.9 TO ffIl+2.7, vcL1+081.9
 @ ffIl+1.2, vcL1+102.5 TO ffIl+2.7, vcL1+102.5
 IF ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
      DO CASE
           CASE mrEs="3"
                @ ifIl-2.5, mcO0+48.7 TO ifIl-0.2, mcO0+48.7
           OTHERWISE
                @ ifIl-2.5, mcO0+64.7 TO ifIl-0.2, mcO0+64.7
      ENDCASE
      DO coLsc7
      DO CASE
           CASE vsW7=1
                @iFIL-1.3,mCO0 Say "Cliente Titular" Font "&mLetAri",9 Style "BQ" Size 1,20
           CASE vsW7=2
                @iFIL-1.3,mCO0 Say "Vendedor"        Font "&mLetAri",9 Style "BQ" Size 1,20
      ENDCASE
      DO CASE
           CASE mrEs="3" .AND. vsW7=1
                @iFIL-1.3,mCO0+49.1 Say "Vendedor"        Font "&mLetAri",9 Style "BQ" Size 1,20
           CASE mrEs="3" .AND. vsW7=2
                @iFIL-1.3,mCO0+49.1 Say "Cliente Titular" Font "&mLetAri",9 Style "BQ" Size 1,20
           CASE vsW7=1
                @iFIL-1.3,mCO0+65.1 Say "Vendedor"        Font "&mLetAri",9 Style "BQ" Size 1,20
           CASE vsW7=2
                @iFIL-1.3,mCO0+65.1 Say "Cliente Titular" Font "&mLetAri",9 Style "BQ" Size 1,20
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE P02_3502a
 PARAMETER ppRg
 DO CASE
      CASE miNt>0
           STORE 3 TO vuLt
      OTHERWISE
           STORE 1 TO vuLt
 ENDCASE
 DO CASE
      CASE mrEs="3"
           STORE icL1+096.2 TO icL3
           STORE icL3+049.9 TO icL4
           STORE mcO0+146.5 TO vcL6
           STORE mcO0+085.0 TO vcLa
           STORE mcO0+111.0 TO vcLb
           STORE mcO0+140.0 TO vcLc
      CASE mrEs="4"
           STORE icL1+122.2 TO icL3
           STORE icL3+075.9 TO icL4
           STORE mcO0+198.6 TO vcL6
           STORE mcO0+105.0 TO vcLa
           STORE mcO0+151.0 TO vcLb
           STORE mcO0+192.0 TO vcLc
      OTHERWISE
           STORE icL1+130.5 TO icL3
           STORE icL3+084.3 TO icL4
           STORE mcO0+215.6 TO vcL6
           STORE mcO0+115.0 TO vcLa
           STORE mcO0+161.0 TO vcLb
           STORE mcO0+202.0 TO vcLc
 ENDCASE
 STORE mcO0+muCo-16.4 TO vcLf
 STORE vcLf-05.6 TO vcLe
 STORE vcLe-09.2 TO vcLd
 DO CASE
      CASE ppRg="3502"
           STORE mfI0+03.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3503"
           STORE mfI0+04.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3504"
           STORE mfI0+04.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3505"
           STORE mfI0+06.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3506"
           STORE mfI0+04.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3507"
           STORE mfI0+03.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3508"
           STORE mfI0+03.3 TO ifFr, ufFr, vfFr
      CASE ppRg="3509"
           STORE mfI0+05.3 TO ifFr, ufFr, vfFr
 ENDCASE
 STORE INT(mfI0+muFi)-1 TO ffFr
 STORE ifFr+INT(ffFr-ifFr) TO ffFr
 STORE mfI0+03.3 TO ifFs, ufFs, vfFs
 IF miNt<>0
      STORE ffFr-1 TO ffFr
      STORE ifFs+3 TO ifFs
 ENDIF
 STORE INT(mfI0+muFi)-3 TO ffFs
 STORE ifFs+INT(ffFs-ifFs) TO ffFs
 STORE icL1+46.1 TO vcB1
 STORE icL3+00.0 TO vcB2
 STORE INT((ucL1-125.2)/2) TO vcL2
ENDPROC
*
PROCEDURE Lin_3502a
 PARAMETER piNi, pfIn, ppRg
 DO coLbln
 @ piNi, mcO0+006.4 TO pfIn, mcO0+006.4
 @ piNi, vcL1-000.4 TO pfIn, vcL1-000.4
 @ piNi, vcL1+020.1 TO pfIn, vcL1+020.1
 @ piNi, vcL1+040.7 TO pfIn, vcL1+040.7
 @ piNi, vcL1+061.3 TO pfIn, vcL1+061.3
 @ piNi, vcL1+081.9 TO pfIn, vcL1+081.9
 @ piNi, vcL1+102.5 TO pfIn, vcL1+102.5
 DO CASE
      CASE mrEs="3" .AND. (ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509")
           @ piNi, mcO0+48.7 TO pfIn, mcO0+48.7
           @ piNi, mcO0+55.6 TO pfIn, mcO0+55.6
      CASE ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
           @ piNi, mcO0+64.7 TO pfIn, mcO0+64.7
           @ piNi, mcO0+71.6 TO pfIn, mcO0+71.6
 ENDCASE
ENDPROC
*
PROCEDURE Res_3502a
 DO p00_3502a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(itIt))<>0
      SELECT teMporal
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "v", "c"
      DO seE_3502b IN PCC3502B WITH "i", "3502"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3502b IN PCC3502B WITH "v", "i"
           DO muE_3502b IN PCC3502B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3502b IN PCC3502B WITH "i", "3502"
      DO paN_3502b IN PCC3502B
      STORE cfIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "c", "v"
      DO seE_3502b IN PCC3502B WITH "v", "3502"
 ENDIF
ENDPROC
*
PROCEDURE Tip_3502a
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
 SEEK UPPER(vnTc)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLsc1
      STORE ftM3tip TO vtCl
      STORE ftM3nti TO vnTc
      @iFIL-5,mCO0+25 Say vNTC Font "&mLetRom",11 Style "NQ" Size 1,19.8 Pict "@S20"
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tm1_3502a
 DIMENSION afIl[16, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
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
 STORE x+1 TO x
 afIl[x, 1] = "FTM1IV1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1IV2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1IN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1IN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Tm3_3502a
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
PROCEDURE Tpo_3502a
 SELECT tiPos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9110tip TO vtCl
      STORE f9110nti TO vnTc
      SELECT tmP_tipos
      APPEND BLANK
      REPLACE ftM3tip WITH vtCl
      REPLACE ftM3nti WITH vnTc
      SELECT tiPos
      SKIP
 ENDDO
 SET ESCAPE ON
 ON ESCAPE STORE K_ESC TO MKEY
 SELECT peNd_vtas
 GOTO TOP
 SEEK veSt
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      IF mkEy=k_Esc
           EXIT
      ENDIF
      WAIT WINDOW NOWAIT "Leyendo Documento: "+f3500tcl+": "+f3500tit+ ;
           " - "+DTOC(f3500fem)+" - "+f3500tdo+":"+f3500ser+"-"+f3500doc
      STORE f3500tcl TO vtCl
      STORE f3500tit TO vcLi
      SELECT tiPos
      SEEK vtCl
      IF EOF()
           SELECT tmP_tipos
           APPEND BLANK
           REPLACE ftM3tip WITH vtCl
           REPLACE ftM3nti WITH vtCl+" No registrado..."
      ENDIF
      SELECT peNd_vtas
      SET NEAR ON
      SEEK veSt+vtCl+"ÑÑÑÑÑÑÑÑ"
      SET NEAR OFF
      IF  .NOT. EOF() .AND. f3500est=veSt .AND. f3500tcl=vtCl .AND.  ;
          f3500tit=vcLi
           SET NEAR ON
           SEEK veSt+vtCl+vcLi+"ÑÑÑÑÑÑÑÑ"
           SET NEAR OFF
      ENDIF
      IF EOF() .OR. f3500est<>veSt
           EXIT
      ENDIF
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
ENDPROC
*
PROCEDURE Clp_3502a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3502a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra los Clientes Titulares pendientes x Cobrar, ordena-"
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
 @ pfIl+08, 20 SAY "Ver Tipos de Clientes"
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
 RELEASE vlIn, vpAg, vpAl, cpAl, vxLs, vsW0, csW0, vsW1, csW1, vsW2, vsW3,  ;
         vsW4, vsW5
 RELEASE vsW6, vsW7, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs,  ;
         cfFs, vfFr
 RELEASE ifFr, ufFr, ffFr, cfFr, vtB1, vfBi, vcBi, vcB1, vcB2, vcLn, vcL1,  ;
         vcL2, icL1
 RELEASE ucL1, vcL2, icL3, icL4, vcL6, vcLa, vcLb, vcLc, vcLd, vcLe, vcLf,  ;
         veSt, vtCl
 RELEASE ctCl, vnTc, vtIt, itIt, utIt, ctIt, dtIt, htIt, vaNv, vmEv, vdIv,  ;
         vtDo, ctDo
 RELEASE xtDo, itDo, utDo, dtDo, htDo, vsEr, csEr, xsEr, isEr, usEr, dsEr,  ;
         hsEr, vdOc
 RELEASE cdOc, xdOc, idOc, udOc, ddOc, hdOc, vnTt, cnTt, inTt, unTt, vaNo,  ;
         iaNo, uaNo
 RELEASE caNo, xaNo, vmEs, imEs, umEs, cmEs, xmEs, vdIa, idIa, udIa, cdIa,  ;
         xdIa, iaN1
 RELEASE vaN1, caN1, uaN1, imE1, vmE1, cmE1, umE1, idI1, vdI1, cdI1, udI1,  ;
         itTt, vtTt
 RELEASE ctTt, utTt, isR1, vsR1, csR1, usR1, inUm, vnUm, cnUm, unUm, vcLi,  ;
         vnOm, vfEm
 RELEASE dfEm, hfEm, vfVe, vmOn, vtOt, viNt, vaCu, vfCa, vpA1, vpA2, vrEn,  ;
         tdV1, tdV2
 RELEASE tdN1, tdN2, tcV1, tcV2, tcN1, tcN2, tiV1, tiV2, tiN1, tiN2, vdV1,  ;
         vdV2, vdN1
 RELEASE vdN2, vcV1, vcV2, vcN1, vcN2, viV1, viV2, viN1, viN2, voPn, vsIg,  ;
         vfA1, vfA2
 RELEASE vbO1, vbO2, vnP1, vnP2, vnC1, vnC2, vnD1, vnD2, vlE1, vlE2, xtO1,  ;
         xtO2, xiN1
 RELEASE xiN2, xaC1, xaC2, vvEn, ivEn, uvEn, cvEn, dvEn, hvEn, vnVe, inVe,  ;
         unVe, cnVe
 RELEASE vuLt, xlTr, xcHe, xcJn, xlEt, voPc, voP1, voP2
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
 RELEASE ntM1, ntM2, ntM3
ENDPROC
*
