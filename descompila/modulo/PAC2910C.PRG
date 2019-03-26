 STORE 1 TO vsW2
 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caBecera
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO muE_2910a
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO ttOt
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      STORE ttOt+f2911tot TO ttOt
      STORE f2911cod TO vcOd
      SELECT teMporal_2
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM2cod WITH vcOd
           REPLACE ftM2sw0 WITH SPACE(01)
      ELSE
           REPLACE ftM2sw0 WITH "@"
      ENDIF
      SELECT deTalle
      SKIP
 ENDDO
 DO p00_2910c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2910c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2910c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2910c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2910c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2910c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Orden_de_Compra_"+vSER+"_"+vDOC+".XLS","XLS")
                Export to &vXLS Fiel F2911ITE,F2911COD,F2911DES,F2911CDG,F2911DCR,F2911NUC,F2911CAN,F2911PRE,F2911TOT Type XLS for F2911TDO+F2911SER+F2911DOC = vTDO+vSER+vDOC
                DO xlS_0000a WITH "Orden de Compra "+vsEr+"-"+vdOc, "Pedido", 9
                pxLs.ceLls(3, 1).vaLue = "Item"
                pxLs.ceLls(3, 2).vaLue = "Codigo"
                pxLs.ceLls(3, 3).vaLue = "Descripcion"
                pxLs.ceLls(3, 4).vaLue = "Codigo Prv"
                pxLs.ceLls(3, 5).vaLue = "Descripcion Proveedor"
                pxLs.ceLls(3, 6).vaLue = "Unidad-Cpra"
                pxLs.ceLls(3, 7).vaLue = "Cantidad"
                pxLs.ceLls(3, 8).vaLue = "Precio"
                pxLs.ceLls(3, 9).vaLue = "Total"
                pxLs.coLumns().auTofit
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(6,9)).inSert
                pxLs.coLumns(1).hoRizontalalignment = 3
                pxLs.raNge(pxLs.coLumns(7),  ;
                          pxLs.coLumns(9)).hoRizontalalignment = 4
                pxLs.raNge(pxLs.coLumns(7), pxLs.coLumns(9)).nuMberformat =  ;
                          "###,##0.00"
                pxLs.ceLls(3, 9).nuMberformat = "dd/mm/yyyy"
                pxLs.coLumns(9).coLumnwidth = 10.57
                pxLs.ceLls(3, 8).vaLue = "Fecha"
                pxLs.ceLls(3, 1).vaLue = "Proveedor"
                pxLs.ceLls(4, 1).vaLue = "Forma de Pago"
                pxLs.ceLls(5, 1).vaLue = "Observaciones"
                pxLs.ceLls(3, 9).vaLue = xfEm
                pxLs.ceLls(3, 3).vaLue = xnOm
                pxLs.ceLls(4, 3).vaLue = xfPa
                pxLs.ceLls(5, 3).vaLue = xcM1
                pxLs.ceLls(6, 3).vaLue = xcM2
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,2)).meRge
                pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,2)).meRge
                pxLs.raNge(pxLs.ceLls(5,1), pxLs.ceLls(5,2)).meRge
                pxLs.raNge(pxLs.ceLls(3,3), pxLs.ceLls(3,4)).meRge
                pxLs.raNge(pxLs.ceLls(4,3), pxLs.ceLls(4,4)).meRge
                pxLs.raNge(pxLs.ceLls(5,3), pxLs.ceLls(5,4)).meRge
                pxLs.raNge(pxLs.ceLls(6,3), pxLs.ceLls(6,4)).meRge
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(6, ;
                          2)).hoRizontalalignment = 1
                WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(6,9))
                     .foNt.naMe = "Times New Roman"
                     .foNt.siZe = 11
                     .foNt.boLd = .T.
                ENDWITH
                pxLs.apPlication.acTiveworkbook.acTivesheet.ceLls(1, 2).seLect
                pxLs.apPlication.viSible = .T.
                RELEASE pxLs
                SELECT deTalle
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE mkEy=k_F3
                IF vsW4=1
                     STORE 2 TO vsW4
                ELSE
                     STORE 1 TO vsW4
                ENDIF
                DO rs2_2910c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                SELECT caBecera
                IF vsW0<>1 .OR. wtPo="3"
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                DO q1_0000a
                DO paI2910z
                DO p1_0000a
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caBecera
                IF vsW0<>1
                     DO orD_2910b IN PAC2910B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deTalle
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. wtPo$"23"
                DO CASE
                     CASE vsW2=1
                          STORE 2 TO vsW2
                     CASE vsW2=2
                          STORE 1 TO vsW2
                ENDCASE
                DO rs2_2910c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE vsW3=1
                          STORE 2 TO vsW3
                     CASE vsW3=2
                          STORE 1 TO vsW3
                ENDCASE
                DO rs2_2910c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2911ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_2910c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2910c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(999, 4, 0)
                SET NEAR OFF
                IF EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2911ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2910c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2910c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2910c WITH ifFs, ffFs+1
                               STORE f2911ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f2911ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f2911ite TO vrEc
                               STORE vfFs+01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2910c WITH ifFs, ffFs+1
                               STORE f2911ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f2911ite TO urEc
                               ENDIF
                          ELSE
                               STORE f2911ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 4, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2910c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2911tdo+f2911ser+f2911doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2910c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2910c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2910c
 STORE ifFs TO vfFs, ufFs
 STORE f2911ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_2910c WITH "N"
      STORE f2911ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ vfFs, icL1 CLEAR TO ffFs+1.1, ucL1
      DO liN_2910c WITH vfFs, ffFs+1.6
 ENDIF
