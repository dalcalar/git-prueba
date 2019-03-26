 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_4240b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO ibOl
 ENDIF
 IF LEN(ALLTRIM(ibOl))=0 .OR. (vsW0=1 .AND. (isEr+ibOl>vsEr+vbOl .OR.  ;
    usEr+ubOl<vsEr+vbOl)) .OR. (vsW0=2 .AND. (UPPER(inOm)>UPPER(vnOm)  ;
    .OR. UPPER(unOm)<UPPER(vnOm))) .OR. (vsW0=3 .AND. (ifEm>vfEm .OR.  ;
    ufEm<vfEm))
      GOTO TOP
      DO veR_lock
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vsEr+vbOl
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
      ENDCASE
      SET NEAR OFF
      DO veR_lock
      IF EOF()
           GOTO BOTTOM
           DO veR_lock
      ENDIF
      DO paN_4240b
      DO muE_4240b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_4240b WITH "v"
      IF EOF()
           GOTO TOP
           DO veR_lock
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vsEr+vbOl
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
           ENDCASE
           SET NEAR OFF
           DO veR_lock
           IF EOF()
                GOTO BOTTOM
                DO veR_lock
           ENDIF
           DO muE_4240b WITH "F", "v"
      ENDIF
      DO seE_4240b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f4240ser+f4240bol=vsEr+vbOl
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           DO muE_4240b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_4240b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_4240b WITH "i"
      SET NEAR OFF
      DO paN_4240b
      DO muE_4240b WITH "i", "v"
      DO seE_4240b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_4240b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4240b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4240b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_4240b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_4240b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_4240b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO p01_4240a
                SET READBORDER ON
                DO geT_4240a
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO exC_4240b
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f4240est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f4240est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f4240est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_4240b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_4240b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT caBecera
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "4240", "K", "F4240BOL", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deTalle
                SEEK vsEr+vbOl
                DO veR_lock
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pkC4240c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE f4240ser+f4240bol=isEr+ibOl .AND. vsEr+vbOl=isEr+ibOl
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vbOl=isEr+ibOl
                                    DO paN_4240b
                               OTHERWISE
                                    DO seE_4240b WITH "v"
                                    DO diS_4240b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_4240b WITH "i", "v"
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE f4240ser+f4240bol=usEr+ubOl .AND. vsEr+vbOl=usEr+ubOl
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vbOl=usEr+ubOl
                                    SKIP -INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO paN_4240b
                               OTHERWISE
                                    DO seE_4240b WITH "v"
                                    DO diS_4240b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_4240b WITH "u", "v"
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "N"
                          SKIP
                          DO veR_lock
                          IF vsEr+vbOl=usEr+ubOl
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_4240a WITH ffIl, ffIl+1
                               DO muE_4240b WITH "F", "v"
                               DO muE_4240b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO veR_lock
                               DO muE_4240b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                               DO veR_lock
                          ELSE
                               DO muE_4240b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "N"
                          SKIP -1
                          DO veR_lock
                          IF vsEr+vbOl=isEr+ibOl
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_4240a WITH ifIl, ifIl+1
                               DO muE_4240b WITH "F", "i"
                               DO muE_4240b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO muE_4240b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_4240b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4240b WITH "u"
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4240b
                          STORE ifIl TO vfIl
                          DO muE_4240b WITH "i", "v"
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4240b WITH "i"
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          DO veR_lock
                          IF BOF()
                               GOTO TOP
                               DO veR_lock
                          ENDIF
                          DO paN_4240b
                          STORE ifIl TO vfIl
                          DO muE_4240b WITH "i", "v"
                          DO seE_4240b WITH "v"
                          DO diS_4240b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4240b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_4240b
 DO pn1_4240b WITH "1"
ENDPROC
*
PROCEDURE Pa1_4240b
 DO pn1_4240b WITH "2"
