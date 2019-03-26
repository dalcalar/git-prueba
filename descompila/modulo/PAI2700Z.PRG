 = INKEY(0.01)
 STORE 00 TO mvIs
 STORE 99 TO mkEy
 STORE 9999 TO muPg
 STORE 01 TO mcOl, miPg, voPc
 IF mpRf(18,2)="1"
      SAVE SCREEN TO vpAn_15
      DO p00_2700z
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           RETURN
      ENDIF
      RESTORE SCREEN FROM vpAn_15
 ENDIF
 DO CASE
      CASE voPc=1
           DO ipR_0001a WITH "GI"
           SET DEVICE TO SCREEN
           SET READBORDER ON
           DO paGina
           SET READBORDER OFF
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           DO ipR_0001a WITH "GI"
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           DO reP_2700z
           DO fpR_0001a
      OTHERWISE
           Set Printer to Name "&mPRF[18,1]"
           SET DEVICE TO PRINTER
           SET ESCAPE ON
           ON ESCAPE DO P_ESC
           DO CASE
                CASE voPc=2
                     DO etI_tod WITH "G"
                CASE voPc=3
                     DO etI_ite WITH "G"
                CASE voPc=4
                     DO etI_tod WITH "C"
                CASE voPc=5
                     DO etI_ite WITH "C"
           ENDCASE
           MODIFY WINDOW mpAn_sis AT -1.650, -0.800 SIZE mwFi+1.65, mwCo+0.8
           ACTIVATE WINDOW mpAn_sis
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE P00_2700z
 PRIVATE pcO0, ppAn_2700z
 STORE mcO0+60 TO pcO0
 DO coLsc7
 STORE 00 TO voPc
 @ mfI0-02.5, pcO0+10 TO mfI0+7, pcO0+71 PATTERN 1
 @mFI0-01.3,pCO0+19 Say "Escoger Tipo de Documento" Font "&mLetRom",13 Style "BTI" Color 4
 DO WHILE .T.
      STORE k_Enter TO mkEy
      @mFI0+1.4,pCO0+14 Get vOPC Font "&mLetRom",12 Style "BQ" Size 1.4,38,.4 Default vOPC Function "*@T Guía de Ingreso;Etiquetas"
      READ CYCLE
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .OR. voPc=0
                STORE 00 TO voPc
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Enter .AND. voPc=1
                EXIT
           CASE mkEy=k_Enter .AND. voPc=2
                SAVE SCREEN TO ppAn_2700z
                DO p01_2700z
                RESTORE SCREEN FROM ppAn_2700z
                IF voPc>0
                     STORE voPc+1 TO voPc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
 ENDDO
