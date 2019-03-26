 PARAMETER ppRg
 = INKEY(0.01)
 SELECT caB_cpra
 STORE 99 TO mkEy
 STORE 01 TO vsW2
 DO orD_0000a WITH "2400", "A", "F2400DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_2400w WITH "v"
 SET NEAR OFF
 IF EOF()
      GOTO TOP
 ENDIF
 DO p00_2400w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2400w
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_2400w WITH "i", "v"
 DO seE_2400w WITH "v"
 DO diS_2400w WITH "R"
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2400w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2400w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2400w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. ppRg="PAI2800A" .AND. f2400est="9"
                STORE "Solo se puede marcar documentos activos..." TO mmSj
           CASE mkEy=k_F7 .AND. ppRg="PAI2800A"
                STORE f2400ser TO csEr
                STORE f2400doc TO cdOc
                SELECT tmP_np
                SEEK csEr+cdOc
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM7ser WITH csEr
                     REPLACE ftM7doc WITH cdOc
                ELSE
                     DELETE
                     PACK
                ENDIF
                SELECT caB_cpra
                DO diS_2400w WITH "R"
           CASE mkEy=k_Tab .AND. ppRg="PAI2800A"
                EXIT
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
                DO caM_2400w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2400tdo+f2400ser+f2400doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2400w
                               OTHERWISE
                                    DO seE_2400w WITH "v"
                                    DO diS_2400w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2400w WITH "i", "v"
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2400tdo+f2400ser+f2400doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2400w
                               OTHERWISE
                                    DO seE_2400w WITH "v"
                                    DO diS_2400w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2400w WITH "u", "v"
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2400w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2400w WITH "F", "v"
                               DO muE_2400w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2400w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2400w WITH "F", "v"
                          ENDIF
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2400w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2400w WITH "F", "i"
                               DO muE_2400w WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2400w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2400w WITH "F", "v"
                          ENDIF
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2400w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2400w
                          STORE ifFr TO vfFr
                          DO muE_2400w WITH "i", "v"
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2400w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2400w
                          STORE ifFr TO vfFr
                          DO muE_2400w WITH "i", "v"
                          DO seE_2400w WITH "v"
                          DO diS_2400w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2400w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2400w
 DO pn1_2400w WITH "1"
ENDPROC
*
PROCEDURE Pa1_2400w
 DO pn1_2400w WITH "2"
ENDPROC
*
PROCEDURE Pn1_2400w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_2400w WITH "F", "i"
 DO muE_2400w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f2400tdo+f2400ser+f2400doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_2400w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_2400w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2400w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2400w
 PARAMETER ptIp
 PRIVATE ptDo, psEr, pdOc, pmAr, ptPp
 STORE f2400tdo TO ptDo
 STORE f2400ser TO psEr
 STORE f2400doc TO pdOc
 STORE 0 TO pmAr
 DO CASE
      CASE ppRg="PAI2800A"
           SELECT tmP_np
           SEEK psEr+pdOc
           IF  .NOT. EOF()
                STORE 1 TO pmAr
           ENDIF
 ENDCASE
 SELECT caB_cpra
 DO CASE
      CASE ptIp="N" .AND. f2400tpo=2
           DO coLscr
      CASE ptIp="N" .AND. f2400tpo=3
           DO coLscv
      CASE ptIp="N" .AND. f2400tpo=4
           DO coLscz
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+0.0 Say F2400TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,mCO0+4.4 Say F2400SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,mCO0+9.4 Say F2400DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 DO CASE
      CASE f2400est="1"
           @vFFR,mCO0+20.2 Say "Dig" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2400est="2"
           @vFFR,mCO0+20.2 Say "Pro" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2400est="3"
           @vFFR,mCO0+20.2 Say "Cer" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2400est="4"
           @vFFR,mCO0+20.2 Say "Gen" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2400est="9"
           @vFFR,mCO0+20.2 Say "Anu" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 @vFFR,mCO0+025.4 Say F2400FEM                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+039.0 Say F2400NOM                           Font "&mLetAri",9 Style "NQ" Size 1,40.5 Pict "@S43"
 @vFFR,mCO0+080.5 Say F2400TD1+"-"+F2400SR1+"-"+F2400FAC Font "&mLetAri",9 Style "NQ" Size 1,31.5 Pict "@S33"
 @vFFR,mCO0+113.2 Say F2400PED                           Font "&mLetAri",9 Style "NQ" Size 1,11.9 Pict "@S13"
 IF pmAr=1
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl
 ENDIF
 RELEASE ptDo, psEr, pdOc, pmAr, ptPp
ENDPROC
*
PROCEDURE Cam_2400w
 DO muE_2400w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "2400", "A", "F2400DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "2400", "A", "F2400FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "2400", "A", "F2400FAC", "D"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2400w WITH "v"
 DO pa1_2400w
 IF cfFr=0
      DO muE_2400w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_2400w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_2400w WITH "v"
 DO diS_2400w WITH "R"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+80.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+80.5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2400w
 STORE vfFr TO cfFr
 DO muE_2400w WITH "v", "x"
 SET READBORDER ON
 DO p00_2400a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2400w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 DO seE_2400w WITH "i"
 DO paN_2400w
 STORE cfFr TO vfFr
 DO muE_2400w WITH "x", "v"
 DO seE_2400w WITH "v"
 DO diS_2400w WITH "R"
