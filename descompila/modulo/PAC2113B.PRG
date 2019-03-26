 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2111b IN PAC2111B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(mtMa) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))+"*"> ;
    UPPER(ALLTRIM(vcOd))+"*" .OR. UPPER(ALLTRIM(ucOd))+"*"< ;
    UPPER(ALLTRIM(vcOd))+"*")) .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(idEs))+ ;
    "*">UPPER(ALLTRIM(vdEs))+"*" .OR. UPPER(ALLTRIM(udEs))+"*"< ;
    UPPER(ALLTRIM(vdEs))+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vdEs))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2113b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      DO seE_2112b IN PAC2112B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vdEs))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2112b IN PAC2112B WITH "F", "v"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
      ENDIF
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2112b IN PAC2112B WITH "i"
      SET NEAR OFF
      DO paN_2113b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
      DO seE_2112b IN PAC2112B WITH "v"
 ENDIF
 DO diS_2113b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           IF mvIr=1
                mkEy = INKEY(0.1, "HM")
                IF mkEy=0
                     DO viR_000
                     LOOP
                ENDIF
           ELSE
                mkEy = INKEY(0, "HM")
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2113b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2113b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2113b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2113b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2113b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2113b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                SET READBORDER ON
                DO p02_2113a
                SET READBORDER OFF
                DO caM_2113b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                SET READBORDER ON
                DO opC_2113b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b IN PAC2112B WITH "v"
                DO diS_2113b WITH "R"
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Lista de Precios", "Listado", 24
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Codigo"
                pxLs.ceLls(3, 02).vaLue = "Descripcion"
                pxLs.ceLls(3, 03).vaLue = "Unidad de Venta"
                pxLs.ceLls(3, 04).vaLue = "Precio-1 S/."
                pxLs.ceLls(3, 05).vaLue = "Precio-2 S/."
                pxLs.ceLls(3, 06).vaLue = "Precio-3 S/."
                pxLs.ceLls(3, 07).vaLue = "Precio-4 S/."
                pxLs.ceLls(3, 08).vaLue = "Precio-5 S/."
                pxLs.ceLls(3, 09).vaLue = "Precio-6 S/."
                pxLs.ceLls(3, 10).vaLue = "Precio-7 S/."
                pxLs.ceLls(3, 11).vaLue = "Precio-8 S/."
                pxLs.ceLls(3, 12).vaLue = "Precio-9 S/."
                pxLs.ceLls(3, 13).vaLue = "Precio-10 S/."
                pxLs.ceLls(3, 14).vaLue = "Precio-1 US$"
                pxLs.ceLls(3, 15).vaLue = "Precio-2 US$"
                pxLs.ceLls(3, 16).vaLue = "Precio-3 US$"
                pxLs.ceLls(3, 17).vaLue = "Precio-4 US$"
                pxLs.ceLls(3, 18).vaLue = "Precio-5 US$"
                pxLs.ceLls(3, 19).vaLue = "Precio-6 US$"
                pxLs.ceLls(3, 20).vaLue = "Precio-7 US$"
                pxLs.ceLls(3, 21).vaLue = "Precio-8 US$"
                pxLs.ceLls(3, 22).vaLue = "Precio-9 US$"
                pxLs.ceLls(3, 23).vaLue = "Precio-10 US$"
                pxLs.ceLls(3, 24).vaLue = "Stock"
                pxLs.raNge(pxLs.coLumns(1),  ;
                          pxLs.coLumns(03)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(4),  ;
                          pxLs.coLumns(23)).nuMberformat = "#,###,###,##0.0000"
                pxLs.raNge(pxLs.coLumns(4),  ;
                          pxLs.coLumns(23)).hoRizontalalignment = 1
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                GOTO TOP
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     DO muE_2111a IN PAC2111A
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = xcOd
                     pxLs.ceLls(viT1, 02).vaLue = xdEs
                     pxLs.ceLls(viT1, 03).vaLue = xnUv
                     pxLs.ceLls(viT1, 04).vaLue = xvV1
                     pxLs.ceLls(viT1, 05).vaLue = xvV3
                     pxLs.ceLls(viT1, 06).vaLue = xvV5
                     pxLs.ceLls(viT1, 07).vaLue = xvV7
                     pxLs.ceLls(viT1, 08).vaLue = xvV9
                     pxLs.ceLls(viT1, 09).vaLue = xvVa
                     pxLs.ceLls(viT1, 10).vaLue = xvVc
                     pxLs.ceLls(viT1, 11).vaLue = xvVe
                     pxLs.ceLls(viT1, 12).vaLue = xvVg
                     pxLs.ceLls(viT1, 13).vaLue = xvVi
                     pxLs.ceLls(viT1, 14).vaLue = xvV2
                     pxLs.ceLls(viT1, 15).vaLue = xvV4
                     pxLs.ceLls(viT1, 16).vaLue = xvV6
                     pxLs.ceLls(viT1, 17).vaLue = xvV8
                     pxLs.ceLls(viT1, 18).vaLue = xvV0
                     pxLs.ceLls(viT1, 19).vaLue = xvVb
                     pxLs.ceLls(viT1, 20).vaLue = xvVd
                     pxLs.ceLls(viT1, 21).vaLue = xvVf
                     pxLs.ceLls(viT1, 22).vaLue = xvVh
                     pxLs.ceLls(viT1, 23).vaLue = xvVj
                     pxLs.ceLls(viT1, 24).vaLue = xsTo
                     STORE viT1+1 TO viT1
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b IN PAC2112B WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2113A", "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b IN PAC2112B WITH "v"
                DO diS_2113b WITH "R"
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=vuLt
                          STORE 1 TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE vuLt TO vsW2
                     CASE mkEy=k_Left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                DO p01_2113a
                DO caM_2113b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO paC2111c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b IN PAC2111B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112b IN PAC2112B WITH "v"
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2113b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b IN PAC2111B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112b IN PAC2112B WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(icOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(icOd))+"*"
                                    DO paN_2113b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2113b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(ucOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(ucOd))+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2113b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2113b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "u", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "N"
                          SKIP
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2113a WITH ffIl, ffIl+1
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               DO muE_2112b IN PAC2112B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "N"
                          SKIP -1
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2113a WITH ifIl, ifIl+1
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2112b IN PAC2112B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112b IN PAC2112B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2113b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112b IN PAC2112B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2113b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2113b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112b IN PAC2112B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2113b
 DO pn1_2113b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2113b
 DO pn1_2113b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2113b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2112b IN PAC2112B WITH "F", "i"
 DO muE_2112b IN PAC2112B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. UPPER(ALLTRIM(f2111cod))+"*"= ;
                UPPER(ALLTRIM(xcOd))+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2113b WITH "N"
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2113a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2113b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. f2111cst=1
           DO coLscz
      CASE ptIp="R" .AND. f2111cst=1
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,27.3 Pict "!!!!!!!!!!!!!!!!!!!!"
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,89.9 Pict "@S92"
 IF f2111md3=2
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFIL,iCLN+28 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+118.5 Say F2111NUC Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "@S12"
      OTHERWISE
           @vFIL,iCLN+118.5 Say F2111NUC Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "@S12"
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f2111md2=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md2=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE (vsW2=1 .AND. mmOn=1) .OR. (vsW2=4 .AND. mmOn=2)
                     @vFIL,iCLN+128.7 Say F2111VV1    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+146.5 Say F2111VV3 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+164.3 Say F2111VV5 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+182.2 Say F2111VV7 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                CASE (vsW2=2 .AND. mmOn=1) .OR. (vsW2=5 .AND. mmOn=2)
                     IF mlSt>=5
                          @vFIL,iCLN+128.7 Say F2111VV9 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+128.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+146.5 Say F2111VVA Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=7
                          @vFIL,iCLN+164.3 Say F2111VVC Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+182.2 Say F2111VVE Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                CASE (vsW2=3 .AND. mmOn=1) .OR. (vsW2=6 .AND. mmOn=2)
                     IF mlSt>=9
                          @vFIL,iCLN+128.7 Say F2111VVG Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+128.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+146.5 Say F2111VVI Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     @vFIL,iCLN+164.3 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     @vFIL,iCLN+182.2 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,17.2
                CASE (vsW2=4 .AND. mmOn=1) .OR. (vsW2=1 .AND. mmOn=2)
                     @vFIL,iCLN+128.7 Say F2111VV2 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+146.5 Say F2111VV4 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+164.3 Say F2111VV6 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+182.2 Say F2111VV8 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                CASE (vsW2=5 .AND. mmOn=1) .OR. (vsW2=2 .AND. mmOn=2)
                     IF mlSt>=5
                          @vFIL,iCLN+128.7 Say F2111VV0 Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+128.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+146.5 Say F2111VVB Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=7
                          @vFIL,iCLN+164.3 Say F2111VVD Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+182.2 Say F2111VVF Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                CASE (vsW2=6 .AND. mmOn=1) .OR. (vsW2=3 .AND. mmOn=2)
                     IF mlSt>=9
                          @vFIL,iCLN+128.7 Say F2111VVH Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+128.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+146.5 Say F2111VVJ Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+146.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     ENDIF
                     @vFIL,iCLN+164.3 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,17.2
                     @vFIL,iCLN+182.2 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,17.2
           ENDCASE
      OTHERWISE
           DO CASE
                CASE vsW2=1 .AND. mmOn=1
                     @vFIL,iCLN+129.9 Say F2111VV1    Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+147.3 Say F2111VV3 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+164.6 Say F2111VV5 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+182.0 Say F2111VV7 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=5
                          @vFIL,iCLN+199.4 Say F2111VV9 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+199.4 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+216.8 Say F2111VVA Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+216.8 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=7
                          @vFIL,iCLN+234.2 Say F2111VVC Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+234.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+251.6 Say F2111VVE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+251.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                CASE vsW2=2 .AND. mmOn=1
                     IF mlSt>=9
                          @vFIL,iCLN+129.9 Say F2111VVG Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+129.9 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+147.3 Say F2111VVI Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     @vFIL,iCLN+164.6 Say F2111VV2    Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+182.0 Say F2111VV4 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+199.4 Say F2111VV6 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+199.4 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+216.8 Say F2111VV8 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+216.8 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=5
                          @vFIL,iCLN+234.2 Say F2111VV0 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+234.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+251.6 Say F2111VVB Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+251.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                CASE vsW2=3 .AND. mmOn=1
                     IF mlSt>=7
                          @vFIL,iCLN+129.9 Say F2111VVD Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+129.9 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+147.3 Say F2111VVF Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=9
                          @vFIL,iCLN+164.6 Say F2111VVH Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+182.0 Say F2111VVJ Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     @vFIL,iCLN+199.4 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+216.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+234.2 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+251.6 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                CASE vsW2=1 .AND. mmOn=2
                     @vFIL,iCLN+129.7 Say F2111VV2    Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+147.5 Say F2111VV4 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.3 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+164.6 Say F2111VV6 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+182.0 Say F2111VV8 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=5
                          @vFIL,iCLN+199.4 Say F2111VV0 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+199.4 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+216.8 Say F2111VVB Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+216.8 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=7
                          @vFIL,iCLN+234.2 Say F2111VVD Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+234.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+251.6 Say F2111VVF Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+251.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                CASE vsW2=2 .AND. mmOn=2
                     IF mlSt>=9
                          @vFIL,iCLN+129.7 Say F2111VVH Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+129.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+147.5 Say F2111VVJ Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     @vFIL,iCLN+164.6 Say F2111VV1    Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     IF mlSt>=2
                          @vFIL,iCLN+182.0 Say F2111VV3 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=3
                          @vFIL,iCLN+199.4 Say F2111VV5 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+199.4 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=4
                          @vFIL,iCLN+216.8 Say F2111VV7 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+216.8 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=5
                          @vFIL,iCLN+234.2 Say F2111VV9 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+234.2 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=6
                          @vFIL,iCLN+251.6 Say F2111VVA Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+251.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                CASE vsW2=3 .AND. mmOn=2
                     IF mlSt>=7
                          @vFIL,iCLN+129.7 Say F2111VVC Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+129.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=8
                          @vFIL,iCLN+147.5 Say F2111VVE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+147.5 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=9
                          @vFIL,iCLN+164.6 Say F2111VVG Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+164.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     IF mlSt>=10
                          @vFIL,iCLN+182.0 Say F2111VVI Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vFIL,iCLN+182.0 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     ENDIF
                     @vFIL,iCLN+199.4 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+216.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+234.2 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
                     @vFIL,iCLN+251.6 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,16.7
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Opc_2113b
 SAVE SCREEN TO vpAn_11
 SELECT teMporal
 ZAP
 REINDEX
 SELECT prOductos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f2111sto<>0
           @iFIL+1.8,iCLN+21.5 Say F2111COD Font "&mLetAri",8 Style "NQ" Size 1,20
           DO reM_2111a IN PAC2111A
      ENDIF
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE 01 TO vsW1
      STORE SPACE(70) TO vpAl, cpAl
      STORE "No hay productos con stock..." TO mmSj
      DO poNmsj
 ELSE
      STORE 02 TO vsW1
      STORE 00 TO csW1
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2111b IN PAC2111B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2113b
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.4,mCO0+11 Say "Para ver todo pulsar F9"  Font "&mLetRom",11 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2113b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2112b IN PAC2112B WITH "v", "x"
 DO orD_2111b IN PAC2111B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2112b IN PAC2112B WITH "i"
 DO pa1_2113b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "x", "v"
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 DO diS_2113b WITH "R"
ENDPROC
*
PROCEDURE Imp_2113b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PAC2113B
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
 DO reP_2113b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2113b
 PRIVATE ptAm, ppR1, ppR2, ppR3, ptMc, pcOd, pnUv, pdEs, psTo
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vmOv=1
      STORE 99 TO mkEy
      DO CASE
           CASE vsW1=1
                DO orD_0000a WITH "2111", "A", "F2111TIP", "A"
           CASE vsW1=2
                DO orD_0000a WITH "TMP", "A", "F2111TIP", "A"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 GOTO TOP
 STORE 09 TO mcLn
 STORE 97 TO ptAm
 STORE 16.7 TO ptMc
 STORE mlEtari TO vfOn
 STORE 09 TO vfTm
 STORE mcLn+001 TO vpS0
 STORE mcLn+093.2 TO vpS3
 STORE mcLn+110.2 TO vpS4
 STORE mcLn+127.2 TO vpS5
 STORE mcLn+144.2 TO vpS6
 STORE 14 TO vtM2
 DO CASE
      CASE mtMc<=10
           STORE 07 TO vtM1
           STORE mcLn+18 TO vpS1
           STORE mcLn+29 TO vpS2
           IF voPu=1
                STORE 60 TO vtM3
           ELSE
                STORE 72 TO vtM3
           ENDIF
      CASE mtMc<=15
           STORE 12 TO vtM1
           STORE mcLn+22 TO vpS1
           STORE mcLn+33 TO vpS2
           IF voPu=1
                STORE 56 TO vtM3
           ELSE
                STORE 68 TO vtM3
           ENDIF
      OTHERWISE
           STORE 17 TO vtM1
           STORE mcLn+27 TO vpS1
           STORE mcLn+38 TO vpS2
           IF voPu=1
                STORE 52 TO vtM3
           ELSE
                STORE 64 TO vtM3
           ENDIF
 ENDCASE
 IF vnL1+vnL2+vnL3>1
      STORE vtM3-13 TO vtM3
 ENDIF
 IF vnL1+vnL2+vnL3>2
      STORE vtM3-13 TO vtM3
 ENDIF
 STORE 00 TO vlIn, vpAg
 STORE SPACE(02) TO xtIp
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f2111est="9" .OR. ALLTRIM(f2111cod)+"*"<ALLTRIM(dcOd)+"*" .OR.  ;
         ALLTRIM(f2111cod)+"*">ALLTRIM(hcOd)+"*" .OR. (voPs=2 .AND.  ;
         f2111sto=0 .AND. f2111tpo=1 .AND. f2111cst=1)
           SKIP
           LOOP
      ENDIF
      STORE 1 TO xsW1, xsW2, xsW3
      STORE 0 TO ppR1, ppR2, ppR3
      STORE f2111tip TO vtIp
      DO prE_2113b
      DO cj1_2112b IN PAC2112B
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO CASE
           CASE xsW1=0 .AND. xsW2=0 .AND. xsW3=0
                SKIP
                LOOP
           CASE xsW1+xsW2+xsW3=2
                IF xsW2=0
                     STORE ppR3 TO ppR2
                     STORE 0 TO ppR3
                ENDIF
      ENDCASE
      IF vpAg=0 .OR. vlIn>mpAg-4 .OR. (vmOv=1 .AND. LEN(ALLTRIM(xtIp))<>0  ;
         .AND. vtIp<>xtIp)
           IF vpAg=0 .OR. vlIn>mpAg-4
                DO caB_2113b WITH ptAm
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vtIp TO xtIp
           IF vmOv=1
                STORE vlIn+0.8 TO vlIn
                DO li0_2113b
                STORE vlIn+0.4 TO vlIn
                DO li0_2113b
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+1 Say vNTI Font "&mLetRom",12 Style "BQ"
                ENDIF
                DO li0_2113b
                STORE vlIn+0.4 TO vlIn
                DO li0_2113b
                IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
                     DO liN_0000a WITH ptAm, vlIn
                ENDIF
                STORE vlIn+0.1 TO vlIn
                DO li0_2113b
           ENDIF
      ENDIF
      STORE vlIn+0.8 TO vlIn
      DO liN_2113b
      STORE vlIn+0.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           STORE SUBSTR(f2111cod, 1, vtM1+3) TO pcOd
           STORE SUBSTR(f2111nuv, 1, vtM2+3) TO pnUv
           STORE SUBSTR(f2111des, 1, vtM3+3) TO pdEs
           STORE f2111sto TO psTo
           IF AT("-", pnUv)<>0
                STORE ALLTRIM(SUBSTR(pnUv, AT("-", pnUv)+1, 20)) TO pnUv
           ENDIF
           @vLIN,vPS0 Say pCOD Font "&vFON",vFTM Style "NQ" Size 1,vTM1
           @vLIN,vPS1 Say pNUV Font "&vFON",vFTM Style "NQ" Size 1,vTM2
           @vLIN,vPS2 Say pDES Font "&vFON",vFTM Style "NQ" Size 1,vTM3
           DO CASE
                CASE vnL1+vnL2+vnL3=1
                     IF voPu=1
                          @vLIN,vPS5 Say pSTO Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     ENDIF
                     @vLIN,vPS6    Say pPR1 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                CASE vnL1+vnL2+vnL3=2
                     IF voPu=1
                          @vLIN,vPS4 Say pSTO Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     ENDIF
                     @vLIN,vPS5 Say pPR1 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     @vLIN,vPS6 Say pPR2 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                CASE vnL1+vnL2+vnL3=3
                     IF voPu=1
                          @vLIN,vPS3 Say pSTO Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     ENDIF
                     @vLIN,vPS4 Say pPR1 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     @vLIN,vPS5 Say pPR2 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
                     @vLIN,vPS6 Say pPR3 Font "&vFON",vFTM Style "NQ" Size 1,pTMC Pict "999,999.9999"
           ENDCASE
           DO liN_2113b
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+0.1 TO vlIn
      DO liN_2113b
      IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
           DO liN_0000a WITH ptAm, vlIn
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, ppR1, ppR2, ppR3, ptMc, pcOd, pnUv, pdEs, psTo
ENDPROC
*
PROCEDURE Cab_2113b
 PARAMETER ptAm
 PRIVATE psIg, pfRa, plT1, plT2, plT3, pcL3, pcL4, pcL5, pcL6
 STORE "     Stock" TO pfRa
 STORE "   Lista-"+STR(voPc, 2, 0) TO plT1
 STORE "   Lista-"+STR(voPr, 2, 0) TO plT2
 STORE "   Lista-"+STR(voPt, 2, 0) TO plT3
 STORE vpS3 TO pcL3
 STORE vpS4 TO pcL4
 STORE vpS5 TO pcL5
 STORE vpS6 TO pcL6
 STORE pcL3-13 TO pcL3
 STORE pcL4-13 TO pcL4
 STORE pcL5-13 TO pcL5
 STORE pcL6-13 TO pcL6
 IF mlIn<>1
      STORE "    "+pfRa TO pfRa
      STORE "    "+plT1 TO plT1
      STORE "    "+plT2 TO plT2
      STORE "    "+plT3 TO plT3
 ENDIF
 DO CASE
      CASE vmOn=1
           STORE "S/" TO psIg
      CASE vmOn=1
           STORE "US$" TO psIg
 ENDCASE
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
      @vLIN,mCLN Say "LISTA DE PRECIOS "+pSIG Font "&mLetAri",13 Style "BQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.0 TO vlIn
 DO liN_2113b
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,vPS0 Say "Código"      Font "&mLetAri",10 Style "BT"
      @vLIN,vPS1 Say "Unidad"      Font "&mLetAri",10 Style "BT"
      @vLIN,vPS2 Say "Descripción" Font "&mLetAri",10 Style "BT"
      DO CASE
           CASE voPu=1 .AND. vnL1+vnL2+vnL3=1
                @vLIN,pCL5 Say pFRA Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT1 Font "&mLetAri",10 Style "BT"
           CASE voPu=1 .AND. vnL1+vnL2+vnL3=2 .AND. vnL2=1
                @vLIN,pCL4 Say pFRA Font "&mLetAri",10 Style "BT"
                @vLIN,pCL5 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT2 Font "&mLetAri",10 Style "BT"
           CASE voPu=1 .AND. vnL1+vnL2+vnL3=2 .AND. vnL2=2
                @vLIN,pCL4 Say pFRA Font "&mLetAri",10 Style "BT"
                @vLIN,pCL5 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT3 Font "&mLetAri",10 Style "BT"
           CASE voPu=1 .AND. vnL1+vnL2+vnL3=3
                @vLIN,pCL3 Say pFRA Font "&mLetAri",10 Style "BT"
                @vLIN,pCL4 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL5 Say pLT2 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT3 Font "&mLetAri",10 Style "BT"
           CASE voPu=2 .AND. vnL1+vnL2+vnL3=1
                @vLIN,pCL6 Say pLT1 Font "&mLetAri",10 Style "BT"
           CASE voPu=2 .AND. vnL1+vnL2+vnL3=2 .AND. vnL2=1
                @vLIN,pCL5 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT2 Font "&mLetAri",10 Style "BT"
           CASE voPu=2 .AND. vnL1+vnL2+vnL3=2 .AND. vnL2=2
                @vLIN,pCL5 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT3 Font "&mLetAri",10 Style "BT"
           CASE voPu=2 .AND. vnL1+vnL2+vnL3=3
                @vLIN,pCL4 Say pLT1 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL5 Say pLT2 Font "&mLetAri",10 Style "BT"
                @vLIN,pCL6 Say pLT3 Font "&mLetAri",10 Style "BT"
      ENDCASE
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2113b
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2113b
 DO coL_pr1
 RELEASE psIg, pfRa, plT1, plT2, plT3, pcL3, pcL4, pcL5, pcL6