ENDPROC
*
PROCEDURE Pn1_4240b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_4240b WITH "F", "i"
 DO muE_4240b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f4240ser+f4240bol=xsEr+xbOl
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_4240b WITH "N"
      ENDCASE
      DO muE_4240b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
      DO veR_lock
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_4240a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4240b
 PARAMETER ptIp
 PRIVATE peSt, pmOn, ptOt
 STORE f4240ing-f4240dct TO ptOt
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f4240est="1"
           STORE "Dig" TO peSt
      CASE f4240est="2"
           STORE "Imp" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscz
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f4240est="9"
           STORE "Anu" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscr
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 DO CASE
      CASE f4240mon=1
           STORE "S/." TO pmOn
      CASE f4240mon=2
           STORE "US$" TO pmOn
      OTHERWISE
           STORE "   " TO pmOn
 ENDCASE
 @vFIL,mCO0+14.9 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+00.0 Say F4240SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,mCO0+04.5 Say F4240BOL Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+19.7 Say F4240FEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 DO CASE
      CASE mrEs="1"
           @vFIL,mCO0+032.6 Say F4240NOM Font "&mLetAri",9 Style "NQ" Size 1,42.9 Pict "@S45"
           @vFIL,mCO0+076.1 Say pMON     Font "&mLetAri",9 Style "NQ" Size 1,04.0
           @vFIL,mCO0+080.8 Say F4240ING Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+095.3 Say F4240DCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+110.0 Say F4240APO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
      CASE mrEs="2"
           @vFIL,mCO0+032.6 Say F4240NOM Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S61"
           @vFIL,mCO0+093.3 Say pMON     Font "&mLetAri",9 Style "NQ" Size 1,04.0
           @vFIL,mCO0+098.0 Say F4240ING Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+112.5 Say F4240DCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+127.2 Say F4240APO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           IF ptOt<=999999.99 .AND. ptOt>-999999.99
                @vFIL,mCO0+141.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           ELSE
                @vFIL,mCO0+141.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "9999999.99"
           ENDIF
      CASE mrEs="3"
           @vFIL,mCO0+032.6 Say F4240NOM Font "&mLetAri",9 Style "NQ" Size 1,66.5 Pict "@S68"
           @vFIL,mCO0+099.7 Say F4240DNI Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "@S08"
           @vFIL,mCO0+111.7 Say F4240DFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+124.5 Say F4240HFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+137.4 Say pMON     Font "&mLetAri",9 Style "NQ" Size 1,04.0
           @vFIL,mCO0+142.0 Say F4240ING Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+156.5 Say F4240DCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+171.2 Say F4240APO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           IF ptOt<=999999.99 .AND. ptOt>-999999.99
                @vFIL,mCO0+185.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           ELSE
                @vFIL,mCO0+185.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "9999999.99"
           ENDIF
      CASE mrEs="4"
           @vFIL,mCO0+032.6 Say F4240NOM Font "&mLetAri",9 Style "NQ" Size 1,66.5 Pict "@S68"
           @vFIL,mCO0+099.7 Say F4240DNI Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "@S08"
           @vFIL,mCO0+111.7 Say F4240DFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+124.5 Say F4240HFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+137.4 Say F4240CAR Font "&mLetAri",9 Style "NQ" Size 1,25.3 Pict "@S25"
           @vFIL,mCO0+163.4 Say F4240ARE Font "&mLetAri",9 Style "NQ" Size 1,25.3 Pict "@S25"
           @vFIL,mCO0+189.4 Say pMON     Font "&mLetAri",9 Style "NQ" Size 1,04.0
           @vFIL,mCO0+194.0 Say F4240ING Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+208.5 Say F4240DCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+223.2 Say F4240APO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           IF ptOt<=999999.99 .AND. ptOt>-999999.99
                @vFIL,mCO0+237.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           ELSE
                @vFIL,mCO0+237.8 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "9999999.99"
           ENDIF
      CASE mrEs>="5"
           @vFIL,mCO0+032.6 Say F4240NOM Font "&mLetAri",9 Style "NQ" Size 1,66.5 Pict "@S68"
           @vFIL,mCO0+099.7 Say F4240DNI Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "@S08"
           @vFIL,mCO0+111.7 Say F4240DIS Font "&mLetAri",9 Style "NQ" Size 1,26.5 Pict "@S29"
           @vFIL,mCO0+138.9 Say F4240DFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+151.7 Say F4240HFE Font "&mLetAri",9 Style "NQ" Size 1,12.2
           @vFIL,mCO0+164.5 Say F4240CAR Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S23"
           @vFIL,mCO0+185.5 Say F4240ARE Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S23"
           @vFIL,mCO0+206.5 Say pMON     Font "&mLetAri",9 Style "NQ" Size 1,04.0
           @vFIL,mCO0+211.1 Say F4240ING Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+225.7 Say F4240DCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           @vFIL,mCO0+240.3 Say F4240APO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           IF ptOt<=999999.99 .AND. ptOt>-999999.99
                @vFIL,mCO0+254.9 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
           ELSE
                @vFIL,mCO0+254.9 Say pTOT  Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "9999999.99"
           ENDIF
 ENDCASE
 RELEASE peSt, pmOn, ptOt
