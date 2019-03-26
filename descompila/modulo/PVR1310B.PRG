 STORE 1 TO vsW0, vsW1, vsW2, vsW3
 IF voPv=0
      STORE 2 TO vsW2
 ENDIF
 SELECT teMporal_1
 SET ORDER TO FTM1NOM
 SELECT teMporal_2
 SET ORDER TO FTM1NOM
 DO CASE
      CASE vsW2=1
           SELECT teMporal_1
      CASE vsW2=2
           SELECT teMporal_2
 ENDCASE
 GOTO TOP
 DO p00_1310b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1310b
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1310b WITH "i", "v"
 DO seE_1310b WITH "v"
 DO diS_1310b WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1310b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1310b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1310b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. voPc=1
                STORE 01 TO meRr
                SELECT kaRdex
                SET ORDER TO F2990COD
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 00 TO meRr
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT kaRdex
                     SET ORDER TO F2990TD1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE "No hay datos en el Kardex..." TO mmSj
                     DO poNmsj
                     LOOP
                ENDIF
                SELECT deT_cpra
                SET ORDER TO F2401COD
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_12
                DO pvR1310c
                RESTORE SCREEN FROM vpAn_12
                STORE 01 TO meRr
                SELECT deT_cpra
                SET ORDER TO F2401DOC
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT kaRdex
                SET ORDER TO F2990TD1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 00 TO meRr
                DO CASE
                     CASE vsW2=1
                          SELECT teMporal_1
                     CASE vsW2=2
                          SELECT teMporal_2
                ENDCASE
           CASE mkEy=k_F2
                DO CASE
                     CASE vsW2=1 .AND. voPk=1
                          STORE 2 TO vsW2
                          IF vsW0>3
                               STORE 1 TO vsW0
                          ENDIF
                     CASE vsW2=2 .AND. voPv=1
                          STORE 1 TO vsW2
                ENDCASE
                DO CASE
                     CASE vsW2=1
                          SELECT teMporal_1
                     CASE vsW2=2
                          SELECT teMporal_2
                ENDCASE
                DO boT_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO tiT_1310b
                GOTO TOP
                DO paN_1310b
                GOTO TOP
                STORE ifIl TO vfIl
                DO muE_1310b WITH "i", "v"
                DO seE_1310b WITH "v"
                DO diS_1310b WITH "R"
                DO toT_1310b
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. mrEs>"3"
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                     IF vsW1=3
                          STORE 2 TO vsW1
                     ENDIF
                ENDIF
                DO coL_beige
                DO CASE
                     CASE mrEs="4"
                          @ ifIl-0.2, mcO0+021.9 CLEAR TO ffIl+1.6, mcO0+022.5
                          @ ifIl-0.2, mcO0+026.3 CLEAR TO ffIl+1.6, mcO0+026.9
                          @ ifIl-0.2, mcO0+045.1 CLEAR TO ffIl+1.6, mcO0+045.7
                          @ ifIl-0.2, mcO0+063.9 CLEAR TO ffIl+1.6, mcO0+064.5
                          @ ifIl-0.2, mcO0+082.7 CLEAR TO ffIl+1.6, mcO0+083.3
                          @ ifIl-0.2, mcO0+101.5 CLEAR TO ffIl+1.6, mcO0+102.1
                          @ ifIl-0.2, mcO0+120.3 CLEAR TO ffIl+1.6, mcO0+120.9
                          @ ifIl-0.2, mcO0+134.6 CLEAR TO ffIl+1.6, mcO0+135.5
                          IF vsW3=1
                               @ ifIl-3.5, mcO0+muCo-7.7 CLEAR TO ifIl-2,  ;
                                 mcO0+muCo
                          ELSE
                               DO coLsc4
                               @ ifIl-1.8, mcO0+26.5 CLEAR TO ifIl-0.3,  ;
                                 mcO0+139.4
                               @ ffIl+1.7, mcO0+26.5 CLEAR TO ffIl+3.3,  ;
                                 mcO0+139.4
                          ENDIF
                     OTHERWISE
                          @ ifIl-0.2, mcO0+038.8 CLEAR TO ffIl+1.6, mcO0+039.5
                          @ ifIl-0.2, mcO0+043.1 CLEAR TO ffIl+1.6, mcO0+044.0
                          @ ifIl-0.2, mcO0+061.9 CLEAR TO ffIl+1.6, mcO0+062.6
                          @ ifIl-0.2, mcO0+080.7 CLEAR TO ffIl+1.6, mcO0+081.4
                          @ ifIl-0.2, mcO0+099.6 CLEAR TO ffIl+1.6, mcO0+100.3
                          @ ifIl-0.2, mcO0+118.3 CLEAR TO ffIl+1.6, mcO0+119.0
                          @ ifIl-0.2, mcO0+132.8 CLEAR TO ffIl+1.6, mcO0+133.4
                          IF vsW3=1
                               @ ifIl-3.5, mcO0+muCo-7.7 CLEAR TO ifIl-2,  ;
                                 mcO0+muCo
                          ELSE
                               DO coLsc4
                               @ ifIl-1.8, mcO0+26.5 CLEAR TO ifIl-0.3,  ;
                                 mcO0+137.3
                               @ ffIl+1.7, mcO0+26.5 CLEAR TO ffIl+3.3,  ;
                                 mcO0+137.3
                          ENDIF
                ENDCASE
                DO liN_1310b WITH ifIl-1.8, ffIl+3.3
                DO li1_1310b WITH ifIl-0.3, ffIl+1.7
                DO tiT_1310b
                DO boT_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO bt1_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE vfIl TO cfIl
                DO muE_1310b WITH "v", "x"
                DO seE_1310b WITH "i"
                DO paN_1310b
                STORE cfIl TO vfIl
                DO muE_1310b WITH "x", "v"
                DO seE_1310b WITH "v"
                DO diS_1310b WITH "R"
                DO toT_1310b
           CASE mkEy=k_F8
                DO xlS_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_right .OR. mkEy=k_Ctrl_left
                DO CASE
                     CASE mkEy=k_Ctrl_right .AND. vsW0=8 .AND. vsW2=1  ;
                          .AND. voPc=1
                          STORE 1 TO vsW0
                     CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. vsW2=1  ;
                          .AND. voPc=1
                          STORE 8 TO vsW0
                     CASE mkEy=k_Ctrl_right .AND. vsW0=3 .AND. vsW2=2  ;
                          .AND. voPc=1
                          STORE 1 TO vsW0
                     CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. vsW2=2  ;
                          .AND. voPc=1
                          STORE 3 TO vsW0
                     CASE mkEy=k_Ctrl_right .AND. vsW0=2 .AND. voPc>1
                          STORE 1 TO vsW0
                     CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. voPc>1
                          STORE 2 TO vsW0
                     CASE mkEy=k_Ctrl_right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Ctrl_left
                          STORE vsW0-1 TO vsW0
                ENDCASE
                DO tiT_1310b
                DO boT_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE vfIl TO cfIl
                DO muE_1310b WITH "v", "x"
                DO seE_1310b WITH "i"
                DO paN_1310b
                STORE cfIl TO vfIl
                DO muE_1310b WITH "x", "v"
                DO seE_1310b WITH "v"
                DO diS_1310b WITH "R"
                DO toT_1310b
           CASE (mkEy=k_Right .OR. mkEy=k_Left) .AND. (mrEs="3" .OR. vsW3=2)
                DO CASE
                     CASE vsW1=1
                          STORE 2 TO vsW1
                     CASE vsW1=2
                          STORE 1 TO vsW1
                ENDCASE
                DO tiT_1310b
                DO bt1_1310b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE vfIl TO cfIl
                DO muE_1310b WITH "v", "x"
                DO seE_1310b WITH "i"
                DO paN_1310b
                STORE cfIl TO vfIl
                DO muE_1310b WITH "x", "v"
                DO seE_1310b WITH "v"
                DO diS_1310b WITH "R"
                DO toT_1310b
           CASE mkEy=k_Ctrl_p
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_1310b
                               OTHERWISE
                                    DO seE_1310b WITH "v"
                                    DO diS_1310b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1310b WITH "i", "v"
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1310b
                               OTHERWISE
                                    DO seE_1310b WITH "v"
                                    DO diS_1310b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1310b WITH "u", "v"
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coL_beige
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1310b WITH ffIl, ffIl+1
                               DO li1_1310b WITH ffIl, ffIl+1
                               DO muE_1310b WITH "F", "u"
                               DO muE_1310b WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1310b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1310b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coL_beige
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1310b WITH ifIl, ifIl+1
                               DO li1_1310b WITH ifIl, ifIl+1
                               DO muE_1310b WITH "F", "v"
                               DO muE_1310b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1310b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1310b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1310b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1310b
                          STORE ifIl TO vfIl
                          DO muE_1310b WITH "i", "v"
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1310b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1310b
                          STORE ifIl TO vfIl
                          DO muE_1310b WITH "i", "v"
                          DO seE_1310b WITH "v"
                          DO diS_1310b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1310b WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1310b
 STORE ifIl TO vfIl, ufIl
 DO muE_1310b WITH "F", "i"
 DO muE_1310b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1310b WITH "N"
      DO muE_1310b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_beige
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_1310b WITH ufIl, ffIl+1
      DO li1_1310b WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Cl1_1310b
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_1310b
 PARAMETER ptPp
 DO CASE
      CASE ptIp="N" .AND. pcR1=1 .AND. ptPp=1
           DO coL_narbe
      CASE ptIp="R" .AND. pcR1=1 .AND. ptPp=1
           DO coLblr
      CASE ptIp="N" .AND. pcR2=1 .AND. ptPp=2
           DO coL_narbe
      CASE ptIp="R" .AND. pcR2=1 .AND. ptPp=2
           DO coLblr
      CASE ptIp="N" .AND. pcR3=1 .AND. ptPp=3
           DO coL_narbe
      CASE ptIp="R" .AND. pcR3=1 .AND. ptPp=3
           DO coLblr
      CASE ptIp="N" .AND. pcR4=1 .AND. ptPp=4
           DO coL_narbe
      CASE ptIp="R" .AND. pcR4=1 .AND. ptPp=4
           DO coLblr
      CASE ptIp="N" .AND. pcR5=1 .AND. ptPp=5
           DO coL_narbe
      CASE ptIp="R" .AND. pcR5=1 .AND. ptPp=5
           DO coLblr
      CASE ptIp="N" .AND. pcR6=1 .AND. ptPp=6
           DO coL_narbe
      CASE ptIp="R" .AND. pcR6=1 .AND. ptPp=6
           DO coLblr
      CASE ptIp="N" .AND. pcR7=1 .AND. ptPp=7
           DO coL_narbe
      CASE ptIp="R" .AND. pcR7=1 .AND. ptPp=7
           DO coLblr
      CASE ptIp="N" .AND. pcR8=1 .AND. ptPp=8
           DO coL_narbe
      CASE ptIp="R" .AND. pcR8=1 .AND. ptPp=8
           DO coLblr
      CASE ptIp="N" .AND. pcR9=1 .AND. ptPp=9
           DO coL_narbe
      CASE ptIp="R" .AND. pcR9=1 .AND. ptPp=9
           DO coLblr
      CASE ptIp="N" .AND. pc10=1 .AND. ptPp=10
           DO coL_narbe
      CASE ptIp="R" .AND. pc10=1 .AND. ptPp=10
           DO coLblr
      CASE ptIp="N" .AND. pc11=1 .AND. ptPp=11
           DO coL_narbe
      CASE ptIp="R" .AND. pc11=1 .AND. ptPp=11
           DO coLblr
      CASE ptIp="N" .AND. pc12=1 .AND. ptPp=12
           DO coL_narbe
      CASE ptIp="R" .AND. pc12=1 .AND. ptPp=12
           DO coLblr
      OTHERWISE
           DO cl1_1310b
 ENDCASE
