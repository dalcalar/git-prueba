 = INKEY(0.01)
 SELECT caB_fact
 STORE f1300pig TO xpIg
 STORE f1300fem TO xfEm
 IF SUBSTR(f1300ser, 1, 1)="T"
      STORE DATE() TO xfEm
 ENDIF
 SELECT caMbio
 SEEK xfEm
 IF EOF()
      STORE 1 TO xtCa
 ELSE
      STORE f9111tc1 TO xtCa
 ENDIF
 SELECT peR_fact
 GOTO TOP
 SEEK vsEr+vdOc
 STORE 00 TO tvL1, tvL2, tpEr
 DO WHILE  .NOT. EOF() .AND. f1305ser+f1305doc=vsEr+vdOc
      IF f1305mon=1
           STORE tvL1+f1305tot TO tvL1
           STORE tpEr+ROUND(f1305tot*xpIg/100, 2) TO tpEr
      ELSE
           STORE tvL2+f1305tot TO tvL2
           STORE tpEr+ROUND(f1305tot*xtCa*xpIg/100, 2) TO tpEr
      ENDIF
      SKIP
 ENDDO
 DO p00_1300e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peR_fact
 GOTO TOP
 SEEK vsEr+vdOc
 DO paN_1300e
 STORE isR1 TO vsR1
 STORE idO1 TO vdO1
 STORE ifFs TO vfFs
 SEEK vsEr+vdOc+vsR1+vdO1
 DO diS_1300e WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300e
           CASE mkEy=k_F2 .AND. wtPo="2"
                DO geT_1300e
                STORE 99 TO mkEy
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1300e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vsEr+vdOc
                DO CASE
                     CASE f1305sr1+f1305fac=isR1+idO1 .AND. vsR1+vdO1=isR1+idO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsR1+vdO1=isR1+idO1
                                    DO paN_1300e
                               OTHERWISE
                                    SEEK vsEr+vdOc+vsR1+vdO1
                                    DO diS_1300e WITH "N"
                          ENDCASE
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ifFs TO vfFs
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vsEr+vdOc+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f1305sr1+f1305fac=usR1+udO1 .AND. vsR1+vdO1=usR1+udO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsR1+vdO1=usR1+udO1
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1300e
                               OTHERWISE
                                    SEEK vsEr+vdOc+vsR1+vdO1
                                    DO diS_1300e WITH "N"
                          ENDCASE
                          STORE usR1 TO vsR1
                          STORE udO1 TO vdO1
                          STORE ufFs TO vfFs
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "N"
                          SKIP
                          IF vsR1+vdO1=usR1+udO1
                               DO coL_fondo
                               DO suBe WITH ifFs, vcO1+0.5, ffFs, vcO1+50, 1
                               DO liN_1300e WITH ffFs, ffFs+1
                               STORE f1305sr1 TO usR1, vsR1
                               STORE f1305fac TO udO1, vdO1
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f1305sr1 TO isR1
                               STORE f1305fac TO idO1
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f1305sr1 TO vsR1
                               STORE f1305fac TO vdO1
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "N"
                          SKIP -1
                          IF vsR1+vdO1=isR1+idO1
                               DO coL_fondo
                               DO baJa WITH ifFs, vcO1+0.5, ffFs, vcO1+50, 1
                               DO liN_1300e WITH ifFs, ifFs+1
                               STORE f1305sr1 TO isR1, vsR1
                               STORE f1305fac TO idO1, vdO1
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f1305sr1 TO usR1
                                    STORE f1305fac TO udO1
                               ENDIF
                          ELSE
                               STORE f1305sr1 TO vsR1
                               STORE f1305do1 TO vdO1
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vsEr+vdOc+usR1+udO1
                SKIP
                DO CASE
                     CASE EOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300e
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ifFs TO vfFs
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vsEr+vdOc+isR1+idO1
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                               GOTO TOP
                               SEEK vsEr+vdOc
                          ENDIF
                          DO paN_1300e
                          STORE isR1 TO vsR1
                          STORE idO1 TO vdO1
                          STORE ifFs TO vfFs
                          SEEK vsEr+vdOc+vsR1+vdO1
                          DO diS_1300e WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vsEr+vdOc+vsR1+vdO1
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300e
 STORE ifFs TO vfFs, ufFs
 STORE f1305sr1 TO isR1, usR1
 STORE f1305fac TO idO1, udO1
 DO WHILE  .NOT. EOF() .AND. f1305ser+f1305doc=vsEr+vdOc .AND. vfFs<ffFs+1
      DO diS_1300e WITH "N"
      STORE f1305sr1 TO usR1
      STORE f1305fac TO udO1
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, vcO1+0.5 CLEAR TO ffFs+1, vcO1+50
      DO liN_1300e WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300e
 PARAMETER ptIp
 PRIVATE psIg
 DO CASE
      CASE f1305mon=1
           STORE "S/." TO psIg
      CASE f1305mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc1
 ENDCASE
 @vFFS,vCO1+00.5 Say F1305SR1 Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,vCO1+05.8 Say F1305FAC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFS,vCO1+16.6 Say F1305FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,vCO1+30.1 Say pSIG     Font "&mLetAri",9 Style "NQ" Size 1,4.8
 DO CASE
      CASE f1305tot>999999
           @vFFS,vCO1+35.8 Say F1305TOT  Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
      CASE f1305tot>0
           @vFFS,vCO1+35.9 Say F1305TOT  Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
      OTHERWISE
           @vFFS,vCO1+35.9 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
 ENDCASE
 RELEASE psIg
