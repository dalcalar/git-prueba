 = INKEY(0.01)
 SELECT caB_remi
 STORE 99 TO mkEy
 STORE 01 TO vsW2
 DO orD_0000a WITH "2600", "A", "F2600DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_2600w WITH "v"
 SET NEAR OFF
 IF EOF()
      GOTO TOP
 ENDIF
 DO p00_2600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2600w
 STORE ifFr TO vfFr
 DO muE_2600w WITH "i", "v"
 DO seE_2600w WITH "v"
 DO diS_2600w WITH "R"
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
           DO reS_2600w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2600w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2600w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2600w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2600w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
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
                DO caM_2600w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2600tdo+f2600ser+f2600doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2600w
                               OTHERWISE
                                    DO seE_2600w WITH "v"
                                    DO diS_2600w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2600w WITH "i", "v"
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2600tdo+f2600ser+f2600doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2600w
                               OTHERWISE
                                    DO seE_2600w WITH "v"
                                    DO diS_2600w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2600w WITH "u", "v"
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2600w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2600w WITH "F", "u"
                               DO muE_2600w WITH "F", "v"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2600w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2600w WITH "F", "v"
                          ENDIF
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2600w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2600w WITH "F", "v"
                               DO muE_2600w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2600w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2600w WITH "F", "v"
                          ENDIF
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2600w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2600w
                          STORE ifFr TO vfFr
                          DO muE_2600w WITH "i", "v"
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2600w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2600w
                          STORE ifFr TO vfFr
                          DO muE_2600w WITH "i", "v"
                          DO seE_2600w WITH "v"
                          DO diS_2600w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2600w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2600w
 DO pn1_2600w WITH "1"
ENDPROC
*
PROCEDURE Pa1_2600w
 DO pn1_2600w WITH "2"
ENDPROC
*
PROCEDURE Pn1_2600w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_2600w WITH "F", "i"
 DO muE_2600w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f2600tdo+f2600ser+f2600doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_2600w WITH "N"
      ENDCASE
      DO muE_2600w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2600w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2600w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+0.0 Say F2600TDO       Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,mCO0+4.4 Say F2600SER       Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,mCO0+9.4 Say F2600DOC       Font "&mLetAri",9 Style "NQ" Size 1,09.8
 DO CASE
      CASE f2600est="1"
           @vFFR,mCO0+20.2 Say "Dig" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2600est="2"
           @vFFR,mCO0+20.2 Say "Imp" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2600est="8"
           @vFFR,mCO0+20.2 Say "Baj" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2600est="9"
           @vFFR,mCO0+20.2 Say "Anu" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 @vFFR,mCO0+25.4 Say F2600FEM      Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+39.0 Say F2600NOM      Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S68"
 DO CASE
      CASE ptIp="N" .AND. f2600mot<>1
           DO coLscr
      CASE ptIp="R" .AND. f2600mot<>1
           DO coLblr
 ENDCASE
 DO CASE
      CASE f2600mot=1
           @vFFR,mCO0+105.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=2
           @vFFR,mCO0+105.5 Say "Salida x Traslado"                Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=3
           @vFFR,mCO0+105.5 Say "Ingreso x Traslado"               Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=4
           @vFFR,mCO0+105.5 Say "Salida x Devolución"              Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=5
           @vFFR,mCO0+105.5 Say "Salida x Consumo"                 Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=6
           @vFFR,mCO0+105.5 Say "Ingreso x Compra"                 Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=7
           @vFFR,mCO0+105.5 Say "Salida x Vta.suj.Conf"            Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=8
           @vFFR,mCO0+105.5 Say "Salida x Transformac"             Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=9
           @vFFR,mCO0+105.5 Say "Salida x Emis.Itiner"             Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=10
           @vFFR,mCO0+105.5 Say "Salida x Trasl.Zona Prim"         Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=11
           @vFFR,mCO0+105.5 Say "Salida x Consignación"            Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=12
           @vFFR,mCO0+105.5 Say "Ingreso x Recojo bienes transf"   Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
      CASE f2600mot=13
           @vFFR,mCO0+105.5 Say "Salida x Otros"                   Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
 ENDCASE