ENDPROC
*
PROCEDURE Dis_1310b
 PARAMETER ptIp
 PRIVATE ppIc, ptOt
 PRIVATE ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10, pt11, pt12
 PUBLIC pcR1, pcR2, pcR3, pcR4, pcR5, pcR6, pcR7, pcR8, pcR9, pc10, pc11, pc12
 STORE "999,999,999.9" TO ppIc
 STORE ftM1enn TO pcR1
 STORE ftM1fen TO pcR2
 STORE ftM1man TO pcR3
 STORE ftM1abn TO pcR4
 STORE ftM1myn TO pcR5
 STORE ftM1jun TO pcR6
 STORE ftM1jln TO pcR7
 STORE ftM1agn TO pcR8
 STORE ftM1sen TO pcR9
 STORE ftM1ocn TO pc10
 STORE ftM1non TO pc11
 STORE ftM1din TO pc12
 DO CASE
      CASE vsW0=1
           STORE ftM1en1 TO ptO1
           STORE ftM1fe1 TO ptO2
           STORE ftM1ma1 TO ptO3
           STORE ftM1ab1 TO ptO4
           STORE ftM1my1 TO ptO5
           STORE ftM1ju1 TO ptO6
           STORE ftM1jl1 TO ptO7
           STORE ftM1ag1 TO ptO8
           STORE ftM1se1 TO ptO9
           STORE ftM1oc1 TO pt10
           STORE ftM1no1 TO pt11
           STORE ftM1di1 TO pt12
      CASE vsW0=2
           STORE ftM1en2 TO ptO1
           STORE ftM1fe2 TO ptO2
           STORE ftM1ma2 TO ptO3
           STORE ftM1ab2 TO ptO4
           STORE ftM1my2 TO ptO5
           STORE ftM1ju2 TO ptO6
           STORE ftM1jl2 TO ptO7
           STORE ftM1ag2 TO ptO8
           STORE ftM1se2 TO ptO9
           STORE ftM1oc2 TO pt10
           STORE ftM1no2 TO pt11
           STORE ftM1di2 TO pt12
      CASE vsW0=3
           STORE "99999,999.99" TO ppIc
           STORE ftM1enc TO ptO1
           STORE ftM1fec TO ptO2
           STORE ftM1mac TO ptO3
           STORE ftM1abc TO ptO4
           STORE ftM1myc TO ptO5
           STORE ftM1juc TO ptO6
           STORE ftM1jlc TO ptO7
           STORE ftM1agc TO ptO8
           STORE ftM1sec TO ptO9
           STORE ftM1occ TO pt10
           STORE ftM1noc TO pt11
           STORE ftM1dic TO pt12
      CASE vsW0=4 .AND. vsW2=1
           STORE ftM1enk TO ptO1
           STORE ftM1fek TO ptO2
           STORE ftM1mak TO ptO3
           STORE ftM1abk TO ptO4
           STORE ftM1myk TO ptO5
           STORE ftM1juk TO ptO6
           STORE ftM1jlk TO ptO7
           STORE ftM1agk TO ptO8
           STORE ftM1sek TO ptO9
           STORE ftM1ock TO pt10
           STORE ftM1nok TO pt11
           STORE ftM1dik TO pt12
      CASE vsW0=5 .AND. vsW2=1
           STORE ftM1end TO ptO1
           STORE ftM1fed TO ptO2
           STORE ftM1mad TO ptO3
           STORE ftM1abd TO ptO4
           STORE ftM1myd TO ptO5
           STORE ftM1jud TO ptO6
           STORE ftM1jld TO ptO7
           STORE ftM1agd TO ptO8
           STORE ftM1sed TO ptO9
           STORE ftM1ocd TO pt10
           STORE ftM1nod TO pt11
           STORE ftM1did TO pt12
      CASE vsW0=6 .AND. vsW2=1
           STORE ftM1enu TO ptO1
           STORE ftM1feu TO ptO2
           STORE ftM1mau TO ptO3
           STORE ftM1abu TO ptO4
           STORE ftM1myu TO ptO5
           STORE ftM1juu TO ptO6
           STORE ftM1jlu TO ptO7
           STORE ftM1agu TO ptO8
           STORE ftM1seu TO ptO9
           STORE ftM1ocu TO pt10
           STORE ftM1nou TO pt11
           STORE ftM1diu TO pt12
      CASE vsW0=7 .AND. vsW2=1
           STORE ftM1enw TO ptO1
           STORE ftM1few TO ptO2
           STORE ftM1maw TO ptO3
           STORE ftM1abw TO ptO4
           STORE ftM1myw TO ptO5
           STORE ftM1juw TO ptO6
           STORE ftM1jlw TO ptO7
           STORE ftM1agw TO ptO8
           STORE ftM1sew TO ptO9
           STORE ftM1ocw TO pt10
           STORE ftM1now TO pt11
           STORE ftM1diw TO pt12
      CASE vsW0=8 .AND. vsW2=1
           STORE "99999,999.99" TO ppIc
           STORE 0 TO ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8,  ;
                 ptO9, pt10, pt11, pt12
           IF ftM1enc>0 .AND. ftM1enc<ftM1min
                STORE ftM1min-ftM1enc TO ptO1
           ENDIF
           IF ftM1fec>0 .AND. ftM1fec<ftM1min
                STORE ftM1min-ftM1fec TO ptO2
           ENDIF
           IF ftM1mac>0 .AND. ftM1mac<ftM1min
                STORE ftM1min-ftM1mac TO ptO3
           ENDIF
           IF ftM1abc>0 .AND. ftM1abc<ftM1min
                STORE ftM1min-ftM1abc TO ptO4
           ENDIF
           IF ftM1myc>0 .AND. ftM1myc<ftM1min
                STORE ftM1min-ftM1myc TO ptO5
           ENDIF
           IF ftM1juc>0 .AND. ftM1juc<ftM1min
                STORE ftM1min-ftM1juc TO ptO6
           ENDIF
           IF ftM1jlc>0 .AND. ftM1jlc<ftM1min
                STORE ftM1min-ftM1jlc TO ptO7
           ENDIF
           IF ftM1agc>0 .AND. ftM1agc<ftM1min
                STORE ftM1min-ftM1agc TO ptO8
           ENDIF
           IF ftM1sec>0 .AND. ftM1sec<ftM1min
                STORE ftM1min-ftM1sec TO ptO9
           ENDIF
           IF ftM1occ>0 .AND. ftM1occ<ftM1min
                STORE ftM1min-ftM1occ TO pt10
           ENDIF
           IF ftM1noc>0 .AND. ftM1noc<ftM1min
                STORE ftM1min-ftM1noc TO pt11
           ENDIF
           IF ftM1dic>0 .AND. ftM1dic<ftM1min
                STORE ftM1min-ftM1dic TO pt12
           ENDIF
 ENDCASE
 STORE ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12 TO ptOt
 DO cl1_1310b
 DO CASE
      CASE mrEs="3"
           IF voPc=1
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,68.8 Pict "@S71"
                @vFIL,mCO0+83.2 Say FTM1NUV Font "&mLetAri",10 Style "NQ" Size 1,03.1 Pict "@S05"
           ELSE
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,72.5 Pict "@S74"
           ENDIF
           DO CASE
                CASE vsW1=1
                     DO cl2_1310b WITH 1
                     @vFIL,mCO0+087.6 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 2
                     @vFIL,mCO0+106.4 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 3
                     @vFIL,mCO0+125.2 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 4
                     @vFIL,mCO0+144.0 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 5
                     @vFIL,mCO0+162.8 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 6
                     @vFIL,mCO0+181.6 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                CASE vsW1=2
                     DO cl2_1310b WITH 7
                     @vFIL,mCO0+087.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 8
                     @vFIL,mCO0+106.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 9
                     @vFIL,mCO0+125.2 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 10
                     @vFIL,mCO0+144.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 11
                     @vFIL,mCO0+162.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 12
                     @vFIL,mCO0+181.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           ENDCASE
      CASE mrEs="4" .AND. vsW3=1
           IF voPc=1
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,18.4 Pict "@S21"
                @vFIL,mCO0+22.6 Say FTM1NUV Font "&mLetAri",10 Style "NQ" Size 1,03.1 Pict "@S05"
           ELSE
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,22.0 Pict "@S24"
           ENDIF
           DO cl2_1310b WITH 1
           @vFIL,mCO0+027.0 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 2
           @vFIL,mCO0+045.8 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 3
           @vFIL,mCO0+064.6 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 4
           @vFIL,mCO0+083.4 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 5
           @vFIL,mCO0+102.2 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 6
           @vFIL,mCO0+121.0 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 7
           @vFIL,mCO0+139.8 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 8
           @vFIL,mCO0+158.6 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 9
           @vFIL,mCO0+177.4 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 10
           @vFIL,mCO0+196.2 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 11
           @vFIL,mCO0+215.0 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 12
           @vFIL,mCO0+233.8 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
      CASE mrEs="4" .AND. vsW3=2
           IF voPc=1
                @vFIL,mCO0-000.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,112.4 Pict "@S113"
                @vFIL,mCO0+135.3 Say FTM1NUV Font "&mLetAri",10 Style "NQ" Size 1,003.1 Pict "@S05"
           ELSE
                @vFIL,mCO0-000.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,116.0 Pict "@S119"
           ENDIF
           DO CASE
                CASE vsW1=1
                     DO cl2_1310b WITH 1
                     @vFIL,mCO0+139.8 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 2
                     @vFIL,mCO0+158.6 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 3
                     @vFIL,mCO0+177.4 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 4
                     @vFIL,mCO0+196.2 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 5
                     @vFIL,mCO0+215.0 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 6
                     @vFIL,mCO0+233.8 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                CASE vsW1=2
                     DO cl2_1310b WITH 7
                     @vFIL,mCO0+139.8 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 8
                     @vFIL,mCO0+158.6 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 9
                     @vFIL,mCO0+177.4 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 10
                     @vFIL,mCO0+196.2 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 11
                     @vFIL,mCO0+215.0 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 12
                     @vFIL,mCO0+233.8 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           ENDCASE
      CASE vsW3=1
           IF voPc=1
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,32.5 Pict "@S36"
                @vFIL,mCO0+39.6 Say FTM1NUV Font "&mLetAri",10 Style "NQ" Size 1,03.1 Pict "@S05"
           ELSE
                @vFIL,mCO0-00.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,36.1 Pict "@S39"
           ENDIF
           DO cl2_1310b WITH 1
           @vFIL,mCO0+043.9 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 2
           @vFIL,mCO0+062.7 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 3
           @vFIL,mCO0+081.4 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 4
           @vFIL,mCO0+100.2 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 5
           @vFIL,mCO0+119.0 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 6
           @vFIL,mCO0+137.8 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 7
           @vFIL,mCO0+156.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 8
           @vFIL,mCO0+175.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 9
           @vFIL,mCO0+194.3 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 10
           @vFIL,mCO0+213.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 11
           @vFIL,mCO0+231.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO cl2_1310b WITH 12
           @vFIL,mCO0+250.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
      CASE vsW3=2
           IF voPc=1
                @vFIL,mCO0-000.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,110.9 Pict "@S113"
                @vFIL,mCO0+133.4 Say FTM1NUV Font "&mLetAri",10 Style "NQ" Size 1,003.1 Pict "@S05"
           ELSE
                @vFIL,mCO0-000.1 Say FTM1NOM Font "&mLetAri",10 Style "NQ" Size 1,114.5 Pict "@S117"
           ENDIF
           @vFIL,mCO0+137.8 Say pTOT Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           DO CASE
                CASE vsW1=1
                     DO cl2_1310b WITH 1
                     @vFIL,mCO0+156.6 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 2
                     @vFIL,mCO0+175.4 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 3
                     @vFIL,mCO0+194.3 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 4
                     @vFIL,mCO0+213.0 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 5
                     @vFIL,mCO0+231.8 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 6
                     @vFIL,mCO0+250.6 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                CASE vsW1=2
                     DO cl2_1310b WITH 7
                     @vFIL,mCO0+156.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 8
                     @vFIL,mCO0+175.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 9
                     @vFIL,mCO0+194.3 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 10
                     @vFIL,mCO0+213.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 11
                     @vFIL,mCO0+231.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
                     DO cl2_1310b WITH 12
                     @vFIL,mCO0+250.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "&pPIC"
           ENDCASE
 ENDCASE
 DO coL_beige
 IF (vsW0=3 .OR. vsW0=8) .AND. vsW2=1
      @fFIL+3.5,mCO0      Say "Stock Actual:" Font "&mLetAri",10 Style "BQ" Size 1,15
      @fFIL+4.6,mCO0      Say "Stock Minimo:" Font "&mLetAri",10 Style "BQ" Size 1,15
      @fFIL+3.5,mCO0+18.1 Say FTM1STO         Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
      @fFIL+4.6,mCO0+18.1 Say FTM1MIN         Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
      IF vsW0=8
           STORE ftM1enc TO ptO1
           STORE ftM1fec TO ptO2
           STORE ftM1mac TO ptO3
           STORE ftM1abc TO ptO4
           STORE ftM1myc TO ptO5
           STORE ftM1juc TO ptO6
           STORE ftM1jlc TO ptO7
           STORE ftM1agc TO ptO8
           STORE ftM1sec TO ptO9
           STORE ftM1occ TO pt10
           STORE ftM1noc TO pt11
           STORE ftM1dic TO pt12
           DO CASE
                CASE mrEs="3"
                     @fFIL+3.5,mCO0+038.5 Say "Cant.Vend.Ene:" Font "&mLetAri",10 Style "BQ"
                     @fFIL+4.6,mCO0+038.5 Say "Cant.Vend.Feb:" Font "&mLetAri",10 Style "BQ"
                     @fFIL+5.7,mCO0+038.5 Say "Cant.Vend.Mar:" Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+078.5 Say "Abr:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.5,mCO0+078.5 Say "May:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+5.7,mCO0+078.5 Say "Jun:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+104.5 Say "Jul:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+104.5 Say "Ago:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+5.7,mCO0+104.5 Say "Set:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+130.5 Say "Oct:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.5,mCO0+130.5 Say "Nov:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+5.7,mCO0+130.5 Say "Dic:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+058.5 Say pTO1             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+058.5 Say pTO2             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+5.7,mCO0+058.5 Say pTO3             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+084.8 Say pTO4             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.5,mCO0+084.8 Say pTO5             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+5.7,mCO0+084.8 Say pTO6             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+110.8 Say pTO7             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+110.8 Say pTO8             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+5.7,mCO0+110.8 Say pTO9             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+136.8 Say pT10             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.5,mCO0+136.8 Say pT11             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+5.7,mCO0+136.8 Say pT12             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                OTHERWISE
                     @fFIL+3.5,mCO0+078.5 Say "Mar:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+078.5 Say "Abr:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+104.5 Say "May:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+104.5 Say "Jun:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+130.5 Say "Jul:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+130.5 Say "Ago:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+156.5 Say "Set:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+156.5 Say "Oct:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+182.5 Say "Nov:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+4.6,mCO0+182.5 Say "Dic:"           Font "&mLetAri",10 Style "BQ" Size 1,5
                     @fFIL+3.5,mCO0+058.5 Say pTO1             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+058.5 Say pTO2             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+084.8 Say pTO3             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+084.8 Say pTO4             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+110.8 Say pTO5             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+110.8 Say pTO6             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+136.8 Say pTO7             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+136.8 Say pTO8             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+162.8 Say pTO9             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+162.8 Say pT10             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+3.5,mCO0+188.8 Say pT11             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
                     @fFIL+4.6,mCO0+188.8 Say pT12             Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99,999,999.99"
           ENDCASE
      ENDIF
 ELSE
      DO CASE
           CASE mrEs="3"
                @fFIL+3.5,mCO0 Say Space(10) Font "&mLetAri",10 Style "BQ" Size 1,130
                @fFIL+4.6,mCO0 Say Space(10) Font "&mLetAri",10 Style "BQ" Size 1,130
                @fFIL+5.7,mCO0 Say Space(10) Font "&mLetAri",10 Style "BQ" Size 1,130
           OTHERWISE
                @fFIL+3.5,mCO0 Say Space(10) Font "&mLetAri",10 Style "BQ" Size 1,174
                @fFIL+4.6,mCO0 Say Space(10) Font "&mLetAri",10 Style "BQ" Size 1,174
      ENDCASE
      @fFIL+3.5,mCO0 Say FTM1COD Font "&mLetAri",10 Style "NQ" Size 1,15.2
 ENDIF
 RELEASE ppIc, ptOt
 RELEASE ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10, pt11, pt12
 RELEASE pcR1, pcR2, pcR3, pcR4, pcR5, pcR6, pcR7, pcR8, pcR9, pc10, pc11, pc12
