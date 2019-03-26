 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2910b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(inOm)>UPPER(vnOm) .OR. UPPER(unOm)<UPPER(vnOm))) .OR. (vsW0=3  ;
    .AND. (ifEm>vfEm .OR. ufEm<vfEm))
      IF LEN(ALLTRIM(idOc))=0
           STORE "1" TO veSt
      ENDIF
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1 .AND. wtPo<>"3"
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2 .AND. wtPo<>"3"
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3 .AND. wtPo<>"3"
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=1
                SEEK veSt+vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK veSt+ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK veSt+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                     2)+SUBSTR(DTOC(vfEm), 1, 2)
      ENDCASE
      SET NEAR OFF
      DO CASE
           CASE EOF()
                GOTO BOTTOM
           CASE wtPo="3" .AND. f2910est>"2"
                SKIP -1
      ENDCASE
      DO paN_2910b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_2910b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_2910b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1 .AND. wtPo<>"3"
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2 .AND. wtPo<>"3"
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3 .AND. wtPo<>"3"
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK veSt+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
           ENDCASE
           SET NEAR OFF
           DO CASE
                CASE EOF()
                     GOTO BOTTOM
                CASE wtPo="3" .AND. f2910est>"2"
                     SKIP -1
           ENDCASE
           DO muE_2910b WITH "F", "v"
      ENDIF
      DO seE_2910b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF wtPo="3" .AND. f2910est>"2"
                EXIT
           ENDIF
           IF f2910tdo+f2910ser+f2910doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2910b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2910b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2910b WITH "i"
      SET NEAR OFF
      DO paN_2910b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_2910b WITH "i", "v"
      DO seE_2910b WITH "v"
 ENDIF
 DO diS_2910b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2910b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2910b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2910b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2910b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Proveedor:"        Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                ENDCASE
                SET READBORDER ON
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+16 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
                     CASE vsW0=2
                          @iFIL-4,mCO0+18 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,28 Pict "@S30"    Color ,&mColBlN
                     CASE vsW0=3
                          @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
                ENDCASE
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. wtPo="2"
                SAVE SCREEN TO vpAn_11
                DO paC2910d
                DO CASE
                     CASE vsW1=1
                          SELECT caBecera
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
           CASE mkEy=k_F8 .AND. f2910est="3" .AND. wtPo="1"
                STORE "Documento ya se encuentra Procesado..." TO mmSj
           CASE mkEy=k_F8 .AND. f2910est="9" .AND. wtPo="1"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Enter .AND. f2910est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2910est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="2"
                DO deS_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. wtPo="1"
                DO prO_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_2910b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT deTalle
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO paC2910c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caBecera
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                IF wtPo="3"
                     SET NEAR ON
                     SEEK "1"
                     SET NEAR OFF
                ENDIF
                DO CASE
                     CASE f2910tdo+f2910ser+f2910doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2910b
                               OTHERWISE
                                    DO seE_2910b WITH "v"
                                    DO diS_2910b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2910b WITH "i", "v"
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                IF wtPo="3"
                     SET NEAR ON
                     SEEK "2"+"ZZZZZZZZZZZZ"
                     SET NEAR OFF
                ELSE
                     GOTO BOTTOM
                ENDIF
                IF wtPo="3"
                     IF EOF() .OR. f2910est>"2"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2910tdo+f2910ser+f2910doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2910b
                               OTHERWISE
                                    DO seE_2910b WITH "v"
                                    DO diS_2910b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2910b WITH "u", "v"
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. (wtPo="3" .AND. f2910est>"2")
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2910a WITH ifIl, ffIl+1
                               DO muE_2910b WITH "F", "v"
                               DO muE_2910b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2910b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2910b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. (wtPo="3" .AND. f2910est>"2")
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2910a WITH ifIl, ffIl+1
                               DO muE_2910b WITH "F", "v"
                               DO muE_2910b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2910b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2910b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2910b WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. (wtPo="3" .AND. f2910est>"2")
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2910b
                          STORE ifIl TO vfIl
                          DO muE_2910b WITH "i", "v"
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2910b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. (wtPo="3" .AND. f2910est>"2")
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. (wtPo="3" .AND. f2910est>"2")
                               GOTO TOP
                               IF wtPo="3"
                                    SET NEAR ON
                                    SEEK "1"
                                    SET NEAR OFF
                               ENDIF
                          ENDIF
                          DO paN_2910b
                          STORE ifIl TO vfIl
                          DO muE_2910b WITH "i", "v"
                          DO seE_2910b WITH "v"
                          DO diS_2910b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2910b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2910b
 DO pn1_2910b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2910b
 DO pn1_2910b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2910b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2910b WITH "F", "i"
 DO muE_2910b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF wtPo="3" .AND. f2910est>"2"
           EXIT
      ENDIF
      DO CASE
           CASE ptPo="2" .AND. f2910tdo+f2910ser+f2910doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2910b WITH "N"
      ENDCASE
      DO muE_2910b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2910a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2910b
 PARAMETER ptIp
 PRIVATE peSt
 DO CASE
      CASE f2910est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      CASE f2910est="2"
           STORE "Pen" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscv
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
      CASE f2910est="3"
           STORE "Pro" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscz
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f2910est="9"
           STORE "Anu" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscr
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      CASE f2910est="1"
           STORE "   " TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
 ENDCASE
 @vFIL,mCO0+20.2 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say F2910TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFIL,mCO0+004.4 Say F2910SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,mCO0+009.4 Say F2910DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+025.5 Say F2910NOM Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
 @vFIL,mCO0+052.4 Say F2910FPA Font "&mLetAri",9 Style "NQ" Size 1,52.4 Pict "@S53"
 @vFIL,mCO0+105.8 Say F2910FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+119.5 Say F2910CM1 Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
 @vFIL,mCO0+145.5 Say F2910USU Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S30"
 @vFIL,mCO0+175.0 Say Dtoc(F2910DAT)+" - "+F2910TIM Font "&mLetAri",9 Style "NQ" Size 1,18.7
