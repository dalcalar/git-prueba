 PARAMETER ppRg
 = INKEY(0.01)
 PRIVATE pfEm, ppAn_scr, pcLn
 SELECT caB_ped
 STORE 99 TO mkEy
 STORE 01 TO vsW2
 STORE SPACE(02) TO xtDo, xsEr, xdOc
 DO orD_0000a WITH "1200", "V", "F1200DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_1200w WITH "v"
 SET NEAR OFF
 IF EOF()
      GOTO TOP
 ENDIF
 DO p00_1200w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1200w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_1200w WITH "i", "v"
 DO seE_1200w WITH "v"
 DO diS_1200w WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1200w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_1200w WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1200w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1200w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO coLbln
                SET CURSOR ON
                SET READBORDER ON
                DO diS_1200w WITH "N"
                SAVE SCREEN TO ppAn_scr
                DO coLsc3
                @ ifFr-1.7, piCl-0.7 TO ifFr-0.1, puCl PATTERN 1
                DO coLbln
                DO CASE
                     CASE vsW2=01
                          STORE (puCl-piCl-30)/2 TO pcLn
                          @iFFR-1.4,pCLN+00 Say "Documento" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pCLN+15 Get vSER        Font "&mLetAri",9 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
                          @iFFR-1.4,pCLN+21 Get vDOC        Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "9999999" Color ,&mColBlN
                     CASE vsW2=02
                          STORE (puCl-piCl-28)/2 TO pcLn
                          STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO pfEm
                          @iFFR-1.4,pCLN+00 Say "F.Emisión" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pCLN+15 Get pFEM        Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlN
                     CASE vsW2=03
                          STORE (puCl-piCl-40)/2 TO pcLn
                          @iFFR-1.4,pCLN+00 Say "Cliente"   Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pCLN+10 Edit vNOM       Font "&mLetAri",9 Style "NQ" Size 1,30,40
                ENDCASE
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                RESTORE SCREEN FROM ppAn_scr
                SET NEAR ON
                DO CASE
                     CASE vsW2=01
                          SEEK vtDo+vsEr+vdOc
                     CASE vsW2=02
                          SEEK SUBSTR(DTOC(pfEm), 7, 4)+SUBSTR(DTOC(pfEm),  ;
                               4, 2)+SUBSTR(DTOC(pfEm), 1, 2)
                     CASE vsW2=03
                          SEEK UPPER(vnOm)
                ENDCASE
                SET NEAR OFF
                STORE ifFr TO vfFr
                STORE 0 TO cfFr
                DO muE_1200w WITH "F", "v"
                DO seE_1200w WITH "i"
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     IF f1200tdo+f1200ser+f1200doc=vtDo+vsEr+vdOc
                          STORE vfFr TO cfFr
                          EXIT
                     ENDIF
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF cfFr=0
                     DO seE_1200w WITH "v"
                     DO muE_1200w WITH "i", "v"
                     DO paN_1200w
                     DO muE_1200w WITH "i", "v"
                     STORE ifFr TO vfFr
                ELSE
                     STORE cfFr TO vfFr
                ENDIF
                DO seE_1200w WITH "v"
                DO diS_1200w WITH "R"
           CASE mkEy=k_F7 .AND. f1200est$"89 "
                STORE "Sólo se puede marcar documentos activos..." TO mmSj
           CASE mkEy=k_F7
                STORE f1200tdo TO ctDo
                STORE f1200ser TO csEr
                STORE f1200doc TO cdOc
                SELECT tmP_ped
                SEEK ctDo+csEr+cdOc
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM8tdo WITH ctDo
                     REPLACE ftM8ser WITH csEr
                     REPLACE ftM8doc WITH cdOc
                ELSE
                     DELETE
                     PACK
                ENDIF
                SELECT caB_ped
                DO diS_1200w WITH "R"
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Tab
                EXIT
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF mkEy=k_Right
                     DO CASE
                          CASE vsW2=3
                               STORE 1 TO vsW2
                          OTHERWISE
                               STORE vsW2+1 TO vsW2
                     ENDCASE
                ELSE
                     DO CASE
                          CASE vsW2=1
                               STORE 3 TO vsW2
                          OTHERWISE
                               STORE vsW2-1 TO vsW2
                     ENDCASE
                ENDIF
                DO caM_1200w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f1200tdo+f1200ser+f1200doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1200w
                               OTHERWISE
                                    DO seE_1200w WITH "v"
                                    DO diS_1200w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_1200w WITH "i", "v"
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f1200tdo+f1200ser+f1200doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_1200w
                               OTHERWISE
                                    DO seE_1200w WITH "v"
                                    DO diS_1200w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_1200w WITH "u", "v"
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_1200w WITH ffFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_1200w WITH "F", "u"
                               DO muE_1200w WITH "F", "v"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_1200w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_1200w WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_1200w WITH ifFr, ifFr+1
                               STORE ifFr TO vfFr
                               DO muE_1200w WITH "F", "v"
                               DO muE_1200w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_1200w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_1200w WITH "F", "v"
                          ENDIF
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1200w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1200w
                          DO muE_1200w WITH "i", "v"
                          STORE ifFr TO vfFr
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1200w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1200w
                          DO muE_1200w WITH "i", "v"
                          STORE ifFr TO vfFr
                          DO seE_1200w WITH "v"
                          DO diS_1200w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1200w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RELEASE pfEm, ppAn_scr, pcLn