ENDPROC
*
PROCEDURE Opc_4240b
 DO rs2_4240a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4240b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_4240a
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
                DO rs1_4240b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_4240a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4240b
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl, vtIp, vnTi
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caBecera
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4240nom)))<>0
                          DO muE_4240a
                          DO grA_4240a
                          SELECT caBecera
                     ENDIF
                     SKIP
                     DO veR_lock
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
      DO CASE
           CASE mrEs="1"
                @iFIL+1.8,mCO0+21.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="2"
                @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="4"
                @iFIL+1.8,mCO0+71.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs>="5"
                @iFIL+1.8,mCO0+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_4240b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO veR_lock
      DO paN_4240b
      DO muE_4240b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_4240b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_4240b WITH "v", "x"
 DO orD_4240b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 DO seE_4240b WITH "i"
 DO pa1_4240b
 IF cfIl=0
      DO muE_4240b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_4240b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_4240b WITH "v"
 DO diS_4240b WITH "R"
ENDPROC
*
PROCEDURE Est_4240b
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_4240b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_4240b WITH "v"
 IF EOF() .OR. BOF()
      SET NEAR ON
      DO seE_4240b WITH "v"
      SET NEAR OFF
      IF EOF() .OR. BOF()
           GOTO TOP
           DO veR_lock
           SET NEAR ON
           DO seE_4240b WITH "i"
           SET NEAR OFF
      ENDIF
      DO muE_4240b WITH "F", "x"
      GOTO TOP
      DO veR_lock
      SET NEAR ON
      DO seE_4240b WITH "i"
      SET NEAR OFF
      STORE 00 TO cfIl
      DO pa1_4240b
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_4240b WITH "i", "v"
      ELSE
           STORE cfIl TO vfIl
           DO muE_4240b WITH "x", "v"
      ENDIF
 ENDIF
 DO seE_4240b WITH "v"
 IF  .NOT. EOF() .AND.  .NOT. BOF()
      DO diS_4240b WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Anu_4240b
 PRIVATE ptX1, ptX2, poPc, pnUm
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "BOLETA DE PAGO No.:"+vsEr+"-"+vbOl
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caBecera
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "4240", "K", "F4240BOL", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SEEK vsEr+vbOl
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vbOl
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caBecera
 REPLACE f4240est WITH "9"
 REPLACE f4240usu WITH muSu
 REPLACE f4240maq WITH mmAq
 REPLACE f4240dat WITH DATE()
 REPLACE f4240tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f4240est WITH "9"
      REPLACE f4240usu WITH muSu
      REPLACE f4240maq WITH mmAq
      REPLACE f4240dat WITH DATE()
      REPLACE f4240tim WITH TIME()
 ENDIF
 SELECT deTalle
 DO WHILE .T.
      SEEK vsEr+vbOl
      DO veR_lock
      IF EOF()
           EXIT
      ENDIF
      STORE f4241ite TO vrEc
      SEEK vsEr+vbOl+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vsEr+vbOl+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f4241ser WITH SPACE(03)
      REPLACE f4241bol WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 UNLOCK ALL
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Eli_4240b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 ptX2 = "BOLETA DE PAGO No.:"+vsEr+"-"+vbOl
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT caBecera
 DO orD_0000a WITH "4240", "K", "F4240BOL", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vsEr+vbOl
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vbOl
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f4240ser WITH SPACE(03)
 REPLACE f4240bol WITH SPACE(07)
 DELETE
 SELECT teMporal
 DELETE
 PACK
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_4240b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_4240b WITH "i"
 SET NEAR OFF
 DO paN_4240b
 STORE ifIl TO vfIl
 DO muE_4240b WITH "i", "v"
 DO seE_4240b WITH "v"
 DO diS_4240b WITH "R"
 STORE k_Tab TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Rs1_4240b
 SET READBORDER ON
 DO rs1_4240a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_4240b WITH "R"
 DO CASE
      CASE wtPo$"13"
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
      CASE wtPo="2"
           DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Exc_4240b
 PRIVATE peSt, piTe, pmOn
 WAIT WINDOW NOWAIT "Leyendo"
 DO xl0_0000a WITH "Boletas_de_Pago", "Stocks", 14
 pxLs.ceLls(3, 01).vaLue = "Numero"
 pxLs.ceLls(3, 02).vaLue = "Estado"
 pxLs.ceLls(3, 03).vaLue = "Fecha"
 pxLs.ceLls(3, 04).vaLue = "Desde"
 pxLs.ceLls(3, 05).vaLue = "Hasta"
 pxLs.ceLls(3, 06).vaLue = "Trabajador"
 pxLs.ceLls(3, 07).vaLue = "DNI"
 pxLs.ceLls(3, 08).vaLue = "Cargo"
 pxLs.ceLls(3, 09).vaLue = "Area"
 pxLs.ceLls(3, 10).vaLue = "Moneda"
 pxLs.ceLls(3, 11).vaLue = "Ingresos"
 pxLs.ceLls(3, 12).vaLue = "Descuentos"
 pxLs.ceLls(3, 13).vaLue = "Aportaciones"
 pxLs.ceLls(3, 14).vaLue = "Neto Recibido"
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO veR_lock
 DO coLbln
 STORE 4 TO piTe
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT f4240ser+"-"+f4240bol
      DO CASE
           CASE f4240est="1"
                STORE "Dig" TO peSt
           CASE f4240est="2"
                STORE "Imp" TO peSt
           CASE f4240est="9"
                STORE "Anu" TO peSt
           OTHERWISE
                STORE "   " TO peSt
      ENDCASE
      DO CASE
           CASE f4240mon=1
                STORE "S/." TO pmOn
           CASE f4240mon=2
                STORE "US$" TO pmOn
           OTHERWISE
                STORE "   " TO pmOn
      ENDCASE
      pxLs.raNge(pxLs.ceLls(piTe,01), pxLs.ceLls(piTe, ;
                10)).hoRizontalalignment = 3
      pxLs.raNge(pxLs.ceLls(piTe,11), pxLs.ceLls(piTe, ;
                14)).hoRizontalalignment = 1
      pxLs.raNge(pxLs.ceLls(piTe,11), pxLs.ceLls(piTe,14)).nuMberformat =  ;
                "###,##0.00"
      pxLs.ceLls(piTe, 6).hoRizontalalignment = 2
      pxLs.ceLls(piTe, 7).nuMberformat = "@"
      pxLs.ceLls(piTe, 8).hoRizontalalignment = 2
      pxLs.ceLls(piTe, 9).hoRizontalalignment = 2
      pxLs.ceLls(piTe, 01).vaLue = f4240ser+"-"+f4240bol
      pxLs.ceLls(piTe, 02).vaLue = peSt
      pxLs.ceLls(piTe, 03).vaLue = f4240fem
      pxLs.ceLls(piTe, 04).vaLue = f4240dfe
      pxLs.ceLls(piTe, 05).vaLue = f4240hfe
      pxLs.ceLls(piTe, 06).vaLue = ALLTRIM(f4240nom)
      pxLs.ceLls(piTe, 07).vaLue = f4240dni
      pxLs.ceLls(piTe, 08).vaLue = ALLTRIM(f4240car)
      pxLs.ceLls(piTe, 09).vaLue = ALLTRIM(f4240are)
      pxLs.ceLls(piTe, 10).vaLue = pmOn
      pxLs.ceLls(piTe, 11).vaLue = f4240ing
      pxLs.ceLls(piTe, 12).vaLue = f4240dct
      pxLs.ceLls(piTe, 13).vaLue = f4240apo
      pxLs.ceLls(piTe, 14).vaLue = f4240ing-f4240dct
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE piTe+1 TO piTe
      SKIP
      DO veR_lock
 ENDDO
 DO xl1_0000a
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_4240b WITH "v"
 RELEASE peSt
