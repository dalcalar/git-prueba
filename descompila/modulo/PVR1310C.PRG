 DO p00_1310c
 SELECT kaRdex
 SET NEAR ON
 GOTO TOP
 SET NEAR OFF
 SEEK ALLTRIM(vcOd)+"*"
 DO paN_1310c
 STORE ifFs TO vfFs
 DO muE_1310c WITH "i", "v"
 DO seE_1310c WITH "v"
 DO diS_1310c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1310c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1310c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1310c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1310c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE f2990tdo+f2990ser+f2990doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1310c
                               OTHERWISE
                                    DO seE_1310c WITH "v"
                                    DO diS_1310c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_1310c WITH "i", "v"
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*ZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2990tdo+f2990ser+f2990doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1310c
                               OTHERWISE
                                    DO seE_1310c WITH "v"
                                    DO diS_1310c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_1310c WITH "u", "v"
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc7
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+157.8, 1
                               DO liN_1310c WITH ffFs, ffFs+1
                               DO li1_1310c WITH ffFs, ffFs+1
                               DO muE_1310c WITH "F", "v"
                               DO muE_1310c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_1310c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_1310c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc7
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+157.8, 1
                               DO liN_1310c WITH ifFs, ifFs+1
                               DO li1_1310c WITH ifFs, ifFs+1
                               DO muE_1310c WITH "F", "v"
                               DO muE_1310c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_1310c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1310c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1310c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1310c
                          STORE ifFs TO vfFs
                          DO muE_1310c WITH "i", "v"
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1310c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               SET DELETED OFF
                               GOTO TOP
                               SET DELETED ON
                               SEEK ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_1310c
                          STORE ifFs TO vfFs
                          DO muE_1310c WITH "i", "v"
                          DO seE_1310c WITH "v"
                          DO diS_1310c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1310c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_1310c
 PARAMETER ptPo
 STORE ifFs TO vfFs, ufFs
 DO muE_1310c WITH "F", "i"
 DO muE_1310c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
    .AND. vfFs<ffFs+1
      DO diS_1310c WITH "N"
      DO muE_1310c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufFs+1<=ffFs
      DO coLsc7
      @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+157.8
      DO liN_1310c WITH ufFs+1, ffFs+1
      DO li1_1310c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1310c
 PARAMETER ptIp
 PRIVATE psIg, peNt, psAl, pcOs, ttDo, psEr, pdOc
 STORE f2990tfa TO pcOs
 STORE f2990tdo TO ptDo
 STORE f2990ser TO psEr
 STORE f2990doc TO pdOc
 IF f2990tdo="CO"
      SELECT deT_cpra
      SEEK ALLTRIM(vcOd)+"*"+ptDo+psEr+pdOc
      IF  .NOT. EOF()
           STORE f2401pre*1.18 TO pcOs
      ENDIF
 ENDIF
 SELECT kaRdex
 DO CASE
      CASE f2990mon=1
           STORE "S/." TO psIg
      CASE f2990mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE f2990tpo="1"
           STORE f2990can TO peNt
           STORE " " TO psAl
      OTHERWISE
           STORE f2990can TO psAl
           STORE " " TO peNt
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,mCO0+001.0 Say F2990TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFS,mCO0+005.0 Say F2990SER Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,mCO0+009.8 Say F2990DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFS,mCO0+020.2 Say F2990FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,mCO0+033.2 Say F2990NOM Font "&mLetAri",9 Style "NQ" Size 1,49.3 Pict "@S50"
 @vFFS,mCO0+083.2 Say F2990EMI Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,mCO0+096.4 Say pENT     Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,mCO0+112.4 Say pSAL     Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
 @vFFS,mCO0+128.4 Say pSIG     Font "&mLetAri",9 Style "NQ" Size 1,06.1
 IF f2990tdo="CO" .AND. pcOs<=0
      DO CASE
           CASE ptIp="N"
                DO coLscr
           CASE ptIp="R"
                DO coLblr
      ENDCASE
 ENDIF
 @vFFS,mCO0+135.3 Say pCOS     Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "9999,999.99"
 RELEASE psIg, peNt, psAl, pcOs, ttDo, psEr, pdOc
ENDPROC
*
PROCEDURE P00_1310c
 DO coLsc7
 DO cuAdro WITH ifFs-1.6, mcO0+1, ffFs+1.2, mcO0+157.8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ ifFs-1.9, mcO0+0.1 TO ifFs-0.1, mcO0+158.4 PATTERN 1
 DO coLsc7
 @ ifFs-0.2, mcO0 TO ifFs-0.2, mcO0+157.8
 @iFFS-1.5,mCO0+003.0 Say "Documento"            Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+022.4 Say "Fecha"                Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+033.2 Say "Cliente/Proveed/Tipo" Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+085.1 Say "Emision"              Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+099.2 Say "Ingresos"             Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+115.9 Say "Salidas"              Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,mCO0+131.5 Say "Prec.Unit.Vtas/Cpras" Font "&mLetAri",9 Style "BT"
 DO liN_1310c WITH ifFs-1.7, ffFs+1.4
 DO li1_1310c WITH ifFs-0.2, ffFs+1.4