ENDPROC
*
PROCEDURE Dis_2910c
 PARAMETER ptIp
 PRIVATE psW0
 STORE f2911cod TO vcOd
 SELECT teMporal_2
 SEEK ALLTRIM(vcOd)+"*"
 STORE ftM2sw0 TO psW0
 SELECT deTalle
 DO CASE
      CASE ptIp="N" .AND. psW0="@"
           DO coL_fonro
      CASE ptIp="R" .AND. psW0="@"
           DO coLscr
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc1
 ENDCASE
 DO CASE
      CASE wtPo$"23" .AND. vsW2=1
           @vFFS,vCO1+000.1 Say F2911ITE                             Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
           @vFFS,vCO1+117.9 Say F2911NUC                             Font "&mLetAri",9 Style "NQ" Size 1,20.5 Pict "@S22"
           @vFFS,vCO1+139.6 Say F2911CAN                             Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
           @vFFS,vCO1+158.0 Say F2911CTD                             Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
           @vFFS,vCO1+176.3 Say F2911CAN-F2911CTD                    Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
           DO CASE
                CASE vsW3=1
                     @vFFS,vCO1+05.3 Say F2911COD                      Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "!!!!!!!!!!!!!!!"
                     @vFFS,vCO1+16.9 Say F2911DES                      Font "&mLetAri",9 Style "NQ" Size 1,100  Pict "@S102"
                CASE vsW3=2
                     @vFFS,vCO1+05.3 Say F2911CDG                      Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "!!!!!!!!!!!!!!!"
                     @vFFS,vCO1+16.9 Say F2911DCR                      Font "&mLetAri",9 Style "NQ" Size 1,100  Pict "@S102"
           ENDCASE
      OTHERWISE
           @vFFS,vCO1+000.1 Say F2911ITE                             Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
           @vFFS,vCO1+005.3 Say F2911COD                             Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "!!!!!!!!!!!!!!!"
           @vFFS,vCO1+016.9 Say F2911CDG                             Font "&mLetAri",9 Style "NQ" Size 1,15.9 Pict "!!!!!!!!!!!!!!!!!!!!"
           @vFFS,vCO1+132.0 Say F2911NUC                             Font "&mLetAri",9 Style "NQ" Size 1,09.9 Pict "@S12"
           @vFFS,vCO1+142.9 Say F2911PRE                             Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
           DO CASE
                CASE vsW3=1
                     @vFFS,vCO1+34 Say F2911DES                        Font "&mLetAri",9 Style "NQ" Size 1,97.0 Pict "@S80"
                CASE vsW3=2
                     @vFFS,vCO1+34 Say F2911DCR                        Font "&mLetAri",9 Style "NQ" Size 1,97.0 Pict "@S80"
           ENDCASE
           DO CASE
                CASE wtPo$"23" .AND. vsW2=2
                     @vFFS,vCO1+161.3 Say F2911CAN-F2911CTD            Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                     @vFFS,vCO1+176.3 Say F2911PRE*(F2911CAN-F2911CTD) Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                OTHERWISE
                     @vFFS,vCO1+161.3 Say F2911CAN                     Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                     @vFFS,vCO1+176.3 Say F2911TOT                     Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
           ENDCASE
 ENDCASE
 DO coLsc3
 IF LEN(ALLTRIM(f2911cod))>0 .OR. LEN(ALLTRIM(f2911des))>0
      @fFFS+1.9,vCO1+13 Say AllTrim(F2911COD)+":"+F2911DES Font "&mLetAri",9 Style "NQ" Size 1,130 Pict "@S133"
 ENDIF
 IF LEN(ALLTRIM(f2911cdg))>0 .OR. LEN(ALLTRIM(f2911dcr))>0
      @fFFS+3.2,vCO1+13 Say AllTrim(F2911CDG)+":"+F2911DCR Font "&mLetAri",9 Style "NQ" Size 1,127 Pict "@S130"
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF wtPo$"23" .AND. f2911can>f2911ctd
      @vFFS,vCO1+0.1 Say "@" Font "&mLetAri",9 Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Lin_2910c
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE (wtPo<>"2" .AND. wtPo<>"3") .OR. vsW2=2
           @ piNi, vcO1+004.7 TO pfIn, vcO1+004.7
           @ piNi, vcO1+016.3 TO pfIn, vcO1+016.3
           @ piNi, vcO1+033.4 TO pfIn, vcO1+033.4
           @ piNi, vcO1+131.4 TO pfIn, vcO1+131.4
           @ piNi, vcO1+142.3 TO pfIn, vcO1+142.3
           @ piNi, vcO1+160.7 TO pfIn, vcO1+160.7
           @ piNi, vcO1+175.7 TO pfIn, vcO1+175.7
      OTHERWISE
           @ piNi, vcO1+004.7 TO pfIn, vcO1+004.7
           @ piNi, vcO1+016.3 TO pfIn, vcO1+016.3
           @ piNi, vcO1+117.3 TO pfIn, vcO1+117.3
           @ piNi, vcO1+138.9 TO pfIn, vcO1+138.9
           @ piNi, vcO1+157.3 TO pfIn, vcO1+157.3
           @ piNi, vcO1+175.7 TO pfIn, vcO1+175.7
 ENDCASE
