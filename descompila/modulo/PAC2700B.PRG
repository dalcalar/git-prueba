 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2700b
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
      DO paN_2700b
      DO muE_2700b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_2700b WITH "v"
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
           DO muE_2700b WITH "F", "v"
      ENDIF
      DO seE_2700b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2700tdo+f2700ser+f2700doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2700b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2700b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2700b WITH "i"
      SET NEAR OFF
      DO paN_2700b
      DO muE_2700b WITH "i", "v"
      DO seE_2700b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_2700b WITH "R"
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
           DO rs1_2700b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2700b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2700b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2700b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO ppD_2700b WITH "2700"
           CASE mkEy=k_F6
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                SET READBORDER ON
                DO tiT_2700a
                SET READBORDER OFF
                DO caM_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO tpO_2700a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_2700b
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f2700est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2700est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_2700b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT caB_ingr
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_ingr
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO paC2700c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_2700b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2700tdo+f2700ser+f2700doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2700b
                               OTHERWISE
                                    DO seE_2700b WITH "v"
                                    DO diS_2700b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2700b WITH "i", "v"
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2700tdo+f2700ser+f2700doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2700b
                               OTHERWISE
                                    DO seE_2700b WITH "v"
                                    DO diS_2700b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2700b WITH "u", "v"
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2700a WITH ffIl, ffIl+1
                               DO li1_2700a WITH ffIl, ffIl+1
                               DO muE_2700b WITH "F", "v"
                               DO muE_2700b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2700b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2700b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2700a WITH ifIl, ifIl+1
                               DO li1_2700a WITH ifIl, ifIl+1
                               DO muE_2700b WITH "F", "i"
                               DO muE_2700b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2700b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2700b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2700b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2700b
                          STORE ifIl TO vfIl
                          DO muE_2700b WITH "i", "v"
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2700b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2700b
                          STORE ifIl TO vfIl
                          DO muE_2700b WITH "i", "v"
                          DO seE_2700b WITH "v"
                          DO diS_2700b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2700b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2700b
 DO pn1_2700b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2700b
 DO pn1_2700b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2700b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2700b WITH "F", "i"
 DO muE_2700b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f2700tdo+f2700ser+f2700doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2700b WITH "N"
      ENDCASE
      DO muE_2700b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_2700a WITH ufIl, ffIl+1
      DO li1_2700a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2700b
 PARAMETER ptIp
 PRIVATE peSt, ptDo, psEr, pdOc, psW0, ptPp
 STORE 0 TO psW0
 STORE f2700tdo TO ptDo
 STORE f2700ser TO psEr
 STORE f2700doc TO pdOc
 STORE f2700tpp TO ptPp
 IF wtPo="3" .OR. (ptPp=5 .OR. ptPp=6)
      SELECT deT_ingr
      GOTO TOP
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=ptDo+psEr+pdOc
           DO CASE
                CASE wtPo="3" .AND. f2701cos<=0
                     STORE 1 TO psW0
                     EXIT
                CASE wtPo<>"3" .AND. AT(" ", f2701ngs)<>0
                     STORE 2 TO psW0
                     EXIT
           ENDCASE
           SKIP
      ENDDO
      DO CASE
           CASE vsW1=1
                SELECT caB_ingr
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
 ENDIF
 STORE f2700alm TO xaLm
 STORE " " TO vnAl
 SELECT alMacen
 SEEK xaLm
 IF  .NOT. EOF()
      STORE f9214nom TO vnAl
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE f2700est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      CASE f2700est="2"
           STORE "Pro" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscz
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f2700est="4"
           STORE "Gen" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLscv
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
      CASE f2700est="9"
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
      CASE psW0=1
           @vFIL,mCO0     Say F2700TDO Font "&mLetAri",9 Style "BQ" Size 1,2.5
           @vFIL,mCO0+3.6 Say F2700SER Font "&mLetAri",9 Style "BQ" Size 1,3.7
           @vFIL,mCO0+8.5 Say F2700DOC Font "&mLetAri",9 Style "BQ" Size 1,8.2
      OTHERWISE
           @vFIL,mCO0     Say F2700TDO Font "&mLetAri",9 Style "NQ" Size 1,3
           @vFIL,mCO0+3.6 Say F2700SER Font "&mLetAri",9 Style "NQ" Size 1,04.3
           @vFIL,mCO0+8.5 Say F2700DOC Font "&mLetAri",9 Style "NQ" Size 1,10.1
 ENDCASE
 DO CASE
      CASE mrEs$"34"
           @vFIL,mCO0+100.1 Say F2700FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+113.3 Say F2700NTI Font "&mLetAri",9 Style "NQ" Size 1,35.9 Pict "@S38"
           DO CASE
                CASE wtPo="3"
                     @vFIL,mCO0+149.9 Say F2700TD1+":"+F2700SR1+"-"+F2700DO1 Font "&mLetAri",8 Style "NQ" Size 1,28.5 Pict "@S30"
                     @vFIL,mCO0+179.2 Say F2700COS                           Font "&mLetAri",8 Style "NQ" Size 1,20.7 Pict "999,999,999.9999"
                OTHERWISE
                     @vFIL,mCO0+149.9 Say F2700USU                           Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S30"
                     @vFIL,mCO0+179.2 Say Dtoc(F2700DAT)+" - "+F2700TIM      Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S20"
           ENDCASE
           IF mrEs="4"
                @vFIL,mCO0+200.5 Say xALM Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                @vFIL,mCO0+207.1 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
           ENDIF
      OTHERWISE
           @vFIL,mCO0+100.3 Say F2700FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+113.5 Say F2700NTI Font "&mLetAri",9 Style "NQ" Size 1,42.9 Pict "@S45"
           DO CASE
                CASE wtPo="3"
                     @vFIL,mCO0+157.1 Say F2700TD1+":"+F2700SR1+"-"+F2700DO1 Font "&mLetAri",8 Style "NQ" Size 1,28.7 Pict "@S30"
                     @vFIL,mCO0+186.4 Say F2700COS                           Font "&mLetAri",8 Style "NQ" Size 1,20.7 Pict "999,999,999.9999"
                OTHERWISE
                     @vFIL,mCO0+157.1 Say F2700USU                           Font "&mLetAri",9 Style "NQ" Size 1,28.7 Pict "@S30"
                     @vFIL,mCO0+186.4 Say Dtoc(F2700DAT)+" - "+F2700TIM      Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S23"
           ENDCASE
           IF mrEs>"3"
                @vFIL,mCO0+207.8 Say xALM Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                @vFIL,mCO0+214.4 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDIF
 ENDCASE
 DO di2_2700b
 RELEASE peSt, ptDo, psEr, pdOc, psW0, ptPp
