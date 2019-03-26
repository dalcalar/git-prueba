 = INKEY(0.01)
 SELECT teMporal_2
 SUM ftM2tot TO tvT1 FOR ftM2ven=vvEn .AND. ftM2mon=1
 SUM ftM2tot TO tvT2 FOR ftM2ven=vvEn .AND. ftM2mon=2
 SUM ftM2net TO tvN1 FOR ftM2ven=vvEn .AND. ftM2mon=1
 SUM ftM2net TO tvN2 FOR ftM2ven=vvEn .AND. ftM2mon=2
 SUM ftM2cm1 TO tvC1 FOR ftM2ven=vvEn .AND. ftM2mon=1
 SUM ftM2cm1 TO tvC2 FOR ftM2ven=vvEn .AND. ftM2mon=2
 DO p00_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vvEn
 DO paN_3560c
 STORE ifFs TO vfFs
 DO muE_3560c WITH "i", "v"
 DO seE_3560c WITH "v"
 DO diS_3560c WITH "R"
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
           DO reS_3560c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3560c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3560c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3560c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3560c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3560c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xl0_0000a WITH "Comisiones por Pagos a Cuenta: "+ ;
                   ALLTRIM(vnVe), "Comisiones", 8
                pxLs.ceLls(3, 01).vaLue = "Documento"
                pxLs.ceLls(3, 02).vaLue = "Emision"
                pxLs.ceLls(3, 03).vaLue = "F.Pago"
                pxLs.ceLls(3, 04).vaLue = "Cliente"
                pxLs.ceLls(3, 05).vaLue = "Moneda"
                pxLs.ceLls(3, 06).vaLue = "Neto"
                pxLs.ceLls(3, 07).vaLue = "% Com"
                pxLs.ceLls(3, 08).vaLue = "Comision"
                pxLs.raNge(pxLs.ceLls(2,01), pxLs.ceLls(2,8)).inSert
                pxLs.ceLls(2, 1).vaLue = "Del "+DTOC(dfEm)+" al "+DTOC(hfEm)
                DO coLbln
                SELECT teMporal_2
                GOTO TOP
                STORE 5 TO viT1
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT "Leyendo: "+ftM2tdo+":"+ftM2ser+ ;
                          "-"+ftM2doc
                     pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,11)).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM2tdo+":"+ftM2ser+"-"+ ;
                               ftM2doc
                     pxLs.ceLls(viT1, 02).vaLue = DTOC(ftM2fem)
                     pxLs.ceLls(viT1, 03).vaLue = DTOC(ftM2fca)
                     pxLs.ceLls(viT1, 04).vaLue = ftM2cli
                     IF ftM2mon=1
                          pxLs.ceLls(viT1, 5).vaLue = "S/."
                     ELSE
                          pxLs.ceLls(viT1, 5).vaLue = "US$"
                     ENDIF
                     pxLs.ceLls(viT1, 06).vaLue = ftM2net
                     pxLs.ceLls(viT1, 07).vaLue = ftM2pco
                     pxLs.ceLls(viT1, 08).vaLue = ftM2cm1
                     STORE viT1+1 TO viT1
                     SKIP
                ENDDO
                pxLs.raNge(pxLs.coLumns(6), pxLs.coLumns(8)).nuMberformat =  ;
                          "#,##0.00"
                pxLs.raNge(pxLs.coLumns(6),  ;
                          pxLs.coLumns(8)).hoRizontalalignment = 1
                pxLs.coLumns(07).nuMberformat = "##0.000"
                pxLs.ceLls(viT1, 5).vaLue = "Total S/."
                pxLs.ceLls(viT1, 6).vaLue = tvN1
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.siZe = 10
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.naMe = "Times New Roman"
                STORE viT1+1 TO viT1
                pxLs.ceLls(viT1, 5).vaLue = "Total US$"
                pxLs.ceLls(viT1, 6).vaLue = tvN2
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.siZe = 10
                pxLs.raNge(pxLs.ceLls(viT1,5), pxLs.ceLls(viT1, ;
                          8)).foNt.naMe = "Times New Roman"
                DO xl1_0000a
                WAIT CLEAR
                SELECT teMporal_2
                DO seE_3560c WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3560c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal_2
                DO seE_3560c WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vvEn
                DO CASE
                     CASE ftM2tdo+ftM2ser+ftM2doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3560c
                               OTHERWISE
                                    DO seE_3560c WITH "v"
                                    DO diS_3560c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3560c WITH "i", "v"
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vvEn+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. ftM2ven<>vvEn
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ftM2tdo+ftM2ser+ftM2doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3560c
                               OTHERWISE
                                    DO seE_3560c WITH "v"
                                    DO diS_3560c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3560c WITH "u", "v"
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM2ven<>vvEn
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifFs, vcO0, ffFs, vcO0+vuCo, 1
                               DO li1_3560c WITH ifFs, ffFs+1
                               DO li2_3560c WITH ifFs, ffFs+1
                               DO muE_3560c WITH "F", "v"
                               DO muE_3560c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3560c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3560c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM2ven<>vvEn
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifFs, vcO0, ffFs, vcO0+vuCo, 1
                               DO li1_3560c WITH ifFs, ffFs+1
                               DO li2_3560c WITH ifFs, ffFs+1
                               DO muE_3560c WITH "F", "v"
                               DO muE_3560c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3560c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3560c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3560c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM2ven<>vvEn
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3560c
                          STORE ifFs TO vfFs
                          DO muE_3560c WITH "i", "v"
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3560c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM2ven<>vvEn
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ftM2ven<>vvEn
                               GOTO TOP
                               SEEK vvEn
                          ENDIF
                          DO paN_3560c
                          STORE ifFs TO vfFs
                          DO muE_3560c WITH "i", "v"
                          DO seE_3560c WITH "v"
                          DO diS_3560c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3560c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3560c
 PARAMETER ptPo
 STORE ifFs TO vfFs, ufFs
 DO muE_3560c WITH "F", "i"
 DO muE_3560c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ftM2ven=vvEn .AND. vfFs<ffFs+1
      DO diS_3560c WITH "N"
      DO muE_3560c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc1
      @ ufFs+1, vcO0 CLEAR TO ffFs+1, vcO0+vuCo
      DO li1_3560c WITH ufFs+1, ffFs+1
      DO li2_3560c WITH ufFs+1, ffFs+1
 ENDIF
 RELEASE ptPo
