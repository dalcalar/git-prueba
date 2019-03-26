 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3500b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(ALLTRIM(inOm))+icLi+iaNo+imEs+idIa+itDo+isEr+idOc> ;
    UPPER(ALLTRIM(vnOm))+vcLi+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc .OR.  ;
    UPPER(ALLTRIM(unOm))+ucLi+uaNo+umEs+udIa+utDo+usEr+udOc< ;
    UPPER(ALLTRIM(vnOm))+vcLi+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc)) .OR. (vsW0= ;
    3 .AND. (UPPER(ALLTRIM(inTi))+itIt+iaNo+imEs+idIa+itDo+isEr+idOc> ;
    UPPER(ALLTRIM(vnTi))+vtIt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc .OR.  ;
    UPPER(ALLTRIM(unTi))+utIt+uaNo+umEs+udIa+utDo+usEr+udOc< ;
    UPPER(ALLTRIM(vnTi))+vtIt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc)) .OR. (vsW0= ;
    4 .AND. (iaNo+imEs+idIa+itDo+isEr+idOc>vaNo+vmEs+vdIa+vtDo+vsEr+vdOc  ;
    .OR. uaNo+umEs+udIa+utDo+usEr+udOc<vaNo+vmEs+vdIa+vtDo+vsEr+vdOc))  ;
    .OR. (vsW0=5 .AND. (iaNv+imEv+idIv+itDo+isEr+idOc>vaNv+vmEv+vdIv+vtDo+ ;
    vsEr+vdOc .OR. uaNv+umEv+udIv+utDo+usEr+udOc<vaNv+vmEv+vdIv+vtDo+vsEr+ ;
    vdOc)) .OR. (vsW0=6 .AND. (UPPER(ALLTRIM(inVe))+ivEn+iaNo+imEs+idIa+ ;
    itDo+isEr+idOc>UPPER(ALLTRIM(vnVe))+vvEn+vaNo+vmEs+vdIa+vtDo+vsEr+ ;
    vdOc .OR. UPPER(ALLTRIM(unVe))+uvEn+uaNo+umEs+udIa+utDo+usEr+udOc< ;
    UPPER(ALLTRIM(vnVe))+vvEn+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc))
      SET DELETED OFF
      GOTO TOP
      SET DELETED ON
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK veSt+vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK veSt+UPPER(vnOm)
           CASE vsW0=3
                SEEK veSt+UPPER(vnTi)
           CASE vsW0=4
                SEEK veSt+vaNo+vmEs+vdIa
           CASE vsW0=5
                SEEK veSt+vaNv+vmEv+vdIv
           CASE vsW0=6
                SEEK veSt+UPPER(vnVe)
      ENDCASE
      SET NEAR OFF
      IF EOF() .OR. f3500est<>veSt
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      DO paN_3500b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3500b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3500b WITH "v"
      IF EOF()
           SET DELETED OFF
           GOTO TOP
           SET DELETED ON
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+UPPER(vnOm)
                CASE vsW0=3
                     SEEK veSt+UPPER(vnTi)
                CASE vsW0=4
                     SEEK veSt+vaNo+vmEs+vdIa
                CASE vsW0=5
                     SEEK veSt+vaNv+vmEv+vdIv
                CASE vsW0=6
                     SEEK veSt+UPPER(vnVe)
           ENDCASE
           SET NEAR OFF
           IF EOF() .OR. f3500est<>veSt
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           DO muE_3500b WITH "F", "v"
      ENDIF
      DO seE_3500b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. f3500est=veSt .AND. vfIl<ffIl+1
           IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3500b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3500b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3500b WITH "i"
      SET NEAR OFF
      DO paN_3500b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3500b WITH "i", "v"
      DO seE_3500b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3500b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
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
           DO reS_3500b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3500b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_3500b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_3500b IN PCC3500B WITH "3500"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3500b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=6
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_3500a IN PCC3500A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                SET READBORDER ON
                DO geT_3500a IN PCC3500A
                SET READBORDER OFF
                DO caM_3500b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Cuentas x Cobrar detalladas", "Listado", 30
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,03)).meRge
                pxLs.raNge(pxLs.ceLls(3,07), pxLs.ceLls(3,08)).meRge
                pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,10)).meRge
                pxLs.raNge(pxLs.ceLls(3,11), pxLs.ceLls(3,12)).meRge
                pxLs.raNge(pxLs.ceLls(3,13), pxLs.ceLls(3,14)).meRge
                pxLs.raNge(pxLs.ceLls(3,15), pxLs.ceLls(3,16)).meRge
                pxLs.raNge(pxLs.ceLls(3,26), pxLs.ceLls(3,28)).meRge
                pxLs.ceLls(3, 01).vaLue = "Documento"
                pxLs.ceLls(3, 04).vaLue = "S/Cjn"
                pxLs.ceLls(3, 05).vaLue = "Emisión"
                pxLs.ceLls(3, 06).vaLue = "Vencim."
                pxLs.ceLls(3, 07).vaLue = "Cliente"
                pxLs.ceLls(3, 09).vaLue = "Titular"
                pxLs.ceLls(3, 11).vaLue = "Vendedor"
                pxLs.ceLls(3, 13).vaLue = "Tipo de Cliente"
                pxLs.ceLls(3, 15).vaLue = "Técnico de Instalación"
                pxLs.ceLls(3, 17).vaLue = "Documentos relacionados"
                pxLs.ceLls(3, 18).vaLue = "Mon"
                pxLs.ceLls(3, 19).vaLue = "Total"
                pxLs.ceLls(3, 20).vaLue = "Intereses"
                pxLs.ceLls(3, 21).vaLue = "Total+Intereses"
                pxLs.ceLls(3, 22).vaLue = "A/C"
                pxLs.ceLls(3, 23).vaLue = "Saldo"
                pxLs.ceLls(3, 24).vaLue = "Letra"
                pxLs.ceLls(3, 25).vaLue = "Cheq"
                pxLs.ceLls(3, 26).vaLue = "Telefono"
                pxLs.ceLls(3, 29).vaLue = "e-mail"
                pxLs.ceLls(3, 30).vaLue = "Direccion"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(18)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(26),  ;
                          pxLs.coLumns(30)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(19),  ;
                          pxLs.coLumns(25)).nuMberformat = "###,###,###,##0.00"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(24)).hoRizontalalignment = 2
                pxLs.raNge(pxLs.coLumns(26),  ;
                          pxLs.coLumns(30)).hoRizontalalignment = 2
                pxLs.raNge(pxLs.coLumns(19),  ;
                          pxLs.coLumns(25)).hoRizontalalignment = 4
                pxLs.raNge(pxLs.ceLls(2,01), pxLs.ceLls(2,30)).inSert
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,06)).meRge
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,01)).foNt.naMe =  ;
                          "Times New Roman"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,01)).foNt.siZe = 12
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,01)).foNt.boLd = .T.
                DO CASE
                     CASE vsW0=1
                          pxLs.ceLls(3, 01).vaLue = "Orden de Documentos"
                     CASE vsW0=2
                          pxLs.ceLls(3, 01).vaLue = "Orden de Clientes"
                     CASE vsW0=3
                          pxLs.ceLls(3, 01).vaLue = "Orden de Titulares"
                     CASE vsW0=4
                          pxLs.ceLls(3, 01).vaLue =  ;
                                    "Orden de Fechas de Emisión"
                     CASE vsW0=5
                          pxLs.ceLls(3, 01).vaLue =  ;
                                    "Orden de Fechas de Vencimiento"
                     CASE vsW0=6
                          pxLs.ceLls(3, 01).vaLue = "Orden de Vendedores"
                ENDCASE
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                PUBLIC pcJn, plEt, plTr, pcHe
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK veSt
                STORE 5 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF() .AND. f3500est=veSt
                     WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6,  ;
                          0))+"... Leyendo Código: "+f3500tdo+":"+ ;
                          f3500ser+"-"+f3500doc
                     STORE "" TO plTr, pcJn
                     STORE SPACE(1) TO pcHe, plEt
                     DO veR_3500b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT peNd_vtas
                          CASE vsW1=2
                               SELECT coPia
                     ENDCASE
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = f3500tdo
                     pxLs.ceLls(viT1, 02).vaLue = f3500ser
                     pxLs.ceLls(viT1, 03).vaLue = f3500doc
                     pxLs.ceLls(viT1, 04).vaLue = pcJn
                     pxLs.ceLls(viT1, 05).vaLue = DTOC(f3500fem)
                     pxLs.ceLls(viT1, 06).vaLue = DTOC(f3500fve)
                     pxLs.ceLls(viT1, 07).vaLue = ALLTRIM(f3500cli)
                     pxLs.ceLls(viT1, 08).vaLue = ALLTRIM(f3500nom)
                     pxLs.ceLls(viT1, 09).vaLue = ALLTRIM(f3500tit)
                     pxLs.ceLls(viT1, 10).vaLue = ALLTRIM(f3500nti)
                     pxLs.ceLls(viT1, 11).vaLue = ALLTRIM(f3500ven)
                     pxLs.ceLls(viT1, 12).vaLue = ALLTRIM(f3500nve)
                     pxLs.ceLls(viT1, 13).vaLue = ALLTRIM(f3500tcl)
                     pxLs.ceLls(viT1, 14).vaLue = ALLTRIM(f3500ntc)
                     pxLs.ceLls(viT1, 14).vaLue = ALLTRIM(f3500ntc)
                     IF f3500tdo<>"PC"
                          pxLs.ceLls(viT1, 15).vaLue = ALLTRIM(f3500tec)
                          pxLs.ceLls(viT1, 16).vaLue = ALLTRIM(f3500nte)
                          pxLs.ceLls(viT1, 17).vaLue = ALLTRIM(plTr)
                     ELSE
                          pxLs.ceLls(viT1, 17).vaLue = ALLTRIM(f3500nte)
                     ENDIF
                     DO CASE
                          CASE f3500mon=1
                               pxLs.ceLls(viT1, 18).vaLue = "S/."
                          CASE f3500mon=2
                               pxLs.ceLls(viT1, 18).vaLue = "US$"
                     ENDCASE
                     pxLs.ceLls(viT1, 19).vaLue = f3500tot
                     pxLs.ceLls(viT1, 20).vaLue = f3500int
                     pxLs.ceLls(viT1, 21).vaLue = f3500tot+f3500int
                     pxLs.ceLls(viT1, 22).vaLue = f3500acu
                     pxLs.ceLls(viT1, 23).vaLue = f3500tot+f3500int-f3500acu
                     pxLs.ceLls(viT1, 24).vaLue = plEt
                     pxLs.ceLls(viT1, 25).vaLue = pcHe
                     pxLs.ceLls(viT1, 26).vaLue = vtL1
                     pxLs.ceLls(viT1, 27).vaLue = vtL2
                     pxLs.ceLls(viT1, 28).vaLue = vtL3
                     pxLs.ceLls(viT1, 29).vaLue = veMa
                     pxLs.ceLls(viT1, 30).vaLue = ALLTRIM(vdIr)+","+ ;
                               ALLTRIM(vdIs)
                     STORE viT1+1 TO viT1
                     DO CASE
                          CASE vsW1=1
                               SELECT peNd_vtas
                          CASE vsW1=2
                               SELECT coPia
                     ENDCASE
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                RELEASE pcJn, plEt, plTr, pcHe
                pxLs.ceLls(viT1+0, 20).vaLue = "S/."
                pxLs.ceLls(viT1+1, 20).vaLue = "US$"
                DO CASE
                     CASE vsW1=1
                          pxLs.ceLls(viT1+0, 21).vaLue = ttO1+tiN1
                          pxLs.ceLls(viT1+0, 22).vaLue = taC1
                          pxLs.ceLls(viT1+0, 23).vaLue = ttO1+tiN1-taC1
                          pxLs.ceLls(viT1+1, 21).vaLue = ttO2+tiN2
                          pxLs.ceLls(viT1+1, 22).vaLue = taC2
                          pxLs.ceLls(viT1+1, 23).vaLue = ttO2+tiN2-taC2
                     CASE vsW1=2
                          pxLs.ceLls(viT1+0, 21).vaLue = vtO1+viN1
                          pxLs.ceLls(viT1+0, 22).vaLue = vaC1
                          pxLs.ceLls(viT1+0, 23).vaLue = vtO1+viN1-vaC1
                          pxLs.ceLls(viT1+1, 21).vaLue = vtO2+viN2
                          pxLs.ceLls(viT1+1, 22).vaLue = vaC2
                          pxLs.ceLls(viT1+1, 23).vaLue = vtO2+viN2-vaC2
                ENDCASE
                WITH pxLs.raNge(pxLs.ceLls(viT1,20),pxLs.ceLls(viT1+1,23))
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                     .foNt.naMe = "Times New Roman"
                     .foNt.siZe = 11
                     .foNt.boLd = .T.
                     .foNt.coLorindex = 1
                     .inTerior.coLorindex = 15
                     .veRticalalignment = 2
                     .hoRizontalalignment = 4
                ENDWITH
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3500b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3500b IN PCC3500B WITH "3500"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3500b WITH "v"
                DO diS_3500b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=9
                          STORE 1 TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE 9 TO vsW2
                     CASE mkEy=k_Left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                DO p01_3500a IN PCC3500A
                STORE vfIl TO cfIl
                DO muE_3500b WITH "v", "x"
                DO seE_3500b WITH "i"
                DO pa1_3500b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE cfIl TO vfIl
                DO muE_3500b WITH "x", "v"
                DO seE_3500b WITH "v"
                DO diS_3500b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_3500a IN PCC3500A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3500b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO orD_3500b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_3500b WITH "v"
           CASE mkEy=k_Enter
                SELECT peNd_vtas
                STORE 99 TO mkEy
                STORE 00 TO vpA1, vpA2
                DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vtDo+vsEr+vdOc
                IF  .NOT. EOF()
                     DO paG_3500b IN PCC3500B WITH vtDo, vsEr, vdOc
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO orD_3500b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT paGos
                GOTO TOP
                IF BOF()
                     STORE "No hay Pagos realizados en este Documento..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pcC3500c WITH "3500"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3500b WITH "v"
           CASE mkEy=k_Home
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK veSt
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3500b
                               OTHERWISE
                                    DO seE_3500b WITH "v"
                                    DO diS_3500b WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b WITH "i", "v"
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK veSt+"ZZZZZZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f3500est<>veSt
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3500b
                               OTHERWISE
                                    DO seE_3500b WITH "v"
                                    DO diS_3500b WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufIl TO vfIl
                          DO muE_3500b WITH "u", "v"
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3500a WITH ifIl, ffIl+1
                               DO li1_3500a WITH ifIl, ffIl+1
                               DO muE_3500b WITH "F", "v"
                               DO muE_3500b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3500b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3500b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3500a WITH ifIl, ffIl+1
                               DO li1_3500a WITH ifIl, ffIl+1
                               DO muE_3500b WITH "F", "v"
                               DO muE_3500b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3500b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3500b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3500b WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3500est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3500b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b WITH "i", "v"
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3500b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3500est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. f3500est<>veSt
                               SET DELETED OFF
                               GOTO TOP
                               SET DELETED ON
                               SEEK veSt
                          ENDIF
                          DO paN_3500b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b WITH "i", "v"
                          DO seE_3500b WITH "v"
                          DO diS_3500b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3500b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3500b
 DO pn1_3500b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3500b
 DO pn1_3500b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3500b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3500b WITH "F", "v"
 DO muE_3500b WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3500tdo+f3500ser+f3500doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3500b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_3500b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_3500a WITH ufIl+1, ffIl+1
      DO li1_3500a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Cl1_3500b
 DO CASE
      CASE ptIp="N" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLscr
      CASE ptIp="R" .AND. (f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3")
           DO coLblr
      OTHERWISE
           DO cl3_3500b
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_3500b
 DO CASE
      CASE ptIp="N" .AND. f3500fve<DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"ND" .AND. f3500tdo<>"N1" .AND. f3500tdo<>"N3" .AND.  ;
           f3500tdo<>"N2" .AND. f3500tdo<>"N4"
           DO coLscz
      CASE ptIp="R" .AND. f3500fve<DATE() .AND. f3500tdo<>"NC" .AND.  ;
           f3500tdo<>"ND" .AND. f3500tdo<>"N1" .AND. f3500tdo<>"N3" .AND.  ;
           f3500tdo<>"N2" .AND. f3500tdo<>"N4"
           DO coLblz
      OTHERWISE
           DO cl3_3500b
 ENDCASE
ENDPROC
*
PROCEDURE Cl3_3500b
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Dis_3500b
 PARAMETER ptIp
 PUBLIC pcJn, plEt, plTr, pcHe
 STORE "" TO plTr, pcJn
 STORE SPACE(1) TO pcHe, plEt
 DO veR_3500b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO CASE
      CASE f3500mon=1
           STORE "S/." TO psIg
      CASE f3500mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 STORE f3500tot+f3500int TO ptOt
 STORE ptOt-f3500acu TO psLd
 DO CASE
      CASE vsW2=1
           STORE f3500cli TO pcLi
           STORE f3500nom TO pnOm
      CASE vsW2=2
           STORE f3500tit TO pcLi
           STORE f3500nti TO pnOm
      CASE vsW2=3
           STORE f3500ven TO pcLi
           STORE f3500nve TO pnOm
      CASE vsW2=4
           STORE f3500tcl TO pcLi
           STORE f3500ntc TO pnOm
      CASE vsW2=5 .AND. f3500tdo="PC"
           STORE " " TO pcLi
           STORE " " TO pnOm
      CASE vsW2=5
           STORE f3500tec TO pcLi
           STORE f3500nte TO pnOm
      CASE vsW2=6 .AND. f3500tdo="PC"
           STORE " " TO pcLi
           STORE f3500nte TO pnOm
      CASE vsW2=6
           STORE " " TO pcLi
           STORE plTr TO pnOm
      CASE vsW2=7
           STORE " " TO pcLi
           STORE f3500fpa TO pnOm
      CASE vsW2=8
           STORE " " TO pcLi
           STORE ALLTRIM(vtL1)+"/"+ALLTRIM(vtL2)+"/"+ALLTRIM(vtL3)+"/"+ ;
                 ALLTRIM(veMa) TO pnOm
      CASE vsW2=9
           STORE " " TO pcLi
           STORE ALLTRIM(vdIr)+","+ALLTRIM(vdIs) TO pnOm
 ENDCASE
 DO cl1_3500b
 @vFIL,mCO0      Say pCJN+F3500TDO Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFIL,mCO0+04.2 Say F3500SER      Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,mCO0+09.0 Say F3500DOC      Font "&mLetAri",9 Style "NQ" Size 1,10.2
 DO cl2_3500b
 @vFIL,mCO0+33.0 Say F3500FVE      Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO cl3_3500b
 DO CASE
      CASE mrEs="3"
           @vFIL,vCL1+7.6 Say pNOM   Font "&mLetAri",9 Style "NQ" Size 1,084.4 Pict "@S87"
      CASE mrEs="4"
           @vFIL,vCL1+7.6 Say pNOM   Font "&mLetAri",9 Style "NQ" Size 1,136.4 Pict "@S139"
      OTHERWISE
           @vFIL,vCL1+7.6 Say pNOM   Font "&mLetAri",9 Style "NQ" Size 1,153.4 Pict "@S156"
 ENDCASE
 @vFIL,mCO0+19.8 Say F3500FEM      Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,vCL1      Say pCLI          Font "&mLetAri",9 Style "NQ" Size 1,07.0
 @vFIL,vCL2-04.1 Say pSIG          Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFIL,vCL2      Say pTOT          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 @vFIL,vCL3      Say F3500ACU      Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 DO cl1_3500b
 @vFIL,vCL4      Say pSLD          Font "&mLetAri",9 Style "BQ" Size 1,14.0 Pict "9,999,999.99"
 DO cl3_3500b
 @vFIL,vCL4+17.5 Say pLET          Font "&mLetAri",9 Style "BQ" Size 1,2.1 Pict "@S2"
 @vFIL,vCL4+20.7 Say pCHE          Font "&mLetAri",9 Style "BQ" Size 1,1.2 Pict "@S1"
 RELEASE pcJn, plEt, plTr, pcHe
ENDPROC
*
PROCEDURE Ver_3500b
 PRIVATE ptDo, psEr, pdOc, paNo, pmEs, psR1, pnUm, pcLi
 STORE f3500tdo TO ptDo
 STORE f3500ser TO psEr
 STORE f3500doc TO pdOc
 STORE " " TO vdIr, vdIs, vtL1, vtL2, vtL3, veMa, veM2, veM3
 DO CASE
      CASE ptDo="LE"
           SELECT deT_ing_caja
           DO orD_0000a WITH "3511", "C", "F3511NUM", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT caB_ing_caja
           DO orD_0000a WITH "3510", "C", "F3510LET", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK psEr+pdOc
           IF EOF()
                STORE "*" TO pcJn
           ELSE
                DO WHILE  .NOT. EOF() .AND. f3510srl+f3510let=psEr+pdOc
                     STORE f3510ano TO paNo
                     STORE f3510mes TO pmEs
                     STORE f3510ser TO psR1
                     STORE f3510num TO pnUm
                     SELECT deT_ing_caja
                     SEEK paNo+pmEs+psR1+pnUm
                     DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+ ;
                        f3511ser+f3511num=paNo+pmEs+psR1+pnUm
                          IF LEN(ALLTRIM(plTr))<>0
                               STORE plTr+";"+f3511tdo+":"+f3511sr1+"-"+ ;
                                     f3511doc TO plTr
                          ELSE
                               STORE plTr+f3511tdo+":"+f3511sr1+"-"+ ;
                                     f3511doc TO plTr
                          ENDIF
                          SELECT deT_ing_caja
                          SKIP
                     ENDDO
                     SELECT caB_ing_caja
                     SKIP
                ENDDO
           ENDIF
           SELECT caB_ing_caja
           DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deT_ing_caja
           DO orD_0000a WITH "3511", "C", "F3511DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT leTras_cli
           SEEK psEr+pdOc
           DO CASE
                CASE SUBSTR(f3110com, 1, 2)="PR"
                     STORE "pr" TO plEt
                CASE f3110tip=1
                     STORE "D" TO plEt
                CASE f3110tip=2
                     STORE "C" TO plEt
                CASE f3110tip=3
                     STORE "N" TO plEt
           ENDCASE
      CASE ptDo<>"LE"
           STORE f3500cli TO pcLi
           SELECT suCursales
           SEEK pcLi
           IF  .NOT. EOF()
                STORE f1102dir TO vdIr
                STORE f1102ndi TO vdIs
                STORE f1102tl1 TO vtL1
                STORE f1102tl2 TO vtL2
                STORE f1102tl3 TO vtL3
                STORE f1102mai TO veMa
                STORE f1102ma2 TO veM2
                STORE f1102ma3 TO veM3
           ENDIF
           SELECT deT_ing_caja
           SEEK ptDo+psEr+pdOc
           DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=ptDo+ ;
              psEr+pdOc
                STORE f3511ano TO paNo
                STORE f3511mes TO pmEs
                STORE f3511ser TO psR1
                STORE f3511num TO pnUm
                SELECT caB_ing_caja
                SEEK paNo+pmEs+psR1+pnUm
                IF  .NOT. EOF() .AND. f3510est<>"9" .AND.  ;
                    LEN(ALLTRIM(f3510let))<>0
                     IF LEN(ALLTRIM(plTr))<>0
                          STORE plTr+";"+f3510srl+"-"+f3510let TO plTr
                     ELSE
                          STORE plTr+f3510srl+"-"+f3510let TO plTr
                     ENDIF
                ENDIF
                SELECT deT_ing_caja
                SKIP
           ENDDO
           SELECT deT_ing_bancos
           SEEK ptDo+psEr+pdOc
           DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=ptDo+ ;
              psEr+pdOc
                STORE f3531ano TO paNo
                STORE f3531mes TO pmEs
                STORE f3531ser TO psR1
                STORE f3531num TO pnUm
                SELECT caB_ing_bancos
                SEEK paNo+pmEs+psR1+pnUm
                IF  .NOT. EOF() .AND. f3530est<>"9" .AND. f3530tpo=1
                     STORE "*" TO pcHe
                     EXIT
                ENDIF
                SELECT deT_ing_bancos
                SKIP
           ENDDO
 ENDCASE
 RELEASE ptDo, psEr, pdOc, paNo, pmEs, psR1, pnUm, pcLi
ENDPROC
*
PROCEDURE Opc_3500b
 PARAMETER ppRg
 DO rs2_1101a IN PVC1101A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           IF ppRg="3500"
                DO reS_3500b IN PCC3500B
           ELSE
                DO reS_3501b IN PCC3501B
           ENDIF
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_1101a IN PVC1101A
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
                     77 .AND. mcCc<=mmC1+85.80
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
                DO hl2_3500b IN PCC3500B
           CASE mkEy=k_F12
                IF ppRg="3500"
                     DO reS_3500b IN PCC3500B
                ELSE
                     DO reS_3501b IN PCC3501B
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_1101a IN PVC1101A
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
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_vtas
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SET FILTER TO
                IF ppRg="3500"
                     SEEK veSt
                ENDIF
                STORE 01 TO vsW1
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, viN1, viN2, vlE1,  ;
                      vlE2, vnC1
                STORE 00 TO vfA1, vfA2, vbO1, vbO2, vnP1, vnP2, vnD1,  ;
                      vnD2, vnC2
                STORE 99 TO mkEy
                SET ESCAPE ON
                ON ESCAPE STORE 9000 TO MKEY
                WAIT WINDOW NOWAIT  ;
                     "L E Y E N D O... Presionar ESC para Salir"+CHR(13)+ ;
                     "Hora Inicial de Lectura: "+TIME()
                DO WHILE  .NOT. EOF()
                     IF mkEy=9000
                          RETURN
                     ENDIF
                     IF ppRg="3500" .AND. f3500est<>veSt
                          EXIT
                     ENDIF
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f3500nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3500nti)))<>0
                          DO muE_3500a IN PCC3500A
                          DO grA_3500a IN PCC3500A
                          DO CASE
                               CASE f3500mon=1 .AND. (f3500tdo="NC" .OR.  ;
                                    f3500tdo="N1" .OR. f3500tdo="N3")
                                    STORE vtO1-f3500tot TO vtO1
                                    STORE vaC1-f3500acu TO vaC1
                                    STORE viN1-f3500int TO viN1
                               CASE f3500mon=2 .AND. (f3500tdo="NC" .OR.  ;
                                    f3500tdo="N1" .OR. f3500tdo="N3")
                                    STORE vtO2-f3500tot TO vtO2
                                    STORE vaC2-f3500acu TO vaC2
                                    STORE viN2-f3500int TO viN2
                               CASE f3500mon=1
                                    STORE vtO1+f3500tot TO vtO1
                                    STORE vaC1+f3500acu TO vaC1
                                    STORE viN1+f3500int TO viN1
                               CASE f3500mon=2
                                    STORE vtO2+f3500tot TO vtO2
                                    STORE vaC2+f3500acu TO vaC2
                                    STORE viN2+f3500int TO viN2
                          ENDCASE
                          DO CASE
                               CASE f3500tdo="FA" .AND. f3500mon=1
                                    STORE vfA1+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA1
                               CASE f3500tdo="FE" .AND. f3500mon=1
                                    STORE vfA1+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA1
                               CASE f3500tdo="FC" .AND. f3500mon=1
                                    STORE vfA1+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA1
                               CASE f3500tdo="FA" .AND. f3500mon=2
                                    STORE vfA2+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA2
                               CASE f3500tdo="FE" .AND. f3500mon=2
                                    STORE vfA2+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA2
                               CASE f3500tdo="FC" .AND. f3500mon=2
                                    STORE vfA2+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA2
                               CASE f3500tdo="BO" .AND. f3500mon=1
                                    STORE vbO1+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO1
                               CASE f3500tdo="BC" .AND. f3500mon=1
                                    STORE vbO1+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO1
                               CASE f3500tdo="BE" .AND. f3500mon=1
                                    STORE vbO1+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO1
                               CASE f3500tdo="BO" .AND. f3500mon=2
                                    STORE vbO2+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO2
                               CASE f3500tdo="BC" .AND. f3500mon=2
                                    STORE vbO2+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO2
                               CASE f3500tdo="BE" .AND. f3500mon=2
                                    STORE vbO2+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO2
                               CASE f3500tdo="NP" .AND. f3500mon=1
                                    STORE vnP1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnP1
                               CASE f3500tdo="NP" .AND. f3500mon=2
                                    STORE vnP2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnP2
                               CASE f3500tdo="LE" .AND. f3500mon=1
                                    STORE vlE1+(f3500tot+f3500int- ;
                                     f3500acu) TO vlE1
                               CASE f3500tdo="LE" .AND. f3500mon=2
                                    STORE vlE2+(f3500tot+f3500int- ;
                                     f3500acu) TO vlE2
                               CASE f3500tdo="ND" .AND. f3500mon=1
                                    STORE vnD1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD1
                               CASE f3500tdo="N2" .AND. f3500mon=1
                                    STORE vnD1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD1
                               CASE f3500tdo="N4" .AND. f3500mon=1
                                    STORE vnD1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD1
                               CASE f3500tdo="ND" .AND. f3500mon=2
                                    STORE vnD2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD2
                               CASE f3500tdo="N2" .AND. f3500mon=2
                                    STORE vnD2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD2
                               CASE f3500tdo="N4" .AND. f3500mon=2
                                    STORE vnD2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD2
                               CASE (f3500tdo="NC" .OR. f3500tdo="N1"  ;
                                    .OR. f3500tdo="N3") .AND. f3500mon=1
                                    STORE vnC1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnC1
                               CASE (f3500tdo="NC" .OR. f3500tdo="N1"  ;
                                    .OR. f3500tdo="N3") .AND. f3500mon=2
                                    STORE vnC2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnC2
                          ENDCASE
                          SELECT peNd_vtas
                     ENDIF
                     SKIP
                ENDDO
                WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                = INKEY(0.5)
                WAIT CLEAR
                ON ESCAPE
                SET ESCAPE OFF
                IF mkEy=9000
                     STORE "Proceso Interrumpido..." TO mmSj
                     DO poNmsj
                ELSE
                     SELECT coPia
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE 01 TO vsW1
                          STORE SPACE(70) TO vpAl, cpAl
                          STORE "Palabra no encontrada..." TO mmSj
                          DO poNmsj
                     ELSE
                          STORE 02 TO vsW1
                          STORE 00 TO csW1
                          EXIT
                     ENDIF
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_1101a IN PVC1101A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      IF ppRg="3500"
           DO orD_3500b IN PCC3500B
      ELSE
           DO orD_3501b IN PCC3501B
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SET DELETED OFF
      GOTO TOP
      SET DELETED ON
      IF ppRg="3500"
           SEEK veSt
           DO paN_3500b IN PCC3500B
      ELSE
           DO paN_3501b IN PCC3501B
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3500b IN PCC3500B WITH "i", "v"
 ENDIF
 DO coLsc7
 @mFI0+mUFI,mCO0+11 Say vPAL Size 1,60 Pict "@S65" Font "&mLetRom",9 Style "BQ"
 DO toT_3500a IN PCC3500A