ENDPROC
*
PROCEDURE Opc_2910b
 DO rs2_2910a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2910b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_2910a
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
                DO rs1_2910b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_2910a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2910b
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
                SELECT caBecera
                GOTO TOP
                IF wtPo="3"
                     SET NEAR ON
                     SEEK "1"
                     SET NEAR OFF
                ENDIF
                DO WHILE  .NOT. EOF()
                     IF wtPo="3" .AND. f2910est>"2"
                          EXIT
                     ENDIF
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2910nom)))<>0
                          DO muE_2910a
                          DO grA_2910a
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
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
      DO orD_2910b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      IF wtPo="3"
           SET NEAR ON
           SEEK "1"
           SET NEAR OFF
      ENDIF
      DO paN_2910b
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_2910b WITH "i", "v"
      DO seE_2910b WITH "v"
      DO diS_2910b WITH "R"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2910b
 STORE 99 TO mkEy
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2910b WITH "v", "x"
 DO orD_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2910b WITH "i"
 DO pa1_2910b
 IF cfIl=00
      DO muE_2910b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2910b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2910b WITH "v"
 DO diS_2910b WITH "R"
ENDPROC
*
PROCEDURE Pro_2910b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea Procesar este Documento?"
 ptX2 = "ORDEN DE COMPRA No.:"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caBecera
 STORE 99 TO mkEy
 DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      IF vsW1=1 .AND. vsW0<>1
           DO orD_2910b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_2910b WITH "v"
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT caBecera
 REPLACE f2910est WITH "3"
 REPLACE f2910usu WITH muSu
 REPLACE f2910dat WITH DATE()
 REPLACE f2910tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2910est WITH "3"
      REPLACE f2910usu WITH muSu
      REPLACE f2910dat WITH DATE()
      REPLACE f2910tim WITH TIME()
 ENDIF
 UNLOCK
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2910b WITH "v"
 DO diS_2910b WITH "R"
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Des_2910b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea DES-Procesar este Documento?"
 ptX2 = "ORDEN DE COMPRA No.:"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caBecera
 STORE 99 TO mkEy
 DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      IF vsW1=1 .AND. vsW0<>1
           DO orD_2910b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_2910b WITH "v"
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT caBecera
 REPLACE f2910est WITH "1"
 REPLACE f2910usu WITH muSu
 REPLACE f2910dat WITH DATE()
 REPLACE f2910tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2910est WITH "1"
      REPLACE f2910usu WITH muSu
      REPLACE f2910dat WITH DATE()
      REPLACE f2910tim WITH TIME()
 ENDIF
 UNLOCK
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2910b WITH "v"
 DO diS_2910b WITH "R"
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Anu_2910b
 PRIVATE ptX1, ptX2, poPc, pcAn, ppRe, pmOn, ptPc, ptCa
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "ORDEN DE COMPRA No.:"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caBecera
 STORE 99 TO mkEy
 DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      IF vsW1=1 .AND. vsW0<>1
           DO orD_2910b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_2910b WITH "v"
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f2910mon TO pmOn
 STORE f2910tca TO ptCa
 SELECT moNedas
 SEEK pmOn
 IF EOF()
      STORE 1 TO ptPc
 ELSE
      STORE f9226tpo TO ptPc
 ENDIF
 SELECT deTalle
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      STORE f2911ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 DO WHILE .T.
      SELECT deTalle
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2911can-f2911ctd TO pcAn
      STORE f2911pre TO ppRe
      REPLACE f2911tdo WITH SPACE(02)
      REPLACE f2911ser WITH SPACE(03)
      REPLACE f2911doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT stO_tot
      GOTO TOP
      REPLACE f2119orp WITH f2119orp-pcAn
      DO CASE
           CASE ptPc=1
                REPLACE f2119vo1 WITH f2119vo1-(pcAn*ppRe)
                REPLACE f2119vo2 WITH f2119vo2-((pcAn*ppRe)/ptCa)
           CASE ptPc=2
                REPLACE f2119vo2 WITH f2119vo2-(pcAn*ppRe)
                REPLACE f2119vo1 WITH f2119vo1-((pcAn*ppRe)*ptCa)
      ENDCASE
      UNLOCK
 ENDDO
 SELECT caBecera
 REPLACE f2910est WITH "9"
 REPLACE f2910usu WITH muSu
 REPLACE f2910dat WITH DATE()
 REPLACE f2910tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2910est WITH "9"
      REPLACE f2910usu WITH muSu
      REPLACE f2910dat WITH DATE()
      REPLACE f2910tim WITH TIME()
 ENDIF
 UNLOCK
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2910b WITH "v"
 DO diS_2910b WITH "R"
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Rs1_2910b
 SET READBORDER ON
 DO rs1_2910a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2910b WITH "R"
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
PROCEDURE Exc_2910b
 SAVE SCREEN TO vpAn_11
 DO CASE
      CASE wtPo="3"
           vXLS=PutFile("Archivo Excel:","&mVIN"+"Ordenes_de_Compras_Pendientes.XLS","XLS")
      OTHERWISE
           vXLS=PutFile("Archivo Excel:","&mVIN"+"Ordenes_de_Compras.XLS","XLS")
 ENDCASE
 RESTORE SCREEN FROM vpAn_11
 IF LEN(ALLTRIM(vxLs))<>0
      DO CASE
           CASE AT(" ", vxLs)<>0
                STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                      TO mmSj
                DO poNmsj
                = INKEY(0.05)
                RETURN
           CASE wtPo="3"
                Export to &vXLS Fiel F2910TDO,F2910SER,F2910DOC,F2910FEM,F2910NOM,F2910EMB,F2910FLL,F2910SIG,F2910TCA,F2910FPA,F2910TPO,F2910TTT,F2910PRO,F2910PLZ,F2910PLA, F2910TCO,F2910ENT,F2910PED,F2910CM1,F2910CM2,F2910CM3,F2910CM4,F2910CAN,F2910CM5,F2910CM6,F2910VAP,F2910FDI,F2910HDI,F2910EST Type XLS for F2910EST $ "12"
                DO xlS_0000a
           OTHERWISE
                Export to &vXLS Fiel F2910TDO,F2910SER,F2910DOC,F2910FEM,F2910NOM,F2910EMB,F2910FLL,F2910SIG,F2910TCA,F2910FPA,F2910TPO,F2910TTT,F2910PRO,F2910PLZ,F2910PLA, F2910TCO,F2910ENT,F2910PED,F2910CM1,F2910CM2,F2910CM3,F2910CM4,F2910CAN,F2910CM5,F2910CM6,F2910VAP,F2910FDI,F2910HDI,F2910EST Type XLS
                DO xlS_0000a
      ENDCASE
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2910b WITH "v"
ENDPROC
*
PROCEDURE Ord_2910b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. wtPo<>"3" .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
      CASE vsW0=2 .AND. wtPo<>"3" .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910NOM", "A"
      CASE vsW0=3 .AND. wtPo<>"3" .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910FEM", "A"
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910DO1", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910NO1", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "2910", "A", "F2910FE1", "A"
      CASE vsW0=1 .AND. wtPo<>"3"
           DO orD_0000a WITH "TMP", "A", "F2910DOC", "A"
      CASE vsW0=2 .AND. wtPo<>"3"
           DO orD_0000a WITH "TMP", "A", "F2910NOM", "A"
      CASE vsW0=3 .AND. wtPo<>"3"
           DO orD_0000a WITH "TMP", "A", "F2910FEM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2910DO1", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2910NO1", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2910FE1", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_2910b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1 .AND. wtPo<>"3"
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2 .AND. wtPo<>"3"
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3 .AND. wtPo<>"3"
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK veSt+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1 .AND. wtPo<>"3"
                     SEEK itDo+isEr+idOc
                CASE vsW0=2 .AND. wtPo<>"3"
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3 .AND. wtPo<>"3"
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
                CASE vsW0=1
                     SEEK ieSt+itDo+isEr+idOc
                CASE vsW0=2
                     SEEK ieSt+UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK ieSt+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                          4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1 .AND. wtPo<>"3"
                     SEEK utDo+usEr+udOc
                CASE vsW0=2 .AND. wtPo<>"3"
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3 .AND. wtPo<>"3"
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
                CASE vsW0=1
                     SEEK ueSt+utDo+usEr+udOc
                CASE vsW0=2
                     SEEK ueSt+UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK ueSt+SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm),  ;
                          4, 2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2910b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ieSt TO veSt
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
      CASE pmU1="c" .AND. pmU2="v"
           STORE ceSt TO veSt
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
      CASE pmU1="u" .AND. pmU2="v"
           STORE ueSt TO veSt
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xeSt TO veSt
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
      CASE pmU1="v" .AND. pmU2="i"
           STORE veSt TO ieSt
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
      CASE pmU1="v" .AND. pmU2="x"
           STORE veSt TO xeSt
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
      CASE pmU1="v" .AND. pmU2="c"
           STORE veSt TO ceSt
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2910est TO veSt
           STORE f2910tdo TO vtDo
           STORE f2910ser TO vsEr
           STORE f2910doc TO vdOc
           STORE f2910nom TO vnOm
           STORE f2910fem TO vfEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2910est TO ieSt
           STORE f2910tdo TO itDo
           STORE f2910ser TO isEr
           STORE f2910doc TO idOc
           STORE f2910nom TO inOm
           STORE f2910fem TO ifEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2910est TO ueSt
           STORE f2910tdo TO utDo
           STORE f2910ser TO usEr
           STORE f2910doc TO udOc
           STORE f2910nom TO unOm
           STORE f2910fem TO ufEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2910b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO exC_2910b
           STORE 99 TO mkEy
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
           mcCc<=mmC1+85.80
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+07 .AND.  ;
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
           DO diS_2910b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2910b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2910b WITH "F", "v"
           DO diS_2910b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2910b
 = INKEY(0.01)
 PRIVATE pfIl
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
 IF wtPo="2"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "F7" STYLE "BT"
      @ pfIl, 25 SAY "Cambiar datos de Estado"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF wtPo$"12"
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F8" STYLE "BT"
      DO CASE
           CASE wtPo="1"
                @ pfIl+0, 25 SAY "Procesar Orden de Compra para Importaciones"
                @ pfIl+1, 25 SAY "NO CANCELA lo pendiente"
                STORE pfIl+2 TO pfIl
           CASE wtPo="2"
                @ pfIl+0, 25 SAY "DES-Procesar Orden de Compra"
                STORE pfIl+1 TO pfIl
      ENDCASE
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
 IF wtPo="2"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 25 SAY "Anulación del Documento"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2910b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del Nombre del Proveedor."
 @ pfIl+01, 02 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de estos,"
 @ pfIl+02, 02 SAY  ;
   "saldrá un mensaje, en caso de encontrase se regresará al detalle."
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
