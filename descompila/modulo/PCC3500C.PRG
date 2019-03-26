 PARAMETER ppRg
 = INKEY(0.01)
 DO p00_3500c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 GOTO TOP
 DO paN_3500c IN PCC3500C
 STORE ifFs TO vfFs
 DO muE_3500c IN PCC3500C WITH "i", "v"
 DO seE_3500c IN PCC3500C WITH "v"
 DO diS_3500c IN PCC3500C WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3500c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3500c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3500c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Detalle de Pagos de "+vtDo+":"+vsEr+ ;
                   "-"+vdOc, "Listado", 19
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,04)).meRge
                pxLs.raNge(pxLs.ceLls(3,18), pxLs.ceLls(3,19)).meRge
                pxLs.ceLls(3, 01).vaLue = "Voucher"
                pxLs.ceLls(3, 05).vaLue = "Fecha"
                pxLs.ceLls(3, 06).vaLue = "Glosa"
                pxLs.ceLls(3, 07).vaLue = "Caj/Banc"
                pxLs.ceLls(3, 08).vaLue = "Clase"
                pxLs.ceLls(3, 09).vaLue = "Tipo"
                pxLs.ceLls(3, 11).vaLue = "Banco"
                pxLs.ceLls(3, 12).vaLue = "Cuenta"
                pxLs.ceLls(3, 13).vaLue = "Cheque"
                pxLs.ceLls(3, 14).vaLue = "T/C"
                pxLs.ceLls(3, 15).vaLue = "Mon"
                pxLs.ceLls(3, 16).vaLue = "Pago"
                pxLs.ceLls(3, 17).vaLue = "Recibo"
                pxLs.ceLls(3, 18).vaLue = "Letra"
                pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,10)).meRge
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(13)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(17),  ;
                          pxLs.coLumns(19)).nuMberformat = "@"
                pxLs.coLumns(14).nuMberformat = "###,###,###,##0.00"
                pxLs.coLumns(15).nuMberformat = "@"
                pxLs.coLumns(16).nuMberformat = "###,###,###,##0.00"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(7,19)).inSert
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(3,04)).meRge
                pxLs.raNge(pxLs.ceLls(4,01), pxLs.ceLls(4,04)).meRge
                pxLs.raNge(pxLs.ceLls(5,01), pxLs.ceLls(5,04)).meRge
                pxLs.raNge(pxLs.ceLls(6,01), pxLs.ceLls(6,04)).meRge
                pxLs.raNge(pxLs.ceLls(3,07), pxLs.ceLls(3,08)).meRge
                pxLs.raNge(pxLs.ceLls(4,07), pxLs.ceLls(4,08)).meRge
                pxLs.raNge(pxLs.ceLls(5,07), pxLs.ceLls(5,08)).meRge
                pxLs.raNge(pxLs.ceLls(6,07), pxLs.ceLls(6,08)).meRge
                pxLs.raNge(pxLs.ceLls(7,07), pxLs.ceLls(7,08)).meRge
                pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,11)).meRge
                pxLs.raNge(pxLs.ceLls(4,09), pxLs.ceLls(4,11)).meRge
                pxLs.ceLls(3, 01).vaLue = "Documento"
                pxLs.ceLls(4, 01).vaLue = "Emisión"
                pxLs.ceLls(5, 01).vaLue = "Vencimiento"
                pxLs.ceLls(6, 01).vaLue = "Vendedor"
                pxLs.ceLls(3, 07).vaLue = "Cliente Titular"
                pxLs.ceLls(4, 07).vaLue = "Cliente Complemento"
                pxLs.ceLls(5, 07).vaLue = "Total Documento "+vsIg
                pxLs.ceLls(6, 07).vaLue = "A/C"
                pxLs.ceLls(7, 07).vaLue = "Saldo"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,01)).foNt.naMe =  ;
                          "Times New Roman"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,01)).foNt.siZe = 12
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,01)).foNt.boLd = .T.
                pxLs.raNge(pxLs.ceLls(3,07), pxLs.ceLls(7,07)).foNt.naMe =  ;
                          "Times New Roman"
                pxLs.raNge(pxLs.ceLls(3,07), pxLs.ceLls(7,07)).foNt.siZe = 12
                pxLs.raNge(pxLs.ceLls(3,07), pxLs.ceLls(7,07)).foNt.boLd = .T.
                DO CASE
                     CASE vsW1=01
                          SELECT peNd_vtas
                     CASE vsW1=02
                          SELECT coPia
                ENDCASE
                pxLs.ceLls(3, 5).vaLue = vtDo+":"+vsEr+"-"+vdOc
                pxLs.ceLls(4, 5).vaLue = DTOC(f3500fem)
                pxLs.ceLls(5, 5).vaLue = DTOC(f3500fve)
                pxLs.ceLls(6, 5).vaLue = f3500nve
                pxLs.ceLls(3, 9).vaLue = f3500nti
                pxLs.ceLls(4, 9).vaLue = f3500nom
                pxLs.ceLls(5, 9).vaLue = f3500tot
                pxLs.ceLls(6, 9).vaLue = f3500acu
                pxLs.ceLls(7, 9).vaLue = f3500tot+f3500int-f3500acu
                pxLs.raNge(pxLs.ceLls(5,9), pxLs.ceLls(7,9)).nuMberformat =  ;
                          "###,###,###,##0.00"
                SELECT paGos
                GOTO TOP
                STORE 9 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = ftM2ano
                     pxLs.ceLls(viT1, 02).vaLue = ftM2mes
                     pxLs.ceLls(viT1, 03).vaLue = ftM2ser
                     pxLs.ceLls(viT1, 04).vaLue = ftM2num
                     pxLs.ceLls(viT1, 05).vaLue = ftM2dia+"/"+ftM2mes+"/"+ ;
                               ftM2ano
                     pxLs.ceLls(viT1, 06).vaLue = ftM2glo
                     DO CASE
                          CASE ftM2ttt="1"
                               pxLs.ceLls(viT1, 07).vaLue = "Caja"
                          CASE ftM2ttt="2"
                               pxLs.ceLls(viT1, 07).vaLue = "Bancos"
                     ENDCASE
                     DO CASE
                          CASE ftM2ttt="1" .AND. ftM2tpo=1
                               pxLs.ceLls(viT1, 08).vaLue = "Por Rendir"
                          CASE ftM2ttt="1" .AND. ftM2tpo=2
                               pxLs.ceLls(viT1, 08).vaLue = "Varios"
                          CASE ftM2ttt="1" .AND. ftM2tpo=3
                               pxLs.ceLls(viT1, 08).vaLue = "Cobro de Ventas"
                          CASE ftM2ttt="1" .AND. ftM2tpo=4
                               pxLs.ceLls(viT1, 08).vaLue =  ;
                                "Canje/Renovación de Letras"
                          CASE ftM2ttt="1" .AND. ftM2tpo=5
                               pxLs.ceLls(viT1, 08).vaLue =  ;
                                "Ingreso a Caja con Cheque"
                          CASE ftM2ttt="1" .AND. ftM2tpo=6
                               pxLs.ceLls(viT1, 08).vaLue =  ;
                                "Aplicación de Notas de Crédito"
                          CASE ftM2ttt="1" .AND. ftM2tpo=7
                               pxLs.ceLls(viT1, 08).vaLue =  ;
                                "Canje de otros documentos"
                          CASE ftM2ttt="2" .AND. ftM2tpo=1
                               pxLs.ceLls(viT1, 08).vaLue = "Por Rendir"
                          CASE ftM2ttt="2" .AND. ftM2tpo=2
                               pxLs.ceLls(viT1, 08).vaLue = "Ingresos Varios"
                          CASE ftM2ttt="2" .AND. ftM2tpo=3
                               pxLs.ceLls(viT1, 08).vaLue =  ;
                                "Notas de Abono del Banco"
                          CASE ftM2ttt="2" .AND. ftM2tpo=4
                               pxLs.ceLls(viT1, 08).vaLue = "Cobro de Ventas"
                     ENDCASE
                     pxLs.raNge(pxLs.ceLls(viT1,09), pxLs.ceLls(viT1,10)).meRge
                     pxLs.ceLls(viT1, 09).vaLue = ftM2nti
                     pxLs.ceLls(viT1, 11).vaLue = ftM2nba
                     pxLs.ceLls(viT1, 12).vaLue = ftM2nct
                     pxLs.ceLls(viT1, 13).vaLue = ftM2che
                     pxLs.ceLls(viT1, 14).vaLue = ftM2tca
                     pxLs.ceLls(viT1, 16).vaLue = ftM2pag
                     pxLs.ceLls(viT1, 17).vaLue = ftM2rcb
                     pxLs.ceLls(viT1, 18).vaLue = ftM2srl
                     pxLs.ceLls(viT1, 19).vaLue = ftM2let
                     IF ftM2mon=1
                          pxLs.ceLls(viT1, 15).vaLue = "S/."
                     ELSE
                          pxLs.ceLls(viT1, 15).vaLue = "US$"
                     ENDIF
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SELECT paGos
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                SELECT paGos
                DO seE_3500c IN PCC3500C WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3500c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT paGos
                DO seE_3500c IN PCC3500C WITH "v"
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
                                    DO paN_3500c IN PCC3500C
                               OTHERWISE
                                    DO seE_3500c IN PCC3500C WITH "v"
                                    DO diS_3500c IN PCC3500C WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3500c IN PCC3500C WITH "i", "v"
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
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
                                    DO paN_3500c IN PCC3500C
                               OTHERWISE
                                    DO seE_3500c IN PCC3500C WITH "v"
                                    DO diS_3500c IN PCC3500C WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3500c IN PCC3500C WITH "u", "v"
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "N"
                          SKIP
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=uaN1+umE1+udI1+ ;
                             utTt+usR1+unUm
                               DO coL_fondo
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_3500c IN PCC3500C WITH ifFs, ffFs+1
                               DO li1_3500c IN PCC3500C WITH ifFs, ffFs+1
                               DO muE_3500c IN PCC3500C WITH "F", "u"
                               DO muE_3500c IN PCC3500C WITH "F", "v"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3500c IN PCC3500C WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3500c IN PCC3500C WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "N"
                          SKIP -1
                          IF vaN1+vmE1+vdI1+vtTt+vsR1+vnUm=iaN1+imE1+idI1+ ;
                             itTt+isR1+inUm
                               DO coL_fondo
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_3500c IN PCC3500C WITH ifFs, ffFs+1
                               DO li1_3500c IN PCC3500C WITH ifFs, ffFs+1
                               DO muE_3500c IN PCC3500C WITH "F", "i"
                               DO muE_3500c IN PCC3500C WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3500c IN PCC3500C WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3500c IN PCC3500C WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3500c IN PCC3500C WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3500c IN PCC3500C
                          STORE ifFs TO vfFs
                          DO muE_3500c IN PCC3500C WITH "i", "v"
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3500c IN PCC3500C WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3500c IN PCC3500C
                          STORE ifFs TO vfFs
                          DO muE_3500c IN PCC3500C WITH "i", "v"
                          DO seE_3500c IN PCC3500C WITH "v"
                          DO diS_3500c IN PCC3500C WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3500c IN PCC3500C WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3500c
 STORE ifFs TO vfFs, ufFs
 DO muE_3500c IN PCC3500C WITH "F", "v"
 DO muE_3500c IN PCC3500C WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_3500c IN PCC3500C WITH "N"
      DO muE_3500c IN PCC3500C WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo
      DO liN_3500c IN PCC3500C WITH ufFs+1, ffFs+1
      DO li1_3500c IN PCC3500C WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3500c
 PARAMETER ptIp
 PRIVATE psIg
 DO CASE
      CASE ftM2mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "US$" TO psIg
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc3
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFFS,mCO0+28.8 Say FTM2GLO                 Font "&mLetAri",9 Style "NQ" Size 1,55.5 Pict "@S58"
           @vFFS,vCLA      Say FTM2NBA                 Font "&mLetAri",9 Style "NQ" Size 1,25.4 Pict "@S28"
           @vFFS,vCLB      Say FTM2NCT                 Font "&mLetAri",9 Style "NQ" Size 1,28.4 Pict "@S32"
           DO CASE
                CASE ppRg="3500" .OR. ppRg="3501"
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
                OTHERWISE
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,30.1 Pict "@S33"
           ENDCASE
      CASE mrEs="4"
           @vFFS,mCO0+28.8 Say FTM2GLO                 Font "&mLetAri",9 Style "NQ" Size 1,75.5 Pict "@S78"
           @vFFS,vCLA      Say FTM2NBA                 Font "&mLetAri",9 Style "NQ" Size 1,45.3 Pict "@S48"
           @vFFS,vCLB      Say FTM2NCT                 Font "&mLetAri",9 Style "NQ" Size 1,40.3 Pict "@S43"
           DO CASE
                CASE ppRg="3500" .OR. ppRg="3501"
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,28.1 Pict "@S31"
                OTHERWISE
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,30.1 Pict "@S33"
           ENDCASE
      OTHERWISE
           @vFFS,mCO0+28.8 Say FTM2GLO                 Font "&mLetAri",9 Style "NQ" Size 1,85.7 Pict "@S88"
           @vFFS,vCLA      Say FTM2NBA                 Font "&mLetAri",9 Style "NQ" Size 1,45.3 Pict "@S48"
           @vFFS,vCLB      Say FTM2NCT                 Font "&mLetAri",9 Style "NQ" Size 1,40.3 Pict "@S43"
           DO CASE
                CASE ppRg="3500" .OR. ppRg="3501"
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,35.1 Pict "@S38"
                OTHERWISE
                     @vFFS,vCLC Say FTM2CHE              Font "&mLetAri",9 Style "NQ" Size 1,37.1 Pict "@S40"
           ENDCASE
 ENDCASE
 @vFFS,mCO0+00.0 Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFFS,mCO0+13.4 Say FTM2SER                         Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,mCO0+18.2 Say FTM2NUM                         Font "&mLetAri",9 Style "NQ" Size 1,10.0
 @vFFS,vCLD      Say FTM2TCA                         Font "&mLetAri",9 Style "NQ" Size 1,08.5 Pict "99.999"
 @vFFS,vCLE      Say pSIG                            Font "&mLetAri",9 Style "NQ" Size 1,05.0
 @vFFS,vCLF      Say FTM2PAG                         Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "9999,999.99"
 DO coL_beige
 DO CASE
      CASE ftM2ttt="1"
           @fFFS+1.6,mCO0 Say "Caja"   Font "&mLetRom",12 Style "BQ" Size 1,8
      CASE ftM2ttt="2"
           @fFFS+1.6,mCO0 Say "Bancos" Font "&mLetRom",12 Style "BQ" Size 1,8
 ENDCASE
 DO CASE
      CASE ftM2ttt="1" .AND. ftM2tpo=1
           @fFFS+3,mCO0 Say "Por Rendir"                     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=2
           @fFFS+3,mCO0 Say "Varios"                         Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=3
           @fFFS+3,mCO0 Say "Cobro de Ventas"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=4
           @fFFS+3,mCO0 Say "Canje/Renovación de Letras"     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=5
           @fFFS+3,mCO0 Say "Ingreso a Caja con Cheque"      Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=6
           @fFFS+3,mCO0 Say "Aplicación de Notas de Crédito" Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="1" .AND. ftM2tpo=7
           @fFFS+3,mCO0 Say "Canje de otros documentos"      Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=1
           @fFFS+3,mCO0 Say "Por Rendir"                     Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=2
           @fFFS+3,mCO0 Say "Ingresos Varios"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=3
           @fFFS+3,mCO0 Say "Notas de Abono del Banco"       Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
      CASE ftM2ttt="2" .AND. ftM2tpo=4
           @fFFS+3,mCO0 Say "Cobro de Ventas"                Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S35"
 ENDCASE
 @fFFS+3.0,mCO0+69 Say "["+FTM2RCC+"]"             Font "&mLetRom",11 Style "NQ" Size 1,10
 @fFFS+3.0,mCO0+93 Say "["+FTM2SRL+"-"+FTM2LET+"]" Font "&mLetRom",11 Style "NQ" Size 1,14.2
 @fFFS+4.3,mCO0    Say FTM2TIP+"-"+FTM2NTI         Font "&mLetRom",11 Style "NQ" Size 1,40 Pict "@S42"
 @fFFS+4.3,mCO0+69 Say "["+FTM2RCB+"]"             Font "&mLetRom",11 Style "NQ" Size 1,10
 RELEASE psIg