ENDPROC
*
PROCEDURE Lin_1310b
 PARAMETER piNi, pfIn
 DO coL_beige
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+087.2 TO pfIn, mcO0+087.2
           @ piNi, mcO0+106.0 TO pfIn, mcO0+106.0
           @ piNi, mcO0+124.8 TO pfIn, mcO0+124.8
           @ piNi, mcO0+143.6 TO pfIn, mcO0+143.6
           @ piNi, mcO0+162.4 TO pfIn, mcO0+162.4
           @ piNi, mcO0+181.2 TO pfIn, mcO0+181.2
      CASE mrEs="4" .AND. vsW3=1
           @ piNi, mcO0+026.6 TO pfIn, mcO0+026.6
           @ piNi, mcO0+045.4 TO pfIn, mcO0+045.4
           @ piNi, mcO0+064.2 TO pfIn, mcO0+064.2
           @ piNi, mcO0+083.0 TO pfIn, mcO0+083.0
           @ piNi, mcO0+101.8 TO pfIn, mcO0+101.8
           @ piNi, mcO0+120.6 TO pfIn, mcO0+120.6
           @ piNi, mcO0+139.4 TO pfIn, mcO0+139.4
           @ piNi, mcO0+158.2 TO pfIn, mcO0+158.2
           @ piNi, mcO0+177.0 TO pfIn, mcO0+177.0
           @ piNi, mcO0+195.8 TO pfIn, mcO0+195.8
           @ piNi, mcO0+214.6 TO pfIn, mcO0+214.6
           @ piNi, mcO0+233.4 TO pfIn, mcO0+233.4
      CASE mrEs="4" .AND. vsW3=2
           @ piNi, mcO0+139.4 TO pfIn, mcO0+139.4
           @ piNi, mcO0+158.2 TO pfIn, mcO0+158.2
           @ piNi, mcO0+177.0 TO pfIn, mcO0+177.0
           @ piNi, mcO0+195.8 TO pfIn, mcO0+195.8
           @ piNi, mcO0+214.6 TO pfIn, mcO0+214.6
           @ piNi, mcO0+233.4 TO pfIn, mcO0+233.4
      CASE vsW3=1
           @ piNi, mcO0+043.5 TO pfIn, mcO0+043.5
           @ piNi, mcO0+062.2 TO pfIn, mcO0+062.2
           @ piNi, mcO0+081.0 TO pfIn, mcO0+081.0
           @ piNi, mcO0+099.9 TO pfIn, mcO0+099.9
           @ piNi, mcO0+118.6 TO pfIn, mcO0+118.6
           @ piNi, mcO0+137.4 TO pfIn, mcO0+137.4
           @ piNi, mcO0+156.3 TO pfIn, mcO0+156.3
           @ piNi, mcO0+175.0 TO pfIn, mcO0+175.0
           @ piNi, mcO0+193.8 TO pfIn, mcO0+193.8
           @ piNi, mcO0+212.6 TO pfIn, mcO0+212.6
           @ piNi, mcO0+231.4 TO pfIn, mcO0+231.4
           @ piNi, mcO0+250.2 TO pfIn, mcO0+250.2
      CASE vsW3=2
           @ piNi, mcO0+137.4 TO pfIn, mcO0+137.4
           @ piNi, mcO0+156.3 TO pfIn, mcO0+156.3
           @ piNi, mcO0+175.0 TO pfIn, mcO0+175.0
           @ piNi, mcO0+193.8 TO pfIn, mcO0+193.8
           @ piNi, mcO0+212.6 TO pfIn, mcO0+212.6
           @ piNi, mcO0+231.4 TO pfIn, mcO0+231.4
           @ piNi, mcO0+250.2 TO pfIn, mcO0+250.2
 ENDCASE
