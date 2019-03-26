 STORE 0 TO voPf, voPb, voPn, voPd, coPf, coPb, coPn, coPd, tsO1, tuS1,  ;
       ttT1, ttT2
 WAIT WINDOW NOWAIT "L E Y E N D O  Detalle ... Presionar ESC para Salir"+ ;
      CHR(13)+"Hora Inicial de Lectura: "+vhOr
 DO leE_1300e WITH vcOd, vcDg
 WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
 = INKEY(0.05)
 WAIT CLEAR
 SELECT teMporal_2
 GOTO TOP
 IF BOF()
      STORE "No hay informacion en esta opcion" TO mmSj
      DO poNmsj
      = INKEY(0.05)
      RETURN
 ENDIF
 SEEK "FA"
 IF  .NOT. EOF()
      STORE 1 TO voPf, coPf
 ELSE
      STORE 0 TO voPf, coPf
      SEEK "FE"
      IF  .NOT. EOF()
           STORE 1 TO voPf, coPf
      ELSE
           STORE 0 TO voPf, coPf
           SEEK "FC"
           IF  .NOT. EOF()
                STORE 1 TO voPf, coPf
           ELSE
                STORE 0 TO voPf, coPf
           ENDIF
      ENDIF
 ENDIF
 SEEK "BO"
 IF  .NOT. EOF()
      STORE 1 TO voPb, coPb
 ELSE
      STORE 0 TO voPb, coPb
      SEEK "BE"
      IF  .NOT. EOF()
           STORE 1 TO voPb, coPb
      ELSE
           STORE 0 TO voPb, coPb
           SEEK "BC"
           IF  .NOT. EOF()
                STORE 1 TO voPb, coPb
           ELSE
                STORE 0 TO voPb, coPb
           ENDIF
      ENDIF
 ENDIF
 SEEK "NP"
 IF  .NOT. EOF()
      STORE 1 TO voPn, coPn
 ELSE
      STORE 0 TO voPn, coPn
 ENDIF
 SEEK "NC"
 IF  .NOT. EOF()
      STORE 1 TO voPd, coPd
 ELSE
      SEEK "N1"
      IF  .NOT. EOF()
           STORE 1 TO voPd, coPd
      ELSE
           SEEK "N3"
           IF  .NOT. EOF()
                STORE 1 TO voPd, coPd
           ELSE
                SEEK "ND"
                IF  .NOT. EOF()
                     STORE 1 TO voPd, coPd
                ELSE
                     SEEK "N2"
                     IF  .NOT. EOF()
                          STORE 1 TO voPd, coPd
                     ELSE
                          SEEK "N4"
                          IF  .NOT. EOF()
                               STORE 1 TO voPd, coPd
                          ELSE
                               STORE 0 TO voPd, coPd
                          ENDIF
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 GOTO TOP
 DO muE_1300b IN PVR1300B WITH "F", "i"
 STORE 1 TO vsW5, csW5, vsW1, vsW2
 DO p00_1300e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1300e
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1300b IN PVR1300B WITH "i", "v"
 DO seE_1300b IN PVR1300B WITH "v", "2"
 DO diS_1300b IN PVR1300B WITH "R", "2"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1300e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300e
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. mrEs="3"
                DO CASE
                     CASE vsW1=3
                          STORE 1 TO vsW1
                     OTHERWISE
                          STORE vsW1+1 TO vsW1
                ENDCASE
                DO CASE
                     CASE vsW1=1 .AND. vsW5>8
                          STORE 09 TO vsW5
                     CASE vsW1=2 .AND. vsW5>8
                          STORE 10 TO vsW5
                     CASE vsW1=3 .AND. vsW5>8
                          STORE 11 TO vsW5
                ENDCASE
                DO tiT_1300b IN PVR1300B
                DO toT_1300b IN PVR1300B WITH "2"
                DO caM_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_1300b IN PVR1300B WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vsW5>8
                = INKEY(0.01)
                IF csW5=1
                     STORE 2 TO csW5
                ELSE
                     STORE 1 TO csW5
                ENDIF
                DO caM_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsW5=11
                          STORE 1 TO vsW5
                     CASE mkEy=k_Right .AND. vsW5=10 .AND. mrEs="3"
                          STORE 1 TO vsW5
                     CASE mkEy=k_Right .AND. vsW5=09 .AND. mrEs="3"
                          STORE 1 TO vsW5
                     CASE mkEy=k_Right
                          STORE vsW5+1 TO vsW5
                     CASE mkEy=k_Left .AND. vsW5=1 .AND. vsW1=1 .AND. mrEs="3"
                          STORE 09 TO vsW5
                     CASE mkEy=k_Left .AND. vsW5=1 .AND. vsW1=2 .AND. mrEs="3"
                          STORE 10 TO vsW5
                     CASE mkEy=k_Left .AND. vsW5=1
                          STORE 11 TO vsW5
                     CASE mkEy=k_Left
                          STORE vsW5-1 TO vsW5
                ENDCASE
                DO caM_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_1300b IN PVR1300B WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1300e
                               OTHERWISE
                                    DO seE_1300b IN PVR1300B WITH "v", "2"
                                    DO diS_1300b IN PVR1300B WITH "N", "2"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1300b IN PVR1300B WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1300e
                               OTHERWISE
                                    DO seE_1300b IN PVR1300B WITH "v", "2"
                                    DO diS_1300b IN PVR1300B WITH "N", "2"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1300b IN PVR1300B WITH "u", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "N", "2"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0+8, ffIl, mcO0+muCo, 1
                               DO liN_1300b IN PVR1300B WITH ffIl, ffIl+1, "2"
                               DO li1_1300b IN PVR1300B WITH ffIl, ffIl+1, "2"
                               DO li2_1300b IN PVR1300B WITH ffIl, ffIl+1
                               DO muE_1300b IN PVR1300B WITH "F", "u"
                               DO muE_1300b IN PVR1300B WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1300b IN PVR1300B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1300b IN PVR1300B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "N", "2"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0+8, ffIl, mcO0+muCo, 1
                               DO liN_1300b IN PVR1300B WITH ifIl, ifIl+1, "2"
                               DO li1_1300b IN PVR1300B WITH ifIl, ifIl+1, "2"
                               DO li2_1300b IN PVR1300B WITH ifIl, ifIl+1
                               DO muE_1300b IN PVR1300B WITH "F", "v"
                               DO muE_1300b IN PVR1300B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1300b IN PVR1300B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1300b IN PVR1300B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300b IN PVR1300B WITH "u", "2"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300e
                          STORE ifIl TO vfIl
                          DO muE_1300b IN PVR1300B WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300b IN PVR1300B WITH "i", "2"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1300e
                          STORE ifIl TO vfIl
                          DO muE_1300b IN PVR1300B WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "2"
                          DO diS_1300b IN PVR1300B WITH "R", "2"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300b IN PVR1300B WITH "v", "2"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300e
 STORE ifIl TO vfIl, ufIl
 DO muE_1300b IN PVR1300B WITH "F", "i"
 DO muE_1300b IN PVR1300B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1300b IN PVR1300B WITH "N", "2"
      DO muE_1300b IN PVR1300B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      @ ufIl+1, mcO0+8 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_1300b IN PVR1300B WITH ufIl+1, ffIl+1, "2"
      DO li1_1300b IN PVR1300B WITH ufIl+1, ffIl+1, "2"
      DO li2_1300b IN PVR1300B WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE P00_1300e
 DO coLsc7
 DO cuAdro WITH ifIl-3, mcO0+8, ffIl+3.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifIl-1.8, mcO0+7.2 TO ifIl-0.4, mcO0+muCo+0.5 PATTERN 1
 @ ffIl+1.6, mcO0+7.2 TO ffIl+4.4, mcO0+muCo+0.5 PATTERN 1
 DO liN_1300b IN PVR1300B WITH ifIl-1.8, ffIl+1.6, "2"
 DO li1_1300b IN PVR1300B WITH ifIl-0.4, ffIl+1.6, "2"
 DO li2_1300b IN PVR1300B WITH ifIl-1.8, ffIl+4.4
 DO coLsc4
 @iFIL-1.7,mCO0+10.2 Say "Documento" Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+29.4 Say "Fecha"     Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+42.0 Say "Vencim"    Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+59.0 Say "Cliente"   Font "&mLetAri",10 Style "BQ"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.7,mCO0+111.0 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+124.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+142.7 Say "F.Pago"        Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+160.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+156.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
      CASE mrEs="4"
           @iFIL-1.7,mCO0+111.9 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+126.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+144.2 Say "Forma de Pago" Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+171.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+195.9 Say "Total"         Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+215.1 Say "Total en S/."  Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+232.8 Say "Total en US$"  Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+166.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
      OTHERWISE
           @iFIL-1.7,mCO0+111.9 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+130.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+153.7 Say "Forma de Pago" Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+182.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+212.9 Say "Total"         Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+231.1 Say "Total en S/."  Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+250.8 Say "Total en US$"  Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+184.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
 ENDCASE
 DO p01_1300b IN PVR1300B WITH "2"
 DO tiT_1300b IN PVR1300B
 DO boT_1300b IN PVR1300B WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO opC_1300b IN PVR1300B WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cam_1300e
 DO p01_1300b IN PVR1300B WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=1
           SET ORDER TO FTM2DOC
      CASE vsW5=2
           SET ORDER TO FTM2FEM
      CASE vsW5=3
           SET ORDER TO FTM2FVE
      CASE vsW5=4
           SET ORDER TO FTM2NOM
      CASE vsW5=5
           SET ORDER TO FTM2RUC
      CASE vsW5=6
           SET ORDER TO FTM2NVE
      CASE vsW5=7
           SET ORDER TO FTM2NFP
      CASE vsW5=8
           SET ORDER TO FTM2NTT
      CASE vsW5=9 .AND. csW5=1
           SET ORDER TO FTM2TOT ASCENDING
      CASE vsW5=9 .AND. csW5=2
           SET ORDER TO FTM2TOT DESCENDING
      CASE vsW5=10 .AND. csW5=1
           SET ORDER TO FTM2TO1 ASCENDING
      CASE vsW5=10 .AND. csW5=2
           SET ORDER TO FTM2TO1 DESCENDING
      CASE vsW5=11 .AND. csW5=1
           SET ORDER TO FTM2TO2 ASCENDING
      CASE vsW5=11 .AND. csW5=2
           SET ORDER TO FTM2TO2 DESCENDING
 ENDCASE
 GOTO TOP
 DO seE_1300b IN PVR1300B WITH "i", "2"
 DO paN_1300e
 STORE ifIl TO vfIl
 DO muE_1300b IN PVR1300B WITH "i", "v"
 DO seE_1300b IN PVR1300B WITH "v", "2"
 DO diS_1300b IN PVR1300B WITH "R", "2"
