 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT deT_fact
 SEEK vtD1+vsR1+vdO1
 DO p00_1301w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1301w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE ifFs TO vfFs
 DO muE_1301w WITH "i", "v"
 DO seE_1301w WITH "v"
 DO diS_1301w WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1301w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1301w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_1301w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1301w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1301w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtD1+vsR1+vdO1
                DO CASE
                     CASE f1301ite=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=irCc
                                    DO paN_1301w
                               OTHERWISE
                                    DO seE_1301w WITH "v"
                                    DO diS_1301w WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_1301w WITH "i", "v"
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtD1+vsR1+vdO1+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+vsR1+vdO1
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f1301ite=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=urCc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1301w
                               OTHERWISE
                                    DO seE_1301w WITH "v"
                                    DO diS_1301w WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_1301w WITH "u", "v"
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+vsR1+vdO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "N"
                          SKIP
                          IF vrCc=urCc
                               DO coLsc1
                               DO suBe WITH ifFs, piCl, ffFs, puCl, 1
                               DO liN_1301w WITH ffFs, ffFs+1
                               STORE ufFs TO vfFs
                               DO muE_1301w WITH "F", "v"
                               DO muE_1301w WITH "F", "u"
                               SKIP -INT(ffFs-ifFs)
                               DO muE_1301w WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_1301w WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+vsR1+vdO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "N"
                          SKIP -1
                          IF vrCc=irCc
                               DO coLsc1
                               DO baJa WITH ifFs, piCl, ffFs, puCl, 1
                               DO liN_1301w WITH ifFs, ifFs+1
                               STORE ifFs TO vfFs
                               DO muE_1301w WITH "F", "v"
                               DO muE_1301w WITH "F", "i"
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_1301w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFs-1 TO vfFs
                               DO muE_1301w WITH "F", "v"
                          ENDIF
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1301w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+vsR1+vdO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1301w
                          STORE ifFs TO vfFs
                          DO muE_1301w WITH "i", "v"
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1301w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+vsR1+vdO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtD1+ ;
                             vsR1+vdO1
                               GOTO TOP
                               SEEK vtD1+vsR1+vdO1
                          ENDIF
                          DO paN_1301w
                          STORE ifFs TO vfFs
                          DO muE_1301w WITH "i", "v"
                          DO seE_1301w WITH "v"
                          DO diS_1301w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1301w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_1301w
 STORE ifFs TO vfFs, ufFs
 DO muE_1301w WITH "F", "i"
 DO muE_1301w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtD1+vsR1+vdO1  ;
    .AND. vfFs<ffFs+1
      DO diS_1301w WITH "N"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      DO muE_1301w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc1
      @ ufFs+1, piCl CLEAR TO ffFs+1, puCl
      DO liN_1301w WITH ufFs, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1301w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coL_beige
 ENDCASE
 @vFFS,pICL+000.4 Say F1301ITE                   Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
 @vFFS,pICL+004.1 Say F1301DCR                   Font "&mLetAri",9 Style "NQ" Size 1,65.2 Pict "@S68"
 @vFFS,pICL+070.2 Say F1301CAN                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFS,pICL+087.9 Say F1301NUV                   Font "&mLetAri",9 Style "NQ" Size 1,09.4
 @vFFS,pICL+140.0 Say F1301REF                   Font "&mLetAri",9 Style "NQ" Size 1,24.3 Pict "@S27"
 IF SUBSTR(vcM1, 1, 2)="FA" .OR. SUBSTR(vcM1, 1, 2)="FE" .OR. SUBSTR(vcM1,  ;
    1, 2)="FC"
      @vFFS,pICL+098.4 Say Round(F1301TO1/F1301CAN,4) Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9,999,999.9999"
      @vFFS,pICL+119.2 Say F1301TO1                   Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9,999,999.9999"
 ELSE
      @vFFS,pICL+098.4 Say Round(F1301TO2/F1301CAN,4) Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9,999,999.9999"
      @vFFS,pICL+119.2 Say F1301TO2                   Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9,999,999.9999"
 ENDIF
ENDPROC
*
PROCEDURE Res_1301w
 STORE vfFs TO cfFs
 DO muE_1301w WITH "v", "x"
 DO reS_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1301w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 DO seE_1301w WITH "i"
 DO paN_1301w
 STORE cfFs TO vfFs
 DO muE_1301w WITH "x", "v"
 DO seE_1301w WITH "v"
 DO diS_1301w WITH "R"