ENDPROC
*
PROCEDURE Cam_3500b
 DO muE_3500b WITH "v", "x"
 STORE vsW0 TO csW0
 STORE 00 TO cfIl
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO orD_3500b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3500b WITH "i"
 DO pa1_3500b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_3500b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3500b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3500b WITH "v"
 DO diS_3500b WITH "R"
ENDPROC
*
PROCEDURE Res_3500b
 SET READBORDER ON
 DO reS_3500a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3500b WITH "R"
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
PROCEDURE Ord_3500b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500PEN", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NO2", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NT2", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500FE2", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500FV2", "A"
      CASE vsW0=6 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NV2", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3500PEN", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3500NO2", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3500NT2", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3500FE2", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3500FV2", "A"
      CASE vsW0=6
           DO orD_0000a WITH "TMP", "C", "F3500NV2", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3500b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vcLi TO icLi
           STORE vnOm TO inOm
           STORE vtIt TO itIt
           STORE vnTi TO inTi
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
           STORE vaNv TO iaNv
           STORE vmEv TO imEv
           STORE vdIv TO idIv
           STORE vvEn TO ivEn
           STORE vnVe TO inVe
           STORE vmOn TO imOn
           STORE vsLd TO isLd
      CASE ptP1="v" .AND. ptP2="u"
           STORE vtDo TO utDo
           STORE vsEr TO usEr
           STORE vdOc TO udOc
           STORE vcLi TO ucLi
           STORE vnOm TO unOm
           STORE vtIt TO utIt
           STORE vnTi TO unTi
           STORE vaNo TO uaNo
           STORE vmEs TO umEs
           STORE vdIa TO udIa
           STORE vaNv TO uaNv
           STORE vmEv TO umEv
           STORE vdIv TO udIv
           STORE vvEn TO uvEn
           STORE vnVe TO unVe
           STORE vmOn TO umOn
           STORE vsLd TO usLd
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vcLi TO ccLi
           STORE vnOm TO cnOm
           STORE vtIt TO ctIt
           STORE vnTi TO cnTi
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
           STORE vaNv TO caNv
           STORE vmEv TO cmEv
           STORE vdIv TO cdIv
           STORE vvEn TO cvEn
           STORE vnVe TO cnVe
           STORE vmOn TO cmOn
           STORE vsLd TO csLd
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vcLi TO xcLi
           STORE vnOm TO xnOm
           STORE vtIt TO xtIt
           STORE vnTi TO xnTi
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
           STORE vaNv TO xaNv
           STORE vmEv TO xmEv
           STORE vdIv TO xdIv
           STORE vvEn TO xvEn
           STORE vnVe TO xnVe
           STORE vmOn TO xmOn
           STORE vsLd TO xsLd
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xcLi TO vcLi
           STORE xnOm TO vnOm
           STORE xtIt TO vtIt
           STORE xnTi TO vnTi
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
           STORE xaNv TO vaNv
           STORE xmEv TO vmEv
           STORE xdIv TO vdIv
           STORE xvEn TO vvEn
           STORE xnVe TO vnVe
           STORE xmOn TO vmOn
           STORE xsLd TO vsLd
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE icLi TO vcLi
           STORE inOm TO vnOm
           STORE itIt TO vtIt
           STORE inTi TO vnTi
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE iaNv TO vaNv
           STORE imEv TO vmEv
           STORE idIv TO vdIv
           STORE ivEn TO vvEn
           STORE inVe TO vnVe
           STORE imOn TO vmOn
           STORE isLd TO vsLd
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ucLi TO vcLi
           STORE unOm TO vnOm
           STORE utIt TO vtIt
           STORE unTi TO vnTi
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE uaNv TO vaNv
           STORE umEv TO vmEv
           STORE udIv TO vdIv
           STORE uvEn TO vvEn
           STORE unVe TO vnVe
           STORE umOn TO vmOn
           STORE usLd TO vsLd
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE ccLi TO vcLi
           STORE cnOm TO vnOm
           STORE ctIt TO vtIt
           STORE cnTi TO vnTi
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
           STORE caNv TO vaNv
           STORE cmEv TO vmEv
           STORE cdIv TO vdIv
           STORE cvEn TO vvEn
           STORE cnVe TO vnVe
           STORE cmOn TO vmOn
           STORE csLd TO vsLd
      CASE ptP1="F" .AND. ptP2="v"
           STORE f3500tdo TO vtDo
           STORE f3500ser TO vsEr
           STORE f3500doc TO vdOc
           STORE f3500cli TO vcLi
           STORE f3500nom TO vnOm
           STORE f3500tit TO vtIt
           STORE f3500nti TO vnTi
           STORE f3500ven TO vvEn
           STORE f3500nve TO vnVe
           STORE f3500mon TO vmOn
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO vdIa
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO vaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO vmEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO vdIv
           STORE f3500tot+f3500int-f3500acu TO vsLd
      CASE ptP1="F" .AND. ptP2="u"
           STORE f3500tdo TO utDo
           STORE f3500ser TO usEr
           STORE f3500doc TO udOc
           STORE f3500cli TO ucLi
           STORE f3500nom TO unOm
           STORE f3500tit TO utIt
           STORE f3500nti TO unTi
           STORE f3500ven TO uvEn
           STORE f3500nve TO unVe
           STORE f3500mon TO umOn
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO udIa
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO uaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO umEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO udIv
           STORE f3500tot+f3500int-f3500acu TO usLd
      CASE ptP1="F" .AND. ptP2="i"
           STORE f3500tdo TO itDo
           STORE f3500ser TO isEr
           STORE f3500doc TO idOc
           STORE f3500cli TO icLi
           STORE f3500nom TO inOm
           STORE f3500tit TO itIt
           STORE f3500nti TO inTi
           STORE f3500ven TO ivEn
           STORE f3500nve TO inVe
           STORE f3500mon TO imOn
           STORE SUBSTR(DTOC(f3500fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f3500fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f3500fem), 1, 2) TO idIa
           STORE SUBSTR(DTOC(f3500fve), 7, 4) TO iaNv
           STORE SUBSTR(DTOC(f3500fve), 4, 2) TO imEv
           STORE SUBSTR(DTOC(f3500fve), 1, 2) TO idIv
           STORE f3500tot+f3500int-f3500acu TO isLd
 ENDCASE
