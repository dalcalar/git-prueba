 PARAMETER ppRg
 STORE 01 TO vsW2
 STORE 01 TO vsW3
 STORE 01 TO vsW4
 STORE 01 TO vsW5
 STORE 01 TO vsW6
 STORE 02 TO mvIt
 DO p00_3502c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO toT_3502c
 DO p01_3502c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO CASE
      CASE ppRg="3502"
           SEEK veSt+vtCl+vtIt
      CASE ppRg="3503"
           SEEK veSt+vtCl+vtIt+vvEn
      CASE ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt
      CASE ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn
      CASE ppRg="3506"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc),  ;
                4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3507"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3508"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3509"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
 ENDCASE
 DO paN_3502c
 STORE ifFr TO vfFr
 DO muE_3502c WITH "i", "v"
 DO seE_3502c WITH "v"
 DO diS_3502c WITH "R"
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
           DO reS_3502c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3502c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3502c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3502c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3502c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3502c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                SELECT peNd_vtas
                GOTO TOP
                DO CASE
                     CASE vsW6=1
                          STORE "@" TO veSt
                     CASE vsW6=2
                          STORE " " TO veSt
                ENDCASE
                DO CASE
                     CASE ppRg="3502"
                          SEEK veSt+vtCl+vtIt
                     CASE ppRg="3503"
                          SEEK veSt+vtCl+vtIt+vvEn
                     CASE ppRg="3504"
                          SEEK veSt+vtCl+vaNo+vtIt
                     CASE ppRg="3505"
                          SEEK veSt+vtCl+vaNo+vtIt+vvEn
                     CASE ppRg="3506"
                          SET NEAR ON
                          SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3507"
                          SET NEAR ON
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3508"
                          SET NEAR ON
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3509"
                          SET NEAR ON
                          SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7,  ;
                               4)+SUBSTR(DTOC(dfEc), 4, 2)+ ;
                               SUBSTR(DTOC(dfEc), 1, 2)
                          SET NEAR OFF
                ENDCASE
                IF EOF() .OR. f3500est<>veSt .OR. (ppRg="3502" .AND.  ;
                   f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg="3503" .AND.  ;
                   f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn) .OR. (ppRg= ;
                   "3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                   f3500tit<>vtCl+vaNo+vtIt) .OR. (ppRg="3505" .AND.  ;
                   f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+ ;
                   f3500ven<>vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                   (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem>hfEc))  ;
                   .OR. (ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem> ;
                   hfEc)) .OR. (ppRg="3508" .AND. (f3500tit<>vtIt .OR.  ;
                   f3500fve>hfEc)) .OR. (ppRg="3509" .AND. (f3500tcl+ ;
                   f3500tit+f3500ven<>vtCl+vtIt+vvEn .OR. f3500fem>hfEc))
                     DO CASE
                          CASE vsW6=1
                               STORE "No hay Documentos Cancelados..." TO mmSj
                          CASE vsW6=2
                               STORE "Ya no hay Documentos Pendientes..."  ;
                                     TO mmSj
                     ENDCASE
                     DO poNmsj
                     DO CASE
                          CASE vsW6=1
                               STORE " " TO veSt
                          CASE vsW6=2
                               STORE "@" TO veSt
                     ENDCASE
                     DO seE_3502c WITH "v"
                ELSE
                     DO CASE
                          CASE vsW6=1
                               STORE 2 TO vsW6
                          CASE vsW6=2
                               STORE 1 TO vsW6
                     ENDCASE
                     DO muE_3502c WITH "F", "v"
                     DO muE_3502c WITH "F", "i"
                     STORE ifFr TO vfFr
                     DO cuA_3502c
                     DO toT_3502c
                     DO pfU_3502c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           CASE mkEy=k_F3 .AND. vsW4=1
                DO CASE
                     CASE vsW2=1
                          STORE 2 TO vsW2
                     CASE vsW2=2
                          STORE 1 TO vsW2
                ENDCASE
                DO pfU_3502c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. vsW2=1
                DO CASE
                     CASE vsW4=1
                          STORE 2 TO vsW4
                     CASE vsW4=2
                          STORE 1 TO vsW4
                ENDCASE
                DO pfU_3502c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. (vsW4=2 .OR. vsW2=1)
                DO CASE
                     CASE vsW3=1
                          STORE 2 TO vsW3
                     CASE vsW3=2 .AND. mvIt<>2
                          STORE 1 TO vsW3
                     CASE vsW3=2
                          STORE 3 TO vsW3
                     CASE vsW3=3
                          STORE 1 TO vsW3
                ENDCASE
                DO pfU_3502c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_3502c
                SELECT peNd_vtas
                DO seE_3502c WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3502c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT peNd_vtas
                DO seE_3502c WITH "v"
           CASE mkEy=k_Tab
                DO taB_3502c
           CASE mkEy=k_Enter
                SELECT peNd_vtas
                DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO paG_3500b IN PCC3500B WITH vtDo, vsEr, vdOc
                DO orD_3502c IN PCC3502C
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT paGos
                GOTO TOP
                IF BOF()
                     STORE "No hay Pagos realizados en este Documento..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_12
                     DO pcC3500c WITH ppRg
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_12
                ENDIF
                SELECT peNd_vtas
                DO seE_3502c WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ppRg="3502"
                          SEEK veSt+vtCl+vtIt
                     CASE ppRg="3503"
                          SEEK veSt+vtCl+vtIt+vvEn
                     CASE ppRg="3504"
                          SEEK veSt+vtCl+vaNo+vtIt
                     CASE ppRg="3505"
                          SEEK veSt+vtCl+vaNo+vtIt+vvEn
                     CASE ppRg="3506"
                          SET NEAR ON
                          SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3507"
                          SET NEAR ON
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3508"
                          SET NEAR ON
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)
                          SET NEAR OFF
                     CASE ppRg="3509"
                          SET NEAR ON
                          SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7,  ;
                               4)+SUBSTR(DTOC(dfEc), 4, 2)+ ;
                               SUBSTR(DTOC(dfEc), 1, 2)
                          SET NEAR OFF
                ENDCASE
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3502c
                               OTHERWISE
                                    DO seE_3502c WITH "v"
                                    DO diS_3502c WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_3502c WITH "i", "v"
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                DO CASE
                     CASE ppRg="3502"
                          SEEK veSt+vtCl+vtIt+"ZZZ"
                     CASE ppRg="3503"
                          SEEK veSt+vtCl+vtIt+vvEn+"ZZZ"
                     CASE ppRg="3504"
                          SEEK veSt+vtCl+vaNo+vtIt+"ZZZ"
                     CASE ppRg="3505"
                          SEEK veSt+vtCl+vaNo+vtIt+vvEn+"ZZZ"
                     CASE ppRg="3506"
                          SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)+"ZZZ"
                     CASE ppRg="3507"
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)+"ZZZ"
                     CASE ppRg="3508"
                          SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                               SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc),  ;
                               1, 2)+"ZZZ"
                     CASE ppRg="3509"
                          SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7,  ;
                               4)+SUBSTR(DTOC(dfEc), 4, 2)+ ;
                               SUBSTR(DTOC(dfEc), 1, 2)+"ZZZ"
                ENDCASE
                SET NEAR OFF
                IF EOF() .OR. f3500est<>veSt .OR. (ppRg="3502" .AND.  ;
                   f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg="3503" .AND.  ;
                   f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn) .OR. (ppRg= ;
                   "3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                   f3500tit<>vtCl+vaNo+vtIt) .OR. (ppRg="3505" .AND.  ;
                   f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+ ;
                   f3500ven<>vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                   (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem>hfEc))  ;
                   .OR. (ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem> ;
                   hfEc)) .OR. (ppRg="3508" .AND. (f3500tit<>vtIt .OR.  ;
                   f3500fve>hfEc)) .OR. (ppRg="3509" .AND. (f3500tcl+ ;
                   f3500tit+f3500ven<>vtCl+vtIt+vvEn .OR. f3500fem>hfEc))
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3502c
                               OTHERWISE
                                    DO seE_3502c WITH "v"
                                    DO diS_3502c WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_3502c WITH "u", "v"
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt .OR. (ppRg="3502"  ;
                          .AND. f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg= ;
                          "3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn) .OR. (ppRg="3504" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit<>vtCl+ ;
                          vaNo+vtIt) .OR. (ppRg="3505" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+f3500ven<> ;
                          vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                          (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem> ;
                          hfEc)) .OR. (ppRg="3507" .AND. (f3500tit<>vtIt  ;
                          .OR. f3500fem>hfEc)) .OR. (ppRg="3508" .AND.  ;
                          (f3500tit<>vtIt .OR. f3500fve>hfEc)) .OR. (ppRg= ;
                          "3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn .OR. f3500fem>hfEc))
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3502c WITH ifFr, ffFr+1
                               DO li2_3502c WITH ifFr, ffFr+1
                               DO muE_3502c WITH "F", "v"
                               DO muE_3502c WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_3502c WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_3502c WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt .OR. (ppRg="3502"  ;
                          .AND. f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg= ;
                          "3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn) .OR. (ppRg="3504" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit<>vtCl+ ;
                          vaNo+vtIt) .OR. (ppRg="3505" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+f3500ven<> ;
                          vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                          (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem> ;
                          hfEc)) .OR. (ppRg="3507" .AND. (f3500tit<>vtIt  ;
                          .OR. f3500fem>hfEc)) .OR. (ppRg="3508" .AND.  ;
                          (f3500tit<>vtIt .OR. f3500fve>hfEc)) .OR. (ppRg= ;
                          "3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn .OR. f3500fem>hfEc))
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3502c WITH ifFr, ffFr+1
                               DO li2_3502c WITH ifFr, ffFr+1
                               DO muE_3502c WITH "F", "v"
                               DO muE_3502c WITH "F", "i"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_3502c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3502c WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3502c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt .OR. (ppRg="3502"  ;
                          .AND. f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg= ;
                          "3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn) .OR. (ppRg="3504" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit<>vtCl+ ;
                          vaNo+vtIt) .OR. (ppRg="3505" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+f3500ven<> ;
                          vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                          (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem> ;
                          hfEc)) .OR. (ppRg="3507" .AND. (f3500tit<>vtIt  ;
                          .OR. f3500fem>hfEc)) .OR. (ppRg="3508" .AND.  ;
                          (f3500tit<>vtIt .OR. f3500fve>hfEc)) .OR. (ppRg= ;
                          "3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn .OR. f3500fem>hfEc))
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3502c
                          STORE ifFr TO vfFr
                          DO muE_3502c WITH "i", "v"
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3502c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt .OR. (ppRg="3502"  ;
                          .AND. f3500tcl+f3500tit<>vtCl+vtIt) .OR. (ppRg= ;
                          "3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn) .OR. (ppRg="3504" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit<>vtCl+ ;
                          vaNo+vtIt) .OR. (ppRg="3505" .AND. f3500tcl+ ;
                          SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+f3500ven<> ;
                          vtCl+vaNo+vtIt+vvEn) .OR. (ppRg="3506" .AND.  ;
                          (f3500tcl+f3500tit<>vtCl+vtIt .OR. f3500fem> ;
                          hfEc)) .OR. (ppRg="3507" .AND. (f3500tit<>vtIt  ;
                          .OR. f3500fem>hfEc)) .OR. (ppRg="3508" .AND.  ;
                          (f3500tit<>vtIt .OR. f3500fve>hfEc)) .OR. (ppRg= ;
                          "3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+ ;
                          vtIt+vvEn .OR. f3500fem>hfEc))
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f3500est<>veSt .OR. (ppRg="3502"  ;
                             .AND. f3500tcl+f3500tit<>vtCl+vtIt) .OR.  ;
                             (ppRg="3503" .AND. f3500tcl+f3500tit+ ;
                             f3500ven<>vtCl+vtIt+vvEn) .OR. (ppRg="3504"  ;
                             .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                             f3500tit<>vtCl+vaNo+vtIt) .OR. (ppRg="3505"  ;
                             .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                             f3500tit+f3500ven<>vtCl+vaNo+vtIt+vvEn) .OR.  ;
                             (ppRg="3506" .AND. (f3500tcl+f3500tit<>vtCl+ ;
                             vtIt .OR. f3500fem>hfEc)) .OR. (ppRg="3507"  ;
                             .AND. (f3500tit<>vtIt .OR. f3500fem>hfEc))  ;
                             .OR. (ppRg="3508" .AND. (f3500tit<>vtIt .OR.  ;
                             f3500fve>hfEc)) .OR. (ppRg="3509" .AND.  ;
                             (f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn  ;
                             .OR. f3500fem>hfEc))
                               GOTO TOP
                               DO CASE
                                    CASE ppRg="3502"
                                         SEEK veSt+vtCl+vtIt
                                    CASE ppRg="3503"
                                         SEEK veSt+vtCl+vtIt+vvEn
                                    CASE ppRg="3504"
                                         SEEK veSt+vtCl+vaNo+vtIt
                                    CASE ppRg="3505"
                                         SEEK veSt+vtCl+vaNo+vtIt+vvEn
                                    CASE ppRg="3506"
                                         SET NEAR ON
                                         SEEK veSt+vtCl+vtIt+ ;
                                          SUBSTR(DTOC(dfEc), 7, 4)+ ;
                                          SUBSTR(DTOC(dfEc), 4, 2)+ ;
                                          SUBSTR(DTOC(dfEc), 1, 2)
                                         SET NEAR OFF
                                    CASE ppRg="3507"
                                         SET NEAR ON
                                         SEEK veSt+vtIt+SUBSTR(DTOC(dfEc),  ;
                                          7, 4)+SUBSTR(DTOC(dfEc), 4, 2)+ ;
                                          SUBSTR(DTOC(dfEc), 1, 2)
                                         SET NEAR OFF
                                    CASE ppRg="3508"
                                         SET NEAR ON
                                         SEEK veSt+vtIt+SUBSTR(DTOC(dfEc),  ;
                                          7, 4)+SUBSTR(DTOC(dfEc), 4, 2)+ ;
                                          SUBSTR(DTOC(dfEc), 1, 2)
                                         SET NEAR OFF
                                    CASE ppRg="3509"
                                         SET NEAR ON
                                         SEEK veSt+vtCl+vtIt+vvEn+ ;
                                          SUBSTR(DTOC(dfEc), 7, 4)+ ;
                                          SUBSTR(DTOC(dfEc), 4, 2)+ ;
                                          SUBSTR(DTOC(dfEc), 1, 2)
                                         SET NEAR OFF
                               ENDCASE
                          ENDIF
                          DO paN_3502c
                          STORE ifFr TO vfFr
                          DO muE_3502c WITH "i", "v"
                          DO seE_3502c WITH "v"
                          DO diS_3502c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3502c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3502c
 DO pn1_3502c WITH "1"
ENDPROC
*
PROCEDURE Pa1_3502c
 DO pn1_3502c WITH "2"
ENDPROC
*
PROCEDURE Pn1_3502c
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_3502c WITH "F", "i"
 DO muE_3502c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt .AND. vfFr<ffFr+1
      DO CASE
           CASE ppRg="3502" .AND. f3500tcl+f3500tit<>vtCl+vtIt
                EXIT
           CASE ppRg="3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn
                EXIT
           CASE ppRg="3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit<>vtCl+vaNo+vtIt
                EXIT
           CASE ppRg="3505" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit+f3500ven<>vtCl+vaNo+vtIt+vvEn
                EXIT
           CASE ppRg="3506" .AND. (f3500tcl+f3500tit<>vtCl+vtIt .OR.  ;
                f3500fem>hfEc)
                EXIT
           CASE ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem>hfEc)
                EXIT
           CASE ppRg="3508" .AND. (f3500tit<>vtIt .OR. f3500fve>hfEc)
                EXIT
           CASE ppRg="3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+ ;
                vvEn .OR. f3500fem>hfEc)
                EXIT
           CASE ptPo="2" .AND. f3500tdo+f3500ser+f3500doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_3502c WITH "N"
      ENDCASE
      DO muE_3502c WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, icL1 CLEAR TO ffFr+1, ucL1
      DO liN_3502c WITH ufFr+1, ffFr+1
      DO li2_3502c WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3502c
 PARAMETER ptIp
 PUBLIC ptM1, ptM2, ptM3, ptM4, ptM5, pcL1, pcL2, psT1, ptOt, psLd, pcJn,  ;
        plEt, plTr, pcHe
 STORE 00 TO ptM1, ptM2, ptM3, ptM4, ptM5
 STORE "" TO plTr, pcJn
 STORE SPACE(1) TO pcHe, plEt
 DO CASE
      CASE f3500mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "U$" TO vsIg
 ENDCASE
 DO veR_3500b IN PCC3500B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_vtas
 STORE f3500tot+f3500int TO ptOt
 STORE f3500tot+f3500int-f3500acu TO psLd
 DO CASE
      CASE mrEs="3" .AND. (vsW2=2 .OR. vsW4=2)
           STORE 92.7 TO ptM1
      CASE mrEs="3" .AND. vsW2=1
           STORE 42.7 TO ptM1
      CASE mrEs="4" .AND. (vsW2=2 .OR. vsW4=2)
           STORE 144.7 TO ptM1
      CASE mrEs="4" .AND. vsW2=1
           STORE 68.7 TO ptM1
      CASE vsW2=2 .OR. vsW4=2
           STORE 161.5 TO ptM1
      CASE vsW2=1
           STORE 077.1 TO ptM1
 ENDCASE
 STORE ptM1+6.7 TO ptM3
 STORE "@S"+STR(INT(ptM1+3), 0) TO ptM2
 STORE "@S"+STR(INT(ptM3+3), 0) TO ptM4
 IF psLd<0
      STORE "BQ" TO psT1
      STORE 12.8 TO ptM5
 ELSE
      STORE "NQ" TO psT1
      STORE 15.3 TO ptM5
 ENDIF
 DO cl1_3502c IN PCC3502C
 @vFFR,iCL1      Say pCJN+F3500TDO Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFFR,iCL1+04.2 Say F3500SER      Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFR,iCL1+09.0 Say F3500DOC      Font "&mLetAri",9 Style "NQ" Size 1,10.2
 DO cl2_3502c
 @vFFR,iCL1+33.0 Say F3500FVE      Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO cl3_3502c
 @vFFR,iCL1+19.8 Say F3500FEM      Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFR,iCL4+00.0 Say vSIG          Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFFR,iCL4+52.3 Say pLET          Font "&mLetAri",9 Style "NQ" Size 1,1.5
 @vFFR,iCL4+54.5 Say pCHE          Font "&mLetAri",9 Style "NQ" Size 1,1.4
 DO CASE
      CASE vsW5=1
           @vFFR,iCL4+04.2 Say pTOT              Font "&mLetAri",9 Style "NQ"    Size 1,15.3 Pict "9999,999.99"
           @vFFR,iCL4+20.3 Say F3500ACU          Font "&mLetAri",9 Style "NQ"    Size 1,15.3 Pict "9999,999.99"
           @vFFR,iCL4+36.2 Say pSLD              Font "&mLetAri",9 Style "&pST1" Size 1,pTM5 Pict "9999,999.99"
      CASE vsW5=2
           @vFFR,iCL4+04.2 Say F3500TOT          Font "&mLetAri",9 Style "NQ"    Size 1,15.3 Pict "9999,999.99"
           @vFFR,iCL4+20.3 Say F3500INT          Font "&mLetAri",9 Style "NQ"    Size 1,15.3 Pict "9999,999.99"
           @vFFR,iCL4+36.2 Say F3500TOT+F3500INT Font "&mLetAri",9 Style "NQ"    Size 1,15.3 Pict "9999,999.99"
 ENDCASE
 DO CASE
      CASE vsW4=2
           DO CASE
                CASE vsW3=1
                     @vFFR,iCL1+46.1 Say F3500VEN Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                     @vFFR,iCL1+52.7 Say F3500NVE Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pTM2"
                CASE vsW3=2
                     @vFFR,iCL1+46.1 Say pLTR     Font "&mLetAri",9 Style "NQ" Size 1,pTM3 Pict "&pTM4"
                CASE vsW3=3
                     @vFFR,iCL1+46.1 Say F3500TEC Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                     @vFFR,iCL1+52.7 Say F3500NTE Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pTM2"
           ENDCASE
      OTHERWISE
           @vFFR,iCL1+46.1 Say F3500CLI Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
           @vFFR,iCL1+52.7 Say F3500NOM Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pTM2"
           IF vsW2=1
                DO CASE
                     CASE vsW3=1
                          @vFFR,iCL3+0.0 Say F3500VEN Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                          @vFFR,iCL3+6.6 Say F3500NVE Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pTM2"
                     CASE vsW3=2
                          @vFFR,iCL3+0.0 Say pLTR     Font "&mLetAri",9 Style "NQ" Size 1,pTM3 Pict "&pTM4"
                     CASE vsW3=3
                          @vFFR,iCL3+0.0 Say F3500TEC Font "&mLetAri",9 Style "NQ" Size 1,06   Pict "@S04"
                          @vFFR,iCL3+6.6 Say F3500NTE Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pTM2"
                ENDCASE
           ENDIF
 ENDCASE
 RELEASE ptM1, ptM2, ptM3, ptM4, ptM5, pcL1, pcL2, psT1, ptOt, psLd, pcJn,  ;
         plEt, plTr, pcHe