ENDPROC
*
PROCEDURE Lin_2113b
 PRIVATE pvAr
 STORE 14 TO pvAr
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO li0_2113b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vLIN,vPS1-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,vPS2-1.4 Say Chr(124) Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE vnL1+vnL2+vnL3=1
           IF voPu=1
                @vLIN,vPS5-pVAR Say Chr(124) Font "&mLetAri",9 Style "NT"
           ENDIF
           @vLIN,vPS6-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vnL1+vnL2+vnL3=2
           IF voPu=1
                @vLIN,vPS4-pVAR Say Chr(124) Font "&mLetAri",9 Style "NT"
           ENDIF
           @vLIN,vPS5-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS6-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vnL1+vnL2+vnL3=3
           IF voPu=1
                @vLIN,vPS3-pVAR Say Chr(124) Font "&mLetAri",9 Style "NT"
           ENDIF
           @vLIN,vPS4-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS5-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS6-pVAR    Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDCASE
 RELEASE pvAr
ENDPROC
*
PROCEDURE Li0_2113b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 @vLIN,mCLN-000.4 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+148.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Pre_2113b
 DO CASE
      CASE vmOn=1
           IF (voPc=1 .AND. f2111vv1=0) .OR. (voPc=6 .AND. f2111vva=0)  ;
              .OR. (voPc=2 .AND. f2111vv3=0) .OR. (voPc=7 .AND. f2111vvc= ;
              0) .OR. (voPc=3 .AND. f2111vv5=0) .OR. (voPc=8 .AND.  ;
              f2111vve=0) .OR. (voPc=4 .AND. f2111vv7=0) .OR. (voPc=9  ;
              .AND. f2111vvg=0) .OR. (voPc=5 .AND. f2111vv9=0) .OR. (voPc= ;
              10 .AND. f2111vvi=0)
                STORE 0 TO xsW1
           ELSE
                DO CASE
                     CASE voPc=1
                          STORE f2111vv1 TO ppR1
                     CASE voPc=2
                          STORE f2111vv3 TO ppR1
                     CASE voPc=3
                          STORE f2111vv5 TO ppR1
                     CASE voPc=4
                          STORE f2111vv7 TO ppR1
                     CASE voPc=5
                          STORE f2111vv9 TO ppR1
                     CASE voPc=6
                          STORE f2111vva TO ppR1
                     CASE voPc=7
                          STORE f2111vvc TO ppR1
                     CASE voPc=8
                          STORE f2111vve TO ppR1
                     CASE voPc=9
                          STORE f2111vvg TO ppR1
                     CASE voPc=10
                          STORE f2111vvi TO ppR1
                ENDCASE
           ENDIF
           IF voPr=0 .OR. (voPr=1 .AND. f2111vv1=0) .OR. (voPr=6 .AND.  ;
              f2111vva=0) .OR. (voPr=2 .AND. f2111vv3=0) .OR. (voPr=7  ;
              .AND. f2111vvc=0) .OR. (voPr=3 .AND. f2111vv5=0) .OR. (voPr= ;
              8 .AND. f2111vve=0) .OR. (voPr=4 .AND. f2111vv7=0) .OR.  ;
              (voPr=9 .AND. f2111vvg=0) .OR. (voPr=5 .AND. f2111vv9=0)  ;
              .OR. (voPr=10 .AND. f2111vvi=0)
                STORE 0 TO xsW2
           ELSE
                DO CASE
                     CASE voPr=1
                          STORE f2111vv1 TO ppR2
                     CASE voPr=2
                          STORE f2111vv3 TO ppR2
                     CASE voPr=3
                          STORE f2111vv5 TO ppR2
                     CASE voPr=4
                          STORE f2111vv7 TO ppR2
                     CASE voPr=5
                          STORE f2111vv9 TO ppR2
                     CASE voPr=6
                          STORE f2111vva TO ppR2
                     CASE voPr=7
                          STORE f2111vvc TO ppR2
                     CASE voPr=8
                          STORE f2111vve TO ppR2
                     CASE voPr=9
                          STORE f2111vvg TO ppR2
                     CASE voPr=10
                          STORE f2111vvi TO ppR2
                ENDCASE
           ENDIF
           IF voPt=0 .OR. (voPt=1 .AND. f2111vv1=0) .OR. (voPt=6 .AND.  ;
              f2111vva=0) .OR. (voPt=2 .AND. f2111vv3=0) .OR. (voPt=7  ;
              .AND. f2111vvc=0) .OR. (voPt=3 .AND. f2111vv5=0) .OR. (voPt= ;
              8 .AND. f2111vve=0) .OR. (voPt=4 .AND. f2111vv7=0) .OR.  ;
              (voPt=9 .AND. f2111vvg=0) .OR. (voPt=5 .AND. f2111vv9=0)  ;
              .OR. (voPt=10 .AND. f2111vvi=0)
                STORE 0 TO xsW3
           ELSE
                DO CASE
                     CASE voPt=1
                          STORE f2111vv1 TO ppR3
                     CASE voPt=2
                          STORE f2111vv3 TO ppR3
                     CASE voPt=3
                          STORE f2111vv5 TO ppR3
                     CASE voPt=4
                          STORE f2111vv7 TO ppR3
                     CASE voPt=5
                          STORE f2111vv9 TO ppR3
                     CASE voPt=6
                          STORE f2111vva TO ppR3
                     CASE voPt=7
                          STORE f2111vvc TO ppR3
                     CASE voPt=8
                          STORE f2111vve TO ppR3
                     CASE voPt=9
                          STORE f2111vvg TO ppR3
                     CASE voPt=10
                          STORE f2111vvi TO ppR3
                ENDCASE
           ENDIF
      CASE vmOn=2
           IF (voPc=1 .AND. f2111vv2=0) .OR. (voPc=6 .AND. f2111vvb=0)  ;
              .OR. (voPc=2 .AND. f2111vv4=0) .OR. (voPc=7 .AND. f2111vvd= ;
              0) .OR. (voPc=3 .AND. f2111vv6=0) .OR. (voPc=8 .AND.  ;
              f2111vvf=0) .OR. (voPc=4 .AND. f2111vv8=0) .OR. (voPc=9  ;
              .AND. f2111vvh=0) .OR. (voPc=5 .AND. f2111vv0=0) .OR. (voPc= ;
              10 .AND. f2111vvj=0)
                STORE 0 TO xsW1
           ELSE
                DO CASE
                     CASE voPc=1
                          STORE f2111vv2 TO ppR1
                     CASE voPc=2
                          STORE f2111vv4 TO ppR1
                     CASE voPc=3
                          STORE f2111vv6 TO ppR1
                     CASE voPc=4
                          STORE f2111vv8 TO ppR1
                     CASE voPc=5
                          STORE f2111vv0 TO ppR1
                     CASE voPc=6
                          STORE f2111vvb TO ppR1
                     CASE voPc=7
                          STORE f2111vvd TO ppR1
                     CASE voPc=8
                          STORE f2111vvf TO ppR1
                     CASE voPc=9
                          STORE f2111vvh TO ppR1
                     CASE voPc=10
                          STORE f2111vvj TO ppR1
                ENDCASE
           ENDIF
           IF voPr=0 .OR. (voPr=1 .AND. f2111vv2=0) .OR. (voPr=6 .AND.  ;
              f2111vvb=0) .OR. (voPr=2 .AND. f2111vv4=0) .OR. (voPr=7  ;
              .AND. f2111vvd=0) .OR. (voPr=3 .AND. f2111vv6=0) .OR. (voPr= ;
              8 .AND. f2111vvf=0) .OR. (voPr=4 .AND. f2111vv8=0) .OR.  ;
              (voPr=9 .AND. f2111vvh=0) .OR. (voPr=5 .AND. f2111vv0=0)  ;
              .OR. (voPr=10 .AND. f2111vvj=0)
                STORE 0 TO xsW2
           ELSE
                DO CASE
                     CASE voPr=1
                          STORE f2111vv2 TO ppR2
                     CASE voPr=2
                          STORE f2111vv4 TO ppR2
                     CASE voPr=3
                          STORE f2111vv6 TO ppR2
                     CASE voPr=4
                          STORE f2111vv8 TO ppR2
                     CASE voPr=5
                          STORE f2111vv0 TO ppR2
                     CASE voPr=6
                          STORE f2111vvb TO ppR2
                     CASE voPr=7
                          STORE f2111vvd TO ppR2
                     CASE voPr=8
                          STORE f2111vvf TO ppR2
                     CASE voPr=9
                          STORE f2111vvh TO ppR2
                     CASE voPr=10
                          STORE f2111vvj TO ppR2
                ENDCASE
           ENDIF
           IF voPt=0 .OR. (voPt=1 .AND. f2111vv2=0) .OR. (voPt=6 .AND.  ;
              f2111vvb=0) .OR. (voPt=2 .AND. f2111vv4=0) .OR. (voPt=7  ;
              .AND. f2111vvd=0) .OR. (voPt=3 .AND. f2111vv6=0) .OR. (voPt= ;
              8 .AND. f2111vvf=0) .OR. (voPt=4 .AND. f2111vv8=0) .OR.  ;
              (voPt=9 .AND. f2111vvh=0) .OR. (voPt=5 .AND. f2111vv0=0)  ;
              .OR. (voPt=10 .AND. f2111vvj=0)
                STORE 0 TO xsW3
           ELSE
                DO CASE
                     CASE voPt=1
                          STORE f2111vv2 TO ppR3
                     CASE voPt=2
                          STORE f2111vv4 TO ppR3
                     CASE voPt=3
                          STORE f2111vv6 TO ppR3
                     CASE voPt=4
                          STORE f2111vv8 TO ppR3
                     CASE voPt=5
                          STORE f2111vv0 TO ppR3
                     CASE voPt=6
                          STORE f2111vvb TO ppR3
                     CASE voPt=7
                          STORE f2111vvd TO ppR3
                     CASE voPt=8
                          STORE f2111vvf TO ppR3
                     CASE voPt=9
                          STORE f2111vvh TO ppR3
                     CASE voPt=10
                          STORE f2111vvj TO ppR3
                ENDCASE
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2113b
 SET READBORDER ON
 DO rs1_2113a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2113b WITH "R"
 DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
