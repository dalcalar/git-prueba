 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_ban_salidas IN PUX0003A
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
 INDEX ON f3540ano+f3540mes+f3540ser+f3540num TAG f3540num
 INDEX ON UPPER(f3540nti)+f3540ano+f3540mes+f3540ser+f3540num TAG f3540nti
 INDEX ON UPPER(f3540glo)+f3540ano+f3540mes+f3540ser+f3540num TAG f3540glo
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2tdo+ftM2ser TAG ftM2tdo
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO ab1_3540a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedor
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9317", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9317NTI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT caB_sal_bancos
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW9, vpAl, cpAl, vfIl, ifIl, ufIl,  ;
        cfIl, ffIl
 PUBLIC vfFs, ifFs, ufFs, ffFs, cfFs, vuFi, vuCo, vfI0, vcO0, vaNo, iaNo,  ;
        uaNo, xaNo
 PUBLIC caNo, vmEs, imEs, umEs, xmEs, cmEs, vsEr, isEr, usEr, xsEr, csEr,  ;
        vnUm, inUm
 PUBLIC unUm, xnUm, cnUm, vnTi, inTi, unTi, xnTi, cnTi, vgLo, igLo, ugLo,  ;
        xgLo, cgLo
 PUBLIC vtDo, itDo, utDo, ctDo, xtDo, vsR1, isR1, usR1, csR1, xsR1, vdOc,  ;
        idOc, udOc
 PUBLIC cdOc, xdOc, xtCa, ctCa, vmOn, xmOn, cmOn, xtOt, ctOt, ttOt, vdIa,  ;
        idIa, udIa
 PUBLIC cdIa, xdIa, xtPo, ctPo, xtPp, xtIp, xbAn, xnBa, xcTa, xnCt, xcHe,  ;
        xcCo, xnCc
 PUBLIC xrCb, xvEn, vfEc, xfEc, xeSt, xuSu, xdAt, xtIm, xmAq, xnVe, ctIt,  ;
        cnOm, cnFp
 PUBLIC cfEm, cfVe, vpAg, vtAb, vlIn, vyEa, icLn, ucLn, icL1, ucL1, voPc,  ;
        vfRa, vfB1
 PUBLIC vcB1, vtB1, vxLs
 PUBLIC vpAn_11, vpAn_12
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vyEa, vaNo
 STORE SUBSTR(DTOC(DATE()), 4, 2) TO vmEs
 STORE DATE() TO vfEc
 STORE SPACE(70) TO vpAl
 STORE SPACE(02) TO imEs, umEs
 STORE SPACE(03) TO isEr, usEr
 STORE SPACE(04) TO iaNo, uaNo
 STORE SPACE(07) TO vnUm, inUm, unUm
 STORE SPACE(50) TO vnTi, inTi, unTi
 STORE SPACE(80) TO vgLo, igLo, ugLo
 STORE msEr(03) TO vsEr
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW9
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 DIMENSION vtAb[5]
 STORE "Por Rendir" TO vtAb[1]
 STORE "Emisión de Cheques (CCO)" TO vtAb[2]
 STORE "Notas de Cargo del Banco" TO vtAb[3]
 STORE "Cancelaciones de Compras" TO vtAb[4]
 STORE "Depósito a Caja" TO vtAb[5]
 SET READBORDER ON
 DO p00_3540a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3540a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3540a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3540a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c .AND. wtPo="1"
                DO coLsc3
                SAVE SCREEN TO vpAn_11
                DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @ ifIl+0.8, mcO0+69 TO ifIl+5.0, mcO0+100.1 PATTERN 1 PEN 1
                @ ifIl+0.0, mcO0+68 TO ifIl+4.5, mcO0+099.0 PATTERN 1 PEN 3
                @iFIL+1.5,mCO0+74 Say "Año:" Font "&mLetRom",12 Style "BQ"
                DO WHILE .T.
                     IF mkEy=k_Clic
                          DO clP_coo
                          DO CASE
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+59.4 .AND. mcCc<=mmC1+68
                                    STORE k_Enter TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+68 .AND. mcCc<=mmC1+77
                                    STORE k_F1 TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+77 .AND. mcCc<=mmC1+85.80
                                    STORE k_Esc TO mkEy
                                    EXIT
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+85.8 .AND. mcCc<=mmC1+95
                                    STORE k_F10 TO mkEy
                               OTHERWISE
                                    STORE 99 TO mkEy
                          ENDCASE
                     ENDIF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F1
                               DO hl3_3540a
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vyEa))=0
                               DO ab1_3540a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 1 TO vsW9
                               STORE SPACE(07) TO idOc
                               EXIT
                          CASE mkEy=k_Enter
                               STORE muNi+":"+mpTh+"D"+vyEa+"\FC"+mcIi+ ;
                                     "3540.DBF" TO mdBf
                               DO CASE
                                    Case .not.File("&mDBF") .and. vYEA <> Substr(Dtoc(Date()),7,4)
                                         STORE  ;
                                          "No hay documentos en este Año..."  ;
                                          TO mmSj
                                         DO poNmsj
                                    Case .not.File("&mDBF") .and. vYEA = Substr(Dtoc(Date()),7,4)
                                         DO ab1_3540a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 1 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                                    OTHERWISE
                                         DO ab2_3540a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 2 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                               ENDCASE
                     ENDCASE
                     DO coLbln
                     STORE k_Enter TO mkEy
                     @iFIL+1.5,mCO0+84 Get vYEA Font "&mLetRom",12 Style "NQ" Size 1,5.4 Pict "9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO p01_3540a
           CASE mkEy=k_F7
                DO tpO_3540a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE vsW1=1
                          SELECT caB_sal_bancos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                ELSE
                     DO CASE
                          CASE wtPo="1"
                               DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                          CASE wtPo="2"
                               DO prEsiona WITH "4", "R_CONS17", mmF1, mmC1
                          CASE wtPo="3"
                               DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     ENDCASE
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
                     DO pcC3540b
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
                STORE VAL(vnUm) TO vnUm
                @iFIL-4,mCO0+16.0 Get  vANO Font "&mLetRom",11 Style "NQ" Size 1,5   Pict "9999"    Color ,&mColBlN
                @iFIL-4,mCO0+24.0 Get  vMES Font "&mLetRom",11 Style "NQ" Size 1,2.6 Pict "99"      Color ,&mColBlN
                @iFIL-4,mCO0+29.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "!99"     Color ,&mColBlN
                @iFIL-4,mCO0+36.3 Get  vNUM Font "&mLetRom",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+12.0 Get  vFEC Font "&mLetRom",11 Style "NQ" Size 1,10.8               Color ,&mColBlN
           CASE vsW0=3
                @iFIL-4,mCO0+12.0 Edit vGLO Font "&mLetRom",11 Style "NQ" Size 1,34,80
           CASE vsW0=4
                @iFIL-4,mCO0+26.0 Edit vNTI Font "&mLetRom",11 Style "NQ" Size 1,22,50
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vnUm = STRTRAN(STR(vnUm, 7, 0), " ", "0")
                @iFIL-4,mCO0+36.3 Say vNUM Font "&mLetRom",11 Style "NQ" Size 1,8 Pict "9999999"
           CASE vsW0=2
                STORE SUBSTR(DTOC(vfEc), 1, 2) TO vdIa
                STORE SUBSTR(DTOC(vfEc), 4, 2) TO vmEs
                STORE SUBSTR(DTOC(vfEc), 7, 4) TO vaNo
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_3540a
 DO rs2_3540a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3540a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_3540a
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
                     77 .AND. mcCc<=mmC1+85.8
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
                DO hl2_3540a
           CASE mkEy=k_F12
                DO reS_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_3540a
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
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_sal_bancos
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f3540glo)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3540che)))<>0
                          DO muE_3540a
                          DO grA_3540a
                          SELECT caB_sal_bancos
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vnUm
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_3540a
 STORE f3540ano TO xaNo
 STORE f3540mes TO xmEs
 STORE f3540dia TO xdIa
 STORE f3540ser TO xsEr
 STORE f3540num TO xnUm
 STORE f3540tpo TO xtPo
 STORE f3540tpp TO xtPp
 STORE f3540tip TO xtIp
 STORE f3540nti TO xnTi
 STORE f3540tca TO xtCa
 STORE f3540mon TO xmOn
 STORE f3540tot TO xtOt
 STORE f3540glo TO xgLo
 STORE f3540ban TO xbAn
 STORE f3540nba TO xnBa
 STORE f3540cta TO xcTa
 STORE f3540nct TO xnCt
 STORE f3540che TO xcHe
 STORE f3540cco TO xcCo
 STORE f3540ncc TO xnCc
 STORE f3540rcb TO xrCb
 STORE f3540ven TO xvEn
 STORE f3540fec TO xfEc
 STORE f3540est TO xeSt
 STORE f3540usu TO xuSu
 STORE f3540dat TO xdAt
 STORE f3540tim TO xtIm
 STORE f3540maq TO xmAq