ENDPROC
*
PROCEDURE Lin_3502c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icL1+19.4 TO pfIn, icL1+19.4
 @ piNi, icL1+32.6 TO pfIn, icL1+32.6
 @ piNi, icL1+45.7 TO pfIn, icL1+45.7
 IF vsW2=1 .AND. vsW4<>2
      @ piNi, icL3-0.4 TO pfIn, icL3-0.4
 ENDIF
 @ piNi, icL4-00.3 TO pfIn, icL4-00.3
 @ piNi, icL4+03.8 TO pfIn, icL4+03.8
 @ piNi, icL4+19.9 TO pfIn, icL4+19.9
 @ piNi, icL4+35.8 TO pfIn, icL4+35.8
 @ piNi, icL4+51.9 TO pfIn, icL4+51.9
ENDPROC
*
PROCEDURE Li2_3502c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icL1+03.8 TO pfIn, icL1+03.8
 @ piNi, icL1+08.6 TO pfIn, icL1+08.6
 IF vsW4=1 .OR. vsW3<>2
      @ piNi, icL1+52.3 TO pfIn, icL1+52.3
 ENDIF
 IF vsW2=1 .AND. vsW4<>2 .AND. (vsW3=1 .OR. (vsW3=3 .AND. mvIt=2))
      @ piNi, icL3+6.2 TO pfIn, icL3+6.2
 ENDIF
 @ piNi, icL4+54.1 TO pfIn, icL4+54.1
