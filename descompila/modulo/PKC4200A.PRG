 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DO taB_trabajadores IN PUX0004A
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
 INDEX ON f4200cod TAG f4200cod
 INDEX ON f4200ruc+f4200cod TAG f4200ruc
 INDEX ON f4200ele+f4200cod TAG f4200ele
 INDEX ON UPPER(ALLTRIM(f4200nar))+f4200cod TAG f4200nar
 INDEX ON UPPER(ALLTRIM(f4200nca))+f4200cod TAG f4200nca
 INDEX ON UPPER(ALLTRIM(f4200app)+ALLTRIM(f4200apm)+ALLTRIM(f4200nom))+ ;
       f4200cod TAG f4200nom
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo de Trabajadores no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT trAbajadores
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vpAl, cpAl, vlIn, vpAg, vfIl, ifIl,  ;
        ufIl, ffIl
 PUBLIC cfIl, vcOd, icOd, ucOd, xcOd, ccOd, vaPp, iaPp, uaPp, xaPp, caPp,  ;
        vaPm, iaPm
 PUBLIC uaPm, xaPm, caPm, vnOm, inOm, unOm, xnOm, cnOm, vrUc, irUc, urUc,  ;
        xrUc, crUc
 PUBLIC veLe, ieLe, ueLe, xeLe, ceLe, vnCa, inCa, unCa, xnCa, cnCa, vnAr,  ;
        inAr, unAr
 PUBLIC xnAr, cnAr, xdIr, xdIs, xnDi, xdPt, xnDp, xtEl, xmIl, xcAr, xcIv,  ;
        xsEx, xsSo
 PUBLIC xaFp, xnAf, xsPp, xfNa, xlNa, xgRu, xnAc, xcRg, xaRe, xbAn, xnBa,  ;
        xcTa, xnCt
 PUBLIC xsAl, xnSa, xpEn, xnPe, xiPs, xnIp, xrE4, xcCo, xnCc, xfOt, xcLa,  ;
        xcLv, xeSt
 PUBLIC xuSu, xdAt, xtIm, vuFi, vuCo, vfI0, vcO0, icLn, ucLn, vcL1, vcL2,  ;
        vc11, vc12
 PUBLIC vlLn, vcLl, viTe, veSt, vxLs
 PUBLIC vpAn_11, vpAn_99
 STORE SPACE(70) TO vpAl
 STORE SPACE(04) TO vcOd, icOd, ucOd
 STORE SPACE(08) TO veLe, ieLe, ueLe
 STORE SPACE(11) TO vrUc, irUc, urUc
 STORE SPACE(30) TO vnOm, inOm, unOm
 STORE SPACE(25) TO vaPp, iaPp, uaPp, vaPm, iaPm, uaPm
 STORE SPACE(50) TO vnCa, inCa, unCa, vnAr, inAr, unAr
 STORE 01 TO vsW0, csW0, vsW1
 STORE 00 TO csW1
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_4200a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4200a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4200a
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
                DO p01_4200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_4200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
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
                DO pkC4200b
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
      DO coLbln
      DO geT_4200a
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Get_4200a
 DO CASE
      CASE vsW0=01
           @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,07.2 Pict "!!!!"
      CASE vsW0=02
           @iFIL-4,mCO0+14 Get vAPP Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,27.5 Pict "@S30"
      CASE vsW0=03
           @iFIL-4,mCO0+13 Get vRUC Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,12.5 Pict "99999999999"
      CASE vsW0=04
           @iFIL-4,mCO0+18 Get vELE Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,09.1 Pict "99999999"
      CASE vsW0=05
           @iFIL-4,mCO0+11 Get vNCA Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,30.0 Pict "@S31"
      CASE vsW0=06
           @iFIL-4,mCO0+10 Get vNAR Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,30.0 Pict "@S31"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_4200a
 DO rs2_4200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_4200a
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
           CASE mkEy=k_F12
                DO rs1_4200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_4200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4200a
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
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          DO muE_4200a
                          DO grA_4200a
                          SELECT trAbajadores
                     ENDIF
                     SKIP
                     DO veR_lock
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     STORE 1 TO vsW1
                     DO poNmsj
                ELSE
                     STORE 0 TO csW1
                     STORE 2 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO CASE
           CASE mrEs="1"
                @iFIL+1.8,mCO0+21.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="2"
                @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs$"45"
                @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_4200a
 STORE f4200cod TO xcOd
 STORE f4200app TO xaPp
 STORE f4200apm TO xaPm
 STORE f4200nom TO xnOm
 STORE f4200dir TO xdIr
 STORE f4200dis TO xdIs
 STORE f4200ndi TO xnDi
 STORE f4200dpt TO xdPt
 STORE f4200ndp TO xnDp
 STORE f4200tel TO xtEl
 STORE f4200ele TO xeLe
 STORE f4200mil TO xmIl
 STORE f4200ruc TO xrUc
 STORE f4200car TO xcAr
 STORE f4200civ TO xcIv
 STORE f4200sex TO xsEx
 STORE f4200sso TO xsSo
 STORE f4200afp TO xaFp
 STORE f4200naf TO xnAf
 STORE f4200spp TO xsPp
 STORE f4200fna TO xfNa
 STORE f4200lna TO xlNa
 STORE f4200gru TO xgRu
 STORE f4200nac TO xnAc
 STORE f4200crg TO xcRg
 STORE f4200nca TO xnCa
 STORE f4200are TO xaRe
 STORE f4200nar TO xnAr
 STORE f4200ban TO xbAn
 STORE f4200nba TO xnBa
 STORE f4200cta TO xcTa
 STORE f4200nct TO xnCt
 STORE f4200sal TO xsAl
 STORE f4200nsa TO xnSa
 STORE f4200pen TO xpEn
 STORE f4200npe TO xnPe
 STORE f4200ips TO xiPs
 STORE f4200nip TO xnIp
 STORE f4200re4 TO xrE4
 STORE f4200cco TO xcCo
 STORE f4200ncc TO xnCc
 STORE f4200fot TO xfOt
 STORE f4200cla TO xcLa
 STORE f4200est TO xeSt
 STORE f4200usu TO xuSu
 STORE f4200dat TO xdAt
 STORE f4200tim TO xtIm
