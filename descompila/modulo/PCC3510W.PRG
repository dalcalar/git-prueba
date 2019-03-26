 = INKEY(0.01)
 SELECT caB_ing_caja
 STORE 99 TO mkEy
 STORE 01 TO vsW0
 DO orD_3510w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_3510w WITH "v"
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ENDIF
 DO p00_3510w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_3510w
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_3510w WITH "i", "v"
 DO seE_3510w WITH "v"
 DO diS_3510w WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3510w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3510w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3510w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3510w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsW0=5
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE 5 TO vsW0
                     OTHERWISE
                          STORE vsW0-1 TO vsW0
                ENDCASE
                DO caM_3510w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3510ano+f3510mes+f3510ser+f3510num=iaNo+imEs+ ;
                          isEr+inUm .AND. vaNo+vmEs+vsEr+vnUm=iaNo+imEs+ ;
                          isEr+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vsEr+vnUm=iaNo+imEs+isEr+inUm
                                    DO paN_3510w
                               OTHERWISE
                                    DO seE_3510w WITH "v"
                                    DO diS_3510w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_3510w WITH "i", "v"
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3510ano+f3510mes+f3510ser+f3510num=uaNo+umEs+ ;
                          usEr+unUm .AND. vaNo+vmEs+vsEr+vnUm=uaNo+umEs+ ;
                          usEr+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vsEr+vnUm=uaNo+umEs+usEr+unUm
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3510w
                               OTHERWISE
                                    DO seE_3510w WITH "v"
                                    DO diS_3510w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_3510w WITH "u", "v"
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "N"
                          SKIP
                          IF vaNo+vmEs+vsEr+vnUm=uaNo+umEs+usEr+unUm
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3510w WITH ifFr, ffFr+1
                               DO muE_3510w WITH "F", "u"
                               DO muE_3510w WITH "F", "v"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_3510w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_3510w WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "N"
                          SKIP -1
                          IF vaNo+vmEs+vsEr+vnUm=iaNo+imEs+isEr+inUm
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3510w WITH ifFr, ffFr+1
                               DO muE_3510w WITH "F", "v"
                               DO muE_3510w WITH "F", "i"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_3510w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3510w WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3510w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3510w
                          STORE ifFr TO vfFr
                          DO muE_3510w WITH "i", "v"
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3510w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3510w
                          STORE ifFr TO vfFr
                          DO muE_3510w WITH "i", "v"
                          DO seE_3510w WITH "v"
                          DO diS_3510w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3510w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3510w
 DO pn1_3510w WITH "1"
ENDPROC
*
PROCEDURE Pa1_3510w
 DO pn1_3510w WITH "2"
ENDPROC
*
PROCEDURE Pn1_3510w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_3510w WITH "F", "i"
 DO muE_3510w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f3510ano+f3510mes+f3510ser+f3510num=xaNo+ ;
                xmEs+xsEr+xnUm
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_3510w WITH "N"
      ENDCASE
      DO muE_3510w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_3510w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3510w
 PARAMETER ptIp
 PRIVATE peSt, psIg
 DO CASE
      CASE f3510est="1"
           STORE "Dig" TO peSt
      CASE f3510est="2"
           STORE "Pro" TO peSt
      CASE f3510est="3"
           STORE "Cer" TO peSt
      CASE f3510est="9"
           STORE "Anu" TO peSt
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 DO CASE
      CASE f3510mon=1
           STORE "S/." TO psIg
      CASE f3510mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+000.0 Say F3510ANO Font "&mLetAri",9 Style "NQ" Size 1,6.0
 @vFFR,pICL+007.0 Say F3510MES Font "&mLetAri",9 Style "NQ" Size 1,2.8
 @vFFR,pICL+010.8 Say F3510SER Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFR,pICL+016.0 Say F3510NUM Font "&mLetAri",9 Style "NQ" Size 1,9.8
 @vFFR,pICL+026.8 Say pEST     Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFR,pICL+032.0 Say F3510DIA Font "&mLetAri",9 Style "NQ" Size 1,2.8
 @vFFR,pICL+035.8 Say F3510RCB Font "&mLetAri",9 Style "NQ" Size 1,9.8
 @vFFR,pICL+046.6 Say F3510SRL Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFR,pICL+051.8 Say F3510LET Font "&mLetAri",9 Style "NQ" Size 1,9.8
 @vFFR,pICL+062.6 Say F3510GLO Font "&mLetAri",9 Style "NQ" Size 1,65.8 Pict "@S68"
 IF f3510tot<>0
      @vFFR,pICL+129.5 Say pSIG      Font "&mLetAri",9 Style "NQ" Size 1,4.9
      @vFFR,pICL+134.4 Say F3510TOT  Font "&mLetAri",9 Style "NQ" Pict "999999,999.99" Size 1,18.4
 ELSE
      @vFFR,pICL+129.5 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,4.9
      @vFFR,pICL+134.4 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,18.4
 ENDIF
