 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_nota
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3610b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(inOm)>UPPER(vnOm) .OR. UPPER(unOm)<UPPER(vnOm))) .OR. (vsW0=3  ;
    .AND. (ifEm>vfEm .OR. ufEm<vfEm)) .OR. (vsW0=4 .AND. (itIt>vtIt .OR.  ;
    utIt<vtIt))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=4
                SEEK vtIt
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_3610b
      DO muE_3610b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3610b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=4
                     SEEK vtIt
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3610b WITH "F", "v"
      ENDIF
      DO seE_3610b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3610tdo+f3610ser+f3610doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3610b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3610b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3610b WITH "i"
      SET NEAR OFF
      DO paN_3610b
      DO muE_3610b WITH "i", "v"
      DO seE_3610b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3610b WITH "R"
 STORE vsW1 TO csW1
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
           DO reS_3610b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3610b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3610b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_3610b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_3610b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3610b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
                SET READBORDER ON
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
                          @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
                          @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
                     CASE vsW0=2
                          @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
                     CASE vsW0=3
                          @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
                     CASE vsW0=4
                          @iFIL-4,mCO0+16.0 Get vTIT Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "!!!!"    Color ,&mColBlN
                ENDCASE
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_3610b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9 .AND. wtPo<>"5"
                SET READBORDER ON
                DO opC_3610b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_nota
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
           CASE mkEy=k_Enter .AND. f3610est="8"
                STORE "Documento se encuentra dado de baja..." TO mmSj
           CASE mkEy=k_Enter .AND. f3610est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3610est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3610est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_3610b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vsW1=1 .AND. vsW0<>1
                     DO orD_3610b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_nota
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_3610b WITH "v"
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_3610b
                IF mkEy=k_Esc .OR. mkEy=k_Tab
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT deT_nota
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pcC3610c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_nota
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO seE_3610b WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3610tdo+f3610ser+f3610doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3610b
                               OTHERWISE
                                    DO seE_3610b WITH "v"
                                    DO diS_3610b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3610b WITH "i", "v"
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3610tdo+f3610ser+f3610doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3610b
                               OTHERWISE
                                    DO seE_3610b WITH "v"
                                    DO diS_3610b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3610b WITH "u", "v"
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3610a IN PCC3610A WITH ifIl, ffIl+1
                               DO muE_3610b WITH "F", "v"
                               DO muE_3610b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3610b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3610b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3610a IN PCC3610A WITH ifIl, ffIl+1
                               DO muE_3610b WITH "F", "i"
                               DO muE_3610b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3610b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3610b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3610b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3610b
                          STORE ifIl TO vfIl
                          DO muE_3610b WITH "i", "v"
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3610b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3610b
                          STORE ifIl TO vfIl
                          DO muE_3610b WITH "i", "v"
                          DO seE_3610b WITH "v"
                          DO diS_3610b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3610b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3610b
 DO pn1_3610b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3610b
 DO pn1_3610b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3610b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3610b WITH "F", "i"
 DO muE_3610b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3610tdo+f3610ser+f3610doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3610b WITH "N"
      ENDCASE
      DO muE_3610b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3610a IN PCC3610A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3610b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say F3610TDO                       Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFIL,mCO0+004.4 Say F3610SER                       Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,mCO0+009.4 Say F3610DOC                       Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+025.5 Say F3610CLI+":"+F3610NOM          Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
 @vFIL,mCO0+052.4 Say AllTrim(F3610DIR)+","+F3610DIS Font "&mLetAri",9 Style "NQ" Size 1,52.4 Pict "@S53"
 @vFIL,mCO0+105.8 Say F3610FEM                       Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+119.5 Say F3610CM1                       Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S27"
 @vFIL,mCO0+145.5 Say F3610NVE                       Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S31"
 IF f3610tot<>0 .AND. f3610est<>"8" .AND. f3610est<>"9"
      DO CASE
           CASE f3610mon=1
                @vFIL,mCO0+175 Say "S/."                 Font "&mLetAri",9 Style "NQ" Size 1,4.8
           CASE f3610mon=2
                @vFIL,mCO0+175 Say "US$"                 Font "&mLetAri",9 Style "NQ" Size 1,4.8
           OTHERWISE
                @vFIL,mCO0+175 Say "   "                 Font "&mLetAri",9 Style "NQ" Size 1,4.8
      ENDCASE
      IF f3610tot>999999
           @vFIL,mCO0+179.8 Say F3610TOT                 Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
      ELSE
           @vFIL,mCO0+179.8 Say F3610TOT                 Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
      ENDIF
 ELSE
      @vFIL,mCO0+175.0 Say Space(10)                   Font "&mLetAri",9 Style "NQ" Size 1,4.8
      @vFIL,mCO0+179.8 Say Space(10)                   Font "&mLetAri",9 Style "NQ" Size 1,13.9
 ENDIF
 DO CASE
      CASE f3610est="1"
           @vFIL,mCO0+20.2 Say "Dig"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f3610est="2"
           @vFIL,mCO0+20.2 Say "Imp"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE f3610est="8"
           @vFIL,mCO0+20.2 Say "Baj"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
           @vFIL,mCO0+25.5 Say "* * * D E   B A J A * * *" Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
      CASE f3610est="9"
           @vFIL,mCO0+20.2 Say "Anu"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
           @vFIL,mCO0+25.5 Say "* * * A N U L A D O * * *" Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_3610b
 DO rs2_3610a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3610b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_3610a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_3610a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3610b
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_nota
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3610nom)))<>0
                          DO muE_3610a
                          DO grA_3610a
                          SELECT caB_nota
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_nota
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_3610b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_3610b
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3610b WITH "i", "v"
      DO seE_3610b WITH "v"
      DO diS_3610b WITH "R"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_3610b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_3610b WITH "v", "x"
 DO orD_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_3610b WITH "i"
 DO pa1_3610b
 IF cfIl=0
      DO muE_3610b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3610b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3610b WITH "v"
 DO diS_3610b WITH "R"
