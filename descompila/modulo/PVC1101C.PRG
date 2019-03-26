 DO muE_1101a
 DO p00_1101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=0
      DO coL_fonro
      DO CASE
           CASE mrEs="3"
                @mFI0+16.6,mCO0+45 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",20 Style "BTI"
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
 DO muE_1101c WITH "F", "v"
 DO mu1_1101c
 DO p01_1101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1101c
 SELECT suCursales
 STORE 01 TO vsW3
 STORE ifFs TO vfFs
 DO muE_1101c WITH "i", "v"
 DO seE_1101c WITH "v"
 DO diS_1101c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1101c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1101c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1101c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1101c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vcOd
                DO CASE
                     CASE f1102suc=isUc .AND. vsUc=isUc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsUc=isUc
                                    DO paN_1101c
                               OTHERWISE
                                    DO seE_1101c WITH "v"
                                    DO diS_1101c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_1101c WITH "i", "v"
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vcOd+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f1102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f1102suc=usUc .AND. vsUc=usUc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsUc=usUc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1101c
                               OTHERWISE
                                    DO seE_1101c WITH "v"
                                    DO diS_1101c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_1101c WITH "u", "v"
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f1102cod<>vcOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "N"
                          SKIP
                          IF vsUc=usUc
                               DO coLsc7
                               DO suBe WITH ifFs, mcO0+1, ffFs, mcO0+5.5, 1
                               DO muE_1101c WITH "F", "v"
                               DO muE_1101c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_1101c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_1101c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1102cod<>vcOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "N"
                          SKIP -1
                          IF vsUc=isUc
                               DO coLsc7
                               DO baJa WITH ifFs, mcO0+1, ffFs, mcO0+5.5, 1
                               DO muE_1101c WITH "F", "v"
                               DO muE_1101c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_1101c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1101c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1101c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f1102cod<>vcOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1101c
                          STORE ifFs TO vfFs
                          DO muE_1101c WITH "i", "v"
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1101c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1102cod<>vcOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f1102cod<>vcOd
                               GOTO TOP
                               SEEK vcOd
                          ENDIF
                          DO paN_1101c
                          STORE ifFs TO vfFs
                          DO muE_1101c WITH "i", "v"
                          DO seE_1101c WITH "v"
                          DO diS_1101c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1101c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1101c
 STORE 0 TO vsW3
 STORE ifFs TO vfFs, ufFs
 DO muE_1101c WITH "F", "i"
 DO muE_1101c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f1102cod=vcOd .AND. vfFs<ffFs+1
      DO diS_1101c WITH "N"
      DO muE_1101c WITH "F", "u"
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
PROCEDURE Mu1_1101c
 SELECT suCursales
 STORE f1102suc TO xsUc
 STORE f1102dir TO vdIr
 STORE f1102dpt TO xdPt
 STORE f1102dis TO xdIs
 STORE f1102ndi TO xnDi
 STORE f1102ndp TO xnDp
 STORE f1102ent TO veNt
 STORE f1102dp1 TO xdP1
 STORE f1102die TO xdIe
 STORE f1102nd1 TO xnD1
 STORE f1102np1 TO xnP1
 STORE f1102ct1 TO vcT1
 STORE f1102ca1 TO vcA1
 STORE f1102tl1 TO xtL1
 STORE f1102an1 TO xaN1
 STORE f1102fa1 TO xfA1
 STORE f1102mai TO xmAi
 STORE f1102ct2 TO vcT2
 STORE f1102ca2 TO vcA2
 STORE f1102tl2 TO xtL2
 STORE f1102an2 TO xaN2
 STORE f1102fa2 TO xfA2
 STORE f1102ma2 TO xmA2
 STORE f1102ct3 TO vcT3
 STORE f1102ca3 TO xcA3
 STORE f1102tl3 TO xtL3
 STORE f1102an3 TO xaN3
 STORE f1102fa3 TO xfA3
 STORE f1102ma3 TO xmA3
 STORE f1102alq TO xaLq
 STORE f1102ano TO xaNo
 STORE f1102usu TO xuSu
 STORE f1102dat TO xdAt
 STORE f1102tim TO xtIm
 STORE f1102maq TO xmAq