ENDPROC
*
PROCEDURE P01_2700z
 PRIVATE pcO0
 STORE mcO0+30 TO pcO0
 DO coLsc7
 STORE .T. TO viM1
 STORE .F. TO veSp, vpQt
 STORE 00 TO vcTd, voPc
 STORE 01 TO mcOl, vcOp
 @ mfI0-02.5, pcO0+10 TO mfI0+15, pcO0+114 PATTERN 1
 @mFI0-01.3,pCO0+19 Say "Escoger Tipo de Documento"       Font "&mLetRom",13 Style "BTI" Color 4
 @mFI0-01.5,pCO0+74 Say "Copias:"                         Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+00.5,pCO0+74 Say "Espacio:"                        Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+02.5,pCO0+74 Say "Cantidad x Paquete:"             Font "&mLetRom",11 Style "BT"  Color 3
 @mFI0+04.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+05.0,pCO0+74 Say "y no hay Cálculo automático)"    Font "&mLetAri",9  Style "NT"
 @mFI0+06.5,pCO0+74 Say "Cálculo automático x Caja"       Font "&mLetRom",11 Style "BT"  Color 1
 @mFI0+08.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+09.0,pCO0+74 Say "y no hay Cantidad x Paquete)"    Font "&mLetAri",9  Style "NT"
 @mFI0+11.0,pCO0+74 Say "Tipo de Impresora:"              Font "&mLetRom",11 Style "BT"  Color 4
 DO WHILE .T.
      STORE k_Enter TO mkEy
      @mFI0+1.4,pCO0+14 Get vOPC Font "&mLetRom",12 Style "BQ" Size 1.4,38,.4 Default vOPC Function "*@T Todos los Items (Etiq.Grande);Sólo Item (Etiq.Grande);Todos los Items (Etiq.Chica);Sólo Item (Etiq.Chica)"
      DO coLbln
      @mFI0-01.5,pCO0+086 Get vCOP Font "&mLetRom",11 Style "NQ" Size 1,3 Spinner 1,1,9 Default 3          Color ,&mColBlN
      @mFI0+00.5,pCO0+086 Get vESP Font "&mLetRom",12 Style "NQ" Size 1,1 Default vESP Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+02.5,pCO0+102 Get vCTD Font "&mLetRom",11 Style "NQ" Size 1,6 Pict "99999"                     Color ,&mColBlN
      @mFI0+06.5,pCO0+109 Get vPQT Font "&mLetAri",11 Style "NQ" Size 1,1 Default vPQT Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+13.0,pCO0+074 Get vIM1 Font "&mLetAri",11 Style "NQ" Size 1,1 Default vIM1 Function "*C Zebra" Color ,,,,,,,,&mColSc7
      SET CURSOR ON
      READ CYCLE
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .OR. voPc=0
                STORE 00 TO voPc
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Enter
                EXIT
      ENDCASE
 ENDDO
 IF veSp=.T.
      STORE SPACE(01) TO veSp
 ELSE
      STORE "" TO veSp
 ENDIF
ENDPROC
*
PROCEDURE P02_2700z
 PRIVATE pcO0
 STORE mcO0+30 TO pcO0
 DO coLsc7
 STORE .T. TO viM1
 STORE .F. TO veSp, vpQt
 STORE 00 TO vcTd, voPc
 STORE 01 TO mcOl, vcOp
 @ mfI0-02.5, pcO0+10 TO mfI0+15, pcO0+114 PATTERN 1
 @mFI0-01.3,pCO0+19 Say "Escoger Tipo de Documento"       Font "&mLetRom",13 Style "BTI" Color 4
 @mFI0-01.5,pCO0+74 Say "Copias:"                         Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+00.5,pCO0+74 Say "Espacio:"                        Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+02.5,pCO0+74 Say "Cantidad x Paquete:"             Font "&mLetRom",11 Style "BT"  Color 3
 @mFI0+04.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+05.0,pCO0+74 Say "y no hay Cálculo automático)"    Font "&mLetAri",9  Style "NT"
 @mFI0+06.5,pCO0+74 Say "Cálculo automático x Caja"       Font "&mLetRom",11 Style "BT"  Color 1
 @mFI0+08.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+09.0,pCO0+74 Say "y no hay Cantidad x Paquete)"    Font "&mLetAri",9  Style "NT"
 @mFI0+11.0,pCO0+74 Say "Tipo de Impresora:"              Font "&mLetRom",11 Style "BT"  Color 4
 DO WHILE .T.
      STORE k_Enter TO mkEy
      @mFI0+1.4,pCO0+14 Get vOPC Font "&mLetRom",12 Style "BQ" Size 1.4,38,.4 Default vOPC Function "*@T Etiqueta Grande;Etiqueta Chica"
      DO coLbln
      @mFI0-01.5,pCO0+086 Get vCOP Font "&mLetRom",11 Style "NQ" Size 1,3 Spinner 1,1,9 Default 3          Color ,&mColBlN
      @mFI0+00.5,pCO0+086 Get vESP Font "&mLetRom",12 Style "NQ" Size 1,1 Default vESP Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+02.5,pCO0+102 Get vCTD Font "&mLetRom",11 Style "NQ" Size 1,6 Pict "99999"                     Color ,&mColBlN
      @mFI0+06.5,pCO0+109 Get vPQT Font "&mLetAri",11 Style "NQ" Size 1,1 Default vPQT Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+13.0,pCO0+074 Get vIM1 Font "&mLetAri",11 Style "NQ" Size 1,1 Default vIM1 Function "*C Zebra" Color ,,,,,,,,&mColSc7
      SET CURSOR ON
      READ CYCLE
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .OR. voPc=0
                STORE 00 TO voPc
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Enter
                EXIT
      ENDCASE
 ENDDO
 IF veSp=.T.
      STORE SPACE(01) TO veSp
 ELSE
      STORE "" TO veSp
 ENDIF