ENDPROC
*
PROCEDURE Gra_4200a
 SELECT teMporal
 APPEND BLANK
 REPLACE f4200cod WITH xcOd
 REPLACE f4200app WITH xaPp
 REPLACE f4200apm WITH xaPm
 REPLACE f4200nom WITH xnOm
 REPLACE f4200dir WITH xdIr
 REPLACE f4200dis WITH xdIs
 REPLACE f4200ndi WITH xnDi
 REPLACE f4200dpt WITH xdPt
 REPLACE f4200ndp WITH xnDp
 REPLACE f4200tel WITH xtEl
 REPLACE f4200ele WITH xeLe
 REPLACE f4200mil WITH xmIl
 REPLACE f4200ruc WITH xrUc
 REPLACE f4200car WITH xcAr
 REPLACE f4200civ WITH xcIv
 REPLACE f4200sex WITH xsEx
 REPLACE f4200sso WITH xsSo
 REPLACE f4200afp WITH xaFp
 REPLACE f4200naf WITH xnAf
 REPLACE f4200spp WITH xsPp
 REPLACE f4200fna WITH xfNa
 REPLACE f4200lna WITH xlNa
 REPLACE f4200gru WITH xgRu
 REPLACE f4200nac WITH xnAc
 REPLACE f4200crg WITH xcRg
 REPLACE f4200nca WITH xnCa
 REPLACE f4200are WITH xaRe
 REPLACE f4200nar WITH xnAr
 REPLACE f4200ban WITH xbAn
 REPLACE f4200nba WITH xnBa
 REPLACE f4200cta WITH xcTa
 REPLACE f4200nct WITH xnCt
 REPLACE f4200sal WITH xsAl
 REPLACE f4200nsa WITH xnSa
 REPLACE f4200pen WITH xpEn
 REPLACE f4200npe WITH xnPe
 REPLACE f4200ips WITH xiPs
 REPLACE f4200nip WITH xnIp
 REPLACE f4200re4 WITH xrE4
 REPLACE f4200cco WITH xcCo
 REPLACE f4200ncc WITH xnCc
 REPLACE f4200fot WITH xfOt
 REPLACE f4200cla WITH xcLa
 REPLACE f4200est WITH xeSt
 REPLACE f4200usu WITH xuSu
 REPLACE f4200dat WITH xdAt
 REPLACE f4200tim WITH xtIm
