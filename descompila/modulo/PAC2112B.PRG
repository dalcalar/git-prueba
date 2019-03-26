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
      STORE SPACE(20) TO icOd
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
      DO paN_2112b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_2112b WITH "i", "v"
 ELSE
      DO seE_2112b WITH "v"
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
           DO muE_2112b WITH "F", "v"
      ENDIF
      DO seE_2112b WITH "i"
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
           DO muE_2112b WITH "i", "v"
      ENDIF
 ENDIF
 DO seE_2112b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2112b WITH "i"
      SET NEAR OFF
      DO paN_2112b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_2112b WITH "i", "v"
      DO seE_2112b WITH "v"
 ENDIF
 DO muE_2112b WITH "F", "v"
 DO diS_2112b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mkEy<>k_F7
           mkEy = INKEY(0, "HM")
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2112b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2112b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2112b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2112b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                STORE vcOd TO xcOd
                DO q1_0000a
                DO im1_2112b
                DO p1_0000a
                STORE xcOd TO vcOd
                STORE 99 TO mkEy
                = INKEY(0.01)
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
                DO seE_2112b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o
                STORE vcOd TO xcOd
                DO q1_0000a
                DO im2_2112b
                DO p1_0000a
                STORE xcOd TO vcOd
                = INKEY(0.01)
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
                DO seE_2112b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO coLsc1
                DO CASE
                     CASE mrEs="3" .AND. wtPo="1"
                          @ ifIl-0.20, icLn+17.4 CLEAR TO ffIl+1.1, icLn+18.3
                     CASE mrEs="3"
                          @ ifIl-0.15, icLn+27.5 CLEAR TO ffIl+1.1, icLn+28.2
                     CASE wtPo="1"
                          @ ifIl-0.20, icLn+17.4 CLEAR TO ffIl+1.1, icLn+18.2
                     OTHERWISE
                          @ ifIl-0.15, icLn+27.4 CLEAR TO ffIl+1.1, icLn+28.2
                ENDCASE
                DO coLplp
                @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
                @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
                IF vsW7=1
                     STORE 2 TO vsW7
                ELSE
                     STORE 1 TO vsW7
                     DO liN_2112a WITH ifIl-0.2, ffIl+1.1
                     DO li1_2112a WITH ifIl-0.2, ffIl+1.1
                ENDIF
                DO boT_2112a
                DO tiT_2112z IN PAC2112Z
                DO caM_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                SET READBORDER ON
                DO opC_2112b
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
                DO seE_2112b WITH "v"
                DO diS_2112b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .OR. mkEy=k_F7
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO muE_2112b WITH "F", "v"
                STORE f2111nuc TO vnUc
                STORE f2111ser TO vsRr
                SELECT kaRdex
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     WAIT CLEAR
                     STORE "No hay movimientos en este producto..." TO mmSj
                ELSE
                     WAIT WINDOW NOWAIT "Entrando a Kardex..."
                     SAVE SCREEN TO vpAn_11
                     SET READBORDER ON
                     DO q1_0000a
                     IF mkEy=k_F4
                          DO paC2112d WITH "1"
                     ELSE
                          DO paC2112d WITH "2"
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO orD_2112d IN PAC2112D
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p1_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SET READBORDER OFF
                     DO reS_0000a
                     IF mrEs<>mrSs
                          LOOP
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                     IF mkEy=k_F7
                          LOOP
                     ENDIF
                ENDIF
                WAIT CLEAR
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
                DO seE_2112b WITH "v"
                DO muE_2112b WITH "F", "v"
           CASE mkEy=k_F5 .AND. msTp=1
                SAVE SCREEN TO vpAn_11
                DO muE_2112b WITH "F", "v"
                DO peD_2112b WITH vcOd
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT tmP_pedidos
                GOTO TOP
                IF BOF()
                     RESTORE SCREEN FROM vpAn_11
                     STORE "No hay Pedidos Pendientes en este Producto..."  ;
                           TO mmSj
                     DO poNmsj
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                ELSE
                     STORE 00 TO tcAn, tcPe, tcAj, tcJp, tpR1, tpD1, tpE1,  ;
                           tpR2, tpD2, tpE2
                     DO WHILE  .NOT. EOF()
                          STORE tcAn+ftM2can TO tcAn
                          STORE tcPe+ftM2cad TO tcPe
                          STORE tcAj+ftM2caj TO tcAj
                          STORE tcJp+ftM2cjd TO tcJp
                          IF ftM2mon=1
                               STORE tpR1+(ftM2can*ftM2pre) TO tpR1
                               STORE tpD1+(ftM2cad*ftM2pre) TO tpD1
                               STORE tpE1+((ftM2can-ftM2cad)*ftM2pre) TO tpE1
                          ELSE
                               STORE tpR2+(ftM2can*ftM2pre) TO tpR2
                               STORE tpD2+(ftM2cad*ftM2pre) TO tpD2
                               STORE tpE2+((ftM2can-ftM2cad)*ftM2pre) TO tpE2
                          ENDIF
                          SKIP
                     ENDDO
                     GOTO TOP
                     SET READBORDER ON
                     DO q1_0000a
                     DO paC2112e
                     DO p1_0000a
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
                     DO reS_0000a
                     IF mrEs<>mrSs
                          LOOP
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
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
                DO coD_2113a IN PAC2113A
                SET READBORDER ON
                DO geT_2111a IN PAC2111A
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO CASE
                     CASE wtPo="1"
                          STORE 26 TO viT2
                     OTHERWISE
                          STORE 16 TO viT2
                ENDCASE
                DO xl0_0000a WITH "Stocks", "Stocks", viT2
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                STORE "S" TO moPc
                DO prE_docum WITH  ;
                   "¿Desea pasar los productos que sólo tengan stock?"
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Código"
                pxLs.ceLls(3, 02).vaLue = "Descripción"
                pxLs.ceLls(3, 03).vaLue = "Descripción impresa"
                pxLs.ceLls(3, 04).vaLue = "Unid-Invent"
                pxLs.ceLls(3, 05).vaLue = "Procedencia"
                pxLs.ceLls(3, 06).vaLue = "Largo cm"
                pxLs.ceLls(3, 07).vaLue = "Ancho cm"
                pxLs.ceLls(3, 08).vaLue = "Largo pulg"
                pxLs.ceLls(3, 09).vaLue = "Ancho pulg"
                pxLs.ceLls(3, 10).vaLue = "Espesor"
                pxLs.ceLls(3, 11).vaLue = "Ult.Movim"
                pxLs.ceLls(3, 12).vaLue = "Stock Pend.x llegar"
                pxLs.ceLls(3, 13).vaLue = "Stock Disponible"
                pxLs.ceLls(3, 14).vaLue = "Stock Separado"
                pxLs.ceLls(3, 15).vaLue = "Stock Total/Fisico (D+S)"
                pxLs.ceLls(3, 16).vaLue = "Stock Kardex"
                IF wtPo="1"
                     pxLs.ceLls(3, 17).vaLue = "Costo Unit.S/."
                     pxLs.ceLls(3, 18).vaLue = "Costo Total S/."
                     pxLs.ceLls(3, 19).vaLue = "Costo Unit.US$"
                     pxLs.ceLls(3, 20).vaLue = "Costo Total US$"
                     pxLs.ceLls(3, 21).vaLue = "Costo Unit.Prom.S/."
                     pxLs.ceLls(3, 22).vaLue = "Costo Total Prom.S/."
                     pxLs.ceLls(3, 23).vaLue = "Ult.Compra S/."
                     pxLs.ceLls(3, 24).vaLue = "Fecha Ult.Cpra."
                     pxLs.ceLls(3, 25).vaLue = "Ult.Compra US$"
                     pxLs.ceLls(3, 26).vaLue = "Fecha Ult.Cpra."
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                GOTO TOP
                DO coLbln
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     IF f2111est="9" .OR. (moPc="S" .AND. f2111sto<=0)
                          SKIP
                          LOOP
                     ENDIF
                     STORE f2111cod TO xcCc
                     STORE f2111tip TO vtPo
                     SELECT tiP_prod
                     SEEK vtIp
                     IF EOF()
                          STORE 1 TO vtPo
                     ELSE
                          STORE f9211tpo TO vtPo
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     DO CASE
                          CASE vtPo=1 .AND. f2111la1<>0 .AND. f2111an1<>0
                               STORE ROUND(f2111la1*f2111an1*mfCt, 8) TO vpIe
                          CASE vtPo=1 .AND. f2111la2<>0 .AND. f2111an2<>0
                               STORE ROUND(f2111la2*f2111an2/mfCp, 8) TO vpIe
                          OTHERWISE
                               STORE 1 TO vpIe
                     ENDCASE
                     DO st1_2112b
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1, ;
                               viT2)).seLect
                     pxLs.ceLls(viT1, 01).vaLue = f2111cod
                     pxLs.ceLls(viT1, 02).vaLue = f2111des
                     pxLs.ceLls(viT1, 03).vaLue = f2111dcr
                     pxLs.ceLls(viT1, 04).vaLue = f2111nuc
                     pxLs.ceLls(viT1, 05).vaLue = f2111pro
                     pxLs.ceLls(viT1, 06).vaLue = f2111la1
                     pxLs.ceLls(viT1, 07).vaLue = f2111an1
                     pxLs.ceLls(viT1, 08).vaLue = f2111la2
                     pxLs.ceLls(viT1, 09).vaLue = f2111an2
                     pxLs.ceLls(viT1, 10).vaLue = f2111esp
                     pxLs.ceLls(viT1, 11).vaLue = DTOC(f2111ult)
                     pxLs.ceLls(viT1, 12).vaLue = yoRp
                     pxLs.ceLls(viT1, 13).vaLue = ysTo
                     pxLs.ceLls(viT1, 14).vaLue = ycPe
                     pxLs.ceLls(viT1, 15).vaLue = ysTo+ycPe
                     pxLs.ceLls(viT1, 16).vaLue = ysTs
                     IF wtPo="1"
                          pxLs.ceLls(viT1, 17).vaLue = yvCs
                          pxLs.ceLls(viT1, 18).vaLue = vpIe*yvCs*(ysTo+ycPe)
                          pxLs.ceLls(viT1, 19).vaLue = yvCp
                          pxLs.ceLls(viT1, 20).vaLue = vpIe*yvCp*(ysTo+ycPe)
                          pxLs.ceLls(viT1, 21).vaLue = ypRm
                          pxLs.ceLls(viT1, 22).vaLue = ypRm*ysTs
                          pxLs.ceLls(viT1, 23).vaLue = ycO1
                          pxLs.ceLls(viT1, 24).vaLue = DTOC(yfE1)
                          pxLs.ceLls(viT1, 25).vaLue = ycO2
                          pxLs.ceLls(viT1, 26).vaLue = DTOC(yfE2)
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(09)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(05)).hoRizontalalignment = 2
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(09)).nuMberformat = "#,##0.000"
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(09)).hoRizontalalignment = 1
                pxLs.raNge(pxLs.coLumns(12),  ;
                          pxLs.coLumns(16)).nuMberformat = "###,###,##0.0000"
                pxLs.raNge(pxLs.coLumns(12),  ;
                          pxLs.coLumns(16)).hoRizontalalignment = 1
                pxLs.coLumns(10).nuMberformat = "##0.00"
                pxLs.coLumns(10).hoRizontalalignment = 1
                pxLs.coLumns(11).hoRizontalalignment = 2
                pxLs.coLumns(23).nuMberformat = "###,###,##0.0000"
                pxLs.coLumns(23).hoRizontalalignment = 1
                pxLs.coLumns(24).nuMberformat = "@"
                pxLs.coLumns(24).hoRizontalalignment = 2
                pxLs.coLumns(25).nuMberformat = "###,###,##0.0000"
                pxLs.coLumns(25).hoRizontalalignment = 1
                pxLs.coLumns(26).nuMberformat = "@"
                pxLs.coLumns(26).hoRizontalalignment = 2
                IF wtPo="1"
                     pxLs.raNge(pxLs.coLumns(17),  ;
                               pxLs.coLumns(22)).nuMberformat =  ;
                               "###,###,##0.0000"
                     pxLs.raNge(pxLs.coLumns(17),  ;
                               pxLs.coLumns(22)).hoRizontalalignment = 1
                ENDIF
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b WITH "v"
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. vuLt<>1
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=vuLt
                          STORE 1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE vuLt TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                DO tiT_2112z IN PAC2112Z
                DO caM_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO coL_boton
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
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
                DO seE_2112b WITH "v"
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Tab .AND. wtPo="3"
                SELECT tmP_hoja
                GOTO TOP
                IF BOF()
                     STORE "Archivo de Pase de Negativos vacio..." TO mmSj
                ELSE
                     WAIT WINDOW NOWAIT "Iniciando Lectura..."
                     STORE 7 TO viT2
                     DO xl0_0000a WITH "Hoja de Pase", "Hoja1", viT2
                     IF mkEy=k_Esc
                          DO CASE
                               CASE vsW1=1
                                    SELECT prOductos
                               CASE vsW1=2
                                    SELECT teMporal
                          ENDCASE
                          STORE 99 TO mkEy
                          LOOP
                     ENDIF
                     WAIT WINDOW NOWAIT "Formato..."
                     pxLs.ceLls(2, 1).vaLue =  ;
                               "Poner nombre cambio.xls en carpeta del sistema"
                     pxLs.ceLls(3, 1).vaLue = "Código"
                     pxLs.ceLls(3, 2).vaLue = "NewCod"
                     pxLs.ceLls(3, 3).vaLue = "Docum"
                     pxLs.ceLls(3, 6).vaLue = "Fecha"
                     pxLs.ceLls(3, 7).vaLue = "Cantidad"
                     pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(2,8)).meRge
                     pxLs.raNge(pxLs.ceLls(3,3), pxLs.ceLls(3,5)).meRge
                     SELECT tmP_hoja
                     SET ORDER TO FTM4COD
                     GOTO TOP
                     STORE 4 TO viT1
                     STORE 1 TO meN1
                     DO WHILE  .NOT. EOF()
                          pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1, ;
                                    viT2)).seLect
                          pxLs.ceLls(viT1, 01).vaLue = ftM4cod
                          pxLs.ceLls(viT1, 03).vaLue = ftM4tdo
                          pxLs.ceLls(viT1, 04).vaLue = ftM4ser
                          pxLs.ceLls(viT1, 05).vaLue = ftM4doc
                          pxLs.ceLls(viT1, 06).vaLue = ftM4fem
                          pxLs.ceLls(viT1, 07).vaLue = ftM4can
                          STORE viT1+1 TO viT1
                          IF meN1>=meNn
                               EXIT
                          ENDIF
                          STORE meN1+1 TO meN1
                          SELECT tmP_hoja
                          SKIP
                     ENDDO
                     pxLs.coLumns(04).nuMberformat = "000"
                     pxLs.coLumns(05).nuMberformat = "0000000"
                     pxLs.coLumns(07).nuMberformat = "###,###,##0.0000"
                     DO xl1_0000a WITH 1
                     SELECT tmP_hoja
                     SET ORDER TO
                     ZAP
                     WAIT CLEAR
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b WITH "v"
           CASE mkEy=k_Tab .AND. f2111ser=1
                SELECT seRies
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                IF  .NOT. EOF()
                     SAVE SCREEN TO vpAn_11
                     DO paC2112c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT prOductos
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     DO reS_0000a
                     IF mrEs<>mrSs
                          LOOP
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2112A", "2"
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
                DO seE_2112b WITH "v"
                DO diS_2112b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
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
                                    DO paN_2112b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_2112b WITH "v"
                                    DO diS_2112b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2112b WITH "i", "v"
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
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
                                    DO paN_2112b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_2112b WITH "v"
                                    DO diS_2112b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2112b WITH "u", "v"
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2112a WITH ffIl, ffIl+1
                               DO li1_2112a WITH ffIl, ffIl+1
                               DO muE_2112b WITH "F", "v"
                               DO muE_2112b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2112b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2112b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2112a WITH ifIl-0.2, ifIl+1
                               DO li1_2112a WITH ifIl-0.2, ifIl+1
                               DO muE_2112b WITH "F", "i"
                               DO muE_2112b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2112b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2112b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_2112b WITH "i", "v"
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2112b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_2112b WITH "i", "v"
                          DO seE_2112b WITH "v"
                          DO diS_2112b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2112b
 DO pn1_2112b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2112b
 DO pn1_2112b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2112b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2112b WITH "F", "i"
 DO muE_2112b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. UPPER(ALLTRIM(f2111cod))+"*"= ;
                UPPER(ALLTRIM(xcOd))+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2112b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_2112b WITH "F", "u"
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
      DO liN_2112a WITH ufIl+1, ffIl+1
      DO li1_2112a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Ver_2112b
 DO CASE
      CASE ptIp="N"
           DO coLscv
      CASE ptIp="R"
           DO coLblv
 ENDCASE