ENDPROC
*
PROCEDURE Anu_3610b
 PRIVATE ptX1, ptX2, poPc, psWf, psWi, psWc, ptDd, psRr, pdCc, pfEm, pnUm,  ;
         psR1, ppAg
 PRIVATE ptCa
 STORE "1" TO ctPo
 STORE "2" TO ctPp
 STORE 0 TO psWf, psWi, psWc
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 DO CASE
      CASE vtDo="NC"
           ptX2 = "NOTA DE CRÉDITO No.:"+vsEr+"-"+vdOc
      CASE vtDo="ND"
           ptX2 = "NOTA DE DÉBITO No.:"+vsEr+"-"+vdOc
      CASE vtDo="N1"
           ptX2 = "NC ELECTRÓNICA No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N2"
           ptX2 = "ND ELECTRÓNICA No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N3" .AND. vsEr="E0"
           ptX2 = "NC ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N3" .AND. vsEr="EB"
           ptX2 = "NC ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 2)+"0"+ ;
                  SUBSTR(vsEr, 3, 1)+"-"+vdOc
      CASE vtDo="N4" .AND. vsEr="E0"
           ptX2 = "ND ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N4" .AND. vsEr="EB"
           ptX2 = "ND ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 2)+"0"+ ;
                  SUBSTR(vsEr, 3, 1)+"-"+vdOc
 ENDCASE
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caB_nota
 STORE 99 TO mkEy
 DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 DO muE_3610a
 STORE 0 TO psWf
 STORE SUBSTR(xcM1, 1, 2) TO ptDd
 STORE SUBSTR(xcM1, 4, 3) TO psRr
 STORE SUBSTR(xcM1, 8, 7) TO pdCc
 IF SUBSTR(ptDd, 1, 1)$"FB" .AND. xtDo<>"ND" .AND. xtDo<>"N2" .AND. xtDo<>"N4"
      SELECT caB_fact
      SEEK ptDd+psRr+pdCc
      IF EOF()
           STORE "Documento de Venta de Referencia NO EXISTE O MAL DIGITADO..."  ;
                 TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ptDd+psRr+pdCc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE 1 TO psWf
 ENDIF
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      STORE f3611ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 IF xtDo<>"ND" .AND. xtDo<>"N2" .AND. xtDo<>"N4"
      SELECT caB_ingr
      STORE 00 TO vsWi
      STORE 99 TO mkEy
      DO orD_0000a WITH "2700", "A", "F2700CM1", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE xtDo="N1"
                SEEK "NC:"+SUBSTR(xsEr, 1, 1)+"0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc
           CASE xtDo="N3" .AND. xsEr="EB"
                SEEK "NC:EB0"+SUBSTR(xsEr, 3, 1)+"-"+xdOc
           CASE xtDo="N3"
                SEEK "NC:E0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc
           OTHERWISE
                SEEK xtDo+":"+xsEr+"-"+xdOc
      ENDCASE
      STORE 99 TO mkEy
      DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF  .NOT. EOF() .AND. f2700est<>"9"
           STORE 1 TO vsWi
           STORE f2700tdo TO ctDo
           STORE f2700ser TO csEr
           STORE f2700doc TO cdOc
           STORE f2700fem TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO caNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO cdIa
           SEEK ctDo+csEr+cdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ctDo+csEr+cdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT deT_ingr
           SEEK ctDo+csEr+cdOc
           DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=ctDo+ ;
              csEr+cdOc
                STORE f2701ite TO vrEc
                STORE f2701cod TO vcOd
                SEEK ctDo+csEr+cdOc+STR(vrEc, 4, 0)
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ctDo+csEr+cdOc+STR(vrEc, 4, 0)
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          = INKEY(0.01)
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT deT_ingr
                     SKIP
                     LOOP
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2118cod WITH vcOd
                     REPLACE f2118sto WITH 0
                     REPLACE f2118caj WITH 0
                     REPLACE f2118cpe WITH 0
                     REPLACE f2118cjp WITH 0
                     REPLACE f2118sts WITH 0
                     REPLACE f2118orp WITH 0
                     REPLACE f2118vcp WITH 0
                     REPLACE f2118vcs WITH 0
                     REPLACE f2118prm WITH 0
                     UNLOCK
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT deT_ingr
                SKIP
           ENDDO
      ENDIF
      IF vsWi=1
           SELECT caB_ing_caja
           STORE 99 TO mkEy
           DO orD_0000a WITH "3510", "C", "F3510GLO", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE xtDo="N1"
                     SEEK "NC:"+SUBSTR(xsEr, 1, 1)+"0"+SUBSTR(xsEr, 2, 2)+ ;
                          "-"+xdOc+" / "+ptDd+":"+psRr+"-"+pdCc
                CASE xtDo="N3" .AND. xsEr="E0"
                     SEEK "NC:E0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc+" / "+ptDd+ ;
                          ":"+psRr+"-"+pdCc
                CASE xtDo="N3" .AND. xsEr="EB"
                     SEEK "NC:EB0"+SUBSTR(xsEr, 3, 1)+"-"+xdOc+" / "+ptDd+ ;
                          ":"+psRr+"-"+pdCc
                OTHERWISE
                     SEEK xtDo+":"+xsEr+"-"+xdOc+" / "+ptDd+":"+psRr+"-"+pdCc
           ENDCASE
           STORE 0 TO psWc
           STORE 99 TO mkEy
           DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF  .NOT. EOF() .AND. f3510est<>"9"
                STORE "A01" TO psR1
                STORE 01 TO psWc
                STORE f3510num TO pnUm
                SEEK caNo+cmEs+psR1+pnUm
                IF  .NOT. RLOCK()
                     DO reG_lock WITH caNo+cmEs+psR1+pnUm
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          = INKEY(0.01)
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                STORE f3510tca TO ptCa
                SELECT deT_ing_caja
                SEEK caNo+cmEs+psR1+pnUm
                DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+f3511ser+ ;
                   f3511num=caNo+cmEs+psR1+pnUm
                     STORE f3511tdo TO ptDd
                     STORE f3511sr1 TO psRr
                     STORE f3511doc TO pdCc
                     SEEK caNo+cmEs+psR1+pnUm+ptDd+psRr+pdCc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH caNo+cmEs+psR1+pnUm+ptDd+psRr+pdCc
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     SELECT peNd_vtas
                     SEEK ptDd+psRr+pdCc
                     IF  .NOT. EOF()
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ptDd+psRr+pdCc
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                     ENDIF
                     SELECT deT_ing_caja
                     SKIP
                ENDDO
           ENDIF
      ENDIF
 ENDIF
 IF psWc=1
      SELECT caB_ing_caja
      REPLACE f3510ano WITH SPACE(04)
      REPLACE f3510mes WITH SPACE(02)
      REPLACE f3510ser WITH SPACE(03)
      REPLACE f3510num WITH SPACE(07)
      DELETE
      UNLOCK
      DO WHILE .T.
           SELECT deT_ing_caja
           SEEK caNo+cmEs+psR1+pnUm
           IF EOF()
                EXIT
           ENDIF
           STORE f3511tdo TO ptDd
           STORE f3511sr1 TO psRr
           STORE f3511doc TO pdCc
           STORE f3511pag TO ppAg
           REPLACE f3511ano WITH SPACE(04)
           REPLACE f3511mes WITH SPACE(02)
           REPLACE f3511ser WITH SPACE(03)
           REPLACE f3511num WITH SPACE(07)
           DELETE
           UNLOCK
           SELECT peNd_vtas
           SEEK ptDd+psRr+pdCc
           IF  .NOT. EOF()
                DO CASE
                     CASE f3500mon=xmOn
                          REPLACE f3500acu WITH f3500acu-ppAg
                     CASE xmOn=1
                          REPLACE f3500acu WITH f3500acu-ROUND(ppAg/ptCa, 2)
                     OTHERWISE
                          REPLACE f3500acu WITH f3500acu-ROUND(ppAg*ptCa, 2)
                ENDCASE
                IF f3500tot+f3500int-f3500acu=0
                     REPLACE f3500fca WITH CTOD(cdIa+"/"+cmEs+"/"+caNo)
                     IF f3500tdo="NC" .OR. f3500tdo="ND" .OR. f3500tdo= ;
                        "N1" .OR. f3500tdo="N2" .OR. f3500tdo="N3" .OR.  ;
                        f3500tdo="N4" .OR. f3500tdo="LE" .OR. f3500can= ;
                        "2" .OR. mgRa=1
                          REPLACE f3500est WITH "@"
                     ELSE
                          REPLACE f3500est WITH SPACE(01)
                     ENDIF
                ELSE
                     REPLACE f3500fca WITH CTOD("  /  /    ")
                     REPLACE f3500est WITH SPACE(01)
                ENDIF
                UNLOCK
           ENDIF
           SELECT ctAs_tot_vtas
           SEEK ptDd+psRr
           IF  .NOT. EOF()
                IF xmOn=1
                     REPLACE f3502ac1 WITH f3502ac1-ppAg
                ELSE
                     REPLACE f3502ac2 WITH f3502ac2-ppAg
                ENDIF
           ENDIF
      ENDDO
 ENDIF
 IF vsWi=1
      SELECT caB_ingr
      REPLACE f2700tdo WITH SPACE(02)
      REPLACE f2700ser WITH SPACE(03)
      REPLACE f2700doc WITH SPACE(07)
      DELETE
      UNLOCK
      DO WHILE .T.
           SELECT deT_ingr
           SEEK ctDo+csEr+cdOc
           IF EOF()
                EXIT
           ENDIF
           STORE f2701cod TO vcOd
           REPLACE f2701tdo WITH SPACE(02)
           REPLACE f2701ser WITH SPACE(03)
           REPLACE f2701doc WITH SPACE(07)
           DELETE
           UNLOCK
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPp+ctPo+ctDo+csEr+cdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPp+ctPo+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 0 TO vsLd, vsLc
           ELSE
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPp+ctPo+ctDo+csEr+cdOc
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDDO
 ENDIF
 DO WHILE .T.
      SELECT deT_nota
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f3611tdo WITH SPACE(02)
      REPLACE f3611ser WITH SPACE(03)
      REPLACE f3611doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      REPLACE f3500tdo WITH SPACE(02)
      REPLACE f3500ser WITH SPACE(03)
      REPLACE f3500doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDIF
 SELECT caB_nota
 REPLACE f3610est WITH "9"
 REPLACE f3610usu WITH muSu
 REPLACE f3610dat WITH DATE()
 REPLACE f3610tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3610est WITH "9"
      REPLACE f3610usu WITH muSu
      REPLACE f3610dat WITH DATE()
      REPLACE f3610tim WITH TIME()
 ENDIF
 IF psWf=1
      SELECT caB_fact
      REPLACE f1300cm2 WITH " "
      UNLOCK
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_nota
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3610b WITH "v"
 DO diS_3610b WITH "R"
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Eli_3610b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 DO CASE
      CASE vtDo="NC"
           ptX2 = "NOTA DE CRÉDITO No.:"+vsEr+"-"+vdOc
      CASE vtDo="ND"
           ptX2 = "NOTA DE DÉBITO No.:"+vsEr+"-"+vdOc
      CASE vtDo="N1"
           ptX2 = "NC ELECTRÓNICA No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N2"
           ptX2 = "ND ELECTRÓNICA No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N3" .AND. vsEr="E0"
           ptX2 = "NC ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N3" .AND. vsEr="EB"
           ptX2 = "NC ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 2)+"0"+ ;
                  SUBSTR(vsEr, 3, 1)+"-"+vdOc
      CASE vtDo="N4" .AND. vsEr="E0"
           ptX2 = "ND ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 1)+"0"+ ;
                  SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="N4" .AND. vsEr="EB"
           ptX2 = "ND ELECTRÓNICA SOL No.:"+SUBSTR(vsEr, 1, 2)+"0"+ ;
                  SUBSTR(vsEr, 3, 1)+"-"+vdOc
 ENDCASE
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT caB_nota
 STORE 99 TO mkEy
 DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      IF vsW1=1 .AND. vsW0<>1
           DO orD_3610b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caB_nota
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_3610b WITH "v"
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f3610tdo WITH SPACE(02)
 REPLACE f3610ser WITH SPACE(03)
 REPLACE f3610doc WITH SPACE(07)
 DELETE
 SELECT teMporal
 DELETE
 PACK
 UNLOCK
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_nota
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_3610b WITH "i"
 SET NEAR OFF
 DO paN_3610b
 STORE ifIl TO vfIl
 DO muE_3610b WITH "i", "v"
 DO seE_3610b WITH "v"
 DO diS_3610b WITH "R"
 STORE k_Tab TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Ord_3610b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3610", "C", "F3610NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3610", "C", "F3610FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3610", "C", "F3610TIT", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3610DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3610NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3610FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3610TIT", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_3610b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                CASE vsW0=4
                     SEEK vtIt+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK itDo+isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
                CASE vsW0=4
                     SEEK itIt+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK utDo+usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
                CASE vsW0=4
                     SEEK utIt+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3610b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
           STORE itIt TO vtIt
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
           STORE utIt TO vtIt
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
           STORE xtIt TO vtIt
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
           STORE ctIt TO vtIt
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
           STORE vtIt TO itIt
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
           STORE vtIt TO xtIt
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
           STORE vtIt TO ctIt
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3610tdo TO vtDo
           STORE f3610ser TO vsEr
           STORE f3610doc TO vdOc
           STORE f3610nom TO vnOm
           STORE f3610fem TO vfEm
           STORE f3610tit TO vtIt
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3610tdo TO itDo
           STORE f3610ser TO isEr
           STORE f3610doc TO idOc
           STORE f3610nom TO inOm
           STORE f3610fem TO ifEm
           STORE f3610tit TO itIt
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3610tdo TO utDo
           STORE f3610ser TO usEr
           STORE f3610doc TO udOc
           STORE f3610nom TO unOm
           STORE f3610fem TO ufEm
           STORE f3610tit TO utIt
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3610b
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3610b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3610b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3610b WITH "F", "v"
           DO diS_3610b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3610b
 SET READBORDER ON
 DO reS_3610a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3610b WITH "R"
 DO CASE
      CASE wtPo="1"
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
      CASE wtPo="2"
           DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
      CASE wtPo="3"
           DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Hl1_3610b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+02, 02 SAY "la información."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+12, 23 SAY ":" STYLE "BT"
 @ pfIl+13, 23 SAY ":" STYLE "BT"
 @ pfIl+14, 23 SAY ":" STYLE "BT"
 @ pfIl+15, 23 SAY ":" STYLE "BT"
 @ pfIl+16, 23 SAY ":" STYLE "BT"
 @ pfIl+17, 23 SAY ":" STYLE "BT"
 @ pfIl+18, 23 SAY ":" STYLE "BT"
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F6" STYLE "BT"
 @ pfIl+10, 04 SAY "F9" STYLE "BT"
 @ pfIl+12, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+13, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+14, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+15, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+16, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+17, 04 SAY "HOME" STYLE "BT"
 @ pfIl+18, 04 SAY "END" STYLE "BT"
 DO CASE
      CASE wtPo$"23"
           @ pfIl+19, 23 SAY ":" STYLE "BT"
           @ pfIl+19, 04 SAY "CTRL DEL" STYLE "BT"
 ENDCASE
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 25 SAY "Buscar palabra o frase dentro del nombre del"
 @ pfIl+11, 25 SAY "Cliente"
 @ pfIl+12, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+13, 25 SAY "Línea inferior"
 @ pfIl+14, 25 SAY "Línea superior"
 @ pfIl+15, 25 SAY "Página siguiente"
 @ pfIl+16, 25 SAY "Página anterior"
 @ pfIl+17, 25 SAY "Primera línea"
 @ pfIl+18, 25 SAY "Última línea"
 DO CASE
      CASE wtPo="2"
           @ pfIl+19, 25 SAY "Anulación del Documento"
      CASE wtPo="3"
           @ pfIl+19, 25 SAY "Eliminación del Documento"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3610b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes,  saldrá un mensaje,  en caso de encontrase se regresará"
 @ pfIl+03, 02 SAY "al Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