ENDPROC
*
PROCEDURE Li1_1310b
 PARAMETER piNi, pfIn
 IF voPc<>1
      RETURN
 ENDIF
 DO coL_beige
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+082.8 TO pfIn, mcO0+082.8
      CASE mrEs="4" .AND. vsW3=1
           @ piNi, mcO0+022.2 TO pfIn, mcO0+022.2
      CASE mrEs="4" .AND. vsW3=2
           @ piNi, mcO0+134.9 TO pfIn, mcO0+134.9
      CASE vsW3=1
           @ piNi, mcO0+039.1 TO pfIn, mcO0+039.1
      OTHERWISE
           @ piNi, mcO0+133.0 TO pfIn, mcO0+133.0
 ENDCASE
ENDPROC
*
PROCEDURE P00_1310b
 RESTORE SCREEN FROM vpAn_99
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO CASE
      CASE mrEs="3"
           DO cuAdro WITH ifIl-5.1, mcO0, ffIl+6.6, mcO0+muCo
      OTHERWISE
           DO cuAdro WITH ifIl-5.1, mcO0, ffIl+5.6, mcO0+muCo
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifIl-1.9, mcO0-0.8 TO ifIl-0.2, mcO0+muCo+0.4 PATTERN 1
 @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.4 PATTERN 1
 @ ifIl-3.7, mcO0-0.8 TO ifIl-3.7, mcO0+muCo+0.4
 DO CASE
      CASE mrEs="3"
           @fFIL+7,mCO0+mUCO-50 Say "Del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
      OTHERWISE
           @fFIL+6,mCO0+mUCO-50 Say "Del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 ENDCASE
 DO liN_1310b WITH ifIl-1.8, ffIl+3.3
 DO li1_1310b WITH ifIl-0.3, ffIl+1.7
 DO coLbln
 DO CASE
      CASE voPc=1 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Productos"           Font "&mLetAri",10 Style "BT"
      CASE voPc=2 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Clientes"            Font "&mLetAri",10 Style "BT"
      CASE voPc=3 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Tipo de Clientes"    Font "&mLetAri",10 Style "BT"
      CASE voPc=4 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Vendedores"          Font "&mLetAri",10 Style "BT"
      CASE voPc=5 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Formas de Pago"      Font "&mLetAri",10 Style "BT"
      CASE voPc=6 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Tipos de Productos"  Font "&mLetAri",10 Style "BT"
      CASE voPc=7 .AND. mrEs>"3"
           @iFIL-1.6,mCO0+6.2 Say "Grupos de Productos" Font "&mLetAri",10 Style "BT"
      CASE voPc=1
           @iFIL-1.6,mCO0+0.2 Say "Productos"           Font "&mLetAri",10 Style "BT"
      CASE voPc=2
           @iFIL-1.6,mCO0+0.2 Say "Clientes"            Font "&mLetAri",10 Style "BT"
      CASE voPc=3
           @iFIL-1.6,mCO0+0.2 Say "Tipo de Clientes"    Font "&mLetAri",10 Style "BT"
      CASE voPc=4
           @iFIL-1.6,mCO0+0.2 Say "Vendedores"          Font "&mLetAri",10 Style "BT"
      CASE voPc=5
           @iFIL-1.6,mCO0+0.2 Say "Formas de Pago"      Font "&mLetAri",10 Style "BT"
      CASE voPc=6
           @iFIL-1.6,mCO0+0.2 Say "Tipos de Productos"  Font "&mLetAri",10 Style "BT"
      CASE voPc=7
           @iFIL-1.6,mCO0+0.2 Say "Grupos de Productos" Font "&mLetAri",10 Style "BT"
 ENDCASE
 DO tiT_1310b
 DO toT_1310b
 DO boT_1310b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mrEs="3" .OR. vsW3=2
      DO bt1_1310b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "DETAL2", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mrEs>"3"
      DO prEsiona WITH "1", "ABREI", ifIl-1.5, mcO0
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSU5", ifIl-1.3, mcO0+2.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "ABRED", ifIl-1.5, mcO0+3.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Tot_1310b
 PRIVATE ptOt, ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10,  ;
         pt11, pt12
 DO CASE
      CASE vsW2=1 .AND. vsW0=1
           STORE tvEn1 TO ptO1
           STORE tvFe1 TO ptO2
           STORE tvMa1 TO ptO3
           STORE tvAb1 TO ptO4
           STORE tvMy1 TO ptO5
           STORE tvJu1 TO ptO6
           STORE tvJl1 TO ptO7
           STORE tvAg1 TO ptO8
           STORE tvSe1 TO ptO9
           STORE tvOc1 TO pt10
           STORE tvNo1 TO pt11
           STORE tvDi1 TO pt12
      CASE vsW2=1 .AND. vsW0=2
           STORE tvEn2 TO ptO1
           STORE tvFe2 TO ptO2
           STORE tvMa2 TO ptO3
           STORE tvAb2 TO ptO4
           STORE tvMy2 TO ptO5
           STORE tvJu2 TO ptO6
           STORE tvJl2 TO ptO7
           STORE tvAg2 TO ptO8
           STORE tvSe2 TO ptO9
           STORE tvOc2 TO pt10
           STORE tvNo2 TO pt11
           STORE tvDi2 TO pt12
      CASE vsW2=1 .AND. vsW0=3
           STORE tvEnc TO ptO1
           STORE tvFec TO ptO2
           STORE tvMac TO ptO3
           STORE tvAbc TO ptO4
           STORE tvMyc TO ptO5
           STORE tvJuc TO ptO6
           STORE tvJlc TO ptO7
           STORE tvAgc TO ptO8
           STORE tvSec TO ptO9
           STORE tvOcc TO pt10
           STORE tvNoc TO pt11
           STORE tvDic TO pt12
      CASE vsW2=1 .AND. vsW0=4
           STORE tvEnk TO ptO1
           STORE tvFek TO ptO2
           STORE tvMak TO ptO3
           STORE tvAbk TO ptO4
           STORE tvMyk TO ptO5
           STORE tvJuk TO ptO6
           STORE tvJlk TO ptO7
           STORE tvAgk TO ptO8
           STORE tvSek TO ptO9
           STORE tvOck TO pt10
           STORE tvNok TO pt11
           STORE tvDik TO pt12
      CASE vsW2=1 .AND. vsW0=5
           STORE tvEnd TO ptO1
           STORE tvFed TO ptO2
           STORE tvMad TO ptO3
           STORE tvAbd TO ptO4
           STORE tvMyd TO ptO5
           STORE tvJud TO ptO6
           STORE tvJld TO ptO7
           STORE tvAgd TO ptO8
           STORE tvSed TO ptO9
           STORE tvOcd TO pt10
           STORE tvNod TO pt11
           STORE tvDid TO pt12
      CASE vsW2=1 .AND. vsW0=6
           STORE tvEnu TO ptO1
           STORE tvFeu TO ptO2
           STORE tvMau TO ptO3
           STORE tvAbu TO ptO4
           STORE tvMyu TO ptO5
           STORE tvJuu TO ptO6
           STORE tvJlu TO ptO7
           STORE tvAgu TO ptO8
           STORE tvSeu TO ptO9
           STORE tvOcu TO pt10
           STORE tvNou TO pt11
           STORE tvDiu TO pt12
      CASE vsW2=1 .AND. vsW0=7
           STORE tvEnw TO ptO1
           STORE tvFew TO ptO2
           STORE tvMaw TO ptO3
           STORE tvAbw TO ptO4
           STORE tvMyw TO ptO5
           STORE tvJuw TO ptO6
           STORE tvJlw TO ptO7
           STORE tvAgw TO ptO8
           STORE tvSew TO ptO9
           STORE tvOcw TO pt10
           STORE tvNow TO pt11
           STORE tvDiw TO pt12
      CASE vsW2=1 .AND. vsW0=8
           STORE tvEnf TO ptO1
           STORE tvFef TO ptO2
           STORE tvMaf TO ptO3
           STORE tvAbf TO ptO4
           STORE tvMyf TO ptO5
           STORE tvJuf TO ptO6
           STORE tvJlf TO ptO7
           STORE tvAgf TO ptO8
           STORE tvSef TO ptO9
           STORE tvOcf TO pt10
           STORE tvNof TO pt11
           STORE tvDif TO pt12
      CASE vsW2=2 .AND. vsW0=1
           STORE tcEn1 TO ptO1
           STORE tcFe1 TO ptO2
           STORE tcMa1 TO ptO3
           STORE tcAb1 TO ptO4
           STORE tcMy1 TO ptO5
           STORE tcJu1 TO ptO6
           STORE tcJl1 TO ptO7
           STORE tcAg1 TO ptO8
           STORE tcSe1 TO ptO9
           STORE tcOc1 TO pt10
           STORE tcNo1 TO pt11
           STORE tcDi1 TO pt12
      CASE vsW2=2 .AND. vsW0=2
           STORE tcEn2 TO ptO1
           STORE tcFe2 TO ptO2
           STORE tcMa2 TO ptO3
           STORE tcAb2 TO ptO4
           STORE tcMy2 TO ptO5
           STORE tcJu2 TO ptO6
           STORE tcJl2 TO ptO7
           STORE tcAg2 TO ptO8
           STORE tcSe2 TO ptO9
           STORE tcOc2 TO pt10
           STORE tcNo2 TO pt11
           STORE tcDi2 TO pt12
      CASE vsW2=2 .AND. vsW0=3
           STORE tcEnc TO ptO1
           STORE tcFec TO ptO2
           STORE tcMac TO ptO3
           STORE tcAbc TO ptO4
           STORE tcMyc TO ptO5
           STORE tcJuc TO ptO6
           STORE tcJlc TO ptO7
           STORE tcAgc TO ptO8
           STORE tcSec TO ptO9
           STORE tcOcc TO pt10
           STORE tcNoc TO pt11
           STORE tcDic TO pt12
 ENDCASE
 STORE ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12 TO ptOt
 DO coLsc4
 DO CASE
      CASE mrEs="3" .AND. vsW1=1
           @fFIL+1.9,mCO0+087.6 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+106.4 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+125.2 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+144.0 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+162.8 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+181.6 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE mrEs="3" .AND. vsW1=2
           @fFIL+1.9,mCO0+087.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+106.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+125.2 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+144.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+162.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+181.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE mrEs="4" .AND. vsW3=1
           @fFIL+1.9,mCO0+027.0 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+045.8 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+064.6 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+083.4 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+102.2 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+121.0 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+139.8 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+158.6 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+177.4 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+196.2 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+215.0 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+233.8 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE mrEs="4" .AND. vsW1=1 .AND. vsW3=2
           @fFIL+1.9,mCO0+139.8 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+158.6 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+177.4 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+196.2 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+215.0 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+233.8 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE mrEs="4" .AND. vsW1=2 .AND. vsW3=2
           @fFIL+1.9,mCO0+139.8 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+158.6 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+177.4 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+196.2 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+215.0 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+233.8 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE vsW3=1
           @fFIL+1.9,mCO0+043.9 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+062.7 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+081.4 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+100.2 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+119.0 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+137.8 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+156.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+175.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+194.3 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+213.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+231.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+250.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE vsW1=1 .AND. vsW3=2
           @fFIL+1.9,mCO0+137.8 Say pTOT Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+156.6 Say pTO1 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+175.4 Say pTO2 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+194.3 Say pTO3 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+213.0 Say pTO4 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+231.8 Say pTO5 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+250.6 Say pTO6 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
      CASE vsW1=2 .AND. vsW3=2
           @fFIL+1.9,mCO0+137.8 Say pTOT Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+156.6 Say pTO7 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+175.4 Say pTO8 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+194.3 Say pTO9 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+213.0 Say pT10 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+231.8 Say pT11 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
           @fFIL+1.9,mCO0+250.6 Say pT12 Font "&mLetAri",10 Style "NQ" Size 1,15.2 Pict "99999,999,999"
 ENDCASE
 RELEASE ptOt, ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10,  ;
         pt11, pt12