ENDPROC
*
PROCEDURE Neg_2112b
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Dis_2112b
 PARAMETER ptIp
 PRIVATE pcJn, pgRu, ptPp, pvTa
 STORE f2111cod TO xcCc
 STORE f2111tip TO vtIp, ptPp
 STORE f2111gru TO pgRu
 DO CASE
      CASE f2111vta=1
           STORE "Pr.Vta" TO pvTa
      CASE f2111vta=2
           STORE "N/Vta." TO pvTa
 ENDCASE
 SELECT grUpos
 SEEK pgRu
 STORE f9216des TO pgRu
 SELECT tiP_prod
 SEEK ptPp
 STORE f9211nti TO ptPp
 DO orD_2112b
 DO cj1_2112b
 DO cj2_2112b
 DO stO_2112b
 DO st1_2112b
 DO CASE
      CASE vtIp="100"
           STORE " C " TO pcJn
      CASE vtIp="10@"
           STORE "CyP" TO pcJn
      CASE SUBSTR(vtIp, 3, 1)="@"
           STORE " P " TO pcJn
      OTHERWISE
           STORE "" TO pcJn
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f2111cst=1
           SET COLOR TO RGB(0,0,128,192,192,192)
      CASE ptIp="R" .AND. f2111cst=1
           DO coLblz
      OTHERWISE
           DO neG_2112b
 ENDCASE
 DO CASE
      CASE mrEs="3"
           DO di3_2112b
      OTHERWISE
           DO di5_2112b
 ENDCASE
 DO dsT_2112b
 RELEASE pcJn, pgRu, ptPp, pvTa
ENDPROC
*
PROCEDURE Di3_2112b
 IF vsW7=1
      DO CASE
           CASE wtPo="1"
                @vFIL,iCLN     Say F2111COD  Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "@S20"
                DO coLsc1
                @fFIL+1.2,iCLN Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.3
           OTHERWISE
                @vFIL,iCLN     Say F2111COD  Font "&mLetAri",9 Style "NQ" Size 1,27.3 Pict "@S30"
                DO coLsc1
                @fFIL+1.2,iCLN Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,27.3
      ENDCASE
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      OTHERWISE
           DO neG_2112b
 ENDCASE
 DO CASE
      CASE vsW7=1 .AND. wtPo="1"
           @vFIL,iCLN+18 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,054.9 Pict "@S57"
      CASE vsW7=2 .AND. wtPo="1"
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,072.9 Pict "@S75"
      CASE vsW7=1 .AND. msTp=1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,057.0 Pict "@S60"
      CASE vsW7=2 .AND. msTp=1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,085.0 Pict "@S88"
      CASE vsW7=1 .AND. msTp<>1 .AND. mcAj=1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,074.8 Pict "@S78"
      CASE vsW7=2 .AND. msTp<>1 .AND. mcAj=1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,102.8 Pict "@S106"
      CASE vsW7=1 .AND. msTp<>1 .AND. mcAj<>1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,082.9 Pict "@S85"
      CASE vsW7=2 .AND. msTp<>1 .AND. mcAj<>1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,110.9 Pict "@S113"
 ENDCASE
 DO neG_2112b
 DO CASE
      CASE wtPo="1"
           @vFIL,iCLN+73.7  Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,6.1 Pict "@S8"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+69.0 Say pCJN    Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp=1
           @vFIL,iCLN+85.7  Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,7.5 Pict "@S10"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+81 Say pCJN      Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp<>1 .AND. mcAj=1
           @vFIL,iCLN+103.6  Say F2111NUC Font "&mLetAri",9 Style "NQ" Size 1,7.4 Pict "@S10"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+98.9 Say pCJN    Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp<>1 .AND. mcAj<>1
           @vFIL,iCLN+111.6 Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S20"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+107.0 Say pCJN   Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
 ENDCASE
 IF f2111md3=2
      DO neG_2112b
      DO CASE
           CASE vsW7=1
                @vFIL,iCLN+28 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
           CASE vsW7=2
                @vFIL,iCLN    Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 DO CASE
      CASE wtPo="1"
           IF msTp=1
                @vFIL,iCLN+080.4 Say (ySTO+yCPE)              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
                @vFIL,iCLN+116.0 Say (ySTO+yCPE)*yVCS         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                @vFIL,iCLN+151.6 Say (ySTO+yCPE)*yVCP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           ELSE
                @vFIL,iCLN+080.4 Say ySTO                     Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
                @vFIL,iCLN+116.0 Say ySTO*yVCS                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                @vFIL,iCLN+151.6 Say ySTO*yVCP                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           ENDIF
           @vFIL,iCLN+098.2 Say yVCS                        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           @vFIL,iCLN+133.8 Say yVCP                        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           DO CASE
                CASE vsW2=1
                     @vFIL,iCLN+169.4 Say yPRM                Font "&mLetAri",9 Style "NQ" Size 1,12.6 Pict    "99,999.99"
                     @vFIL,iCLN+182.6 Say ySTS                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                CASE vsW2=2
                     @vFIL,iCLN+169.4 Say yPRM                Font "&mLetAri",9 Style "NQ" Size 1,12.6 Pict    "99,999.99"
                     @vFIL,iCLN+182.6 Say yPRM*ySTS           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
                CASE vsW2=3
                     @vFIL,iCLN+169.4 Say yFE1                Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,iCLN+182.6 Say yCO1                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                CASE vsW2=4
                     @vFIL,iCLN+169.4 Say yFE2                Font "&mLetAri",9 Style "NQ" Size 1,12.6
                     @vFIL,iCLN+182.6 Say yCO2                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           ENDCASE
      CASE msTp=1 .AND. mcAj=1 .AND. vsW2=1
           DO veR_2112b
           @vFIL,iCLN+093.8 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+111.6 Say yCPE           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+147.2 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      CASE msTp=1 .AND. mcAj=1 .AND. vsW2=2
           DO veR_2112b
           @vFIL,iCLN+093.8 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+111.6 Say yCPE           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO veR_2112b
           @vFIL,iCLN+147.2 Say yCAJ           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           DO neG_2112b
           @vFIL,iCLN+165.0 Say yCJP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @vFIL,iCLN+182.8 Say yCAJ+yCJP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
      CASE msTp=1 .AND. mcAj=1 .AND. vsW2=3
           DO veR_2112b
           @vFIL,iCLN+093.8 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+111.6 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+147.2 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE msTp=1 .AND. vsW2=1
           DO veR_2112b
           @vFIL,iCLN+093.8 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+111.6 Say yCPE           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+147.2 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      CASE msTp=1 .AND. vsW2=2
           DO veR_2112b
           @vFIL,iCLN+093.8 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+111.6 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+147.2 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE msTp<>1 .AND. mcAj=1
           DO veR_2112b
           @vFIL,iCLN+111.6 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+129.5 Say yCAJ           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           DO neG_2112b
           @vFIL,iCLN+147.2 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE msTp<>1
           DO veR_2112b
           @vFIL,iCLN+129.5 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+147.2 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+165.0 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+182.8 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
 ENDCASE