ENDPROC
*
PROCEDURE P00_3502c
 RESTORE SCREEN FROM vpAn_99
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 @ ifFr-1.6, icL1-0.5 TO ffFr+1.2, ucL1+0.4 PATTERN 1
 @ ifFr-0.2, icL1-0.2 TO ifFr-0.2, ucL1+0.2
 DO liN_3502c WITH ifFr-1.6, ffFr+1.1
 DO li2_3502c WITH ifFr-0.2, ffFr+1.1
 DO coLsc7
 @iFFR-1.4,iCL1+03.0 Say "Documento"    Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL1+21.8 Say "Emisión"      Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL1+35.0 Say "Vencim."      Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL4+00.2 Say "Mn"           Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL4+05.0 Say "Total Docum"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL4+26.3 Say "A/C"          Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,iCL4+40.8 Say "Saldo"        Font "&mLetAri",9 Style "BT"
 DO tiT_3502c
 DO coLsc7
 @ ffFr+1.1, vcL2+000.3 TO ffFr+3.5, vcL2+125.2 PATTERN 1 COLOR SCHEME 6
 @ ffFr+1.1, vcL2+021.0 TO ffFr+3.5, vcL2+041.7
 @ ffFr+1.1, vcL2+062.2 TO ffFr+3.5, vcL2+063.2
 @ ffFr+1.1, vcL2+062.6 TO ffFr+3.5, vcL2+062.6
 @ ffFr+1.1, vcL2+083.8 TO ffFr+3.5, vcL2+104.6
 @fFFR+1.2,vCL2+005.5 Say "Totales S/."   Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,vCL2+024.6 Say "Pagos A/C S/." Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,vCL2+046.0 Say "Saldos S/."    Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,vCL2+066.0 Say "Totales US$"   Font "&mLetAri",9 Style "NT" Color 1
 @fFFR+1.2,vCL2+085.8 Say "Pagos A/C US$" Font "&mLetAri",9 Style "NT" Color 1
 @fFFR+1.2,vCL2+107.6 Say "Saldos US$"    Font "&mLetAri",9 Style "NT" Color 1
 SELECT peNd_vtas
 DO cuA_3502c
ENDPROC
*
PROCEDURE P01_3502c
 PRIVATE pfIl
 DO CASE
      CASE ppRg="3502"
           STORE 6.8 TO pfIl
      CASE ppRg="3503"
           STORE 8.3 TO pfIl
      CASE ppRg="3504"
           STORE 8.3 TO pfIl
      CASE ppRg="3505"
           STORE 9.8 TO pfIl
      CASE ppRg="3506"
           STORE 8.3 TO pfIl
      CASE ppRg="3507"
           STORE 6.8 TO pfIl
      CASE ppRg="3508"
           STORE 6.8 TO pfIl
      CASE ppRg="3509"
           STORE 9.8 TO pfIl
 ENDCASE
 DO coL_beige
 DO cuAdro WITH ifFr-pfIl, icL1-0.2, ifFr-3.6, ucL1+0.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ppRg<>"3507" .AND. ppRg<>"3508"
      @iFFR-(pFIL-0.1),iCL1+.5 Say "Tipo de Cliente"            Font "&mLetRom",11 Style "BQ"
      @iFFR-(pFIL-0.1),iCL1+21 Say ":"                          Font "&mLetRom",11 Style "BQ"
      @iFFR-(pFIL-0.1),iCL1+23 Say vNTC                         Font "&mLetRom",11 Style "NT" Size 1,70 Pict "@S50"
      @iFFR-(pFIL-1.6),iCL1+.5 Say "Cliente Titular"            Font "&mLetRom",11 Style "BQ"
      @iFFR-(pFIL-1.6),iCL1+21 Say ":"                          Font "&mLetRom",11 Style "BQ"
      @iFFR-(pFIL-1.6),iCL1+23 Say vNTT                         Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
 ENDIF
 DO CASE
      CASE ppRg="3503"
           @iFFR-(pFIL-3.1),iCL1+.5 Say "Vendedor"              Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+21 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+23 Say vNVE                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3504"
           @iFFR-(pFIL-3.1),iCL1+.5 Say "Año"                   Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+21 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+23 Say vANO                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3505"
           @iFFR-(pFIL-3.1),iCL1+.5 Say "Año"                   Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+21 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+23 Say vANO                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-4.6),iCL1+.5 Say "Vendedor"              Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-4.6),iCL1+21 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-4.6),iCL1+23 Say vNVE                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3506"
           @iFFR-(pFIL-3.1),iCL1+.5 Say "Fechas de Emisión"     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+26 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+28 Say dFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-3.1),iCL1+42 Say "al"                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-3.1),iCL1+46 Say hFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3507"
           @iFFR-(pFIL-0.1),iCL1+.5 Say "Cliente Titular"       Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-0.1),iCL1+26 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-0.1),iCL1+28 Say vNTT                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+.5 Say "Fechas de Emisión"     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-1.6),iCL1+26 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-1.6),iCL1+28 Say dFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+42 Say "al"                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+46 Say hFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3508"
           @iFFR-(pFIL-0.1),iCL1+.5 Say "Cliente Titular"       Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-0.1),iCL1+32 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-0.1),iCL1+34 Say vNTT                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+.5 Say "Fechas de Vencimiento" Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-1.6),iCL1+32 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-1.6),iCL1+34 Say dFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+48 Say "al"                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-1.6),iCL1+52 Say hFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
      CASE ppRg="3509"
           @iFFR-(pFIL-3.1),iCL1+.5 Say "Vendedor"              Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+26 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-3.1),iCL1+28 Say vNVE                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-4.6),iCL1+.5 Say "Fechas de Emisión"     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-4.6),iCL1+26 Say ":"                     Font "&mLetRom",11 Style "BQ"
           @iFFR-(pFIL-4.6),iCL1+28 Say dFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-4.6),iCL1+42 Say "al"                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
           @iFFR-(pFIL-4.6),iCL1+46 Say hFEC                    Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
 ENDCASE