ENDPROC
*
PROCEDURE Dis_3560c
 PARAMETER ptIp
 PRIVATE psIg
 DO CASE
      CASE ptIp="N" .AND. (ftM2tdo="NC" .OR. ftM2tdo="N1" .OR. ftM2tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (ftM2tdo="NC" .OR. ftM2tdo="N1" .OR. ftM2tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF ftM2mon=1
      STORE "S/." TO psIg
 ELSE
      STORE "US$" TO psIg
 ENDIF
 @vFFS,vCO0-000.2 Say FTM2TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFS,vCO0+003.8 Say FTM2SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFS,vCO0+008.3 Say FTM2DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFS,vCO0+018.8 Say FTM2FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,vCO0+032.0 Say FTM2FCA Font "&mLetAri",9 Style "NQ" Size 1,12.6
 DO CASE
      CASE mrEs="3"
           @vFFS,vCO0+45.2 Say FTM2CLI Font "&mLetAri",9 Style "NQ" Size 1,097.2 Pict "@S99"
      CASE mrEs="4"
           @vFFS,vCO0+45.2 Say FTM2CLI Font "&mLetAri",9 Style "NQ" Size 1,149.2 Pict "@S151"
      OTHERWISE
           @vFFS,vCO0+45.2 Say FTM2CLI Font "&mLetAri",9 Style "NQ" Size 1,166.1 Pict "@S167"
 ENDCASE
 @vFFS,vCO1+00.5 Say pSIG    Font "&mLetAri",9 Style "NQ" Size 1,04.8
 @vFFS,vCO1+05.3 Say FTM2TOT Font "&mLetAri",9 Style "NQ" Size 1,14.3 Pict "999,999.99"
 @vFFS,vCO1+20.3 Say FTM2NET Font "&mLetAri",9 Style "NQ" Size 1,14.3 Pict "999,999.99"
 @vFFS,vCO1+35.3 Say FTM2PCO Font "&mLetAri",9 Style "NQ" Size 1,08.4 Pict "99.999"
 @vFFS,vCO1+44.3 Say FTM2CM1 Font "&mLetAri",9 Style "NQ" Size 1,14.3 Pict "999,999.99"
 RELEASE psIg
ENDPROC
*
PROCEDURE P00_3560c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFs-1.3, vcO0-0.2, ffFs+4.5, vcO0+vuCo+0.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO cuAdro WITH ifFs-4.3, vcO0, ifFs-2.6, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFFS-4.2,vCO0+00.5 Say "Vendedor:"  Font "&mLetRom",12 Style "BQ"
 @iFFS-4.2,vCO0+16.0 Say "["+vVEN+"]" Font "&mLetRom",12 Style "BT"
 @iFFS-4.2,vCO0+23.0 Say vNVE         Font "&mLetRom",12 Style "BT" Size 1,90 Pict "@S70"
 @ ifFs-1.6, vcO0-00.6 TO ifFs-0.2, vcO0+vuCo+0.5 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.1, vcO0-00.6 TO ffFs+3.9, vcO0+vuCo+0.5 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.1, vcO0 TO ffFs+1.1, vcO0+vuCo
 DO li1_3560c WITH ifFs-1.6, ffFs+1.1
 DO li2_3560c WITH ifFs-0.2, ffFs+1.1
 DO coLsc7
 @iFFS-1.4,vCO0+03.0 Say "Documento" Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,vCO0+20.8 Say "Emisión"   Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,vCO0+33.3 Say "Fec.Pago"  Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE mrEs="3"
           @iFFS-1.4,vCO0+085.4 Say "Cliente" Font "&mLetAri",9 Style "NT"
      CASE mrEs="4"
           @iFFS-1.4,vCO0+115.4 Say "Cliente" Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @iFFS-1.4,vCO0+125.4 Say "Cliente" Font "&mLetAri",9 Style "NT"
 ENDCASE
 @iFFS-1.4,vCO1+07.0 Say "Total"    Font "&mLetAri",9 Style "NQ"
 @iFFS-1.4,vCO1+25.0 Say "Neto"     Font "&mLetAri",9 Style "NQ"
 @iFFS-1.4,vCO1+35.5 Say "% Com"    Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,vCO1+46.0 Say "Comisión" Font "&mLetAri",9 Style "NT"
 @ ffFs+2.5, vcO1+00.1 TO ffFs+2.5, vcO0+vuCo+0.5
 @ ffFs+1.1, vcO1+00.1 TO ffFs+3.9, vcO0+vuCo+0.5
 @ ffFs+1.1, vcO1+19.9 TO ffFs+3.9, vcO1+35.1
 @ ffFs+1.1, vcO1+43.9 TO ffFs+3.9, vcO1+43.9
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Li1_3560c
 PARAMETER piN1, pfI1
 DO coLbln
 @ piN1, vcO0+18.3 TO pfI1, vcO0+18.3
 @ piN1, vcO0+31.5 TO pfI1, vcO0+31.5
 @ piN1, vcO0+44.8 TO pfI1, vcO0+44.8
 @ piN1, vcO1+00.1 TO pfI1, vcO1+00.1
 @ piN1, vcO1+19.9 TO pfI1, vcO1+19.9
 @ piN1, vcO1+34.9 TO pfI1, vcO1+34.9
 @ piN1, vcO1+43.9 TO pfI1, vcO1+43.9
ENDPROC
*
PROCEDURE Li2_3560c
 PARAMETER piN2, pfI2
 DO coLbln
 @ piN2, vcO0+3.4 TO pfI2, vcO0+3.4
 @ piN2, vcO0+7.9 TO pfI2, vcO0+7.9
ENDPROC
*
PROCEDURE P01_3560c
 DO coLsc7
 @fFFS+1.3,vCO1+0.5 Say "S/." Font "&mLetAri",9 Style "BQ"
 @fFFS+2.7,vCO1+0.5 Say "US$" Font "&mLetAri",9 Style "BQ"
 IF tvT1>999999.99
      @fFFS+1.3,vCO1+05.3 Say tVT1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+1.3,vCO1+05.3 Say tVT1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
 IF tvN1>999999.99
      @fFFS+1.3,vCO1+20.3 Say tVN1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+1.3,vCO1+20.3 Say tVN1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
 IF tvC1>999999.99
      @fFFS+1.3,vCO1+44.3 Say tVC1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+1.3,vCO1+44.3 Say tVC1 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
 IF tvT2>999999.99
      @fFFS+2.7,vCO1+05.3 Say tVT2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+2.7,vCO1+05.3 Say tVT2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
 IF tvN2>999999.99
      @fFFS+2.7,vCO1+20.3 Say tVN2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+2.7,vCO1+20.3 Say tVN2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
 IF tvC2>999999.99
      @fFFS+2.7,vCO1+44.3 Say tVC2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "9999999.99"
 ELSE
      @fFFS+2.7,vCO1+44.3 Say tVC2 Font "&mLetAri",9 Style "BQ" Size 1,12 Pict "999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Imp_3560c
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN MODSET
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3560c
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3560c
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 126 TO ptAm
           STORE 21 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 118 TO ptAm
           STORE 21 TO mcLn
      OTHERWISE
           STORE 118 TO ptAm
           STORE 08 TO mcLn
 ENDCASE
 STORE 0 TO vlIn, vpAg
 DO caB_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 SEEK vvEn
 DO WHILE  .NOT. EOF() .AND. ftM2ven=vvEn
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3
           DO caB_3560c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE ftM2mon=1
                     STORE "S/." TO vsIg
                OTHERWISE
                     STORE "US$" TO vsIg
           ENDCASE
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+000.2 Say FTM2TDO+":"+FTM2SER+"-"+FTM2DOC Font "&mLetAri",8 Style "NQ" Size 1,17.2
                     @vLIN,mCLN+018.0 Say FTM2FEM                         Font "&mLetAri",8 Style "NQ" Size 1,11
                     @vLIN,mCLN+030.3 Say FTM2CLI                         Font "&mLetAri",8 Style "NQ" Size 1,30 Pict "@S32"
                     @vLIN,mCLN+073.1 Say vSIG                            Font "&mLetAri",8 Style "NQ"
                     @vLIN,mCLN+087.6 Say FTM2TOT                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     @vLIN,mCLN+101.1 Say FTM2NET                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     IF mcIa<>"NP"
                          @vLIN,mCLN+110 Say FTM2PCO                        Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                     ENDIF
                     @vLIN,mCLN+120.8 Say FTM2CM1                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN+000.2 Say FTM2TDO+":"+FTM2SER+"-"+FTM2DOC Font "&mLetAri",8 Style "NQ" Size 1,17.2
                     @vLIN,mCLN+018.0 Say FTM2FEM                         Font "&mLetAri",8 Style "NQ" Size 1,11
                     @vLIN,mCLN+030.3 Say FTM2CLI                         Font "&mLetAri",8 Style "NQ" Size 1,30 Pict "@S32"
                     @vLIN,mCLN+073.1 Say vSIG                            Font "&mLetAri",8 Style "NQ"
                     @vLIN,mCLN+087.6 Say FTM2TOT                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     @vLIN,mCLN+101.1 Say FTM2NET                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     IF mcIa<>"NP"
                          @vLIN,mCLN+110 Say FTM2PCO                        Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                     ENDIF
                     @vLIN,mCLN+120.8 Say FTM2CM1                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+000.2 Say FTM2TDO+":"+FTM2SER+"-"+FTM2DOC Font "&mLetAri",8 Style "NQ" Size 1,17.2
                     @vLIN,mCLN+018.0 Say FTM2FEM                         Font "&mLetAri",8 Style "NQ" Size 1,11
                     @vLIN,mCLN+030.3 Say FTM2CLI                         Font "&mLetAri",8 Style "NQ" Size 1,30 Pict "@S32"
                     @vLIN,mCLN+073.1 Say vSIG                            Font "&mLetAri",8 Style "NQ"
                     @vLIN,mCLN+084.0 Say FTM2TOT                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     @vLIN,mCLN+098.1 Say FTM2NET                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
                     IF mcIa<>"NP"
                          @vLIN,mCLN+112.0 Say FTM2PCO                      Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                     ENDIF
                     @vLIN,mCLN+120.8 Say FTM2CM1                         Font "&mLetAri",8 Style "NQ" Size 1,12.9 Pict "999,999.99"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT teMporal_2
      SKIP
 ENDDO
 IF vpAg>muPg
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3560c
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
      @vLIN,mCLN Say "Comisiones x Pago A/C de "+AllTrim(vNVE) Font "&mLetRom",14 Style "BQI"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 DO coL_pr1
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Res_3560c
 DO muE_3560c WITH "v", "c"
 DO reS_3560b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO seE_3560c WITH "i"
 DO WHILE  .NOT. EOF() .AND. ftM2ven=vvEn .AND. vfFs<ffFs+1
      IF ftM2tdo+ftM2ser+ftM2doc=vtDo+vsEr+vdOc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_3560c WITH "v", "c"
      DO muE_3560c WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_3560c WITH "i"
 DO paN_3560c
 STORE cfFs TO vfFs
 DO muE_3560c WITH "c", "v"
 DO seE_3560c WITH "v"
 DO diS_3560c WITH "R"
ENDPROC
*
PROCEDURE Mue_3560c
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM2tdo TO vtDo
           STORE ftM2ser TO vsEr
           STORE ftM2doc TO vdOc
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM2tdo TO itDo
           STORE ftM2ser TO isEr
           STORE ftM2doc TO idOc
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM2tdo TO utDo
           STORE ftM2ser TO usEr
           STORE ftM2doc TO udOc
 ENDCASE
 RELEASE ptP1, ptP2
ENDPROC
*
PROCEDURE See_3560c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vvEn+vtDo+vsEr+vdOc
      CASE psEe="i"
           SEEK vvEn+itDo+isEr+idOc
      CASE psEe="u"
           SEEK vvEn+utDo+usEr+udOc
 ENDCASE
 RELEASE psEe
ENDPROC
*
PROCEDURE Clp_3560c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
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
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+3.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           DO diS_3560c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3560c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3560c WITH "F", "v"
           DO diS_3560c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3560c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos comisio-"
 @ pfIl+1, 02 SAY  ;
   "nados del vendedor elegido, adicionalmente se hace el cierre para su pa-"
 @ pfIl+2, 02 SAY "go."
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+6 TO pfIl
 @ pfIl+00, 22 SAY ":" STYLE "BT"
 @ pfIl+01, 22 SAY ":" STYLE "BT"
 @ pfIl+02, 22 SAY ":" STYLE "BT"
 @ pfIl+03, 22 SAY ":" STYLE "BT"
 @ pfIl+04, 22 SAY ":" STYLE "BT"
 @ pfIl+05, 22 SAY ":" STYLE "BT"
 @ pfIl+06, 22 SAY ":" STYLE "BT"
 @ pfIl+07, 22 SAY ":" STYLE "BT"
 @ pfIl+08, 22 SAY ":" STYLE "BT"
 @ pfIl+09, 22 SAY ":" STYLE "BT"
 @ pfIl+10, 22 SAY ":" STYLE "BT"
 @ pfIl+11, 22 SAY ":" STYLE "BT"
 @ pfIl+12, 22 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "ESC" STYLE "BT"
 @ pfIl+01, 02 SAY "F10" STYLE "BT"
 @ pfIl+02, 02 SAY "F1" STYLE "BT"
 @ pfIl+03, 02 SAY "F7" STYLE "BT"
 @ pfIl+04, 02 SAY "F8" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+06, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "HOME" STYLE "BT"
 @ pfIl+10, 02 SAY "END" STYLE "BT"
 @ pfIl+11, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+12, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 24 SAY "Regresar a la pantalla anterior"
 @ pfIl+01, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 24 SAY "Ayuda del Programa"
 @ pfIl+03, 24 SAY "Marcar/Desmarcar Documentos para Cierre"
 @ pfIl+04, 24 SAY "Pasar Datos a Excel"
 @ pfIl+05, 24 SAY "Línea inferior"
 @ pfIl+06, 24 SAY "Línea superior"
 @ pfIl+07, 24 SAY "Página siguiente"
 @ pfIl+08, 24 SAY "Página anterior"
 @ pfIl+09, 24 SAY "Primera línea"
 @ pfIl+10, 24 SAY "Última línea"
 @ pfIl+11, 24 SAY "Imprime Comisiones del Titular"
 @ pfIl+12, 24 SAY "Generar Cierre de Comisiones"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
