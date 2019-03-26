 PARAMETER ppRg
 = INKEY(0.01)
 SELECT caB_orden
 STORE 99 TO mkEy
 STORE 01 TO vsW2
 DO orD_0000a WITH "2910", "A", "F2910DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p00_2910w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2910w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr
 DO muE_2910w WITH "i", "v"
 DO seE_2910w WITH "v"
 DO diS_2910w WITH "R"
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
           DO reS_2910w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2910w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2910w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2910w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT tmP_prod
                ZAP
                REINDEX
                SELECT deT_orden
                GOTO TOP
                SEEK vtDd+vsRo+vdDo
                DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc= ;
                   vtDd+vsRo+vdDo .AND. vfFw<ffFw+1
                     IF f2911can-f2911ctd<=0
                          SKIP
                          LOOP
                     ENDIF
                     STORE f2911cod TO ccOd
                     SELECT tmP_prod
                     APPEND BLANK
                     REPLACE ftM2cod WITH ccOd
                     SELECT deT_orden
                     SKIP
                ENDDO
                SELECT tmP_prod
                GOTO TOP
                IF BOF()
                     STORE "No hay pendientes en esta Orden de Compra" TO mmSj
                     DO poNmsj
                ELSE
                     EXIT
                ENDIF
                SELECT deT_orden
           CASE mkEy=k_Tab
                SELECT deT_orden
                SEEK vtDd+vsRo+vdDo
                IF EOF()
                     STORE "No hay detalle en esta Orden de Compra" TO mmSj
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_12
                     DO paC2911w
                     RESTORE SCREEN FROM vpAn_12
                ENDIF
                IF mkEy=k_Tab
                     EXIT
                ENDIF
                SELECT caB_orden
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=3
                          STORE 1 TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE 3 TO vsW2
                     CASE mkEy=k_Left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                DO caM_2910w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2910tdo+f2910ser+f2910doc=itDd+isRo+idDo .AND.  ;
                          vtDd+vsRo+vdDo=itDd+isRo+idDo
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDd+vsRo+vdDo=itDd+isRo+idDo
                                    DO paN_2910w
                               OTHERWISE
                                    DO seE_2910w WITH "v"
                                    DO diS_2910w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2910w WITH "i", "v"
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2910tdo+f2910ser+f2910doc=utDd+usRo+udDo .AND.  ;
                          vtDd+vsRo+vdDo=utDd+usRo+udDo
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDd+vsRo+vdDo=utDd+usRo+udDo
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2910w
                               OTHERWISE
                                    DO seE_2910w WITH "v"
                                    DO diS_2910w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2910w WITH "u", "v"
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "N"
                          SKIP
                          IF vtDd+vsRo+vdDo=utDd+usRo+udDo
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2910w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2910w WITH "F", "v"
                               DO muE_2910w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2910w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2910w WITH "F", "v"
                          ENDIF
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "N"
                          SKIP -1
                          IF vtDd+vsRo+vdDo=itDd+isRo+idDo
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2910w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2910w WITH "F", "v"
                               DO muE_2910w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2910w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2910w WITH "F", "v"
                          ENDIF
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2910w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2910w
                          STORE ifFr TO vfFr
                          DO muE_2910w WITH "i", "v"
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2910w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2910w
                          STORE ifFr TO vfFr
                          DO muE_2910w WITH "i", "v"
                          DO seE_2910w WITH "v"
                          DO diS_2910w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2910w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2910w
 DO pn1_2910w WITH "1"
ENDPROC
*
PROCEDURE Pa1_2910w
 DO pn1_2910w WITH "2"
ENDPROC
*
PROCEDURE Pn1_2910w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_2910w WITH "F", "i"
 DO muE_2910w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f2910tdo+f2910ser+f2910doc=xtDd+xsRo+xdDo
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_2910w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_2910w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2910w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2910w
 PARAMETER ptIp
 PRIVATE peSt
 DO CASE
      CASE f2910est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc3
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
      CASE f2910est="2"
           STORE "Pen" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO CASE
                          CASE mhLp=0
                               SET COLOR TO RGB(0,128,0,154,162,170)
                          CASE mhLp=1
                               SET COLOR TO RGB(0,128,0,154,162,170)
                          CASE mhLp=2
                               SET COLOR TO RGB(0,128,0,128,128,128)
                     ENDCASE
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
      CASE f2910est="3"
           STORE "Pro" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO CASE
                          CASE mhLp=0
                               SET COLOR TO RGB(0,0,128,154,162,170)
                          CASE mhLp=1
                               SET COLOR TO RGB(0,0,128,154,162,170)
                          CASE mhLp=2
                               SET COLOR TO RGB(0,0,128,128,128,128)
                     ENDCASE
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f2910est="9"
           STORE "Anu" TO peSt
           DO CASE
                CASE ptIp="N"
                     DO CASE
                          CASE mhLp=0
                               SET COLOR TO RGB(155,0,0,154,162,170)
                          CASE mhLp=1
                               SET COLOR TO RGB(155,0,0,154,162,170)
                          CASE mhLp=2
                               SET COLOR TO RGB(155,0,0,128,128,128)
                     ENDCASE
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      OTHERWISE
           STORE "   " TO peSt
           DO CASE
                CASE ptIp="N"
                     DO coLsc3
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
 ENDCASE
 @vFFR,mCO0+20.2 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+00.0 Say F2910TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,mCO0+04.4 Say F2910SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,mCO0+09.4 Say F2910DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFR,mCO0+25.4 Say F2910FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+39.0 Say F2910NOM Font "&mLetAri",9 Style "NQ" Size 1,49.5 Pict "@S51"
 @vFFR,mCO0+89.5 Say F2910CM1 Font "&mLetAri",9 Style "NQ" Size 1,50.9 Pict "@S52"