ENDPROC
*
PROCEDURE Di5_2112b
 IF vsW7=1
      DO CASE
           CASE wtPo="1"
                @vFIL,iCLN     Say F2111COD  Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "@S20"
                DO coLsc1
                @fFIL+1.2,iCLN Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.3
           OTHERWISE
                @vFIL,iCLN     Say F2111COD  Font "&mLetAri",9 Style "NQ" Size 1,27.3 Pict "@S30"
                DO coLsc1
                @fFIL+1.2,iCLN Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,27.3
      ENDCASE
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      OTHERWISE
           DO neG_2112b
 ENDCASE
 DO CASE
      CASE vsW7=1 .AND. wtPo="1"
           @vFIL,iCLN+18 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,071.7 Pict "@S74"
      CASE vsW7=2 .AND. wtPo="1"
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,089.7 Pict "@S92"
      CASE vsW7=1 .AND. msTp=1 .AND. mcAj=1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,057.2 Pict "@S61"
      CASE vsW7=2 .AND. msTp=1 .AND. mcAj=1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,085.2 Pict "@S88"
      CASE vsW7=1 .AND. msTp=1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,077.2 Pict "@S80"
      CASE vsW7=2 .AND. msTp=1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,105.2 Pict "@S108"
      CASE vsW7=1 .AND. msTp<>1
           @vFIL,iCLN+28 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,117.1 Pict "@S119"
      CASE vsW7=2 .AND. msTp<>1
           @vFIL,iCLN    Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,145.1 Pict "@S147"
 ENDCASE
 DO neG_2112b
 DO CASE
      CASE wtPo="1"
           @vFIL,iCLN+90.3  Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,5.9 Pict "@S8"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+85.7 Say pCJN    Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp=1 .AND. mcAj=1
           @vFIL,iCLN+85.7  Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,5.9 Pict "@S8"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+81 Say pCJN      Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp=1
           @vFIL,iCLN+105.7 Say F2111NUC  Font "&mLetAri",9 Style "NQ" Size 1,14  Pict "@S17"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+101 Say pCJN     Font "&mLetAri",9 Style "NQ" Size 1,3.9 Color &mColSc3
           ENDIF
      CASE msTp<>1
           @vFIL,iCLN+181.3  Say F2111NUC Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S20"
           IF LEN(ALLTRIM(pcJn))<>0
                @vFIL,iCLN+141 Say pCJN     Font "&mLetAri",9 Style "NQ" Size 1,3.9  Color &mColSc3
           ENDIF
 ENDCASE
 IF f2111md3=2
      DO neG_2112b
      DO CASE
           CASE vsW7=1
                @vFIL,iCLN+28 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
           CASE vsW7=2
                @vFIL,iCLN    Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 DO CASE
      CASE wtPo="1"
           IF msTp=1
                @vFIL,iCLN+096.9 Say (ySTO+yCPE)      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
                @vFIL,iCLN+132.5 Say (ySTO+yCPE)*yVCS Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                @vFIL,iCLN+168.1 Say (ySTO+yCPE)*yVCP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           ELSE
                @vFIL,iCLN+096.9 Say ySTO             Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
                @vFIL,iCLN+132.5 Say ySTO*yVCS        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                @vFIL,iCLN+168.1 Say ySTO*yVCP        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           ENDIF
           @vFIL,iCLN+114.7 Say yVCS                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           @vFIL,iCLN+150.3 Say yVCP                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           @vFIL,iCLN+185.9 Say ySTS                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+203.7 Say yPRM                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           @vFIL,iCLN+221.5 Say ySTS*yPRM           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
           DO CASE
                CASE vsW2=1
                     @vFIL,iCLN+239.3 Say yCO1        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     @vFIL,iCLN+257.1 Say yFE1        Font "&mLetAri",9 Style "NQ" Size 1,12.6
                CASE vsW2=2
                     @vFIL,iCLN+239.3 Say yCO2        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999.9999"
                     @vFIL,iCLN+257.1 Say yFE2        Font "&mLetAri",9 Style "NQ" Size 1,12.6
           ENDCASE
      CASE msTp=1 .AND. mcAj=1
           DO veR_2112b
           @vFIL,iCLN+092.3 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+127.9 Say yCAJ           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           DO neG_2112b
           @vFIL,iCLN+110.1 Say yCPE           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+145.7 Say yCJP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @vFIL,iCLN+163.5 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+181.3 Say yCAJ+yCJP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @vFIL,iCLN+199.1 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+216.9 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @vFIL,iCLN+234.7 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+252.5 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      CASE msTp=1
           @vFIL,iCLN+120.2 Say pVTA           Font "&mLetAri",9 Style "NQ" Size 1,07.0 Pict "@S9"
           @vFIL,iCLN+127.9 Say pTPP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S20"
           DO veR_2112b
           @vFIL,iCLN+145.7 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+163.5 Say yCPE           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+181.3 Say ySTO+yCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+199.1 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+216.9 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @vFIL,iCLN+234.7 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+252.5 Say ySTO+yCPE+yORP Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      CASE msTp<>1 .AND. mcAj=1
           DO neG_2112b
           @vFIL,iCLN+145.7 Say pTPP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S19"
           DO veR_2112b
           @vFIL,iCLN+181.3 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+199.1 Say yCAJ           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           DO neG_2112b
           @vFIL,iCLN+216.9 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+234.7 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+252.5 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE msTp<>1
           DO neG_2112b
           @vFIL,iCLN+145.7 Say pGRU           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S19"
           @vFIL,iCLN+163.4 Say pTPP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S19"
           DO veR_2112b
           @vFIL,iCLN+199.1 Say ySTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           DO neG_2112b
           @vFIL,iCLN+216.9 Say yORP           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+234.7 Say ySTO+yORP      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @vFIL,iCLN+252.5 Say xSER+"-"+xDOC  Font "&mLetAri",9 Style "NQ" Size 1,17.2
 ENDCASE
ENDPROC
*
PROCEDURE DsT_2112b
 DO coLsc1
 DO CASE
      CASE mrEs="3" .AND. wtPo="1"
           IF msTp=1
                @fFIL+1.4,iCLN+080.4 Say zSTO+zCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
                @fFIL+1.4,iCLN+116.0 Say zVS1+zVP1      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                @fFIL+1.4,iCLN+151.6 Say zVS2+zVP2      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
           ELSE
                @fFIL+1.4,iCLN+080.4 Say zSTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
                @fFIL+1.4,iCLN+116.0 Say zVS1           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                @fFIL+1.4,iCLN+151.6 Say zVS2           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
           ENDIF
           DO CASE
                CASE vsW2=1
                     @fFIL+1.4,iCLN+182.6 Say zSTS      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                CASE vsW2=2
                     @fFIL+1.4,iCLN+182.6 Say zPRM      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                CASE vsW2=3
                     @fFIL+1.4,iCLN+182.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.2
                CASE vsW2=4
                     @fFIL+1.4,iCLN+182.6 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,17.2
           ENDCASE
      CASE mrEs="3" .AND. msTp=1 .AND. mcAj=1 .AND. vsW2=1
           @fFIL+1.4,iCLN+093.8 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+111.6 Say zCPE              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+182.8 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE mrEs="3" .AND. msTp=1 .AND. mcAj=1 .AND. vsW2=2
           @fFIL+1.4,iCLN+093.8 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+111.6 Say zCPE              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zCAJ              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+165.0 Say zCJP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+182.8 Say zCAJ+zCJP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
      CASE mrEs="3" .AND. msTp=1 .AND. mcAj=1 .AND. vsW2=3
           @fFIL+1.4,iCLN+093.8 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+111.6 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+182.8 Say Space(10)         Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE mrEs="3" .AND. msTp=1 .AND. vsW2=1
           @fFIL+1.4,iCLN+093.8 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+111.6 Say zCPE              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+182.8 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE mrEs="3" .AND. msTp=1 .AND. vsW2=2
           @fFIL+1.4,iCLN+093.8 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+111.6 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+182.8 Say Space(10)         Font "&mLetAri",9 Style "NQ" Size 1,17.2
      CASE mrEs="3" .AND. msTp<>1 .AND. mcAj=1
           @fFIL+1.4,iCLN+111.6 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+129.5 Say zCAJ              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+147.2 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE mrEs="3" .AND. msTp<>1
           @fFIL+1.4,iCLN+129.5 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+147.2 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+165.0 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE wtPo="1"
           IF msTp=1
                @fFIL+1.4,iCLN+096.9 Say zSTO+zCPE      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
                @fFIL+1.4,iCLN+132.5 Say zVS1+zVP1      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                @fFIL+1.4,iCLN+168.1 Say zVS2+zVP2      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
           ELSE
                @fFIL+1.4,iCLN+096.9 Say zSTO           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
                @fFIL+1.4,iCLN+132.5 Say zVS1           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
                @fFIL+1.4,iCLN+168.1 Say zVS2           Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
           ENDIF
           @fFIL+1.4,iCLN+185.9 Say zSTS              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
           @fFIL+1.4,iCLN+221.5 Say zPRM              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99999,999.99"
      CASE msTp=1 .AND. mcAj=1
           @fFIL+1.4,iCLN+092.3 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+110.1 Say zCPE              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+127.9 Say zCAJ              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+145.7 Say zCJP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+163.5 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+181.3 Say zCAJ+zCJP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+199.1 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+234.7 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+252.5 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE msTp=1
           @fFIL+1.4,iCLN+145.7 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+163.5 Say zCPE              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @fFIL+1.4,iCLN+181.3 Say zSTO+zCPE         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+199.1 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
           @fFIL+1.4,iCLN+234.7 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+252.5 Say zSTO+zCPE+zORP    Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      CASE msTp<>1 .AND. mcAj=1
           @fFIL+1.4,iCLN+181.3 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+199.1 Say zCAJ              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "999,999,999"
           @fFIL+1.4,iCLN+216.9 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+234.7 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
      CASE msTp<>1
           @fFIL+1.4,iCLN+199.1 Say zSTO              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+216.9 Say zORP              Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
           @fFIL+1.4,iCLN+234.7 Say zSTO+zORP         Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIT"
 ENDCASE
ENDPROC
*
PROCEDURE Cj1_2112b
 SELECT tiP_prod
 SEEK vtIp
 IF EOF()
      STORE "1" TO vtIp
      STORE 1 TO ctIp
      STORE "Sin Tipo" TO vnTi
 ELSE
      STORE ALLTRIM(STR(f9211tpo, 2, 0)) TO vtIp
      STORE f9211tpo TO ctIp
      STORE f9211nti TO vnTi
 ENDIF
 IF vtIp<"10"
      STORE "0"+vtIp TO vtIp
 ENDIF
ENDPROC
*
PROCEDURE Cj2_2112b
 SELECT coNjuntos
 SEEK ALLTRIM(xcCc)+"*"
 IF EOF()
      STORE vtIp+"0" TO vtIp
 ELSE
      STORE vtIp+"@" TO vtIp
 ENDIF
ENDPROC
*
PROCEDURE Ord_2112b
 PRIVATE psW0, ptDo, psEr, pdOc
 SELECT deT_orden
 SEEK ALLTRIM(xcCc)+"*"
 STORE " " TO xsEr, xdOc
 STORE 0 TO psW0
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"=ALLTRIM(xcCc)+"*"
      IF f2911can-f2911ctd<=0
           SKIP
           LOOP
      ENDIF
      STORE f2911tdo TO ptDo
      STORE f2911ser TO psEr
      STORE f2911doc TO pdOc
      SELECT caB_orden
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF() .AND. f2910est<"3"
           SELECT deT_orden
           IF psW0=0
                STORE 01 TO psW0
                STORE f2911ser TO xsEr
                STORE f2911doc TO xdOc
                EXIT
           ENDIF
      ENDIF
      SELECT deT_orden
      SKIP
 ENDDO
 RELEASE psW0, ptDo, psEr, pdOc
ENDPROC
*
PROCEDURE Sto_2112b
 DO CASE
      CASE vsW1=1
           SELECT stO_tot
           GOTO TOP
           STORE f2119sto TO zsTo
           STORE f2119caj TO zcAj
           STORE f2119cpe TO zcPe
           STORE f2119cjp TO zcJp
           STORE f2119sts TO zsTs
           STORE f2119orp TO zoRp
           STORE f2119prm TO zpRm
           STORE f2119vs1 TO zvS1
           STORE f2119vs2 TO zvS2
           STORE f2119vp1 TO zvP1
           STORE f2119vp2 TO zvP2
           STORE f2119vo1 TO zvO1
           STORE f2119vo2 TO zvO2
      CASE vsW1=2
           STORE xsT1 TO zsTo
           STORE xcJ1 TO zcAj
           STORE xcPe TO zcPe
           STORE xcJp TO zcJp
           STORE xoRp TO zoRp
           STORE xpRm TO zpRm
           STORE xvS1 TO zvS1
           STORE xvS2 TO zvS2
           STORE xvP1 TO zvP1
           STORE xvP2 TO zvP2
           STORE xvO1 TO zvO1
           STORE xvO2 TO zvO2
 ENDCASE
ENDPROC
*
PROCEDURE St1_2112b
 SELECT prO_tot
 SEEK ALLTRIM(xcCc)+"*"
 IF EOF()
      STORE 0 TO ysTo, ycAj, ycPe, ycJp, ysTs, yoRp, yvCp, yvCs, ypRm,  ;
            ycO1, ycO2
      STORE CTOD(" ") TO yfE1, yfE2
 ELSE
      STORE f2118sto TO ysTo
      STORE f2118caj TO ycAj
      STORE f2118cpe TO ycPe
      STORE f2118cjp TO ycJp
      STORE f2118sts TO ysTs
      STORE f2118orp TO yoRp
      STORE f2118vcp TO yvCp
      STORE f2118vcs TO yvCs
      STORE f2118prm TO ypRm
      STORE f2118co1 TO ycO1
      STORE f2118co2 TO ycO2
      STORE f2118fe1 TO yfE1
      STORE f2118fe2 TO yfE2
 ENDIF
 IF vsW1=2
      SELECT teMporal
      STORE f2111sto TO ysTo
      STORE f2111caj TO ycAj
 ENDIF