ENDPROC
*
PROCEDURE Tit_3502c
 PRIVATE pcL1, pcL2
 STORE 20*(VAL(mrEs)-2) TO pcL1
 STORE 10*(VAL(mrEs)-2) TO pcL2
 DO prEsiona WITH "1", "BOTON", ifFr-3.1, icL4-8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2<>2
      DO coLblv
      IF mvIt=2
           @iFFR-2.9,iCL4-6.1 Say Str(vSW3,1,0)+"/3" Font "&mLetRom",9 Style "BT"
      ELSE
           @iFFR-2.9,iCL4-6.1 Say Str(vSW3,1,0)+"/2" Font "&mLetRom",9 Style "BT"
      ENDIF
 ENDIF
 DO coLsc1
 DO CASE
      CASE vsW4=2 .AND. vsW3=1
           @iFFR-1.4,iCL1+65.8+pCL1 Say "Vendedores"                     Font "&mLetAri",9 Style "BQ"
      CASE vsW4=2 .AND. vsW3=2
           @iFFR-1.4,iCL1+62.8+pCL1 Say "Documentos Relacionados"        Font "&mLetAri",9 Style "BQ"
      CASE vsW4=2 .AND. vsW3=3
           @iFFR-1.4,iCL1+64.3+pCL1 Say "Técnicos de Instalación"        Font "&mLetAri",9 Style "BQ"
      CASE vsW2=2
           @iFFR-1.4,iCL1+70.1+pCL1 Say "Clientes"                       Font "&mLetAri",9 Style "BQ"
      CASE vsW2=1
           @iFFR-1.4,iCL1+55.1+pCL2 Say "Clientes"                       Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE vsW3=1
                     @iFFR-1.4,iCL3+8.0+pCL2 Say "Vendedores"              Font "&mLetAri",9 Style "BQ"
                CASE vsW3=2
                     @iFFR-1.4,iCL3+1.9+pCL2 Say "Documentos Relacionados" Font "&mLetAri",9 Style "BQ"
                CASE vsW3=3
                     @iFFR-1.4,iCL3+1.9+pCL2 Say "Técnicos de Instalación" Font "&mLetAri",9 Style "BQ"
           ENDCASE
 ENDCASE
 DO prEsiona WITH "1", "ABREI", ifFr-1.2, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU5", ifFr-1, vcB1+2.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ABRED", ifFr-1.2, vcB1+3.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW4=1 .AND. vsW2=1
      DO prEsiona WITH "1", "ABREI", ifFr-1.2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSU5", ifFr-1, vcB2+2.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "ABRED", ifFr-1.2, vcB2+3.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE pcL1, pcL2
ENDPROC
*
PROCEDURE Cua_3502c
 DO CASE
      CASE vsW6=1
           DO prEsiona WITH "2", "CUADRO", ifFr-3.1, ucL1-32
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coLscr
           @iFFR-2.95,uCL1-29.2 Say "Saldos"   Font "&mLetRom",11 Style "BT"
           DO coLscz
           DO prEsiona WITH "1", "CUADRO", ifFr-3.1, ucL1-14
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @iFFR-3,uCL1-13 Say "Cancelad" Font "&mLetRom",11 Style "BT"
      CASE vsW6=2
           DO prEsiona WITH "1", "CUADRO", ifFr-3.1, ucL1-32
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coLscz
           @iFFR-3,uCL1-29.2 Say "Saldos"   Font "&mLetRom",11 Style "BT"
           DO coLscr
           DO prEsiona WITH "2", "CUADRO", ifFr-3.1, ucL1-14
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @iFFR-2.95,uCL1-12.9 Say "Cancelad" Font "&mLetRom",11 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE Pfu_3502c
 DO coLsc1
 @ ifFr-1.5, icL1+45.7 CLEAR TO ifFr-0.2, icL4-0.2
 @ ifFr-0.2, icL3-00.6 CLEAR TO ffFr+1.1, icL3-0.1
 @ ifFr-0.2, icL3+06.0 CLEAR TO ffFr+1.1, icL3+6.5
 @ ifFr-0.2, icL1-00.2 TO ifFr-0.2, ucL1+0.2
 DO tiT_3502c
 DO liN_3502c WITH ifFr-1.6, ffFr+1.1
 DO li2_3502c WITH ifFr-0.2, ffFr+1.1
 STORE vfFr TO cfFr
 DO muE_3502c WITH "v", "x"
 DO seE_3502c WITH "i"
 DO pa1_3502c
 STORE cfFr TO vfFr
 DO muE_3502c WITH "x", "v"
 DO seE_3502c WITH "v"
 DO diS_3502c WITH "R"
