 PRIVATE pcO0
 STORE vcO0-36 TO pcO0
 STORE 1 TO vsW3
 DO muE_2111a IN PAC2111A
 SELECT tiP_prod
 SEEK xtIp
 STORE f9211nti TO xnTi
 STORE f9211tpo TO xtPp
 SELECT grUpos
 SEEK xgRu
 STORE f9216des TO xnGr
 STORE 99 TO mkEy
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK ALLTRIM(xbAs)+"*"
 STORE f2111des TO xdBa
 RESTORE SCREEN FROM vpAn_99
 DO coL_fondo
 DO cuAdro WITH vfI0-0.1, pcO0, vfI0+vuFi+1.2, pcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH vfI0-0.1, pcO0, vfI0+1.6, pcO0+60
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @ vfI0+04.60, pcO0-0.3 TO vfI0+08.0, pcO0+vuCo+0.1 PATTERN 1
 @ vfI0+17.50, pcO0-0.3 TO vfI0+19.4, pcO0+vuCo+0.1 PATTERN 1
 @ vfI0+21.30, pcO0-0.3 TO vfI0+23.3, pcO0+vuCo+0.1 PATTERN 1
 @ vfI0+19.40, pcO0+71 TO vfI0+23.3, pcO0+71
 @ vfI0+26.70, pcO0-0.3 TO vfI0+26.7, pcO0+vuCo+0.1
 DO coL_fondo
 @ vfI0+06.2, pcO0+vuCo+4 TO vfI0+25.8, pcO0+vuCo+68.5 PATTERN 1 COLOR SCHEME 3
 @ vfI0+08.2, pcO0+vuCo+4 TO vfI0+08.2, pcO0+vuCo+68.5
 @ vfI0+10.2, pcO0+vuCo+4 TO vfI0+10.2, pcO0+vuCo+68.5
 DO coLbln
 @vFI0+06.7,pCO0+vUCO+22.1 Say "Nombre del Gráfico" Font "&mLetAri",11 Style "BT"
 DO coLsc1
 @vFI0+08.5,pCO0+vUCO+26.1 Say xFOT                 Font "&mLetAri",12 Style "BQ" Size 1,12 Pict "@S8"
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(xfOt)+".BMP" TO xfOt
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(xfOt)+".BMP" TO xfOt
 ENDIF
 If !File("&xFOT")
      STORE SPACE(08) TO xfOt
 ENDIF
 If Len(AllTrim(xFOT)) <> 0 .and. File("&xFOT")
      @vFI0+10.6,pCO0+vUCO+4.8 Say "&xFOT" BitMap Style "Q"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_fondo
 @vFI0+00.00,pCO0+000.5 Say "Código:"                 Font "&mLetRom",13 Style "BT"
 @vFI0+02.50,pCO0+000.5 Say "CUBSO:"                  Font "&mLetRom",13 Style "BT"
 @vFI0+01.50,pCO0+063.0 Say "Tipo"                    Font "&mLetAri",10 Style "BT"
 @vFI0+03.00,pCO0+063.0 Say "Grupo"                   Font "&mLetAri",10 Style "BT"
 @vFI0+05.00,pCO0+001.0 Say "Descripción"             Font "&mLetAri",9  Style "BT"
 @vFI0+06.50,pCO0+001.0 Say "Descripción Impresa"     Font "&mLetAri",9  Style "BT"
 @vFI0+17.90,pCO0+001.0 Say "Producto Base"           Font "&mLetAri",9  Style "BT"
 @vFI0+08.50,pCO0+001.0 Say "Producto de Venta"       Font "&mLetAri",9  Style "BT"
 @vFI0+10.00,pCO0+001.0 Say "Descripción modificable" Font "&mLetAri",9  Style "NT"
 @vFI0+11.50,pCO0+001.0 Say "Precio modificable"      Font "&mLetAri",9  Style "NT"
 @vFI0+13.00,pCO0+001.0 Say "Visible"                 Font "&mLetAri",9  Style "NT"
 @vFI0+14.50,pCO0+001.0 Say "Unidad de Venta"         Font "&mLetAri",9  Style "NT"
 @vFI0+16.00,pCO0+001.0 Say "Unidad de Invent"        Font "&mLetAri",9  Style "NT"
 IF wnIv="1"
      @vFI0+19.80,pCO0+001.0 Say "Costo S/."            Font "&mLetAri",9  Style "NT"
      @vFI0+19.80,pCO0+031.0 Say "Costo US$"            Font "&mLetAri",9  Style "NT"
 ENDIF
 @vFI0+19.80,pCO0+074.0 Say "Stock"                   Font "&mLetAri",9  Style "NT"
 @vFI0+19.80,pCO0+102.5 Say "Cajas"                   Font "&mLetAri",9  Style "NT"
 @vFI0+08.50,pCO0+050.0 Say "Controla Stocks"         Font "&mLetAri",9  Style "BT"
 @vFI0+10.00,pCO0+050.0 Say "Control de Series"       Font "&mLetAri",9  Style "NT"
 @vFI0+13.00,pCO0+050.0 Say "Peso"                    Font "&mLetAri",9  Style "NT"
 @vFI0+14.50,pCO0+050.0 Say "Tamaño/Talla"            Font "&mLetAri",9  Style "NT"
 @vFI0+08.50,pCO0+091.0 Say "Stock Mínimo"            Font "&mLetAri",9  Style "NT" Size 1,15.7
 @vFI0+10.00,pCO0+091.0 Say "Stock Máximo"            Font "&mLetAri",9  Style "NT"
 @vFI0+11.50,pCO0+091.0 Say "Procedencia"             Font "&mLetAri",9  Style "NT"
 @vFI0+13.00,pCO0+091.0 Say "Marca"                   Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+001.0 Say "Largo"                   Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+019.5 Say "Ancho"                   Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+037.5 Say "mt"                      Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+042.0 Say "Espesor"                 Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+074.0 Say "Largo"                   Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+096.5 Say "Ancho"                   Font "&mLetAri",9  Style "NT"
 @vFI0+21.80,pCO0+116.0 Say "Pulg"                    Font "&mLetAri",9  Style "NT"
 @vFI0+00.00,pCO0+013.0 Get  xCOD                     Font "&mLetRom",13 Style "BQ" Size 1,32.2 Color ,&mColBlN
 @vFI0+02.50,pCO0+013.0 Get  xCUB                     Font "&mLetRom",12 Style "BQ" Size 1,32.2 Color ,&mColBlN
 @vFI0-00.10,pCO0+070.5 Get  xTPO                     Font "&mLetRom",12 Style "BQ" Function "*RHT Producto;Servicio;Activo Fijo" Default vTPO
 @vFI0+01.50,pCO0+073.5 Edit xNTI                     Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @vFI0+03.00,pCO0+073.5 Edit xNGR                     Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @vFI0+08.50,pCO0+029.0 Get  xVTA                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vVTA
 @vFI0+10.00,pCO0+029.0 Get  xMD1                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vMD1
 @vFI0+11.50,pCO0+029.0 Get  xMD2                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vMD2
 @vFI0+13.00,pCO0+029.0 Get  xMD3                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vMD3
 @vFI0+08.50,pCO0+070.0 Get  xCST                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vCST
 @vFI0+10.00,pCO0+070.0 Get  xSER                     Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vSRR
 @vFI0+13.00,pCO0+060.0 Get  xPES                     Font "&mLetAri",9  Style "NQ" Size 1,16   Pict "999,999.999"  Color ,&mColBlN
 @vFI0+14.50,pCO0+060.0 Edit xTAM                     Font "&mLetAri",9  Style "NQ" Size 1,30,30
 @vFI0+08.50,pCO0+108.0 Get  xMIN                     Font "&mLetAri",9  Style "NQ" Size 1,13.9 Pict "999,999.99"   Color ,&mColBlN
 @vFI0+10.00,pCO0+108.0 Get  xMAX                     Font "&mLetAri",9  Style "NQ" Size 1,13.9 Pict "999,999.99"   Color ,&mColBlN
 IF wnIv="1"
      @vFI0+19.80,pCO0+012.0 Get xVCS                   Font "&mLetAri",9  Style "NQ" Size 1,16.0 Pict "999,999.999"  Color ,&mColBlN
      @vFI0+19.80,pCO0+044.0 Get xVCP                   Font "&mLetAri",9  Style "NQ" Size 1,16.0 Pict "999,999.999"  Color ,&mColBlN
 ENDIF
 @vFI0+19.80,pCO0+082.5 Get  xSTO                     Font "&mLetAri",9  Style "NQ" Size 1,17.0 Pict "999,999.9999" Color ,&mColBlN
 @vFI0+21.80,pCO0+008.5 Get  xLA1                     Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColBlN
 @vFI0+21.80,pCO0+027.3 Get  xAN1                     Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColBlN
 @vFI0+21.80,pCO0+052.2 Get  xESP                     Font "&mLetAri",9  Style "NQ" Size 1,8.9 Pict "999.99"  Color ,&mColBlN
 @vFI0+21.80,pCO0+082.5 Get  xLA2                     Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
 @vFI0+21.80,pCO0+104.0 Get  xAN2                     Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
 IF xtPp=3
      @vFI0+21.8,pCO0+062.0 Say "Pulg"                  Font "&mLetAri",9  Style "NT"
 ELSE
      @vFI0+21.8,pCO0+062.0 Say "mm"                    Font "&mLetAri",9  Style "NT"
 ENDIF
 IF mcAj=1
      @vFI0+19.80,pCO0+110 Get xCAJ                     Font "&mLetAri",9  Style "NQ" Size 1,11.0 Pict "999,999"      Color ,&mColBlN
 ENDIF
 IF (xiMp=1 .AND. miMp=1) .OR. miMp=2
      @vFI0+11.50,pCO0+108.0 Edit xPRO                  Font "&mLetAri",9  Style "NQ" Size 1,15,30
      @vFI0+13.00,pCO0+108.0 Edit xMAR                  Font "&mLetAri",9  Style "NQ" Size 1,15,30
 ENDIF
 IF miMp=1
      @vFI0+11.5,pCO0+50 Say "Importado"                Font "&mLetAri",9  Style "NQ"
      @vFI0+11.5,pCO0+70 Get  xIMP                      Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vIMP
 ENDIF
 DO coLbln
 @vFI0+05.00,pCO0+26.0 Edit xDES                      Font "&mLetAri",9  Style "NQ" Size 1,89,120
 @vFI0+06.50,pCO0+26.0 Edit xDCR                      Font "&mLetAri",9  Style "NQ" Size 1,89,120
 @vFI0+14.50,pCO0+20.5 Edit xNUV                      Font "&mLetAri",9  Style "NQ" Size 1,25,30
 @vFI0+16.00,pCO0+20.5 Edit xNUC                      Font "&mLetAri",9  Style "NQ" Size 1,25,30
 @vFI0+17.90,pCO0+20.5 Edit xDBA                      Font "&mLetAri",9  Style "NQ" Size 1,89,70
 IF wnIv$"13" .AND. xvTa=1
      DO coL_fondo
      @vFI0+23.6,pCO0+01.0 Say "Lista de Precios:"                 Font "&mLetRom",12 Style "BQ"
      @vFI0+23.8,pCO0+27.0 Say "Precio Lista"+Str(vSW3,2,0)+" S/." Font "&mLetAri",9  Style "NQ" Size 1,22
      @vFI0+23.8,pCO0+72.0 Say "Mínimo"                            Font "&mLetAri",9  Style "NQ"
      @vFI0+25.3,pCO0+27.0 Say "Precio Lista"+Str(vSW3,2,0)+" US$" Font "&mLetAri",9  Style "NQ" Size 1,22
      @vFI0+25.3,pCO0+72.0 Say "Mínimo"                            Font "&mLetAri",9  Style "NQ"
      DO coLbln
      @vFI0+23.8,pCO0+49.5 Get xVV1                                Font "&mLetAri",9  Style "NQ" Size 1,17.3 Pict "999,999.9999" Color ,&mColBlN
      @vFI0+23.8,pCO0+81.5 Get xMV1                                Font "&mLetAri",9  Style "NQ" Size 1,17.3 Pict "999,999.9999" Color ,&mColBlN
      @vFI0+25.3,pCO0+49.5 Get xVV2                                Font "&mLetAri",9  Style "NQ" Size 1,17.3 Pict "999,999.9999" Color ,&mColBlN
      @vFI0+25.3,pCO0+81.5 Get xMV2                                Font "&mLetAri",9  Style "NQ" Size 1,17.3 Pict "999,999.9999" Color ,&mColBlN
      IF mlSt>1
           DO prEsiona WITH "1", "DETAL1", vfI0+23.8, pcO0+100
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
 READ TIMEOUT 0.01
 @ vfI0+27.0, pcO0+042.0 TO vfI0+28.2, pcO0+124.1 PATTERN 1 COLOR SCHEME 1
 @vFI0+17.9,pCO0+020.5 Say AllTrim(xBAS)+"-"+xDBA Font "&mLetAri",9 Style "NQ" Size 1,89 Pict "@S89"
 @vFI0+27.1,pCO0+042.8 Say "Usuario: "+xUSU       Font "&mLetAri",9 Style "BT" Size 1,62 Pict "@S40"
 @vFI0+27.1,pCO0+082.1 Say "Fecha: "+Dtoc(xDAT)   Font "&mLetAri",9 Style "BT" Size 1,21
 @vFI0+27.1,pCO0+106.6 Say "Hora: "+xTIM          Font "&mLetAri",9 Style "BT" Size 1,17
 DO coLblr
 @vFI0+28.2,pCO0+27 Say "Presionar ESC para regresar al Detalle..." Font "&mLetRom",14 Style "BT"
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Clic .AND. xvTa=1 .AND. wnIv<>"2"
           DO clP_coo
           DO CASE
                CASE mfIl>=vfI0+23.664 .AND. mfIl<=vfI0+24.521 .AND. mcCc>= ;
                     pcO0+99.8 .AND. mcCc<=pcO0+103.4
                     DO CASE
                          CASE vsW3=mlSt
                               STORE 1 TO vsW3
                          OTHERWISE
                               STORE vsW3+1 TO vsW3
                     ENDCASE
                     DO coL_fondo
                     @vFI0+23.8,pCO0+27 Say "Precio Lista-"+Str(vSW3,2,0)+" S/." Font "&mLetAri",9 Style "NQ" Size 1,22
                     @vFI0+25.3,pCO0+27 Say "Precio Lista-"+Str(vSW3,2,0)+" US$" Font "&mLetAri",9 Style "NQ" Size 1,22
                     DO coLbln
                     DO CASE
                          CASE vsW3=1
                               @vFI0+23.8,pCO0+49.5 Say xVV1 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMV1 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVV2 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMV2 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=2
                               @vFI0+23.8,pCO0+49.5 Say xVV3 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMV3 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVV4 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMV4 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=3
                               @vFI0+23.8,pCO0+49.5 Say xVV5 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMV5 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVV6 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMV6 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=4
                               @vFI0+23.8,pCO0+49.5 Say xVV7 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMV7 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVV8 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMV8 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=5
                               @vFI0+23.8,pCO0+49.5 Say xVV9 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMV9 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVV0 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMV0 Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=6
                               @vFI0+23.8,pCO0+49.5 Say xVVA Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMVA Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVVB Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMVB Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=7
                               @vFI0+23.8,pCO0+49.5 Say xVVC Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMVC Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVVD Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMVD Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=8
                               @vFI0+23.8,pCO0+49.5 Say xVVE Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMVE Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVVF Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMVF Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=9
                               @vFI0+23.8,pCO0+49.5 Say xVVG Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMVG Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVVH Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMVH Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                          CASE vsW3=10
                               @vFI0+23.8,pCO0+49.5 Say xVVI Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+23.8,pCO0+81.5 Say xMVI Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+49.5 Say xVVJ Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                               @vFI0+25.3,pCO0+81.5 Say xMVJ Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "999,999.9999"
                     ENDCASE
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
      ENDCASE
 ENDDO
ENDPROC
*