ENDPROC
*
PROCEDURE Lin_1301w
 PARAMETER piNi, pfIn
 DO coLsc1
 @ piNi, piCl+003.5 TO pfIn, piCl+003.5
 @ piNi, piCl+069.6 TO pfIn, piCl+069.6
 @ piNi, piCl+087.4 TO pfIn, piCl+087.4
 @ piNi, piCl+097.8 TO pfIn, piCl+097.8
 @ piNi, piCl+118.6 TO pfIn, piCl+118.6
 @ piNi, piCl+139.3 TO pfIn, piCl+139.3
ENDPROC
*
PROCEDURE P00_1301w
 STORE mcO0+14 TO piCl
 STORE piCl+164.6 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFs-1.1, piCl, ffFs+3.1, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFs-0.2, piCl-0.3 TO ifFs-0.2, puCl
 @ ffFs+1.3, piCl-0.3 TO ffFs+3.2, puCl PATTERN 1 COLOR SCHEME 4
 @fFFS+1.7,mCO0+48 Say "CONSULTA DE DETALLE DE DOCUMENTOS DE VENTA" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_1301w WITH ifFs-1.2, ffFs+1.3
 @iFFS-1.3,pICL+000.7 Say "It"          Font "&mLetAri",9 Style "BQ"
 @iFFS-1.3,pICL+004.1 Say "Descripcion" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.3,pICL+073.2 Say "Cantidad"    Font "&mLetAri",9 Style "BQ"
 @iFFS-1.3,pICL+088.5 Say "Unidad"      Font "&mLetAri",9 Style "BQ"
 @iFFS-1.3,pICL+145.5 Say "Referencia"  Font "&mLetAri",9 Style "BQ"
 IF SUBSTR(vcM1, 1, 2)="FA" .OR. SUBSTR(vcM1, 1, 2)="FE" .OR. SUBSTR(vcM1,  ;
    1, 2)="FC"
      @iFFS-1.3,pICL+102.8 Say "V.Vta.Unit." Font "&mLetAri",9 Style "BQ"
      @iFFS-1.3,pICL+122.7 Say "V.Vta.Total" Font "&mLetAri",9 Style "BQ"
 ELSE
      @iFFS-1.3,pICL+103.0 Say "Prec.Unit."  Font "&mLetAri",9 Style "BQ"
      @iFFS-1.3,pICL+122.9 Say "Prec.Total"  Font "&mLetAri",9 Style "BQ"
 ENDIF
ENDPROC
*
PROCEDURE See_1301w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vtD1+vsR1+vdO1+STR(vrCc, 2, 0)
      CASE psEe="i"
           SEEK vtD1+vsR1+vdO1+STR(irCc, 2, 0)
      CASE psEe="u"
           SEEK vtD1+vsR1+vdO1+STR(urCc, 2, 0)
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1301w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE irCc TO vrCc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vrCc TO crCc
      CASE pmU1="v" .AND. pmU2="i"
           STORE vrCc TO irCc
      CASE pmU1="c" .AND. pmU2="v"
           STORE crCc TO vrCc
      CASE pmU1="u" .AND. pmU2="v"
           STORE urCc TO vrCc
      CASE pmU1="v" .AND. pmU2="x"
           STORE vrCc TO xrCc
      CASE pmU1="x" .AND. pmU2="v"
           STORE xrCc TO vrCc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1301ite TO vrCc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1301ite TO urCc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1301ite TO irCc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_1301w
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_1301w WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1301w WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_1301w WITH "F", "v"
           DO diS_1301w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1301w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte del programa se puede copiar la descripcion y precio Uni-"
 @ pfIl+01, 02 SAY "tario en el detalle de la Nota Contable."
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
 @ pfIl+08, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 07 SAY "HOME" STYLE "BT"
 @ pfIl+13, 07 SAY "END" STYLE "BT"
 @ pfIl+14, 07 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Línea inferior"
 @ pfIl+09, 28 SAY "Línea superior"
 @ pfIl+10, 28 SAY "Página siguiente"
 @ pfIl+11, 28 SAY "Página anterior"
 @ pfIl+12, 28 SAY "Primera línea"
 @ pfIl+13, 28 SAY "Última línea"
 @ pfIl+14, 28 SAY "Copiar Item"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