ENDPROC
*
PROCEDURE Tot_3502c
 SELECT peNd_vtas
 GOTO TOP
 DO CASE
      CASE ppRg="3502"
           SEEK veSt+vtCl+vtIt
      CASE ppRg="3503"
           SEEK veSt+vtCl+vtIt+vvEn
      CASE ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt
      CASE ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn
      CASE ppRg="3506"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc),  ;
                4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3507"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3508"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3509"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
 ENDCASE
 STORE 00 TO xtO1, xtO2, xiN1, xiN2, xaC1, xaC2, vfA1, vfA2, vbO1
 STORE 00 TO vbO2, vnP1, vnP2, vlE1, vlE2, vnC1, vnC2, vnD1, vnD2
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      DO CASE
           CASE ppRg="3502" .AND. f3500tcl+f3500tit<>vtCl+vtIt
                EXIT
           CASE ppRg="3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn
                EXIT
           CASE ppRg="3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit<>vtCl+vaNo+vtIt
                EXIT
           CASE ppRg="3505" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit+f3500ven<>vtCl+vaNo+vtIt+vvEn
                EXIT
           CASE ppRg="3506" .AND. (f3500tcl+f3500tit<>vtCl+vtIt .OR.  ;
                f3500fem>hfEc)
                EXIT
           CASE ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem>hfEc)
                EXIT
           CASE ppRg="3508" .AND. (f3500tit<>vtIt .OR. f3500fve>hfEc)
                EXIT
           CASE ppRg="3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+ ;
                vvEn .OR. f3500fem>hfEc)
                EXIT
      ENDCASE
      DO CASE
           CASE f3500mon=1 .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR.  ;
                f3500tdo="N3")
                STORE xtO1-f3500tot TO xtO1
                STORE xaC1-f3500acu TO xaC1
                STORE xiN1-f3500int TO xiN1
           CASE f3500mon=1
                STORE xtO1+f3500tot TO xtO1
                STORE xaC1+f3500acu TO xaC1
                STORE xiN1+f3500int TO xiN1
           CASE f3500mon=2 .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR.  ;
                f3500tdo="N3")
                STORE xtO2-f3500tot TO xtO2
                STORE xaC2-f3500acu TO xaC2
                STORE xiN2-f3500int TO xiN2
           CASE f3500mon=2
                STORE xtO2+f3500tot TO xtO2
                STORE xaC2+f3500acu TO xaC2
                STORE xiN2+f3500int TO xiN2
      ENDCASE
      DO CASE
           CASE (f3500tdo="FA" .OR. f3500tdo="FE" .OR. f3500tdo="FC")  ;
                .AND. f3500mon=1
                STORE vfA1+(f3500tot+f3500int-f3500acu) TO vfA1
           CASE (f3500tdo="FA" .OR. f3500tdo="FE" .OR. f3500tdo="FC")  ;
                .AND. f3500mon=2
                STORE vfA2+(f3500tot+f3500int-f3500acu) TO vfA2
           CASE (f3500tdo="BO" .OR. f3500tdo="BE" .OR. f3500tdo="BC")  ;
                .AND. f3500mon=1
                STORE vbO1+(f3500tot+f3500int-f3500acu) TO vbO1
           CASE (f3500tdo="BO" .OR. f3500tdo="BE" .OR. f3500tdo="BC")  ;
                .AND. f3500mon=2
                STORE vbO2+(f3500tot+f3500int-f3500acu) TO vbO2
           CASE f3500tdo="NP" .AND. f3500mon=1
                STORE vnP1+(f3500tot+f3500int-f3500acu) TO vnP1
           CASE f3500tdo="NP" .AND. f3500mon=2
                STORE vnP2+(f3500tot+f3500int-f3500acu) TO vnP2
           CASE f3500tdo="LE" .AND. f3500mon=1
                STORE vlE1+(f3500tot+f3500int-f3500acu) TO vlE1
           CASE f3500tdo="LE" .AND. f3500mon=2
                STORE vlE2+(f3500tot+f3500int-f3500acu) TO vlE2
           CASE (f3500tdo="ND" .OR. f3500tdo="N2" .OR. f3500tdo="N4")  ;
                .AND. f3500mon=1
                STORE vnD1+(f3500tot+f3500int-f3500acu) TO vnD1
           CASE (f3500tdo="ND" .OR. f3500tdo="N2" .OR. f3500tdo="N4")  ;
                .AND. f3500mon=2
                STORE vnD2+(f3500tot+f3500int-f3500acu) TO vnD2
           CASE (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")  ;
                .AND. f3500mon=1
                STORE vnC1+(f3500tot+f3500int-f3500acu) TO vnC1
           CASE (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")  ;
                .AND. f3500mon=2
                STORE vnC2+(f3500tot+f3500int-f3500acu) TO vnC2
      ENDCASE
      SKIP
 ENDDO
 DO coLsc6
 @fFFR+2.2,vCL2+001.0 Say xTO1+xIN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,vCL2+021.6 Say xAC1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,vCL2+042.2 Say xTO1+xIN1-xAC1 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,vCL2+063.8 Say xTO2+xIN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,vCL2+084.4 Say xAC2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,vCL2+105.0 Say xTO2+xIN2-xAC2 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
ENDPROC
*
PROCEDURE Tab_3502c
 PRIVATE pcL1
 STORE INT((ucL1-85)/2) TO pcL1
 DO coLsc3
 SAVE SCREEN TO vpAn_12
 @ ifFr-02.4, pcL1+00 TO ifFr+14.0, pcL1+85 PATTERN 1
 @ ifFr-00.4, pcL1+00 TO ifFr-00.4, pcL1+85
 @ ifFr+12.0, pcL1+00 TO ifFr+14.0, pcL1+85
 @ ifFr-02.4, pcL1+29 TO ifFr+14.0, pcL1+29
 @ ifFr-02.4, pcL1+57 TO ifFr+14.0, pcL1+57
 @iFFR-02.0,pCL1+02 Say "Saldo de:"                   Font "&mLetRom",12 Style "BQ"
 @iFFR-02.0,pCL1+42 Say "S/."                         Font "&mLetRom",12 Style "BQ"
 @iFFR-02.0,pCL1+69 Say "US$"                         Font "&mLetRom",12 Style "BQ"
 @iFFR+00.0,pCL1+02 Say "Factura"                     Font "&mLetRom",12 Style "BQ"
 @iFFR+02.0,pCL1+02 Say "Boleta"                      Font "&mLetRom",12 Style "BQ"
 @iFFR+04.0,pCL1+02 Say "NP"                          Font "&mLetRom",12 Style "BQ"
 @iFFR+06.0,pCL1+02 Say "Letras"                      Font "&mLetRom",12 Style "BQ"
 @iFFR+08.0,pCL1+02 Say "Notas de Crédito"            Font "&mLetRom",12 Style "BQ"
 @iFFR+10.0,pCL1+02 Say "Notas de Débito"             Font "&mLetRom",12 Style "BQ"
 @iFFR+12.3,pCL1+02 Say "Totales:"                    Font "&mLetRom",12 Style "BQ"
 DO coLsc7
 @iFFR+00.0,pCL1+31 Say vFA1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+00.0,pCL1+59 Say vFA2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+02.0,pCL1+31 Say vBO1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+02.0,pCL1+59 Say vBO2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+04.0,pCL1+31 Say vNP1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+04.0,pCL1+59 Say vNP2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+06.0,pCL1+31 Say vLE1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+06.0,pCL1+59 Say vLE2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+08.0,pCL1+31 Say vNC1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+08.0,pCL1+59 Say vNC2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+10.0,pCL1+31 Say vND1                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+10.0,pCL1+59 Say vND2                          Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+12.3,pCL1+31 Say vFA1+vBO1+vNP1+vLE1-vNC1+vND1 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+12.3,pCL1+59 Say vFA2+vBO2+vNP2+vLE2-vNC2+vND2 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 mkEy = INKEY(0, "HM")
 STORE 99 TO mkEy
 RESTORE SCREEN FROM vpAn_12
 RELEASE pcL1
ENDPROC
*
PROCEDURE Xls_3502c
 PRIVATE ptI1, ptI2, ptI3, ptI4, ptI5, piTe, piT1, ptOt, psLd
 PUBLIC pcJn, plEt, plTr, pcHe
 STORE "Ctas. x Cobrar" TO ptI1
 STORE SPACE(20) TO ptI4
 STORE SPACE(20) TO ptI5
 DO CASE
      CASE ppRg="3502"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Titular: "+vnTt TO ptI3
           STORE 3 TO piTe
      CASE ppRg="3503"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Titular: "+vnTt TO ptI3
           STORE "Vendedor: "+vnVe TO ptI4
           STORE 4 TO piTe
      CASE ppRg="3504"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Año:"+vaNo TO ptI3
           STORE "Titular: "+vnTt TO ptI4
           STORE 4 TO piTe
      CASE ppRg="3505"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Año:"+vaNo TO ptI3
           STORE "Titular: "+vnTt TO ptI4
           STORE "Vendedor: "+vnVe TO ptI5
           STORE 5 TO piTe
      CASE ppRg="3506"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Emision desde: "+DTOC(dfEc)+" al "+DTOC(hfEc) TO ptI3
           STORE "Titular: "+vnTt TO ptI4
           STORE 4 TO piTe
      CASE ppRg="3507"
           STORE "Vencimiento desde: "+DTOC(dfEc)+" al "+DTOC(hfEc) TO ptI2
           STORE "Titular: "+vnTt TO ptI3
           STORE 3 TO piTe
      CASE ppRg="3508"
           STORE "Emision desde: "+DTOC(dfEc)+" al "+DTOC(hfEc) TO ptI2
           STORE "Titular: "+vnTt TO ptI3
           STORE 3 TO piTe
      CASE ppRg="3509"
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Emision desde: "+DTOC(dfEc)+" al "+DTOC(hfEc) TO ptI3
           STORE "Titular: "+vnTt TO ptI4
           STORE "Vendedor: "+vnVe TO ptI5
           STORE 5 TO piTe
 ENDCASE
 IF vsW6=1
      STORE ptI1+": Sólo Pendientes" TO ptI1
 ELSE
      STORE ptI1+": Sólo Cancelados" TO ptI1
 ENDIF
 STORE 13 TO piT1
 IF mvIt=2
      STORE 14 TO piT1
 ENDIF
 IF miNt<>0
      STORE piT1+5 TO piT1
 ELSE
      STORE piT1+3 TO piT1
 ENDIF
 DO xl0_0000a WITH ptI1, "Listado", piT1
 pxLs.raNge(pxLs.ceLls(1,1), pxLs.ceLls(1,piT1)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(2,piT1)).meRge
 pxLs.ceLls(1, 1).foNt.siZe = 15
 pxLs.ceLls(2, 1).foNt.siZe = 12
 pxLs.ceLls(2, 1).foNt.boLd = .T.
 pxLs.ceLls(2, 1).foNt.siZe = 11
 pxLs.ceLls(2, 1).foNt.naMe = "Times New Roman"
 pxLs.ceLls(2, 1).vaLue = ptI2
 IF LEN(ALLTRIM(ptI3))<>0
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).meRge
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.boLd = .T.
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
      pxLs.ceLls(3, 1).vaLue = ptI3
 ENDIF
 IF LEN(ALLTRIM(ptI4))<>0
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).meRge
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.boLd = .T.
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
      pxLs.ceLls(3, 1).vaLue = ptI4
 ENDIF
 IF LEN(ALLTRIM(ptI5))<>0
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).meRge
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.boLd = .T.
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
      pxLs.ceLls(3, 1).vaLue = ptI5
 ENDIF
 STORE piTe+2 TO piTe
 pxLs.ceLls(piTe, 01).seLect
 pxLs.ceLls(piTe, 01).vaLue = "Documento"
 pxLs.ceLls(piTe, 04).vaLue = "Cliente"
 pxLs.ceLls(piTe, 06).vaLue = "Emision"
 pxLs.ceLls(piTe, 07).vaLue = "Vencimiento"
 pxLs.ceLls(piTe, 08).vaLue = "Vendedor"
 pxLs.ceLls(piTe, 10).vaLue = "T/L"
 pxLs.ceLls(piTe, 11).vaLue = "xRend"
 pxLs.ceLls(piTe, 12).vaLue = "Doc.Rel"
 STORE 13 TO piT1
 IF mvIt=2
      pxLs.ceLls(piTe, piT1).vaLue = "Tecn.Instalac"
      STORE 14 TO piT1
 ENDIF
 pxLs.ceLls(piTe, piT1).vaLue = "Mon"
 IF miNt<>0
      pxLs.ceLls(piTe, piT1+1).vaLue = "Total s/Intereses"
      pxLs.ceLls(piTe, piT1+2).vaLue = "Intereses"
      pxLs.ceLls(piTe, piT1+3).vaLue = "Total"
      pxLs.ceLls(piTe, piT1+4).vaLue = "A/C"
      pxLs.ceLls(piTe, piT1+5).vaLue = "Saldo"
 ELSE
      pxLs.ceLls(piTe, piT1+1).vaLue = "Total"
      pxLs.ceLls(piTe, piT1+2).vaLue = "A/C"
      pxLs.ceLls(piTe, piT1+3).vaLue = "Saldo"
 ENDIF
 pxLs.raNge(pxLs.ceLls(piTe,1), pxLs.ceLls(piTe,3)).meRge
 pxLs.raNge(pxLs.ceLls(piTe,4), pxLs.ceLls(piTe,5)).meRge
 pxLs.raNge(pxLs.ceLls(piTe,8), pxLs.ceLls(piTe,9)).meRge
 SELECT peNd_vtas
 GOTO TOP
 DO CASE
      CASE ppRg="3502"
           SEEK veSt+vtCl+vtIt
      CASE ppRg="3503"
           SEEK veSt+vtCl+vtIt+vvEn
      CASE ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt
      CASE ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn
      CASE ppRg="3506"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc),  ;
                4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3507"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3508"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3509"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
 ENDCASE
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(12)).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(05)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(8), pxLs.coLumns(12)).nuMberformat = "@"
 STORE 13 TO piT1
 IF mvIt=2
      STORE 14 TO piT1
 ENDIF
 IF miNt<>0
      pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+ ;
                5)).hoRizontalalignment = 1
      pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+5)).nuMberformat =  ;
                "##,###,##0.00"
 ELSE
      pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+ ;
                3)).hoRizontalalignment = 1
      pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+3)).nuMberformat =  ;
                "##,###,##0.00"
 ENDIF
 STORE 1 TO meN1
 STORE piTe+1 TO piTe
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      DO CASE
           CASE ppRg="3502" .AND. f3500tcl+f3500tit<>vtCl+vtIt
                EXIT
           CASE ppRg="3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn
                EXIT
           CASE ppRg="3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit<>vtCl+vaNo+vtIt
                EXIT
           CASE ppRg="3505" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit+f3500ven<>vtCl+vaNo+vtIt+vvEn
                EXIT
           CASE ppRg="3506" .AND. (f3500tcl+f3500tit<>vtCl+vtIt .OR.  ;
                f3500fem>hfEc)
                EXIT
           CASE ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem>hfEc)
                EXIT
           CASE ppRg="3508" .AND. (f3500tit<>vtIt .OR. f3500fve>hfEc)
                EXIT
           CASE ppRg="3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+ ;
                vvEn .OR. f3500fem>hfEc)
                EXIT
      ENDCASE
      STORE "" TO plTr, pcJn
      STORE SPACE(1) TO pcHe, plEt
      DO veR_3500b IN PCC3500B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT peNd_vtas
      STORE f3500tot+f3500int TO ptOt
      STORE f3500tot+f3500int-f3500acu TO psLd
      pxLs.ceLls(piTe, 01).seLect
      pxLs.ceLls(piTe, 01).vaLue = f3500tdo
      pxLs.ceLls(piTe, 02).vaLue = f3500ser
      pxLs.ceLls(piTe, 03).vaLue = f3500doc
      pxLs.ceLls(piTe, 04).vaLue = f3500cli
      pxLs.ceLls(piTe, 05).vaLue = f3500nom
      pxLs.ceLls(piTe, 06).vaLue = f3500fem
      pxLs.ceLls(piTe, 07).vaLue = f3500fve
      pxLs.ceLls(piTe, 08).vaLue = f3500ven
      pxLs.ceLls(piTe, 09).vaLue = f3500nve
      pxLs.ceLls(piTe, 10).vaLue = plEt
      pxLs.ceLls(piTe, 11).vaLue = pcHe
      IF f3500tdo="PC"
           pxLs.ceLls(piTe, 12).vaLue = f3500nte
      ELSE
           pxLs.ceLls(piTe, 12).vaLue = plTr
      ENDIF
      STORE 13 TO piT1
      IF mvIt=2
           pxLs.ceLls(piTe, piT1+13).vaLue = f3500nte
           STORE 14 TO piT1
      ENDIF
      pxLs.ceLls(piTe, piT1).vaLue = vsIg
      IF miNt<>0
           pxLs.ceLls(piTe, piT1+1).vaLue = f3500tot
           pxLs.ceLls(piTe, piT1+2).vaLue = f3500int
           pxLs.ceLls(piTe, piT1+3).vaLue = ptOt
           pxLs.ceLls(piTe, piT1+4).vaLue = f3500acu
           pxLs.ceLls(piTe, piT1+5).vaLue = psLd
      ELSE
           pxLs.ceLls(piTe, piT1+1).vaLue = ptOt
           pxLs.ceLls(piTe, piT1+2).vaLue = f3500acu
           pxLs.ceLls(piTe, piT1+3).vaLue = psLd
      ENDIF
      STORE piTe+1 TO piTe
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT peNd_vtas
      SKIP
 ENDDO
 STORE 13 TO piT1
 IF mvIt=2
      STORE 14 TO piT1
 ENDIF
 pxLs.ceLls(piTe+0, piT1+0).vaLue = "Totales S/."
 pxLs.ceLls(piTe+1, piT1+0).vaLue = "Totales US$"
 pxLs.ceLls(piTe+0, piT1+0).foNt.boLd = .T.
 pxLs.ceLls(piTe+1, piT1+0).foNt.boLd = .T.
 IF miNt<>0
      pxLs.ceLls(piTe, piT1+1).vaLue = xtO1
      pxLs.ceLls(piTe, piT1+2).vaLue = xiN1
      pxLs.ceLls(piTe, piT1+3).vaLue = xtO1+xiN1
      pxLs.ceLls(piTe, piT1+4).vaLue = xaC1
      pxLs.ceLls(piTe, piT1+5).vaLue = xtO1+xiN1-xaC1
      pxLs.ceLls(piTe, piT1+1).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+2).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+3).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+4).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+5).foNt.boLd = .T.
      STORE piTe+1 TO piTe
      pxLs.ceLls(piTe, piT1+1).vaLue = xtO2
      pxLs.ceLls(piTe, piT1+2).vaLue = xiN2
      pxLs.ceLls(piTe, piT1+3).vaLue = xtO2+xiN2
      pxLs.ceLls(piTe, piT1+4).vaLue = xaC2
      pxLs.ceLls(piTe, piT1+5).vaLue = xtO2+xiN2-xaC2
      pxLs.ceLls(piTe, piT1+1).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+2).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+3).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+4).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+5).foNt.boLd = .T.
 ELSE
      pxLs.ceLls(piTe, piT1+1).vaLue = xtO1+xiN1
      pxLs.ceLls(piTe, piT1+2).vaLue = xaC1
      pxLs.ceLls(piTe, piT1+3).vaLue = xtO1+xiN1-xaC1
      pxLs.ceLls(piTe, piT1+1).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+2).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+3).foNt.boLd = .T.
      STORE piTe+1 TO piTe
      pxLs.ceLls(piTe, piT1+1).vaLue = xtO2+xiN2
      pxLs.ceLls(piTe, piT1+2).vaLue = xaC2
      pxLs.ceLls(piTe, piT1+3).vaLue = xtO2+xiN2-xaC2
      pxLs.ceLls(piTe, piT1+1).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+2).foNt.boLd = .T.
      pxLs.ceLls(piTe, piT1+3).foNt.boLd = .T.
 ENDIF
 DO xl1_0000a WITH 1
 WAIT CLEAR
 RELEASE ptI1, ptI2, ptI3, ptI4, ptI5, piTe, piT1, ptOt, psLd
 RELEASE pcJn, plEt, plTr, pcHe
