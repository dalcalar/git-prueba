 PARAMETER ppRg
 = INKEY(0.01)
 PRIVATE pfEm, ppAn_scr, pcLn
 SELECT caB_fact
 STORE 99 TO mkEy
 STORE 02 TO vsW2
 STORE SPACE(02) TO xtDo, xsEr, xdOc
 DO orD_0000a WITH "1300", "V", "F1300FEM", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF f1300tdo="PC"
      DO WHILE  .NOT. EOF()
           IF f1300tdo<>"PC"
                EXIT
           ENDIF
           SKIP
      ENDDO
 ENDIF
 DO muE_1300w WITH "F", "v"
 DO p00_1300w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1300w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE ifFr TO vfFr
 DO muE_1300w WITH "i", "v"
 DO seE_1300w WITH "v"
 DO diS_1300w WITH "R"
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1300w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1300w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO coLbln
                SET CURSOR ON
                SET READBORDER ON
                DO diS_1300w WITH "N"
                SAVE SCREEN TO ppAn_scr
                DO coLsc3
                @ ifFr-1.7, piCl-0.7 TO ifFr-0.1, puCl PATTERN 1
                DO coLbln
                DO CASE
                     CASE vsW2=01
                          STORE (puCl-piCl-36)/2 TO pcLn
                          @iFFR-1.4,pCLN+00   Say "Documento" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pCLN+15   Get vTDO        Font "&mLetAri",9 Style "NQ" Size 1,3.4 Pict "!!"      Color ,&mColBlN
                          @iFFR-1.4,pCLN+20.8 Get vSER        Font "&mLetAri",9 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
                          @iFFR-1.4,pCLN+26.9 Get vDOC        Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "9999999" Color ,&mColBlN
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
                GOTO TOP
                DO CASE
                     CASE vsW2=01
                          SEEK vtDo+vsEr+vdOc
                     CASE vsW2=02
                          SEEK SUBSTR(DTOC(pfEm), 7, 4)+SUBSTR(DTOC(pfEm),  ;
                               4, 2)+SUBSTR(DTOC(pfEm), 1, 2)
                     CASE vsW2=03
                          SEEK UPPER(vnOm)
                ENDCASE
                IF EOF()
                     GOTO TOP
                     SET NEAR ON
                     DO CASE
                          CASE vsW2=01
                               SEEK vtDo+vsEr+vdOc
                          CASE vsW2=02
                               SEEK SUBSTR(DTOC(pfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(pfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(pfEm), 1, 2)
                          CASE vsW2=03
                               SEEK UPPER(vnOm)
                     ENDCASE
                     SET NEAR OFF
                     IF vsW2=1 .AND. (EOF() .OR. ( .NOT. EOF() .AND.  ;
                        f1300tdo+f1300ser<>vtDo+vsEr))
                          GOTO TOP
                          SET NEAR ON
                          SEEK vtDo+vsEr
                          SET NEAR OFF
                     ENDIF
                     IF vsW2=1 .AND. (EOF() .OR. ( .NOT. EOF() .AND.  ;
                        f1300tdo<>vtDo))
                          GOTO TOP
                          SET NEAR ON
                          SEEK vtDo
                          SET NEAR OFF
                     ENDIF
                     IF EOF() .OR. BOF()
                          GOTO BOTTOM
                     ENDIF
                ENDIF
                DO muE_1300w WITH "F", "v"
                DO seE_1300w WITH "i"
                STORE ifFr TO vfFr
                STORE 0 TO cfFr
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     IF f1300tdo+f1300ser+f1300doc=vtDo+vsEr+vdOc
                          STORE vfFr TO cfFr
                          EXIT
                     ENDIF
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF cfFr=0
                     DO seE_1300w WITH "v"
                     DO muE_1300w WITH "i", "v"
                     DO paN_1300w
                     DO muE_1300w WITH "i", "v"
                     STORE ifFr TO vfFr
                ELSE
                     STORE cfFr TO vfFr
                ENDIF
                DO seE_1300w WITH "v"
                DO diS_1300w WITH "R"
           CASE mkEy=k_F7 .AND. (ppRg="PAI2800A" .OR. ppRg="PVI1300A")  ;
                .AND. f1300est$"89 "
                STORE "Sólo se puede marcar documentos activos..." TO mmSj
           CASE mkEy=k_F7 .AND. ppRg="PAI2800A"
                STORE f1300ser TO csEr
                STORE f1300doc TO cdOc
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
                SELECT caB_fact
                DO diS_1300w WITH "R"
           CASE mkEy=k_F7 .AND. ppRg="PVI1300A"
                STORE f1300tdo TO ctDo
                STORE f1300ser TO csEr
                STORE f1300doc TO cdOc
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
                SELECT caB_fact
                DO diS_1300w WITH "R"
           CASE mkEy=k_Enter .AND. f1300est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Enter .AND. f1300est=" "
                STORE "Documento se encuentra da¤ado..." TO mmSj
           CASE mkEy=k_Enter .AND. f1300tdo="PC"
                STORE "No se puede elegir Percepcion..." TO mmSj
           CASE mkEy=k_Enter .AND. ppRg="PVI1200A"
                EXIT
           CASE mkEy=k_Enter .AND. ppRg="PVI1300A"
                STORE "S" TO moPc
                DO prE_docum WITH  ;
                   "Esta seguro de que quiere borrar detalle anterior y copiar todo este documento?"
                IF moPc="S"
                     EXIT
                ENDIF
           CASE mkEy=k_Tab .AND. ppRg="PVI1300A"
                EXIT
           CASE mkEy=k_Tab .AND. ppRg="PAI2800A"
                EXIT
           CASE mkEy=k_Alt_c .AND. ppRg="PVI1300A"
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
                DO caM_1300w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f1300tdo+f1300ser+f1300doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1300w
                               OTHERWISE
                                    DO seE_1300w WITH "v"
                                    DO diS_1300w WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_1300w WITH "i", "v"
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f1300tdo+f1300ser+f1300doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_1300w
                               OTHERWISE
                                    DO seE_1300w WITH "v"
                                    DO diS_1300w WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_1300w WITH "u", "v"
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_1300w WITH ffFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_1300w WITH "F", "v"
                               DO muE_1300w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_1300w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_1300w WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_1300w WITH ifFr, ifFr+1
                               STORE ifFr TO vfFr
                               DO muE_1300w WITH "F", "v"
                               DO muE_1300w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_1300w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_1300w WITH "F", "v"
                          ENDIF
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300w
                          STORE ifFr TO vfFr
                          DO muE_1300w WITH "i", "v"
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1300w
                          STORE ifFr TO vfFr
                          DO muE_1300w WITH "i", "v"
                          DO seE_1300w WITH "v"
                          DO diS_1300w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RELEASE pfEm, ppAn_scr, pcLn
ENDPROC
*
PROCEDURE Pan_1300w
 DO pn1_1300w WITH "1"
ENDPROC
*
PROCEDURE Pa1_1300w
 DO pn1_1300w WITH "2"
ENDPROC
*
PROCEDURE Pn1_1300w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_1300w WITH "F", "i"
 DO muE_1300w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO CASE
           CASE f1300tdo+f1300ser+f1300doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_1300w WITH "N"
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_1300w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_1300w WITH ufFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300w
 PARAMETER ptIp
 PRIVATE psIg, ptDo, psEr, pdOc, pmAr
 STORE f1300tdo TO ptDo
 STORE f1300ser TO psEr
 STORE f1300doc TO pdOc
 STORE 0 TO pmAr
 DO CASE
      CASE ppRg="PVI1300A"
           SELECT tmP_np
           SEEK ptDo+psEr+pdOc
           IF  .NOT. EOF()
                STORE 1 TO pmAr
           ENDIF
      CASE ppRg="PAI2800A" .AND. ptDo="NP"
           SELECT tmP_np
           SEEK psEr+pdOc
           IF  .NOT. EOF()
                STORE 1 TO pmAr
           ENDIF
 ENDCASE
 SELECT caB_fact
 DO CASE
      CASE f1300mon=1 .AND. f1300tot<>0
           STORE "S/." TO psIg
      CASE f1300mon=2 .AND. f1300tot<>0
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
 @vFFR,pICL+0.0 Say F1300TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFR,pICL+4.4 Say F1300SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFFR,pICL+9.4 Say F1300DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 IF pmAr=1
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl
 ENDIF
 DO CASE
      CASE f1300est="1"
           @vFFR,mCO0+20.2 Say "Dig" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1300est="2" .AND. f1300can="2" .AND. mgRa=2
           @vFFR,mCO0+20.2 Say "Can" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1300est="2"
           @vFFR,mCO0+20.2 Say "Imp" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1300est="3"
           @vFFR,mCO0+20.2 Say "Gen" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1300est="8"
           @vFFR,mCO0+20.2 Say "Baj" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f1300est="9"
           @vFFR,mCO0+20.2 Say "Anu" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 @vFFR,pICL+25.4 Say F1300FEM      Font "&mLetAri",9 Style "NQ" Size 1,12.6
 DO CASE
      CASE mrEs="3"
           @vFFR,pICL+039.0 Say F1300CLI+":"+F1300NOM Font "&mLetAri",9 Style "NQ" Size 1,79.5 Pict "@S70"
           @vFFR,pICL+119.5 Say F1300NFP              Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
           @vFFR,pICL+145.6 Say pSIG                  Font "&mLetAri",9 Style "NQ" Size 1,5
           IF f1300tot<>0
                IF f1300tot>999999
                     @vFFR,pICL+150.6 Say F1300TOT        Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
                ELSE
                     @vFFR,pICL+150.6 Say F1300TOT        Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
                ENDIF
           ELSE
                @vFFR,pICL+150.6 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,13.9
           ENDIF
      OTHERWISE
           @vFFR,pICL+039.0 Say F1300CLI+":"+F1300NOM Font "&mLetAri",9 Style "NQ" Size 1,79.5 Pict "@S70"
           @vFFR,pICL+119.5 Say F1300NFP              Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
           @vFFR,pICL+145.6 Say pSIG                  Font "&mLetAri",9 Style "NQ" Size 1,5
           IF f1300tot<>0
                IF f1300tot>999999
                     @vFFR,pICL+150.6 Say F1300TOT        Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
                ELSE
                     @vFFR,pICL+150.6 Say F1300TOT        Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
                ENDIF
           ELSE
                @vFFR,pICL+150.6 Say Space(10)          Font "&mLetAri",9 Style "NQ" Size 1,13.9
           ENDIF
 ENDCASE
 RELEASE psIg, ptDo, psEr, pdOc, pmAr
ENDPROC
*
PROCEDURE Cam_1300w
 DO muE_1300w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsW2=01
           DO orD_0000a WITH "1300", "V", "F1300DOC", "D"
      CASE vsW2=02
           DO orD_0000a WITH "1300", "V", "F1300FEM", "D"
      CASE vsW2=03
           DO orD_0000a WITH "1300", "V", "F1300NOM", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_1300w WITH "v"
 DO pa1_1300w
 IF cfFr=00
      DO muE_1300w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_1300w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_1300w WITH "v"
 DO diS_1300w WITH "R"
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
PROCEDURE Res_1300w
 DO muE_1300w WITH "v", "x"
 STORE vfFr TO cfFr
 SET READBORDER ON
 DO CASE
      CASE ppRg="PVI1200A"
           DO p00_1200a IN PVI1200A WITH "1"
      CASE ppRg="PVI1300A"
           DO p00_1300a IN PVI1300A WITH "1"
      CASE ppRg="PAI2800A"
           DO p00_2800a IN PAI2800A WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1300w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_fact
 DO seE_1300w WITH "i"
 DO paN_1300w
 STORE cfFr TO vfFr
 DO muE_1300w WITH "x", "v"
 DO seE_1300w WITH "v"
 DO diS_1300w WITH "R"
ENDPROC
*
PROCEDURE Lin_1300w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, piCl+003.8 TO pfIn, piCl+003.8
 @ piNi, piCl+008.8 TO pfIn, piCl+008.8
 @ piNi, piCl+019.6 TO pfIn, piCl+019.6
 @ piNi, piCl+024.8 TO pfIn, piCl+024.8
 @ piNi, piCl+038.4 TO pfIn, piCl+038.4
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
PROCEDURE P00_1300w
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
      CASE ppRg="PAI2800A" .AND. mrEs="3"
           @fFFR+1.9,mCO0+50 Say "CONSULTA DE NOTAS DE PEDIDO / Marca/Jala/Anula"               Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PAI2800A"
           @fFFR+1.9,mCO0+50 Say "CONSULTA DE NOTAS DE PEDIDO / Marca/Jala/Anula"               Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1300A" .AND. mjAl=1 .AND. mrEs="3"
           @fFFR+1.9,mCO0+41 Say "CONSULTA DE DOCUMENTOS DE VENTA - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1300A" .AND. mjAl=2 .AND. mrEs="3"
           @fFFR+1.9,mCO0+42 Say "CONSULTA DE DOCUMENTOS DE VENTA - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1300A" .AND. mjAl=1
           @fFFR+1.9,mCO0+41 Say "CONSULTA DE DOCUMENTOS DE VENTA - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1300A" .AND. mjAl=2
           @fFFR+1.9,mCO0+42 Say "CONSULTA DE DOCUMENTOS DE VENTA - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=1 .AND. mrEs="3"
           @fFFR+1.9,mCO0+48 Say "CONSULTA DE COTIZACIONES - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=2 .AND. mrEs="3"
           @fFFR+1.9,mCO0+49 Say "CONSULTA DE COTIZACIONES - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=1
           @fFFR+1.9,mCO0+48 Say "CONSULTA DE COTIZACIONES - (Copia los mismos precios)" Font "&mLetAri",9 Style "BT" Color Scheme 4
      CASE ppRg="PVI1200A" .AND. mjAl=2
           @fFFR+1.9,mCO0+49 Say "CONSULTA DE COTIZACIONES - (Copia precios de Lista)"   Font "&mLetAri",9 Style "BT" Color Scheme 4
 ENDCASE
 DO liN_1300w WITH ifFr-0.2, ffFr+1
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
PROCEDURE See_1300w
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
PROCEDURE Mue_1300w
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
           STORE f1300tdo TO vtDo
           STORE f1300ser TO vsEr
           STORE f1300doc TO vdOc
           STORE f1300nom TO vnOm
           STORE SUBSTR(DTOC(f1300fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f1300fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f1300fem), 1, 2) TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1300tdo TO utDo
           STORE f1300ser TO usEr
           STORE f1300doc TO udOc
           STORE f1300nom TO unOm
           STORE SUBSTR(DTOC(f1300fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f1300fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f1300fem), 1, 2) TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1300tdo TO itDo
           STORE f1300ser TO isEr
           STORE f1300doc TO idOc
           STORE f1300nom TO inOm
           STORE SUBSTR(DTOC(f1300fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f1300fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f1300fem), 1, 2) TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_1300w
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
           DO diS_1300w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_1300w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_1300w WITH "F", "v"
           DO diS_1300w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE ppRg="PAI2800A"
           @ pfIl+0, 2 SAY  ;
             "Aqui se pueden seleccionar las NP, y copiarlas a una Guia de Salida,"
           @ pfIl+1, 2 SAY  ;
             "luego de que se copia a la Guia de Salida, las NP quedan anuladas."
           STORE pfIl+3 TO pfIl
      CASE ppRg="PVI1200A"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran todas las Cotizaciones en el"
           @ pfIl+1, 2 SAY "orden que se ha elegido."
           STORE pfIl+3 TO pfIl
      CASE ppRg="PVI1300A"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran todos los Documentos de Ven-"
           @ pfIl+1, 2 SAY  ;
             "tas en el orden que se ha elegido. Se pueden copiar cotizaciones adicio-"
           @ pfIl+2, 2 SAY "nando Items."
           STORE pfIl+4 TO pfIl
 ENDCASE
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 07 SAY "ESC" STYLE "BT"
 @ pfIl+3, 07 SAY "F10" STYLE "BT"
 @ pfIl+4, 07 SAY "F1" STYLE "BT"
 @ pfIl+5, 07 SAY "F3" STYLE "BT"
 @ pfIl+2, 28 SAY "Regresar a Cabecera"
 @ pfIl+3, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 28 SAY "Ayuda del Programa"
 @ pfIl+5, 28 SAY "Busqueda rápida"
 DO CASE
      CASE ppRg="PAI2800A"
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
           @ pfIl+06, 07 SAY "F7" STYLE "BT"
           @ pfIl+07, 07 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+08, 07 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+09, 07 SAY "FLECHA -->" STYLE "BT"
           @ pfIl+10, 07 SAY "FLECHA <--" STYLE "BT"
           @ pfIl+11, 07 SAY "PAGE DOWN" STYLE "BT"
           @ pfIl+12, 07 SAY "PAGE UP" STYLE "BT"
           @ pfIl+13, 07 SAY "HOME" STYLE "BT"
           @ pfIl+14, 07 SAY "END" STYLE "BT"
           @ pfIl+15, 07 SAY "TAB" STYLE "BT"
           @ pfIl+06, 28 SAY "Marca/Desparca NP"
           @ pfIl+07, 28 SAY "Línea inferior"
           @ pfIl+08, 28 SAY "Línea superior"
           @ pfIl+09, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+10, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+11, 28 SAY "Página siguiente"
           @ pfIl+12, 28 SAY "Página anterior"
           @ pfIl+13, 28 SAY "Primera línea"
           @ pfIl+14, 28 SAY "Última línea"
           @ pfIl+15, 28 SAY "Copia a Guia de Salida y Anula NP"
           @ pfIl+16, 28 SAY "cuando graba la Guia"
      CASE ppRg="PVI1200A"
           @ pfIl+06, 26 SAY ":" STYLE "BT"
           @ pfIl+07, 26 SAY ":" STYLE "BT"
           @ pfIl+08, 26 SAY ":" STYLE "BT"
           @ pfIl+09, 26 SAY ":" STYLE "BT"
           @ pfIl+10, 26 SAY ":" STYLE "BT"
           @ pfIl+11, 26 SAY ":" STYLE "BT"
           @ pfIl+12, 26 SAY ":" STYLE "BT"
           @ pfIl+13, 26 SAY ":" STYLE "BT"
           @ pfIl+14, 26 SAY ":" STYLE "BT"
           @ pfIl+06, 07 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+07, 07 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+08, 07 SAY "FLECHA -->" STYLE "BT"
           @ pfIl+09, 07 SAY "FLECHA <--" STYLE "BT"
           @ pfIl+10, 07 SAY "PAGE DOWN" STYLE "BT"
           @ pfIl+11, 07 SAY "PAGE UP" STYLE "BT"
           @ pfIl+12, 07 SAY "HOME" STYLE "BT"
           @ pfIl+13, 07 SAY "END" STYLE "BT"
           @ pfIl+14, 07 SAY "ENTER" STYLE "BT"
           @ pfIl+06, 28 SAY "Línea inferior"
           @ pfIl+07, 28 SAY "Línea superior"
           @ pfIl+08, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+09, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+10, 28 SAY "Página siguiente"
           @ pfIl+11, 28 SAY "Página anterior"
           @ pfIl+12, 28 SAY "Primera línea"
           @ pfIl+13, 28 SAY "Última línea"
           @ pfIl+14, 28 SAY "Aceptar Documento"
      CASE ppRg="PVI1300A"
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
           @ pfIl+06, 07 SAY "F7" STYLE "BT"
           @ pfIl+07, 07 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+08, 07 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+09, 07 SAY "FLECHA -->" STYLE "BT"
           @ pfIl+10, 07 SAY "FLECHA <--" STYLE "BT"
           @ pfIl+11, 07 SAY "PAGE DOWN" STYLE "BT"
           @ pfIl+12, 07 SAY "PAGE UP" STYLE "BT"
           @ pfIl+13, 07 SAY "HOME" STYLE "BT"
           @ pfIl+14, 07 SAY "END" STYLE "BT"
           @ pfIl+15, 07 SAY "ENTER" STYLE "BT"
           @ pfIl+16, 07 SAY "TAB" STYLE "BT"
           @ pfIl+17, 07 SAY "ALT + C" STYLE "BT"
           @ pfIl+06, 28 SAY "Marca/Desmarca Documentos"
           @ pfIl+07, 28 SAY "Línea inferior"
           @ pfIl+08, 28 SAY "Línea superior"
           @ pfIl+09, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+10, 28 SAY "Cambiar de Orden de Consulta"
           @ pfIl+11, 28 SAY "Página siguiente"
           @ pfIl+12, 28 SAY "Página anterior"
           @ pfIl+13, 28 SAY "Primera línea"
           @ pfIl+14, 28 SAY "Última línea"
           @ pfIl+15, 28 SAY "Aceptar Documento"
           @ pfIl+16, 28 SAY "Copia los Documentos marcados"
           @ pfIl+17, 28 SAY "Copiar solo Cabecera"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