ENDPROC
*
PROCEDURE Lin_2400w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
 @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
 @ piNi, mcO0+038.4 TO pfIn, mcO0+038.4
 @ piNi, mcO0+079.8 TO pfIn, mcO0+079.8
 @ piNi, mcO0+112.5 TO pfIn, mcO0+112.5
ENDPROC
*
PROCEDURE P00_2400w
 STORE mcO0 TO piCl
 STORE mcO0+124.8 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, mcO0, ffFr+3.2, mcO0+125.1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, mcO0 TO ifFr-0.2, mcO0+125.1
 @ ffFr+1.1, mcO0 TO ffFr+1.1, mcO0+125.1
 @ ffFr+1.6, mcO0-0.3 TO ffFr+3.2, mcO0+125.1 PATTERN 1 COLOR SCHEME 4
 @fFFR+1.9,mCO0+50 Say "CONSULTA DE COMPRAS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO liN_2400w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.4, mcO0+019.6 TO ifFr-0.2, mcO0+019.6
 @ ifFr-1.4, mcO0+024.8 TO ifFr-0.2, mcO0+024.8
 @ ifFr-1.4, mcO0+038.4 TO ifFr-0.2, mcO0+038.4
 @ ifFr-1.4, mcO0+079.8 TO ifFr-0.2, mcO0+079.8
 @ ifFr-1.4, mcO0+112.5 TO ifFr-0.2, mcO0+112.5
 DO coLblz
 @iFFR-1.2,mCO0+000.0 Say "Documento" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+020.6 Say "Est"       Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+025.5 Say "F.Emisión" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+039.2 Say "Proveedor" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+080.5 Say "Factura"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,mCO0+113.1 Say "Pedido"    Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+80.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+80.5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_2400w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW2=01
                     SEEK vtDo+vsEr+vdOc
                CASE vsW2=02
                     SEEK vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW2=03
                     SEEK vfAc+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW2=01
                     SEEK itDo+isEr+idOc
                CASE vsW2=02
                     SEEK iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW2=03
                     SEEK ifAc+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW2=01
                     SEEK utDo+usEr+udOc
                CASE vsW2=02
                     SEEK uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW2=03
                     SEEK ufAc+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2400w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE ifAc TO vfAc
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ufAc TO vfAc
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xfAc TO vfAc
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vfAc TO xfAc
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2400tdo TO vtDo
           STORE f2400ser TO vsEr
           STORE f2400doc TO vdOc
           STORE f2400td1+ALLTRIM(f2400sr1)+"*"+ALLTRIM(f2400fac)+"*" TO vfAc
           STORE SUBSTR(DTOC(f2400fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2400fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2400fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2400tdo TO itDo
           STORE f2400ser TO isEr
           STORE f2400doc TO idOc
           STORE f2400td1+ALLTRIM(f2400sr1)+"*"+ALLTRIM(f2400fac)+"*" TO ifAc
           STORE SUBSTR(DTOC(f2400fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2400fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2400fem), 1, 2) TO idIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2400tdo TO utDo
           STORE f2400ser TO usEr
           STORE f2400doc TO udOc
           STORE f2400td1+ALLTRIM(f2400sr1)+"*"+ALLTRIM(f2400fac)+"*" TO ufAc
           STORE SUBSTR(DTOC(f2400fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2400fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2400fem), 1, 2) TO udIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2400w
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
           DO diS_2400w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2400w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2400w WITH "F", "v"
           DO diS_2400w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2400w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Compras en el orden"
 @ pfIl+1, 02 SAY "que se ha elegido."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+6, 26 SAY ":" STYLE "BT"
 @ pfIl+7, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 07 SAY "ESC" STYLE "BT"
 @ pfIl+6, 07 SAY "F10" STYLE "BT"
 @ pfIl+7, 07 SAY "F1" STYLE "BT"
 @ pfIl+5, 28 SAY "Regresar a Cabecera"
 @ pfIl+6, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 28 SAY "Ayuda del Programa"
 STORE pfIl+8 TO pfIl
 IF ppRg="PAI2800A"
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 07 SAY "F7" STYLE "BT"
      @ pfIl, 28 SAY "Marca/Desparca Compra"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26 SAY ":" STYLE "BT"
 @ pfIl+1, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+6, 26 SAY ":" STYLE "BT"
 @ pfIl+7, 26 SAY ":" STYLE "BT"
 @ pfIl+0, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+3, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+4, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 07 SAY "HOME" STYLE "BT"
 @ pfIl+7, 07 SAY "END" STYLE "BT"
 @ pfIl+0, 28 SAY "Línea inferior"
 @ pfIl+1, 28 SAY "Línea superior"
 @ pfIl+2, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+3, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+4, 28 SAY "Página siguiente"
 @ pfIl+5, 28 SAY "Página anterior"
 @ pfIl+6, 28 SAY "Primera línea"
 @ pfIl+7, 28 SAY "Última línea"
 STORE pfIl+8 TO pfIl
 IF ppRg="PAI2800A"
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 07 SAY "TAB" STYLE "BT"
      @ pfIl, 28 SAY "Copia a Guia de Salida"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