ENDPROC
*
PROCEDURE Cl1_3502c
 DO CASE
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N" .AND. f3500fem=f3500fve
           DO coLsc7
      CASE ptIp="R" .AND. f3500fem=f3500fve
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_3502c
 DO CASE
      CASE ptIp="N" .AND. f3500fve<DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"ND" .AND. f3500tdo<>"N1" .AND. f3500tdo<>"N2" .AND.  ;
           f3500tdo<>"N3" .AND. f3500tdo<>"N4"
           DO coLscz
      CASE ptIp="R" .AND. f3500fve<DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"ND" .AND. f3500tdo<>"N1" .AND. f3500tdo<>"N2" .AND.  ;
           f3500tdo<>"N3" .AND. f3500tdo<>"N4"
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl3_3502c
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl4_3502c
 DO CASE
      CASE ptIp="N" .AND. f3500tot-f3500acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3500tot-f3500acu<0
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Res_3502c
 DO muE_3502c WITH "v", "c"
 DO CASE
      CASE ppRg="3502"
           DO reS_3502b
      CASE ppRg="3503"
           DO reS_3503b
      CASE ppRg="3504"
           DO reS_3504b
      CASE ppRg="3505"
           DO reS_3505b
      CASE ppRg="3506"
           DO reS_3506b
      CASE ppRg="3507"
           DO reS_3507b
      CASE ppRg="3508"
           DO reS_3508b
      CASE ppRg="3509"
           DO reS_3509b
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3502c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3502c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_vtas
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 DO seE_3502c WITH "i"
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      DO CASE
           CASE ppRg="3502" .AND. f3500tcl+f3500tit<>vtCl+vtIt
                EXIT
           CASE ppRg="3503" .AND. f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+vvEn
                EXIT
           CASE ppRg="3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit<>vtCl+vaNo+vtIt
                EXIT
           CASE ppRg="3505" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500tit+f3500ven<>vtCl+vaNo+vtIt+vvEn
                EXIT
           CASE ppRg="3506" .AND. (f3500tcl+f3500tit<>vtCl+vtIt .OR.  ;
                f3500fem>hfEc)
                EXIT
           CASE ppRg="3507" .AND. (f3500tit<>vtIt .OR. f3500fem>hfEc)
                EXIT
           CASE ppRg="3508" .AND. (f3500tit<>vtIt .OR. f3500fve>hfEc)
                EXIT
           CASE ppRg="3509" .AND. (f3500tcl+f3500tit+f3500ven<>vtCl+vtIt+ ;
                vvEn .OR. f3500fem>hfEc)
                EXIT
      ENDCASE
      IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      DO muE_3502c WITH "v", "c"
      DO muE_3502c WITH "v", "i"
      STORE ifFr TO vfFr, cfFr
 ENDIF
 DO seE_3502c WITH "i"
 DO paN_3502c
 STORE cfFr TO vfFr
 DO muE_3502c WITH "c", "v"
 DO seE_3502c WITH "v"
 DO diS_3502c WITH "R"
 DO toT_3502c
