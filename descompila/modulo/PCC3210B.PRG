 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3210b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
      DO tiT_3210a
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (isEr+idOc>vsEr+vdOc .OR.  ;
    usEr+udOc<vsEr+vdOc)) .OR. (vsW0=3 .AND. (ifEm>vfEm .OR. ufEm<vfEm))  ;
    .OR. (vsW0=4 .AND. (ifVe>vfVe .OR. ufVe<vfVe)) .OR. (vsW0=2 .AND.  ;
    (UPPER(inOm)+isEr+idOc>UPPER(vnOm)+vsEr+vdOc .OR. UPPER(unOm)+usEr+ ;
    udOc<UPPER(vnOm)+vsEr+vdOc)) .OR. (vsW0=5 .AND. (UPPER(ALLTRIM(ilE1))+ ;
    "*"+isEr+idOc>UPPER(ALLTRIM(vlE1))+"*"+vsEr+vdOc .OR.  ;
    UPPER(ALLTRIM(ulE1))+"*"+usEr+udOc<UPPER(ALLTRIM(vlE1))+"*"+vsEr+ ;
    vdOc)) .OR. (vsW0=6 .AND. (UPPER(ALLTRIM(irEf))+"*"+isEr+idOc> ;
    UPPER(ALLTRIM(vrEf))+"*"+vsEr+vdOc .OR. UPPER(ALLTRIM(urEf))+"*"+usEr+ ;
    udOc<UPPER(ALLTRIM(vrEf))+"*"+vsEr+vdOc)) .OR. (vsW0=7 .AND.  ;
    (UPPER(ALLTRIM(icOm))+"*"+isEr+idOc>UPPER(ALLTRIM(vcOm))+"*"+vsEr+ ;
    vdOc .OR. UPPER(ALLTRIM(ucOm))+"*"+usEr+udOc<UPPER(ALLTRIM(vcOm))+"*"+ ;
    vsEr+vdOc))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=4
                SEEK SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe), 4, 2)+ ;
                     SUBSTR(DTOC(vfVe), 1, 2)
           CASE vsW0=5
                SEEK ALLTRIM(UPPER(vlE1))
           CASE vsW0=6
                SEEK ALLTRIM(UPPER(vrEf))
           CASE vsW0=7
                SEEK ALLTRIM(UPPER(vcOm))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      DO paN_3210b
      STORE ifIl TO vfIl
      DO muE_3210b WITH "i", "v"
 ELSE
      DO seE_3210b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=4
                     SEEK SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe), 4,  ;
                          2)+SUBSTR(DTOC(vfVe), 1, 2)
                CASE vsW0=5
                     SEEK ALLTRIM(UPPER(vlE1))+"*"
                CASE vsW0=6
                     SEEK ALLTRIM(UPPER(vrEf))+"*"
                CASE vsW0=7
                     SEEK ALLTRIM(UPPER(vcOm))+"*"
           ENDCASE
           SET NEAR OFF
           IF EOF()
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           DO muE_3210b WITH "F", "v"
      ENDIF
      DO seE_3210b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3210ser+f3210let=vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_3210b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_3210b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3210b WITH "i"
      SET NEAR OFF
      DO paN_3210b
      STORE ifIl TO vfIl
      DO muE_3210b WITH "i", "v"
      DO seE_3210b WITH "v"
 ENDIF
 DO diS_3210b WITH "R"
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
           DO reS_3210b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3210b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3210b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3210b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3210b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                IF vsW4=2
                     STORE 1 TO vsW4
                ELSE
                     STORE vsW4+1 TO vsW4
                ENDIF
                DO caM_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                IF vsW0=7
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                SET READBORDER ON
                DO p01_3210a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. f3210est="9" .AND. wtPo="1"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_F8 .AND. f3210est="3" .AND. wtPo="1"
                STORE "Documento se encuentra Procesado..." TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="1"
                DO prO_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p .AND. wtPo="1"
                DO q1_0000a
                DO imP_3210b
                DO p1_0000a
                = INKEY(0.01)
                DO CASE
                     CASE vsW1=1
                          SELECT leTras
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_3210b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .AND. f3210est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3210est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3210est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_3210b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_3210b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT leTras
                STORE 99 TO mkEy
                DO orD_0000a WITH "3210", "C", "F3210LET", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vsEr+vdOc
                SAVE SCREEN TO vpAn_11
                DO pcC3210c
                RESTORE SCREEN FROM vpAn_11
                DO esT_3210b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3210ser+f3210let=isEr+idOc .AND. vsEr+vdOc=isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vdOc=isEr+idOc
                                    DO paN_3210b
                               OTHERWISE
                                    DO seE_3210b WITH "v"
                                    DO diS_3210b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3210b WITH "i", "v"
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3210ser+f3210let=usEr+udOc .AND. vsEr+vdOc=usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vdOc=usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3210b
                               OTHERWISE
                                    DO seE_3210b WITH "v"
                                    DO diS_3210b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3210b WITH "u", "v"
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "N"
                          SKIP
                          IF vsEr+vdOc=usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3210a WITH ifIl, ffIl+1
                               DO muE_3210b WITH "F", "v"
                               DO muE_3210b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3210b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3210b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "N"
                          SKIP -1
                          IF vsEr+vdOc=isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3210a WITH ifIl, ffIl+1
                               DO muE_3210b WITH "F", "v"
                               DO muE_3210b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3210b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3210b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3210b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3210b
                          STORE ifIl TO vfIl
                          DO muE_3210b WITH "i", "v"
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3210b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3210b
                          STORE ifIl TO vfIl
                          DO muE_3210b WITH "i", "v"
                          DO seE_3210b WITH "v"
                          DO diS_3210b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3210b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3210b
 DO pn1_3210b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3210b
 DO pn1_3210b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3210b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3210b WITH "F", "i"
 DO muE_3210b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3210ser+f3210let=xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3210b WITH "N"
      ENDCASE
      DO muE_3210b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3210a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3210b
 PARAMETER ptIp
 PRIVATE pdIa, pmEs, paNo, pnUm, psEr
 PRIVATE plEt, peSt, peS1, psIg, prEn, pnOm
 STORE SUBSTR(DTOC(f3210fve+mdIa), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(f3210fve+mdIa), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(f3210fve+mdIa), 7, 4) TO paNo
 STORE f3210ser TO psEr
 STORE f3210let TO plEt
 STORE f3210est TO peSt, peS1
 STORE 00 TO pnUm
 DO CASE
      CASE f3210mon=1
           STORE "S/." TO psIg
      CASE f3210mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE f3210ren=0
           STORE "  " TO prEn
      OTHERWISE
           STORE "Si" TO prEn
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE f3210nom TO pnOm
 DO CASE
      CASE pdIa+pmEs="2907"
           STORE 02 TO pnUm
      CASE pdIa+pmEs="0101" .OR. pdIa+pmEs="0105" .OR. pdIa+pmEs="2906"  ;
           .OR. pdIa+pmEs="2807" .OR. pdIa+pmEs="0810" .OR. pdIa+pmEs="2512"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="11" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Lunes"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="12" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Lunes"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="10" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Martes"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="11" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Martes"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="09" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Miércoles"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="10" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Miércoles"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="08" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Jueves"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="09" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Jueves"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="07" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Viernes"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="08" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Viernes"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="06" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Sábado"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="07" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Sábado"
           STORE 02 TO pnUm
      CASE pmEs="04" .AND. pdIa="05" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Domingo"
           STORE 01 TO pnUm
      CASE pmEs="04" .AND. pdIa="06" .AND. CDOW(CTOD("01/"+pmEs+"/"+ ;
           paNo))="Domingo"
           STORE 02 TO pnUm
 ENDCASE
 DO CASE
      CASE pnUm=0 .AND. CDOW(f3210fve+mdIa)="Sábado"
           STORE 1 TO pnUm
      CASE pnUm=0 .AND. CDOW(f3210fve+mdIa)="Domingo"
           STORE 2 TO pnUm
      CASE CDOW(f3210fve+mdIa-pnUm)="Sábado"
           STORE pnUm+1 TO pnUm
      CASE CDOW(f3210fve+mdIa-pnUm)="Domingo"
           STORE pnUm+2 TO pnUm
 ENDCASE
 DO CASE
      CASE peS1="1"
           STORE "Dig" TO peSt
      CASE peS1="2"
           STORE "Imp" TO peSt
      CASE peS1="3"
           STORE "Pro" TO peSt
      CASE peS1="4"
           STORE "Can" TO peSt
      CASE peS1="5"
           STORE "Dev" TO peSt
      CASE peS1="9"
           STORE "Anu" TO peSt
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+00.0 Say F3210SER+"-"+F3210LET Font "&mLetAri",9 Style "NQ" Size 1,14.7
 @vFIL,mCO0+15.4 Say pEST                  Font "&mLetAri",9 Style "NQ" Size 1,04.2
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,36.8 Pict "@S39"
                     @vFIL,mCO0+57.5 Say F3210FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+70.7 Say F3210DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDCASE
           @vFIL,mCO0+075.5 Say F3210FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           DO CASE
                CASE vsW0=5
                     @vFIL,mCO0+088.7 Say F3210LE1                   Font "&mLetAri",9 Style "NQ" Size 1,25.8 Pict "@S29"
                CASE vsW0=6 .OR. vsW0=7
                     @vFIL,mCO0+088.7 Say F3210COM                   Font "&mLetAri",9 Style "NQ" Size 1,25.8 Pict "@S29"
                OTHERWISE
                     @vFIL,mCO0+088.7 Say F3210FVE+mDIA              Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+102.0 Say F3210FVE+mDIA-pNUM         Font "&mLetAri",9 Style "NQ" Size 1,12.6
           ENDCASE
           @vFIL,mCO0+115.2 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+117.8 Say " "+AllTrim(Str(F3210NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+120.5 Say F3210NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+150.8 Say F3210REF                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+180.9 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+185.8 Say F3210TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      CASE mrEs="4"
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,36.8 Pict "@S39"
                     @vFIL,mCO0+57.5 Say F3210FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+70.7 Say F3210DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDCASE
           @vFIL,mCO0+075.5 Say F3210FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+088.7 Say F3210FVE+mDIA                      Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+102.0 Say F3210FVE+mDIA-pNUM                 Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+115.2 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+117.8 Say " "+AllTrim(Str(F3210NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+120.5 Say F3210NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+150.8 Say F3210REF                           Font "&mLetAri",9 Style "NQ" Size 1,40.6 Pict "@S43"
           @vFIL,mCO0+191.9 Say F3210COM                           Font "&mLetAri",9 Style "NQ" Size 1,20.6 Pict "@S15"
           @vFIL,mCO0+213.1 Say F3210LE1                           Font "&mLetAri",9 Style "NQ" Size 1,19.2 Pict "@S15"
           @vFIL,mCO0+232.9 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+237.7 Say F3210TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      OTHERWISE
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.3 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,43.4 Pict "@S47"
                     @vFIL,mCO0+64.3 Say F3210FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+77.4 Say F3210DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.3 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,61.3 Pict "@S63"
           ENDCASE
           @vFIL,mCO0+082.2 Say F3210FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+095.4 Say F3210FVE+mDIA                      Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+108.7 Say F3210FVE+mDIA-pNUM                 Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+121.8 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+124.5 Say " "+AllTrim(Str(F3210NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+127.2 Say F3210NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+157.6 Say F3210REF                           Font "&mLetAri",9 Style "NQ" Size 1,50.7 Pict "@S53"
           @vFIL,mCO0+208.9 Say F3210COM                           Font "&mLetAri",9 Style "NQ" Size 1,20.6 Pict "@S15"
           @vFIL,mCO0+230.1 Say F3210LE1                           Font "&mLetAri",9 Style "NQ" Size 1,19.3 Pict "@S15"
           @vFIL,mCO0+250.0 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+254.9 Say F3210TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_3210b
 DO rs2_3210a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3210b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_3210a
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
                DO reS_3210b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_3210a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3210b
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
                SELECT leTras
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3210nom)))<>0
                          DO muE_3210a
                          DO grA_3210a
                          SELECT leTras
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
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="4"
                @iFIL+1.8,mCO0+71.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           OTHERWISE
                @iFIL+1.8,mCO0+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      ENDCASE
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
                SELECT leTras
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_3210b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_3210b
      DO muE_3210b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_3210b
 DO tiT_3210a
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_3210b WITH "v", "x"
 DO orD_3210b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_3210b WITH "i"
 DO pa1_3210b
 IF cfIl=0
      DO muE_3210b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3210b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3210b WITH "v"
 DO diS_3210b WITH "R"
ENDPROC
*
PROCEDURE Est_3210b
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3210b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3210b WITH "v"
 IF EOF() .OR. BOF()
      SET NEAR ON
      DO seE_3210b WITH "v"
      SET NEAR OFF
      IF EOF() .OR. BOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3210b WITH "i"
           SET NEAR OFF
      ENDIF
      DO muE_3210b WITH "F", "x"
      GOTO TOP
      SET NEAR ON
      DO seE_3210b WITH "i"
      SET NEAR OFF
      STORE 00 TO cfIl
      DO pa1_3210b
      IF cfIl=0
           DO muE_3210b WITH "i", "v"
           STORE ifIl TO vfIl
      ELSE
           DO muE_3210b WITH "x", "v"
           STORE cfIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3210b WITH "v"
 IF  .NOT. EOF() .AND.  .NOT. BOF()
      DO diS_3210b WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Pro_3210b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea Procesar este Documento?"
 ptX2 = "LETRA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 DO muE_3210a
 SELECT prOveedores
 SEEK xpRv
 STORE f2101tip TO xtPr
 SELECT tiPos
 SEEK xtPr
 STORE f9210nti TO xnTp
 SELECT leTras
 STORE 99 TO mkEy
 DO orD_0000a WITH "3210", "C", "F3210LET", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f3210est WITH "3"
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3210est WITH "3"
 ENDIF
 SELECT peNd_vtas
 SEEK "LE"+vsEr+vdOc
 IF EOF()
      DO nuEvo_rg
      REPLACE f3600tdo WITH "LP"
      REPLACE f3600ser WITH vsEr
      REPLACE f3600doc WITH vdOc
      REPLACE f3600td1 WITH "LP"
      REPLACE f3600sr1 WITH vsEr
      REPLACE f3600do1 WITH vdOc
      REPLACE f3600ruc WITH xrUc
      REPLACE f3600prv WITH xpRv
      REPLACE f3600suc WITH xsUc
      REPLACE f3600nom WITH xnOm
      REPLACE f3600tpr WITH xtPr
      REPLACE f3600ntp WITH xnTp
      REPLACE f3600nfp WITH SPACE(02)
      REPLACE f3600fem WITH xfEm
      REPLACE f3600fve WITH xfVe
      REPLACE f3600mon WITH xmOn
      REPLACE f3600pig WITH xpIg
      REPLACE f3600tot WITH xtOt
      REPLACE f3600acu WITH 0.00
      UNLOCK ALL
 ENDIF
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Anu_3210b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 SELECT deT_ing_caja
 SEEK "LE"+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Caja..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 SEEK "LE"+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Bancos..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "LETRA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT leTras
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "3210", "C", "F3210LET", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SEEK vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT peNd_vtas
 SEEK "LE"+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH "LE"+vsEr+vdOc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT peNd_vtas
 SEEK "LE"+vsEr+vdOc
 IF  .NOT. EOF()
      REPLACE f3600tdo WITH SPACE(02)
      REPLACE f3600ser WITH SPACE(03)
      REPLACE f3600doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDIF
 SELECT leTras
 REPLACE f3210est WITH "9"
 REPLACE f3210usu WITH muSu
 REPLACE f3210dat WITH DATE()
 REPLACE f3210tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3210est WITH "9"
      REPLACE f3210usu WITH muSu
      REPLACE f3210dat WITH DATE()
      REPLACE f3210tim WITH TIME()
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Eli_3210b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 ptX2 = "LETRA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT leTras
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "3210", "C", "F3210LET", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SEEK vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f3210ser WITH SPACE(03)
 REPLACE f3210let WITH SPACE(07)
 DELETE
 SELECT teMporal
 DELETE
 PACK
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3210b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_3210b WITH "i"
 SET NEAR OFF
 DO paN_3210b
 STORE ifIl TO vfIl
 DO muE_3210b WITH "i", "v"
 DO seE_3210b WITH "v"
 DO diS_3210b WITH "R"
 STORE k_Tab TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Imp_3210b
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
 DO reP_3210b
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3210b
 PRIVATE ptAm
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 137 TO ptAm
           STORE mpKv TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 134 TO ptAm
           STORE mpKv TO mcLn
      CASE mvIs=1
           STORE 127 TO ptAm
           STORE 01 TO mcLn
 ENDCASE
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3210b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN      Say F3210SER+"-"+F3210LET Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+15.5 Say F3210FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+28.7 Say F3210FVE              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+41.8 Say F3210DIA              Font "&mLetAri",9 Style "NQ" Size 1,5 Pict "9999"
                     DO CASE
                          CASE f3210tip=1
                               @vLIN,mCLN+47.4 Say "D"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=2
                               @vLIN,mCLN+47.4 Say "C"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=3
                               @vLIN,mCLN+47.4 Say "N"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                     ENDCASE
                     DO CASE
                          CASE f3210ren=1
                               @vLIN,mCLN+49.8 Say "No"          Font "&mLetAri",9 Style "NQ" Size 1,3
                          CASE f3210ren=2
                               @vLIN,mCLN+49.8 Say F3210NRE      Font "&mLetAri",9 Style "NQ" Size 1,3 Pict "99"
                     ENDCASE
                     @vLIN,mCLN+053.4 Say F3210NBA             Font "&mLetAri",9 Style "NQ" Size 1,21.3 Pict "@S24"
                     @vLIN,mCLN+075.4 Say F3210LE1             Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S23"
                     @vLIN,mCLN+096.4 Say F3210REF             Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
                     @vLIN,mCLN+126.4 Say F3210COM             Font "&mLetAri",9 Style "NQ" Size 1,19.3 Pict "@S22"
                     @vLIN,mCLN+146.4 Say F3210NOM             Font "&mLetAri",9 Style "NQ" Size 1,36.3 Pict "@S39"
                     DO CASE
                          CASE f3210mon=1
                               @vLIN,mCLN+183.4 Say "S/."        Font "&mLetAri",9 Style "NQ" Size 1,05
                          CASE f3210mon=2
                               @vLIN,mCLN+183.4 Say "US$"        Font "&mLetAri",9 Style "NQ" Size 1,05
                     ENDCASE
                     @vLIN,mCLN+189.1 Say F3210TOT             Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN      Say F3210SER+"-"+F3210LET Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+15.5 Say F3210FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+28.7 Say F3210FVE              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+46.0 Say F3210DIA              Font "&mLetAri",9 Style "NQ" Size 1,5 Pict "9999"
                     DO CASE
                          CASE f3210tip=1
                               @vLIN,mCLN+48.4 Say "D"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=2
                               @vLIN,mCLN+48.4 Say "C"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=3
                               @vLIN,mCLN+48.4 Say "N"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                     ENDCASE
                     DO CASE
                          CASE f3210ren=1
                               @vLIN,mCLN+50.8 Say "No"          Font "&mLetAri",9 Style "NQ" Size 1,3
                          CASE f3210ren=2
                               @vLIN,mCLN+50.8 Say F3210NRE      Font "&mLetAri",9 Style "NQ" Size 1,3 Pict "99"
                     ENDCASE
                     @vLIN,mCLN+054.4 Say F3210NBA             Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S24"
                     @vLIN,mCLN+075.4 Say F3210LE1             Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S23"
                     @vLIN,mCLN+096.4 Say F3210REF             Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
                     @vLIN,mCLN+126.4 Say F3210COM             Font "&mLetAri",9 Style "NQ" Size 1,19.3 Pict "@S22"
                     @vLIN,mCLN+146.4 Say F3210NOM             Font "&mLetAri",9 Style "NQ" Size 1,36.3 Pict "@S39"
                     DO CASE
                          CASE f3210mon=1
                               @vLIN,mCLN+189.7 Say "S/."        Font "&mLetAri",9 Style "NQ" Size 1,07
                          CASE f3210mon=2
                               @vLIN,mCLN+189.7 Say "US$"        Font "&mLetAri",9 Style "NQ" Size 1,07
                     ENDCASE
                     @vLIN,mCLN+206.5 Say F3210TOT             Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN      Say F3210SER+"-"+F3210LET Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+15.5 Say F3210FEM              Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+28.7 Say F3210FVE              Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+46.0 Say F3210DIA              Font "&mLetSwi",9 Style "NQ" Size 1,5 Pict "9999"
                     DO CASE
                          CASE f3210tip=1
                               @vLIN,mCLN+48.4 Say "D"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=2
                               @vLIN,mCLN+48.4 Say "C"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                          CASE f3210tip=3
                               @vLIN,mCLN+48.4 Say "N"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                     ENDCASE
                     DO CASE
                          CASE f3210ren=1
                               @vLIN,mCLN+50.8 Say "No"          Font "&mLetSwi",9 Style "NQ" Size 1,3
                          CASE f3210ren=2
                               @vLIN,mCLN+50.8 Say F3210NRE      Font "&mLetSwi",9 Style "NQ" Size 1,3 Pict "99"
                     ENDCASE
                     @vLIN,mCLN+054.4 Say F3210NBA             Font "&mLetSwi",9 Style "NQ" Size 1,20.3 Pict "@S24"
                     @vLIN,mCLN+075.4 Say F3210LE1             Font "&mLetSwi",9 Style "NQ" Size 1,20.3 Pict "@S23"
                     @vLIN,mCLN+096.4 Say F3210REF             Font "&mLetSwi",9 Style "NQ" Size 1,29.3 Pict "@S32"
                     @vLIN,mCLN+126.4 Say F3210COM             Font "&mLetSwi",9 Style "NQ" Size 1,19.3 Pict "@S22"
                     @vLIN,mCLN+146.4 Say F3210NOM             Font "&mLetSwi",9 Style "NQ" Size 1,36.3 Pict "@S39"
                     DO CASE
                          CASE f3210mon=1
                               @vLIN,mCLN+189.7 Say "S/."        Font "&mLetSwi",9 Style "NQ" Size 1,07
                          CASE f3210mon=2
                               @vLIN,mCLN+189.7 Say "US$"        Font "&mLetSwi",9 Style "NQ" Size 1,07
                     ENDCASE
                     @vLIN,mCLN+206.5 Say F3210TOT             Font "&mLetSwi",9 Style "NQ" Size 1,14 Pict "999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3210b
 PARAMETER ptAm
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
      @vLIN,mCLN Say "Letras" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Numeración de Letras"       Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden de Nombre de Proveedores"         Font "&mLetAri",10 Style "NQ"
           CASE vsW0=3
                @vLIN,mCLN Say "Orden de Fecha de Emisión de Letras" Font "&mLetAri",10 Style "NQ"
           CASE vsW0=4
                @vLIN,mCLN Say "Orden de Fecha de Vcto.de Letras"    Font "&mLetAri",10 Style "NQ"
           CASE vsW0=5
                @vLIN,mCLN Say "Orden de Número Único de Letras"     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=6
                @vLIN,mCLN Say "Orden de Referencia de Letras"       Font "&mLetAri",10 Style "NQ"
           CASE vsW0=7
                @vLIN,mCLN Say "Orden de Comentario de Letras"       Font "&mLetAri",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Número"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+017.0 Say "Emisión"             Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+030.2 Say "Vencim"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+041.8 Say "Días"                Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+047.6 Say "T"                   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+049.8 Say "Rn"                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+053.4 Say "Banco"               Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+075.4 Say "Número Único"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.4 Say "Referencia"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+126.4 Say "Comentario"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+146.4 Say "Razón Social"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+196.4 Say "Monto"               Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Número"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+017.0 Say "Emisión"             Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+030.2 Say "Vencim"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+041.9 Say "Días"                Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+048.6 Say "T"                   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+050.8 Say "Rn"                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+054.4 Say "Banco"               Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+075.4 Say "Número Único"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.4 Say "Referencia"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+126.4 Say "Comentario"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+146.4 Say "Razón Social"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+201.4 Say "Monto"               Font "&mLetAri",9 Style "BT"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Número"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+017.0 Say "Emisión"             Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+030.2 Say "Vencim"              Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+041.9 Say "Días"                Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+048.6 Say "T"                   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+050.8 Say "Rn"                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+054.4 Say "Banco"               Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+075.4 Say "Número Único"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.4 Say "Referencia"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+126.4 Say "Comentario"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+146.4 Say "Razón Social"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+201.4 Say "Monto"               Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Ord_3210b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210LET", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210FVE", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210LE1", "A"
      CASE vsW0=6 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210REF", "A"
      CASE vsW0=7 .AND. vsW1=1
           DO orD_0000a WITH "3210", "C", "F3210COM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3210LET", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3210NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3210FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3210FVE", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3210LE1", "A"
      CASE vsW0=6
           DO orD_0000a WITH "TMP", "C", "F3210REF", "A"
      CASE vsW0=7
           DO orD_0000a WITH "TMP", "C", "F3210COM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_3210b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+vdOc
                CASE vsW0=4
                     SEEK SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe), 4,  ;
                          2)+SUBSTR(DTOC(vfVe), 1, 2)+vsEr+vdOc
                CASE vsW0=5
                     SEEK ALLTRIM(UPPER(vlE1))+"*"+vsEr+vdOc
                CASE vsW0=6
                     SEEK ALLTRIM(UPPER(vrEf))+"*"+vsEr+vdOc
                CASE vsW0=7
                     SEEK ALLTRIM(UPPER(vcOm))+"*"+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(inOm)+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+idOc
                CASE vsW0=4
                     SEEK SUBSTR(DTOC(ifVe), 7, 4)+SUBSTR(DTOC(ifVe), 4,  ;
                          2)+SUBSTR(DTOC(ifVe), 1, 2)+isEr+idOc
                CASE vsW0=5
                     SEEK ALLTRIM(UPPER(ilE1))+"*"+isEr+idOc
                CASE vsW0=6
                     SEEK ALLTRIM(UPPER(irEf))+"*"+isEr+idOc
                CASE vsW0=7
                     SEEK ALLTRIM(UPPER(icOm))+"*"+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(unOm)+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+usEr+udOc
                CASE vsW0=4
                     SEEK SUBSTR(DTOC(ufVe), 7, 4)+SUBSTR(DTOC(ufVe), 4,  ;
                          2)+SUBSTR(DTOC(ufVe), 1, 2)+usEr+udOc
                CASE vsW0=5
                     SEEK ALLTRIM(UPPER(ulE1))+"*"+usEr+udOc
                CASE vsW0=6
                     SEEK ALLTRIM(UPPER(urEf))+"*"+usEr+udOc
                CASE vsW0=7
                     SEEK ALLTRIM(UPPER(ucOm))+"*"+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3210b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
           STORE vfVe TO xfVe
           STORE vlE1 TO xlE1
           STORE vrEf TO xrEf
           STORE vcOm TO xcOm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
           STORE vfVe TO ifVe
           STORE vlE1 TO ilE1
           STORE vrEf TO irEf
           STORE vcOm TO icOm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
           STORE vfVe TO cfVe
           STORE vlE1 TO clE1
           STORE vrEf TO crEf
           STORE vcOm TO ccOm
      CASE pmU1="i" .AND. pmU2="v"
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
           STORE ifVe TO vfVe
           STORE ilE1 TO vlE1
           STORE irEf TO vrEf
           STORE icOm TO vcOm
      CASE pmU1="u" .AND. pmU2="v"
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
           STORE ufVe TO vfVe
           STORE ulE1 TO vlE1
           STORE urEf TO vrEf
           STORE ucOm TO vcOm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
           STORE xfVe TO vfVe
           STORE xlE1 TO vlE1
           STORE xrEf TO vrEf
           STORE xcOm TO vcOm
      CASE pmU1="c" .AND. pmU2="v"
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
           STORE cfVe TO vfVe
           STORE clE1 TO vlE1
           STORE crEf TO vrEf
           STORE ccOm TO vcOm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3210ser TO vsEr
           STORE f3210let TO vdOc
           STORE f3210nom TO vnOm
           STORE f3210fem TO vfEm
           STORE f3210fve TO vfVe
           STORE f3210le1 TO vlE1
           STORE f3210ref TO vrEf
           STORE f3210com TO vcOm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3210ser TO isEr
           STORE f3210let TO idOc
           STORE f3210nom TO inOm
           STORE f3210fem TO ifEm
           STORE f3210fve TO ifVe
           STORE f3210le1 TO ilE1
           STORE f3210ref TO irEf
           STORE f3210com TO icOm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3210ser TO usEr
           STORE f3210let TO udOc
           STORE f3210nom TO unOm
           STORE f3210fem TO ufEm
           STORE f3210fve TO ufVe
           STORE f3210le1 TO ulE1
           STORE f3210ref TO urEf
           STORE f3210com TO ucOm
      CASE pmU1="F" .AND. pmU2="x"
           STORE f3210ser TO xsEr
           STORE f3210let TO xdOc
           STORE f3210nom TO xnOm
           STORE f3210fem TO xfEm
           STORE f3210fve TO xfVe
           STORE f3210le1 TO xlE1
           STORE f3210ref TO xrEf
           STORE f3210com TO xcOm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3210b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=ifIl-2.299 .AND. mfIl<=ifIl-1.299 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+5.8
           STORE k_F3 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2 .AND. wtPo="1"
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+33.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
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
           DO diS_3210b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3210b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3210b WITH "F", "v"
           DO diS_3210b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3210b
 SET READBORDER ON
 DO reS_3210a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3210b WITH "R"
 DO CASE
      CASE wtPo="1"
           DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
ENDPROC
*
PROCEDURE Hl1_3210b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todas las Letras en el orden que"
 @ pfIl+01, 02 SAY  ;
   "se ha elegido. No totaliza, pero si se puede seleccionar parte de la infor-"
 @ pfIl+02, 02 SAY "mación."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F3" STYLE "BT"
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Ampliar nombre de Proveedor"
 STORE pfIl+10 TO pfIl
 @ pfIl, 23 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "F6" STYLE "BT"
 @ pfIl, 25 SAY "Cambio de Orden de Consulta"
 STORE pfIl+1 TO pfIl
 IF wtPo="1"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "F8" STYLE "BT"
      @ pfIl, 25 SAY "Procesar Letra"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 23 SAY ":" STYLE "BT"
 @ pfIl+1, 23 SAY ":" STYLE "BT"
 @ pfIl+2, 23 SAY ":" STYLE "BT"
 @ pfIl+3, 23 SAY ":" STYLE "BT"
 @ pfIl+4, 23 SAY ":" STYLE "BT"
 @ pfIl+5, 23 SAY ":" STYLE "BT"
 @ pfIl+6, 23 SAY ":" STYLE "BT"
 @ pfIl+7, 23 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F9" STYLE "BT"
 @ pfIl+1, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+2, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 04 SAY "HOME" STYLE "BT"
 @ pfIl+7, 04 SAY "END" STYLE "BT"
 @ pfIl+0, 25 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+1, 25 SAY "Visualizar Contenido completo de la Letra"
 @ pfIl+2, 25 SAY "Línea inferior"
 @ pfIl+3, 25 SAY "Línea superior"
 @ pfIl+4, 25 SAY "Página siguiente"
 @ pfIl+5, 25 SAY "Página anterior"
 @ pfIl+6, 25 SAY "Primera línea"
 @ pfIl+7, 25 SAY "Última línea"
 STORE pfIl+8 TO pfIl
 IF wtPo="1"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL P" STYLE "BT"
      @ pfIl, 25 SAY "Imprimir listado de Letras"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF wtPo$"23"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE wtPo="2"
                @ pfIl, 25 SAY "Anulación de la Letra"
           CASE wtPo="3"
                @ pfIl, 25 SAY "Eliminación de la Letra"
      ENDCASE
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3210b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ 1.200, 02 SAY  ;
   "Proveedor.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ 2.200, 02 SAY  ;
   "los Proveedores,  saldrá un mensaje,  en caso de encontrase se regresará"
 @ 3.200, 02 SAY "al Detalle."
 @ 5.200, 02 SAY "Las teclas para movilizarse son:"
 @ 7.200, 21 SAY ":" STYLE "BT"
 @ 8.200, 21 SAY ":" STYLE "BT"
 @ 9.200, 21 SAY ":" STYLE "BT"
 @ 10.200, 21 SAY ":" STYLE "BT"
 @ 7.200, 13 SAY "ESC" STYLE "BT"
 @ 8.200, 13 SAY "F10" STYLE "BT"
 @ 9.200, 13 SAY "F1" STYLE "BT"
 @ 10.200, 13 SAY "ENTER" STYLE "BT"
 @ 7.200, 23 SAY "Regresar a Detalle"
 @ 8.200, 23 SAY "Cerrar y regresar a Windows"
 @ 9.200, 23 SAY "Ayuda del Programa"
 @ 10.200, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
