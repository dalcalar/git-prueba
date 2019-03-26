 = INKEY(0.01)
 SELECT teMporal
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 DO paN_3558b
 STORE ifIl TO vfIl
 DO muE_3558b WITH "i", "v"
 DO seE_3558b WITH "v"
 DO diS_3558b WITH "R"
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
           DO reS_3558b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3558b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3558b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3558b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3558b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3558b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH ALLTRIM(vnBa)+" Cta:"+ALLTRIM(vnCt)+ ;
                   " del "+DTOC(dfEm)+" al "+DTOC(hfEm), "Movimientos", 13
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Fecha"
                pxLs.ceLls(3, 02).vaLue = "Voucher"
                pxLs.ceLls(3, 03).vaLue = "Glosa"
                pxLs.ceLls(3, 04).vaLue = "Recibo"
                pxLs.ceLls(3, 05).vaLue = "Tipo de Letra"
                pxLs.ceLls(3, 06).vaLue = "Clase de Movimiento"
                pxLs.ceLls(3, 07).vaLue = "Tipo de Movimiento"
                pxLs.ceLls(3, 08).vaLue = "T/C"
                pxLs.ceLls(3, 09).vaLue = "Centro de Costo"
                pxLs.ceLls(3, 10).vaLue = "Operacion"
                pxLs.ceLls(3, 11).vaLue = "Ingresos"
                pxLs.ceLls(3, 12).vaLue = "Salidas"
                pxLs.ceLls(3, 13).vaLue = "Saldo"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(07)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(09),  ;
                          pxLs.coLumns(10)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(11),  ;
                          pxLs.coLumns(13)).nuMberformat = "###,###,###,##0.00"
                pxLs.coLumns(8).nuMberformat = "##0.000"
                pxLs.raNge(pxLs.coLumns(11),  ;
                          pxLs.coLumns(13)).hoRizontalalignment = 4
                SELECT teMporal
                GOTO TOP
                SET NEAR ON
                SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
                     SUBSTR(DTOC(dfEm), 1, 2)
                SET NEAR OFF
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF() .AND. ftM1ano+ftM1mes+ftM1dia<= ;
                   SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+ ;
                   SUBSTR(DTOC(hfEm), 1, 2)
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM1dia+"/"+ftM1mes+"/"+ ;
                               ftM1ano
                     pxLs.ceLls(viT1, 02).vaLue = ftM1ser+"-"+ftM1num
                     pxLs.ceLls(viT1, 03).vaLue = ftM1glo
                     pxLs.ceLls(viT1, 04).vaLue = ftM1rcb
                     pxLs.ceLls(viT1, 07).vaLue = ftM1nti
                     pxLs.ceLls(viT1, 08).vaLue = ftM1tca
                     pxLs.ceLls(viT1, 09).vaLue = ftM1ncc
                     pxLs.ceLls(viT1, 10).vaLue = ftM1che
                     pxLs.ceLls(viT1, 13).vaLue = ftM1sld
                     DO CASE
                          CASE ftM1tt0="N"
                               pxLs.ceLls(viT1, 05).vaLue = "Cartera  "
                          CASE ftM1tt0="C"
                               pxLs.ceLls(viT1, 05).vaLue = "Cobranza "
                          CASE ftM1tt0="D"
                               pxLs.ceLls(viT1, 05).vaLue = "Descuento"
                     ENDCASE
                     DO CASE
                          CASE ftM1ttt="1" .AND. ftM1tpo=1
                               pxLs.ceLls(viT1, 06).vaLue = "Por Rendir"
                          CASE ftM1ttt="1" .AND. ftM1tpo=2
                               pxLs.ceLls(viT1, 06).vaLue = "Ingresos Varios"
                          CASE ftM1ttt="1" .AND. ftM1tpo=3
                               pxLs.ceLls(viT1, 06).vaLue = "Notas de Abono"
                          CASE ftM1ttt="1" .AND. ftM1tpo=4
                               pxLs.ceLls(viT1, 06).vaLue = "Cobro de Ventas"
                          CASE ftM1ttt="2" .AND. ftM1tpo=1
                               pxLs.ceLls(viT1, 06).vaLue = "Por Rendir"
                          CASE ftM1ttt="2" .AND. ftM1tpo=2
                               pxLs.ceLls(viT1, 06).vaLue =  ;
                                "Emisión de Cheques (CCO)"
                          CASE ftM1ttt="2" .AND. ftM1tpo=3
                               pxLs.ceLls(viT1, 06).vaLue =  ;
                                "Notas de Cargo del Banco"
                          CASE ftM1ttt="2" .AND. ftM1tpo=4
                               pxLs.ceLls(viT1, 06).vaLue =  ;
                                "Cancelaciones de Compras"
                          CASE ftM1ttt="2" .AND. ftM1tpo=5
                               pxLs.ceLls(viT1, 06).vaLue = "Depósito a Caja"
                     ENDCASE
                     DO CASE
                          CASE ftM1ttt="1" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                               pxLs.ceLls(viT1, 11).vaLue = ftM1to1
                          CASE ftM1ttt="1"
                               pxLs.ceLls(viT1, 11).vaLue = ftM1tot
                          CASE ftM1ttt="2" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                               pxLs.ceLls(viT1, 12).vaLue = ftM1to1
                          CASE ftM1ttt="2"
                               pxLs.ceLls(viT1, 12).vaLue = ftM1tot
                     ENDCASE
                     STORE viT1+1 TO viT1
                     SELECT teMporal
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                SELECT teMporal
                DO seE_3558b WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3558b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3558b WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SET NEAR ON
                SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
                     SUBSTR(DTOC(dfEm), 1, 2)
                SET NEAR OFF
                DO CASE
                     CASE ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tt0+ ;
                          UPPER(ALLTRIM(ftM1che))+"*"+ftM1ser+ftM1num= ;
                          iaNo+imEs+idIa+itTt+itT0+UPPER(ALLTRIM(icHe))+ ;
                          "*"+isEr+inUm .AND. vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                          UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm=iaNo+imEs+ ;
                          idIa+itTt+itT0+UPPER(ALLTRIM(icHe))+"*"+isEr+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                                    UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm= ;
                                    iaNo+imEs+idIa+itTt+itT0+ ;
                                    UPPER(ALLTRIM(icHe))+"*"+isEr+inUm
                                    DO paN_3558b
                               OTHERWISE
                                    DO seE_3558b WITH "v"
                                    DO diS_3558b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3558b WITH "i", "v"
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+ ;
                     SUBSTR(DTOC(hfEm), 1, 2)
                SET NEAR OFF
                IF EOF() .OR. ftM1ano+ftM1mes+ftM1dia>SUBSTR(DTOC(hfEm),  ;
                   7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2)
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tt0+ ;
                          UPPER(ALLTRIM(ftM1che))+"*"+ftM1ser+ftM1num= ;
                          uaNo+umEs+udIa+utTt+utT0+UPPER(ALLTRIM(ucHe))+ ;
                          "*"+usEr+unUm .AND. vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                          UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm=uaNo+umEs+ ;
                          udIa+utTt+utT0+UPPER(ALLTRIM(ucHe))+"*"+usEr+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                                    UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm= ;
                                    uaNo+umEs+udIa+utTt+utT0+ ;
                                    UPPER(ALLTRIM(ucHe))+"*"+usEr+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3558b
                               OTHERWISE
                                    DO seE_3558b WITH "v"
                                    DO diS_3558b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3558b WITH "u", "v"
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM1ano+ftM1mes+ftM1dia> ;
                          SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4,  ;
                          2)+SUBSTR(DTOC(hfEm), 1, 2)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "N"
                          SKIP
                          IF vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                             UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm=uaNo+umEs+ ;
                             udIa+utTt+utT0+UPPER(ALLTRIM(ucHe))+"*"+usEr+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3558a WITH ifIl, ffIl+1
                               DO li1_3558a WITH ifIl, ffIl+1
                               DO muE_3558b WITH "F", "v"
                               DO muE_3558b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3558b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3558b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM1ano+ftM1mes+ftM1dia< ;
                          SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                          2)+SUBSTR(DTOC(dfEm), 1, 2)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "N"
                          SKIP -1
                          IF vaNo+vmEs+vdIa+vtTt+vtT0+ ;
                             UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm=iaNo+imEs+ ;
                             idIa+itTt+itT0+UPPER(ALLTRIM(icHe))+"*"+isEr+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3558a WITH ifIl, ffIl+1
                               DO li1_3558a WITH ifIl, ffIl+1
                               DO muE_3558b WITH "F", "i"
                               DO muE_3558b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3558b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3558b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3558b WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM1ano+ftM1mes+ftM1dia> ;
                          SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4,  ;
                          2)+SUBSTR(DTOC(hfEm), 1, 2)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3558b
                          STORE ifIl TO vfIl
                          DO muE_3558b WITH "i", "v"
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3558b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM1ano+ftM1mes+ftM1dia< ;
                          SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                          2)+SUBSTR(DTOC(dfEm), 1, 2)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. ftM1ano+ftM1mes+ftM1dia< ;
                             SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm),  ;
                             4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
                               GOTO TOP
                               SET NEAR ON
                               SEEK SUBSTR(DTOC(dfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(dfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(dfEm), 1, 2)
                               SET NEAR OFF
                          ENDIF
                          DO paN_3558b
                          STORE ifIl TO vfIl
                          DO muE_3558b WITH "i", "v"
                          DO seE_3558b WITH "v"
                          DO diS_3558b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3558b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3558b
 STORE ifIl TO vfIl, ufIl
 DO muE_3558b WITH "F", "u"
 DO muE_3558b WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. ftM1ano+ftM1mes+ftM1dia<=SUBSTR(DTOC(hfEm),  ;
    7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2) .AND. vfIl<ffIl+1
      DO diS_3558b WITH "N"
      DO muE_3558b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3558a WITH ufIl+1, ffIl+1
      DO li1_3558a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3558b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
           DO coLscv
      CASE ptIp="R" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
           DO coLblv
      CASE ptIp="N" .AND. ftM1tt0$"CN"
           DO coLscz
      CASE ptIp="R" .AND. ftM1tt0$"CN"
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 @vFIL,mCO0+00.2 Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,mCO0+13.9 Say FTM1SER                         Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,mCO0+19.1 Say FTM1NUM                         Font "&mLetAri",9 Style "NQ" Size 1,10.1
 @vFIL,mCO0+30.3 Say FTM1NTI                         Font "&mLetAri",9 Style "NQ" Size 1,31.8 Pict "@S37"
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+063.2 Say FTM1GLO           Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S44"
           @vFIL,mCO0+106.0 Say FTM1CHE           Font "&mLetAri",9 Style "NQ" Size 1,42.5 Pict "@S45"
           @vFIL,mCO0+149.6 Say vSIG              Font "&mLetAri",9 Style "NQ" Size 1,04.9
           DO CASE
                CASE ftM1ttt="1" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+155.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                     @vFIL,mCO0+170.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
                CASE ftM1ttt="1"
                     @vFIL,mCO0+155.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                     @vFIL,mCO0+170.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
                CASE ftM1ttt="2" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+155.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
                     @vFIL,mCO0+170.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                CASE ftM1ttt="2"
                     @vFIL,mCO0+155.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
                     @vFIL,mCO0+170.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
           ENDCASE
           @vFIL,mCO0+185.6 Say FTM1SLD           Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      CASE mrEs="4"
           @vFIL,mCO0+063.2 Say FTM1GLO           Font "&mLetAri",9 Style "NQ" Size 1,81.7 Pict "@S85"
           @vFIL,mCO0+146.0 Say FTM1CHE           Font "&mLetAri",9 Style "NQ" Size 1,42.5 Pict "@S45"
           @vFIL,mCO0+189.6 Say vSIG              Font "&mLetAri",9 Style "NQ" Size 1,04.9
           DO CASE
                CASE ftM1ttt="1" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+195.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,17.9 Pict "999,999,999.99"
                     @vFIL,mCO0+214.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.9
                CASE ftM1ttt="1"
                     @vFIL,mCO0+195.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,17.9 Pict "999,999,999.99"
                     @vFIL,mCO0+214.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.9
                CASE ftM1ttt="2" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+195.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.9
                     @vFIL,mCO0+214.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,17.9 Pict "999,999,999.99"
                CASE ftM1ttt="2"
                     @vFIL,mCO0+195.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.9
                     @vFIL,mCO0+214.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,17.9 Pict "999,999,999.99"
           ENDCASE
           @vFIL,mCO0+233.6 Say FTM1SLD           Font "&mLetAri",9 Style "NQ" Size 1,17.9 Pict "999,999,999.99"
      OTHERWISE
           @vFIL,mCO0+063.2 Say FTM1GLO           Font "&mLetAri",9 Style "NQ" Size 1,91.7 Pict "@S95"
           @vFIL,mCO0+156.0 Say FTM1CHE           Font "&mLetAri",9 Style "NQ" Size 1,40.5 Pict "@S43"
           @vFIL,mCO0+197.6 Say vSIG              Font "&mLetAri",9 Style "NQ" Size 1,04.9
           DO CASE
                CASE ftM1ttt="1" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+203.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.99"
                     @vFIL,mCO0+225.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,20.9
                CASE ftM1ttt="1"
                     @vFIL,mCO0+203.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.99"
                     @vFIL,mCO0+225.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,20.9
                CASE ftM1ttt="2" .AND. (ftM1tpo=1 .OR. ftM1tt0="D")
                     @vFIL,mCO0+203.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,20.9
                     @vFIL,mCO0+225.6 Say FTM1TO1   Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.99"
                CASE ftM1ttt="2"
                     @vFIL,mCO0+203.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,20.9
                     @vFIL,mCO0+225.6 Say FTM1TOT   Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.99"
           ENDCASE
           @vFIL,mCO0+247.6 Say FTM1SLD           Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Imp_3558b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "VE"
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
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3558b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3558b
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0
           STORE 103 TO ptAm
           STORE 05 TO mcLn
      CASE mvIs=1
           STORE 103 TO ptAm
           STORE 19 TO mcLn
 ENDCASE
 SELECT teMporal
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. ftM1ano+ftM1mes+ftM1dia<=SUBSTR(DTOC(hfEm),  ;
    7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2)
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3558b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN     Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetSwi",9 Style "NQ" Size 1,12.8
                     @vLIN,mCLN+014 Say FTM1SER+"-"+FTM1NUM             Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+028 Say FTM1NTI                         Font "&mLetSwi",9 Style "NQ" Size 1,29   Pict "@S32"
                     @vLIN,mCLN+058 Say FTM1GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,35   Pict "@S38"
                     @vLIN,mCLN+094 Say FTM1CHE                         Font "&mLetSwi",9 Style "NQ" Size 1,25   Pict "@S25"
                     @vLIN,mCLN+150 Say FTM1SLD                         Font "&mLetSwi",9 Style "NQ" Size 1,14.1 Pict "9,999,999.99"
                     DO CASE
                          CASE ftM1ttt="1" .AND. ftM1tpo=1
                               @vLIN,mCLN+120 Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,14.1 Pict "9,999,999.99"
                               @vLIN,mCLN+135 Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="2" .AND. ftM1tpo=1
                               @vLIN,mCLN+135 Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,14.1 Pict "9,999,999.99"
                               @vLIN,mCLN+120 Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+120 Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,14.1 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+135 Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,14.1 Pict "9,999,999.99"
                     ENDCASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+014 Say FTM1SER+"-"+FTM1NUM             Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+031 Say FTM1NTI                         Font "&mLetSwi",9 Style "NQ" Size 1,25   Pict "@S28"
                     @vLIN,mCLN+052 Say FTM1GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,80   Pict "@S80"
                     @vLIN,mCLN+087 Say FTM1CHE                         Font "&mLetSwi",9 Style "NQ" Size 1,25   Pict "@S25"
                     @vLIN,mCLN+140 Say FTM1SLD                         Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                     DO CASE
                          CASE ftM1ttt="1" .AND. ftM1tpo=1
                               @vLIN,mCLN+105   Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                               @vLIN,mCLN+122.5 Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="2" .AND. ftM1tpo=1
                               @vLIN,mCLN+122.5 Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                               @vLIN,mCLN+105   Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+105   Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+122.5 Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN     Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+014 Say FTM1SER+"-"+FTM1NUM             Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+031 Say FTM1NTI                         Font "&mLetSwi",9 Style "NQ" Size 1,25   Pict "@S28"
                     @vLIN,mCLN+052 Say FTM1GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,80   Pict "@S80"
                     @vLIN,mCLN+087 Say FTM1CHE                         Font "&mLetSwi",9 Style "NQ" Size 1,25   Pict "@S25"
                     @vLIN,mCLN+140 Say FTM1SLD                         Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                     DO CASE
                          CASE ftM1ttt="1" .AND. ftM1tpo=1
                               @vLIN,mCLN+105   Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                               @vLIN,mCLN+122.5 Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="2" .AND. ftM1tpo=1
                               @vLIN,mCLN+122.5 Say FTM1TO1          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                               @vLIN,mCLN+105   Say "* POR RENDIR *" Font "&mLetSwi",9 Style "NQ"
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+105   Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+122.5 Say FTM1TOT          Font "&mLetSwi",9 Style "NQ" Size 1,17.3 Pict "9,999,999.99"
                     ENDCASE
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT teMporal
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3558b
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
      @vLIN,mCLN Say "Movimientos del "+AllTrim(vNBA)+" del "+vNCT Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",9 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN     Say "Fecha"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+014 Say "Voucher"         Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+028 Say "Tipo-Movimiento" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+058 Say "Glosa"           Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+094 Say "#Movimiento"     Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+124 Say "Ingresos"        Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+139 Say "Egresos"         Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+156 Say "Saldos"          Font "&mLetAri",9 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Fecha"           Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+014 Say "Voucher"         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+031 Say "Tipo-Movimiento" Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+052 Say "Glosa"           Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+087 Say "#Movimiento"     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+110 Say "Ingresos"        Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+128 Say "Egresos"         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+146 Say "Saldos"          Font "&mLetAri",9 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Fecha"           Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+014 Say "Voucher"         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+031 Say "Tipo-Movimiento" Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+052 Say "Glosa"           Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+087 Say "#Movimiento"     Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+110 Say "Ingresos"        Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+128 Say "Egresos"         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+146 Say "Saldos"          Font "&mLetAri",9 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Res_3558b
 SET READBORDER ON
 DO reS_3558a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3558b WITH "R"
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
PROCEDURE Tip_3558b
 = INKEY(0.01)
 SELECT teMporal_2
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE ftM2ttt TO ctTt
      STORE ftM2tpo TO ctPo
      STORE ftM2tip TO ctIp
      IF ctIp="**"
           SELECT teMporal
           SET FILTER TO
      ELSE
           SELECT teMporal
           SET FILTER TO ftM1ttt=ctTt .AND. ftM1tpo=ctPo .AND. ftM1tip=ctIp
      ENDIF
      GOTO TOP
      DO paN_3558b
      STORE ifIl TO vfIl
      DO muE_3558b WITH "i", "v"
      DO seE_3558b WITH "v"
      DO diS_3558b WITH "R"
      DO toT_3558a
      SELECT teMporal
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_3558b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaNo+vmEs+vdIa+vtTt+vtT0+UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
      CASE psEe="i"
           SEEK iaNo+imEs+idIa+itTt+itT0+UPPER(ALLTRIM(icHe))+"*"+isEr+inUm
      CASE psEe="u"
           SEEK uaNo+umEs+udIa+utTt+utT0+UPPER(ALLTRIM(ucHe))+"*"+usEr+unUm
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3558b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE itTt TO vtTt
           STORE itT0 TO vtT0
           STORE icHe TO vcHe
           STORE isEr TO vsEr
           STORE inUm TO vnUm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
           STORE vtTt TO ctTt
           STORE vtT0 TO ctT0
           STORE vcHe TO ccHe
           STORE vsEr TO csEr
           STORE vnUm TO cnUm
      CASE pmU1="c" .AND. pmU2="v"
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
           STORE ctTt TO vtTt
           STORE ctT0 TO vtT0
           STORE ccHe TO vcHe
           STORE csEr TO vsEr
           STORE cnUm TO vnUm
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE utTt TO vtTt
           STORE utT0 TO vtT0
           STORE ucHe TO vcHe
           STORE usEr TO vsEr
           STORE unUm TO vnUm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
           STORE vtTt TO itTt
           STORE vtT0 TO itT0
           STORE vcHe TO icHe
           STORE vsEr TO isEr
           STORE vnUm TO inUm
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM1ano TO vaNo
           STORE ftM1mes TO vmEs
           STORE ftM1dia TO vdIa
           STORE ftM1ttt TO vtTt
           STORE ftM1tt0 TO vtT0
           STORE ftM1che TO vcHe
           STORE ftM1ser TO vsEr
           STORE ftM1num TO vnUm
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM1ano TO iaNo
           STORE ftM1mes TO imEs
           STORE ftM1dia TO idIa
           STORE ftM1ttt TO itTt
           STORE ftM1tt0 TO itT0
           STORE ftM1che TO icHe
           STORE ftM1ser TO isEr
           STORE ftM1num TO inUm
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM1ano TO uaNo
           STORE ftM1mes TO umEs
           STORE ftM1dia TO udIa
           STORE ftM1ttt TO utTt
           STORE ftM1tt0 TO utT0
           STORE ftM1che TO ucHe
           STORE ftM1ser TO usEr
           STORE ftM1num TO unUm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3558b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+51
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=vfB3-0.014 .AND. mfIl<=vfB3+1.2 .AND. mcCc>=vcB3-0.700  ;
           .AND. mcCc<=vcB3+3.7
           DO tiP_3558b
           SELECT teMporal
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3558b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3558b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3558b WITH "F", "v"
           DO diS_3558b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3558b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Movimientos de Ban-"
 @ pfIl+01, 02 SAY  ;
   "cos, ordenados por día y número de Voucher. Algunos movimientos se di-"
 @ pfIl+02, 02 SAY "ferencian por colores:"
 @ pfIl+03, 08 SAY "- Verde"
 @ pfIl+04, 08 SAY "- Verde"
 @ pfIl+05, 08 SAY "- Azul"
 @ pfIl+06, 08 SAY "- Rojo"
 @ pfIl+07, 08 SAY "- Negro"
 @ pfIl+03, 16 SAY ": Movimientos x Rendir. No se suman a los saldos."
 @ pfIl+04, 16 SAY ": Letras en Descuento. No se suman a los saldos."
 @ pfIl+05, 16 SAY ": Cancelaciones de Letras en Cartera y Cobranza."
 @ pfIl+06, 16 SAY ": Documentos errados, pertenecen a otra moneda."
 @ pfIl+07, 16 SAY ": Movimientos comunes."
 @ pfIl+09, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+11 TO pfIl
 @ pfIl+00, 30 SAY ":" STYLE "BT"
 @ pfIl+01, 30 SAY ":" STYLE "BT"
 @ pfIl+02, 30 SAY ":" STYLE "BT"
 @ pfIl+03, 30 SAY ":" STYLE "BT"
 @ pfIl+04, 30 SAY ":" STYLE "BT"
 @ pfIl+05, 30 SAY ":" STYLE "BT"
 @ pfIl+06, 30 SAY ":" STYLE "BT"
 @ pfIl+07, 30 SAY ":" STYLE "BT"
 @ pfIl+08, 30 SAY ":" STYLE "BT"
 @ pfIl+09, 30 SAY ":" STYLE "BT"
 @ pfIl+00, 12 SAY "ESC" STYLE "BT"
 @ pfIl+01, 12 SAY "F10" STYLE "BT"
 @ pfIl+02, 12 SAY "F1" STYLE "BT"
 @ pfIl+03, 12 SAY "F8" STYLE "BT"
 @ pfIl+04, 12 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+05, 12 SAY "PAGE UP" STYLE "BT"
 @ pfIl+06, 12 SAY "HOME" STYLE "BT"
 @ pfIl+07, 12 SAY "END" STYLE "BT"
 @ pfIl+08, 12 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 12 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+00, 32 SAY "Regresar a Cabecera"
 @ pfIl+01, 32 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 32 SAY "Ayuda del Programa"
 @ pfIl+03, 32 SAY "Pasar Datos a Excel"
 @ pfIl+04, 32 SAY "Página siguiente"
 @ pfIl+05, 32 SAY "Página anterior"
 @ pfIl+06, 32 SAY "Primera línea"
 @ pfIl+07, 32 SAY "Última línea"
 @ pfIl+08, 32 SAY "Línea inferior"
 @ pfIl+09, 32 SAY "Línea superior"
 STORE pfIl+10 TO pfIl
 @ pfIl, 30 SAY ":" STYLE "BT"
 @ pfIl, 12 SAY "CTRL P" STYLE "BT"
 @ pfIl, 32 SAY "Imprimir Bancos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