ENDPROC
*
PROCEDURE Lin_3510w
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+006.4 TO pfIn, piCl+006.4
 @ piNi, piCl+010.2 TO pfIn, piCl+010.2
 @ piNi, piCl+015.4 TO pfIn, piCl+015.4
 @ piNi, piCl+026.2 TO pfIn, piCl+026.2
 @ piNi, piCl+031.4 TO pfIn, piCl+031.4
 @ piNi, piCl+035.2 TO pfIn, piCl+035.2
 @ piNi, piCl+046.0 TO pfIn, piCl+046.0
 @ piNi, piCl+051.2 TO pfIn, piCl+051.2
 @ piNi, piCl+062.0 TO pfIn, piCl+062.0
 @ piNi, piCl+128.9 TO pfIn, piCl+128.9
ENDPROC
*
PROCEDURE Cam_3510w
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO muE_3510w WITH "v", "x"
 DO orD_3510w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3510w WITH "v"
 DO pa1_3510w
 IF cfFr=0
      DO muE_3510w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_3510w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_3510w WITH "v"
 DO diS_3510w WITH "R"
 DO boT_3510w
ENDPROC
*
PROCEDURE Bot_3510w
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+32.0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+35.8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+46.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+62.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+00.4
      CASE vsW0=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+32.0
      CASE vsW0=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+35.8
      CASE vsW0=4
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+46.6
      CASE vsW0=5
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+62.5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ord_3510w
 DO CASE
      CASE vsW0=1
           DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
      CASE vsW0=2
           DO orD_0000a WITH "3510", "C", "F3510FEM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "3510", "C", "F3510RCB", "A"
      CASE vsW0=4
           DO orD_0000a WITH "3510", "C", "F3510LET", "A"
      CASE vsW0=5
           DO orD_0000a WITH "3510", "C", "F3510GLO", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Res_3510w
 STORE vfFr TO cfFr
 DO muE_3510w WITH "v", "x"
 SET READBORDER ON
 IF wmOd=1
      DO p00_3510a IN PCI3510A WITH "1"
 ELSE
      DO p00_3510a IN PCM3510A WITH "1"
 ENDIF
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3510w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_caja
 DO seE_3510w WITH "i"
 DO paN_3510w
 STORE cfFr TO vfFr
 DO muE_3510w WITH "x", "v"
 DO seE_3510w WITH "v"
 DO diS_3510w WITH "R"