ENDPROC
*
PROCEDURE Dis_1101c
 PARAMETER ptIp
 SELECT suCursales
 STORE f1102suc TO xsUc
 IF vsW3=1
      DO mu1_1101c
      DO coLsc3
      DO CASE
           CASE mrEs="3"
                @iFFS-01.20,mCO0+024.0 Say AllTrim(vDIR)+", "+AllTrim(xNDI) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+00.20,mCO0+024.0 Say AllTrim(vENT)+", "+AllTrim(xND1) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+03.20,mCO0+007.6 Say vCT1 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+03.20,mCO0+079.8 Say vCA1 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+03.20,mCO0+122.0 Say xTL1 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+03.20,mCO0+150.1 Say xAN1 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+03.20,mCO0+156.3 Say xFA1 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
                @iFFS+04.50,mCO0+079.8 Say xMAI Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+05.80,mCO0+007.6 Say vCT2 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+05.80,mCO0+079.8 Say vCA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+05.80,mCO0+122.0 Say xTL2 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+05.80,mCO0+150.1 Say xAN2 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+05.80,mCO0+156.3 Say xFA2 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
                @iFFS+07.10,mCO0+079.8 Say xMA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+08.35,mCO0+007.6 Say vCT3 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
                @iFFS+08.35,mCO0+079.8 Say xCA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+08.35,mCO0+122.0 Say xTL3 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
                @iFFS+08.35,mCO0+150.1 Say xAN3 Font "&mLetAri",10 Style "NQ" Size 1,04.7
                @iFFS+08.35,mCO0+156.3 Say xFA3 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
                @iFFS+09.65,mCO0+079.8 Say xMA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
                @iFFS+11.20,mCO0+014.5 Say xANO Font "&mLetAri",10 Style "NQ" Size 1,06
                IF xtPo=1
                     @iFFS+11.2,mCO0+36 Get  xALQ Font "&mLetAri",10 Style "NQ" Default xALQ Function "*RHT Alquilada;Propia"
                ELSE
                     @iFFS+11.2,mCO0+36 Get  xALQ Font "&mLetAri",10 Style "NQ" Default xALQ Function "*RHT Alquilado;Propio"
                ENDIF
           OTHERWISE
                @iFFS-01.2,mCO0+039.0 Say AllTrim(vDIR)+", "+AllTrim(xNDI) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+00.2,mCO0+039.0 Say AllTrim(vENT)+", "+AllTrim(xND1) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
                @iFFS+03.6,mCO0+007.6 Say vCT1 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+03.6,mCO0+074.9 Say vCA1 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+03.6,mCO0+129.0 Say xTL1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+03.6,mCO0+168.0 Say xAN1 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+03.6,mCO0+176.1 Say xFA1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+05.6,mCO0+007.6 Say vCT2 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+05.6,mCO0+074.9 Say vCA2 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+05.6,mCO0+129.0 Say xTL2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+05.6,mCO0+168.0 Say xAN2 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+05.6,mCO0+176.1 Say xFA2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+07.6,mCO0+007.6 Say vCT3 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
                @iFFS+07.6,mCO0+074.9 Say xCA3 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
                @iFFS+07.6,mCO0+129.0 Say xTL3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+07.6,mCO0+168.0 Say xAN3 Font "&mLetAri",12 Style "NQ" Size 1,05.2
                @iFFS+07.6,mCO0+176.1 Say xFA3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
                @iFFS+10.8,mCO0+014.5 Say xANO Font "&mLetAri",12 Style "NQ" Size 1,06
                @iFFS+03.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
                @iFFS+05.6,mCO0+214.9 Say xMA2 Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
                @iFFS+07.6,mCO0+214.9 Say xMA3 Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
                IF xtPo=1
                     @iFFS+10.8,mCO0+38 Get  xALQ Font "&mLetAri",12 Style "NQ" Default xALQ Function "*RHT Alquilada;Propia"
                ELSE
                     @iFFS+10.8,mCO0+38 Get  xALQ Font "&mLetAri",12 Style "NQ" Default xALQ Function "*RHT Alquilado;Propio"
                ENDIF
      ENDCASE
      READ TIMEOUT 0.01
      DO usU_1101c
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
PROCEDURE P00_1101c
 PRIVATE psIg, pfRa
 DO CASE
      CASE xmOn=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "U$" TO psIg
 ENDCASE
 DO CASE
      CASE xcRe=1
           STORE "Línea de Crédito Aprobada" TO pfRa
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
 @ mfI0-3, mcO0+00.2 TO mfI0-0.8, mcO0+031.4 PATTERN 1
 @ mfI0-3, mcO0+37.9 TO mfI0-0.8, mcO0+106.2 PATTERN 1
 DO coL_fonaz
 @mFI0-2.6,mCO0+01 Say "CÓDIGO:"         Font "&mLetRom",13 Style "BT"
 @mFI0-2.6,mCO0+39 Say "Tipo de Cliente" Font "&mLetRom",12 Style "BT"
 DO coL_fondo
 @mFI0+3.6,mCO0+01 Say "Vendedor:"       Font "&mLetRom",13 Style "BQ"
 DO CASE
      CASE xtPo=1 .OR. xtPp=2
           @mFI0,mCO0+01 Say "Apellidos y Nombres:" Font "&mLetRom",13 Style "BT"
           DO coLbln
           @mFI0,mCO0+34 Edit xAPP                  Font "&mLetRom",13 Style "NQ" Size 1,22,20
           @mFI0,mCO0+67 Edit xAPM                  Font "&mLetRom",13 Style "NQ" Size 1,22,20
           @mFI0,mCO0+99 Edit xNO1                  Font "&mLetRom",13 Style "NQ" Size 1,22,20
      CASE xtPp=1
           @mFI0,mCO0+01 Say "Razón Social:"        Font "&mLetRom",13 Style "BT"
           DO coLbln
           @mFI0,mCO0+22 Edit xNOM                  Font "&mLetRom",13 Style "NQ" Size 1,70,70
 ENDCASE
 DO coLbln
 @mFI0+1.8,mCO0+10 Edit xALI  Font "&mLetRom",13 Style "NQ" Size 1,30,20
 @mFI0+3.6,mCO0+17 Edit xNVE  Font "&mLetRom",13 Style "NQ" Size 1,50,50
 DO coL_fondo
 @mFI0+1.8,mCO0+1 Say "Alias" Font "&mLetRom",13 Style "BQ"
 DO CASE
      CASE xtPo=1
           @mFI0+1.8,mCO0+061.0 Say "D.N.I.:"              Font "&mLetRom",13 Style "BQ"
           @mFI0+1.8,mCO0+092.0 Say "Fecha de Nacimiento:" Font "&mLetRom",13 Style "BQ"
           @mFI0+1.8,mCO0+071.3 Edit xELE                  Font "&mLetRom",13 Style "NQ" Size 1,10.8,15
           @mFI0+1.8,mCO0+125.5 Get  xFNA                  Font "&mLetRom",13 Style "NQ" Size 1,12   Color ,&mColBlN
      OTHERWISE
           @mFI0+1.8,mCO0+058.5 Say "RUC:"                 Font "&mLetRom",13 Style "BQ"
           DO coLbln
           @mFI0+1.8,mCO0+067.0 Get  xRUC                  Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN
           IF xtPp=1
                DO coL_fondo
                @mFI0+1.8,mCO0+092 Say "Giro:"               Font "&mLetRom",13 Style "BQ"
                DO coLbln
                @mFI0+1.8,mCO0+102 Edit xGIR                 Font "&mLetRom",13 Style "NQ" Size 1,18.7,20
                IF mpPe>0
                     DO coL_fonaz
                     @mFI0+0,mCO0+151.3 Say "Percepción" Font "&mLetRom",13 Style "BQ"
                     @mFI0+0,mCO0+178.4 Say "%"          Font "&mLetRom",13 Style "BQ"
                     @mFI0+0,mCO0+169.6 Get xPPE         Font "&mLetRom",13 Style "NQ" Size 1,5.8 Pict "99.99" Color ,&mColBlZ
                ENDIF
                IF mvId=1
                     DO coL_fonve
                     @mFI0-2.3,mCO0+151.3 Say "Sólo Vidrios" Font "&mLetRom",13 Style "BQ"
                     @mFI0-2.2,mCO0+171.1 Get xMED           Font "&mLetRom",13 Style "NQ" Default xMED Function "*RHT Cm;Pulg"
                ENDIF
           ENDIF
 ENDCASE
 IF plIs="1"
      DO coL_fonaz
      @mFI0-2.0,mCO0+151.3 Say "Descuento" Font "&mLetRom",13 Style "BQ"
      @mFI0-2.0,mCO0+178.4 Say "%"         Font "&mLetRom",13 Style "BQ"
      @mFI0+1.7,mCO0+151.3 Say pFRA        Font "&mLetRom",13 Style "BQ"
      @mFI0+3.6,mCO0+092.0 Say "Listas"    Font "&mLetRom",13 Style "BQ"
      @mFI0+3.8,mCO0+155.3 Get xTOT        Font "&mLetRom",11 Style "NQ" Size 1,11.7 Pict "999,999.99" Color ,&mColBlZ
      @mFI0+3.9,mCO0+151.3 Say pSIG        Font "&mLetRom",11 Style "BT" Size 1,03.0
      DO coLblz
      @mFI0-2.0,mCO0+169.6 Get xDCT Font "&mLetRom",13 Style "NQ" Size 1,5.8 Pict "99.99" Color ,&mColBlZ
      @mFI0+3.6,mCO0+102.0 Get xLIS Font "&mLetRom",13 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlZ
      @mFI0+3.6,mCO0+108.2 Get xLI2 Font "&mLetRom",13 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlZ
      @mFI0+3.6,mCO0+114.3 Get xLI3 Font "&mLetRom",13 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlZ
 ENDIF
 DO coL_fonro
 @mFI0+5.7,mCO0+078 Say "Usuario: "+xUSU     Font "&mLetRom",13 Style "BQ" Size 1,42
 @mFI0+5.7,mCO0+141 Say "Fecha: "+Dtoc(xDAT) Font "&mLetRom",13 Style "BQ" Size 1,19.5
 @mFI0+5.7,mCO0+173 Say "Hora: "+xTIM        Font "&mLetRom",13 Style "BQ" Size 1,16.2
 DO coLbln
 @mFI0-2.6,mCO0+17 Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.8 Pict "!!!!" Color ,&mColBlN
 @mFI0-2.6,mCO0+60 Edit xNTI Font "&mLetRom",12 Style "NQ" Size 1,37.6,50
 READ TIMEOUT 0.01
 RELEASE psIg, pfRa