ENDPROC
*
PROCEDURE P00_2910c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2910a
 IF vsW4=1
      DO coL_fondo
      DO cuAdro WITH vfI0+0.3, vcO0, vfI0+10.5, vcO0+126
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_beige
      @ vfI0+0.4, vcO0+0.1 TO vfI0+5.5, vcO0+124.7 PATTERN 1
      @ vfI0+0.4, vcO0+0.1 TO vfI0+0.40, vcO0+124.7 COLOR RGB(128,128,128, ;
        0,0,0)
      @ vfI0+0.4, vcO0+0.1 TO vfI0+5.50, vcO0+000.1 COLOR RGB(128,128,128, ;
        0,0,0)
      @vFI0+1.1,vCO0+01.1 Say "Proveedor"     Font "&mLetAri",9 Style "BT"
      @vFI0+2.5,vCO0+01.1 Say "Dirección"     Font "&mLetAri",9 Style "NT"
      @vFI0+4.0,vCO0+01.1 Say "Pais"          Font "&mLetAri",9 Style "NT"
      @vFI0+1.0,vCO0+81.5 Say "Fecha"         Font "&mLetAri",9 Style "NT"
      @vFI0+2.5,vCO0+81.5 Say "Moneda"        Font "&mLetAri",9 Style "NT"
      @vFI0+4.0,vCO0+81.5 Say "T/C"           Font "&mLetAri",9 Style "NT"
      @vFI0+6.0,vCO0+01.1 Say "Forma de Pago" Font "&mLetAri",9 Style "NT"
      @vFI0+7.5,vCO0+01.1 Say "Observaciones" Font "&mLetAri",9 Style "NT"
      DO coLbln
      SET READBORDER ON
      @vFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,66,70
      @vFI0+1.0,vCO0+92.5 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
      @vFI0+6.0,vCO0+20.5 Edit xFPA Font "&mLetAri",9 Style "NQ" Size 1,90,70
      @vFI0+7.5,vCO0+20.5 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
      @vFI0+9.0,vCO0+20.5 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
      DO coL_beige
      @vFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,66,70
      @vFI0+4.0,vCO0+13.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,25,25
      @vFI0+2.5,vCO0+92.5 Edit xSIG Font "&mLetAri",9 Style "NQ" Size 1,30,30
      @vFI0+4,vCO0+92.5 Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999.99999" Color ,RGB(0,0,0,235,231,222)
      IF miMp=1
           @vFI0+7.5,vCO0+112 Get xTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default xTPO
      ENDIF
      READ TIMEOUT 0.01
      SET READBORDER OFF
 ENDIF
 DO coL_fondo
 @vFI0-1.7,vCO0+0.5 Say "ORDEN DE COMPRA No. "+xSER+"-"+xDOC Font "&mLetRom",14 Style "BT" Color 6/6+
 DO cuAdro WITH ifFs-1.25, vcO1, ffFs+4.5, vcO1+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFs-1.40, vcO1 TO ifFs-0.20, vcO1+vuCo PATTERN 1
 @ ffFs+1.60, vcO1 TO ffFs+4.55, vcO1+vuCo PATTERN 1
 DO liN_2910c WITH ifFs-1.3, ffFs+1.6
 DO coLsc3
 DO CASE
      CASE (wtPo<>"2" .AND. wtPo<>"3") .OR. vsW2=2
           @iFFS-1.3,vCO1+000.5 Say "Ítem"                       Font "&mLetAri",8  Style "NT"
           @iFFS-1.3,vCO1+006.4 Say "Cód.Int."                   Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+016.8 Say "Cód.Proveedor"              Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+132.1 Say "Unid.Cpr"                   Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+146.0 Say "Prec.Unitario"              Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+165.0 Say "Cantidad"                   Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+187.0 Say "Total"                      Font "&mLetAri",9  Style "NT"
           @fFFS+1.9,vCO1+174.2 Say "Total:"                     Font "&mLetAri",10 Style "BQ"
           @fFFS+3.2,vCO1+164.6 Say tTOT                         Font "&mLetAri",10 Style "BQ" Size 1,14 Pict "9,999,999.99"
           IF vsW3=1
                @iFFS-1.3,vCO1+34 Say "Descripción del Sistema"   Font "&mLetAri",9  Style "NQ" Size 1,97
           ELSE
                @iFFS-1.3,vCO1+34 Say "Descripción del Proveedor" Font "&mLetAri",9  Style "NQ" Size 1,97
           ENDIF
      OTHERWISE
           @iFFS-1.3,vCO1+000.5 Say "Ítem"                       Font "&mLetAri",8  Style "NT"
           @iFFS-1.3,vCO1+119.2 Say "Unidad-Compra"              Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+139.8 Say "Cantidad Pedid"             Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+158.1 Say "Cant.Ingresada"             Font "&mLetAri",9  Style "NT"
           @iFFS-1.3,vCO1+179.2 Say "Pendiente"                  Font "&mLetAri",9  Style "NT"
           @fFFS+1.9,vCO1+174.2 Say "Total:"                     Font "&mLetAri",10 Style "BQ"
           @fFFS+3.2,vCO1+164.6 Say tTOT                         Font "&mLetAri",10 Style "BQ" Size 1,14 Pict "9,999,999.99"
           IF vsW3=1
                @iFFS-1.3,vCO1+05.3 Say "Cód.Intern"                 Font "&mLetAri",9  Style "NQ" Size 1,10.5
                @iFFS-1.3,vCO1+16.9 Say "Descripción del Sistema"    Font "&mLetAri",9  Style "NQ" Size 1,100
           ELSE
                @iFFS-1.3,vCO1+05.3 Say "Cód.Provee"                 Font "&mLetAri",9  Style "NQ" Size 1,10.5
                @iFFS-1.3,vCO1+16.9 Say "Descripción del Proveedor"  Font "&mLetAri",9  Style "NQ" Size 1,100
           ENDIF
 ENDCASE
 DO coLsc3
 @fFFS+1.9,vCO1+1 Say "Desc-Sist:" Font "&mLetAri",9 Style "BQ"
 @fFFS+3.2,vCO1+1 Say "Desc-Prv:"  Font "&mLetAri",9 Style "BQ"
 DO coLsc1
 @fFFS+4.6,vCO1+136.8 Say " Usuario:   "       Font "&mLetAri",10 Style "BQ"
 @fFFS+5.6,vCO1+136.8 Say " Fecha: "+Space(40) Font "&mLetAri",10 Style "BQ"
 @fFFS+5.6,vCO1+168.8 Say " Hora: "+Space(10)  Font "&mLetAri",10 Style "BQ"
 @fFFS+4.6,vCO1+150.0 Say xUSU                 Font "&mLetAri",10 Style "NQ" Size 1,37 Pict "@S30"
 @fFFS+5.6,vCO1+150.0 Say xDAT                 Font "&mLetAri",10 Style "NQ" Size 1,13.2
 @fFFS+5.6,vCO1+180.8 Say xTIM                 Font "&mLetAri",10 Style "NQ" Size 1,11.3