ENDPROC
*
PROCEDURE See_3500b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+UPPER(vnOm)+vcLi+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK veSt+UPPER(vnTi)+vtIt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW0=4
                     SEEK veSt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW0=5
                     SEEK veSt+vaNv+vmEv+vdIv+vtDo+vsEr+vdOc
                CASE vsW0=6
                     SEEK veSt+UPPER(vnVe)+vvEn+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK veSt+itDo+isEr+idOc
                CASE vsW0=2
                     SEEK veSt+UPPER(inOm)+icLi+iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK veSt+UPPER(inTi)+itIt+iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW0=4
                     SEEK veSt+iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW0=5
                     SEEK veSt+iaNv+imEv+idIv+itDo+isEr+idOc
                CASE vsW0=6
                     SEEK veSt+UPPER(inVe)+ivEn+iaNo+imEs+idIa+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK veSt+utDo+usEr+udOc
                CASE vsW0=2
                     SEEK veSt+UPPER(unOm)+ucLi+uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK veSt+UPPER(unTi)+utIt+uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW0=4
                     SEEK veSt+uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW0=5
                     SEEK veSt+uaNv+umEv+udIv+utDo+usEr+udOc
                CASE vsW0=6
                     SEEK veSt+UPPER(unVe)+uvEn+uaNo+umEs+udIa+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Imp_3500b
 STORE 0 TO mvIs
 DO CASE
      CASE voP1<3
           DO ipR_0001a WITH "VE"
      CASE voP1=3
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3500B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE voP1<3
           DO ipR_0001a WITH "VE"
      CASE voP1=3
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3500b
 DO fpR_0001a
 STORE 99 TO mkEy
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rep_3500b
 PUBLIC pcL1, pcL2, ptAm
 PRIVATE ptDo, psR1, pdOc, pfEm, pmOn, ptOt, paCu, piNt, paNo, pmEs, psEr,  ;
         pnUm, pdIa, pgLo, pcHe
 DO CASE
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1<3
           STORE 96 TO ptAm
           STORE 07 TO mcLn
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1=3
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1<3
           STORE 97 TO ptAm
           STORE 08 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1=3
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           DO CASE
                CASE voP1<3
                     STORE 98 TO ptAm
                CASE voP1=3
                     STORE 118 TO ptAm
           ENDCASE
           DO npG_0000a
 ENDCASE
 STORE mcLn TO pcL1
 DO CASE
      CASE mvIs=1
           STORE mcLn+19.5 TO pcL2
      CASE mpRt="1"
           STORE mcLn+16.6 TO pcL2
      CASE mpRt="2"
           STORE mcLn+20.5 TO pcL2
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 SEEK veSt
 DO coLbln
 STORE 0 TO csL1, csL2, ctT1, ctT2, vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      STORE f3500tdo TO ptDo
      STORE f3500ser TO psR1
      STORE f3500doc TO pdOc
      STORE f3500fem TO pfEm
      STORE f3500mon TO pmOn
      STORE f3500tot TO ptOt
      STORE f3500int TO piNt
      STORE f3500acu TO paCu
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF (voPc=1 .AND. (ptDo+psR1+pdOc<dtDo+dsEr+ddOc .OR. ptDo+psR1+pdOc> ;
         htDo+hsEr+hdOc)) .OR. (voPc=2 .AND. (pfEm<dfEm .OR. pfEm>hfEm))
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3500b IN PCC3500B WITH "3500"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO im1_3500b IN PCC3500B WITH pcL1, "3500"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE (ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3") .AND. pmOn=1
                STORE csL1-(ptOt-paCu) TO csL1
                STORE ctT1-ptOt TO ctT1
           CASE (ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3")
                STORE csL2-(ptOt-paCu) TO csL2
                STORE ctT2-ptOt TO ctT2
           CASE pmOn=1
                STORE csL1+(ptOt+piNt-paCu) TO csL1
                STORE ctT1+ptOt TO ctT1
           CASE pmOn=2
                STORE csL2+(ptOt+piNt-paCu) TO csL2
                STORE ctT2+ptOt TO ctT2
      ENDCASE
      STORE vlIn+1.3 TO vlIn
      IF voP2=2
           DO CASE
                CASE vsW1=1
                     SELECT peNd_vtas
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           DO paG_3500b IN PCC3500B WITH ptDo, psR1, pdOc
           SELECT paGos
           GOTO TOP
           IF  .NOT. BOF()
                STORE vlIn+0.8 TO vlIn
                IF vlIn+1.5>mpAg-3
                     DO caB_3500b IN PCC3500B WITH "3500"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO cb1_3500b IN PCC3500B WITH pcL2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT paGos
                DO WHILE  .NOT. EOF()
                     IF vlIn>mpAg-3
                          DO caB_3500b IN PCC3500B WITH "3500"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          DO cb1_3500b IN PCC3500B WITH pcL2
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     DO im2_3500b IN PCC3500B WITH pcL2
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE vlIn+1.3 TO vlIn
                     SKIP
                ENDDO
                STORE vlIn+0.8 TO vlIn
           ENDIF
           DO CASE
                CASE vsW1=1
                     SELECT peNd_vtas
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           DO orD_3500b IN PCC3500B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT peNd_vtas
           CASE vsW1=2
                SELECT coPia
      ENDCASE
      SKIP
 ENDDO
 IF vpAg>0
      IF vlIn+1.3>mpAg-3
           DO caB_3500b IN PCC3500B WITH "3500"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO suB_3500b IN PCC3500B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+2 TO vlIn
      IF vlIn>mpAg-3
           DO caB_3500b IN PCC3500B WITH "3500"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO rsM_3500b IN PCC3500B
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE pcL1, pcL2, ptAm
 RELEASE ptDo, psR1, pdOc, pfEm, pmOn, ptOt, paCu, piNt, paNo, pmEs, psEr,  ;
         pnUm, pdIa, pgLo, pcHe
ENDPROC
*
PROCEDURE Cab_3500b
 PARAMETER ppRg
 PRIVATE pnOm, pcLx
 STORE mcLn+45.5 TO pcLx
 DO CASE
      CASE vsW0=3
           STORE "Cliente Titular" TO pnOm
      CASE vsW0=6
           STORE "Vendedor" TO pnOm
      OTHERWISE
           STORE "Cliente complemento" TO pnOm
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
      DO CASE
           CASE ppRg="3500"
                @vLIN,mCLN Say "Cuentas por Cobrar detalladas"  Font "&mLetAri",13 Style "NQ"
           CASE ppRg="3501"
                @vLIN,mCLN Say "Histórico de Cuentas de Ventas" Font "&mLetAri",13 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF voP2=2
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say "Especifica detalle de pagos" Font "&mLetAri",10 Style "NT"
      ENDIF
      STORE vlIn+2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Documentos - Rango Desde: "            +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=2 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Nombres de Clientes - Rango Desde: "   +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=3 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Nombres de Titulares - Rango Desde: "  +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=4 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Fechas de Emisión - Rango Desde: "     +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=5 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Fechas de Vencimiento - Rango Desde: " +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=6 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Vendedores - Rango Desde: "            +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=1 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Documentos - Rango Desde: "            +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           CASE vsW0=2 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Nombres de Clientes - Rango Desde: "   +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           CASE vsW0=3 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Nombres de Titulares - Rango Desde: "  +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           CASE vsW0=4 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Fechas de Emisión - Rango Desde: "     +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           CASE vsW0=5 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Fechas de Vencimiento - Rango Desde: " +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           CASE vsW0=6 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Vendedores - Rango Desde: "            +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1 .AND. voP1<3
                DO coLblz
                @vLIN,mCLN       Say "Documento"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+019.5 Say "Fecha-Emi"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+032.5 Say "Vencimien"  Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX       Say pNOM         Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+100.5 Say "Mn"         Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+114.0 Say "Total"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+134.5 Say "A/C"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+149.0 Say "Saldo"      Font "&mLetAri",9 Style "BT"
           CASE mvIs=1 .AND. voP1=3
                DO coLblz
                @vLIN,mCLN       Say "Documento"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+019.5 Say "Fecha-Emi"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+032.5 Say "Vencimien"  Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX       Say pNOM         Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+087.5 Say "Mn"         Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+101.0 Say "Total"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+121.5 Say "A/C"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+136.0 Say "Saldo"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+145.3 Say "Día-E"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+152.3 Say "Día-V"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+163.9 Say "Referencia" Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Documento" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+020.5 Say "Fecha-Emi" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+034.5 Say "Vencimien" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+045.5 Say pNOM        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.5 Say "Mn"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+109.5 Say "Total"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+125.5 Say "A/C"       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+139.0 Say "Saldo"     Font "&mLetAri",9 Style "BT"
                IF voP1=3
                     @vLIN,mCLN+154.9 Say "Dia-Emi"  Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+166.9 Say "Dia-Vct"  Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+178.0 Say "Referenc" Font "&mLetAri",9 Style "BT"
                ENDIF
           CASE mpRt="2" .AND. voP1<3
                @vLIN,mCLN       Say "Documento" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+020.5 Say "Fecha-Emi" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+034.0 Say "Vencim"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+048.0 Say pNOM        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.5 Say "Mn"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+109.5 Say "Total"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+126.4 Say "A/C"       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+139.0 Say "Saldo"     Font "&mLetAri",9 Style "BT"
           CASE mpRt="2" .AND. voP1=3
                @vLIN,mCLN       Say "Documento" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+020.5 Say "Fecha-Emi" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+034.0 Say "Vencim"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+048.0 Say pNOM        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.5 Say "Mn"        Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+108.0 Say "Total"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+125.0 Say "A/C"       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+137.5 Say "Saldo"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+157.9 Say "Dia-Emi"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+169.9 Say "Dia-Vct"   Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+181.0 Say "Referenc"  Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 STORE vlIn+0.3 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Cb1_3500b
 PARAMETER pcLn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+044.5 Say "Glosa"              Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+086.6 Say "Recibo"             Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+096.4 Say "Cheque/Depós"       Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+130.3 Say "Monto"              Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+052.5 Say "Glosa"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+079.0 Say "Recibo"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+091.0 Say "Cheq/Depós"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+123.3 Say "Monto"              Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+039.5 Say "Glosa"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+075.0 Say "Recibo"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+085.0 Say "Cheque/Depósito"    Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+110.5 Say "Monto"              Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.2 Say Replicate("_",86) Font "&mLetRom",11 Style "NT"
           CASE mpRt="1"
                @vLIN,pCLN     Say Replicate("_",85) Font "&mLetRom",11 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN     Say Replicate("_",84) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Cb2_3500b
 PARAMETER pcLn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,pCLN Say "***" Font "&mLetAri",9 Style "BT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+126.0 Say "Pago"            Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+126.4 Say "Pago"            Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+125.5 Say "Pago"            Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.5 Say Replicate("_",82) Font "&mLetRom",11 Style "NT"
           CASE mpRt="1"
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.4 Say Replicate("_",86) Font "&mLetRom",11 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN     Say Replicate("_",88) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Sub_3500b
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,mCLN+088.2 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.2 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+101.9 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
                @vLIN,mCLN+131.7 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+136.8 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+112.4 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+123.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+142.6 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+083.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.1 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+125.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.2 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,mCLN+088.2 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.2 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+101.9 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
                @vLIN,mCLN+131.7 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+136.8 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+112.4 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+123.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+142.6 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+083.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.1 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+125.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.2 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Im1_3500b
 PARAMETER pcLn, ppRg
 PRIVATE qfVe, qnOm, qnVe, qnTi, qlE1, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa,  ;
         qsWb, qdIa, qdVc, qnNn
 STORE UPPER(ALLTRIM(f3500nom)) TO qnOm
 STORE UPPER(ALLTRIM(f3500nve)) TO qnVe
 STORE UPPER(ALLTRIM(f3500nti)) TO qnTi
 STORE SUBSTR(qnOm, 1, 1)+SUBSTR(LOWER(qnOm), 2, 100) TO qnOm
 STORE SUBSTR(qnVe, 1, 1)+SUBSTR(LOWER(qnVe), 2, 100) TO qnVe
 STORE SUBSTR(qnTi, 1, 1)+SUBSTR(LOWER(qnTi), 2, 100) TO qnTi
 STORE f3500fve TO qfVe
 STORE f3500le1 TO qlE1
 STORE SPACE(1) TO qsWa, qsWb, qsIg
 STORE 00 TO qdIa, qdVc
 DO CASE
      CASE pmOn=1
           STORE "S/." TO qsIg
      CASE pmOn=2
           STORE "U$" TO qsIg
 ENDCASE
 DO CASE
      CASE (ppRg="3500" .OR. ppRg="3500") .AND. vsW0=3
           STORE qnTi TO qnNn
      CASE (ppRg="3500" .OR. ppRg="3500") .AND. vsW0=6
           STORE qnVe TO qnNn
      OTHERWISE
           STORE qnOm TO qnNn
 ENDCASE
 IF ptDo<>"NC" .AND. ptDo<>"ND" .AND. ptDo<>"N1" .AND. ptDo<>"N3" .AND.  ;
    ptDo<>"N2" .AND. ptDo<>"N4" .AND. ptOt+piNt-paCu>0
      STORE DATE()-pfEm TO qdIa
      STORE DATE()-qfVe TO qdVc
      IF ptDo<>"NC" .AND. ptDo<>"N1" .AND. ptDo<>"N3"
           SELECT deT_ing_bancos
           SEEK ptDo+psR1+pdOc
           DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=ptDo+ ;
              psR1+pdOc
                STORE f3531ano TO qaNo
                STORE f3531mes TO qmEs
                STORE f3531ser TO qsEr
                STORE f3531num TO qnUm
                SELECT caB_ing_bancos
                SEEK qaNo+qmEs+qsEr+qnUm
                IF  .NOT. EOF() .AND. f3530est<>"9" .AND. f3530tpo=1
                     STORE "*" TO qsWa
                     EXIT
                ENDIF
                SELECT deT_ing_bancos
                SKIP
           ENDDO
      ENDIF
      IF ptDo="LE"
           SELECT leTras_cli
           SEEK psR1+pdOc
           DO CASE
                CASE SUBSTR(f3110com, 1, 2)="PR"
                     STORE "pr" TO qsWb
                CASE f3110tip=1
                     STORE "D" TO qsWb
                CASE f3110tip=2
                     STORE "C" TO qsWb
                CASE f3110tip=3
                     STORE "N" TO qsWb
           ENDCASE
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1 .AND. voP1<3
                DO coLblz
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.8 Say qNNN             Font "&mLetAri",9 Style "NQ" Size 1,54 Pict "@S57"
                @vLIN,pCLN+100.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+104.2 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+121.8 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+139.3 Say pTOT+pINT-pACU   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+156.6 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+158.9 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
           CASE mvIs=1 .AND. voP1=3
                DO coLblz
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.8 Say qNNN             Font "&mLetAri",9 Style "NQ" Size 1,41 Pict "@S44"
                @vLIN,pCLN+087.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+091.2 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+108.8 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+126.3 Say pTOT+pINT-pACU   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+143.7 Say qDIA             Font "&mLetAri",9 Style "NQ" Size 1,6.9  Pict "9,999"
                @vLIN,pCLN+151.2 Say qDVC             Font "&mLetAri",9 Style "NQ" Size 1,6.9  Pict "9,999"
                @vLIN,pCLN+158.8 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+161.2 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
                @vLIN,pCLN+163.6 Say qLE1             Font "&mLetAri",9 Style "NQ" Size 1,25.5 Pict "@S29"
           CASE mpRt="1"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+020.5 Say pFEM              Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+034.5 Say qFVE              Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+048.0 Say qNNN              Font "&mLetAri",9 Style "NQ" Size 1,39 Pict "@S42"
                @vLIN,pCLN+096.5 Say qSIG              Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+113.5 Say pTOT              Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vLIN,pCLN+128.5 Say pACU              Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vLIN,pCLN+144.0 Say pTOT+pINT-pACU    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+020.5 Say pFEM              Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+034.5 Say qFVE              Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+048.0 Say qNNN              Font "&mLetAri",9 Style "NQ" Size 1,39 Pict "@S42"
                @vLIN,pCLN+096.5 Say qSIG              Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+103.0 Say pTOT              Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vLIN,pCLN+118.0 Say pACU              Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
                @vLIN,pCLN+133.0 Say pTOT+pINT-pACU    Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
      ENDCASE
 ENDIF
 DO CASE
      CASE mvIs=1 .AND. voP1=2
           STORE vlIn+1.3 TO vlIn
           IF vlIn>mpAg-3
                DO caB_3500b IN PCC3500B WITH ppRg
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           DO coLblz
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,pCLN+045.5 Say "No.Bco:"      Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+055.5 Say qLE1           Font "&mLetAri",9 Style "NQ" Size 1,31  Pict "@S34"
                @vLIN,pCLN+100.5 Say "Dia-Emision:" Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+115.5 Say qDIA           Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+135.0 Say "Dia-Vencim:"  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+149.0 Say qDVC           Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
           ENDIF
      CASE mpRt="1" .AND. voP1=2
           STORE vlIn+1.2 TO vlIn
           IF vlIn>mpAg-3
                DO caB_3500b IN PCC3500B WITH ppRg
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                IF ptDo="LE"
                     @vLIN,pCLN+48 Say "No.Banco:"+qLE1 Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S30"
                ENDIF
                @vLIN,pCLN+111.5 Say "Dia-Emi:" Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+126.7 Say qDIA       Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+130.0 Say "Dia-Vct:" Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+145.5 Say qDVC       Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+147.5 Say qSWA       Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+150.3 Say qSWB       Font "&mLetAri",9 Style "BQ"
           ENDIF
      CASE mpRt="1" .AND. voP1=3
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,pCLN+149.2 Say qSWA  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+152.0 Say qSWB  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+162.5 Say qDIA  Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+174.0 Say qDVC  Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                IF ptDo="LE"
                     @vLIN,pCLN+178 Say qLE1 Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S10"
                ENDIF
           ENDIF
      CASE mpRt="2" .AND. voP1=2
           STORE vlIn+1.2 TO vlIn
           IF vlIn>mpAg-3
                DO caB_3500b IN PCC3500B WITH ppRg
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                IF ptDo="LE"
                     @vLIN,pCLN+48 Say "No.Banco:"+qLE1 Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S30"
                ENDIF
                @vLIN,pCLN+111.5 Say "Dia-Emi:" Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+126.7 Say qDIA       Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+130.0 Say "Dia-Vct:" Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+145.5 Say qDVC       Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+147.5 Say qSWA       Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+150.3 Say qSWB       Font "&mLetAri",9 Style "BQ"
           ENDIF
      CASE mpRt="2" .AND. voP1=3
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,pCLN+149.2 Say qSWA  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+152.0 Say qSWB  Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+162.5 Say qDIA  Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                @vLIN,pCLN+174.0 Say qDVC  Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9,999"
                IF ptDo="LE"
                     @vLIN,pCLN+182 Say qLE1 Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "@S20"
                ENDIF
           ENDIF
 ENDCASE
 RELEASE qfVe, qnOm, qnVe, qnTi, qlE1, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa,  ;
         qsWb, qdIa, qdVc, qnNn
ENDPROC
*
PROCEDURE Im2_3500b
 PARAMETER pcLn
 PRIVATE psIg
 DO CASE
      CASE ftM2mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "US$" TO psIg
 ENDCASE
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NT" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetAri",9 Style "NT" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+044.3 Say FTM2GLO                   Font "&mLetAri",9 Style "NT" Size 1,41.5 Pict "@S43"
                @vLIN,pCLN+086.6 Say FTM2RCB                   Font "&mLetAri",9 Style "NT" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+096.4 Say FTM2CHE                   Font "&mLetAri",9 Style "NT" Size 1,18.0 Pict "@S21"
                @vLIN,pCLN+115.2 Say pSIG                      Font "&mLetAri",9 Style "NT" Size 1,05.2
                @vLIN,pCLN+120.1 Say FTM2PAG                   Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
           CASE mpRt="1"
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",8 Style "NT" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetAri",8 Style "NT" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+052.5 Say FTM2GLO                   Font "&mLetAri",8 Style "NT" Size 1,31.5 Pict "@S33"
                @vLIN,pCLN+079.0 Say FTM2RCB                   Font "&mLetAri",8 Style "NT" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+091.0 Say FTM2CHE                   Font "&mLetAri",8 Style "NT" Size 1,20.0 Pict "@S23"
                @vLIN,pCLN+112.0 Say pSIG                      Font "&mLetAri",8 Style "NT" Size 1,05.2
                @vLIN,pCLN+127.3 Say FTM2PAG                   Font "&mLetAri",8 Style "NT" Size 1,15.1 Pict "9,999,999.99"
           CASE mpRt="2"
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetSwi",9 Style "NQ" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetSwi",9 Style "NQ" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+039.5 Say FTM2GLO                   Font "&mLetSwi",9 Style "NQ" Size 1,31.5 Pict "@S33"
                @vLIN,pCLN+075.0 Say FTM2RCB                   Font "&mLetSwi",9 Style "NQ" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+085.0 Say FTM2CHE                   Font "&mLetSwi",9 Style "NQ" Size 1,20.0 Pict "@S23"
                @vLIN,pCLN+106.0 Say pSIG                      Font "&mLetSwi",9 Style "NQ" Size 1,05.2
                @vLIN,pCLN+111.5 Say FTM2PAG                   Font "&mLetSwi",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
      ENDCASE
 ENDIF
 RELEASE psIg
ENDPROC
*
PROCEDURE Rsm_3500b
 PRIVATE ppAg
 STORE 99 TO mkEy
 STORE 00 TO ppAg
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
           DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
      CASE vsW1=2
           SELECT coPia
           DO orD_0000a WITH "TMP", "C", "F3500DOC", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530TPO", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 SEEK STR(1, 0)
 DO WHILE  .NOT. EOF() .AND. f3530tpo=1
      IF f3530est="9"
           SKIP
           LOOP
      ENDIF
      STORE f3530ano TO paNo
      STORE f3530mes TO pmEs
      STORE f3530dia TO pdIa
      STORE f3530ser TO psEr
      STORE f3530num TO pnUm
      STORE f3530glo TO pgLo
      STORE f3530che TO pcHe
      STORE f3530mon TO pmOn
      SELECT deT_ing_bancos
      SEEK paNo+pmEs+psEr+pnUm
      DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+f3531ser+f3531num= ;
         paNo+pmEs+psEr+pnUm
           STORE f3531tdo TO ptDo
           STORE f3531sr1 TO psR1
           STORE f3531doc TO pdOc
           IF voPc=1 .AND. (ptDo+psR1+pdOc<dtDo+dsEr+ddOc .OR. ptDo+psR1+ ;
              pdOc>htDo+hsEr+hdOc)
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE vsW1=1
                     SELECT peNd_vtas
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           SEEK ptDo+psR1+pdOc
           IF EOF() .OR. BOF() .OR. (voPc=2 .AND. (f3500fem<dfEm .OR.  ;
              f3500fem>hfEm))
                SELECT deT_ing_bancos
                SKIP
                LOOP
           ENDIF
           SELECT deT_ing_bancos
           IF pmOn=1
                STORE "S/." TO psIg
           ELSE
                STORE "US$" TO psIg
           ENDIF
           IF ppAg=0
                IF vlIn+1.5>mpAg-3
                     DO caB_3500b WITH "3500"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO cb2_3500b IN PCC3500B WITH mcLn
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 1 TO ppAg
           ENDIF
           IF vlIn>mpAg-3
                DO caB_3500b WITH "3500"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          DO coLblv
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NT" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NT" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NT" Size 1,05.2
                          @vLIN,mCLN+115 Say F3531PAG               Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
                     CASE mpRt="1"
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NT" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NT" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NT" Size 1,05.2
                          @vLIN,mCLN+115 Say F3531PAG               Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NQ" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NQ" Size 1,05.2
                          @vLIN,mCLN+117 Say F3531PAG               Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                ENDCASE
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           SKIP
      ENDDO
      SELECT caB_ing_bancos
      SKIP
 ENDDO
 RELEASE ppAg
ENDPROC
*
PROCEDURE Pag_3500b
 PARAMETER ptDo, psEr, pdOc
 PRIVATE qmOn, qaNo, qmEs, qsR1, qnUm, qpGo, qrCb, qdIa, qtPo, qtPp, qtIp,  ;
         qnTi, qgLo
 PRIVATE qmNd, qtCa, qbAn, qnBa, qcTa, qnCt, qcHe, qrCc, qsRl, qlEt, qcAj,  ;
         qdNc, qfCa
 PRIVATE qaCu, qpA1, qpA2, qrEn
 STORE CTOD("  /  /    ") TO qfCa
 STORE f3500mon TO qmOn
 STORE 00 TO qaCu, qpA1, qpA2, qrEn
 SELECT paGos
 ZAP
 REINDEX
 SELECT deT_ing_caja
 SEEK ptDo+psEr+pdOc
 DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=ptDo+psEr+pdOc
      STORE f3511ano TO qaNo
      STORE f3511mes TO qmEs
      STORE f3511ser TO qsR1
      STORE f3511num TO qnUm
      STORE f3511pag TO qpGo
      STORE f3511rcb TO qrCb
      SELECT caB_ing_caja
      SEEK qaNo+qmEs+qsR1+qnUm
      IF  .NOT. EOF() .AND. f3510est<>"9"
           STORE f3510dia TO qdIa
           STORE f3510tpo TO qtPo
           STORE f3510tpp TO qtPp
           STORE f3510caj TO qcAj
           STORE f3510tip TO qtIp
           STORE f3510nti TO qnTi
           STORE f3510glo TO qgLo
           STORE f3510mon TO qmNd
           STORE f3510tca TO qtCa
           STORE f3510srl TO qsRl
           STORE f3510let TO qlEt
           STORE f3510rcb TO qrCc
           SELECT paGos
           DO nuEvo_rg
           REPLACE ftM2ano WITH qaNo
           REPLACE ftM2mes WITH qmEs
           REPLACE ftM2dia WITH qdIa
           REPLACE ftM2ttt WITH "1"
           REPLACE ftM2ser WITH qsR1
           REPLACE ftM2num WITH qnUm
           REPLACE ftM2tpp WITH qtPp
           REPLACE ftM2caj WITH qcAj
           REPLACE ftM2tpo WITH qtPo
           REPLACE ftM2tip WITH qtIp
           REPLACE ftM2nti WITH qnTi
           REPLACE ftM2glo WITH qgLo
           REPLACE ftM2rcb WITH qrCb
           REPLACE ftM2rcc WITH qrCc
           REPLACE ftM2mon WITH qmNd
           REPLACE ftM2tca WITH qtCa
           REPLACE ftM2pag WITH qpGo
           REPLACE ftM2srl WITH qsRl
           REPLACE ftM2let WITH qlEt
           IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
                STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
           ENDIF
           IF qtPo<>1
                IF qmNd=1
                     STORE qpA1+qpGo TO qpA1
                ELSE
                     STORE qpA2+qpGo TO qpA2
                ENDIF
                DO CASE
                     CASE qmOn=qmNd
                          STORE qaCu+qpGo TO qaCu
                     CASE qmOn=1
                          STORE qaCu+(qpGo*qtCa) TO qaCu
                     CASE qmOn=2
                          STORE qaCu+(qpGo/qtCa) TO qaCu
                ENDCASE
           ELSE
                STORE qrEn+qpGo TO qrEn
           ENDIF
      ENDIF
      SELECT deT_ing_caja
      SKIP
 ENDDO
 SELECT deT_ing_bancos
 SEEK ptDo+psEr+pdOc
 DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=ptDo+psEr+pdOc
      STORE f3531ano TO qaNo
      STORE f3531mes TO qmEs
      STORE f3531ser TO qsR1
      STORE f3531num TO qnUm
      STORE f3531pag TO qpGo
      STORE f3531rcb TO qrCb
      SELECT caB_ing_bancos
      SEEK qaNo+qmEs+qsR1+qnUm
      IF  .NOT. EOF() .AND. f3530est<>"9"
           STORE f3530dia TO qdIa
           STORE f3530tpo TO qtPo
           STORE f3530tpp TO qtPp
           STORE f3530tip TO qtIp
           STORE f3530nti TO qnTi
           STORE f3530glo TO qgLo
           STORE f3530mon TO qmNd
           STORE f3530tca TO qtCa
           STORE f3530ban TO qbAn
           STORE f3530nba TO qnBa
           STORE f3530cta TO qcTa
           STORE f3530nct TO qnCt
           STORE f3530che TO qcHe
           STORE f3530rcb TO qrCc
           SELECT paGos
           DO nuEvo_rg
           REPLACE ftM2ano WITH qaNo
           REPLACE ftM2mes WITH qmEs
           REPLACE ftM2dia WITH qdIa
           REPLACE ftM2ttt WITH "2"
           REPLACE ftM2ser WITH qsR1
           REPLACE ftM2num WITH qnUm
           REPLACE ftM2tpp WITH qtPp
           REPLACE ftM2caj WITH 0
           REPLACE ftM2tpo WITH qtPo
           REPLACE ftM2tip WITH qtIp
           REPLACE ftM2nti WITH qnTi
           REPLACE ftM2glo WITH qgLo
           REPLACE ftM2rcb WITH qrCb
           REPLACE ftM2rcc WITH qrCc
           REPLACE ftM2mon WITH qmNd
           REPLACE ftM2tca WITH qtCa
           REPLACE ftM2pag WITH qpGo
           REPLACE ftM2ban WITH qbAn
           REPLACE ftM2nba WITH qnBa
           REPLACE ftM2cta WITH qcTa
           REPLACE ftM2nct WITH qnCt
           REPLACE ftM2che WITH qcHe
           IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
                STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
           ENDIF
           IF qtPo<>1
                IF qmNd=1
                     STORE qpA1+qpGo TO qpA1
                ELSE
                     STORE qpA2+qpGo TO qpA2
                ENDIF
                DO CASE
                     CASE qmOn=qmNd
                          STORE qaCu+qpGo TO qaCu
                     CASE qmOn=1
                          STORE qaCu+(qpGo*qtCa) TO qaCu
                     CASE qmOn=2
                          STORE qaCu+(qpGo/qtCa) TO qaCu
                ENDCASE
           ELSE
                STORE qrEn+qpGo TO qrEn
           ENDIF
      ENDIF
      SELECT deT_ing_bancos
      SKIP
 ENDDO
 SELECT ctAs_ini_vtas
 SEEK ptDo+psEr+pdOc
 IF  .NOT. EOF() .AND. f3501acu<>0
      STORE SUBSTR(DTOC(f3501fem), 7, 4) TO qaNo
      STORE SUBSTR(DTOC(f3501fem), 4, 2) TO qmEs
      STORE SUBSTR(DTOC(f3501fem), 1, 2) TO qdIa
      STORE f3501acu TO qpGo
      SELECT paGos
      DO nuEvo_rg
      REPLACE ftM2ano WITH qaNo
      REPLACE ftM2mes WITH qmEs
      REPLACE ftM2dia WITH qdIa
      REPLACE ftM2ttt WITH "1"
      REPLACE ftM2ser WITH "001"
      REPLACE ftM2num WITH "0000000"
      REPLACE ftM2glo WITH "Saldo anterior"
      REPLACE ftM2tpo WITH 3
      REPLACE ftM2mon WITH qmOn
      REPLACE ftM2tca WITH 1
      REPLACE ftM2pag WITH qpGo
      IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
           STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
      ENDIF
      IF qmOn=1
           STORE qpA1+qpGo TO qpA1
      ELSE
           STORE qpA2+qpGo TO qpA2
      ENDIF
      STORE qaCu+qpGo TO qaCu
 ENDIF
 STORE qfCa TO vfCa
 STORE qaCu TO vaCu
 STORE qrEn TO vrEn
 STORE qpA1 TO vpA1
 STORE qpA2 TO vpA2
 RELEASE qmOn, qaNo, qmEs, qsR1, qnUm, qpGo, qrCb, qdIa, qtPo, qtPp, qtIp,  ;
         qnTi, qgLo
 RELEASE qmNd, qtCa, qbAn, qnBa, qcTa, qnCt, qcHe, qrCc, qsRl, qlEt, qcAj,  ;
         qdNc, qfCa
 RELEASE qaCu, qpA1, qpA2, qrEn
ENDPROC
*
PROCEDURE Clp_3500b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+33.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3500b WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3500b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3500b WITH "F", "v"
           DO diS_3500b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 RELEASE pnOm, pcLx
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9, poP1, poPp, plIs
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9, poPp
 STORE 01 TO miPg, pnUm, poP1, voPc, voP1, voP2
 STORE 99999 TO muPg
 STORE DATE() TO dfEm, hfEm
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI1", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+03.0,pCOL+36 Say "Opción"                Font "&mLetRom",11 Style "BT"
 @pFIL+13.0,pCOL+32 Say "Tipo de Impresión"     Font "&mLetRom",11 Style "NTU"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.0,pCOL+04 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+12.1,pCOL+05 Say "Desde Pág:"            Font "&mLetRom",11 Style "BT"
 @pFIL+13.6,pCOL+05 Say "Hasta Pág:"            Font "&mLetRom",11 Style "BT"
 SET COLOR TO RGB(0,0,0,192,192,192)
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF voPc<>poPp
           DO CASE
                CASE voPc=1
                     @pFIL+08.8,pCOL+05 Say "Desde Documento" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Documento" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                CASE voPc=2
                     @pFIL+08.8,pCOL+05 Say "Desde Fecha Emi" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Fecha Emi" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                CASE voPc=3
                     @pFIL+08.8,pCOL+05 Say "Desde Fecha Vct" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Fecha Vct" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
           ENDCASE
           STORE voPc TO poPp
      ENDIF
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+4.5, pcOl+4 TO pfIl+7.7, pcOl+35 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+4.4,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+4.4,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+04.5,pCOL+36 Get vOPC Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOPC Function "*RVT x Documento;x Fecha"                   Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+14.5,pCOL+32 Get vOP1 Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOP1 Function "*RVT Simple;Extendida-Vert;Extendida-Horiz" Color ,,,,,,,,1/2,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+05 Get vOP2 Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOP2 Function "*RVT Sin detalle;Con detalle"               Color ,,,,,,,,5/2,RGB(100,100,100,192,192,192)
      @pFIL+12.2,pCOL+21 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      @pFIL+13.7,pCOL+21 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      DO CASE
           CASE voPc=1
                @pFIL+08.9,pCOL+31 Get dTDO Font "&mLetAri",9 Style "NQ" Pict "!!"      Size 1,3.2 Color ,&mColBlN
                @pFIL+08.9,pCOL+36 Get dSER Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,4.0 Color ,&mColBlN
                @pFIL+08.9,pCOL+42 Get dDOC Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,9.6 Color ,&mColBlN
                @pFIL+10.4,pCOL+31 Get hTDO Font "&mLetAri",9 Style "NQ" Pict "!!"      Size 1,3.2 Color ,&mColBlN
                @pFIL+10.4,pCOL+36 Get hSER Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,4.0 Color ,&mColBlN
                @pFIL+10.4,pCOL+42 Get hDOC Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,9.6 Color ,&mColBlN
           CASE voPc=2 .OR. voPc=3
                @pFIL+08.9,pCOL+31 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,20
                @pFIL+08.9,pCOL+31 Get dFEM Font "&mLetAri",9 Style "NQ" Size 1,12.8 Color ,&mColBlN
                @pFIL+10.4,pCOL+31 Get hFEM Font "&mLetAri",9 Style "NQ" Size 1,12.8 Color ,&mColBlN
      ENDCASE
      @pFIL+23.5,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF voP1<>poP1 .AND. ((voP1<2 .AND. poP1=3) .OR. (poP1<2 .AND. voP1=3))
           DO CASE
                CASE voP1<2
                     DO ipR_0001a WITH "VE"
                CASE voP1=3
                     DO ipR_0001a WITH "HO"
           ENDCASE
           SET DEVICE TO SCREEN
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           STORE voP1 TO poP1
           STORE pfIl+5 TO pfIl
           DO nlI_0000a WITH piN1, piN2
           DO dlI_0000a WITH piN1, piN2
           STORE pfIl-5 TO pfIl
           @pFIL+19,pCOL+49 Say mPAG Font "&mLetAri",8 Style "NT" Size 1,4 Pict "999"
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dtDo) TO dtDo
                STORE UPPER(dsEr) TO dsEr
                STORE UPPER(ddOc) TO ddOc
                STORE UPPER(htDo) TO htDo
                STORE UPPER(hsEr) TO hsEr
                STORE UPPER(hdOc) TO hdOc
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. dtDo+dsEr+ddOc>htDo+hsEr+hdOc
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(dtDo))=0 .AND.  ;
                          LEN(ALLTRIM(htDo))=0
                          STORE "Tipos de Documentos se encuentran vacías..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(dsEr))=0 .AND.  ;
                          LEN(ALLTRIM(hsEr))=0
                          STORE "Series de Documentos se encuentran vacías..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(htDo))=0
                          STORE "Tipo de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(hsEr))=0
                          STORE "Serie de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(hdOc))=0
                          STORE "Número de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. dfEm>hfEm
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. AT(" ", DTOC(dfEm))<>0 .AND. AT( ;
                          " ", DTOC(hfEm))<>0
                          STORE "Fechas se encuentran vacías..." TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. AT(" ", DTOC(hfEm))<>0
                          STORE "Fecha final se encuentra vacía..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9, poP1, poPp