ENDPROC
*
PROCEDURE P01_1101c
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
           @iFFS-01.20,mCO0+008.5 Say "Dirección:"    Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+037.5 Say "Contactos"     Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+087.0 Say "Cargos"        Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+129.5 Say "Teléfonos"     Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+150.4 Say "Anx"           Font "&mLetAri",10 Style "BT"
           @iFFS+01.80,mCO0+172.5 Say "Fax"           Font "&mLetAri",10 Style "BT"
           @iFFS+04.50,mCO0+070.2 Say "e-mail:"       Font "&mLetAri",10 Style "NT"
           @iFFS+07.10,mCO0+070.2 Say "e-mail:"       Font "&mLetAri",10 Style "NT"
           @iFFS+09.65,mCO0+070.2 Say "e-mail:"       Font "&mLetAri",10 Style "NT"
           @iFFS+11.20,mCO0+008.0 Say "Año:"          Font "&mLetAri",10 Style "BT"
           IF xtPo=1
                @iFFS+00.2,mCO0+08.5 Say "Dir.Trabajo:" Font "&mLetAri",10 Style "NT"
                @iFFS+11.2,mCO0+28.0 Say "Casa"         Font "&mLetAri",10 Style "BT"
           ELSE
                @iFFS+00.2,mCO0+08.5 Say "Lug.Entrega:" Font "&mLetAri",10 Style "NT"
                @iFFS+11.2,mCO0+28.0 Say "Local"        Font "&mLetAri",10 Style "BT"
           ENDIF
           DO coLsc3
           @iFFS-01.20,mCO0+024.0 Say AllTrim(vDIR)+", "+AllTrim(xNDI) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+00.20,mCO0+024.0 Say AllTrim(vENT)+", "+AllTrim(xND1) Font "&mLetAri",10 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+03.20,mCO0+007.6 Say vCT1 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+03.20,mCO0+079.8 Say vCA1 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+03.20,mCO0+122.0 Say xTL1 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+03.20,mCO0+150.1 Say xAN1 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+03.20,mCO0+156.3 Say xFA1 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           @iFFS+04.50,mCO0+079.8 Say xMAI Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+05.80,mCO0+007.6 Say vCT2 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+05.80,mCO0+079.8 Say vCA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+05.80,mCO0+122.0 Say xTL2 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+05.80,mCO0+150.1 Say xAN2 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+05.80,mCO0+156.3 Say xFA2 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           @iFFS+07.10,mCO0+079.8 Say xMA2 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+08.35,mCO0+007.6 Say vCT3 Font "&mLetAri",10 Style "NQ" Size 1,59.7 Pict "@S50"
           @iFFS+08.35,mCO0+079.8 Say xCA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+08.35,mCO0+122.0 Say xTL3 Font "&mLetAri",10 Style "NQ" Size 1,23.0 Pict "@S20"
           @iFFS+08.35,mCO0+150.1 Say xAN3 Font "&mLetAri",10 Style "NQ" Size 1,04.7
           @iFFS+08.35,mCO0+156.3 Say xFA3 Font "&mLetAri",10 Style "NQ" Size 1,36.0 Pict "@S30"
           @iFFS+09.65,mCO0+079.8 Say xMA3 Font "&mLetAri",10 Style "NQ" Size 1,34.7 Pict "@S30"
           @iFFS+11.20,mCO0+014.5 Say xANO Font "&mLetAri",10 Style "NQ" Size 1,06
           IF xtPo=1
                @iFFS+11.2,mCO0+36 Get  xALQ Font "&mLetAri",10 Style "NQ" Default xALQ Function "*RHT Alquilada;Propia"
           ELSE
                @iFFS+11.2,mCO0+36 Get  xALQ Font "&mLetAri",10 Style "NQ" Default xALQ Function "*RHT Alquilado;Propio"
           ENDIF
      OTHERWISE
           @ ifFs+01.70, mcO0+007.4 TO ifFs+01.7, mcO0+muCo
           @ ifFs+03.10, mcO0+007.4 TO ifFs+03.1, mcO0+muCo
           @ ifFs+10.00, mcO0+007.4 TO ifFs+10.0, mcO0+muCo
           @ ifFs+01.70, mcO0+074.4 TO ifFs+10.0, mcO0+074.4
           @ ifFs+01.70, mcO0+128.4 TO ifFs+10.0, mcO0+128.4
           @ ifFs+01.70, mcO0+167.4 TO ifFs+10.0, mcO0+167.4
           @ ifFs+01.70, mcO0+175.6 TO ifFs+10.0, mcO0+175.6
           @ ifFs+01.70, mcO0+214.4 TO ifFs+10.0, mcO0+214.4
           @iFFS-01.20,mCO0+008.5 Say "Dirección:"    Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+033.5 Say "Contactos"     Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+095.0 Say "Cargos"        Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+139.5 Say "Teléfonos"     Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+168.1 Say "Anx"           Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+190.5 Say "Fax"           Font "&mLetAri",12 Style "BT"
           @iFFS+01.80,mCO0+232.5 Say "e-mail"        Font "&mLetAri",12 Style "BT"
           @iFFS+10.80,mCO0+008.0 Say "Año:"          Font "&mLetAri",12 Style "BT"
           IF xtPo=1
                @iFFS+00.2,mCO0+08.5 Say "Dirección de Trabajo:" Font "&mLetAri",12 Style "BT"
                @iFFS+10.8,mCO0+28.0 Say "Casa"                  Font "&mLetAri",12 Style "BT"
           ELSE
                @iFFS+00.2,mCO0+08.5 Say "Lugar de Entrega:"     Font "&mLetAri",12 Style "BT"
                @iFFS+10.8,mCO0+28.0 Say "Local"                 Font "&mLetAri",12 Style "BT"
           ENDIF
           DO coLsc3
           @iFFS-01.2,mCO0+039.0 Say AllTrim(vDIR)+", "+AllTrim(xNDI) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+00.2,mCO0+039.0 Say AllTrim(vENT)+", "+AllTrim(xND1) Font "&mLetAri",12 Style "NQ" Size 1,109 Pict "@S111"
           @iFFS+03.6,mCO0+007.6 Say vCT1 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+03.6,mCO0+074.9 Say vCA1 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+03.6,mCO0+129.0 Say xTL1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+03.6,mCO0+168.0 Say xAN1 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+03.6,mCO0+176.1 Say xFA1 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+05.6,mCO0+007.6 Say vCT2 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+05.6,mCO0+074.9 Say vCA2 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+05.6,mCO0+129.0 Say xTL2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+05.6,mCO0+168.0 Say xAN2 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+05.6,mCO0+176.1 Say xFA2 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+07.6,mCO0+007.6 Say vCT3 Font "&mLetAri",12 Style "NQ" Size 1,47.4 Pict "@S50"
           @iFFS+07.6,mCO0+074.9 Say xCA3 Font "&mLetAri",12 Style "NQ" Size 1,37.8 Pict "@S30"
           @iFFS+07.6,mCO0+129.0 Say xTL3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+07.6,mCO0+168.0 Say xAN3 Font "&mLetAri",12 Style "NQ" Size 1,05.2
           @iFFS+07.6,mCO0+176.1 Say xFA3 Font "&mLetAri",12 Style "NQ" Size 1,27.2 Pict "@S20"
           @iFFS+10.8,mCO0+014.5 Say xANO Font "&mLetAri",12 Style "NQ" Size 1,06
           @iFFS+03.6,mCO0+214.9 Say xMAI Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
           @iFFS+05.6,mCO0+214.9 Say xMA2 Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
           @iFFS+07.6,mCO0+214.9 Say xMA3 Font "&mLetAri",12 Style "NQ" Size 1,37.6 Pict "@S39"
           IF xtPo=1
                @iFFS+10.8,mCO0+38 Get  xALQ Font "&mLetAri",12 Style "NQ" Default xALQ Function "*RHT Alquilada;Propia"
           ELSE
                @iFFS+10.8,mCO0+38 Get  xALQ Font "&mLetAri",12 Style "NQ" Default xALQ Function "*RHT Alquilado;Propio"
           ENDIF
 ENDCASE
 READ TIMEOUT 0.01
 DO usU_1101c
