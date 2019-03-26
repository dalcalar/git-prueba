 PRIVATE pcL1, pcL2, pcL3, pcL4, pcL5, pcL6, pcL7, pcL8
 STORE 1 TO vsW4
 DO CASE
      CASE mrEs="3"
           STORE mcO0+070.0 TO pcL1
           STORE mcO0+087.8 TO pcL2
           STORE mcO0+105.6 TO pcL3
           STORE mcO0+123.3 TO pcL4
           STORE mcO0+129.2 TO pcL5
           STORE mcO0+147.0 TO pcL6
           STORE mcO0+164.8 TO pcL7
           STORE mcO0+182.6 TO pcL8
      OTHERWISE
           STORE mcO0+139.6 TO pcL1
           STORE mcO0+157.4 TO pcL2
           STORE mcO0+175.2 TO pcL3
           STORE mcO0+192.9 TO pcL4
           STORE mcO0+198.8 TO pcL5
           STORE mcO0+216.6 TO pcL6
           STORE mcO0+234.4 TO pcL7
           STORE mcO0+252.2 TO pcL8
 ENDCASE
 = INKEY(0.01)
 SELECT tmP_pedidos
 GOTO TOP
 STORE CTOD(ftM2dia+"/"+ftM2mes+"/"+ftM2ano) TO dfEm, ifEm
 GOTO BOTTOM
 STORE CTOD(ftM2dia+"/"+ftM2mes+"/"+ftM2ano) TO hfEm, ufEm
 DO p00_2112e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2112e
 STORE ifFs TO vfFs
 DO muE_2112e WITH "i", "v"
 DO seE_2112e WITH "v"
 DO diS_2112e WITH "R"
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
           DO reS_2112e
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112e
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2112e WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2112e WITH "N"
                EXIT
           CASE mkEy=k_Right .AND. vuL1>1
                DO CASE
                     CASE vsW4=vuL1
                          STORE 1 TO vsW4
                     OTHERWISE
                          STORE vsW4+1 TO vsW4
                ENDCASE
                DO tiT_2112e
                DO liN_2112e WITH ifFs-1.6, ffFs+1.4
                DO caM_2112e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left .AND. vuL1>1
                DO CASE
                     CASE vsW4=1
                          STORE vuL1 TO vsW4
                          @ ffFs+3, pcL1-0.6 CLEAR TO ffFs+4.5, mcO0+muCo
                     OTHERWISE
                          STORE vsW4-1 TO vsW4
                ENDCASE
                DO tiT_2112e
                DO liN_2112e WITH ifFs-1.6, ffFs+1.4
                DO caM_2112e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1
                DO hl1_2112e
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2112e
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                IF mcAj=1
                     STORE 17 TO viT2
                ELSE
                     STORE 14 TO viT2
                ENDIF
                DO xl0_0000a WITH "Pedidos Pendientes", "Pedidos", viT2
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Documento"
                pxLs.ceLls(3, 02).vaLue = "Fecha"
                pxLs.ceLls(3, 03).vaLue = "Clientes"
                pxLs.ceLls(3, 04).vaLue = "Mon"
                pxLs.ceLls(3, 05).vaLue = "Prec.Unit"
                pxLs.ceLls(3, 06).vaLue = "Cantid.Pedida"
                pxLs.ceLls(3, 07).vaLue = "Cant.Despach."
                pxLs.ceLls(3, 08).vaLue = "Pendientes"
                pxLs.ceLls(3, 09).vaLue = "Total Pedido S/."
                pxLs.ceLls(3, 10).vaLue = "Total Despachado S/."
                pxLs.ceLls(3, 11).vaLue = "Total Pendiente S/."
                pxLs.ceLls(3, 12).vaLue = "Total Pedido US$"
                pxLs.ceLls(3, 13).vaLue = "Total Despachado US$"
                pxLs.ceLls(3, 14).vaLue = "Total Pendiente US$"
                IF mcAj=1
                     pxLs.ceLls(3, 15).vaLue = "Caj.Ped."
                     pxLs.ceLls(3, 16).vaLue = "Caj.Desp"
                     pxLs.ceLls(3, 17).vaLue = "Pendientes"
                ENDIF
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,viT2)).inSert
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,viT2)).inSert
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,14)).meRge
                pxLs.ceLls(3, 1).vaLue = vcOd+":"+vdEs
                pxLs.ceLls(3, 1).hoRizontalalignment = 2
                pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
                pxLs.ceLls(3, 1).foNt.siZe = 12
                pxLs.ceLls(3, 1).foNt.boLd = .T.
                DO coLbln
                SELECT tmP_pedidos
                GOTO TOP
                STORE 6 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,9)).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM2tdo+":"+ftM2ser+"-"+ ;
                               ftM2doc
                     pxLs.ceLls(viT1, 01).hoRizontalalignment = 2
                     pxLs.ceLls(viT1, 02).vaLue = ftM2dia+"/"+ftM2mes+"/"+ ;
                               ftM2ano
                     pxLs.ceLls(viT1, 02).hoRizontalalignment = 2
                     pxLs.ceLls(viT1, 03).vaLue = ftM2nom
                     pxLs.ceLls(viT1, 03).hoRizontalalignment = 2
                     IF ftM2mon=1
                          pxLs.ceLls(viT1, 04).vaLue = "S/."
                     ELSE
                          pxLs.ceLls(viT1, 04).vaLue = "US$"
                     ENDIF
                     pxLs.ceLls(viT1, 04).hoRizontalalignment = 2
                     pxLs.ceLls(viT1, 05).vaLue = ftM2pre
                     pxLs.ceLls(viT1, 06).vaLue = ftM2can
                     pxLs.ceLls(viT1, 07).vaLue = ftM2cad
                     pxLs.ceLls(viT1, 08).vaLue = ftM2can-ftM2cad
                     IF ftM2mon=1
                          pxLs.ceLls(viT1, 09).vaLue = ftM2can*ftM2pre
                          pxLs.ceLls(viT1, 10).vaLue = ftM2cad*ftM2pre
                          pxLs.ceLls(viT1, 11).vaLue = (ftM2can-ftM2cad)* ;
                                    ftM2pre
                     ELSE
                          pxLs.ceLls(viT1, 12).vaLue = ftM2can*ftM2pre
                          pxLs.ceLls(viT1, 13).vaLue = ftM2cad*ftM2pre
                          pxLs.ceLls(viT1, 14).vaLue = (ftM2can-ftM2cad)* ;
                                    ftM2pre
                     ENDIF
                     IF mcAj=1
                          pxLs.ceLls(viT1, 15).vaLue = ftM2caj
                          pxLs.ceLls(viT1, 16).vaLue = ftM2cjd
                          pxLs.ceLls(viT1, 17).vaLue = ftM2caj-ftM2cjd
                     ENDIF
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                pxLs.ceLls(viT1, 06).vaLue = tcAn
                pxLs.ceLls(viT1, 07).vaLue = tcPe
                pxLs.ceLls(viT1, 08).vaLue = tcAn-tcPe
                pxLs.ceLls(viT1, 09).vaLue = tpR1
                pxLs.ceLls(viT1, 10).vaLue = tpD1
                pxLs.ceLls(viT1, 11).vaLue = tpE1
                pxLs.ceLls(viT1, 12).vaLue = tpR2
                pxLs.ceLls(viT1, 13).vaLue = tpD2
                pxLs.ceLls(viT1, 14).vaLue = tpE2
                IF mcAj=1
                     pxLs.ceLls(viT1, 15).vaLue = tcAj
                     pxLs.ceLls(viT1, 16).vaLue = tcJp
                     pxLs.ceLls(viT1, 17).vaLue = tcAj-tcJp
                ENDIF
                pxLs.raNge(pxLs.ceLls(viT1,6), pxLs.ceLls(viT1, ;
                          14)).foNt.siZe = 12
                pxLs.raNge(pxLs.ceLls(viT1,6), pxLs.ceLls(viT1, ;
                          14)).foNt.boLd = .T.
                pxLs.raNge(pxLs.coLumns(5),  ;
                          pxLs.coLumns(14)).nuMberformat = "#,###,##0.0000"
                IF mcAj=1
                     pxLs.raNge(pxLs.coLumns(15),  ;
                               pxLs.coLumns(17)).nuMberformat = "#,###,##0"
                ENDIF
                DO xl1_0000a WITH 1
                WAIT CLEAR
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2112e
                DO p1_0000a
                = INKEY(0.01)
                SELECT tmP_pedidos
                DO seE_2112e WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2tdo+ftM2ser+ftM2doc= ;
                          iaNo+imEs+idIa+itDo+isEr+idOc .AND. vaNo+vmEs+ ;
                          vdIa+vtDo+vsEr+vdOc=iaNo+imEs+idIa+itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtDo+vsEr+vdOc=iaNo+ ;
                                    imEs+idIa+itDo+isEr+idOc
                                    DO paN_2112e
                               OTHERWISE
                                    DO seE_2112e WITH "v"
                                    DO diS_2112e WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_2112e WITH "i", "v"
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM2ano+ftM2mes+ftM2dia+ftM2tdo+ftM2ser+ftM2doc= ;
                          uaNo+umEs+udIa+utDo+usEr+udOc .AND. vaNo+vmEs+ ;
                          vdIa+vtDo+vsEr+vdOc=uaNo+umEs+udIa+utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtDo+vsEr+vdOc=uaNo+ ;
                                    umEs+udIa+utDo+usEr+udOc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2112e
                               OTHERWISE
                                    DO seE_2112e WITH "v"
                                    DO diS_2112e WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_2112e WITH "u", "v"
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "N"
                          SKIP
                          IF vaNo+vmEs+vdIa+vtDo+vsEr+vdOc=uaNo+umEs+udIa+ ;
                             utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2112e WITH ffFs, ffFs+1
                               DO li1_2112e WITH ffFs, ffFs+1
                               DO muE_2112e WITH "F", "v"
                               DO muE_2112e WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_2112e WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_2112e WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "N"
                          SKIP -1
                          IF vaNo+vmEs+vdIa+vtDo+vsEr+vdOc=iaNo+imEs+idIa+ ;
                             itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2112e WITH ifFs, ifFs+1
                               DO li1_2112e WITH ifFs, ifFs+1
                               DO muE_2112e WITH "F", "v"
                               DO muE_2112e WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_2112e WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112e WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112e WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2112e
                          STORE ifFs TO vfFs
                          DO muE_2112e WITH "i", "v"
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112e WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2112e
                          STORE ifFs TO vfFs
                          DO muE_2112e WITH "i", "v"
                          DO seE_2112e WITH "v"
                          DO diS_2112e WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112e WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL1, pcL2, pcL3, pcL4, pcL5, pcL6, pcL7, pcL8
 RETURN