ENDPROC
*
PROCEDURE Cam_2910w
 DO muE_2910w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "2910", "A", "F2910DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "2910", "A", "F2910FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "2910", "A", "F2910NOM", "D"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2910w WITH "v"
 DO pa1_2910w
 IF cfFr=00
      DO muE_2910w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_2910w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_2910w WITH "v"
 DO diS_2910w WITH "R"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+39.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+39.2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2910w
 DO muE_2910w WITH "v", "x"
 STORE vfFr TO cfFr
 SET READBORDER ON
 DO CASE
      CASE ppRg="1"
           DO p00_2400a WITH "1"
      CASE ppRg="2"
           DO p00_2700a WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2910w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_orden
 DO seE_2910w WITH "i"
 DO paN_2910w
 DO muE_2910w WITH "x", "v"
 STORE cfFr TO vfFr
 DO seE_2910w WITH "v"
 DO diS_2910w WITH "R"
ENDPROC
*
PROCEDURE Lin_2910w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+03.8 TO pfIn, mcO0+03.8
 @ piNi, mcO0+08.8 TO pfIn, mcO0+08.8
 @ piNi, mcO0+19.6 TO pfIn, mcO0+19.6
 @ piNi, mcO0+24.8 TO pfIn, mcO0+24.8
 @ piNi, mcO0+38.4 TO pfIn, mcO0+38.4
 @ piNi, mcO0+88.9 TO pfIn, mcO0+88.9
ENDPROC
*
PROCEDURE P00_2910w
 STORE mcO0 TO piCl
 STORE mcO0+140.6 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, mcO0, ffFr+3.2, puCl+0.3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, mcO0 TO ifFr-0.2, puCl+0.3
 @ ffFr+1.1, mcO0 TO ffFr+1.1, puCl+0.3
 @ ffFr+1.6, mcO0-0.3 TO ffFr+3.2, puCl+0.3 PATTERN 1 COLOR SCHEME 4
 @fFFR+1.9,mCO0+25 Say "CONSULTA DE ORDENES DE COMPRA" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2910w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.3, mcO0+19.6 TO ifFr-0.2, mcO0+19.6
 @ ifFr-1.3, mcO0+24.8 TO ifFr-0.2, mcO0+24.8
 @ ifFr-1.3, mcO0+38.4 TO ifFr-0.2, mcO0+38.4
 @ ifFr-1.3, mcO0+88.9 TO ifFr-0.2, mcO0+88.9
 DO coLblz
 @iFFR-1.2,mCO0+00.0 Say "Documento"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+20.6 Say "Est"        Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+25.5 Say "F.Emisión"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+39.2 Say "Proveedor"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+90.1 Say "Comentario" Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+39.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+39.2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_2910w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW2=01
                     SEEK vtDd+vsRo+vdDo
                CASE vsW2=02
                     SEEK vaNo+vmEs+vdIa+vtDd+vsRo+vdDo
                CASE vsW2=03
                     SEEK UPPER(vnMm)+vtDd+vsRo+vdDo
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW2=01
                     SEEK itDo+isEr+idOc
                CASE vsW2=02
                     SEEK iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW2=03
                     SEEK UPPER(inMm)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW2=01
                     SEEK utDo+usEr+udOc
                CASE vsW2=02
                     SEEK uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW2=03
                     SEEK UPPER(unMm)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2910w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDd TO vtDd
           STORE isRo TO vsRo
           STORE idDo TO vdDo
           STORE inMm TO vnMm
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDd TO vtDd
           STORE usRo TO vsRo
           STORE udDo TO vdDo
           STORE unMm TO vnMm
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDd TO vtDd
           STORE xsRo TO vsRo
           STORE xdDo TO vdDo
           STORE xnMm TO vnMm
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDd TO xtDd
           STORE vsRo TO xsRo
           STORE vdDo TO xdDo
           STORE vnMm TO xnMm
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2910tdo TO vtDd
           STORE f2910ser TO vsRo
           STORE f2910doc TO vdDo
           STORE f2910nom TO vnMm
           STORE SUBSTR(DTOC(f2910fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2910fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2910fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2910tdo TO itDd
           STORE f2910ser TO isRo
           STORE f2910doc TO idDo
           STORE f2910nom TO inMm
           STORE SUBSTR(DTOC(f2910fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2910fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2910fem), 1, 2) TO idIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2910tdo TO utDd
           STORE f2910ser TO usRo
           STORE f2910doc TO udDo
           STORE f2910nom TO unMm
           STORE SUBSTR(DTOC(f2910fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2910fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2910fem), 1, 2) TO udIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2910w
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
           mcCc<=mcO0+104.9
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+104.9
           DO diS_2910w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2910w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2910w WITH "F", "v"
           DO diS_2910w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2910w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Ordenes de Compra"
 @ pfIl+01, 02 SAY "en el orden que se ha elegido."
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
 @ pfIl+15, 26 SAY ":" STYLE "BT"
 @ pfIl+16, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 07 SAY "ESC" STYLE "BT"
 @ pfIl+06, 07 SAY "F10" STYLE "BT"
 @ pfIl+07, 07 SAY "F1" STYLE "BT"
 @ pfIl+08, 07 SAY "TAB" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+12, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+13, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+14, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+15, 07 SAY "HOME" STYLE "BT"
 @ pfIl+16, 07 SAY "END" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Entrar a ver el Detalle"
 @ pfIl+09, 28 SAY "Línea inferior"
 @ pfIl+10, 28 SAY "Línea superior"
 @ pfIl+11, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+12, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+13, 28 SAY "Página siguiente"
 @ pfIl+14, 28 SAY "Página anterior"
 @ pfIl+15, 28 SAY "Primera línea"
 @ pfIl+16, 28 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
