 PARAMETER ppRg
 = INKEY(0.01)
 SELECT caB_lista
 GOTO TOP
 SEEK vpRv
 IF EOF()
      STORE "Este Proveedor no tiene Lista de Precios..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 DO p00_2106w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2106w
 STORE ifFr TO vfFr
 DO muE_2106w WITH "i", "v"
 DO seE_2106w WITH "v"
 DO diS_2106w WITH "R"
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
           DO reS_2106w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2106w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2106w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2106w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2106w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vpRv
                DO CASE
                     CASE f2105fem=CTOD(idIa+"/"+imEs+"/"+iaNo) .AND.  ;
                          CTOD(vdIa+"/"+vmEs+"/"+vaNo)=CTOD(idIa+"/"+imEs+ ;
                          "/"+iaNo)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE CTOD(vdIa+"/"+vmEs+"/"+vaNo)= ;
                                    CTOD(idIa+"/"+imEs+"/"+iaNo)
                                    DO paN_2106w
                               OTHERWISE
                                    DO seE_2106w WITH "v"
                                    DO diS_2106w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2106w WITH "i", "v"
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vpRv+"ZZZZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f2105prv<>vpRv
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2105fem=CTOD(udIa+"/"+umEs+"/"+uaNo) .AND.  ;
                          CTOD(vdIa+"/"+vmEs+"/"+vaNo)=CTOD(udIa+"/"+umEs+ ;
                          "/"+uaNo)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE CTOD(vdIa+"/"+vmEs+"/"+vaNo)= ;
                                    CTOD(udIa+"/"+umEs+"/"+uaNo)
                                    SKIP -INT(ffFr-ifFr)
                                    IF BOF() .OR. f2105prv<>vpRv
                                         IF BOF()
                                              GOTO TOP
                                              SEEK vpRv
                                         ELSE
                                              SKIP -1
                                         ENDIF
                                    ENDIF
                                    DO paN_2106w
                               OTHERWISE
                                    DO seE_2106w WITH "v"
                                    DO diS_2106w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2106w WITH "u", "v"
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2105prv<>vpRv
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "N"
                          SKIP
                          IF CTOD(vdIa+"/"+vmEs+"/"+vaNo)=CTOD(udIa+"/"+ ;
                             umEs+"/"+uaNo)
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2106w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2106w WITH "F", "v"
                               DO muE_2106w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2106w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2106w WITH "F", "v"
                          ENDIF
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2105prv<>vpRv
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "N"
                          SKIP -1
                          IF CTOD(vdIa+"/"+vmEs+"/"+vaNo)=CTOD(idIa+"/"+ ;
                             imEs+"/"+iaNo)
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2106w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2106w WITH "F", "i"
                               DO muE_2106w WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2106w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2106w WITH "F", "v"
                          ENDIF
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2106w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f2105prv<>vpRv
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2106w
                          STORE ifFr TO vfFr
                          DO muE_2106w WITH "i", "v"
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2106w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2105prv<>vpRv
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f2105prv<>vpRv
                               GOTO TOP
                               SEEK vpRv
                          ENDIF
                          DO paN_2106w
                          STORE ifFr TO vfFr
                          DO muE_2106w WITH "i", "v"
                          DO seE_2106w WITH "v"
                          DO diS_2106w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2106w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2106w
 STORE ifFr TO vfFr, ufFr
 DO muE_2106w WITH "F", "i"
 DO muE_2106w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f2105prv=vpRv .AND. vfFr<ffFr+1
      DO diS_2106w WITH "N"
      DO muE_2106w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2106w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2106w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+00.0 Say F2105FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+13.6 Say F2105CM1 Font "&mLetAri",9 Style "NQ" Size 1,55.1 Pict "@S56"
 @vFFR,mCO0+69.8 Say F2105CM2 Font "&mLetAri",9 Style "NQ" Size 1,55.1 Pict "@S56"
ENDPROC
*
PROCEDURE Res_2106w
 DO muE_2106w WITH "v", "x"
 STORE vfFr TO cfFr
 DO CASE
      CASE ppRg="PAM2105A"
           SET READBORDER ON
           DO p00_2105a WITH "1"
           SET READBORDER OFF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SAVE SCREEN TO vpAn_11
      CASE ppRg="PAC2101D"
           SET READBORDER ON
           DO p00_2101d WITH "1"
           SET READBORDER OFF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SAVE SCREEN TO vpAn_12
 ENDCASE
 DO p00_2106w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_lista
 DO seE_2106w WITH "i"
 DO paN_2106w
 STORE cfFr TO vfFr
 DO muE_2106w WITH "x", "v"
 DO seE_2106w WITH "v"
 DO diS_2106w WITH "R"
ENDPROC
*
PROCEDURE Lin_2106w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+13.0 TO pfIn, mcO0+13.0
 @ piNi, mcO0+69.1 TO pfIn, mcO0+69.1
ENDPROC
*
PROCEDURE P00_2106w
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
 @fFFR+1.9,mCO0+52 Say "FECHAS DE LISTAS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2106w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.3, mcO0+13.0 TO ifFr-0.2, mcO0+13.0
 DO coLblz
 @iFFR-1.2,mCO0+00.0 Say "Fec.Actuali" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+13.6 Say "Comentarios" Font "&mLetAri",9 Style "BT"
ENDPROC
*
PROCEDURE See_2106w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vpRv+vaNo+vmEs+vdIa
      CASE psEe="i"
           SEEK vpRv+iaNo+imEs+idIa
      CASE psEe="u"
           SEEK vpRv+uaNo+umEs+udIa
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2106w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE SUBSTR(DTOC(f2105fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2105fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2105fem), 1, 2) TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2106w
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
           DO diS_2106w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2106w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2106w WITH "F", "v"
           DO diS_2106w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2106w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Listas de Precios"
 @ pfIl+01, 02 SAY "del Proveedor escogido."
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
