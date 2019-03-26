 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_ped
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_1200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc+"*">vtDo+vsEr+ ;
    vdOc+"*" .OR. utDo+usEr+udOc+"*"<vtDo+vsEr+vdOc+"*")) .OR. (vsW0=2  ;
    .AND. (UPPER(inOm)+"*">UPPER(vnOm)+"*" .OR. UPPER(unOm)+"*"< ;
    UPPER(vnOm)+"*")) .OR. (vsW0=3 .AND. (ifEm>vfEm .OR. ufEm<vfEm)) .OR.  ;
    (vsW0=4 .AND. (UPPER(inTt)+"*">UPPER(vnTt)+"*" .OR. UPPER(unTt)+"*"< ;
    UPPER(vnTt)+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=4
                SEEK ALLTRIM(UPPER(vnTt))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_1200b
      DO muE_1200b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_1200b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_1200b WITH "v"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_1200b WITH "F", "v"
      ENDIF
      DO seE_1200b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f1200tdo+f1200ser+f1200doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_1200b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_1200b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_1200b WITH "i"
      SET NEAR OFF
      DO paN_1200b
      DO muE_1200b WITH "i", "v"
      DO seE_1200b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_1200b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           IF mvIr=1
                mkEy = INKEY(0.1, "HM")
                IF mkEy=0
                     DO viR_000
                     LOOP
                ENDIF
           ELSE
                mkEy = INKEY(0, "HM")
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_1200b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_1200b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1200b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
                SET READBORDER ON
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+16 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
                          @iFIL-4,mCO0+22 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
                     CASE vsW0=2
                          @iFIL-4,mCO0+14 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
                     CASE vsW0=3
                          @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
                     CASE vsW0=4
                          @iFIL-4,mCO0+16 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
                ENDCASE
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f1200est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f1200est="9" .AND. wtPo="4"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_F8 .AND. f1200est="9" .AND. wtPo$"234"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Alt_s .AND. f1200est="9" .AND. wtPo="4"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="4"
                DO anU_1200b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_s .AND. wtPo="4" .AND. (f1200est<>"4" .OR. msTp<>1)
                STORE "Documento no puede devolver Stock..." TO mmSj
           CASE mkEy=k_Alt_s .AND. wtPo="4" .AND. f1200est="4" .AND. msTp=1
                DO stO_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1200b WITH "R"
           CASE mkEy=k_F8 .AND. wtPo$"23"
                DO apR_1200b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_1200b
                IF mkEy=k_Esc .OR. EOF() .OR. BOF()
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT caB_ped
                DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pvC1200c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f1200tdo+f1200ser+f1200doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1200b
                               OTHERWISE
                                    DO seE_1200b WITH "v"
                                    DO diS_1200b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1200b WITH "i", "v"
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f1200tdo+f1200ser+f1200doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1200b
                               OTHERWISE
                                    DO seE_1200b WITH "v"
                                    DO diS_1200b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1200b WITH "u", "v"
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1200a WITH ffIl, ffIl+1
                               DO muE_1200b WITH "F", "u"
                               DO muE_1200b WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1200b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1200b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1200a WITH ifIl, ifIl+1
                               DO muE_1200b WITH "F", "i"
                               DO muE_1200b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1200b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1200b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1200b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1200b
                          STORE ifIl TO vfIl
                          DO muE_1200b WITH "i", "v"
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1200b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1200b
                          STORE ifIl TO vfIl
                          DO muE_1200b WITH "i", "v"
                          DO seE_1200b WITH "v"
                          DO diS_1200b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1200b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_1200b
 DO pn1_1200b WITH "1"
ENDPROC
*
PROCEDURE Pa1_1200b
 DO pn1_1200b WITH "2"
ENDPROC
*
PROCEDURE Pn1_1200b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_1200b WITH "F", "i"
 DO muE_1200b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f1200tdo+f1200ser+f1200doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_1200b WITH "N"
      ENDCASE
      DO muE_1200b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_1200a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1200b
 PARAMETER ptIp
 PRIVATE peSt
 DO CASE
      CASE vsW1=1
           SELECT caB_ped
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE f1200est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscz
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f1200est="2"
           STORE "Apr" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscr
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      CASE f1200est="3"
           STORE "Apr" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscv
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
      CASE f1200est="4"
           STORE "*Ge" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      CASE f1200est="5"
           STORE "Gen" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      OTHERWISE
           STORE "Anu" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
 ENDCASE
 IF f1200est="1"
      @vFIL,mCO0+20.2 Say pEST Font "&mLetAri",9 Style "BQ" Size 1,3.9
 ELSE
      @vFIL,mCO0+20.2 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+00.0 Say F1200TDO              Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFIL,mCO0+04.4 Say F1200SER              Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,mCO0+09.4 Say F1200DOC              Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+25.5 Say F1200FEM              Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+39.1 Say F1200CLI+":"+F1200NOM Font "&mLetAri",9 Style "NQ" Size 1,55.0 Pict "@S57"
 DO CASE
      CASE wtPo="5"
           @vFIL,mCO0+095.3 Say AllTrim(F1200DIR)+","+F1200DIS Font "&mLetAri",9 Style "NQ" Size 1,23.2 Pict "@S25"
           @vFIL,mCO0+119.5 Say F1200CM1                       Font "&mLetAri",9 Style "NQ" Size 1,36.1 Pict "@S38"
           @vFIL,mCO0+156.7 Say F1200CM2                       Font "&mLetAri",9 Style "NQ" Size 1,37.2 Pict "@S39"
      OTHERWISE
           @vFIL,mCO0+095.3 Say AllTrim(F1200DIR)+","+F1200DIS Font "&mLetAri",9 Style "NQ" Size 1,33.2 Pict "@S35"
           @vFIL,mCO0+129.5 Say F1200NFP                       Font "&mLetAri",9 Style "NQ" Size 1,14.9 Pict "@S16"
           @vFIL,mCO0+145.5 Say F1200CM1                       Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S30"
           IF f1200tot<>0
                DO CASE
                     CASE f1200mon=1
                          @vFIL,mCO0+175 Say "S/."        Font "&mLetAri",9 Style "NQ" Size 1,4.8
                     CASE f1200mon=2
                          @vFIL,mCO0+175 Say "US$"        Font "&mLetAri",9 Style "NQ" Size 1,4.8
                     OTHERWISE
                          @vFIL,mCO0+175 Say "   "        Font "&mLetAri",9 Style "NQ" Size 1,4.8
                ENDCASE
                IF f1200tot>999999
                     @vFIL,mCO0+179.8 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
                ELSE
                     @vFIL,mCO0+179.8 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
                ENDIF
           ELSE
                @vFIL,mCO0+175.0 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,4.8
                @vFIL,mCO0+179.8 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,13.9
           ENDIF
 ENDCASE
 RELEASE peSt
ENDPROC
*
PROCEDURE Opc_1200b
 DO rs2_1200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_1200a
           IF mkEy=k_Esc
                RETURN
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
           CASE mkEy=k_F12
                DO rs1_1200b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_1200a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_1200b
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
                SELECT caB_ped
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1200ntt)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f1200cm1)))<>0
                          DO muE_1200a
                          DO grA_1200a
                          SELECT caB_ped
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
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
      DO CASE
           CASE vsW1=1
                SELECT caB_ped
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_1200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_1200b
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_1200b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_1200b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_1200b WITH "v", "x"
 DO orD_1200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_1200b WITH "i"
 DO pa1_1200b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_1200b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_1200b WITH "x", "v"
 ENDIF
 DO seE_1200b WITH "v"
 DO diS_1200b WITH "R"
