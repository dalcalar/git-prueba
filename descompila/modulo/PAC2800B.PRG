 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2800b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(icM1)>UPPER(vcM1) .OR. UPPER(ucM1)<UPPER(vcM1))) .OR. (vsW0=3  ;
    .AND. (ifEm>vfEm .OR. ufEm<vfEm))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vcM1))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2800b
      DO muE_2800b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_2700b IN PAC2700B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vcM1))
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2800b WITH "F", "v"
      ENDIF
      DO seE_2700b IN PAC2700B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2800tdo+f2800ser+f2800doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2800b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2700b IN PAC2700B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2700b IN PAC2700B WITH "i"
      SET NEAR OFF
      DO paN_2800b
      DO muE_2800b WITH "i", "v"
      DO seE_2700b IN PAC2700B WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_2800b WITH "R"
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
           DO rs1_2800b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2800b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2800b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2800b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2700b IN PAC2700B
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO ppD_2700b IN PAC2700B WITH "2800"
           CASE mkEy=k_F6
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                SET READBORDER ON
                DO tiT_2700a IN PAC2700A
                SET READBORDER OFF
                DO caM_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO tpO_2800a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_2800b
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f2800est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2800est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_2800b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT caB_sali
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_sali
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO paC2800c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2800tdo+f2800ser+f2800doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2800b
                               OTHERWISE
                                    DO seE_2700b IN PAC2700B WITH "v"
                                    DO diS_2800b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2800b WITH "i", "v"
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2800tdo+f2800ser+f2800doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2800b
                               OTHERWISE
                                    DO seE_2700b IN PAC2700B WITH "v"
                                    DO diS_2800b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2800b WITH "u", "v"
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2700a IN PAC2700A WITH ffIl, ffIl+1
                               DO li1_2700a IN PAC2700A WITH ffIl, ffIl+1
                               DO muE_2800b WITH "F", "v"
                               DO muE_2800b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2800b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2800b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2700a IN PAC2700A WITH ifIl, ifIl+1
                               DO li1_2700a IN PAC2700A WITH ifIl, ifIl+1
                               DO muE_2800b WITH "F", "i"
                               DO muE_2800b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2800b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2800b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2700b IN PAC2700B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2800b
                          STORE ifIl TO vfIl
                          DO muE_2800b WITH "i", "v"
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2700b IN PAC2700B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2800b
                          STORE ifIl TO vfIl
                          DO muE_2800b WITH "i", "v"
                          DO seE_2700b IN PAC2700B WITH "v"
                          DO diS_2800b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2700b IN PAC2700B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2800b
 DO pn1_2800b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2800b
 DO pn1_2800b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2800b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2800b WITH "F", "i"
 DO muE_2800b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f2800tdo+f2800ser+f2800doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2800b WITH "N"
      ENDCASE
      DO muE_2800b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_2700a IN PAC2700A WITH ufIl, ffIl+1
      DO li1_2700a IN PAC2700A WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2800b
 PARAMETER ptIp
 PRIVATE peSt, ptDo, psEr, pdOc, psW0, ptPp
 STORE 0 TO psW0
 STORE f2800tdo TO ptDo
 STORE f2800ser TO psEr
 STORE f2800doc TO pdOc
 STORE f2800tpp TO ptPp
 IF wtPo="3" .OR. (ptPp=5 .OR. ptPp=6)
      SELECT deT_sali
      GOTO TOP
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=ptDo+psEr+pdOc
           DO CASE
                CASE wtPo="3" .AND. f2801cos<=0
                     STORE 1 TO psW0
                     EXIT
                CASE wtPo<>"3" .AND. AT(" ", f2801ngi)<>0
                     STORE 2 TO psW0
                     EXIT
           ENDCASE
           SKIP
      ENDDO
      DO CASE
           CASE vsW1=1
                SELECT caB_sali
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
 ENDIF
 STORE f2800alm TO xaLm
 STORE " " TO vnAl
 SELECT alMacen
 SEEK xaLm
 IF  .NOT. EOF()
      STORE f9214nom TO vnAl
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE f2800est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      CASE f2800est="2"
           STORE "Pro" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscz
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f2800est="4"
           STORE "Gen" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscv
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
      CASE f2800est="9"
           STORE "Anu" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscr
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      OTHERWISE
           STORE "   " TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
 ENDCASE
 @vFIL,mCO0+19.3 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO CASE
      CASE ptIp="N" .AND. psW0=0
           DO coLsc1
      CASE ptIp="R" .AND. psW0=0
           DO coLbln
      CASE ptIp="N" .AND. psW0=1
           DO coLscz
      CASE ptIp="R" .AND. psW0=1
           DO coLblz
      CASE ptIp="N" .AND. psW0=2
           DO coLscv
      CASE ptIp="R" .AND. psW0=2
           DO coLblv
 ENDCASE
 DO CASE
      CASE mrEs$"34"
           @vFIL,mCO0+000.0 Say F2800TDO Font "&mLetAri",9 Style "NQ" Size 1,03.0
           @vFIL,mCO0+003.6 Say F2800SER Font "&mLetAri",9 Style "NQ" Size 1,04.3
           @vFIL,mCO0+008.5 Say F2800DOC Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+100.1 Say F2800FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+113.3 Say F2800NTI Font "&mLetAri",9 Style "NQ" Size 1,35.9 Pict "@S38"
           DO CASE
                CASE wtPo="3"
                     @vFIL,mCO0+149.9 Say F2800TD1+":"+F2800SR1+"-"+F2800DO1 Font "&mLetAri",8 Style "NQ" Size 1,28.5 Pict "@S30"
                     @vFIL,mCO0+179.2 Say F2800COS                           Font "&mLetAri",8 Style "NQ" Size 1,20.7 Pict "999,999,999.9999"
                OTHERWISE
                     @vFIL,mCO0+149.9 Say F2800USU                           Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S30"
                     @vFIL,mCO0+179.2 Say Dtoc(F2800DAT)+" - "+F2800TIM      Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S20"
           ENDCASE
           IF mrEs="4"
                @vFIL,mCO0+200.5 Say xALM Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                @vFIL,mCO0+207.1 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
           ENDIF
      OTHERWISE
           @vFIL,mCO0+000.0 Say F2800TDO Font "&mLetAri",9 Style "NQ" Size 1,03.0
           @vFIL,mCO0+003.6 Say F2800SER Font "&mLetAri",9 Style "NQ" Size 1,04.3
           @vFIL,mCO0+008.5 Say F2800DOC Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+100.3 Say F2800FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+113.5 Say F2800NTI Font "&mLetAri",9 Style "NQ" Size 1,42.9 Pict "@S45"
           DO CASE
                CASE wtPo="3"
                     @vFIL,mCO0+157.1 Say F2800TD1+":"+F2800SR1+"-"+F2800DO1 Font "&mLetAri",8 Style "NQ" Size 1,28.7 Pict "@S30"
                     @vFIL,mCO0+186.4 Say F2800COS                           Font "&mLetAri",8 Style "NQ" Size 1,20.7 Pict "999,999,999.9999"
                OTHERWISE
                     @vFIL,mCO0+157.1 Say F2800USU                           Font "&mLetAri",9 Style "NQ" Size 1,28.7 Pict "@S30"
                     @vFIL,mCO0+186.4 Say Dtoc(F2800DAT)+" - "+F2800TIM      Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S20"
           ENDCASE
           IF mrEs>"3"
                @vFIL,mCO0+207.8 Say xALM Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                @vFIL,mCO0+214.4 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDIF
 ENDCASE
 DO di2_2800b
 RELEASE peSt, ptDo, psEr, pdOc, psW0, ptPp
