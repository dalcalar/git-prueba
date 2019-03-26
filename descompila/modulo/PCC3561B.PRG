 = INKEY(0.01)
 SELECT teMporal
 IF LEN(ALLTRIM(ivEn))=0
      GOTO TOP
      DO paN_3561b
      DO muE_3560b IN PCC3560B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3560b IN PCC3560B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3560b IN PCC3560B WITH "v"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3560b IN PCC3560B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3560b IN PCC3560B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1ven=vvEn
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3560b IN PCC3560B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3560b IN PCC3560B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3560b IN PCC3560B WITH "i"
      SET NEAR OFF
      DO paN_3561b
      STORE ifIl TO vfIl
      DO muE_3560b IN PCC3560B WITH "i", "v"
      DO seE_3560b IN PCC3560B WITH "v"
 ENDIF
 DO diS_3561b WITH "R"
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
           DO reS_3561b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3561b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3561b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3561b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3560b IN PCC3560B
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3561b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                vxLs = SYS(5)+CURDIR()+mvIn+ ;
                       "Comisiones_Documentos_Cancelados_y_Emitidos.XLS"
                Export to &vXLS Type XLS
                DO xlS_0000a WITH  ;
                   "Comisiones x Documentos Cancelados y Emitidos del "+ ;
                   DTOC(dfEm)+" al "+DTOC(hfEm), "Comisiones", 28
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,28)).inSert
                pxLs.raNge(pxLs.ceLls(1,01), pxLs.ceLls(1,28)).meRge
                pxLs.raNge(pxLs.ceLls(3,04), pxLs.ceLls(3,11)).meRge
                pxLs.raNge(pxLs.ceLls(3,12), pxLs.ceLls(3,19)).meRge
                pxLs.raNge(pxLs.ceLls(3,21), pxLs.ceLls(3,24)).meRge
                pxLs.raNge(pxLs.ceLls(3,25), pxLs.ceLls(3,28)).meRge
                pxLs.raNge(pxLs.coLumns(3),  ;
                          pxLs.coLumns(28)).hoRizontalalignment = 1
                pxLs.raNge(pxLs.coLumns(3),  ;
                          pxLs.coLumns(28)).nuMberformat = "##,###,##0.00"
                pxLs.coLumns(01).hoRizontalalignment = 1
                pxLs.coLumns(07).nuMberformat = "##0.000"
                pxLs.coLumns(22).nuMberformat = "##0.000"
                WITH pxLs.raNge(pxLs.ceLls(3,4),pxLs.ceLls(3,28))
                     .foNt.boLd = .T.
                     .foNt.siZe = 11
                     .foNt.naMe = "Times New Roman"
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                     .foNt.coLorindex = 1
                     .inTerior.coLorindex = 15
                     .hoRizontalalignment = 3
                     .veRticalalignment = 2
                ENDWITH
                pxLs.ceLls(3, 04).vaLue = "S/."
                pxLs.ceLls(3, 12).vaLue = "US$"
                pxLs.ceLls(3, 21).vaLue = "S/."
                pxLs.ceLls(3, 25).vaLue = "US$"
                pxLs.ceLls(4, 01).vaLue = "Codigo"
                pxLs.ceLls(4, 02).vaLue = "Vendedor"
                pxLs.ceLls(4, 03).vaLue = "% Com"
                pxLs.ceLls(4, 04).vaLue = "Total incl"
                pxLs.ceLls(4, 05).vaLue = "Total s/IGV"
                pxLs.ceLls(4, 06).vaLue = "Com.Facturas"
                pxLs.ceLls(4, 07).vaLue = "Com.Boletas"
                pxLs.ceLls(4, 08).vaLue = "Com.Letras"
                pxLs.ceLls(4, 09).vaLue = "Com.NC"
                pxLs.ceLls(4, 10).vaLue = "Com.NP"
                pxLs.ceLls(4, 11).vaLue = "Total Comision"
                pxLs.ceLls(4, 12).vaLue = "Total incl"
                pxLs.ceLls(4, 13).vaLue = "Total s/IGV"
                pxLs.ceLls(4, 14).vaLue = "Com.Facturas"
                pxLs.ceLls(4, 15).vaLue = "Com.Boletas"
                pxLs.ceLls(4, 16).vaLue = "Com.Letras"
                pxLs.ceLls(4, 17).vaLue = "Com.NC"
                pxLs.ceLls(4, 18).vaLue = "Com.NP"
                pxLs.ceLls(4, 19).vaLue = "Total Comision"
                pxLs.ceLls(4, 20).vaLue = "% Com.xDoc.Emitido"
                pxLs.ceLls(4, 21).vaLue = "Total s/IGV"
                pxLs.ceLls(4, 22).vaLue = "Com.Facturas"
                pxLs.ceLls(4, 23).vaLue = "Com.Boletas"
                pxLs.ceLls(4, 24).vaLue = "Total Comision"
                pxLs.ceLls(4, 25).vaLue = "Total s/IGV"
                pxLs.ceLls(4, 26).vaLue = "Com.Facturas"
                pxLs.ceLls(4, 27).vaLue = "Com.Boletas"
                pxLs.ceLls(4, 28).vaLue = "Total Comision"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,01)).meRge
                pxLs.raNge(pxLs.ceLls(3,02), pxLs.ceLls(4,02)).meRge
                pxLs.raNge(pxLs.ceLls(3,03), pxLs.ceLls(4,03)).meRge
                WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(4,3))
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                ENDWITH
                SELECT teMporal
                SET ORDER TO 0
                GOTO BOTTOM
                STORE RECNO()+5 TO viT1
                WITH pxLs.raNge(pxLs.ceLls(viT1,4),pxLs.ceLls(viT1,28))
                     .foNt.boLd = .T.
                     .foNt.siZe = 10
                     .foNt.naMe = "Times New Roman"
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                     .foNt.coLorindex = 1
                     .inTerior.coLorindex = 15
                     .hoRizontalalignment = 1
                     .veRticalalignment = 2
                ENDWITH
                pxLs.ceLls(viT1, 04).vaLue = tsOt
                pxLs.ceLls(viT1, 05).vaLue = tsOl
                pxLs.ceLls(viT1, 06).vaLue = tfA1
                pxLs.ceLls(viT1, 07).vaLue = tbO1
                pxLs.ceLls(viT1, 08).vaLue = tlE1
                pxLs.ceLls(viT1, 09).vaLue = tnC1
                pxLs.ceLls(viT1, 10).vaLue = tnP1
                pxLs.ceLls(viT1, 11).vaLue = tcO1
                pxLs.ceLls(viT1, 12).vaLue = tuSt
                pxLs.ceLls(viT1, 13).vaLue = tuSd
                pxLs.ceLls(viT1, 14).vaLue = tfA2
                pxLs.ceLls(viT1, 15).vaLue = tbO2
                pxLs.ceLls(viT1, 16).vaLue = tlE2
                pxLs.ceLls(viT1, 17).vaLue = tnC2
                pxLs.ceLls(viT1, 18).vaLue = tnP2
                pxLs.ceLls(viT1, 19).vaLue = tcO2
                pxLs.ceLls(viT1, 21).vaLue = tsOe
                pxLs.ceLls(viT1, 22).vaLue = teF1
                pxLs.ceLls(viT1, 23).vaLue = teB1
                pxLs.ceLls(viT1, 24).vaLue = teM1
                pxLs.ceLls(viT1, 25).vaLue = tuSe
                pxLs.ceLls(viT1, 26).vaLue = teF2
                pxLs.ceLls(viT1, 27).vaLue = teB2
                pxLs.ceLls(viT1, 28).vaLue = teM2
                DO xl1_0000a
                SELECT teMporal
                SET ORDER TO FTM1NVE
                DO seE_3560b IN PCC3560B WITH "v"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                DO pcC3561c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT teMporal
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3561b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3560b IN PCC3560B WITH "v"
           CASE mkEy=k_Left .AND. vuLt>1
                DO CASE
                     CASE vsW0=1
                          STORE vuLt TO vsW0
                     OTHERWISE
                          STORE vsW0-1 TO vsW0
                ENDCASE
                DO boT_3560a IN PCC3560A
                DO tiT_3561a
                DO toT_3561a
                STORE vfIl TO cfIl
                DO muE_3560b IN PCC3560B WITH "v", "c"
                DO seE_3560b IN PCC3560B WITH "i"
                DO paN_3561b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE cfIl TO vfIl
                DO muE_3560b IN PCC3560B WITH "c", "v"
                DO seE_3560b IN PCC3560B WITH "v"
                DO diS_3561b WITH "R"
           CASE mkEy=k_Right .AND. vuLt>1
                DO CASE
                     CASE vsW0=vuLt
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO boT_3560a IN PCC3560A
                DO tiT_3561a
                DO toT_3561a
                STORE vfIl TO cfIl
                DO muE_3560b IN PCC3560B WITH "v", "c"
                DO seE_3560b IN PCC3560B WITH "i"
                DO paN_3561b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE cfIl TO vfIl
                DO muE_3560b IN PCC3560B WITH "c", "v"
                DO seE_3560b IN PCC3560B WITH "v"
                DO diS_3561b WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1ven=ivEn .AND. vvEn=ivEn
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vvEn=ivEn
                                    DO paN_3561b
                               OTHERWISE
                                    DO seE_3560b IN PCC3560B WITH "v"
                                    DO diS_3561b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3560b IN PCC3560B WITH "i", "v"
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1ven=uvEn .AND. vvEn=uvEn
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vvEn=uvEn
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3561b
                               OTHERWISE
                                    DO seE_3560b IN PCC3560B WITH "v"
                                    DO diS_3561b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3560b IN PCC3560B WITH "u", "v"
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "N"
                          SKIP
                          IF vvEn=uvEn
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO li1_3560a IN PCC3560A WITH ifIl, ffIl+1
                               DO li2_3560a IN PCC3560A WITH ifIl, ffIl+1
                               DO muE_3560b IN PCC3560B WITH "F", "v"
                               DO muE_3560b IN PCC3560B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3560b IN PCC3560B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3560b IN PCC3560B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "N"
                          SKIP -1
                          IF vvEn=ivEn
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO li1_3560a IN PCC3560A WITH ifIl, ffIl+1
                               DO li2_3560a IN PCC3560A WITH ifIl, ffIl+1
                               DO muE_3560b IN PCC3560B WITH "F", "v"
                               DO muE_3560b IN PCC3560B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3560b IN PCC3560B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3560b IN PCC3560B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3560b IN PCC3560B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3561b
                          STORE ifIl TO vfIl
                          DO muE_3560b IN PCC3560B WITH "i", "v"
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3560b IN PCC3560B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3561b
                          STORE ifIl TO vfIl
                          DO muE_3560b IN PCC3560B WITH "i", "v"
                          DO seE_3560b IN PCC3560B WITH "v"
                          DO diS_3561b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3560b IN PCC3560B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3561b
 STORE ifIl TO vfIl, ufIl
 DO muE_3560b IN PCC3560B WITH "F", "i"
 DO muE_3560b IN PCC3560B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3561b WITH "N"
      DO muE_3560b IN PCC3560B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO li1_3560a IN PCC3560A WITH ufIl+1, ffIl+1
      DO li2_3560a IN PCC3560A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3561b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0     Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,04
           @vFIL,mCO0+4.6 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,73.0 Pict "@S75"
           DO CASE
                CASE vsW0=1
                     @vFIL,mCO0+078.1 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     DO CASE
                          CASE ptIp="N"
                               DO coLscz
                          CASE ptIp="R"
                               DO coLblz
                     ENDCASE
                     @vFIL,mCO0+159.8 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=2
                     @vFIL,mCO0+078.1 Say FTM1SOT Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1UST Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     DO CASE
                          CASE ptIp="N"
                               DO coLscz
                          CASE ptIp="R"
                               DO coLblz
                     ENDCASE
                     @vFIL,mCO0+159.8 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=3
                     @vFIL,mCO0+078.1 Say FTM1FA1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1BO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1NC1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1LE1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+159.8 Say FTM1NP1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=4
                     @vFIL,mCO0+078.1 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1FA2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1BO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1NC2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+159.8 Say FTM1LE2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=5
                     @vFIL,mCO0+078.1 Say FTM1EF1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1EB1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1EF2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+159.8 Say FTM1EB2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=6
                     @vFIL,mCO0+078.1 Say FTM1SOE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+098.6 Say FTM1EF1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+118.9 Say FTM1EB1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+139.4 Say FTM1USE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+159.8 Say FTM1EF2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+180.1 Say FTM1EB2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
           ENDCASE
      CASE mrEs="4"
           @vFIL,mCO0     Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,04
           @vFIL,mCO0+4.6 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,84.0 Pict "@S87"
           DO CASE
                CASE vsW0=1
                     @vFIL,mCO0+089.2 Say FTM1SOT Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+109.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+130.0 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+150.4 Say FTM1UST Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+170.8 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+191.2 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+211.6 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+231.9 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=2
                     @vFIL,mCO0+089.2 Say FTM1SOT Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+109.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+130.0 Say FTM1FA1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+150.4 Say FTM1BO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+170.8 Say FTM1NP1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+191.2 Say FTM1NC1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+211.6 Say FTM1LE1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+231.9 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=3
                     @vFIL,mCO0+089.2 Say FTM1UST Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+109.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+130.0 Say FTM1FA2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+150.4 Say FTM1BO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+170.8 Say FTM1NP2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+191.2 Say FTM1NC2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+211.6 Say FTM1LE2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+231.9 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=4
                     @vFIL,mCO0+089.2 Say FTM1SOE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+109.6 Say FTM1EF1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+130.0 Say FTM1EB1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+150.4 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+170.8 Say FTM1USE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+191.2 Say FTM1EF2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+211.6 Say FTM1EB2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+231.9 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
           ENDCASE
      OTHERWISE
           @vFIL,mCO0     Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,04
           @vFIL,mCO0+4.6 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,60.3 Pict "@S62"
           DO CASE
                CASE vsW0=1
                     @vFIL,mCO0+065.6 Say FTM1SOT Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+085.9 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+106.3 Say FTM1FA1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+126.8 Say FTM1BO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+147.2 Say FTM1NP1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+167.5 Say FTM1NC1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+187.9 Say FTM1LE1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+208.3 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+228.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+249.1 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=2
                     @vFIL,mCO0+065.6 Say FTM1UST Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+085.9 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+106.3 Say FTM1FA2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+126.8 Say FTM1BO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+147.2 Say FTM1NP2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+167.5 Say FTM1NC2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+187.9 Say FTM1LE2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+208.3 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+228.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+249.1 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=3
                     @vFIL,mCO0+065.6 Say FTM1SOT Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+085.9 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+106.3 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+126.8 Say FTM1UST Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+147.2 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+167.5 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+187.9 Say FTM1SOE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+208.3 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+228.6 Say FTM1USE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+249.1 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                CASE vsW0=4
                     @vFIL,mCO0+065.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+085.9 Say FTM1SOE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+106.3 Say FTM1EF1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+126.8 Say FTM1EB1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+147.2 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+167.5 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+187.9 Say FTM1USE Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+208.3 Say FTM1EF2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+228.6 Say FTM1EB2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
                     @vFIL,mCO0+249.1 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "999,999,999.99"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Res_3561b
 SET READBORDER ON
 DO reS_3561a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal
 DO diS_3561b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_3561b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
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
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3561b
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3561b
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 131 TO ptAm
           STORE 17 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 101 TO ptAm
           STORE 07 TO mcLn
      OTHERWISE
           STORE 124 TO ptAm
           STORE 03 TO mcLn
 ENDCASE
 DO coL_pr1
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vlIn, vpAg
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3561b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLbln
                     @vLIN,mCLN       Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+007.0 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,43.5 Pict "@S47"
                     @vLIN,mCLN+073.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+094.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+115.6 Say FTM1PCO Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+136.6 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+157.6 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1PC2 Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+178.6 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+007.0 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,43.5 Pict "@S47"
                     @vLIN,mCLN+073.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+094.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+115.6 Say FTM1PCO Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+136.6 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+157.6 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1PC2 Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+178.6 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+007.0 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,43.5 Pict "@S47"
                     @vLIN,mCLN+073.6 Say FTM1SOL Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+094.6 Say FTM1USD Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+115.6 Say FTM1PCO Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+136.6 Say FTM1CO1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+157.6 Say FTM1CO2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1PC2 Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "99.999"
                     @vLIN,mCLN+178.6 Say FTM1EM1 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say FTM1EM2 Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.4 TO vlIn
      SELECT teMporal
      SKIP
 ENDDO
 IF vpAg>muPg
      RETURN
 ENDIF
 IF vlIn>mpAg-3
      DO caB_3561b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+073.6 Say tSOL      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+094.6 Say tUSD      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+115.6 Say tCO1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+136.6 Say tCO2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+157.6 Say tEM1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+178.6 Say tEM2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
           CASE mpRt="1"
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+091.6 Say tSOL      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+112.6 Say tUSD      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+133.6 Say tCO1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+154.6 Say tCO2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+175.6 Say tEM1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+196.6 Say tEM2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
           CASE mpRt="2"
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+073.6 Say tSOL      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+094.6 Say tUSD      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+115.6 Say tCO1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+136.6 Say tCO2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+157.6 Say tEM1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+178.6 Say tEM2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
      ENDCASE
 ENDIF
 IF vpAg>muPg
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3561b
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
      @vLIN,mCLN Say "Comisiones Especiales" Font "&mLetRom",14 Style "BQI"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+000.0 Say "Códi"               Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,mCLN+000.0 Say "Códi"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN+000.0 Say "Códi"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Clp_3561b
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3561b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3560b IN PCC3560B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3560b IN PCC3560B WITH "F", "v"
           DO diS_3561b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
