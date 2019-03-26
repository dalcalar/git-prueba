 PARAMETER ppRg
 = INKEY(0.01)
 DO p00_3600c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 GOTO TOP
 DO paN_3600c IN PCC3600C
 STORE ifFs TO vfFs
 DO muE_3600c IN PCC3600C WITH "i", "v"
 DO seE_3600c IN PCC3600C WITH "v"
 DO diS_3600c IN PCC3600C WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3600c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3600c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vXLS=PutFile("Archivo Excel:","&mVIN"+"DETALLE_CTAS_DE_"+vTDO+"_"+vSER+"_"+vDOC+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               PRIVATE pdOc, pfEm, pgLo, pbAn, pcTa, pcHe,  ;
                                       ptCa, pmOn, ppAg
                               SELECT tmP_excel_2
                               ZAP
                               SELECT paGos
                               GOTO TOP
                               DO WHILE  .NOT. EOF()
                                    STORE ftM2ano+"-"+ftM2mes+"-"+ftM2ser+ ;
                                     "-"+ftM2num TO pdOc
                                    STORE ftM2dia+"/"+ftM2mes+"/"+ftM2ano  ;
                                     TO pfEm
                                    STORE ftM2glo TO pgLo
                                    STORE ftM2nba TO pbAn
                                    STORE ftM2nct TO pcTa
                                    STORE ftM2che TO pcHe
                                    STORE ftM2tca TO ptCa
                                    STORE ftM2mon TO pmOn
                                    STORE ftM2pag TO ppAg
                                    SELECT tmP_excel_2
                                    APPEND BLANK
                                    REPLACE doCumen WITH pdOc
                                    REPLACE feCha WITH pfEm
                                    REPLACE glOsa WITH pgLo
                                    REPLACE baNco WITH pbAn
                                    REPLACE cuEnta WITH pcTa
                                    REPLACE opErac WITH pcHe
                                    REPLACE t_Camb WITH ptCa
                                    REPLACE paGo WITH ppAg
                                    DO CASE
                                         CASE pmOn=1
                                              REPLACE moNeda WITH "S/."
                                         CASE pmOn=2
                                              REPLACE moNeda WITH "US$"
                                    ENDCASE
                                    SELECT paGos
                                    SKIP
                               ENDDO
                               SELECT tmP_excel_2
                               GOTO TOP
                               Export to &vXLS Type XLS
                               DO xlS_0000a
                               RELEASE pdOc, pfEm, pgLo, pbAn, pcTa, pcHe,  ;
                                       ptCa, pmOn, ppAg
                     ENDCASE
                ENDIF
                SELECT paGos
                DO seE_3600c IN PCC3600C WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3600c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT paGos
                DO seE_3600c IN PCC3600C WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num= ;
                          iaN1+imE1+idI1+itTt+isR1+inUm .AND. vaN1+vmE1+ ;
                          vdI1+vtTt+vsR1+vnUm=iaN1+imE1+idI1+itTt+isR1+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=iaN1+ ;
                                    imE1+idI1+itTt+isR1+inUm
                                    DO paN_3600c IN PCC3600C
                               OTHERWISE
                                    DO seE_3600c IN PCC3600C WITH "v"
                                    DO diS_3600c IN PCC3600C WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3600c IN PCC3600C WITH "i", "v"
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num= ;
                          uaN1+umE1+udI1+utTt+usR1+unUm .AND. vaN1+vmE1+ ;
                          vdI1+vtTt+vsR1+vnUm=uaN1+umE1+udI1+utTt+usR1+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=uaN1+ ;
                                    umE1+udI1+utTt+usR1+unUm
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3600c IN PCC3600C
                               OTHERWISE
                                    DO seE_3600c IN PCC3600C WITH "v"
                                    DO diS_3600c IN PCC3600C WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3600c IN PCC3600C WITH "u", "v"
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "N"
                          SKIP
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=uaN1+umE1+udI1+ ;
                             utTt+usR1+unUm
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3600c IN PCC3600C WITH ifFs, ffFs+1
                               DO muE_3600c IN PCC3600C WITH "F", "u"
                               DO muE_3600c IN PCC3600C WITH "F", "v"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3600c IN PCC3600C WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3600c IN PCC3600C WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "N"
                          SKIP -1
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=iaN1+imE1+idI1+ ;
                             itTt+isR1+inUm
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3600c IN PCC3600C WITH ifFs, ffFs+1
                               DO muE_3600c IN PCC3600C WITH "F", "i"
                               DO muE_3600c IN PCC3600C WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3600c IN PCC3600C WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3600c IN PCC3600C WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3600c IN PCC3600C WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3600c IN PCC3600C
                          STORE ifFs TO vfFs
                          DO muE_3600c IN PCC3600C WITH "i", "v"
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3600c IN PCC3600C WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3600c IN PCC3600C
                          STORE ifFs TO vfFs
                          DO muE_3600c IN PCC3600C WITH "i", "v"
                          DO seE_3600c IN PCC3600C WITH "v"
                          DO diS_3600c IN PCC3600C WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3600c IN PCC3600C WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3600c
 STORE ifFs TO vfFs, ufFs
 DO muE_3600c IN PCC3600C WITH "F", "v"
 DO muE_3600c IN PCC3600C WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_3600c IN PCC3600C WITH "N"
      DO muE_3600c IN PCC3600C WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3600c IN PCC3600C WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3600c
 PARAMETER ptIp
 PRIVATE psIg
 DO CASE
      CASE ftM2mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "US$" TO psIg
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. ftM2tpo=1
           DO coL_fonro
      CASE ptIp="R" .AND. ftM2tpo=1
           DO coLsc1
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc3
 ENDCASE
 @vFFS,mCO0+13.7 Say FTM2SER Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,mCO0+18.9 Say FTM2NUM Font "&mLetAri",9 Style "NQ" Size 1,10.0
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc3
 ENDCASE
 @vFFS,mCO0+000.0 Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFS,mCO0+030.0 Say FTM2GLO                         Font "&mLetAri",9 Style "NQ" Size 1,53.1 Pict "@S56"
 @vFFS,mCO0+084.1 Say FTM2NBA                         Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "@S24"
 @vFFS,mCO0+106.1 Say FTM2NCT                         Font "&mLetAri",9 Style "NQ" Size 1,26.9 Pict "@S29"
 @vFFS,mCO0+134.1 Say FTM2CHE                         Font "&mLetAri",9 Style "NQ" Size 1,30.9 Pict "@S33"
 @vFFS,mCO0+166.1 Say FTM2TCA                         Font "&mLetAri",9 Style "NQ" Size 1,8.4  Pict "99.999"
 @vFFS,mCO0+175.7 Say pSIG                            Font "&mLetAri",9 Style "NQ" Size 1,5.1
 @vFFS,mCO0+181.8 Say FTM2PAG                         Font "&mLetAri",9 Style "NQ" Size 1,16.2 Pict "9999,999.99"
 DO coL_fondo
 DO CASE
      CASE ftM2ttt="1"
           @fFFS+1.2,mCO0 Say "Caja"   Font "&mLetRom",12 Style "BQ" Size 1,8
      CASE ftM2ttt="2"
           @fFFS+1.2,mCO0 Say "Bancos" Font "&mLetRom",12 Style "BQ" Size 1,8
 ENDCASE
 DO CASE
      CASE ftM2ttt="1" .AND. ftM2tpo=1
           @fFFS+2.6,mCO0 Say "Por Rendir"                     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=2
           @fFFS+2.6,mCO0 Say "Varios"                         Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=3
           @fFFS+2.6,mCO0 Say "Cobro de Ventas"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=4
           @fFFS+2.6,mCO0 Say "Canje/Renovación de Letras"     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=5
           @fFFS+2.6,mCO0 Say "Ingreso a Caja con Cheque"      Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=6
           @fFFS+2.6,mCO0 Say "Aplicación de Notas de Crédito" Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=7
           @fFFS+2.6,mCO0 Say "Canje de otros documentos"      Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=1
           @fFFS+2.6,mCO0 Say "Por Rendir"                     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=2
           @fFFS+2.6,mCO0 Say "Ingresos Varios"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=3
           @fFFS+2.6,mCO0 Say "Notas de Abono del Banco"       Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=4
           @fFFS+2.6,mCO0 Say "Cobro de Ventas"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
 ENDCASE
 @fFFS+2.6,mCO0+69 Say "["+FTM2RCC+"]"             Font "&mLetRom",11 Style "NQ" Size 1,10
 @fFFS+2.6,mCO0+93 Say "["+FTM2SRL+"-"+FTM2LET+"]" Font "&mLetRom",11 Style "NQ" Size 1,14.2
 @fFFS+3.9,mCO0    Say FTM2TIP+"-"+FTM2NTI         Font "&mLetRom",11 Style "NQ" Size 1,40 Pict "@S42"
 @fFFS+3.9,mCO0+69 Say "["+FTM2RCB+"]"             Font "&mLetRom",11 Style "NQ" Size 1,10
 RELEASE psIg
ENDPROC
*
PROCEDURE Lin_3600c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+013.0 TO pfIn, mcO0+013.0
 @ piNi, mcO0+018.3 TO pfIn, mcO0+018.3
 @ piNi, mcO0+029.3 TO pfIn, mcO0+029.3
 @ piNi, mcO0+083.6 TO pfIn, mcO0+083.6
 @ piNi, mcO0+105.6 TO pfIn, mcO0+105.6
 @ piNi, mcO0+133.6 TO pfIn, mcO0+133.6
 @ piNi, mcO0+165.5 TO pfIn, mcO0+165.5
 @ piNi, mcO0+175.0 TO pfIn, mcO0+175.0
 @ piNi, mcO0+181.1 TO pfIn, mcO0+181.1
ENDPROC
*
PROCEDURE P00_3600c
 DO CASE
      CASE vsW1=01
           SELECT peNd_cpras
      CASE vsW1=02
           SELECT coPia
 ENDCASE
 DO CASE
      CASE f3600mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 DO p01_3600c
ENDPROC
*
PROCEDURE P01_3600c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0-2.2, mcO0, mfI0+muFi+0.4, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0-2.0,mCO0+000.0 Say "Documento"                Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,mCO0+000.0 Say "Emisión"                  Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,mCO0+000.0 Say "Vencimiento"              Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,mCO0+069.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 DO coL_fonaz
 @mFI0-2.0,mCO0+045.0 Say "Documento Real"           Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,mCO0+045.0 Say "Proveedor"                Font "&mLetAri",9 Style "BQ"
 DO coL_fonro
 @mFI0+0.6,mCO0+045.0 Say "Total Documento"          Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,mCO0+098.5 Say "A/C"                      Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,mCO0+098.5 Say "Saldo"                    Font "&mLetAri",9 Style "BQ"
 @fFFS+2.6,mCO0+050.0 Say "Recibo General:"          Font "&mLetAri",9 Style "BQ"
 @fFFS+3.9,mCO0+050.0 Say "Recibo x Item:"           Font "&mLetAri",9 Style "BQ"
 @fFFS+2.6,mCO0+085.0 Say "Letra:"                   Font "&mLetAri",9 Style "BQ"
 DO coL_fondo
 @mFI0-0.7,mCO0+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,mCO0+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,mCO0+069.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,mCO0+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,mCO0+069.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,mCO0+105.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,mCO0+105.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,mCO0+015.5 Say vTDO+":"+vSER+"-"+vDOC     Font "&mLetAri",9 Style "NQ"
 @mFI0-0.7,mCO0+015.5 Say F3600FEM                   Font "&mLetAri",9 Style "NQ"
 @mFI0+0.6,mCO0+015.5 Say F3600FVE                   Font "&mLetAri",9 Style "NQ"
 @mFI0-2.0,mCO0+071.0 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ"
 @mFI0-0.7,mCO0+071.0 Say F3600PRV                   Font "&mLetAri",9 Style "NQ" Size 1,06 Pict "@S09"
 @mFI0-0.7,mCO0+078.5 Say F3600NOM                   Font "&mLetAri",9 Style "NQ" Size 1,46 Pict "@S49"
 @mFI0+0.6,mCO0+071.0 Say vSIG                       Font "&mLetAri",9 Style "NQ"
 @mFI0+0.6,mCO0+075.2 Say F3600TOT                   Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @mFI0+0.6,mCO0+106.6 Say F3600ACU                   Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @mFI0+1.9,mCO0+106.6 Say F3600TOT-F3600ACU          Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @ ifFs-1.4, mcO0-0.3 TO ifFs-0.1, mcO0+muCo+0.3 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.1, mcO0 TO ffFs+1.1, mcO0+muCo
 DO liN_3600c IN PCC3600C WITH ifFs-0.2, ffFs+1.1
 @ ifFs-1.3, mcO0+013.0 TO ifFs-0.2, mcO0+013.0
 @ ifFs-1.3, mcO0+029.3 TO ifFs-0.2, mcO0+029.3
 @ ifFs-1.3, mcO0+083.6 TO ifFs-0.2, mcO0+083.6
 @ ifFs-1.3, mcO0+105.6 TO ifFs-0.2, mcO0+105.6
 @ ifFs-1.3, mcO0+133.6 TO ifFs-0.2, mcO0+133.6
 @ ifFs-1.3, mcO0+165.5 TO ifFs-0.2, mcO0+165.5
 @ ifFs-1.3, mcO0+175.0 TO ifFs-0.2, mcO0+175.0
 DO coLblz
 @ ffFs+1.1, mcO0+137.5 TO ffFs+2.5, mcO0+164.2 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.1, mcO0+164.1 TO ffFs+2.5, mcO0+192.4 PATTERN 1 COLOR SCHEME 7
 @iFFS-1.2,mCO0+002.8 Say "Fecha"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+016.8 Say "Voucher" Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+053.8 Say "Glosa"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+090.8 Say "Banco"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+114.8 Say "Cuenta"  Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+146.1 Say "Cheque"  Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+169.2 Say "T/C"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+187.1 Say "Pago"    Font "&mLetAri",9 Style "BT"
 @fFFS+1.3,mCO0+138.8 Say "S/."     Font "&mLetAri",9 Style "BT"
 @fFFS+1.3,mCO0+165.5 Say "US$"     Font "&mLetAri",9 Style "BT"
 @fFFS+1.3,mCO0+142.4 Say vPA1      Font "&mLetAri",9 Style "BT" Pict "999,999,999.99" Size 1,16.9
 @fFFS+1.3,mCO0+170.8 Say vPA2      Font "&mLetAri",9 Style "BT" Pict "999,999,999.99" Size 1,16.9
 SELECT paGos
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_3600c
 DO muE_3600c IN PCC3600C WITH "v", "c"
 DO CASE
      CASE ppRg="PCC3600B"
           DO reS_3600b
      CASE ppRg="PCC3601B"
           DO reS_3601b
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 DO p00_3600c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO seE_3600c IN PCC3600C WITH "i"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num=vaN1+vmE1+vdI1+ ;
         vtTt+vsR1+vnUm
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_3600c IN PCC3600C WITH "v", "c"
      DO muE_3600c IN PCC3600C WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_3600c IN PCC3600C WITH "i"
 DO paN_3600c IN PCC3600C
 STORE cfFs TO vfFs
 DO muE_3600c IN PCC3600C WITH "c", "v"
 DO seE_3600c IN PCC3600C WITH "v"
 DO diS_3600c IN PCC3600C WITH "R"
ENDPROC
*
PROCEDURE Imp_3600c
 STORE 0 TO mvIs
 DO ipR_0000a
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
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3600c IN PCC3600C
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3600c
 PUBLIC ptAm
 PRIVATE psIg
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 100 TO ptAm
           STORE 06 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 102 TO ptAm
           STORE 06 TO mcLn
      OTHERWISE
           STORE 94 TO ptAm
           STORE 27 TO mcLn
 ENDCASE
 SELECT paGos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3600c IN PCC3600C
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT paGos
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE ftM2mon=1
                     STORE "S/." TO psIg
                OTHERWISE
                     STORE "US$" TO psIg
           ENDCASE
           DO CASE
                CASE mvIs=1
                     DO coLblv
                     @vLIN,mCLN       Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.5
                     @vLIN,mCLN+014   Say FTM2SER+"-"+FTM2NUM             Font "&mLetAri",9 Style "NQ" Size 1,15.5
                     @vLIN,mCLN+031   Say FTM2GLO                         Font "&mLetAri",9 Style "NQ" Size 1,30   Pict "@S33"
                     @vLIN,mCLN+062.5 Say FTM2NBA                         Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S18"
                     @vLIN,mCLN+078.9 Say FTM2NCT                         Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S18"
                     @vLIN,mCLN+095.5 Say FTM2CHE                         Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S25"
                     @vLIN,mCLN+116.8 Say FTM2TCA                         Font "&mLetAri",9 Style "NQ" Size 1,08.4 Pict "99.999"
                     @vLIN,mCLN+126.5 Say pSIG                            Font "&mLetAri",9 Style "NQ" Size 1,05.2
                     @vLIN,mCLN+133.0 Say FTM2PAG                         Font "&mLetAri",9 Style "NQ" Size 1,17.0 Pict "9,999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NT" Size 1,12.5
                     @vLIN,mCLN+014   Say FTM2SER+"-"+FTM2NUM             Font "&mLetAri",9 Style "NT" Size 1,15.5
                     @vLIN,mCLN+031   Say FTM2GLO                         Font "&mLetAri",9 Style "NT" Size 1,30   Pict "@S33"
                     @vLIN,mCLN+062.5 Say FTM2NBA                         Font "&mLetAri",9 Style "NT" Size 1,15   Pict "@S18"
                     @vLIN,mCLN+083.9 Say FTM2NCT                         Font "&mLetAri",9 Style "NT" Size 1,13   Pict "@S15"
                     @vLIN,mCLN+103.5 Say FTM2CHE                         Font "&mLetAri",9 Style "NT" Size 1,20   Pict "@S25"
                     @vLIN,mCLN+129.4 Say FTM2TCA                         Font "&mLetAri",9 Style "NT" Size 1,08.4 Pict "99.999"
                     @vLIN,mCLN+132.5 Say pSIG                            Font "&mLetAri",9 Style "NT" Size 1,05.2
                     @vLIN,mCLN+150.0 Say FTM2PAG                         Font "&mLetAri",9 Style "NT" Size 1,17.0 Pict "9,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetSwi",9 Style "NQ" Size 1,12.5
                     @vLIN,mCLN+014   Say FTM2SER+"-"+FTM2NUM             Font "&mLetSwi",9 Style "NQ" Size 1,15.5
                     @vLIN,mCLN+031   Say FTM2GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,30   Pict "@S33"
                     @vLIN,mCLN+062.5 Say FTM2NBA                         Font "&mLetSwi",9 Style "NQ" Size 1,15   Pict "@S18"
                     @vLIN,mCLN+078.9 Say FTM2NCT                         Font "&mLetSwi",9 Style "NQ" Size 1,15   Pict "@S18"
                     @vLIN,mCLN+095.5 Say FTM2CHE                         Font "&mLetSwi",9 Style "NQ" Size 1,20   Pict "@S25"
                     @vLIN,mCLN+116.8 Say FTM2TCA                         Font "&mLetSwi",9 Style "NQ" Size 1,08.4 Pict "99.999"
                     @vLIN,mCLN+126.5 Say pSIG                            Font "&mLetSwi",9 Style "NQ" Size 1,05.2
                     @vLIN,mCLN+133.0 Say FTM2PAG                         Font "&mLetSwi",9 Style "NQ" Size 1,17.0 Pict "9,999,999.99"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 STORE vlIn+0.5 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3600c IN PCC3600C
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT paGos
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,mCLN+095.9 Say "Pagos" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+104.9 Say "S/."   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+108.4 Say vPA1    Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                @vLIN,mCLN+126.8 Say "US$"   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+132.9 Say vPA2    Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+095.0 Say "Pagos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+105.0 Say "S/."    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+122.0 Say vPA1     Font "&mLetAri",9 Style "BT" Size 1,19 Pict "99,999,999.99"
                @vLIN,mCLN+129.0 Say "US$"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+148.9 Say vPA2     Font "&mLetAri",9 Style "BT" Size 1,19 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+93    Say "Pagos"  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+102   Say "S/."    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+105.5 Say vPA1     Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                @vLIN,mCLN+126.5 Say "US$"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+132.6 Say vPA2     Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, psIg
ENDPROC
*
PROCEDURE Cab_3600c
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
      @vLIN,mCLN Say "Estado de Cuenta" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 IF vpAg=1
      DO coL_pr1
      DO CASE
           CASE vsW1=01
                SELECT peNd_cpras
           CASE vsW1=02
                SELECT coPia
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Documento real"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3600TDO+":"+F3600SER+"-"+F3600DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ"
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Documento real"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"                                Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"                                Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3600TDO+":"+F3600SER+"-"+F3600DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Documento real"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3600TDO+":"+F3600SER+"-"+F3600DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ"
           ENDCASE
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Proveedor"           Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3600FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3600PRV              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3600NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Proveedor"           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+84 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3600FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say F3600PRV              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+86 Say F3600NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Proveedor"           Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3600FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3600PRV              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3600NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
           ENDCASE
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Vencimiento"     Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Total Documento" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3600FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say vSIG              Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3600TOT          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Vencimiento"     Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Total Documento" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3600FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say vSIG              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+92 Say F3600TOT          Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Vencimiento"     Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Total Documento" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3600FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say vSIG              Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3600TOT          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
           ENDCASE
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3600ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+82 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+35 Say F3600ACU          Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+92 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3600ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+82 Say F3600TOT-F3600ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
           ENDCASE
      ENDIF
      STORE vlIn+0.4 TO vlIn
      DO coL_prt
      DO liN_0000a WITH ptAm, vlIn
      DO CASE
           CASE mvIs=1
                STORE vlIn+1.6 TO vlIn
           CASE mpRt="1"
                STORE vlIn+1.4 TO vlIn
           CASE mpRt="3"
                STORE vlIn+1.6 TO vlIn
      ENDCASE
 ENDIF
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,mCLN       Say "Fecha"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+014   Say "Voucher" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+031   Say "Glosa"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+062.5 Say "Banco"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+078.9 Say "Cuenta"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.5 Say "Cheque"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+118.2 Say "T/C"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+144.0 Say "Pago"    Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Fecha"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+014   Say "Voucher" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+031   Say "Glosa"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+062.5 Say "Banco"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+083.9 Say "Cuenta"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+103.5 Say "Cheque"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+126.7 Say "T/C"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+147.0 Say "Pago"    Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Fecha"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+014   Say "Voucher" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+031   Say "Glosa"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+062.5 Say "Banco"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+078.9 Say "Cuenta"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.5 Say "Cheque"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+118.2 Say "T/C"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+144.0 Say "Pago"    Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 DO coL_prt
 DO CASE
      CASE mvIs=1
           STORE vlIn+0.3 TO vlIn
      CASE mpRt="1"
           STORE vlIn+0.1 TO vlIn
      CASE mpRt="3"
           STORE vlIn+0.3 TO vlIn
 ENDCASE
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE See_3600c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaN1+vmE1+vdI1+vtTt+vsR1+vnUm
      CASE psEe="i"
           SEEK iaN1+imE1+idI1+itTt+isR1+inUm
      CASE psEe="u"
           SEEK uaN1+umE1+udI1+utTt+usR1+unUm
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3600c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaN1 TO vaN1
           STORE imE1 TO vmE1
           STORE idI1 TO vdI1
           STORE itTt TO vtTt
           STORE isR1 TO vsR1
           STORE inUm TO vnUm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaN1 TO iaN1
           STORE vmE1 TO imE1
           STORE vdI1 TO idI1
           STORE vtTt TO itTt
           STORE vsR1 TO isR1
           STORE vnUm TO inUm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaN1 TO caN1
           STORE vmE1 TO cmE1
           STORE vdI1 TO cdI1
           STORE vtTt TO ctTt
           STORE vsR1 TO csR1
           STORE vnUm TO cnUm
      CASE pmU1="c" .AND. pmU2="v"
           STORE caN1 TO vaN1
           STORE cmE1 TO vmE1
           STORE cdI1 TO vdI1
           STORE ctTt TO vtTt
           STORE csR1 TO vsR1
           STORE cnUm TO vnUm
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaN1 TO vaN1
           STORE umE1 TO vmE1
           STORE udI1 TO vdI1
           STORE utTt TO vtTt
           STORE usR1 TO vsR1
           STORE unUm TO vnUm
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2ano TO vaN1
           STORE ftM2mes TO vmE1
           STORE ftM2dia TO vdI1
           STORE ftM2ttt TO vtTt
           STORE ftM2ser TO vsR1
           STORE ftM2num TO vnUm
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2ano TO uaN1
           STORE ftM2mes TO umE1
           STORE ftM2dia TO udI1
           STORE ftM2ttt TO utTt
           STORE ftM2ser TO usR1
           STORE ftM2num TO unUm
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2ano TO iaN1
           STORE ftM2mes TO imE1
           STORE ftM2dia TO idI1
           STORE ftM2ttt TO itTt
           STORE ftM2ser TO isR1
           STORE ftM2num TO inUm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3600c
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3600c IN PCC3600C WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3600c IN PCC3600C WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3600c IN PCC3600C WITH "F", "v"
           DO diS_3600c IN PCC3600C WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3600c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Pagos en Efectivo y"
 @ pfIl+01, 02 SAY "por Bancos del documento elegido."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 28 SAY ":" STYLE "BT"
 @ pfIl+06, 28 SAY ":" STYLE "BT"
 @ pfIl+07, 28 SAY ":" STYLE "BT"
 @ pfIl+08, 28 SAY ":" STYLE "BT"
 @ pfIl+09, 28 SAY ":" STYLE "BT"
 @ pfIl+10, 28 SAY ":" STYLE "BT"
 @ pfIl+11, 28 SAY ":" STYLE "BT"
 @ pfIl+12, 28 SAY ":" STYLE "BT"
 @ pfIl+13, 28 SAY ":" STYLE "BT"
 @ pfIl+14, 28 SAY ":" STYLE "BT"
 @ pfIl+15, 28 SAY ":" STYLE "BT"
 @ pfIl+05, 09 SAY "ESC" STYLE "BT"
 @ pfIl+06, 09 SAY "F10" STYLE "BT"
 @ pfIl+07, 09 SAY "F1" STYLE "BT"
 @ pfIl+08, 09 SAY "F8" STYLE "BT"
 @ pfIl+09, 09 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 09 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 09 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 09 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 09 SAY "HOME" STYLE "BT"
 @ pfIl+14, 09 SAY "END" STYLE "BT"
 @ pfIl+15, 09 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 30 SAY "Regresar a Cabecera"
 @ pfIl+06, 30 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 30 SAY "Ayuda del Programa"
 @ pfIl+08, 30 SAY "Pasar datos a Excel"
 @ pfIl+09, 30 SAY "Línea inferior"
 @ pfIl+10, 30 SAY "Línea superior"
 @ pfIl+11, 30 SAY "Página siguiente"
 @ pfIl+12, 30 SAY "Página anterior"
 @ pfIl+13, 30 SAY "Primera línea"
 @ pfIl+14, 30 SAY "Última línea"
 @ pfIl+15, 30 SAY "Imprimir Estado de Cuenta del Documento"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