ENDPROC
*
PROCEDURE Ord_4240b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "4240", "K", "F4240BOL", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "4240", "K", "F4240NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "4240", "K", "F4240FEM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "K", "F4240BOL", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "K", "F4240NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "K", "F4240FEM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_4240b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vsEr+vbOl
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vsEr+vbOl
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+vbOl
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK isEr+ibOl
                CASE vsW0=2
                     SEEK UPPER(inOm)+isEr+ibOl
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+ibOl
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK usEr+ubOl
                CASE vsW0=2
                     SEEK UPPER(unOm)+usEr+ubOl
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+usEr+ubOl
           ENDCASE
 ENDCASE
 DO veR_lock
ENDPROC
*
PROCEDURE Mue_4240b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE isEr TO vsEr
           STORE ibOl TO vbOl
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
      CASE pmU1="u" .AND. pmU2="v"
           STORE usEr TO vsEr
           STORE ubOl TO vbOl
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xsEr TO vsEr
           STORE xbOl TO vbOl
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
      CASE pmU1="c" .AND. pmU2="v"
           STORE csEr TO vsEr
           STORE cbOl TO vbOl
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vsEr TO isEr
           STORE vbOl TO ibOl
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
      CASE pmU1="v" .AND. pmU2="x"
           STORE vsEr TO xsEr
           STORE vbOl TO xbOl
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vsEr TO csEr
           STORE vbOl TO cbOl
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f4240ser TO vsEr
           STORE f4240bol TO vbOl
           STORE f4240nom TO vnOm
           STORE f4240fem TO vfEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f4240ser TO isEr
           STORE f4240bol TO ibOl
           STORE f4240nom TO inOm
           STORE f4240fem TO ifEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f4240ser TO usEr
           STORE f4240bol TO ubOl
           STORE f4240nom TO unOm
           STORE f4240fem TO ufEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4240b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="2"
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
           DO diS_4240b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_4240b WITH "i"
           SKIP INT(mfIl-ifIl)
           DO veR_lock
           STORE 99 TO mkEy
           DO muE_4240b WITH "F", "v"
           DO diS_4240b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4240b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+02, 02 SAY "la información."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+11, 23 SAY ":" STYLE "BT"
 @ pfIl+12, 23 SAY ":" STYLE "BT"
 @ pfIl+13, 23 SAY ":" STYLE "BT"
 @ pfIl+14, 23 SAY ":" STYLE "BT"
 @ pfIl+15, 23 SAY ":" STYLE "BT"
 @ pfIl+16, 23 SAY ":" STYLE "BT"
 @ pfIl+17, 23 SAY ":" STYLE "BT"
 @ pfIl+18, 23 SAY ":" STYLE "BT"
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F6" STYLE "BT"
 @ pfIl+10, 04 SAY "F8" STYLE "BT"
 @ pfIl+11, 04 SAY "F9" STYLE "BT"
 @ pfIl+12, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+13, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+14, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+15, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+16, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+17, 04 SAY "HOME" STYLE "BT"
 @ pfIl+18, 04 SAY "END" STYLE "BT"
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 25 SAY "Pasar datos a Excel"
 @ pfIl+11, 25 SAY "Buscar palabra o frase en Comentario o Pedido"
 @ pfIl+12, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+13, 25 SAY "Línea inferior"
 @ pfIl+14, 25 SAY "Línea superior"
 @ pfIl+15, 25 SAY "Página siguiente"
 @ pfIl+16, 25 SAY "Página anterior"
 @ pfIl+17, 25 SAY "Primera línea"
 @ pfIl+18, 25 SAY "Última línea"
 DO CASE
      CASE wtPo="2"
           @ pfIl+19, 23 SAY ":" STYLE "BT"
           @ pfIl+19, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+19, 25 SAY "Anulación del Documento"
      CASE wtPo="3"
           @ pfIl+19, 23 SAY ":" STYLE "BT"
           @ pfIl+19, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+19, 25 SAY "Eliminación del Documento"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_4240b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del Nombre del Trabajador.Si la"
 @ pfIl+01, 02 SAY  ;
   "palabra o frase no se encuentra contenida en ninguno de estos,  saldrá "
 @ pfIl+02, 02 SAY "un mensaje, en caso de encontrase se regresará al detalle."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 13 SAY "ESC" STYLE "BT"
 @ pfIl+07, 13 SAY "F10" STYLE "BT"
 @ pfIl+08, 13 SAY "F1" STYLE "BT"
 @ pfIl+09, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 23 SAY "Regresar a Detalle"
 @ pfIl+07, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 23 SAY "Ayuda del Programa"
 @ pfIl+09, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
