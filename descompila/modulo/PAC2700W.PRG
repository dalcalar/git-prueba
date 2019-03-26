 PARAMETER ppRg
 = INKEY(0.01)
 SELECT caB_ingr
 STORE 99 TO mkEy
 STORE 01 TO vsW2
 DO orD_0000a WITH "2700", "A", "F2700DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_2700w WITH "v"
 SET NEAR OFF
 IF EOF()
      GOTO TOP
 ENDIF
 DO p00_2700w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2700w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_2700w WITH "i", "v"
 DO seE_2700w WITH "v"
 DO diS_2700w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2700w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2700w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2700w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2700w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. ppRg="PVI1300A" .AND. f2700est$"89"
                STORE "Solo se puede marcar documentos activos..." TO mmSj
           CASE mkEy=k_F7 .AND. ppRg="PVI1300A"
                STORE f2700tdo TO ctDo
                STORE f2700ser TO csEr
                STORE f2700doc TO cdOc
                SELECT tmP_np
                SEEK ctDo+csEr+cdOc
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM0tdo WITH ctDo
                     REPLACE ftM0ser WITH csEr
                     REPLACE ftM0doc WITH cdOc
                ELSE
                     DELETE
                     PACK
                ENDIF
                SELECT caB_ingr
                DO diS_2700w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab .AND. ppRg="PVI1300A"
                EXIT
           CASE mkEy=k_Tab .AND. ppRg="PAM2400A"
           CASE mkEy=k_Enter .OR. mkEy=k_Tab
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
                DO caM_2700w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2700tdo+f2700ser+f2700doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2700w
                               OTHERWISE
                                    DO seE_2700w WITH "v"
                                    DO diS_2700w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2700w WITH "i", "v"
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2700tdo+f2700ser+f2700doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2700w
                               OTHERWISE
                                    DO seE_2700w WITH "v"
                                    DO diS_2700w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufFr TO vfFr
                          DO muE_2700w WITH "u", "v"
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2700w WITH ifFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2700w WITH "F", "u"
                               DO muE_2700w WITH "F", "v"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2700w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2700w WITH "F", "v"
                          ENDIF
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2700w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2700w WITH "F", "i"
                               DO muE_2700w WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2700w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2700w WITH "F", "v"
                          ENDIF
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2700w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2700w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2700w WITH "i", "v"
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2700w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2700w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2700w WITH "i", "v"
                          DO seE_2700w WITH "v"
                          DO diS_2700w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2700w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2700w
 DO pn1_2700w WITH "1"
ENDPROC
*
PROCEDURE Pa1_2700w
 DO pn1_2700w WITH "2"
ENDPROC
*
PROCEDURE Pn1_2700w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_2700w WITH "F", "i"
 DO muE_2700w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f2700tdo+f2700ser+f2700doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_2700w WITH "N"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_2700w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2700w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2700w
 PARAMETER ptIp
 PRIVATE ptDo, psEr, pdOc, pmAr
 STORE f2700tdo TO ptDo
 STORE f2700ser TO psEr
 STORE f2700doc TO pdOc
 STORE 0 TO pmAr
 DO CASE
      CASE ppRg="PVI1300A"
           SELECT tmP_np
           SEEK ptDo+psEr+pdOc
           IF  .NOT. EOF()
                STORE 1 TO pmAr
           ENDIF
 ENDCASE
 SELECT caB_ingr
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+0.0 Say F2700TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,mCO0+4.4 Say F2700SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,mCO0+9.4 Say F2700DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 IF pmAr=1
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, mcO0
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO CASE
      CASE f2700est="1"
           @vFFR,mCO0+20.2 Say "Dig" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2700est="2"
           @vFFR,mCO0+20.2 Say "Pro" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2700est="4"
           @vFFR,mCO0+20.2 Say "Gen" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f2700est="9"
           @vFFR,mCO0+20.2 Say "Anu" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 @vFFR,mCO0+025.4 Say F2700FEM     Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFR,mCO0+039.0 Say F2700PED     Font "&mLetAri",9 Style "NQ" Size 1,08.6
 @vFFR,mCO0+048.6 Say F2700CM1     Font "&mLetAri",9 Style "NQ" Size 1,56.0 Pict "@S58"
 @vFFR,mCO0+105.5 Say F2700NTI     Font "&mLetAri",9 Style "NQ" Size 1,20.1 Pict "@S21"
ENDPROC
*
PROCEDURE Cam_2700w
 DO muE_2700w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "2700", "A", "F2700DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "2700", "A", "F2700FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "2700", "A", "F2700CM1", "D"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2700w WITH "v"
 DO pa1_2700w
 IF cfFr=00
      DO muE_2700w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_2700w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_2700w WITH "v"
 DO diS_2700w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+48.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+48.6
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2700w
 DO muE_2700w WITH "v", "x"
 STORE vfFr TO cfFr
 SET READBORDER ON
 DO CASE
      CASE ppRg="PAM2700A"
           DO p00_2700a IN PAM2700A WITH "1"
      CASE ppRg="PVI1300A"
           DO p00_1300a IN PVI1300A WITH "1"
      CASE ppRg="PAI2400A"
           DO p00_2400a IN PAI2400A WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2700w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ingr
 DO seE_2700w WITH "i"
 DO paN_2700w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_2700w WITH "x", "v"
 STORE cfFr TO vfFr
 DO seE_2700w WITH "v"
 DO diS_2700w WITH "R"
