 = INKEY(0.01)
 SELECT teMporal
 GOTO TOP
 DO paN_3557b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ifIl TO vfIl
 SEEK vtDo+vsEr+vdOc
 DO diS_3557b WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3557b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3557b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3557b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3557b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3557b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3557b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vxLs = PUTFILE("Archivo Excel:", "XLS\CTAS.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel F3500TDO,F3500SER,F3500DOC,F3500FEM,F3500FVE,F3500CLI,F3500NOM,F3500TIT,F3500NTI,F3500MON,F3500TOT,F3500INT,F3500ACU Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK vtDo+vsEr+vdOc
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3557b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                SEEK vtDo+vsEr+vdOc
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3557b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc
                                    DO diS_3557b WITH "N"
                          ENDCASE
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ifIl TO vfIl
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3557b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc
                                    DO diS_3557b WITH "N"
                          ENDCASE
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE ufIl TO vfIl
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3557a WITH ifIl, ffIl+1
                               STORE f3500tdo TO utDo, vtDo
                               STORE f3500ser TO usEr, vsEr
                               STORE f3500doc TO udOc, vdOc
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE f3500tdo TO itDo
                               STORE f3500ser TO isEr
                               STORE f3500doc TO idOc
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE f3500tdo TO vtDo
                               STORE f3500ser TO vsEr
                               STORE f3500doc TO vdOc
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3557a WITH ifIl, ffIl+1
                               STORE f3500tdo TO itDo, vtDo
                               STORE f3500ser TO isEr, vsEr
                               STORE f3500doc TO idOc, vdOc
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE f3500tdo TO utDo
                                    STORE f3500ser TO usEr
                                    STORE f3500doc TO udOc
                               ENDIF
                          ELSE
                               STORE f3500tdo TO vtDo
                               STORE f3500ser TO vsEr
                               STORE f3500doc TO vdOc
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK utDo+usEr+udOc
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3557b
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ifIl TO vfIl
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK itDo+isEr+idOc
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3557b
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ifIl TO vfIl
                          SEEK vtDo+vsEr+vdOc
                          DO diS_3557b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3557b
 DO pn1_3557b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3557b
 DO pn1_3557b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3557b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 STORE f3500tdo TO itDo, utDo
 STORE f3500ser TO isEr, usEr
 STORE f3500doc TO idOc, udOc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3500tdo+f3500ser+f3500doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3557b WITH "N"
      ENDCASE
      STORE f3500tdo TO utDo
      STORE f3500ser TO usEr
      STORE f3500doc TO udOc
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3557a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3557b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. f3500tdo="NC"
           DO coLscr
      CASE ptIp="R" .AND. f3500tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. f3500fem=f3500fve
           DO coLsc7
      CASE ptIp="R" .AND. f3500fem=f3500fve
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f3500mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "U$" TO vsIg
 ENDCASE
 STORE f3500tdo TO xtD1
 STORE f3500ser TO xsR1
 STORE f3500doc TO xdO1
 STORE SPACE(01) TO vcHe
 SELECT deT_ing_bancos
 SEEK xtD1+xsR1+xdO1
 DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=xtD1+xsR1+xdO1
      STORE f3531ano TO xaN1
      STORE f3531mes TO xmE1
      STORE f3531ser TO xsR2
      STORE f3531num TO xnUm
      SELECT caB_ing_bancos
      SEEK xaN1+xmE1+xsR2+xnUm
      IF  .NOT. EOF() .AND. f3530est<>"9" .AND. f3530tpo=1
           STORE "*" TO vcHe
      ENDIF
      SELECT deT_ing_bancos
      SKIP
 ENDDO
 IF vcHe<>"*" .AND. xtD1="LE"
      SELECT leTras
      SEEK xsR1+xdO1
      DO CASE
           CASE f3110tip=1
                STORE "D" TO vcHe
           CASE f3110tip=2
                STORE "C" TO vcHe
           CASE f3110tip=3
                STORE "N" TO vcHe
      ENDCASE
 ENDIF
 SELECT teMporal
 @vFIL,mCO0+0.0 Say F3500TDO Font "&mLetAri",9 Style "NQ" Size 1,03.4
 @vFIL,mCO0+4.4 Say F3500SER Font "&mLetAri",9 Style "NQ" Size 1,04
 @vFIL,mCO0+9.4 Say F3500DOC Font "&mLetAri",9 Style "NQ" Size 1,10
 IF f3500fve<DATE() .AND. f3500tdo<>"NC"
      DO CASE
           CASE ptIp="N"
                DO coLscz
           CASE ptIp="R"
                DO coLblz
      ENDCASE
 ELSE
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
 ENDIF
 @vFIL,mCO0+34.0 Say F3500FVE Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+020.4 Say F3500FEM                   Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,mCO0+047.6 Say F3500CLI                   Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFIL,mCO0+054.6 Say F3500NOM                   Font "&mLetAri",9 Style "NQ" Size 1,31.1 Pict "@S34"
 @vFIL,mCO0+086.7 Say F3500TIT                   Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFIL,mCO0+093.7 Say F3500NTI                   Font "&mLetAri",9 Style "NQ" Size 1,31.6 Pict "@S34"
 @vFIL,mCO0+126.5 Say vSIG                       Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFIL,mCO0+131.1 Say F3500TOT                   Font "&mLetAri",9 Style "NQ" Pict "9999,999.99" Size 1,15.3
 @vFIL,mCO0+147.5 Say F3500ACU                   Font "&mLetAri",9 Style "NQ" Pict "9999,999.99" Size 1,15.3
 @vFIL,mCO0+163.9 Say F3500INT                   Font "&mLetAri",9 Style "NQ" Pict "9999,999.99" Size 1,15.3
 @vFIL,mCO0+180.3 Say F3500TOT+F3500INT-F3500ACU Font "&mLetAri",9 Style "NQ" Pict "9999,999.99" Size 1,15.3
 @vFIL,mCO0+196.8 Say vCHE                       Font "&mLetAri",9 Style "NQ" Size 1,1.4
ENDPROC
*
PROCEDURE Res_3557b
 SET READBORDER ON
 DO reS_3557a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3557b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_3557b
 STORE 0 TO mvIs
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
 DO reP_3557b
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_3557b
 PRIVATE ptAm
 DO coLbln
 STORE 99 TO ptAm
 STORE 08 TO mcLn
 STORE 00 TO vlIn, vpAg
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3557b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE SPACE(01) TO vsW1, vsW2
      STORE f3500tdo TO ctDo
      STORE f3500ser TO csEr
      STORE f3500doc TO cdOc
      DO CASE
           CASE f3500tdo="NC"
           OTHERWISE
                SELECT deT_ing_bancos
                SEEK ctDo+csEr+cdOc
                DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc= ;
                   ctDo+csEr+cdOc
                     STORE f3531ano TO xaN1
                     STORE f3531mes TO xmE1
                     STORE f3531ser TO xsR2
                     STORE f3531num TO xnUm
                     SELECT caB_ing_bancos
                     SEEK xaN1+xmE1+xsR2+xnUm
                     IF  .NOT. EOF() .AND. f3530est<>"9" .AND. f3530tpo=1
                          STORE "*" TO vsW1
                          EXIT
                     ENDIF
                     SELECT deT_ing_bancos
                     SKIP
                ENDDO
      ENDCASE
      IF ctDo="LE"
           SELECT leTras
           SEEK csEr+cdOc
           DO CASE
                CASE f3110tip=1
                     STORE "D" TO vsW2
                CASE f3110tip=2
                     STORE "C" TO vsW2
                CASE f3110tip=3
                     STORE "N" TO vsW2
           ENDCASE
      ENDIF
      SELECT teMporal
      STORE 00 TO cdIa
      IF f3500tdo<>"NC" .AND. f3500tot+f3500int-f3500acu>0
           STORE DATE()-f3500fem TO cdIa
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+19.5  Say F3500FEM                           Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+32.5  Say F3500FVE                           Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+45.8  Say Lower(F3500NOM)                    Font "&mLetSwi",9 Style "NQ" Size 1,24 Pict "@S27"
                     IF f3500mon=1
                          @vLIN,mCLN+78 Say "S/."                              Font "&mLetSwi",9 Style "NQ"
                     ELSE
                          @vLIN,mCLN+78 Say "U$"                               Font "&mLetSwi",9 Style "NQ"
                     ENDIF
                     @vLIN,mCLN+086.0 Say F3500TOT                           Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+100.0 Say F3500INT                           Font "&mLetSwi",9 Style "NQ" Size 1,10 Pict   "99,999.99"
                     @vLIN,mCLN+113.0 Say F3500ACU                           Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+128.0 Say F3500TOT+F3500INT-F3500ACU         Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+140.8 Say cDIA                               Font "&mLetSwi",9 Style "NQ" Size 1,5  Pict "9999"
                     @vLIN,mCLN+146.0 Say vSW1                               Font "&mLetSwi",9 Style "BQ"
                     @vLIN,mCLN+148.0 Say vSW2                               Font "&mLetSwi",9 Style "BQ"
                CASE mpRt="2"
                     @vLIN,mCLN       Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+19.5  Say F3500FEM                           Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+32.5  Say F3500FVE                           Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+45.8  Say Lower(F3500NOM)                    Font "&mLetSwi",9 Style "NQ" Size 1,24 Pict "@S27"
                     IF f3500mon=1
                          @vLIN,mCLN+78 Say "S/."                              Font "&mLetSwi",9 Style "NQ"
                     ELSE
                          @vLIN,mCLN+78 Say "U$"                               Font "&mLetSwi",9 Style "NQ"
                     ENDIF
                     @vLIN,mCLN+086.0 Say F3500TOT                           Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+100.0 Say F3500INT                           Font "&mLetSwi",9 Style "NQ" Size 1,10 Pict   "99,999.99"
                     @vLIN,mCLN+113.0 Say F3500ACU                           Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+128.0 Say F3500TOT+F3500INT-F3500ACU         Font "&mLetSwi",9 Style "NQ" Size 1,12 Pict "9999,999.99"
                     @vLIN,mCLN+140.8 Say cDIA                               Font "&mLetSwi",9 Style "NQ" Size 1,5  Pict "9999"
                     @vLIN,mCLN+146.0 Say vSW1                               Font "&mLetSwi",9 Style "BQ"
                     @vLIN,mCLN+148.0 Say vSW2                               Font "&mLetSwi",9 Style "BQ"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 IF vlIn>mpAg-3
      DO caB_3557b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Totales" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.0 Say "S/."     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+122.0 Say "US$"     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+102.0 Say tTO1+tIN1 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+129.5 Say tTO2+tIN2 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+080.0 Say "Totales" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.0 Say "S/."     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+122.0 Say "US$"     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+102.0 Say tTO1+tIN1 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+129.5 Say tTO2+tIN2 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3557b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.0 Say "S/."          Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+122.0 Say "US$"          Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+102.0 Say tTO1+tIN1-tAC1 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+129.5 Say tTO2+tIN2-tAC2 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+080.0 Say "Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.0 Say "S/."          Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+122.0 Say "US$"          Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+102.0 Say tTO1+tIN1-tAC1 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+129.5 Say tTO2+tIN2-tAC2 Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3557b
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 00 TO vlIn
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Cuentas por Cobrar detalladas "+vNTC Font "&mLetAri",13 Style "NQ"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NQ"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "Documento"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+019.5 Say "Fecha"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+032.5 Say "Vencimi"             Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+045.8 Say "Cliente complemento" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+078.0 Say "Mn"                  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+089.0 Say "Total"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.5 Say "Intereses"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+118.1 Say "A/C"                 Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+130.1 Say "Saldo"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+140.2 Say "Día"                 Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Documento"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+019.5 Say "Fecha"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+032.5 Say "Vencimi"             Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+045.8 Say "Cliente complemento" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+078.0 Say "Mn"                  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+089.0 Say "Total"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+097.5 Say "Intereses"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+118.1 Say "A/C"                 Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+130.1 Say "Saldo"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+140.2 Say "Día"                 Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Clp_3557b
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3557b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK itDo+isEr+idOc
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           STORE f3500tdo TO vtDo
           STORE f3500ser TO vsEr
           STORE f3500doc TO vdOc
           DO diS_3557b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3557b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el ran-"
 @ 1.200, 02 SAY "go de fechas y Tipo de Cliente elegido."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 26 SAY ":" STYLE "BT"
 @ 6.200, 26 SAY ":" STYLE "BT"
 @ 7.200, 26 SAY ":" STYLE "BT"
 @ 8.200, 26 SAY ":" STYLE "BT"
 @ 9.200, 26 SAY ":" STYLE "BT"
 @ 10.200, 26 SAY ":" STYLE "BT"
 @ 11.200, 26 SAY ":" STYLE "BT"
 @ 12.200, 26 SAY ":" STYLE "BT"
 @ 13.200, 26 SAY ":" STYLE "BT"
 @ 14.200, 26 SAY ":" STYLE "BT"
 @ 15.200, 26 SAY ":" STYLE "BT"
 @ 5.200, 07 SAY "ESC" STYLE "BT"
 @ 6.200, 07 SAY "F10" STYLE "BT"
 @ 7.200, 07 SAY "F1" STYLE "BT"
 @ 8.200, 07 SAY "F8" STYLE "BT"
 @ 9.200, 07 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 07 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 07 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 07 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 07 SAY "HOME" STYLE "BT"
 @ 14.200, 07 SAY "END" STYLE "BT"
 @ 15.200, 07 SAY "CTRL P" STYLE "BT"
 @ 5.200, 28 SAY "Regresar a la pantalla anterior"
 @ 6.200, 28 SAY "Cerrar y regresar a Windows"
 @ 7.200, 28 SAY "Ayuda del Programa"
 @ 8.200, 28 SAY "Pasar Datos a Excel"
 @ 9.200, 28 SAY "Línea inferior"
 @ 10.200, 28 SAY "Línea superior"
 @ 11.200, 28 SAY "Página siguiente"
 @ 12.200, 28 SAY "Página anterior"
 @ 13.200, 28 SAY "Primera línea"
 @ 14.200, 28 SAY "Última línea"
 @ 15.200, 28 SAY "Imprime Documentos Pendientes x Número"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