ENDPROC
*
PROCEDURE Cam_2600w
 DO muE_2600w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "2600", "A", "F2600DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "2600", "A", "F2600FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "2600", "A", "F2600NOM", "D"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2600w WITH "v"
 DO pa1_2600w
 IF cfFr=00
      DO muE_2600w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_2600w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_2600w WITH "v"
 DO diS_2600w WITH "R"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+39.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+39.5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2600w
 DO muE_2600w WITH "v", "x"
 STORE vfFr TO cfFr
 SET READBORDER ON
 DO p00_2600a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2600w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_remi
 DO seE_2600w WITH "i"
 DO paN_2600w
 STORE cfFr TO vfFr
 DO muE_2600w WITH "x", "v"
 DO seE_2600w WITH "v"
 DO diS_2600w WITH "R"
ENDPROC
*
PROCEDURE Lin_2600w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
 @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
 @ piNi, mcO0+038.4 TO pfIn, mcO0+038.4
 @ piNi, mcO0+104.9 TO pfIn, mcO0+104.9
ENDPROC
*
PROCEDURE P00_2600w
 STORE mcO0 TO piCl
 STORE mcO0+125.8 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, mcO0, ffFr+3.2, mcO0+125.8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, mcO0 TO ifFr-0.2, mcO0+125.8
 @ ffFr+1.1, mcO0 TO ffFr+1.1, mcO0+125.8
 @ ffFr+1.6, mcO0-0.3 TO ffFr+3.2, mcO0+125.8 PATTERN 1 COLOR SCHEME 4
 @fFFR+1.9,mCO0+39 Say "CONSULTA DE GUÍAS DE REMISIÓN" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2600w WITH ifFr-0.2, ffFr+1.2
 @ ifFr-1.7, mcO0+019.6 TO ifFr-0.2, mcO0+019.6
 @ ifFr-1.7, mcO0+024.8 TO ifFr-0.2, mcO0+024.8
 @ ifFr-1.7, mcO0+038.4 TO ifFr-0.2, mcO0+038.4
 @ ifFr-1.7, mcO0+104.9 TO ifFr-0.2, mcO0+104.9
 DO coLblz
 @iFFR-1.3,mCO0+000.0 Say "Documento"    Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+020.6 Say "Est"          Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+026.1 Say "F.Emisión"    Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+039.5 Say "Razón Social" Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+112.1 Say "Motivo"       Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+39.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+39.5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_2600w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW2=01
                     SEEK vtDo+vsEr+vdOc
                CASE vsW2=02
                     SEEK vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW2=03
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW2=01
                     SEEK itDo+isEr+idOc
                CASE vsW2=02
                     SEEK iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW2=03
                     SEEK UPPER(inOm)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW2=01
                     SEEK utDo+usEr+udOc
                CASE vsW2=02
                     SEEK uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW2=03
                     SEEK UPPER(unOm)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2600w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2600tdo TO vtDo
           STORE f2600ser TO vsEr
           STORE f2600doc TO vdOc
           STORE f2600nom TO vnOm
           STORE SUBSTR(DTOC(f2600fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2600fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2600fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2600tdo TO itDo
           STORE f2600ser TO isEr
           STORE f2600doc TO idOc
           STORE f2600nom TO inOm
           STORE SUBSTR(DTOC(f2600fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2600fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2600fem), 1, 2) TO idIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2600tdo TO utDo
           STORE f2600ser TO usEr
           STORE f2600doc TO udOc
           STORE f2600nom TO unOm
           STORE SUBSTR(DTOC(f2600fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2600fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2600fem), 1, 2) TO udIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2600w
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
           mcCc<=mcO0+125.8
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+125.8
           DO diS_2600w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2600w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2600w WITH "F", "v"
           DO diS_2600w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2600w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Guías de Remisión en"
 @ pfIl+01, 02 SAY "el orden que se ha elegido."
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
 @ pfIl+05, 07 SAY "ESC" STYLE "BT"
 @ pfIl+06, 07 SAY "F10" STYLE "BT"
 @ pfIl+07, 07 SAY "F1" STYLE "BT"
 @ pfIl+08, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+11, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+12, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 07 SAY "HOME" STYLE "BT"
 @ pfIl+15, 07 SAY "END" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Línea inferior"
 @ pfIl+09, 28 SAY "Línea superior"
 @ pfIl+10, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+11, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+12, 28 SAY "Página siguiente"
 @ pfIl+13, 28 SAY "Página anterior"
 @ pfIl+14, 28 SAY "Primera línea"
 @ pfIl+15, 28 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
