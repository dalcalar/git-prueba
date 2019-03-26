 = INKEY(0.01)
 STORE 1 TO vsW1
 DO p00_2420c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2420c
 STORE 999 TO mkEy
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ioRd TO voRd
 STORE irUc TO vrUc
 STORE ifIl TO vfIl
 SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
      1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
 DO diS_2420c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2420c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2420c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2420c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2420c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o
                DO prE_docum WITH "Esta seguro de pasar los datos para el PLE?"
                IF moPc$"Ss"
                     WAIT WINDOW NOWAIT  ;
                          "L E Y E N D O ... Presionar ESC para Salir"+ ;
                          CHR(13)+"Hora Inicial de Lectura: "+TIME()
                     mkEy = INKEY(20)
                     SELECT foRmato
                     PRIVATE pnOm
                     STORE "LE"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                           SUBSTR(DTOC(dfEm), 4, 2)+"00080100001111.TXT"  ;
                           TO pnOm
                     Copy to &pNOM SDF
                     RELEASE pnOm
                     WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                     = INKEY(0.05)
                     WAIT CLEAR
                     SELECT teMporal
                ENDIF
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Registro_de_Compras_"+vFEC+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TD1,FTM1SER,FTM1DOC,FTM1FEM,FTM1REG,FTM1NOM,FTM1SR1,FTM1REM,FTM1RUC,FTM1TNE,FTM1TIG,FTM1TFA Type XLS
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+vtDo+ ;
                     ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2420c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+vtDo+ ;
                     ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
           CASE mkEy=k_Enter
                SELECT caB_cpra
                SET FILTER TO f2400fem=vfEm .AND. vsEr=f2400sr1 .AND. vdOc=f2400fac
                GOTO TOP
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                STORE 99 TO mkEy
                SELECT caB_cpra
                SET FILTER TO
                SELECT teMporal
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+ ;
                          "*"=ftM1ser+ftM1ord+ftM1td1+ALLTRIM(ftM1doc)+ ;
                          "*"+ALLTRIM(ftM1ruc)+"*" .AND. vsEr+voRd+vtDo+ ;
                          ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"=isEr+ioRd+ ;
                          itDo+ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ ;
                                    ALLTRIM(vrUc)+"*"=isEr+ioRd+itDo+ ;
                                    ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
                                    DO paN_2420c
                               OTHERWISE
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                                     vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                                    DO diS_2420c WITH "N"
                          ENDCASE
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE irUc TO vrUc
                          STORE ifIl TO vfIl
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+ ;
                          "*"=ftM1ser+ftM1ord+ftM1td1+ALLTRIM(ftM1doc)+ ;
                          "*"+ALLTRIM(ftM1ruc)+"*" .AND. vsEr+voRd+vtDo+ ;
                          ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"=usEr+uoRd+ ;
                          utDo+ALLTRIM(udOc)+"*"+ALLTRIM(urUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ ;
                                    ALLTRIM(vrUc)+"*"=usEr+uoRd+utDo+ ;
                                    ALLTRIM(udOc)+"*"+ALLTRIM(urUc)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2420c
                               OTHERWISE
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                                     vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                                    DO diS_2420c WITH "N"
                          ENDCASE
                          STORE ufEm TO vfEm
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE uoRd TO voRd
                          STORE urUc TO vrUc
                          STORE ufIl TO vfIl
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "N"
                          SKIP
                          IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ ;
                             ALLTRIM(vrUc)+"*"=usEr+uoRd+utDo+ ;
                             ALLTRIM(udOc)+"*"+ALLTRIM(urUc)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2420c WITH ifIl, ffIl+1
                               STORE ftM1reg TO ufEm, vfEm
                               STORE ftM1td1 TO utDo, vtDo
                               STORE ftM1ser TO usEr, vsEr
                               STORE ftM1doc TO udOc, vdOc
                               STORE ftM1ord TO uoRd, voRd
                               STORE ftM1ruc TO urUc, vrUc
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1reg TO ifEm
                               STORE ftM1td1 TO itDo
                               STORE ftM1ser TO isEr
                               STORE ftM1doc TO idOc
                               STORE ftM1ord TO ioRd
                               STORE ftM1ruc TO irUc
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1reg TO vfEm
                               STORE ftM1td1 TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1ord TO voRd
                               STORE ftM1ruc TO vrUc
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "N"
                          SKIP -1
                          IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ ;
                             ALLTRIM(vrUc)+"*"=isEr+ioRd+itDo+ ;
                             ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2420c WITH ifIl, ffIl+1
                               STORE ftM1reg TO ifEm, vfEm
                               STORE ftM1td1 TO itDo, vtDo
                               STORE ftM1ser TO isEr, vsEr
                               STORE ftM1doc TO idOc, vdOc
                               STORE ftM1ord TO ioRd, voRd
                               STORE ftM1ruc TO irUc, vrUc
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
                                    STORE ftM1ruc TO urUc
                               ENDIF
                          ELSE
                               STORE ftM1reg TO vfEm
                               STORE ftM1td1 TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1ord TO voRd
                               STORE ftM1ruc TO vrUc
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4, 2)+ ;
                     SUBSTR(DTOC(ufEm), 1, 2)+usEr+uoRd+utDo+ ;
                     ALLTRIM(udOc)+"*"+ALLTRIM(urUc)+"*"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2420c
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE irUc TO vrUc
                          STORE ifIl TO vfIl
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                     SUBSTR(DTOC(ifEm), 1, 2)+isEr+ioRd+itDo+ ;
                     ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2420c
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ioRd TO voRd
                          STORE irUc TO vrUc
                          STORE ifIl TO vfIl
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+ ;
                               vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
                          DO diS_2420c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ ;
                ALLTRIM(vrUc)+"*"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2420c
 STORE ifIl TO vfIl, ufIl
 STORE ftM1reg TO ifEm, ufEm
 STORE ftM1td1 TO itDo, utDo
 STORE ftM1ser TO isEr, usEr
 STORE ftM1doc TO idOc, udOc
 STORE ftM1ord TO ioRd, uoRd
 STORE ftM1ruc TO irUc, urUc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_2420c WITH "N"
      STORE ftM1reg TO ufEm
      STORE ftM1td1 TO utDo
      STORE ftM1ser TO usEr
      STORE ftM1doc TO udOc
      STORE ftM1ord TO uoRd
      STORE ftM1ruc TO urUc
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, piCl CLEAR TO ffIl+1, puCl
      DO liN_2420c WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2420c
 PARAMETER ptIp
 PRIVATE pfEm
 DO CASE
      CASE vsW1=1
           STORE ftM1reg TO pfEm
      CASE vsW1=2
           STORE ftM1fem TO pfEm
      CASE vsW1=3
           STORE ftM1fca TO pfEm
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pICL+000.0 Say Space(01)           Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFIL,pICL+000.2 Say FTM1FEM             Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,pICL+013.7 Say FTM1FCA             Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,pICL+027.3 Say FTM1REG             Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,pICL+061.1 Say FTM1NOM             Font "&mLetAri",9 Style "NQ" Size 1,50.6 Pict "@S52"
 @vFIL,pICL+113.0 Say FTM1SR1+"-"+FTM1REM Font "&mLetAri",9 Style "NQ" Size 1,15.3
 @vFIL,pICL+129.4 Say FTM1RUC             Font "&mLetAri",9 Style "NQ" Size 1,15.3
 @vFIL,pICL+145.8 Say FTM1TNE             Font "&mLetAri",9 Style "NQ" Size 1,18.3 Pict "9,999,999.99"
 @vFIL,pICL+165.2 Say FTM1TIG             Font "&mLetAri",9 Style "NQ" Size 1,18.3 Pict "9,999,999.99"
 @vFIL,pICL+184.6 Say FTM1TFA             Font "&mLetAri",9 Style "NQ" Size 1,18.3 Pict "9,999,999.99"
 DO CASE
      CASE ptIp="N" .AND. ftM1tdo="NC"
           DO coL_fonro
      CASE ptIp="R" .AND. ftM1tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. ftM1tdo="ND"
           DO coL_fonaz
      CASE ptIp="R" .AND. ftM1tdo="ND"
           DO coLblz
 ENDCASE
 @vFIL,pICL+40.9 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,19.2
 DO coLsc3
 @fFIL+2,pICL+20 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "BQ" Size 1,26.2