ENDPROC
*
PROCEDURE Res_1300e
 DO CASE
      CASE vsW3=1
           DO muE_1300c WITH "x", "v"
           DO reS_1300c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SAVE SCREEN TO vpAn_12
           DO diS_1300c WITH "N"
           STORE vfIl TO cfIl
           STORE ifIl TO vfIl
           DO diS_1300c WITH "R1"
           STORE cfIl TO vfIl
           STORE ftM3nuv TO vnUv
      OTHERWISE
           DO muE_1300c WITH "x", "v"
           DO muE_1300d WITH "x", "v"
           DO reS_1300d
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SAVE SCREEN TO vpAn_13
           DO muE_1300c WITH "v", "x"
           DO muE_1300d WITH "v", "x"
           DO diS_1300d WITH "N"
           STORE vfFs TO cfFs
           STORE ifFs TO vfFs
           DO diS_1300d WITH "R1"
           STORE cfFs TO vfFs
           STORE vfIl TO vfFr
           STORE ifIl TO ifFr
           STORE ufIl TO ufFr
           STORE ffIl TO ffFr
           STORE cfIl TO cfFr
           STORE ifIl+6 TO ifIl
           STORE ffIl-1 TO ffIl
 ENDCASE
 DO p00_1300e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 DO CASE
      CASE vsW5=1
           SET ORDER TO FTM2DOC
      CASE vsW5=2
           SET ORDER TO FTM2FEM
      CASE vsW5=3
           SET ORDER TO FTM2FVE
      CASE vsW5=4
           SET ORDER TO FTM2NOM
      CASE vsW5=5
           SET ORDER TO FTM2RUC
      CASE vsW5=6
           SET ORDER TO FTM2NVE
      CASE vsW5=7
           SET ORDER TO FTM2NFP
      CASE vsW5=8
           SET ORDER TO FTM2NTT
      CASE vsW5=9 .AND. csW5=1
           SET ORDER TO FTM2TOT ASCENDING
      CASE vsW5=9 .AND. csW5=2
           SET ORDER TO FTM2TOT DESCENDING
      CASE vsW5=10 .AND. csW5=1
           SET ORDER TO FTM2TO1 ASCENDING
      CASE vsW5=10 .AND. csW5=2
           SET ORDER TO FTM2TO1 DESCENDING
      CASE vsW5=11 .AND. csW5=1
           SET ORDER TO FTM2TO2 ASCENDING
      CASE vsW5=11 .AND. csW5=2
           SET ORDER TO FTM2TO2 DESCENDING
 ENDCASE
 DO seE_1300b IN PVR1300B WITH "i", "2"
 DO paN_1300e
 DO seE_1300b IN PVR1300B WITH "i", "2"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1300b IN PVR1300B WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1300b IN PVR1300B WITH "v", "2"
 DO muE_1300b IN PVR1300B WITH "F", "V"
 DO diS_1300b IN PVR1300B WITH "R", "2"
