 DO p00_3510d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 DO paN_3510d
 STORE ifFr TO vfFr
 DO muE_3510d WITH "i", "v"
 DO seE_3510d WITH "v"
 DO diS_3510d WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3510d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3510d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3510d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE irC1+iaN1+imE1+idI1+isR2+inU1+itD1+isE1+idO1= ;
                          ftM2rcb+ftM2ano+ftM2mes+ftM2dia+ftM2sr1+ftM2num+ ;
                          ftM2tdo+ftM2ser+ftM2doc .AND. irC1+iaN1+imE1+ ;
                          idI1+isR2+inU1+itD1+isE1+idO1=vrC1+vaN1+vmE1+ ;
                          vdI1+vsR2+vnU1+vtD1+vsE1+vdO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+ ;
                                    vsE1+vdO1=irC1+iaN1+imE1+idI1+isR2+ ;
                                    inU1+itD1+isE1+idO1
                                    DO paN_3510d
                               OTHERWISE
                                    DO seE_3510d WITH "v"
                                    DO diS_3510d WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_3510d WITH "i", "v"
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE urC1+uaN1+umE1+udI1+usR2+unU1+utD1+usE1+udO1= ;
                          ftM2rcb+ftM2ano+ftM2mes+ftM2dia+ftM2sr1+ftM2num+ ;
                          ftM2tdo+ftM2ser+ftM2doc .AND. urC1+uaN1+umE1+ ;
                          udI1+usR2+unU1+utD1+usE1+udO1=vrC1+vaN1+vmE1+ ;
                          vdI1+vsR2+vnU1+vtD1+vsE1+vdO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+ ;
                                    vsE1+vdO1=urC1+uaN1+umE1+udI1+usR2+ ;
                                    unU1+utD1+usE1+udO1
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3510d
                               OTHERWISE
                                    DO seE_3510d WITH "v"
                                    DO diS_3510d WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_3510d WITH "u", "v"
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "N"
                          SKIP
                          IF vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+vsE1+vdO1= ;
                             urC1+uaN1+umE1+udI1+usR2+unU1+utD1+usE1+udO1
                               DO coL_fondo
                               DO suBe WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3510d WITH ifFr, ffFr+1
                               DO li2_3510d WITH ifFr, ffFr+1
                               DO muE_3510d WITH "F", "v"
                               DO muE_3510d WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_3510d WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_3510d WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "N"
                          SKIP -1
                          IF vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+vsE1+vdO1= ;
                             irC1+iaN1+imE1+idI1+isR2+inU1+itD1+isE1+idO1
                               DO coL_fondo
                               DO baJa WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3510d WITH ifFr, ffFr+1
                               DO li2_3510d WITH ifFr, ffFr+1
                               DO li2_3510d WITH ifFr, ffFr+1
                               DO muE_3510d WITH "F", "i"
                               DO muE_3510d WITH "F", "v"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_3510d WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3510d WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3510d WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3510d
                          STORE ifFr TO vfFr
                          DO muE_3510d WITH "i", "v"
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3510d WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3510d
                          STORE ifFr TO vfFr
                          DO muE_3510d WITH "i", "v"
                          DO seE_3510d WITH "v"
                          DO diS_3510d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3510d WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3510d
 STORE ifFr TO vfFr, ufFr
 DO muE_3510d WITH "F", "i"
 DO muE_3510d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_3510d WITH "N"
      DO muE_3510d WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coL_fondo
      @ ufFr+1, mcO0+0.1 CLEAR TO ffFr+1, mcO0+muCo-0.1
      DO liN_3510d WITH ufFr+1, ffFr+1
      DO li2_3510d WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3510d
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+000.6 Say " "+FTM2RCB                         Font "&mLetAri",9 Style "NQ" Size 1,10.7
 @vFFR,mCO0+012.4 Say " "+FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,13.1
 @vFFR,mCO0+026.6 Say " "+FTM2SR1                         Font "&mLetAri",9 Style "NQ" Size 1,05.2
 @vFFR,mCO0+032.8 Say " "+FTM2NUM                         Font "&mLetAri",9 Style "NQ" Size 1,10.7
 @vFFR,mCO0+044.7 Say " "+FTM2TDO                         Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFR,mCO0+049.9 Say " "+FTM2SER                         Font "&mLetAri",9 Style "NQ" Size 1,05.2
 @vFFR,mCO0+056.1 Say " "+FTM2DOC                         Font "&mLetAri",9 Style "NQ" Size 1,10.7
 @vFFR,mCO0+067.9 Say FTM2NOM                             Font "&mLetAri",9 Style "NQ" Size 1,49.5 Pict "@S52"
 @vFFR,mCO0+118.4 Say FTM2GLO                             Font "&mLetAri",9 Style "NQ" Size 1,49.3 Pict "@S52"
 IF ftM2mon=1
      @vFFR,mCO0+168.9 Say "S/."                            Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ELSE
      @vFFR,mCO0+168.9 Say "US$"                            Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ENDIF
 @vFFR,mCO0+174.7 Say FTM2TOT                             Font "&mLetAri",9 Style "NQ" Size 1,18.9 Pict "9,999,999.99"