ENDPROC
*
PROCEDURE Pan_2112e
 STORE ifFs TO vfFs, ufFs
 DO muE_2112e WITH "F", "i"
 DO muE_2112e WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_2112e WITH "N"
      DO muE_2112e WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc3
      @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo
      DO liN_2112e WITH ufFs+1, ffFs+1
      DO li1_2112e WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2112e
 PARAMETER ptIp
 PRIVATE psIg
 IF ftM2mon=1
      STORE "S/." TO psIg
 ELSE
      STORE "US$" TO psIg
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,mCO0         Say FTM2TDO                         Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFFS,mCO0+4       Say FTM2SER                         Font "&mLetAri",9 Style "NQ" Size 1,04.0
 IF mrEs="3"
      @vFFS,mCO0+08.6 Say FTM2DOC                         Font "&mLetAri",9 Style "NQ" Size 1,09.8
      @vFFS,mCO0+18.9 Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.6
 ELSE
      @vFFS,mCO0+08.7 Say FTM2DOC                         Font "&mLetAri",9 Style "NQ" Size 1,09.8
      @vFFS,mCO0+19.1 Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.6
 ENDIF
 DO CASE
      CASE mrEs="3"
           @vFFS,mCO0+32.1 Say FTM2NOM           Font "&mLetAri",9 Style "NQ" Size 1,037.2 Pict "@S40"
      OTHERWISE
           @vFFS,mCO0+32.2 Say FTM2NOM           Font "&mLetAri",9 Style "NQ" Size 1,106.8 Pict "@S108"
 ENDCASE
 IF vsW4=1
      @vFFS,pCL1 Say FTM2CAN                     Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      @vFFS,pCL2 Say FTM2CAD                     Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
      @vFFS,pCL3 Say FTM2CAN-FTM2CAD             Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "&vPIC"
 ELSE
      @vFFS,pCL1 Say FTM2CAJ                     Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99,999,999,999"
      @vFFS,pCL2 Say FTM2CJD                     Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99,999,999,999"
      @vFFS,pCL3 Say FTM2CAJ-FTM2CJD             Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "99,999,999,999"
 ENDIF
 @vFFS,pCL4 Say pSIG                           Font "&mLetAri",9 Style "NQ" Size 1,05.2
 @vFFS,pCL5 Say FTM2PRE                        Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "9,999,999.9999"
 @vFFS,pCL6 Say FTM2PRE*FTM2CAN                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "9,999,999.9999"
 @vFFS,pCL7 Say FTM2PRE*FTM2CAD                Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "9,999,999.9999"
 @vFFS,pCL8 Say FTM2PRE*(FTM2CAN-FTM2CAD)      Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "9,999,999.9999"
 RELEASE psIg