ENDPROC
*
PROCEDURE Bot_1310b
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3.4, mcO0-0.6
 DO CASE
      CASE vsW2=1 .AND. voPc=1
           @iFIL-3.2,mCO0+1.3 Say StrTran(Str(vSW0,1,0)," ","0")+"/8" Font "&mLetRom",9 Style "BT"
      CASE vsW2=2 .AND. voPc=1
           @iFIL-3.2,mCO0+1.3 Say StrTran(Str(vSW0,1,0)," ","0")+"/3" Font "&mLetRom",9 Style "BT"
      OTHERWISE
           @iFIL-3.2,mCO0+1.3 Say StrTran(Str(vSW0,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE Bt1_1310b
 PRIVATE psW1
 DO CASE
      CASE mrEs="3"
           STORE 2 TO psW1
      CASE mrEs="4" .AND. vsW3=1
           STORE 1 TO psW1
      CASE mrEs="4" .AND. vsW3=2
           STORE 2 TO psW1
      CASE vsW3=1
           STORE 1 TO psW1
      CASE vsW3=2
           STORE 2 TO psW1
 ENDCASE
 IF psW1>1
      DO coLblz
      DO prEsiona WITH "1", "BOTON", ifIl-3.5, mcO0+muCo-7.7
      @iFIL-3.3,mCO0+mUCO-5.7 Say StrTran(Str(vSW1,1,0)," ","0")+"/"+Str(pSW1,1,0) Font "&mLetRom",9 Style "BT"
 ENDIF
 RELEASE psW1
ENDPROC
*
PROCEDURE Tit_1310b
 DO coLsc7
 DO CASE
      CASE mrEs="3" .AND. vsW2=1
           @iFIL-5.4,mCO0+87.2 Say Replicate("-",38)+" VENTAS " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
      CASE mrEs="3" .AND. vsW2=2
           @iFIL-5.4,mCO0+87.2 Say Replicate("-",38)+" COMPRAS "+Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
      CASE mrEs="4" .AND. vsW2=1
           @iFIL-5.4,mCO0+87.2 Say Replicate("-",38)+" VENTAS " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
      CASE mrEs="4" .AND. vsW2=2
           @iFIL-5.4,mCO0+87.2 Say Replicate("-",38)+" COMPRAS "+Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
      CASE vsW2=1
           @iFIL-5.4,mCO0+111.2 Say Replicate("-",38)+" VENTAS " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
      CASE vsW2=2
           @iFIL-5.4,mCO0+111.2 Say Replicate("-",38)+" COMPRAS "+Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65
 ENDCASE
 DO coLsc4
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Total a S/. "      +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=2
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Total a US$ "      +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=3
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",40)+" Cantidad "         +Replicate("-",40) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=4 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Costos a S/. "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=5 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Costos a US$ "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=6 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",35)+" Utilidades a S/. " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=7 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",35)+" Utilidades a US$ " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="3" .AND. vsW0=8 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",34)+" Stock Faltantes "  +Replicate("-",18) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Total a S/. "      +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=2
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Total a US$ "      +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=3
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",40)+" Cantidad "         +Replicate("-",40) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=4 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Costos a S/. "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=5 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",38)+" Costos a US$ "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=6 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",35)+" Utilidades a S/. " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=7 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",35)+" Utilidades a US$ " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE mrEs="4" .AND. vsW0=8 .AND. vsW2=1
           @iFIL-3.4,mCO0+87.2 Say Replicate("-",34)+" Stock Faltantes "  +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",38)+" Total a S/. "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=2
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",38)+" Total a US$ "     +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=3
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",40)+" Cantidad "        +Replicate("-",40) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=4 .AND. vsW2=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",38)+" Costos a S/. "    +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=5 .AND. vsW2=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",38)+" Costos a US$ "    +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=6 .AND. vsW2=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",35)+" Utilidades a S/. "+Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=7 .AND. vsW2=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",35)+" Utilidades a US$ "+Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
      CASE vsW0=8 .AND. vsW2=1
           @iFIL-3.4,mCO0+111.2 Say Replicate("-",34)+" Stock Faltantes " +Replicate("-",38) Font "&mLetRom",12 Style "BQ" Size 1,65 Pict "@S90"
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. vsW1=1
           @iFIL-1.8,mCO0+087.6 Say "    ENERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+106.4 Say "  FEBRERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+125.2 Say "    MARZO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+144.0 Say "     ABRIL" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+162.8 Say "     MAYO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+181.6 Say "     JUNIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE mrEs="3" .AND. vsW1=2
           @iFIL-1.8,mCO0+087.6 Say "     JULIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+106.4 Say "   AGOSTO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+125.2 Say " SETIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+144.0 Say " OCTUBRE  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+162.8 Say "NOVIEMBR  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+181.6 Say " DICIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE mrEs="4" .AND. vsW3=1
           @iFIL-1.8,mCO0+027.0 Say "    ENERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+045.8 Say "  FEBRERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+064.6 Say "    MARZO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+083.4 Say "     ABRIL" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+102.2 Say "     MAYO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+121.0 Say "     JUNIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+139.8 Say "     JULIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+158.6 Say "   AGOSTO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+177.4 Say " SETIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+196.2 Say " OCTUBRE  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+215.0 Say "NOVIEMBR  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+233.8 Say " DICIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE mrEs="4" .AND. vsW3=2 .AND. vsW1=1
           @iFIL-1.8,mCO0+139.8 Say "    ENERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+158.6 Say "  FEBRERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+177.4 Say "    MARZO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+196.2 Say "     ABRIL" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+215.0 Say "     MAYO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+233.8 Say "     JUNIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE mrEs="4" .AND. vsW3=2 .AND. vsW1=2
           @iFIL-1.8,mCO0+139.8 Say "     JULIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+158.6 Say "   AGOSTO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+177.4 Say " SETIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+196.2 Say " OCTUBRE  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+215.0 Say "NOVIEMBR  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+233.8 Say " DICIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE vsW3=1
           @iFIL-1.8,mCO0+043.9 Say "    ENERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+062.7 Say "  FEBRERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+081.4 Say "    MARZO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+100.2 Say "     ABRIL" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+119.0 Say "     MAYO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+137.8 Say "     JUNIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+156.6 Say "     JULIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+175.4 Say "   AGOSTO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+194.3 Say " SETIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+213.0 Say " OCTUBRE  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+231.8 Say "NOVIEMBR  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+250.6 Say " DICIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE vsW3=2 .AND. vsW1=1
           @iFIL-1.8,mCO0+137.8 Say "   TOTAL  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+156.6 Say "    ENERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+175.4 Say "  FEBRERO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+194.3 Say "    MARZO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+213.0 Say "     ABRIL" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+231.8 Say "     MAYO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+250.6 Say "     JUNIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
      CASE vsW3=2 .AND. vsW1=2
           @iFIL-1.8,mCO0+137.8 Say "   TOTAL  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+156.6 Say "     JULIO" Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+175.4 Say "   AGOSTO " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+194.3 Say " SETIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+213.0 Say " OCTUBRE  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+231.8 Say "NOVIEMBR  " Font "&mLetRom",12 Style "BQ" Size 1,13.2
           @iFIL-1.8,mCO0+250.6 Say " DICIEMBR " Font "&mLetRom",12 Style "BQ" Size 1,13.2
 ENDCASE