ENDPROC
*
PROCEDURE Lin_2420c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+013.1 TO pfIn, piCl+013.1
 @ piNi, piCl+026.7 TO pfIn, piCl+026.7
 @ piNi, piCl+040.3 TO pfIn, piCl+040.3
 @ piNi, piCl+060.5 TO pfIn, piCl+060.5
 @ piNi, piCl+112.4 TO pfIn, piCl+112.4
 @ piNi, piCl+128.8 TO pfIn, piCl+128.8
 @ piNi, piCl+145.2 TO pfIn, piCl+145.2
 @ piNi, piCl+164.6 TO pfIn, piCl+164.6
 @ piNi, piCl+184.0 TO pfIn, piCl+184.0
ENDPROC
*
PROCEDURE P00_2420c
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
 @fFIL+2.0,pICL+0.5 Say vNUM Pict "99,999,999"       Font "&mLetAri",8  Style "NQU" Size 1,12
 @fFIL+3.8,pICL     Say "Registro de Compras: "+cFEC Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_2420c WITH ifIl-1.8, ffIl+1.6
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
      CASE tnEt>99999999.99
           @fFIL+1.9,pICL+145.8 Say tNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE tnEt>9999999.99
           @fFIL+1.9,pICL+145.8 Say tNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+145.8 Say tNET Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE tiGv>9999999.99
           @fFIL+1.9,pICL+165.2 Say tIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE tiGv>999999.99
           @fFIL+1.9,pICL+165.2 Say tIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+165.2 Say tIGV Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
 DO CASE
      CASE ttOt>9999999.99
           @fFIL+1.9,pICL+184.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99,999,999.9"
      CASE ttOt>999999.99
           @fFIL+1.9,pICL+184.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "99999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+184.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,15.3 Pict "9,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Imp_2420c
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
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2420c
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2420c
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
 STORE 0 TO vlIn, vpAg, cnEt, ciGv, ctOt, cnE1, ciG1, ctO1
 STORE SPACE(2) TO ctDo, cnTd, cdIa, cmEs, caNo
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4 .OR. SUBSTR(DTOC(ftM1reg), 4, 2)+ ;
         SUBSTR(DTOC(ftM1reg), 7, 4)<>cmEs+caNo
           DO caB_2420c
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
                     @vLIN,mCLN+60  Say FTM1NOM                         Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
                     @vLIN,mCLN+115 Say FTM1RUC                         Font "&mLetRom",10 Style "NQ" Size 1,17
                     @vLIN,mCLN+130 Say FTM1TNE                         Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+146 Say FTM1TIG                         Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+162 Say FTM1TFA                         Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+187 Say FTM1REF                         Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
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
                @vLIN,mCLN+114.1 Say cNE1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIG1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTO1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
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
PROCEDURE Cab_2420c
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+075.0 Say "Van "+mSIG Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+114.1 Say cNET        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIGV        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTOT        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
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
                @vLIN,mCLN+131 Say "V.CPR"       Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+146 Say "IGV"         Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+162 Say "TOTAL "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+186 Say "REFERENCIA"  Font "&mLetRom",10 Style "BQ"
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
PROCEDURE Res_2420c
 DO reS_2420b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2420c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
      1, 2)+isEr+ioRd+itDo+ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
 DO paN_2420c
 SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
      1, 2)+isEr+ioRd+itDo+ALLTRIM(idOc)+"*"+ALLTRIM(irUc)+"*"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"=ftM1ser+ ;
         ftM1ord+ftM1td1+ALLTRIM(ftM1doc)+"*"+ALLTRIM(ftM1ruc)+"*"
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
      STORE irUc TO vrUc
      STORE ifIl TO vfIl
 ENDIF
 SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
      1, 2)+vsEr+voRd+vtDo+ALLTRIM(vdOc)+"*"+ALLTRIM(vrUc)+"*"
 DO diS_2420c WITH "R"
ENDPROC
*
PROCEDURE Clp_2420c
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
           DO diS_2420c WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+isEr+ioRd+itDo+ALLTRIM(idOc)+"*"+ ;
                ALLTRIM(irUc)+"*"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           STORE ftM1reg TO vfEm
           STORE ftM1td1 TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1ord TO voRd
           STORE ftM1ruc TO vrUc
           DO diS_2420c WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, vtPo
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+07.5,pCOL+05 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+08.9,pCOL+05 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.3,pCOL+05 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+10.5,pCOL+05 Say "Imprime Sub-Totales:"  Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.4, pcOl+34 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.6,pCOL+24.8 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+09.0,pCOL+24.8 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.9,pCOL+05.8 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RHT No imprime;x Día;x Tipo de Doc." Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_2420c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Débito, en el rango de fechas seleccionadas."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "F8" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Pasar Datos a Excel"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 STORE pfIl+11 TO pfIl
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
