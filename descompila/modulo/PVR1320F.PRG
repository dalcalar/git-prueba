 SELECT teMporal_6
 GOTO TOP
 DO muE_1320f WITH "F", "i"
 DO p00_1320f
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1320f
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1320f WITH "i", "v"
 DO seE_1320f WITH "v"
 DO diS_1320f WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1320f
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1320f
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1320f
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1320f
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1320f
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM6tdo+ftM6ser+ftM6doc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1320f
                               OTHERWISE
                                    DO seE_1320f WITH "v"
                                    DO diS_1320f WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1320f WITH "i", "v"
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM6tdo+ftM6ser+ftM6doc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1320f
                               OTHERWISE
                                    DO seE_1320f WITH "v"
                                    DO diS_1320f WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1320f WITH "u", "v"
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320f WITH ffIl, ffIl+1
                               DO li1_1320f WITH ffIl, ffIl+1
                               DO muE_1320f WITH "F", "u"
                               DO muE_1320f WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1320f WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1320f WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320f WITH ifIl, ifIl+1
                               DO li1_1320f WITH ifIl, ifIl+1
                               DO muE_1320f WITH "F", "v"
                               DO muE_1320f WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1320f WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1320f WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1320f WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1320f
                          STORE ifIl TO vfIl
                          DO muE_1320f WITH "i", "v"
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1320f WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1320f
                          STORE ifIl TO vfIl
                          DO muE_1320f WITH "i", "v"
                          DO seE_1320f WITH "v"
                          DO diS_1320f WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1320f WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1320f
 STORE ifIl TO vfIl, ufIl
 DO muE_1320f WITH "F", "i"
 DO muE_1320f WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1320f WITH "N"
      DO muE_1320f WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_1320f WITH ufIl+1, ffIl+1
      DO li1_1320f WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1320f
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM6tdo="NC"
           DO coL_fonro
      CASE ptIp="R" .AND. ftM6tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. ftM6tdo="ND"
           DO coL_fonaz
      CASE ptIp="R" .AND. ftM6tdo="ND"
           DO coLblz
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+00.0 Say FTM6TDO     Font "&mLetAri",9 Style "NQ" Size 1,3.3 Pict "@S02"
 @vFIL,mCO0+04.0 Say "0"+FTM6SER Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "@S04"
 @vFIL,mCO0+10.6 Say FTM6DOC     Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "@S07"
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+21.0 Say FTM6FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+34.1 Say FTM6FVE Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+47.3 Say FTM6RUC Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+63.9 Say FTM6NOM Font "&mLetAri",9 Style "NQ" Size 1,035.0 Pict "@S38"
      OTHERWISE
           @vFIL,mCO0+63.9 Say FTM6NOM Font "&mLetAri",9 Style "NQ" Size 1,116.1 Pict "@S119"
 ENDCASE
 @vFIL,vCL2-00.2 Say FTM6TCA Font "&mLetAri",9 Style "NQ" Size 1,07.5 Pict "999.999"
 @vFIL,vCL2+08.2 Say FTM6NET Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
 @vFIL,vCL2+28.3 Say FTM6IGV Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
 @vFIL,vCL2+48.5 Say FTM6TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
 @vFIL,vCL2+68.7 Say FTM6DTR Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
ENDPROC
*
PROCEDURE Lin_1320f
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+20.6 TO pfIn, mcO0+20.6
 @ piNi, mcO0+33.8 TO pfIn, mcO0+33.8
 @ piNi, mcO0+46.9 TO pfIn, mcO0+46.9
 @ piNi, mcO0+63.5 TO pfIn, mcO0+63.5
 @ piNi, vcL2-00.6 TO pfIn, vcL2-00.6
 @ piNi, vcL2+07.7 TO pfIn, vcL2+07.7
 @ piNi, vcL2+27.9 TO pfIn, vcL2+27.9
 @ piNi, vcL2+48.1 TO pfIn, vcL2+48.1
 @ piNi, vcL2+68.3 TO pfIn, vcL2+68.3
ENDPROC
*
PROCEDURE Li1_1320f
 PARAMETER piNi, pfIn
 @ piNi, mcO0+03.6 TO pfIn, mcO0+03.6
 @ piNi, mcO0+10.2 TO pfIn, mcO0+10.2