ENDPROC
*
PROCEDURE Lin_2112e
 PARAMETER piNi, pfIn
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+18.5 TO pfIn, mcO0+18.5
           @ piNi, mcO0+31.7 TO pfIn, mcO0+31.7
      OTHERWISE
           @ piNi, mcO0+18.7 TO pfIn, mcO0+18.7
           @ piNi, mcO0+31.7 TO pfIn, mcO0+31.7
 ENDCASE
 DO CASE
      CASE vsW4=1
           @ piNi, pcL1-0.4 TO pfIn, pcL1-0.4
           @ piNi, pcL2-0.4 TO pfIn, pcL2-0.4
           @ piNi, pcL3-0.4 TO pfIn, pcL3-0.4
           @ piNi, pcL4-0.4 TO pfIn, pcL4-0.4
           @ piNi, pcL5-0.4 TO pfIn, pcL5-0.4
           @ piNi, pcL6-0.4 TO pfIn, pcL6-0.4
           @ piNi, pcL7-0.4 TO pfIn, pcL7-0.4
           @ piNi, pcL8-0.4 TO pfIn, pcL8-0.4
      CASE vsW4=2
           @ piNi, pcL1-0.4 TO pfIn, pcL1-0.4
           @ piNi, pcL2-0.4 TO pfIn, pcL2-0.4
           @ piNi, pcL3-0.4 TO pfIn, pcL3-0.4
           @ piNi, pcL4-0.4 TO pfIn, pcL4-0.4
           @ piNi, pcL5-0.4 TO pfIn, pcL5-0.4
           @ piNi, pcL6-0.4 TO pfIn, pcL6-0.4
           @ piNi, pcL7-0.4 TO pfIn, pcL7-0.4
           @ piNi, pcL8-0.4 TO pfIn, pcL8-0.4
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2112e
 PARAMETER piNi, pfIn
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+003.6 TO pfIn, mcO0+003.6
           @ piNi, mcO0+008.1 TO pfIn, mcO0+008.1
      OTHERWISE
           @ piNi, mcO0+003.6 TO pfIn, mcO0+003.6
           @ piNi, mcO0+008.2 TO pfIn, mcO0+008.2
 ENDCASE
