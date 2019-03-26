 = INKEY(0.01)
 STORE 00 TO xtO1, xtO2, xaC1, xaC2, vfA1, vfA2, vbO1, vbO2, vpU1, vpU2
 STORE 00 TO vnP1, vnP2, vlE1, vlE2, vnC1, vnC2, vnD1, vnD2
 STORE 01 TO vsW2
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt+vtPr+vpRv
 DO WHILE  .NOT. EOF() .AND. f3600est+f3600tpr+f3600prv=veSt+vtPr+vpRv
      DO CASE
           CASE f3600mon=1 .AND. f3600td1="NC"
                STORE xtO1-f3600tot TO xtO1
                STORE xaC1-f3600acu TO xaC1
           CASE f3600mon=1
                STORE xtO1+f3600tot TO xtO1
                STORE xaC1+f3600acu TO xaC1
           CASE f3600mon=2 .AND. f3600td1="NC"
                STORE xtO2-f3600tot TO xtO2
                STORE xaC2-f3600acu TO xaC2
           CASE f3600mon=2
                STORE xtO2+f3600tot TO xtO2
                STORE xaC2+f3600acu TO xaC2
      ENDCASE
      DO CASE
           CASE f3600td1="FA" .AND. f3600mon=1
                STORE vfA1+(f3600tot-f3600acu) TO vfA1
           CASE f3600td1="FA" .AND. f3600mon=2
                STORE vfA2+(f3600tot-f3600acu) TO vfA2
           CASE f3600td1="BO" .AND. f3600mon=1
                STORE vbO1+(f3600tot-f3600acu) TO vbO1
           CASE f3600td1="BO" .AND. f3600mon=2
                STORE vbO2+(f3600tot-f3600acu) TO vbO2
           CASE f3600td1="LP" .AND. f3600mon=1
                STORE vlE1+(f3600tot-f3600acu) TO vlE1
           CASE f3600td1="LP" .AND. f3600mon=2
                STORE vlE2+(f3600tot-f3600acu) TO vlE2
           CASE f3600td1="ND" .AND. f3600mon=1
                STORE vnD1+(f3600tot-f3600acu) TO vnD1
           CASE f3600td1="ND" .AND. f3600mon=2
                STORE vnD2+(f3600tot-f3600acu) TO vnD2
           CASE f3600td1="NC" .AND. f3600mon=1
                STORE vnC1+(f3600tot-f3600acu) TO vnC1
           CASE f3600td1="NC" .AND. f3600mon=2
                STORE vnC2+(f3600tot-f3600acu) TO vnC2
           CASE f3600td1="PU" .AND. f3600mon=1
                STORE vpU1+(f3600tot-f3600acu) TO vpU1
           CASE f3600td1="PU" .AND. f3600mon=2
                STORE vpU2+(f3600tot-f3600acu) TO vpU2
           CASE f3600mon=1
                STORE vnP1+(f3600tot-f3600acu) TO vnP1
           CASE f3600mon=2
                STORE vnP2+(f3600tot-f3600acu) TO vnP2
      ENDCASE
      SKIP
 ENDDO
 GOTO TOP
 SEEK veSt+vtPr+vpRv
 DO p00_3602c IN PCC3602C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3602c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_3602c IN PCC3602C WITH "3602"
 STORE ifFr TO vfFr
 DO muE_3602c IN PCC3602C WITH "i", "v"
 DO seE_3602c WITH "v"
 DO diS_3602c IN PCC3602C WITH "R"
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
           DO reS_3602c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3602c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3602c IN PCC3602C WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3602c IN PCC3602C WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3602c IN PCC3602C
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3602c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO CASE
                     CASE vsW2=1
                          SELECT peNd_cpras
                          GOTO TOP
                          SEEK "@"+vtPr+vpRv
                          IF EOF()
                               DO seE_3602c WITH "v"
                               STORE "No hay Documentos Cancelados..." TO mmSj
                               DO poNmsj
                          ELSE
                               STORE 2 TO vsW2
                               STORE "@" TO veSt
                               DO paN_3602c IN PCC3602C WITH "3602"
                               STORE ifFr TO vfFr
                               DO muE_3602c IN PCC3602C WITH "i", "v"
                               DO seE_3602c WITH "v"
                               DO diS_3602c IN PCC3602C WITH "R"
                               DO cuA_3602c
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     CASE vsW2=2
                          SELECT peNd_cpras
                          GOTO TOP
                          SEEK " "+vtPr+vpRv
                          IF EOF()
                               DO seE_3602c WITH "v"
                               STORE "Ya no hay Documentos Pendientes..."  ;
                                     TO mmSj
                               DO poNmsj
                          ELSE
                               STORE 1 TO vsW2
                               STORE " " TO veSt
                               DO paN_3602c IN PCC3602C WITH "3602"
                               STORE ifFr TO vfFr
                               DO muE_3602c IN PCC3602C WITH "i", "v"
                               DO seE_3602c WITH "v"
                               DO diS_3602c IN PCC3602C WITH "R"
                               DO cuA_3602c
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                ENDCASE
           CASE mkEy=k_Tab
                DO taB_3602c IN PCC3602C
           CASE mkEy=k_Enter
                SELECT peNd_cpras
                DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO paG_3600b IN PCC3600B WITH vtDo, vsEr, vdOc
                SELECT peNd_cpras
                DO orD_0000a WITH "3600", "C", "F3600TPR", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT paGos
                GOTO TOP
                IF BOF()
                     STORE "No hay Pagos realizados en este Documento..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_12
                     DO pcC3602d
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_12
                ENDIF
                SELECT peNd_cpras
                DO seE_3602c WITH "v"
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vXLS=PutFile("Archivo Excel:","&mVIN"+"CTAS_x_COB_x_TIPO_PROVEEDOR_DT1.XLS","XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               DO xlS_3602c IN PCC3602C WITH "PCC3602C"
                     ENDCASE
                ENDIF
                SELECT peNd_cpras
                DO seE_3602c WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3602c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT peNd_cpras
                DO seE_3602c WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK veSt+vtPr+vpRv
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3602c IN PCC3602C WITH "3602"
                               OTHERWISE
                                    DO seE_3602c WITH "v"
                                    DO diS_3602c IN PCC3602C WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_3602c IN PCC3602C WITH "i", "v"
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK veSt+vtPr+vpRv+"ZZZ"
                SET NEAR OFF
                IF EOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+vtPr+vpRv
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3602c IN PCC3602C WITH "3602"
                               OTHERWISE
                                    DO seE_3602c WITH "v"
                                    DO diS_3602c IN PCC3602C WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_3602c IN PCC3602C WITH "u", "v"
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+vtPr+vpRv
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3602c IN PCC3602C WITH ifFr, ffFr+1
                               DO muE_3602c IN PCC3602C WITH "F", "v"
                               DO muE_3602c IN PCC3602C WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_3602c IN PCC3602C WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_3602c IN PCC3602C WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+vtPr+vpRv
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_3602c IN PCC3602C WITH ifFr, ffFr+1
                               DO muE_3602c IN PCC3602C WITH "F", "v"
                               DO muE_3602c IN PCC3602C WITH "F", "i"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_3602c IN PCC3602C WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3602c IN PCC3602C WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3602c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+vtPr+vpRv
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3602c IN PCC3602C WITH "3602"
                          STORE ifFr TO vfFr
                          DO muE_3602c IN PCC3602C WITH "i", "v"
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3602c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+vtPr+vpRv
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f3600est+f3600tpr+f3600prv<>veSt+ ;
                             vtPr+vpRv
                               GOTO TOP
                               SEEK veSt+vtPr+vpRv
                          ENDIF
                          DO paN_3602c IN PCC3602C WITH "3602"
                          STORE ifFr TO vfFr
                          DO muE_3602c IN PCC3602C WITH "i", "v"
                          DO seE_3602c WITH "v"
                          DO diS_3602c IN PCC3602C WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3602c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3602c
 PARAMETER ppRg
 DO pn1_3602c IN PCC3602C WITH "1", ppRg
 RELEASE ppRg
ENDPROC
*
PROCEDURE Pa1_3602c
 PARAMETER ppRg
 DO pn1_3602c IN PCC3602C WITH "2", ppRg
 RELEASE ppRg
ENDPROC
*
PROCEDURE Pn1_3602c
 PARAMETER ptPo, ppRg
 STORE ifFr TO vfFr, ufFr
 DO muE_3602c IN PCC3602C WITH "F", "i"
 DO muE_3602c IN PCC3602C WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt .AND. vfFr<ffFr+1
      DO CASE
           CASE f3600tpr<>vtPr
                EXIT
           CASE f3600prv<>vpRv
                EXIT
           CASE ptPo="2" .AND. f3600tdo+f3600ser+f3600doc=xtDo+xsEr+xdOc
                STORE vfFr TO cfFr
           OTHERWISE
                DO diS_3602c IN PCC3602C WITH "N"
      ENDCASE
      DO muE_3602c IN PCC3602C WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, icL1 CLEAR TO ffFr+1, ucL1
      DO liN_3602c IN PCC3602C WITH ufFr+1, ffFr+1
 ENDIF
 RELEASE ptPo, ppRg
ENDPROC
*
PROCEDURE Dis_3602c
 PARAMETER ptIp
 PRIVATE ptDo, ptD1, psEr, pdOc, psIg, paNo, pmEs, psR1, pnUm, plTr, pcHe,  ;
         pcJn, plEt
 STORE "" TO plTr, pcJn
 STORE SPACE(1) TO pcHe, plEt
 STORE f3600tdo TO ptDo
 STORE f3600td1 TO ptD1
 STORE f3600ser TO psEr
 STORE f3600doc TO pdOc
 DO CASE
      CASE f3600mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "U$" TO psIg
 ENDCASE
 IF ptD1<>"LP"
      SELECT deT_sal_caja
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=ptDo+psEr+pdOc
           STORE f3521ano TO paNo
           STORE f3521mes TO pmEs
           STORE f3521ser TO psR1
           STORE f3521num TO pnUm
           SELECT caB_sal_caja
           SEEK paNo+pmEs+psR1+pnUm
           IF  .NOT. EOF() .AND. f3520est<>"9" .AND. LEN(ALLTRIM(f3520let))<>0
                IF LEN(ALLTRIM(plTr))<>0
                     STORE plTr+";"+f3520srl+"-"+f3520let TO plTr
                ELSE
                     STORE plTr+f3520srl+"-"+f3520let TO plTr
                ENDIF
           ENDIF
           SELECT deT_sal_caja
           SKIP
      ENDDO
      SELECT deT_sal_bancos
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=ptDo+psEr+pdOc
           STORE f3541ano TO paNo
           STORE f3541mes TO pmEs
           STORE f3541ser TO psR1
           STORE f3541num TO pnUm
           SELECT caB_sal_bancos
           SEEK paNo+pmEs+psR1+pnUm
           IF  .NOT. EOF() .AND. f3540est<>"9" .AND. f3540tpo=1
                STORE "*" TO pcHe
                EXIT
           ENDIF
           SELECT deT_sal_bancos
           SKIP
      ENDDO
 ELSE
      SELECT deT_sal_caja
      DO orD_0000a WITH "3521", "C", "F3521NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT caB_sal_caja
      DO orD_0000a WITH "3520", "C", "F3520LET", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK psEr+pdOc
      IF EOF()
           STORE "*" TO pcJn
      ELSE
           DO WHILE  .NOT. EOF() .AND. f3520srl+f3520let=psEr+pdOc
                STORE f3520ano TO paNo
                STORE f3520mes TO pmEs
                STORE f3520ser TO psR1
                STORE f3520num TO pnUm
                SELECT deT_sal_caja
                SEEK paNo+pmEs+psR1+pnUm
                DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+f3521ser+ ;
                   f3521num=paNo+pmEs+psR1+pnUm
                     IF LEN(ALLTRIM(plTr))<>0
                          STORE plTr+";"+f3521tdo+":"+f3521sr1+"-"+ ;
                                f3521doc TO plTr
                     ELSE
                          STORE plTr+f3521tdo+":"+f3521sr1+"-"+f3521doc TO plTr
                     ENDIF
                     SELECT deT_sal_caja
                     SKIP
                ENDDO
                SELECT caB_sal_caja
                SKIP
           ENDDO
      ENDIF
      SELECT caB_sal_caja
      DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_sal_caja
      DO orD_0000a WITH "3521", "C", "F3521DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT leTras_prv
      SEEK psEr+pdOc
      DO CASE
           CASE SUBSTR(f3210com, 1, 2)="PR"
                STORE "pr" TO plEt
           CASE f3210tip=1
                STORE "D" TO plEt
           CASE f3210tip=2
                STORE "C" TO plEt
           CASE f3210tip=3
                STORE "N" TO plEt
      ENDCASE
 ENDIF
 SELECT peNd_cpras
 DO CASE
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
      CASE ptIp="N" .AND. f3600fem=f3600fve
           DO coLsc7
      CASE ptIp="R" .AND. f3600fem=f3600fve
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0     Say pCJN+F3600TDO Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFFR,mCO0+4.2 Say F3600SER      Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFR,mCO0+9.0 Say F3600DOC      Font "&mLetAri",9 Style "NQ" Size 1,10.2
 DO CASE
      CASE ptIp="N" .AND. f3600fve<DATE() .AND. f3600td1<>"NC" .AND.  ;
           f3600td1<>"ND"
           DO coLscz
      CASE ptIp="R" .AND. f3600fve<DATE() .AND. f3600td1<>"NC" .AND.  ;
           f3600td1<>"ND"
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+33 Say F3600FVE Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,mCO0+019.8 Say F3600FEM                           Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFR,mCO0+046.1 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ" Size 1,47.7 Pict "@S50"
 @vFFR,mCO0+094.8 Say pLTR                               Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S43"
 @vFFR,mCO0+137.1 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFFR,mCO0+194.1 Say pLET                               Font "&mLetAri",9 Style "BQ" Size 1,1.6
 @vFFR,mCO0+196.8 Say pCHE                               Font "&mLetAri",9 Style "BQ" Size 1,1.6
 @vFFR,mCO0+141.3 Say F3600TOT                           Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 @vFFR,mCO0+158.8 Say F3600ACU                           Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 DO CASE
      CASE ptIp="N" .AND. f3600tot-f3600acu<0
           DO coLscr
      CASE ptIp="R" .AND. f3600tot-f3600acu<0
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3600tot-f3600acu<0
           @vFFR,mCO0+176.1 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "BQ" Pict "9,999,999.99" Size 1,14.4
      OTHERWISE
           @vFFR,mCO0+176.1 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17.3
 ENDCASE
 RELEASE ptIp
 RELEASE ptDo, psEr, pdOc, psIg, paNo, pmEs, psR1, pnUm, plTr, pcHe, pcJn, plEt
ENDPROC
*
PROCEDURE Lin_3602c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.6 TO pfIn, mcO0+008.6
 @ piNi, mcO0+019.4 TO pfIn, mcO0+019.4
 @ piNi, mcO0+032.6 TO pfIn, mcO0+032.6
 @ piNi, mcO0+045.7 TO pfIn, mcO0+045.7
 @ piNi, mcO0+094.3 TO pfIn, mcO0+094.3
 @ piNi, mcO0+136.8 TO pfIn, mcO0+136.8
 @ piNi, mcO0+140.9 TO pfIn, mcO0+140.9
 @ piNi, mcO0+158.3 TO pfIn, mcO0+158.3
 @ piNi, mcO0+175.8 TO pfIn, mcO0+175.8
 @ piNi, mcO0+193.8 TO pfIn, mcO0+193.8
 @ piNi, mcO0+196.3 TO pfIn, mcO0+196.3
 RELEASE piNi, pfIn
ENDPROC
*
PROCEDURE Li2_3602c
 DO coLplp
 @ ifFr-1.5, mcO0+019.4 TO ifFr-0.2, mcO0+019.4
 @ ifFr-1.5, mcO0+032.6 TO ifFr-0.2, mcO0+032.6
 @ ifFr-1.5, mcO0+045.7 TO ifFr-0.2, mcO0+045.7
 @ ifFr-1.5, mcO0+094.3 TO ifFr-0.2, mcO0+094.3
 @ ifFr-1.5, mcO0+136.8 TO ifFr-0.2, mcO0+136.8
 @ ifFr-1.5, mcO0+140.9 TO ifFr-0.2, mcO0+140.9
 @ ifFr-1.5, mcO0+158.3 TO ifFr-0.2, mcO0+158.3
 @ ifFr-1.5, mcO0+175.8 TO ifFr-0.2, mcO0+175.8
 @ ifFr-1.5, mcO0+193.8 TO ifFr-0.2, mcO0+193.8
 @ ifFr-1.5, mcO0+196.3 TO ifFr-0.2, mcO0+196.3
ENDPROC
*
PROCEDURE P00_3602c
 RESTORE SCREEN FROM vpAn_99
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.3, mcO0, ffFr+3.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFr-1.6, mcO0-0.6 TO ifFr-0.2, mcO0+muCo+0.2 PATTERN 1 COLOR SCHEME 7
 DO liN_3602c IN PCC3602C WITH ifFr-0.2, ffFr+1.1
 @ ifFr-0.2, mcO0 TO ifFr-0.2, mcO0+muCo
 @ ffFr+1.1, mcO0 TO ffFr+1.1, mcO0+muCo
 DO coLsc7
 @iFFR-1.4,mCO0+002.0 Say "Documento"      Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,mCO0+021.8 Say "Emisión"        Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,mCO0+033.4 Say "Vencimien"      Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,mCO0+062.0 Say "Documento real" Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,mCO0+108.0 Say "Referencias"    Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,mCO0+137.4 Say "Mn"             Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,mCO0+147.0 Say "Total"          Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,mCO0+162.2 Say "a Cuenta"       Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,mCO0+182.1 Say "Saldo"          Font "&mLetAri",9 Style "NT"
 DO li2_3602c IN PCC3602C
 DO coLsc7
 @ ffFr+1.1, mcO0+071.3 TO ffFr+3.5, mcO0+196.2 PATTERN 1 COLOR SCHEME 6
 @ ffFr+1.1, mcO0+092.0 TO ffFr+3.5, mcO0+112.7
 @ ffFr+1.1, mcO0+133.2 TO ffFr+3.5, mcO0+134.2
 @ ffFr+1.1, mcO0+133.6 TO ffFr+3.5, mcO0+133.6
 @ ffFr+1.1, mcO0+154.8 TO ffFr+3.5, mcO0+175.6
 @fFFR+1.2,mCO0+076.5 Say "Totales S/."   Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,mCO0+095.6 Say "Pagos A/C S/." Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,mCO0+117.0 Say "Saldos S/."    Font "&mLetAri",9 Style "NT" Color 5
 @fFFR+1.2,mCO0+137.0 Say "Totales US$"   Font "&mLetAri",9 Style "NT" Color 1
 @fFFR+1.2,mCO0+156.8 Say "Pagos A/C US$" Font "&mLetAri",9 Style "NT" Color 1
 @fFFR+1.2,mCO0+178.6 Say "Saldos US$"    Font "&mLetAri",9 Style "NT" Color 1
 DO coLsc6
 @fFFR+2.2,mCO0+072.0 Say xTO1            Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,mCO0+092.6 Say xAC1            Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,mCO0+113.2 Say xTO1-xAC1       Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,mCO0+134.8 Say xTO2            Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,mCO0+155.4 Say xAC2            Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 @fFFR+2.2,mCO0+176.0 Say xTO2-xAC2       Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 SELECT peNd_cpras
 DO cuA_3602c
ENDPROC
*
PROCEDURE P01_3602c
 DO coL_beige
 DO cuAdro WITH ifFr-6.8, mcO0, ifFr-3.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFFR-6.7,mCO0+.5 Say "Tipo de Proveedor" Font "&mLetRom",11 Style "BQ"
 @iFFR-5.2,mCO0+.5 Say "Proveedor"         Font "&mLetRom",11 Style "BQ"
 @iFFR-6.7,mCO0+26 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @iFFR-5.2,mCO0+26 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @iFFR-6.7,mCO0+28 Say vNTP                Font "&mLetRom",11 Style "NT" Size 1,70 Pict "@S50"
 @iFFR-5.2,mCO0+28 Say vNOM                Font "&mLetRom",11 Style "NT" Size 1,90 Pict "@S70"
ENDPROC
*
PROCEDURE Cua_3602c
 DO prEsiona WITH "1", "CUADRO", ifFr-3.1, mcO0+muCo-32
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CUADRO", ifFr-3.1, mcO0+muCo-14
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLscz
 @iFFR-3,mCO0+mUCO-31.2 Say "  Saldos" Font "&mLetRom",11 Style "BT"
 @iFFR-3,mCO0+mUCO-12.8 Say "Cancelad" Font "&mLetRom",11 Style "BT"
 DO coLscr
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "2", "CUADRO", ifFr-3.1, mcO0+muCo-32
           @iFFR-2.95,mCO0+mUCO-31.2 Say "  Saldos" Font "&mLetRom",11 Style "BT"
      CASE vsW2=2
           DO prEsiona WITH "2", "CUADRO", ifFr-3.1, mcO0+muCo-14
           @iFFR-2.95,mCO0+mUCO-12.8 Say "Cancelad" Font "&mLetRom",11 Style "BT"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tab_3602c
 DO coLsc3
 SAVE SCREEN TO vpAn_12
 STORE mcO0+53 TO vcLn
 @ ifFr-02.4, vcLn+00 TO ifFr+16.0, vcLn+85 PATTERN 1
 @ ifFr-00.4, vcLn+00 TO ifFr-00.4, vcLn+85
 @ ifFr+14.0, vcLn+00 TO ifFr+16.0, vcLn+85
 @ ifFr-02.4, vcLn+29 TO ifFr+16.0, vcLn+29
 @ ifFr-02.4, vcLn+57 TO ifFr+16.0, vcLn+57
 @iFFR-02.0,vCLN+02 Say "Saldo de:"        Font "&mLetRom",12 Style "BQ"
 @iFFR-02.0,vCLN+42 Say "S/."              Font "&mLetRom",12 Style "BQ"
 @iFFR-02.0,vCLN+69 Say "US$"              Font "&mLetRom",12 Style "BQ"
 @iFFR+00.0,vCLN+02 Say "Factura"          Font "&mLetRom",12 Style "BQ"
 @iFFR+02.0,vCLN+02 Say "Boleta"           Font "&mLetRom",12 Style "BQ"
 @iFFR+04.0,vCLN+02 Say "NP"               Font "&mLetRom",12 Style "BQ"
 @iFFR+06.0,vCLN+02 Say "Letras"           Font "&mLetRom",12 Style "BQ"
 @iFFR+08.0,vCLN+02 Say "Notas de Crédito" Font "&mLetRom",12 Style "BQ"
 @iFFR+10.0,vCLN+02 Say "Notas de Débito"  Font "&mLetRom",12 Style "BQ"
 @iFFR+12.0,vCLN+02 Say "Recibos Públicos" Font "&mLetRom",12 Style "BQ"
 @iFFR+14.3,vCLN+02 Say "Totales:"         Font "&mLetRom",12 Style "BQ"
 @iFFR+00.0,vCLN+31 Say vFA1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+00.0,vCLN+59 Say vFA2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+02.0,vCLN+31 Say vBO1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+02.0,vCLN+59 Say vBO2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+04.0,vCLN+31 Say vNP1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+04.0,vCLN+59 Say vNP2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+06.0,vCLN+31 Say vLE1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+06.0,vCLN+59 Say vLE2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+08.0,vCLN+31 Say vNC1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+08.0,vCLN+59 Say vNC2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+10.0,vCLN+31 Say vND1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+10.0,vCLN+59 Say vND2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+12.0,vCLN+31 Say vPU1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+12.0,vCLN+59 Say vPU2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+14.3,vCLN+31 Say vFA1+vBO1+vNP1+vLE1-vNC1+vND1+vPU1 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 @iFFR+14.3,vCLN+59 Say vFA2+vBO2+vNP2+vLE2-vNC2+vND2+vPU2 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
 mkEy = INKEY(0, "HM")
 RESTORE SCREEN FROM vpAn_12
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Imp_3602c
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN MODULO
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3602c IN PCC3602C WITH "PCC3602C"
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3602c
 PARAMETER ppRg
 PUBLIC ptAm, pcL1, pcL2
 PRIVATE ptDo, ptD1, psR1, pdOc, pfEm, pmOn, ptOt, paCu, ppRv, psL1, psL2,  ;
         ptT1, ptT2
 DO CASE
      CASE veSt=" "
           STORE 2 TO voPc
      CASE veSt="@"
           STORE 4 TO voPc
 ENDCASE
 STORE 0 TO psL1, psL2, ptT1, ptT2, vlIn, vpAg
 STORE vpRv TO ppRv
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 126 TO ptAm
           STORE 21 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 118 TO ptAm
           STORE 21 TO mcLn
      OTHERWISE
           STORE 83 TO ptAm
           STORE 22 TO mcLn
 ENDCASE
 DO clN_3602b IN PCC3602B
 STORE 30 TO mcLn
 DO caB_3602c IN PCC3602C WITH ppRg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cb1_3602b IN PCC3602B WITH ptAm, pcL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt+vtPr+vpRv
 DO WHILE  .NOT. EOF() .AND. f3600est+f3600prv=veSt+vpRv
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f3600tpr<>vtPr
           EXIT
      ENDIF
      IF vlIn>mpAg-3
           DO caB_3602c IN PCC3602C WITH ppRg
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE f3600tdo TO ptDo
      STORE f3600ser TO psR1
      STORE f3600doc TO pdOc
      STORE f3600td1 TO ptD1
      STORE f3600fem TO pfEm
      STORE f3600mon TO pmOn
      STORE f3600tot TO ptOt
      STORE f3600acu TO paCu
      DO CASE
           CASE ptD1="NC" .AND. pmOn=1
                STORE psL1-(ptOt-paCu) TO psL1
                STORE ptT1-ptOt TO ptT1
           CASE ptD1="NC"
                STORE psL2-(ptOt-paCu) TO psL2
                STORE ptT2-ptOt TO ptT2
           CASE pmOn=1
                STORE psL1+(ptOt-paCu) TO psL1
                STORE ptT1+ptOt TO ptT1
           CASE pmOn=2
                STORE psL2+(ptOt-paCu) TO psL2
                STORE ptT2+ptOt TO ptT2
      ENDCASE
      DO im1_3602b IN PCC3602B WITH pcL1, ppRg
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT peNd_cpras
      SKIP
 ENDDO
 IF vpAg>muPg
      RETURN
 ENDIF
 DO suB_3602b IN PCC3602B WITH ppRg, pcL2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>muPg
      RETURN
 ENDIF
 DO rsM_3602b IN PCC3602B WITH ppRg, pcL2
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pcL1, pcL2
 RELEASE ptDo, ptD1, psR1, pdOc, pfEm, pmOn, ptOt, paCu, ppRv, psL1, psL2,  ;
         ptT1, ptT2
ENDPROC
*
PROCEDURE Cab_3602c
 PARAMETER ppRg
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Cuentas x Pagar de "+AllTrim(vNTP) Font "&mLetRom",14 Style "BQI"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Proveedor "+vPRV+": "+vNOM Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE voPc=2
                @vLIN,mCLN Say "Sólo Pendientes"       Font "&mLetAri",8 Style "NT"
           CASE voPc=3
                @vLIN,mCLN Say "Cancelados/Pendientes" Font "&mLetAri",8 Style "NT"
           CASE voPc=4
                @vLIN,mCLN Say "Sólo Cancelados"       Font "&mLetAri",8 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 DO coL_pr1
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Cam_3602c
 STORE 00 TO cfFr
 STORE 99 TO mkEy
 DO muE_3602c IN PCC3602C WITH "v", "x"
 DO seE_3602c WITH "i"
 DO pa1_3602c IN PCC3602C WITH "3602"
 IF cfFr=0
      DO muE_3602c IN PCC3602C WITH "i", "v"
      STORE ifFr TO vfFr
 ELSE
      DO muE_3602c IN PCC3602C WITH "x", "v"
      STORE cfFr TO vfFr
 ENDIF
 DO seE_3602c WITH "v"
 DO diS_3602c IN PCC3602C WITH "R"
 DO liN_3602c IN PCC3602C WITH ifFr-0.2, ffFr+1.1
ENDPROC
*
PROCEDURE Res_3602c
 DO muE_3602c IN PCC3602C WITH "v", "c"
 DO reS_3602b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3602c IN PCC3602C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_3602c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_cpras
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 DO seE_3602c WITH "i"
 DO WHILE  .NOT. EOF() .AND. f3600est+f3600tpr+f3600prv=veSt+vtPr+vpRv  ;
    .AND. vfFr<ffFr+1
      IF f3600tdo+f3600ser+f3600doc=vtDo+vsEr+vdOc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      DO muE_3602c IN PCC3602C WITH "v", "c"
      DO muE_3602c IN PCC3602C WITH "v", "i"
      STORE ifFr TO vfFr, cfFr
 ENDIF
 DO seE_3602c WITH "i"
 DO paN_3602c IN PCC3602C WITH "3602"
 STORE cfFr TO vfFr
 DO muE_3602c IN PCC3602C WITH "c", "v"
 DO seE_3602c WITH "v"
 DO diS_3602c IN PCC3602C WITH "R"
ENDPROC
*
PROCEDURE Mue_3602c
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
      CASE ptP1="F" .AND. ptP2="v"
           STORE f3600tdo TO vtDo
           STORE f3600ser TO vsEr
           STORE f3600doc TO vdOc
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdIa
      CASE ptP1="F" .AND. ptP2="i"
           STORE f3600tdo TO itDo
           STORE f3600ser TO isEr
           STORE f3600doc TO idOc
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO idIa
      CASE ptP1="F" .AND. ptP2="u"
           STORE f3600tdo TO utDo
           STORE f3600ser TO usEr
           STORE f3600doc TO udOc
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO udIa
 ENDCASE
 RELEASE ptP1, ptP2
ENDPROC
*
PROCEDURE See_3602c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK veSt+vtPr+vpRv+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i"
           SEEK veSt+vtPr+vpRv+iaNo+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u"
           SEEK veSt+vtPr+vpRv+uaNo+umEs+udIa+utDo+usEr+udOc
 ENDCASE
 RELEASE psEe
ENDPROC
*
PROCEDURE Xls_3602c
 PARAMETER ppRg
 PRIVATE ptDo, psEr, pdOc, pfEm, pfVe, ppRv, pnOm, pmOn, ptOt, paCu, pnUm,  ;
         prEc, pxLs
 SELECT tmP_excel_2
 ZAP
 APPEND BLANK
 REPLACE prOveed WITH "Tipo de Proveedor: "+vnTp
 APPEND BLANK
 REPLACE prOveed WITH "Proveedor: "+vnOm
 APPEND BLANK
 IF vsW2=1
      REPLACE prOveed WITH "Sólo Pendientes"
 ELSE
      REPLACE prOveed WITH "Sólo Cancelados"
 ENDIF
 APPEND BLANK
 SAVE SCREEN TO vpAn_12
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt+vtPr+vpRv
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt
      IF f3600tpr+f3600prv<>vtPr+vpRv
           EXIT
      ENDIF
      WAIT WINDOW NOWAIT "Leyendo: "+f3600tdo+":"+f3600ser+"-"+f3600doc
      STORE f3600tdo TO ptDo
      STORE f3600ser TO psEr
      STORE f3600doc TO pdOc
      STORE f3600fem TO pfEm
      STORE f3600fve TO pfVe
      STORE f3600prv TO ppRv
      STORE f3600nom TO pnOm
      STORE f3600mon TO pmOn
      STORE f3600tot TO ptOt
      STORE f3600acu TO paCu
      SELECT tmP_excel_2
      APPEND BLANK
      REPLACE doCumen WITH ptDo+":"+psEr+"-"+pdOc
      REPLACE emIsion WITH DTOC(pfEm)
      REPLACE veNcimi WITH DTOC(pfVe)
      DO CASE
           CASE pmOn=1
                REPLACE moNeda WITH "S/."
                REPLACE toT_sol WITH ptOt
                REPLACE acU_sol WITH paCu
                REPLACE slD_sol WITH ptOt-paCu
           CASE pmOn=2
                REPLACE moNeda WITH "US$"
                REPLACE toT_usd WITH ptOt
                REPLACE acU_usd WITH paCu
                REPLACE slD_usd WITH ptOt-paCu
      ENDCASE
      SELECT peNd_cpras
      SKIP
 ENDDO
 WAIT CLEAR
 RESTORE SCREEN FROM vpAn_12
 SELECT tmP_excel_2
 SUM toT_sol TO xtO1 ALL
 SUM acU_sol TO xaC1 ALL
 SUM slD_sol TO xsL1 ALL
 SUM toT_usd TO xtO2 ALL
 SUM acU_usd TO xaC2 ALL
 SUM slD_usd TO xsL2 ALL
 APPEND BLANK
 REPLACE prOveed WITH "Saldos:"
 REPLACE toT_sol WITH xtO1
 REPLACE acU_sol WITH xaC1
 REPLACE slD_sol WITH xsL1
 REPLACE toT_usd WITH xtO2
 REPLACE acU_usd WITH xaC2
 REPLACE slD_usd WITH xsL2
 IF RECNO()<=16383
      Export to &vXLS Type XLS
      DO xlS_0000a
 ELSE
      STORE 1 TO pnUm, prEc
      STORE vxLs TO pxLs
      DO WHILE .T.
           GOTO TOP
           DO CASE
                CASE pnUm<10
                     STORE SUBSTR(pxLs, 1, AT(".XLS", pxLs)-1)+"_"+ ;
                           STR(pnUm, 1, 0)+".XLS" TO vxLs
                CASE pnUm<100
                     STORE SUBSTR(pxLs, 1, AT(".XLS", pxLs)-1)+"_"+ ;
                           STR(pnUm, 2, 0)+".XLS" TO vxLs
                CASE pnUm<1000
                     STORE SUBSTR(pxLs, 1, AT(".XLS", pxLs)-1)+"_"+ ;
                           STR(pnUm, 3, 0)+".XLS" TO vxLs
                CASE pnUm<10000
                     STORE SUBSTR(pxLs, 1, AT(".XLS", pxLs)-1)+"_"+ ;
                           STR(pnUm, 4, 0)+".XLS" TO vxLs
                OTHERWISE
                     STORE SUBSTR(pxLs, 1, AT(".XLS", pxLs)-1)+"_"+ ;
                           STR(pnUm, 5, 0)+".XLS" TO vxLs
           ENDCASE
           Export to &vXLS Type XLS for Recno() >= pREC .and. Recno() <= pREC+16382
           DO xlS_0000a
           pnUm = pnUm+1
           prEc = prEc+16383
           GOTO BOTTOM
           IF RECNO()<prEc
                EXIT
           ENDIF
      ENDDO
 ENDIF
 RELEASE ptDo, psEr, pdOc, pfEm, pfVe, ppRv, pnOm, pmOn, ptOt, paCu, pnUm,  ;
         prEc, pxLs
ENDPROC
*
PROCEDURE Clp_3602c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=ifFr-3.385 .AND. mfIl<=ifFr-1.742 .AND. mcCc>=(mcO0+ ;
           muCo)-32 .AND. mcCc<=(mcO0+muCo)-17.8 .AND. vsW2<>1
           STORE k_F2 TO mkEy
      CASE mfIl>=ifFr-3.385 .AND. mfIl<=ifFr-1.742 .AND. mcCc>=(mcO0+ ;
           muCo)-14.2 .AND. mcCc<=(mcO0+muCo) .AND. vsW2<>2
           STORE k_F2 TO mkEy
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.6
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+3.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3602c IN PCC3602C WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_3602c WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_3602c IN PCC3602C WITH "F", "v"
           DO diS_3602c IN PCC3602C WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3602c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos del Pro-"
 @ pfIl+1, 02 SAY "veedor elegido."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+00, 22 SAY ":" STYLE "BT"
 @ pfIl+01, 22 SAY ":" STYLE "BT"
 @ pfIl+02, 22 SAY ":" STYLE "BT"
 @ pfIl+03, 22 SAY ":" STYLE "BT"
 @ pfIl+04, 22 SAY ":" STYLE "BT"
 @ pfIl+05, 22 SAY ":" STYLE "BT"
 @ pfIl+06, 22 SAY ":" STYLE "BT"
 @ pfIl+07, 22 SAY ":" STYLE "BT"
 @ pfIl+08, 22 SAY ":" STYLE "BT"
 @ pfIl+09, 22 SAY ":" STYLE "BT"
 @ pfIl+10, 22 SAY ":" STYLE "BT"
 @ pfIl+11, 22 SAY ":" STYLE "BT"
 @ pfIl+12, 22 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "ESC" STYLE "BT"
 @ pfIl+01, 02 SAY "F10" STYLE "BT"
 @ pfIl+02, 02 SAY "F1" STYLE "BT"
 @ pfIl+03, 02 SAY "F2" STYLE "BT"
 @ pfIl+04, 02 SAY "F8" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+06, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "HOME" STYLE "BT"
 @ pfIl+10, 02 SAY "END" STYLE "BT"
 @ pfIl+11, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+12, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 24 SAY "Regresar a la pantalla anterior"
 @ pfIl+01, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 24 SAY "Ayuda del Programa"
 @ pfIl+03, 24 SAY "Cambiar de pestañas"
 @ pfIl+04, 24 SAY "Pasar Datos a Excel"
 @ pfIl+05, 24 SAY "Línea inferior"
 @ pfIl+06, 24 SAY "Línea superior"
 @ pfIl+07, 24 SAY "Página siguiente"
 @ pfIl+08, 24 SAY "Página anterior"
 @ pfIl+09, 24 SAY "Primera línea"
 @ pfIl+10, 24 SAY "Última línea"
 @ pfIl+11, 24 SAY "Imprime Documentos Pendientes del Proveedor"
 @ pfIl+12, 24 SAY "Ver Saldos x Tipo de Documento"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
