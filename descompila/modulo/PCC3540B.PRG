 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_sal_bancos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3540b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO inUm
 ENDIF
 IF LEN(ALLTRIM(inUm))=0 .OR. (vsW0=1 .AND. (iaNo+imEs+isEr+inUm>vaNo+ ;
    vmEs+vsEr+vnUm .OR. uaNo+umEs+usEr+unUm<vaNo+vmEs+vsEr+vnUm)) .OR.  ;
    (vsW0=2 .AND. (iaNo+imEs+idIa+isEr+inUm>vaNo+vmEs+vdIa+vsEr+vnUm .OR.  ;
    uaNo+umEs+udIa+usEr+unUm<vaNo+vmEs+vdIa+vsEr+vnUm)) .OR. (vsW0=3  ;
    .AND. (UPPER(igLo)>UPPER(vgLo) .OR. UPPER(ugLo)<UPPER(vgLo))) .OR.  ;
    (vsW0=4 .AND. (UPPER(inTi)>UPPER(vnTi) .OR. UPPER(unTi)<UPPER(vnTi)))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vaNo+vmEs+vsEr+vnUm
           CASE vsW0=2
                SEEK vaNo+vmEs+vdIa+vsEr+vnUm
           CASE vsW0=3
                SEEK ALLTRIM(UPPER(vgLo))
           CASE vsW0=4
                SEEK ALLTRIM(UPPER(vnTi))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_3540b
      DO muE_3540b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3520b IN PCC3520B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vaNo+vmEs+vsEr+vnUm
                CASE vsW0=2
                     SEEK vaNo+vmEs+vdIa+vsEr+vnUm
                CASE vsW0=3
                     SEEK ALLTRIM(UPPER(vgLo))
                CASE vsW0=4
                     SEEK ALLTRIM(UPPER(vnTi))
                CASE vsW0=5
                     SEEK vrCb
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3540b WITH "F", "v"
      ENDIF
      DO seE_3520b IN PCC3520B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3540ano+f3540mes+f3540ser+f3540num=vaNo+vmEs+vsEr+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3540b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3520b IN PCC3520B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3520b IN PCC3520B WITH "i"
      SET NEAR OFF
      DO paN_3540b
      DO muE_3540b WITH "i", "v"
      STORE ifIl TO vfIl
      DO seE_3520b IN PCC3520B WITH "v"
 ENDIF
 DO diS_3540b WITH "R"
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
           DO reS_3540b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3540b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3540b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3540b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3540b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
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
                SET READBORDER ON
                DO p01_3540a
                SET READBORDER OFF
                DO caM_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO tpO_3540a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. f3540est="2" .AND. wtPo="2"
                STORE "Documento ya se encuentra Procesado..." TO mmSj
           CASE mkEy=k_F8 .AND. f3540est="3" .AND. wtPo="2"
                STORE "Documento se encuentra Cerrado..." TO mmSj
           CASE mkEy=k_F8 .AND. f3540est="9" .AND. wtPo="2"
                STORE "Documento se encuentra Anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3540est="9" .AND. wtPo="3"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3540est="3" .AND. wtPo="3"
                STORE "Documento se encuentra Cerrado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO anU_3540b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. wtPo="2"
                DO prO_3540b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3540b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                DO pcC3540c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO CASE
                     CASE vsW1=1
                          SELECT caB_sal_bancos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3540ano+f3540mes+f3540ser+f3540num=iaNo+imEs+ ;
                          isEr+inUm .AND. vaNo+vmEs+vsEr+vnUm=iaNo+imEs+ ;
                          isEr+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vsEr+vnUm=iaNo+imEs+isEr+inUm
                                    DO paN_3540b
                               OTHERWISE
                                    DO seE_3520b IN PCC3520B WITH "v"
                                    DO diS_3540b WITH "N"
                          ENDCASE
                          DO muE_3540b WITH "i", "v"
                          STORE ifIl TO vfIl
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3540ano+f3540mes+f3540ser+f3540num=uaNo+umEs+ ;
                          usEr+unUm .AND. vaNo+vmEs+vsEr+vnUm=uaNo+umEs+ ;
                          usEr+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vsEr+vnUm=uaNo+umEs+usEr+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3540b
                               OTHERWISE
                                    DO seE_3520b IN PCC3520B WITH "v"
                                    DO diS_3540b WITH "N"
                          ENDCASE
                          DO muE_3540b WITH "u", "v"
                          STORE ufIl TO vfIl
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "N"
                          SKIP
                          IF vaNo+vmEs+vsEr+vnUm=uaNo+umEs+usEr+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3510a IN PCC3510A WITH ifIl, ffIl+1
                               DO muE_3540b WITH "F", "v"
                               DO muE_3540b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3540b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3540b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "N"
                          SKIP -1
                          IF vaNo+vmEs+vsEr+vnUm=iaNo+imEs+isEr+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3510a IN PCC3510A WITH ifIl, ffIl+1
                               DO muE_3540b WITH "F", "i"
                               DO muE_3540b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3540b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3540b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3520b IN PCC3520B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3540b
                          DO muE_3540b WITH "i", "v"
                          STORE ifIl TO vfIl
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3520b IN PCC3520B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3540b
                          DO muE_3540b WITH "i", "v"
                          STORE ifIl TO vfIl
                          DO seE_3520b IN PCC3520B WITH "v"
                          DO diS_3540b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3520b IN PCC3520B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3540b
 DO pn1_3540b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3540b
 DO pn1_3540b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3540b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3540b WITH "F", "i"
 DO muE_3540b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3540ano+f3540mes+f3540ser+f3540num=xaNo+ ;
                xmEs+xsEr+xnUm
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3540b WITH "N"
      ENDCASE
      DO muE_3540b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3510a IN PCC3510A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3540b
 PARAMETER ptIp
 PRIVATE peSt, ptPo, psIg, pcL1, pcL2, pcL3, plEt, ptM1, ptM2, ptM3
 DO CASE
      CASE f3540est="1"
           STORE "Dig" TO peSt
      CASE f3540est="2"
           STORE "Pro" TO peSt
      CASE f3540est="3"
           STORE "Cer" TO peSt
      OTHERWISE
           STORE "Anu" TO peSt
 ENDCASE
 DO CASE
      CASE f3540tpo=1
           STORE "Por Rendir" TO ptPo
      CASE f3540tpo=2
           STORE "Emisión de Cheques (CCO)" TO ptPo
      CASE f3540tpo=3
           STORE "Notas de Cargo del Banco" TO ptPo
      CASE f3540tpo=4
           STORE "Cancelaciones de Compras" TO ptPo
      CASE f3540tpo=5
           STORE "Depósito a Caja" TO ptPo
      OTHERWISE
           STORE "Sin Tipo de Movim." TO ptPo
 ENDCASE
 DO CASE
      CASE f3540mon=1 .AND. f3540tot<>0
           STORE "S/." TO psIg
      CASE f3540mon=2 .AND. f3540tot<>0
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 STORE mcO0+28.4 TO pcL1
 STORE mcO0+114.0 TO pcL2
 STORE mcO0+135.5 TO pcL3
 STORE 9 TO plEt
 STORE 4.2 TO ptM1
 STORE 20.0 TO ptM2
 STORE 38.2 TO ptM3
 DO CASE
      CASE f3540est="2" .AND. ptIp="N"
           DO coLscz
      CASE f3540est="2" .AND. ptIp="R"
           DO coLblz
      CASE f3540est="3" .AND. ptIp="N"
           DO coLscv
      CASE f3540est="3" .AND. ptIp="R"
           DO coLblv
      CASE f3540est="9" .AND. ptIp="N"
           DO coLscr
      CASE f3540est="9" .AND. ptIp="R"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pCL1 Say pEST Font "&mLetAri",pLET Style "NQ" Size 1,pTM1
 DO CASE
      CASE ptIp="N" .AND. f3540est="9"
           DO coLscp
      CASE ptIp="R" .AND. f3540est="9"
           DO coLblp
      CASE ptIp="N" .AND. f3540tpo=1
           DO coLscr
      CASE ptIp="R" .AND. f3540tpo=1
           DO coLblr
      CASE ptIp="N" .AND. f3540tpo=2
           DO coLscz
      CASE ptIp="R" .AND. f3540tpo=2
           DO coLblz
      CASE ptIp="N" .AND. f3540tpo=3
           DO coLscv
      CASE ptIp="R" .AND. f3540tpo=3
           DO coLblv
      CASE ptIp="N" .AND. f3540tpo=5
           DO coLscf
      CASE ptIp="R" .AND. f3540tpo=5
           DO coLblf
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pCL2 Say Substr(pTPO,1,pTM2+2)     Font "&mLetAri",pLET Style "NQ" Size 1,pTM2
 @vFIL,pCL3 Say Substr(F3540NTI,1,pTM3+2) Font "&mLetAri",pLET Style "NQ" Size 1,pTM3
 DO CASE
      CASE ptIp="N" .AND. f3540est="9"
           DO coLscp
      CASE ptIp="R" .AND. f3540est="9"
           DO coLblp
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say F3540ANO Font "&mLetAri",9 Style "NQ" Size 1,06.0
 @vFIL,mCO0+007.4 Say F3540MES Font "&mLetAri",9 Style "NQ" Size 1,02.8
 @vFIL,mCO0+011.6 Say F3540SER Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,mCO0+017.2 Say F3540NUM Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+034.1 Say F3540DIA Font "&mLetAri",9 Style "NQ" Size 1,02.8
 @vFIL,mCO0+038.3 Say F3540TCA Font "&mLetAri",9 Style "NQ" Size 1,07.1 Pict "99.999"
 @vFIL,mCO0+046.7 Say F3540GLO Font "&mLetAri",9 Style "NQ" Size 1,66.1 Pict "@S68"
 @vFIL,mCO0+175.0 Say pSIG     Font "&mLetAri",9 Style "NQ" Size 1,4.8
 DO CASE
      CASE f3540tot=0
           @vFIL,mCO0+179.8 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
      CASE f3540tot>999999
           @vFIL,mCO0+179.8 Say F3540TOT  Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
      OTHERWISE
           @vFIL,mCO0+179.8 Say F3540TOT  Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
 ENDCASE
 DO muE_3540b WITH "F", "v"
 RELEASE peSt, ptPo, psIg, pcL1, pcL2, pcL3, plEt, ptM1, ptM2, ptM3
