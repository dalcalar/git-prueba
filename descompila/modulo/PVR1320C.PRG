 = INKEY(0.01)
 SELECT teMporal
 SET ORDER TO F9702RUC
 SELECT teMporal_2
 SET ORDER TO FTM2NOM
 GOTO TOP
 DO p00_1320c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_1320c
 STORE 999 TO mkEy
 STORE ifFs TO vfFs
 DO muE_1320c WITH "i", "v"
 DO seE_1320c WITH "v"
 DO diS_1320c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1320c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1320c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1320c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1320c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "DAOT Ventas al "+DTOC(hfEm), "DAOT", 6
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                pxLs.ceLls(3, 01).vaLue = "RUC/Doc.Ident"
                pxLs.ceLls(3, 02).vaLue = "Razón Social"
                pxLs.ceLls(3, 03).vaLue = "Base Imponible"
                pxLs.ceLls(3, 04).vaLue = "IGV"
                pxLs.ceLls(3, 05).vaLue = "Total"
                pxLs.ceLls(3, 06).vaLue = "Total DAOT"
                pxLs.raNge(pxLs.coLumns(03),  ;
                          pxLs.coLumns(06)).nuMberformat = "###,###,##0.00"
                GOTO TOP
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM2ruc
                     pxLs.ceLls(viT1, 02).vaLue = ftM2nom
                     pxLs.ceLls(viT1, 03).vaLue = ftM2net
                     pxLs.ceLls(viT1, 04).vaLue = ftM2igv
                     pxLs.ceLls(viT1, 05).vaLue = ftM2tot
                     pxLs.ceLls(viT1, 06).vaLue = ftM2to2
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                IF meN1<meNn
                     pxLs.ceLls(viT1, 03).vaLue = tnEt
                     pxLs.ceLls(viT1, 04).vaLue = tiGv
                     pxLs.ceLls(viT1, 05).vaLue = ttOt
                     pxLs.ceLls(viT1, 06).vaLue = ttO2
                     WITH pxLs.raNge(pxLs.ceLls(viT1,3),pxLs.ceLls(viT1,6))
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
                DO seE_1320c WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "DAOT Ventas detallado al "+DTOC(hfEm),  ;
                   "DAOT", 9
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,2)).meRge
                pxLs.raNge(pxLs.ceLls(3,3), pxLs.ceLls(3,5)).meRge
                pxLs.ceLls(3, 01).vaLue = "RUC/Doc.Ident"
                pxLs.ceLls(3, 03).vaLue = "Razón Social"
                pxLs.ceLls(3, 06).vaLue = "Base Imponible"
                pxLs.ceLls(3, 07).vaLue = "IGV"
                pxLs.ceLls(3, 08).vaLue = "Total"
                pxLs.ceLls(3, 09).vaLue = "Total DAOT"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(05)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(10),  ;
                          pxLs.coLumns(13)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(08)).nuMberformat = "###,###,##0.00"
                pxLs.coLumns(09).nuMberformat = "##0.000"
                pxLs.coLumns(01).hoRizontalalignment = 3
                pxLs.coLumns(02).hoRizontalalignment = 2
                pxLs.coLumns(01).coLumnwidth = 04.3
                pxLs.coLumns(02).coLumnwidth = 10.0
                pxLs.coLumns(03).coLumnwidth = 02.3
                pxLs.coLumns(04).coLumnwidth = 03.2
                pxLs.coLumns(05).coLumnwidth = 07.6
                pxLs.coLumns(10).coLumnwidth = 10.0
                pxLs.coLumns(11).coLumnwidth = 02.3
                pxLs.coLumns(12).coLumnwidth = 03.2
                pxLs.coLumns(13).coLumnwidth = 07.6
                pxLs.raNge(pxLs.coLumns(06), pxLs.coLumns(09)).coLumnwidth = 15
                SELECT teMporal_2
                GOTO TOP
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM2ruc
                     pxLs.ceLls(viT1, 03).vaLue = ftM2nom
                     pxLs.ceLls(viT1, 06).vaLue = ftM2net
                     pxLs.ceLls(viT1, 07).vaLue = ftM2igv
                     pxLs.ceLls(viT1, 08).vaLue = ftM2tot
                     pxLs.ceLls(viT1, 09).vaLue = ftM2to2
                     pxLs.raNge(pxLs.ceLls(viT1,01), pxLs.ceLls(viT1,02)).meRge
                     pxLs.raNge(pxLs.ceLls(viT1,03), pxLs.ceLls(viT1,05)).meRge
                     pxLs.ceLls(viT1, 09).nuMberformat = "###,###,##0.00"
                     STORE ftM2ruc TO vrUc
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     WITH pxLs.raNge(pxLs.ceLls(viT1,2),pxLs.ceLls(viT1,13))
                          .boRders.liNestyle = 7
                          .boRders(1).weIght = 2
                          .boRders(2).weIght = 2
                          .boRders(3).weIght = 2
                          .boRders(4).weIght = 2
                          .foNt.naMe = "Arial"
                          .foNt.siZe = 8
                          .foNt.boLd = .T.
                          .veRticalalignment = 2
                          .hoRizontalalignment = 3
                     ENDWITH
                     pxLs.raNge(pxLs.ceLls(viT1,03), pxLs.ceLls(viT1,05)).meRge
                     pxLs.raNge(pxLs.ceLls(viT1,11), pxLs.ceLls(viT1,13)).meRge
                     pxLs.ceLls(viT1, 02).vaLue = "Fecha"
                     pxLs.ceLls(viT1, 03).vaLue = "Documento"
                     pxLs.ceLls(viT1, 06).vaLue = "Base Imponible"
                     pxLs.ceLls(viT1, 07).vaLue = "IGV"
                     pxLs.ceLls(viT1, 08).vaLue = "Total"
                     pxLs.ceLls(viT1, 09).vaLue = "T/C"
                     pxLs.ceLls(viT1, 10).vaLue = "Fec.Ref"
                     pxLs.ceLls(viT1, 11).vaLue = "Doc.Referencia"
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SELECT teMporal
                     GOTO TOP
                     SEEK ALLTRIM(vrUc)+"*"
                     DO WHILE  .NOT. EOF() .AND. ALLTRIM(f9702ruc)+"*"= ;
                        ALLTRIM(vrUc)+"*"
                          pxLs.ceLls(viT1, 01).seLect
                          pxLs.ceLls(viT1, 02).vaLue = ALLTRIM(f9702fem)
                          pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(f9702tcp)
                          pxLs.ceLls(viT1, 04).vaLue = ALLTRIM(f9702scp)
                          pxLs.ceLls(viT1, 05).vaLue = ALLTRIM(f9702ncp)
                          pxLs.ceLls(viT1, 06).vaLue = f9702bas
                          pxLs.ceLls(viT1, 07).vaLue = f9702igv
                          pxLs.ceLls(viT1, 08).vaLue = f9702tot
                          pxLs.ceLls(viT1, 09).vaLue = f9702tca
                          pxLs.ceLls(viT1, 10).vaLue = ALLTRIM(f9702fe2)
                          pxLs.ceLls(viT1, 11).vaLue = ALLTRIM(f9702tc2)
                          pxLs.ceLls(viT1, 12).vaLue = ALLTRIM(f9702sr2)
                          pxLs.ceLls(viT1, 13).vaLue = ALLTRIM(f9702do2)
                          pxLs.raNge(pxLs.ceLls(viT1,02), pxLs.ceLls(viT1, ;
                                    13)).foNt.naMe = "Arial"
                          pxLs.raNge(pxLs.ceLls(viT1,02), pxLs.ceLls(viT1, ;
                                    13)).foNt.siZe = 8
                          STORE viT1+1 TO viT1
                          IF meN1>=meNn
                               EXIT
                          ENDIF
                          STORE meN1+1 TO meN1
                          SELECT teMporal
                          SKIP
                     ENDDO
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SELECT teMporal_2
                     SKIP
                ENDDO
                DO xl1_0000a WITH 2
                WAIT CLEAR
                SELECT teMporal_2
                DO seE_1320c WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_1320c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 999 TO mkEy
                SELECT teMporal_2
                DO seE_1320c WITH "v"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_12
                STORE ftM2net TO cbAs
                STORE ftM2igv TO ciGv
                STORE ftM2tot TO ctOt
                DO pvR1320d
                RESTORE SCREEN FROM vpAn_12
                SELECT teMporal_2
                STORE 99 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vrUc)+"*"=ALLTRIM(ftM2ruc)+"*" .AND.  ;
                          ALLTRIM(vrUc)+"*"=ALLTRIM(irUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"=ALLTRIM(irUc)+"*"
                                    DO paN_1320c
                               OTHERWISE
                                    DO seE_1320c WITH "v"
                                    DO diS_1320c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_1320c WITH "i", "v"
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vrUc)+"*"=ALLTRIM(ftM2ruc)+"*" .AND.  ;
                          ALLTRIM(vrUc)+"*"=ALLTRIM(urUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"=ALLTRIM(urUc)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1320c
                               OTHERWISE
                                    DO seE_1320c WITH "v"
                                    DO diS_1320c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_1320c WITH "u", "v"
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "N"
                          SKIP
                          IF UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(unOm)+ ;
                             ALLTRIM(urUc)+"*"
                               DO coL_fondo
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_1320c WITH ifFs, ffFs+1
                               STORE ufFs TO vfFs
                               DO muE_1320c WITH "F", "v"
                               DO muE_1320c WITH "F", "u"
                               SKIP -INT(ffFs-ifFs)
                               DO muE_1320c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_1320c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "N"
                          SKIP -1
                          IF UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(inOm)+ ;
                             ALLTRIM(irUc)+"*"
                               DO coL_fondo
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_1320c WITH ifFs, ffFs+1
                               STORE ifFs TO vfFs
                               DO muE_1320c WITH "F", "v"
                               DO muE_1320c WITH "F", "i"
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_1320c WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFs-1 TO vfFs
                               DO muE_1320c WITH "F", "v"
                          ENDIF
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1320c WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1320c
                          STORE ifFs TO vfFs
                          DO muE_1320c WITH "i", "v"
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1320c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1320c
                          STORE ifFs TO vfFs
                          DO muE_1320c WITH "i", "v"
                          DO seE_1320c WITH "v"
                          DO diS_1320c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1320c WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1320c
 STORE ifFs TO vfFs, ufFs
 DO muE_1320c WITH "F", "i"
 DO muE_1320c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_1320c WITH "N"
      DO muE_1320c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      IF mrEs<"5"
           @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo
      ELSE
           @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo-0.6
      ENDIF
      DO liN_1320c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1320c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,mCO0 Say FTM2RUC Font "&mLetAri",9 Style "NQ" Size 1,21.5 Pict "@S15"
 DO CASE
      CASE mrEs="3"
           @vFFS,mCO0+22.2 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,85.6  Pict "@S53"
      OTHERWISE
           @vFFS,mCO0+22.2 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,153.8 Pict "@S155"
 ENDCASE
 @vFFS,vCL3    Say FTM2NET Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "9,999,999,999.99"
 @vFFS,vCL3+23 Say FTM2IGV Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "9,999,999,999.99"
 @vFFS,vCL3+46 Say FTM2TOT Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "9,999,999,999.99"
 @vFFS,vCL3+69 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "9,999,999,999.99"
ENDPROC
*
PROCEDURE Imp_1320c
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
 DO coLbln
 DO reP_1320c
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_1320c
 PRIVATE ptAm
 STORE 96 TO ptAm
 STORE 10 TO mcLn
 STORE 00 TO vlIn, vpAg
 SELECT teMporal_2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_1320c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM2RUC Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+022   Say FTM2NOM Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+126.5 Say FTM2TO2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM2RUC Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+022   Say FTM2NOM Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+126.5 Say FTM2TO2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ftM2ruc TO crUc
      SELECT teMporal
      GOTO TOP
      SEEK ALLTRIM(crUc)+"*"
      IF  .NOT. EOF()
           STORE vlIn+1.8 TO vlIn
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(crUc)+"*"=ALLTRIM(ftM1ruc)+"*"
                IF ftM1est="9"
                     SKIP
                     LOOP
                ENDIF
                IF vpAg>muPg
                     EXIT
                ENDIF
                IF vpAg=0 .OR. vlIn>mpAg-3
                     DO caB_1320c
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+022 Say FTM1FEM                         Font "&mLetRom",11 Style "NQ" Size 1,13
                               @vLIN,mCLN+039 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",11 Style "NQ" Size 1,20
                               @vLIN,mCLN+063 Say FTM1TCA                         Font "&mLetRom",11 Style "NQ" Size 1,08 Pict "99.999"
                               @vLIN,mCLN+074 Say FTM1TNE                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+092 Say FTM1TIG                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+110 Say FTM1TFA                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                          CASE mpRt="2"
                               @vLIN,mCLN+022 Say FTM1FEM                         Font "&mLetRom",11 Style "NQ" Size 1,13
                               @vLIN,mCLN+039 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",11 Style "NQ" Size 1,20
                               @vLIN,mCLN+063 Say FTM1TCA                         Font "&mLetRom",11 Style "NQ" Size 1,08 Pict "99.999"
                               @vLIN,mCLN+074 Say FTM1TNE                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+092 Say FTM1TIG                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+110 Say FTM1TFA                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                     ENDCASE
                ENDIF
                STORE vlIn+1.3 TO vlIn
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_2
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+108   Say "TOTAL S/." Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+126.5 Say tTO2        Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+108   Say "TOTAL S/." Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+126.5 Say tTO2        Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_1320c
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,00 Say " " Font "&mLetRom",12 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say "DAOT de Ventas al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN Say "DAOT de Ventas al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "RUC/DNI/Cód" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+022.0 Say "Fecha"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+039.0 Say "Documento"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+064.5 Say "T/C"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+077.0 Say "Neto S/."    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+096.0 Say "IGV S/."     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+113.0 Say "Total S/."   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+130.5 Say "Monto S/."   Font "&mLetRom",11 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "RUC/DNI/Cód" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+022.0 Say "Fecha"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+039.0 Say "Documento"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+064.5 Say "T/C"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+077.0 Say "Neto S/."    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+096.0 Say "IGV S/."     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+113.0 Say "Total S/."   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+130.5 Say "Monto S/."   Font "&mLetRom",11 Style "BQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Lin_1320c
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, mcO0+21.8 TO pfIn, mcO0+21.8
 @ piNi, vcL3-00.4 TO pfIn, vcL3-00.4
 @ piNi, vcL3+22.6 TO pfIn, vcL3+22.6
 @ piNi, vcL3+45.6 TO pfIn, vcL3+45.6
 @ piNi, vcL3+68.6 TO pfIn, vcL3+68.6
ENDPROC
*
PROCEDURE P00_1320c
 RESTORE SCREEN FROM vpAn_99
 DO CASE
      CASE mrEs="3"
           STORE mcO0+108.4 TO vcL3
      OTHERWISE
           STORE mcO0+176.6 TO vcL3
 ENDCASE
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 IF mrEs<"5"
      DO cuAdro WITH ifFs-1.9, mcO0, ffFs+3.5, mcO0+muCo
 ELSE
      DO cuAdro WITH ifFs-1.9, mcO0, ffFs+3.5, mcO0+muCo-0.6
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @fFFS+3.8,mCO0+mUCO-53 Say "DAOT de Ventas al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 IF mrEs<"5"
      @ ifFs-1.8, mcO0-0.6 TO ifFs-0.4, mcO0+muCo+0.3 PATTERN 1
      @ ffFs+1.6, mcO0-0.6 TO ffFs+3.4, mcO0+muCo+0.3 PATTERN 1
 ELSE
      @ ifFs-1.8, mcO0-0.6 TO ifFs-0.4, mcO0+muCo-0.2 PATTERN 1
      @ ffFs+1.6, mcO0-0.6 TO ffFs+3.4, mcO0+muCo-0.2 PATTERN 1
 ENDIF
 @ ffFs+1.5, vcL3-00.4 TO ffFs+3.3, vcL3-00.4
 @ ffFs+1.5, vcL3+22.6 TO ffFs+3.3, vcL3+22.6
 @ ffFs+1.5, vcL3+45.6 TO ffFs+3.3, vcL3+45.6
 @ ffFs+1.5, vcL3+68.6 TO ffFs+3.3, vcL3+68.6
 @iFFS-1.7,mCO0+00.2 Say "RUC/Doc.Identidad"   Font "&mLetAri",9  Style "BQ"
 @iFFS-1.7,vCL3+07.0 Say "Neto S/."            Font "&mLetAri",9  Style "BQ"
 @iFFS-1.7,mCO0+22.2 Say "Nombre/Razon Social" Font "&mLetAri",9  Style "BQ"
 @iFFS-1.7,vCL3+30.0 Say "IGV  S/."            Font "&mLetAri",9  Style "BQ"
 @iFFS-1.7,vCL3+52.0 Say "Total S/."           Font "&mLetAri",9  Style "BQ"
 @iFFS-1.7,vCL3+70.0 Say "Neto(FA)/Total(BO)"  Font "&mLetAri",9  Style "BQ"
 @fFFS+1.9,vCL3-12.0 Say "TOTALES:"            Font "&mLetAri",9  Style "BQ"
 @fFFS+1.9,vCL3+00.0 Say tNET                  Font "&mLetAri",9  Style "BQ" Size 1,18.7 Pict "9,999,999,999.99"
 @fFFS+1.9,vCL3+23.0 Say tIGV                  Font "&mLetAri",9  Style "BQ" Size 1,18.7 Pict "9,999,999,999.99"
 @fFFS+1.9,vCL3+46.0 Say tTOT                  Font "&mLetAri",9  Style "BQ" Size 1,18.7 Pict "9,999,999,999.99"
 @fFFS+1.9,vCL3+69.0 Say tTO2                  Font "&mLetAri",9  Style "BQ" Size 1,18.7 Pict "9,999,999,999.99"
 @fFFS+2.0,mCO0+02.0 Say "FA:"                 Font "&mLetAri",10 Style "BQ"
 @fFFS+2.0,mCO0+07.0 Say tNFA                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFFS+2.0,mCO0+20.0 Say "BO:"                 Font "&mLetAri",10 Style "BQ"
 @fFFS+2.0,mCO0+25.0 Say tNBO                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFFS+2.0,mCO0+38.0 Say "NC:"                 Font "&mLetAri",10 Style "BQ"
 @fFFS+2.0,mCO0+43.0 Say tNCR                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFFS+2.0,mCO0+56.0 Say "ND:"                 Font "&mLetAri",10 Style "BQ"
 @fFFS+2.0,mCO0+61.0 Say tNDE                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 DO liN_1320c WITH ifFs-1.8, ffFs+1.5
ENDPROC
*
PROCEDURE See_1320c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
      CASE psEe="i"
           SEEK UPPER(inOm)+ALLTRIM(irUc)+"*"
      CASE psEe="u"
           SEEK UPPER(unOm)+ALLTRIM(urUc)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1320c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE irUc TO vrUc
           STORE inOm TO vnOm
      CASE pmU1="u" .AND. pmU2="v"
           STORE urUc TO vrUc
           STORE unOm TO vnOm
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2ruc TO vrUc
           STORE ftM2nom TO vnOm
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2ruc TO urUc
           STORE ftM2nom TO unOm
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2ruc TO irUc
           STORE ftM2nom TO inOm
 ENDCASE
ENDPROC
*
PROCEDURE Res_1320c
 DO p00_1320a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1320c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 SET ORDER TO FTM2NOM
 GOTO TOP
 DO seE_1320c WITH "i"
 DO paN_1320c
 DO seE_1320c WITH "i"
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF ALLTRIM(vrUc)+"*"=ALLTRIM(ftM2ruc)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE ifFs TO vfFs
      DO muE_1320c WITH "i", "v"
 ENDIF
 DO seE_1320c WITH "v"
 DO diS_1320c WITH "R"
ENDPROC
*
PROCEDURE Clp_1320c
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1320c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1320c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           DO muE_1320c WITH "F", "v"
           DO diS_1320c WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1320c
 PRIVATE pfFs
 = INKEY(0.01)
 STORE 0.2 TO pfFs
 ACTIVATE WINDOW mpAn_hlp
 @ pfFs+00, 01 SAY  ;
   "En esta parte de la consulta, se muestra un Resumen General totalizado en"
 @ pfFs+01, 01 SAY  ;
   "S/., en el rango de fechas seleccionadas. Todo son Totales sin IGV."
 @ pfFs+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfFs+05, 26 SAY ":" STYLE "BT"
 @ pfFs+06, 26 SAY ":" STYLE "BT"
 @ pfFs+07, 26 SAY ":" STYLE "BT"
 @ pfFs+08, 26 SAY ":" STYLE "BT"
 @ pfFs+09, 26 SAY ":" STYLE "BT"
 @ pfFs+10, 26 SAY ":" STYLE "BT"
 @ pfFs+11, 26 SAY ":" STYLE "BT"
 @ pfFs+12, 26 SAY ":" STYLE "BT"
 @ pfFs+13, 26 SAY ":" STYLE "BT"
 @ pfFs+14, 26 SAY ":" STYLE "BT"
 @ pfFs+15, 26 SAY ":" STYLE "BT"
 @ pfFs+16, 26 SAY ":" STYLE "BT"
 @ pfFs+17, 26 SAY ":" STYLE "BT"
 @ pfFs+05, 08 SAY "ESC" STYLE "BT"
 @ pfFs+06, 08 SAY "F10" STYLE "BT"
 @ pfFs+07, 08 SAY "F1" STYLE "BT"
 @ pfFs+08, 08 SAY "F8" STYLE "BT"
 @ pfFs+09, 08 SAY "F9" STYLE "BT"
 @ pfFs+10, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfFs+11, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfFs+12, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfFs+13, 08 SAY "PAGE UP" STYLE "BT"
 @ pfFs+14, 08 SAY "HOME" STYLE "BT"
 @ pfFs+15, 08 SAY "END" STYLE "BT"
 @ pfFs+16, 08 SAY "CTRL P" STYLE "BT"
 @ pfFs+17, 08 SAY "ENTER" STYLE "BT"
 @ pfFs+05, 28 SAY "Regresar a Cabecera"
 @ pfFs+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfFs+07, 28 SAY "Ayuda del Programa"
 @ pfFs+08, 28 SAY "Pasar Datos Generales a Excel"
 @ pfFs+09, 28 SAY "Pasar Datos Detallados a Excel"
 @ pfFs+10, 28 SAY "Línea inferior"
 @ pfFs+11, 28 SAY "Línea superior"
 @ pfFs+12, 28 SAY "Página siguiente"
 @ pfFs+13, 28 SAY "Página anterior"
 @ pfFs+14, 28 SAY "Primera línea"
 @ pfFs+15, 28 SAY "Última línea"
 @ pfFs+16, 28 SAY "Imprimir Listado de Ventas"
 @ pfFs+17, 28 SAY "Ver detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