ENDPROC
*
PROCEDURE Gra_3540a
 SELECT teMporal
 APPEND BLANK
 REPLACE f3540ano WITH xaNo
 REPLACE f3540mes WITH xmEs
 REPLACE f3540dia WITH xdIa
 REPLACE f3540ser WITH xsEr
 REPLACE f3540num WITH xnUm
 REPLACE f3540tpo WITH xtPo
 REPLACE f3540tpp WITH xtPp
 REPLACE f3540tip WITH xtIp
 REPLACE f3540nti WITH xnTi
 REPLACE f3540tca WITH xtCa
 REPLACE f3540mon WITH xmOn
 REPLACE f3540tot WITH xtOt
 REPLACE f3540glo WITH xgLo
 REPLACE f3540ban WITH xbAn
 REPLACE f3540nba WITH xnBa
 REPLACE f3540cta WITH xcTa
 REPLACE f3540nct WITH xnCt
 REPLACE f3540che WITH xcHe
 REPLACE f3540cco WITH xcCo
 REPLACE f3540ncc WITH xnCc
 REPLACE f3540rcb WITH xrCb
 REPLACE f3540ven WITH xvEn
 REPLACE f3540fec WITH xfEc
 REPLACE f3540est WITH xeSt
 REPLACE f3540usu WITH xuSu
 REPLACE f3540dat WITH xdAt
 REPLACE f3540tim WITH xtIm
 REPLACE f3540maq WITH xmAq
