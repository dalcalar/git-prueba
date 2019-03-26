 = INKEY(0.01)
 STORE 1 TO vsW1
 SET ORDER TO FTM2PRV
 DO p00_2430e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2430e
 STORE 999 TO mkEy
 STORE icOd TO vcOd
 STORE idEs TO vdEs
 STORE ifIl TO vfIl
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(vcOd)+"*"
      CASE vsW1=2
           SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2430e WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2430e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2430e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2430e
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2430e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF mkEy=k_Right
                     DO CASE
                          CASE vsW1=2
                               STORE 1 TO vsW1
                          OTHERWISE
                               STORE vsW1+1 TO vsW1
                     ENDCASE
                ELSE
                     DO CASE
                          CASE vsW1=1
                               STORE 2 TO vsW1
                          OTHERWISE
                               STORE vsW1-1 TO vsW1
                     ENDCASE
                ENDIF
                DO caM_2430e
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_12
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Compras_x_Proveedor_del_"+vFEC+"_Prv_"+AllTrim(dPRV)+"_al_"+AllTrim(hPRV)+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2PRV,FTM2NOM,FTM2TO1,FTM2TO2 Type XLS
                     ENDCASE
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SEEK ALLTRIM(vcOd)+"*"
                     CASE vsW1=2
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                ENDCASE
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2430e
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SEEK ALLTRIM(vcOd)+"*"
                     CASE vsW1=2
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                ENDCASE
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_12
                STORE ftM2to1 TO ttT1
                STORE ftM2to2 TO ttT2
                DO paR2431e
                RESTORE SCREEN FROM vpAn_12
                SELECT teMporal_2
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2prv)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_2430e
                               OTHERWISE
                                    DO CASE
                                         CASE vsW1=1
                                              SEEK ALLTRIM(vcOd)+"*"
                                         CASE vsW1=2
                                              SEEK UPPER(vdEs)+ ;
                                               ALLTRIM(vcOd)+"*"
                                    ENDCASE
                                    DO diS_2430e WITH "N"
                          ENDCASE
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2prv)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2430e
                               OTHERWISE
                                    DO CASE
                                         CASE vsW1=1
                                              SEEK ALLTRIM(vcOd)+"*"
                                         CASE vsW1=2
                                              SEEK UPPER(vdEs)+ ;
                                               ALLTRIM(vcOd)+"*"
                                    ENDCASE
                                    DO diS_2430e WITH "N"
                          ENDCASE
                          STORE ucOd TO vcOd
                          STORE udEs TO vdEs
                          STORE ufIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2430e WITH ifIl, ffIl+1
                               STORE ftM2prv TO ucOd, vcOd
                               STORE ftM2nom TO udEs, vdEs
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM2prv TO icOd
                               STORE ftM2nom TO idEs
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM2prv TO vcOd
                               STORE ftM2nom TO vdEs
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2430e WITH ifIl, ffIl+1
                               STORE ftM2prv TO icOd, vcOd
                               STORE ftM2nom TO idEs, vdEs
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM2prv TO ucOd
                                    STORE ftM2nom TO udEs
                               ENDIF
                          ELSE
                               STORE ftM2prv TO vcOd
                               STORE ftM2nom TO vdEs
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsW1=1
                          SEEK ALLTRIM(ucOd)+"*"
                     CASE vsW1=2
                          SEEK UPPER(udEs)+ALLTRIM(ucOd)+"*"
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2430e
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsW1=1
                          SEEK ALLTRIM(icOd)+"*"
                     CASE vsW1=2
                          SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
                ENDCASE
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2430e
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK ALLTRIM(vcOd)+"*"
                               CASE vsW1=2
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2430e WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsW1=1
                     SEEK ALLTRIM(vcOd)+"*"
                CASE vsW1=2
                     SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           ENDCASE
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2430e
 STORE ifIl TO vfIl, ufIl
 STORE ftM2prv TO icOd, ucOd
 STORE ftM2nom TO idEs, udEs
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_2430e WITH "N"
      STORE ftM2prv TO ucOd
      STORE ftM2nom TO udEs
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, piCl CLEAR TO ffIl+1, puCl
      DO liN_2430e WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2430e
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pICL+000.2 Say FTM2PRV Font "&mLetAri",9 Style "NQ" Size 1,022.3 Pict "@S15"
 @vFIL,pICL+023.7 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,137.5 Pict "@S80"
 @vFIL,pICL+162.2 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,019.7 Pict "999,999,999.99"
 @vFIL,pICL+183.1 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,019.7 Pict "999,999,999.99"
ENDPROC
*
PROCEDURE Lin_2430e
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+023.1 TO pfIn, piCl+023.1
 @ piNi, piCl+161.6 TO pfIn, piCl+161.6
 @ piNi, piCl+182.4 TO pfIn, piCl+182.4
ENDPROC
*
PROCEDURE Cam_2430e
 DO CASE
      CASE vsW1=1
           SET ORDER TO FTM2PRV
      CASE vsW1=2
           SET ORDER TO FTM2NOM
 ENDCASE
 DO boT_2430e
 GOTO TOP
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(icOd)+"*"
      CASE vsW1=2
           SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
 ENDCASE
 DO paN_2430e
 STORE icOd TO vcOd
 STORE idEs TO vdEs
 STORE ifIl TO vfIl
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(vcOd)+"*"
      CASE vsW1=2
           SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2430e WITH "R"
