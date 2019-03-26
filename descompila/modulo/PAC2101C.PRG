 DO muE_2101a
 DO p00_2101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=0
      DO coL_fonro
      DO CASE
           CASE mrEs="3"
                @mFI0+16.6,mCO0+45 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",20 Style "BTI"
           CASE mrEs="4"
                @mFI0+16.6,mCO0+55 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",20 Style "BTI"
           OTHERWISE
                @mFI0+16.6,mCO0+65 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",20 Style "BTI"
      ENDCASE
      mkEy = INKEY(0, "HM")
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           OTHERWISE
                STORE 99 TO mkEy
                RETURN
      ENDCASE
 ENDIF
 SELECT suCursales
 DO muE_2101c WITH "F", "v"
 DO mu1_2101c
 DO p01_2101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2101c
 SELECT suCursales
 STORE 01 TO vsW3
 STORE ifFs TO vfFs
 DO muE_2101c WITH "i", "v"
 DO seE_1101c IN PVC1101C WITH "v"
 DO diS_2101c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2101c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2101c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2101c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2101c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vcOd
                DO CASE
                     CASE f2102suc=isUc .AND. vsUc=isUc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsUc=isUc
                                    DO paN_2101c
                               OTHERWISE
                                    DO seE_1101c IN PVC1101C WITH "v"
                                    DO diS_2101c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_2101c WITH "i", "v"
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vcOd+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f2102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2102suc=usUc .AND. vsUc=usUc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsUc=usUc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2101c
                               OTHERWISE
                                    DO seE_1101c IN PVC1101C WITH "v"
                                    DO diS_2101c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_2101c WITH "u", "v"
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2102cod<>vcOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "N"
                          SKIP
                          IF vsUc=usUc
                               DO coLsc7
                               DO suBe WITH ifFs, mcO0+1, ffFs, mcO0+5.5, 1
                               DO muE_2101c WITH "F", "v"
                               DO muE_2101c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_2101c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_2101c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2102cod<>vcOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "N"
                          SKIP -1
                          IF vsUc=isUc
                               DO coLsc7
                               DO baJa WITH ifFs, mcO0+1, ffFs, mcO0+5.5, 1
                               DO muE_2101c WITH "F", "v"
                               DO muE_2101c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_2101c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2101c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1101c IN PVC1101C WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f2102cod<>vcOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2101c
                          STORE ifFs TO vfFs
                          DO muE_2101c WITH "i", "v"
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1101c IN PVC1101C WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2102cod<>vcOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2102cod<>vcOd
                               GOTO TOP
                               SEEK vcOd
                          ENDIF
                          DO paN_2101c
                          STORE ifFs TO vfFs
                          DO muE_2101c WITH "i", "v"
                          DO seE_1101c IN PVC1101C WITH "v"
                          DO diS_2101c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1101c IN PVC1101C WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2101c
 STORE 0 TO vsW3
 STORE ifFs TO vfFs, ufFs
 DO muE_2101c WITH "F", "i"
 DO muE_2101c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f2102cod=vcOd .AND. vfFs<ffFs+1
      DO diS_2101c WITH "N"
      DO muE_2101c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc7
      @ ufFs+1, mcO0+1 CLEAR TO ffFs+1, mcO0+5.5
 ENDIF
 STORE 1 TO vsW3
ENDPROC
*
PROCEDURE Mu1_2101c
 SELECT suCursales
 STORE f2102suc TO xsUc
 STORE f2102dir TO xdIr
 STORE f2102dis TO xnDi
 STORE f2102ent TO xeNt
 STORE f2102die TO xnD1
 STORE f2102ct1 TO xcT1
 STORE f2102tl1 TO xtL1
 STORE f2102an1 TO xaN1
 STORE f2102ca1 TO xcA1
 STORE f2102fa1 TO xfA1
 STORE f2102ct2 TO xcT2
 STORE f2102tl2 TO xtL2
 STORE f2102an2 TO xaN2
 STORE f2102ca2 TO xcA2
 STORE f2102fa2 TO xfA2
 STORE f2102ct3 TO xcT3
 STORE f2102tl3 TO xtL3
 STORE f2102an3 TO xaN3
 STORE f2102ca3 TO xcA3
 STORE f2102fa3 TO xfA3
 STORE f2102mai TO xmAi
 STORE f2102usu TO xuSu
 STORE f2102dat TO xdAt
 STORE f2102tim TO xtIm
 STORE f2102maq TO xmAq
