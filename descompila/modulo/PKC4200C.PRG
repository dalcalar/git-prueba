 DO muE_4200a
 IF LEN(ALLTRIM(xcLa))=0
      STORE 2 TO xcLv
 ELSE
      STORE 1 TO xcLv
 ENDIF
 RESTORE SCREEN FROM vpAn_99
 DO coL_fondo
 DO cuAdro WITH vfI0, vcO0, vfI0+vuFi+0.3, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ vfI0+0.1, vcO0+1 TO vfI0+2, vcO0+36.4 PATTERN 1 COLOR SCHEME 3
 @ vfI0+0.1, vcO0+1 TO vfI0+0.1, vcO0+36.2 COLOR RGB(0,0,0,0,0,0)
 @ vfI0+0.1, vcO0+1 TO vfI0+2, vcO0+1 COLOR RGB(0,0,0,0,0,0)
 DO coL_beige
 @ vfI0, vcO0 TO vfI0+7.1, vcO0+vuCo PATTERN 1
 @ vfI0, vcO0 TO vfI0+2.1, vcO0+38 PATTERN 1 COLOR SCHEME 3
 @ vfI0+15, vcO0 TO vfI0+vuFi+0.3, vcO0+vuCo PATTERN 1
 IF mrEs="1"
      @ vfI0+7.1, vcL1-1 TO vfI0+15, vcL1-1
      @ vfI0+7.1, vcL2 TO vfI0+15, vcL2
 ELSE
      @ vfI0+7.1, vcL1-3 TO vfI0+15, vcL1-3
      @ vfI0+7.1, vcL2-3 TO vfI0+15, vcL2-3
 ENDIF
 DO coL_fondo
 IF mrEs>"2"
      DO foT_4200c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coLsc3
 @vFI0+00.4,vCO0+4 Say "CÓDIGO:"       Font "&mLetRom",13 Style "BQ"
 @vFI0+15.2,vCO0+1 Say "LEYES AFECTAS" Font "&mLetRom",9  Style "BT" Color 1
 DO coL_fondo
 DO CASE
      CASE mrEs="1"
           @vFI0+02.6,vCO0+01  Say "Ap.Paterno"        Font "&mLetAri",9 Style "NT"
           @vFI0+04.1,vCO0+01  Say "Ap.Materno"        Font "&mLetAri",9 Style "NT"
           @vFI0+05.6,vCO0+01  Say "Nombres"           Font "&mLetAri",9 Style "NT"
           @vFI0+07.6,vCO0+01  Say "Teléfono"          Font "&mLetAri",9 Style "NT"
           @vFI0+09.1,vCO0+01  Say "# DNI "            Font "&mLetAri",9 Style "NT"
           @vFI0+10.6,vCO0+01  Say "# L.M."            Font "&mLetAri",9 Style "NT"
           @vFI0+12.1,vCO0+01  Say "# R.U.C."          Font "&mLetAri",9 Style "NT"
           @vFI0+13.6,vCO0+01  Say "Cargas Familiares" Font "&mLetAri",9 Style "NT"
           @vFI0+16.5,vCO0+01  Say "Salud"             Font "&mLetAri",9 Style "NT"
           @vFI0+18.0,vCO0+01  Say "Pensiones"         Font "&mLetAri",9 Style "NT"
           @vFI0+19.5,vCO0+01  Say "IPSS Vida"         Font "&mLetAri",9 Style "NT"
           @vFI0+21.0,vCO0+01  Say "Renta de 4ta."     Font "&mLetAri",9 Style "NT"
           @vFI0+07.6,vCL1     Say "Estado Civil"      Font "&mLetAri",9 Style "NT"
           @vFI0+09.1,vCL1     Say "Sexo"              Font "&mLetAri",9 Style "NT"
           @vFI0+10.6,vCL1     Say "#Seg.Social"       Font "&mLetAri",9 Style "NT"
           @vFI0+12.1,vCL1     Say "AFP"               Font "&mLetAri",9 Style "NT"
           @vFI0+13.6,vCL1     Say "# AFP"             Font "&mLetAri",9 Style "NT"
           @vFI0+02.6,vCL1+18  Say "Dirección"         Font "&mLetAri",9 Style "NT"
           @vFI0+04.1,vCL1+18  Say "Distrito"          Font "&mLetAri",9 Style "NT"
           @vFI0+05.6,vCL1+18  Say "Departamento"      Font "&mLetAri",9 Style "NT"
           @vFI0+15.5,vCL1+30  Say "Banco"             Font "&mLetAri",9 Style "NT"
           @vFI0+17.0,vCL1+30  Say "#Cuenta"           Font "&mLetAri",9 Style "NT"
           @vFI0+18.5,vCL1+30  Say "C.Costo"           Font "&mLetAri",9 Style "NT"
           @vFI0+07.6,vCL2+1.5 Say "F.Nacim"           Font "&mLetAri",9 Style "NT"
           @vFI0+09.1,vCL2+1.5 Say "L.Nacim"           Font "&mLetAri",9 Style "NT"
           @vFI0+10.6,vCL2+1.5 Say "Nacionalid"        Font "&mLetAri",9 Style "NT"
           @vFI0+12.1,vCL2+1.5 Say "Cargo"             Font "&mLetAri",9 Style "NT"
           @vFI0+13.6,vCL2+1.5 Say "Area"              Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @vFI0+02.6,vCO0+01  Say "Apellido Paterno"  Font "&mLetAri",9 Style "BT"
           @vFI0+04.1,vCO0+01  Say "Apellido Materno"  Font "&mLetAri",9 Style "BT"
           @vFI0+05.6,vCO0+01  Say "Nombres"           Font "&mLetAri",9 Style "BT"
           @vFI0+07.6,vCO0+01  Say "Teléfono"          Font "&mLetAri",9 Style "BT"
           @vFI0+09.1,vCO0+01  Say "# DNI "            Font "&mLetAri",9 Style "BT"
           @vFI0+10.6,vCO0+01  Say "# L.M."            Font "&mLetAri",9 Style "BT"
           @vFI0+12.1,vCO0+01  Say "# R.U.C."          Font "&mLetAri",9 Style "BT"
           @vFI0+13.6,vCO0+01  Say "Cargas Familiares" Font "&mLetAri",9 Style "BT"
           @vFI0+16.5,vCO0+01  Say "Essalud"           Font "&mLetAri",9 Style "BT"
           @vFI0+18.0,vCO0+01  Say "Pensiones"         Font "&mLetAri",9 Style "BT"
           @vFI0+19.5,vCO0+01  Say "IPSS Vida"         Font "&mLetAri",9 Style "BT"
           @vFI0+21.0,vCO0+01  Say "Renta de 4ta."     Font "&mLetAri",9 Style "BT"
           @vFI0+07.6,vCL1     Say "Estado Civil"      Font "&mLetAri",9 Style "BT"
           @vFI0+09.1,vCL1     Say "Sexo"              Font "&mLetAri",9 Style "BT"
           @vFI0+10.6,vCL1     Say "# Seguro Social"   Font "&mLetAri",9 Style "BT"
           @vFI0+12.1,vCL1     Say "AFP"               Font "&mLetAri",9 Style "BT"
           @vFI0+13.6,vCL1     Say "# AFP"             Font "&mLetAri",9 Style "BT"
           @vFI0+02.6,vCL1+18  Say "Dirección"         Font "&mLetAri",9 Style "BT"
           @vFI0+04.1,vCL1+18  Say "Distrito"          Font "&mLetAri",9 Style "BT"
           @vFI0+05.6,vCL1+18  Say "Departamento"      Font "&mLetAri",9 Style "BT"
           @vFI0+15.5,vCL1+30  Say "Banco"             Font "&mLetAri",9 Style "BT"
           @vFI0+17.0,vCL1+30  Say "# Cuenta"          Font "&mLetAri",9 Style "BT"
           @vFI0+18.5,vCL1+30  Say "Centro de Costos"  Font "&mLetAri",9 Style "BT"
           @vFI0+07.6,vCL2+1.5 Say "Fecha-Nacimiento"  Font "&mLetAri",9 Style "BT"
           @vFI0+09.1,vCL2+1.5 Say "Lugar-Nacimiento"  Font "&mLetAri",9 Style "BT"
           @vFI0+10.6,vCL2+1.5 Say "Nacionalidad"      Font "&mLetAri",9 Style "BT"
           @vFI0+12.1,vCL2+1.5 Say "Cargo"             Font "&mLetAri",9 Style "BT"
           @vFI0+13.6,vCL2+1.5 Say "Area"              Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLbln
 @vFI0+00.3,vCO0+20.5      Get  xCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4   Color ,&mColBlN
 @vFI0+02.6,vCO0+vC11+15   Edit xAPP Font "&mLetAri",9  Style "NQ" Size 1,30,25 Color ,&mColBlN
 @vFI0+04.1,vCO0+vC11+15   Edit xAPM Font "&mLetAri",9  Style "NQ" Size 1,30,25 Color ,&mColBlN
 @vFI0+05.6,vCO0+vC11+15   Edit xNOM Font "&mLetAri",9  Style "NQ" Size 1,30,30 Color ,&mColBlN
 @vFI0+07.6,vCO0+vC11+17.2 Get  xTEL Font "&mLetAri",9  Style "NQ" Size 1,09.7  Color ,&mColBlN
 @vFI0+09.1,vCO0+vC11+15.8 Get  xELE Font "&mLetAri",9  Style "NQ" Size 1,11.1  Color ,&mColBlN
 @vFI0+10.6,vCO0+vC11+12.8 Get  xMIL Font "&mLetAri",9  Style "NQ" Size 1,14.1  Color ,&mColBlN
 @vFI0+12.1,vCO0+vC11+12   Get  xRUC Font "&mLetAri",9  Style "NQ" Size 1,14.9  Color ,&mColBlN
 @vFI0+13.6,vCO0+vC11+23   Get  xCAR Font "&mLetAri",9  Style "NQ" Size 1,03.9  Color ,&mColBlN
 @vFI0+16.5,vCO0+16        Edit xNSA Font "&mLetAri",9  Style "NQ" Size 1,35,25 Color ,&mCol_Beige
 @vFI0+18.0,vCO0+16        Edit xNPE Font "&mLetAri",9  Style "NQ" Size 1,35,25 Color ,&mCol_Beige
 @vFI0+19.5,vCO0+16        Edit xNIP Font "&mLetAri",9  Style "NQ" Size 1,35,25 Color ,&mCol_Beige
 @vFI0+21.0,vCO0+vC11+16   Get  xRE4 Font "&mLetAri",9  Style "NQ" Function "*RHT \<Si;\<No" Default xRE4 Size 1,8.1,.08
 @vFI0+02.6,vCL1+36        Edit xDIR Font "&mLetAri",9  Style "NQ" Size 1,58,70   Color ,&mColBlN
 @vFI0+04.1,vCL1+36        Edit xNDI Font "&mLetAri",9  Style "NQ" Size 1,37,25   Color ,&mCol_Beige
 @vFI0+05.6,vCL1+36        Edit xNDP Font "&mLetAri",9  Style "NQ" Size 1,37,25   Color ,&mCol_Beige
 @vFI0+10.6,vCL1+vC11+16   Edit xSSO Font "&mLetAri",9  Style "NQ" Size 1,32.3,15 Color ,&mColBlN
 @vFI0+12.1,vCL1+vC11+16   Edit xNAF Font "&mLetAri",9  Style "NQ" Size 1,32.3,50 Color ,&mCol_Fondo
 @vFI0+13.6,vCL1+vC11+16   Edit xSPP Font "&mLetAri",9  Style "NQ" Size 1,32.3,15 Color ,&mColBlN
 @vFI0+15.5,vCL1+vC12+41   Edit xNBA Font "&mLetAri",9  Style "NQ" Size 1,49.7,50 Color ,&mCol_Beige
 @vFI0+17.0,vCL1+vC12+41   Edit xNCT Font "&mLetAri",9  Style "NQ" Size 1,49.7,50 Color ,&mCol_Beige
 @vFI0+18.5,vCL1+vC12+41   Edit xNCC Font "&mLetAri",9  Style "NQ" Size 1,49.7,50 Color ,&mCol_Beige
 @vFI0+07.6,vCL1+16        Get  xCIV Font "&mLetAri",9  Style "NQ" Function "*RHT Sol;Cas;Viu;Div" Default xCIV Size 1,8.1,.08
 @vFI0+09.1,vCL1+16        Get  xSEX Font "&mLetAri",9  Style "NQ" Function "*RHT Mas;Fem"         Default xSEX Size 1,8.1,.08
 @vFI0+21.0,vCL1+43        Get  xCLV Font "&mLetAri",9  Style "NQ" Function "*RHT \<Si;\<No"       Default xCLV Size 1,8.1,.08
 @vFI0+21.0,vCL1+60.5      Get  xCLA Font "&mLetAri",9  Style "NQ" Size 1,12      Color ,&mColBlN
 @vFI0+07.6,vCL2+vC12+14.5 Get  xFNA Font "&mLetAri",9  Style "NQ" Size 1,12.2    Color ,&mColBlN
 @vFI0+09.1,vCL2+vC12+14.5 Edit xLNA Font "&mLetAri",9  Style "NQ" Size 1,25.6,25 Color ,&mColBlN
 @vFI0+10.6,vCL2+vC12+14.5 Edit xNAC Font "&mLetAri",9  Style "NQ" Size 1,25.6,25 Color ,&mColBlN
 @vFI0+12.1,vCL2+vC12+14.5 Edit xNCA Font "&mLetAri",9  Style "NQ" Size 1,30.7,50 Color ,&mCol_Fondo
 @vFI0+13.6,vCL2+vC12+14.5 Edit xNAR Font "&mLetAri",9  Style "NQ" Size 1,30.7,50 Color ,&mCol_Fondo
 READ TIMEOUT 0.01
 DO coLsc7
 @vFI0+21.0,vCL1+30 Say "C L A V E" Font "&mLetAri",9 Style "BT" Color 3/4
 @ vfI0+22.8, vcL2+vc12-37.2 TO vfI0+25.1, vcL2+vc12+45 PATTERN 1
 @vFI0+23.3,vCL2+vC12-36.4 Say "Usuario: "+xUSU     Font "&mLetAri",10 Style "BQ" Size 1,31.8 Pict "@S34"
 @vFI0+23.3,vCL2+vC12+02.4 Say "Fecha: "+Dtoc(xDAT) Font "&mLetAri",10 Style "BQ" Size 1,18.6
 @vFI0+23.3,vCL2+vC12+26.6 Say "Hora: "+xTIM        Font "&mLetAri",10 Style "BQ" Size 1,14.6
 SET COLOR TO RGB(253,242,47,0,0,0)
 DO CASE
      CASE mrEs="1"
           @vFI0+25,vCO0+26 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",13 Style "BTI"
      CASE mrEs="2"
           @vFI0+27,vCO0+29 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",17 Style "BTI"
      CASE mrEs="3"
           @vFI0+27,vCO0+21 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",21 Style "BTI"
      CASE mrEs="4"
           @vFI0+27,vCO0+22 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",22 Style "BTI"
      CASE mrEs>="5"
           @vFI0+27,vCO0+08 Say "Presionar una tecla para regresar al Detalle..." Font "&mLetRom",28 Style "BTI"
 ENDCASE
 mkEy = INKEY(0, "HM")
 DO CASE
      CASE mkEy=k_F10
           DO reTorna
      OTHERWISE
           STORE 99 TO mkEy
           RETURN
 ENDCASE