ENDPROC
*
PROCEDURE P00_1320f
 RESTORE SCREEN FROM vpAn_99
 DO CASE
      CASE mrEs="3"
           STORE mcO0+112 TO vcL2
      OTHERWISE
           STORE mcO0+181.2 TO vcL2
 ENDCASE
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 IF mrEs<"5"
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.5 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.5 PATTERN 1
 ELSE
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo+0.4
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.7 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.7 PATTERN 1
 ENDIF
 @fFIL+3.8,mCO0+mUCO-93 Say "Facturas afectas a Detracciones del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_1320f WITH ifIl-1.8, ffIl+1.6
 DO li1_1320f WITH ifIl-0.4, ffIl+1.6
 DO coLsc4
 @iFIL-1.6,mCO0+02.1 Say "Documento"           Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,mCO0+23.4 Say "Fecha"               Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,mCO0+36.0 Say "Vencim"              Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,mCO0+51.8 Say "RUC"                 Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,vCL2+01.1 Say "T/C"                 Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,mCO0+64.2 Say "Nombre/Razón Social" Font "&mLetRom",11 Style "BQ"
 @iFIL-1.6,vCL2+10.0 Say "Base Imp.S/."        Font "&mLetAri",10 Style "BQ"
 @iFIL-1.6,vCL2+34.4 Say "IGV S/."             Font "&mLetAri",10 Style "BQ"
 @iFIL-1.6,vCL2+52.7 Say "Total S/."           Font "&mLetAri",10 Style "BQ"
 @iFIL-1.6,vCL2+71.7 Say "Detracción"          Font "&mLetAri",10 Style "BQ"
 @fFIL+1.9,vCL2-07.2 Say "TOTALES"             Font "&mLetRom",11 Style "BQ"
 @fFIL+2.0,vCL2+08.2 Say tBAS                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+28.3 Say tIGV                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+48.5 Say tTOT                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+48.5 Say tDTR                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @ ffIl+1.6, vcL2+07.7 TO ffIl+3.4, vcL2+07.7
 @ ffIl+0.0, vcL2+27.9 TO ffIl+3.4, vcL2+27.9
 @ ffIl+0.0, vcL2+48.1 TO ffIl+3.4, vcL2+48.1
 @ ffIl+0.0, vcL2+68.3 TO ffIl+3.4, vcL2+68.3
ENDPROC
*
PROCEDURE See_1320f
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vtDo+vsEr+vdOc
      CASE psEe="i"
           SEEK itDo+isEr+idOc
      CASE psEe="u"
           SEEK utDo+usEr+udOc
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1320f
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM6tdo TO vtDo
           STORE ftM6ser TO vsEr
           STORE ftM6doc TO vdOc
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM6tdo TO utDo
           STORE ftM6ser TO usEr
           STORE ftM6doc TO udOc
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM6tdo TO itDo
           STORE ftM6ser TO isEr
           STORE ftM6doc TO idOc
 ENDCASE
ENDPROC
*
PROCEDURE Res_1320f
 DO p00_1320a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1320f
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_6
 DO seE_1320f WITH "i"
 DO paN_1320f
 DO seE_1320f WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+vsEr+vdOc=ftM6tdo+ftM6ser+ftM6doc
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1320f WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1320f WITH "v"
 DO diS_1320f WITH "R"
