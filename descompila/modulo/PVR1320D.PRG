 SELECT teMporal
 GOTO TOP
 COUNT FOR f9702tcp="01" .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*" TO tnF1
 COUNT FOR f9702tcp="03" .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*" TO tnB1
 COUNT FOR f9702tcp="07" .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*" TO tnC1
 COUNT FOR f9702tcp="08" .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*" TO tnD1
 GOTO TOP
 SEEK ALLTRIM(vrUc)+"*"
 DO muE_1320b IN PVR1320B WITH "F", "i"
 DO p00_1320d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1320d
 GOTO TOP
 SEEK ALLTRIM(vrUc)+"*"
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1320b IN PVR1320B WITH "i", "v"
 DO seE_1320d WITH "v"
 DO diS_1320b IN PVR1320B WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1320d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1320d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1320d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1320d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1320d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_1320d
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_1320d WITH "v"
                STORE 999 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vrUc)+"*"
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          f9702tcp+ALLTRIM(f9702scp)+"*"+ ;
                          ALLTRIM(f9702ncp)+"*" .AND. vtDo+ALLTRIM(vsEr)+ ;
                          "*"+ALLTRIM(vdOc)+"*"=itDo+ALLTRIM(isEr)+"*"+ ;
                          ALLTRIM(idOc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=itDo+ALLTRIM(isEr)+"*"+ ;
                                    ALLTRIM(idOc)+"*"
                                    DO paN_1320d
                               OTHERWISE
                                    DO seE_1320d WITH "v"
                                    DO diS_1320b IN PVR1320B WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1320b IN PVR1320B WITH "i", "v"
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vrUc)+"*ZZZZZZ"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          f9702tcp+ALLTRIM(f9702scp)+"*"+ ;
                          ALLTRIM(f9702ncp)+"*" .AND. vtDo+ALLTRIM(vsEr)+ ;
                          "*"+ALLTRIM(vdOc)+"*"=utDo+ALLTRIM(usEr)+"*"+ ;
                          ALLTRIM(udOc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=utDo+ALLTRIM(usEr)+"*"+ ;
                                    ALLTRIM(udOc)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1320d
                               OTHERWISE
                                    DO seE_1320d WITH "v"
                                    DO diS_1320b IN PVR1320B WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1320b IN PVR1320B WITH "u", "v"
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f9702ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "N"
                          SKIP
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320b IN PVR1320B WITH ffIl, ffIl+1
                               DO li1_1320b IN PVR1320B WITH ffIl, ffIl+1
                               DO muE_1320b IN PVR1320B WITH "F", "u"
                               DO muE_1320b IN PVR1320B WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1320b IN PVR1320B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1320b IN PVR1320B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f9702ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "N"
                          SKIP -1
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320b IN PVR1320B WITH ifIl, ifIl+1
                               DO li1_1320b IN PVR1320B WITH ifIl, ifIl+1
                               DO muE_1320b IN PVR1320B WITH "F", "v"
                               DO muE_1320b IN PVR1320B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1320b IN PVR1320B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1320b IN PVR1320B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1320d WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f9702ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1320d
                          STORE ifIl TO vfIl
                          DO muE_1320b IN PVR1320B WITH "i", "v"
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1320d WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f9702ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. ALLTRIM(f9702ruc)+"*"<> ;
                             ALLTRIM(vrUc)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vrUc)+"*"
                          ENDIF
                          DO paN_1320d
                          STORE ifIl TO vfIl
                          DO muE_1320b IN PVR1320B WITH "i", "v"
                          DO seE_1320d WITH "v"
                          DO diS_1320b IN PVR1320B WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1320d WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1320d
 STORE ifIl TO vfIl, ufIl
 DO muE_1320b IN PVR1320B WITH "F", "i"
 DO muE_1320b IN PVR1320B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*"  ;
    .AND. vfIl<ffIl+1
      DO diS_1320b IN PVR1320B WITH "N"
      DO muE_1320b IN PVR1320B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      IF mrEs<"5"
           @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      ELSE
           @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo-0.6
      ENDIF
      DO liN_1320b IN PVR1320B WITH ufIl+1, ffIl+1
      DO li1_1320b IN PVR1320B WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE P00_1320d
 RESTORE SCREEN FROM vpAn_99
 DO CASE
      CASE mrEs="3"
           STORE mcO0+132 TO vcL2
      OTHERWISE
           STORE mcO0+200 TO vcL2
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
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo+0.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.5 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.5 PATTERN 1
 ELSE
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo-0.6
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo-0.2 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo-0.2 PATTERN 1
 ENDIF
 @fFIL+3.8,mCO0+mUCO-83 Say "Detalle de RUC:"+AllTrim(vRUC)+" del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_1320b IN PVR1320B WITH ifIl-1.8, ffIl+1.6
 DO li1_1320b IN PVR1320B WITH ifIl-0.4, ffIl+1.6
 DO coLsc4
 @iFIL-1.7,mCO0+02.1 Say "Documento"           Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+23.4 Say "Fecha"               Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+36.0 Say "Vencim"              Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+49.8 Say "RUC/D.I."            Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+64.2 Say "Nombre/Razón Social" Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,vCL1+00.6 Say "Doc.Referenc"        Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL1+21.4 Say "Fecha"               Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+01.6 Say "T/C"                 Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,vCL2+10.0 Say "Base Imp.S/."        Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+34.4 Say "IGV S/."             Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+52.7 Say "Total S/."           Font "&mLetAri",10 Style "BQ"
 @fFIL+1.9,vCL2-07.2 Say "TOTALES"             Font "&mLetRom",11 Style "BQ"
 @fFIL+2.0,vCL2+08.2 Say cBAS                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+28.3 Say cIGV                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+48.5 Say cTOT                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,mCO0+02.0 Say "FA:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+07.0 Say tNF1                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+20.0 Say "BO:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+25.0 Say tNB1                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+38.0 Say "NC:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+43.0 Say tNC1                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+56.0 Say "ND:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+61.0 Say tND1                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @ ffIl+1.6, vcL2+07.7 TO ffIl+3.4, vcL2+07.7
 @ ffIl+0.0, vcL2+27.9 TO ffIl+3.4, vcL2+27.9
 @ ffIl+0.0, vcL2+48.1 TO ffIl+3.4, vcL2+48.1