ENDPROC
*
PROCEDURE Di2_2700b
 DO CASE
      CASE mrEs$"34" .AND. vsW2=1
           @vFIL,mCO0+24.1 Say F2700CM1 Font "&mLetAri",9 Style "NQ" Size 1,62.0 Pict "@S65"
           @vFIL,mCO0+86.8 Say F2700PED Font "&mLetAri",9 Style "NQ" Size 1,12.7 Pict "@S15"
      CASE mrEs$"34"
           @vFIL,mCO0+24.1 Say F2700CM1 Font "&mLetAri",9 Style "NQ" Size 1,75.4 Pict "@S78"
      CASE vsW2=1
           @vFIL,mCO0+24.1 Say F2700CM1 Font "&mLetAri",9 Style "NQ" Size 1,62.1 Pict "@S65"
           @vFIL,mCO0+86.9 Say F2700PED Font "&mLetAri",9 Style "NQ" Size 1,12.7 Pict "@S15"
      OTHERWISE
           @vFIL,mCO0+24.1 Say F2700CM1 Font "&mLetAri",9 Style "NQ" Size 1,75.4 Pict "@S78"
 ENDCASE
ENDPROC
*
PROCEDURE Ppd_2700b
 PARAMETER ppRg
 IF vsW2=1
      STORE 2 TO vsW2
 ELSE
      STORE 1 TO vsW2
 ENDIF
 DO coLsc1
 @ ifIl-1.5, mcO0+86.2 CLEAR TO ffIl+1.2, mcO0+86.8
 DO p01_2700a IN PAC2700A WITH ppRg
 DO coLsc1
 DO seE_2700b IN PAC2700B WITH "i"
 STORE vfIl TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ufIl+1
      DO CASE
           CASE ppRg="2700"
                DO di2_2700b IN PAC2700B
           CASE ppRg="2800"
                DO di2_2800b IN PAC2800B
      ENDCASE
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 STORE cfIl TO vfIl
 DO seE_2700b IN PAC2700B WITH "v"
 DO CASE
      CASE ppRg="2700"
           DO diS_2700b IN PAC2700B WITH "R"
      CASE ppRg="2800"
           DO diS_2800b IN PAC2800B WITH "R"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_2700b
 DO rs2_2700a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2700b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_2700a
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
                DO rs1_2700b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_2700a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2700b
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
                SELECT caB_ingr
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2700cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2700ped)))<>0
                          DO muE_2700a
                          DO grA_2700a
                          SELECT caB_ingr
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
      DO paL_2700a
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_ingr
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2700b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2700b
      DO muE_2700b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2700b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2700b WITH "v", "x"
 DO orD_2700b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2700b WITH "i"
 DO pa1_2700b
 IF cfIl=0
      DO muE_2700b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2700b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2700b WITH "v"
 DO diS_2700b WITH "R"