ENDPROC
*
PROCEDURE P00_2430e
 RESTORE SCREEN FROM vpAn_99
 STORE piCl+00.0 TO vcB1
 STORE piCl+23.7 TO vcB2
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
 STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
 @fFIL+1.8,pICL Say "Del ["+dPRV+"] al ["+hPRV+"]" Font "&mLetRom",11 Style "BT" Color 8+
 @fFIL+3.8,pICL Say "Compras x Proveedor "+vFEC    Font "&mLetRom",18 Style "BT" Color 7+
 DO liN_2430e WITH ifIl-1.9, ffIl+1.6
 @ ffIl+1.6, piCl+161.6 TO ffIl+3.3, piCl+161.6
 @ ffIl+1.6, piCl+182.3 TO ffIl+3.3, piCl+182.3
 DO coLsc3
 @iFIL-1.7,pICL+006.7 Say "Código"              Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+073.8 Say "Nombre/Razón Social" Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+167.5 Say "Total S/."           Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+186.9 Say "Total US$"           Font "&mLetAri",9 Style "NQ"
 @fFIL+1.9,pICL+140.0 Say "TOTALES:"            Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE ttO1>9999999.99
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      CASE ttO1>999999.99
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 DO CASE
      CASE ttO2>9999999.99
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      CASE ttO2>999999.99
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 DO boT_2430e
ENDPROC
*
PROCEDURE Bot_2430e
 DO prEsiona WITH "3", "CONSU3", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW1=1
           DO prEsiona WITH "1", "CONSU3", vfB1, vcB1
      CASE vsW1=2
           DO prEsiona WITH "1", "CONSU3", vfB2, vcB2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_2430e
 STORE 0 TO mvIs
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2430e
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2430e
 PRIVATE ptAm, psW0
 STORE 98 TO ptAm
 STORE 04 TO mcLn
 GOTO TOP
 STORE 0 TO vlIn, vpAg
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2430e
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM2PRV Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S15"
                     @vLIN,mCLN+016.0 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,60.5 Pict "@S63"
                     @vLIN,mCLN+088.5 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+108.0 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM2PRV Font "&mLetRom",10 Style "NQ" Size 1,15   Pict "@S15"
                     @vLIN,mCLN+016.0 Say FTM2NOM Font "&mLetRom",10 Style "NQ" Size 1,60.5 Pict "@S63"
                     @vLIN,mCLN+088.5 Say FTM2TO1 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+108.0 Say FTM2TO2 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
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
      ENDCASE
      IF psW0=1
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+088.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+108.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+088.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+108.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+089   Say "TOTAL GENERAL" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+088.5 Say tTO1            Font "&mLetAri",9 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+108.0 Say tTO2            Font "&mLetAri",9 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+089   Say "TOTAL GENERAL" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+088.5 Say tTO1            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+108.0 Say tTO2            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2430e
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
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
      STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
      @vLIN,mCLN Say "Compras x Proveedor "+vFEC Font "&mLetRom",13 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde: "+AllTrim(dPRV)+" hasta "+AllTrim(hPRV) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "CÓDIGO"              Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+016.0 Say "NOMBRE/RAZÓN SOCIAL" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+094.0 Say "TOTAL S/."           Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+112.5 Say "TOTAL US$"           Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "CÓDIGO"              Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+016.0 Say "NOMBRE/RAZÓN SOCIAL" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+094.0 Say "TOTAL S/."           Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+112.5 Say "TOTAL US$"           Font "&mLetRom",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Res_2430e
 DO reS_2430b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2430e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(icOd)+"*"
      CASE vsW1=2
           SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
 ENDCASE
 DO paN_2430e
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(icOd)+"*"
      CASE vsW1=2
           SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
 ENDCASE
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2prv)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      STORE icOd TO vcOd
      STORE idEs TO vdEs
      STORE ifIl TO vfIl
 ENDIF
 DO CASE
      CASE vsW1=1
           SEEK ALLTRIM(vcOd)+"*"
      CASE vsW1=2
           SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2430e WITH "R"
ENDPROC
*
PROCEDURE Clp_2430e
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
      CASE mfIl>=vfB1-0.1 .AND. mfIl<=vfB1+0.464 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+1.8 .AND. vsW1<>1
           STORE 01 TO vsW1
           DO caM_2430e
           STORE 99 TO mkEy
      CASE mfIl>=vfB2-0.1 .AND. mfIl<=vfB2+0.464 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+1.8 .AND. vsW1<>2
           STORE 02 TO vsW1
           DO caM_2430e
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2430e WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO CASE
                CASE vsW1=1
                     SEEK ALLTRIM(icOd)+"*"
                CASE vsW1=2
                     SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
           ENDCASE
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           STORE ftM2prv TO vcOd
           STORE ftM2nom TO vdEs
           DO diS_2430e WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2430e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Proveedores con sus"
 @ pfIl+01, 02 SAY  ;
   "Montos en Soles y Dólares, en el rango de fechas seleccionado."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+15, 29 SAY ":" STYLE "BT"
 @ pfIl+16, 29 SAY ":" STYLE "BT"
 @ pfIl+17, 29 SAY ":" STYLE "BT"
 @ pfIl+18, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "F8" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+12, 11 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+13, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+14, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+15, 11 SAY "HOME" STYLE "BT"
 @ pfIl+16, 11 SAY "END" STYLE "BT"
 @ pfIl+17, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+18, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Pasar Datos a Excel"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Cambiar de Orden de Consulta"
 @ pfIl+12, 31 SAY "Cambiar de Orden de Consulta"
 @ pfIl+13, 31 SAY "Página siguiente"
 @ pfIl+14, 31 SAY "Página anterior"
 @ pfIl+15, 31 SAY "Primera línea"
 @ pfIl+16, 31 SAY "Última línea"
 @ pfIl+17, 31 SAY "Imprimir Reporte"
 @ pfIl+18, 31 SAY "Ver Detalle x Documento"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