ENDPROC
*
PROCEDURE Xls_1300e
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Ventas detalladas: "+DTOC(dfEm)+" hasta "+DTOC(hfEm),  ;
    "Listado", 15
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Documento"
 pxLs.ceLls(3, 04).vaLue = "Emisión"
 pxLs.ceLls(3, 05).vaLue = "Vencimiento"
 pxLs.ceLls(3, 06).vaLue = "Cliente"
 pxLs.ceLls(3, 07).vaLue = "RUC"
 pxLs.ceLls(3, 08).vaLue = "Titular"
 pxLs.ceLls(3, 09).vaLue = "Vendedor"
 pxLs.ceLls(3, 10).vaLue = "Forma de Pago"
 pxLs.ceLls(3, 11).vaLue = "Mon"
 pxLs.ceLls(3, 12).vaLue = "Total"
 pxLs.ceLls(3, 13).vaLue = " "
 pxLs.ceLls(3, 14).vaLue = "Total a S/."
 pxLs.ceLls(3, 15).vaLue = "Total a US$"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(10)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(12), pxLs.coLumns(15)).nuMberformat =  ;
           "###,###,###,##0.00"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).inSert
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).hoRizontalalignment = 2
 pxLs.ceLls(3, 1).vaLue = "Desde Serie: "+dsEr+" hasta Serie: "+hsEr
 IF csW3>0
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(4,15)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).meRge
      pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,15)).meRge
 ELSE
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).meRge
 ENDIF
 pxLs.ceLls(3, 1).hoRizontalalignment = 2
 pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
 pxLs.ceLls(3, 1).foNt.siZe = 12
 pxLs.ceLls(3, 1).foNt.boLd = .T.
 DO CASE
      CASE voPc=2
           pxLs.ceLls(3, 1).vaLue = "Cliente: "+xnOm
      CASE voPc=3
           pxLs.ceLls(3, 1).vaLue = "Cliente: "+xnOm
      CASE voPc=4
           pxLs.ceLls(3, 1).vaLue = "Tipo de Cliente: "+xnOm
      CASE voPc=5
           pxLs.ceLls(3, 1).vaLue = "Vendedor: "+xnOm
      CASE voPc=6
           pxLs.ceLls(3, 1).vaLue = "Forma de Pago: "+xnOm
      CASE voPc=7
           pxLs.ceLls(3, 1).vaLue = "Tipo de Producto: "+xnOm
      CASE voPc=8
           pxLs.ceLls(3, 1).vaLue = "Producto/Servicio: "+xnOm
      CASE voPc=9
           pxLs.ceLls(3, 1).vaLue = "Producto Nacional: "+xnOm
      CASE voPc=10
           pxLs.ceLls(3, 1).vaLue = "Producto Importado: "+xnOm
      CASE voPc=11
           pxLs.ceLls(3, 1).vaLue = "Servicio: "+xnOm
 ENDCASE
 STORE 6 TO viT1
 IF csW3>0
      pxLs.ceLls(4, 1).hoRizontalalignment = 2
      pxLs.ceLls(4, 1).foNt.naMe = "Times New Roman"
      pxLs.ceLls(4, 1).foNt.siZe = 12
      pxLs.ceLls(4, 1).foNt.boLd = .T.
      DO CASE
           CASE csW3=1
                pxLs.ceLls(4, 1).vaLue = "Tipo de Producto: "+vdCr
           CASE csW3=2
                pxLs.ceLls(4, 1).vaLue = "Grupo de Producto: "+vdCr
           CASE csW3=3
                pxLs.ceLls(4, 1).vaLue = "Producto: "+vdCr
           CASE csW3=4
                pxLs.ceLls(4, 1).vaLue = "Servicio: "+vdCr
           CASE csW3=5
                pxLs.ceLls(4, 1).vaLue = "Vendedor: "+vdCr
           CASE csW3=6
                pxLs.ceLls(4, 1).vaLue = "Cliente: "+vdCr
           CASE csW3=7
                pxLs.ceLls(4, 1).vaLue = "Tipo de Cliente: "+vdCr
      ENDCASE
      STORE viT1+1 TO viT1
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = ftM2tdo
      pxLs.ceLls(viT1, 02).vaLue = ftM2ser
      pxLs.ceLls(viT1, 03).vaLue = ftM2doc
      pxLs.ceLls(viT1, 04).vaLue = DTOC(ftM2fem)
      pxLs.ceLls(viT1, 05).vaLue = DTOC(ftM2fve)
      pxLs.ceLls(viT1, 06).vaLue = ftM2nom
      pxLs.ceLls(viT1, 07).vaLue = ftM2ruc
      pxLs.ceLls(viT1, 08).vaLue = ftM2ntt
      pxLs.ceLls(viT1, 09).vaLue = ftM2nve
      pxLs.ceLls(viT1, 10).vaLue = ftM2nfp
      pxLs.ceLls(viT1, 11).vaLue = ftM2sig
      pxLs.ceLls(viT1, 12).vaLue = ftM2tot
      pxLs.ceLls(viT1, 14).vaLue = ftM2to1
      pxLs.ceLls(viT1, 15).vaLue = ftM2to2
      STORE viT1+1 TO viT1
      SELECT teMporal_2
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 IF meN1<meNn
      STORE viT1+1 TO viT1
      pxLs.ceLls(viT1+0, 10).vaLue = "Total S/."
      pxLs.ceLls(viT1+0, 12).vaLue = tsO1
      pxLs.ceLls(viT1+0, 14).vaLue = ttT1
      pxLs.ceLls(viT1+0, 15).vaLue = ttT2
      pxLs.ceLls(viT1+1, 10).vaLue = "Total US$"
      pxLs.ceLls(viT1+1, 12).vaLue = tuS1
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+0,11)).meRge
      pxLs.raNge(pxLs.ceLls(viT1+1,10), pxLs.ceLls(viT1+1,11)).meRge
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1, ;
                11)).hoRizontalalignment = 4
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.naMe =  ;
                "Times New Roman"
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.siZe = 11
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.boLd = .T.
      WITH pxLs.raNge(pxLs.ceLls(viT1,12),pxLs.ceLls(viT1+1,12))
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
      WITH pxLs.raNge(pxLs.ceLls(viT1,14),pxLs.ceLls(viT1,15))
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
 SELECT teMporal_2
 DO seE_1300b IN PVR1300B WITH "v", "2"