ENDPROC
*
PROCEDURE Lin_1310c
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, mcO0+019.8 TO pfIn, mcO0+019.8
 @ piNi, mcO0+033.0 TO pfIn, mcO0+033.0
 @ piNi, mcO0+082.9 TO pfIn, mcO0+082.9
 @ piNi, mcO0+096.1 TO pfIn, mcO0+096.1
 @ piNi, mcO0+112.0 TO pfIn, mcO0+112.0
 @ piNi, mcO0+128.0 TO pfIn, mcO0+128.0
ENDPROC
*
PROCEDURE Li1_1310c
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, mcO0+004.6 TO pfIn, mcO0+004.6
 @ piNi, mcO0+009.4 TO pfIn, mcO0+009.4
 @ piNi, mcO0+134.9 TO pfIn, mcO0+134.9
ENDPROC
*
PROCEDURE See_1310c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
      CASE psEe="i"
           SEEK ALLTRIM(vcOd)+"*"+iaNo+imEs+idIa+itPo+itPp+itDo+isEr+idOc
      CASE psEe="u"
           SEEK ALLTRIM(vcOd)+"*"+uaNo+umEs+udIa+utPo+utPp+utDo+usEr+udOc
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1310c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE itPo TO vtPo
           STORE itPp TO vtPp
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE utPo TO vtPo
           STORE utPp TO vtPp
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2990tdo TO vtDo
           STORE f2990ser TO vsEr
           STORE f2990doc TO vdOc
           STORE f2990tpo TO vtPo
           STORE f2990tpp TO vtPp
           STORE f2990ano TO vaNo
           STORE f2990mes TO vmEs
           STORE f2990dia TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2990tdo TO utDo
           STORE f2990ser TO usEr
           STORE f2990doc TO udOc
           STORE f2990tpo TO utPo
           STORE f2990tpp TO utPp
           STORE f2990ano TO uaNo
           STORE f2990mes TO umEs
           STORE f2990dia TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2990tdo TO itDo
           STORE f2990ser TO isEr
           STORE f2990doc TO idOc
           STORE f2990tpo TO itPo
           STORE f2990tpp TO itPp
           STORE f2990ano TO iaNo
           STORE f2990mes TO imEs
           STORE f2990dia TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_1310c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+157.8
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+157.8
           DO diS_1310c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1310c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           DO muE_1310c WITH "F", "v"
           DO diS_1310c WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1310c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran las ventas x meses de acuerdo"
 @ pfIl+01, 01 SAY "a la opcion escogida, en el rango de fechas seleccionadas."
 @ pfIl+02, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 02 SAY "ESC" STYLE "BT"
 @ pfIl+05, 02 SAY "F10" STYLE "BT"
 @ pfIl+06, 02 SAY "F1" STYLE "BT"
 @ pfIl+07, 02 SAY "F8" STYLE "BT"
 @ pfIl+08, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 02 SAY "HOME" STYLE "BT"
 @ pfIl+13, 02 SAY "END" STYLE "BT"
 @ pfIl+04, 22 SAY "Regresar a Cabecera"
 @ pfIl+05, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+06, 22 SAY "Ayuda del Programa"
 @ pfIl+07, 22 SAY "Pasar Datos a Excel"
 @ pfIl+08, 22 SAY "Línea inferior"
 @ pfIl+09, 22 SAY "Línea superior"
 @ pfIl+10, 22 SAY "Página siguiente"
 @ pfIl+11, 22 SAY "Página anterior"
 @ pfIl+12, 22 SAY "Primera línea"
 @ pfIl+13, 22 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Res_1310c
 DO reS_1310b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 SAVE SCREEN TO vpAn_12
 DO diS_1310b WITH "N"
 STORE vfIl TO cfIl
 STORE ifIl TO vfIl
 DO diS_1310b WITH "R1"
 STORE cfIl TO vfIl
 STORE ftM3nuv TO vnUv
 DO p00_1300d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_4
 SET ORDER TO FTM4DCR
 DO seE_1310c WITH "i"
 DO paN_1310c
 DO seE_1310c WITH "i"
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF ALLTRIM(vcDg)+"*"=ALLTRIM(ftM4cdg)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_1310c WITH "i", "v"
      STORE ifFs TO vfFs
 ENDIF
 DO seE_1310c WITH "v"
 DO muE_1310c WITH "F", "v"
 DO diS_1310c WITH "R"
ENDPROC
*