ENDPROC
*
PROCEDURE Dis_2101c
 PARAMETER ptIp
 SELECT suCursales
 STORE f2102suc TO xsUc
 IF vsW3=1
      DO mu1_2101c
      DO coLsc3
      DO CASE
           CASE mrEs="3"
                @iFFS-01.20,mCO0+024.0 Say AllTrim(xDIR)+", "+AllTrim(xNDI) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+00.20,mCO0+024.0 Say AllTrim(xENT)+", "+AllTrim(xND1) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+03.20,mCO0+007.6 Say xCT1 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+03.20,mCO0+079.8 Say xCA1 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+03.20,mCO0+122.0 Say xTL1 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+03.20,mCO0+150.1 Say xAN1 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+03.20,mCO0+156.3 Say xFA1 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
                @iFFS+04.50,mCO0+079.8 Say xMAI Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+05.80,mCO0+007.6 Say xCT2 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+05.80,mCO0+079.8 Say xCA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+05.80,mCO0+122.0 Say xTL2 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+05.80,mCO0+150.1 Say xAN2 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+05.80,mCO0+156.3 Say xFA2 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
                @iFFS+08.35,mCO0+007.6 Say xCT3 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+08.35,mCO0+079.8 Say xCA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+08.35,mCO0+122.0 Say xTL3 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+08.35,mCO0+150.1 Say xAN3 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+08.35,mCO0+156.3 Say xFA3 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           OTHERWISE
                @iFFS-01.20,mCO0+039.0 Say AllTrim(xDIR)+", "+AllTrim(xNDI) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+00.20,mCO0+039.0 Say AllTrim(xENT)+", "+AllTrim(xND1) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+03.60,mCO0+007.6 Say xCT1 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+03.60,mCO0+074.9 Say xCA1 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+03.60,mCO0+129.0 Say xTL1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+03.60,mCO0+168.0 Say xAN1 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+03.60,mCO0+176.1 Say xFA1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+05.60,mCO0+007.6 Say xCT2 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+05.60,mCO0+074.9 Say xCA2 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+05.60,mCO0+129.0 Say xTL2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+05.60,mCO0+168.0 Say xAN2 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+05.60,mCO0+176.1 Say xFA2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+07.60,mCO0+007.6 Say xCT3 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+07.60,mCO0+074.9 Say xCA3 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+07.60,mCO0+129.0 Say xTL3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+07.60,mCO0+168.0 Say xAN3 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+07.60,mCO0+176.1 Say xFA3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                IF mrEs="4"
                     @iFFS+3.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,26.2 Pict "@S29"
                ELSE
                     @iFFS+3.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
                ENDIF
      ENDCASE
      READ TIMEOUT 0.01
      DO usU_1101c IN PVC1101C
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coL_fondo
 ENDCASE
 @vFFS,mCO0+1.2 Say xSUC Font "&mLetAri",10 Style "BQ" Size 1,2.7
ENDPROC
*
PROCEDURE P00_2101c
 PRIVATE psIg, pfRa
 DO CASE
      CASE xmOn=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "U$" TO psIg
 ENDCASE
 DO CASE
      CASE xcRe=2
           STORE "Línea de Crédito Aprobada "+psIg+STR(xtOt, 12, 2) TO pfRa
      OTHERWISE
           STORE "Línea de Crédito no Aprobada" TO pfRa
 ENDCASE
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0-3, mcO0, mfI0+7.1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ mfI0-3.0, mcO0+00.2 TO mfI0-0.8, mcO0+031.4 PATTERN 1
 @ mfI0-3.0, mcO0+37.9 TO mfI0-0.8, mcO0+112.2 PATTERN 1
 DO coL_fonaz
 @mFI0-2.6,mCO0+001 Say "CÓDIGO:"            Font "&mLetRom",13 Style "BT"
 @mFI0-2.6,mCO0+039 Say "Tipo de Proveedor"  Font "&mLetRom",12 Style "BT"
 DO coL_fondo
 @mFI0+0.0,mCO0+001 Say "Razón Social:"      Font "&mLetRom",13 Style "BT"
 @mFI0+1.8,mCO0+001 Say "RUC:"               Font "&mLetRom",13 Style "BQ"
 DO coLbln
 @mFI0+0.0,mCO0+022 Edit xNOM                Font "&mLetRom",13 Style "NQ" Size 1,70,70
 @mFI0+1.8,mCO0+022 Get  xRUC                Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN
 @mFI0+1.8,mCO0+063 Say  pFRA                Font "&mLetRom",13 Style "BT"           Color ,&mColBlZ
 DO coL_fonro
 @mFI0+5.7,mCO0+078 Say "Usuario: "+xUSU     Font "&mLetRom",13 Style "BQ" Size 1,42
 @mFI0+5.7,mCO0+141 Say "Fecha: "+Dtoc(xDAT) Font "&mLetRom",13 Style "BQ" Size 1,19.5
 @mFI0+5.7,mCO0+173 Say "Hora: "+xTIM        Font "&mLetRom",13 Style "BQ" Size 1,16.2
 DO coLbln
 @mFI0-2.6,mCO0+017 Get  vCOD                Font "&mLetRom",13 Style "BQ" Size 1,8.8 Pict "!!!!" Color ,&mColBlN
 @mFI0-2.6,mCO0+065 Edit xNTI                Font "&mLetRom",12 Style "NQ" Size 1,37.6,50
 READ TIMEOUT 0.01
 RELEASE psIg, pfRa