ENDPROC
*
PROCEDURE Opc_3540b
 DO rs2_3540a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3540b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_3540a
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
                DO reS_3540b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_3540a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3510b IN PCC3510B
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
                SELECT caB_sal_bancos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_3540b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_3540b
      STORE SPACE(07) TO vnUm
      STORE vsW1 TO csW1
      DO muE_3540b WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_3540b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_3540b WITH "v", "x"
 DO orD_3540b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_3520b IN PCC3520B WITH "i"
 DO pa1_3540b
 IF cfIl=0
      DO muE_3540b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3540b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3520b IN PCC3520B WITH "v"
 DO diS_3540b WITH "R"
ENDPROC
*
PROCEDURE Est_3540b
 DO CASE
      CASE vsW1=1
           SELECT caB_sal_bancos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3540b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3520b IN PCC3520B WITH "v"
 DO diS_3540b WITH "R"
ENDPROC
*
PROCEDURE Anu_3540b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "VOUCHER No.:"+vaNo+"/"+vmEs+"-"+vsEr+"-"+vnUm
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT teMporal_2
 ZAP
 REINDEX
 SELECT caB_sal_bancos
 STORE 99 TO mkEy
 DO orD_0000a WITH "3540", "C", "F3540NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vaNo+vmEs+vsEr+vnUm
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaNo+vmEs+vsEr+vnUm
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f3540tpo TO ctPo
 STORE f3540mon TO cmOn
 STORE f3540tca TO ctCa
 STORE f3540dia TO vdIa
 SELECT deT_sal_bancos
 SEEK vaNo+vmEs+vsEr+vnUm
 DO WHILE  .NOT. EOF() .AND. vaNo+vmEs+vsEr+vnUm=f3541ano+f3541mes+ ;
    f3541ser+f3541num
      STORE f3541tdo TO vtDo
      STORE f3541sr1 TO vsR1
      STORE f3541doc TO vdOc
      SEEK vaNo+vmEs+vsEr+vnUm+vtDo+vsR1+vdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vaNo+vmEs+vsEr+vnUm+vtDo+vsR1+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF ctPo<>1
           SELECT teMporal_2
           SEEK vtDo+vsR1
           IF EOF()
                APPEND BLANK
                REPLACE ftM2tdo WITH vtDo
                REPLACE ftM2ser WITH vsR1
                SELECT ctAs_total_cpras
                SEEK vtDo+vsR1
                IF  .NOT. EOF()
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtDo+vsR1
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ELSE
                     APPEND BLANK
                     REPLACE f3602tdo WITH vtDo
                     REPLACE f3602ser WITH vsR1
                     REPLACE f3602to1 WITH 0
                     REPLACE f3602in1 WITH 0
                     REPLACE f3602ac1 WITH 0
                     REPLACE f3602to2 WITH 0
                     REPLACE f3602in2 WITH 0
                     REPLACE f3602ac2 WITH 0
                ENDIF
           ENDIF
           SELECT peNd_cpras
           SEEK vtDo+vsR1+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsR1+vdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
      ENDIF
      SELECT deT_sal_bancos
      SKIP
 ENDDO
 DO WHILE .T.
      SELECT deT_sal_bancos
      SEEK vaNo+vmEs+vsEr+vnUm
      IF EOF()
           EXIT
      ENDIF
      STORE f3541tdo TO vtDo
      STORE f3541sr1 TO vsR1
      STORE f3541doc TO vdOc
      STORE f3541pag TO vpAg
      REPLACE f3541ano WITH SPACE(04)
      REPLACE f3541mes WITH SPACE(02)
      REPLACE f3541ser WITH SPACE(03)
      REPLACE f3541num WITH SPACE(07)
      DELETE
      UNLOCK
      IF ctPo=1
           LOOP
      ENDIF
      SELECT peNd_cpras
      SEEK vtDo+vsR1+vdOc
      IF  .NOT. EOF()
           DO CASE
                CASE f3600mon=cmOn
                     REPLACE f3600acu WITH f3600acu-vpAg
                CASE cmOn=1
                     REPLACE f3600acu WITH f3600acu-ROUND(vpAg/ctCa, 2)
                OTHERWISE
                     REPLACE f3600acu WITH f3600acu-ROUND(vpAg*ctCa, 2)
           ENDCASE
           IF f3600tot-f3600acu=0
                REPLACE f3600fca WITH CTOD(vdIa+"/"+vmEs+"/"+vaNo)
                REPLACE f3600est WITH "@"
           ELSE
                REPLACE f3600fca WITH CTOD("  /  /    ")
                REPLACE f3600est WITH SPACE(01)
           ENDIF
           UNLOCK
      ENDIF
      SELECT ctAs_total_cpras
      SEEK vtDo+vsR1
      IF  .NOT. EOF()
           IF cmOn=1
                REPLACE f3602ac1 WITH f3602ac1-vpAg
           ELSE
                REPLACE f3602ac2 WITH f3602ac2-vpAg
           ENDIF
      ENDIF
 ENDDO
 SELECT caB_sal_bancos
 REPLACE f3540che WITH "***"+f3540che
 REPLACE f3540est WITH "9"
 REPLACE f3540usu WITH muSu
 REPLACE f3540dat WITH DATE()
 REPLACE f3540tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3540est WITH "9"
      REPLACE f3540usu WITH muSu
      REPLACE f3540dat WITH DATE()
      REPLACE f3540tim WITH TIME()
 ENDIF
 UNLOCK ALL
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Pro_3540b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea Procesar este Documento?"
 ptX2 = "VOUCHER No.:"+vaNo+"/"+vmEs+"-"+vsEr+"-"+vnUm
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT caB_sal_bancos
 STORE 99 TO mkEy
 DO orD_0000a WITH "3540", "C", "F3540NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vaNo+vmEs+vsEr+vnUm
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaNo+vmEs+vsEr+vnUm
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f3540est WITH "2"
 REPLACE f3540usu WITH muSu
 REPLACE f3540dat WITH DATE()
 REPLACE f3540tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3540est WITH "2"
      REPLACE f3540usu WITH muSu
      REPLACE f3540dat WITH DATE()
      REPLACE f3540tim WITH TIME()
 ENDIF
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Res_3540b
 SET READBORDER ON
 DO reS_3540a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3540b WITH "R"
 DO CASE
      CASE wtPo="1"
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
      CASE wtPo="2"
           DO prEsiona WITH "4", "R_CONS17", mmF1, mmC1
      CASE wtPo="3"
           DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Exc_3540b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Voucher de Salida de Bancos", "Voucher", 13
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Voucher"
 pxLs.ceLls(3, 02).vaLue = "Est"
 pxLs.ceLls(3, 03).vaLue = "Dia"
 pxLs.ceLls(3, 04).vaLue = "Glosa"
 pxLs.ceLls(3, 05).vaLue = "Recibo"
 pxLs.ceLls(3, 06).vaLue = "Grupo"
 pxLs.ceLls(3, 07).vaLue = "Tipo de Movimiento"
 pxLs.ceLls(3, 08).vaLue = "Banco"
 pxLs.ceLls(3, 09).vaLue = "Cuenta"
 pxLs.ceLls(3, 10).vaLue = "Operacion"
 pxLs.ceLls(3, 11).vaLue = "T/C"
 pxLs.ceLls(3, 12).vaLue = "Total"
 pxLs.raNge(pxLs.ceLls(3,12), pxLs.ceLls(3,13)).meRge
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(10)).nuMberformat = "@"
 pxLs.coLumns(12).nuMberformat = "@"
 pxLs.coLumns(11).nuMberformat = "0.000"
 pxLs.coLumns(11).hoRizontalalignment = 1
 pxLs.coLumns(13).nuMberformat = "#,###,##0.00"
 pxLs.coLumns(13).hoRizontalalignment = 1
 pxLs.coLumns(01).coLumnwidth = 20.00
 pxLs.coLumns(02).coLumnwidth = 04.50
 pxLs.coLumns(03).coLumnwidth = 03.50
 pxLs.coLumns(04).coLumnwidth = 40.00
 pxLs.coLumns(05).coLumnwidth = 09.20
 pxLs.coLumns(06).coLumnwidth = 15.00
 pxLs.coLumns(07).coLumnwidth = 30.00
 pxLs.coLumns(08).coLumnwidth = 30.00
 pxLs.coLumns(09).coLumnwidth = 30.00
 pxLs.coLumns(10).coLumnwidth = 30.00
 pxLs.coLumns(11).coLumnwidth = 05.00
 pxLs.coLumns(12).coLumnwidth = 04.00
 pxLs.coLumns(13).coLumnwidth = 10.50
 DO CASE
      CASE vsW1=1
           SELECT caB_sal_bancos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      DO muE_3540a
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 1).vaLue = xaNo+"-"+xmEs+"-"+xsEr+"-"+xnUm
      DO CASE
           CASE xeSt="1"
                pxLs.ceLls(viT1, 2).vaLue = "Dig"
           CASE xeSt="2"
                pxLs.ceLls(viT1, 2).vaLue = "Pro"
           CASE xeSt="3"
                pxLs.ceLls(viT1, 2).vaLue = "Cer"
           CASE xeSt="9"
                pxLs.ceLls(viT1, 2).vaLue = "Anu"
      ENDCASE
      pxLs.ceLls(viT1, 3).vaLue = xdIa
      pxLs.ceLls(viT1, 4).vaLue = xgLo
      pxLs.ceLls(viT1, 5).vaLue = xrCb
      DO CASE
           CASE xtPo=1
                pxLs.ceLls(viT1, 6).vaLue = "Por Rendir"
           CASE xtPo=2
                pxLs.ceLls(viT1, 6).vaLue = "Emisión de Cheques (CCO)"
           CASE xtPo=3
                pxLs.ceLls(viT1, 6).vaLue = "Notas de Cargo del Banco"
           CASE xtPo=4
                pxLs.ceLls(viT1, 6).vaLue = "Cancelaciones de Compras"
           CASE xtPo=5
                pxLs.ceLls(viT1, 6).vaLue = "Depósito a Caja"
           OTHERWISE
                pxLs.ceLls(viT1, 6).vaLue = "Sin Tipo de Movim."
      ENDCASE
      pxLs.ceLls(viT1, 07).vaLue = xnTi
      pxLs.ceLls(viT1, 08).vaLue = xnBa
      pxLs.ceLls(viT1, 09).vaLue = xnCt
      pxLs.ceLls(viT1, 10).vaLue = xcHe
      pxLs.ceLls(viT1, 11).vaLue = xtCa
      DO CASE
           CASE xmOn=1
                pxLs.ceLls(viT1, 12).vaLue = "S/."
           OTHERWISE
                pxLs.ceLls(viT1, 12).vaLue = "US$"
      ENDCASE
      pxLs.ceLls(viT1, 13).vaLue = xtOt
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW1=1
                SELECT caB_sal_bancos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 DO xl1_0000a WITH 2
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_sal_bancos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_3520b IN PCC3520B WITH "v"
ENDPROC
*
PROCEDURE Ord_3540b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3540", "C", "F3540NUM", "A"
      CASE vsW0=2 .AND. vsW1=2
           DO orD_0000a WITH "3540", "C", "F3540FEM", "A"
      CASE vsW0=2 .AND. vsW1=3
           DO orD_0000a WITH "3540", "C", "F3540GLO", "A"
      CASE vsW0=3 .AND. vsW1=4
           DO orD_0000a WITH "3540", "C", "F3540NTI", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3540NUM", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3540FEM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3540GLO", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3540NTI", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3540b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
           STORE vsEr TO isEr
           STORE vnUm TO inUm
           STORE vgLo TO igLo
           STORE vnTi TO inTi
      CASE pmU1="v" .AND. pmU2="x"
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
           STORE vsEr TO xsEr
           STORE vnUm TO xnUm
           STORE vgLo TO xgLo
           STORE vnTi TO xnTi
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
           STORE vsEr TO csEr
           STORE vnUm TO cnUm
           STORE vgLo TO cgLo
           STORE vnTi TO cnTi
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE isEr TO vsEr
           STORE inUm TO vnUm
           STORE igLo TO vgLo
           STORE inTi TO vnTi
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE usEr TO vsEr
           STORE unUm TO vnUm
           STORE ugLo TO vgLo
           STORE unTi TO vnTi
      CASE pmU1="x" .AND. pmU2="v"
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
           STORE xsEr TO vsEr
           STORE xnUm TO vnUm
           STORE xgLo TO vgLo
           STORE xnTi TO vnTi
      CASE pmU1="c" .AND. pmU2="v"
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
           STORE csEr TO vsEr
           STORE cnUm TO vnUm
           STORE cgLo TO vgLo
           STORE cnTi TO vnTi
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3540ano TO vaNo
           STORE f3540mes TO vmEs
           STORE f3540dia TO vdIa
           STORE f3540ser TO vsEr
           STORE f3540num TO vnUm
           STORE f3540glo TO vgLo
           STORE f3540nti TO vnTi
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3540ano TO iaNo
           STORE f3540mes TO imEs
           STORE f3540dia TO idIa
           STORE f3540ser TO isEr
           STORE f3540num TO inUm
           STORE f3540glo TO igLo
           STORE f3540nti TO inTi
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3540ano TO uaNo
           STORE f3540mes TO umEs
           STORE f3540dia TO udIa
           STORE f3540ser TO usEr
           STORE f3540num TO unUm
           STORE f3540glo TO ugLo
           STORE f3540nti TO unTi
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3540b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO exC_3540b
           STORE 99 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="2"
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="3"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.6
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.4
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
      CASE mfIl>=vfB1-0.135 .AND. mfIl<=vfB1+1.7 .AND. mcCc>=vcB1-0.5  ;
           .AND. mcCc<=vcB1+1.9
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.2
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.8
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3540b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3520b IN PCC3520B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3540b WITH "F", "v"
           DO diS_3540b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3540b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
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
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F6" STYLE "BT"
 @ pfIl+10, 04 SAY "F7" STYLE "BT"
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 25 SAY "Ver Tipos de Salida"
 STORE pfIl+11 TO pfIl
 IF wtPo="2"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "F8" STYLE "BT"
      @ pfIl, 25 SAY "Procesar Documento"
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
 @ pfIl+0, 25 SAY "Buscar palabra o frase dentro de Glosa/Cheque"
 @ pfIl+1, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+2, 25 SAY "Línea inferior"
 @ pfIl+3, 25 SAY "Línea superior"
 @ pfIl+4, 25 SAY "Página siguiente"
 @ pfIl+5, 25 SAY "Página anterior"
 @ pfIl+6, 25 SAY "Primera línea"
 @ pfIl+7, 25 SAY "Última línea"
 DO CASE
      CASE wtPo="1"
           @ pfIl+8, 23 SAY ":" STYLE "BT"
           @ pfIl+8, 04 SAY "CTRL P" STYLE "BT"
           @ pfIl+8, 25 SAY "Imprimir Listado"
      CASE wtPo="3"
           @ pfIl+8, 23 SAY ":" STYLE "BT"
           @ pfIl+8, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+8, 25 SAY "Anulación del Documento"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
