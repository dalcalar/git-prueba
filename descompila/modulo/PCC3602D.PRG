 = INKEY(0.01)
 DO p00_3602d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 GOTO TOP
 DO paN_3602d
 STORE ifFs TO vfFs
 DO muE_3602d WITH "i", "v"
 DO seE_3602d WITH "v"
 DO diS_3600c IN PCC3600C WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3602d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3602d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3602d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3602d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"CTAS_x_PAGAR_x_TIPO_DE_PROVEEDOR_DT2.XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2SER,FTM2NUM,FTM2DIA,FTM2MES,FTM2ANO,FTM2GLO,FTM2NBA,FTM2NCT,FTM2CHE,FTM2TCA,FTM2MON,FTM2PAG Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT paGos
                DO seE_3602d WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3600c IN PCC3600C
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT paGos
                DO seE_3602d WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num= ;
                          iaN1+imE1+idI1+itTt+isR1+inU1 .AND. vaN1+vmE1+ ;
                          vdI1+vtTt+vsR1+vnU1=iaN1+imE1+idI1+itTt+isR1+inU1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtTt+vsR1+vnU1=iaN1+ ;
                                    imE1+idI1+itTt+isR1+inU1
                                    DO paN_3602d
                               OTHERWISE
                                    DO seE_3602d WITH "v"
                                    DO diS_3600c IN PCC3600C WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3602d WITH "i", "v"
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num= ;
                          uaN1+umE1+udI1+utTt+usR1+unU1 .AND. vaN1+vmE1+ ;
                          vdI1+vtTt+vsR1+vnU1=uaN1+umE1+udI1+utTt+usR1+unU1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtTt+vsR1+vnU1=uaN1+ ;
                                    umE1+udI1+utTt+usR1+unU1
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3602d
                               OTHERWISE
                                    DO seE_3602d WITH "v"
                                    DO diS_3600c IN PCC3600C WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3602d WITH "u", "v"
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "N"
                          SKIP
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnU1=uaN1+umE1+udI1+ ;
                             utTt+usR1+unU1
                               DO coL_fondo
                               DO suBe WITH ifFs, icL2, ffFs, ucL2, 1
                               DO liN_3600c IN PCC3600C WITH ifFs, ffFs+1
                               DO muE_3602d WITH "F", "u"
                               DO muE_3602d WITH "F", "v"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3602d WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3602d WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "N"
                          SKIP -1
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnU1=iaN1+imE1+idI1+ ;
                             itTt+isR1+inU1
                               DO coL_fondo
                               DO baJa WITH ifFs, icL2, ffFs, ucL2, 1
                               DO liN_3600c IN PCC3600C WITH ifFs, ffFs+1
                               DO muE_3602d WITH "F", "v"
                               DO muE_3602d WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3602d WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3602d WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3602d WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3602d
                          STORE ifFs TO vfFs
                          DO muE_3602d WITH "i", "v"
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3602d WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3602d
                          STORE ifFs TO vfFs
                          DO muE_3602d WITH "i", "v"
                          DO seE_3602d WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3602d WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3602d
 STORE ifFs TO vfFs, ufFs
 DO muE_3602d WITH "F", "i"
 DO muE_3602d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_3600c IN PCC3600C WITH "N"
      DO muE_3602d WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL2 CLEAR TO ffFs+1, ucL2
      DO liN_3600c IN PCC3600C WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE P00_3602d
 SELECT peNd_cpras
 DO CASE
      CASE f3600mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 DO p01_3600c IN PCC3600C
ENDPROC
*
PROCEDURE Res_3602d
 DO muE_3602d WITH "v", "c"
 DO reS_3602c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 SET READBORDER ON
 DO p00_3602d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO seE_3602d WITH "i"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num=vaN1+vmE1+vdI1+ ;
         vtTt+vsR1+vnU1
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_3602d WITH "v", "c"
      DO muE_3602d WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_3602d WITH "i"
 DO paN_3602d
 STORE cfFs TO vfFs
 DO muE_3602d WITH "c", "v"
 DO seE_3602d WITH "v"
 DO diS_3600c IN PCC3600C WITH "R"
ENDPROC
*
PROCEDURE See_3602d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaN1+vmE1+vdI1+vtTt+vsR1+vnU1
      CASE psEe="i"
           SEEK iaN1+imE1+idI1+itTt+isR1+inU1
      CASE psEe="u"
           SEEK uaN1+umE1+udI1+utTt+usR1+unU1
 ENDCASE
 RELEASE psEe
