 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3110b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
      DO tiT_3110a
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
           CASE vsW0=1 .AND. wtPo="4"
                SEEK mvEn+vsEr+vdOc
           CASE vsW0=2 .AND. wtPo="4"
                SEEK mvEn+ALLTRIM(UPPER(vnOm))
           CASE vsW0=3 .AND. wtPo="4"
                SEEK mvEn+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                     2)+SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=4 .AND. wtPo="4"
                SEEK mvEn+SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe), 4,  ;
                     2)+SUBSTR(DTOC(vfVe), 1, 2)
           CASE vsW0=5 .AND. wtPo="4"
                SEEK mvEn+ALLTRIM(UPPER(vlE1))
           CASE vsW0=6 .AND. wtPo="4"
                SEEK mvEn+ALLTRIM(UPPER(vrEf))
           CASE vsW0=7 .AND. wtPo="4"
                SEEK mvEn+ALLTRIM(UPPER(vcOm))
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
      IF EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      DO paN_3110b
      STORE ifIl TO vfIl
      DO muE_3110b WITH "i", "v"
 ELSE
      DO seE_3110b WITH "v"
      IF EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1 .AND. wtPo="4"
                     SEEK mvEn+vsEr+vdOc
                CASE vsW0=2 .AND. wtPo="4"
                     SEEK mvEn+UPPER(vnOm)
                CASE vsW0=3 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=4 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe),  ;
                          4, 2)+SUBSTR(DTOC(vfVe), 1, 2)
                CASE vsW0=5 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vlE1))+"*"
                CASE vsW0=6 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vrEf))+"*"
                CASE vsW0=7 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vcOm))+"*"
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
           IF EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           DO muE_3110b WITH "F", "v"
      ENDIF
      DO seE_3110b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF wtPo="4" .AND. f3110ven<>vvEn
                EXIT
           ENDIF
           IF f3110ser+f3110let=vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_3110b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_3110b WITH "v"
 IF EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
      SET NEAR ON
      DO seE_3110b WITH "i"
      SET NEAR OFF
      DO paN_3110b
      STORE ifIl TO vfIl
      DO muE_3110b WITH "i", "v"
      DO seE_3110b WITH "v"
 ENDIF
 DO diS_3110b WITH "R"
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
           DO reS_3110b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3110b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3110b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3110b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3110b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                IF vsW2=1
                     STORE 2 TO vsW2
                ELSE
                     STORE 1 TO vsW2
                ENDIF
                DO caM_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                IF vsW4=2
                     STORE 1 TO vsW4
                ELSE
                     STORE vsW4+1 TO vsW4
                ENDIF
                DO caM_3110b
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
                DO p01_3110a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. f3110est="9" .AND. wtPo="1"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="1"
                SELECT tmP_cargos
                SEEK vsEr+vdOc
                IF EOF()
                     DO CASE
                          CASE vsW1=1
                               SELECT leTras
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     DO muE_3110a
                     DO gr1_3110b
                ELSE
                     DELETE
                     PACK
                     REINDEX
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT leTras
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO diS_3110b WITH "R"
           CASE mkEy=k_F8 .AND. f3110est="9" .AND. wtPo="1"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_F8 .AND. f3110est="3" .AND. wtPo="1"
                STORE "Documento se encuentra Procesado..." TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="1"
                DO prO_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p .AND. wtPo="1"
                DO q1_0000a
                DO imP_3110b
                DO p1_0000a
                = INKEY(0.01)
                DO CASE
                     CASE vsW1=1
                          SELECT leTras
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_3110b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_o .AND. wtPo="1"
                SELECT tmP_cargos
                GOTO TOP
                IF BOF()
                     STORE "No hay Documentos seleccionados..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO caR_3110b
                     DO p1_0000a
                     SELECT tmP_cargos
                     ZAP
                     REINDEX
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT leTras
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_3110b WITH "i"
                DO paN_3110b
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f3110est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3110est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f3110est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_3110b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_3110b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT leTras
                STORE 99 TO mkEy
                DO orD_0000a WITH "3110", "C", "F3110LET", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vsEr+vdOc
                SAVE SCREEN TO vpAn_11
                DO pcC3110c
                RESTORE SCREEN FROM vpAn_11
                DO esT_3110b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                IF wtPo="4"
                     SEEK mvEn
                ENDIF
                DO CASE
                     CASE f3110ser+f3110let=isEr+idOc .AND. vsEr+vdOc=isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vdOc=isEr+idOc
                                    DO paN_3110b
                               OTHERWISE
                                    DO seE_3110b WITH "v"
                                    DO diS_3110b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3110b WITH "i", "v"
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                IF wtPo="4"
                     SET NEAR ON
                     SEEK mvEn+"ZZ"
                     SET NEAR OFF
                     IF EOF() .OR. f3110ven<>mvEn
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                ELSE
                     GOTO BOTTOM
                ENDIF
                DO CASE
                     CASE f3110ser+f3110let=usEr+udOc .AND. vsEr+vdOc=usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+vdOc=usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3110b
                               OTHERWISE
                                    DO seE_3110b WITH "v"
                                    DO diS_3110b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3110b WITH "u", "v"
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "N"
                          SKIP
                          IF vsEr+vdOc=usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3110a WITH ifIl, ffIl+1
                               DO muE_3110b WITH "F", "v"
                               DO muE_3110b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3110b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3110b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "N"
                          SKIP -1
                          IF vsEr+vdOc=isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3110a WITH ifIl, ffIl+1
                               DO muE_3110b WITH "F", "v"
                               DO muE_3110b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3110b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3110b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3110b WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3110b
                          STORE ifIl TO vfIl
                          DO muE_3110b WITH "i", "v"
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3110b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
                               GOTO TOP
                               IF wtPo="4"
                                    SEEK mvEn
                               ENDIF
                          ENDIF
                          DO paN_3110b
                          STORE ifIl TO vfIl
                          DO muE_3110b WITH "i", "v"
                          DO seE_3110b WITH "v"
                          DO diS_3110b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3110b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3110b
 DO pn1_3110b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3110b
 DO pn1_3110b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3110b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3110b WITH "F", "i"
 DO muE_3110b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF wtPo="4" .AND. mvEn<>f3110ven
           EXIT
      ENDIF
      DO CASE
           CASE ptPo="2" .AND. f3110ser+f3110let=xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3110b WITH "N"
      ENDCASE
      DO muE_3110b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3110a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3110b
 PARAMETER ptIp
 PRIVATE ptIt, pnTi, pdIa, pmEs, paNo, pnUm, psEr
 PRIVATE plEt, peSt, peS1, psIg, prEn, pnOm
 STORE SUBSTR(DTOC(f3110fve+mdIa), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(f3110fve+mdIa), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(f3110fve+mdIa), 7, 4) TO paNo
 STORE f3110tit TO ptIt
 STORE f3110ser TO psEr
 STORE f3110let TO plEt
 STORE f3110est TO peSt, peS1
 STORE 00 TO pnUm
 DO CASE
      CASE f3110mon=1
           STORE "S/." TO psIg
      CASE f3110mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE f3110ren=0
           STORE "  " TO prEn
      OTHERWISE
           STORE "Si" TO prEn
 ENDCASE
 SELECT clIentes
 SEEK ptIt
 IF EOF()
      STORE SPACE(70) TO pnTi
 ELSE
      STORE f1101nom TO pnTi
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE vsW2=1
           STORE f3110nom TO pnOm
      CASE vsW2=2
           STORE ptIt+":"+pnTi TO pnOm
 ENDCASE
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
      CASE pnUm=0 .AND. CDOW(f3110fve+mdIa)="Sábado"
           STORE 1 TO pnUm
      CASE pnUm=0 .AND. CDOW(f3110fve+mdIa)="Domingo"
           STORE 2 TO pnUm
      CASE CDOW(f3110fve+mdIa-pnUm)="Sábado"
           STORE pnUm+1 TO pnUm
      CASE CDOW(f3110fve+mdIa-pnUm)="Domingo"
           STORE pnUm+2 TO pnUm
 ENDCASE
 SELECT clIentes
 SEEK ptIt
 IF EOF()
      STORE SPACE(70) TO pnTi
 ELSE
      STORE f1101nom TO pnTi
 ENDIF
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
 SELECT tmP_cargos
 SEEK psEr+plEt
 DO CASE
      CASE  .NOT. EOF() .AND. ptIp="N"
           DO coLsc3
      CASE  .NOT. EOF() .AND. ptIp="R"
           DO coLsc6
      CASE ptIp="N" .AND. peS1="1"
           DO coLscv
      CASE ptIp="R" .AND. peS1="1"
           DO coLblv
      CASE ptIp="N" .AND. peS1="2"
           DO coLscf
      CASE ptIp="R" .AND. peS1="2"
           DO coLblf
      CASE ptIp="N" .AND. peS1="9"
           DO coLscr
      CASE ptIp="R" .AND. peS1="9"
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 SELECT tmP_cargos
 DO CASE
      CASE  .NOT. EOF() .AND. ptIp="N"
           DO coLsc3
      CASE  .NOT. EOF() .AND. ptIp="R"
           DO coLsc6
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 @vFIL,mCO0+00.0 Say F3110SER+"-"+F3110LET Font "&mLetAri",9 Style "NQ" Size 1,14.7
 @vFIL,mCO0+15.4 Say pEST                  Font "&mLetAri",9 Style "NQ" Size 1,04.2
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,36.8 Pict "@S39"
                     @vFIL,mCO0+57.5 Say F3110FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+70.7 Say F3110DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDCASE
           @vFIL,mCO0+075.5 Say F3110FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           DO CASE
                CASE vsW0=5
                     @vFIL,mCO0+088.7 Say F3110LE1                   Font "&mLetAri",9 Style "NQ" Size 1,25.8 Pict "@S29"
                CASE vsW0=6 .OR. vsW0=7
                     @vFIL,mCO0+088.7 Say F3110COM                   Font "&mLetAri",9 Style "NQ" Size 1,25.8 Pict "@S29"
                OTHERWISE
                     @vFIL,mCO0+088.7 Say F3110FVE+mDIA              Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+102.0 Say F3110FVE+mDIA-pNUM         Font "&mLetAri",9 Style "NQ" Size 1,12.6
           ENDCASE
           @vFIL,mCO0+115.2 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+117.8 Say " "+AllTrim(Str(F3110NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+120.5 Say F3110NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+150.8 Say F3110REF                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+180.9 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+185.8 Say F3110TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      CASE mrEs="4"
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,36.8 Pict "@S39"
                     @vFIL,mCO0+57.5 Say F3110FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+70.7 Say F3110DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.2 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,54.5 Pict "@S57"
           ENDCASE
           @vFIL,mCO0+075.5 Say F3110FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+088.7 Say F3110FVE+mDIA                      Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+102.0 Say F3110FVE+mDIA-pNUM                 Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+115.2 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+117.8 Say " "+AllTrim(Str(F3110NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+120.5 Say F3110NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+150.8 Say F3110REF                           Font "&mLetAri",9 Style "NQ" Size 1,40.6 Pict "@S43"
           @vFIL,mCO0+191.9 Say F3110COM                           Font "&mLetAri",9 Style "NQ" Size 1,20.6 Pict "@S15"
           @vFIL,mCO0+213.1 Say F3110LE1                           Font "&mLetAri",9 Style "NQ" Size 1,19.2 Pict "@S15"
           @vFIL,mCO0+232.9 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+237.7 Say F3110TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      OTHERWISE
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+20.3 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,43.4 Pict "@S47"
                     @vFIL,mCO0+64.3 Say F3110FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,mCO0+77.4 Say F3110DIA                    Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
                CASE vsW4=2
                     @vFIL,mCO0+20.3 Say pNOM                        Font "&mLetAri",9 Style "NQ" Size 1,61.3 Pict "@S63"
           ENDCASE
           @vFIL,mCO0+082.2 Say F3110FVE                           Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+095.4 Say F3110FVE+mDIA                      Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+108.7 Say F3110FVE+mDIA-pNUM                 Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+121.8 Say pREN                               Font "&mLetAri",9 Style "NQ" Size 1,02.0
           @vFIL,mCO0+124.5 Say " "+AllTrim(Str(F3110NRE,1,0))+" " Font "&mLetAri",9 Style "NQ" Size 1,02.2
           @vFIL,mCO0+127.2 Say F3110NBA                           Font "&mLetAri",9 Style "NQ" Size 1,29.6 Pict "@S32"
           @vFIL,mCO0+157.6 Say F3110REF                           Font "&mLetAri",9 Style "NQ" Size 1,50.7 Pict "@S53"
           @vFIL,mCO0+208.9 Say F3110COM                           Font "&mLetAri",9 Style "NQ" Size 1,20.6 Pict "@S15"
           @vFIL,mCO0+230.1 Say F3110LE1                           Font "&mLetAri",9 Style "NQ" Size 1,19.3 Pict "@S15"
           @vFIL,mCO0+250.0 Say pSIG                               Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+254.9 Say F3110TOT                           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Opc_3110b
 DO rs2_3110a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3110b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_3110a
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
                DO reS_3110b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_3110a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3110b
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
                IF wtPo="4"
                     SEEK mvEn
                ENDIF
                DO WHILE  .NOT. EOF()
                     IF wtPo="4" .AND. mvEn<>f3110ven
                          EXIT
                     ENDIF
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3110nom)))<>0
                          DO muE_3110a
                          DO grA_3110a
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
      DO orD_3110b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      IF wtPo="4"
           SEEK mvEn
      ENDIF
      DO paN_3110b
      DO muE_3110b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_3110b
 DO tiT_3110a
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_3110b WITH "v", "x"
 DO orD_3110b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF wtPo="4"
      SEEK mvEn
 ENDIF
 DO seE_3110b WITH "i"
 DO pa1_3110b
 IF cfIl=0
      DO muE_3110b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3110b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3110b WITH "v"
 DO diS_3110b WITH "R"
ENDPROC
*
PROCEDURE Est_3110b
 DO CASE
      CASE vsW1=1
           SELECT leTras
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_3110b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3110b WITH "v"
 IF EOF() .OR. BOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
      SET NEAR ON
      DO seE_3110b WITH "v"
      SET NEAR OFF
      IF EOF() .OR. BOF() .OR. (wtPo="4" .AND. mvEn<>f3110ven)
           GOTO TOP
           IF wtPo="4"
                SEEK mvEn
           ENDIF
           SET NEAR ON
           DO seE_3110b WITH "i"
           SET NEAR OFF
      ENDIF
      DO muE_3110b WITH "F", "x"
      GOTO TOP
      IF wtPo="4"
           SEEK mvEn
      ENDIF
      SET NEAR ON
      DO seE_3110b WITH "i"
      SET NEAR OFF
      STORE 00 TO cfIl
      DO pa1_3110b
      IF cfIl=0
           DO muE_3110b WITH "i", "v"
           STORE ifIl TO vfIl
      ELSE
           DO muE_3110b WITH "x", "v"
           STORE cfIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3110b WITH "v"
 IF  .NOT. EOF() .AND.  .NOT. BOF()
      DO diS_3110b WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Pro_3110b
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
 DO muE_3110a
 SELECT clIentes
 SEEK xcLi
 STORE f1101tip TO xtCl
 IF LEN(ALLTRIM(xvEn))=0
      STORE f1101ven TO xvEn
 ENDIF
 SEEK xtIt
 STORE f1101nom TO xnTi
 IF LEN(ALLTRIM(xnVe))=0
      SELECT veNdedor
      SEEK xvEn
      STORE f9113nom TO xnVe
 ENDIF
 SELECT tiPos
 SEEK xtCl
 STORE f9110nti TO xnTc
 SELECT leTras
 STORE 99 TO mkEy
 DO orD_0000a WITH "3110", "C", "F3110LET", "A"
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
 REPLACE f3110ven WITH xvEn
 REPLACE f3110nve WITH xnVe
 REPLACE f3110est WITH "3"
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3110ven WITH xvEn
      REPLACE f3110nve WITH xnVe
      REPLACE f3110est WITH "3"
 ENDIF
 SELECT peNd_vtas
 SEEK "LE"+vsEr+vdOc
 IF EOF()
      DO nuEvo_rg
      REPLACE f3500tdo WITH "LE"
      REPLACE f3500ser WITH vsEr
      REPLACE f3500doc WITH vdOc
      REPLACE f3500ruc WITH xrUc
      REPLACE f3500ven WITH xvEn
      REPLACE f3500nve WITH xnVe
      IF LEN(ALLTRIM(xtIt))<>0
           REPLACE f3500tit WITH xtIt
           REPLACE f3500nti WITH xnTi
      ELSE
           REPLACE f3500tit WITH xcLi
           REPLACE f3500nti WITH xnOm
      ENDIF
      REPLACE f3500cli WITH xcLi
      REPLACE f3500suc WITH xsUc
      REPLACE f3500nom WITH xnOm
      REPLACE f3500tcl WITH xtCl
      REPLACE f3500ntc WITH xnTc
      REPLACE f3500nfp WITH SPACE(02)
      REPLACE f3500fem WITH xfEm
      REPLACE f3500fve WITH xfVe
      REPLACE f3500mon WITH xmOn
      REPLACE f3500le1 WITH xlE1
      REPLACE f3500pig WITH xpIg
      REPLACE f3500tot WITH xtOt
      REPLACE f3500acu WITH 0.00
      UNLOCK ALL
 ENDIF
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Anu_3110b
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
      DO orD_0000a WITH "3110", "C", "F3110LET", "A"
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
      REPLACE f3500tdo WITH SPACE(02)
      REPLACE f3500ser WITH SPACE(03)
      REPLACE f3500doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDIF
 SELECT leTras
 REPLACE f3110est WITH "9"
 REPLACE f3110usu WITH muSu
 REPLACE f3110dat WITH DATE()
 REPLACE f3110tim WITH TIME()
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      REPLACE f3110est WITH "9"
      REPLACE f3110usu WITH muSu
      REPLACE f3110dat WITH DATE()
      REPLACE f3110tim WITH TIME()
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Eli_3110b
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
      DO orD_0000a WITH "3110", "C", "F3110LET", "A"
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
 REPLACE f3110ser WITH SPACE(03)
 REPLACE f3110let WITH SPACE(07)
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
 DO orD_3110b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_3110b WITH "i"
 SET NEAR OFF
 DO paN_3110b
 STORE ifIl TO vfIl
 DO muE_3110b WITH "i", "v"
 DO seE_3110b WITH "v"
 DO diS_3110b WITH "R"
 STORE k_Tab TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Gr1_3110b
 IF LEN(ALLTRIM(xtIt))=0
      STORE xcLi TO xtIt
 ENDIF
 SELECT tmP_cargos
 APPEND BLANK
 REPLACE ftM2ser WITH xsEr
 REPLACE ftM2doc WITH xdOc
 REPLACE ftM2tit WITH xtIt
 REPLACE ftM2nom WITH xnOm
 REPLACE ftM2fem WITH xfEm
 REPLACE ftM2fve WITH xfVe
ENDPROC
*
PROCEDURE Car_3110b
 DO CASE
      CASE SUBSTR(DTOC(DATE()), 4, 2)="01"
           STORE "Enero" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="02"
           STORE "Febrero" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="03"
           STORE "Marzo" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="04"
           STORE "Abril" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="05"
           STORE "Mayo" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="06"
           STORE "Junio" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="07"
           STORE "Julio" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="08"
           STORE "Agosto" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="09"
           STORE "Setiembre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="10"
           STORE "Octubre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="11"
           STORE "Noviembre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="12"
           STORE "Diciembre" TO cmEs
 ENDCASE
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SELECT tmP_cargos
 SET ORDER TO FTM2TIT
 DO rcA_3110b
 SELECT tmP_cargos
 SET ORDER TO FTM2DOC
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ccb_3110b
 PARAMETER pnUm
 PRIVATE pdIs
 STORE 0 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE mcIa="UN"
           STORE "Cusco" TO pdIs
      CASE mcIa="PU"
           STORE "Puno" TO pdIs
      CASE mcIa="SR"
           STORE "Juliaca" TO pdIs
      OTHERWISE
           STORE "Lima" TO pdIs
 ENDCASE
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say mRAZ Font "&mLetRom",15 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN Say mRAZ Font "&mLetRom",15 Style "BQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+97 Say pDIS+", "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+97 Say pDIS+", "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+0.2 Say mDIR Font "&mLetRom",11 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN+0.2 Say mDIR Font "&mLetRom",11 Style "BQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1" .AND. pnUm=1
                @vLIN,mCLN Say "CARGO DE LETRA ORIGINAL"    Font "&mLetAri",13 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN Say "CARGO DE LETRAS ORIGINALES" Font "&mLetAri",13 Style "NQ"
           CASE mpRt="2" .AND. pnUm=1
                @vLIN,mCLN Say "CARGO DE LETRA ORIGINAL"    Font "&mLetAri",13 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN Say "CARGO DE LETRAS ORIGINALES" Font "&mLetAri",13 Style "NQ"
      ENDCASE
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+126 Say "Página:"+Str(vPAG,2,0) Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+126 Say "Página:"+Str(vPAG,2,0) Font "&mLetRom",12 Style "NQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+4 TO vlIn
 DO coLbln
ENDPROC
*
PROCEDURE Rca_3110b
 PRIVATE ptAm, pnUm, pnU1, ptIt
 STORE 00 TO vpAg, vlIn
 STORE SPACE(04) TO ptIt
 STORE 12 TO mcLn
 DO coLbln
 SELECT tmP_cargos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF LEN(ALLTRIM(ptIt))=0 .OR. ALLTRIM(ptIt)+"*"<>ALLTRIM(ftM2tit)+"*"
           STORE ftM2tit TO ptIt
           STORE 0 TO pnUm, pnU1, vpAg
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ptIt)+"*"=ALLTRIM(ftM2tit)+"*"
                STORE pnUm+1 TO pnUm
                SKIP
           ENDDO
           SEEK ptIt
           DO ccB_3110b WITH pnUm
           DO CASE
                CASE pnUm=1
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          DO CASE
                               CASE mpRt="1"
                                    @vLIN,mCLN     Say "Cliente"       Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+013 Say ":"             Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+016 Say FTM2NOM         Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+094 Say "Fecha Emisión" Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+120 Say ":"             Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+123 Say FTM2FEM         Font "&mLetRom",12 Style "NQ"
                               CASE mpRt="2"
                                    @vLIN,mCLN     Say "Cliente"       Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+013 Say ":"             Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+016 Say FTM2NOM         Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+094 Say "Fecha Emisión" Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+120 Say ":"             Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+123 Say FTM2FEM         Font "&mLetRom",12 Style "NQ"
                          ENDCASE
                     ENDIF
                     STORE vlIn+1.7 TO vlIn
                     IF vlIn>mpAg-3
                          DO ccB_3110b WITH pnUm
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          DO CASE
                               CASE mpRt="1"
                                    @vLIN,mCLN     Say "Letra No."         Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+013 Say ":"                 Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+016 Say FTM2SER+"-"+FTM2DOC Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+094 Say "Fecha Vencimiento" Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+120 Say ":"                 Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+123 Say FTM2FVE             Font "&mLetRom",12 Style "NQ"
                               CASE mpRt="2"
                                    @vLIN,mCLN     Say "Letra No."         Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+013 Say ":"                 Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+016 Say FTM2SER+"-"+FTM2DOC Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+094 Say "Fecha Vencimiento" Font "&mLetRom",12 Style "NQ"
                                    @vLIN,mCLN+120 Say ":"                 Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+123 Say FTM2FVE             Font "&mLetRom",12 Style "NQ"
                          ENDCASE
                     ENDIF
                OTHERWISE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          DO CASE
                               CASE mpRt="1"
                                    @vLIN,mCLN       Say "Cliente"    Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+079.5 Say "Emisión"    Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+100.0 Say "# Letras"   Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+121.3 Say "Vencimient" Font "&mLetRom",12 Style "BQ"
                               CASE mpRt="2"
                                    @vLIN,mCLN       Say "Cliente"    Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+079.5 Say "Emisión"    Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+100.0 Say "# Letras"   Font "&mLetRom",12 Style "BQ"
                                    @vLIN,mCLN+121.3 Say "Vencimient" Font "&mLetRom",12 Style "BQ"
                          ENDCASE
                     ENDIF
                     STORE vlIn+1.8 TO vlIn
           ENDCASE
      ENDIF
      IF vlIn>mpAg-3
           DO ccB_3110b WITH pnUm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE pnU1+1 TO pnU1
      IF pnUm<>1
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN     Say FTM2NOM             Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+078 Say FTM2FEM             Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+098 Say FTM2SER+"-"+FTM2DOC Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+122 Say FTM2FVE             Font "&mLetRom",12 Style "NQ"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say FTM2NOM             Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+078 Say FTM2FEM             Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+098 Say FTM2SER+"-"+FTM2DOC Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+122 Say FTM2FVE             Font "&mLetRom",12 Style "NQ"
                ENDCASE
           ENDIF
           STORE vlIn+1.7 TO vlIn
      ENDIF
      IF pnUm=pnU1
           STORE vlIn+6.3 TO vlIn
           IF vlIn+1.5>mpAg-3
                DO ccB_3110b WITH pnUm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+3 Say Replicate("_",22) Font "&mLetRom",12 Style "NQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+3 Say Replicate("_",22) Font "&mLetRom",12 Style "NQ"
                ENDCASE
           ENDIF
           STORE vlIn+1.5 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+10 Say "Recibí Conforme"           Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+70 Say "Fecha: ____/____/________" Font "&mLetRom",12 Style "NQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+10 Say "Recibí Conforme"           Font "&mLetRom",12 Style "NQ"
                          @vLIN,mCLN+70 Say "Fecha: ____/____/________" Font "&mLetRom",12 Style "NQ"
                ENDCASE
           ENDIF
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Imp_3110b
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
 DO reP_3110b
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3110b
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 137 TO ptAm
           STORE mpKv TO mcLn
      CASE mpRt="2"
           STORE 134 TO ptAm
           STORE mpKv TO mcLn
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
      IF mkEy=k_F10
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3110b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN      Say F3110SER+"-"+F3110LET Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+15.5 Say F3110FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+28.7 Say F3110FVE              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+46.0 Say F3110DIA              Font "&mLetAri",9 Style "NQ" Size 1,5 Pict "9999"
                     DO CASE
                          CASE f3110tip=1
                               @vLIN,mCLN+48.4 Say "D"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3110tip=2
                               @vLIN,mCLN+48.4 Say "C"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                          CASE f3110tip=3
                               @vLIN,mCLN+48.4 Say "N"           Font "&mLetAri",9 Style "NQ" Size 1,1.8
                     ENDCASE
                     DO CASE
                          CASE f3110ren=1
                               @vLIN,mCLN+50.8 Say "No"          Font "&mLetAri",9 Style "NQ" Size 1,3
                          CASE f3110ren=2
                               @vLIN,mCLN+50.8 Say F3110NRE      Font "&mLetAri",9 Style "NQ" Size 1,3 Pict "99"
                     ENDCASE
                     @vLIN,mCLN+054.4 Say F3110NBA             Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S24"
                     @vLIN,mCLN+075.4 Say F3110LE1             Font "&mLetAri",9 Style "NQ" Size 1,20.3 Pict "@S23"
                     @vLIN,mCLN+096.4 Say F3110REF             Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
                     @vLIN,mCLN+126.4 Say F3110COM             Font "&mLetAri",9 Style "NQ" Size 1,19.3 Pict "@S22"
                     @vLIN,mCLN+146.4 Say F3110NOM             Font "&mLetAri",9 Style "NQ" Size 1,36.3 Pict "@S39"
                     DO CASE
                          CASE f3110mon=1
                               @vLIN,mCLN+189.7 Say "S/."        Font "&mLetAri",9 Style "NQ" Size 1,07
                          CASE f3110mon=2
                               @vLIN,mCLN+189.7 Say "US$"        Font "&mLetAri",9 Style "NQ" Size 1,07
                     ENDCASE
                     @vLIN,mCLN+206.5 Say F3110TOT             Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN      Say F3110SER+"-"+F3110LET Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+15.5 Say F3110FEM              Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+28.7 Say F3110FVE              Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+46.0 Say F3110DIA              Font "&mLetSwi",9 Style "NQ" Size 1,5 Pict "9999"
                     DO CASE
                          CASE f3110tip=1
                               @vLIN,mCLN+48.4 Say "D"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                          CASE f3110tip=2
                               @vLIN,mCLN+48.4 Say "C"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                          CASE f3110tip=3
                               @vLIN,mCLN+48.4 Say "N"           Font "&mLetSwi",9 Style "NQ" Size 1,1.8
                     ENDCASE
                     DO CASE
                          CASE f3110ren=1
                               @vLIN,mCLN+50.8 Say "No"          Font "&mLetSwi",9 Style "NQ" Size 1,3
                          CASE f3110ren=2
                               @vLIN,mCLN+50.8 Say F3110NRE      Font "&mLetSwi",9 Style "NQ" Size 1,3 Pict "99"
                     ENDCASE
                     @vLIN,mCLN+054.4 Say F3110NBA             Font "&mLetSwi",9 Style "NQ" Size 1,20.3 Pict "@S24"
                     @vLIN,mCLN+075.4 Say F3110LE1             Font "&mLetSwi",9 Style "NQ" Size 1,20.3 Pict "@S23"
                     @vLIN,mCLN+096.4 Say F3110REF             Font "&mLetSwi",9 Style "NQ" Size 1,29.3 Pict "@S32"
                     @vLIN,mCLN+126.4 Say F3110COM             Font "&mLetSwi",9 Style "NQ" Size 1,19.3 Pict "@S22"
                     @vLIN,mCLN+146.4 Say F3110NOM             Font "&mLetSwi",9 Style "NQ" Size 1,36.3 Pict "@S39"
                     DO CASE
                          CASE f3110mon=1
                               @vLIN,mCLN+189.7 Say "S/."        Font "&mLetSwi",9 Style "NQ" Size 1,07
                          CASE f3110mon=2
                               @vLIN,mCLN+189.7 Say "US$"        Font "&mLetSwi",9 Style "NQ" Size 1,07
                     ENDCASE
                     @vLIN,mCLN+206.5 Say F3110TOT             Font "&mLetSwi",9 Style "NQ" Size 1,14 Pict "999,999.99"
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
PROCEDURE Cab_3110b
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
      IF wtPo="4"
           @vLIN,mCLN Say "Letras x Vendedor" Font "&mLetAri",13 Style "NQ"
      ELSE
           @vLIN,mCLN Say "Letras"            Font "&mLetAri",13 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Numeración de Letras"       Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden de Nombre de Clientes"         Font "&mLetAri",10 Style "NQ"
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
PROCEDURE Ord_3110b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VLE", "A"
      CASE vsW0=2 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VNO", "A"
      CASE vsW0=3 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VFE", "A"
      CASE vsW0=4 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VFV", "A"
      CASE vsW0=5 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VL2", "A"
      CASE vsW0=6 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VRE", "A"
      CASE vsW0=7 .AND. wtPo="4" .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110VCO", "A"
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110LET", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110FVE", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110LE1", "A"
      CASE vsW0=6 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110REF", "A"
      CASE vsW0=7 .AND. vsW1=1
           DO orD_0000a WITH "3110", "C", "F3110COM", "A"
      CASE vsW0=1 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VLE", "A"
      CASE vsW0=2 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VNO", "A"
      CASE vsW0=3 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VFE", "A"
      CASE vsW0=4 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VFV", "A"
      CASE vsW0=5 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VL2", "A"
      CASE vsW0=6 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VRE", "A"
      CASE vsW0=7 .AND. wtPo="4"
           DO orD_0000a WITH "TMP", "C", "F3110VCO", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3110LET", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3110NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3110FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3110FVE", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3110LE1", "A"
      CASE vsW0=6
           DO orD_0000a WITH "TMP", "C", "F3110REF", "A"
      CASE vsW0=7
           DO orD_0000a WITH "TMP", "C", "F3110COM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_3110b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1 .AND. wtPo="4"
                     SEEK mvEn+vsEr+vdOc
                CASE vsW0=2 .AND. wtPo="4"
                     SEEK mvEn+UPPER(vnOm)+vsEr+vdOc
                CASE vsW0=3 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+vdOc
                CASE vsW0=4 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe),  ;
                          4, 2)+SUBSTR(DTOC(vfVe), 1, 2)+vsEr+vdOc
                CASE vsW0=5 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vlE1))+"*"+vsEr+vdOc
                CASE vsW0=6 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vrEf))+"*"+vsEr+vdOc
                CASE vsW0=7 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(vcOm))+"*"+vsEr+vdOc
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
                CASE vsW0=1 .AND. wtPo="4"
                     SEEK mvEn+isEr+idOc
                CASE vsW0=2 .AND. wtPo="4"
                     SEEK mvEn+UPPER(inOm)+isEr+idOc
                CASE vsW0=3 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                          4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+idOc
                CASE vsW0=4 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(ifVe), 7, 4)+SUBSTR(DTOC(ifVe),  ;
                          4, 2)+SUBSTR(DTOC(ifVe), 1, 2)+isEr+idOc
                CASE vsW0=5 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(ilE1))+"*"+isEr+idOc
                CASE vsW0=6 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(irEf))+"*"+isEr+idOc
                CASE vsW0=7 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(icOm))+"*"+isEr+idOc
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
                CASE vsW0=1 .AND. wtPo="4"
                     SEEK mvEn+usEr+udOc
                CASE vsW0=2 .AND. wtPo="4"
                     SEEK mvEn+UPPER(unOm)+usEr+udOc
                CASE vsW0=3 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm),  ;
                          4, 2)+SUBSTR(DTOC(ufEm), 1, 2)+usEr+udOc
                CASE vsW0=4 .AND. wtPo="4"
                     SEEK mvEn+SUBSTR(DTOC(ufVe), 7, 4)+SUBSTR(DTOC(ufVe),  ;
                          4, 2)+SUBSTR(DTOC(ufVe), 1, 2)+usEr+udOc
                CASE vsW0=5 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(ulE1))+"*"+usEr+udOc
                CASE vsW0=6 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(urEf))+"*"+usEr+udOc
                CASE vsW0=7 .AND. wtPo="4"
                     SEEK mvEn+ALLTRIM(UPPER(ucOm))+"*"+usEr+udOc
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
PROCEDURE Mue_3110b
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
           STORE f3110ser TO vsEr
           STORE f3110let TO vdOc
           STORE f3110nom TO vnOm
           STORE f3110fem TO vfEm
           STORE f3110fve TO vfVe
           STORE f3110le1 TO vlE1
           STORE f3110ref TO vrEf
           STORE f3110com TO vcOm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3110ser TO isEr
           STORE f3110let TO idOc
           STORE f3110nom TO inOm
           STORE f3110fem TO ifEm
           STORE f3110fve TO ifVe
           STORE f3110le1 TO ilE1
           STORE f3110ref TO irEf
           STORE f3110com TO icOm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3110ser TO usEr
           STORE f3110let TO udOc
           STORE f3110nom TO unOm
           STORE f3110fem TO ufEm
           STORE f3110fve TO ufVe
           STORE f3110le1 TO ulE1
           STORE f3110ref TO urEf
           STORE f3110com TO ucOm
      CASE pmU1="F" .AND. pmU2="x"
           STORE f3110ser TO xsEr
           STORE f3110let TO xdOc
           STORE f3110nom TO xnOm
           STORE f3110fem TO xfEm
           STORE f3110fve TO xfVe
           STORE f3110le1 TO xlE1
           STORE f3110ref TO xrEf
           STORE f3110com TO xcOm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3110b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=ifIl-2.299 .AND. mfIl<=ifIl-1.299 .AND. mcCc>=vcB4 .AND.  ;
           mcCc<=vcB4+5.8
           STORE k_F3 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2 .AND. wtPo$"14"
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
           DO diS_3110b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3110b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3110b WITH "F", "v"
           DO diS_3110b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3110b
 SET READBORDER ON
 DO reS_3110a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3110b WITH "R"
 DO CASE
      CASE wtPo$"14"
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
PROCEDURE Hl1_3110b
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
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F2" STYLE "BT"
 @ pfIl+10, 04 SAY "F3" STYLE "BT"
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Cambiar de Cliente/Titular y viceversa"
 @ pfIl+10, 25 SAY "Ampliar nombre de Cliente/Titular"
 STORE pfIl+11 TO pfIl
 @ pfIl, 23 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "F6" STYLE "BT"
 @ pfIl, 25 SAY "Cambio de Orden de Consulta"
 STORE pfIl+1 TO pfIl
 IF wtPo="1"
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+1, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F7" STYLE "BT"
      @ pfIl+1, 04 SAY "F8" STYLE "BT"
      @ pfIl+0, 25 SAY "Marcar/Desmarcar Letra para impresión de Cargos"
      @ pfIl+1, 25 SAY "Procesar Letra"
      STORE pfIl+2 TO pfIl
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
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+1, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "CTRL O" STYLE "BT"
      @ pfIl+1, 04 SAY "CTRL P" STYLE "BT"
      @ pfIl+0, 25 SAY "Imprimir Cargo(s) de Letra(s) Original(es)"
      @ pfIl+1, 25 SAY "Imprimir listado de Letras"
      STORE pfIl+2 TO pfIl
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
PROCEDURE Hl2_3110b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ 1.200, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ 2.200, 02 SAY  ;
   "los Clientes,  saldrá un mensaje,  en caso de encontrase se regresará"
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