ENDPROC
*
PROCEDURE Usu_1101c
 DO coL_fonro
 DO CASE
      CASE mrEs="3"
           @iFFS+11.5,mCO0+144.6 to iFFS+14.2,mCO0+198.8  Pattern 1 Color &mColPlP
           @iFFS+11.7,mCO0+145.1 Say "Usuario: "+xUSU     Font "&mLetAri",12 Style "NT" Size 1,38 Pict "@S40"
           @iFFS+12.8,mCO0+145.1 Say "Fecha: "+Dtoc(xDAT) Font "&mLetAri",12 Style "NT" Size 1,19 Pict "@S18"
           @iFFS+12.8,mCO0+176.0 Say " Hora: "+xTIM       Font "&mLetAri",12 Style "NT" Size 1,16 Pict "@S19"
      OTHERWISE
           @iFFS+11.5,mCO0+210.6 to iFFS+14.2,mCO0+265.8  Pattern 1 Color &mColPlP
           @iFFS+11.7,mCO0+211.1 Say "Usuario: "+xUSU     Font "&mLetAri",12 Style "NT" Size 1,38 Pict "@S40"
           @iFFS+12.8,mCO0+211.1 Say "Fecha: "+Dtoc(xDAT) Font "&mLetAri",12 Style "NT" Size 1,19 Pict "@S18"
           @iFFS+12.8,mCO0+242.0 Say " Hora: "+xTIM       Font "&mLetAri",12 Style "NT" Size 1,16 Pict "@S19"
 ENDCASE
ENDPROC
*
PROCEDURE See_1101c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vcOd+vsUc
      CASE psEe="i"
           SEEK vcOd+isUc
      CASE psEe="u"
           SEEK vcOd+usUc
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1101c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE isUc TO vsUc
      CASE pmU1="u" .AND. pmU2="v"
           STORE usUc TO vsUc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1102suc TO vsUc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1102suc TO usUc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1102suc TO isUc
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_1101c
 DO rs1_1101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_1101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_1101c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT suCursales
 DO seE_1101c WITH "i"
 DO paN_1101c
 STORE ifFs TO vfFs
 DO muE_1101c WITH "i", "v"
 DO seE_1101c WITH "v"
 DO diS_1101c WITH "R"
ENDPROC
*
PROCEDURE Clp_1101c
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
           DO diS_1101c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1101c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_1101c WITH "F", "v"
           DO diS_1101c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1101c
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 2.500 SAY  ;
   "En esta parte de la consulta, se muestran todas las Sucursales que un"
 @ pfIl+01, 2.500 SAY  ;
   "Cliente tenga registradas. Si no existen estos códigos sólo se verán los"
 @ pfIl+02, 2.500 SAY "datos principales."
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