ENDPROC
*
PROCEDURE Mue_3602d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaN1 TO vaN1
           STORE imE1 TO vmE1
           STORE idI1 TO vdI1
           STORE itTt TO vtTt
           STORE isR1 TO vsR1
           STORE inU1 TO vnU1
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaN1 TO iaN1
           STORE vmE1 TO imE1
           STORE vdI1 TO idI1
           STORE vtTt TO itTt
           STORE vsR1 TO isR1
           STORE vnU1 TO inU1
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaN1 TO caN1
           STORE vmE1 TO cmE1
           STORE vdI1 TO cdI1
           STORE vtTt TO ctTt
           STORE vsR1 TO csR1
           STORE vnU1 TO cnU1
      CASE pmU1="c" .AND. pmU2="v"
           STORE caN1 TO vaN1
           STORE cmE1 TO vmE1
           STORE cdI1 TO vdI1
           STORE ctTt TO vtTt
           STORE csR1 TO vsR1
           STORE cnU1 TO vnU1
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaN1 TO vaN1
           STORE umE1 TO vmE1
           STORE udI1 TO vdI1
           STORE utTt TO vtTt
           STORE usR1 TO vsR1
           STORE unU1 TO vnU1
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2ano TO vaN1
           STORE ftM2mes TO vmE1
           STORE ftM2dia TO vdI1
           STORE ftM2ttt TO vtTt
           STORE ftM2ser TO vsR1
           STORE ftM2num TO vnU1
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2ano TO uaN1
           STORE ftM2mes TO umE1
           STORE ftM2dia TO udI1
           STORE ftM2ttt TO utTt
           STORE ftM2ser TO usR1
           STORE ftM2num TO unU1
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2ano TO iaN1
           STORE ftM2mes TO imE1
           STORE ftM2dia TO idI1
           STORE ftM2ttt TO itTt
           STORE ftM2ser TO isR1
           STORE ftM2num TO inU1
 ENDCASE
 RELEASE pmU1, pmU2
ENDPROC
*
PROCEDURE Clp_3602d
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+51
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3600c IN PCC3600C WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3602d WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3602d WITH "F", "v"
           DO diS_3600c IN PCC3600C WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3602d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Pagos en Efectivo y  "
 @ pfIl+01, 02 SAY "por Bancos del documento elegido."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 28 SAY ":" STYLE "BT"
 @ pfIl+06, 28 SAY ":" STYLE "BT"
 @ pfIl+07, 28 SAY ":" STYLE "BT"
 @ pfIl+08, 28 SAY ":" STYLE "BT"
 @ pfIl+09, 28 SAY ":" STYLE "BT"
 @ pfIl+10, 28 SAY ":" STYLE "BT"
 @ pfIl+11, 28 SAY ":" STYLE "BT"
 @ pfIl+12, 28 SAY ":" STYLE "BT"
 @ pfIl+13, 28 SAY ":" STYLE "BT"
 @ pfIl+14, 28 SAY ":" STYLE "BT"
 @ pfIl+15, 28 SAY ":" STYLE "BT"
 @ pfIl+05, 09 SAY "ESC" STYLE "BT"
 @ pfIl+06, 09 SAY "F10" STYLE "BT"
 @ pfIl+07, 09 SAY "F1" STYLE "BT"
 @ pfIl+08, 09 SAY "F8" STYLE "BT"
 @ pfIl+09, 09 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 09 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 09 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 09 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 09 SAY "HOME" STYLE "BT"
 @ pfIl+14, 09 SAY "END" STYLE "BT"
 @ pfIl+15, 09 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 30 SAY "Regresar a Cabecera"
 @ pfIl+06, 30 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 30 SAY "Ayuda del Programa"
 @ pfIl+08, 30 SAY "Pasar datos a Excel"
 @ pfIl+09, 30 SAY "Línea inferior"
 @ pfIl+10, 30 SAY "Línea superior"
 @ pfIl+11, 30 SAY "Página siguiente"
 @ pfIl+12, 30 SAY "Página anterior"
 @ pfIl+13, 30 SAY "Primera línea"
 @ pfIl+14, 30 SAY "Última línea"
 @ pfIl+15, 30 SAY "Imprimir Estado de Cuenta del Documento"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
