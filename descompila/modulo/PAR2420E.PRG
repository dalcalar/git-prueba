 = INKEY(0.01)
 SELECT teMporal
 COUNT FOR ALLTRIM(ftM1ruc)+"*"=ALLTRIM(vrUc)+"*" TO vnUm
 STORE 1 TO vsW1
 DO p00_2420e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(vrUc)+"*"
 DO paN_2420e
 STORE 999 TO mkEy
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ioRd TO voRd
 STORE ifIl TO vfIl
 SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
 DO diS_2420c IN PAR2420C WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2420e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2420e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2420e
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2420e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_14
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Detalle_DAOT_RUC_"+vRUC+"_"+vFEC+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_14
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TD1,FTM1SER,FTM1DOC,FTM1FEM,FTM1REG,FTM1NOM,FTM1SR1,FTM1REM,FTM1RUC,FTM1TNE,FTM1TIG,FTM1TFA Type XLS for AllTrim(FTM1RUC)+"*" = AllTrim(vRUC)+"*"
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                     SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                     vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2420e
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                     SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                     vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vrUc)+"*"
                DO CASE
                     CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=ftM1ser+ ;
                          ftM1ord+ftM1td1+ALLTRIM(ftM1doc)+"*" .AND. vsEr+ ;
                          voRd+vtDo+ALLTRIM(vdOc)+"*"=isEr+ioRd+itDo+ ;
                          ALLTRIM(idOc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=isEr+ ;
                                    ioRd+itDo+ALLTRIM(idOc)+"*"
                                    DO paN_2420e
                               OTHERWISE
                                    SEEK ALLTRIM(vrUc)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                                     vtDo+ALLTRIM(vdOc)+"*"
                                    DO diS_2420c IN PAR2420C WITH "N"
                          ENDCASE
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vrUc)+"*ZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=ftM1ser+ ;
                          ftM1ord+ftM1td1+ALLTRIM(ftM1doc)+"*" .AND. vsEr+ ;
                          voRd+vtDo+ALLTRIM(vdOc)+"*"=usEr+uoRd+utDo+ ;
                          ALLTRIM(udOc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=usEr+ ;
                                    uoRd+utDo+ALLTRIM(udOc)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2420e
                               OTHERWISE
                                    SEEK ALLTRIM(vrUc)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                                     vtDo+ALLTRIM(vdOc)+"*"
                                    DO diS_2420c IN PAR2420C WITH "N"
                          ENDCASE
                          STORE ufEm TO vfEm
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE uoRd TO voRd
                          STORE ufIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "N"
                          SKIP
                          IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=usEr+uoRd+ ;
                             utDo+ALLTRIM(udOc)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2420c IN PAR2420C WITH ifIl, ffIl+1
                               STORE ftM1reg TO ufEm, vfEm
                               STORE ftM1td1 TO utDo, vtDo
                               STORE ftM1ser TO usEr, vsEr
                               STORE ftM1doc TO udOc, vdOc
                               STORE ftM1ord TO uoRd, voRd
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1reg TO ifEm
                               STORE ftM1td1 TO itDo
                               STORE ftM1ser TO isEr
                               STORE ftM1doc TO idOc
                               STORE ftM1ord TO ioRd
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1reg TO vfEm
                               STORE ftM1td1 TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1ord TO voRd
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "N"
                          SKIP -1
                          IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=isEr+ioRd+ ;
                             itDo+ALLTRIM(idOc)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2420c IN PAR2420C WITH ifIl, ffIl+1
                               STORE ftM1reg TO ifEm, vfEm
                               STORE ftM1td1 TO itDo, vtDo
                               STORE ftM1ser TO isEr, vsEr
                               STORE ftM1doc TO idOc, vdOc
                               STORE ftM1ord TO ioRd, voRd
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM1reg TO ufEm
                                    STORE ftM1td1 TO utDo
                                    STORE ftM1ser TO usEr
                                    STORE ftM1doc TO udOc
                                    STORE ftM1ord TO uoRd
                               ENDIF
                          ELSE
                               STORE ftM1reg TO vfEm
                               STORE ftM1td1 TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1ord TO voRd
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                     SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm), 1, 2)+ ;
                     usEr+uoRd+utDo+ALLTRIM(udOc)+"*"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2420e
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                     SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+ ;
                     isEr+ioRd+itDo+ALLTRIM(idOc)+"*"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. ALLTRIM(ftM1ruc)+"*"<>ALLTRIM(vrUc)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vrUc)+"*"
                          ENDIF
                          DO paN_2420e
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
                          DO diS_2420c IN PAR2420C WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                voRd+vtDo+ALLTRIM(vdOc)+"*"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2420e
 STORE ifIl TO vfIl, ufIl
 STORE ftM1reg TO ifEm, ufEm
 STORE ftM1td1 TO itDo, utDo
 STORE ftM1ser TO isEr, usEr
 STORE ftM1doc TO idOc, udOc
 STORE ftM1ord TO ioRd, uoRd
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1ruc)+"*"=ALLTRIM(vrUc)+"*" .AND.  ;
    vfIl<ffIl+1
      DO diS_2420c IN PAR2420C WITH "N"
      STORE ftM1reg TO ufEm
      STORE ftM1td1 TO utDo
      STORE ftM1ser TO usEr
      STORE ftM1doc TO udOc
      STORE ftM1ord TO uoRd
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, piCl CLEAR TO ffIl+1, puCl
      DO liN_2420c IN PAR2420C WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE P00_2420e
 RESTORE SCREEN FROM vpAn_99
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH ifIl-1.9, piCl, ffIl+3.5, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.8, piCl-0.6 TO ifIl-0.4, puCl+0.3 PATTERN 1
 @ ffIl+1.6, piCl-0.6 TO ffIl+3.4, puCl+0.3 PATTERN 1
 @fFIL+2.0,pICL+0.5 Say vNUM Pict "99,999,999"                     Font "&mLetAri",8  Style "NQU" Size 1,12
 @fFIL+3.8,pICL     Say "Detalle de DAOT: "+AllTrim(vRUC)+" "+cFEC Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_2420c IN PAR2420C WITH ifIl-1.8, ffIl+1.6
 DO coLsc3
 @ ffIl+1.6, piCl+145.2 TO ffIl+3.3, piCl+145.2
 @ ffIl+1.6, piCl+164.6 TO ffIl+3.3, piCl+164.6
 @ ffIl+1.6, piCl+184.0 TO ffIl+3.3, piCl+184.0
 DO coLsc3
 @iFIL-1.7,pICL+001.0 Say "Emisión"     Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+013.9 Say "Cancelac"    Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+028.5 Say "Registro"    Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+043.5 Say "Documento"   Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+076.9 Say "Proveedor"   Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+113.2 Say "G.Remisión"  Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+133.8 Say "RUC"         Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+149.8 Say "Neto "+mSIG  Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+170.2 Say "IGV "+mSIG   Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,pICL+189.6 Say "Total "+mSIG Font "&mLetAri",10 Style "BQ"
 @fFIL+1.9,pICL+130.0 Say "TOTALES:"    Font "&mLetAri",10 Style "BQ"
 DO CASE
      CASE xnEt>99999999.99
           @fFIL+1.9,pICL+145.8 Say xNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE xnEt>9999999.99
           @fFIL+1.9,pICL+145.8 Say xNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+145.8 Say xNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE xiGv>9999999.99
           @fFIL+1.9,pICL+165.2 Say xIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE xiGv>999999.99
           @fFIL+1.9,pICL+165.2 Say xIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+165.2 Say xIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE xtOt>9999999.99
           @fFIL+1.9,pICL+184.6 Say xTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE xtOt>999999.99
           @fFIL+1.9,pICL+184.6 Say xTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+184.6 Say xTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Imp_2420e
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina IN PAR2420C
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2420e
 DO fpR_0000a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2420e
 PRIVATE ptAm, psW0
 DO CASE
      CASE mpRt="1"
           STORE 98 TO ptAm
           STORE 04 TO mcLn
      CASE mpRt="2"
           STORE 98 TO ptAm
           STORE 04 TO mcLn
 ENDCASE
 SELECT teMporal
 GOTO TOP
 SEEK ALLTRIM(vrUc)+"*"
 STORE 0 TO vlIn, vpAg, cnEt, ciGv, ctOt, cnE1, ciG1, ctO1
 STORE SPACE(2) TO ctDo, cnTd, cdIa, cmEs, caNo
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1ruc)+"*"=ALLTRIM(vrUc)+"*"
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4 .OR. SUBSTR(DTOC(ftM1reg), 4, 2)+ ;
         SUBSTR(DTOC(ftM1reg), 7, 4)<>cmEs+caNo
           DO caB_2420e
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE SUBSTR(DTOC(ftM1reg), 1, 2) TO cdIa
           STORE SUBSTR(DTOC(ftM1reg), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(ftM1reg), 7, 4) TO caNo
           STORE ftM1td1 TO ctDo
           STORE ftM1tdo TO cnTd
      ENDIF
      STORE 0 TO psW0
      DO CASE
           CASE vtPo=2 .AND. SUBSTR(DTOC(ftM1reg), 1, 2)<>cdIa
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+65  Say "Total Día "+mSIG Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+70  Say "Total Día "+mSIG Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
           CASE vtPo=3 .AND. ftM1td1<>ctDo
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+65  Say "Total "+cNTD+" "+mSIG Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+70  Say "Total "+cNTD+" "+mSIG Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+114.1 Say cNE1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+129.1 Say cIG1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+144.1 Say cTO1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+101.0 Say cNE1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+117.0 Say cIG1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+133.0 Say cTO1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                ENDCASE
           ENDIF
           STORE 0 TO cnE1, ciG1, ctO1
           STORE SUBSTR(DTOC(ftM1reg), 1, 2) TO cdIa
           STORE ftM1td1 TO ctDo
           STORE ftM1tdo TO cnTd
           STORE vlIn+2 TO vlIn
           LOOP
      ENDIF
      STORE cnEt+ftM1tne TO cnEt
      STORE ciGv+ftM1tig TO ciGv
      STORE ctOt+ftM1tfa TO ctOt
      STORE cnE1+ftM1tne TO cnE1
      STORE ciG1+ftM1tig TO ciG1
      STORE ctO1+ftM1tfa TO ctO1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say FTM1FEM                         Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+15  Say FTM1FCA                         Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+30  Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,30
                     @vLIN,mCLN+62  Say FTM1NOM                         Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S43"
                     @vLIN,mCLN+104 Say FTM1RUC                         Font "&mLetAri",9 Style "NQ" Size 1,15.6
                     @vLIN,mCLN+122 Say FTM1TNE                         Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+138 Say FTM1TIG                         Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+154 Say FTM1TFA                         Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+170 Say FTM1REF                         Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "@S25"
                CASE mpRt="2"
                     @vLIN,mCLN     Say FTM1FEM                         Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+20  Say FTM1FCA                         Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+35  Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",10 Style "NQ" Size 1,20
                     @vLIN,mCLN+52  Say FTM1NOM                         Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
                     @vLIN,mCLN+115 Say FTM1RUC                         Font "&mLetRom",10 Style "NQ" Size 1,17
                     @vLIN,mCLN+130 Say FTM1TNE                         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+145 Say FTM1TIG                         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+160 Say FTM1TFA                         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+184 Say FTM1REF                         Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      STORE 0 TO psW0
      DO CASE
           CASE EOF()
                STORE 1 TO psW0
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)+SUBSTR(DTOC(ftM1reg), 7, 4)<> ;
                cmEs+caNo
                STORE 1 TO psW0
           CASE vtPo=2 .AND. SUBSTR(DTOC(ftM1reg), 1, 2)<>cdIa
                STORE 1 TO psW0
           CASE vtPo=3 .AND. ftM1td1<>ctDo
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+114.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+129.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+144.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+101.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+117.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+133.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 STORE 0 TO psW0
 DO CASE
      CASE vtPo=2 .AND. SUBSTR(DTOC(ftM1reg), 1, 2)<>cdIa
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+65  Say "Total Día "+mSIG Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+70  Say "Total Día "+mSIG Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
      CASE vtPo=3 .AND. ftM1td1<>ctDo
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+65  Say "Total "+cNTD+" "+mSIG Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+70  Say "Total "+cNTD+" "+mSIG Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
 ENDCASE
 IF psW0=1
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+114.1 Say cNE1 Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIG1 Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTO1 Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+101.0 Say cNE1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIG1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTO1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
      STORE 0 TO cnE1, ciG1, ctO1
      STORE SUBSTR(DTOC(ftM1reg), 1, 2) TO cdIa
      STORE ftM1td1 TO ctDo
      STORE ftM1tdo TO cnTd
      STORE vlIn+2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+063.0 Say "TOTAL GENERAL "+mSIG Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+114.1 Say cNET                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIGV                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTOT                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+068.0 Say "TOTAL GENERAL "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+101.0 Say cNET                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIGV                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTOT                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2420e
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+075.0 Say "Van "+mSIG Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+114.1 Say cNET        Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIGV        Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTOT        Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+060.0 Say "Van "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+101.0 Say cNET        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIGV        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTOT        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0001a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="01"
                STORE "Enero de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="02"
                STORE "Febrero de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="03"
                STORE "Marzo de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="04"
                STORE "Abril de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="05"
                STORE "Mayo de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="06"
                STORE "Junio de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="07"
                STORE "Julio de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="08"
                STORE "Agosto de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="09"
                STORE "Setiembre de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="10"
                STORE "Octubre de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="11"
                STORE "Noviembre de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(ftM1reg), 4, 2)="12"
                STORE "Diciembre de "+SUBSTR(DTOC(ftM1reg), 7, 4) TO cfEc
      ENDCASE
      @vLIN,mCLN Say "Registro de Compras "+cFEC Font "&mLetRom",14 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN     Say "EMISION"     Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+15  Say "CANCELAC"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+30  Say "DOCUMENTO"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+62  Say "PROVEEDOR"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+104 Say "RUC/DNI"     Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+122 Say "VALOR-CPR"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+145 Say "I.G.V."      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+155 Say "TOTAL "+mSIG Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+170 Say "REFERENCIA"  Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "EMISION"     Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+20  Say "CANCELAC"    Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+35  Say "DOCUMENTO"   Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+52  Say "PROVEEDOR"   Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+115 Say "RUC/DNI"     Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+130 Say "V.CPR"       Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+145 Say "IGV"         Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+160 Say "TOTAL "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+184 Say "REFERENCIA"  Font "&mLetRom",10 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+075.0 Say "Vienen "+mSIG Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+114.1 Say cNET           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+129.1 Say cIGV           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+144.1 Say cTOT           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+060.0 Say "Vienen "+mSIG Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+101.0 Say cNET           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+117.0 Say cIGV           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+133.0 Say cTOT           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+2 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Res_2420e
 DO reS_2420c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_13
 DO p00_2420e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
      SUBSTR(DTOC(ifEm), 1, 2)+isEr+ioRd+itDo+ALLTRIM(idOc)+"*"
 DO paN_2420e
 SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
      SUBSTR(DTOC(ifEm), 1, 2)+isEr+ioRd+itDo+ALLTRIM(idOc)+"*"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1ruc)+"*"=ALLTRIM(vrUc)+"*" .AND.  ;
    vfIl<ffIl+1
      IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"=ftM1ser+ftM1ord+ftM1td1+ ;
         ALLTRIM(ftM1doc)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      STORE ifEm TO vfEm
      STORE itDo TO vtDo
      STORE isEr TO vsEr
      STORE idOc TO vdOc
      STORE ioRd TO voRd
      STORE ifIl TO vfIl
 ENDIF
 SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"
 DO diS_2420c IN PAR2420C WITH "R"
ENDPROC
*
PROCEDURE Clp_2420e
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2420c IN PAR2420C WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK ALLTRIM(vrUc)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+ ;
                ioRd+itDo+ALLTRIM(idOc)+"*"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           STORE ftM1reg TO vfEm
           STORE ftM1td1 TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1ord TO voRd
           DO diS_2420c IN PAR2420C WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2420e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Débito, en el rango de fechas seleccionadas,"
 @ pfIl+02, 01 SAY  ;
   "que pertenecen al RUC, DNI o Código de Cliente Seleccionado."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F8" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Pasar Datos a Excel"
 @ pfIl+10, 31 SAY "Línea inferior"
 @ pfIl+11, 31 SAY "Línea superior"
 STORE pfIl+12 TO pfIl
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 11 SAY "HOME" STYLE "BT"
 @ pfIl+3, 11 SAY "END" STYLE "BT"
 @ pfIl+4, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 31 SAY "Página siguiente"
 @ pfIl+1, 31 SAY "Página anterior"
 @ pfIl+2, 31 SAY "Primera línea"
 @ pfIl+3, 31 SAY "Última línea"
 @ pfIl+4, 31 SAY "Imprimir Reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
