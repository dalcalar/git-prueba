 = INKEY(0.01)
 SELECT teMporal_2
 SET ORDER TO FTM2DES
 STORE 1 TO vsW3, vsW4
 DO p00_2430j
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2430j
 STORE 999 TO mkEy
 STORE icOd TO vcOd
 STORE idEs TO vdEs
 STORE ifIl TO vfIl
 SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 DO diS_2430j WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2430j
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2430j
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2430j
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2430j
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_12
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Compras_x_Producto_Pedido_del_"+vFEC+"_del_Prod_"+AllTrim(dCOD)+"_al_"+AllTrim(hCOD)+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2COD,FTM2DES,FTM2NUC,FTM2NUX,FTM2CAN,FTM2TO1,FTM2TO2 Type XLS
                     ENDCASE
                ENDIF
                SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2430j
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           CASE mkEy=k_Enter
                DO paR2431j
                SELECT teMporal_2
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_2430j
                               OTHERWISE
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                                    DO diS_2430j WITH "N"
                          ENDCASE
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2430j
                               OTHERWISE
                                    SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                                    DO diS_2430j WITH "N"
                          ENDCASE
                          STORE ucOd TO vcOd
                          STORE udEs TO vdEs
                          STORE ufIl TO vfIl
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, piCl, ffIl, puC3-1, 1
                               DO liN_2430j WITH ifIl, ffIl+1
                               STORE ftM2cod TO ucOd, vcOd
                               STORE ftM2des TO udEs, vdEs
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM2cod TO icOd
                               STORE ftM2des TO idEs
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM2cod TO vcOd
                               STORE ftM2des TO vdEs
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, piCl, ffIl, puC3-1, 1
                               DO liN_2430j WITH ifIl, ffIl+1
                               STORE ftM2cod TO icOd, vcOd
                               STORE ftM2des TO idEs, vdEs
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM2cod TO ucOd
                                    STORE ftM2des TO udEs
                               ENDIF
                          ELSE
                               STORE ftM2cod TO vcOd
                               STORE ftM2des TO vdEs
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK UPPER(udEs)+ALLTRIM(ucOd)+"*"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2430j
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2430j
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifIl TO vfIl
                          SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                          DO diS_2430j WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2430j
 STORE ifIl TO vfIl, ufIl
 STORE ftM2cod TO icOd, ucOd
 STORE ftM2des TO idEs, udEs
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_2430j WITH "N"
      STORE ftM2cod TO ucOd
      STORE ftM2des TO udEs
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, piCl CLEAR TO ffIl+1, puC3
      DO liN_2430j WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2430j
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pICL+000.2 Say FTM2COD Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFIL,pICL+013.6 Say FTM2DES Font "&mLetAri",9 Style "NQ" Size 1,61.7 Pict "@S64"
 @vFIL,pICL+076.5 Say FTM2NUC Font "&mLetAri",9 Style "NQ" Size 1,06.8 Pict "@S09"
 @vFIL,pICL+084.2 Say FTM2CAN Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "99999,999.9999"
 @vFIL,pICL+105.0 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 @vFIL,pICL+125.8 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 IF ptIp="R"
      STORE ftM2to1 TO ttT1
      STORE ftM2to2 TO ttT2
      STORE ftM2cod TO vcOd
      STORE ftM2des TO vdEs
      DO coL_beige
      @iFFS-3.4,pIC4 Say "Prod: "+AllTrim(vCOD)+" "+vDES Font "&mLetRom",12 Style "BQ" Size 1,38 Pict "@S41"
      SELECT teMporal_3
      SEEK ALLTRIM(vcOd)+"*"
      STORE ifFs TO vfFs
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3cod)+"*"=ALLTRIM(vcOd)+"*"  ;
         .AND. vfFs<ffFs+1
           DO diS_2431j IN PAR2431J WITH "N"
           STORE vfFs TO ufFs
           STORE vfFs+1 TO vfFs
           SKIP
      ENDDO
      IF ufFs+1<=ffFs
           DO coL_beige
           @ ufFs+1, piC4 CLEAR TO ffFs+1, puC4
           DO liN_2431j IN PAR2431J WITH ufFs+1, ffFs+1
      ENDIF
      DO coLsc7
      DO CASE
           CASE ttT1>999999999.99
                @fFFS+1.9,pIC4+13.1 Say tTT1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
           OTHERWISE
                @fFFS+1.9,pIC4+13.1 Say tTT1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      ENDCASE
      DO CASE
           CASE ttT2>999999999.99
                @fFFS+1.9,pIC4+33.9 Say tTT2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
           OTHERWISE
                @fFFS+1.9,pIC4+33.9 Say tTT2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      ENDCASE
      SELECT teMporal_2
 ENDIF