ENDPROC
*
PROCEDURE See_1310b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(vnOm)+ALLTRIM(vcOd)+"*"
      CASE psEe="i"
           SEEK UPPER(inOm)+ALLTRIM(icOd)+"*"
      CASE psEe="u"
           SEEK UPPER(unOm)+ALLTRIM(ucOd)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1310b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vnOm TO xnOm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xnOm TO vnOm
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE inOm TO vnOm
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE unOm TO vnOm
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM1cod TO vcOd
           STORE ftM1nom TO vnOm
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM1cod TO ucOd
           STORE ftM1nom TO unOm
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM1cod TO icOd
           STORE ftM1nom TO inOm
 ENDCASE
ENDPROC
*
PROCEDURE Res_1310b
 DO p00_1310a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1310b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           SELECT teMporal_1
      CASE vsW2=2
           SELECT teMporal_2
 ENDCASE
 SET ORDER TO FTM1NOM
 DO seE_1310b WITH "i"
 DO paN_1310b
 DO seE_1310b WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1310b WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1310b WITH "v"
 DO diS_1310b WITH "R"
ENDPROC
*
PROCEDURE Xls_1310b
 PRIVATE ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10, pt11,  ;
         pt12, piTe, pfRa
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE vsW2=1 .AND. voPc=1
           STORE "Ventas " TO pfRa
           DO xl0_0000a WITH pfRa+"x Meses desde "+DTOC(dfEm)+" hasta "+ ;
              DTOC(hfEm), "Listado", 98
      CASE vsW2=1 .AND. (voPc=6 .OR. voPc=7)
           STORE "Ventas " TO pfRa
           DO xl0_0000a WITH pfRa+"x Meses desde "+DTOC(dfEm)+" hasta "+ ;
              DTOC(hfEm), "Listado", 42
      CASE vsW2=1
           STORE "Ventas " TO pfRa
           DO xl0_0000a WITH pfRa+"x Meses desde "+DTOC(dfEm)+" hasta "+ ;
              DTOC(hfEm), "Listado", 28
      CASE vsW2=2 .AND. voPc=1
           STORE "Compras " TO pfRa
           DO xl0_0000a WITH pfRa+"x Meses desde "+DTOC(dfEm)+" hasta "+ ;
              DTOC(hfEm), "Listado", 42
      CASE vsW2=2
           STORE "Compras " TO pfRa
           DO xl0_0000a WITH pfRa+"x Meses desde "+DTOC(dfEm)+" hasta "+ ;
              DTOC(hfEm), "Listado", 28
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 DO CASE
      CASE voPc=1
           pxLs.ceLls(3, 1).vaLue = "Productos/Servicios"
      CASE voPc=2
           pxLs.ceLls(3, 1).vaLue = "Clientes"
      CASE voPc=3
           pxLs.ceLls(3, 1).vaLue = "Tipos de Clientes"
      CASE voPc=4
           pxLs.ceLls(3, 1).vaLue = "Vendedores"
      CASE voPc=5
           pxLs.ceLls(3, 1).vaLue = "Formas de Pago"
      CASE voPc=6
           pxLs.ceLls(3, 1).vaLue = "Tipos de Productos"
      CASE voPc=7
           pxLs.ceLls(3, 1).vaLue = "Grupos de Productos"
 ENDCASE
 STORE 2 TO piTe
 IF voPc=1 .OR. voPc=6 .OR. voPc=7
      pxLs.ceLls(3, piTe+00).vaLue = "Cant.Total"
      pxLs.ceLls(3, piTe+01).vaLue = "Enero"
      pxLs.ceLls(3, piTe+02).vaLue = "Febrero"
      pxLs.ceLls(3, piTe+03).vaLue = "Marzo"
      pxLs.ceLls(3, piTe+04).vaLue = "Abril"
      pxLs.ceLls(3, piTe+05).vaLue = "Mayo"
      pxLs.ceLls(3, piTe+06).vaLue = "Junio"
      pxLs.ceLls(3, piTe+07).vaLue = "Julio"
      pxLs.ceLls(3, piTe+08).vaLue = "Agosto"
      pxLs.ceLls(3, piTe+09).vaLue = "Setiembre"
      pxLs.ceLls(3, piTe+10).vaLue = "Octubre"
      pxLs.ceLls(3, piTe+11).vaLue = "Noviembre"
      pxLs.ceLls(3, piTe+12).vaLue = "Diciembre"
      pxLs.ceLls(3, piTe+13).vaLue = "  "
      STORE piTe+14 TO piTe
 ENDIF
 pxLs.ceLls(3, piTe+00).vaLue = "Total a S/."
 pxLs.ceLls(3, piTe+01).vaLue = "Enero"
 pxLs.ceLls(3, piTe+02).vaLue = "Febrero"
 pxLs.ceLls(3, piTe+03).vaLue = "Marzo"
 pxLs.ceLls(3, piTe+04).vaLue = "Abril"
 pxLs.ceLls(3, piTe+05).vaLue = "Mayo"
 pxLs.ceLls(3, piTe+06).vaLue = "Junio"
 pxLs.ceLls(3, piTe+07).vaLue = "Julio"
 pxLs.ceLls(3, piTe+08).vaLue = "Agosto"
 pxLs.ceLls(3, piTe+09).vaLue = "Setiembre"
 pxLs.ceLls(3, piTe+10).vaLue = "Octubre"
 pxLs.ceLls(3, piTe+11).vaLue = "Noviembre"
 pxLs.ceLls(3, piTe+12).vaLue = "Diciembre"
 pxLs.ceLls(3, piTe+13).vaLue = "  "
 pxLs.ceLls(3, piTe+14).vaLue = "Total a US$"
 pxLs.ceLls(3, piTe+15).vaLue = "Enero"
 pxLs.ceLls(3, piTe+16).vaLue = "Febrero"
 pxLs.ceLls(3, piTe+17).vaLue = "Marzo"
 pxLs.ceLls(3, piTe+18).vaLue = "Abril"
 pxLs.ceLls(3, piTe+19).vaLue = "Mayo"
 pxLs.ceLls(3, piTe+20).vaLue = "Junio"
 pxLs.ceLls(3, piTe+21).vaLue = "Julio"
 pxLs.ceLls(3, piTe+22).vaLue = "Agosto"
 pxLs.ceLls(3, piTe+23).vaLue = "Setiembre"
 pxLs.ceLls(3, piTe+24).vaLue = "Octubre"
 pxLs.ceLls(3, piTe+25).vaLue = "Noviembre"
 pxLs.ceLls(3, piTe+26).vaLue = "Diciembre"
 pxLs.ceLls(3, piTe+27).vaLue = " "
 STORE piTe+28 TO piTe
 IF vsW2=1 .AND. voPc=1
      pxLs.ceLls(3, piTe+00).vaLue = "Total a S/."
      pxLs.ceLls(3, piTe+01).vaLue = "Enero"
      pxLs.ceLls(3, piTe+02).vaLue = "Febrero"
      pxLs.ceLls(3, piTe+03).vaLue = "Marzo"
      pxLs.ceLls(3, piTe+04).vaLue = "Abril"
      pxLs.ceLls(3, piTe+05).vaLue = "Mayo"
      pxLs.ceLls(3, piTe+06).vaLue = "Junio"
      pxLs.ceLls(3, piTe+07).vaLue = "Julio"
      pxLs.ceLls(3, piTe+08).vaLue = "Agosto"
      pxLs.ceLls(3, piTe+09).vaLue = "Setiembre"
      pxLs.ceLls(3, piTe+10).vaLue = "Octubre"
      pxLs.ceLls(3, piTe+11).vaLue = "Noviembre"
      pxLs.ceLls(3, piTe+12).vaLue = "Diciembre"
      pxLs.ceLls(3, piTe+13).vaLue = "  "
      pxLs.ceLls(3, piTe+14).vaLue = "Total a US$"
      pxLs.ceLls(3, piTe+15).vaLue = "Enero"
      pxLs.ceLls(3, piTe+16).vaLue = "Febrero"
      pxLs.ceLls(3, piTe+17).vaLue = "Marzo"
      pxLs.ceLls(3, piTe+18).vaLue = "Abril"
      pxLs.ceLls(3, piTe+19).vaLue = "Mayo"
      pxLs.ceLls(3, piTe+20).vaLue = "Junio"
      pxLs.ceLls(3, piTe+21).vaLue = "Julio"
      pxLs.ceLls(3, piTe+22).vaLue = "Agosto"
      pxLs.ceLls(3, piTe+23).vaLue = "Setiembre"
      pxLs.ceLls(3, piTe+24).vaLue = "Octubre"
      pxLs.ceLls(3, piTe+25).vaLue = "Noviembre"
      pxLs.ceLls(3, piTe+26).vaLue = "Diciembre"
      pxLs.ceLls(3, piTe+27).vaLue = "  "
      pxLs.ceLls(3, piTe+28).vaLue = "Total a S/."
      pxLs.ceLls(3, piTe+29).vaLue = "Enero"
      pxLs.ceLls(3, piTe+30).vaLue = "Febrero"
      pxLs.ceLls(3, piTe+31).vaLue = "Marzo"
      pxLs.ceLls(3, piTe+32).vaLue = "Abril"
      pxLs.ceLls(3, piTe+33).vaLue = "Mayo"
      pxLs.ceLls(3, piTe+34).vaLue = "Junio"
      pxLs.ceLls(3, piTe+35).vaLue = "Julio"
      pxLs.ceLls(3, piTe+36).vaLue = "Agosto"
      pxLs.ceLls(3, piTe+37).vaLue = "Setiembre"
      pxLs.ceLls(3, piTe+38).vaLue = "Octubre"
      pxLs.ceLls(3, piTe+39).vaLue = "Noviembre"
      pxLs.ceLls(3, piTe+40).vaLue = "Diciembre"
      pxLs.ceLls(3, piTe+41).vaLue = "  "
      pxLs.ceLls(3, piTe+42).vaLue = "Total a US$"
      pxLs.ceLls(3, piTe+43).vaLue = "Enero"
      pxLs.ceLls(3, piTe+44).vaLue = "Febrero"
      pxLs.ceLls(3, piTe+45).vaLue = "Marzo"
      pxLs.ceLls(3, piTe+46).vaLue = "Abril"
      pxLs.ceLls(3, piTe+47).vaLue = "Mayo"
      pxLs.ceLls(3, piTe+48).vaLue = "Junio"
      pxLs.ceLls(3, piTe+49).vaLue = "Julio"
      pxLs.ceLls(3, piTe+50).vaLue = "Agosto"
      pxLs.ceLls(3, piTe+51).vaLue = "Setiembre"
      pxLs.ceLls(3, piTe+52).vaLue = "Octubre"
      pxLs.ceLls(3, piTe+53).vaLue = "Noviembre"
      pxLs.ceLls(3, piTe+54).vaLue = "Diciembre"
 ENDIF
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,98)).inSert
 pxLs.raNge(pxLs.ceLls(3,02), pxLs.ceLls(3,14)).meRge
 pxLs.raNge(pxLs.ceLls(3,16), pxLs.ceLls(3,28)).meRge
 pxLs.raNge(pxLs.ceLls(3,02), pxLs.ceLls(3,98)).hoRizontalalignment = 3
 IF voPc=1 .OR. voPc=6 .OR. voPc=7
      pxLs.raNge(pxLs.ceLls(3,30), pxLs.ceLls(3,42)).meRge
      pxLs.ceLls(3, 02).vaLue = "Cantidades"
      pxLs.ceLls(3, 16).vaLue = pfRa+"convertidas a S/."
      pxLs.ceLls(3, 30).vaLue = pfRa+"convertidas a US$"
      STORE 42 TO piTe
      IF vsW2=1 .AND. voPc=1
           pxLs.raNge(pxLs.ceLls(3,44), pxLs.ceLls(3,56)).meRge
           pxLs.raNge(pxLs.ceLls(3,58), pxLs.ceLls(3,70)).meRge
           pxLs.raNge(pxLs.ceLls(3,72), pxLs.ceLls(3,84)).meRge
           pxLs.raNge(pxLs.ceLls(3,86), pxLs.ceLls(3,98)).meRge
           pxLs.ceLls(3, 44).vaLue = "Costos convertidos a S/."
           pxLs.ceLls(3, 58).vaLue = "Costos convertidos a US$"
           pxLs.ceLls(3, 72).vaLue = "Utilidades convertidas a S/."
           pxLs.ceLls(3, 86).vaLue = "Utilidades convertidas a US$"
           STORE 98 TO piTe
      ENDIF
      WITH pxLs.raNge(pxLs.ceLls(3,2),pxLs.ceLls(3,piTe))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
      ENDWITH
      pxLs.raNge(pxLs.coLumns(2), pxLs.coLumns(98)).nuMberformat =  ;
                "###,###,,###,###,##0.0"
 ELSE
      pxLs.ceLls(3, 02).vaLue = pfRa+"convertidas a S/."
      pxLs.ceLls(3, 16).vaLue = pfRa+"convertidas a US$"
      WITH pxLs.raNge(pxLs.ceLls(3,2),pxLs.ceLls(3,28))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
      ENDWITH
      pxLs.raNge(pxLs.coLumns(2), pxLs.coLumns(28)).nuMberformat =  ;
                "###,###,,###,###,##0.0"
 ENDIF
 DO CASE
      CASE vsW2=1
           SELECT teMporal_1
      CASE vsW2=2
           SELECT teMporal_2
 ENDCASE
 GOTO TOP
 STORE 5 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 1).vaLue = ftM1nom
      STORE 2 TO piTe
      IF voPc=1 .OR. voPc=6 .OR. voPc=7
           STORE ftM1enc TO ptO1
           STORE ftM1fec TO ptO2
           STORE ftM1mac TO ptO3
           STORE ftM1abc TO ptO4
           STORE ftM1myc TO ptO5
           STORE ftM1juc TO ptO6
           STORE ftM1jlc TO ptO7
           STORE ftM1agc TO ptO8
           STORE ftM1sec TO ptO9
           STORE ftM1occ TO pt10
           STORE ftM1noc TO pt11
           STORE ftM1dic TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
      ENDIF
      STORE ftM1en1 TO ptO1
      STORE ftM1fe1 TO ptO2
      STORE ftM1ma1 TO ptO3
      STORE ftM1ab1 TO ptO4
      STORE ftM1my1 TO ptO5
      STORE ftM1ju1 TO ptO6
      STORE ftM1jl1 TO ptO7
      STORE ftM1ag1 TO ptO8
      STORE ftM1se1 TO ptO9
      STORE ftM1oc1 TO pt10
      STORE ftM1no1 TO pt11
      STORE ftM1di1 TO pt12
      pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ ;
                ptO7+ptO8+ptO9+pt10+pt11+pt12
      pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
      pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
      pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
      pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
      pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
      pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
      pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
      pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
      pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
      pxLs.ceLls(viT1, piTe+10).vaLue = pt10
      pxLs.ceLls(viT1, piTe+11).vaLue = pt11
      pxLs.ceLls(viT1, piTe+12).vaLue = pt12
      STORE ftM1en2 TO ptO1
      STORE ftM1fe2 TO ptO2
      STORE ftM1ma2 TO ptO3
      STORE ftM1ab2 TO ptO4
      STORE ftM1my2 TO ptO5
      STORE ftM1ju2 TO ptO6
      STORE ftM1jl2 TO ptO7
      STORE ftM1ag2 TO ptO8
      STORE ftM1se2 TO ptO9
      STORE ftM1oc2 TO pt10
      STORE ftM1no2 TO pt11
      STORE ftM1di2 TO pt12
      pxLs.ceLls(viT1, piTe+14).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ ;
                ptO7+ptO8+ptO9+pt10+pt11+pt12
      pxLs.ceLls(viT1, piTe+15).vaLue = ptO1
      pxLs.ceLls(viT1, piTe+16).vaLue = ptO2
      pxLs.ceLls(viT1, piTe+17).vaLue = ptO3
      pxLs.ceLls(viT1, piTe+18).vaLue = ptO4
      pxLs.ceLls(viT1, piTe+19).vaLue = ptO5
      pxLs.ceLls(viT1, piTe+20).vaLue = ptO6
      pxLs.ceLls(viT1, piTe+21).vaLue = ptO7
      pxLs.ceLls(viT1, piTe+22).vaLue = ptO8
      pxLs.ceLls(viT1, piTe+23).vaLue = ptO9
      pxLs.ceLls(viT1, piTe+24).vaLue = pt10
      pxLs.ceLls(viT1, piTe+25).vaLue = pt11
      pxLs.ceLls(viT1, piTe+26).vaLue = pt12
      STORE piTe+28 TO piTe
      IF vsW2=1 .AND. voPc=1
           STORE ftM1enk TO ptO1
           STORE ftM1fek TO ptO2
           STORE ftM1mak TO ptO3
           STORE ftM1abk TO ptO4
           STORE ftM1myk TO ptO5
           STORE ftM1juk TO ptO6
           STORE ftM1jlk TO ptO7
           STORE ftM1agk TO ptO8
           STORE ftM1sek TO ptO9
           STORE ftM1ock TO pt10
           STORE ftM1nok TO pt11
           STORE ftM1dik TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE ftM1end TO ptO1
           STORE ftM1fed TO ptO2
           STORE ftM1mad TO ptO3
           STORE ftM1abd TO ptO4
           STORE ftM1myd TO ptO5
           STORE ftM1jud TO ptO6
           STORE ftM1jld TO ptO7
           STORE ftM1agd TO ptO8
           STORE ftM1sed TO ptO9
           STORE ftM1ocd TO pt10
           STORE ftM1nod TO pt11
           STORE ftM1did TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE ftM1enu TO ptO1
           STORE ftM1feu TO ptO2
           STORE ftM1mau TO ptO3
           STORE ftM1abu TO ptO4
           STORE ftM1myu TO ptO5
           STORE ftM1juu TO ptO6
           STORE ftM1jlu TO ptO7
           STORE ftM1agu TO ptO8
           STORE ftM1seu TO ptO9
           STORE ftM1ocu TO pt10
           STORE ftM1nou TO pt11
           STORE ftM1diu TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE ftM1enw TO ptO1
           STORE ftM1few TO ptO2
           STORE ftM1maw TO ptO3
           STORE ftM1abw TO ptO4
           STORE ftM1myw TO ptO5
           STORE ftM1juw TO ptO6
           STORE ftM1jlw TO ptO7
           STORE ftM1agw TO ptO8
           STORE ftM1sew TO ptO9
           STORE ftM1ocw TO pt10
           STORE ftM1now TO pt11
           STORE ftM1diw TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
      ENDIF
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW2=1
                SELECT teMporal_1
           CASE vsW2=2
                SELECT teMporal_2
      ENDCASE
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 IF meN1<meNn
      STORE 2 TO piTe
      IF voPc=1 .OR. voPc=6 .OR. voPc=7
           DO CASE
                CASE vsW2=1
                     STORE tvEnc TO ptO1
                     STORE tvFec TO ptO2
                     STORE tvMac TO ptO3
                     STORE tvAbc TO ptO4
                     STORE tvMyc TO ptO5
                     STORE tvJuc TO ptO6
                     STORE tvJlc TO ptO7
                     STORE tvAgc TO ptO8
                     STORE tvSec TO ptO9
                     STORE tvOcc TO pt10
                     STORE tvNoc TO pt11
                     STORE tvDic TO pt12
                CASE vsW2=2
                     STORE tcEnc TO ptO1
                     STORE tcFec TO ptO2
                     STORE tcMac TO ptO3
                     STORE tcAbc TO ptO4
                     STORE tcMyc TO ptO5
                     STORE tcJuc TO ptO6
                     STORE tcJlc TO ptO7
                     STORE tcAgc TO ptO8
                     STORE tcSec TO ptO9
                     STORE tcOcc TO pt10
                     STORE tcNoc TO pt11
                     STORE tcDic TO pt12
           ENDCASE
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
      ENDIF
      DO CASE
           CASE vsW2=1
                STORE tvEn1 TO ptO1
                STORE tvFe1 TO ptO2
                STORE tvMa1 TO ptO3
                STORE tvAb1 TO ptO4
                STORE tvMy1 TO ptO5
                STORE tvJu1 TO ptO6
                STORE tvJl1 TO ptO7
                STORE tvAg1 TO ptO8
                STORE tvSe1 TO ptO9
                STORE tvOc1 TO pt10
                STORE tvNo1 TO pt11
                STORE tvDi1 TO pt12
           CASE vsW2=2
                STORE tcEn1 TO ptO1
                STORE tcFe1 TO ptO2
                STORE tcMa1 TO ptO3
                STORE tcAb1 TO ptO4
                STORE tcMy1 TO ptO5
                STORE tcJu1 TO ptO6
                STORE tcJl1 TO ptO7
                STORE tcAg1 TO ptO8
                STORE tcSe1 TO ptO9
                STORE tcOc1 TO pt10
                STORE tcNo1 TO pt11
                STORE tcDi1 TO pt12
      ENDCASE
      pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ ;
                ptO7+ptO8+ptO9+pt10+pt11+pt12
      pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
      pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
      pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
      pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
      pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
      pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
      pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
      pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
      pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
      pxLs.ceLls(viT1, piTe+10).vaLue = pt10
      pxLs.ceLls(viT1, piTe+11).vaLue = pt11
      pxLs.ceLls(viT1, piTe+12).vaLue = pt12
      STORE piTe+14 TO piTe
      DO CASE
           CASE vsW2=1
                STORE tvEn2 TO ptO1
                STORE tvFe2 TO ptO2
                STORE tvMa2 TO ptO3
                STORE tvAb2 TO ptO4
                STORE tvMy2 TO ptO5
                STORE tvJu2 TO ptO6
                STORE tvJl2 TO ptO7
                STORE tvAg2 TO ptO8
                STORE tvSe2 TO ptO9
                STORE tvOc2 TO pt10
                STORE tvNo2 TO pt11
                STORE tvDi2 TO pt12
           CASE vsW2=2
                STORE tcEn2 TO ptO1
                STORE tcFe2 TO ptO2
                STORE tcMa2 TO ptO3
                STORE tcAb2 TO ptO4
                STORE tcMy2 TO ptO5
                STORE tcJu2 TO ptO6
                STORE tcJl2 TO ptO7
                STORE tcAg2 TO ptO8
                STORE tcSe2 TO ptO9
                STORE tcOc2 TO pt10
                STORE tcNo2 TO pt11
                STORE tcDi2 TO pt12
      ENDCASE
      pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ptO6+ ;
                ptO7+ptO8+ptO9+pt10+pt11+pt12
      pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
      pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
      pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
      pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
      pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
      pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
      pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
      pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
      pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
      pxLs.ceLls(viT1, piTe+10).vaLue = pt10
      pxLs.ceLls(viT1, piTe+11).vaLue = pt11
      pxLs.ceLls(viT1, piTe+12).vaLue = pt12
      STORE piTe+12 TO piTe
      IF vsW1=1 .AND. voPc=1
           STORE tvEnk TO ptO1
           STORE tvFek TO ptO2
           STORE tvMak TO ptO3
           STORE tvAbk TO ptO4
           STORE tvMyk TO ptO5
           STORE tvJuk TO ptO6
           STORE tvJlk TO ptO7
           STORE tvAgk TO ptO8
           STORE tvSek TO ptO9
           STORE tvOck TO pt10
           STORE tvNok TO pt11
           STORE tvDik TO pt12
           STORE piTe+2 TO piTe
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE tvEnd TO ptO1
           STORE tvFed TO ptO2
           STORE tvMad TO ptO3
           STORE tvAbd TO ptO4
           STORE tvMyd TO ptO5
           STORE tvJud TO ptO6
           STORE tvJld TO ptO7
           STORE tvAgd TO ptO8
           STORE tvSed TO ptO9
           STORE tvOcd TO pt10
           STORE tvNod TO pt11
           STORE tvDid TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE tvEnu TO ptO1
           STORE tvFeu TO ptO2
           STORE tvMau TO ptO3
           STORE tvAbu TO ptO4
           STORE tvMyu TO ptO5
           STORE tvJuu TO ptO6
           STORE tvJlu TO ptO7
           STORE tvAgu TO ptO8
           STORE tvSeu TO ptO9
           STORE tvOcu TO pt10
           STORE tvNou TO pt11
           STORE tvDiu TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+14 TO piTe
           STORE tvEnw TO ptO1
           STORE tvFew TO ptO2
           STORE tvMaw TO ptO3
           STORE tvAbw TO ptO4
           STORE tvMyw TO ptO5
           STORE tvJuw TO ptO6
           STORE tvJlw TO ptO7
           STORE tvAgw TO ptO8
           STORE tvSew TO ptO9
           STORE tvOcw TO pt10
           STORE tvNow TO pt11
           STORE tvDiw TO pt12
           pxLs.ceLls(viT1, piTe+00).vaLue = ptO1+ptO2+ptO3+ptO4+ptO5+ ;
                     ptO6+ptO7+ptO8+ptO9+pt10+pt11+pt12
           pxLs.ceLls(viT1, piTe+01).vaLue = ptO1
           pxLs.ceLls(viT1, piTe+02).vaLue = ptO2
           pxLs.ceLls(viT1, piTe+03).vaLue = ptO3
           pxLs.ceLls(viT1, piTe+04).vaLue = ptO4
           pxLs.ceLls(viT1, piTe+05).vaLue = ptO5
           pxLs.ceLls(viT1, piTe+06).vaLue = ptO6
           pxLs.ceLls(viT1, piTe+07).vaLue = ptO7
           pxLs.ceLls(viT1, piTe+08).vaLue = ptO8
           pxLs.ceLls(viT1, piTe+09).vaLue = ptO9
           pxLs.ceLls(viT1, piTe+10).vaLue = pt10
           pxLs.ceLls(viT1, piTe+11).vaLue = pt11
           pxLs.ceLls(viT1, piTe+12).vaLue = pt12
           STORE piTe+12 TO piTe
      ENDIF
      WITH pxLs.raNge(pxLs.ceLls(viT1,2),pxLs.ceLls(viT1,piTe))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
           .hoRizontalalignment = 4
      ENDWITH
 ENDIF
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO CASE
      CASE vsW2=1
           SELECT teMporal_1
      CASE vsW2=2
           SELECT teMporal_2
 ENDCASE
 DO seE_1310b WITH "v"
 RELEASE ptO1, ptO2, ptO3, ptO4, ptO5, ptO6, ptO7, ptO8, ptO9, pt10, pt11,  ;
         pt12, piTe, pfRa