ENDPROC
*
PROCEDURE P00_2112e
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFs-3.1, mcO0, ffFs+4.75, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFs-1.6, mcO0-00.4 TO ifFs-0.3, mcO0+muCo+0.4 PATTERN 1 COLOR SCHEME 4
 @ ffFs+1.4, mcO0-00.4 TO ffFs+1.4, mcO0+muCo+0.4
 DO coLsc3
 DO liN_2112e WITH ifFs-1.6, ffFs+1.4
 DO li1_2112e WITH ifFs-0.1, ffFs+1.4
 @ ffFs+1.4, pcL1-00.4 TO ffFs+3.0, pcL4-0.2
 @ ffFs+1.4, pcL2-00.4 TO ffFs+3.0, pcL3-0.2
 @ ffFs+1.4, pcL4-00.4 TO ffFs+3.0, pcL4-0.4
 @ ffFs+1.4, pcL6-00.4 TO ffFs+4.5, mcO0+muCo+0.2
 @ ffFs+1.4, pcL7-00.4 TO ffFs+4.5, pcL8-0.2
 @ ffFs+2.9, pcL6-00.4 TO ffFs+2.9, mcO0+muCo+0.2
 @iFFS-3.1,mCO0      Say AllTrim(vCOD)+" : "+vDES Font "&mLetAri",9  Style "BQ" Size 1,103 Pict "@S106"
 @iFFS-1.5,mCO0+03.0 Say "Documento"              Font "&mLetAri",9  Style "NT"
 @iFFS-1.5,mCO0+22.0 Say "Fecha"                  Font "&mLetAri",9  Style "NT"
 @fFFS+3.3,mCO0+01.0 Say "PEDIDOS PENDIENTES"     Font "&mLetRom",12 Style "BT" Color 4
 @iFFS-1.5,mCO0+32.4 Say "Clientes"               Font "&mLetAri",9  Style "NT"
 @fFFS+1.5,pCL1-27.0 Say "Total Pendientes"       Font "&mLetRom",13 Style "BT"
 @iFFS-1.5,pCL4+00.5 Say "Mon"                    Font "&mLetAri",9  Style "NT"
 @iFFS-1.5,pCL5+00.0 Say "Precio Vta.inclui"      Font "&mLetAri",9  Style "NT"
 @iFFS-1.5,pCL6+00.0 Say "   Total Pedido"        Font "&mLetAri",9  Style "NT"
 @iFFS-1.5,pCL7+00.0 Say "Total Despacha"         Font "&mLetAri",9  Style "NT"
 @iFFS-1.5,pCL8+00.0 Say "Total Pendiente"        Font "&mLetAri",9  Style "NT"
 @fFFS+1.5,pCL6-07.4 Say "S/."                    Font "&mLetRom",13 Style "BT"
 @fFFS+2.9,pCL6-07.4 Say "US$"                    Font "&mLetRom",13 Style "BT"
 @fFFS+1.7,pCL6+00.0 Say tPR1                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 @fFFS+1.7,pCL7+00.0 Say tPD1                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 @fFFS+1.7,pCL8+00.0 Say tPE1                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 @fFFS+3.1,pCL6+00.0 Say tPR2                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 @fFFS+3.1,pCL7+00.0 Say tPD2                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 @fFFS+3.1,pCL8+00.0 Say tPE2                     Font "&mLetAri",9  Style "BQ" Size 1,14.3 Pict "&vPIC"
 DO tiT_2112e
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tit_2112e
 STORE 1 TO vuL1
 DO coLsc4
 IF mcAj=1
      STORE 2 TO vuL1
 ENDIF
 DO CASE
      CASE vsW4=1
           @iFFS-1.5,pCL1 Say "Cantidad pedid" Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @iFFS-1.5,pCL2 Say "Cant.Despach."  Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @iFFS-1.5,pCL3 Say "Cant.Pendiente" Font "&mLetAri",9 Style "NQ" Size 1,17.2
           DO coLsc3
           @fFFS+1.7,pCL1 Say tCAN             Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "&vPIC"
           @fFFS+1.7,pCL2 Say tCPE             Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "&vPIC"
           @fFFS+1.7,pCL3 Say tCAN-tCPE        Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "&vPIC"
      CASE vsW4=2
           @iFFS-1.5,pCL1 Say " Cajas pedidas" Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @iFFS-1.5,pCL2 Say "Cajas despach"  Font "&mLetAri",9 Style "NQ" Size 1,17.2
           @iFFS-1.5,pCL3 Say "Cajas pendient" Font "&mLetAri",9 Style "NQ" Size 1,17.2
           DO coLsc3
           @fFFS+1.7,pCL1 Say tCAJ             Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "9,999,999,999"
           @fFFS+1.7,pCL2 Say tCJP             Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "9,999,999,999"
           @fFFS+1.7,pCL3 Say tCAJ-tCJP        Font "&mLetAri",9 Style "BQ" Size 1,14.3 Pict "9,999,999,999"
 ENDCASE
 IF vuL1>1
      DO coLblr
      DO prEsiona WITH "1", "BOTON", ifFs-3.1, muCo-6
      @iFFS-2.9,mUCO-3.8 Say Str(vSW4,1,0)+"/"+Str(vUL1,1,0) Font "&mLetRom",9 Style "BT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cam_2112e
 STORE 00 TO cfFs
 STORE vsW4 TO csW4
 DO muE_2112e WITH "v", "x"
 GOTO TOP
 DO seE_2112e WITH "i"
 DO paN_2112e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfFs=0
      STORE ifFs TO vfFs
      DO muE_2112e WITH "i", "v"
 ELSE
      STORE cfFs TO vfFs
      DO muE_2112e WITH "x", "v"
 ENDIF
 DO seE_2112e WITH "v"
 DO diS_2112e WITH "R"