ENDPROC
*
PROCEDURE Lin_2430j
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+013.0 TO pfIn, piCl+013.0
 @ piNi, piCl+075.9 TO pfIn, piCl+075.9
 @ piNi, piCl+083.6 TO pfIn, piCl+083.6
 @ piNi, piCl+104.4 TO pfIn, piCl+104.4
 @ piNi, piCl+125.2 TO pfIn, piCl+125.2
ENDPROC
*
PROCEDURE P00_2430j
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
 DO cuAdro WITH ifIl-1.9, piCl, ffIl+3.5, puC3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.8, piCl-0.6 TO ifIl-0.4, puC3 PATTERN 1
 @ ffIl+1.6, piCl-0.6 TO ffIl+3.4, puC3 PATTERN 1
 STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
 DO CASE
      CASE vfTp=1
           @fFIL+3.8,pICL Say "Compras x Producto/Pedido del Producto: ["+dCOD+"] al ["+hCOD+"]"              Font "&mLetRom",17 Style "BT" Color 7+
           @fFIL+5.8,pICL Say "Del Pedido: ["+dPED+"] al ["+hPED+"]"                                          Font "&mLetRom",17 Style "BT" Color 7+
      CASE vfTp=2
           @fFIL+3.8,pICL Say "Compras x Producto/Pedido del Producto: ["+dCOD+"] al ["+hCOD+"]"              Font "&mLetRom",17 Style "BT" Color 7+
           @fFIL+5.8,pICL Say "Del ["+Dtoc(dFEM)+"] al ["+Dtoc(hFEM)+"] Del Pedido: ["+dPED+"] al ["+hPED+"]" Font "&mLetAri",14 Style "NT" Color 7+
 ENDCASE
 DO coLplp
 @ ffIl+1.6, piCl+104.4 TO ffIl+3.3, piCl+104.4
 @ ffIl+1.6, piCl+125.2 TO ffIl+3.3, piCl+125.2
 DO coLsc3
 @fFIL+1.9,pICL+091.0 Say "TOTALES:"    Font "&mLetAri",9 Style "BQ"
 @iFIL-1.7,pICL+002.4 Say "Código"      Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+013.6 Say "Descripción" Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+077.4 Say "Uni"         Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+089.0 Say "Cantidad"    Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+111.0 Say "Total S/."   Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+130.2 Say "Total US$"   Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE ttO1>999999999.99
           @fFIL+1.9,pICL+105.0 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9999999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+105.0 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 DO CASE
      CASE ttO2>999999999.99
           @fFIL+1.9,pICL+125.8 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "9999999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+125.8 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 STORE 1 TO vsW2
 DO p01_2430j
 DO p02_2430j
ENDPROC
*
PROCEDURE P01_2430j
 DO coLsc3
 DO liN_2430j WITH ifIl-1.8, ffIl+1.6