ENDPROC
*
PROCEDURE Est_1200b
 DO CASE
      CASE vsW1=1
           SELECT caB_ped
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_1200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_1200b WITH "v"
 IF EOF() .OR. BOF()
      SET NEAR ON
      DO seE_1200b WITH "v"
      SET NEAR OFF
      IF EOF() .OR. BOF()
           GOTO TOP
           SET NEAR ON
           DO seE_1200b WITH "i"
           SET NEAR OFF
      ENDIF
      STORE f1200tdo TO xtDo
      STORE f1200ser TO xsEr
      STORE f1200doc TO xdOc
      STORE f1200nom TO xnOm
      STORE f1200fem TO xfEm
      STORE f1200ntt TO xnTt
      GOTO TOP
      SET NEAR ON
      DO seE_1200b WITH "i"
      SET NEAR OFF
      STORE 00 TO cfIl
      DO pa1_1200b
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_1200b WITH "i", "v"
      ELSE
           STORE cfIl TO vfIl
           DO muE_1200b WITH "x", "v"
      ENDIF
 ENDIF
 DO seE_1200b WITH "v"
 IF  .NOT. EOF() .AND.  .NOT. BOF()
      DO diS_1200b WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Anu_1200b
 PRIVATE ptX1, ptX2, poPc, pcOd, psEr, pcAn, pcAj, pvC2, pvC1, psT1, psT2,  ;
         pcJ1, pcJ2
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "PEDIDO DE VENTA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caB_ped
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201cod TO vcOd
      STORE f1201ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF msTp=1
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcOd
                ENDIF
           ENDIF
      ENDIF
      SELECT deT_ped
      SKIP
 ENDDO
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT itE_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc=vtDo+vsEr+vdOc
      STORE f1202cod TO vcOd
      STORE f1202rcc TO vrEc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT seR_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1203tdo+f1203ser+f1203doc=vtDo+vsEr+vdOc
      STORE f1203cod TO vcOd
      STORE f1203ped TO vpEd
      STORE f1203sec TO vsEc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT coN_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+vsEr+vdOc
      STORE f1204cod TO vcOd
      STORE f1204cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 IF msTp=1
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT tmP_prod
           SKIP
      ENDDO
 ENDIF
 DO WHILE .T.
      SELECT deT_ped
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f1201cod TO pcOd
      STORE f1201can TO pcAn
      STORE VAL(ALLTRIM(f1201ref)) TO pcAj
      REPLACE f1201tdo WITH SPACE(02)
      REPLACE f1201ser WITH SPACE(03)
      REPLACE f1201doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT prOductos
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF() .AND. f2111cst=1
           STORE f2111ser TO psEr
           SELECT stO_tot
           GOTO TOP
           REPLACE f2119cpe WITH f2119cpe-pcAn
           IF mcAj=1 .AND. psEr=1
                REPLACE f2119cjp WITH f2119cjp-pcAj
           ENDIF
      ENDIF
 ENDDO
 SELECT itE_ped
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1202tdo WITH SPACE(02)
      REPLACE f1202ser WITH SPACE(03)
      REPLACE f1202doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_ped
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1203tdo WITH SPACE(02)
      REPLACE f1203ser WITH SPACE(03)
      REPLACE f1203doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 DO WHILE .T.
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f1204cdg TO pcOd
      STORE f1204can TO pcAn
      REPLACE f1204tdo WITH SPACE(02)
      REPLACE f1204ser WITH SPACE(03)
      REPLACE f1204doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT prOductos
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF() .AND. f2111cst=1
           SELECT stO_tot
           GOTO TOP
           REPLACE f2119cpe WITH f2119cpe-pcAn
      ENDIF
 ENDDO
 IF msTp=1
      SELECT deT_ped
      STORE 99 TO mkEy
      DO orD_0000a WITH "1201", "V", "F1201COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                STORE f2111ser TO vsRr
           ELSE
                STORE 2 TO vsRr
           ENDIF
           SELECT kaRdex
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*ZZ"
           SET NEAR OFF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           STORE f2990sld TO vsLd
           STORE f2990slc TO vsLc
           STORE 00 TO vcAn, vcAj
           SELECT deT_ped
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF f1201can>f1201cad
                     STORE vcAn+(f1201can-f1201cad) TO vcAn
                     IF mcAj=1 .AND. vsRr=1
                          STORE vcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO vcAj
                     ENDIF
                ENDIF
                SKIP
           ENDDO
           SELECT coN_ped
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                STORE f1204tdo TO ctD1
                STORE f1204ser TO csR1
                STORE f1204doc TO cdO1
                STORE f1204cod TO vcDg
                STORE f1204cun TO vcUn
                SELECT deT_ped
                SEEK ALLTRIM(vcDg)+"*"+ctD1+csR1+cdO1
                IF  .NOT. EOF() .AND. f1201can>f1201cad
                     STORE vcAn+((f1201can-f1201cad)*vcUn) TO vcAn
                ENDIF
                SELECT coN_ped
                SKIP
           ENDDO
           SELECT prOductos
           IF  .NOT. EOF() .AND. f2111cst=1
                STORE f2111ser TO psEr
                STORE f2111vcp TO pvC2
                STORE f2111vcs TO pvC1
                STORE f2111sto TO psT1
                REPLACE f2111sto WITH vsLd-vcAn
                STORE f2111sto TO psT2
                IF mcAj=1 .AND. psEr=1
                     STORE f2111caj TO pcJ1
                     REPLACE f2111caj WITH vsLc-vcAj
                     STORE f2111caj TO pcJ2
                ENDIF
                UNLOCK
                SELECT stO_tot
                GOTO TOP
                REPLACE f2119sto WITH f2119sto-(psT1-psT2)
                REPLACE f2119vs1 WITH f2119vs1-((psT1-psT2)*pvC1)
                REPLACE f2119vs2 WITH f2119vs2-((psT1-psT2)*pvC2)
                IF mcAj=1 .AND. psEr=1
                     REPLACE f2119caj WITH f2119caj-(pcJ1-pcJ2)
                ENDIF
           ENDIF
           UNLOCK
           SELECT tmP_prod
           SKIP
      ENDDO
      STORE 99 TO mkEy
      SELECT deT_ped
      DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SELECT caB_ped
 REPLACE f1200est WITH "9"
 REPLACE f1200usu WITH muSu
 REPLACE f1200dat WITH DATE()
 REPLACE f1200tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f1200est WITH "9"
      REPLACE f1200usu WITH muSu
      REPLACE f1200dat WITH DATE()
      REPLACE f1200tim WITH TIME()
      UNLOCK
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc, pcOd, psEr, pcAn, pcAj, pvC2, pvC1, psT1, psT2,  ;
         pcJ1, pcJ2