ENDPROC
*
PROCEDURE Imp_2112e
 STORE 0 TO mvIs
 DO ipR_0000a
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
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_2112e
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2112e
 DO CASE
      CASE mcAj=1
           STORE 95 TO ptAm
           STORE 12 TO mcLn
      OTHERWISE
           STORE 90 TO ptAm
           STORE 14 TO mcLn
 ENDCASE
 STORE 00 TO vlIn, vpAg
 SELECT tmP_pedidos
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. CTOD(ftM2dia+"/"+ftM2mes+"/"+ftM2ano)<=hfEm
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_2112e WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN       Say FTM2TDO+":"+FTM2SER+"-"+FTM2DOC Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+019.6 Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+033.0 Say FTM2NOM                         Font "&mLetAri",9 Style "NQ" Size 1,34.6 Pict "@S37"
           @vLIN,mCLN+068.6 Say FTM2CAN                         Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "&vPIC"
           @vLIN,mCLN+086.5 Say FTM2CAD                         Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "&vPIC"
           @vLIN,mCLN+104.6 Say FTM2CAN-FTM2CAD                 Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "&vPIC"
           IF mcAj=1
                @vLIN,mCLN+122.6 Say FTM2CAJ                      Font "&mLetAri",9 Style "NQ" Size 1,11 Pict "999,999"
                @vLIN,mCLN+134.6 Say FTM2CJD                      Font "&mLetAri",9 Style "NQ" Size 1,11 Pict "999,999"
                @vLIN,mCLN+146.6 Say FTM2CAJ-FTM2CJD              Font "&mLetAri",9 Style "NQ" Size 1,11 Pict "999,999"
           ENDIF
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2112e
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
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Pedidos Pendientes"    Font "&mLetRom",12 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say AllTrim(vCOD)+": "+vDES Font "&mLetRom",12 Style "BQ"
 ENDIF
 STORE vlIn+1.9 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+"  hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+2.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptMn, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+068.6 Say "-------------------------- Cantidad --------------------------" Font "&mLetAri",9 Style "BQ"
      IF mcAj=1
           @vLIN,mCLN+122.6 Say "----------------- Cajas -----------------"                   Font "&mLetAri",9 Style "BQ"
      ENDIF
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN       Say "Documento"     Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+019.6 Say "Fecha"         Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+033.0 Say "Clientes"      Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+077.5 Say "Pedida"        Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+089.1 Say "Despachada"    Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+104.6 Say "Pend x Despac" Font "&mLetAri",9 Style "BQ"
      IF mcAj=1
           @vLIN,mCLN+124.3 Say "Pedidas"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+135.0 Say "Despach"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+146.6 Say "x Despac"   Font "&mLetAri",9 Style "BQ"
      ENDIF
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptMn, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Res_2112e
 DO muE_2112e WITH "v", "c"
 DO rs1_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_2112e WITH "c", "v"
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 SELECT tmP_pedidos
 DO p00_2112e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 GOTO TOP
 DO seE_2112e WITH "i"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF ftM2ano+ftM2mes+ftM2dia+ftM2tdo+ftM2ser+ftM2doc=vaNo+vmEs+vdIa+ ;
         vtDo+vsEr+vdOc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_2112e WITH "v", "i"
      DO muE_2112e WITH "v", "c"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_2112e WITH "i"
 DO paN_2112e
 STORE cfFs TO vfFs
 DO muE_2112e WITH "c", "v"
 DO seE_2112e WITH "v"
 DO diS_2112e WITH "R"