ENDPROC
*
PROCEDURE Get_1300e
 PRIVATE psEr, pdOc
 STORE f1305sr1 TO psEr
 STORE f1305fac TO pdOc
 @vFFS,vCO1+00.5 Get pSER Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"     Color ,&mColBlN
 @vFFS,vCO1+05.8 Get pDOC Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "9999999" Color ,&mColBlN
 STORE 99 TO mkEy
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 IF mkEy=k_Tab
      SET ORDER TO
      REPLACE f1305sr1 WITH psEr
      REPLACE f1305fac WITH pdOc
      IF vsR1+vdO1=isR1+idOc
           STORE psEr TO isR1
           STORE pdOc TO idO1
      ENDIF
      IF vsR1+vdO1=usR1+udOc
           STORE psEr TO usR1
           STORE pdOc TO udO1
      ENDIF
      STORE psEr TO vsR1
      STORE pdOc TO vdO1
      UNLOCK
      SET ORDER TO F1305DOC
      SEEK vsEr+vdOc+vsR1+vdO1
      SELECT caB_fact
      REPLACE f1300tec WITH "FA:"+vsR1+"-"+vdO1
      REPLACE f1300cm1 WITH "FA:"+vsR1+"-"+vdO1
      UNLOCK
      SELECT peR_fact
 ENDIF
 DO diS_1300e WITH "R"
 SET CONFIRM OFF
ENDPROC
*
PROCEDURE Lin_1300e
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, vcO1+05.2 TO pfIn, vcO1+05.2
 @ piNi, vcO1+16.0 TO pfIn, vcO1+16.0
 @ piNi, vcO1+29.5 TO pfIn, vcO1+29.5
 @ piNi, vcO1+35.4 TO pfIn, vcO1+35.4