ENDPROC
*
PROCEDURE Sto_1200b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea devolver Stock en este Documento?"
 ptX2 = "PEDIDO DE VENTA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT caB_ped
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF msTp=1
      SELECT tmP_prod
      ZAP
      REINDEX
      SELECT deT_ped
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
           STORE f1201cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcOd
                ENDIF
           ENDIF
           SELECT deT_ped
           SKIP
      ENDDO
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+vsEr+vdOc
           STORE f1204cdg TO vcDg
           SELECT prOductos
           SEEK ALLTRIM(vcDg)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcDg)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcDg
                ENDIF
           ENDIF
           SELECT coN_ped
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 IF msTp=1
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT tmP_prod
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      REPLACE f1201cad WITH f1201can
      REPLACE f1201cjd WITH VAL(ALLTRIM(f1201ref))
      UNLOCK
      SKIP
 ENDDO
 IF msTp=1
      STORE 99 TO mkEy
      SELECT deT_ped
      DO orD_0000a WITH "1201", "V", "F1201COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 2 TO vsRr
           ELSE
                STORE f2111ser TO vsRr
           ENDIF
           SELECT kaRdex
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*ZZ"
           SET NEAR OFF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           STORE f2990sld TO vsLd
           STORE f2990slc TO vsLc
           STORE 00 TO vcAn, vcAj
           SELECT deT_ped
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF f1201can>f1201cad
                     STORE vcAn+(f1201can-f1201cad) TO vcAn
                     IF mcAj=1 .AND. vsRr=1
                          STORE vcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO vcAj
                     ENDIF
                ENDIF
                SKIP
           ENDDO
           SELECT coN_ped
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                STORE f1204tdo TO ctD1
                STORE f1204ser TO csR1
                STORE f1204doc TO cdO1
                STORE f1204cod TO vcDg
                STORE f1204cun TO vcUn
                SELECT deT_ped
                SEEK ALLTRIM(vcDg)+"*"+ctD1+csR1+cdO1
                IF  .NOT. EOF() .AND. f1201can>f1201cad
                     STORE vcAn+((f1201can-f1201cad)*vcUn) TO vcAn
                ENDIF
                SELECT coN_ped
                SKIP
           ENDDO
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                STORE f2111ser TO psEr
                STORE f2111vcp TO pvC2
                STORE f2111vcs TO pvC1
                STORE f2111sto TO psT1
                REPLACE f2111sto WITH vsLd-vcAn
                STORE f2111sto TO psT2
                IF mcAj=1 .AND. psEr=1
                     STORE f2111caj TO pcJ1
                     REPLACE f2111caj WITH vsLc-vcAj
                     STORE f2111caj TO pcJ2
                ENDIF
                UNLOCK
                SELECT stO_tot
                GOTO TOP
                REPLACE f2119sto WITH f2119sto-(psT1-psT2)
                REPLACE f2119vs1 WITH f2119vs1-((psT1-psT2)*pvC1)
                REPLACE f2119vs2 WITH f2119vs2-((psT1-psT2)*pvC2)
                IF mcAj=1 .AND. psEr=1
                     REPLACE f2119caj WITH f2119caj-(pcJ1-pcJ2)
                ENDIF
           ENDIF
           UNLOCK
           SELECT tmP_prod
           SKIP
      ENDDO
      STORE 99 TO mkEy
      SELECT deT_ped
      DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 REPLACE f1200est WITH "5"
 IF vsW1=2
      SELECT teMporal
      REPLACE f1200est WITH "5"
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Ord_1200b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "1200", "V", "F1200NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "1200", "V", "F1200FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "1200", "V", "F1200NTT", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "V", "F1200DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "V", "F1200NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "V", "F1200FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "V", "F1200NTT", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_1200b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                CASE vsW0=4
                     SEEK UPPER(vnTt)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK itDo+isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
                CASE vsW0=4
                     SEEK UPPER(inTt)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK utDo+usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
                CASE vsW0=4
                     SEEK UPPER(unTt)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1200b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
           STORE inTt TO vnTt
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
           STORE vnTt TO cnTt
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
           STORE vnTt TO inTt
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
           STORE vnTt TO xnTt
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
           STORE cnTt TO vnTt
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
           STORE xnTt TO vnTt
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
           STORE unTt TO vnTt
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1200tdo TO vtDo
           STORE f1200ser TO vsEr
           STORE f1200doc TO vdOc
           STORE f1200nom TO vnOm
           STORE f1200fem TO vfEm
           STORE f1200ntt TO vnTt
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1200tdo TO utDo
           STORE f1200ser TO usEr
           STORE f1200doc TO udOc
           STORE f1200nom TO unOm
           STORE f1200fem TO ufEm
           STORE f1200ntt TO unTt
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1200tdo TO itDo
           STORE f1200ser TO isEr
           STORE f1200doc TO idOc
           STORE f1200nom TO inOm
           STORE f1200fem TO ifEm
           STORE f1200ntt TO inTt
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_1200b
 SET READBORDER ON
 DO rs1_1200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_1200b WITH "R"
 DO CASE
      CASE wtPo$"23"
           DO prEsiona WITH "4", "R_CONS03", mmF1, mmC1
      CASE wtPo="4"
           DO prEsiona WITH "4", "R_CONS14", mmF1, mmC1
      OTHERWISE
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Apr_1200b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea Aprobar este Documento?"
 ptX2 = "PEDIDO DE VENTA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT caB_ped
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF wtPo="2"
      REPLACE f1200est WITH "2"
      REPLACE f1200da1 WITH DATE()
      REPLACE f1200ti1 WITH TIME()
 ELSE
      REPLACE f1200est WITH "3"
      REPLACE f1200da2 WITH DATE()
      REPLACE f1200ti2 WITH TIME()
 ENDIF
 REPLACE f1200usu WITH muSu
 IF vsW1=2
      SELECT teMporal
      IF wtPo="2"
           REPLACE f1200est WITH "2"
           REPLACE f1200da1 WITH DATE()
           REPLACE f1200ti1 WITH TIME()
      ELSE
           REPLACE f1200est WITH "3"
           REPLACE f1200da1 WITH DATE()
           REPLACE f1200ti1 WITH TIME()
      ENDIF
      REPLACE f1200usu WITH muSu
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Clp_1200b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+24.8 .AND.  ;
           mcCc<=mmC1+33.4 .AND. wtPo="4"
           STORE k_Alt_s TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="4"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1200b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1200b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_1200b WITH "F", "v"
           DO diS_1200b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+1, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+2, 02 SAY "la información."
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 23 SAY ":" STYLE "BT"
 @ pfIl+7, 23 SAY ":" STYLE "BT"
 @ pfIl+8, 23 SAY ":" STYLE "BT"
 @ pfIl+9, 23 SAY ":" STYLE "BT"
 @ pfIl+6, 04 SAY "ESC" STYLE "BT"
 @ pfIl+7, 04 SAY "F10" STYLE "BT"
 @ pfIl+8, 04 SAY "F1" STYLE "BT"
 @ pfIl+9, 04 SAY "F6" STYLE "BT"
 @ pfIl+6, 25 SAY "Regresar a Cabecera"
 @ pfIl+7, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 25 SAY "Ayuda del Programa"
 @ pfIl+9, 25 SAY "Cambio de Orden de Consulta"
 STORE pfIl+10 TO pfIl
 IF wtPo$"23"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "F8" STYLE "BT"
      @ pfIl, 25 SAY "Aprobación del Documento"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 23 SAY ":" STYLE "BT"
 @ pfIl+1, 23 SAY ":" STYLE "BT"
 @ pfIl+2, 23 SAY ":" STYLE "BT"
 @ pfIl+3, 23 SAY ":" STYLE "BT"
 @ pfIl+4, 23 SAY ":" STYLE "BT"
 @ pfIl+5, 23 SAY ":" STYLE "BT"
 @ pfIl+6, 23 SAY ":" STYLE "BT"
 @ pfIl+7, 23 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F9" STYLE "BT"
 @ pfIl+1, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+2, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 04 SAY "HOME" STYLE "BT"
 @ pfIl+7, 04 SAY "END" STYLE "BT"
 @ pfIl+0, 25 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+1, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+2, 25 SAY "Línea inferior"
 @ pfIl+3, 25 SAY "Línea superior"
 @ pfIl+4, 25 SAY "Página siguiente"
 @ pfIl+5, 25 SAY "Página anterior"
 @ pfIl+6, 25 SAY "Primera línea"
 @ pfIl+7, 25 SAY "Última línea"
 STORE pfIl+8 TO pfIl
 DO CASE
      CASE wtPo="4"
           @ pfIl+0, 23 SAY ":" STYLE "BT"
           @ pfIl+1, 23 SAY ":" STYLE "BT"
           @ pfIl+0, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+1, 04 SAY "ALT S" STYLE "BT"
           @ pfIl+0, 25 SAY "Anulación del Documento"
           @ pfIl+1, 25 SAY "Retornar el Stock"
      CASE mpAl="S" .AND. wtPo>"4"
           @ pfIl, 23 SAY ":" STYLE "BT"
           @ pfIl, 04 SAY "ALT C" STYLE "BT"
           @ pfIl, 25 SAY "Arreglar Pedidos para PALM"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes,  saldrá un mensaje,  en caso de encontrase se regresará"
 @ pfIl+03, 02 SAY "al Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