ENDPROC
*
PROCEDURE See_2112e
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
      CASE psEe="i"
           SEEK iaNo+imEs+idIa+itDo+isEr+idOc
      CASE psEe="u"
           SEEK uaNo+umEs+udIa+utDo+usEr+udOc
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2112e
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2tdo TO vtDo
           STORE ftM2ser TO vsEr
           STORE ftM2doc TO vdOc
           STORE ftM2ano TO vaNo
           STORE ftM2mes TO vmEs
           STORE ftM2dia TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2tdo TO utDo
           STORE ftM2ser TO usEr
           STORE ftM2doc TO udOc
           STORE ftM2ano TO uaNo
           STORE ftM2mes TO umEs
           STORE ftM2dia TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2tdo TO itDo
           STORE ftM2ser TO isEr
           STORE ftM2doc TO idOc
           STORE ftM2ano TO iaNo
           STORE ftM2mes TO imEs
           STORE ftM2dia TO idIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2112e
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 999 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_2112e WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_2112e WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_2112e WITH "F", "v"
           DO diS_2112e WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+10.2,pCOL+10.2 Say "Desde Fecha:"        Font "&mLetRom",11 Style "BT"
 @pFIL+11.7,pCOL+10.2 Say "Hasta Fecha:"        Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+39.0 Say "No.Líneas:"          Font "&mLetAri",8  Style "NT"
 @pFIL+14.0,pCOL+49.0 Say mPAG                  Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.3,pCOL+04 Say "Color de las Letras:"  Font "&mLetRom",11 Style "BT"
 DO coLblv
 @pFIL+07.0,pCOL+10.2 Say "Desde Página:"       Font "&mLetRom",11 Style "BT"
 @pFIL+08.5,pCOL+10.2 Say "Hasta Página:"       Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_3
           @ pfIl+3.5, pcOl+32 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+4.9,pCOL+05 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+4.9,pCOL+05 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.1,pCOL+32.6 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+08.6,pCOL+32.6 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+10.3,pCOL+32.6 Get dFEM Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color ,&mColBlN
      @pFIL+11.8,pCOL+32.6 Get hFEM Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color ,&mColBlN Valid dFEM <= hFEM
      @pFIL+18.4,pCOL+05.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1 .OR. poPc=3
                DO CASE
                     CASE dfEm>hfEm
                          STORE "Fecha Inicial mayor a Fecha Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
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
PROCEDURE Hl1_2112e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran los Pedidos Pendientes del pro-"
 @ pfIl+01, 02 SAY "ducto escogido."
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
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "F8" STYLE "BT"
 @ pfIl+09, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+10, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+11, 08 SAY "HOME" STYLE "BT"
 @ pfIl+12, 08 SAY "END" STYLE "BT"
 @ pfIl+13, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+14, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a pantalla anterior"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Pasar datos a Excel"
 @ pfIl+09, 31 SAY "Página siguiente"
 @ pfIl+10, 31 SAY "Página anterior"
 @ pfIl+11, 31 SAY "Primera línea"
 @ pfIl+12, 31 SAY "Última línea"
 @ pfIl+13, 31 SAY "Imprimir Listado"
 @ pfIl+14, 31 SAY "Línea inferior"
 @ pfIl+15, 31 SAY "Línea superior"
 IF vuL1>1
      @ pfIl+16, 29 SAY ":" STYLE "BT"
      @ pfIl+16, 08 SAY "FLECHAS -->/<--" STYLE "BT"
      @ pfIl+16, 31 SAY "Otros datos"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