ENDPROC
*
PROCEDURE P01_2101c
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @ ifFs-1.6, mcO0-0.9 TO ffFs+1.3, mcO0+7 PATTERN 1
 IF xtPo=1
      @iFFS-1.5,mCO0 Say "Dir:" Font "&mLetRom",13 Style "BT"
 ELSE
      @iFFS-1.5,mCO0 Say "Suc:" Font "&mLetRom",13 Style "BT"
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFs-1.2, mcO0+8, ifFs+12.2, mcO0+muCo
 DO CASE
      CASE mrEs="3"
           @ ifFs+01.70, mcO0+007.4 TO ifFs+01.7, mcO0+muCo
           @ ifFs+02.90, mcO0+007.4 TO ifFs+02.9, mcO0+muCo
           @ ifFs+11.00, mcO0+007.4 TO ifFs+11.0, mcO0+muCo
           @ ifFs+01.70, mcO0+079.4 TO ifFs+11.0, mcO0+079.4
           @ ifFs+01.70, mcO0+121.6 TO ifFs+11.0, mcO0+121.6
           @ ifFs+01.70, mcO0+149.8 TO ifFs+11.0, mcO0+149.8
           @ ifFs+01.70, mcO0+155.9 TO ifFs+11.0, mcO0+155.9
           @iFFS-01.20,mCO0+008.5 Say "Dirección:"   Font "&mLetAri",10 Style "BT"
           @iFFS+00.20,mCO0+008.5 Say "Lug.Entrega:" Font "&mLetAri",10 Style "NT"
           @iFFS+01.80,mCO0+037.5 Say "Contactos"    Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+087.0 Say "Cargos"       Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+129.5 Say "Teléfonos"    Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+150.4 Say "Anx"          Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+172.5 Say "Fax"          Font "&mLetAri",10 Style "BT"
           @iFFS+04.50,mCO0+070.2 Say "e-mail:"      Font "&mLetAri",10 Style "NT"
           @iFFS+07.10,mCO0+070.2 Say "e-mail:"      Font "&mLetAri",10 Style "NT"
           @iFFS+09.65,mCO0+070.2 Say "e-mail:"      Font "&mLetAri",10 Style "NT"
           DO coLsc3
           @iFFS-01.20,mCO0+024.0 Say AllTrim(xDIR)+", "+AllTrim(xNDI) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+00.20,mCO0+024.0 Say AllTrim(xENT)+", "+AllTrim(xND1) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+03.20,mCO0+007.6 Say xCT1 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+03.20,mCO0+079.8 Say xCA1 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+03.20,mCO0+122.0 Say xTL1 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+03.20,mCO0+150.1 Say xAN1 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+03.20,mCO0+156.3 Say xFA1 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           @iFFS+04.50,mCO0+079.8 Say xMAI Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+05.80,mCO0+007.6 Say xCT2 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+05.80,mCO0+079.8 Say xCA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+05.80,mCO0+122.0 Say xTL2 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+05.80,mCO0+150.1 Say xAN2 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+05.80,mCO0+156.3 Say xFA2 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           @iFFS+08.35,mCO0+007.6 Say xCT3 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+08.35,mCO0+079.8 Say xCA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+08.35,mCO0+122.0 Say xTL3 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+08.35,mCO0+150.1 Say xAN3 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+08.35,mCO0+156.3 Say xFA3 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
      OTHERWISE
           @ ifFs+01.70, mcO0+007.4 TO ifFs+01.7, mcO0+muCo
           @ ifFs+03.10, mcO0+007.4 TO ifFs+03.1, mcO0+muCo
           @ ifFs+10.00, mcO0+007.4 TO ifFs+10.0, mcO0+muCo
           @ ifFs+01.70, mcO0+074.4 TO ifFs+10.0, mcO0+074.4
           @ ifFs+01.70, mcO0+128.4 TO ifFs+10.0, mcO0+128.4
           @ ifFs+01.70, mcO0+167.4 TO ifFs+10.0, mcO0+167.4
           @ ifFs+01.70, mcO0+175.6 TO ifFs+10.0, mcO0+175.6
           @ ifFs+01.70, mcO0+214.4 TO ifFs+10.0, mcO0+214.4
           @iFFS-01.20,mCO0+008.5 Say "Dirección:"        Font "&mLetAri",12 Style "BT"
           @iFFS+00.20,mCO0+008.5 Say "Lugar de Entrega:" Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+033.5 Say "Contactos"         Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+095.0 Say "Cargos"            Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+139.5 Say "Teléfonos"         Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+168.1 Say "Anx"               Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+190.5 Say "Fax"               Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+232.5 Say "e-mail"            Font "&mLetAri",12 Style "BT"
           DO coLsc3
           @iFFS-01.20,mCO0+039.0 Say AllTrim(xDIR)+", "+AllTrim(xNDI) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+00.20,mCO0+039.0 Say AllTrim(xENT)+", "+AllTrim(xND1) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+03.60,mCO0+007.6 Say xCT1 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+03.60,mCO0+074.9 Say xCA1 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+03.60,mCO0+129.0 Say xTL1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+03.60,mCO0+168.0 Say xAN1 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+03.60,mCO0+176.1 Say xFA1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+05.60,mCO0+007.6 Say xCT2 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+05.60,mCO0+074.9 Say xCA2 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+05.60,mCO0+129.0 Say xTL2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+05.60,mCO0+168.0 Say xAN2 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+05.60,mCO0+176.1 Say xFA2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+07.60,mCO0+007.6 Say xCT3 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+07.60,mCO0+074.9 Say xCA3 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+07.60,mCO0+129.0 Say xTL3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+07.60,mCO0+168.0 Say xAN3 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+07.60,mCO0+176.1 Say xFA3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           IF mrEs="4"
                @iFFS+3.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,26.2 Pict "@S29"
           ELSE
                @iFFS+3.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
           ENDIF
 ENDCASE
 READ TIMEOUT 0.01
 DO usU_1101c IN PVC1101C