ENDPROC
*
PROCEDURE Pan_1200w
 DO pn1_1200w WITH "1"
ENDPROC
*
PROCEDURE Pa1_1200w
 DO pn1_1200w WITH "2"
ENDPROC
*
PROCEDURE Pn1_1200w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_1200w WITH "F", "i"
 DO muE_1200w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE f1200tdo+f1200ser+f1200doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_1200w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_1200w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_1200w WITH ufFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1200w
 PARAMETER ptIp
 PRIVATE psIg, ptDo, psEr, pdOc, pmAr
 STORE f1200tdo TO ptDo
 STORE f1200ser TO psEr
 STORE f1200doc TO pdOc
 STORE 0 TO pmAr
 SELECT tmP_ped
 SEEK ptDo+psEr+pdOc
 IF  .NOT. EOF()
      STORE 1 TO pmAr
 ENDIF
 SELECT caB_ped
 DO CASE
      CASE f1200mon=1 .AND. f1200tot<>0
           STORE "S/." TO psIg
      CASE f1200mon=2 .AND. f1200tot<>0
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+00.0 Say F1200TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,pICL+04.4 Say F1200SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,pICL+09.4 Say F1200DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 IF pmAr=1
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl
 ENDIF
 @vFFR,pICL+25.4 Say F1200FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 DO CASE
      CASE f1200est="1"
           @vFFR,pICL+20.2 Say "Dig" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1200est$"23"
           @vFFR,pICL+20.2 Say "Apr" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1200est="4"
           @vFFR,pICL+20.2 Say "*Ge" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1200est="5"
           @vFFR,pICL+20.2 Say "Gen" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1200est="9"
           @vFFR,pICL+20.2 Say "Anu" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFFR,pICL+039.0 Say F1200CLI+":"+F1200NOM Font "&mLetAri",9 Style "NQ" Size 1,79.5 Pict "@S70"
           @vFFR,pICL+119.5 Say F1200NFP              Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
           @vFFR,pICL+145.6 Say pSIG                  Font "&mLetAri",9 Style "NQ" Size 1,5
           IF f1200tot<>0
                IF f1200tot>999999
                     @vFFR,pICL+150.6 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
                ELSE
                     @vFFR,pICL+150.6 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
                ENDIF
           ELSE
                @vFFR,pICL+150.6 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,13.9
           ENDIF
      OTHERWISE
           @vFFR,pICL+039.0 Say F1200CLI+":"+F1200NOM Font "&mLetAri",9 Style "NQ" Size 1,79.5 Pict "@S70"
           @vFFR,pICL+119.5 Say F1200NFP              Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
           @vFFR,pICL+145.6 Say pSIG                  Font "&mLetAri",9 Style "NQ" Size 1,5
           IF f1200tot<>0
                IF f1200tot>999999
                     @vFFR,pICL+150.6 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
                ELSE
                     @vFFR,pICL+150.6 Say F1200TOT        Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
                ENDIF
           ELSE
                @vFFR,pICL+150.6 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,13.9
           ENDIF
 ENDCASE
 RELEASE psIg