ENDPROC
*
PROCEDURE Lin_3500c
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, mcO0+12.8 TO pfIn, mcO0+12.8
 @ piNi, mcO0+28.4 TO pfIn, mcO0+28.4
 @ piNi, vcLa-0.4 TO pfIn, vcLa-0.4
 @ piNi, vcLb-0.4 TO pfIn, vcLb-0.4
 @ piNi, vcLc-0.4 TO pfIn, vcLc-0.4
 @ piNi, vcLd-0.4 TO pfIn, vcLd-0.4
 @ piNi, vcLe-0.4 TO pfIn, vcLe-0.4
ENDPROC
*
PROCEDURE Li1_3500c
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, mcO0+17.7 TO pfIn, mcO0+17.7
 @ piNi, vcLf-0.4 TO pfIn, vcLf-0.4
ENDPROC
*
PROCEDURE P00_3500c
 PRIVATE pfIl, pcL1, pcL2, ptM1, ptM2, pnM1, pnM2
 DO CASE
      CASE vsW1=01
           SELECT peNd_vtas
      CASE vsW1=02
           SELECT coPia
 ENDCASE
 DO CASE
      CASE f3500mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 IF miNt=0
      STORE ifFs-07 TO pfIl
 ELSE
      STORE ifFs-10 TO pfIl
 ENDIF
 DO CASE
      CASE mrEs="3"
           STORE mcO0+095 TO pcL1
           STORE mcO0+165 TO pcL2
           STORE 67 TO ptM1
           STORE 49 TO ptM2
      OTHERWISE
           STORE mcO0+105 TO pcL1
           STORE mcO0+188 TO pcL2
           STORE 67 TO ptM1
           STORE 49 TO ptM2
 ENDCASE
 STORE "@S"+STR(INT(ptM1+3), 0) TO pnM1
 STORE "@S"+STR(INT(ptM2+3), 0) TO pnM2
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_beige
 DO cuAdro WITH pfIl, mcO0, ifFs-2, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH ffFs+1.8, mcO0, ffFs+5.8, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @pFIL+0.5,mCO0+000.0 Say "Documento"                Font "&mLetAri",9 Style "BQ"
 @pFIL+2.0,mCO0+000.0 Say "Cliente Titular"          Font "&mLetAri",9 Style "BQ"
 @pFIL+3.5,mCO0+000.0 Say "Cliente Complemento"      Font "&mLetAri",9 Style "BQ"
 @pFIL+0.5,pCL1+000.0 Say "Emisión"                  Font "&mLetAri",9 Style "BQ"
 @pFIL+2.0,pCL1+000.0 Say "Vencimiento"              Font "&mLetAri",9 Style "BQ"
 @pFIL+3.5,pCL1+000.0 Say "Vendedor"                 Font "&mLetAri",9 Style "BQ"
 @pFIL+0.5,mCO0+024.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+2.0,mCO0+024.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+3.5,mCO0+024.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+0.5,pCL1+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+2.0,pCL1+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+3.5,pCL1+014.5 Say ":"                        Font "&mLetAri",9 Style "BQ"
 @pFIL+0.5,mCO0+025.5 Say vTDO+":"+vSER+"-"+vDOC     Font "&mLetAri",9 Style "NT"
 @pFIL+2.0,mCO0+025.5 Say F3500TIT+"-"+F3500NTI      Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pNM1"
 @pFIL+3.5,mCO0+025.5 Say F3500CLI+"-"+F3500NOM      Font "&mLetAri",9 Style "NQ" Size 1,pTM1 Pict "&pNM1"
 @pFIL+0.5,pCL1+015.5 Say F3500FEM                   Font "&mLetAri",9 Style "NQ"
 @pFIL+2.0,pCL1+015.5 Say F3500FVE                   Font "&mLetAri",9 Style "NQ"
 @pFIL+3.5,pCL1+015.5 Say F3500NVE                   Font "&mLetAri",9 Style "NQ" Size 1,pTM2 Pict "&pNM2"
 DO coL_fonro
 IF miNt=0
      @ pfIl+0.1, pcL2+00 TO pfIl+4.9, pcL2+33 PATTERN 1 COLOR SCHEME 1
      @pFIL+0.5,pCL2+01 Say "Total"                    Font "&mLetAri",9 Style "BT"
      @pFIL+2.0,pCL2+01 Say "A/C"                      Font "&mLetAri",9 Style "BT"
      @pFIL+3.5,pCL2+01 Say "Saldo"                    Font "&mLetAri",9 Style "BT"
      @pFIL+0.5,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+2.0,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+3.5,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+0.5,pCL2+10 Say vSIG                       Font "&mLetAri",9 Style "BQ" Size 1,4
      @pFIL+0.5,pCL2+15 Say F3500TOT                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+2.0,pCL2+15 Say F3500ACU                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+3.5,pCL2+15 Say F3500TOT+F3500INT-F3500ACU Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
 ELSE
      @ pfIl+0.1, pcL2+00 TO pfIl+8.0, pcL2+33 PATTERN 1 COLOR SCHEME 1
      @pFIL+0.5,pCL2+01 Say "Total-1"                  Font "&mLetAri",9 Style "BT"
      @pFIL+2.0,pCL2+01 Say "Intereses"                Font "&mLetAri",9 Style "BT"
      @pFIL+3.5,pCL2+01 Say "Total"                    Font "&mLetAri",9 Style "BT"
      @pFIL+5.0,pCL2+01 Say "A/C"                      Font "&mLetAri",9 Style "BT"
      @pFIL+6.5,pCL2+01 Say "Saldo"                    Font "&mLetAri",9 Style "BT"
      @pFIL+0.5,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+2.0,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+3.5,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+5.0,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+6.5,pCL2+08 Say ":"                        Font "&mLetAri",9 Style "BT"
      @pFIL+0.5,pCL2+10 Say vSIG                       Font "&mLetAri",9 Style "BQ" Size 1,4
      @pFIL+0.5,pCL2+15 Say F3500TOT                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+2.0,pCL2+15 Say F3500INT                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+3.5,pCL2+15 Say F3500TOT+F3500INT          Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+5.0,pCL2+15 Say F3500ACU                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
      @pFIL+6.5,pCL2+15 Say F3500TOT+F3500INT-F3500ACU Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
 ENDIF
 DO coL_fondo
 @ ifFs-1.4, mcO0-0.3 TO ffFs+1.1, mcO0+muCo+0.3 PATTERN 1
 DO coLsc7
 @ ifFs-1.4, mcO0-0.3 TO ifFs-0.1, mcO0+muCo+0.3 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.1, mcO0 TO ffFs+1.1, mcO0+muCo
 DO liN_3500c IN PCC3500C WITH ifFs-1.4, ffFs+1.1
 DO li1_3500c IN PCC3500C WITH ifFs-0.1, ffFs+1.1
 DO coLblz
 @iFFS-1.2,mCO0+02.5 Say "Fecha"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+15.3 Say "Voucher" Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,mCO0+29.5 Say "Glosa"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,vCLA+00.3 Say "Banco"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,vCLB+00.3 Say "Cuenta"  Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,vCLC+00.3 Say "Cheque"  Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,vCLD+02.0 Say "T/C"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.2,vCLF+01.1 Say "Pago"    Font "&mLetAri",9 Style "BT"
 DO coLsc7
 @ ffFs+1.1, vcL6 TO ffFs+2.6, vcL6+52.2 PATTERN 1 COLOR 
 @ ffFs+1.1, vcL6+25 TO ffFs+2.6, vcL6+25.0
 @fFFS+1.3,vCL6+01.2 Say "S/." Font "&mLetAri",9 Style "BQ"
 @fFFS+1.3,vCL6+26.1 Say "US$" Font "&mLetAri",9 Style "BQ"
 @fFFS+1.3,vCL6+04.3 Say vPA1  Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFFS+1.3,vCL6+31.0 Say vPA2  Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
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
 RELEASE pfIl, pcL1, pcL2, ptM1, ptM2, pnM1, pnM2
