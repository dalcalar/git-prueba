 PRIVATE pfEm, pmCl, ppAn_scr
 = INKEY(0.01)
 SELECT peNd_vtas
 STORE 99 TO mkEy
 STORE 01 TO vsWw, csWw
 DO orD_0000a WITH "3500", "C", "F3500PEN", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p00_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 DO seE_3500w WITH "v"
 SET NEAR OFF
 IF EOF() .OR. f3500est<>veSt
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 DO paN_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr
 DO muE_3500w WITH "i", "v"
 DO seE_3500w WITH "v"
 DO diS_3500w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
           DO reS_3500w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3500w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3500w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsWw=5
                          STORE 1 TO vsWw
                     CASE mkEy=k_Right
                          STORE vsWw+1 TO vsWw
                     CASE mkEy=k_Left .AND. vsWw=1
                          STORE 5 TO vsWw
                     CASE mkEy=k_Left
                          STORE vsWw-1 TO vsWw
                ENDCASE
                DO caM_3500w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO coLbln
                SET READBORDER ON
                DO diS_3500w WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO ppAn_scr
                DO coLsc4
                @ ifFr-1.7, piCl-0.1 TO ifFr-0.1, puCl+0.1 PATTERN 1
                DO coLbln
                DO CASE
                     CASE vsWw=1
                          STORE (puCl-piCl-40)/2 TO pmCl
                          @iFFR-1.4,pMCL    Say "Documento"            Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+15 Get vTD1                   Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
                          @iFFR-1.4,pMCL+20 Get vSR1                   Font "&mLetAri",9 Style "NQ" Size 1,4.0 Pict "999"     Color ,&mColBlN
                          @iFFR-1.4,pMCL+26 Get vDO1                   Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "9999999" Color ,&mColBlN
                     CASE vsWw=2
                          STORE (puCl-piCl-50)/2 TO pmCl
                          STORE CTOD(vdI1+"/"+vmE1+"/"+vaN1) TO pfEm
                          @iFFR-1.4,pMCL    Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+23 Get pFEM                   Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlN
                     CASE vsWw=3
                          STORE (puCl-piCl-55)/2 TO pmCl
                          STORE CTOD(vdIv+"/"+vmEv+"/"+vaNv) TO pfEm
                          @iFFR-1.4,pMCL    Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+28 Get pFEM                   Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlN
                     CASE vsWw=4
                          STORE (puCl-piCl-40)/2 TO pmCl
                          @iFFR-1.4,pMCL    Say "Cliente"              Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+10 Edit vNOM                  Font "&mLetAri",9 Style "NQ" Size 1,30,40
                     CASE vsWw=5
                          STORE (puCl-piCl-40)/2 TO pmCl
                          @iFFR-1.4,pMCL    Say "Titular"              Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+10 Edit vNTT                  Font "&mLetAri",9 Style "NQ" Size 1,30,40
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                RESTORE SCREEN FROM ppAn_scr
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                ELSE
                     SET NEAR ON
                     DO CASE
                          CASE vsWw=1
                               SEEK veSt+vtD1+vsR1+vdO1
                          CASE vsWw=2
                               SEEK veSt+SUBSTR(DTOC(pfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(pfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(pfEm), 1, 2)
                          CASE vsWw=3
                               SEEK veSt+SUBSTR(DTOC(pfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(pfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(pfEm), 1, 2)
                          CASE vsWw=4
                               SEEK veSt+UPPER(vnOm)
                          CASE vsWw=5
                               SEEK veSt+UPPER(vnTt)
                     ENDCASE
                     SET NEAR OFF
                     DO muE_3500w WITH "F", "v"
                     DO seE_3500w WITH "i"
                     STORE ifFr TO vfFr
                     STORE 0 TO cfFr
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          IF f3500tdo+f3500ser+f3500doc=vtD1+vsR1+vdO1
                               STORE vfFr TO cfFr
                               EXIT
                          ENDIF
                          STORE vfFr+1 TO vfFr
                          SKIP
                     ENDDO
                     IF cfFr=0
                          DO seE_3500w WITH "v"
                          DO paN_3500w
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          DO muE_3500w WITH "i", "v"
                          STORE ifFr TO vfFr
                     ELSE
                          STORE cfFr TO vfFr
                     ENDIF
                     DO seE_3500w WITH "v"
                     DO diS_3500w WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
           CASE mkEy=k_F7
                DO prE_docum WITH  ;
                   "¿Estás seguro de querer marcar todos los pendientes hasta la fecha indicada o hasta que llegue a 999 ítems?"
                IF moPc$"Ss"
                     SAVE SCREEN TO ppAn_scr
                     DO coLsc4
                     @ ifFr-1.7, piCl-0.1 TO ifFr-0.1, puCl+0.1 PATTERN 1
                     STORE (puCl-piCl-40)/2 TO pmCl
                     PRIVATE ptD1, psR1, pdO1, pnUm
                     SELECT peNd_vtas
                     STORE 99 TO mkEy
                     STORE 00 TO cfFr
                     DO orD_0000a WITH "3500", "C", "F3500FE2", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO TOP
                     SEEK veSt
                     STORE 0 TO pnUm
                     DO WHILE  .NOT. EOF() .AND. f3500est=veSt
                          @iFFR-1.4,pMCL    Say "Documento" Font "&mLetAri",9 Style "BT"
                          @iFFR-1.4,pMCL+15 Say F3500TDO    Font "&mLetAri",9 Style "NQ" Size 1,3.2
                          @iFFR-1.4,pMCL+20 Say F3500SER    Font "&mLetAri",9 Style "NQ" Size 1,4.0
                          @iFFR-1.4,pMCL+26 Say F3500DOC    Font "&mLetAri",9 Style "NQ" Size 1,9.8
                          IF f3500fem>CTOD(vdIa+"/"+vmEs+"/"+vaNo) .OR.  ;
                             pnUm>999998
                               EXIT
                          ENDIF
                          STORE pnUm+1 TO pnUm
                          STORE f3500tdo TO ptD1
                          STORE f3500ser TO psR1
                          STORE f3500doc TO pdO1
                          SELECT exIste
                          SEEK ptD1+psR1+pdO1
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2tdo WITH ptD1
                               REPLACE ftM2ser WITH psR1
                               REPLACE ftM2doc WITH pdO1
                               REPLACE ftM2est WITH "1"
                          ENDIF
                          SELECT peNd_vtas
                          SKIP
                     ENDDO
                     RELEASE ptD1, psR1, pdO1, pnUm
                     RESTORE SCREEN FROM ppAn_scr
                     SELECT peNd_vtas
                     STORE 99 TO mkEy
                     STORE 00 TO cfFr
                     DO CASE
                          CASE vsWw=1
                               DO orD_0000a WITH "3500", "C", "F3500PEN", "A"
                          CASE vsWw=2
                               DO orD_0000a WITH "3500", "C", "F3500FE2", "A"
                          CASE vsWw=3
                               DO orD_0000a WITH "3500", "C", "F3500FV2", "A"
                          CASE vsWw=4
                               DO orD_0000a WITH "3500", "C", "F3500NO2", "A"
                          CASE vsWw=5
                               DO orD_0000a WITH "3500", "C", "F3500NT2", "A"
                     ENDCASE
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SET NEAR ON
                     DO seE_3500w WITH "i"
                     SET NEAR OFF
                     DO paN_3500w
                     STORE ifFr TO vfFr
                     DO muE_3500w WITH "i", "v"
                     DO seE_3500w WITH "v"
                     DO diS_3500w WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
           CASE mkEy=k_F9
                SELECT exIste
                SEEK vtD1+vsR1+vdO1
                DO CASE
                     CASE  .NOT. EOF() .AND. ftM2est=SPACE(01)
                          STORE "Documento ya digitado en el Voucher..."  ;
                                TO mmSj
                     CASE EOF()
                          APPEND BLANK
                          REPLACE ftM2tdo WITH vtD1
                          REPLACE ftM2ser WITH vsR1
                          REPLACE ftM2doc WITH vdO1
                          REPLACE ftM2est WITH "1"
                     OTHERWISE
                          DELETE
                          PACK
                ENDCASE
                SELECT peNd_vtas
                DO diS_3500w WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Enter
                SELECT exIste
                SEEK vtD1+vsR1+vdO1
                IF  .NOT. EOF()
                     STORE "Documento ya se encuentra registrado..." TO mmSj
                ELSE
                     SELECT peNd_vtas
                     EXIT
                ENDIF
                SELECT peNd_vtas
           CASE mkEy=k_Tab
                SELECT exIste
                SET FILTER TO ftM2est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos marcados..." TO mmSj
                     SET FILTER TO
                ELSE
                     SET FILTER TO
                     SELECT peNd_vtas
                     EXIT
                ENDIF
                SELECT peNd_vtas
           CASE mkEy=k_Home
                GOTO TOP
                SEEK veSt
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=itD1+isR1+idO1 .AND.  ;
                          vtD1+vsR1+vdO1=itD1+isR1+idO1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtD1+vsR1+vdO1=itD1+isR1+idO1
                                    DO paN_3500w
                               OTHERWISE
                                    DO seE_3500w WITH "v"
                                    DO diS_3500w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_3500w WITH "i", "v"
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK veSt+"ZZZZZZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f3500est<>veSt
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=utD1+usR1+udO1 .AND.  ;
                          vtD1+vsR1+vdO1=utD1+usR1+udO1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtD1+vsR1+vdO1=utD1+usR1+udO1
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3500w
                               OTHERWISE
                                    DO seE_3500w WITH "v"
                                    DO diS_3500w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ufFr TO vfFr
                          DO muE_3500w WITH "u", "v"
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "N"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          SKIP
                          IF vtD1+vsR1+vdO1=utD1+usR1+udO1
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3500w WITH ifFr, ffFr+1
                               DO muE_3500w WITH "F", "v"
                               DO muE_3500w WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_3500w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_3500w WITH "F", "v"
                          ENDIF
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "N"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          SKIP -1
                          IF vtD1+vsR1+vdO1=itD1+isR1+idO1
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_3500w WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_3500w WITH "F", "v"
                               DO muE_3500w WITH "F", "i"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_3500w WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_3500w WITH "F", "v"
                          ENDIF
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3500w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3500w
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_3500w WITH "i", "v"
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3500w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f3500est<>veSt
                               GOTO TOP
                               SEEK veSt
                          ENDIF
                          DO paN_3500w
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_3500w WITH "i", "v"
                          DO seE_3500w WITH "v"
                          DO diS_3500w WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3500w WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_3500w
 DO pn1_3500w WITH "1"
ENDPROC
*
PROCEDURE Pa1_3500w
 DO pn1_3500w WITH "2"
ENDPROC
*
PROCEDURE Pn1_3500w
 PARAMETER ptPo
 STORE ifFr TO vfFr, ufFr
 DO muE_3500w WITH "F", "i"
 DO muE_3500w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt .AND. vfFr<ffFr+1
      DO CASE
           CASE ptPo="2" .AND. f3500tdo+f3500ser+f3500doc=xtD1+xsR1+xdO1
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_3500w WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      DO muE_3500w WITH "F", "u"
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_3500w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3500w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3500mon=1
           STORE "S/." TO vsGg
      OTHERWISE
           STORE "US$" TO vsGg
 ENDCASE
 STORE f3500tdo TO ctD2
 STORE f3500ser TO csR2
 STORE f3500doc TO cdO2
 DO CASE
      CASE ptIp="N" .AND. f3500fve<=DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"N1" .AND. f3500tdo<>"N3"
           DO coLscv
      CASE ptIp="R" .AND. f3500fve<=DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"N1" .AND. f3500tdo<>"N3"
           DO coLblv
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+34.0 Say F3500FVE Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO CASE
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+000.0 Say F3500TDO          Font "&mLetAri",9 Style "NQ" Size 1,03.4
 @vFFR,pICL+004.4 Say F3500SER          Font "&mLetAri",9 Style "NQ" Size 1,04
 @vFFR,pICL+009.4 Say F3500DOC          Font "&mLetAri",9 Style "NQ" Size 1,10
 @vFFR,pICL+020.4 Say F3500FEM          Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFR,pICL+047.6 Say F3500CLI          Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFFR,pICL+054.6 Say F3500NOM          Font "&mLetAri",9 Style "NQ" Size 1,35.1 Pict "@S38"
 @vFFR,pICL+090.7 Say F3500TIT          Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFFR,pICL+097.7 Say F3500NTI          Font "&mLetAri",9 Style "NQ" Size 1,33.7 Pict "@S37"
 @vFFR,pICL+132.5 Say vSGG              Font "&mLetAri",9 Style "NQ" Size 1,4.5
 @vFFR,pICL+138.1 Say F3500TOT+F3500INT Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 @vFFR,pICL+190.3 Say Space(2)          Font "&mLetAri",9 Style "NQ" Size 1,1.3
 DO CASE
      CASE ptIp="N" .AND. f3500acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3500acu<0
           DO coLblr
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3500acu<0
           @vFFR,pICL+155.5 Say F3500ACU Font "&mLetAri",9 Style "BQ" Size 1,13.9 Pict "9,999,999.99"
      OTHERWISE
           @vFFR,pICL+155.5 Say F3500ACU Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f3500tot+f3500int-f3500acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3500tot+f3500int-f3500acu<0
           DO coLblr
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3500tot+f3500int-f3500acu<0
           @vFFR,pICL+172.9 Say F3500TOT+F3500INT-F3500ACU Font "&mLetAri",9 Style "BQ" Size 1,13.9 Pict "9,999,999.99"
      OTHERWISE
           @vFFR,pICL+172.9 Say F3500TOT+F3500INT-F3500ACU Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "9,999,999.99"
 ENDCASE
 SELECT exIste
 SEEK ctD2+csR2+cdO2
 IF  .NOT. EOF() .AND. ftM2est="1"
      DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl+190.3
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SELECT peNd_vtas
ENDPROC
*
PROCEDURE Cam_3500w
 STORE vsWw TO csWw
 DO muE_3500w WITH "v", "x"
 STORE 99 TO mkEy
 STORE 00 TO cfFr
 DO CASE
      CASE vsWw=1
           DO orD_0000a WITH "3500", "C", "F3500PEN", "A"
      CASE vsWw=2
           DO orD_0000a WITH "3500", "C", "F3500FE2", "A"
      CASE vsWw=3
           DO orD_0000a WITH "3500", "C", "F3500FV2", "A"
      CASE vsWw=4
           DO orD_0000a WITH "3500", "C", "F3500NO2", "A"
      CASE vsWw=5
           DO orD_0000a WITH "3500", "C", "F3500NT2", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3500w WITH "i"
 DO pa1_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfFr=00
      DO muE_3500w WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_3500w WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_3500w WITH "v"
 DO diS_3500w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
ENDPROC
*
PROCEDURE Bot_3500w
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+20.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+34
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+47.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, piCl+90.7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl
      CASE vsWw=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+20.4
      CASE vsWw=3
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+34
      CASE vsWw=4
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+47.6
      CASE vsWw=5
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, piCl+90.7
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Lin_3500w
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+003.8 TO pfIn, piCl+003.8
 @ piNi, piCl+008.8 TO pfIn, piCl+008.8
 @ piNi, piCl+019.8 TO pfIn, piCl+019.8
 @ piNi, piCl+033.4 TO pfIn, piCl+033.4
 @ piNi, piCl+047.0 TO pfIn, piCl+047.0
 @ piNi, piCl+054.0 TO pfIn, piCl+054.0
 @ piNi, piCl+090.1 TO pfIn, piCl+090.1
 @ piNi, piCl+097.1 TO pfIn, piCl+097.1
 @ piNi, piCl+131.9 TO pfIn, piCl+131.9
 @ piNi, piCl+137.6 TO pfIn, piCl+137.6
 @ piNi, piCl+154.9 TO pfIn, piCl+154.9
 @ piNi, piCl+172.3 TO pfIn, piCl+172.3
 @ piNi, piCl+189.7 TO pfIn, piCl+189.7
ENDPROC
*
PROCEDURE P00_3500w
 STORE mcO0 TO piCl
 STORE mcO0+muCo TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.4, piCl, ffFr+2.5, puCl-0.1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_3500w WITH ifFr-0.2, ffFr+1.1
 @ ifFr-0.2, piCl TO ifFr-0.2, puCl
 @ ffFr+1.1, piCl TO ffFr+1.1, puCl
 @ ifFr-1.4, piCl+19.8 TO ifFr-0.2, piCl+19.8
 @ ifFr-1.4, piCl+33.4 TO ifFr-0.2, piCl+33.4
 @ ifFr-1.4, piCl+47.0 TO ifFr-0.2, piCl+47.0
 DO coLsc1
 @iFFR-1.3,pICL+03.5 Say "Documento" Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,pICL+22.0 Say "Emisión"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.3,pICL+34.4 Say "Vencimien" Font "&mLetAri",9 Style "BT"
 DO coLplp
 @ ifFr-1.4, piCl+090.1 TO ifFr-0.2, piCl+090.1
 @ ifFr-1.4, piCl+131.9 TO ifFr-0.2, piCl+131.9
 @ ifFr-1.4, piCl+137.6 TO ifFr-0.2, piCl+137.6
 @ ifFr-1.4, piCl+154.9 TO ifFr-0.2, piCl+154.9
 @ ifFr-1.4, piCl+172.3 TO ifFr-0.2, piCl+172.3
 @ ifFr-1.4, piCl+189.7 TO ifFr-0.2, piCl+189.7
 DO coLsc1
 @fFFR+1.4,pICL+080.0 Say "Saldos de Ctas. x Cobrar" Font "&mLetAri",10 Style "BQ"
 @iFFR-1.3,pICL+063.6 Say "Cliente"                  Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+108.7 Say "Titular"                  Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+132.6 Say "Mon"                      Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+139.1 Say "Total Docum."             Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+162.4 Say "A/C"                      Font "&mLetAri",9  Style "BT"
 @iFFR-1.3,pICL+177.9 Say "Saldo"                    Font "&mLetAri",9  Style "BT"
 DO boT_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_3500w
 DO muE_3500w WITH "v", "c"
 STORE vfFr TO cfFr
 DO CASE
      CASE vtDo="V1"
           DO reS_3510b IN PCI3510B
      CASE vtDo="V3"
           DO reS_3530b IN PCI3530B
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SELECT peNd_vtas
 DO p00_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3500w WITH "i"
 DO paN_3500w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cfFr TO vfFr
 DO muE_3500w WITH "c", "v"
 DO seE_3500w WITH "v"
 DO diS_3500w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Mue_3500w
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtD1 TO ctD1
           STORE vsR1 TO csR1
           STORE vdO1 TO cdO1
           STORE vcLi TO ccLi
           STORE vnOm TO cnOm
           STORE vtIt TO ctIt
           STORE vnTt TO cnTt
           STORE vaN1 TO caN1
           STORE vmE1 TO cmE1
           STORE vdI1 TO cdI1
           STORE vaNv TO caNv
           STORE vmEv TO cmEv
           STORE vdIv TO cdIv
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtD1 TO xtD1
           STORE vsR1 TO xsR1
           STORE vdO1 TO xdO1
           STORE vcLi TO xcLi
           STORE vnOm TO xnOm
           STORE vtIt TO xtIt
           STORE vnTt TO xnTt
           STORE vaN1 TO xaNo
           STORE vmE1 TO xmEs
           STORE vdI1 TO xdIa
           STORE vaNv TO xaNv
           STORE vmEv TO xmEv
           STORE vdIv TO xdIv
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtD1 TO vtD1
           STORE xsR1 TO vsR1
           STORE xdO1 TO vdO1
           STORE xcLi TO vcLi
           STORE xnOm TO vnOm
           STORE xtIt TO vtIt
           STORE xnTt TO vnTt
           STORE xaNo TO vaN1
           STORE xmEs TO vmE1
           STORE xdIa TO vdI1
           STORE xaNv TO vaNv
           STORE xmEv TO vmEv
           STORE xdIv TO vdIv
      CASE ptP1="i" .AND. ptP2="v"
           STORE itD1 TO vtD1
           STORE isR1 TO vsR1
           STORE idO1 TO vdO1
           STORE icLi TO vcLi
           STORE inOm TO vnOm
           STORE itIt TO vtIt
           STORE inTt TO vnTt
           STORE iaN1 TO vaN1
           STORE imE1 TO vmE1
           STORE idI1 TO vdI1
           STORE iaNv TO vaNv
           STORE imEv TO vmEv
           STORE idIv TO vdIv
      CASE ptP1="u" .AND. ptP2="v"
           STORE utD1 TO vtD1
           STORE usR1 TO vsR1
           STORE udO1 TO vdO1
           STORE ucLi TO vcLi
           STORE unOm TO vnOm
           STORE utIt TO vtIt
           STORE unTt TO vnTt
           STORE uaN1 TO vaN1
           STORE umE1 TO vmE1
           STORE udI1 TO vdI1
           STORE uaNv TO vaNv
           STORE umEv TO vmEv
           STORE udIv TO vdIv
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctD1 TO vtD1
           STORE csR1 TO vsR1
           STORE cdO1 TO vdO1
           STORE ccLi TO vcLi
           STORE cnOm TO vnOm
           STORE ctIt TO vtIt
           STORE cnTt TO vnTt
           STORE caN1 TO vaN1
           STORE cmE1 TO vmE1
           STORE cdI1 TO vdI1
           STORE caNv TO vaNv
           STORE cmEv TO vmEv
           STORE cdIv TO vdIv
      CASE ptP1="F" .AND. ptP2="v"
           STORE f3500tdo TO vtD1
           STORE f3500ser TO vsR1
           STORE f3500doc TO vdO1
           STORE f3500cli TO vcLi
           STORE f3500nom TO vnOm
           STORE f3500tit TO vtIt
           STORE f3500nti TO vnTt
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO vaN1
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO vmE1
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO vdI1
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO vaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO vmEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO vdIv
      CASE ptP1="F" .AND. ptP2="u"
           STORE f3500tdo TO utD1
           STORE f3500ser TO usR1
           STORE f3500doc TO udO1
           STORE f3500cli TO ucLi
           STORE f3500nom TO unOm
           STORE f3500tit TO utIt
           STORE f3500nti TO unTt
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO uaN1
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO umE1
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO udI1
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO uaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO umEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO udIv
      CASE ptP1="F" .AND. ptP2="i"
           STORE f3500tdo TO itD1
           STORE f3500ser TO isR1
           STORE f3500doc TO idO1
           STORE f3500cli TO icLi
           STORE f3500nom TO inOm
           STORE f3500tit TO itIt
           STORE f3500nti TO inTt
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO iaN1
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO imE1
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO idI1
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO iaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO imEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO idIv
 ENDCASE
ENDPROC
*
PROCEDURE See_3500w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsWw=1
                     SEEK veSt+vtD1+vsR1+vdO1
                CASE vsWw=2
                     SEEK veSt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                CASE vsWw=3
                     SEEK veSt+vaNv+vmEv+vdIv+vtD1+vsR1+vdO1
                CASE vsWw=4
                     SEEK veSt+UPPER(vnOm)+vcLi+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
                CASE vsWw=5
                     SEEK veSt+UPPER(vnTt)+vtIt+vaN1+vmE1+vdI1+vtD1+vsR1+vdO1
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsWw=1
                     SEEK veSt+itD1+isR1+idO1
                CASE vsWw=2
                     SEEK veSt+iaN1+imE1+idI1+itD1+isR1+idO1
                CASE vsWw=3
                     SEEK veSt+iaNv+imEv+idIv+itD1+isR1+idO1
                CASE vsWw=4
                     SEEK veSt+UPPER(inOm)+icLi+iaN1+imE1+idI1+itD1+isR1+idO1
                CASE vsWw=5
                     SEEK veSt+UPPER(inTt)+itIt+iaN1+imE1+idI1+itD1+isR1+idO1
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsWw=1
                     SEEK veSt+utD1+usR1+udO1
                CASE vsWw=2
                     SEEK veSt+uaN1+umE1+udI1+utD1+usR1+udO1
                CASE vsWw=3
                     SEEK veSt+uaNv+umEv+udIv+utD1+usR1+udO1
                CASE vsWw=4
                     SEEK veSt+UPPER(unOm)+ucLi+uaN1+umE1+udI1+utD1+usR1+udO1
                CASE vsWw=5
                     SEEK veSt+UPPER(unTt)+utIt+uaN1+umE1+udI1+utD1+usR1+udO1
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3500w
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
           STORE k_F9 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_3500w WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_3500w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_3500w WITH "F", "v"
           DO diS_3500w WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3500w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY "den que se ha elegido."
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
 @ pfIl+10, 07 SAY "F9" STYLE "BT"
 @ pfIl+11, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 07 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+14, 07 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+15, 07 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+16, 07 SAY "PAGE UP" STYLE "BT"
 @ pfIl+17, 07 SAY "HOME" STYLE "BT"
 @ pfIl+18, 07 SAY "END" STYLE "BT"
 @ pfIl+19, 07 SAY "TAB" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Busquedas rápidas"
 @ pfIl+09, 28 SAY "Marcar pendientes hasta la fecha del Voucher"
 @ pfIl+10, 28 SAY "Marcar/Desmarcar Documentos"
 @ pfIl+11, 28 SAY "Línea inferior"
 @ pfIl+12, 28 SAY "Línea superior"
 @ pfIl+13, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+14, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+15, 28 SAY "Página siguiente"
 @ pfIl+16, 28 SAY "Página anterior"
 @ pfIl+17, 28 SAY "Primera línea"
 @ pfIl+18, 28 SAY "Última línea"
 @ pfIl+19, 28 SAY "Copiar los documentos marcados en el Detalle"
 @ pfIl+20, 28 SAY "con su pendiente completo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