PROCEDURE Clp_2113b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=ifIl-1.80 .AND. mfIl<=ifIl-0.30 .AND. mcCc>=icLn+110.2  ;
           .AND. mcCc<=icLn+118.2
           STORE k_Right TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_2113b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2112b IN PAC2112B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2112b IN PAC2112B WITH "F", "v"
           DO diS_2113b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-40 TO pcOl
 STORE 00 TO poPc, piN9, voPr, voPt, vnL1, vnL2, vnL3
 STORE 01 TO miPg, pnUm, voPs, voPc, mlIn, voPu
 STORE 02 TO vmOv
 STORE 99 TO mkEy
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI2", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+06.2,pCOL+05 Say "Desde"                  Font "&mLetRom",11 Style "BT"
 @pFIL+07.7,pCOL+05 Say "Hasta"                  Font "&mLetRom",11 Style "BT"
 @pFIL+10.0,pCOL+05 Say "Opciones"               Font "&mLetRom",11 Style "BTU"
 @pFIL+13.0,pCOL+05 Say "Imprime la(s) Lista(s)" Font "&mLetRom",11 Style "BTU"
 @pFIL+19.0,pCOL+54 Say "No.Líneas:"             Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+64 Say mPAG                     Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblr
 @pFIL+06.2,pCOL+46 Say "Página:"                Font "&mLetRom",11 Style "BT"
 @pFIL+07.7,pCOL+46 Say "Página:"                Font "&mLetRom",11 Style "BT"
 DO coLblz
 @pFIL+00.60,pCOL+17 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.55,pCOL+06 Say "Letras"                Font "&mLetRom",11 Style "BT"
 @pFIL+06.20,pCOL+15 Say "Código:"               Font "&mLetRom",11 Style "BT"
 @pFIL+07.70,pCOL+15 Say "Código:"               Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_3
           @ pfIl+3.7, pcOl+23 TO pfIl+4.7, pcOl+61 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.7,pCOL+17 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.7,pCOL+17 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+06.3,pCOL+27 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15" Color ,&mColBlZ
      @pFIL+07.8,pCOL+27 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15" Color ,&mColBlZ
      @pFIL+06.3,pCOL+57 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlR
      @pFIL+07.8,pCOL+57 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlR
      @pFIL+10.0,pCOL+22 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT S/.;US$"                       Size 1,5.5,.1 Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+10.0,pCOL+38 Get vOPS Font "&mLetAri",9 Style "NQ" Default vOPS Function "*RVT Todos;Sólo los q tienen stock" Size 1,5.5,.1 Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+13.0,pCOL+36 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Size 1,5 Spinner 1,1,10 Color ,&mColBlN
      @pFIL+13.0,pCOL+47 Get vOPR Font "&mLetAri",9 Style "NQ" Default vOPR Size 1,5 Spinner 1,0,10 Color ,&mColBlN
      @pFIL+13.0,pCOL+58 Get vOPT Font "&mLetAri",9 Style "NQ" Default vOPT Size 1,5 Spinner 1,0,10 Color ,&mColBlN
      @pFIL+15.5,pCOL+05 Get vMOV Font "&mLetAri",9 Style "BQ" Default vMOV Function "*RVT x Tipo de Producto;Ninguno" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+30 Get mLIN Font "&mLetAri",9 Style "NQ" Default mLIN Function "*RVT C/Líneas;S/Líneas"          Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+48 Get vOPU Font "&mLetAri",9 Style "BQ" Default vOPU Function "*RVT Imprime Stock;No Imprime"   Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+17 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. (poPc=1 .OR. poPc=3)
                STORE UPPER(dcOd) TO dcOd
                STORE UPPER(hcOd) TO hcOd
                DO CASE
                     CASE ALLTRIM(dcOd)+"*"=ALLTRIM(hcOd)+"*" .AND.  ;
                          LEN(ALLTRIM(dcOd))=0
                          STORE "Rangos de códigos no pueden estar vacíos..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE ALLTRIM(dcOd)+"*">ALLTRIM(hcOd)+"*"
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     CASE voPc=voPr .OR. voPc=voPt
                          STORE "Las Listas a imprimir tienen q ser diferentes..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPr=voPt .AND. voPr<>0
                          STORE "Las Listas a imprimir tienen q ser diferentes..."  ;
                                TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO vnL1, vnL2, vnL3
                          IF voPc>0
                               STORE 1 TO vnL1
                          ENDIF
                          IF voPr>0
                               STORE 1 TO vnL2
                          ENDIF
                          IF voPt>0
                               STORE 1 TO vnL3
                          ENDIF
                          IF poPc=3
                               STORE 1 TO mvIs
                          ELSE
                               STORE 0 TO mvIs
                          ENDIF
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_2113b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran todos los Productos con sus "
 @ pfIl+1, 2 SAY "Precios en el orden que se ha elegido."
 DO hl3_2111b IN PAC2111B
 @ pfIl+00, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+02, 21 SAY ":" STYLE "BT"
 @ pfIl+03, 21 SAY ":" STYLE "BT"
 @ pfIl+04, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+12, 21 SAY ":" STYLE "BT"
 @ pfIl+13, 21 SAY ":" STYLE "BT"
 @ pfIl+14, 21 SAY ":" STYLE "BT"
 @ pfIl+15, 21 SAY ":" STYLE "BT"
 @ pfIl+16, 21 SAY ":" STYLE "BT"
 @ pfIl+17, 21 SAY ":" STYLE "BT"
 @ pfIl+02, 02 SAY "ESC" STYLE "BT"
 @ pfIl+03, 02 SAY "F10" STYLE "BT"
 @ pfIl+04, 02 SAY "F1" STYLE "BT"
 @ pfIl+05, 02 SAY "F6" STYLE "BT"
 @ pfIl+06, 02 SAY "F7" STYLE "BT"
 @ pfIl+07, 02 SAY "F8" STYLE "BT"
 @ pfIl+08, 02 SAY "F9" STYLE "BT"
 @ pfIl+09, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 02 SAY "HOME" STYLE "BT"
 @ pfIl+15, 02 SAY "END" STYLE "BT"
 @ pfIl+16, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+17, 02 SAY "FLECHAS -> / <-" STYLE "BT"
 @ pfIl+02, 23 SAY "Regresar a Cabecera"
 @ pfIl+03, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+04, 23 SAY "Ayuda del Programa"
 @ pfIl+05, 23 SAY "Cambio de Orden de Consulta"
 @ pfIl+06, 23 SAY "Ver sólo productos c/stock y que controlen stock"
 @ pfIl+07, 23 SAY "Pasar Datos a Excel"
 @ pfIl+08, 23 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+09, 23 SAY "Visualizar todos los datos del código"
 @ pfIl+10, 23 SAY "Línea inferior"
 @ pfIl+11, 23 SAY "Línea superior"
 @ pfIl+12, 23 SAY "Página siguiente"
 @ pfIl+13, 23 SAY "Página anterior"
 @ pfIl+14, 23 SAY "Primera línea"
 @ pfIl+15, 23 SAY "Última línea"
 @ pfIl+16, 23 SAY "Imprime Lista de Precios"
 @ pfIl+17, 23 SAY "Ver Otros datos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