ENDPROC
*
PROCEDURE Ped_2112b
 PARAMETER pcOd
 PRIVATE ptDo, psEr, pdOc, pcAn, pcAd, pcJd, pcAj, pnOm, pnO1, pnO2, paNo,  ;
         pmEs, pdIa, pcDg, pcUn, pmOn, ppRe, piTe, pnUm
 SELECT tmP_pedidos
 ZAP
 REINDEX
 SELECT deT_ped
 STORE 99 TO mkEy
 DO orD_0000a WITH "1201", "V", "F1201CD1", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(pcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(pcOd)+"*"
      DO CASE
           CASE f1201can=f1201cad .AND. VAL(f1201ref)=f1201cjd
                EXIT
           CASE f1201can<f1201cad
                EXIT
      ENDCASE
      STORE f1201tdo TO ptDo
      STORE f1201ser TO psEr
      STORE f1201doc TO pdOc
      STORE f1201can TO pcAn
      STORE f1201cad TO pcAd
      STORE f1201cjd TO pcJd
      STORE f1201pre TO ppRe
      STORE VAL(f1201ref) TO pcAj
      IF LEN(ALLTRIM(f1201ref))<=3 .AND. LEN(ALLTRIM(f1201ref))>0 .AND.  ;
         VAL(f1201ref)>0 .AND. VAL(f1201ref)<=999
           STORE VAL(f1201ref) TO pcAj
      ELSE
           STORE 0 TO pcAj
      ENDIF
      SELECT caB_ped
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF() .AND. f1200est<>"9"
           STORE ALLTRIM(f1200nom) TO pnOm
           IF SUBSTR(pnOm, 2, 1)=SUBSTR(UPPER(pnOm), 2, 1)
                STORE SUBSTR(UPPER(pnOm), 1, 1)+SUBSTR(LOWER(pnOm), 2,  ;
                      100) TO pnOm
                STORE 1 TO piTe
                DO WHILE .T.
                     STORE AT(" ", pnOm, piTe) TO pnUm
                     IF pnUm=0
                          EXIT
                     ENDIF
                     STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                     STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
                     STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100)  ;
                           TO pnO2
                     STORE pnO1+" "+pnO2 TO pnOm
                     STORE piTe+1 TO piTe
                ENDDO
                STORE 1 TO piTe
                DO WHILE .T.
                     STORE AT(".", pnOm, piTe) TO pnUm
                     IF pnUm=0
                          EXIT
                     ENDIF
                     STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                     STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
                     STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100)  ;
                           TO pnO2
                     STORE pnO1+"."+pnO2 TO pnOm
                     STORE piTe+1 TO piTe
                ENDDO
           ENDIF
           STORE f1200mon TO pmOn
           STORE SUBSTR(DTOC(f1200fem), 7, 4) TO paNo
           STORE SUBSTR(DTOC(f1200fem), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(f1200fem), 1, 2) TO pdIa
           SELECT tmP_pedidos
           SEEK paNo+pmEs+pdIa+ptDo+psEr+pdOc
           IF EOF()
                APPEND BLANK
                REPLACE ftM2ano WITH paNo
                REPLACE ftM2mes WITH pmEs
                REPLACE ftM2dia WITH pdIa
                REPLACE ftM2tdo WITH ptDo
                REPLACE ftM2ser WITH psEr
                REPLACE ftM2doc WITH pdOc
                REPLACE ftM2nom WITH pnOm
                REPLACE ftM2mon WITH pmOn
                REPLACE ftM2pre WITH ppRe
                REPLACE ftM2can WITH 0
                REPLACE ftM2cad WITH 0
                REPLACE ftM2caj WITH 0
                REPLACE ftM2cjd WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+pcAn
           REPLACE ftM2cad WITH ftM2cad+pcAd
           REPLACE ftM2caj WITH ftM2caj+pcAj
           REPLACE ftM2cjd WITH ftM2cjd+pcJd
      ENDIF
      SELECT deT_ped
      SKIP
 ENDDO
 STORE 99 TO mkEy
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_ped
 SEEK ALLTRIM(pcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cod)+"*"=ALLTRIM(pcOd)+"*"
      STORE f1204tdo TO ptDo
      STORE f1204ser TO psEr
      STORE f1204doc TO pdOc
      STORE f1204cod TO pcDg
      STORE f1204cun TO pcUn
      SELECT deT_ped
      SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"+f1201tdo+f1201ser+ ;
         f1201doc=ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF (f1201can=f1201cad .AND. VAL(f1201ref)=f1201cjd) .OR.  ;
              f1201can<f1201cad
                SKIP
                LOOP
           ENDIF
           STORE f1201can TO pcAn
           STORE f1201cad TO pcAd
           STORE f1201cjd TO pcJd
           STORE f1201pre TO ppRe
           STORE VAL(f1201ref) TO pcAj
           SELECT caB_ped
           SEEK ptDo+psEr+pdOc
           IF  .NOT. EOF() .AND. f1200est<>"9"
                STORE f1200nom TO pnOm
                STORE f1200mon TO pmOn
                STORE SUBSTR(DTOC(f1200fem), 7, 4) TO paNo
                STORE SUBSTR(DTOC(f1200fem), 4, 2) TO pmEs
                STORE SUBSTR(DTOC(f1200fem), 1, 2) TO pdIa
                SELECT tmP_pedidos
                SEEK paNo+pmEs+pdIa+ptDo+psEr+pdOc
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2ano WITH paNo
                     REPLACE ftM2mes WITH pmEs
                     REPLACE ftM2dia WITH pdIa
                     REPLACE ftM2tdo WITH ptDo
                     REPLACE ftM2ser WITH psEr
                     REPLACE ftM2doc WITH pdOc
                     REPLACE ftM2nom WITH pnOm
                     REPLACE ftM2mon WITH pmOn
                     REPLACE ftM2pre WITH ppRe
                     REPLACE ftM2can WITH 0
                     REPLACE ftM2cad WITH 0
                     REPLACE ftM2caj WITH 0
                     REPLACE ftM2cjd WITH 0
                ENDIF
                REPLACE ftM2can WITH ftM2can+(pcAn*pcUn)
                REPLACE ftM2cad WITH ftM2cad+(pcAd*pcUn)
           ENDIF
           SELECT deT_ped
           SKIP
      ENDDO
      SELECT coN_ped
      SKIP
 ENDDO
 RELEASE ptDo, psEr, pdOc, pcAn, pcAd, pcJd, pcAj, pnOm, pnO1, pnO2, paNo,  ;
         pmEs, pdIa, pcDg, pcUn, pmOn, ppRe, piTe, pnUm
ENDPROC
*
PROCEDURE Cam_2112b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2112b WITH "v", "x"
 DO orD_2111b IN PAC2111B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2112b WITH "i"
 DO pa1_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2112b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2112b WITH "x", "v"
 ENDIF
 DO seE_2112b WITH "v"
 DO diS_2112b WITH "R"
ENDPROC
*
PROCEDURE Rs1_2112b
 SET READBORDER ON
 DO rs1_2112a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2112b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
PROCEDURE Opc_2112b
 PRIVATE pdIa, pmEs, paNo
 STORE 99 TO mkEy
 STORE 01 TO vmNd
 STORE vpAl TO cpAl
 STORE DATE() TO vfEc
 STORE "Stock al "+DTOC(vfEc) TO vpAl
 DO rs2_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2112b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_2112b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_2112b
           CASE mkEy=k_F12
                DO rs1_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_2112b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                STORE SUBSTR(DTOC(vfEc), 7, 4) TO paNo
                STORE SUBSTR(DTOC(vfEc), 4, 2) TO pmEs
                STORE SUBSTR(DTOC(vfEc), 1, 2) TO pdIa
                STORE mtCa TO vtCa
                SELECT teMporal
                ZAP
                REINDEX
                SELECT prOductos
                GOTO TOP
                DO coL_fondo
                SET ESCAPE ON
                ON ESCAPE STORE K_ESC TO MKEY
                WAIT WINDOW NOWAIT "L E Y E N D O... Presionar ESC para Salir"
                DO WHILE  .NOT. EOF()
                     IF mkEy=k_Esc
                          STORE "Lectura Interrumpida..." TO mmSj
                          DO poNmsj
                          = INKEY(0.01)
                          SELECT teMporal
                          ZAP
                          EXIT
                     ENDIF
                     @vFB3+2,vCB3+45 Say "["+F2111COD+"]" Font "&mLetAri",10 Style "NQ" Size 1,20
                     DO reM_2111a IN PAC2111A
                     STORE 0 TO vsTo, vsLc, vsTs, vsCs, xpRm
                     SELECT kaRdex
                     GOTO TOP
                     SEEK ALLTRIM(xcOd)+"*"
                     IF  .NOT. EOF()
                          SET NEAR ON
                          SEEK ALLTRIM(xcOd)+"*"+paNo+pmEs+pdIa+"ZZ"
                          SET NEAR OFF
                          IF EOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                             ALLTRIM(xcOd)+"*" .OR. f2990ano+f2990mes+ ;
                             f2990dia>paNo+pmEs+pdIa
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                          ENDIF
                          DO CASE
                               CASE BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                    ALLTRIM(xcOd)+"*"
                                    STORE 0 TO vsTo, vsTs, vsLc, vsCs, xpRm
                               OTHERWISE
                                    STORE f2990sld TO vsTo
                                    STORE f2990slc TO vsLc
                                    STORE f2990sls TO vsTs
                                    STORE f2990scs TO vsCs
                                    STORE f2990prm TO xpRm
                          ENDCASE
                     ENDIF
                     STORE 0 TO ycPe, ycJp
                     SELECT prO_tot
                     SEEK ALLTRIM(xcOd)+"*"
                     IF  .NOT. EOF()
                          STORE f2118cpe TO ycPe
                          STORE f2118cjp TO ycJp
                     ENDIF
                     SELECT teMporal
                     REPLACE f2111sto WITH vsTo-ycPe
                     REPLACE f2111sts WITH vsTs
                     REPLACE f2111caj WITH vsLc-ycJp
                     REPLACE f2111cas WITH vsCs
                     REPLACE f2111prm WITH xpRm
                     SELECT prOductos
                     SKIP
                ENDDO
                WAIT CLEAR
                SET ESCAPE OFF
                ON ESCAPE
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE DATE() TO vfEc
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Fecha no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE "Stock al "+DTOC(vfEc) TO vpAl
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      STORE k_Enter TO mkEy
      @vFB3+0.5,vCB3+54 Get vFEC Font "&mLetAri",9 Style "NQ" Size 1,13 Color ,&mColBlN
      SET CONFIRM ON
      SET CURSOR ON
      READ
      SET CURSOR OFF
      SET CONFIRM OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
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
      DO paN_2112b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(20) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_2112b WITH "i", "v"
 ENDIF
 IF LEN(ALLTRIM(vpAl))=0
      DO coL_beige
      @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
 ELSE
      @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ" Color RGB(50,101,101,192,192,192),,RGB(255,255,217,0,0,0)
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2112b
 DO coL_fondo
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, vcB3+2 TO ifIl+05.2, vcB3+74.1 PATTERN 1 PEN 1
 @ ifIl+0.0, vcB3+1 TO ifIl+04.7, vcB3+73.0 PATTERN 1 PEN 3
 @vFB3+0.5,vCB3+5 Say "Digitar la Fecha que se quiere consultar:" Font "&mLetAri",9 Style "NQ"
 @vFB3+2.0,vCB3+5 Say "Código:"                                   Font "&mLetAri",9 Style "NQ"
ENDPROC
*
PROCEDURE See_2112b
 PARAMETER psEe
 DO CASE
      CASE psEe="v" .AND. vsW0=01
           SEEK UPPER(ALLTRIM(vcOd))+"*"
      CASE psEe="v" .AND. vsW0=02
           SEEK UPPER(ALLTRIM(vdEs))+UPPER(ALLTRIM(vcOd))+"*"
      CASE psEe="i" .AND. vsW0=01
           SEEK UPPER(ALLTRIM(icOd))+"*"
      CASE psEe="i" .AND. vsW0=02
           SEEK UPPER(ALLTRIM(idEs))+UPPER(ALLTRIM(icOd))+"*"
      CASE psEe="u" .AND. vsW0=01
           SEEK UPPER(ALLTRIM(ucOd))+"*"
      CASE psEe="u" .AND. vsW0=02
           SEEK UPPER(ALLTRIM(udEs))+UPPER(ALLTRIM(ucOd))+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2112b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vdEs TO xdEs
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vdEs TO idEs
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcOd TO ccOd
           STORE vdEs TO cdEs
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE idEs TO vdEs
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE udEs TO vdEs
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xdEs TO vdEs
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccOd TO vcOd
           STORE cdEs TO vdEs
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2111cod TO vcOd
           STORE f2111des TO vdEs
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2111cod TO ucOd
           STORE f2111des TO udEs
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2111cod TO icOd
           STORE f2111des TO idEs
 ENDCASE
ENDPROC
*
PROCEDURE Im1_2112b
 PRIVATE psW0
 STORE 0 TO mvIs, psW0
 IF wtPo="1"
      DO ipR_0001a WITH "HO"
 ELSE
      DO ipR_0001a WITH "VE"
 ENDIF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PAC2112B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="1" .OR. vpEs=1 .OR. viNv=1
           DO ipR_0001a WITH "HO"
      OTHERWISE
           DO ipR_0001a WITH "VE"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_2112b
 DO fpR_0001a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 IF psW0=0
      STORE "No hay productos con esta seleccion que imprimir" TO mmSj
      DO poNmsj
      = INKEY(0.5)
 ENDIF
 RELEASE psW0