ENDPROC
*
PROCEDURE Lin_3510d
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, mcO0+011.9 TO pfIn, mcO0+011.9
 @ piNi, mcO0+026.0 TO pfIn, mcO0+026.0
 @ piNi, mcO0+044.1 TO pfIn, mcO0+044.1
 @ piNi, mcO0+067.3 TO pfIn, mcO0+067.3
 @ piNi, mcO0+117.8 TO pfIn, mcO0+117.8
 @ piNi, mcO0+168.2 TO pfIn, mcO0+168.2
 @ piNi, mcO0+174.0 TO pfIn, mcO0+174.0
ENDPROC
*
PROCEDURE Li2_3510d
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, mcO0+032.3 TO pfIn, mcO0+032.3
 @ piNi, mcO0+049.3 TO pfIn, mcO0+049.3
 @ piNi, mcO0+055.4 TO pfIn, mcO0+055.4
ENDPROC
*
PROCEDURE P00_3510d
 RESTORE SCREEN FROM vpAn_12
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SELECT deT_ing_caja
 DO cuAdro WITH ifFr-1.7, mcO0, ffFr+0.8, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @ ifFr-1.6, mcO0 TO ifFr-0.2, mcO0+muCo PATTERN 1
 @iFFR-1.4,mCO0+001.6 Say "Recibo"    Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+014.9 Say "Fecha"     Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+029.6 Say "Voucher"   Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+048.7 Say "Documento" Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+067.9 Say "Cliente"   Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+118.4 Say "Glosa"     Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+168.9 Say "Mon"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.4,mCO0+177.7 Say "Total"     Font "&mLetAri",9 Style "BQ"
 DO liN_3510d WITH ifFr-1.4, ffFr+1.1
 DO li2_3510d WITH ifFr-0.2, ffFr+1.1
ENDPROC
*
PROCEDURE Res_3510d
 DO muE_3510d WITH "v", "c"
 DO reS_3510b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 SELECT teMporal_2
 DO p00_3510d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr
 DO seE_3510d WITH "i"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      IF ftM2rcb+ftM2ano+ftM2mes+ftM2dia+ftM2sr1+ftM2num+ftM2tdo+ftM2ser+ ;
         ftM2doc=vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+vsE1+vdO1
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      DO muE_3510d WITH "v", "i"
      DO muE_3510d WITH "v", "c"
      STORE ifFr TO vfFr, cfFr
 ENDIF
 DO seE_3510d WITH "i"
 DO paN_3510d
 STORE cfFr TO vfFr
 DO muE_3510d WITH "c", "v"
 DO seE_3510d WITH "v"
 DO diS_3510d WITH "R"