ENDPROC
*
PROCEDURE Est_2700b
 DO CASE
      CASE vsW1=1
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2700b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2700b WITH "v"
 DO diS_2700b WITH "R"
ENDPROC
*
PROCEDURE Anu_2700b
 PRIVATE ptX1, ptX2, poPc, pnUm, pmOn, ptCa, ppRe
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "GUÍA DE ENTRADA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caB_ingr
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
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
 STORE SUBSTR(DTOC(f2700fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2700fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2700fem), 7, 4) TO xaNo
 STORE f2700sor TO csOr
 STORE f2700ord TO coRd
 STORE f2700tpp TO ctPp
 DO CASE
      CASE ctPp=3
           STORE "1" TO ctP1
           STORE "3" TO ctI1
      CASE ctPp=4
           STORE "0" TO ctP1
           STORE "1" TO ctI1
      OTHERWISE
           STORE "1" TO ctP1
           STORE "1" TO ctI1
 ENDCASE
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Verificando Orden..."
      SELECT caB_orden
      SEEK "OC"+csOr+coRd
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "OC"+csOr+coRd
                IF mkEy=k_Esc
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
                STORE 1 TO pmOn
           ELSE
                STORE f9226tpo TO pmOn
           ENDIF
      ENDIF
 ENDIF
 SELECT teMporal_2
 ZAP
 REINDEX
 SELECT deT_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE f2701cod TO vcOd
      STORE f2701sgs TO vsGs
      STORE f2701ngs TO vnGs
      IF LEN(ALLTRIM(vnGs))<>0
           SELECT teMporal_2
           SEEK vsGs+vnGs
           IF EOF()
                APPEND BLANK
                REPLACE ftM2ser WITH vsGs
                REPLACE ftM2doc WITH vnGs
                SELECT caB_sali
                SEEK "GS"+vsGs+vnGs
                IF  .NOT. EOF()
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH "GS"+vsGs+vnGs
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_ingr
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
      SELECT deT_ingr
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ingr
 REPLACE f2700est WITH "9"
 REPLACE f2700usu WITH muSu
 REPLACE f2700maq WITH mmAq
 REPLACE f2700dat WITH DATE()
 REPLACE f2700tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2700est WITH "9"
      REPLACE f2700usu WITH muSu
      REPLACE f2700maq WITH mmAq
      REPLACE f2700dat WITH DATE()
      REPLACE f2700tim WITH TIME()
 ENDIF
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Grabando Orden..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
           STORE f2701cod TO vcOd
           STORE f2701can TO vcAn
           STORE f2701caj TO vcAj
           SELECT deT_orden
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"+f2911tdo+ ;
              f2911ser+f2911doc=ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
                IF f2911ctd>0
                     STORE f2911ite TO vrEc
                     SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+"OC"+csOr+ ;
                             coRd+STR(vrEc, 4, 0)
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2911ctd>=vcAn
                               REPLACE f2911ctd WITH f2911ctd-vcAn
                               REPLACE f2911cjd WITH f2911cjd-vcAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                               EXIT
                          OTHERWISE
                               STORE vcAn-f2911ctd TO vcAn
                               STORE vcAj-f2911cjd TO vcAj
                               REPLACE f2911ctd WITH 0
                               REPLACE f2911cjd WITH 0
                               STORE f2911pre TO ppRe
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                     ENDCASE
                     UNLOCK
                ENDIF
                SELECT deT_orden
                SKIP
           ENDDO
           SELECT deT_ingr
           SKIP
      ENDDO
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK "OC"+csOr+coRd
      STORE 0 TO pnUm
      DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+csOr+coRd
           IF f2911can-f2911ctd>0
                STORE 1 TO pnUm
           ENDIF
           SKIP
      ENDDO
      SELECT caB_orden
      SEEK "OC"+csOr+coRd
      IF  .NOT. EOF()
           IF pnUm=0
                REPLACE f2910est WITH "2"
           ELSE
                REPLACE f2910est WITH "3"
           ENDIF
           UNLOCK
      ENDIF
 ENDIF
 SELECT deT_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE f2701ite TO vrEc
      STORE f2701cod TO vcOd
      STORE f2701can TO vcAn
      STORE f2701caj TO vcAj
      STORE f2701sgs TO vsGs
      STORE f2701ngs TO vnGs
      STORE f2701cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
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
      SELECT deT_sali
      SEEK ALLTRIM(vcDg)+"*"+"GS"+vsGs+vnGs
      IF  .NOT. EOF()
           STORE f2801ite TO vrEc
           SEEK ALLTRIM(vcDg)+"*"+"GS"+vsGs+vnGs+STR(vrEc, 4, 0)
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcDg)+"*"+"GS"+vsGs+vnGs+ ;
                   STR(vrEc, 4, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2801tgi WITH SPACE(02)
           REPLACE f2801sgi WITH SPACE(03)
           REPLACE f2801ngi WITH SPACE(07)
           REPLACE f2801cdg WITH SPACE(mtMa)
           UNLOCK
      ENDIF
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_ingr
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2702cod TO vcOd
      STORE f2702rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2702tdo WITH SPACE(02)
      REPLACE f2702ser WITH SPACE(03)
      REPLACE f2702doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc=vtDo+vsEr+vdOc
      STORE f2703cod TO vcOd
      STORE f2703ped TO vpD1
      STORE f2703sec TO vsEc
      STORE f2703pla TO vpLa
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2703tdo WITH SPACE(02)
      REPLACE f2703ser WITH SPACE(03)
      REPLACE f2703doc WITH SPACE(07)
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
      SELECT seR_ingr
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
 RELEASE ptX1, ptX2, poPc, pnUm, pmOn, ptCa, ppRe
ENDPROC
*
PROCEDURE Rs1_2700b
 SET READBORDER ON
 DO rs1_2700a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2700b WITH "R"
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
PROCEDURE Xls_2700b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE wtPo="3"
           DO xl0_0000a WITH "Guías de Entrada Valorizadas", "Listado", 15
      OTHERWISE
           DO xl0_0000a WITH "Guías de Entrada", "Listado", 11
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
 pxLs.ceLls(3, 8).vaLue = "Tipo de Entrada"
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
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))+ ;
           "... Leyendo Documento: "+f2700tdo+":"+f2700ser+"-"+f2700doc
      STORE f2700alm TO xaLm
      STORE " " TO vnAl
      DO CASE
           CASE f2700est="1"
                STORE "Dig" TO xeSt
           CASE f2700est="2"
                STORE "Pro" TO xeSt
           CASE f2700est="4"
                STORE "Gen" TO xeSt
           CASE f2700est="9"
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
                SELECT caB_ingr
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = f2700tdo
      pxLs.ceLls(viT1, 02).vaLue = f2700ser
      pxLs.ceLls(viT1, 03).vaLue = f2700doc
      pxLs.ceLls(viT1, 04).vaLue = xeSt
      pxLs.ceLls(viT1, 05).vaLue = f2700fem
      pxLs.ceLls(viT1, 06).vaLue = f2700ped
      pxLs.ceLls(viT1, 07).vaLue = f2700cm1
      pxLs.ceLls(viT1, 08).vaLue = f2700nti
      pxLs.ceLls(viT1, 09).vaLue = vnAl
      DO CASE
           CASE wtPo="3"
                pxLs.ceLls(viT1, 10).vaLue = f2700td1
                pxLs.ceLls(viT1, 11).vaLue = f2700sr1
                pxLs.ceLls(viT1, 12).vaLue = f2700do1
                pxLs.ceLls(viT1, 13).vaLue = f2700cos
                pxLs.ceLls(viT1, 14).vaLue = f2700usu
                pxLs.ceLls(viT1, 15).vaLue = DTOC(f2700dat)+"/"+f2700tim
           OTHERWISE
                pxLs.ceLls(viT1, 10).vaLue = f2700usu
                pxLs.ceLls(viT1, 11).vaLue = DTOC(f2700dat)+"/"+f2700tim
      ENDCASE
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW1=1
                SELECT caB_ingr
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
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2700b WITH "v"
ENDPROC
*
PROCEDURE Ord_2700b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2700", "A", "F2700CM1", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "2700", "A", "F2700FEM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2700DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2700CM1", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2700FEM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_2700b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vcM1)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK itDo+isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(icM1)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK utDo+usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(ucM1)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2700b
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
           STORE f2700tdo TO vtDo
           STORE f2700ser TO vsEr
           STORE f2700doc TO vdOc
           STORE f2700cm1 TO vcM1
           STORE f2700fem TO vfEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2700tdo TO itDo
           STORE f2700ser TO isEr
           STORE f2700doc TO idOc
           STORE f2700cm1 TO icM1
           STORE f2700fem TO ifEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2700tdo TO utDo
           STORE f2700ser TO usEr
           STORE f2700doc TO udOc
           STORE f2700cm1 TO ucM1
           STORE f2700fem TO ufEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2700b
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
           DO diS_2700b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2700b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2700b WITH "F", "v"
           DO diS_2700b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2700b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+1, 2 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+2, 2 SAY "la información."
 STORE pfIl+4 TO pfIl
 IF wtPo="3"
      @ pfIl+0, 2 SAY  ;
        "Si los Items son de color azul,  es porque hay productos que no tienen"
      @ pfIl+1, 2 SAY "costo."
 ELSE
      @ pfIl+0, 2 SAY  ;
        "Si los Items son de color verde, es porque hay productos que no estan"
      @ pfIl+1, 2 SAY "relacionados."
 ENDIF
 STORE pfIl+3 TO pfIl
 @ pfIl+00, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+02, 23 SAY ":" STYLE "BT"
 @ pfIl+03, 23 SAY ":" STYLE "BT"
 @ pfIl+04, 23 SAY ":" STYLE "BT"
 @ pfIl+05, 23 SAY ":" STYLE "BT"
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
 @ pfIl+02, 04 SAY "ESC" STYLE "BT"
 @ pfIl+03, 04 SAY "F10" STYLE "BT"
 @ pfIl+04, 04 SAY "F1" STYLE "BT"
 @ pfIl+05, 04 SAY "F2" STYLE "BT"
 @ pfIl+06, 04 SAY "F6" STYLE "BT"
 @ pfIl+07, 04 SAY "F7" STYLE "BT"
 @ pfIl+08, 04 SAY "F8" STYLE "BT"
 @ pfIl+09, 04 SAY "F9" STYLE "BT"
 @ pfIl+10, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+11, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+14, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+15, 04 SAY "HOME" STYLE "BT"
 @ pfIl+16, 04 SAY "END" STYLE "BT"
 @ pfIl+02, 25 SAY "Regresar a Cabecera"
 @ pfIl+03, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+04, 25 SAY "Ayuda del Programa"
 @ pfIl+05, 25 SAY "Ampliar reducir vista de Comentarios"
 @ pfIl+06, 25 SAY "Cambio de Orden de Consulta"
 @ pfIl+07, 25 SAY "Ver Tipos de Guías"
 @ pfIl+08, 25 SAY "Pasar datos a Excel"
 @ pfIl+09, 25 SAY "Buscar palabra o frase en Comentario o Pedido"
 @ pfIl+10, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+11, 25 SAY "Línea inferior"
 @ pfIl+12, 25 SAY "Línea superior"
 @ pfIl+13, 25 SAY "Página siguiente"
 @ pfIl+14, 25 SAY "Página anterior"
 @ pfIl+15, 25 SAY "Primera línea"
 @ pfIl+16, 25 SAY "Última línea"
 STORE pfIl+17 TO pfIl
 IF wtPo="2"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 25 SAY "Anulación del Documento"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_2700b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del Comentario o Pedido. Si la"
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
 @ pfIl+09, 23 SAY "Buscar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