ENDPROC
*
PROCEDURE See_3510w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vaNo+vmEs+vsEr+vnUm
                CASE vsW0=2
                     SEEK vaNo+vmEs+vdIa+vsEr+vnUm
                CASE vsW0=3
                     SEEK vrCb+vaNo+vmEs+vsEr+vnUm
                CASE vsW0=4
                     SEEK vsRl+vlEt+vaNo+vmEs+vsEr+vnUm
                CASE vsW0=5
                     SEEK UPPER(vgLo)+vaNo+vmEs+vsEr+vnUm
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK iaNo+imEs+isEr+inUm
                CASE vsW0=2
                     SEEK iaNo+imEs+idIa+isEr+inUm
                CASE vsW0=3
                     SEEK irCb+iaNo+imEs+isEr+inUm
                CASE vsW0=4
                     SEEK isRl+ilEt+iaNo+imEs+isEr+inUm
                CASE vsW0=5
                     SEEK UPPER(igLo)+iaNo+imEs+isEr+inUm
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK uaNo+umEs+usEr+unUm
                CASE vsW0=2
                     SEEK uaNo+umEs+udIa+usEr+unUm
                CASE vsW0=3
                     SEEK urCb+uaNo+umEs+usEr+unUm
                CASE vsW0=4
                     SEEK usRl+ulEt+uaNo+umEs+usEr+unUm
                CASE vsW0=5
                     SEEK UPPER(ugLo)+uaNo+umEs+usEr+unUm
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3510w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE isEr TO vsEr
           STORE inUm TO vnUm
           STORE irCb TO vrCb
           STORE isRl TO vsRl
           STORE ilEt TO vlEt
           STORE igLo TO vgLo
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE usEr TO vsEr
           STORE unUm TO vnUm
           STORE urCb TO vrCb
           STORE usRl TO vsRl
           STORE ulEt TO vlEt
           STORE ugLo TO vgLo
      CASE pmU1="x" .AND. pmU2="v"
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
           STORE xsEr TO vsEr
           STORE xnUm TO vnUm
           STORE xrCb TO vrCb
           STORE xsRl TO vsRl
           STORE xlEt TO vlEt
           STORE xgLo TO vgLo
      CASE pmU1="v" .AND. pmU2="x"
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
           STORE vsEr TO xsEr
           STORE vnUm TO xnUm
           STORE vrCb TO xrCb
           STORE vsRl TO xsRl
           STORE vlEt TO xlEt
           STORE vgLo TO xgLo
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3510ano TO vaNo
           STORE f3510mes TO vmEs
           STORE f3510dia TO vdIa
           STORE f3510ser TO vsEr
           STORE f3510num TO vnUm
           STORE f3510rcb TO vrCb
           STORE f3510srl TO vsRl
           STORE f3510let TO vlEt
           STORE f3510glo TO vgLo
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3510ano TO iaNo
           STORE f3510mes TO imEs
           STORE f3510dia TO idIa
           STORE f3510ser TO isEr
           STORE f3510num TO inUm
           STORE f3510rcb TO irCb
           STORE f3510srl TO isRl
           STORE f3510let TO ilEt
           STORE f3510glo TO igLo
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3510ano TO uaNo
           STORE f3510mes TO umEs
           STORE f3510dia TO udIa
           STORE f3510ser TO usEr
           STORE f3510num TO unUm
           STORE f3510rcb TO urCb
           STORE f3510srl TO usRl
           STORE f3510let TO ulEt
           STORE f3510glo TO ugLo
 ENDCASE
ENDPROC
*
PROCEDURE P00_3510w
 STORE mcO0 TO piCl
 STORE mcO0+152.6 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.3, piCl, ffFr+3.2, puCl+0.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, piCl TO ifFr-0.2, puCl+0.4
 @ ffFr+1.1, piCl TO ffFr+1.1, puCl+0.4
 @ ffFr+2.0, piCl-0.3 TO ffFr+3.2, puCl+0.4 PATTERN 1 COLOR SCHEME 4
 DO liN_3510w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.3, piCl+26.2 TO ifFr-0.2, piCl+26.2
 @ ifFr-1.3, piCl+31.4 TO ifFr-0.2, piCl+31.4
 @ ifFr-1.3, piCl+35.2 TO ifFr-0.2, piCl+35.2
 @ ifFr-1.3, piCl+46.0 TO ifFr-0.2, piCl+46.0
 @ ifFr-1.3, piCl+62.0 TO ifFr-0.2, piCl+62.0
 DO coLsc1
 @iFFR-1.2,pICL+01.8 Say "Número de Voucher" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+27.0 Say "Est"               Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+32.1 Say "Di"                Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+36.8 Say "Recibo"            Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+51.2 Say "Letra"             Font "&mLetAri",9 Style "BT"
 DO coLplp
 @ ifFr-1.3, piCl+128.9 TO ifFr-0.2, piCl+128.9
 DO coLsc1
 @fFFR+2.1,pICL+060.4 Say "CONSULTA DE VOUCHERS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 @iFFR-1.2,pICL+090.2 Say "Glosa"                Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+138.2 Say "Total"                Font "&mLetAri",9 Style "BT"
 DO boT_3510w
ENDPROC
*
PROCEDURE Clp_3510w
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
           DO diS_3510w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_3510w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_3510w WITH "F", "v"
           DO diS_3510w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3510w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Vouchers en el orden"
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