ENDPROC
*
PROCEDURE P01_3540a
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Voucher:"        Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Fecha:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Glosa:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Tipo de Salida:" Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get  vANO Font "&mLetRom",11 Style "NQ" Size 1,5   Pict "9999"    Color ,&mColBlN
           @iFIL-4,mCO0+24.0 Get  vMES Font "&mLetRom",11 Style "NQ" Size 1,2.6 Pict "99"      Color ,&mColBlN
           @iFIL-4,mCO0+29.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "!99"     Color ,&mColBlN
           @iFIL-4,mCO0+36.3 Get  vNUM Font "&mLetRom",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+12.0 Get  vFEC Font "&mLetRom",11 Style "NQ" Size 1,10.8               Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+12.0 Edit vGLO Font "&mLetRom",11 Style "NQ" Size 1,34,80
      CASE vsW0=4
           @iFIL-4,mCO0+26.0 Edit vNTI Font "&mLetRom",11 Style "NQ" Size 1,22,50
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P00_3540a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 194.2 TO muCo
 STORE 34 TO vuFi
 STORE 192 TO vuCo
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE (mwFi-vuFi)/2 TO vfI0
 STORE vfI0+1.1 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE vfI0+12 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffIl-ifFs) TO ffFs
 STORE mcO0 TO icLn
 STORE ifIl-1.2 TO vfB1
 STORE mcO0+193.9 TO ucLn
 STORE vcO0+0.5 TO icL1
 STORE mcO0+191.3 TO ucL1
 STORE mcO0+135.6 TO vcB1
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Salidas de Bancos"
      CASE wtPo="2"
           DO tiT_0000a WITH "Procesar Salidas de Bancos"
      CASE wtPo="3"
           DO tiT_0000a WITH "Anulación de Salidas de Bancos"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_12
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3540a
 DO liN_3510a IN PCC3510A WITH ifIl-0.2, ffIl+1
 @ ifIl-1.3, mcO0+027.6 TO ifIl-0.2, mcO0+027.6
 @ ifIl-1.3, mcO0+033.3 TO ifIl-0.2, mcO0+033.3
 @ ifIl-1.3, mcO0+037.5 TO ifIl-0.2, mcO0+037.5
 @ ifIl-1.3, mcO0+045.9 TO ifIl-0.2, mcO0+045.9
 @ ifIl-1.3, mcO0+113.4 TO ifIl-0.2, mcO0+113.4
 @ ifIl-1.3, mcO0+134.7 TO ifIl-0.2, mcO0+134.7
 @ ifIl-1.3, mcO0+174.2 TO ifIl-0.2, mcO0+174.2
 DO coLsc1
 @iFIL-1.2,mCO0+002.2 Say "Número de Voucher"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+028.6 Say "Est"                Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+034.2 Say "Di"                 Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+040.3 Say "T/C"                Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+075.3 Say "Glosa"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+120.0 Say "Grupo"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+143.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+181.1 Say "Total"              Font "&mLetAri",9 Style "BT"
 Define Popup vTB1 from vFB1+1.1,vCB1-.6 to fFIL+1,vCB1+50 Font "&mLetCou",11 Style "NQ" Prompt Field F9317NTI+" ["+F9317TIP+"]" Scroll Color Scheme 3 Footer "TIPOS DE SALIDAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO prEsiona WITH "1", "CONSU3", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Res_3540a
 DO p00_3540a WITH "1"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 IF LEN(ALLTRIM(inUm))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3540b IN PCC3540B WITH "v", "c"
      DO CASE
           CASE vsW1=1
                SELECT caB_sal_bancos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_3520b IN PCC3520B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3540ano+f3540mes+f3540ser+f3540num=vaNo+vmEs+vsEr+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3540b IN PCC3540B WITH "v", "i"
           DO muE_3540b IN PCC3540B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3520b IN PCC3520B WITH "i"
      DO paN_3540b IN PCC3540B
      DO muE_3540b IN PCC3540B WITH "c", "v"
      DO seE_3520b IN PCC3520B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Tpo_3540a
 PARAMETER ptPo
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Salida registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9317tip TO vtIp
      STORE f9317nti TO vnTi
      DO op1_3540a WITH ptPo
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_sal_bancos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Op1_3540a
 PARAMETER ptPo
 STORE 1 TO vsW1
 SELECT teMporal
 ZAP
 REINDEX
 SELECT caB_sal_bancos
 GOTO TOP
 DO coLsc3
 DO WHILE  .NOT. EOF()
      @iFIL,mCO0+72.1 Say F3540ANO+":"+F3540MES+"-"+F3540SER+"-"+F3540NUM Font "&mLetAri",9 Style "NQ" Size 1,25
      IF f3540tip=vtIp
           DO CASE
                CASE vsW1=1
                     DO muE_3540a
                     DO grA_3540a
                CASE vsW1=2 .AND. (AT(UPPER(ALLTRIM(vpAl)),  ;
                     UPPER(ALLTRIM(f3540glo)))<>0 .OR.  ;
                     AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3540che)))<>0)
                     DO muE_3540a
                     DO grA_3540a
           ENDCASE
      ENDIF
      SELECT caB_sal_bancos
      SKIP
 ENDDO
 DO coLsc1
 @iFIL,mCO0+72.1 Say Space(25) Font "&mLetAri",9 Style "NQ" Size 1,25
 SELECT teMporal
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Palabra no encontrada..." TO mmSj
      STORE SPACE(70) TO vpAl, vtIp, vnTi
      STORE 1 TO vsW1
      DO poNmsj
 ELSE
      STORE 2 TO vsW1
 ENDIF
 DO CASE
      CASE ptPo="1"
           STORE SPACE(07) TO vnUm
           STORE vsW1 TO csW1
           STORE 00 TO csW0
      CASE ptPo="2"
           DO CASE
                CASE vsW1=1
                     SELECT caB_sal_bancos
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           DO orD_3540b IN PCC3540B
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO paN_3540b IN PCC3540B
           DO muE_3540b IN PCC3540B WITH "i", "v"
           STORE vsW1 TO csW1
           STORE ifIl TO vfIl
 ENDCASE
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say AllTrim(vNTI)+" "+vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Rs2_3540a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+61 TO ifIl+4.0, mcO0+137.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+60 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+61 Say "Digitar la Glosa en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Ab1_3540a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ab2_3540a
 SELECT 1
 STORE muNi+":"+mpTh+"D"+vyEa+"\FC"+mcIi+"3540"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 STORE muNi+":"+mpTh+"D"+vyEa+"\FC"+mcIi+"3541"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3540a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.6
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_F9 TO mkEy
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
      CASE mfIl>=vfB1-0.135 .AND. mfIl<=vfB1+1.7 .AND. mcCc>=vcB1-0.5  ;
           .AND. mcCc<=vcB1+1.9
           STORE k_F7 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3540a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 DO CASE
      CASE wtPo="1"
           @ pfIl+00, 2.000 SAY  ;
             "Esta consulta muestra todos los Vouchers de Ingreso a Caja; incluyendo"
           @ pfIl+01, 2.000 SAY  ;
             "los que están anulados. Esta es la parte de la Cabecera de la Consulta."
           @ pfIl+03, 2.000 SAY "Las teclas para movilizarse son:"
           @ pfIl+14, 2.000 SAY "ALT C" STYLE "BT"
           @ pfIl+14, 18.500 SAY ":" STYLE "BT"
           @ pfIl+14, 20.000 SAY "Cambiar a un Año almacenado"
      CASE wtPo="2"
           @ pfIl+00, 01 SAY  ;
             "El proceso trabaja como la consulta y muestra todos los Vouchers, inclu-"
           @ pfIl+01, 01 SAY  ;
             "yendo los que están anulados. Un Documento Procesado ya no se puede modi-"
           @ pfIl+02, 01 SAY "ficar."
           @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="3"
           @ pfIl+00, 01 SAY  ;
             "La anulación trabaja como la consulta y muestra todos los Vouchers, inclu-"
           @ pfIl+01, 01 SAY  ;
             "yendo los que están anulados. Un Documento Anulado no se puede activar."
           @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 ENDCASE
 @ pfIl+05, 18.500 SAY ":" STYLE "BT"
 @ pfIl+06, 18.500 SAY ":" STYLE "BT"
 @ pfIl+07, 18.500 SAY ":" STYLE "BT"
 @ pfIl+08, 18.500 SAY ":" STYLE "BT"
 @ pfIl+09, 18.500 SAY ":" STYLE "BT"
 @ pfIl+10, 18.500 SAY ":" STYLE "BT"
 @ pfIl+11, 18.500 SAY ":" STYLE "BT"
 @ pfIl+05, 2.000 SAY "ESC" STYLE "BT"
 @ pfIl+06, 2.000 SAY "F10" STYLE "BT"
 @ pfIl+07, 2.000 SAY "F1" STYLE "BT"
 @ pfIl+08, 2.000 SAY "F6" STYLE "BT"
 @ pfIl+09, 2.000 SAY "F7" STYLE "BT"
 @ pfIl+10, 2.000 SAY "F9" STYLE "BT"
 @ pfIl+11, 2.000 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+12, 2.000 SAY "CTRL ->," STYLE "BT"
 @ pfIl+13, 2.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20.000 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20.000 SAY "Ayuda del Programa"
 @ pfIl+08, 20.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 20.000 SAY "Ver Tipos de Salidas de Bancos"
 @ pfIl+10, 20.000 SAY "Buscar palabra o frase dentro de la Glosa/Cheque"
 @ pfIl+11, 20.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+12, 20.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3540a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 03 SAY  ;
   "Esta búsqueda, se da en cualquier parte de la descripción de la Glosa."
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
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_3540a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 03 SAY  ;
   "Esta opción selecciona el Año que se quiere visualizar. Esta opción"
 @ pfIl+01, 03 SAY "sólo funciona cuando hay años anteriores guardados."
 @ pfIl+03, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Cabecera"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "Aceptar y mostrar rango"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW9, vpAl, cpAl, vfIl, ifIl, ufIl,  ;
         cfIl, ffIl
 RELEASE vfFs, ifFs, ufFs, ffFs, cfFs, vuFi, vuCo, vfI0, vcO0, vaNo, iaNo,  ;
         uaNo, xaNo
 RELEASE caNo, vmEs, imEs, umEs, xmEs, cmEs, vsEr, isEr, usEr, xsEr, csEr,  ;
         vnUm, inUm
 RELEASE unUm, xnUm, cnUm, vnTi, inTi, unTi, xnTi, cnTi, vgLo, igLo, ugLo,  ;
         xgLo, cgLo
 RELEASE vtDo, itDo, utDo, ctDo, xtDo, vsR1, isR1, usR1, csR1, xsR1, vdOc,  ;
         idOc, udOc
 RELEASE cdOc, xdOc, xtCa, ctCa, vmOn, xmOn, cmOn, xtOt, ctOt, ttOt, vdIa,  ;
         idIa, udIa
 RELEASE cdIa, xdIa, xtPo, ctPo, xtPp, xtIp, xbAn, xnBa, xcTa, xnCt, xcHe,  ;
         xcCo, xnCc
 RELEASE xrCb, xvEn, vfEc, xfEc, xeSt, xuSu, xdAt, xtIm, xmAq, xnVe, ctIt,  ;
         cnOm, cnFp
 RELEASE cfEm, cfVe, vpAg, vtAb, vlIn, vyEa, icLn, ucLn, icL1, ucL1, voPc,  ;
         vfRa, vfB1
 RELEASE vcB1, vtB1, vxLs
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
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