ENDPROC
*
PROCEDURE Rs1_2910c
 DO rs1_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_2910c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 DO paN_2910c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2910c WITH "R"
ENDPROC
*
PROCEDURE Rs2_2910c
 DO p00_2910c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 DO paN_2910c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2910c WITH "R"
ENDPROC
*
PROCEDURE Clp_2910c
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
           mcCc<=mmC1+68.00
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77.00
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95.00
           STORE k_F10 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+vuCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+vuCo
           DO diS_2910c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f2911ite TO vrEc
           DO diS_2910c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2910c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+01, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+02, 02 SAY  ;
   "páginas. Los ítems que tengan el mismo código interno se veran de dife-"
 @ pfIl+03, 02 SAY "rente color."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+07, 11 SAY "ESC" STYLE "BT"
 @ pfIl+08, 11 SAY "F10" STYLE "BT"
 @ pfIl+09, 11 SAY "F1" STYLE "BT"
 @ pfIl+10, 11 SAY "F3" STYLE "BT"
 @ pfIl+11, 11 SAY "F8" STYLE "BT"
 @ pfIl+12, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+13, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+14, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 11 SAY "HOME" STYLE "BT"
 @ pfIl+17, 11 SAY "END" STYLE "BT"
 @ pfIl+07, 31 SAY "Regresar a Cabecera"
 @ pfIl+08, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 31 SAY "Ayuda del Programa"
 @ pfIl+10, 31 SAY "Ampliar Detalle y viceversa"
 @ pfIl+11, 31 SAY "Pasar Orden de Compra a Excel"
 @ pfIl+12, 31 SAY "Línea inferior"
 @ pfIl+13, 31 SAY "Línea superior"
 @ pfIl+14, 31 SAY "Página siguiente"
 @ pfIl+15, 31 SAY "Página anterior"
 @ pfIl+16, 31 SAY "Primera línea"
 @ pfIl+17, 31 SAY "Última línea"
 STORE pfIl+18 TO pfIl
 IF wtPo$"23"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "--> <--" STYLE "BT"
      @ pfIl, 31 SAY "Otros datos"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "CTRL ->" STYLE "BT"
 @ pfIl+1, 11 SAY "CTRL <-" STYLE "BT"
 @ pfIl+0, 31 SAY "Otras Descripciones"
 @ pfIl+1, 31 SAY "Otras Descripciones"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
