 = INKEY(0.01)
 DO p00_3551c
 SELECT teMporal_2
 GOTO TOP
 DO paN_3551c
 STORE ifFs TO vfFs
 DO muE_3551c WITH "i", "v"
 DO seE_3551c WITH "v"
 DO diS_3551c WITH "R"
 DO toT_3551a IN PCC3551A
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3551c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3551c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3551c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3551c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3551c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3551c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                IF ftM2est=" "
                     REPLACE ftM2est WITH "@"
                ELSE
                     REPLACE ftM2est WITH " "
                ENDIF
                DO diS_3551c WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE STR(ftM2caj, 2, 0)+STR(ftM2gru, 1, 0)+ftM2tip+ ;
                          ftM2fpa=STR(icJj, 2, 0)+STR(igR1, 1, 0)+itIp+ ;
                          ifPa .AND. STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+ ;
                          vfPa=STR(icJj, 2, 0)+STR(igR1, 1, 0)+itIp+ifPa
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+ ;
                                    vfPa=STR(icJj, 2, 0)+STR(igR1, 1, 0)+ ;
                                    itIp+ifPa
                                    DO paN_3551c
                               OTHERWISE
                                    DO seE_3551c WITH "v"
                                    DO diS_3551c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3551c WITH "i", "v"
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE STR(ftM2caj, 2, 0)+STR(ftM2gru, 1, 0)+ftM2tip+ ;
                          ftM2fpa=STR(ucJj, 2, 0)+STR(ugR1, 1, 0)+utIp+ ;
                          ufPa .AND. STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+ ;
                          vfPa=STR(ucJj, 2, 0)+STR(ugR1, 1, 0)+utIp+ufPa
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+ ;
                                    vfPa=STR(ucJj, 2, 0)+STR(ugR1, 1, 0)+ ;
                                    utIp+ufPa
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3551c
                               OTHERWISE
                                    DO seE_3551c WITH "v"
                                    DO diS_3551c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3551c WITH "u", "v"
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "N"
                          SKIP
                          IF STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+vfPa= ;
                             STR(ucJj, 2, 0)+STR(ugR1, 1, 0)+utIp+ufPa
                               DO coLsc7
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3551c WITH ifFs, ffFs+1
                               DO muE_3551c WITH "F", "v"
                               DO muE_3551c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3551c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3551c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "N"
                          SKIP -1
                          IF STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+vfPa= ;
                             STR(icJj, 2, 0)+STR(igR1, 1, 0)+itIp+ifPa
                               DO coLsc7
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3551c WITH ifFs, ffFs+1
                               DO muE_3551c WITH "F", "v"
                               DO muE_3551c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3551c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3551c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3551c WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3551c
                          STORE ifFs TO vfFs
                          DO muE_3551c WITH "i", "v"
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3551c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3551c
                          STORE ifFs TO vfFs
                          DO muE_3551c WITH "i", "v"
                          DO seE_3551c WITH "v"
                          DO diS_3551c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3551c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3551c
 STORE ifFs TO vfFs, ufFs
 DO muE_3551c WITH "F", "i"
 DO muE_3551c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_3551c WITH "N"
      DO muE_3551c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc7
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3551c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3551c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM2est="@"
           DO coLscr
      CASE ptIp="R" .AND. ftM2est="@"
           DO coLblr
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,iCL1+000.1 Say " "+Str(FTM2CAJ,2,0)+" " Font "&mLetAri",9 Style "NQ" Size 1,03.0
 @vFFS,iCL1+004.2 Say " "+Str(FTM2GRU,1,0)+" " Font "&mLetAri",9 Style "NQ" Size 1,03.0
 @vFFS,iCL1+008.2 Say FTM2NTI                  Font "&mLetAri",9 Style "NQ" Size 1,40.1 Pict "@S43"
 @vFFS,iCL1+049.4 Say FTM2NFP                  Font "&mLetAri",9 Style "NQ" Size 1,40.1 Pict "@S43"
 @vFFS,iCL1+090.6 Say FTM2HO1                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,iCL1+107.1 Say FTM2OT1                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,iCL1+123.4 Say FTM2TO1                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,iCL1+139.9 Say FTM2HO2                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,iCL1+156.4 Say FTM2OT2                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,iCL1+172.9 Say FTM2TO2                  Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