ENDPROC
*
PROCEDURE Clp_1310b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=ifIl-1.44 .AND. mfIl<=ifIl-0.51 .AND. mcCc>=mcO0-0.3  ;
           .AND. mcCc<=mcO0+5.7 .AND. mrEs>"3"
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB1 .AND. mfIl<=vfB1+0.743 .AND. mcCc>=vcB1 .AND. mcCc<= ;
           vcB1+3.30 .AND. voPv+voPk>1
           STORE k_F2 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1310b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1310b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1310b WITH "F", "v"
           DO diS_1310b WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1310b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En esta parte de la consulta, se muestran las ventas x meses de acuerdo"
 @ pfIl+1, 01 SAY "a la opcion escogida, en el rango de fechas seleccionadas."
 @ pfIl+2, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+7, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 02 SAY "ESC" STYLE "BT"
 @ pfIl+5, 02 SAY "F10" STYLE "BT"
 @ pfIl+6, 02 SAY "F1" STYLE "BT"
 @ pfIl+7, 02 SAY "F2" STYLE "BT"
 @ pfIl+4, 22 SAY "Regresar a Cabecera"
 @ pfIl+5, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+6, 22 SAY "Ayuda del Programa"
 @ pfIl+7, 22 SAY "Cambiar de Ventas a Compras y vic."
 STORE pfIl+8 TO pfIl
 IF mrEs>"3"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F3" STYLE "BT"
      @ pfIl, 22 SAY "Ampliara/Reducir Nombre"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF mrEs="3"
      @ pfIl+0, 20 SAY ":" STYLE "BT"
      @ pfIl+1, 20 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 02 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 22 SAY "Ver otros meses"
      @ pfIl+1, 22 SAY "Ver otros meses"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F8" STYLE "BT"
 @ pfIl+01, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+03, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+04, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+05, 02 SAY "HOME" STYLE "BT"
 @ pfIl+06, 02 SAY "END" STYLE "BT"
 @ pfIl+07, 02 SAY "CTRL -->" STYLE "BT"
 @ pfIl+08, 02 SAY "CTRL <--" STYLE "BT"
 @ pfIl+09, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+10, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+00, 22 SAY "Pasar Datos a Excel"
 @ pfIl+01, 22 SAY "Línea inferior"
 @ pfIl+02, 22 SAY "Línea superior"
 @ pfIl+03, 22 SAY "Página siguiente"
 @ pfIl+04, 22 SAY "Página anterior"
 @ pfIl+05, 22 SAY "Primera línea"
 @ pfIl+06, 22 SAY "Última línea"
 @ pfIl+07, 22 SAY "Ver Cantidades/Totales en S/. o US$"
 @ pfIl+08, 22 SAY "Ver Cantidades/Totales en S/. o US$"
 @ pfIl+09, 22 SAY "Imprimir Listado de Ventas"
 @ pfIl+10, 22 SAY "Ver Detalle de Movimientos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
