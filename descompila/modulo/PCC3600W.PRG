 PRIVATE pfEm, pmCl, psW0, ppAn_scr
 = INKEY(0.01)
 SELECT peNd_cpras
 STORE 99 TO mkEy
 STORE 01 TO meRr, vsWw, csWw
 SET ORDER TO F3600FA2
 STORE 00 TO meRr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p00_3600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 SEEK veSt+ALLTRIM(vtD1)+ALLTRIM(vsR1)+ALLTRIM(vdO1)
 SET NEAR OFF
 IF EOF() .OR. f3600est<>veSt
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 DO paN_3600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE itD1 TO vtD1
 STORE isR1 TO vsR1
 STORE idO1 TO vdO1
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE iaN1 TO vaN1
 STORE imE1 TO vmE1
 STORE idI1 TO vdI1
 STORE iaNv TO vaNv
 STORE imEv TO vmEv
 STORE idIv TO vdIv
 STORE itDd TO vtDd
 STORE isRr TO vsRr
 STORE idCc TO vdCc
 STORE ifFr TO vfFr
 SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
 DO diS_3600w WITH "R"
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
           DO reS_3600w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3600w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3600w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3600w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3600w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsWw=4
                          STORE 1 TO vsWw
                     CASE mkEy=k_Right
                          STORE vsWw+1 TO vsWw
                     CASE mkEy=k_Left .AND. vsWw=1
                          STORE 4 TO vsWw
                     CASE mkEy=k_Left
                          STORE vsWw-1 TO vsWw
                ENDCASE
                DO caM_3600w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO coLbln
                SET READBORDER ON
                DO diS_3600w WITH "N"
                SAVE SCREEN TO ppAn_scr
                DO coLsc4
                @ ifFr-1.7, piCl-0.1 TO ifFr-0.1, puCl+0.1 PATTERN 1
                DO coLbln
                DO CASE
                     CASE vsWw=1
                          STORE (puCl-piCl-50)/2 TO pmCl
                          @iFFR-1.4,pMCL    Say "Documento"            Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+15 Get vTDD                   Font "&mLetAri",9 Style "NQ" Size 1,3.2  Pict "!!"              Color ,&mColBlN
                          @iFFR-1.4,pMCL+20 Get vSRR                   Font "&mLetAri",9 Style "NQ" Size 1,4.0  Pict "999"             Color ,&mColBlN
                          @iFFR-1.4,pMCL+26 Get vDCC                   Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "!!!!!!!!!!!!!!!" Color ,&mColBlN
                     CASE vsWw=2
                          STORE (puCl-piCl-50)/2 TO pmCl
                          STORE CTOD(vdI1+"/"+vmE1+"/"+vaN1) TO pfEm
                          @iFFR-1.4,pMCL    Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+23 Get pFEM                   Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlN
                     CASE vsWw=3
                          STORE (puCl-piCl-55)/2 TO pmCl
                          STORE CTOD(vdIv+"/"+vmEv+"/"+vaNv) TO pfEm
                          @iFFR-1.4,pMCL    Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+28 Get pFEM                   Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlN
                     CASE vsWw=4
                          STORE (puCl-piCl-40)/2 TO pmCl
                          @iFFR-1.4,pMCL    Say "Proveedor"            Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+10 Edit vNOM                  Font "&mLetAri",9 Style "NQ" Size 1,30,40
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                RESTORE SCREEN FROM ppAn_scr
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                ELSE
                     SET NEAR ON
                     DO CASE
                          CASE vsWw=1
                               SEEK veSt+vtDd+vsRr+vdCc
                          CASE vsWw=2
                               SEEK veSt+SUBSTR(DTOC(pfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(pfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(pfEm), 1, 2)
                          CASE vsWw=3
                               SEEK veSt+SUBSTR(DTOC(pfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(pfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(pfEm), 1, 2)
                          CASE vsWw=4
                               SEEK veSt+UPPER(vnOm)
                     ENDCASE
                     SET NEAR OFF
                     STORE f3600tdo TO vtD1
                     STORE f3600ser TO vsR1
                     STORE f3600doc TO vdO1
                     STORE f3600prv TO vpRv
                     STORE f3600nom TO vnOm
                     STORE f3600td1 TO vtDd
                     STORE f3600sr1 TO vsRr
                     STORE f3600do1 TO vdCc
                     STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaN1
                     STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmE1
                     STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdI1
                     STORE SUBSTR(DTOC(f3600fve), 7, 4) TO vaNv
                     STORE SUBSTR(DTOC(f3600fve), 4, 2) TO vmEv
                     STORE SUBSTR(DTOC(f3600fve), 1, 2) TO vdIv
                     DO CASE
                          CASE vsWw=1
                               SEEK veSt+itDd+isRr+idCc+itD1+isR1+idO1
                          CASE vsWw=2
                               SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
                          CASE vsWw=3
                               SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
                          CASE vsWw=4
                               SEEK veSt+UPPER(inOm)+ipRv+iaN1+imE1+idI1+ ;
                                    itD1+isR1+idO1
                     ENDCASE
                     STORE ifFr TO vfFr
                     STORE 0 TO cfFr
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          IF f3600tdo+f3600ser+f3600doc=vtD1+vsR1+vdO1
                               STORE vfFr TO cfFr
                               EXIT
                          ENDIF
                          STORE vfFr+1 TO vfFr
                          SKIP
                     ENDDO
                     IF cfFr=0
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO paN_3600w
                          STORE itD1 TO vtD1
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE iaNv TO vaNv
                          STORE imEv TO vmEv
                          STORE idIv TO vdIv
                          STORE itDd TO vtDd
                          STORE isRr TO vsRr
                          STORE idCc TO vdCc
                          STORE ifFr TO vfFr
                     ELSE
                          STORE cfFr TO vfFr
                     ENDIF
                     DO CASE
                          CASE vsWw=1
                               SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                          CASE vsWw=2
                               SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                          CASE vsWw=3
                               SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                          CASE vsWw=4
                               SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+vdI1+ ;
                                    vtD1+vsR1+vdO1
                     ENDCASE
                     DO diS_3600w WITH "R"
                ENDIF
           CASE mkEy=k_F9 .AND. vtD1="NC" .AND. (wpRg="PCI3540A" .OR.  ;
                wpRg="PCM3540A")
                STORE "No se puede seleccionar una Nota de Crédito..." TO mmSj
           CASE mkEy=k_F9
                SELECT exIste
                SEEK vtD1+vsR1+vdO1
                DO CASE
                     CASE  .NOT. EOF() .AND. ftM2est=SPACE(01)
                          STORE "Documento ya digitado en el Voucher..."  ;
                                TO mmSj
                     CASE EOF()
                          APPEND BLANK
                          REPLACE ftM2tdo WITH vtD1
                          REPLACE ftM2ser WITH vsR1
                          REPLACE ftM2doc WITH vdO1
                          REPLACE ftM2est WITH "1"
                     OTHERWISE
                          DELETE
                          PACK
                ENDCASE
                SELECT peNd_cpras
                DO diS_3600w WITH "R"
           CASE mkEy=k_Enter .AND. vtD1="NC" .AND. (wpRg="PCI3540A" .OR.  ;
                wpRg="PCM3540A")
                STORE "No se puede seleccionar una Nota de Crédito..." TO mmSj
           CASE mkEy=k_Enter
                SELECT exIste
                SEEK vtD1+vsR1+vdO1
                IF  .NOT. EOF()
                     STORE "Documento ya se encuentra registrado..." TO mmSj
                ELSE
                     SELECT peNd_cpras
                     EXIT
                ENDIF
                SELECT peNd_cpras
           CASE mkEy=k_Tab
                SELECT exIste
                SET FILTER TO ftM2est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos marcados..." TO mmSj
                     SET FILTER TO
                ELSE
                     SET FILTER TO
                     SELECT peNd_cpras
                     EXIT
                ENDIF
                SELECT peNd_cpras
           CASE mkEy=k_Home
                GOTO TOP
                SEEK veSt
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=itD1+isR1+idO1 .AND.  ;
                          vtD1+vsR1+vdO1=itD1+isR1+idO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtD1+vsR1+vdO1=itD1+isR1+idO1
                                    DO paN_3600w
                               OTHERWISE
                                    DO CASE
                                         CASE vsWw=1
                                              SEEK veSt+vtDd+vsRr+vdCc+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=2
                                              SEEK veSt+vaN1+vmE1+vdI1+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=3
                                              SEEK veSt+vaNv+vmEv+vdIv+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=4
                                              SEEK veSt+UPPER(vnOm)+vpRv+ ;
                                               vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                                    ENDCASE
                                    DO diS_3600w WITH "N"
                          ENDCASE
                          STORE itD1 TO vtD1
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE iaNv TO vaNv
                          STORE imEv TO vmEv
                          STORE idIv TO vdIv
                          STORE itDd TO vtDd
                          STORE isRr TO vsRr
                          STORE idCc TO vdCc
                          STORE ifFr TO vfFr
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK veSt+"ZZZZZZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f3600est<>veSt
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=utD1+usR1+udO1 .AND.  ;
                          vtD1+vsR1+vdO1=utD1+usR1+udO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtD1+vsR1+vdO1=utD1+usR1+udO1
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3600w
                               OTHERWISE
                                    DO CASE
                                         CASE vsWw=1
                                              SEEK veSt+vtDd+vsRr+vdCc+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=2
                                              SEEK veSt+vaN1+vmE1+vdI1+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=3
                                              SEEK veSt+vaNv+vmEv+vdIv+ ;
                                               vtD1+vsR1+vdO1
                                         CASE vsWw=4
                                              SEEK veSt+UPPER(vnOm)+vpRv+ ;
                                               vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                                    ENDCASE
                                    DO diS_3600w WITH "N"
                          ENDCASE
                          STORE utD1 TO vtD1
                          STORE usR1 TO vsR1
                          STORE udO1 TO vdO1
                          STORE upRv TO vpRv
                          STORE unOm TO vnOm
                          STORE uaN1 TO vaN1
                          STORE umE1 TO vmE1
                          STORE udI1 TO vdI1
                          STORE uaNv TO vaNv
                          STORE umEv TO vmEv
                          STORE udIv TO vdIv
                          STORE utDd TO vtDd
                          STORE usRr TO vsRr
                          STORE udCc TO vdCc
                          STORE ufFr TO vfFr
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "N"
                          SKIP
                          IF vtD1+vsR1+vdO1=utD1+usR1+udO1
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3600w WITH ifFr, ffFr+1
                               STORE f3600tdo TO utD1, vtD1
                               STORE f3600ser TO usR1, vsR1
                               STORE f3600doc TO udO1, vdO1
                               STORE f3600prv TO upRv, vpRv
                               STORE f3600nom TO unOm, vnOm
                               STORE f3600td1 TO utDd, vtDd
                               STORE f3600sr1 TO usRr, vsRr
                               STORE f3600do1 TO udCc, vdCc
                               STORE SUBSTR(DTOC(f3600fem), 7, 4) TO uaN1, vaN1
                               STORE SUBSTR(DTOC(f3600fem), 4, 2) TO umE1, vmE1
                               STORE SUBSTR(DTOC(f3600fem), 1, 2) TO udI1, vdI1
                               STORE SUBSTR(DTOC(f3600fve), 7, 4) TO uaNv, vaNv
                               STORE SUBSTR(DTOC(f3600fve), 4, 2) TO umEv, vmEv
                               STORE SUBSTR(DTOC(f3600fve), 1, 2) TO udIv, vdIv
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               STORE f3600tdo TO itD1
                               STORE f3600ser TO isR1
                               STORE f3600doc TO idO1
                               STORE f3600prv TO ipRv
                               STORE f3600nom TO inOm
                               STORE f3600td1 TO itDd
                               STORE f3600sr1 TO isRr
                               STORE f3600do1 TO idCc
                               STORE SUBSTR(DTOC(f3600fem), 7, 4) TO iaN1
                               STORE SUBSTR(DTOC(f3600fem), 4, 2) TO imE1
                               STORE SUBSTR(DTOC(f3600fem), 1, 2) TO idI1
                               STORE SUBSTR(DTOC(f3600fve), 7, 4) TO iaNv
                               STORE SUBSTR(DTOC(f3600fve), 4, 2) TO imEv
                               STORE SUBSTR(DTOC(f3600fve), 1, 2) TO idIv
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               STORE f3600tdo TO vtD1
                               STORE f3600ser TO vsR1
                               STORE f3600doc TO vdO1
                               STORE f3600prv TO vpRv
                               STORE f3600nom TO vnOm
                               STORE f3600td1 TO vtDd
                               STORE f3600sr1 TO vsRr
                               STORE f3600do1 TO vdCc
                               STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaN1
                               STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmE1
                               STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdI1
                               STORE SUBSTR(DTOC(f3600fve), 7, 4) TO vaNv
                               STORE SUBSTR(DTOC(f3600fve), 4, 2) TO vmEv
                               STORE SUBSTR(DTOC(f3600fve), 1, 2) TO vdIv
                          ENDIF
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "N"
                          SKIP -1
                          IF vtD1+vsR1+vdO1=itD1+isR1+idO1
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3600w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               STORE f3600tdo TO itD1, vtD1
                               STORE f3600ser TO isR1, vsR1
                               STORE f3600doc TO idO1, vdO1
                               STORE f3600prv TO ipRv, vpRv
                               STORE f3600nom TO inOm, vnOm
                               STORE f3600td1 TO itDd, vtDd
                               STORE f3600sr1 TO isRr, vsRr
                               STORE f3600do1 TO idCc, vdCc
                               STORE SUBSTR(DTOC(f3600fem), 7, 4) TO iaN1, vaN1
                               STORE SUBSTR(DTOC(f3600fem), 4, 2) TO imE1, vmE1
                               STORE SUBSTR(DTOC(f3600fem), 1, 2) TO idI1, vdI1
                               STORE SUBSTR(DTOC(f3600fve), 7, 4) TO iaNv, vaNv
                               STORE SUBSTR(DTOC(f3600fve), 4, 2) TO imEv, vmEv
                               STORE SUBSTR(DTOC(f3600fve), 1, 2) TO idIv, vdIv
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    STORE f3600tdo TO utD1
                                    STORE f3600ser TO usR1
                                    STORE f3600doc TO udO1
                                    STORE f3600prv TO upRv
                                    STORE f3600nom TO unOm
                                    STORE f3600td1 TO utDd
                                    STORE f3600sr1 TO usRr
                                    STORE f3600do1 TO udCc
                                    STORE SUBSTR(DTOC(f3600fem), 7, 4) TO uaN1
                                    STORE SUBSTR(DTOC(f3600fem), 4, 2) TO umE1
                                    STORE SUBSTR(DTOC(f3600fem), 1, 2) TO udI1
                                    STORE SUBSTR(DTOC(f3600fve), 7, 4) TO uaNv
                                    STORE SUBSTR(DTOC(f3600fve), 4, 2) TO umEv
                                    STORE SUBSTR(DTOC(f3600fve), 1, 2) TO udIv
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               STORE f3600tdo TO vtD1
                               STORE f3600ser TO vsR1
                               STORE f3600doc TO vdO1
                               STORE f3600prv TO vpRv
                               STORE f3600nom TO vnOm
                               STORE f3600td1 TO vtDd
                               STORE f3600sr1 TO vsRr
                               STORE f3600do1 TO vdCc
                               STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaN1
                               STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmE1
                               STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdI1
                               STORE SUBSTR(DTOC(f3600fve), 7, 4) TO vaNv
                               STORE SUBSTR(DTOC(f3600fve), 4, 2) TO vmEv
                               STORE SUBSTR(DTOC(f3600fve), 1, 2) TO vdIv
                          ENDIF
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsWw=1
                          SEEK veSt+utDd+usRr+udCc+utD1+usR1+udO1
                     CASE vsWw=2
                          SEEK veSt+uaN1+umE1+udI1+utD1+usR1+udO1
                     CASE vsWw=3
                          SEEK veSt+uaNv+umEv+udIv+utD1+usR1+udO1
                     CASE vsWw=4
                          SEEK veSt+UPPER(unOm)+upRv+uaN1+umE1+udI1+utD1+ ;
                               usR1+udO1
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3600w
                          STORE itD1 TO vtD1
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE iaNv TO vaNv
                          STORE imEv TO vmEv
                          STORE idIv TO vdIv
                          STORE itDd TO vtDd
                          STORE isRr TO vsRr
                          STORE idCc TO vdCc
                          STORE ifFr TO vfFr
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsWw=1
                          SEEK veSt+itDd+isRr+idCc+itD1+isR1+idO1
                     CASE vsWw=2
                          SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
                     CASE vsWw=3
                          SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
                     CASE vsWw=4
                          SEEK veSt+UPPER(inOm)+ipRv+iaN1+imE1+idI1+itD1+ ;
                               isR1+idO1
                ENDCASE
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f3600est<>veSt
                               GOTO TOP
                               SEEK veSt
                          ENDIF
                          DO paN_3600w
                          STORE itD1 TO vtD1
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE iaNv TO vaNv
                          STORE imEv TO vmEv
                          STORE idIv TO vdIv
                          STORE itDd TO vtDd
                          STORE isRr TO vsRr
                          STORE idCc TO vdCc
                          STORE ifFr TO vfFr
                          DO CASE
                               CASE vsWw=1
                                    SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                               CASE vsWw=2
                                    SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                               CASE vsWw=3
                                    SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                               CASE vsWw=4
                                    SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+ ;
                                     vdI1+vtD1+vsR1+vdO1
                          ENDCASE
                          DO diS_3600w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsWw=1
                     SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
                CASE vsWw=2
                     SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                CASE vsWw=3
                     SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                CASE vsWw=4
                     SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
           ENDCASE
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_3600w
 DO pn1_3600w WITH "1"
ENDPROC
*
PROCEDURE Pa1_3600w
 DO pn1_3600w WITH "2"
ENDPROC
*
PROCEDURE Pn1_3600w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 STORE f3600tdo TO itD1, utD1
 STORE f3600ser TO isR1, usR1
 STORE f3600doc TO idO1, udO1
 STORE f3600prv TO ipRv, upRv
 STORE f3600nom TO inOm, unOm
 STORE f3600td1 TO itDd, utDd
 STORE f3600sr1 TO isRr, usRr
 STORE f3600do1 TO idCc, udCc
 STORE SUBSTR(DTOC(f3600fem), 7, 4) TO iaN1, uaN1
 STORE SUBSTR(DTOC(f3600fem), 4, 2) TO imE1, umE1
 STORE SUBSTR(DTOC(f3600fem), 1, 2) TO idI1, udI1
 STORE SUBSTR(DTOC(f3600fve), 7, 4) TO iaNv, uaNv
 STORE SUBSTR(DTOC(f3600fve), 4, 2) TO imEv, umEv
 STORE SUBSTR(DTOC(f3600fve), 1, 2) TO idIv, udIv
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f3600tdo+f3600ser+f3600doc=xtD1+xsR1+xdO1
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_3600w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      STORE f3600tdo TO utD1
      STORE f3600ser TO usR1
      STORE f3600doc TO udO1
      STORE f3600prv TO upRv
      STORE f3600nom TO unOm
      STORE f3600td1 TO utDd
      STORE f3600sr1 TO usRr
      STORE f3600do1 TO udCc
      STORE SUBSTR(DTOC(f3600fem), 7, 4) TO uaN1
      STORE SUBSTR(DTOC(f3600fem), 4, 2) TO umE1
      STORE SUBSTR(DTOC(f3600fem), 1, 2) TO udI1
      STORE SUBSTR(DTOC(f3600fve), 7, 4) TO uaNv
      STORE SUBSTR(DTOC(f3600fve), 4, 2) TO umEv
      STORE SUBSTR(DTOC(f3600fve), 1, 2) TO udIv
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_3600w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3600w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3600mon=1
           STORE "S/." TO vsGg
      OTHERWISE
           STORE "US$" TO vsGg
 ENDCASE
 STORE f3600tdo TO ctD2
 STORE f3600ser TO csR2
 STORE f3600doc TO cdO2
 DO CASE
      CASE ptIp="N" .AND. f3600fve<=DATE() .AND. f3600td1<>"NC"
           DO coLscv
      CASE ptIp="R" .AND. f3600fve<=DATE() .AND. f3600td1<>"NC"
           DO coLblv
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+39 Say F3600FVE Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO CASE
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+000.0 Say F3600TD1  Font "&mLetAri",9 Style "NQ" Size 1,03.4
 @vFFR,pICL+004.4 Say F3600SR1  Font "&mLetAri",9 Style "NQ" Size 1,04
 @vFFR,pICL+009.4 Say F3600DO1  Font "&mLetAri",9 Style "NQ" Size 1,15
 @vFFR,pICL+025.4 Say F3600FEM  Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFR,pICL+052.6 Say F3600PRV  Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFFR,pICL+059.6 Say F3600NOM  Font "&mLetAri",9 Style "NQ" Size 1,50.7 Pict "@S53"
 @vFFR,pICL+111.3 Say F3600TDO  Font "&mLetAri",9 Style "NQ" Size 1,03.8
 @vFFR,pICL+116.2 Say F3600SER  Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFR,pICL+121.4 Say F3600DOC  Font "&mLetAri",9 Style "NQ" Size 1,10.2
 @vFFR,pICL+132.5 Say vSGG      Font "&mLetAri",9 Style "NQ" Size 1,4.5
 @vFFR,pICL+138.1 Say F3600TOT  Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 @vFFR,pICL+190.3 Say Space(02) Font "&mLetAri",9 Style "NQ" Size 1,1.3
 DO coLsc1
 @fFFR+1.4,pICL   Say Space(30) Font "&mLetAri",9 Style "NQ" Size 1,30
 DO CASE
      CASE ptIp="N" .AND. f3600acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3600acu<0
           DO coLblr
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3600acu<0
           @vFFR,pICL+155.5 Say F3600ACU Font "&mLetAri",9 Style "BQ" Size 1,13.9 Pict "9,999,999.99"
      OTHERWISE
           @vFFR,pICL+155.5 Say F3600ACU Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f3600tot-f3600acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3600tot-f3600acu<0
           DO coLblr
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3600tot-f3600acu<0
           @vFFR,pICL+172.9 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "BQ" Size 1,13.9 Pict "9,999,999.99"
      OTHERWISE
           @vFFR,pICL+172.9 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 ENDCASE
 SELECT exIste
 SEEK ctD2+csR2+cdO2
 IF  .NOT. EOF() .AND. ftM2est="1"
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl+190.3
 ENDIF
 SELECT peNd_cpras
ENDPROC
*
PROCEDURE Cam_3600w
 STORE vsWw TO csWw
 STORE vtD1 TO xtD1
 STORE vsR1 TO xsR1
 STORE vdO1 TO xdO1
 STORE vpRv TO xpRv
 STORE vnOm TO xnOm
 STORE vaN1 TO xaNo
 STORE vmE1 TO xmEs
 STORE vdI1 TO xdIa
 STORE vaNv TO xaNv
 STORE vmEv TO xmEv
 STORE vdIv TO xdIv
 STORE vtDd TO xtDd
 STORE vsRr TO xsRr
 STORE vdCc TO xdCc
 STORE 99 TO mkEy
 STORE 01 TO meRr
 STORE 00 TO cfFr
 DO CASE
      CASE vsWw=1
           SET ORDER TO F3600FA2
      CASE vsWw=2
           SET ORDER TO F3600FE2
      CASE vsWw=3
           SET ORDER TO F3600FV2
      CASE vsWw=4
           SET ORDER TO F3600NO2
 ENDCASE
 STORE 00 TO meRr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           SEEK veSt+itDd+isRr+idCc+itD1+isR1+idO1
      CASE vsWw=2
           SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
      CASE vsWw=3
           SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
      CASE vsWw=4
           SEEK veSt+UPPER(inOm)+ipRv+iaN1+imE1+idI1+itD1+isR1+idO1
 ENDCASE
 DO pa1_3600w
 IF cfFr=00
      STORE itD1 TO vtD1
      STORE isR1 TO vsR1
      STORE idO1 TO vdO1
      STORE ipRv TO vpRv
      STORE inOm TO vnOm
      STORE iaN1 TO vaN1
      STORE imE1 TO vmE1
      STORE idI1 TO vdI1
      STORE iaNv TO vaNv
      STORE imEv TO vmEv
      STORE idIv TO vdIv
      STORE itDd TO vtDd
      STORE isRr TO vsRr
      STORE idCc TO vdCc
      STORE ifFr TO vfFr
 ELSE
      STORE xtD1 TO vtD1
      STORE xsR1 TO vsR1
      STORE xdO1 TO vdO1
      STORE xpRv TO vpRv
      STORE xnOm TO vnOm
      STORE xaNo TO vaN1
      STORE xmEs TO vmE1
      STORE xdIa TO vdI1
      STORE xaNv TO vaNv
      STORE xmEv TO vmEv
      STORE xdIv TO vdIv
      STORE xtDd TO vtDd
      STORE xsRr TO vsRr
      STORE xdCc TO vdCc
      STORE cfFr TO vfFr
 ENDIF
 DO CASE
      CASE vsWw=1
           SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
      CASE vsWw=2
           SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
      CASE vsWw=3
           SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
      CASE vsWw=4
           SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
 ENDCASE
 DO diS_3600w WITH "R"
 DO boT_3600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bot_3600w
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+25.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+39
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+52.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl
      CASE vsWw=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+25.4
      CASE vsWw=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+39
      CASE vsWw=4
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+52.6
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Lin_3600w
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+003.8 TO pfIn, piCl+003.8
 @ piNi, piCl+008.8 TO pfIn, piCl+008.8
 @ piNi, piCl+024.8 TO pfIn, piCl+024.8
 @ piNi, piCl+038.4 TO pfIn, piCl+038.4
 @ piNi, piCl+052.0 TO pfIn, piCl+052.0
 @ piNi, piCl+059.0 TO pfIn, piCl+059.0
 @ piNi, piCl+110.7 TO pfIn, piCl+110.7
 @ piNi, piCl+115.6 TO pfIn, piCl+115.6
 @ piNi, piCl+120.7 TO pfIn, piCl+120.7
 @ piNi, piCl+131.9 TO pfIn, piCl+131.9
 @ piNi, piCl+137.6 TO pfIn, piCl+137.6
 @ piNi, piCl+154.9 TO pfIn, piCl+154.9
 @ piNi, piCl+172.3 TO pfIn, piCl+172.3
 @ piNi, piCl+189.7 TO pfIn, piCl+189.7
ENDPROC
*
PROCEDURE P00_3600w
 STORE mcO0 TO piCl
 STORE mcO0+muCo TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.4, piCl, ffFr+2.5, puCl-0.1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_3600w WITH ifFr-0.2, ffFr+1.1
 @ ifFr-0.2, piCl TO ifFr-0.2, puCl
 @ ffFr+1.1, piCl TO ffFr+1.1, puCl
 @ ifFr-1.4, piCl+24.8 TO ifFr-0.2, piCl+24.8
 @ ifFr-1.4, piCl+38.4 TO ifFr-0.2, piCl+38.4
 @ ifFr-1.4, piCl+52.0 TO ifFr-0.2, piCl+52.0
 DO coLsc1
 @iFFR-1.3,pICL+03.5 Say "Documento" Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,pICL+27.0 Say "Emisión"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,pICL+39.4 Say "Vencimien" Font "&mLetAri",9 Style "BT"
 DO coLplp
 @ ifFr-1.4, piCl+110.7 TO ifFr-0.2, piCl+110.7
 @ ifFr-1.4, piCl+131.9 TO ifFr-0.2, piCl+131.9
 @ ifFr-1.4, piCl+137.6 TO ifFr-0.2, piCl+137.6
 @ ifFr-1.4, piCl+154.9 TO ifFr-0.2, piCl+154.9
 @ ifFr-1.4, piCl+172.3 TO ifFr-0.2, piCl+172.3
 @ ifFr-1.4, piCl+189.7 TO ifFr-0.2, piCl+189.7
 DO coLsc1
 @fFFR+1.4,pICL+080.0 Say "Saldos de Ctas. x Pagar" Font "&mLetAri",10 Style "BQ"
 @iFFR-1.3,pICL+075.6 Say "Proveedor"               Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+115.0 Say "Documento"               Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+132.6 Say "Mon"                     Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+139.1 Say "Total Docum."            Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+162.4 Say "A/C"                     Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+177.9 Say "Saldo"                   Font "&mLetAri",9  Style "BT"
 DO boT_3600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_3600w
 STORE vtD1 TO ctD1
 STORE vsR1 TO csR1
 STORE vdO1 TO cdO1
 STORE vpRv TO cpRv
 STORE vnOm TO cnOm
 STORE vaN1 TO caN1
 STORE vmE1 TO cmE1
 STORE vdI1 TO cdI1
 STORE vaNv TO caNv
 STORE vmEv TO cmEv
 STORE vdIv TO cdIv
 STORE vtDd TO ctDd
 STORE vsRr TO csRr
 STORE vdCc TO cdCc
 STORE vfFr TO cfFr
 DO CASE
      CASE vtDo="V2"
           DO reS_3520b IN PCI3520B
      CASE vtDo="V4"
           DO reS_3540b IN PCI3540B
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SELECT peNd_cpras
 DO p00_3600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           SEEK veSt+itDd+isRr+idCc+itD1+isR1+idO1
      CASE vsWw=2
           SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
      CASE vsWw=3
           SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
      CASE vsWw=4
           SEEK veSt+UPPER(inOm)+ipRv+iaN1+imE1+idI1+itD1+isR1+idO1
 ENDCASE
 DO paN_3600w
 STORE ctD1 TO vtD1
 STORE csR1 TO vsR1
 STORE cdO1 TO vdO1
 STORE cpRv TO vpRv
 STORE cnOm TO vnOm
 STORE caN1 TO vaN1
 STORE cmE1 TO vmE1
 STORE cdI1 TO vdI1
 STORE caNv TO vaNv
 STORE cmEv TO vmEv
 STORE cdIv TO vdIv
 STORE ctDd TO vtDd
 STORE csRr TO vsRr
 STORE cdCc TO vdCc
 STORE cfFr TO vfFr
 DO CASE
      CASE vsWw=1
           SEEK veSt+vtDd+vsRr+vdCc+vtD1+vsR1+vdO1
      CASE vsWw=2
           SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
      CASE vsWw=3
           SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
      CASE vsWw=4
           SEEK veSt+UPPER(vnOm)+vpRv+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
 ENDCASE
 DO diS_3600w WITH "R"
ENDPROC
*
PROCEDURE Clp_3600w
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE k_F9 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_3600w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO CASE
                CASE vsWw=1
                     SEEK veSt+itDd+isRr+idCc+itD1+isR1+idO1
                CASE vsWw=2
                     SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
                CASE vsWw=3
                     SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
                CASE vsWw=4
                     SEEK veSt+UPPER(inOm)+ipRv+iaN1+imE1+idI1+itD1+isR1+idO1
           ENDCASE
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           STORE f3600tdo TO vtD1
           STORE f3600ser TO vsR1
           STORE f3600doc TO vdO1
           STORE f3600prv TO vpRv
           STORE f3600nom TO vnOm
           STORE f3600td1 TO vtDd
           STORE f3600sr1 TO vsRr
           STORE f3600do1 TO vdCc
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaN1
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmE1
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdI1
           STORE SUBSTR(DTOC(f3600fve), 7, 4) TO vaNv
           STORE SUBSTR(DTOC(f3600fve), 4, 2) TO vmEv
           STORE SUBSTR(DTOC(f3600fve), 1, 2) TO vdIv
           DO diS_3600w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3600w
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ 1.200, 02 SAY "den que se ha elegido."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 26 SAY ":" STYLE "BT"
 @ 6.200, 26 SAY ":" STYLE "BT"
 @ 7.200, 26 SAY ":" STYLE "BT"
 @ 8.200, 26 SAY ":" STYLE "BT"
 @ 9.200, 26 SAY ":" STYLE "BT"
 @ 10.200, 26 SAY ":" STYLE "BT"
 @ 11.200, 26 SAY ":" STYLE "BT"
 @ 12.200, 26 SAY ":" STYLE "BT"
 @ 13.200, 26 SAY ":" STYLE "BT"
 @ 14.200, 26 SAY ":" STYLE "BT"
 @ 15.200, 26 SAY ":" STYLE "BT"
 @ 16.200, 26 SAY ":" STYLE "BT"
 @ 17.200, 26 SAY ":" STYLE "BT"
 @ 18.200, 26 SAY ":" STYLE "BT"
 @ 5.200, 07 SAY "ESC" STYLE "BT"
 @ 6.200, 07 SAY "F10" STYLE "BT"
 @ 7.200, 07 SAY "F1" STYLE "BT"
 @ 8.200, 07 SAY "F3" STYLE "BT"
 @ 9.200, 07 SAY "F9" STYLE "BT"
 @ 10.200, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ 11.200, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 12.200, 07 SAY "FLECHA -->" STYLE "BT"
 @ 13.200, 07 SAY "FLECHA <--" STYLE "BT"
 @ 14.200, 07 SAY "PAGE DOWN" STYLE "BT"
 @ 15.200, 07 SAY "PAGE UP" STYLE "BT"
 @ 16.200, 07 SAY "HOME" STYLE "BT"
 @ 17.200, 07 SAY "END" STYLE "BT"
 @ 18.200, 07 SAY "TAB" STYLE "BT"
 @ 5.200, 28 SAY "Regresar a Cabecera"
 @ 6.200, 28 SAY "Cerrar y regresar a Windows"
 @ 7.200, 28 SAY "Ayuda del Programa"
 @ 8.200, 28 SAY "Busquedas rápidas"
 @ 9.200, 28 SAY "Marcar/Desmarcar Documentos"
 @ 10.200, 28 SAY "Línea inferior"
 @ 11.200, 28 SAY "Línea superior"
 @ 12.200, 28 SAY "Cambiar de Orden de Consulta"
 @ 13.200, 28 SAY "Cambiar de Orden de Consulta"
 @ 14.200, 28 SAY "Página siguiente"
 @ 15.200, 28 SAY "Página anterior"
 @ 16.200, 28 SAY "Primera línea"
 @ 17.200, 28 SAY "Última línea"
 @ 18.200, 28 SAY "Copiar los documentos marcados en el Detalle"
 @ 19.200, 28 SAY "con su pendiente completo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
