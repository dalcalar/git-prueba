 = INKEY(0.01)
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT deT_orden
 GOTO TOP
 SEEK vtDd+vsRo+vdDo
 DO p00_2911w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2911w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ioP1 TO voP1
 STORE ifFw TO vfFw
 SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
 DO diS_2911w WITH "R"
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
           DO reS_2911w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2911w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2911w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2911w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2911w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Tab
                SELECT tmP_prod
                GOTO TOP
                IF BOF()
                     STORE "No hay Productos marcados..." TO mmSj
                ELSE
                     EXIT
                ENDIF
                SELECT deT_orden
           CASE mkEy=k_F9
                IF f2911can-f2911ctd<=0
                     STORE "No se puede seleccionar este producto..." TO mmSj
                ELSE
                     STORE f2911cod TO ccOd
                     SELECT teMporal
                     SET ORDER TO FTM1COD
                     SEEK ALLTRIM(ccOd)+"*"
                     DO CASE
                          CASE  .NOT. EOF()
                               SET ORDER TO
                               STORE "Código ya registrado..." TO mmSj
                          OTHERWISE
                               SET ORDER TO
                               SELECT tmP_prod
                               SEEK ALLTRIM(ccOd)+"*"
                               IF EOF()
                                    APPEND BLANK
                                    REPLACE ftM2cod WITH ccOd
                               ELSE
                                    DELETE
                                    PACK
                               ENDIF
                     ENDCASE
                ENDIF
                SELECT deT_orden
                DO diS_2911w WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDd+vsRo+vdDo
                DO CASE
                     CASE f2911ite=ioP1 .AND. voP1=ioP1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE voP1=ioP1
                                    DO paN_2911w
                               OTHERWISE
                                    SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                                    DO diS_2911w WITH "N"
                          ENDCASE
                          STORE ioP1 TO voP1
                          STORE ifFw TO vfFw
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vtDd+vsRo+vdDo+"ZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+vsRo+vdDo
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2911ite=uoP1 .AND. voP1=uoP1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE voP1=uoP1
                                    SKIP -INT(ffFw-ifFw)
                                    DO paN_2911w
                               OTHERWISE
                                    SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                                    DO diS_2911w WITH "N"
                          ENDCASE
                          STORE uoP1 TO voP1
                          STORE ufFw TO vfFw
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+vsRo+vdDo
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "N"
                          SKIP
                          IF voP1=uoP1
                               DO coLsc1
                               DO suBe WITH ifFw, piC1, ffFw, puC1, 1
                               DO liN_2911w WITH ifFw, ffFw+1
                               STORE ufFw TO vfFw
                               STORE f2911ite TO uoP1, voP1
                               SKIP -INT(ffFw-ifFw)
                               STORE f2911ite TO ioP1
                               SKIP INT(ffFw-ifFw)
                          ELSE
                               STORE vfFw+1 TO vfFw
                               STORE f2911ite TO voP1
                          ENDIF
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+vsRo+vdDo
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "N"
                          SKIP -1
                          IF voP1=ioP1
                               DO coLsc1
                               DO baJa WITH ifFw, piC1, ffFw, puC1, 1
                               DO liN_2911w WITH ifFw, ffFw+1
                               STORE ifFw TO vfFw
                               STORE f2911ite TO ioP1, voP1
                               IF ufFw<ffFw
                                    STORE ufFw+1 TO ufFw
                               ELSE
                                    SKIP INT(ffFw-ifFw)
                                    STORE f2911ite TO uoP1
                               ENDIF
                          ELSE
                               STORE vfFw-1 TO vfFw
                               STORE f2911ite TO voP1
                          ENDIF
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDd+vsRo+vdDo+STR(uoP1, 4, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+vsRo+vdDo
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2911w
                          STORE ioP1 TO voP1
                          STORE ifFw TO vfFw
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDd+vsRo+vdDo+STR(ioP1, 4, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+vsRo+vdDo
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFw-ifFw)
                          IF BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDd+ ;
                             vsRo+vdDo
                               GOTO TOP
                          ENDIF
                          DO paN_2911w
                          STORE ioP1 TO voP1
                          STORE ifFw TO vfFw
                          SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
                          DO diS_2911w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2911w
 STORE ifFw TO vfFw, ufFw
 STORE f2911ite TO ioP1, uoP1
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDd+vsRo+vdDo  ;
    .AND. vfFw<ffFw+1
      DO diS_2911w WITH "N"
      STORE vfFw TO ufFw
      STORE vfFw+1 TO vfFw
      STORE f2911ite TO uoP1
      SKIP
 ENDDO
 IF ufFw+1<=ffFw
      DO coLsc1
      @ ufFw+1, piC1 CLEAR TO ffFw+1, puC1
      DO liN_2911w WITH ufFw+1, ffFw+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2911w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFW,pIC1+000.1 Say F2911ITE Font "&mLetAri",9 Style "NQ" Size 1,05.6 Pict "9999"
 @vFFW,pIC1+006.7 Say F2911COD Font "&mLetAri",9 Style "NQ" Size 1,16.2 Pict "@S15"
 @vFFW,pIC1+024.0 Say F2911DES Font "&mLetAri",9 Style "NQ" Size 1,57.1 Pict "@S60"
 @vFFW,pIC1+082.2 Say F2911NUC Font "&mLetAri",9 Style "NQ" Size 1,08.0 Pict "@S10"
 @vFFW,pIC1+091.2 Say F2911CAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFW,pIC1+109.0 Say F2911CTD Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 STORE f2911cod TO ccOd
 SELECT tmP_prod
 SEEK ALLTRIM(ccOd)+"*"
 @vFFW,pIC1+22 Say Space(01) Font "&mLetAri",9 Style "NQ" Size 1,1.1
 IF  .NOT. EOF()
      DO prEsiona WITH "1", "CONSU5", vfFw+0.3, piC1+22
 ENDIF
 SELECT deT_orden
ENDPROC
*
PROCEDURE Res_2911w
 STORE voP1 TO coP1
 STORE vfFw TO cfFw
 DO reS_2910w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2911w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_orden
 SEEK vtDd+vsRo+vdDo+STR(ioP1, 4, 0)
 DO paN_2911w
 STORE coP1 TO voP1
 STORE cfFw TO vfFw
 SEEK vtDd+vsRo+vdDo+STR(voP1, 4, 0)
 DO diS_2911w WITH "R"
ENDPROC
*
PROCEDURE Lin_2911w
 PARAMETER piNi, pfIn
 DO coLsc1
 @ piNi, piC1+006.2 TO pfIn, piC1+006.2
 @ piNi, piC1+023.4 TO pfIn, piC1+023.4
 @ piNi, piC1+081.5 TO pfIn, piC1+081.5
 @ piNi, piC1+090.6 TO pfIn, piC1+090.6
 @ piNi, piC1+108.4 TO pfIn, piC1+108.4
ENDPROC
*
PROCEDURE P00_2911w
 STORE mcO0+41 TO piC1
 STORE piC1+125.9 TO puC1
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFw-1.3, piC1, ffFw+3.2, puC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFw-0.2, piC1 TO ifFw-0.2, puC1
 @ ffFw+1.1, piC1 TO ffFw+1.1, puC1
 @ ffFw+1.6, piC1-0.3 TO ffFw+3.2, puC1 PATTERN 1 COLOR SCHEME 4
 @fFFW+1.9,pIC1+40 Say "ORDEN DE COMPRA "+vSRO+"-"+vDDO Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2911w WITH ifFw-1.5, ffFw+1.1
 DO coLblz
 @iFFW-1.3,pIC1+000.9 Say "Ítem"        Font "&mLetAri",8 Style "NT"
 @iFFW-1.3,pIC1+006.5 Say "Código"      Font "&mLetAri",9 Style "NT"
 @iFFW-1.3,pIC1+024.0 Say "Descripción" Font "&mLetAri",9 Style "NT"
 @iFFW-1.3,pIC1+082.1 Say "Unidad"      Font "&mLetAri",9 Style "NT"
 @iFFW-1.3,pIC1+094.2 Say "Cant.Ped"    Font "&mLetAri",9 Style "NT"
 @iFFW-1.3,pIC1+113.8 Say "Cant.Rec"    Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Clp_2911w
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFw-0.007 .AND. mfIl<=vfFw+0.992 .AND. mcCc>=piC1 .AND.  ;
           mcCc<=puC1
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFw-0.007 .AND. mfIl<=ufFw+0.992 .AND. mcCc>=piC1 .AND.  ;
           mcCc<=puC1
           DO diS_2911w WITH "N"
           STORE ifFw+INT(mfIl-ifFw) TO vfFw
           SEEK vtDd+vsRo+vdDo+STR(ioP1, 4, 0)
           SKIP INT(mfIl-ifFw)
           STORE 99 TO mkEy
           STORE f2911ite TO voP1
           DO diS_2911w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2911w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran el Detalle de la Orden elegida."
 @ pfIl+02, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+04, 26 SAY ":" STYLE "BT"
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
 @ pfIl+04, 07 SAY "ESC" STYLE "BT"
 @ pfIl+05, 07 SAY "F10" STYLE "BT"
 @ pfIl+06, 07 SAY "F1" STYLE "BT"
 @ pfIl+07, 07 SAY "F9" STYLE "BT"
 @ pfIl+08, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 07 SAY "HOME" STYLE "BT"
 @ pfIl+13, 07 SAY "END" STYLE "BT"
 @ pfIl+14, 07 SAY "TAB" STYLE "BT"
 @ pfIl+04, 28 SAY "Regresar a Cabecera"
 @ pfIl+05, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+06, 28 SAY "Ayuda del Programa"
 @ pfIl+07, 28 SAY "Marcar/Desmarcar Item"
 @ pfIl+08, 28 SAY "Línea inferior"
 @ pfIl+09, 28 SAY "Línea superior"
 @ pfIl+10, 28 SAY "Página siguiente"
 @ pfIl+11, 28 SAY "Página anterior"
 @ pfIl+12, 28 SAY "Primera línea"
 @ pfIl+13, 28 SAY "Última línea"
 @ pfIl+14, 28 SAY "Escoger los Items seleccionados"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