ENDPROC
*
PROCEDURE See_1320d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK ALLTRIM(vrUc)+"*"+vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"
      CASE psEe="i"
           SEEK ALLTRIM(vrUc)+"*"+itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
      CASE psEe="u"
           SEEK ALLTRIM(vrUc)+"*"+utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Res_1320d
 DO reS_1320c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_1320d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 DO seE_1320d WITH "i"
 DO paN_1320d
 DO seE_1320d WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"=f9702tcp+ ;
         ALLTRIM(f9702scp)+"*"+ALLTRIM(f9702ncp)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1320b IN PVR1320B WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1320d WITH "v"
 DO diS_1320b IN PVR1320B WITH "R"
ENDPROC
*
PROCEDURE Imp_1320d
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO reP_1320d
 DO fpR_0000a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_1320d
ENDPROC
*
PROCEDURE Xls_1320d
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "DAOT. Detalle de RUC:"+ALLTRIM(vrUc), "DAOT Ventas", 27
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO xl2_0000a WITH 27
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 02).vaLue = "#correlativo o"
 pxLs.ceLls(3, 03).vaLue = "Fecha de"
 pxLs.ceLls(3, 04).vaLue = "Vencimiento"
 pxLs.ceLls(3, 05).vaLue = "Comprobante de Pago"
 pxLs.ceLls(3, 08).vaLue = "Número"
 pxLs.ceLls(3, 09).vaLue = "Documento de Identidad"
 pxLs.ceLls(3, 11).vaLue = "Apellidos/Nombres o"
 pxLs.ceLls(3, 12).vaLue = "Valor Facturado"
 pxLs.ceLls(3, 13).vaLue = "Base Imponible"
 pxLs.ceLls(3, 14).vaLue = "Importe Total"
 pxLs.ceLls(3, 15).vaLue = "Importe Total"
 pxLs.ceLls(3, 17).vaLue = "IGV o"
 pxLs.ceLls(3, 18).vaLue = "Base Imponible"
 pxLs.ceLls(3, 20).vaLue = "Otros Tributos"
 pxLs.ceLls(3, 21).vaLue = "Importe"
 pxLs.ceLls(3, 22).vaLue = "Tipo de"
 pxLs.ceLls(3, 23).vaLue = "Documento que modifica"
 pxLs.ceLls(4, 01).vaLue = "Periodo"
 pxLs.ceLls(4, 02).vaLue = "Registro Unico"
 pxLs.ceLls(4, 03).vaLue = "Emisión"
 pxLs.ceLls(4, 04).vaLue = "o Cancelación"
 pxLs.ceLls(4, 05).vaLue = "Tipo"
 pxLs.ceLls(4, 06).vaLue = "Serie"
 pxLs.ceLls(4, 07).vaLue = "Numero"
 pxLs.ceLls(4, 08).vaLue = "Final"
 pxLs.ceLls(4, 09).vaLue = "Tipo"
 pxLs.ceLls(4, 10).vaLue = "Número"
 pxLs.ceLls(4, 11).vaLue = "Razón Social"
 pxLs.ceLls(4, 12).vaLue = "Exportación"
 pxLs.ceLls(4, 13).vaLue = "Operación Grabada"
 pxLs.ceLls(4, 14).vaLue = "Operación Exonerada"
 pxLs.ceLls(4, 15).vaLue = "Operación Inafecta"
 pxLs.ceLls(4, 16).vaLue = "ISC"
 pxLs.ceLls(4, 17).vaLue = "Impuesto Municipal"
 pxLs.ceLls(4, 18).vaLue = "Operac.Grabada IVAP"
 pxLs.ceLls(4, 19).vaLue = "IVAP"
 pxLs.ceLls(4, 20).vaLue = "(no pert.a Base Impon)"
 pxLs.ceLls(4, 21).vaLue = "Total"
 pxLs.ceLls(4, 22).vaLue = "Cambio"
 pxLs.ceLls(4, 23).vaLue = "Fecha"
 pxLs.ceLls(4, 24).vaLue = "Tipo"
 pxLs.ceLls(4, 25).vaLue = "Serie"
 pxLs.ceLls(4, 26).vaLue = "Número"
 pxLs.ceLls(4, 27).vaLue = "Estado"
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,01)).meRge
 pxLs.raNge(pxLs.ceLls(3,16), pxLs.ceLls(4,16)).meRge
 pxLs.raNge(pxLs.ceLls(3,19), pxLs.ceLls(4,19)).meRge
 pxLs.raNge(pxLs.ceLls(3,27), pxLs.ceLls(4,27)).meRge
 pxLs.raNge(pxLs.ceLls(3,05), pxLs.ceLls(3,07)).meRge
 pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,10)).meRge
 pxLs.raNge(pxLs.ceLls(3,23), pxLs.ceLls(3,26)).meRge
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(08)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(10), pxLs.coLumns(11)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(23), pxLs.coLumns(27)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(12), pxLs.coLumns(21)).nuMberformat = "###,###,##0.00"
 pxLs.coLumns(22).nuMberformat = "##0.000"
 pxLs.coLumns(02).coLumnwidth = 14.29
 pxLs.coLumns(03).coLumnwidth = 9.71
 pxLs.coLumns(04).coLumnwidth = 13.14
 pxLs.coLumns(05).coLumnwidth = 4.43
 pxLs.coLumns(06).coLumnwidth = 5.57
 pxLs.coLumns(07).coLumnwidth = 9.29
 pxLs.coLumns(08).coLumnwidth = 7.71
 pxLs.coLumns(09).coLumnwidth = 10.71
 pxLs.coLumns(10).coLumnwidth = 12.14
 pxLs.coLumns(11).coLumnwidth = 57
 pxLs.coLumns(23).coLumnwidth = 10
 pxLs.coLumns(24).coLumnwidth = 4
 pxLs.coLumns(25).coLumnwidth = 4.71
 pxLs.coLumns(26).coLumnwidth = 7.14
 pxLs.coLumns(27).coLumnwidth = 6.71
 pxLs.raNge(pxLs.coLumns(12), pxLs.coLumns(21)).coLumnwidth = 20.86
 pxLs.coLumns(01).hoRizontalalignment = 3
 pxLs.coLumns(02).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(03), pxLs.coLumns(10)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.coLumns(23), pxLs.coLumns(27)).hoRizontalalignment = 3
 SELECT teMporal
 GOTO TOP
 SEEK ALLTRIM(vrUc)+"*"
 STORE 5 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f9702ruc)+"*"=ALLTRIM(vrUc)+"*"
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = ALLTRIM(f9702per)
      pxLs.ceLls(viT1, 02).vaLue = ALLTRIM(f9702reg)
      pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(f9702fem)
      pxLs.ceLls(viT1, 04).vaLue = ALLTRIM(f9702fve)
      pxLs.ceLls(viT1, 05).vaLue = ALLTRIM(f9702tcp)
      pxLs.ceLls(viT1, 06).vaLue = ALLTRIM(f9702scp)
      pxLs.ceLls(viT1, 07).vaLue = ALLTRIM(f9702ncp)
      pxLs.ceLls(viT1, 08).vaLue = ALLTRIM(f9702ncu)
      pxLs.ceLls(viT1, 09).vaLue = ALLTRIM(f9702tdi)
      pxLs.ceLls(viT1, 10).vaLue = ALLTRIM(f9702ruc)
      pxLs.ceLls(viT1, 11).vaLue = f9702nom
      pxLs.ceLls(viT1, 12).vaLue = f9702bae
      pxLs.ceLls(viT1, 13).vaLue = f9702bas
      pxLs.ceLls(viT1, 14).vaLue = f9702exo
      pxLs.ceLls(viT1, 15).vaLue = f9702ina
      pxLs.ceLls(viT1, 16).vaLue = f9702isc
      pxLs.ceLls(viT1, 17).vaLue = f9702igv
      pxLs.ceLls(viT1, 18).vaLue = f9702ba2
      pxLs.ceLls(viT1, 19).vaLue = f9702iva
      pxLs.ceLls(viT1, 20).vaLue = f9702otr
      pxLs.ceLls(viT1, 21).vaLue = f9702tot
      pxLs.ceLls(viT1, 22).vaLue = f9702tca
      pxLs.ceLls(viT1, 23).vaLue = ALLTRIM(f9702fe2)
      pxLs.ceLls(viT1, 24).vaLue = ALLTRIM(f9702tc2)
      pxLs.ceLls(viT1, 25).vaLue = ALLTRIM(f9702sr2)
      pxLs.ceLls(viT1, 26).vaLue = ALLTRIM(f9702do2)
      pxLs.ceLls(viT1, 27).vaLue = ALLTRIM(f9702est)
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal
      SKIP
 ENDDO
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT teMporal
 DO seE_1320d WITH "v"
ENDPROC
*
PROCEDURE Clp_1320d
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
           DO diS_1320b IN PVR1320B WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1320d WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1320b IN PVR1320B WITH "F", "v"
           DO diS_1320b IN PVR1320B WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1320d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Notas de Débito, sin incluir las anuladas, en"
 @ pfIl+02, 01 SAY  ;
   "el rango de fechas seleccionadas y pertenecientes al RUC escogido."
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
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "HOME" STYLE "BT"
 @ pfIl+3, 02 SAY "END" STYLE "BT"
 @ pfIl+4, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 22 SAY "Página siguiente"
 @ pfIl+1, 22 SAY "Página anterior"
 @ pfIl+2, 22 SAY "Primera línea"
 @ pfIl+3, 22 SAY "Última línea"
 @ pfIl+4, 22 SAY "Imprimir Detalle de DAOT"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