ENDPROC
*
PROCEDURE Rep_2112b
 DO CASE
      CASE mlIn=1 .AND. vpEs=1 .AND. wtPo="1"
           STORE 002 TO mcLn
           STORE 126 TO vtAm
      CASE mlIn=1 .AND. vpEs=1
           STORE 016 TO mcLn
           STORE 126 TO vtAm
      CASE mlIn=1 .AND. wtPo="1"
           STORE 016 TO mcLn
           STORE 126 TO vtAm
      CASE mlIn=1
           STORE 002 TO mcLn
           STORE 102 TO vtAm
      CASE vpEs=1
           STORE 016 TO mcLn
           STORE 126 TO vtAm
      CASE vpEs=2
           STORE 002 TO mcLn
           STORE 100 TO vtAm
 ENDCASE
 STORE 0 TO vpS1, vpS2, vpS3, vpS4, vpS5, vpS6, vpS7, vpS8, vpS9
 STORE mcLn+001.0 TO vpS1
 STORE mcLn+020.4 TO vpS2
 STORE mcLn+137.6 TO vpS5, vpS7
 DO CASE
      CASE vtIm=1
           STORE mcLn+031.8 TO vpS4
           STORE mcLn+119.8 TO vpS3
      CASE vtIm=2
           STORE mcLn+020.4 TO vpS3
           STORE mcLn+037.8 TO vpS4
      CASE vtIm=3
           STORE mcLn+020.4 TO vpS4
           STORE mcLn+119.8 TO vpS3
 ENDCASE
 IF vpEs=1
      STORE vpS5+18.9 TO vpS6
      STORE vpS6+18.7 TO vpS7
 ENDIF
 IF wtPo="1"
      STORE vpS7+18.9 TO vpS8
      STORE vpS8+18.7 TO vpS9
 ENDIF
 DO CASE
      CASE mtMc<=15
           STORE 17.5 TO vtM1
           STORE 86 TO vtM2
      CASE mtMc<=20
           STORE 23 TO vtM1
           STORE 55 TO vtM2
      CASE mtMc<=25
           STORE 28 TO vtM1
           STORE 50 TO vtM2
      OTHERWISE
           STORE 33 TO vtM1
           STORE 45 TO vtM2
 ENDCASE
 IF vtIm>1
      STORE vtM2+12 TO vtM2
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vmOv<4
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
 IF wtPo<>"1" .AND. viNv=1
      STORE 0.5 TO mcLn
 ENDIF
 STORE "@@" TO xtIp
 STORE 0 TO vlIn, vpAg
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f2111est="9" .OR. ALLTRIM(f2111cod)+"*"<ALLTRIM(dcOd)+"*" .OR.  ;
         f2111cst=2 .OR. ALLTRIM(f2111cod)+"*">ALLTRIM(hcOd)+"*" .OR.  ;
         (f2111sto<=0 .AND. vtSt=2)
           SKIP
           LOOP
      ENDIF
      STORE f2111cod TO xcCc
      STORE f2111tip TO vtIp
      SELECT kaRdex
      SEEK ALLTRIM(xcCc)+"*"
      IF (EOF() .AND. vmOv=1) .OR. ( .NOT. EOF() .AND. vmOv=2)
           DO CASE
                CASE vsW1=1
                     SELECT prOductos
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           SKIP
           LOOP
      ENDIF
      DO st1_2112b
      DO cj1_2112b
      DO peD_2112b WITH xcCc
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vcPr=1
                STORE ysTo TO vsTo
                IF vmNd=1
                     STORE yvCs TO vcOs
                ELSE
                     STORE yvCp TO vcOs
                ENDIF
           CASE vcPr=2
                STORE ysTs TO vsTo
                STORE ypRm TO vcOs
      ENDCASE
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO CASE
           CASE vcPr=1 .AND. (ctIp=2 .AND. f2111la1<>0 .AND. f2111an1<>0)
                STORE ROUND(f2111la1*f2111an1*10.77, 8) TO vpIe
           CASE vcPr=1 .AND. (ctIp=2 .AND. f2111la2<>0 .AND. f2111an2<>0)
                STORE ROUND(f2111la2*f2111an2/144, 8) TO vpIe
           CASE vcPr=1 .AND. (ctIp=3 .AND. f2111la2<>0 .AND. f2111an2<>0)
                STORE ROUND(f2111la2*f2111an2*f2111esp/12, 8) TO vpIe
           OTHERWISE
                STORE 1 TO vpIe
      ENDCASE
      STORE ROUND(vcOs*vpIe, 8) TO vcOs
      DO CASE
           CASE (vcPr=1 .AND. (vmNd=1 .OR. vmNd=3)) .OR. (vcPr=2 .AND. vmNd=2)
                STORE ROUND(vcOs, 8) TO vcOs
           CASE (vcPr=1 .AND. (vmNd=2 .OR. vmNd=4)) .OR. (vcPr=2 .AND. vmNd=1)
                STORE ROUND(vcOs/(1+(miGv/100)), 8) TO vcOs
           CASE vcPr=2 .AND. vmNd=3
                STORE ROUND(vcOs*vtCa*(1+(miGv/100)), 8) TO vcOs
           CASE vcPr=2 .AND. vmNd=4
                STORE ROUND(vcOs*vtCa, 8) TO vcOs
      ENDCASE
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2112b WITH vtAm
      ENDIF
      IF f2111tip<>xtIp .AND. vmOv<4
           STORE f2111tip TO xtIp
           IF vpAg>=miPg .AND. vpAg<=muPg
                STORE vlIn+0.8 TO vlIn
                DO li0_2112b
                STORE vlIn+0.5 TO vlIn
                @vLIN,mCLN+1 Say vNTI Font "&mLetRom",12 Style "BQ"
                DO li0_2112b
                STORE vlIn+0.4 TO vlIn
                DO li0_2112b
                IF mlIn=1
                     IF wtPo<>"1" .AND. viNv=1
                          DO liN_0000a WITH vtAm+40, vlIn
                     ELSE
                          DO liN_0000a WITH vtAm, vlIn
                     ENDIF
                ENDIF
                STORE vlIn+0.1 TO vlIn
                DO li0_2112b
           ELSE
                STORE vlIn+0.5 TO vlIn
           ENDIF
      ENDIF
      STORE 1 TO psW0
      IF vpAg>=miPg .AND. vpAg<=muPg
           STORE vlIn+0.8 TO vlIn
           DO liN_2112b
           STORE vlIn+0.5 TO vlIn
           @vLIN,vPS1    Say Substr(xCCC,1,Int(vTM1-3)) Font "&mLetAri",9 Style "NQ" Size 1,vTM1
           IF vtIm=1
                @vLIN,vPS2 Say F2111PRO                   Font "&mLetAri",9 Style "NQ" Size 1,9.6  Pict "@S12"
           ENDIF
           @vLIN,vPS3    Say F2111NUC                   Font "&mLetAri",9 Style "NQ" Size 1,15.9 Pict "@S18"
           @vLIN,vPS4    Say Substr(F2111DES,1,vTM2+3)  Font "&mLetAri",9 Style "NQ" Size 1,vTM2
           @vLIN,vPS5+14.1    Say vSTO                  Font "&mLetAri",9 Style "NQ" Size 1,17   Pict "&vPIC"
           IF vpEs=1
                @vLIN,vPS6+14.1 Say F2111PES              Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999.9999"
                @vLIN,vPS7+14.1 Say vSTO*F2111PES         Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999.9999"
           ENDIF
           IF wtPo="1"
                @vLIN,vPS8+13.5 Say vCOS                  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&vPIC"
                @vLIN,vPS9+13.5 Say vSTO*vCOS             Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&vPIC"
           ENDIF
           DO liN_2112b
           STORE vlIn+0.1 TO vlIn
           DO liN_2112b
           IF mlIn=1
                IF wtPo<>"1" .AND. viNv=1
                     DO liN_0000a WITH vtAm+40, vlIn
                ELSE
                     DO liN_0000a WITH vtAm, vlIn
                ENDIF
           ENDIF
           STORE vlIn+0.2 TO vlIn
           DO liN_2112b
      ELSE
           STORE vlIn+1.6 TO vlIn
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
 ENDDO
 DO paG_0000a WITH vtAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2112b
 PARAMETER ptMn
 IF vpAg<>0
      DO paG_0000a WITH ptMn
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptMn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cb1_0000a WITH "STOCKS al "+DTOC(vfEc), "PAC2112B"
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Rango: "+AllTrim(dCOD)+" al "+AllTrim(hCOD) Font "&mLetAri",9 Style "NQ"
      DO CASE
           CASE vsW0=1 .AND. vpEs=1
                @vLIN,mCLN+138 Say "Orden de Códigos" Font "&mLetAri",9 Style "NT"
           CASE vsW0=2 .AND. vpEs=1
                @vLIN,mCLN+138 Say "Orden Alfabético" Font "&mLetAri",9 Style "NT"
           CASE vsW0=1 .AND. vpEs=2
                @vLIN,mCLN+90  Say "Orden de Códigos" Font "&mLetAri",9 Style "NT"
           CASE vsW0=2 .AND. vpEs=2
                @vLIN,mCLN+90  Say "Orden Alfabético" Font "&mLetAri",9 Style "NT"
      ENDCASE
      DO CASE
           CASE vmOv=1 .AND. vpEs=1
                @vLIN,mCLN+168 Say "x Tipo con Movimiento"     Font "&mLetAri",9 Style "NT"
           CASE vmOv=2 .AND. vpEs=1
                @vLIN,mCLN+168 Say "x Tipo sin Movimiento"     Font "&mLetAri",9 Style "NT"
           CASE vmOv=3 .AND. vpEs=1
                @vLIN,mCLN+168 Say "x Tipo con/sin Movimiento" Font "&mLetAri",9 Style "NT"
           CASE vmOv=4 .AND. vpEs=1
                @vLIN,mCLN+168 Say "Con/sin Movimiento"        Font "&mLetAri",9 Style "NT"
           CASE vmOv=1 .AND. vpEs=2
                @vLIN,mCLN+120 Say "x Tipo con Movimiento"     Font "&mLetAri",9 Style "NT"
           CASE vmOv=2 .AND. vpEs=2
                @vLIN,mCLN+120 Say "x Tipo sin Movimiento"     Font "&mLetAri",9 Style "NT"
           CASE vmOv=3 .AND. vpEs=2
                @vLIN,mCLN+120 Say "x Tipo con/sin Movimiento" Font "&mLetAri",9 Style "NT"
           CASE vmOv=4 .AND. vpEs=2
                @vLIN,mCLN+120 Say "Con/sin Movimiento"        Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      IF wtPo="1"
           DO CASE
                CASE vcPr=1
                     @vLIN,mCLN Say "Costo Promedio S/."                    Font "&mLetAri",9 Style "NT"
                CASE vmNd=1
                     @vLIN,mCLN Say "Solo productos con Costo en S/."       Font "&mLetAri",9 Style "NT"
                CASE vmNd=2
                     @vLIN,mCLN Say "Solo productos con Costo en US$"       Font "&mLetAri",9 Style "NT"
                CASE vmNd=3
                     @vLIN,mCLN Say "Productos con Costo convertidos a S/." Font "&mLetAri",9 Style "NT"
                CASE vmNd=4
                     @vLIN,mCLN Say "Productos con Costo convertidos a US$" Font "&mLetAri",9 Style "NT"
           ENDCASE
      ENDIF
      DO CASE
           CASE mlIn=1 .AND. vpEs=1
                @vLIN,mCLN+138 Say "c/lineas" Font "&mLetAri",9 Style "NT"
           CASE mlIn=2 .AND. vpEs=1
                @vLIN,mCLN+138 Say "s/lineas" Font "&mLetAri",9 Style "NT"
           CASE mlIn=1 .AND. vpEs=2
                @vLIN,mCLN+90  Say "c/lineas" Font "&mLetAri",9 Style "NT"
           CASE mlIn=2 .AND. vpEs=2
                @vLIN,mCLN+90  Say "s/lineas" Font "&mLetAri",9 Style "NT"
      ENDCASE
      DO CASE
           CASE vtSt=1 .AND. vpEs=1
                @vLIN,mCLN+168 Say "Con y sin Stock" Font "&mLetAri",9 Style "NT"
           CASE vtSt=2 .AND. vpEs=1
                @vLIN,mCLN+168 Say "Solo con Stock"  Font "&mLetAri",9 Style "NT"
           CASE vtSt=1 .AND. vpEs=2
                @vLIN,mCLN+120 Say "Con y sin Stock" Font "&mLetAri",9 Style "NT"
           CASE vtSt=2 .AND. vpEs=2
                @vLIN,mCLN+120 Say "Solo con Stock"  Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      IF wtPo<>"1" .AND. viNv=1
           DO liN_0000a WITH ptMn+40, vlIn
      ELSE
           DO liN_0000a WITH ptMn, vlIn
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 DO liN_2112b
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,vPS1 Say "Código"       Font "&mLetAri",9 Style "BT"
      @vLIN,vPS4 Say "Descripción"  Font "&mLetAri",9 Style "BT"
      DO CASE
           CASE vtIm=1 .AND. mlIn=1
                @vLIN,vPS2+.5 Say "Proced" Font "&mLetAri",9 Style "BT"
           CASE vtIm=1
                @vLIN,vPS2    Say "Proced" Font "&mLetAri",9 Style "BT"
      ENDCASE
      DO CASE
           CASE mlIn=1
                @vLIN,vPS3+3.5 Say "Unidad"   Font "&mLetAri",9 Style "BT"
                @vLIN,vPS5+5   Say "Stock"    Font "&mLetAri",9 Style "BT"
           OTHERWISE
                @vLIN,vPS3     Say "Unidad"   Font "&mLetAri",9 Style "BT"
                @vLIN,vPS5+9.8 Say "Stock"    Font "&mLetAri",9 Style "BT"
      ENDCASE
      IF vpEs=1
           DO CASE
                CASE mlIn=1
                     @vLIN,vPS6+3.3 Say "Peso Unit"     Font "&mLetAri",9 Style "BT"
                     @vLIN,vPS7+2.1 Say "Peso Total"    Font "&mLetAri",9 Style "BT"
                OTHERWISE
                     @vLIN,vPS6+1   Say "Peso Unitario" Font "&mLetAri",9 Style "BT"
                     @vLIN,vPS7+4.2 Say "Peso Total"    Font "&mLetAri",9 Style "BT"
           ENDCASE
      ENDIF
      DO CASE
           CASE wtPo="1" .AND. mlIn=1
                @vLIN,vPS8+0.4 Say "Costo Unitario" Font "&mLetAri",9 Style "BT"
                @vLIN,vPS9+1.7 Say "Costo Total"    Font "&mLetAri",9 Style "BT"
           CASE wtPo="1"
                @vLIN,vPS8+2.0 Say "Costo Unitario" Font "&mLetAri",9 Style "BT"
                @vLIN,vPS9+5.6 Say "Costo Total"    Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 DO liN_2112b
 IF vpAg>=miPg .AND. vpAg<=muPg
      IF wtPo<>"1" .AND. viNv=1
           DO liN_0000a WITH ptMn+40, vlIn
      ELSE
           DO liN_0000a WITH ptMn, vlIn
      ENDIF
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2112b
 DO coL_pr1
