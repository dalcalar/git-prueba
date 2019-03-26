 PUBLIC piCl, puCl
 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT coNceptos
 GOTO TOP
 DO veR_lock
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vdEs))
 SET NEAR OFF
 IF EOF()
      GOTO TOP
      DO veR_lock
 ENDIF
 DO p00_4210w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_4210w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_4210w WITH "i", "v"
 DO seE_4210w WITH "v"
 DO diS_4210w WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_4210w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4210w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_4210w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_4210w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_4210w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT exIste
                SEEK vcPt
                DO veR_lock
                IF  .NOT. EOF()
                     STORE "CONCEPTO ya digitado..." TO mmSj
                ELSE
                     EXIT
                ENDIF
                SELECT coNceptos
           CASE mkEy=k_Home
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE f4210cod=icPt .AND. vcPt=icPt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcPt=icPt
                                    DO paN_4210w
                               OTHERWISE
                                    DO seE_4210w WITH "v"
                                    DO diS_4210w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_4210w WITH "i", "v"
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE f4210cod=ucPt .AND. vcPt=ucPt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcPt=ucPt
                                    SKIP -INT(ffFr-ifFr)
                                    DO veR_lock
                                    DO paN_4210w
                               OTHERWISE
                                    DO seE_4210w WITH "v"
                                    DO diS_4210w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_4210w WITH "u", "v"
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "N"
                          SKIP
                          DO veR_lock
                          IF vcPt=ucPt
                               DO coLsc7
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_4210w WITH ffFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_4210w WITH "F", "u"
                               DO muE_4210w WITH "F", "v"
                               SKIP -INT(ffFr-ifFr)
                               DO veR_lock
                               DO muE_4210w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                               DO veR_lock
                          ELSE
                               DO muE_4210w WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "N"
                          SKIP -1
                          DO veR_lock
                          IF vcPt=icPt
                               DO coLsc7
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_4210w WITH ifFr, ifFr+1
                               STORE ifFr TO vfFr
                               DO muE_4210w WITH "F", "v"
                               DO muE_4210w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO veR_lock
                                    DO muE_4210w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_4210w WITH "F", "v"
                          ENDIF
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4210w WITH "u"
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4210w
                          DO muE_4210w WITH "i", "v"
                          STORE ifFr TO vfFr
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4210w WITH "i"
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          DO veR_lock
                          IF BOF()
                               GOTO TOP
                               DO veR_lock
                          ENDIF
                          DO paN_4210w
                          DO muE_4210w WITH "i", "v"
                          STORE ifFr TO vfFr
                          DO seE_4210w WITH "v"
                          DO diS_4210w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4210w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RELEASE piCl, puCl
ENDPROC
*
PROCEDURE Pan_4210w
 DO pn1_4210w WITH "1"
ENDPROC
*
PROCEDURE Pa1_4210w
 DO pn1_4210w WITH "2"
ENDPROC
*
PROCEDURE Pn1_4210w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_4210w WITH "F", "i"
 DO muE_4210w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE f4210cod=xcPt
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_4210w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_4210w WITH "F", "u"
      SKIP
      DO veR_lock
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc7
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_4210w WITH ufFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4210w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc7
           @vFFR,pICL+0.0 Say F4210COD Font "&mLetAri",9 Style "NQ" Size 1,06.3
           @vFFR,pICL+7.4 Say F4210DES Font "&mLetAri",9 Style "NQ" Size 1,50.8 Pict "@S53"
      CASE ptIp="R"
           DO coL_fondo
           @vFFR,pICL+0.0 Say F4210COD Font "&mLetAri",9 Style "BQ" Size 1,05.4
           @vFFR,pICL+7.4 Say F4210DES Font "&mLetAri",9 Style "BQ" Size 1,42.3 Pict "@S43"
 ENDCASE
ENDPROC
*
PROCEDURE Res_4210w
 STORE vfFr TO cfFr
 DO muE_4210w WITH "v", "x"
 DO reS_4240b IN PKI4240B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_4210w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coNceptos
 DO seE_4210w WITH "i"
 DO paN_4210w
 STORE cfFr TO vfFr
 DO muE_4210w WITH "x", "v"
 DO seE_4210w WITH "v"
 DO diS_4210w WITH "R"
ENDPROC
*
PROCEDURE See_4210w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(vdCp)+vcPt
      CASE psEe="i"
           SEEK UPPER(idCp)+icPt
      CASE psEe="u"
           SEEK UPPER(udCp)+ucPt
 ENDCASE
 DO veR_lock
ENDPROC
*
PROCEDURE Mue_4210w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE icPt TO vcPt
           STORE idCp TO vdCp
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcPt TO icPt
           STORE vdCp TO idCp
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcPt TO xcPt
           STORE vdCp TO xdCp
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcPt TO vcPt
           STORE xdCp TO vdCp
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucPt TO vcPt
           STORE udCp TO vdCp
      CASE pmU1="F" .AND. pmU2="v"
           STORE f4210cod TO vcPt
           STORE f4210des TO vdCp
      CASE pmU1="F" .AND. pmU2="u"
           STORE f4210cod TO ucPt
           STORE f4210des TO udCp
      CASE pmU1="F" .AND. pmU2="i"
           STORE f4210cod TO icPt
           STORE f4210des TO idCp
 ENDCASE
ENDPROC
*
PROCEDURE Lin_4210w
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, piCl+6.7 TO pfIn, piCl+6.7
ENDPROC
*
PROCEDURE P00_4210w
 STORE ucLn-60 TO piCl
 STORE piCl+58.4 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH ifFr-1.3, piCl, ffFr+3.2, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, piCl TO ifFr-0.2, puCl
 @ ffFr+1.1, piCl TO ffFr+1.1, puCl
 @ ffFr+1.6, piCl-0.3 TO ffFr+3.2, puCl PATTERN 1 COLOR SCHEME 4
 @fFFR+1.9,pICL+14 Say "CONSULTA DE CONCEPTOS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_4210w WITH ifFr-1.9, ffFr+1
 DO coLblz
 @iFFR-1.2,pICL+00.4 Say "Codi"        Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+23.5 Say "Descripcion" Font "&mLetAri",9 Style "BT"
ENDPROC
*
PROCEDURE Clp_4210w
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_4210w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_4210w WITH "i"
           SKIP INT(mfIl-ifFr)
           DO veR_lock
           STORE 99 TO mkEy
           DO muE_4210w WITH "F", "v"
           DO diS_4210w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4210w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Conceptos en el orden"
 @ pfIl+01, 02 SAY "que se ha elegido."
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
 @ pfIl+05, 28 SAY "Regresar a Detalle"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Línea inferior"
 @ pfIl+09, 28 SAY "Línea superior"
 @ pfIl+10, 28 SAY "Página siguiente"
 @ pfIl+11, 28 SAY "Página anterior"
 @ pfIl+12, 28 SAY "Primera línea"
 @ pfIl+13, 28 SAY "Última línea"
 @ pfIl+14, 28 SAY "Aceptar Concepto"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
