 = INKEY(0.01)
 SELECT caB_lista
 GOTO TOP
 SET NEAR ON
 SEEK vpRv+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ENDIF
 DO p00_2105w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2105w
 STORE ifFr TO vfFr
 DO muE_2105w WITH "i", "v"
 DO seE_2105w WITH "v"
 DO diS_2105w WITH "R"
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
           DO reS_2105w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2105w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2105w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2105w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2105w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2105prv=ipRv .AND. vpRv=ipRv .AND. f2105fem= ;
                          CTOD(idIa+"/"+imEs+"/"+iaNo) .AND. CTOD(vdIa+ ;
                          "/"+vmEs+"/"+vaNo)=CTOD(idIa+"/"+imEs+"/"+iaNo)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpRv=ipRv .AND. CTOD(vdIa+"/"+vmEs+ ;
                                    "/"+vaNo)=CTOD(idIa+"/"+imEs+"/"+iaNo)
                                    DO paN_2105w
                               OTHERWISE
                                    DO seE_2105w WITH "v"
                                    DO diS_2105w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2105w WITH "i", "v"
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2105prv=upRv .AND. vpRv=upRv .AND. f2105fem= ;
                          CTOD(udIa+"/"+umEs+"/"+uaNo) .AND. CTOD(vdIa+ ;
                          "/"+vmEs+"/"+vaNo)=CTOD(udIa+"/"+umEs+"/"+uaNo)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpRv=upRv .AND. CTOD(vdIa+"/"+vmEs+ ;
                                    "/"+vaNo)=CTOD(udIa+"/"+umEs+"/"+uaNo)
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2105w
                               OTHERWISE
                                    DO seE_2105w WITH "v"
                                    DO diS_2105w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2105w WITH "u", "v"
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "N"
                          SKIP
                          IF vpRv=upRv .AND. CTOD(vdIa+"/"+vmEs+"/"+vaNo)= ;
                             CTOD(udIa+"/"+umEs+"/"+uaNo)
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2105w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2105w WITH "F", "v"
                               DO muE_2105w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2105w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2105w WITH "F", "v"
                          ENDIF
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "N"
                          SKIP -1
                          IF vpRv=ipRv .AND. CTOD(vdIa+"/"+vmEs+"/"+vaNo)= ;
                             CTOD(idIa+"/"+imEs+"/"+iaNo)
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2105w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2105w WITH "F", "i"
                               DO muE_2105w WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2105w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2105w WITH "F", "v"
                          ENDIF
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2105w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2105w
                          STORE ifFr TO vfFr
                          DO muE_2105w WITH "i", "v"
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2105w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2105w
                          STORE ifFr TO vfFr
                          DO muE_2105w WITH "i", "v"
                          DO seE_2105w WITH "v"
                          DO diS_2105w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2105w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2105w
 STORE ifFr TO vfFr, ufFr
 DO muE_2105w WITH "F", "i"
 DO muE_2105w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_2105w WITH "N"
      DO muE_2105w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2105w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2105w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 STORE f2105prv TO xpRv
 SELECT prOveedores
 SEEK xpRv
 IF  .NOT. EOF()
      STORE f2101nom TO xnPr
 ELSE
      STORE SPACE(40) TO xnPr
 ENDIF
 SELECT caB_lista
 @vFFR,mCO0+00.0 Say F2105PRV Font "&mLetAri",9 Style "NQ" Size 1,07
 @vFFR,mCO0+07.9 Say xNPR     Font "&mLetAri",9 Style "NQ" Size 1,39.3 Pict "@S42"
 @vFFR,mCO0+48.4 Say F2105FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+62.0 Say F2105CM1 Font "&mLetAri",9 Style "NQ" Size 1,30.9 Pict "@S32"
 @vFFR,mCO0+94.0 Say F2105CM2 Font "&mLetAri",9 Style "NQ" Size 1,30.9 Pict "@S32"
ENDPROC
*
PROCEDURE Res_2105w
 STORE vfFr TO cfFr
 DO muE_2105w WITH "v", "x"
 SET READBORDER ON
 DO p00_2105a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2105w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_lista
 DO seE_2105w WITH "i"
 DO paN_2105w
 STORE cfFr TO vfFr
 DO muE_2105w WITH "x", "v"
 DO seE_2105w WITH "v"
 DO diS_2105w WITH "R"
ENDPROC
*
PROCEDURE Lin_2105w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+07.4 TO pfIn, mcO0+07.4
 @ piNi, mcO0+47.7 TO pfIn, mcO0+47.7
 @ piNi, mcO0+61.4 TO pfIn, mcO0+61.4
 @ piNi, mcO0+93.3 TO pfIn, mcO0+93.3
ENDPROC
*
PROCEDURE P00_2105w
 STORE mcO0 TO piCl
 STORE mcO0+125 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, mcO0, ffFr+3.2, mcO0+125.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, mcO0 TO ifFr-0.2, mcO0+125.5
 @ ffFr+1.1, mcO0 TO ffFr+1.1, mcO0+125.5
 @ ffFr+1.6, mcO0-0.3 TO ffFr+3.2, mcO0+125.5 PATTERN 1 COLOR SCHEME 4
 @fFFR+1.9,mCO0+42 Say "CONSULTA DE LISTAS DE PRECIOS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2105w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.3, mcO0+47.7 TO ifFr-0.2, mcO0+47.7
 @ ifFr-1.3, mcO0+61.4 TO ifFr-0.2, mcO0+61.4
 DO coLblz
 @iFFR-1.2,mCO0+00.0 Say "Proveedor"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+48.4 Say "F.Actualiz." Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+62.0 Say "Comentarios" Font "&mLetAri",9 Style "BT"
ENDPROC
*
PROCEDURE See_2105w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vpRv+vaNo+vmEs+vdIa
      CASE psEe="i"
           SEEK ipRv+iaNo+imEs+idIa
      CASE psEe="u"
           SEEK upRv+uaNo+umEs+udIa
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2105w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vpRv TO xpRv
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xpRv TO vpRv
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="i" .AND. pmU2="v"
           STORE ipRv TO vpRv
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE upRv TO vpRv
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2105prv TO vpRv
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2105prv TO upRv
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2105prv TO ipRv
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2105w
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+125.4
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+125.4
           DO diS_2105w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2105w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2105w WITH "F", "v"
           DO diS_2105w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2105w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Listas de Precios"
 @ pfIl+01, 02 SAY "de los Proveedores."
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
 @ pfIl+05, 07 SAY "ESC" STYLE "BT"
 @ pfIl+06, 07 SAY "F10" STYLE "BT"
 @ pfIl+07, 07 SAY "F1" STYLE "BT"
 @ pfIl+08, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 07 SAY "HOME" STYLE "BT"
 @ pfIl+13, 07 SAY "END" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Línea inferior"
 @ pfIl+09, 28 SAY "Línea superior"
 @ pfIl+10, 28 SAY "Página siguiente"
 @ pfIl+11, 28 SAY "Página anterior"
 @ pfIl+12, 28 SAY "Primera línea"
 @ pfIl+13, 28 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