ENDPROC
*
PROCEDURE Mue_2101c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE isUc TO vsUc
      CASE pmU1="u" .AND. pmU2="v"
           STORE usUc TO vsUc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2102suc TO vsUc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2102suc TO usUc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2102suc TO isUc
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2101c
 DO rs1_2101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_2101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT suCursales
 DO seE_1101c IN PVC1101C WITH "i"
 DO paN_2101c
 STORE ifFs TO vfFs
 DO muE_2101c WITH "i", "v"
 DO seE_1101c IN PVC1101C WITH "v"
 DO diS_2101c WITH "R"
ENDPROC
*
PROCEDURE Clp_2101c
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+6
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+6
           DO diS_2101c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1101c IN PVC1101C WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_2101c WITH "F", "v"
           DO diS_2101c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2101c
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 2.500 SAY  ;
   "En esta parte de la consulta, se muestran todas las Sucursales que un"
 @ pfIl+01, 2.500 SAY  ;
   "Proveedor tenga registradas. Si no existen Códigos de Sucursales sólo"
 @ pfIl+02, 2.500 SAY "se verán los datos principales."
 @ pfIl+04, 2.500 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29.000 SAY ":" STYLE "BT"
 @ pfIl+07, 29.000 SAY ":" STYLE "BT"
 @ pfIl+08, 29.000 SAY ":" STYLE "BT"
 @ pfIl+09, 29.000 SAY ":" STYLE "BT"
 @ pfIl+10, 29.000 SAY ":" STYLE "BT"
 @ pfIl+11, 29.000 SAY ":" STYLE "BT"
 @ pfIl+12, 29.000 SAY ":" STYLE "BT"
 @ pfIl+13, 29.000 SAY ":" STYLE "BT"
 @ pfIl+14, 29.000 SAY ":" STYLE "BT"
 @ pfIl+06, 11.000 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11.000 SAY "F10" STYLE "BT"
 @ pfIl+08, 11.000 SAY "F1" STYLE "BT"
 @ pfIl+09, 11.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11.000 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 11.000 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 11.000 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 11.000 SAY "HOME" STYLE "BT"
 @ pfIl+14, 11.000 SAY "END" STYLE "BT"
 @ pfIl+06, 31.000 SAY "Regresar a Detalle"
 @ pfIl+07, 31.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31.000 SAY "Ayuda del Programa"
 @ pfIl+09, 31.000 SAY "Línea inferior"
 @ pfIl+10, 31.000 SAY "Línea superior"
 @ pfIl+11, 31.000 SAY "Página siguiente"
 @ pfIl+12, 31.000 SAY "Página anterior"
 @ pfIl+13, 31.000 SAY "Primera línea"
 @ pfIl+14, 31.000 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