ENDPROC
*
PROCEDURE Cam_1200w
 DO muE_1200w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "1200", "V", "F1200DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "1200", "V", "F1200FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "1200", "V", "F1200NOM", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_1200w WITH "v"
 DO pa1_1200w
 IF cfFr=00
      DO muE_1200w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_1200w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_1200w WITH "v"
 DO diS_1200w WITH "R"
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+39.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+39.2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_1200w
 STORE vfFr TO cfFr
 DO muE_1200w WITH "v", "x"
 SET READBORDER ON
 DO CASE
      CASE ppRg="PVI1200A"
           DO p00_1200a IN PVI1200A WITH "1"
      CASE ppRg="PVM1200A"
           DO p00_1200a IN PVM1200A WITH "1"
      CASE ppRg="PAI2600A"
           DO p00_2600a IN PAI2600A WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1200w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ped
 DO seE_1200w WITH "i"
 DO paN_1200w
 STORE cfFr TO vfFr
 DO muE_1200w WITH "x", "v"
 DO seE_1200w WITH "v"
 DO diS_1200w WITH "R"
ENDPROC
*
PROCEDURE Lin_1200w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, piCl+03.8 TO pfIn, piCl+03.8
 @ piNi, piCl+08.8 TO pfIn, piCl+08.8
 @ piNi, piCl+19.6 TO pfIn, piCl+19.6
 @ piNi, piCl+24.8 TO pfIn, piCl+24.8
 @ piNi, piCl+38.4 TO pfIn, piCl+38.4
 DO CASE
      CASE mrEs="3"
           @ piNi, piCl+118.9 TO pfIn, piCl+118.9
           @ piNi, piCl+144.9 TO pfIn, piCl+144.9
      OTHERWISE
           @ piNi, piCl+118.9 TO pfIn, piCl+118.9
           @ piNi, piCl+144.9 TO pfIn, piCl+144.9
 ENDCASE