ENDPROC
*
PROCEDURE Imp_3502c
 PARAMETER ptP1, ptP2, ptP3
 STORE "BC" TO dtDo
 STORE "001" TO dsEr
 STORE "0000001" TO ddOc
 STORE "PC" TO htDo
 STORE "999" TO hsEr
 STORE "9999999" TO hdOc
 STORE "00" TO dvEn
 STORE "ZZ" TO hvEn
 STORE 1 TO voPc, voP1, voP2
 STORE 0 TO mvIs
 DO CASE
      CASE voP1<3
           DO ipR_0001a WITH "VE"
      CASE voP1=3
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3500B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE voP1<3
           DO ipR_0001a WITH "VE"
      CASE voP1=3
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3502c IN PCC3502C
 DO fpR_0001a
 STORE 99 TO mkEy
 DO orD_3502c IN PCC3502C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rep_3502c
 PUBLIC pcL1, pcL2, ptAm
 PRIVATE ptDo, psR1, pdOc, pfEm, pmOn, ptOt, paCu, piNt, paNo, pmEs, psEr,  ;
         pnUm, pdIa, pgLo, pcHe
 DO CASE
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1<3
           STORE 96 TO ptAm
           STORE 07 TO mcLn
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1=3
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1<3
           STORE 97 TO ptAm
           STORE 08 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1=3
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           DO CASE
                CASE voP1<3
                     STORE 98 TO ptAm
                CASE voP1=3
                     STORE 118 TO ptAm
           ENDCASE
           DO npG_0000a
 ENDCASE
 STORE mcLn TO pcL1
 DO CASE
      CASE mvIs=1
           STORE mcLn+19.5 TO pcL2
      CASE mpRt="1"
           STORE mcLn+16.6 TO pcL2
      CASE mpRt="2"
           STORE mcLn+20.5 TO pcL2
 ENDCASE
 SELECT peNd_vtas
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 DO CASE
      CASE ppRg="3502"
           SEEK veSt+vtCl+vtIt
      CASE ppRg="3503"
           SEEK veSt+vtCl+vtIt+vvEn
      CASE ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt
      CASE ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn
      CASE ppRg="3506"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc),  ;
                4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3507" .OR. ppRg="3508"
           SET NEAR ON
           SEEK veSt+vtIt+SUBSTR(DTOC(dfEc), 7, 4)+SUBSTR(DTOC(dfEc), 4,  ;
                2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
      CASE ppRg="3509"
           SET NEAR ON
           SEEK veSt+vtCl+vtIt+vvEn+SUBSTR(DTOC(dfEc), 7, 4)+ ;
                SUBSTR(DTOC(dfEc), 4, 2)+SUBSTR(DTOC(dfEc), 1, 2)
           SET NEAR OFF
 ENDCASE
 DO coLbln
 STORE 0 TO csL1, csL2, ctT1, ctT2, vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. f3500est+f3500tit=veSt+vtIt
      DO CASE
           CASE ppRg="3502" .AND. f3500tcl<>vtCl
                EXIT
           CASE ppRg="3503" .AND. f3500tcl+f3500ven<>vtCl+vvEn
                EXIT
           CASE ppRg="3504" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)<> ;
                vtCl+vaNo
                EXIT
           CASE ppRg="3505" .AND. f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
                f3500ven<>vtCl+vaNo+vvEn
                EXIT
           CASE ppRg="3506" .AND. (f3500tcl<>vtCl .OR. f3500fem>hfEc)
                EXIT
           CASE ppRg="3507" .AND. f3500fem>hfEc
                EXIT
           CASE ppRg="3508" .AND. f3500fve>hfEc
                EXIT
           CASE ppRg="3509" .AND. (f3500tcl+f3500ven<>vtCl+vvEn .OR.  ;
                f3500fem>hfEc)
                EXIT
      ENDCASE
      STORE f3500tdo TO ptDo
      STORE f3500ser TO psR1
      STORE f3500doc TO pdOc
      STORE f3500fem TO pfEm
      STORE f3500mon TO pmOn
      STORE f3500tot TO ptOt
      STORE f3500int TO piNt
      STORE f3500acu TO paCu
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF (voPc=1 .AND. (ptDo+psR1+pdOc<dtDo+dsEr+ddOc .OR. ptDo+psR1+pdOc> ;
         htDo+hsEr+hdOc)) .OR. (voPc=2 .AND. (pfEm<dfEc .OR. pfEm>hfEc))
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3502c IN PCC3502C WITH "3502"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO im1_3500b IN PCC3500B WITH pcL1, "3502"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE (ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3") .AND. pmOn=1
                STORE csL1-(ptOt-paCu) TO csL1
                STORE ctT1-ptOt TO ctT1
           CASE (ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3")
                STORE csL2-(ptOt-paCu) TO csL2
                STORE ctT2-ptOt TO ctT2
           CASE pmOn=1
                STORE csL1+(ptOt+piNt-paCu) TO csL1
                STORE ctT1+ptOt TO ctT1
           CASE pmOn=2
                STORE csL2+(ptOt+piNt-paCu) TO csL2
                STORE ctT2+ptOt TO ctT2
      ENDCASE
      STORE vlIn+1.3 TO vlIn
      IF voP2=2
           SELECT peNd_vtas
           DO paG_3500b IN PCC3500B WITH ptDo, psR1, pdOc
           SELECT paGos
           GOTO TOP
           IF  .NOT. BOF()
                STORE vlIn+0.8 TO vlIn
                IF vlIn+1.5>mpAg-3
                     DO caB_3502c IN PCC3502C WITH "3502"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO cb1_3500b IN PCC3500B WITH pcL2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT paGos
                DO WHILE  .NOT. EOF()
                     IF vlIn>mpAg-3
                          DO caB_3502c IN PCC3502C WITH "3502"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          DO cb1_3500b IN PCC3500B WITH pcL2
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     DO im2_3500b IN PCC3500B WITH pcL2
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE vlIn+1.3 TO vlIn
                     SKIP
                ENDDO
                STORE vlIn+0.8 TO vlIn
           ENDIF
           DO orD_3502c IN PCC3502C
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      SELECT peNd_vtas
      SKIP
 ENDDO
 IF vpAg>0
      IF vlIn+1.3>mpAg-3
           DO caB_3502c IN PCC3502C WITH "3502"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO suB_3500b IN PCC3500B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+2 TO vlIn
      IF vlIn>mpAg-3
           DO caB_3502c IN PCC3502C WITH "3502"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO rsM_3500b IN PCC3500B
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE pcL1, pcL2, ptAm
 RELEASE ptDo, psR1, pdOc, pfEm, pmOn, ptOt, paCu, piNt, paNo, pmEs, psEr,  ;
         pnUm, pdIa, pgLo, pcHe
ENDPROC
*
PROCEDURE Cab_3502c
 PARAMETER ppRg
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE ppRg="3502" .OR. ppRg="3503"
                @vLIN,mCLN Say "Cuentas x Cobrar de "+AllTrim(vNTC)                    Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3504" .OR. ppRg="3505"
                @vLIN,mCLN Say "Cuentas x Cobrar "+vANO+" de "+AllTrim(vNTC)           Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3506" .OR. ppRg="3509"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Emisión de "+AllTrim(vNTC) Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3507"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Emisión"                   Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3508"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Vencimiento"               Font "&mLetRom",14 Style "BQI"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Cliente Titular "+vTIT+": "+vNTT Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
      STORE vlIn+1.3 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say "Vendedor: "+vVEN+" : "+vNVE Font "&mLetAri",10 Style "NT"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
 IF ppRg="3506" .OR. ppRg="3507" .OR. ppRg="3508" .OR. ppRg="3509"
      STORE vlIn+1.3 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say "Desde: "+Dtoc(dFEC)+" hasta "+Dtoc(hFEC) Font "&mLetAri",10 Style "NT"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE voPc=2
                @vLIN,pCL1 Say "Sólo Pendientes"       Font "&mLetAri",8 Style "NT"
           CASE voPc=3
                @vLIN,pCL1 Say "Cancelados/Pendientes" Font "&mLetAri",8 Style "NT"
           CASE voPc=4
                @vLIN,pCL1 Say "Sólo Cancelados"       Font "&mLetAri",8 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 DO coL_pr1
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Ord_3502c
 SELECT peNd_vtas
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3506"
           DO orD_0000a WITH "3500", "C", "F3500TCL", "A"
      CASE ppRg="3503" .OR. ppRg="3509"
           DO orD_0000a WITH "3500", "C", "F3500TC1", "A"
      CASE ppRg="3504"
           DO orD_0000a WITH "3500", "C", "F3500TC2", "A"
      CASE ppRg="3505"
           DO orD_0000a WITH "3500", "C", "F3500TC3", "A"
      CASE ppRg="3507"
           DO orD_0000a WITH "3500", "C", "F3500TI1", "A"
      CASE ppRg="3508"
           DO orD_0000a WITH "3500", "C", "F3500TI2", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3502c
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
      CASE ptP1="F" .AND. ptP2="v"
           STORE f3500tdo TO vtDo
           STORE f3500ser TO vsEr
           STORE f3500doc TO vdOc
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO vdIa
      CASE ptP1="F" .AND. ptP2="i"
           STORE f3500tdo TO itDo
           STORE f3500ser TO isEr
           STORE f3500doc TO idOc
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO idIa
      CASE ptP1="F" .AND. ptP2="u"
           STORE f3500tdo TO utDo
           STORE f3500ser TO usEr
           STORE f3500doc TO udOc
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO udIa
 ENDCASE
ENDPROC
*
PROCEDURE See_3502c
 PARAMETER psEe
 DO CASE
      CASE psEe="v" .AND. (ppRg="3502" .OR. ppRg="3506")
           SEEK veSt+vtCl+vtIt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i" .AND. (ppRg="3502" .OR. ppRg="3506")
           SEEK veSt+vtCl+vtIt+iaNo+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u" .AND. (ppRg="3502" .OR. ppRg="3506")
           SEEK veSt+vtCl+vtIt+uaNo+umEs+udIa+utDo+usEr+udOc
      CASE psEe="v" .AND. (ppRg="3503" .OR. ppRg="3509")
           SEEK veSt+vtCl+vtIt+vvEn+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i" .AND. (ppRg="3503" .OR. ppRg="3509")
           SEEK veSt+vtCl+vtIt+vvEn+iaNo+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u" .AND. (ppRg="3503" .OR. ppRg="3509")
           SEEK veSt+vtCl+vtIt+vvEn+uaNo+umEs+udIa+utDo+usEr+udOc
      CASE psEe="v" .AND. ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i" .AND. ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u" .AND. ppRg="3504"
           SEEK veSt+vtCl+vaNo+vtIt+umEs+udIa+utDo+usEr+udOc
      CASE psEe="v" .AND. ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i" .AND. ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u" .AND. ppRg="3505"
           SEEK veSt+vtCl+vaNo+vtIt+vvEn+umEs+udIa+utDo+usEr+udOc
      CASE psEe="v" .AND. (ppRg="3507" .OR. ppRg="3508")
           SEEK veSt+vtIt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i" .AND. (ppRg="3507" .OR. ppRg="3508")
           SEEK veSt+vtIt+iaNo+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u" .AND. (ppRg="3507" .OR. ppRg="3508")
           SEEK veSt+vtIt+uaNo+umEs+udIa+utDo+usEr+udOc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3502c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=ifFr-3.385 .AND. mfIl<=ifFr-1.742 .AND. mcCc>=ucL1-32  ;
           .AND. mcCc<=ucL1-17.8 .AND. vsW6<>1
           STORE k_F2 TO mkEy
      CASE mfIl>=ifFr-3.385 .AND. mfIl<=ifFr-1.742 .AND. mcCc>=ucL1-14.2  ;
           .AND. mcCc<=ucL1 .AND. vsW6<>2
           STORE k_F2 TO mkEy
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=ifFr-1.164 .AND. mfIl<=ifFr-0.235 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+5.8 .AND. vsW4=2
           STORE k_F4 TO mkEy
      CASE mfIl>=ifFr-1.164 .AND. mfIl<=ifFr-0.235 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+5.8
           STORE k_F3 TO mkEy
      CASE mfIl>=ifFr-1.164 .AND. mfIl<=ifFr-0.235 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+5.8
           STORE k_F4 TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           DO diS_3502c WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_3502c WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_3502c WITH "F", "v"
           DO diS_3502c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3502c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 03 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el"
 @ pfIl+1, 03 SAY "Rango elegido."
 @ pfIl+3, 03 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "ESC" STYLE "BT"
 @ pfIl+1, 02 SAY "F10" STYLE "BT"
 @ pfIl+2, 02 SAY "F1" STYLE "BT"
 @ pfIl+3, 02 SAY "F2" STYLE "BT"
 @ pfIl+0, 24 SAY "Regresar a la pantalla anterior"
 @ pfIl+1, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 24 SAY "Ayuda del Programa"
 @ pfIl+3, 24 SAY "Cambiar de pestañas"
 STORE pfIl+4 TO pfIl
 IF vsW4=1
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F3" STYLE "BT"
      @ pfIl, 24 SAY "Ampliar/Reducir Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW4=2
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F4" STYLE "BT"
      DO CASE
           CASE vsW2=1
                @ pfIl, 24 SAY "Ampliar/Reducir Vendedor"
           CASE vsW2=2
                @ pfIl, 24 SAY "Ampliar/Reducir Documentos relac."
           CASE vsW2=3
                @ pfIl, 24 SAY "Ampliar/Reducir Tecn.de Instalac."
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW4=2 .OR. vsW2=1
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F5" STYLE "BT"
      @ pfIl, 24 SAY "Cambiar de Vendedores/Doc.Relac./Tecn.Inst"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+4, 22 SAY ":" STYLE "BT"
 @ pfIl+5, 22 SAY ":" STYLE "BT"
 @ pfIl+6, 22 SAY ":" STYLE "BT"
 @ pfIl+7, 22 SAY ":" STYLE "BT"
 @ pfIl+8, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "F8" STYLE "BT"
 @ pfIl+1, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+4, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+5, 02 SAY "HOME" STYLE "BT"
 @ pfIl+6, 02 SAY "END" STYLE "BT"
 @ pfIl+7, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+8, 02 SAY "TAB" STYLE "BT"
 @ pfIl+0, 24 SAY "Pasar Datos a Excel"
 @ pfIl+1, 24 SAY "Línea inferior"
 @ pfIl+2, 24 SAY "Línea superior"
 @ pfIl+3, 24 SAY "Página siguiente"
 @ pfIl+4, 24 SAY "Página anterior"
 @ pfIl+5, 24 SAY "Primera línea"
 @ pfIl+6, 24 SAY "Última línea"
 @ pfIl+7, 24 SAY "Imprime Documentos Pendientes del Titular"
 @ pfIl+8, 24 SAY "Ver Saldos x Tipo de Documento"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