ENDPROC
*
PROCEDURE Res_3500c
 DO muE_3500c IN PCC3500C WITH "v", "c"
 DO CASE
      CASE ppRg="3500"
           DO reS_3500b
      CASE ppRg="3501"
           DO reS_3501b
      CASE ppRg="3502"
           DO reS_3502c
      CASE ppRg="3503"
           DO reS_3502c
      CASE ppRg="3504"
           DO reS_3502c
      CASE ppRg="3505"
           DO reS_3502c
      CASE ppRg="3506"
           DO reS_3502c
      CASE ppRg="3507"
           DO reS_3502c
      CASE ppRg="3508"
           DO reS_3502c
      CASE ppRg="3509"
           DO reS_3502c
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 DO p00_3500c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT paGos
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO seE_3500c IN PCC3500C WITH "i"
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
      DO muE_3500c IN PCC3500C WITH "v", "c"
      DO muE_3500c IN PCC3500C WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_3500c IN PCC3500C WITH "i"
 DO paN_3500c IN PCC3500C
 STORE cfFs TO vfFs
 DO muE_3500c IN PCC3500C WITH "c", "v"
 DO seE_3500c IN PCC3500C WITH "v"
 DO diS_3500c IN PCC3500C WITH "R"
ENDPROC
*
PROCEDURE Imp_3500c
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN MODSET
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
 DO reP_3500c IN PCC3500C
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3500c
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
      CASE mvIs=1
           STORE 94 TO ptAm
           DO npG_0000a
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
           DO caB_3500c IN PCC3500C
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
      DO caB_3500c IN PCC3500C
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
PROCEDURE Cab_3500c
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
                SELECT peNd_vtas
           CASE vsW1=02
                SELECT coPia
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Cliente Titular"                  Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3500TIT                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3500NTI                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Titular"                  Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"                                Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"                                Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+84 Say ":"                                Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say F3500TIT                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+86 Say F3500NTI                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Cliente Titular"                  Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3500TIT                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3500NTI                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
           ENDCASE
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     DO coLblz
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Cliente Complemento" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     DO coLbln
                     @vLIN,mCLN+23 Say F3500FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3500CLI              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3500NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Complemento" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+84 Say ":"                   Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3500FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say F3500CLI              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+86 Say F3500NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Cliente Complemento" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+83 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say F3500CLI              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say F3500NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
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
                     @vLIN,mCLN+23 Say F3500FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say vSIG              Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Vencimiento"     Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Total Documento" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+24 Say F3500FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+78 Say vSIG              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+92 Say F3500TOT          Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Vencimiento"     Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Total Documento" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FVE          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+77 Say vSIG              Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
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
                     @vLIN,mCLN+23 Say F3500ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+82 Say F3500TOT-F3500ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+22 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+76 Say ":"               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+35 Say F3500ACU          Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+92 Say F3500TOT-F3500ACU Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+82 Say F3500TOT-F3500ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
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
PROCEDURE See_3500c
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
PROCEDURE Mue_3500c
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
PROCEDURE Clp_3500c
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
           DO diS_3500c IN PCC3500C WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3500c IN PCC3500C WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3500c IN PCC3500C WITH "F", "v"
           DO diS_3500c IN PCC3500C WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3500c
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
