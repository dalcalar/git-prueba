 = INKEY(0.01)
 STORE 0 TO vsWz
 STORE " " TO cpA1
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE 0 TO tcAn
 STORE 1 TO vsW4, vsW5, vsW6, viTe
 DO muE_2400a
 STORE xpEd TO vpEd
 SELECT caMbio
 SEEK xfEm
 IF EOF()
      STORE 1 TO xtCa
 ELSE
      STORE f9111tc4 TO xtCa
 ENDIF
 DO CASE
      CASE xmOn=1
           STORE "S/." TO xsIg
      CASE xmOn=2
           STORE "US$" TO xsIg
 ENDCASE
 SELECT deT_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      STORE tcAn+f2401can TO tcAn
      SKIP
 ENDDO
 STORE ROUND(xvAl*(1+(xpIg/100)), 2) TO xnT2
 DO p00_2400c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2400c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_2400c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1 .AND. vsW6=1
                DO hl1_2400c
           CASE mkEy=k_F1 .AND. vsW6=2
                DO hl2_2400c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_c .AND. vsW6=2
                PRIVATE pcOd, pdEs, pcAn, pnUv, ppR1, pdCr, pcUv, pcUc,  ;
                        pnUc, ptO1
                PRIVATE pmEd, ppRe, pcO1, pcO2, plA1, plA2, paN1, paN2,  ;
                        peSp, ptO2
                STORE f2401cod TO vcOd, pcOd
                STORE f2401des TO vdEs, pdEs
                STORE f2401can TO vcAn, pcAn
                STORE f2401nuv TO vnUv, pnUv
                STORE f2401pre TO ppRe, ppR1
                STORE vcAn*ppRe TO ptO1
                STORE pcAn*ppR1 TO ptO2
                STORE f2401caj TO vcAj
                STORE f2401pie TO vpIe
                STORE f2401tpo TO vtPo
                STORE f2401dcr TO pdCr
                STORE f2401cuv TO pcUv
                STORE f2401cuc TO pcUc
                STORE f2401nuc TO pnUc
                STORE f2401med TO pmEd
                STORE f2401co1 TO pcO1
                STORE f2401co2 TO pcO2
                STORE f2401la1 TO plA1
                STORE f2401la2 TO plA2
                STORE f2401an1 TO paN1
                STORE f2401an2 TO paN2
                STORE f2401esp TO peSp
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                SET READBORDER ON
                DO cuAdro WITH ifIl+1.5, vcO1-20, ifIl+13.6, vcO1+97.4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @iFIL+02,vCO1-18 Say "Codigo"      Font "&mLetRom",13 Style "BQ"
                @iFIL+04,vCO1-18 Say "Descripcion" Font "&mLetRom",13 Style "BQ"
                @iFIL+06,vCO1-18 Say "Unidad"      Font "&mLetRom",13 Style "BQ"
                @iFIL+08,vCO1-18 Say "Cantidad"    Font "&mLetRom",13 Style "BQ"
                @iFIL+10,vCO1-18 Say "Precio"      Font "&mLetRom",13 Style "BQ"
                DO CASE
                     CASE xmOn=1
                          @iFIL+12,vCO1-18 Say "Total S/." Font "&mLetRom",13 Style "BQ"
                     CASE xmOn=2
                          @iFIL+12,vCO1-18 Say "Total US$" Font "&mLetRom",13 Style "BQ"
                ENDCASE
                DO CASE
                     CASE xmOn=1
                          @iFIL+12,vCO1+46 Say "Total S/. Original:" Font "&mLetRom",13 Style "BQ"
                     CASE xmOn=2
                          DO coL_fonro
                          @iFIL+12,vCO1+46 Say "Total US$ Original:" Font "&mLetRom",13 Style "BQ"
                ENDCASE
                DO coL_fondo
                @iFIL+02,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+04,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+06,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+08,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+10,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+12,vCO1+01 Say ":"  Font "&mLetRom",13 Style "BQ"
                @iFIL+04,vCO1+03 Say pDES Font "&mLetRom",12 Style "NQ" Size 1,77 Pict "@S80"
                @iFIL+06,vCO1+03 Say pNUV Font "&mLetRom",12 Style "NQ" Size 1,25 Pict "@S28"
                @iFIL+12,vCO1+03 Say pTO1 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
                DO coL_fonro
                @iFIL+12,vCO1+75 Say pTO2 Font "&mLetRom",12 Style "BQ" Size 1,14 Pict "999,999.9999"
                DO coLbln
                @iFIL+02,vCO1+03 Get pCOD Font "&mLetRom",12 Style "NQ" Size 1,20                     Color ,&mColBlN
                @iFIL+08,vCO1+03 Get pCAN Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999999.9999"  Color ,&mColBlN
                @iFIL+10,vCO1+03 Get pPR1 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999999.9999"  Color ,&mColBlN
                READ TIMEOUT 0.01
                STORE 01 TO viT1
                STORE 99 TO mkEy
                DO WHILE  .NOT. EOF()
                     DO CASE
                          CASE viT1=1
                               @iFIL+02,vCO1+03 Get pCOD Font "&mLetRom",12 Style "NQ" Size 1,20                     Color ,&mColBlN
                          CASE viT1=2
                               @iFIL+08,vCO1+03 Get pCAN Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999999.9999"  Color ,&mColBlN
                          CASE viT1=3
                               @iFIL+10,vCO1+03 Get pPR1 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999999.9999"  Color ,&mColBlN
                     ENDCASE
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     DO CASE
                          CASE mkEy=k_Esc
                               EXIT
                          CASE mkEy=k_Tab
                          CASE mkEy=k_Enter
                               DO CASE
                                    CASE viT1=1
                                         SELECT prOductos
                                         SEEK ALLTRIM(pcOd)+"*"
                                         IF EOF()
                                              STORE " " TO pdEs, pnUv
                                              STORE  ;
                                               "Producto no existe..." TO mmSj
                                              DO poNmsj
                                         ELSE
                                              STORE f2111des TO pdEs
                                              STORE f2111nuv TO pnUv
                                              STORE 2 TO viT1
                                         ENDIF
                                         DO coL_fondo
                                         @iFIL+04,vCO1+3 Say pDES Font "&mLetRom",12 Style "NQ" Size 1,77 Pict "@S80"
                                         @iFIL+06,vCO1+3 Say pNUV Font "&mLetRom",12 Style "NQ" Size 1,25 Pict "@S28"
                                    CASE viT1=2
                                         DO coL_fondo
                                         @iFIL+12,vCO1+03 Say pCAN*pPR1 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
                                         STORE 3 TO viT1
                                    CASE viT1=3
                                         DO coL_fondo
                                         @iFIL+12,vCO1+03 Say pCAN*pPR1 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
                                         STORE 1 TO viT1
                                         IF vcAn*ppRe<>pcAn*ppR1
                                         ENDIF
                               ENDCASE
                          CASE mkEy=k_Up
                               DO CASE
                                    CASE viT1=1
                                         STORE 3 TO viT1
                                    OTHERWISE
                                         STORE viT1-1 TO viT1
                               ENDCASE
                     ENDCASE
                ENDDO
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                STORE 99 TO mkEy
                RELEASE pcOd, pdEs, pcAn, pnUv, ppR1, pdCr, pcUv, pcUc, pnUc
                RELEASE pmEd, ppRe, pcO1, pcO2, plA1, plA2, paN1, paN2, peSp
                = INKEY(0.01)
           CASE mkEy=k_Alt_s .AND. xeSt="1" .AND. wtPo="2" .AND. vsW6=1
                STORE "No se puede desprocesar un documento que no está procesado..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_s .AND. xeSt="3" .AND. wtPo="2" .AND. vsW6=1
                STORE "No se puede desprocesar un documento que está cerrado..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_s .AND. xeSt="2" .AND. wtPo="2" .AND. vsW6=1
                WAIT WINDOW NOWAIT "DESPROCESANDO..."
                SELECT caB_cpra
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SEEK vtDo+vsEr+vdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2400est WITH "1"
                UNLOCK
                FLUSH
                IF vsW1=2
                     SELECT teMporal
                     REPLACE f2400est WITH "1"
                ENDIF
                STORE f2400est TO xeSt
                = INKEY(0.05)
                WAIT CLEAR
                IF vsW0<>1 .OR. vsW1<>1
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_cpra
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     DO orD_2400b IN PAC2400B
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                DO diS_2400c WITH "R"
                STORE 99 TO mkEy
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. xiGv=0 .AND. vsW6=1  ;
                .AND. wtPo<>"4"
                STORE "No hay más pantallas porque el Documento no tiene Impuestos"  ;
                      TO mmSj
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. xiGv<>0 .AND. vsW6= ;
                1 .AND. wtPo<>"4"
                IF vsW5=1
                     STORE 2 TO vsW5
                ELSE
                     STORE 1 TO vsW5
                ENDIF
                DO p02_2400c
                STORE vrEc TO crEc
                STORE vfFs TO cfFs
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                DO paN_2400c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                DO diS_2400c WITH "R"
           CASE mkEy=k_F2 .AND. wtPo="2" .AND. xeSt<>"2"
                STORE "Documento no se puede modificar..." TO mmSj
           CASE mkEy=k_F2 .AND. wtPo="2"
                IF vsW6=1
                     DO coLsc3
                     STORE 2 TO vsW6
                     DO CASE
                          CASE mrEs="3"
                               @ mfI0+5.5, mcO0+000.1 TO mfI0+10.5, mcO0+ ;
                                 109.0 PATTERN 1
                               @ mfI0+4.7, mcO0+115.7 TO mfI0+10.5, mcO0+ ;
                                 198.0 PATTERN 1
                          OTHERWISE
                               @ mfI0+5.5, mcO0+000.1 TO mfI0+10.5, mcO0+ ;
                                 117.0 PATTERN 1
                               @ mfI0+4.7, mcO0+119.7 TO mfI0+09.5, mcO0+ ;
                                 233.8 PATTERN 1
                     ENDCASE
                ELSE
                     DO coL_fondo
                     STORE 1 TO vsW6
                     DO CASE
                          CASE mrEs="3"
                               @ mfI0+5.5, mcO0+000.1 CLEAR TO mfI0+10.5,  ;
                                 mcO0+109.0
                               @ mfI0+4.7, mcO0+115.7 CLEAR TO mfI0+10.5,  ;
                                 mcO0+198.0
                          OTHERWISE
                               @ mfI0+5.5, mcO0+000.1 CLEAR TO mfI0+10.5,  ;
                                 mcO0+117.0
                               @ mfI0+4.7, mcO0+119.7 CLEAR TO mfI0+09.5,  ;
                                 mcO0+233.8
                     ENDCASE
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_cpra
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO muE_2400a
                SELECT caMbio
                SEEK xfEm
                IF EOF()
                     STORE 1 TO xtCa
                ELSE
                     STORE f9111tc4 TO xtCa
                ENDIF
                SELECT deT_cpra
                DO p01_2400c
                DO p03_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. vsW6=1
                IF vsW4=1
                     STORE 2 TO vsW4
                ELSE
                     STORE 1 TO vsW4
                ENDIF
                DO rs2_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. wtPo="2" .AND. xeSt<>"2" .AND. vsW6=2
                STORE "Documento no se puede modificar..." TO mmSj
           CASE mkEy=k_F5 .AND. wtPo="2" .AND. xeSt<>"2" .AND. vsW6=2
                STORE "Documento no se puede modificar..." TO mmSj
           CASE mkEy=k_F6 .AND. wtPo="2" .AND. xeSt<>"2" .AND. vsW6=2
                STORE "Documento no se puede modificar..." TO mmSj
           CASE mkEy=k_Ctrl_home .AND. vsW6=2 .AND. viTe=1
                STORE "Estas en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vsW6=2 .AND. viTe=15
                STORE "Estas en el último campo..." TO mmSj
           CASE mkEy=k_F4 .AND. wtPo="2" .AND. vsW6=2
                DO tdO_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. wtPo="2" .AND. vsW6=2
                DO ccO_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. wtPo="2" .AND. vsW6=2
                DO fpA_2400c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. wtPo<>"4" .AND. vsW6=1
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO CASE
                     CASE xtPo=1 .AND. xtRa="2"
                          DO xl0_0000a WITH "Transformacion "+vsEr+"-"+ ;
                             vdOc, "Detalle", 10
                     CASE xtPo=1
                          DO xl0_0000a WITH "Compra "+vsEr+"-"+vdOc,  ;
                             "Detalle", 10
                     CASE xtPo=2
                          DO xl0_0000a WITH "Gasto "+vsEr+"-"+vdOc,  ;
                             "Detalle", 10
                     CASE xtPo=3
                          DO xl0_0000a WITH "Importacion "+vsEr+"-"+vdOc,  ;
                             "Detalle", 10
                     CASE xtPo=4
                          DO xl0_0000a WITH "Percepcion "+vsEr+"-"+vdOc,  ;
                             "Detalle", 10
                     OTHERWISE
                          DO xl0_0000a WITH vsEr+"-"+vdOc, "Detalle", 10
                ENDCASE
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Item"
                pxLs.ceLls(3, 02).vaLue = "Codigo"
                pxLs.ceLls(3, 03).vaLue = "Descripcion"
                pxLs.ceLls(3, 04).vaLue = "Unidad"
                pxLs.ceLls(3, 05).vaLue = "Cantidad"
                pxLs.ceLls(3, 06).vaLue = "Caj/Pqtes"
                pxLs.ceLls(3, 07).vaLue = "V.Vta.Unit"
                pxLs.ceLls(3, 08).vaLue = "V.Vta.Total"
                pxLs.ceLls(3, 09).vaLue = "Prec.Inc.Unita"
                pxLs.ceLls(3, 10).vaLue = "Prec.Inc.Total"
                pxLs.raNge(pxLs.coLumns(02),  ;
                          pxLs.coLumns(04)).nuMberformat = "@"
                pxLs.coLumns(01).nuMberformat = "##0"
                pxLs.coLumns(05).nuMberformat = "#,###,##0.0000"
                pxLs.coLumns(06).nuMberformat = "####0"
                DO CASE
                     CASE xdEc=1
                          pxLs.raNge(pxLs.coLumns(07),  ;
                                    pxLs.coLumns(08)).nuMberformat =  ;
                                    "#,###,##0.0000"
                          pxLs.raNge(pxLs.coLumns(09),  ;
                                    pxLs.coLumns(10)).nuMberformat =  ;
                                    "#,###,##0.0000"
                     CASE xdEc=2
                          pxLs.raNge(pxLs.coLumns(07),  ;
                                    pxLs.coLumns(08)).nuMberformat =  ;
                                    "#,###,##0.00000"
                          pxLs.raNge(pxLs.coLumns(09),  ;
                                    pxLs.coLumns(10)).nuMberformat =  ;
                                    "#,###,##0.00000"
                     CASE xdEc=3
                          pxLs.raNge(pxLs.coLumns(07),  ;
                                    pxLs.coLumns(08)).nuMberformat =  ;
                                    "#,###,##0.000000"
                          pxLs.raNge(pxLs.coLumns(09),  ;
                                    pxLs.coLumns(10)).nuMberformat =  ;
                                    "#,###,##0.000000"
                ENDCASE
                SELECT deT_cpra
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc= ;
                   vtDo+vsEr+vdOc
                     WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6,  ;
                          0))+"... Leyendo Codigo: "+f2401cod
                     pxLs.ceLls(viT1, 1).seLect
                     pxLs.ceLls(viT1, 01).vaLue = f2401ite
                     pxLs.ceLls(viT1, 02).vaLue = f2401cod
                     pxLs.ceLls(viT1, 03).vaLue = f2401des
                     pxLs.ceLls(viT1, 04).vaLue = f2401nuc
                     pxLs.ceLls(viT1, 05).vaLue = f2401can
                     pxLs.ceLls(viT1, 06).vaLue = f2401caj
                     pxLs.ceLls(viT1, 07).vaLue = f2401pre
                     pxLs.ceLls(viT1, 08).vaLue = f2401pre*f2401can
                     pxLs.ceLls(viT1, 09).vaLue = f2401pre+(f2401pre*xpIg/100)
                     pxLs.ceLls(viT1, 10).vaLue = (f2401pre+(f2401pre* ;
                               xpIg/100))*f2401can
                     STORE viT1+1 TO viT1
                     SELECT deT_cpra
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                SELECT caB_cpra
                STORE viT1+1 TO viT1
                pxLs.ceLls(viT1+0, 04).vaLue = "Tot.Cantidad"
                pxLs.ceLls(viT1+0, 05).vaLue = tcAn
                pxLs.ceLls(viT1+0, 07).vaLue = "Vta.Total"
                pxLs.ceLls(viT1+0, 08).vaLue = f2400val
                pxLs.ceLls(viT1+0, 09).vaLue = "Descuento"
                pxLs.ceLls(viT1+0, 10).vaLue = f2400dct
                pxLs.ceLls(viT1+1, 07).vaLue = "Neto"
                pxLs.ceLls(viT1+1, 08).vaLue = f2400net
                pxLs.ceLls(viT1+1, 09).vaLue = "IGV"
                pxLs.ceLls(viT1+1, 10).vaLue = f2400igv
                pxLs.ceLls(viT1+2, 07).vaLue = "Redondeo"
                pxLs.ceLls(viT1+2, 08).vaLue = f2400red
                pxLs.ceLls(viT1+2, 09).vaLue = "Total"
                pxLs.ceLls(viT1+2, 10).vaLue = f2400tot
                pxLs.raNge(pxLs.ceLls(viT1+0,08), pxLs.ceLls(viT1+5, ;
                          08)).nuMberformat = "#,###,##0.00"
                WITH pxLs.raNge(pxLs.ceLls(viT1,4),pxLs.ceLls(viT1,5))
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
                ENDWITH
                WITH pxLs.raNge(pxLs.ceLls(viT1,7),pxLs.ceLls(viT1+2,10))
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
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(7,10)).inSert
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,02)).meRge
                pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,02)).meRge
                pxLs.raNge(pxLs.ceLls(5,1), pxLs.ceLls(5,02)).meRge
                pxLs.raNge(pxLs.ceLls(6,1), pxLs.ceLls(6,02)).meRge
                pxLs.raNge(pxLs.ceLls(7,1), pxLs.ceLls(7,02)).meRge
                pxLs.raNge(pxLs.ceLls(3,6), pxLs.ceLls(3,07)).meRge
                pxLs.raNge(pxLs.ceLls(4,6), pxLs.ceLls(4,07)).meRge
                pxLs.raNge(pxLs.ceLls(5,6), pxLs.ceLls(5,07)).meRge
                pxLs.raNge(pxLs.ceLls(6,6), pxLs.ceLls(6,07)).meRge
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(7,08)).foNt.naMe =  ;
                          "Times New Roman"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(7,08)).foNt.siZe = 12
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(7,02)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(3,05), pxLs.ceLls(7,05)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(7,09)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(3,10), pxLs.ceLls(7, ;
                          10)).hoRizontalalignment = 4
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(7, ;
                          10)).nuMberformat = "@"
                pxLs.ceLls(3, 01).vaLue = "Provedor:"
                pxLs.ceLls(4, 01).vaLue = "Forma de Pago:"
                pxLs.ceLls(5, 01).vaLue = "Centro de Costos:"
                pxLs.ceLls(6, 01).vaLue = "Observaciones:"
                pxLs.ceLls(3, 03).vaLue = xnOm
                pxLs.ceLls(4, 03).vaLue = xnFp
                pxLs.ceLls(5, 03).vaLue = xnCc
                pxLs.ceLls(6, 03).vaLue = xcM1
                pxLs.ceLls(7, 03).vaLue = xcM2
                pxLs.ceLls(3, 05).vaLue = "Documento:"
                pxLs.ceLls(4, 05).vaLue = "Guía de Remisión:"
                pxLs.ceLls(5, 05).vaLue = "Ord.Compra:"
                pxLs.ceLls(6, 05).vaLue = "Pedido:"
                pxLs.ceLls(3, 06).vaLue = xtD1+":"+xsR1+"-"+xfAc
                pxLs.ceLls(4, 06).vaLue = xsR2+"-"+xrEm
                pxLs.ceLls(5, 06).vaLue = xsOr+"-"+xoRd
                pxLs.ceLls(6, 06).vaLue = xpEd
                pxLs.ceLls(3, 09).vaLue = "Emisión:"
                pxLs.ceLls(4, 09).vaLue = "Fecha-Ingreso:"
                pxLs.ceLls(5, 09).vaLue = "Fecha-Registro:"
                IF xtIg=1
                     pxLs.ceLls(6, 09).vaLue = "I.G.V.:"
                ELSE
                     pxLs.ceLls(6, 09).vaLue = "Imp.a la Renta:"
                ENDIF
                pxLs.ceLls(3, 10).vaLue = DTOC(xfEm)
                pxLs.ceLls(4, 10).vaLue = DTOC(xfIn)
                pxLs.ceLls(5, 10).vaLue = DTOC(xrEg)
                pxLs.ceLls(6, 10).vaLue = xpIg
                pxLs.coLumns(1).coLumnwidth = 07
                pxLs.coLumns(2).coLumnwidth = 17
                pxLs.coLumns(3).coLumnwidth = 50
                pxLs.coLumns(4).coLumnwidth = 12.5
                pxLs.coLumns(5).coLumnwidth = 18
                pxLs.coLumns(6).coLumnwidth = 10
                pxLs.raNge(pxLs.coLumns(7), pxLs.coLumns(10)).coLumnwidth = 15
                DO xl1_0000a WITH 2
                WAIT CLEAR
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Ctrl_p .AND. vsW6=1
                SELECT caB_cpra
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                DO q1_0000a
                DO paI2400z
                DO p1_0000a
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                STORE 99 TO mkEy
                = INKEY(0.01)
                DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vsW0<>1 .OR. vsW1<>1
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_cpra
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     DO orD_2400b IN PAC2400B
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Enter .AND. vsW6=1
                STORE f2401cod TO vcOd
                STORE f2401des TO vdEs
                STORE f2401nuv TO vnUv
                STORE f2401tpo TO vtPo
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 2 TO vsRr
                ELSE
                     STORE f2111ser TO vsRr
                ENDIF
                DO CASE
                     CASE (vtPo>3 .AND. vtPo<10) .OR. vtPo=11
                          SELECT itE_cpra
                     OTHERWISE
                          SELECT seR_cpra
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a IN PAC2701A WITH "2400"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b IN PAC2701A WITH "2400"
                               CASE vtPo=11
                                    DO paC2701c IN PAC2701A WITH "2400"
                               CASE vtPo=10
                               CASE vsRr=1
                                    DO paC2702a IN PAC2701A WITH "2400"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                ENDCASE
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Enter .AND. vsW6=2
                DO veR_2400c
                IF mkEy<>99
                     DO CASE
                          CASE viTe=15
                               DO grA_2400c
                               STORE 01 TO viTe
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Tab .AND. vsW6=2
                STORE 15 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2400c
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO grA_2400c
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                ENDIF
           CASE mkEy=k_Home .AND. vsW6=1
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2401ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_2400c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_2400c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
           CASE mkEy=k_End .AND. vsW6=1
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2401ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2400c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_2400c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
           CASE mkEy=k_Up .AND. vsW6=1
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2400c WITH ifFs, ifFs+1
                               STORE f2401ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f2401ite TO urEc
                               ENDIF
                          ELSE
                               STORE f2401ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
           CASE mkEy=k_Up .AND. vsW6=2 .AND. (viTe=1 .OR. viTe=4 .OR. viTe=5)
                STORE "No hay mas campos arriba..." TO mmSj
           CASE mkEy=k_Up .AND. vsW6=2
                DO CASE
                     CASE viTe=6 .OR. viTe=7
                          STORE 4 TO viTe
                     CASE viTe=8
                          STORE 5 TO viTe
                     CASE viTe=9
                          STORE 3 TO viTe
                     CASE viTe>10
                          STORE 10 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_right .AND. vsW6=2
                DO veR_2400c
                IF mkEy<>99
                     DO CASE
                          CASE viTe=15
                               DO grA_2400c
                               STORE 01 TO viTe
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400c
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=2 .OR. viTe=3
                               STORE 6 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400c
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left .AND. vsW6=2 .AND. (viTe<4 .OR. viTe=11)
                STORE "No hay mas campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW6=2
                DO CASE
                     CASE viTe=4
                          STORE 1 TO viTe
                     CASE viTe=6
                          STORE 2 TO viTe
                     CASE viTe=8 .OR. viTe=9
                          STORE 5 TO viTe
                     CASE viTe=10
                          STORE 7 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_home .AND. vsW6=2
                STORE 01 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_end .AND. vsW6=2
                STORE 15 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2400c
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Down .AND. vsW6=1
                SKIP
                DO CASE
                     CASE EOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2400c WITH ffFs, ffFs+1
                               STORE f2401ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f2401ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f2401ite TO vrEc
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
           CASE mkEy=k_Down .AND. vsW6=2
                DO veR_2400c
                IF mkEy<>99
                     DO CASE
                          CASE viTe>10
                               DO grA_2400c
                               STORE 01 TO viTe
                               STORE 99 TO mkEy
                          CASE viTe=3 .OR. viTe=6 .OR. viTe=7 .OR. viTe=10
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400c
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4 .OR. viTe=5
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400c
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Pgdn .AND. vsW6=1
                SEEK vtDo+vsEr+vdOc+STR(urEc, 2, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2400c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup .AND. vsW6=1
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2401tdo+f2401ser+f2401doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2400c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2400c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SELECT deT_cpra
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE vsW6=1
                STORE 99 TO mkEy
                mkEy = INKEY(0, "HM")
           OTHERWISE
                SET READBORDER ON
                STORE k_Enter TO mkEy
                DO coLbln
                DO CASE
                     CASE viTe=1
                          @mFI0+6.0,mCO0+022.8 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE viTe=2
                          @mFI0+7.5,mCO0+022.8 Get  xFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE viTe=3
                          @mFI0+9.0,mCO0+022.8 Get  xREG Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE viTe=4 .AND. mrEs="3"
                          @mFI0+6.0,mCO0+066.7 Edit xSR1 Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     CASE viTe=4
                          @mFI0+6.0,mCO0+074.7 Edit xSR1 Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     CASE viTe=5 .AND. mrEs="3"
                          @mFI0+6.0,mCO0+088.0 Edit xFAC Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     CASE viTe=5
                          @mFI0+6.0,mCO0+096.0 Edit xFAC Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     CASE viTe=6 .AND. mrEs="3"
                          @mFI0+7.5,mCO0+066.8 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"      Color ,&mColBlN
                     CASE viTe=6
                          @mFI0+7.5,mCO0+074.8 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"      Color ,&mColBlN
                     CASE viTe=7 .AND. mrEs="3"
                          @mFI0+7.5,mCO0+072.7 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"  Color ,&mColBlN
                     CASE viTe=7
                          @mFI0+7.5,mCO0+080.7 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"  Color ,&mColBlN
                     CASE viTe=8 .AND. mrEs="3"
                          @mFI0+5.0,mCO0+127.0 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"  Color ,&mColBlN
                     CASE viTe=8
                          @mFI0+5.0,mCO0+143.0 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"  Color ,&mColBlN
                     CASE viTe=9 .AND. mrEs="3"
                          @mFI0+5.0,mCO0+170.0 Get  xPER Font "&mLetAri",9 Style "NQ" Size 1,11.6 Pict "999,999.99" Color ,&mColBlN
                     CASE viTe=9
                          @mFI0+5.0,mCO0+190.0 Get  xPER Font "&mLetAri",9 Style "NQ" Size 1,11.6 Pict "999,999.99" Color ,&mColBlN
                     CASE viTe=10 .AND. mrEs="3"
                          @mFI0+7.5,mCO0+117.0 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,80,70
                     CASE viTe=10
                          @mFI0+6.5,mCO0+143.0 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     CASE viTe=11 .AND. mrEs="3"
                          @mFI0+9.0,mCO0+117.0 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,80,70
                     CASE viTe=11
                          @mFI0+8.0,mCO0+143.0 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     CASE viTe=12
                          @fFFS+2.8,vCL4+071.5 Get  xNET Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99999999.99" Color ,&mColSc3
                     CASE viTe=13
                          @fFFS+2.8,vCL4+101.3 Get  xIGV Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99999999.99" Color ,&mColSc3
                     CASE viTe=14
                          @fFFS+2.8,vCL4+130.9 Get  xRED Font "&mLetRom",12 Style "BQ" Size 1,09.2 Pict "9999.99"     Color ,&mColSc3
                     CASE viTe=15
                          @fFFS+2.8,vCL4+160.5 Get  xTOT Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99999999.99" Color ,&mColSc3
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
      ENDCASE
 ENDDO
ENDPROC
*
PROCEDURE Ver_2400c
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(xfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1
           SELECT caMbio
           SEEK xfEm
           IF EOF()
                STORE "Fecha no tiene Tipo de Cambio registrado..." TO mmSj
                STORE 0 TO xtCa
           ELSE
                STORE f9111tc4 TO xtCa
           ENDIF
           DO coLbln
           SET READBORDER ON
           DO CASE
                CASE mrEs="3"
                     @mFI0+3.5,mCO0+187.0 Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,11.1 Pict "99.99999" Color ,&mCol_Fondo
                OTHERWISE
                     @mFI0+3.5,mCO0+143.0 Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,11.1 Pict "99.99999" Color ,&mCol_Fondo
           ENDCASE
           READ TIMEOUT 0.01
           SET READBORDER OFF
      CASE viTe=2 .AND. AT(" ", DTOC(xfIn))<>0
           STORE "Fecha de Ingreso no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. AT(" ", DTOC(xrEg))<>0
           STORE "Fecha de Registro no puede tener espacios vacíos..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_2400c
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 DO CASE
      CASE xtPo=1 .AND. xtRa="2"
           ptX2 = "TRANSFORMACION No.:"+vsEr+"-"+vdOc
      CASE xtPo=1
           ptX2 = "COMPRA No.:"+vsEr+"-"+vdOc
      CASE xtPo=2
           ptX2 = "GASTO No.:"+vsEr+"-"+vdOc
      CASE xtPo=3
           ptX2 = "IMPORTACION No.:"+vsEr+"-"+vdOc
      CASE xtPo=4
           ptX2 = "PERCEPCION No.:"+vsEr+"-"+vdOc
      OTHERWISE
           ptX2 = "No.:"+vsEr+"-"+vdOc
 ENDCASE
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      RETURN
 ENDIF
 DO grAbar WITH "1"
 SELECT caB_cpra
 IF vsW0<>1 .OR. vsW1<>1
      DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT peNd_cpras
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT caB_cpra
 REPLACE f2400fem WITH xfEm
 REPLACE f2400fin WITH xfIn
 REPLACE f2400reg WITH xrEg
 REPLACE f2400td1 WITH xtD1
 REPLACE f2400sr1 WITH xsR1
 REPLACE f2400fac WITH xfAc
 REPLACE f2400sr2 WITH xsR2
 REPLACE f2400rem WITH xrEm
 REPLACE f2400ped WITH xpEd
 REPLACE f2400per WITH xpEr
 REPLACE f2400cco WITH xcCo
 REPLACE f2400ncc WITH xnCc
 REPLACE f2400fpa WITH xfPa
 REPLACE f2400nfp WITH xnFp
 REPLACE f2400dia WITH xdIa
 REPLACE f2400cm1 WITH xcM1
 REPLACE f2400cm2 WITH xcM2
 REPLACE f2400net WITH xnEt
 REPLACE f2400igv WITH xiGv
 REPLACE f2400red WITH xrEd
 REPLACE f2400tot WITH xtOt
 UNLOCK
 SELECT peNd_cpras
 REPLACE f3600td1 WITH xtD1
 REPLACE f3600sr1 WITH xsR1
 REPLACE f3600do1 WITH xfAc
 REPLACE f3600fpa WITH xfPa
 REPLACE f3600nfp WITH xnFp
 REPLACE f3600ped WITH xpEd
 REPLACE f3600fem WITH xfEm
 REPLACE f3600pre WITH xfEm
 REPLACE f3600fve WITH xfEm+xdIa
 REPLACE f3600tot WITH xtOt
 SELECT caB_cpra
 SET ORDER TO
 SET FILTER TO f2400est<>"9" .AND. LEN(ALLTRIM(f2400td1))<2 .AND. LEN(ALLTRIM(f2400sr1))<4 .AND. LEN(ALLTRIM(f2400fac))<10
 GOTO TOP
 IF BOF() .OR. EOF()
      SELECT nuMeracion
      SEEK "9C"
      IF  .NOT. EOF()
           REPLACE f9999num WITH "0000000"
      ENDIF
 ELSE
      SELECT nuMeracion
      SEEK "9C"
      IF EOF()
           APPEND BLANK
           REPLACE f9999tdo WITH "9C"
           REPLACE f9999ser WITH "999"
           REPLACE f9999num WITH "0000000"
      ENDIF
      REPLACE f9999num WITH "0000001"
 ENDIF
 SELECT caB_cpra
 SET FILTER TO
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 IF vsW0<>1 .OR. vsW1<>1
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2400b IN PAC2400B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Pan_2400c
 STORE ifFs TO vfFs, ufFs
 STORE f2401ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_2400c WITH "N"
      STORE f2401ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo
      DO liN_2400c WITH ufFs, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2400c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f2401tpo=1 .OR. f2401tpo=10
           STORE 0 TO vpIe
           STORE ROUND(f2401can*f2401pre, 4) TO vtOt
      CASE f2401tpo=2 .AND. f2401med=1 .AND. vtDo<>"IM"
           STORE ROUND(f2401la1*f2401an1*10.77*f2401can, 4) TO vpIe
           STORE ROUND(vpIe*f2401pre, 4) TO vtOt
      CASE f2401tpo=2 .AND. f2401med=2 .AND. vtDo<>"IM"
           STORE ROUND((f2401la2*f2401an2/144)*f2401can, 4) TO vpIe
           STORE ROUND(vpIe*f2401pre, 4) TO vtOt
      CASE f2401tpo=2
           STORE ROUND((f2401la2*f2401an2)*f2401can, 4) TO vpIe
           STORE ROUND(vpIe*f2401pre, 4) TO vtOt
      CASE f2401tpo=3
           STORE ROUND((f2401la2*f2401an2*f2401esp/12)*f2401can, 4) TO vpIe
           STORE ROUND(vpIe*f2401pre, 4) TO vtOt
      CASE f2401tpo=4
           STORE ROUND((f2401la1*f2401an1)*f2401can, 4) TO vpIe
           STORE ROUND(vpIe*f2401pre, 4) TO vtOt
      OTHERWISE
           STORE f2401can TO vpIe
           STORE ROUND(f2401can*f2401pre, 4) TO vtOt
 ENDCASE
 STORE f2401pre TO vpRe
 IF vsW5=2
      STORE ROUND(vtOt*(1+(xpIg/100)), 4) TO vtOt
      STORE ROUND(vpRe*(1+(xpIg/100)), 4) TO vpRe
 ENDIF
 @vFFS,mCO0+0.1 Say F2401ITE Font "&mLetAri",9 Style "NQ" Size 1,5.1 Pict "999"
 DO CASE
      CASE mrEs="3" .AND. wtPo<>"4"
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,24.3 Pict "@S20"
           @vFFS,mCO0+031.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,97.7 Pict "@S91"
           @vFFS,mCO0+129.4 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "@S13"
           @vFFS,mCO0+139.9 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.9999"
           DO CASE
                CASE xdEc=1
                     @vFFS,mCO0+160.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.9999"
                     @vFFS,mCO0+180.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.9999"
                CASE xdEc=2
                     @vFFS,mCO0+160.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.99999"
                     @vFFS,mCO0+180.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.99999"
                OTHERWISE
                     @vFFS,mCO0+160.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
                     @vFFS,mCO0+180.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
           ENDCASE
      CASE mrEs="4" .AND. wtPo<>"4"
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,030.3 Pict "@S20"
           @vFFS,mCO0+037.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,127.7 Pict "@S125"
           @vFFS,mCO0+165.4 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,020.0 Pict "@S23"
           @vFFS,mCO0+185.9 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,019.5 Pict "999,999.9999"
           DO CASE
                CASE xdEc=1
                     @vFFS,mCO0+206.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.9999"
                     @vFFS,mCO0+229.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.9999"
                CASE xdEc=2
                     @vFFS,mCO0+206.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99999"
                     @vFFS,mCO0+229.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99999"
                OTHERWISE
                     @vFFS,mCO0+206.1 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.999999"
                     @vFFS,mCO0+229.4 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.999999"
           ENDCASE
      CASE wtPo<>"4"
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,030.3 Pict "@S20"
           @vFFS,mCO0+037.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,137.7 Pict "@S135"
           @vFFS,mCO0+175.3 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,027.0 Pict "@S28"
           @vFFS,mCO0+202.8 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,019.5 Pict "999,999.9999"
           DO CASE
                CASE xdEc=1
                     @vFFS,mCO0+223.0 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.9999"
                     @vFFS,mCO0+246.3 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.9999"
                CASE xdEc=2
                     @vFFS,mCO0+223.0 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99999"
                     @vFFS,mCO0+246.3 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99999"
                OTHERWISE
                     @vFFS,mCO0+223.0 Say vPRE          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.999999"
                     @vFFS,mCO0+246.3 Say vTOT          Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.999999"
           ENDCASE
      CASE mrEs="3"
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,030.3 Pict "@S20"
           @vFFS,mCO0+037.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,120.2 Pict "@S120"
           @vFFS,mCO0+157.7 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,022.0 Pict "@S25"
           @vFFS,mCO0+180.3 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,019.5 Pict "999,999.9999"
      CASE mrEs="4"
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,030.3 Pict "@S20"
           @vFFS,mCO0+037.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,100.0 Pict "@S100"
           @vFFS,mCO0+137.5 Say F2401DCR              Font "&mLetAri",9 Style "NQ" Size 1,076.5 Pict "@S79"
           @vFFS,mCO0+214.7 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,017.0 Pict "@S20"
           @vFFS,mCO0+232.3 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,019.5 Pict "999,999.9999"
      OTHERWISE
           @vFFS,mCO0+006.0 Say F2401COD              Font "&mLetAri",9 Style "NQ" Size 1,030.3 Pict "@S20"
           @vFFS,mCO0+037.0 Say F2401DES              Font "&mLetAri",9 Style "NQ" Size 1,100.0 Pict "@S100"
           @vFFS,mCO0+137.5 Say F2401DCR              Font "&mLetAri",9 Style "NQ" Size 1,093.5 Pict "@S96"
           @vFFS,mCO0+231.7 Say F2401NUC              Font "&mLetAri",9 Style "NQ" Size 1,017.0 Pict "@S20"
           @vFFS,mCO0+249.3 Say F2401CAN              Font "&mLetAri",9 Style "NQ" Size 1,019.5 Pict "999,999.9999"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2400c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+5.6 TO pfIn, mcO0+005.6
 DO CASE
      CASE mrEs="3" .AND. wtPo<>"4"
           @ piNi, mcO0+030.6 TO pfIn, mcO0+030.6
           @ piNi, mcO0+128.9 TO pfIn, mcO0+128.9
           @ piNi, mcO0+139.6 TO pfIn, mcO0+139.6
           @ piNi, mcO0+159.7 TO pfIn, mcO0+159.7
           @ piNi, mcO0+180.0 TO pfIn, mcO0+180.0
      CASE mrEs="4" .AND. wtPo<>"4"
           @ piNi, mcO0+036.6 TO pfIn, mcO0+036.6
           @ piNi, mcO0+165.0 TO pfIn, mcO0+165.0
           @ piNi, mcO0+185.5 TO pfIn, mcO0+185.5
           @ piNi, mcO0+205.7 TO pfIn, mcO0+205.7
           @ piNi, mcO0+229.0 TO pfIn, mcO0+229.0
      CASE wtPo<>"4"
           @ piNi, mcO0+036.6 TO pfIn, mcO0+036.6
           @ piNi, mcO0+174.9 TO pfIn, mcO0+174.9
           @ piNi, mcO0+202.4 TO pfIn, mcO0+202.4
           @ piNi, mcO0+222.6 TO pfIn, mcO0+222.6
           @ piNi, mcO0+245.9 TO pfIn, mcO0+245.9
      CASE mrEs="3"
           @ piNi, mcO0+036.6 TO pfIn, mcO0+036.6
           @ piNi, mcO0+157.3 TO pfIn, mcO0+157.3
           @ piNi, mcO0+179.9 TO pfIn, mcO0+179.9
      CASE mrEs="4"
           @ piNi, mcO0+036.6 TO pfIn, mcO0+036.6
           @ piNi, mcO0+137.2 TO pfIn, mcO0+137.2
           @ piNi, mcO0+214.3 TO pfIn, mcO0+214.3
           @ piNi, mcO0+231.9 TO pfIn, mcO0+231.9
      OTHERWISE
           @ piNi, mcO0+036.6 TO pfIn, mcO0+036.6
           @ piNi, mcO0+137.2 TO pfIn, mcO0+137.2
           @ piNi, mcO0+231.3 TO pfIn, mcO0+231.3
           @ piNi, mcO0+248.9 TO pfIn, mcO0+248.9
 ENDCASE
ENDPROC
*
PROCEDURE P00_2400c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo<>"4"
      DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO p02_2400a
 SET READBORDER ON
 DO CASE
      CASE (xtPo=1 .AND. xtRa="2") .OR. xtPo=3 .OR. xtPo=4
           @ mfI0-2.5, mcO0-0.6 TO mfI0-0.5, mcO0+49.7 PATTERN 1 COLOR SCHEME 7
      OTHERWISE
           @ mfI0-2.5, mcO0-0.6 TO mfI0-0.5, mcO0+37.7 PATTERN 1 COLOR SCHEME 7
 ENDCASE
 DO coLbln
 DO CASE
      CASE xtPo=1 .AND. xtRa="2"
           @mFI0-2.2,mCO0+0.8 Say "Transformación:" Font "&mLetRom",13 Style "BT"
      CASE xtPo=1
           @mFI0-2.2,mCO0+0.8 Say "COMPRA:"         Font "&mLetRom",13 Style "BT"
      CASE xtPo=2
           @mFI0-2.2,mCO0+0.8 Say "GASTO:"          Font "&mLetRom",13 Style "BT"
      CASE xtPo=3
           @mFI0-2.2,mCO0+0.8 Say "Importación:"    Font "&mLetRom",13 Style "BT"
      CASE xtPo=4
           @mFI0-2.2,mCO0+0.8 Say "Percepción:"     Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO coLbln
 DO CASE
      CASE xtPo=3 .OR. xtPo=4 .OR. xtRa="2"
           @mFI0-2.2,mCO0+27 Get vSER Font "&mLetRom",11 Style "BQ" Size 1,4 Pict "999"     Color ,&mColBlN
           @mFI0-2.2,mCO0+34 Get vDOC Font "&mLetRom",11 Style "BQ" Size 1,9 Pict "9999999" Color ,&mColBlN
      CASE xtPo=1
           @mFI0-2.2,mCO0+18 Get vSER Font "&mLetRom",11 Style "BQ" Size 1,4 Pict "999"     Color ,&mColBlN
           @mFI0-2.2,mCO0+25 Get vDOC Font "&mLetRom",11 Style "BQ" Size 1,9 Pict "9999999" Color ,&mColBlN
      CASE xtPo=2
           @mFI0-2.2,mCO0+17 Get vSER Font "&mLetRom",11 Style "BQ" Size 1,4 Pict "999"     Color ,&mColBlN
           @mFI0-2.2,mCO0+24 Get vDOC Font "&mLetRom",11 Style "BQ" Size 1,9 Pict "9999999" Color ,&mColBlN
 ENDCASE
 IF vsW4=1
      DO coL_fondo
      DO CASE
           CASE wtPo="4"
                DO cuAdro WITH mfI0, mcO0, mfI0+05.2, mcO0+muCo
           OTHERWISE
                DO cuAdro WITH mfI0, mcO0, mfI0+10.7, mcO0+muCo
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_beige
      DO CASE
           CASE wtPo="4"
           CASE mrEs="3"
                @ mfI0, mcO0+000.1 TO mfI0+5.1, mcO0+093.0 PATTERN 1
                @ mfI0, mcO0+171.0 TO mfI0+3.2, mcO0+199.0 PATTERN 1
           OTHERWISE
                @ mfI0, mcO0+000.1 TO mfI0+5.1, mcO0+114.0 PATTERN 1
                @ mfI0, mcO0+210.0 TO mfI0+3.2, mcO0+252.0 PATTERN 1
      ENDCASE
      DO p01_2400c
 ENDIF
 READ TIMEOUT 0.01
 SET READBORDER OFF
 DO coL_fondo
 DO cuAdro WITH ifFs-1.5, mcO0, ffFs+1, mcO0+muCo+0.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @fFFS+4.5,mCO0+mUCO-41 Say " Usuario:   " Font "&mLetAri",9 Style "BQ"
 @fFFS+5.5,mCO0+mUCO-41 Say " Fecha:     " Font "&mLetAri",9 Style "BQ"
 @fFFS+5.5,mCO0+mUCO-17 Say " Hora:      " Font "&mLetAri",9 Style "BQ"
 @fFFS+4.5,mCO0+mUCO-30 Say xUSU           Font "&mLetAri",9 Style "NQ" Size 1,30.5 Pict "@S31"
 @fFFS+5.5,mCO0+mUCO-30 Say xDAT           Font "&mLetAri",9 Style "NQ" Size 1,13
 @fFFS+5.5,mCO0+mUCO-10 Say xTIM           Font "&mLetAri",9 Style "NQ" Size 1,10.6
 DO coLsc3
 @ ifFs-1.4, mcO0 TO ifFs-0.1, mcO0+muCo+0.1 PATTERN 1
 DO liN_2400c WITH ifFs-1.3, ffFs+1.2
 @iFFS-1.3,mCO0+0.5 Say "Ítem" Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE mrEs="3" .AND. wtPo<>"4"
           @iFFS-1.3,mCO0+13.0 Say "Código"                   Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+31.5 Say "Descripción del Producto" Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @iFFS-1.3,mCO0+16.0 Say "Código"                   Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+37.5 Say "Descripción del Producto" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. wtPo="4"
           @iFFS-1.3,mCO0+159.9 Say "Unidad-Compra"         Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+184.3 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
      CASE mrEs="3"
           @iFFS-1.3,mCO0+130.1 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+144.8 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
      CASE mrEs="4" .AND. wtPo="4"
           @iFFS-1.3,mCO0+138.0 Say "Descripción Abreviada" Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+216.9 Say "Unid.Cpra."            Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+237.3 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
      CASE mrEs="4"
           @iFFS-1.3,mCO0+166.3 Say "Unidad Compra"         Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+191.0 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
      CASE wtPo="4"
           @iFFS-1.3,mCO0+138.0 Say "Descripción Abreviada" Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+233.9 Say "Unid.Cpra."            Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+254.3 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @iFFS-1.3,mCO0+179.3 Say "Unidad Compra"         Font "&mLetAri",9 Style "NQ"
           @iFFS-1.3,mCO0+207.0 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
 ENDCASE
 IF wtPo="4"
 ELSE
      DO coLsc7
      @ ffFs+1.2, mcO0-0.6 TO ffFs+2.6, mcO0+muCo+0.5 PATTERN 1
      DO coL_fondo
      @ ffFs+2.5, mcO0-0.6 TO ffFs+4.4, mcO0+muCo+0.5 PATTERN 1
      @ ffFs+2.6, vcL4-000.6 TO ffFs+4.4, vcL4-000.6
      @ ffFs+2.6, vcL4+030.9 TO ffFs+4.4, vcL4+030.9
      @ ffFs+2.6, vcL4+060.9 TO ffFs+4.4, vcL4+060.9
      @ ffFs+2.6, vcL4+091.4 TO ffFs+4.4, vcL4+091.4
      @ ffFs+2.6, vcL4+121.2 TO ffFs+4.4, vcL4+121.2
      @ ffFs+2.6, vcL4+144.3 TO ffFs+4.4, vcL4+144.3
      DO coLsc7
      DO CASE
           CASE mrEs="3"
                @ ffFs+1.2, mcO0+138.9 TO ffFs+2.6, mcO0+138.9
                @ ffFs+1.2, mcO0+159.9 TO ffFs+2.6, mcO0+159.9
                @ ffFs+1.2, mcO0+179.7 TO ffFs+2.6, mcO0+179.7
                @fFFS+1.4,mCO0+139.3 Say tCAN Font "&mLetAri",9 Style "BQ" Size 1,16.9 Pict "999,999,999.99"
           CASE mrEs="4"
                @ ffFs+1.2, mcO0+184.9 TO ffFs+2.6, mcO0+184.9
                @ ffFs+1.2, mcO0+205.9 TO ffFs+2.6, mcO0+205.9
                @ ffFs+1.2, mcO0+228.9 TO ffFs+2.6, mcO0+228.9
                @fFFS+1.4,mCO0+185.3 Say tCAN Font "&mLetAri",9 Style "BQ" Size 1,16.9 Pict "999,999,999.99"
           OTHERWISE
                @ ffFs+1.2, mcO0+201.9 TO ffFs+2.4, mcO0+201.9
                @ ffFs+1.2, mcO0+222.9 TO ffFs+2.4, mcO0+222.9
                @ ffFs+1.2, mcO0+245.9 TO ffFs+2.4, mcO0+245.9
                @fFFS+1.4,mCO0+202.3 Say tCAN Font "&mLetAri",9 Style "BQ" Size 1,16.9 Pict "999,999,999.99"
      ENDCASE
      DO coL_beige
      @fFFS+2.8,vCL4-000.2 Say "  V.Vta:" Font "&mLetRom",12 Style "BQ" Size 1,07.8
      @fFFS+2.8,vCL4+031.1 Say "  Dcto:"  Font "&mLetRom",12 Style "BQ" Size 1,07.0
      DO coL_fondo
      @fFFS+2.8,vCL4+010.9 Say xVAL       Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99,999,999.99"
      @fFFS+2.8,vCL4+041.0 Say xDCT       Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99,999,999.99"
      @fFFS+2.8,vCL4+154.9 Say xSIG       Font "&mLetRom",12 Style "BQ" Size 1,4
      DO p02_2400c
      DO p03_2400c
 ENDIF
ENDPROC
*
PROCEDURE P01_2400c
 DO coL_beige
 SET READBORDER ON
 DO CASE
      CASE wtPo<>"4"
           @mFI0+0.5,mCO0+1 Say "Proveedor" Font "&mLetAri",9 Style "BQ"
           @mFI0+2.0,mCO0+1 Say "Dirección" Font "&mLetAri",9 Style "NQ"
           @mFI0+3.5,mCO0+1 Say "Distrito"  Font "&mLetAri",9 Style "NQ"
           DO CASE
                CASE mrEs="3"
                     @mFI0+3.5,mCO0+067.0 Say "RUC"                     Font "&mLetAri",9 Style "NQ"
                     DO coL_fondo
                     @mFI0+0.5,mCO0+095.8 Say "Centro de Costos"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+2.0,mCO0+095.8 Say "Forma de Pago"           Font "&mLetAri",9 Style "BQ"
                     @mFI0+3.5,mCO0+166.8 Say "Tipo de Cambio:"         Font "&mLetAri",9 Style "BQ"
                     IF vsW6=2
                          DO coLsc3
                     ENDIF
                     @mFI0+6.0,mCO0+001.0 Say "Fecha de Emisión"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+001.0 Say "Fecha de Ingreso"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+001.0 Say "Fecha de Registro"       Font "&mLetAri",9 Style "NQ"
                     @mFI0+6.0,mCO0+038.0 Say "Documento"               Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+038.0 Say "Guía de Remisión"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+038.0 Say "Orden de Compra"         Font "&mLetAri",9 Style "NQ"
                     @mFI0+5.0,mCO0+116.8 Say "Pedido"                  Font "&mLetAri",9 Style "BQ"
                     @mFI0+5.0,mCO0+140.8 Say "Provisión de Percepción" Font "&mLetAri",9 Style "BQ"
                     @mFI0+6.3,mCO0+116.8 Say "Observaciones:"          Font "&mLetAri",9 Style "BQ"
                     DO coL_fondo
                     IF xsW0=2
                          DO coLbln
                     ENDIF
                     @mFI0+0.5,mCO0+014.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,76,80
                     @mFI0+2.0,mCO0+014.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,76,70
                     @mFI0+3.5,mCO0+014.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,35,25
                     @mFI0+3.5,mCO0+074.3 Edit xRUC Font "&mLetAri",9 Style "NQ" Size 1,16.1
                     DO coLbln
                     @mFI0+0.4,mCO0+172.0 Get  xTIG Font "&mLetAri",9 Style "NQ" Default xTIG Size 1,12,.3 Function "*RVT I.G.V.;Impuesto a la Renta" Color RGB(0,0,0,235,231,222)
                     @mFI0+0.5,mCO0+189.0 Get  xPIG Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"     Color ,&mColBlN
                     @mFI0+3.5,mCO0+187.0 Get  xTCA Font "&mLetAri",9 Style "NQ" Size 1,11.1 Pict "99.99999"   Color ,&mCol_Fondo
                     @mFI0+5.0,mCO0+127.0 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"    Color ,&mColBlN
                     @mFI0+5.0,mCO0+170.0 Get  xPER Font "&mLetAri",9 Style "NQ" Size 1,11.6 Pict "999,999.99" Color ,&mColBlN
                     @mFI0+6.0,mCO0+022.8 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1                   Color ,&mColBlN
                     @mFI0+6.0,mCO0+052.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
                     @mFI0+6.0,mCO0+066.7 Edit xSR1 Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+6.0,mCO0+088.0 Edit xFAC Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+7.5,mCO0+117.0 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,80,70
                     @mFI0+7.5,mCO0+022.8 Get  xFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1                 Color ,&mColBlN
                     @mFI0+7.5,mCO0+066.8 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"      Color ,&mColBlN
                     @mFI0+7.5,mCO0+072.7 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"  Color ,&mColBlN
                     @mFI0+9.0,mCO0+117.0 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,80,70
                     @mFI0+9.0,mCO0+022.8 Get  xREG Font "&mLetAri",9 Style "NQ" Size 1,12.1                 Color ,&mColBlN
                     IF vsW6=1
                          @mFI0+9,mCO0+66.8 Get xSOR  Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color ,&mColBlN
                          @mFI0+9,mCO0+72.7 Get xORD  Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color ,&mColBlN
                     ELSE
                          @mFI0+9,mCO0+66.8 Get xSOR  Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color Scheme 3
                          @mFI0+9,mCO0+72.7 Get xORD  Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color Scheme 3
                     ENDIF
                     IF LEN(ALLTRIM(xcCo))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+0.5,mCO0+117 Edit xNCC Font "&mLetAri",9 Style "NQ" Size 1,45,50
                     DO coLbln
                     IF LEN(ALLTRIM(xfPa))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+2.0,mCO0+117 Edit xNFP Font "&mLetAri",9 Style "NQ" Size 1,45,50
                CASE mrEs="4"
                     @mFI0+3.5,mCO0+087.0 Say "RUC"                     Font "&mLetAri",9 Style "NQ"
                     DO coL_fondo
                     @mFI0+0.5,mCO0+120.8 Say "Centro de Costos"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+2.0,mCO0+120.8 Say "Forma de Pago"           Font "&mLetAri",9 Style "BQ"
                     @mFI0+3.5,mCO0+120.8 Say "Tipo de Cambio:"         Font "&mLetAri",9 Style "BQ"
                     IF vsW6=2
                          DO coLsc3
                     ENDIF
                     @mFI0+6.0,mCO0+001.0 Say "Fecha de Emisión"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+001.0 Say "Fecha de Ingreso"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+001.0 Say "Fecha de Registro"       Font "&mLetAri",9 Style "NQ"
                     @mFI0+6.0,mCO0+046.0 Say "Documento"               Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+046.0 Say "Guía de Remisión"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+046.0 Say "Orden de Compra"         Font "&mLetAri",9 Style "NQ"
                     @mFI0+5.0,mCO0+120.8 Say "Pedido"                  Font "&mLetAri",9 Style "BQ"
                     @mFI0+5.0,mCO0+160.8 Say "Provisión de Percepción" Font "&mLetAri",9 Style "BQ"
                     @mFI0+6.5,mCO0+120.8 Say "Observaciones:"          Font "&mLetAri",9 Style "BQ"
                     DO coL_fondo
                     IF xsW0=2
                          DO coLbln
                     ENDIF
                     @mFI0+0.5,mCO0+014.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,96,80
                     @mFI0+2.0,mCO0+014.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,96,70
                     @mFI0+3.5,mCO0+014.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,35,25
                     @mFI0+3.5,mCO0+094.3 Edit xRUC Font "&mLetAri",9 Style "NQ" Size 1,16.1
                     DO coLbln
                     @mFI0+0.4,mCO0+213.0 Get  xTIG Font "&mLetAri",9 Style "NQ" Default xTIG Size 1,12,.3 Function "*RVT I.G.V.;Impuesto a la Renta" Color RGB(0,0,0,235,231,222)
                     @mFI0+1.1,mCO0+240.0 Get  xPIG Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"     Color ,&mColBlN
                     @mFI0+3.5,mCO0+143.0 Get  xTCA Font "&mLetAri",9 Style "NQ" Size 1,11.1 Pict "99.99999"   Color ,&mCol_Fondo
                     @mFI0+5.0,mCO0+143.0 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"    Color ,&mColBlN
                     @mFI0+5.0,mCO0+190.0 Get  xPER Font "&mLetAri",9 Style "NQ" Size 1,11.6 Pict "999,999.99" Color ,&mColBlN
                     @mFI0+6.0,mCO0+022.8 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1                   Color ,&mColBlN
                     @mFI0+6.0,mCO0+060.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
                     @mFI0+6.0,mCO0+074.7 Edit xSR1 Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+6.0,mCO0+096.0 Edit xFAC Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+6.5,mCO0+143.0 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     @mFI0+7.5,mCO0+022.8 Get  xFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1                 Color ,&mColBlN
                     @mFI0+7.5,mCO0+074.8 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"      Color ,&mColBlN
                     @mFI0+7.5,mCO0+080.7 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"  Color ,&mColBlN
                     @mFI0+8.0,mCO0+143.0 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     @mFI0+9.0,mCO0+022.8 Get  xREG Font "&mLetAri",9 Style "NQ" Size 1,12.1                 Color ,&mColBlN
                     IF vsW6=1
                          @mFI0+9,mCO0+074.8 Get xSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color ,&mColBlN
                          @mFI0+9,mCO0+080.7 Get xORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color ,&mColBlN
                     ELSE
                          @mFI0+9,mCO0+074.8 Get xSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color Scheme 3
                          @mFI0+9,mCO0+080.7 Get xORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color Scheme 3
                     ENDIF
                     IF LEN(ALLTRIM(xcCo))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+0.5,mCO0+143 Edit xNCC   Font "&mLetAri",9 Style "NQ" Size 1,50,50
                     DO coLbln
                     IF LEN(ALLTRIM(xfPa))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+2.0,mCO0+143 Edit xNFP   Font "&mLetAri",9 Style "NQ" Size 1,50,50
                OTHERWISE
                     @mFI0+3.5,mCO0+087.0 Say "RUC"                     Font "&mLetAri",9 Style "NQ"
                     DO coL_fondo
                     @mFI0+0.5,mCO0+120.8 Say "Centro de Costos"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+2.0,mCO0+120.8 Say "Forma de Pago"           Font "&mLetAri",9 Style "BQ"
                     @mFI0+3.5,mCO0+120.8 Say "Tipo de Cambio:"         Font "&mLetAri",9 Style "BQ"
                     IF vsW6=2
                          DO coLsc3
                     ENDIF
                     @mFI0+6.0,mCO0+001.0 Say "Fecha de Emisión"        Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+001.0 Say "Fecha de Ingreso"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+001.0 Say "Fecha de Registro"       Font "&mLetAri",9 Style "NQ"
                     @mFI0+6.0,mCO0+046.0 Say "Documento"               Font "&mLetAri",9 Style "BQ"
                     @mFI0+7.5,mCO0+046.0 Say "Guía de Remisión"        Font "&mLetAri",9 Style "NQ"
                     @mFI0+9.0,mCO0+046.0 Say "Orden de Compra"         Font "&mLetAri",9 Style "NQ"
                     @mFI0+5.0,mCO0+120.8 Say "Pedido"                  Font "&mLetAri",9 Style "BQ"
                     @mFI0+5.0,mCO0+160.8 Say "Provisión de Percepción" Font "&mLetAri",9 Style "BQ"
                     @mFI0+6.5,mCO0+120.8 Say "Observaciones:"          Font "&mLetAri",9 Style "BQ"
                     DO coL_fondo
                     IF xsW0=2
                          DO coLbln
                     ENDIF
                     @mFI0+0.5,mCO0+014.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,96,80
                     @mFI0+2.0,mCO0+014.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,96,70
                     @mFI0+3.5,mCO0+014.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,35,25
                     @mFI0+3.5,mCO0+094.3 Edit xRUC Font "&mLetAri",9 Style "NQ" Size 1,16.1
                     DO coLbln
                     @mFI0+6.0,mCO0+022.8 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1                 Color ,&mColBlN
                     @mFI0+6.0,mCO0+060.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
                     @mFI0+6.0,mCO0+074.7 Edit xSR1 Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+6.0,mCO0+096.0 Edit xFAC Font "&mLetAri",9 Style "NQ" Size 1,20,20
                     @mFI0+7.5,mCO0+022.8 Get  xFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1                   Color ,&mColBlN
                     @mFI0+7.5,mCO0+074.8 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"        Color ,&mColBlN
                     @mFI0+7.5,mCO0+080.7 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"    Color ,&mColBlN
                     @mFI0+9.0,mCO0+022.8 Get  xREG Font "&mLetAri",9 Style "NQ" Size 1,12.1                   Color ,&mColBlN
                     @mFI0+3.5,mCO0+143.0 Get  xTCA Font "&mLetAri",9 Style "NQ" Size 1,11.1 Pict "99.99999"   Color ,&mCol_Fondo
                     @mFI0+5.0,mCO0+143.0 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"    Color ,&mColBlN
                     @mFI0+5.0,mCO0+190.0 Get  xPER Font "&mLetAri",9 Style "NQ" Size 1,11.6 Pict "999,999.99" Color ,&mColBlN
                     @mFI0+6.5,mCO0+143.0 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     @mFI0+8.0,mCO0+143.0 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     @mFI0+0.4,mCO0+213.0 Get  xTIG Font "&mLetAri",9 Style "NQ" Default xTIG Size 1,12,.3 Function "*RVT I.G.V.;Impuesto a la Renta" Color RGB(0,0,0,235,231,222)
                     @mFI0+1.1,mCO0+240.0 Get  xPIG Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"   Color ,&mColBlN
                     IF vsW6=1
                          @mFI0+9,mCO0+74.8 Get xSOR  Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color ,&mColBlN
                          @mFI0+9,mCO0+80.7 Get xORD  Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color ,&mColBlN
                     ELSE
                          @mFI0+9,mCO0+74.8 Get xSOR  Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"       Color Scheme 3
                          @mFI0+9,mCO0+80.7 Get xORD  Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"   Color Scheme 3
                     ENDIF
                     IF LEN(ALLTRIM(xcCo))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+0.5,mCO0+143 Edit xNCC Font "&mLetAri",9 Style "NQ" Size 1,50,50
                     DO coLbln
                     IF LEN(ALLTRIM(xfPa))<>0
                          DO coL_fondo
                     ENDIF
                     @mFI0+2.0,mCO0+143 Edit xNFP Font "&mLetAri",9 Style "NQ" Size 1,50,50
           ENDCASE
      CASE wtPo="4"
           DO coL_fondo
           @mFI0+0.5,mCO0+001 Say "Proveedor"        Font "&mLetAri",9 Style "BQ"
           @mFI0+2.0,mCO0+001 Say "Fecha de Ingreso" Font "&mLetAri",9 Style "BQ"
           @mFI0+3.5,mCO0+001 Say "Orden de Compra"  Font "&mLetAri",9 Style "NQ"
           @mFI0+2.0,mCO0+073 Say "Guía de Remisión" Font "&mLetAri",9 Style "NQ"
           @mFI0+3.5,mCO0+073 Say "Pedido"           Font "&mLetAri",9 Style "BQ"
           @mFI0+2.0,mCO0+114 Say "Observaciones:"   Font "&mLetAri",9 Style "BQ"
           IF xsW0=2
                DO coLbln
           ENDIF
           @mFI0+0.5,mCO0+014.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,96,80
           DO coLbln
           @mFI0+2.0,mCO0+022.8 Get  xFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @mFI0+2.0,mCO0+094.3 Get  xSR2 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"      Color ,&mColBlN
           @mFI0+2.0,mCO0+100.2 Get  xREM Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "9999999"  Color ,&mColBlN
           @mFI0+3.5,mCO0+094.3 Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,09.6 Pict "!!!!!!!"  Color ,&mColBlN
           IF mrEs="3"
                @mFI0+2.0,mCO0+132.8 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,66,70
                @mFI0+3.5,mCO0+122.8 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,76,70
           ELSE
                @mFI0+2.0,mCO0+132.8 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                @mFI0+3.5,mCO0+132.8 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
           ENDIF
           IF vsW6=1
                @mFI0+3.5,mCO0+22.8 Get xSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"     Color ,&mColBlN
                @mFI0+3.5,mCO0+28.7 Get xORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999" Color ,&mColBlN
           ELSE
                @mFI0+3.5,mCO0+22.8 Get xSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"     Color Scheme 3
                @mFI0+3.5,mCO0+28.7 Get xORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999" Color Scheme 3
           ENDIF
 ENDCASE
 IF xsW0=1
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 IF wtPo<>"4"
      DO CASE
           CASE vsW6=2
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
           OTHERWISE
                DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vsW6=2 .AND. LEN(ALLTRIM(xtD1))<>0
                DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
           OTHERWISE
                DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vsW6=2
                DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
           OTHERWISE
                DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vsW6=2 .AND. LEN(ALLTRIM(xcCo))<>0
                DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
           OTHERWISE
                DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vsW6=2
                DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
           OTHERWISE
                DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P02_2400c
 DO boT_2400c
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. (xpIg=0 .OR. vsW5=1)
           @iFFS-1.3,mCO0+160.1 Say Space(07)+"V.Unit.Total"    Font "&mLetAri",9 Style "NQ" Size 1,19.5
           @iFFS-1.3,mCO0+180.4 Say Space(08)+"Valor Total"     Font "&mLetAri",9 Style "NQ" Size 1,19.5
      CASE mrEs="3" .AND. vsW5=2
           @iFFS-1.3,mCO0+160.1 Say Space(02)+"Prec.Unit.c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,19.5
           @iFFS-1.3,mCO0+180.4 Say Space(05)+"Precio Total"    Font "&mLetAri",9 Style "NQ" Size 1,19.5
      CASE mrEs="4" .AND. (xpIg=0 .OR. vsW5=1)
           @iFFS-1.3,mCO0+206.1 Say Space(08)+"V.Unit.Total"    Font "&mLetAri",9 Style "NQ" Size 1,22.3
           @iFFS-1.3,mCO0+229.4 Say Space(08)+"Valor Total"     Font "&mLetAri",9 Style "NQ" Size 1,22.3
      CASE mrEs="4" .AND. vsW5=2
           @iFFS-1.3,mCO0+206.1 Say Space(04)+"Prec.Unit.c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,22.3
           @iFFS-1.3,mCO0+229.4 Say Space(07)+"Precio Total"    Font "&mLetAri",9 Style "NQ" Size 1,22.3
      CASE xpIg=0 .OR. vsW5=1
           @iFFS-1.3,mCO0+223.0 Say Space(08)+"V.Unit.Total"    Font "&mLetAri",9 Style "NQ" Size 1,22.3
           @iFFS-1.3,mCO0+246.3 Say Space(08)+"Valor Total"     Font "&mLetAri",9 Style "NQ" Size 1,22.3
      CASE vsW5=2
           @iFFS-1.3,mCO0+223.0 Say Space(04)+"Prec.Unit.c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,22.3
           @iFFS-1.3,mCO0+246.3 Say Space(07)+"Precio Total"    Font "&mLetAri",9 Style "NQ" Size 1,22.3
 ENDCASE
 DO coLsc7
 DO CASE
      CASE mrEs="3" .AND. vsW5=1
           @fFFS+1.4,mCO0+180.1 Say xVAL Font "&mLetAri",9 Style "BQ" Size 1,16.9 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW5=2
           @fFFS+1.4,mCO0+180.1 Say xNT2 Font "&mLetAri",9 Style "BQ" Size 1,16.9 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW5=1
           @fFFS+1.4,mCO0+229.3 Say xVAL Font "&mLetAri",9 Style "BQ" Size 1,18.7 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW5=2
           @fFFS+1.4,mCO0+229.3 Say xNT2 Font "&mLetAri",9 Style "BQ" Size 1,18.7 Pict "999,999,999.99"
      CASE vsW5=1
           @fFFS+1.4,mCO0+246.3 Say xVAL Font "&mLetAri",9 Style "BQ" Size 1,18.7 Pict "999,999,999.99"
      CASE vsW5=2
           @fFFS+1.4,mCO0+246.3 Say xNT2 Font "&mLetAri",9 Style "BQ" Size 1,18.7 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE P03_2400c
 DO coL_beige
 IF vsW6=2
      DO coLsc3
 ENDIF
 @fFFS+2.8,vCL4+061.3 Say "  Neto:"  Font "&mLetRom",12 Style "BQ" Size 1,07.3
 @fFFS+2.8,vCL4+091.8 Say "  IGV:"   Font "&mLetRom",12 Style "BQ" Size 1,06.8
 @fFFS+2.8,vCL4+121.6 Say "  Red:"   Font "&mLetRom",12 Style "BQ" Size 1,06.5
 @fFFS+2.8,vCL4+144.7 Say "  Total:" Font "&mLetRom",12 Style "BQ" Size 1,07.2
 DO coL_fondo
 IF vsW6=2
      DO coLsc3
 ENDIF
 @fFFS+2.8,vCL4+071.5 Say xNET Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99,999,999.99"
 @fFFS+2.8,vCL4+101.3 Say xIGV Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99,999,999.99"
 @fFFS+2.8,vCL4+130.9 Say xRED Font "&mLetRom",12 Style "BQ" Size 1,09.2 Pict "9,999.99"
 @fFFS+2.8,vCL4+160.5 Say xTOT Font "&mLetRom",12 Style "BQ" Size 1,13.8 Pict "99,999,999.99"
ENDPROC
*
PROCEDURE Bot_2400c
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifFs-3.1, mcO0+muCo-26.4
 @iFFS-2.9,mCO0+mUCO-24.4 Say Str(vSW5,1,0)+"/2" Font "&mLetRom",9 Style "BT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tdo_2400c
 = INKEY(0.01)
 SELECT tiPo_doc
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Documentos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLbln
      STORE f9311tdo TO xtD1
      DO CASE
           CASE mrEs="3"
                @mFI0+6,mCO0+52.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
           OTHERWISE
                @mFI0+6,mCO0+60.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
      ENDCASE
      READ TIMEOUT 0.01
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE LEN(ALLTRIM(xcCo))<>0
           DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
      OTHERWISE
           DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cco_2400c
 = INKEY(0.01)
 SELECT ccOstos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Centros de Costos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLsc3
      STORE f9318cco TO xcCo
      STORE f9318ncc TO xnCc
      @mFI0+7,mCO0+1 Edit xNCC Font "&mLetAri",9 Style "NQ" Size 1,mCO0,50
      READ TIMEOUT 0.01
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE LEN(ALLTRIM(xcCo))<>0
           DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
      OTHERWISE
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Fpa_2400c
 = INKEY(0.01)
 SELECT fpAgo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLsc3
      STORE f9112fpa TO xfPa
      STORE f9112nfp TO xnFp
      STORE f9112dia TO xdIa
      @mFI0+9.6,mCO0+1 Edit xNFP Font "&mLetAri",9 Style "NQ" Size 1,mCO0,50
      READ TIMEOUT 0.01
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_2400c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND.  ;
           mcCc<=3 .AND. wtPo<>"4"
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+51 .AND. vsW6=1
           STORE k_F3 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4 .AND. vsW6=1
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.2  ;
           .AND. mcCc<=vcB1+3.8 .AND. vsW6=2
           STORE k_F4 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.2  ;
           .AND. mcCc<=vcB2+3.8 .AND. vsW6=2
           DO coLbln
           STORE SPACE(02) TO xtD1
           DO CASE
                CASE mrEs="3"
                     @mFI0+6,mCO0+52.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
                OTHERWISE
                     @mFI0+6,mCO0+60.7 Edit xTD1 Font "&mLetAri",9 Style "NQ" Size 1,4,2
           ENDCASE
           READ TIMEOUT 0.01
           DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.2  ;
           .AND. mcCc<=vcB3+3.8 .AND. vsW6=2
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. mcCc>=vcB4-0.2  ;
           .AND. mcCc<=vcB4+3.8 .AND. vsW6=2
           DO coLsc3
           STORE SPACE(02) TO xcCo, xnCc
           @mFI0+7,mCO0+1 Edit xNCC Font "&mLetAri",9 Style "NQ" Size 1,mCO0,50
           READ TIMEOUT 0.01
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. mcCc>=vcB5-0.2  ;
           .AND. mcCc<=vcB5+3.8 .AND. vsW6=2
           STORE k_F6 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo .AND. vsW6=1
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo .AND. vsW6=1
           DO diS_2400c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f2401ite TO vrEc
           DO diS_2400c WITH "R"
      CASE mfIl>=mfI0+5.9 .AND. mfIl<=mfI0+7.143 .AND. viTe<>1 .AND. mcCc>= ;
           mcO0+0.7 .AND. mcCc<=mcO0+35.7 .AND. vsW6=2
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.428 .AND. mfIl<=mfI0+8.643 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+35.7 .AND. vsW6=2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.0 .AND. mfIl<=mfI0+10.143 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+35.7 .AND. vsW6=2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.928 .AND. mfIl<=mfI0+7.143 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+66.6 .AND. mcCc<=mcO0+86.8 .AND. vsW6=2 .AND. mrEs="3"
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.928 .AND. mfIl<=mfI0+7.143 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+87.6 .AND. mcCc<=mcO0+108.0 .AND. vsW6=2 .AND. mrEs="3"
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.428 .AND. mfIl<=mfI0+8.643 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+66.4 .AND. mcCc<=mcO0+71.2 .AND. vsW6=2 .AND. mrEs="3"
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.428 .AND. mfIl<=mfI0+8.643 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+72.4 .AND. mcCc<=mcO0+82.8 .AND. vsW6=2 .AND. mrEs="3"
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.857 .AND. mfIl<=mfI0+6.210 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+120.7 .AND. mcCc<=mcO0+153.5 .AND. vsW6=2 .AND. mrEs="3"
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.857 .AND. mfIl<=mfI0+6.210 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+140.4 .AND. mcCc<=mcO0+182.2 .AND. vsW6=2 .AND. mrEs="3"
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.357 .AND. mfIl<=mfI0+7.850 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+116.4 .AND. mcCc<=mcO0+197.6 .AND. vsW6=2 .AND. mrEs="3"
           STORE 10 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.850 .AND. mfIl<=mfI0+9.286 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+116.4 .AND. mcCc<=mcO0+197.6 .AND. vsW6=2 .AND. mrEs="3"
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+2.557 .AND. mfIl<=ffFs+4.343 .AND. viTe<>12 .AND.  ;
           mcCc>=vcL4+60.9 .AND. mcCc<=vcL4+91.5 .AND. vsW6=2
           STORE 12 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+2.557 .AND. mfIl<=ffFs+4.343 .AND. viTe<>13 .AND.  ;
           mcCc>=vcL4+91.5 .AND. mcCc<=vcL4+121.3 .AND. vsW6=2
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+2.557 .AND. mfIl<=ffFs+4.343 .AND. viTe<>14 .AND.  ;
           mcCc>=vcL4+121.3 .AND. mcCc<=vcL4+144.3 .AND. vsW6=2
           STORE 14 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+2.557 .AND. mfIl<=ffFs+4.343 .AND. viTe<>15 .AND.  ;
           mcCc>=vcL4+144.3 .AND. mcCc<=vcL4+181.5 .AND. vsW6=2
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+05.9 .AND. mfIl<=mfI0+7.143 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+74.3 .AND. mcCc<=mcO0+94.7 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+05.9 .AND. mfIl<=mfI0+7.143 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+95.7 .AND. mcCc<=mcO0+116.1 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.428 .AND. mfIl<=mfI0+8.643 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+74.3 .AND. mcCc<=mcO0+79.1 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.428 .AND. mfIl<=mfI0+8.643 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+80.5 .AND. mcCc<=mcO0+90.7 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.928 .AND. mfIl<=mfI0+6.143 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+120.3 .AND. mcCc<=mcO0+153.3 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.928 .AND. mfIl<=mfI0+6.143 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+159.3 .AND. mcCc<=mcO0+202.5 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.428 .AND. mfIl<=mfI0+7.643 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+120.3 .AND. mcCc<=mcO0+233.5 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 10 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.0 .AND. mfIl<=mfI0+9.143 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+120.3 .AND. mcCc<=mcO0+233.5 .AND. vsW6=2 .AND. mrEs>"3"
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400c
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2400c
 STORE vrEc TO crEc
 DO rs1_2400b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_2400c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2400c
 STORE vrEc TO crEc
 IF vsW4=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p02_2400a
 DO p00_2400c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f2401ite=vrEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vrEc TO irEc, crEc
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 DO paN_2400c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_2400c WITH "R"
ENDPROC
*
PROCEDURE Hl1_2400c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+1, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+2, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 28 SAY ":" STYLE "BT"
 @ pfIl+7, 28 SAY ":" STYLE "BT"
 @ pfIl+8, 28 SAY ":" STYLE "BT"
 @ pfIl+6, 10 SAY "ESC" STYLE "BT"
 @ pfIl+7, 10 SAY "F10" STYLE "BT"
 @ pfIl+8, 10 SAY "F1" STYLE "BT"
 @ pfIl+6, 30 SAY "Regresar a Cabecera"
 @ pfIl+7, 30 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 30 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF wtPo="2" .AND. xeSt="2"
      @ pfIl, 28 SAY ":" STYLE "BT"
      @ pfIl, 10 SAY "F2" STYLE "BT"
      @ pfIl, 30 SAY "Modificar Cabecera de Documento Procesado"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 28 SAY ":" STYLE "BT"
 @ pfIl, 10 SAY "F3" STYLE "BT"
 @ pfIl, 30 SAY "Ampliar Detalle y viceversa"
 STORE pfIl+1 TO pfIl
 IF wtPo<>"4"
      @ pfIl, 28 SAY ":" STYLE "BT"
      @ pfIl, 10 SAY "F8" STYLE "BT"
      @ pfIl, 30 SAY "Pasar Compra a Excel"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 28 SAY ":" STYLE "BT"
 @ pfIl+1, 28 SAY ":" STYLE "BT"
 @ pfIl+0, 10 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, 10 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+0, 30 SAY "Línea inferior"
 @ pfIl+1, 30 SAY "Línea superior"
 STORE pfIl+2 TO pfIl
 IF xiGv<>0 .AND. wtPo<>"4"
      @ pfIl+0, 28 SAY ":" STYLE "BT"
      @ pfIl+1, 28 SAY ":" STYLE "BT"
      @ pfIl+0, 10 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 10 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 30 SAY "Ver ítems c/IGV o s/IGV"
      @ pfIl+1, 30 SAY "Ver ítems c/IGV o s/IGV"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 28 SAY ":" STYLE "BT"
 @ pfIl+1, 28 SAY ":" STYLE "BT"
 @ pfIl+2, 28 SAY ":" STYLE "BT"
 @ pfIl+3, 28 SAY ":" STYLE "BT"
 @ pfIl+4, 28 SAY ":" STYLE "BT"
 @ pfIl+5, 28 SAY ":" STYLE "BT"
 @ pfIl+0, 10 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 10 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 10 SAY "HOME" STYLE "BT"
 @ pfIl+3, 10 SAY "END" STYLE "BT"
 @ pfIl+4, 10 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 10 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 30 SAY "Página siguiente"
 @ pfIl+1, 30 SAY "Página anterior"
 @ pfIl+2, 30 SAY "Primera línea"
 @ pfIl+3, 30 SAY "Última línea"
 @ pfIl+4, 30 SAY "Ver Detalles"
 DO CASE
      CASE mpRf(18,2)="1"
           @ pfIl+5, 30 SAY "Imprime Guía de Compra o Etiquetas"
      OTHERWISE
           @ pfIl+5, 30 SAY "Imprime Guía de Compra"
 ENDCASE
 STORE pfIl+6 TO pfIl
 IF xeSt="2" .AND. wtPo="2" .AND. vsW6=1
      @ pfIl+0, 28 SAY ":" STYLE "BT"
      @ pfIl+0, 10 SAY "ALT S" STYLE "BT"
      @ pfIl+0, 30 SAY "DESPROCESAR (Se Recomienda Arreglo de "
      @ pfIl+1, 30 SAY "Ctas x Pagar despues de volver a Procesar"
      @ pfIl+2, 30 SAY "este documento)"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2400c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Aquí se pueden modificar estos datos sin dañar el Contenido del Docu-"
 @ pfIl+01, 02 SAY  ;
   "mento una vez que ya fue procesado. Para no entrar aquí hay que CE-  "
 @ pfIl+02, 02 SAY  ;
   "RRAR el documento.                                                   "
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
 @ pfIl+20, 29 SAY ":" STYLE "BT"
 @ pfIl+21, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F2" STYLE "BT"
 @ pfIl+10, 11 SAY "F4" STYLE "BT"
 @ pfIl+11, 11 SAY "F5" STYLE "BT"
 @ pfIl+12, 11 SAY "F6" STYLE "BT"
 @ pfIl+13, 11 SAY "TAB" STYLE "BT"
 @ pfIl+14, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+16, 11 SAY "CTRL -->" STYLE "BT"
 @ pfIl+17, 11 SAY "CTRL <--" STYLE "BT"
 @ pfIl+18, 11 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+19, 11 SAY "CTRL END" STYLE "BT"
 @ pfIl+20, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+21, 11 SAY "ALT C" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Salir de Modificación de Cabecera"
 @ pfIl+10, 31 SAY "Cambiar Tipo de Documento"
 @ pfIl+11, 31 SAY "Cambiar Centro de Costos"
 @ pfIl+12, 31 SAY "Cambiar Formas de Pago"
 @ pfIl+13, 31 SAY "Grabar"
 @ pfIl+14, 31 SAY "Campo inferior"
 @ pfIl+15, 31 SAY "Campo superior"
 @ pfIl+16, 31 SAY "Campo derecho"
 @ pfIl+17, 31 SAY "Campo izquierdo"
 @ pfIl+18, 31 SAY "Primer Campo"
 @ pfIl+19, 31 SAY "Último Campo"
 @ pfIl+20, 31 SAY "Siguiente Campo"
 @ pfIl+21, 31 SAY "Cambiar Código, Cantidad y Precio x Otro"
 @ pfIl+22, 31 SAY "Si los totales no coinciden genera otra Compra"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