ENDPROC
*
PROCEDURE Lin_2112b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO li0_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vtIm=1
      @vLIN,vPS2-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDIF
 @vLIN,vPS3-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,vPS4-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,vPS5-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE vpEs=1 .AND. wtPo="1"
           @vLIN,vPS6-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS7-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS8-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS9-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vpEs=1
           @vLIN,vPS6-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS7-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vpEs=2 .AND. wtPo="1"
           @vLIN,vPS8-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,vPS9-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Li0_2112b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO CASE
      CASE vpEs=1 .AND. wtPo="1"
           @vLIN,mCLN-000.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+235.9 Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vpEs=2 .AND. wtPo="1"
           @vLIN,mCLN-000.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+192.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vpEs=1
           @vLIN,mCLN-000.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+192.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
      CASE vpEs=2
           @vLIN,mCLN-000.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+155.9 Say Chr(124) Font "&mLetAri",9 Style "NT"
           IF viNv=1
                @vLIN,mCLN+217.1 Say Chr(124) Font "&mLetAri",9 Style "NT"
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Im2_2112b
 STORE 0 TO mvIs, tpAg
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina2 IN PAC2112B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE mvIs=3
           DO plE_2112b
      CASE mvIs=2
           WAIT WINDOW NOWAIT "Formato..."
           DO CASE
                CASE wtPo="1"
                     DO xl3_0000a WITH "Formato 13.1"
                OTHERWISE
                     DO xl3_0000a WITH "Formato 12.1"
           ENDCASE
           pxLs.coLumns(01).coLumnwidth = 08
           pxLs.coLumns(02).coLumnwidth = 08
           pxLs.coLumns(03).coLumnwidth = 12
           pxLs.coLumns(04).coLumnwidth = 12
           pxLs.coLumns(05).coLumnwidth = 12
           pxLs.coLumns(06).coLumnwidth = 13
           pxLs.coLumns(07).coLumnwidth = 15
           pxLs.coLumns(08).coLumnwidth = 15
           pxLs.coLumns(09).coLumnwidth = 15
           pxLs.coLumns(10).coLumnwidth = 18
           pxLs.coLumns(11).coLumnwidth = 18
           pxLs.coLumns(12).coLumnwidth = 18
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
      OTHERWISE
           DO ipR_0001a WITH "HO"
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           DO taM_2112z IN PAC2112Z
 ENDCASE
 SELECT kaRdex
 SET ORDER TO F2990COD
 IF mvIs<>3
      DO re2_2112b
 ENDIF
 IF mvIs=1
      DO fpR_0001a
 ENDIF
 SET DEVICE TO SCREEN
 FLUSH
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ple_2112b
 PRIVATE ptDo, psEr, pdOc, pcUo, paSi, pcAt, ptEx, poSc, pfEm, ptPp, ptRa
 PRIVATE ptDf, psRf, pdOf, pmEt, pcAn, pcOs, ppRm, psLd, peAn, ptP1, xcTd, pnOm
 PRIVATE ptEn, ptTt, ppEd
 PRIVATE xpAn_00
 WAIT WINDOW NOWAIT "L E Y E N D O ... Presionar ESC para Salir"+CHR(13)+ ;
      "Hora Inicial de Lectura: "+TIME()
 SELECT tmP_kardex
 ZAP
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(dcOd)
 SET NEAR OFF
 STORE "1" TO pmEt
 STORE "9" TO pcAt
 STORE " " TO poSc
 STORE SUBSTR(DTOC(dfEm), 1, 2) TO cdIa
 STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
 STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
 STORE "LE"+mrUc+caNo+cmEs+"00130100001111.TXT" TO vpLe
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111cod)+"*"<=ALLTRIM(hcOd)+"*"
      IF f2111tpo<>1 .OR. f2111est="9"
           SKIP
           LOOP
      ENDIF
      STORE 0 TO vnUm
      STORE f2111cod TO vcOd
      STORE f2111des TO vdEs
      STORE f2111tip TO vtPp
      STORE ALLTRIM(SUBSTR(f2111nuv, 1, AT("-", f2111nuv)-1)) TO vnUc
      DO CASE
           CASE vtPp="SU"
                STORE "06" TO ptEx
           CASE vtPp="EM"
                STORE "08" TO ptEx
           OTHERWISE
                STORE "01" TO ptEx
      ENDCASE
      SELECT kaRdex
      SET NEAR ON
      SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa
      SET NEAR OFF
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
         .AND. CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<=hfEm
           STORE vnUm+1 TO vnUm
           DO CASE
                CASE vnUm=1 .AND. cmEs="01"
                     STORE "A"+STRTRAN(STR(vnUm, 6, 0), " ", "0") TO paSi
                OTHERWISE
                     STORE "M"+STRTRAN(STR(vnUm, 6, 0), " ", "0") TO paSi
           ENDCASE
           STORE f2990tdo TO ptDo
           STORE f2990ser TO psEr
           STORE f2990doc TO pdOc
           STORE f2990td1 TO ptDf
           STORE f2990srf TO psRf
           STORE f2990fac TO pdOf
           STORE f2990cuo TO pcUo
           STORE f2990can TO pcAn
           STORE f2990cos TO pcOs
           STORE f2990prm TO ppRm
           STORE f2990sld TO psLd
           STORE f2990tpo TO ptP1
           STORE f2990nom TO pnOm
           STORE f2990ten TO ptEn
           STORE f2990tra TO ptRa
           STORE f2990tpp TO ptTt
           STORE f2990ped TO ppEd
           STORE DTOC(f2990fem) TO pfEm
           SELECT tiPo_doc
           DO CASE
                CASE (ptDo="FA" .OR. ptDo="BO") .AND. SUBSTR(psEr, 1, 1)="T"
                     DO CASE
                          CASE mcIa="MB" .AND. psEr="T1F"
                               STORE "2291114030410128" TO psRf
                          CASE mcIa="MB" .AND. psEr="T4F"
                               STORE "2291115020600071" TO psRf
                          CASE mcIa="MB" .AND. psEr="T5F"
                               STORE "2291115020600020" TO psRf
                          CASE mcIa="MB" .AND. psEr="T1B"
                               STORE "2291114030410112" TO psRf
                          CASE mcIa="MB" .AND. psEr="T4B"
                               STORE "2291115020600034" TO psRf
                          CASE mcIa="MB" .AND. psEr="T5B"
                               STORE "2291113020410111" TO psRf
                          CASE mcIa="EC" .AND. psEr="T"
                               STORE "2291114030410454" TO psRf
                     ENDCASE
                     STORE pdOc TO pdOf
                     SEEK "TK"
                CASE ptDo="FA" .OR. ptDo="BO"
                     STORE pdOc TO pdOf
                     STORE "0"+psEr TO psRf
                     SEEK ptDo
                CASE ptDo="CO" .AND. ptDf="FA"
                     STORE ALLTRIM(pdOf) TO pdOf
                     SEEK "FA"
                CASE ptDo="CO" .AND. ptDf="NC"
                     STORE ALLTRIM(pdOf) TO pdOf
                     SEEK "NC"
                CASE ptDo="CO" .AND. ptDf="TK"
                     STORE ALLTRIM(pdOf) TO pdOf
                     SEEK "TK"
                CASE ptDo="CO" .AND. ptDf="ND"
                     STORE ALLTRIM(pdOf) TO pdOf
                     SEEK "ND"
                CASE ptDo="GI" .AND. pnOm="NC"
                     STORE pdOc TO pdOf
                     STORE "0"+psEr TO psRf
                     SEEK "NC"
                OTHERWISE
                     STORE pdOc TO pdOf
                     STORE "0"+psEr TO psRf
                     SEEK ptDo
           ENDCASE
           IF  .NOT. EOF()
                STORE f9311td1 TO ptDf
           ELSE
                STORE "00" TO ptDf
           ENDIF
           STORE "01"+cmEs+"-"+STRTRAN(STR(vnUm, 6, 0), " ", "0") TO pcUo
           DO CASE
                CASE mcIa="MB" .AND. (psEr="001" .OR. psEr="008")
                     STORE "0000" TO peAn
                CASE mcIa="MB" .AND. (psEr="004" .OR. psEr="009")
                     STORE "0004" TO peAn
                CASE mcIa="MB" .AND. (psEr="005" .OR. psEr="010")
                     STORE "0005" TO peAn
                CASE mcIa="MB" .AND. (psEr="007" .OR. psEr="011")
                     STORE "0007" TO peAn
                OTHERWISE
                     STORE "0000" TO peAn
           ENDCASE
           DO CASE
                CASE ptDo="FA" .OR. ptDo="BO"
                     STORE "01" TO ptPp
                CASE ptDo="CO" .AND. ptDf="NC"
                     STORE "25" TO ptPp
                CASE ptDo="CO" .AND. SUBSTR(ppEd, 1, 1)="I"
                     STORE "18" TO ptPp
                CASE ptDo="CO"
                     STORE "02" TO ptPp
                CASE ptDo="GR" .AND. ptEn="02"
                     STORE "11" TO ptPp
                CASE ptDo="GR" .AND. ptEn="05"
                     STORE "91" TO ptPp
                CASE ptDo="GR"
                     STORE "92" TO ptPp
                CASE ptDo="GI" .AND. pnOm="GR"
                     STORE "21" TO ptPp
                CASE ptDo="GI" .AND. pnOm="NC"
                     STORE "24" TO ptPp
                CASE ptDo="GI" .AND. ptRa="3"
                     STORE "21" TO ptPp
                CASE ptDo="GS" .AND. ptRa="3"
                     STORE "11" TO ptPp
                CASE ptDo="GI" .AND. ptTt="0"
                     STORE "16" TO ptPp
                CASE ptDo="GI" .AND. ptTt="1" .AND. ALLTRIM(UPPER(pnOm))+ ;
                     "*"="INVENTARIO INICIAL"+"*"
                     STORE "16" TO ptPp
                CASE ptDo="GI"
                     STORE "99" TO ptPp
                CASE ptDo="GS"
                     STORE "99" TO ptPp
           ENDCASE
           SELECT tmP_kardex
           APPEND BLANK
           REPLACE f9703per WITH caNo+cmEs+"00"
           REPLACE f9703cuo WITH pcUo
           REPLACE f9703asi WITH paSi
           REPLACE f9703ean WITH peAn
           REPLACE f9703cat WITH pcAt
           REPLACE f9703tex WITH ptEx
           REPLACE f9703cod WITH vcOd
           REPLACE f9703osc WITH poSc
           REPLACE f9703fem WITH pfEm
           REPLACE f9703tdo WITH ptDf
           REPLACE f9703ser WITH psRf
           REPLACE f9703doc WITH pdOf
           REPLACE f9703tpo WITH ptPp
           REPLACE f9703des WITH vdEs
           REPLACE f9703uni WITH vnUc
           REPLACE f9703met WITH pmEt
           DO CASE
                CASE ptP1="1"
                     REPLACE f9703ca1 WITH STR(pcAn, 29, 8)
                     IF pcOs=0
                          REPLACE f9703cs1 WITH "                         0.00"
                          REPLACE f9703ct1 WITH "                   0.00"
                     ELSE
                          REPLACE f9703cs1 WITH STR(pcOs, 29, 8)
                          REPLACE f9703ct1 WITH STR(pcAn*pcOs, 20, 2)
                     ENDIF
                     REPLACE f9703ca2 WITH "                         0.00"
                     REPLACE f9703cs2 WITH "                         0.00"
                     REPLACE f9703ct2 WITH "                   0.00"
                CASE ptP1="2"
                     REPLACE f9703ca1 WITH "                         0.00"
                     REPLACE f9703cs1 WITH "                         0.00"
                     REPLACE f9703ct1 WITH "                   0.00"
                     REPLACE f9703ca2 WITH STR(pcAn, 29, 8)
                     IF ppRm=0
                          REPLACE f9703cs2 WITH "                         0.00"
                          REPLACE f9703ct2 WITH "                   0.00"
                     ELSE
                          REPLACE f9703cs2 WITH STR(ppRm, 29, 8)
                          REPLACE f9703ct2 WITH STR(pcAn*ppRm, 20, 2)
                     ENDIF
           ENDCASE
           REPLACE f9703can WITH STR(psLd, 29, 8)
           IF ppRm=0
                REPLACE f9703cos WITH "                         0.00"
                REPLACE f9703tot WITH "           0.00"
           ELSE
                REPLACE f9703cos WITH STR(ppRm, 29, 8)
                REPLACE f9703tot WITH STR(psLd*ppRm, 15, 2)
           ENDIF
           REPLACE f9703est WITH "1"
           SELECT kaRdex
           SKIP
      ENDDO
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 SELECT tmP_kardex
 REPLACE seP1 WITH "|" ALL
 REPLACE seP2 WITH "|" ALL
 REPLACE seP3 WITH "|" ALL
 REPLACE seP4 WITH "|" ALL
 REPLACE seP5 WITH "|" ALL
 REPLACE seP6 WITH "|" ALL
 REPLACE seP7 WITH "|" ALL
 REPLACE seP8 WITH "|" ALL
 REPLACE seP9 WITH "|" ALL
 REPLACE seP10 WITH "|" ALL
 REPLACE seP11 WITH "|" ALL
 REPLACE seP12 WITH "|" ALL
 REPLACE seP13 WITH "|" ALL
 REPLACE seP14 WITH "|" ALL
 REPLACE seP15 WITH "|" ALL
 REPLACE seP16 WITH "|" ALL
 REPLACE seP17 WITH "|" ALL
 REPLACE seP18 WITH "|" ALL
 REPLACE seP19 WITH "|" ALL
 REPLACE seP20 WITH "|" ALL
 REPLACE seP21 WITH "|" ALL
 REPLACE seP22 WITH "|" ALL
 REPLACE seP23 WITH "|" ALL
 REPLACE seP24 WITH "|" ALL
 REPLACE seP25 WITH "|" ALL
 REPLACE seP26 WITH "|" ALL
 REPLACE seP27 WITH "|" ALL
 = INKEY(0.05)
 SELECT tmP_kardex
 SET ORDER TO F9703PER
 COUNT TO xcTd
 SAVE SCREEN TO xpAn_00
 DO coLbln
 @10,50 Say "Total Items del Ple:"+Str(xCTD,12,0) Font "&mLetAri",9 Style "NQ" Size 1,40
 @12,50 Say "Presionar Tecla para continuar"      Font "&mLetAri",9 Style "NQ" Size 1,40
 mkEy = INKEY(0)
 GOTO TOP
 Copy to &vPLE SDF
 RESTORE SCREEN FROM xpAn_00
 WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
 = INKEY(0.05)
 WAIT CLEAR
 RELEASE ptDo, psEr, pdOc, pcUo, paSi, pcAt, ptEx, poSc, pfEm, ptPp, ptRa
 RELEASE ptDf, psRf, pdOf, pmEt, pcAn, pcOs, ppRm, psLd, peAn, ptP1, xcTd, pnOm
 RELEASE ptEn, ptTt, ppEd
 RELEASE xpAn_00