ENDPROC
*
PROCEDURE Rep_2700z
 PRIVATE ptAm, pnUv
 DO coLbln
 STORE 12 TO mcLn
 STORE 96 TO ptAm
 STORE 00 TO vpAg, vcOs
 STORE 99 TO mkEy
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           DO CASE
                CASE vsW1=01
                     SELECT caB_ingr
                CASE vsW1=02
                     SELECT teMporal
           ENDCASE
           DO caB_2700z
           SELECT deT_ingr
      ENDIF
      DO prD_2700z
      DO meD_2700z
      SELECT deT_ingr
      DO CASE
           CASE vcTd<>0
                STORE vcTd TO vcAn
                STORE "Piezas" TO pnUv
           CASE vtPo=2
                STORE f2701pie TO vcAn
                STORE f2701nuv TO pnUv
           OTHERWISE
                STORE f2701can TO vcAn
                STORE f2701nuv TO pnUv
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN-1.5 Say vCAN       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN-0.8 Say vCAN       Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV           Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2701COD       Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2701DES       Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
                     IF (vtPo=4 .OR. vtPo=5) .AND. xtPp<>4
                          @vLIN,mCLN+103.5 Say F2701CAN Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "99,999,999.9999"
                          @vLIN,mCLN+128.0 Say F2701NUV Font "&mLetAri",9 Style "NQ" Size 1,9    Pict "@S10"
                     ENDIF
                CASE mpRt="2"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+1 Say vCAN         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+2 Say vCAN         Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV           Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2701COD       Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2701DES       Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S80"
                     IF (vtPo=4 .OR. vtPo=5) .AND. xtPp<>4
                          @vLIN,mCLN+115 Say F2701CAN   Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "99,999,999.9999"
                          @vLIN,mCLN+132 Say F2701NUV   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                     ENDIF
           ENDCASE
      ENDIF
      IF xtPp=4
           STORE ROUND(f2701cos/(1+(miGv/100)), 4) TO ccOs
           STORE vcOs+(ROUND(ccOs*f2701can, 4)) TO vcOs
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+100 Say cCOS                      Font "&mLetAri",9  Style "NQ" Pict "999,999.9999" Size 1,18
                          @vLIN,mCLN+122 Say Round(cCOS*F2701CAN,4)    Font "&mLetAri",9  Style "NQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="2"
                          @vLIN,mCLN+100 Say cCOS                      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,18
                          @vLIN,mCLN+120 Say Round(cCOS*F2701CAN,4)    Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,18
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_ingr
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE vlIn+0.2 TO vlIn
           DO it1_2700z
           STORE vlIn+2.0 TO vlIn
      ELSE
           SELECT seR_ingr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                STORE vlIn+0.2 TO vlIn
                DO it2_2700z
                STORE vlIn+2.0 TO vlIn
           ENDIF
      ENDIF
      SELECT deT_ingr
      SKIP
 ENDDO
 DO CASE
      CASE vsW1=01
           SELECT caB_ingr
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 STORE vlIn-1 TO vlIn
 IF vlIn>mpAg-5
      DO caB_2700z
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vlIn>mpAg-5
      DO caB_2700z
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                IF INT(tcAn)<>tcAn
                     @vLIN,mCLN-1.5 Say tCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN-0.8 Say tCAN Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                ENDIF
           CASE mpRt="2"
                IF INT(tcAn)<>tcAn
                     @vLIN,mCLN+1 Say tCAN   Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+2 Say tCAN   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
 ENDIF
 IF xtPp=4
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+108.0 Say "Total S/." Font "&mLetAri",9  Style "BQ"
                     @vLIN,mCLN+118.1 Say vCOS        Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                CASE mpRt="2"
                     @vLIN,mCLN+100 Say "Total S/."   Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+120 Say vCOS          Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,18
           ENDCASE
      ENDIF
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pnUv
ENDPROC
*
PROCEDURE Cab_2700z
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
      @vLIN,mCLN Say "GUÍA DE INGRESO No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg=1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     DO CASE
                          CASE LEN(ALLTRIM(f2700cm1))<>0
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+21  Say F2700NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+86  Say F2700PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+100 Say "Fecha:" Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+110 Say F2700FEM Font "&mLetRom",11 Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+11  Say F2700NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+86  Say F2700PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+100 Say "Fecha:" Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+110 Say F2700FEM Font "&mLetRom",11 Style "NQ"
                     ENDCASE
                CASE mpRt="2"
                     DO CASE
                          CASE LEN(ALLTRIM(f2700cm1))<>0
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+21  Say F2700NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+86  Say F2700PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+113 Say "Fecha:" Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+123 Say F2700FEM Font "&mLetRom",11 Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+11  Say F2700NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+86  Say F2700PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+113 Say "Fecha:" Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+123 Say F2700FEM Font "&mLetRom",11 Style "NQ"
                     ENDCASE
           ENDCASE
      ENDIF
      IF LEN(ALLTRIM(f2700cm1))<>0
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Observaciones:" Font "&mLetRom",11 Style "BQ"
                          @vLIN,mCLN+21 Say F2700CM1         Font "&mLetRom",11 Style "NQ"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Observaciones:" Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+21 Say F2700CM1         Font "&mLetRom",11 Style "NQ"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+0.8 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN    Say "Cantidad"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+17 Say "Unidad"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+27 Say "Código"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+44 Say "Descripción" Font "&mLetAri",9 Style "BQ"
                IF xtPp=4
                     @vLIN,mCLN+100 Say "Costo Promedio" Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+123 Say "Total C.Promed" Font "&mLetAri",9 Style "BQ"
                ENDIF
           CASE mpRt="2"
                @vLIN,mCLN    Say "Cantidad"    Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+17 Say "Unidad"      Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+27 Say "Código"      Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+44 Say "Descripción" Font "&mLetRom",10 Style "NQ"
                IF xtPp=4
                     @vLIN,mCLN+100 Say "Costo Promedio" Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+120 Say "Total C.Promed" Font "&mLetRom",10 Style "NQ"
                ENDIF
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE It1_2700z
 PRIVATE plL1, plL2, plL3, puL1, puL2, puL3
 STORE 05 TO puL2
 STORE 14 TO vcLn
 STORE 03 TO puL1, puL3
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2702tdo+ ;
    f2702ser+f2702doc+ALLTRIM(f2702cod)+"*"
      IF f2702opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>puL1 .OR. plL2>puL2 .OR. plL3>puL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 14 TO vcLn
           IF vlIn>mpAg-5
                DO CASE
                     CASE vsW1=01
                          SELECT caB_ingr
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO caB_2700z
                SELECT itE_ingr
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE f2702un1="M"
                               @vLIN,mCLN+vCLN+3.0 Say F2702MLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f2702un1="P"
                               @vLIN,mCLN+vCLN+0.0 Say F2702P11       Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+5.4 Say '"'            Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f2702p12)<>"/"
                                    @vLIN,mCLN+vCLN+6.6 Say F2702P12    Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+14.6 Say "x"                   Font "&mLetRom",11 Style "NQ" Size 1,1
                     DO CASE
                          CASE f2702un2="M"
                               @vLIN,mCLN+vCLN+18.5 Say F2702MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f2702un2="P"
                               @vLIN,mCLN+vCLN+16.7 Say F2702P21      Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+22.7 Say '"'           Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f2702p22)<>"/"
                                    @vLIN,mCLN+vCLN+23.7 Say F2702P22   Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+31 Say "= ["+Str(F2702CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2702MLA                     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F2702CTD,4,0)+"]"  Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+21 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2702MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "NQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F2702MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2702CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2702CA1                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+06.0 Say F2702MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "BQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F2702CA2                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+21.5 Say F2702MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F2702CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE It2_2700z
 STORE 01 TO vnUm
 STORE 17 TO vcLn
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF vlIn>mpAg-5
           DO CASE
                CASE vsW1=01
                     SELECT caB_ingr
                CASE vsW1=02
                     SELECT teMporal
           ENDCASE
           DO caB_2700z
           SELECT seR_ingr
      ENDIF
      IF vnUm=5
           STORE 01 TO vnUm
           STORE 17 TO vcLn
           STORE vlIn+1.2 TO vlIn
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+vCLN      Say F2703PED Font "&mLetAri",9 Style "NQ" Size 1,7.5
                     @vLIN,mCLN+vCLN+07.8 Say "-"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+09.3 Say F2703SEC Font "&mLetAri",9 Style "NQ" Size 1,5.7
                     @vLIN,mCLN+vCLN+15.3 Say ":"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+16.5 Say F2703PLA Font "&mLetAri",9 Style "NQ" Size 1,7 Pict "9999"
                     STORE vcLn+27 TO vcLn
                CASE mpRt="2"
                     @vLIN,mCLN+vCLN      Say F2703PED Font "&mLetAri",9 Style "NQ" Size 1,6
                     @vLIN,mCLN+vCLN+08.0 Say "-"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+10.0 Say F2703SEC Font "&mLetAri",9 Style "NQ" Size 1,5.2
                     @vLIN,mCLN+vCLN+15.2 Say ":"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+17.2 Say F2703PLA Font "&mLetAri",9 Style "NQ" Size 1,7 Pict "9999"
                     STORE vcLn+35 TO vcLn
           ENDCASE
      ENDIF
      STORE vnUm+1 TO vnUm
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Prd_2700z
 SELECT deT_ingr
 STORE f2701cod TO vcOd
 DO pr1_2700z
 SELECT deT_ingr
 DO CASE
      CASE f2701la1=0 .AND. f2701la2=0 .AND. f2701an1=0 .AND. f2701an2=0  ;
           .AND. vtPo=10
      CASE (f2701la1=0 .OR. f2701an1=0) .AND. (vtPo=2 .AND. f2701med=1)
      CASE (f2701la2=0 .OR. f2701an2=0) .AND. (vtPo=2 .AND. f2701med=2)
      CASE vtPo=2 .AND. f2701med=1
           STORE ALLTRIM(STR(f2701la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2701an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f2701med=2
           STORE ALLTRIM(STR(f2701la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2701an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
 ENDCASE
ENDPROC
*
PROCEDURE Pr1_2700z
 STORE SPACE(01) TO clAr
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE SPACE(02) TO vtPo
 ELSE
      STORE f2111tip TO vtPo
 ENDIF
 SELECT tiP_prod
 SEEK vtPo
 IF EOF()
      STORE 1 TO vtPo
      STORE " " TO veNt
 ELSE
      STORE f9211tpo TO vtPo
      STORE f9211ent TO veNt
 ENDIF
ENDPROC
*
PROCEDURE Med_2700z
 STORE 00 TO vcTd
 SELECT itE_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2702tdo+ ;
    f2702ser+f2702doc+ALLTRIM(f2702cod)+"*"
      IF f2702opc="S"
           SKIP
           LOOP
      ENDIF
      IF (vtPo>=4 .AND. vtPo<=9 .AND. vtPo<>6)
           STORE vcTd+f2702ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Lee_Item
 PARAMETER ptAm
 PRIVATE pnUm
 STORE UPPER(SUBSTR(mrZ1, 1, 9)) TO vrAz
 STORE "" TO vmDd
 DO CASE
      CASE vtPo=2
           IF f2701la1<>0 .AND. f2701an1<>0
                STORE ALLTRIM(STR(f2701la1, 6, 3)) TO cmD1
                IF SUBSTR(cmD1, LEN(cmD1), 1)="0"
                     STORE ALLTRIM(STR(f2701la1, 6, 2)) TO cmD1
                ENDIF
                STORE ALLTRIM(STR(f2701an1, 6, 3)) TO cmD2
                IF SUBSTR(cmD2, LEN(cmD2), 1)="0"
                     STORE ALLTRIM(STR(f2701an1, 6, 2)) TO cmD2
                ENDIF
                IF f2701la2<>0 .AND. f2701an2<>0
                     STORE vmDd+cmD1+" x "+cmD2+" / " TO vmDd
                ELSE
                     STORE vmDd+cmD1+" x "+cmD2 TO vmDd
                ENDIF
           ENDIF
           IF f2701la2<>0 .AND. f2701an2<>0
                STORE ALLTRIM(STR(f2701la2, 6, 0)) TO cmD1
                STORE ALLTRIM(STR(f2701an2, 6, 0)) TO cmD2
                STORE vmDd+cmD1+" x "+cmD2 TO vmDd
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(vmDd))<>0
      STORE ALLTRIM(vmDd)+SPACE(40) TO vmDd
      STORE SUBSTR(vmDd, 1, 40) TO vmDd
 ELSE
      STORE SPACE(40) TO vmDd
 ENDIF
 DO CASE
      CASE ptAm="C"
           STORE 23 TO pnUm
           STORE SPACE(30) TO cdE1, cdE2, cdE3, cdE4
      CASE LEN(ALLTRIM(vdEs))<=40
           STORE 26 TO pnUm
           STORE SPACE(40) TO cdE1, cdE2, cdE3, cdE4
      CASE LEN(ALLTRIM(vdEs))>40
           STORE 40 TO pnUm
           STORE SPACE(40) TO cdE1, cdE2, cdE3, cdE4
 ENDCASE
 STORE SUBSTR(vdEs, 01, pnUm) TO cdE1
 STORE SUBSTR(vdEs, pnUm+1, pnUm*2) TO cdE2
 STORE RAT(" ", cdE1) TO cnU1
 STORE RAT(" ", cdE2) TO cnU2
 STORE SUBSTR(ALLTRIM(cdE1)+SPACE(pnUm), 1, pnUm) TO cdE1
 STORE SUBSTR(ALLTRIM(cdE2)+SPACE(pnUm), 1, pnUm) TO cdE2
 IF LEN(ALLTRIM(cdE1))=pnUm
      STORE SUBSTR(SUBSTR(vdEs, 1, cnU1)+SPACE(pnUm), 1, pnUm) TO cdE1
      STORE SUBSTR(vdEs, cnU1+1, cnU1+pnUm) TO cdE2
      STORE RAT(" ", cdE2) TO cnU2
      STORE SUBSTR(ALLTRIM(cdE2)+SPACE(pnUm), 1, pnUm) TO cdE2
 ENDIF
 DO CASE
      CASE LEN(ALLTRIM(cdE2))=0 .AND. LEN(ALLTRIM(cdE3))=0 .AND.  ;
           LEN(ALLTRIM(cdE4))=0
           IF LEN(ALLTRIM(vmDd))<>0
                STORE vmDd TO cdE2
           ENDIF
      CASE LEN(ALLTRIM(cdE3))=0 .AND. LEN(ALLTRIM(cdE4))=0
           IF LEN(ALLTRIM(vmDd))<>0
                STORE vmDd TO cdE3
           ENDIF
      CASE LEN(ALLTRIM(cdE4))=0
           IF LEN(ALLTRIM(vmDd))<>0
                STORE vmDd TO cdE4
           ENDIF
 ENDCASE
 DO CASE
      CASE ptAm="G"
           DO CASE
                CASE LEN(ALLTRIM(cdE2))=0
                     STORE cdE1 TO cdE2
                     STORE SPACE(40) TO cdE1, cdE3, cdE4
                CASE LEN(ALLTRIM(cdE3))=0
                     STORE cdE2 TO cdE3
                     STORE cdE1 TO cdE2
                     STORE SPACE(40) TO cdE1, cdE4
           ENDCASE
           STORE SUBSTR(UPPER(cdE1)+SPACE(40), 1, 40) TO cdE1
           STORE SUBSTR(UPPER(cdE2)+SPACE(40), 1, 40) TO cdE2
           STORE SUBSTR(UPPER(cdE3)+SPACE(40), 1, 40) TO cdE3
           STORE SUBSTR(UPPER(cdE4)+SPACE(40), 1, 40) TO cdE4
      CASE ptAm="C"
           STORE SUBSTR(UPPER(cdE1)+SPACE(23), 1, 23) TO cdE1
           STORE SUBSTR(UPPER(cdE2)+SPACE(23), 1, 23) TO cdE2
           STORE SUBSTR(UPPER(cdE3)+SPACE(23), 1, 23) TO cdE3
           STORE SUBSTR(UPPER(cdE4)+SPACE(23), 1, 23) TO cdE4
 ENDCASE
ENDPROC
*
PROCEDURE Eti_Tod
 PARAMETER ptAm
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 SET CONSOLE OFF
 SET PRINTER OFF
 Set Printer to Name "&mPRF[18,1]"
 SET DEVICE TO PRINTER
 ? 'FK"*"'
 ? 'GK"*"'
 ? 'EK"*"'
 DO CASE
      CASE mcIa="NV" .AND. ptAm="G"
           RUN Copy EJF\ETINVG.EJF LPT1
      CASE mcIa="NP" .AND. ptAm="G"
           RUN Copy EJF\ETINBG.EJF LPT1
      CASE mcIa="NV" .AND. ptAm="C"
           RUN Copy EJF\ETINVC.EJF LPT1
      CASE mcIa="NP" .AND. ptAm="C"
           RUN Copy EJF\ETINBC.EJF LPT1
 ENDCASE
 SET PRINTER ON
 ? veSp+'N'
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      DO itEm_2700z WITH ptAm
      SELECT deT_ingr
      SKIP
 ENDDO
 SET CONSOLE ON
 SET PRINTER OFF
 SET PRINTER TO
 SET DEVICE TO SCREEN
ENDPROC
*
PROCEDURE Eti_Ite
 PARAMETER ptAm
 SET CONSOLE OFF
 SET PRINTER OFF
 Set Printer to Name "&mPRF[18,1]"
 SET DEVICE TO PRINTER
 ? 'FK"*"'
 ? 'GK"*"'
 ? 'EK"*"'
 SET PRINTER ON
 DO itEm_2700z WITH ptAm
 SET CONSOLE ON
 SET PRINTER OFF
 SET PRINTER TO
 SET DEVICE TO SCREEN
ENDPROC
*
PROCEDURE Item_2700z
 PARAMETER ptAm
 DO CASE
      CASE ptAm="G"
           ? veSp+'?'
           ? veSp+cdE1
           ? veSp+cdE2
           ? veSp+cdE3
           ? veSp+cdE4
           ? veSp+vrAz
           ? veSp+ALLTRIM(vcOd)+ALLTRIM(vpEd)+ALLTRIM(vsEc)
           ? veSp+vcOd
           ? veSp+ALLTRIM(vpEd)
           ? veSp+vc01
           IF mcIa="NV" .AND. vpLa=0
                ? veSp+SPACE(05)
                ? veSp+vnUc
           ENDIF
           ? veSp+SPACE(07)
           ? veSp+SPACE(03)
           ? veSp+'P'+ALLTRIM((STR(vcOp)))
      CASE ptAm="C"
           ? veSp+'?'
           ? veSp+cdE1
           ? veSp+cdE2
           ? veSp+psEr
           ? veSp+vpEd
           ? veSp+vsEc
           ? veSp+vcOd
           ? veSp+'P'+ALLTRIM((STR(vcOp)))
 ENDCASE
 ? veSp+SPACE(01)
 EJECT
ENDPROC
*