ENDPROC
*
PROCEDURE Hl1_3500b
 PARAMETER ppRg
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or-"
 @ pfIl+1, 02 SAY "den que se ha elegido."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "ESC" STYLE "BT"
 @ pfIl+1, 05 SAY "F10" STYLE "BT"
 @ pfIl+2, 05 SAY "F1" STYLE "BT"
 @ pfIl+0, 26 SAY "Regresar a Cabecera"
 @ pfIl+1, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 26 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF ppRg="3501"
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "F5" STYLE "BT"
      @ pfIl, 26 SAY "Calcular Cuentas"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 24 SAY ":" STYLE "BT"
 @ pfIl+01, 24 SAY ":" STYLE "BT"
 @ pfIl+02, 24 SAY ":" STYLE "BT"
 @ pfIl+03, 24 SAY ":" STYLE "BT"
 @ pfIl+04, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+00, 05 SAY "F6" STYLE "BT"
 @ pfIl+01, 05 SAY "F8" STYLE "BT"
 @ pfIl+02, 05 SAY "F9" STYLE "BT"
 @ pfIl+03, 05 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+04, 05 SAY "PAGE UP" STYLE "BT"
 @ pfIl+05, 05 SAY "HOME" STYLE "BT"
 @ pfIl+06, 05 SAY "END" STYLE "BT"
 @ pfIl+07, 05 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+08, 05 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+09, 05 SAY "FLECHAS --> / <--" STYLE "BT"
 @ pfIl+10, 05 SAY "ENTER" STYLE "BT"
 @ pfIl+11, 05 SAY "TAB" STYLE "BT"
 @ pfIl+12, 05 SAY "CTRL P" STYLE "BT"
 @ pfIl+00, 26 SAY "Cambio de Orden de Consulta"
 @ pfIl+01, 26 SAY "Pasar Datos a Excel"
 @ pfIl+02, 26 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+03, 26 SAY "Página siguiente"
 @ pfIl+04, 26 SAY "Página anterior"
 @ pfIl+05, 26 SAY "Primera línea"
 @ pfIl+06, 26 SAY "Última línea"
 @ pfIl+07, 26 SAY "Línea inferior"
 @ pfIl+08, 26 SAY "Línea superior"
 @ pfIl+09, 26 SAY "Ver Otros datos"
 @ pfIl+10, 26 SAY "Ver Detalle"
 @ pfIl+11, 26 SAY "Ver Saldos x Tipo de Documento"
 @ pfIl+12, 26 SAY "Imprimir Listado"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3500b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social."
 @ pfIl+01, 02 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de los Do-"
 @ pfIl+02, 02 SAY  ;
   "cumentos, saldrá un mensaje, en caso de encontrase se regresará al"
 @ pfIl+03, 02 SAY "Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