ENDPROC
*
PROCEDURE Lin_2700w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
 @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
 @ piNi, mcO0+038.4 TO pfIn, mcO0+038.4
 @ piNi, mcO0+047.9 TO pfIn, mcO0+047.9
 @ piNi, mcO0+104.9 TO pfIn, mcO0+104.9
ENDPROC
*
PROCEDURE P00_2700w
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
 DO CASE
      CASE ppRg="PVI1300A"
           @fFFR+1.9,mCO0+32 Say "CONSULTA DE ENTRADAS - (Copia precios de Lista)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PAM2700A"
           @fFFR+1.9,mCO0+49 Say "CONSULTA DE ENTRADAS" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PAI2400A"
           @fFFR+1.9,mCO0+49 Say "CONSULTA DE ENTRADAS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 ENDCASE
 DO liN_2700w WITH ifFr-0.2, ffFr+1.2
 @ ifFr-1.7, mcO0+019.6 TO ifFr-0.2, mcO0+019.6
 @ ifFr-1.7, mcO0+024.8 TO ifFr-0.2, mcO0+024.8
 @ ifFr-1.7, mcO0+038.4 TO ifFr-0.2, mcO0+038.4
 @ ifFr-1.7, mcO0+047.9 TO ifFr-0.2, mcO0+047.9
 @ ifFr-1.7, mcO0+104.9 TO ifFr-0.2, mcO0+104.9
 DO coLblz
 @iFFR-1.3,mCO0+000.0 Say "Documento"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+020.6 Say "Est"        Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+026.1 Say "F.Emisión"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+039.5 Say "Pedido"     Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+069.2 Say "Comentario" Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,mCO0+112.1 Say "Tipo"       Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, mcO0+48.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, mcO0+48.6
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_2700w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW2=01
                     SEEK vtDo+vsEr+vdOc
                CASE vsW2=02
                     SEEK vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW2=03
                     SEEK UPPER(vcM1)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW2=01
                     SEEK itDo+isEr+idOc
                CASE vsW2=02
                     SEEK iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW2=03
                     SEEK UPPER(icM1)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW2=01
                     SEEK utDo+usEr+udOc
                CASE vsW2=02
                     SEEK uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW2=03
                     SEEK UPPER(ucM1)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2700w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE icM1 TO vcM1
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ucM1 TO vcM1
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xcM1 TO vcM1
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vcM1 TO xcM1
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2700tdo TO vtDo
           STORE f2700ser TO vsEr
           STORE f2700doc TO vdOc
           STORE f2700cm1 TO vcM1
           STORE SUBSTR(DTOC(f2700fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f2700fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f2700fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2700tdo TO itDo
           STORE f2700ser TO isEr
           STORE f2700doc TO idOc
           STORE f2700cm1 TO icM1
           STORE SUBSTR(DTOC(f2700fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f2700fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f2700fem), 1, 2) TO idIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2700tdo TO utDo
           STORE f2700ser TO usEr
           STORE f2700doc TO udOc
           STORE f2700cm1 TO ucM1
           STORE SUBSTR(DTOC(f2700fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f2700fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f2700fem), 1, 2) TO udIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2700w
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
           DO diS_2700w WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2700w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2700w WITH "F", "v"
           DO diS_2700w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2700w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE ppRg="PAM2700A"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran todas las Entradas en el orden"
           @ pfIl+1, 2 SAY "que se ha elegido."
      CASE ppRg="PVI1300A"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran todas las Entradas en el orden"
           @ pfIl+1, 2 SAY  ;
             "que se ha elegido. Y se puede copiar al Documento de Venta."
      CASE ppRg="PAI2400A"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran todas las Entradas en el orden"
           @ pfIl+1, 2 SAY "que se ha elegido. Y se puede copiar a la Compra."
 ENDCASE
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
 @ pfIl+08, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+11, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+12, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 07 SAY "HOME" STYLE "BT"
 @ pfIl+15, 07 SAY "END" STYLE "BT"
 @ pfIl+16, 07 SAY "ENTER" STYLE "BT"
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
 @ pfIl+16, 28 SAY "Ingresar al Documento"
 DO CASE
      CASE ppRg="PAM2700A"
           @ pfIl+17, 26 SAY ":" STYLE "BT"
           @ pfIl+17, 07 SAY "TAB" STYLE "BT"
           @ pfIl+17, 28 SAY "Ingresar al Documento (Orden alfabetico)"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