ENDPROC
*
PROCEDURE P02_2430j
 DO coL_beige
 DO cuAdro WITH ifFs-3.5, piC4, ffFs+3.5, puC4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @ ifFs-1.8, piC4-0.6 TO ifFs-0.4, puC4+0.3 PATTERN 1
 @ ffFs+1.6, piC4-0.6 TO ffFs+3.4, puC4+0.3 PATTERN 1
 DO coLsc7
 @iFFS-1.7,pIC4+0.3 Say "Pedido"   Font "&mLetAri",9 Style "NQ"
 @fFFS+1.9,pIC4+0.2 Say "TOTALES:" Font "&mLetAri",9 Style "BQ"
 DO p03_2430j
ENDPROC
*
PROCEDURE P03_2430j
 DO coL_beige
 @ ifFs-0.4, piC4+12.5 CLEAR TO ifFs+0.0, puC4-0.1
 @ ffFs+1.0, piC4+12.5 CLEAR TO ffFs+1.6, puC4-0.1
 DO coLsc7
 @ ifFs-1.75, piC4+12.5 CLEAR TO ifFs-0.45, puC4-0.1
 DO CASE
      CASE vsW4=1
           @iFFS-1.7,pIC4+19.2 Say "Total S/." Font "&mLetAri",9 Style "NQ"
           @iFFS-1.7,pIC4+38.2 Say "Total U$"  Font "&mLetAri",9 Style "NQ"
      CASE vsW4=2
           @iFFS-1.7,pIC4+38.2 Say "Cantidad"  Font "&mLetAri",9 Style "NQ"
 ENDCASE
 DO liN_2431j IN PAR2431J WITH ifFs-1.8, ffFs+3.3
 DO prEsiona WITH "1", "ABREI", ifFs-1.8, puC4-5.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU5", ifFs-1.6, puC4-3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ABRED", ifFs-1.8, puC4-1.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_2430j
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
 DO reP_2430j
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2430j
 PRIVATE ptAm, psW0
 STORE 92 TO ptAm
 STORE 01 TO mcLn
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
           DO caB_2430j
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM2COD Font "&mLetAri",9 Style "BQ" Size 1,07.5 Pict "@S10"
                     @vLIN,mCLN+010.0 Say FTM2DES Font "&mLetAri",9 Style "BQ" Size 1,62.5 Pict "@S66"
                     @vLIN,mCLN+087.2 Say FTM2CAN Font "&mLetAri",9 Style "BQ" Size 1,15.1 Pict "9999,999.9999"
                     @vLIN,mCLN+107.5 Say FTM2TO1 Font "&mLetAri",9 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                     @vLIN,mCLN+128.0 Say FTM2TO2 Font "&mLetAri",9 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM2COD Font "&mLetRom",10 Style "BQ" Size 1,07.5 Pict "@S10"
                     @vLIN,mCLN+010.0 Say FTM2DES Font "&mLetRom",10 Style "BQ" Size 1,62.5 Pict "@S66"
                     @vLIN,mCLN+087.2 Say FTM2CAN Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "9999,999.9999"
                     @vLIN,mCLN+107.5 Say FTM2TO1 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                     @vLIN,mCLN+128.0 Say FTM2TO2 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ftM2cod TO ccOd
      SELECT teMporal_3
      SET ORDER TO FTM3CPE
      GOTO TOP
      SEEK ALLTRIM(ccOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3cod)+"*"=ALLTRIM(ccOd)+"*"
           IF mkEy=k_F10 .AND. mvIs=1
                DO reTorna
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           STORE vlIn+1.4 TO vlIn
           IF vpAg=0 .OR. vlIn>mpAg-4
                DO caB_2430j
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+010.0 Say FTM3PED Font "&mLetAri",9  Style "NQ" Size 1,12   Pict "@S12"
                          @vLIN,mCLN+087.2 Say FTM3CAN Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "9999,999.9999"
                          @vLIN,mCLN+107.5 Say FTM3TO1 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+127.8 Say FTM3TO2 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+010.0 Say FTM3PED Font "&mLetRom",10 Style "NQ" Size 1,12   Pict "@S12"
                          @vLIN,mCLN+087.2 Say FTM3CAN Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "9999,999.9999"
                          @vLIN,mCLN+107.5 Say FTM3TO1 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+127.8 Say FTM3TO2 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                ENDCASE
           ENDIF
           SKIP
      ENDDO
      SELECT teMporal_2
      SKIP
      IF EOF()
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+107.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+128.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+107.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+128.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+087   Say "TOTAL GENERAL" Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+107.5 Say tTO1            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+128.0 Say tTO2            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+087   Say "TOTAL GENERAL" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+107.5 Say tTO1            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+128.0 Say tTO2            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2430j
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
      @vLIN,mCLN Say "Compras x Producto/Pedido "+vFEC Font "&mLetRom",13 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde Producto: "+AllTrim(dCOD)+" hasta "+AllTrim(hCOD) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde Pedido: "+AllTrim(dPED)+" hasta "+AllTrim(hPED) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "PRODUCTO/Pedido" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+092.4 Say "CANTIDAD"        Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+113.4 Say "TOTAL S/."       Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132.2 Say "TOTAL US$"       Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "PRODUCTO/Pedido" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+092.4 Say "CANTIDAD"        Font "&mLetRom",9 Style "NQ"
                @vLIN,mCLN+113.4 Say "TOTAL S/."       Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132.2 Say "TOTAL US$"       Font "&mLetRom",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Res_2430j
 DO reS_2430b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ffIl-2 TO ffIl
 STORE ffFs-2 TO ffFs
 SAVE SCREEN TO vpAn_11
 DO p00_2430j
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
 DO paN_2430j
 SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM2cod)+"*"
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
 SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 DO diS_2430j WITH "R"