ENDPROC
*
PROCEDURE Lin_4200a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="1"
           @ piNi, mcO0+008.0 TO pfIn, mcO0+008.0
           @ piNi, mcO0+012.4 TO pfIn, mcO0+012.4
           @ piNi, mcO0+045.8 TO pfIn, mcO0+045.8
           @ piNi, mcO0+059.9 TO pfIn, mcO0+059.9
           @ piNi, mcO0+070.1 TO pfIn, mcO0+070.1
           @ piNi, mcO0+085.8 TO pfIn, mcO0+085.8
           @ piNi, mcO0+101.3 TO pfIn, mcO0+101.3
      CASE mrEs$"23"
           @ piNi, mcO0+009.9 TO pfIn, mcO0+009.9
           @ piNi, mcO0+015.3 TO pfIn, mcO0+015.3
           @ piNi, mcO0+056.9 TO pfIn, mcO0+056.9
           @ piNi, mcO0+073.5 TO pfIn, mcO0+073.5
           @ piNi, mcO0+086.2 TO pfIn, mcO0+086.2
           IF mrEs="2"
                @ piNi, mcO0+101.7 TO pfIn, mcO0+101.7
                @ piNi, mcO0+117.3 TO pfIn, mcO0+117.3
           ELSE
                @ piNi, mcO0+109.7 TO pfIn, mcO0+109.7
                @ piNi, mcO0+133.3 TO pfIn, mcO0+133.3
           ENDIF
      CASE mrEs>="4"
           @ piNi, mcO0+009.9 TO pfIn, mcO0+009.9
           @ piNi, mcO0+015.3 TO pfIn, mcO0+015.3
           @ piNi, mcO0+066.9 TO pfIn, mcO0+066.9
           @ piNi, mcO0+083.5 TO pfIn, mcO0+083.5
           @ piNi, mcO0+096.2 TO pfIn, mcO0+096.2
           @ piNi, mcO0+119.7 TO pfIn, mcO0+119.7
           @ piNi, mcO0+143.3 TO pfIn, mcO0+143.3
           @ piNi, mcO0+208.2 TO pfIn, mcO0+208.2
           @ piNi, mcO0+221.4 TO pfIn, mcO0+221.4
           @ piNi, mcO0+237.2 TO pfIn, mcO0+237.2
           @ piNi, mcO0+242.5 TO pfIn, mcO0+242.5
           IF mrEs>="5"
                @ piNi, mcO0+248 TO pfIn, mcO0+248
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE P00_4200a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 21 TO muFi
 STORE 22 TO vuFi
 STORE 124 TO muCo, vuCo
 STORE (mwFi-vuFi)/2 TO vfI0
 STORE vfI0-2.5 TO vfI0
 IF mrEs>"1"
      STORE vuCo+30 TO vuCo
 ENDIF
 STORE (mwCo-vuCo)/2 TO vcO0
 DO CASE
      CASE mrEs="2"
           STORE muFi+07 TO muFi
           STORE muCo+33.6 TO muCo
      CASE mrEs="3"
           STORE muFi+18 TO muFi
           STORE muCo+74 TO muCo
      CASE mrEs="4"
           STORE muFi+07 TO muFi
           STORE muCo+124 TO muCo
      CASE mrEs>="5"
           STORE muFi+18 TO muFi
           STORE muCo+144 TO muCo
 ENDCASE
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, icLn
 STORE mcO0+muCo TO ucLn
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 IF mrEs="1"
      STORE vcO0+29 TO vcL1
      STORE vcL1+49.5 TO vcL2
      STORE 0 TO vc11, vc12
 ELSE
      IF mrEs>"2"
           STORE vcO0-21 TO vcO0
      ENDIF
      STORE vcO0+39 TO vcL1
      STORE vcL1+59.5 TO vcL2
      STORE 6 TO vc11
      STORE 9 TO vc12
      STORE vfI0+2 TO vlLn
      STORE vcO0+vuCo+12 TO vcLl
 ENDIF
 DO tiT_0000a WITH "Consulta de Trabajadores"
 SAVE SCREEN TO vpAn_99
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0-0.1 TO ifIl-0.2, mcO0+muCo+0.1
 @ ffIl+1.1, mcO0-0.1 TO ffIl+1.1, mcO0+muCo+0.1
 DO p01_4200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_4200a WITH ifIl-1.4, ffIl+1.1
 DO coLblz
 DO CASE
      CASE mrEs="1"
           @iFIL-1.3,mCO0+000.4 Say "Código"              Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+008.9 Say "Est"                 Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+019.1 Say "Apellidos y Nombres" Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+050.4 Say "RUC"                 Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+063.1 Say "DNI"                 Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+074.6 Say "Cargo"               Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+090.5 Say "Area"                Font "&mLetAri",8 Style "NT"
           @iFIL-1.3,mCO0+106.7 Say "Dirección"           Font "&mLetAri",8 Style "NT"
      CASE mrEs$"23"
           @iFIL-1.3,mCO0+000.2 Say "Código"              Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+011.0 Say "Est"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+020.1 Say "Apellidos y Nombres" Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+063.0 Say "RUC"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+077.3 Say "DNI"                 Font "&mLetAri",10 Style "BT"
           IF mrEs="2"
                @iFIL-1.3,mCO0+090.0 Say "Cargo"            Font "&mLetAri",10 Style "BT"
                @iFIL-1.3,mCO0+106.6 Say "Area"             Font "&mLetAri",10 Style "BT"
                @iFIL-1.3,mCO0+130.2 Say "Dirección"        Font "&mLetAri",10 Style "BT"
           ELSE
                @iFIL-1.3,mCO0+093.7 Say "Cargo"            Font "&mLetAri",10 Style "BT"
                @iFIL-1.3,mCO0+118.1 Say "Area"             Font "&mLetAri",10 Style "BT"
                @iFIL-1.3,mCO0+157.7 Say "Dirección"        Font "&mLetAri",10 Style "BT"
           ENDIF
      CASE mrEs>="4"
           @iFIL-1.3,mCO0+000.2 Say "Código"              Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+011.0 Say "Est"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+026.1 Say "Apellidos y Nombres" Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+073.0 Say "RUC"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+087.3 Say "DNI"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+103.7 Say "Cargo"               Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+128.1 Say "Area"                Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+167.7 Say "Dirección"           Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+209.0 Say "Fec-Nac."            Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+221.9 Say "Lug.Nacim."          Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+237.6 Say "Sex"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.3,mCO0+242.9 Say "E.C."                Font "&mLetAri",10 Style "BT"
           IF mrEs>="5"
                @iFIL-1.3,mCO0+252.4 Say "Teléfono"         Font "&mLetAri",10 Style "BT"
           ENDIF
 ENDCASE
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE P01_4200a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=01
           @iFIL-4,mCO0+0.8 Say "Código:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=02
           @iFIL-4,mCO0+0.8 Say "Nombre:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=03
           @iFIL-4,mCO0+0.8 Say "R.U.C.:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=04
           @iFIL-4,mCO0+0.8 Say "D.N.I.:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=05
           @iFIL-4,mCO0+0.8 Say "Cargo:"  Font "&mLetRom",12 Style "BT"
      CASE vsW0=06
           @iFIL-4,mCO0+0.8 Say "Area:"   Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO geT_4200a
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Rs1_4200a
 DO p00_4200a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW1=1
                SELECT trAbajadores
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO muE_4200b IN PKC4200B WITH "v", "c"
      DO seE_4200b IN PKC4200B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f4200cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_4200b IN PKC4200B WITH "v", "i"
           DO muE_4200b IN PKC4200B WITH "v", "c"
      ENDIF
      DO seE_4200b IN PKC4200B WITH "i"
      DO paN_4200b IN PKC4200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "c", "v"
      DO seE_4200b IN PKC4200B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Rs2_4200a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="1"
           @ ifIl+0.8, mcO0+21 TO ifIl+4.0, mcO0+99.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+20 TO ifIl+3.5, mcO0+98.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+21 Say "Digitar Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs>"1"
           @ ifIl+0.8, mcO0+41 TO ifIl+4.0, mcO0+119.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+40 TO ifIl+3.5, mcO0+118.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+41 Say "Digitar Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4200a
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
PROCEDURE Hl1_4200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Trabajadores registrados, incluyendo los"
 @ pfIl+01, 02 SAY "que están anulados."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 17 SAY ":" STYLE "BT"
 @ pfIl+06, 17 SAY ":" STYLE "BT"
 @ pfIl+07, 17 SAY ":" STYLE "BT"
 @ pfIl+08, 17 SAY ":" STYLE "BT"
 @ pfIl+09, 17 SAY ":" STYLE "BT"
 @ pfIl+10, 17 SAY ":" STYLE "BT"
 @ pfIl+05, 01 SAY "ESC" STYLE "BT"
 @ pfIl+06, 01 SAY "F10" STYLE "BT"
 @ pfIl+07, 01 SAY "F1" STYLE "BT"
 @ pfIl+08, 01 SAY "F6" STYLE "BT"
 @ pfIl+09, 01 SAY "F9" STYLE "BT"
 @ pfIl+10, 01 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+11, 01 SAY "CTRL ->," STYLE "BT"
 @ pfIl+12, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 19 SAY "Regresar al Menú Principal"
 @ pfIl+06, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 19 SAY "Ayuda del Programa"
 @ pfIl+08, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 19 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+10, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+11, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_4200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Trabajadores. Si la palabra o frase, no se encuentra contenida en ningu-"
 @ pfIl+02, 02 SAY  ;
   "no de los nombres de los Trabajadores, saldrá un mensaje.  En caso de"
 @ pfIl+03, 02 SAY  ;
   "encontrarse regresará a la Cabecera, para que escoja el orden de con-"
 @ pfIl+04, 02 SAY "sulta respectivo."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 13 SAY "ESC" STYLE "BT"
 @ pfIl+09, 13 SAY "F10" STYLE "BT"
 @ pfIl+10, 13 SAY "F1" STYLE "BT"
 @ pfIl+11, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+08, 23 SAY "Regresar a Cabecera"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 @ pfIl+11, 23 SAY "Aceptar palabra y regresar a Cabecera"
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
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vpAl, cpAl, vlIn, vpAg, vfIl, ifIl,  ;
         ufIl, ffIl
 RELEASE cfIl, vcOd, icOd, ucOd, xcOd, ccOd, vaPp, iaPp, uaPp, xaPp, caPp,  ;
         vaPm, iaPm
 RELEASE uaPm, xaPm, caPm, vnOm, inOm, unOm, xnOm, cnOm, vrUc, irUc, urUc,  ;
         xrUc, crUc
 RELEASE veLe, ieLe, ueLe, xeLe, ceLe, vnCa, inCa, unCa, xnCa, cnCa, vnAr,  ;
         inAr, unAr
 RELEASE xnAr, cnAr, xdIr, xdIs, xnDi, xdPt, xnDp, xtEl, xmIl, xcAr, xcIv,  ;
         xsEx, xsSo
 RELEASE xaFp, xnAf, xsPp, xfNa, xlNa, xgRu, xnAc, xcRg, xaRe, xbAn, xnBa,  ;
         xcTa, xnCt
 RELEASE xsAl, xnSa, xpEn, xnPe, xiPs, xnIp, xrE4, xcCo, xnCc, xfOt, xcLa,  ;
         xcLv, xeSt
 RELEASE xuSu, xdAt, xtIm, vuFi, vuCo, vfI0, vcO0, icLn, ucLn, vcL1, vcL2,  ;
         vc11, vc12
 RELEASE vlLn, vcLl, viTe, veSt, vxLs
 RELEASE vpAn_11, vpAn_99
 RELEASE exTended
 RELEASE exTended
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
