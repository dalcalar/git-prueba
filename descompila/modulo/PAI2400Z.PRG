 = INKEY(0.01)
 STORE 00 TO mvIs
 STORE 99 TO mkEy
 STORE 9999 TO muPg
 STORE 01 TO mcOl, miPg, voPc
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
 DO reP_2400z
 DO fpR_0001a
ENDPROC
*
PROCEDURE Rep_2400z
 PRIVATE ptAm, pnUv, pcAn
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 12 TO mcLn
           STORE 90 TO ptAm
      CASE mvIs=0 .AND. mpRt="2"
           STORE 12 TO mcLn
           STORE 96 TO ptAm
      CASE mvIs=1
           STORE 22 TO mcLn
           STORE 91 TO ptAm
 ENDCASE
 DO coLbln
 STORE 99 TO mkEy
 SELECT deT_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO vpAg, pcAn
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           DO CASE
                CASE vsW1=01
                     SELECT caB_cpra
                CASE vsW1=02
                     SELECT teMporal
           ENDCASE
           DO caB_2400z
           SELECT deT_cpra
      ENDIF
      DO prD_2400z
      DO meD_2400z
      SELECT deT_cpra
      DO CASE
           CASE vcTd<>0
                STORE vcTd TO vcAn
                STORE "Piezas" TO pnUv
           CASE vtPo=2
                STORE f2401pie TO vcAn
                STORE f2401nuv TO pnUv
           OTHERWISE
                STORE f2401can TO vcAn
                STORE f2401nuv TO pnUv
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN-1.1 Say vCAN                         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN-0.4 Say vCAN                         Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV                             Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2401COD                         Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2401DES                         Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
                     IF vsW4=1
                          @vLIN,mCLN+114.5 Say F2401PRE                   Font "&mLetAri",9 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+131.0 Say Round(F2401PRE*F2401CAN,2) Font "&mLetAri",9 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ELSE
                          STORE ROUND(f2401pre*(1+(xpIg/100)), 4) TO vpRe
                          @vLIN,mCLN+114.5 Say vPRE                       Font "&mLetAri",9 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+131.0 Say Round(vPRE*F2401CAN,2)     Font "&mLetAri",9 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ENDIF
                CASE mpRt="1"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+7.1 Say vCAN                         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+8.8 Say vCAN                         Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV                             Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+29 Say F2401COD                         Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2401DES                         Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
                     IF vsW4=1
                          @vLIN,mCLN+119.5 Say F2401PRE                   Font "&mLetAri",9 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+135.8 Say Round(F2401PRE*F2401CAN,2) Font "&mLetAri",9 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ELSE
                          STORE ROUND(f2401pre*(1+(xpIg/100)), 4) TO vpRe
                          @vLIN,mCLN+119.5 Say vPRE                       Font "&mLetAri",9 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+135.8 Say Round(vPRE*F2401CAN,2)     Font "&mLetAri",9 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ENDIF
                CASE mpRt="2"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+1 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+2 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2401COD Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2401DES Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S80"
                     IF vsW4=1
                          @vLIN,mCLN+109.5 Say F2401PRE                   Font "&mLetRom",10 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+126   Say Round(F2401PRE*F2401CAN,2) Font "&mLetRom",10 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ELSE
                          STORE ROUND(f2401pre*(1+(xpIg/100)), 4) TO vpRe
                          @vLIN,mCLN+109.5 Say vPRE                       Font "&mLetRom",10 Style "NQ" Pict "9999,999.9999" Size 1,16
                          @vLIN,mCLN+126   Say Round(vPRE*F2401CAN,2)     Font "&mLetRom",10 Style "NQ" Pict "9999,999.99"   Size 1,14
                     ENDIF
           ENDCASE
      ENDIF
      STORE vlIn+1.2 TO vlIn
      STORE pcAn+vcAn TO pcAn
      SKIP
 ENDDO
 DO CASE
      CASE vsW1=01
           SELECT caB_cpra
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 STORE vlIn-1 TO vlIn
 IF vlIn>mpAg-5
      DO caB_2400z
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF mpRt="2"
      STORE vlIn+0.3 TO vlIn
 ENDIF
 IF vlIn>mpAg-4
      DO caB_2400z
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN-1.1 Say pCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN-0.4 Say pCAN Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                ENDIF
           CASE mpRt="1"
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+7.1 Say pCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+8.8 Say pCAN Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999,999"
                ENDIF
           CASE mpRt="2"
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+1 Say pCAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+2 Say pCAN Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
 ENDIF
 IF f2400val<>f2400tot
      IF f2400val<>f2400net
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+108.0 Say "Sub-Total" Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+123.1 Say F2400VAL    Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="1"
                          @vLIN,mCLN+108.0 Say "Sub-Total" Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+134.2 Say F2400VAL    Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="2"
                          @vLIN,mCLN+100 Say "Sub-Total"   Font "&mLetRom",10 Style "NQ"
                          @vLIN,mCLN+124 Say F2400VAL      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
                ENDCASE
           ENDIF
           STORE vlIn+1.1 TO vlIn
           IF vlIn>mpAg-4
                DO caB_2400z
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+108.0 Say "Descuento" Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+123.1 Say F2400DCT    Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="1"
                          @vLIN,mCLN+108.0 Say "Descuento" Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+134.2 Say F2400DCT    Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="2"
                          @vLIN,mCLN+100.0 Say "Descuento" Font "&mLetRom",10 Style "NQ"
                          @vLIN,mCLN+124.0 Say F2400DCT    Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
                ENDCASE
           ENDIF
           STORE vlIn+1.1 TO vlIn
           IF vlIn>mpAg-4
                DO caB_2400z
           ENDIF
      ENDIF
      IF f2400net<>f2400tot
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+108.0 Say "Neto"   Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+123.1 Say F2400NET Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="1"
                          @vLIN,mCLN+108.0 Say "Neto"   Font "&mLetAri",9  Style "BQ"
                          @vLIN,mCLN+134.2 Say F2400NET Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                     CASE mpRt="2"
                          @vLIN,mCLN+100.0 Say "Neto"   Font "&mLetRom",10 Style "NQ"
                          @vLIN,mCLN+124.0 Say F2400NET Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
                ENDCASE
           ENDIF
           STORE vlIn+1.1 TO vlIn
           IF vlIn>mpAg-4
                DO caB_2400z
           ENDIF
           IF f2400igv<>0
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mvIs=1
                               @vLIN,mCLN+108.0 Say "I.G.V." Font "&mLetAri",9 Style "BQ"
                               @vLIN,mCLN+123.1 Say F2400IGV Font "&mLetAri",9 Style "BQ" Pict "999,999.9999" Size 1,18
                          CASE mpRt="1"
                               @vLIN,mCLN+108.0 Say "I.G.V." Font "&mLetAri",9 Style "BQ"
                               @vLIN,mCLN+134.2 Say F2400IGV Font "&mLetAri",9 Style "BQ" Pict "999,999.9999" Size 1,18
                          CASE mpRt="2"
                               @vLIN,mCLN+100.0 Say "I.G.V." Font "&mLetRom",10 Style "NQ"
                               @vLIN,mCLN+124.0 Say F2400IGV Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
                     ENDCASE
                ENDIF
                STORE vlIn+1.1 TO vlIn
                IF vlIn>mpAg-4
                     DO caB_2400z
                ENDIF
           ENDIF
           IF f2400red<>0
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mvIs=1
                               @vLIN,mCLN+108.0 Say "Red/Dct" Font "&mLetAri",9  Style "BQ"
                               @vLIN,mCLN+123.1 Say F2400RED  Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                          CASE mpRt="1"
                               @vLIN,mCLN+108.0 Say "Red/Dct" Font "&mLetAri",9  Style "BQ"
                               @vLIN,mCLN+134.2 Say F2400RED  Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
                          CASE mpRt="2"
                               @vLIN,mCLN+100.0 Say "Red/Dct" Font "&mLetRom",10 Style "NQ"
                               @vLIN,mCLN+124.0 Say F2400RED  Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
                     ENDCASE
                ENDIF
                STORE vlIn+1.1 TO vlIn
                IF vlIn>mpAg-4
                     DO caB_2400z
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+108 Say "Total"    Font "&mLetAri",9  Style "BQ"
                IF f2400mon=1
                     @vLIN,mCLN+116 Say "S/."   Font "&mLetAri",9  Style "BQ"
                ELSE
                     @vLIN,mCLN+116 Say "US$"   Font "&mLetAri",9  Style "BQ"
                ENDIF
                @vLIN,mCLN+123.1 Say F2400TOT Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
           CASE mpRt="1"
                @vLIN,mCLN+108 Say "Total"    Font "&mLetAri",9  Style "BQ"
                IF f2400mon=1
                     @vLIN,mCLN+116 Say "S/."   Font "&mLetAri",9  Style "BQ"
                ELSE
                     @vLIN,mCLN+116 Say "US$"   Font "&mLetAri",9  Style "BQ"
                ENDIF
                @vLIN,mCLN+134.2 Say F2400TOT Font "&mLetAri",9  Style "BQ" Pict "999,999.9999" Size 1,18
           CASE mpRt="2"
                @vLIN,mCLN+100 Say "Total"    Font "&mLetRom",10 Style "NQ"
                IF f2400mon=1
                     @vLIN,mCLN+116 Say "S/."   Font "&mLetRom",10 Style "NQ"
                ELSE
                     @vLIN,mCLN+116 Say "US$"   Font "&mLetRom",10 Style "NQ"
                ENDIF
                @vLIN,mCLN+124 Say F2400TOT   Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,16
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pnUv, pcAn
ENDPROC
*
PROCEDURE Cab_2400z
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
           CASE f2400tpo=1
                @vLIN,mCLN Say "COMPRA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           CASE f2400tpo=2
                @vLIN,mCLN Say "GASTO No." +vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           CASE f2400tpo=3
                @vLIN,mCLN Say "PEDIDO No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg=1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN     Say "Proveedor:"                       Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+105 Say "Fecha de Emisión:"                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400NOM                           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+130 Say F2400FEM                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Factura:"                         Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+105 Say "Fecha de Registro:"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400TD1+"-"+F2400SR1+"-"+F2400FAC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+130 Say F2400REG                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "G.Remisión:"                      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+105 Say "Fecha de Ingreso:"                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400SR2+"-"+F2400REM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+130 Say F2400FIN                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Forma-Pago:"                      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+105 Say "Orden de Compra:"                 Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400NFP                           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+130 Say F2400ORD                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "C.Costos:"                        Font "&mLetAri",9 Style "BQ"
                     IF f2400tig=1
                          @vLIN,mCLN+105 Say "% IGV:"                        Font "&mLetAri",9 Style "BQ"
                     ELSE
                          @vLIN,mCLN+105 Say "% Renta:"                      Font "&mLetAri",9 Style "BQ"
                     ENDIF
                     @vLIN,mCLN+017 Say F2400NCC                           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+130 Say F2400PIG                           Font "&mLetAri",9 Style "NQ" Pict "99.999"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Observaciones:"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+020 Say F2400CM1                           Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
                     STORE vlIn+1.4 TO vlIn
                     IF LEN(ALLTRIM(f2400cm2))<>0
                          @vLIN,mCLN+020 Say F2400CM2                        Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
                          STORE vlIn+1.4 TO vlIn
                     ENDIF
                CASE mpRt="1"
                     @vLIN,mCLN     Say "Proveedor:"                       Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400NOM                           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+100 Say "Fecha de Emisión:"                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+125 Say F2400FEM                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Factura:"                         Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400TD1+"-"+F2400SR1+"-"+F2400FAC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+100 Say "Fecha de Registro:"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+125 Say F2400REG                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "G.Remisión:"                      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400SR2+"-"+F2400REM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+100 Say "Fecha de Ingreso:"                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+125 Say F2400FIN                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Forma-Pago:"                      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400NFP                           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+100 Say "Orden de Compra:"                 Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+125 Say F2400ORD                           Font "&mLetAri",9 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "C.Costos:"                        Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+017 Say F2400NCC                           Font "&mLetAri",9 Style "NQ"
                     IF f2400tig=1
                          @vLIN,mCLN+100 Say "% IGV:"                        Font "&mLetAri",9 Style "BQ"
                     ELSE
                          @vLIN,mCLN+100 Say "% Renta:"                      Font "&mLetAri",9 Style "BQ"
                     ENDIF
                     @vLIN,mCLN+125 Say F2400PIG                           Font "&mLetAri",9 Style "NQ" Pict "99.999"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Observaciones:"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+022 Say F2400CM1                           Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
                     STORE vlIn+1.4 TO vlIn
                     IF LEN(ALLTRIM(f2400cm2))<>0
                          @vLIN,mCLN+022 Say F2400CM2                        Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
                          STORE vlIn+1.4 TO vlIn
                     ENDIF
                CASE mpRt="2"
                     @vLIN,mCLN     Say "Proveedor"                        Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+019 Say F2400NOM                           Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+105 Say "Fecha de Emisión"                 Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+130 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+132 Say F2400FEM                           Font "&mLetRom",11 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Factura"                          Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+019 Say F2400TD1+"-"+F2400SR1+"-"+F2400FAC Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+105 Say "Fecha de Registro"                Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+130 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+132 Say F2400REG                           Font "&mLetRom",11 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "G.Remisión"                       Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+019 Say F2400SR2+"-"+F2400REM              Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+105 Say "Fecha de Ingreso"                 Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+130 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+132 Say F2400FIN                           Font "&mLetRom",11 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Forma-Pago"                       Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+019 Say F2400NFP                           Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+105 Say "Orden de Compra"                  Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+130 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+132 Say F2400ORD                           Font "&mLetRom",11 Style "NQ"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "C.Costos"                         Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+019 Say F2400NCC                           Font "&mLetRom",11 Style "NQ"
                     IF f2400tig=1
                          @vLIN,mCLN+105 Say "% IGV"                         Font "&mLetRom",11 Style "BQ"
                     ELSE
                          @vLIN,mCLN+105 Say "% Renta"                       Font "&mLetRom",11 Style "BQ"
                     ENDIF
                     @vLIN,mCLN+130 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+132 Say F2400PIG                           Font "&mLetRom",11 Style "NQ" Pict "99.999"
                     STORE vlIn+1.4 TO vlIn
                     @vLIN,mCLN     Say "Observaciones"                    Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+017 Say ":"                                Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+022 Say F2400CM1                           Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
                     STORE vlIn+1.4 TO vlIn
                     IF LEN(ALLTRIM(f2400cm2))<>0
                          @vLIN,mCLN+022 Say F2400CM2                        Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
                          STORE vlIn+1.4 TO vlIn
                     ENDIF
           ENDCASE
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.4 TO vlIn
      IF mpRt="2"
           STORE vlIn+0.3 TO vlIn
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Cantidad"        Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+17 Say "Unidad"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+27 Say "Código"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+44 Say "Descripción"     Font "&mLetAri",9 Style "BQ"
                IF vsW4=1
                     @vLIN,mCLN+120.5 Say "V.Vt.Unit" Font "&mLetAri",9 Style "BQ"
                ELSE
                     @vLIN,mCLN+120.5 Say "P.U.c/IGV" Font "&mLetAri",9 Style "BQ"
                ENDIF
                IF vsW4=1
                     @vLIN,mCLN+134 Say "V.Vt.Total"  Font "&mLetAri",9 Style "BQ"
                ELSE
                     @vLIN,mCLN+134 Say "Prec.Total"  Font "&mLetAri",9 Style "BQ"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN    Say "Cantidad"        Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+17 Say "Unidad"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+29 Say "Código"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+44 Say "Descripción"     Font "&mLetAri",9 Style "BQ"
                IF vsW4=1
                     @vLIN,mCLN+110.2 Say "V.Vta.Unit"  Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+124.9 Say "V.Vta.Total" Font "&mLetAri",9 Style "BQ"
                ELSE
                     @vLIN,mCLN+110.4 Say "P.U.c/IGV"   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+125.5 Say "Prec.Total"  Font "&mLetAri",9 Style "BQ"
                ENDIF
           CASE mpRt="2"
                @vLIN,mCLN+04 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+17 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+27 Say "Código"                Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+44 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
                IF vsW4=1
                     @vLIN,mCLN+109.5 Say " V.Vta.Unit"     Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+126.0 Say "V.Vta.Total"     Font "&mLetAri",9 Style "NQ"
                ELSE
                     @vLIN,mCLN+107.5 Say "Prec.Unit.c/IGV" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+126.0 Say "Prec.Total"      Font "&mLetAri",9 Style "NQ"
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
PROCEDURE Prd_2400z
 SELECT deT_cpra
 STORE f2401cod TO vcOd
 DO pr1_2700z IN PAI2700Z
 SELECT deT_cpra
 DO CASE
      CASE f2401la1=0 .AND. f2401la2=0 .AND. f2401an1=0 .AND. f2401an2=0  ;
           .AND. vtPo=10
      CASE (f2401la1=0 .OR. f2401an1=0) .AND. (vtPo=2 .AND. f2401med=1)
      CASE (f2401la2=0 .OR. f2401an2=0) .AND. (vtPo=2 .AND. f2401med=2)
      CASE vtPo=2 .AND. f2401med=1
           STORE ALLTRIM(STR(f2401la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2401an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f2401med=2
           STORE ALLTRIM(STR(f2401la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2401an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
 ENDCASE
ENDPROC
*
PROCEDURE Med_2400z
 STORE 00 TO vcTd
 SELECT itE_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2402tdo+ ;
    f2402ser+f2402doc+ALLTRIM(f2402cod)+"*"
      IF f2402opc="S"
           SKIP
           LOOP
      ENDIF
      IF vtPo>=4 .AND. vtPo<=9
           STORE vcTd+f2402ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