ENDPROC
*
PROCEDURE Di2_2800b
 DO CASE
      CASE mrEs$"34" .AND. vsW2=1
           @vFIL,mCO0+24.1 Say F2800CM1 Font "&mLetAri",9 Style "NQ" Size 1,62.0 Pict "@S65"
           @vFIL,mCO0+86.8 Say F2800PED Font "&mLetAri",9 Style "NQ" Size 1,12.7 Pict "@S15"
      CASE mrEs$"34"
           @vFIL,mCO0+24.1 Say F2800CM1 Font "&mLetAri",9 Style "NQ" Size 1,75.4 Pict "@S78"
      CASE vsW2=1
           @vFIL,mCO0+24.1 Say F2800CM1 Font "&mLetAri",9 Style "NQ" Size 1,62.1 Pict "@S65"
           @vFIL,mCO0+86.9 Say F2800PED Font "&mLetAri",9 Style "NQ" Size 1,12.7 Pict "@S15"
      OTHERWISE
           @vFIL,mCO0+24.1 Say F2800CM1 Font "&mLetAri",9 Style "NQ" Size 1,75.4 Pict "@S78"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_2800b
 DO rs2_2700a IN PAC2700A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2800b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_2700a IN PAC2700A
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
                DO rs1_2800b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_2700a IN PAC2700A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2700b IN PAC2700B
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
                SELECT caB_sali
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2800cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2800ped)))<>0
                          DO muE_2800a
                          DO grA_2800a
                          SELECT caB_sali
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
      DO paL_2700a IN PAC2700A
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_sali
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2800b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2800b
      DO muE_2800b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2800b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2800b WITH "v", "x"
 DO orD_2800b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2700b IN PAC2700B WITH "i"
 DO pa1_2800b
 IF cfIl=0
      DO muE_2800b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2800b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2700b IN PAC2700B WITH "v"
 DO diS_2800b WITH "R"
