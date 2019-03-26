 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3501b
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
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK UPPER(vnOm)
           CASE vsW0=3
                SEEK UPPER(vnTi)
           CASE vsW0=4
                SEEK vaNo+vmEs+vdIa
           CASE vsW0=5
                SEEK vaNv+vmEv+vdIv
           CASE vsW0=6
                SEEK UPPER(vnVe)
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_3501b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3500b IN PCC3500B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3500b IN PCC3500B WITH "v"
      IF EOF()
           SET DELETED OFF
           GOTO TOP
           SET DELETED ON
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)
                CASE vsW0=3
                     SEEK UPPER(vnTi)
                CASE vsW0=4
                     SEEK vaNo+vmEs+vdIa
                CASE vsW0=5
                     SEEK vaNv+vmEv+vdIv
                CASE vsW0=6
                     SEEK UPPER(vnVe)
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3500b IN PCC3500B WITH "F", "v"
      ENDIF
      DO seE_3500b IN PCC3500B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3500b IN PCC3500B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3500b IN PCC3500B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3500b IN PCC3500B WITH "i"
      SET NEAR OFF
      DO paN_3501b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3500b IN PCC3500B WITH "i", "v"
      DO seE_3500b IN PCC3500B WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3500b IN PCC3500B WITH "R"
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
           DO reS_3501b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500b IN PCC3500B
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3500b IN PCC3500B WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_3500b IN PCC3500B WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_3500b IN PCC3500B WITH "3501"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3501b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5
                STORE "N" TO moPc
                STORE 99 TO mkEy
                DO prE_docum WITH "¿Está seguro de Recalcular Pagos?"
                IF moPc$"Ss"
                     STORE 99 TO mkEy
                     SELECT peNd_vtas
                     DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK vtDo+vsEr+vdOc
                     IF  .NOT. EOF()
                          DO paG_3500b IN PCC3500B WITH vtDo, vsEr, vdOc
                          PRIVATE qmOn, qaCu
                          SELECT peNd_vtas
                          SEEK vtDo+vsEr+vdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    = INKEY(0.01)
                                    EXIT
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          STORE f3500mon TO qmOn
                          STORE f3500acu TO qaCu
                          SELECT ctAs_total_vtas
                          SEEK vtDo+vsEr
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    = INKEY(0.01)
                                    EXIT
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          SELECT peNd_vtas
                          REPLACE f3500acu WITH vaCu
                          IF vrEn=0 .AND. f3500tot+f3500int-f3500acu=0
                               REPLACE f3500fca WITH vfCa
                               IF f3500tdo="NC" .OR. f3500tdo="ND" .OR.  ;
                                  f3500tdo="N1" .OR. f3500tdo="N2" .OR.  ;
                                  f3500tdo="N3" .OR. f3500tdo="N4" .OR.  ;
                                  f3500tdo="LE" .OR. f3500can="2" .OR. mgRa=1
                                    REPLACE f3500est WITH "@"
                               ELSE
                                    REPLACE f3500est WITH SPACE(01)
                               ENDIF
                          ELSE
                               REPLACE f3500fca WITH CTOD("  /  /    ")
                               REPLACE f3500est WITH SPACE(01)
                          ENDIF
                          STORE f3500est TO xeSt
                          STORE f3500fca TO vfCa
                          UNLOCK
                          SELECT ctAs_total_vtas
                          IF qmOn=1
                               REPLACE f3502ac1 WITH f3502ac1-qaCu+vaCu
                          ELSE
                               REPLACE f3502ac2 WITH f3502ac2-qaCu+vaCu
                          ENDIF
                          UNLOCK
                          IF vsW1=2
                               SELECT coPia
                               REPLACE f3500acu WITH vaCu
                               REPLACE f3500fca WITH vfCa
                               REPLACE f3500est WITH xeSt
                          ENDIF
                          FLUSH
                          RELEASE qmOn, qaCu
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT peNd_vtas
                          CASE vsW1=2
                               SELECT coPia
                     ENDCASE
                     DO orD_3501b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO seE_3500b IN PCC3500B WITH "v"
                IF EOF()
                     SET NEAR ON
                     DO seE_3500b IN PCC3500B WITH "i"
                     SET NEAR OFF
                     IF EOF()
                          GOTO TOP
                          IF BOF()
                               EXIT
                          ENDIF
                     ENDIF
                     DO paN_3501b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO muE_3500b IN PCC3500B WITH "i", "v"
                     DO seE_3500b IN PCC3500B WITH "v"
                     STORE ifIl TO vfIl
                ENDIF
                DO diS_3500b IN PCC3500B WITH "R"
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
                DO caM_3501b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Histórico de Ventas", "Listado", 25
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
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(18)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(19),  ;
                          pxLs.coLumns(25)).nuMberformat = "###,###,###,##0.00"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(24)).hoRizontalalignment = 2
                pxLs.raNge(pxLs.coLumns(19),  ;
                          pxLs.coLumns(25)).hoRizontalalignment = 4
                pxLs.raNge(pxLs.ceLls(2,01), pxLs.ceLls(2,25)).inSert
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
                GOTO TOP
                STORE 5 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6,  ;
                          0))+"... Leyendo Código: "+f3500tdo+":"+ ;
                          f3500ser+"-"+f3500doc
                     STORE "" TO plTr, pcJn
                     STORE SPACE(1) TO pcHe, plEt
                     DO veR_3500b IN PCC3500B
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
                     IF f3500tdo<>"PC"
                          pxLs.ceLls(viT1, 15).vaLue = ALLTRIM(f3500tec)
                          pxLs.ceLls(viT1, 16).vaLue = ALLTRIM(f3500nte)
                     ENDIF
                     pxLs.ceLls(viT1, 17).vaLue = ALLTRIM(plTr)
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
                DO seE_3500b IN PCC3500B WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3500b IN PCC3500B WITH "3501"
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
                DO seE_3500b IN PCC3500B WITH "v"
                DO diS_3500b IN PCC3500B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=6
                          STORE 1 TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE 6 TO vsW2
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
                DO imP_3501b
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
                DO orD_3501b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_3500b IN PCC3500B WITH "v"
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
                DO orD_3501b
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
                     DO pcC3500c WITH "3501"
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
                DO seE_3500b IN PCC3500B WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3500tdo+f3500ser+f3500doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3501b
                               OTHERWISE
                                    DO seE_3500b IN PCC3500B WITH "v"
                                    DO diS_3500b IN PCC3500B WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b IN PCC3500B WITH "i", "v"
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
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
                                    DO paN_3501b
                               OTHERWISE
                                    DO seE_3500b IN PCC3500B WITH "v"
                                    DO diS_3500b IN PCC3500B WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufIl TO vfIl
                          DO muE_3500b IN PCC3500B WITH "u", "v"
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
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
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3500a IN PCC3500A WITH ifIl, ffIl+1
                               DO li1_3500a IN PCC3500A WITH ifIl, ffIl+1
                               DO muE_3500b IN PCC3500B WITH "F", "v"
                               DO muE_3500b IN PCC3500B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3500b IN PCC3500B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3500b IN PCC3500B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
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
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3500a IN PCC3500A WITH ifIl, ffIl+1
                               DO li1_3500a IN PCC3500A WITH ifIl, ffIl+1
                               DO muE_3500b IN PCC3500B WITH "F", "v"
                               DO muE_3500b IN PCC3500B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3500b IN PCC3500B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3500b IN PCC3500B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3500b IN PCC3500B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3501b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b IN PCC3500B WITH "i", "v"
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3500b IN PCC3500B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3501b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3500b IN PCC3500B WITH "i", "v"
                          DO seE_3500b IN PCC3500B WITH "v"
                          DO diS_3500b IN PCC3500B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3500b IN PCC3500B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3501b
 DO pn1_3501b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3501b
 DO pn1_3501b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3501b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3500b IN PCC3500B WITH "F", "v"
 DO muE_3500b IN PCC3500B WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3500tdo+f3500ser+f3500doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3500b IN PCC3500B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_3500b IN PCC3500B WITH "F", "u"
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
      DO liN_3500a IN PCC3500A WITH ufIl+1, ffIl+1
      DO li1_3500a IN PCC3500A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Cam_3501b
 DO muE_3500b IN PCC3500B WITH "v", "x"
 STORE vsW0 TO csW0
 STORE 00 TO cfIl
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO orD_3501b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3500b IN PCC3500B WITH "i"
 DO pa1_3501b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_3500b IN PCC3500B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3500b IN PCC3500B WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3500b IN PCC3500B WITH "v"
 DO diS_3500b IN PCC3500B WITH "R"