ENDPROC
*
PROCEDURE Xls_1320f
 PRIVATE pmEs
 DO CASE
      CASE SUBSTR(DTOC(dfEm), 4, 2)="01"
           STORE "Enero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="02"
           STORE "Febrero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="03"
           STORE "Marzo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="04"
           STORE "Abril" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="05"
           STORE "Mayo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="06"
           STORE "Junio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="07"
           STORE "Julio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="08"
           STORE "Agosto" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="09"
           STORE "Setiembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="10"
           STORE "Octubre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="11"
           STORE "Noviembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="12"
           STORE "Diciembre" TO pmEs
 ENDCASE
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Registro de Detracciones", "Ventas", 11
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO xl2_0000a WITH 11
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,22)).inSert
 pxLs.ceLls(3, 01).vaLue = "Período:"
 pxLs.ceLls(3, 04).vaLue = pmEs+" del "+SUBSTR(DTOC(dfEm), 7, 4)
 pxLs.ceLls(4, 01).vaLue = "RUC:"
 pxLs.ceLls(4, 04).vaLue = mrUc
 pxLs.ceLls(5, 01).vaLue = "Apellidos y Nombres o Razón Social:"
 pxLs.ceLls(5, 04).vaLue = mrAz
 pxLs.raNge(pxLs.ceLls(3,4), pxLs.ceLls(3,8)).meRge
 pxLs.raNge(pxLs.ceLls(4,4), pxLs.ceLls(4,8)).meRge
 pxLs.raNge(pxLs.ceLls(5,4), pxLs.ceLls(5,8)).meRge
 pxLs.ceLls(7, 01).vaLue = "Comprobante de Pago"
 pxLs.ceLls(8, 01).vaLue = "Tipo"
 pxLs.ceLls(8, 02).vaLue = "Serie"
 pxLs.ceLls(8, 03).vaLue = "Número"
 pxLs.ceLls(7, 04).vaLue = "Fecha de"
 pxLs.ceLls(8, 04).vaLue = "Emisión"
 pxLs.ceLls(7, 05).vaLue = "Vencimiento"
 pxLs.ceLls(8, 05).vaLue = "o Cancelación"
 pxLs.ceLls(8, 06).vaLue = "RUC"
 pxLs.ceLls(7, 07).vaLue = "Apellidos/Nombres o"
 pxLs.ceLls(8, 07).vaLue = "Razón Social"
 pxLs.ceLls(7, 08).vaLue = "Tipo de"
 pxLs.ceLls(8, 08).vaLue = "Cambio"
 pxLs.ceLls(8, 09).vaLue = "Neto"
 pxLs.ceLls(8, 10).vaLue = "IGV"
 pxLs.ceLls(7, 11).vaLue = "Importe"
 pxLs.ceLls(8, 11).vaLue = "Total"
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(07)).nuMberformat = "@"
 pxLs.coLumns(08).nuMberformat = "##0.000"
 pxLs.raNge(pxLs.coLumns(09), pxLs.coLumns(11)).nuMberformat = "###,###,##0.00"
 pxLs.coLumns(01).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(07)).hoRizontalalignment = 3
 pxLs.coLumns(01).coLumnwidth = 4.43
 pxLs.coLumns(02).coLumnwidth = 5.57
 pxLs.coLumns(03).coLumnwidth = 9.29
 pxLs.coLumns(04).coLumnwidth = 7.71
 pxLs.coLumns(05).coLumnwidth = 7.71
 pxLs.coLumns(06).coLumnwidth = 14.71
 pxLs.coLumns(07).coLumnwidth = 57
 pxLs.coLumns(08).coLumnwidth = 4.71
 pxLs.coLumns(09).coLumnwidth = 7.14
 pxLs.coLumns(10).coLumnwidth = 7.14
 pxLs.coLumns(11).coLumnwidth = 7.14
 SELECT teMporal_6
 GOTO TOP
 STORE 9 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = ftM6tdo
      pxLs.ceLls(viT1, 02).vaLue = ftM6ser
      pxLs.ceLls(viT1, 03).vaLue = ftM6doc
      pxLs.ceLls(viT1, 04).vaLue = ftM6fem
      pxLs.ceLls(viT1, 05).vaLue = ftM6fve
      pxLs.ceLls(viT1, 06).vaLue = ftM6ruc
      pxLs.ceLls(viT1, 07).vaLue = ftM6nom
      pxLs.ceLls(viT1, 08).vaLue = ftM6tca
      pxLs.ceLls(viT1, 09).vaLue = ftM6net
      pxLs.ceLls(viT1, 10).vaLue = ftM6igv
      pxLs.ceLls(viT1, 11).vaLue = ftM6tot
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal_6
      SKIP
 ENDDO
 IF meN1<meNn
      WITH pxLs.raNge(pxLs.ceLls(viT1,09),pxLs.ceLls(viT1,11))
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
      pxLs.ceLls(viT1, 09).vaLue = tbAs
      pxLs.ceLls(viT1, 10).vaLue = tiGv
      pxLs.ceLls(viT1, 11).vaLue = ttOt
 ENDIF
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT teMporal_6
 DO seE_1320f WITH "v"
ENDPROC
*
PROCEDURE Clp_1320f
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1320f WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1320f WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1320f WITH "F", "v"
           DO diS_1320f WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1320f
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Notas de Débito, incluyendo las anuladas, en"
 @ pfIl+02, 01 SAY "el rango de fechas seleccionadas."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 02 SAY "ESC" STYLE "BT"
 @ pfIl+07, 02 SAY "F10" STYLE "BT"
 @ pfIl+08, 02 SAY "F1" STYLE "BT"
 @ pfIl+09, 02 SAY "F8" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+06, 22 SAY "Regresar a Cabecera"
 @ pfIl+07, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 22 SAY "Ayuda del Programa"
 @ pfIl+09, 22 SAY "Pasar Datos a Excel"
 @ pfIl+10, 22 SAY "Línea inferior"
 @ pfIl+11, 22 SAY "Línea superior"
 STORE pfIl+12 TO pfIl
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "HOME" STYLE "BT"
 @ pfIl+3, 02 SAY "END" STYLE "BT"
 @ pfIl+0, 22 SAY "Página siguiente"
 @ pfIl+1, 22 SAY "Página anterior"
 @ pfIl+2, 22 SAY "Primera línea"
 @ pfIl+3, 22 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