ENDPROC
*
PROCEDURE Fot_4200c
 DO coLbln
 IF mrEs>"2"
      DO prEsiona WITH "1", "CUADR1", vlLn-0.6, vcLl-4.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 @ vlLn+12.4, vcLl TO vlLn+17.2, vcLl+27.7 PATTERN 1 PEN 1
 @ vlLn+14.0, vcLl TO vlLn+14.0, vcLl+27.7
 @ vlLn+15.6, vcLl TO vlLn+15.6, vcLl+27.7
 @vLLN+12.6,vCLL+2 Say "FOTO:"                  Font "&mLetAri",10 Style "BQ"
 @vLLN+14.2,vCLL+1 Say "Alto:172 Ancho:137 pix" Font "&mLetAri",9  Style "BQ"
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(UPPER(xfOt))+".BMP" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(UPPER(xfOt))+".BMP" TO mdBf
 ENDIF
 If File("&mDBF")
      IF mrEs<"3"
           @vLLN+0.05,vCLL+0.2 Say "&mDBF" BitMap Style "B" Size 12.3,27.1 Stretch
      ELSE
           @vLLN+0.05,vCLL+0.2 Say "&mDBF" BitMap Style "B" Size 12.3,27.3 Stretch
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coLbln
      @ vlLn, vcLl TO vlLn+12.4, vcLl+27.7 PATTERN 1 PEN 1
 ENDIF
 @vLLN+12.6,vCLL+11 Get xFOT Font "&mLetAri",10 Style "NQ" Pict "!!!!!!!!" Size 1,11.3 Color ,&mColBlN
ENDPROC
*