ENDPROC
*
PROCEDURE P00_3551c
 DO coLsc7
 DO cuAdro WITH ifFs-1.7, icL1, ffFs+1, ucL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_3551c WITH ifFs-1.9, ffFs+1.3
 DO coLsc7
 @ ifFs-0.4, icL1 TO ifFs-0.4, ucL1
 @iFFS-1.6,iCL1+000.2 Say "Cj"                  Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+004.2 Say "Gr"                  Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+017.2 Say "Tipo de cancelacion" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+061.4 Say "Forma de Pago"       Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+111.1 Say "Otros"               Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+125.9 Say "Total "+mSIG         Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+159.6 Say "Otros"               Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+174.1 Say "Total US$"           Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+091.6 Say vFEC                  Font "&mLetAri",9 Style "BQ"
 @iFFS-1.6,iCL1+141.1 Say vFEC                  Font "&mLetAri",9 Style "BQ"
 DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Lin_3551c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icL1+003.5 TO pfIn, icL1+003.5
 @ piNi, icL1+007.6 TO pfIn, icL1+007.6
 @ piNi, icL1+048.8 TO pfIn, icL1+048.8
 @ piNi, icL1+090.0 TO pfIn, icL1+090.0
 @ piNi, icL1+106.4 TO pfIn, icL1+106.4
 @ piNi, icL1+122.8 TO pfIn, icL1+122.8
 @ piNi, icL1+139.2 TO pfIn, icL1+139.2
 @ piNi, icL1+155.6 TO pfIn, icL1+155.6
 @ piNi, icL1+172.3 TO pfIn, icL1+172.3
ENDPROC
*
PROCEDURE Clp_3551c
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=icL1+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=icL1+muCo
           DO diS_3551c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3551c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3551c WITH "F", "v"
           DO diS_3551c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3551c
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vcJj TO icJj
           STORE vgR1 TO igR1
           STORE vtIp TO itIp
           STORE vfPa TO ifPa
      CASE ptP1="i" .AND. ptP2="v"
           STORE icJj TO vcJj
           STORE igR1 TO vgR1
           STORE itIp TO vtIp
           STORE ifPa TO vfPa
      CASE ptP1="u" .AND. ptP2="v"
           STORE ucJj TO vcJj
           STORE ugR1 TO vgR1
           STORE utIp TO vtIp
           STORE ufPa TO vfPa
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM2caj TO vcJj
           STORE ftM2gru TO vgR1
           STORE ftM2tip TO vtIp
           STORE ftM2fpa TO vfPa
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM2caj TO ucJj
           STORE ftM2gru TO ugR1
           STORE ftM2tip TO utIp
           STORE ftM2fpa TO ufPa
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM2caj TO icJj
           STORE ftM2gru TO igR1
           STORE ftM2tip TO itIp
           STORE ftM2fpa TO ifPa
 ENDCASE
ENDPROC
*
PROCEDURE See_3551c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK STR(vcJj, 2, 0)+STR(vgR1, 1, 0)+vtIp+vfPa
      CASE psEe="i"
           SEEK STR(icJj, 2, 0)+STR(igR1, 1, 0)+itIp+ifPa
      CASE psEe="u"
           SEEK STR(ucJj, 2, 0)+STR(ugR1, 1, 0)+utIp+ufPa
 ENDCASE
ENDPROC
*
PROCEDURE Res_3551c
 SET READBORDER ON
 DO reS_3551b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3551c WITH "R"
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
PROCEDURE Hl1_3551c
 PRIVATE pfFs
 = INKEY(0.01)
 STORE 0 TO pfFs
 ACTIVATE WINDOW mpAn_hlp
 @ pfFs+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Totales en Soles y Do-"
 @ pfFs+01, 02 SAY "lares totalizados."
 @ pfFs+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfFs+05, 30 SAY ":" STYLE "BT"
 @ pfFs+06, 30 SAY ":" STYLE "BT"
 @ pfFs+07, 30 SAY ":" STYLE "BT"
 @ pfFs+08, 30 SAY ":" STYLE "BT"
 @ pfFs+09, 30 SAY ":" STYLE "BT"
 @ pfFs+10, 30 SAY ":" STYLE "BT"
 @ pfFs+11, 30 SAY ":" STYLE "BT"
 @ pfFs+12, 30 SAY ":" STYLE "BT"
 @ pfFs+13, 30 SAY ":" STYLE "BT"
 @ pfFs+14, 30 SAY ":" STYLE "BT"
 @ pfFs+05, 11 SAY "ESC" STYLE "BT"
 @ pfFs+06, 11 SAY "F10" STYLE "BT"
 @ pfFs+07, 11 SAY "F1" STYLE "BT"
 @ pfFs+08, 11 SAY "F7" STYLE "BT"
 @ pfFs+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfFs+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfFs+11, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfFs+12, 11 SAY "PAGE UP" STYLE "BT"
 @ pfFs+13, 11 SAY "HOME" STYLE "BT"
 @ pfFs+14, 11 SAY "END" STYLE "BT"
 @ pfFs+05, 32 SAY "Regresar a Cabecera"
 @ pfFs+06, 32 SAY "Cerrar y regresar a Windows"
 @ pfFs+07, 32 SAY "Ayuda del Programa"
 @ pfFs+08, 32 SAY "Marcar/Desmarcar para Revisar"
 @ pfFs+09, 32 SAY "Línea inferior"
 @ pfFs+10, 32 SAY "Línea superior"
 @ pfFs+11, 32 SAY "Página siguiente"
 @ pfFs+12, 32 SAY "Página anterior"
 @ pfFs+13, 32 SAY "Primera línea"
 @ pfFs+14, 32 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