ENDPROC
*
PROCEDURE See_1200w
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
PROCEDURE Mue_1200w
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
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1200tdo TO vtDo
           STORE f1200ser TO vsEr
           STORE f1200doc TO vdOc
           STORE f1200nom TO vnOm
           STORE SUBSTR(DTOC(f1200fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f1200fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f1200fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1200tdo TO utDo
           STORE f1200ser TO usEr
           STORE f1200doc TO udOc
           STORE f1200nom TO unOm
           STORE SUBSTR(DTOC(f1200fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f1200fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f1200fem), 1, 2) TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1200tdo TO itDo
           STORE f1200ser TO isEr
           STORE f1200doc TO idOc
           STORE f1200nom TO inOm
           STORE SUBSTR(DTOC(f1200fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f1200fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f1200fem), 1, 2) TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE P00_1200w
 STORE mcO0 TO piCl
 DO CASE
      CASE mrEs="3"
           STORE piCl+164.6 TO puCl
      OTHERWISE
           STORE piCl+164.6 TO puCl
 ENDCASE
 STORE (puCl-piCl)/2 TO pcLn
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, piCl, ffFr+3.2, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-0.2, piCl TO ifFr-0.2, puCl
 @ ffFr+1.1, piCl TO ffFr+1.1, puCl
 @ ffFr+1.6, piCl-0.3 TO ffFr+3.2, puCl PATTERN 1 COLOR SCHEME 4
 DO CASE
      CASE mrEs="3" .AND. ppRg="PVI1200A" .AND. mjAl=1
           @fFFR+1.9,pICL+43 Say "CONSULTA DE PEDIDOS DE VENTA - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE mrEs="3" .AND. ppRg="PVI1200A" .AND. mjAl=2
           @fFFR+1.9,pICL+44 Say "CONSULTA DE PEDIDOS DE VENTA - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE mrEs="3"
           @fFFR+1.9,pICL+60 Say "CONSULTA DE PEDIDOS DE VENTA"                              Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=1
           @fFFR+1.9,pICL+43 Say "CONSULTA DE PEDIDOS DE VENTA - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=2
           @fFFR+1.9,pICL+44 Say "CONSULTA DE PEDIDOS DE VENTA - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
      OTHERWISE
           @fFFR+1.9,pICL+60 Say "CONSULTA DE PEDIDOS DE VENTA"                              Font "&mLetAri",9 Style "BT" Color Scheme 4
 ENDCASE
 DO liN_1200w WITH ifFr-0.2, ffFr+1
 @ ifFr-1.3, piCl+019.6 TO ifFr-0.2, piCl+019.6
 @ ifFr-1.3, piCl+024.8 TO ifFr-0.2, piCl+024.8
 @ ifFr-1.3, piCl+038.4 TO ifFr-0.2, piCl+038.4
 DO CASE
      CASE mrEs="3"
           @ ifFr-1.3, piCl+118.9 TO ifFr-0.2, piCl+118.9
           @ ifFr-1.3, piCl+144.9 TO ifFr-0.2, piCl+144.9
      OTHERWISE
           @ ifFr-1.3, piCl+118.9 TO ifFr-0.2, piCl+118.9
           @ ifFr-1.3, piCl+144.9 TO ifFr-0.2, piCl+144.9
 ENDCASE
 DO coLblz
 @iFFR-1.2,pICL+000.0 Say "Documento"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+020.6 Say "Est"        Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+025.5 Say "F.Emisión"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,pICL+039.2 Say "Cliente"    Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mrEs="3"
           @iFFR-1.2,pICL+120.1 Say "Forma-Pago" Font "&mLetAri",9 Style "BT"
           @iFFR-1.2,pICL+152.2 Say "Total"      Font "&mLetAri",9 Style "BT"
      OTHERWISE
           @iFFR-1.2,pICL+120.1 Say "Forma-Pago" Font "&mLetAri",9 Style "BT"
           @iFFR-1.2,pICL+152.2 Say "Total"      Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+00.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+25.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+39.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+00.4
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+25.5
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+39.2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1200w
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
           DO diS_1200w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_1200w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_1200w WITH "F", "v"
           DO diS_1200w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1200w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Pedidos en el orden"
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
 @ pfIl+16, 26 SAY ":" STYLE "BT"
 @ pfIl+17, 26 SAY ":" STYLE "BT"
 @ pfIl+18, 26 SAY ":" STYLE "BT"
 @ pfIl+19, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 07 SAY "ESC" STYLE "BT"
 @ pfIl+06, 07 SAY "F10" STYLE "BT"
 @ pfIl+07, 07 SAY "F1" STYLE "BT"
 @ pfIl+08, 07 SAY "F3" STYLE "BT"
 @ pfIl+09, 07 SAY "F7" STYLE "BT"
 @ pfIl+10, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+13, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+14, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 07 SAY "HOME" STYLE "BT"
 @ pfIl+17, 07 SAY "END" STYLE "BT"
 @ pfIl+18, 07 SAY "ENTER" STYLE "BT"
 @ pfIl+19, 07 SAY "TAB" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Buscaqueda rápida"
 @ pfIl+09, 28 SAY "Marca/Desmarca Documentos"
 @ pfIl+10, 28 SAY "Línea inferior"
 @ pfIl+11, 28 SAY "Línea superior"
 @ pfIl+12, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+13, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+14, 28 SAY "Página siguiente"
 @ pfIl+15, 28 SAY "Página anterior"
 @ pfIl+16, 28 SAY "Primera línea"
 @ pfIl+17, 28 SAY "Última línea"
 @ pfIl+18, 28 SAY "Aceptar Documento"
 @ pfIl+19, 28 SAY "Copia los Documentos marcados"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