ENDPROC
*
PROCEDURE See_3510d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vrC1+vaN1+vmE1+vdI1+vsR2+vnU1+vtD1+vsE1+vdO1
      CASE psEe="i"
           SEEK irC1+iaN1+imE1+idI1+isR2+inU1+itD1+isE1+idO1
      CASE psEe="u"
           SEEK urC1+uaN1+umE1+udI1+usR2+unU1+utD1+usE1+udO1
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3510d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE irC1 TO vrC1
           STORE iaN1 TO vaN1
           STORE imE1 TO vmE1
           STORE idI1 TO vdI1
           STORE isR2 TO vsR2
           STORE inU1 TO vnU1
           STORE itD1 TO vtD1
           STORE isE1 TO vsE1
           STORE idO1 TO vdO1
      CASE pmU1="u" .AND. pmU2="v"
           STORE urC1 TO vrC1
           STORE uaN1 TO vaN1
           STORE umE1 TO vmE1
           STORE udI1 TO vdI1
           STORE usR2 TO vsR2
           STORE unU1 TO vnU1
           STORE utD1 TO vtD1
           STORE usE1 TO vsE1
           STORE udO1 TO vdO1
      CASE pmU1="v" .AND. pmU2="i"
           STORE vrC1 TO irC1
           STORE vaN1 TO iaN1
           STORE vmE1 TO imE1
           STORE vdI1 TO idI1
           STORE vsR2 TO isR2
           STORE vnU1 TO inU1
           STORE vtD1 TO itD1
           STORE vsE1 TO isE1
           STORE vdO1 TO idO1
      CASE pmU1="v" .AND. pmU2="c"
           STORE vrC1 TO crC1
           STORE vaN1 TO caN1
           STORE vmE1 TO cmE1
           STORE vdI1 TO cdI1
           STORE vsR2 TO csR2
           STORE vnU1 TO cnU1
           STORE vtD1 TO ctD1
           STORE vsE1 TO csE1
           STORE vdO1 TO cdO1
      CASE pmU1="c" .AND. pmU2="v"
           STORE crC1 TO vrC1
           STORE caN1 TO vaN1
           STORE cmE1 TO vmE1
           STORE cdI1 TO vdI1
           STORE csR2 TO vsR2
           STORE cnU1 TO vnU1
           STORE ctD1 TO vtD1
           STORE csE1 TO vsE1
           STORE cdO1 TO vdO1
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2rcb TO vrC1
           STORE ftM2ano TO vaN1
           STORE ftM2mes TO vmE1
           STORE ftM2dia TO vdI1
           STORE ftM2sr1 TO vsR2
           STORE ftM2num TO vnU1
           STORE ftM2tdo TO vtD1
           STORE ftM2ser TO vsE1
           STORE ftM2doc TO vdO1
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2rcb TO irC1
           STORE ftM2ano TO iaN1
           STORE ftM2mes TO imE1
           STORE ftM2dia TO idI1
           STORE ftM2sr1 TO isR2
           STORE ftM2num TO inU1
           STORE ftM2tdo TO itD1
           STORE ftM2ser TO isE1
           STORE ftM2doc TO idO1
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2rcb TO urC1
           STORE ftM2ano TO uaN1
           STORE ftM2mes TO umE1
           STORE ftM2dia TO udI1
           STORE ftM2sr1 TO usR2
           STORE ftM2num TO unU1
           STORE ftM2tdo TO utD1
           STORE ftM2ser TO usE1
           STORE ftM2doc TO udO1
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3510d
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
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=mcO0+22  ;
           .AND. mcCc<=mcO0+25.4
           DO diS_3510d WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_3510d WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_3510d WITH "F", "v"
           DO diS_3510d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3510d
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Recibos y Documentos "
 @ pfIl+01, 02 SAY "sin totalizarlos."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 26 SAY ":" STYLE "BT"
 @ pfIl+06, 26 SAY ":" STYLE "BT"
 @ pfIl+07, 26 SAY ":" STYLE "BT"
 @ pfIl+08, 26 SAY ":" STYLE "BT"
 @ pfIl+09, 26 SAY ":" STYLE "BT"
 @ pfIl+10, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+12, 26 SAY ":" STYLE "BT"
 @ pfIl+13, 26 SAY ":" STYLE "BT"
 @ pfIl+14, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 07 SAY "ESC" STYLE "BT"
 @ pfIl+06, 07 SAY "F10" STYLE "BT"
 @ pfIl+07, 07 SAY "F1" STYLE "BT"
 @ pfIl+08, 07 SAY "F8" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 07 SAY "HOMEA/INICIO" STYLE "BT"
 @ pfIl+14, 07 SAY "ENDa/FIN" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar al Detalle"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Pasar datos a Excel"
 @ pfIl+09, 28 SAY "Línea inferior"
 @ pfIl+10, 28 SAY "Línea superior"
 @ pfIl+11, 28 SAY "Página siguiente"
 @ pfIl+12, 28 SAY "Página anterior"
 @ pfIl+13, 28 SAY "Primera línea"
 @ pfIl+14, 28 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