ENDPROC
*
PROCEDURE Clp_2430j
 = INKEY(0.01)
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
      CASE mfIl>=ifFs-1.892 .AND. mfIl<=ifFs-0.892 .AND. mcCc>=puC4-5.2  ;
           .AND. mcCc<=puC4-3.2
           IF vsW4=1
                STORE 2 TO vsW4
           ELSE
                STORE 1 TO vsW4
           ENDIF
           DO p03_2430j
           DO diS_2430j WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-1.892 .AND. mfIl<=ifFs-0.892 .AND. mcCc>=puC4-1.6  ;
           .AND. mcCc<=puC4+0.6
           IF vsW4=1
                STORE 2 TO vsW4
           ELSE
                STORE 1 TO vsW4
           ENDIF
           DO p03_2430j
           DO diS_2430j WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puC3
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puC3
           DO diS_2430j WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           STORE ftM2cod TO vcOd
           STORE ftM2des TO vdEs
           DO diS_2430j WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2430j
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Productos con sus"
 @ pfIl+01, 02 SAY  ;
   "cantidades, Montos en Soles y Dólares, en el rango de fechas seleccio-"
 @ pfIl+02, 02 SAY "nados."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+19, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F8" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 11 SAY "HOME" STYLE "BT"
 @ pfIl+15, 11 SAY "END" STYLE "BT"
 @ pfIl+16, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+17, 11 SAY "CTRL -->" STYLE "BT"
 @ pfIl+18, 11 SAY "CTRL <--" STYLE "BT"
 @ pfIl+19, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Pasar Datos a Excel"
 @ pfIl+10, 31 SAY "Línea inferior"
 @ pfIl+11, 31 SAY "Línea superior"
 @ pfIl+12, 31 SAY "Página siguiente"
 @ pfIl+13, 31 SAY "Página anterior"
 @ pfIl+14, 31 SAY "Primera línea"
 @ pfIl+15, 31 SAY "Última línea"
 @ pfIl+16, 31 SAY "Imprimir Reporte"
 @ pfIl+17, 31 SAY "Cambiar de cantidad a Montos y vicev."
 @ pfIl+18, 31 SAY "Cambiar de cantidad a Montos y vicev."
 @ pfIl+19, 31 SAY "Ver Detalle x Pedido"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