ENDPROC
*
PROCEDURE Lee_1300e
 PARAMETER pcCc, pcDg
 SELECT teMporal_2
 SET FILTER TO
 SET ORDER TO FTM2DOC
 ZAP
 REINDEX
 SELECT teMporal
 DO CASE
      CASE voPc=1
           SET ORDER TO
      CASE voPc=2
           SET ORDER TO FTM1RUC
      CASE voPc=3
           SET ORDER TO FTM1TIP
      CASE voPc=4
           SET ORDER TO FTM1VEN
      CASE voPc=5
           SET ORDER TO FTM1FPA
      CASE voPc=6
           SET ORDER TO FTM1TPR
      CASE voPc>6
           SET ORDER TO FTM1COD
 ENDCASE
 GOTO TOP
 IF voPc>1
      SEEK ALLTRIM(pcCc)+"*"
 ENDIF
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE voPc=2 .AND. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
           CASE voPc=3 .AND. ALLTRIM(ftM1tip)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
           CASE voPc=4 .AND. ALLTRIM(ftM1ven)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
           CASE voPc=5 .AND. ALLTRIM(ftM1fpa)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
           CASE voPc=6 .AND. ALLTRIM(ftM1tpr)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
           CASE voPc>6 .AND. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(pcCc)+"*"
                EXIT
      ENDCASE
      DO CASE
           CASE csW3=1 .AND. ALLTRIM(ftM1tpr)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=2 .AND. ALLTRIM(ftM1gru)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=3 .AND. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=4 .AND. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=5 .AND. ALLTRIM(ftM1ven)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=7 .AND. ALLTRIM(ftM1tip)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=6 .AND. LEN(ALLTRIM(ftM1ruc))>0 .AND.  ;
                ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
           CASE csW3=6 .AND. ALLTRIM(ftM1cli)+"*"<>ALLTRIM(pcDg)+"*"
                SKIP
                LOOP
      ENDCASE
      STORE ftM1tdo TO vtDo
      STORE ftM1ser TO vsEr
      STORE ftM1doc TO vdOc
      IF voPc<6 .AND. (LEN(ALLTRIM(pcDg))=0 .OR. vsW3>4)
           SELECT teMporal_2
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                SELECT teMporal
                SKIP
                LOOP
           ENDIF
      ENDIF
      SELECT teMporal
      STORE ftM1fem TO vfEm
      STORE ftM1fve TO vfVe
      STORE ftM1ntt TO vnTt
      STORE ftM1nom TO vnOm
      STORE ftM1ruc TO vrUc
      STORE ftM1nfp TO vnFp
      STORE ftM1nve TO vnVe
      STORE ftM1mon TO vmOn
      DO CASE
           CASE (voPc>=2 .AND. voPc<=5) .AND. LEN(ALLTRIM(pcDg))=0
                STORE ftM1tot TO vtOt
           CASE (voPc>=2 .AND. voPc<=5) .AND. vsW3>4
                STORE ftM1tot TO vtOt
           OTHERWISE
                STORE ftM1to2 TO vtOt
      ENDCASE
      SELECT caMbio
      SEEK vfEm
      IF EOF()
           STORE 1 TO vtCa
      ELSE
           STORE f9111tc3 TO vtCa
      ENDIF
      SELECT teMporal_2
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE ftM2tdo WITH vtDo
           REPLACE ftM2ser WITH vsEr
           REPLACE ftM2doc WITH vdOc
           REPLACE ftM2fem WITH vfEm
           REPLACE ftM2fve WITH vfVe
           REPLACE ftM2ntt WITH vnTt
           REPLACE ftM2nom WITH vnOm
           REPLACE ftM2ruc WITH vrUc
           REPLACE ftM2nfp WITH vnFp
           REPLACE ftM2nve WITH vnVe
           REPLACE ftM2mon WITH vmOn
           REPLACE ftM2tca WITH vtCa
           REPLACE ftM2tot WITH 0
           REPLACE ftM2to1 WITH 0
           REPLACE ftM2to2 WITH 0
           DO CASE
                CASE vmOn=1
                     REPLACE ftM2sig WITH "S/."
                CASE vmOn=2
                     REPLACE ftM2sig WITH "US$"
           ENDCASE
      ENDIF
      REPLACE ftM2tot WITH ftM2tot+vtOt
      DO CASE
           CASE vmOn=1
                REPLACE ftM2to1 WITH ftM2to1+vtOt
                REPLACE ftM2to2 WITH ftM2to2+ROUND(vtOt/vtCa, 2)
                STORE tsO1+vtOt TO tsO1
                STORE ttT1+vtOt TO ttT1
                STORE ttT2+ROUND(vtOt/vtCa, 2) TO ttT2
           CASE vmOn=2
                REPLACE ftM2to2 WITH ftM2to2+vtOt
                REPLACE ftM2to1 WITH ftM2to1+ROUND(vtOt*vtCa, 2)
                STORE tuS1+vtOt TO tuS1
                STORE ttT2+vtOt TO ttT2
                STORE ttT1+ROUND(vtOt*vtCa, 2) TO ttT1
      ENDCASE
      SELECT teMporal
      SKIP
 ENDDO
 IF voPc=2
      SELECT teMporal
      SET ORDER TO FTM1CLI
      GOTO TOP
      SEEK ALLTRIM(pcCc)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1cli)+"*"=ALLTRIM(pcCc)+"*"
           DO CASE
                CASE LEN(ALLTRIM(ftM1ruc))<>0 .AND. AT(" ", ftM1ruc)=0
                     SKIP
                     LOOP
                CASE csW3=1 .AND. ALLTRIM(ftM1tpr)+"*"<>ALLTRIM(pcDg)+"*"
                     SKIP
                     LOOP
                CASE csW3=2 .AND. ALLTRIM(ftM1gru)+"*"<>ALLTRIM(pcDg)+"*"
                     SKIP
                     LOOP
                CASE (csW3=3 .OR. csW3=4) .AND. ALLTRIM(ftM1cod)+"*"<> ;
                     ALLTRIM(pcDg)+"*"
                     SKIP
                     LOOP
                CASE csW3=5 .AND. ALLTRIM(ftM1ven)+"*"<>ALLTRIM(pcDg)+"*"
                     SKIP
                     LOOP
                CASE csW3=7 .AND. ALLTRIM(ftM1tip)+"*"<>ALLTRIM(pcDg)+"*"
                     SKIP
                     LOOP
           ENDCASE
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           SELECT teMporal_2
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF() .AND. (LEN(ALLTRIM(pcDg))=0 .OR. vsW3>4)
                SELECT teMporal
                SKIP
                LOOP
           ENDIF
           SELECT teMporal
           STORE ftM1fem TO vfEm
           STORE ftM1fve TO vfVe
           STORE ftM1ntt TO vnTt
           STORE ftM1nom TO vnOm
           STORE ftM1ruc TO vrUc
           STORE ftM1nfp TO vnFp
           STORE ftM1nve TO vnVe
           STORE ftM1mon TO vmOn
           DO CASE
                CASE LEN(ALLTRIM(pcDg))=0 .OR. vsW3>4
                     STORE ftM1tot TO vtOt
                OTHERWISE
                     STORE ftM1to2 TO vtOt
           ENDCASE
           SELECT caMbio
           SEEK vfEm
           IF EOF()
                STORE 1 TO vtCa
           ELSE
                STORE f9111tc3 TO vtCa
           ENDIF
           SELECT teMporal_2
           SEEK vtDo+vsEr+vdOc
           IF EOF()
                APPEND BLANK
                REPLACE ftM2tdo WITH vtDo
                REPLACE ftM2ser WITH vsEr
                REPLACE ftM2doc WITH vdOc
                REPLACE ftM2fem WITH vfEm
                REPLACE ftM2fve WITH vfVe
                REPLACE ftM2ntt WITH vnTt
                REPLACE ftM2nom WITH vnOm
                REPLACE ftM2ruc WITH vrUc
                REPLACE ftM2nfp WITH vnFp
                REPLACE ftM2nve WITH vnVe
                REPLACE ftM2mon WITH vmOn
                REPLACE ftM2tca WITH vtCa
                REPLACE ftM2tot WITH 0
                REPLACE ftM2to1 WITH 0
                REPLACE ftM2to2 WITH 0
                DO CASE
                     CASE vmOn=1
                          REPLACE ftM2sig WITH "S/."
                     CASE vmOn=2
                          REPLACE ftM2sig WITH "US$"
                ENDCASE
           ENDIF
           REPLACE ftM2tot WITH ftM2tot+vtOt
           DO CASE
                CASE vmOn=1
                     REPLACE ftM2to1 WITH ftM2to1+vtOt
                     REPLACE ftM2to2 WITH ftM2to2+ROUND(vtOt/vtCa, 2)
                     STORE tsO1+vtOt TO tsO1
                     STORE ttT1+vtOt TO ttT1
                     STORE ttT2+ROUND(vtOt/vtCa, 2) TO ttT2
                CASE vmOn=2
                     REPLACE ftM2to2 WITH ftM2to2+vtOt
                     REPLACE ftM2to1 WITH ftM2to1+ROUND(vtOt*vtCa, 2)
                     STORE tuS1+vtOt TO tuS1
                     STORE ttT2+vtOt TO ttT2
                     STORE ttT1+ROUND(vtOt*vtCa, 2) TO ttT1
           ENDCASE
           SELECT teMporal
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Clp_1300e
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
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPf=1 .AND. mcCc>= ;
           mcO0+11.9 .AND. mcCc<=mcO0+14.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPf=0)
           IF voPf=1
                STORE 0 TO voPf
           ELSE
                STORE 1 TO voPf
           ENDIF
           DO opC_1300b IN PVR1300B WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPb=1 .AND. mcCc>= ;
           mcO0+29.9 .AND. mcCc<=mcO0+32.50 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPb=0)
           IF voPb=1
                STORE 0 TO voPb
           ELSE
                STORE 1 TO voPb
           ENDIF
           DO opC_1300b IN PVR1300B WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPn=1 .AND. mcCc>= ;
           mcO0+45.9 .AND. mcCc<=mcO0+48.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPn=0)
           IF voPn=1
                STORE 0 TO voPn
           ELSE
                STORE 1 TO voPn
           ENDIF
           DO opC_1300b IN PVR1300B WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPd=1 .AND. mcCc>= ;
           mcO0+64.9 .AND. mcCc<=mcO0+67.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPd=0)
           IF voPd=1
                STORE 0 TO voPd
           ELSE
                STORE 1 TO voPd
           ENDIF
           DO opC_1300b IN PVR1300B WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1300b IN PVR1300B WITH "N", "2"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1300b IN PVR1300B WITH "i", "2"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1300b IN PVR1300B WITH "F", "v"
           DO diS_1300b IN PVR1300B WITH "R", "2"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+1, 01 SAY  ;
   "Boletas, Notas de Pedido, Notas de Crédito y Notas de Débito, sin incluir"
 @ pfIl+2, 01 SAY "las anuladas, en el rango de fechas seleccionadas."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+7, 20 SAY ":" STYLE "BT"
 @ pfIl+8, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 02 SAY "ESC" STYLE "BT"
 @ pfIl+7, 02 SAY "F10" STYLE "BT"
 @ pfIl+8, 02 SAY "F1" STYLE "BT"
 @ pfIl+6, 22 SAY "Regresar a Cabecera"
 @ pfIl+7, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 22 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF mrEs="3"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY "Cambiar de Totales"
      STORE pfIl+1 TO pfIl
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
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F5" STYLE "BT"
 @ pfIl+01, 02 SAY "F8" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+04, 02 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+06, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+08, 02 SAY "HOME" STYLE "BT"
 @ pfIl+09, 02 SAY "END" STYLE "BT"
 @ pfIl+10, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+11, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+00, 22 SAY "Cambiar Orden ascendente o descendente en totales"
 @ pfIl+01, 22 SAY "Pasar Datos a Excel"
 @ pfIl+02, 22 SAY "Línea inferior"
 @ pfIl+03, 22 SAY "Línea superior"
 @ pfIl+04, 22 SAY "Cambiar de Orden"
 @ pfIl+05, 22 SAY "Cambiar de Orden"
 @ pfIl+06, 22 SAY "Página siguiente"
 @ pfIl+07, 22 SAY "Página anterior"
 @ pfIl+08, 22 SAY "Primera línea"
 @ pfIl+09, 22 SAY "Última línea"
 @ pfIl+10, 22 SAY "Ver Documento de Venta"
 @ pfIl+11, 22 SAY "Imprimir Listado de Ventas"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