ENDPROC
*
PROCEDURE P00_1300e
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ ifFs-9.4, vcO1 TO ffFs+1.0, vcO1+50.5 PATTERN 1
 DO coLsc3
 @ ifFs-1.4, vcO1 TO ifFs-0.2, vcO1+50.5 PATTERN 1
 @ ffFs+1.1, vcO1 TO ffFs+4.1, vcO1+50.5 PATTERN 1
 @ ifFs-7.5, vcO1 TO ifFs-7.5, vcO1+50.5
 @ ifFs-1.4, vcO1+16.0 TO ifFs-0.2, vcO1+16.0
 @ ifFs-1.4, vcO1+29.5 TO ifFs-0.2, vcO1+29.5
 @ ifFs-1.4, vcO1+35.4 TO ifFs-0.2, vcO1+35.4
 @ ffFs+1.1, vcO1+29.5 TO ffFs+4.1, vcO1+29.5
 @ ffFs+1.1, vcO1+35.4 TO ffFs+4.1, vcO1+35.4
 DO liN_1300e WITH ifFs-0.2, ffFs+1
 DO coL_fondo
 SELECT caB_fact
 @iFFS-9.2,vCO1+04.8 Say "Percepción: "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 @iFFS-6.6,vCO1+00.8 Say "Cliente"     Font "&mLetAri",9  Style "BT"
 @iFFS-5.1,vCO1+00.8 Say "Fecha"       Font "&mLetAri",9  Style "BT"
 @iFFS-3.6,vCO1+00.8 Say "%Percepción" Font "&mLetAri",9  Style "BT"
 @iFFS-3.6,vCO1+30.8 Say "T/C"         Font "&mLetAri",9  Style "BT"
 @iFFS-6.6,vCO1+16.8 Say ":"           Font "&mLetAri",9  Style "BT"
 @iFFS-5.1,vCO1+16.8 Say ":"           Font "&mLetAri",9  Style "BT"
 @iFFS-3.6,vCO1+16.8 Say ":"           Font "&mLetAri",9  Style "BT"
 @iFFS-6.6,vCO1+17.8 Say F1300NOM      Font "&mLetAri",9  Style "NT" Size 1,32 Pict "@S35"
 @iFFS-5.1,vCO1+17.8 Say xFEM          Font "&mLetAri",9  Style "NT"
 @iFFS-3.6,vCO1+17.8 Say F1300PIG      Font "&mLetAri",9  Style "NT" Pict "99.99"
 @iFFS-3.6,vCO1+37.8 Say xTCA          Font "&mLetAri",9  Style "NT" Pict "99.999"
 @iFFS-1.3,vCO1+02.8 Say "Factura"     Font "&mLetAri",9  Style "BT"
 @iFFS-1.3,vCO1+19.3 Say "Fecha"       Font "&mLetAri",9  Style "BT"
 @iFFS-1.3,vCO1+30.1 Say "Mon"         Font "&mLetAri",9  Style "BT"
 @iFFS-1.3,vCO1+41.0 Say "Total"       Font "&mLetAri",9  Style "BT"
 DO coLsc3
 @fFFS+1.4,vCO1+30.1 Say "S/."         Font "&mLetAri",9  Style "BT"
 @fFFS+2.8,vCO1+30.1 Say "US$"         Font "&mLetAri",9  Style "BT"
 @fFFS+1.4,vCO1+35.8 Say tVL1          Font "&mLetAri",9  Style "BQ" Pict "999,999.99" Size 1,11.9
 @fFFS+2.8,vCO1+35.8 Say tVL2          Font "&mLetAri",9  Style "BQ" Pict "999,999.99" Size 1,11.9
 @fFFS+2.0,vCO1+05.5 Say "S/."         Font "&mLetAri",10 Style "BQ"
 @fFFS+2.0,vCO1+09.2 Say tPER          Font "&mLetAri",10 Style "BQ" Pict "999,999.99" Size 1,11.9
 SELECT peR_fact
ENDPROC
*
PROCEDURE Rs1_1300e
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 DO orD_1300b IN PVC1300B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vsR1 TO csR1
 STORE vdO1 TO cdO1
 DO rs1_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 STORE csR1 TO vsR1
 STORE cdO1 TO vdO1
 DO rs2_1300e
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_1300e
 STORE vsR1 TO csR1
 STORE vdO1 TO cdO1
 IF vsW4=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p00_1300e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peR_fact
 GOTO TOP
 SEEK vsEr+vdOc+isR1+idO1
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f1305ser+f1305doc=vsEr+vdOc .AND. vfFs<ffFs+1
      IF f1305sr1+f1305fac=vsR1+vdO1
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vsR1 TO isR1, csR1
      STORE vdO1 TO idO1, cdO1
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vsEr+vdOc+isR1+idO1
 DO paN_1300e
 STORE csR1 TO vsR1
 STORE cdO1 TO vdO1
 STORE cfFs TO vfFs
 SEEK vsEr+vdOc+vsR1+vdO1
 DO diS_1300e WITH "R"
ENDPROC
*
PROCEDURE Clp_1300e
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+50
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+50
           DO diS_1300e WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vsEr+vdOc+isR1+idO1
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f1305sr1 TO vsR1
           STORE f1305fac TO vdO1
           DO diS_1300e WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+01, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+02, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF wtPo="2"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "F2" STYLE "BT"
      @ pfIl, 31 SAY "Cambiar Documento con TAB Graba"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 29 SAY ":" STYLE "BT"
 @ pfIl+01, 29 SAY ":" STYLE "BT"
 @ pfIl+02, 29 SAY ":" STYLE "BT"
 @ pfIl+03, 29 SAY ":" STYLE "BT"
 @ pfIl+04, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+00, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+01, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+02, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+03, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+04, 11 SAY "HOME" STYLE "BT"
 @ pfIl+05, 11 SAY "END" STYLE "BT"
 @ pfIl+00, 31 SAY "Línea inferior"
 @ pfIl+01, 31 SAY "Línea superior"
 @ pfIl+02, 31 SAY "Página siguiente"
 @ pfIl+03, 31 SAY "Página anterior"
 @ pfIl+04, 31 SAY "Primera línea"
 @ pfIl+05, 31 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