ENDPROC
*
PROCEDURE Re2_2112b
 IF mvIs=2
      PUBLIC ptDo, psEr, pfAc, pnUm, pfRa, plIn
      STORE 0 TO vlIn, plIn, vpAg, tpAg, tpGg
 ENDIF
 IF vrEs=2
      STORE 1 TO meN1
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(dcOd)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111cod)+"*"<=ALLTRIM(hcOd)+"*"
      IF f2111tpo<>1 .OR. f2111est="9"
           SKIP
           LOOP
      ENDIF
      STORE f2111cod TO vcOd
      STORE f2111des TO vdEs
      STORE f2111nuc TO vnUc
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<=hfEm
           DO CASE
                CASE mvIs=2
                     DO xlS_2112z IN PAC2112Z
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                OTHERWISE
                     DO reP_2112z IN PAC2112Z
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 IF mvIs=2
      IF vrEs=2
           pxLs.coLumns(01).coLumnwidth = 08.0
           pxLs.coLumns(02).coLumnwidth = 13.7
           pxLs.coLumns(03).coLumnwidth = 06.7
           pxLs.coLumns(04).coLumnwidth = 08.6
           pxLs.coLumns(05).coLumnwidth = 18.7
           pxLs.coLumns(06).coLumnwidth = 13.0
           pxLs.coLumns(07).coLumnwidth = 35.7
           pxLs.coLumns(08).coLumnwidth = 18.5
           pxLs.coLumns(09).coLumnwidth = 11.6
           pxLs.coLumns(10).coLumnwidth = 10.5
           pxLs.coLumns(11).coLumnwidth = 08.9
           pxLs.coLumns(12).coLumnwidth = 09.9
      ENDIF
      DO xl1_0000a WITH 2
      RELEASE ptDo, psEr, pfAc, pnUm, pfRa, plIn
      WAIT CLEAR
 ENDIF
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 IF wtPo="1"
      STORE (mwCo/2)-60 TO pcOl
 ELSE
      STORE (mwCo/2)-44 TO pcOl
 ENDIF
 STORE (mwFi/2)-12 TO pfIl
 STORE 04 TO vmOv
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 02 TO vtSt, vpEs, viNv
 STORE 01 TO miPg, pnUm, vtIm, vcPr, mlIn
 STORE mmOn TO vmNd
 STORE 999999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE DATE() TO vfEc
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="1"
      DO prEsiona WITH "1", "CONFI3", pfIl, pcOl
 ELSE
      DO prEsiona WITH "1", "CONFI2", pfIl, pcOl
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 DO coLblz
 IF wtPo="1"
      @pFIL+0.6,pCOL+32.0 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
      @pFIL+3.2,pCOL+04.5 Say "Color de Letras"       Font "&mLetRom",11 Style "BT"
 ELSE
      @pFIL+0.6,pCOL+17.0 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
      @pFIL+3.2,pCOL+05.5 Say "Color-Letras"          Font "&mLetRom",11 Style "BT"
 ENDIF
 DO coLblr
 @pFIL+05.4,pCOL+4  Say "Hasta el:"          Font "&mLetRom",12 Style "BT"
 DO coLblz
 IF wtPo="1"
      @pFIL+05.4,pCOL+37 Say "Desde Código"    Font "&mLetRom",11 Style "BT"
      @pFIL+06.7,pCOL+37 Say "Hasta Código"    Font "&mLetRom",11 Style "BT"
      DO coLbln
      @pFIL+08.3,pCOL+37 Say "Desde Página"    Font "&mLetRom",11 Style "BT"
      @pFIL+09.6,pCOL+37 Say "Desde Página"    Font "&mLetRom",11 Style "BT"
      @pFIL+06.0,pCOL+88 Say "Reporte:"        Font "&mLetAri",9  Style "BT"
      @pFIL+11.0,pCOL+88 Say "Imprime:"        Font "&mLetAri",9  Style "BT"
      @pFIL+16.6,pCOL+42 Say "Totaliza Pesos:" Font "&mLetAri",9  Style "NT"
      @pFIL+19.0,pCOL+89 Say "No.Líneas:"      Font "&mLetAri",8  Style "NT"
      @pFIL+19.0,pCOL+99 Say mPAG              Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
      DO coLplp
      @ pfIl+04.80, pcOl+03.1 TO pfIl+04.8, pcOl+106.4
      @ pfIl+04.80, pcOl+82.0 TO pfIl+17.8, pcOl+082.0
      DO coLneb
      @ pfIl+04.90, pcOl+03.1 TO pfIl+04.9, pcOl+106.4
      @ pfIl+04.90, pcOl+82.2 TO pfIl+17.8, pcOl+082.2
 ELSE
      @pFIL+05.4,pCOL+36 Say "Desde Cód"       Font "&mLetRom",11 Style "BT"
      @pFIL+06.7,pCOL+36 Say "Hasta Cód"       Font "&mLetRom",11 Style "BT"
      DO coLbln
      @pFIL+08.3,pCOL+36 Say "Desde Pág"       Font "&mLetRom",11 Style "BT"
      @pFIL+09.6,pCOL+36 Say "Desde Pág"       Font "&mLetRom",11 Style "BT"
      @pFIL+16.6,pCOL+36 Say "Totaliza Pesos:" Font "&mLetAri",9  Style "NT"
      @pFIL+19.0,pCOL+39 Say "No.Líneas:"      Font "&mLetAri",8  Style "NT"
      @pFIL+19.0,pCOL+49 Say mPAG              Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 ENDIF
 DO coLplp
 @ pfIl+04.80, pcOl+33.0 TO pfIl+17.80, pcOl+033.0
 @ pfIl+06.95, pcOl+03.1 TO pfIl+06.95, pcOl+033.0
 @ pfIl+10.00, pcOl+03.1 TO pfIl+10.00, pcOl+033.0
 @ pfIl+14.90, pcOl+03.1 TO pfIl+14.90, pcOl+033.0
 @ pfIl+11.10, pcOl+33.1 TO pfIl+11.10, pcOl+068.5
 @ pfIl+16.00, pcOl+33.1 TO pfIl+16.00, pcOl+068.5
 IF wtPo="1"
      @ pfIl+11.10, pcOl+68.5 TO pfIl+11.1, pcOl+82
      @ pfIl+16.00, pcOl+68.5 TO pfIl+16.0, pcOl+82
 ENDIF
 DO coLneb
 @ pfIl+04.90, pcOl+33.2 TO pfIl+17.80, pcOl+033.2
 @ pfIl+07.00, pcOl+03.1 TO pfIl+07.00, pcOl+033.0
 @ pfIl+10.10, pcOl+03.1 TO pfIl+10.10, pcOl+033.0
 @ pfIl+15.00, pcOl+03.1 TO pfIl+15.00, pcOl+033.0
 @ pfIl+11.15, pcOl+33.1 TO pfIl+11.15, pcOl+068.5
 @ pfIl+16.10, pcOl+33.1 TO pfIl+16.10, pcOl+068.5
 IF wtPo="1"
      @ pfIl+11.15, pcOl+68.5 TO pfIl+11.15, pcOl+82
      @ pfIl+16.10, pcOl+68.5 TO pfIl+16.10, pcOl+82
 ENDIF
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO CASE
                CASE wtPo="1"
                     DO pg_col_2
                OTHERWISE
                     DO pg_col_4
           ENDCASE
      ENDIF
      DO CASE
           CASE wtPo="1"
                IF piN9=2
                     @pFIL+3.3,pCOL+25.5 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]"                                                  Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
                ELSE
                     @pFIL+3.3,pCOL+25.5 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]"                                                  Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                ENDIF
                @pFIL+12.0,pCOL+36 Get vTIM     Font "&mLetAri",9 Style "NQ" Default vTIM Function "*RVT Código/Proced/Unidad/Descr/Stock;Código/Unidad/Descr/Stock;Código/Descr/Unidad/Stock" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                @pFIL+07.4,pCOL+85 Get vCPR     Font "&mLetAri",9 Style "NQ" Default vCPR Function "*RVT Administrativo;para Sunat"                                                            Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                IF vcPr=2
                     @pFIL+12.4,pCOL+85 Get vMND  Font "&mLetAri",9 Style "NQ" Default vMND Function "*RVT \\Solo S/.;\\Solo US$;\\Todo a Soles;\\Todo a US$"                                    Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                ELSE
                     @pFIL+12.4,pCOL+85 Get vMND  Font "&mLetAri",9 Style "NQ" Default vMND Function "*RVT Solo S/.;Solo US$;Todo a Soles;Todo a US$"                                            Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                ENDIF
                @pFIL+23.4,pCOL+32 Get pOPC     Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
                DO coLbln
                @pFIL+05.4,pCOL+58 Get dCOD     Font "&mLetAri",9 Style "NQ" Size 1,21 Pict "@S20"   Color ,&mColBlZ
                @pFIL+06.7,pCOL+58 Get hCOD     Font "&mLetAri",9 Style "NQ" Size 1,21 Pict "@S20"   Color ,&mColBlZ
                @pFIL+08.3,pCOL+58 Get mIPG     Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999999" Range 1,999999 Color ,&mColBlN
                @pFIL+09.6,pCOL+58 Get mUPG     Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999999" Range 1,999999 Color ,&mColBlN
                @pFIL+16.7,pCOL+60 Get vPES     Font "&mLetAri",9 Style "NQ" Default vPES Function "*RHT Si;No" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
           OTHERWISE
                IF piN9=2
                     @pFIL+3.3,pCOL+23.5 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
                ELSE
                     @pFIL+3.3,pCOL+23.5 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                ENDIF
                @pFIL+12.0,pCOL+36 Get vTIM     Font "&mLetAri",9 Style "NQ" Default vTIM Function "*RVT Cód/Proc/Uni/Dcr/Sto;Cód/Uni/Dcr/Sto;Cód/Dcr/Uni/Sto" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                @pFIL+23.4,pCOL+12 Get pOPC     Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
                DO coLbln
                @pFIL+05.4,pCOL+52 Get dCOD     Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S20"  Color ,&mColBlZ
                @pFIL+06.7,pCOL+52 Get hCOD     Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S20"  Color ,&mColBlZ
                @pFIL+08.3,pCOL+52 Get mIPG     Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999999" Range 1,999999 Color ,&mColBlN
                @pFIL+09.6,pCOL+52 Get mUPG     Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999999" Range 1,999999 Color ,&mColBlN
                @pFIL+16.7,pCOL+54 Get vPES     Font "&mLetAri",9 Style "NQ" Default vPES Function "*RHT Si;No" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
                @pFIL+20.4,pCOL+39 Get vINV     Font "&mLetAri",8 Style "NQ" Default vINV Function "*RHT Toma-Inv;No" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDCASE
      @pFIL+05.4,pCOL+18.5 Get vFEC Font "&mLetAri",10 Style "BQ" Size 1,10.4 Color ,&mColBlR
      @pFIL+07.4,pCOL+06.0 Get vTST Font "&mLetAri",9  Style "NQ" Default vTST Function "*RVT Con y sin Stock;Sólo con Stock"                         Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+10.3,pCOL+06.0 Get vMOV Font "&mLetAri",9  Style "NQ" Default vMOV Function "*RVT x Tipo con Movim;x Tipo sin Movim;Ambos x Tipo;Ninguno" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.4,pCOL+06.0 Get mLIN Font "&mLetAri",9  Style "NQ" Default mLIN Function "*RVT Impresión c/Lineas;Impresión s/Lineas"                  Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1 .OR. poPc=3
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
                     OTHERWISE
                          SELECT caMbio
                          SEEK vfEc
                          IF  .NOT. EOF()
                               STORE f9111tc1 TO vtCa
                               STORE k_Enter TO mkEy
                               DO CASE
                                    CASE vmNd=1 .OR. vmNd=3
                                         STORE "S/." TO vsIg
                                    OTHERWISE
                                         STORE "US$" TO vsIg
                               ENDCASE
                               IF poPc=3
                                    STORE 1 TO mvIs
                                    DO CASE
                                         CASE mvIs=1 .AND. wtPo="1" .AND.  ;
                                          mrEs="3"
                                              STORE  ;
                                               "No se puede visualizar la Impresion en una resolucion menor a 1280 X 600"  ;
                                               TO mmSj
                                              DO poNmsj
                                         OTHERWISE
                                              EXIT
                                    ENDCASE
                               ELSE
                                    STORE 0 TO mvIs
                                    EXIT
                               ENDIF
                          ELSE
                               STORE "No hay Tipo de Cambio en esta Fecha..."  ;
                                     TO mmSj
                               DO poNmsj
                          ENDIF
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
PROCEDURE Pagina2
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9, psW0
 STORE 99 TO mkEy
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-50 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, poPc
 STORE 999999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI4", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+19.0,pCOL+64 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+74 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+22 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+04.0,pCOL+18 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 DO coLblr
 @pFIL+09.5,pCOL+19 Say "Desde:"                Font "&mLetRom",11 Style "BT"
 @pFIL+11.0,pCOL+19 Say "Hasta:"                Font "&mLetRom",11 Style "BT"
 DO coLbln
 @pFIL+13.5,pCOL+19 Say "Desde Código:"         Font "&mLetRom",11 Style "BT"
 @pFIL+15.0,pCOL+19 Say "Hasta Código:"         Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO coLbln
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.9, pcOl+46 TO pfIl+7.9, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.9,pCOL+46 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192) Size 1,10,.01
      ELSE
           @pFIL+3.9,pCOL+46 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)                  Size 1,10,.01
      ENDIF
      @pFIL+09.5,pCOL+41.0 Get dFEM Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlR
      @pFIL+11.0,pCOL+41.0 Get hFEM Font "&mLetAri",9 Style "NQ" Size 1,12.6 Color ,&mColBlR
      @pFIL+13.5,pCOL+41.0 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20" Color ,&mColBlZ
      @pFIL+15.0,pCOL+41.0 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20" Color ,&mColBlZ
      @pFIL+23.4,pCOL+04.5 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;V.Preliminar;Exc.Todo;Exc.Resumen;PLE" Size 1.55,10,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
           CASE mkEy=k_Tab .OR. poPc<>2
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
                     CASE dfEm>hfEm
                          STORE "Fecha Inicial mayor a Fecha Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE 0 TO psW0
                          DO CASE
                               CASE vsW1=1
                                    SELECT prOductos
                               CASE vsW1=2
                                    SELECT teMporal
                          ENDCASE
                          GOTO TOP
                          SET NEAR ON
                          SEEK ALLTRIM(dcOd)
                          SET NEAR OFF
                          DO WHILE  .NOT. EOF()
                               IF ALLTRIM(f2111cod)+"*">ALLTRIM(hcOd)+"*"
                                    EXIT
                               ENDIF
                               IF f2111tpo<>1 .OR. f2111est="9"
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f2111cod TO vcOd
                               SELECT kaRdex
                               SEEK ALLTRIM(vcOd)+"*"
                               IF  .NOT. EOF() .AND. CTOD(f2990dia+"/"+ ;
                                   f2990mes+"/"+f2990ano)<=hfEm
                                    STORE 1 TO psW0
                                    EXIT
                               ENDIF
                               DO CASE
                                    CASE vsW1=1
                                         SELECT prOductos
                                    CASE vsW1=2
                                         SELECT teMporal
                               ENDCASE
                               SKIP
                          ENDDO
                          IF psW0=0
                               STORE "No hay datos en ese rango de Fecha..."  ;
                                     TO mmSj
                               DO poNmsj
                          ELSE
                               STORE k_Enter TO mkEy
                               DO CASE
                                    CASE poPc=3
                                         STORE 01 TO mvIs
                                    CASE poPc=4
                                         STORE 01 TO vrEs
                                         STORE 02 TO mvIs
                                         STORE 41 TO mpAg
                                    CASE poPc=5
                                         STORE 02 TO vrEs
                                         STORE 02 TO mvIs
                                         STORE 41 TO mpAg
                                    CASE poPc=6
                                         STORE 03 TO mvIs
                                    OTHERWISE
                                         STORE 00 TO mvIs
                               ENDCASE
                               EXIT
                          ENDIF
                ENDCASE
                STORE 00 TO poPc
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9, psW0
ENDPROC
*
PROCEDURE Clp_2112b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=vfB0 .AND. mfIl<=vfB0+1.4 .AND. mcCc>=vcB0 .AND. mcCc<= ;
           vcB0+7.5
           STORE k_F2 TO mkEy
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+1 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn+1
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn+1
           DO diS_2112b WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2112b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2112b WITH "F", "v"
           DO diS_2112b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2112b
 = INKEY(0.01)
 PRIVATE pfIl
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "Listado de Productos con/sin Stocks, sin contar Anulados, ni Servicios, ni"
 @ pfIl+1, 01 SAY  ;
   "Activos Fijos.  Los Productos que tienen los códigos en color azul contro-"
 @ pfIl+2, 01 SAY "lan Stocks y en negro los que no."
 STORE pfIl+0.5 TO pfIl
 DO hl3_2111b IN PAC2111B
 STORE pfIl-0.5 TO pfIl
 @ pfIl+0, 01 SAY "Las Teclas que puede usar son:"
 @ pfIl+2, 06 SAY ":" STYLE "BT"
 @ pfIl+3, 06 SAY ":" STYLE "BT"
 @ pfIl+4, 06 SAY ":" STYLE "BT"
 @ pfIl+5, 06 SAY ":" STYLE "BT"
 @ pfIl+6, 06 SAY ":" STYLE "BT"
 @ pfIl+2, 48 SAY ":" STYLE "BT"
 @ pfIl+3, 48 SAY ":" STYLE "BT"
 @ pfIl+4, 48 SAY ":" STYLE "BT"
 @ pfIl+5, 48 SAY ":" STYLE "BT"
 @ pfIl+2, 01 SAY "ESC" STYLE "BT"
 @ pfIl+3, 01 SAY "F10" STYLE "BT"
 @ pfIl+4, 01 SAY "F1" STYLE "BT"
 @ pfIl+5, 01 SAY "F2" STYLE "BT"
 @ pfIl+6, 01 SAY "F3" STYLE "BT"
 @ pfIl+2, 39 SAY "ENTER" STYLE "BT"
 @ pfIl+3, 39 SAY "CTRL P" STYLE "BT"
 @ pfIl+4, 39 SAY "CTRL O" STYLE "BT"
 @ pfIl+5, 39 SAY "F4/F7" STYLE "BT"
 @ pfIl+2, 08 SAY "Regresar a Cabecera"
 @ pfIl+3, 08 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 08 SAY "Ayuda del Programa"
 @ pfIl+5, 08 SAY "Ampliar/Reducir Descripción"
 @ pfIl+6, 08 SAY "Cambiar Fecha del Stock"
 @ pfIl+2, 50 SAY "Ver datos del código"
 @ pfIl+3, 50 SAY "Reporte de Stocks"
 @ pfIl+4, 50 SAY "Imprime Kardex Sunat"
 @ pfIl+5, 50 SAY "Ver Kardex Sunat/Total"
 @ pfIl+7, 00 TO pfIl+7, 80
 STORE pfIl+7.1 TO pfIl
 IF msTp=1
      @ pfIl, 04 SAY "F5" STYLE "BT"
      @ pfIl, 25 SAY ":" STYLE "BT"
      @ pfIl, 27 SAY "Ver Pedidos pendientes"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 25 SAY ":" STYLE "BT"
 @ pfIl+01, 25 SAY ":" STYLE "BT"
 @ pfIl+02, 25 SAY ":" STYLE "BT"
 @ pfIl+03, 25 SAY ":" STYLE "BT"
 @ pfIl+04, 25 SAY ":" STYLE "BT"
 @ pfIl+05, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+09, 25 SAY ":" STYLE "BT"
 @ pfIl+10, 25 SAY ":" STYLE "BT"
 @ pfIl+00, 04 SAY "F6" STYLE "BT"
 @ pfIl+01, 04 SAY "F8" STYLE "BT"
 @ pfIl+02, 04 SAY "F9" STYLE "BT"
 @ pfIl+03, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+04, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 04 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+06, 04 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+07, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 04 SAY "HOME" STYLE "BT"
 @ pfIl+10, 04 SAY "END" STYLE "BT"
 @ pfIl+00, 27 SAY "Cambio de Orden de Consulta"
 @ pfIl+01, 27 SAY "Pasar Listado a Excel"
 @ pfIl+02, 27 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+03, 27 SAY "Línea inferior"
 @ pfIl+04, 27 SAY "Línea superior"
 @ pfIl+05, 27 SAY "Ver Otros datos"
 @ pfIl+06, 27 SAY "Ver Otros datos"
 @ pfIl+07, 27 SAY "Página siguiente"
 @ pfIl+08, 27 SAY "Página anterior"
 @ pfIl+09, 27 SAY "Primera línea"
 @ pfIl+10, 27 SAY "Última línea"
 STORE pfIl+11 TO pfIl
 DO CASE
      CASE wtPo="3"
           @ pfIl, 04 SAY "TAB" STYLE "BT"
           @ pfIl, 25 SAY ":" STYLE "BT"
           @ pfIl, 27 SAY "Pasar a Excel los negativos marcados"
           STORE pfIl+1 TO pfIl
      CASE f2111ser=1
           @ pfIl, 04 SAY "TAB" STYLE "BT"
           @ pfIl, 25 SAY ":" STYLE "BT"
           @ pfIl, 27 SAY "Ver Series"
           STORE pfIl+1 TO pfIl
 ENDCASE
 IF mpAl="S"
      @ pfIl+0, 04 SAY "ALT S" STYLE "BT"
      @ pfIl+1, 04 SAY "ALT Z" STYLE "BT"
      @ pfIl+0, 25 SAY ":" STYLE "BT"
      @ pfIl+1, 25 SAY ":" STYLE "BT"
      @ pfIl+0, 27 SAY "Arregla Series para Toma de Inventario (PALM)"
      @ pfIl+1, 27 SAY "Imprime comparativo de Series c/Inventario"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2112b
 = INKEY(0.01)
 PRIVATE pfIl
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE msTp=1
           @ pfIl+0, 2 SAY  ;
             "Esta búsqueda clasifica los productos que tengan stock hasta la fecha"
           @ pfIl+1, 2 SAY "designada. No descuenta los PEDIDOS pendientes."
           STORE pfIl+3 TO pfIl
      OTHERWISE
           @ pfIl+0, 2 SAY  ;
             "Esta búsqueda clasifica los productos que tengan stock hasta la fecha"
           @ pfIl+1, 2 SAY "designada."
           STORE pfIl+3 TO pfIl
 ENDCASE
 @ pfIl, 2 SAY "Las Teclas que puede usar son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 13 SAY "ESC" STYLE "BT"
 @ pfIl+1, 13 SAY "F10" STYLE "BT"
 @ pfIl+2, 13 SAY "F1" STYLE "BT"
 @ pfIl+3, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+0, 23 SAY "Regresar a Cabecera"
 @ pfIl+1, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 23 SAY "Ayuda del Programa"
 @ pfIl+3, 23 SAY "Aceptar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
