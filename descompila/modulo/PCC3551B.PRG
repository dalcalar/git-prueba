 = INKEY(0.01)
 SELECT teMporal
 DO paN_3551b
 STORE ifIl TO vfIl
 DO muE_3551b WITH "i", "v"
 DO seE_3551b WITH "v"
 DO diS_3551b WITH "R"
 DO toT_3551a IN PCC3551A
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3551b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3551b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3551b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3551b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3551b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3551b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE vsW0=1
                          STORE 2 TO vsW0
                     CASE vsW0=2
                          STORE 1 TO vsW0
                ENDCASE
                DO toT_3551a IN PCC3551A
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Ventas y caja del: "+DTOC(vfEc),  ;
                   "Detallado", 29
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "#Caj"
                pxLs.ceLls(3, 02).vaLue = "Documento"
                pxLs.ceLls(3, 05).vaLue = "Emisión"
                pxLs.ceLls(3, 06).vaLue = "Cliente"
                pxLs.ceLls(3, 07).vaLue = "Glosa"
                pxLs.ceLls(3, 08).vaLue = "Forma de Pago"
                pxLs.ceLls(3, 09).vaLue = "Fec-Vcto"
                pxLs.ceLls(3, 10).vaLue = "Vendedor"
                pxLs.ceLls(3, 11).vaLue = "T/C"
                pxLs.ceLls(3, 12).vaLue = "Tip-Canc/Cheque/Depósito"
                pxLs.ceLls(3, 13).vaLue = "Total "+msIg
                pxLs.ceLls(3, 14).vaLue = "A/C "+msIg
                pxLs.ceLls(3, 15).vaLue = "Saldo "+msIg
                pxLs.ceLls(3, 16).vaLue = "Total US$"
                pxLs.ceLls(3, 17).vaLue = "A/C US$"
                pxLs.ceLls(3, 18).vaLue = "Saldo US$"
                pxLs.ceLls(3, 19).vaLue = "Total "+msIg
                pxLs.ceLls(3, 20).vaLue = "A/C "+msIg
                pxLs.ceLls(3, 21).vaLue = "Saldo "+msIg
                pxLs.ceLls(3, 22).vaLue = "Total US$"
                pxLs.ceLls(3, 23).vaLue = "A/C US$"
                pxLs.ceLls(3, 24).vaLue = "Saldo US$"
                pxLs.ceLls(3, 25).vaLue = "Voucher"
                pxLs.ceLls(3, 27).vaLue = "Letra"
                pxLs.ceLls(3, 29).vaLue = "Recibo"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,29)).inSert
                pxLs.ceLls(3, 13).vaLue = "Pagos en Efectivo"
                pxLs.ceLls(3, 19).vaLue = "Pagos en Bancos"
                pxLs.ceLls(3, 25).vaLue = "Documentos"
                WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(4,29))
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
                     .veRticalalignment = 3
                ENDWITH
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,12)).meRge
                pxLs.raNge(pxLs.ceLls(3,13), pxLs.ceLls(3,18)).meRge
                pxLs.raNge(pxLs.ceLls(3,19), pxLs.ceLls(3,24)).meRge
                pxLs.raNge(pxLs.ceLls(3,25), pxLs.ceLls(3,29)).meRge
                pxLs.raNge(pxLs.ceLls(4,02), pxLs.ceLls(4,04)).meRge
                pxLs.raNge(pxLs.ceLls(4,25), pxLs.ceLls(4,26)).meRge
                pxLs.raNge(pxLs.ceLls(4,27), pxLs.ceLls(4,28)).meRge
                pxLs.raNge(pxLs.coLumns(13),  ;
                          pxLs.coLumns(24)).nuMberformat = "##,###,##0.00"
                pxLs.raNge(pxLs.coLumns(13),  ;
                          pxLs.coLumns(24)).hoRizontalalignment = 1
                pxLs.raNge(pxLs.coLumns(25),  ;
                          pxLs.coLumns(29)).nuMberformat = "@"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3, ;
                          29)).hoRizontalalignment = 3
                pxLs.raNge(pxLs.ceLls(4,01), pxLs.ceLls(4, ;
                          29)).hoRizontalalignment = 3
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(10)).nuMberformat = "@"
                pxLs.coLumns(01).hoRizontalalignment = 3
                pxLs.coLumns(11).hoRizontalalignment = 3
                pxLs.coLumns(11).nuMberformat = "##0.000"
                pxLs.coLumns(12).nuMberformat = "@"
                SELECT teMporal
                GOTO TOP
                STORE 5 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-4, 6,  ;
                          0))+"..."
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM1caj
                     pxLs.ceLls(viT1, 02).vaLue = ftM1tdo
                     pxLs.ceLls(viT1, 03).vaLue = ftM1ser
                     pxLs.ceLls(viT1, 04).vaLue = ftM1doc
                     pxLs.ceLls(viT1, 05).vaLue = DTOC(ftM1fem)
                     pxLs.ceLls(viT1, 06).vaLue = ftM1nom
                     pxLs.ceLls(viT1, 07).vaLue = ftM1glo
                     pxLs.ceLls(viT1, 08).vaLue = ftM1nfp
                     pxLs.ceLls(viT1, 09).vaLue = DTOC(ftM1fve)
                     pxLs.ceLls(viT1, 10).vaLue = ftM1nve
                     pxLs.ceLls(viT1, 11).vaLue = ftM1tca
                     DO CASE
                          CASE ftM1tdo="NC" .AND. ftM1dnc=1
                               pxLs.ceLls(viT1, 12).vaLue =  ;
                                "*Devolucion de Dinero*"
                          CASE ftM1tdo="NC"
                               pxLs.ceLls(viT1, 12).vaLue = "Aplicacion c/Doc"
                          CASE ALLTRIM(ftM1che)="Caja"
                               pxLs.ceLls(viT1, 12).vaLue = ftM1nti
                          OTHERWISE
                               pxLs.ceLls(viT1, 12).vaLue = ftM1che
                     ENDCASE
                     DO CASE
                          CASE ftM1gru=1 .AND. ftM1mon=1
                               pxLs.ceLls(viT1, 13).vaLue = ftM1tot
                               pxLs.ceLls(viT1, 14).vaLue = ftM1acu
                               pxLs.ceLls(viT1, 15).vaLue = ftM1sld
                               pxLs.ceLls(viT1, 16).vaLue = " "
                               pxLs.ceLls(viT1, 17).vaLue = " "
                               pxLs.ceLls(viT1, 18).vaLue = " "
                          CASE ftM1gru=1 .AND. ftM1mon=2
                               pxLs.ceLls(viT1, 13).vaLue = " "
                               pxLs.ceLls(viT1, 14).vaLue = " "
                               pxLs.ceLls(viT1, 15).vaLue = " "
                               pxLs.ceLls(viT1, 16).vaLue = ftM1tot
                               pxLs.ceLls(viT1, 17).vaLue = ftM1acu
                               pxLs.ceLls(viT1, 18).vaLue = ftM1sld
                          CASE ftM1gru=2 .AND. ftM1mon=1
                               pxLs.ceLls(viT1, 19).vaLue = ftM1tot
                               pxLs.ceLls(viT1, 20).vaLue = ftM1acu
                               pxLs.ceLls(viT1, 21).vaLue = ftM1sld
                               pxLs.ceLls(viT1, 22).vaLue = " "
                               pxLs.ceLls(viT1, 23).vaLue = " "
                               pxLs.ceLls(viT1, 24).vaLue = " "
                          CASE ftM1gru=2 .AND. ftM1mon=2
                               pxLs.ceLls(viT1, 19).vaLue = " "
                               pxLs.ceLls(viT1, 20).vaLue = " "
                               pxLs.ceLls(viT1, 21).vaLue = " "
                               pxLs.ceLls(viT1, 22).vaLue = ftM1tot
                               pxLs.ceLls(viT1, 23).vaLue = ftM1acu
                               pxLs.ceLls(viT1, 24).vaLue = ftM1sld
                     ENDCASE
                     pxLs.ceLls(viT1, 25).vaLue = ftM1sr1
                     pxLs.ceLls(viT1, 26).vaLue = ftM1num
                     pxLs.ceLls(viT1, 27).vaLue = ftM1srl
                     pxLs.ceLls(viT1, 28).vaLue = ftM1let
                     pxLs.ceLls(viT1, 29).vaLue = ftM1rcb
                     STORE viT1+1 TO viT1
                     SELECT teMporal
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                pxLs.coLumns(01).coLumnwidth = 04.9
                pxLs.coLumns(02).coLumnwidth = 03
                pxLs.coLumns(03).coLumnwidth = 03.3
                pxLs.coLumns(04).coLumnwidth = 07.3
                pxLs.coLumns(05).coLumnwidth = 10
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(08)).coLumnwidth = 20.3
                pxLs.coLumns(09).coLumnwidth = 10
                pxLs.coLumns(10).coLumnwidth = 27
                pxLs.coLumns(11).coLumnwidth = 04.9
                pxLs.coLumns(12).coLumnwidth = 26.2
                pxLs.raNge(pxLs.coLumns(13), pxLs.coLumns(18)).coLumnwidth = 10
                pxLs.raNge(pxLs.coLumns(19), pxLs.coLumns(24)).coLumnwidth = 10
                pxLs.coLumns(25).coLumnwidth = 03.3
                pxLs.coLumns(26).coLumnwidth = 07.3
                pxLs.coLumns(27).coLumnwidth = 03.3
                pxLs.raNge(pxLs.coLumns(28),  ;
                          pxLs.coLumns(29)).coLumnwidth = 07.3
                WITH pxLs.raNge(pxLs.ceLls(5,1),pxLs.ceLls(viT1-1,29))
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                     .foNt.naMe = "Arial"
                     .foNt.siZe = 9
                     .foNt.boLd = .F.
                     .foNt.coLorindex = 1
                     .veRticalalignment = 3
                ENDWITH
                WITH pxLs.raNge(pxLs.ceLls(viT1,1),pxLs.ceLls(viT1,29))
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
                     .veRticalalignment = 3
                ENDWITH
                pxLs.raNge(pxLs.ceLls(viT1,01), pxLs.ceLls(viT1,12)).meRge
                pxLs.raNge(pxLs.ceLls(viT1,25), pxLs.ceLls(viT1,29)).meRge
                pxLs.ceLls(viT1, 13).vaLue = "Efectivo "+msIg
                pxLs.ceLls(viT1, 14).vaLue = veF1+veF3
                pxLs.ceLls(viT1, 16).vaLue = "Efectivo US$"
                pxLs.ceLls(viT1, 17).vaLue = veF2+veF4
                pxLs.ceLls(viT1, 19).vaLue = "Banco "+msIg
                pxLs.ceLls(viT1, 20).vaLue = vcH1+vcH3+vdP1+vdP3+voT1+voT3
                pxLs.ceLls(viT1, 22).vaLue = "Banco US$"
                pxLs.ceLls(viT1, 23).vaLue = vcH2+vcH4+vdP2+vdP4+voT2+voT4
                DO xl1_0000a WITH 2
                WAIT CLEAR
                SELECT teMporal
                DO seE_3551b WITH "v"
           CASE mkEy=k_Tab
                = INKEY(0.01)
                DO q1_0000a
                SAVE SCREEN TO vpAn_12
                DO pcC3551c
                RESTORE SCREEN FROM vpAn_12
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3551b WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3551b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                SET ORDER TO FTM1DOC
                DO seE_3551b WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tdo+ftM1ser+ftM1doc+STR(ftM1gru, 1, 0)+ ;
                          STR(ftM1caj, 2, 0)+ftM1sr1+ftM1num=itDo+isEr+ ;
                          idOc+STR(igRu, 1, 0)+STR(icAj, 2, 0)+isR1+inUm  ;
                          .AND. vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj,  ;
                          2, 0)+vsR1+vnUm=itDo+isEr+idOc+STR(igRu, 1, 0)+ ;
                          STR(icAj, 2, 0)+isR1+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+ ;
                                    STR(vcAj, 2, 0)+vsR1+vnUm=itDo+isEr+ ;
                                    idOc+STR(igRu, 1, 0)+STR(icAj, 2, 0)+ ;
                                    isR1+inUm
                                    DO paN_3551b
                               OTHERWISE
                                    DO seE_3551b WITH "v"
                                    DO diS_3551b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3551b WITH "i", "v"
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tdo+ftM1ser+ftM1doc+STR(ftM1gru, 1, 0)+ ;
                          STR(ftM1caj, 2, 0)+ftM1sr1+ftM1num=utDo+usEr+ ;
                          udOc+STR(ugRu, 1, 0)+STR(ucAj, 2, 0)+usR1+unUm  ;
                          .AND. vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj,  ;
                          2, 0)+vsR1+vnUm=utDo+usEr+udOc+STR(ugRu, 1, 0)+ ;
                          STR(ucAj, 2, 0)+usR1+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+ ;
                                    STR(vcAj, 2, 0)+vsR1+vnUm=utDo+usEr+ ;
                                    udOc+STR(ugRu, 1, 0)+STR(ucAj, 2, 0)+ ;
                                    usR1+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3551b
                               OTHERWISE
                                    DO seE_3551b WITH "v"
                                    DO diS_3551b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3551b WITH "u", "v"
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj, 2,  ;
                             0)+vsR1+vnUm=utDo+usEr+udOc+STR(ugRu, 1, 0)+ ;
                             STR(ucAj, 2, 0)+usR1+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3551a IN PCC3551A WITH ifIl, ffIl+1
                               DO li1_3551a IN PCC3551A WITH ifIl, ffIl+1
                               DO muE_3551b WITH "F", "v"
                               DO muE_3551b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3551b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3551b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj, 2,  ;
                             0)+vsR1+vnUm=itDo+isEr+idOc+STR(igRu, 1, 0)+ ;
                             STR(icAj, 2, 0)+isR1+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3551a IN PCC3551A WITH ifIl, ffIl+1
                               DO li1_3551a IN PCC3551A WITH ifIl, ffIl+1
                               DO muE_3551b WITH "F", "v"
                               DO muE_3551b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3551b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3551b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3551b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3551b
                          STORE ifIl TO vfIl
                          DO muE_3551b WITH "i", "v"
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3551b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3551b
                          STORE ifIl TO vfIl
                          DO muE_3551b WITH "i", "v"
                          DO seE_3551b WITH "v"
                          DO diS_3551b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3551b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3551b
 STORE ifIl TO vfIl, ufIl
 DO muE_3551b WITH "F", "i"
 DO muE_3551b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3551b WITH "N"
      DO muE_3551b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3551a IN PCC3551A WITH ufIl+1, ffIl+1
      DO li1_3551a IN PCC3551A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3551b
 PARAMETER ptIp
 PRIVATE ptPp, pfPa, psW0
 DO CASE
      CASE ptIp="N" .AND. ftM1tdo="NC"
           SET COLOR TO RGB(155,0,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. ftM1tdo="LE" .AND. ftM1acu=0
           SET COLOR TO RGB(98,98,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="LE" .AND. ftM1acu=0
           SET COLOR TO RGB(98,98,0,255,255,255)
      CASE ptIp="N" .AND. ftM1gru=2
           SET COLOR TO RGB(0,0,128,192,192,192)
      CASE ptIp="R" .AND. ftM1gru=2
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           STORE msIg TO vsG1
      OTHERWISE
           STORE "US$" TO vsG1
 ENDCASE
 DO CASE
      CASE ftM1mnd=1
           STORE msIg TO vsG2
      OTHERWISE
           STORE "US$" TO vsG2
 ENDCASE
 @vFIL,iCLN+000.0 Say FTM1TDO Font "&mLetAri",9 Style "NQ" Size 1,03.4
 @vFIL,iCLN+004.0 Say FTM1SER Font "&mLetAri",9 Style "NQ" Size 1,04.3
 @vFIL,iCLN+008.9 Say FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,10.1
 @vFIL,iCLN+019.8 Say FTM1FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+033.0 Say FTM1NOM    Font "&mLetAri",9 Style "NQ" Size 1,40.0 Pict "@S43"
           @vFIL,iCLN+073.8 Say FTM1CAJ    Font "&mLetAri",9 Style "NQ" Size 1,01.4 Pict "9"
           @vFIL,iCLN+075.6 Say FTM1GLO    Font "&mLetAri",9 Style "NQ" Size 1,31.1 Pict "@S34"
           @vFIL,iCLN+125.1 Say vSG1       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+130.5 Say FTM1TOT    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,iCLN+146.5 Say vSG2       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+151.9 Say FTM1ACU    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           IF ftM1mon=1
                @vFIL,iCLN+167.9 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vFIL,iCLN+183.9 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
           ELSE
                @vFIL,iCLN+167.9 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
                @vFIL,iCLN+183.9 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           ENDIF
      CASE mrEs="4"
           @vFIL,iCLN+033.0 Say FTM1NOM    Font "&mLetAri",9 Style "NQ" Size 1,50.0 Pict "@S53"
           @vFIL,iCLN+083.7 Say FTM1CAJ    Font "&mLetAri",9 Style "NQ" Size 1,01.4 Pict "9"
           @vFIL,iCLN+086.0 Say FTM1GLO    Font "&mLetAri",9 Style "NQ" Size 1,47.4 Pict "@S51"
           @vFIL,iCLN+134.2 Say FTM1NFP    Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "@S18"
           @vFIL,iCLN+177.2 Say vSG1       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+182.6 Say FTM1TOT    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,iCLN+198.6 Say vSG2       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+204.0 Say FTM1ACU    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           IF ftM1mon=1
                @vFIL,iCLN+220.0 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vFIL,iCLN+236.0 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
           ELSE
                @vFIL,iCLN+220.0 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
                @vFIL,iCLN+236.0 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           ENDIF
      OTHERWISE
           @vFIL,iCLN+033.0 Say FTM1NOM    Font "&mLetAri",9 Style "NQ" Size 1,50.2 Pict "@S53"
           @vFIL,iCLN+083.8 Say FTM1CAJ    Font "&mLetAri",9 Style "NQ" Size 1,01.4 Pict "9"
           @vFIL,iCLN+085.8 Say FTM1GLO    Font "&mLetAri",9 Style "NQ" Size 1,47.8 Pict "@S49"
           @vFIL,iCLN+134.2 Say FTM1NFP    Font "&mLetAri",9 Style "NQ" Size 1,30.6 Pict "@S33"
           @vFIL,iCLN+194.2 Say vSG1       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+199.6 Say FTM1TOT    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,iCLN+215.6 Say vSG2       Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,iCLN+221.0 Say FTM1ACU    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           IF ftM1mon=1
                @vFIL,iCLN+237.0 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vFIL,iCLN+253.0 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
           ELSE
                @vFIL,iCLN+237.0 Say " "     Font "&mLetAri",9 Style "NQ" Size 1,15.4
                @vFIL,iCLN+253.0 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           ENDIF
 ENDCASE
 STORE ftM1tip TO ptPp
 STORE ftM1fpa TO pfPa
 STORE 0 TO psW0
 SELECT teMporal_2
 SET ORDER TO FTM2TIP
 SEEK ptPp+pfPa
 IF  .NOT. EOF() .AND. ftM2est="@"
      STORE 1 TO psW0
 ENDIF
 SET ORDER TO FTM2CAJ
 SELECT teMporal
 DO CASE
      CASE ptIp="N" .AND. psW0=1
           DO coL_beige
      CASE ptIp="R" .AND. psW0=1
           DO coL_fondo
 ENDCASE
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE ftM1tdo="NC" .AND. ftM1dnc=1
                     @vFIL,iCLN+107.3 Say "*Devolucion de Dinero*" Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S20"
                CASE ftM1tdo="NC"
                     @vFIL,iCLN+107.3 Say "Aplicacion con Docum"   Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S20"
                CASE ALLTRIM(ftM1che)="Caja"
                     @vFIL,iCLN+107.3 Say FTM1NTI                  Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S20"
                OTHERWISE
                     @vFIL,iCLN+107.3 Say FTM1CHE                  Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S20"
           ENDCASE
      CASE mrEs="4"
           DO CASE
                CASE ftM1tdo="NC" .AND. ftM1dnc=1
                     @vFIL,iCLN+150.4 Say "*Devolucion de Dinero*" Font "&mLetAri",9 Style "NQ" Size 1,26.1 Pict "@S29"
                CASE ftM1tdo="NC"
                     @vFIL,iCLN+150.4 Say "Aplicacion con Docum"   Font "&mLetAri",9 Style "NQ" Size 1,26.1 Pict "@S29"
                CASE ALLTRIM(ftM1che)="Caja"
                     @vFIL,iCLN+150.4 Say FTM1NTI                  Font "&mLetAri",9 Style "NQ" Size 1,26.1 Pict "@S29"
                OTHERWISE
                     @vFIL,iCLN+150.4 Say FTM1CHE                  Font "&mLetAri",9 Style "NQ" Size 1,26.1 Pict "@S29"
           ENDCASE
      OTHERWISE
           DO CASE
                CASE ftM1tdo="NC" .AND. ftM1dnc=1
                     @vFIL,iCLN+165.4 Say "*Devolucion de Dinero*" Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
                CASE ftM1tdo="NC"
                     @vFIL,iCLN+165.4 Say "Aplicacion con Docum"   Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
                CASE ALLTRIM(ftM1che)="Caja"
                     @vFIL,iCLN+165.4 Say FTM1NTI                  Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
                OTHERWISE
                     @vFIL,iCLN+165.4 Say FTM1CHE                  Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
           ENDCASE
 ENDCASE
 RELEASE ptPp, pfPa, psW0
ENDPROC
*
PROCEDURE Imp_3551b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3551b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3551b
 PRIVATE ptAm, phO1, poT1, ptO1, phO2, poT2, ptO2
 PRIVATE prEc, psO1, psO2, puS1, puS2, paNu
 DO coLbln
 DO CASE
      CASE mvIs=0
           STORE 98 TO ptAm
           STORE 04 TO mcLn
      CASE mvIs=1
           STORE 109 TO ptAm
           DO npG_0000a
 ENDCASE
 STORE 00 TO vlIn, vpAg
 IF voPc=1
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           IF mkEy=k_F10 .AND. mvIs=1
                DO reTorna
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           IF vpAg=0 .OR. vlIn>mpAg-3
                DO caB_3551b
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE ftM1mon=1
                          STORE msIg TO vsG1
                     OTHERWISE
                          STORE "U$" TO vsG1
                ENDCASE
                DO CASE
                     CASE ftM1mnd=1
                          STORE msIg TO vsG2
                     OTHERWISE
                          STORE "U$" TO vsG2
                ENDCASE
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+00.2 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",8 Style "NQ" Size 1,17.2
                          @vLIN,mCLN+18.3 Say FTM1FEM                         Font "&mLetAri",8 Style "NQ" Size 1,11
                          @vLIN,mCLN+30.3 Say FTM1NOM                         Font "&mLetAri",8 Style "NQ" Size 1,21 Pict "@S24"
                     CASE mpRt="1"
                          @vLIN,mCLN+00.2 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",8 Style "NQ" Size 1,17.2
                          @vLIN,mCLN+18.3 Say FTM1FEM                         Font "&mLetAri",8 Style "NQ" Size 1,11
                          @vLIN,mCLN+30.3 Say FTM1NOM                         Font "&mLetAri",8 Style "NQ" Size 1,21 Pict "@S24"
                     CASE mpRt="2"
                          @vLIN,mCLN+00.2 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetSwi",8 Style "NQ" Size 1,17.2
                          @vLIN,mCLN+18.3 Say FTM1FEM                         Font "&mLetSwi",8 Style "NQ" Size 1,11
                          @vLIN,mCLN+30.3 Say FTM1NOM                         Font "&mLetSwi",8 Style "NQ" Size 1,21 Pict "@S24"
                ENDCASE
                IF AT("ANULADO", UPPER(ftM1nom))=0
                     DO CASE
                          CASE mvIs=1
                               @vLIN,mCLN+54.3 Say FTM1GLO              Font "&mLetAri",8 Style "NQ" Size 1,22 Pict "@S25"
                               DO CASE
                                    CASE ftM1tdo="NC" .AND. ftM1dnc=1
                                         @vLIN,mCLN+86.3 Say "*Dev*"      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ftM1tdo="NC"
                                         @vLIN,mCLN+86.3 Say "Aplic"      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ALLTRIM(ftM1che)="Caja"
                                         @vLIN,mCLN+76.3 Say FTM1NTI      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    OTHERWISE
                                         @vLIN,mCLN+76.3 Say FTM1CHE      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                               ENDCASE
                               @vLIN,mCLN+096.8 Say vSG1                Font "&mLetAri",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+102.8 Say FTM1TOT             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+118.8 Say vSG2                Font "&mLetAri",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+124.8 Say FTM1ACU             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+139.3 Say FTM1SLD             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                          CASE mpRt="1"
                               @vLIN,mCLN+54.3 Say FTM1GLO              Font "&mLetAri",8 Style "NQ" Size 1,22 Pict "@S25"
                               DO CASE
                                    CASE ftM1tdo="NC" .AND. ftM1dnc=1
                                         @vLIN,mCLN+86.3 Say "*Dev*"      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ftM1tdo="NC"
                                         @vLIN,mCLN+86.3 Say "Aplic"      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ALLTRIM(ftM1che)="Caja"
                                         @vLIN,mCLN+76.3 Say FTM1NTI      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                                    OTHERWISE
                                         @vLIN,mCLN+76.3 Say FTM1CHE      Font "&mLetAri",8 Style "NQ" Size 1,16 Pict "@S19"
                               ENDCASE
                               @vLIN,mCLN+096.8 Say vSG1                Font "&mLetAri",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+109.8 Say FTM1TOT             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+115.8 Say vSG2                Font "&mLetAri",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+128.8 Say FTM1ACU             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+143.3 Say FTM1SLD             Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                          CASE mpRt="2"
                               @vLIN,mCLN+54.3 Say FTM1GLO              Font "&mLetSwi",8 Style "NQ" Size 1,22 Pict "@S25"
                               DO CASE
                                    CASE ftM1tdo="NC" .AND. ftM1dnc=1
                                         @vLIN,mCLN+86.3 Say "*Dev*"      Font "&mLetSwi",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ftM1tdo="NC"
                                         @vLIN,mCLN+86.3 Say "Aplic"      Font "&mLetSwi",8 Style "NQ" Size 1,16 Pict "@S19"
                                    CASE ALLTRIM(ftM1che)="Caja"
                                         @vLIN,mCLN+76.3 Say FTM1NTI      Font "&mLetSwi",8 Style "NQ" Size 1,16 Pict "@S19"
                                    OTHERWISE
                                         @vLIN,mCLN+76.3 Say FTM1CHE      Font "&mLetSwi",8 Style "NQ" Size 1,16 Pict "@S19"
                               ENDCASE
                               @vLIN,mCLN+096.8 Say vSG1                Font "&mLetSwi",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+102.8 Say FTM1TOT             Font "&mLetSwi",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+115.8 Say vSG2                Font "&mLetSwi",8 Style "NQ" Size 1,03.4
                               @vLIN,mCLN+121.8 Say FTM1ACU             Font "&mLetSwi",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                               @vLIN,mCLN+136.3 Say FTM1SLD             Font "&mLetSwi",8 Style "NQ" Size 1,12.9 Pict "9999,999.99"
                     ENDCASE
                ENDIF
           ENDIF
           STORE vlIn+1.3 TO vlIn
           SKIP
      ENDDO
 ENDIF
 STORE 90 TO ptAm
 STORE 09 TO mcLn
 STORE 02 TO voPc
 STORE vlIn+2 TO vlIn
 IF vpAg=0 .OR. vlIn>mpAg-3
      DO caB_3551b
 ENDIF
 STORE vlIn+2 TO vlIn
 SELECT teMporal
 SET ORDER TO FTM1FPA
 GOTO TOP
 STORE "**" TO cfPa
 STORE 0 TO paNu, psO1, puS1, psO2, puS2
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF ALLTRIM(ftM1nom)+"*"="ANULADO"+"*" .AND. ftM1tot=0
           STORE paNu+1 TO paNu
           SKIP
           LOOP
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn+4.1>mpAg-3
           DO caB_3551b
      ENDIF
      IF ftM1fpa<>cfPa
           IF cfPa<>"**"
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+060 Say pSO1            Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
                     @vLIN,mCLN+075 Say pUS1            Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
                     @vLIN,mCLN+090 Say pSO2            Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
                     @vLIN,mCLN+105 Say pUS2            Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
                ENDIF
           ELSE
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN Say "RESUMEN DE VENTAS" Font "&mLetRom",12 Style "BTI"
                ENDIF
                STORE vlIn+2.5 TO vlIn
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+061 Say "DEL DIA"       Font "&mLetAri",8 Style "BT"
                     @vLIN,mCLN+089 Say "OTROS DIAS"    Font "&mLetAri",8 Style "BT"
                ENDIF
                STORE vlIn+1.2 TO vlIn
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+000 Say "FORMA DE PAGO" Font "&mLetAri",8 Style "BT"
                     @vLIN,mCLN+055 Say "SOLES"         Font "&mLetAri",8 Style "BT"
                     @vLIN,mCLN+067 Say "DOLARES"       Font "&mLetAri",8 Style "BT"
                     @vLIN,mCLN+085 Say "SOLES"         Font "&mLetAri",8 Style "BT"
                     @vLIN,mCLN+097 Say "DOLARES"       Font "&mLetAri",8 Style "BT"
                ENDIF
                STORE vlIn+0.5 TO vlIn
           ENDIF
           STORE 0 TO psO1, psO2, puS1, puS2
           STORE ftM1fpa TO cfPa
           STORE vlIn+1.1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say Upper(FTM1NFP) Font "&mLetAri",8 Style "NT"
           ENDIF
      ENDIF
      DO CASE
           CASE ftM1mon=1 .AND. ftM1fem=vfEc
                STORE psO1+ftM1tot TO psO1
           CASE ftM1mon=2 .AND. ftM1fem=vfEc
                STORE puS1+ftM1tot TO puS1
           CASE ftM1mon=1
                STORE psO2+ftM1tot TO psO2
           CASE ftM1mon=2
                STORE puS2+ftM1tot TO puS2
      ENDCASE
      SKIP
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+060 Say pSO1 Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
      @vLIN,mCLN+075 Say pUS1 Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
      @vLIN,mCLN+090 Say pSO2 Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
      @vLIN,mCLN+105 Say pUS2 Font "&mLetAri",8 Style "BT" Size 1,14 Pict "9999,999.99"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "DOCUMENTOS ANULADOS" Font "&mLetAri",8 Style "NT"
      @vLIN,mCLN+60 Say pANU                  Font "&mLetAri",8 Style "NT" Size 1,14 Pict "9999,999"
 ENDIF
 IF vlIn+4.8>mpAg-3
      DO caB_3551b
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "RESUMEN DE COBRANZAS" Font "&mLetRom",12 Style "BTI"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+0.3 TO vlIn
 SELECT teMporal_2
 GOTO TOP
 STORE 999 TO ccAj, cgRu
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF ftM2caj<>ccAj .OR. ftM2gru<>cgRu
           IF vlIn+5.6>mpAg-3
                DO caB_3551b
           ENDIF
           IF ccAj<>999 .AND. cgRu<>999
                STORE vlIn+0.3 TO vlIn
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
                ENDIF
                STORE vlIn+0.5 TO vlIn
           ENDIF
           STORE vlIn+1 TO vlIn
           STORE ftM2caj TO ccAj
           STORE ftM2gru TO cgRu
           STORE RECNO() TO prEc
           SUM ftM2ho1 TO phO1 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           SUM ftM2ot1 TO poT1 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           SUM ftM2to1 TO ptO1 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           SUM ftM2ho2 TO phO2 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           SUM ftM2ot2 TO poT2 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           SUM ftM2to2 TO ptO2 FOR ftM2gru=cgRu .AND. ftM2caj=ccAj
           GOTO prEc
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE cgRu=1
                          @vLIN,mCLN Say "CAJA "+Str(cCAJ,2,0) Font "&mLetAri",8  Style "BT"
                     CASE cgRu=2
                          @vLIN,mCLN Say "BANCO"               Font "&mLetAri",8  Style "BT"
                ENDCASE
                @vLIN,mCLN+060 Say pHO1                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
                @vLIN,mCLN+075 Say pOT1                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
                @vLIN,mCLN+090 Say pTO1                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
                @vLIN,mCLN+105 Say pHO2                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
                @vLIN,mCLN+120 Say pOT2                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
                @vLIN,mCLN+131 Say pTO2                      Font "&mLetAri",8  Style "BT" Size 1,14 Pict "9999,999.99"
           ENDIF
           STORE vlIn+0.2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say Replicate("_",pTAM)           Font "&mLetAri",10 Style "NT"
           ENDIF
           STORE vlIn+1.2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+055 Say "DEL DIA"                 Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+066 Say "OTROS DIAS"              Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+081 Say "TOT-PAGOS"               Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+100 Say "DEL DIA"                 Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+111 Say "OTROS DIAS"              Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+125 Say "TOT-PAGOS"               Font "&mLetAri",7  Style "BT"
           ENDIF
           STORE vlIn+0.5 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN     Say "TIPO-CANCELACION"        Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+022 Say "FORMA DE PAGO"           Font "&mLetAri",7  Style "BT"
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+058 Say mSIG                      Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+071 Say mSIG                      Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+085 Say mSIG                      Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+102 Say "US$"                     Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+115 Say "US$"                     Font "&mLetAri",7  Style "BT"
                @vLIN,mCLN+129 Say "US$"                     Font "&mLetAri",7  Style "BT"
           ENDIF
           STORE vlIn+0.1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say Replicate("_",pTAM)           Font "&mLetAri",10 Style "NT"
           ENDIF
           STORE vlIn+1.5 TO vlIn
           LOOP
      ENDIF
      IF vlIn+1.5>mpAg-3
           DO caB_3551b
           STORE vlIn+0.7 TO vlIn
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN     Say FTM2NTI Font "&mLetAri",8  Style "NT" Size 1,20 Pict "@S23"
           @vLIN,mCLN+022 Say FTM2NFP Font "&mLetAri",8  Style "NT" Size 1,20 Pict "@S23"
           @vLIN,mCLN+060 Say FTM2HO1 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
           @vLIN,mCLN+075 Say FTM2OT1 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
           @vLIN,mCLN+090 Say FTM2TO1 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
           @vLIN,mCLN+105 Say FTM2HO2 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
           @vLIN,mCLN+120 Say FTM2OT2 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
           @vLIN,mCLN+131 Say FTM2TO2 Font "&mLetAri",8  Style "NT" Size 1,14 Pict "9999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, phO1, poT1, ptO1, phO2, poT2, ptO2
 RELEASE prEc, psO1, psO2, puS1, puS2, paNu
ENDPROC
*
PROCEDURE Cab_3551b
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE voPc=1
                @vLIN,mCLN Say "Ventas y Cobranzas del "+Dtoc(vFEC)                              Font "&mLetAri",13 Style "NQ"
           CASE voPc=2
                @vLIN,mCLN Say "Resumen de Ventas y Cobranzas del "+Dtoc(vFEC)                   Font "&mLetAri",13 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 IF voPc=1
      STORE vlIn+1 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+000.2 Say "Documento"       Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+018.3 Say "Emisión"         Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+030.3 Say "Cliente"         Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+054.3 Say "Glosa"           Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+076.3 Say "Cheq/Depós"      Font "&mLetAri",9 Style "NQ"
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+099.3 Say "Total Facturado" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+121.7 Say "Monto Pagado"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+145.3 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
                OTHERWISE
                     @vLIN,mCLN+097.3 Say "Total Facturado" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+116.3 Say "Monto Pagado"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+140.3 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
           ENDCASE
      ENDIF
      STORE vlIn+0.4 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      ENDIF
      STORE vlIn+1.5 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Clp_3551b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.6
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=icLn+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=icLn+muCo
           DO diS_3551b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3551b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3551b WITH "F", "v"
           DO diS_3551b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3551b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vcAj TO ccAj
           STORE vgRu TO cgRu
           STORE vsR1 TO csR1
           STORE vnUm TO cnUm
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vcAj TO icAj
           STORE vgRu TO igRu
           STORE vsR1 TO isR1
           STORE vnUm TO inUm
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE icAj TO vcAj
           STORE igRu TO vgRu
           STORE isR1 TO vsR1
           STORE inUm TO vnUm
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE ccAj TO vcAj
           STORE cgRu TO vgRu
           STORE csR1 TO vsR1
           STORE cnUm TO vnUm
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ucAj TO vcAj
           STORE ugRu TO vgRu
           STORE usR1 TO vsR1
           STORE unUm TO vnUm
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1caj TO vcAj
           STORE ftM1gru TO vgRu
           STORE ftM1sr1 TO vsR1
           STORE ftM1num TO vnUm
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM1tdo TO utDo
           STORE ftM1ser TO usEr
           STORE ftM1doc TO udOc
           STORE ftM1caj TO ucAj
           STORE ftM1gru TO ugRu
           STORE ftM1sr1 TO usR1
           STORE ftM1num TO unUm
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM1tdo TO itDo
           STORE ftM1ser TO isEr
           STORE ftM1doc TO idOc
           STORE ftM1caj TO icAj
           STORE ftM1gru TO igRu
           STORE ftM1sr1 TO isR1
           STORE ftM1num TO inUm
 ENDCASE
ENDPROC
*
PROCEDURE See_3551b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj, 2, 0)+vsR1+vnUm
      CASE psEe="i"
           SEEK itDo+isEr+idOc+STR(igRu, 1, 0)+STR(icAj, 2, 0)+isR1+inUm
      CASE psEe="u"
           SEEK utDo+usEr+udOc+STR(ugRu, 1, 0)+STR(ucAj, 2, 0)+usR1+unUm
 ENDCASE
ENDPROC
*
PROCEDURE Res_3551b
 SET READBORDER ON
 DO reS_3551a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3551b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPc
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE mrEs TO mrS2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+03.0,pCOL+36 Say "Opción"                Font "&mLetRom",11 Style "BT"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.0,pCOL+04 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+09.1,pCOL+10 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+10.6,pCOL+10 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 SET COLOR TO RGB(0,0,0,192,192,192)
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+5, pcOl+4 TO pfIl+7.7, pcOl+35 PATTERN 1 PEN 0, 0 COLOR  ;
             RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+05.0,pCOL+36 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT Detallado;Resumen" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+09.0,pCOL+31 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      @pFIL+10.5,pCOL+31 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      @pFIL+18.4,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Esc .OR. poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 IF mvIs=1 .AND. mrEs<>"5"
      STORE mrEs TO mrS2
      DO caMbres1 WITH 5
 ENDIF
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_3551b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Movimientos de Ventas"
 @ pfIl+01, 02 SAY "del día seleccionado y sus pagos respectivos."
 @ pfIl+03, 02 SAY "Los movimientos en Bancos se ven en Azul"
 @ pfIl+04, 02 SAY "Los movimientos en Cajas se ven en Negro"
 @ pfIl+05, 02 SAY "Las NC se ven en Rojo"
 @ pfIl+06, 02 SAY "Las Letras se ven en Mostaza"
 @ pfIl+08, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+10, 30 SAY ":" STYLE "BT"
 @ pfIl+11, 30 SAY ":" STYLE "BT"
 @ pfIl+12, 30 SAY ":" STYLE "BT"
 @ pfIl+13, 30 SAY ":" STYLE "BT"
 @ pfIl+14, 30 SAY ":" STYLE "BT"
 @ pfIl+15, 30 SAY ":" STYLE "BT"
 @ pfIl+10, 11 SAY "ESC" STYLE "BT"
 @ pfIl+11, 11 SAY "F10" STYLE "BT"
 @ pfIl+12, 11 SAY "F1" STYLE "BT"
 @ pfIl+13, 11 SAY "F8" STYLE "BT"
 @ pfIl+14, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 32 SAY "Regresar a Cabecera"
 @ pfIl+11, 32 SAY "Cerrar y regresar a Windows"
 @ pfIl+12, 32 SAY "Ayuda del Programa"
 @ pfIl+13, 32 SAY "Pasar Datos a Excel"
 @ pfIl+14, 32 SAY "Línea inferior"
 @ pfIl+15, 32 SAY "Línea superior"
 STORE pfIl+16 TO pfIl
 IF mrEs="3"
      @ pfIl+0, 30 SAY ":" STYLE "BT"
      @ pfIl+1, 30 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 11 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 32 SAY "Resumen de 1 a 2 y viceversa"
      @ pfIl+1, 32 SAY "Resumen de 1 a 2 y viceversa"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+00, 30 SAY ":" STYLE "BT"
 @ pfIl+01, 30 SAY ":" STYLE "BT"
 @ pfIl+02, 30 SAY ":" STYLE "BT"
 @ pfIl+03, 30 SAY ":" STYLE "BT"
 @ pfIl+04, 30 SAY ":" STYLE "BT"
 @ pfIl+05, 30 SAY ":" STYLE "BT"
 @ pfIl+00, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+01, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+02, 11 SAY "HOME" STYLE "BT"
 @ pfIl+03, 11 SAY "END" STYLE "BT"
 @ pfIl+04, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 11 SAY "TAB" STYLE "BT"
 @ pfIl+00, 32 SAY "Página siguiente"
 @ pfIl+01, 32 SAY "Página anterior"
 @ pfIl+02, 32 SAY "Primera línea"
 @ pfIl+03, 32 SAY "Última línea"
 @ pfIl+04, 32 SAY "Imprimir reporte"
 @ pfIl+05, 32 SAY "Resumen"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