ENDPROC
*
PROCEDURE Res_3501b
 SET READBORDER ON
 DO reS_3501a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3500b IN PCC3500B WITH "R"
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
PROCEDURE Ord_3501b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NTI", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500FEM", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500FVE", "A"
      CASE vsW0=6 .AND. vsW1=1
           DO orD_0000a WITH "3500", "C", "F3500NVE", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3500DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3500NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3500NTI", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3500FEM", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3500FVE", "A"
      CASE vsW0=6
           DO orD_0000a WITH "TMP", "C", "F3500NVE", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Imp_3501b
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
 DO reP_3501b
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
PROCEDURE Rep_3501b
 PUBLIC pcL1, pcL2, ptAm
 PRIVATE ptDo, psR1, pdOc, pfEm, pmOn, ptOt, paCu, piNt, paNo, pmEs, psEr,  ;
         pnUm, pdIa, pgLo, pcHe
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           DO CASE
                CASE voP1<3
                     STORE 96 TO ptAm
                     STORE 07 TO mcLn
                CASE voP1=3
                     STORE 135 TO ptAm
                     STORE 12 TO mcLn
           ENDCASE
      CASE mvIs=0 .AND. mpRt="2"
           DO CASE
                CASE voP1<3
                     STORE 97 TO ptAm
                     STORE 08 TO mcLn
                CASE voP1=3
                     STORE 135 TO ptAm
                     STORE 12 TO mcLn
           ENDCASE
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
 GOTO TOP
 DO coLbln
 STORE 0 TO csL1, csL2, ctT1, ctT2, vlIn, vpAg
 DO WHILE  .NOT. EOF()
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
           DO caB_3500b IN PCC3500B WITH "3501"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO im1_3500b IN PCC3500B WITH pcL1, "3501"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE (ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3") .AND. pmOn=1
                STORE csL1-(ptOt-paCu) TO csL1
                STORE ctT1-ptOt TO ctT1
           CASE ptDo="NC" .OR. ptDo="N1" .OR. ptDo="N3"
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
                     DO caB_3500b IN PCC3500B WITH "3501"
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
                          DO caB_3500b IN PCC3500B WITH "3501"
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
           DO orD_3501b
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
           DO caB_3500b IN PCC3500B WITH "3501"
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
           DO caB_3500b IN PCC3500B WITH "3501"
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