ENDPROC
*
PROCEDURE Est_2800b
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2800b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2700b IN PAC2700B WITH "v"
 DO diS_2800b WITH "R"
ENDPROC
*
PROCEDURE Anu_2800b
 PRIVATE ptX1, ptX2, poPc, pnUm
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "GUÍA DE SALIDA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caB_sali
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
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
 STORE SUBSTR(DTOC(f2800fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2800fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2800fem), 7, 4) TO xaNo
 STORE f2800tpp TO ctPp
 STORE "1" TO ctP1
 STORE "2" TO ctI1
 SELECT prOductos
 SET FILTER TO
 SELECT teMporal_2
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 REINDEX
 SELECT deT_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE f2801cod TO vcOd
      STORE f2801sgi TO vsGi
      STORE f2801ngi TO vnGi
      STORE f2801cdg TO vcDg
      IF LEN(ALLTRIM(vnGi))<>0
           SELECT teMporal_2
           SEEK vsGi+vnGi
           IF EOF()
                APPEND BLANK
                REPLACE ftM2ser WITH vsGi
                REPLACE ftM2doc WITH vnGi
                SELECT caB_ingr
                SEEK "GI"+vsGi+vnGi
                IF  .NOT. EOF()
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH "GI"+vsGi+vnGi
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                SELECT teMporal_3
                SEEK ALLTRIM(vcDg)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM3cdg WITH vcDg
                     SELECT prOductos
                     SEEK ALLTRIM(vcDg)+"*"
                     IF EOF()
                          SELECT deT_sali
                          SKIP
                          LOOP
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     SELECT prO_tot
                     SEEK ALLTRIM(vcDg)+"*"
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f2118cod WITH vcDg
                          REPLACE f2118sto WITH 0
                          REPLACE f2118caj WITH 0
                          REPLACE f2118cpe WITH 0
                          REPLACE f2118cjp WITH 0
                          REPLACE f2118sts WITH 0
                          REPLACE f2118orp WITH 0
                          REPLACE f2118vcp WITH 0
                          REPLACE f2118vcs WITH 0
                          REPLACE f2118prm WITH 0
                          UNLOCK
                          SEEK ALLTRIM(vcDg)+"*"
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
      SELECT teMporal_3
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM3cdg WITH vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_sali
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118vcp WITH 0
                REPLACE f2118vcs WITH 0
                REPLACE f2118prm WITH 0
                UNLOCK
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT deT_sali
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_sali
 REPLACE f2800est WITH "9"
 REPLACE f2800usu WITH muSu
 REPLACE f2800maq WITH mmAq
 REPLACE f2800dat WITH DATE()
 REPLACE f2800tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2800est WITH "9"
      REPLACE f2800usu WITH muSu
      REPLACE f2800maq WITH mmAq
      REPLACE f2800dat WITH DATE()
      REPLACE f2800tim WITH TIME()
 ENDIF
 SELECT deT_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE f2801ite TO vrEc
      STORE f2801cod TO vcOd
      STORE f2801can TO vcAn
      STORE f2801caj TO vcAj
      STORE f2801sgi TO vsGi
      STORE f2801ngi TO vnGi
      STORE f2801cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2801tdo WITH SPACE(02)
      REPLACE f2801ser WITH SPACE(03)
      REPLACE f2801doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ ;
                   ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2990cod WITH SPACE(mtMa)
           DELETE
           UNLOCK
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 0 TO vsLd, vsLc
      ELSE
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           SET NEAR OFF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
                SKIP
           ELSE
                STORE 0 TO vsLd, vsLc
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
      ENDIF
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2990ano TO caNo
           STORE f2990mes TO cmEs
           STORE f2990dia TO cdIa
           STORE f2990tpo TO ctPo
           STORE f2990tpp TO ctPp
           STORE f2990tdo TO ctDo
           STORE f2990ser TO csEr
           STORE f2990doc TO cdOc
           SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ ;
                   ctPp+ctDo+csEr+cdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE f2990tpo="1" .AND. f2990tpp="0"
                     STORE f2990can TO vsLd
                     STORE f2990caj TO vsLc
                CASE f2990tpo="1"
                     STORE vsLd+f2990can TO vsLd
                     STORE vsLc+f2990caj TO vsLc
                CASE f2990tpo="2"
                     STORE vsLd-f2990can TO vsLd
                     STORE vsLc-f2990caj TO vsLc
           ENDCASE
           REPLACE f2990sld WITH vsLd
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990slc WITH vsLc
           ENDIF
           UNLOCK
           SKIP
      ENDDO
      DO grA_stock IN PAI2700A WITH vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcDg)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_ingr
      SEEK ALLTRIM(vcDg)+"*"+"GI"+vsGi+vnGi
      IF  .NOT. EOF()
           STORE f2701ite TO vrEc
           SEEK ALLTRIM(vcDg)+"*"+"GI"+vsGi+vnGi+STR(vrEc, 4, 0)
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcDg)+"*"+"GI"+vsGi+vnGi+ ;
                   STR(vrEc, 4, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2701tdo WITH SPACE(02)
           REPLACE f2701ser WITH SPACE(03)
           REPLACE f2701doc WITH SPACE(07)
           DELETE
           UNLOCK
           SELECT caB_ingr
           SEEK "GI"+vsGi+vnGi
           STORE f2700tpp TO ctP0
           STORE SUBSTR(DTOC(f2700fem), 1, 2) TO cdI1
           STORE SUBSTR(DTOC(f2700fem), 4, 2) TO cmE1
           STORE SUBSTR(DTOC(f2700fem), 7, 4) TO caN1
           DO CASE
                CASE ctP0=3
                     STORE "1" TO ctP2
                     STORE "3" TO ctI2
                CASE ctP0=4
                     STORE "0" TO ctP2
                     STORE "1" TO ctI2
                OTHERWISE
                     STORE "1" TO ctP2
                     STORE "1" TO ctI2
           ENDCASE
           SELECT deT_ingr
           DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK "GI"+vsGi+vnGi
           IF EOF()
                SELECT caB_ingr
                REPLACE f2700est WITH "9"
                UNLOCK
           ENDIF
           SELECT deT_ingr
           DO orD_0000a WITH "2701", "A", "F2701COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT kaRdex
           STORE vcDg TO vcOd
           SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI2+ctP2+"GI"+vsGi+vnGi
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ ;
                        ctI2+ctP2+"GI"+vsGi+vnGi
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 0 TO vsLd, vsLc
           ELSE
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI2+ctP2+"GI"+vsGi+vnGi
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                IF mcAj=1 .AND. vsRr=1
                     REPLACE f2990slc WITH vsLc
                ENDIF
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT deT_sali
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_sali
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2802cod TO vcOd
      STORE f2802rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2802tdo WITH SPACE(02)
      REPLACE f2802ser WITH SPACE(03)
      REPLACE f2802doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2803tdo+f2803ser+f2803doc=vtDo+vsEr+vdOc
      STORE f2803cod TO vcOd
      STORE f2803ped TO vpD1
      STORE f2803sec TO vsEc
      STORE f2803pla TO vpLa
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2803tdo WITH SPACE(02)
      REPLACE f2803ser WITH SPACE(03)
      REPLACE f2803doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
           vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+ ;
                   xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2991cod WITH SPACE(mtMa)
           DELETE
           UNLOCK
      ENDIF
      DO grA_serie IN PAI2700A
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT seR_sali
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           SET NEAR OFF
      ENDIF
 ENDDO
 UNLOCK ALL
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Rs1_2800b
 SET READBORDER ON
 DO rs1_2800a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2800b WITH "R"
 DO CASE
      CASE wtPo$"134"
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
PROCEDURE Xls_2800b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE wtPo="3"
           DO xl0_0000a WITH "Guías de Salida Valorizadas", "Listado", 15
      OTHERWISE
           DO xl0_0000a WITH "Guías de Salida", "Listado", 11
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 1).vaLue = "Documento"
 pxLs.ceLls(3, 4).vaLue = "Est"
 pxLs.ceLls(3, 5).vaLue = "Fecha"
 pxLs.ceLls(3, 6).vaLue = "Pedido"
 pxLs.ceLls(3, 7).vaLue = "Comentario"
 pxLs.ceLls(3, 8).vaLue = "Tipo de Salida"
 pxLs.ceLls(3, 9).vaLue = "Almacén"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(4)).nuMberformat = "@"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).meRge
 DO CASE
      CASE wtPo="3"
           pxLs.ceLls(3, 10).vaLue = "Doc.Relac"
           pxLs.ceLls(3, 13).vaLue = "Costo"
           pxLs.ceLls(3, 14).vaLue = "Usuario"
           pxLs.ceLls(3, 15).vaLue = "Fecha/Hora"
           pxLs.raNge(pxLs.coLumns(06), pxLs.coLumns(12)).nuMberformat = "@"
           pxLs.raNge(pxLs.coLumns(14), pxLs.coLumns(15)).nuMberformat = "@"
           pxLs.raNge(pxLs.ceLls(3,10), pxLs.ceLls(3,12)).meRge
           pxLs.coLumns(13).nuMberformat = "###,###,##0.0000"
      OTHERWISE
           pxLs.ceLls(3, 10).vaLue = "Usuario"
           pxLs.ceLls(3, 11).vaLue = "Fecha/Hora"
           pxLs.raNge(pxLs.coLumns(06), pxLs.coLumns(11)).nuMberformat = "@"
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))+ ;
           "... Leyendo Documento: "+f2800tdo+":"+f2800ser+"-"+f2800doc
      STORE f2800alm TO xaLm
      STORE " " TO vnAl
      DO CASE
           CASE f2800est="1"
                STORE "Dig" TO xeSt
           CASE f2800est="2"
                STORE "Pro" TO xeSt
           CASE f2800est="4"
                STORE "Gen" TO xeSt
           CASE f2800est="9"
                STORE "Anu" TO xeSt
           OTHERWISE
                STORE "   " TO xeSt
      ENDCASE
      SELECT alMacen
      SEEK xaLm
      IF  .NOT. EOF()
           STORE f9214nom TO vnAl
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caB_sali
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = f2800tdo
      pxLs.ceLls(viT1, 02).vaLue = f2800ser
      pxLs.ceLls(viT1, 03).vaLue = f2800doc
      pxLs.ceLls(viT1, 04).vaLue = xeSt
      pxLs.ceLls(viT1, 05).vaLue = f2800fem
      pxLs.ceLls(viT1, 06).vaLue = f2800ped
      pxLs.ceLls(viT1, 07).vaLue = f2800cm1
      pxLs.ceLls(viT1, 08).vaLue = f2800nti
      pxLs.ceLls(viT1, 09).vaLue = vnAl
      DO CASE
           CASE wtPo="3"
                pxLs.ceLls(viT1, 10).vaLue = f2800td1
                pxLs.ceLls(viT1, 11).vaLue = f2800sr1
                pxLs.ceLls(viT1, 12).vaLue = f2800do1
                pxLs.ceLls(viT1, 13).vaLue = f2800cos
                pxLs.ceLls(viT1, 14).vaLue = f2800usu
                pxLs.ceLls(viT1, 15).vaLue = DTOC(f2800dat)+"/"+f2800tim
           OTHERWISE
                pxLs.ceLls(viT1, 10).vaLue = f2800usu
                pxLs.ceLls(viT1, 11).vaLue = DTOC(f2800dat)+"/"+f2800tim
      ENDCASE
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW1=1
                SELECT caB_sali
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2700b IN PAC2700B WITH "v"
ENDPROC
*
PROCEDURE Ord_2800b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2800", "A", "F2800CM1", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "2800", "A", "F2800FEM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2800DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2800CM1", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2800FEM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2800b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE icM1 TO vcM1
           STORE ifEm TO vfEm
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ucM1 TO vcM1
           STORE ufEm TO vfEm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xcM1 TO vcM1
           STORE xfEm TO vfEm
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE ccM1 TO vcM1
           STORE cfEm TO vfEm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vcM1 TO icM1
           STORE vfEm TO ifEm
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vcM1 TO xcM1
           STORE vfEm TO xfEm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vcM1 TO ccM1
           STORE vfEm TO cfEm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2800tdo TO vtDo
           STORE f2800ser TO vsEr
           STORE f2800doc TO vdOc
           STORE f2800cm1 TO vcM1
           STORE f2800fem TO vfEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2800tdo TO itDo
           STORE f2800ser TO isEr
           STORE f2800doc TO idOc
           STORE f2800cm1 TO icM1
           STORE f2800fem TO ifEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2800tdo TO utDo
           STORE f2800ser TO usEr
           STORE f2800doc TO udOc
           STORE f2800cm1 TO ucM1
           STORE f2800fem TO ufEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2800b
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
           DO diS_2800b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2700b IN PAC2700B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2800b WITH "F", "v"
           DO diS_2800b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
