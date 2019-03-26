 SELECT leTras
 DO muE_3210a
 IF xmOn=1
      STORE "S/." TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 DO p00_3210c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_3210c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3210c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3210c
           CASE mkEy=k_F10
                DO reTorna
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE P00_3210c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_0000a WITH "Letra:"+vsEr+"-"+vdOc
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH vfI0, vcO0, vfI0+19, vcO0+125
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ vfI0+06.7, vcO0+000 TO vfI0+06.7, vcO0+89
 @ vfI0+00.0, vcO0+089 TO vfI0+16.0, vcO0+124.2 PATTERN 1 COLOR SCHEME 6
 @ vfI0+05.4, vcO0+089 TO vfI0+14.0, vcO0+124.2 PATTERN 1 COLOR SCHEME 7
 @ vfI0+14.0, vcO0+000 TO vfI0+16.0, vcO0+40 PATTERN 1 COLOR SCHEME 3
 @ vfI0+07.4, vcO0+089 TO vfI0+11.8, vcO0+124.2
 @vFI0+00.6,vCO0+001.0 Say "Proveedor"          Font "&mLetAri",9  Style "NT"
 @vFI0+02.1,vCO0+001.0 Say "Dirección"          Font "&mLetAri",9  Style "NT"
 @vFI0+03.6,vCO0+001.0 Say "Distrito"           Font "&mLetAri",9  Style "NT"
 @vFI0+03.6,vCO0+055.5 Say "Teléfono"           Font "&mLetAri",9  Style "NT"
 @vFI0+05.1,vCO0+001.0 Say "R.U.C."             Font "&mLetAri",9  Style "NT"
 @vFI0+07.3,vCO0+001.0 Say "Aval"               Font "&mLetAri",9  Style "NT"
 @vFI0+08.8,vCO0+001.0 Say "Dirección"          Font "&mLetAri",9  Style "NT"
 @vFI0+10.3,vCO0+001.0 Say "Distrito"           Font "&mLetAri",9  Style "NT"
 @vFI0+10.3,vCO0+055.5 Say "Teléfono"           Font "&mLetAri",9  Style "NT"
 @vFI0+11.8,vCO0+001.0 Say "R.U.C."             Font "&mLetAri",9  Style "NT"
 @vFI0+00.6,vCO0+090.0 Say "Fecha"              Font "&mLetAri",9  Style "NT"
 @vFI0+02.1,vCO0+090.0 Say "Días"               Font "&mLetAri",9  Style "NT"
 @vFI0+03.6,vCO0+090.0 Say "Vencim."            Font "&mLetAri",9  Style "NT"
 @vFI0+05.9,vCO0+091.0 Say "Moneda"             Font "&mLetAri",9  Style "NT"
 @vFI0+08.8,vCO0+091.0 Say "Tipo"               Font "&mLetRom",13 Style "NT"
 @vFI0+12.4,vCO0+090.0 Say "Banco"              Font "&mLetAri",9  Style "NT"
 @vFI0+14.5,vCO0+001.0 Say "Renovación"         Font "&mLetAri",9  Style "NT"
 @vFI0+14.5,vCO0+049.5 Say "No.Banco"           Font "&mLetAri",9  Style "NT"
 @vFI0+14.5,vCO0+090.0 Say "MONTO"              Font "&mLetAri",9  Style "NT"
 @vFI0+14.5,vCO0+100.0 Say vSIG                 Font "&mLetAri",9  Style "NT"
 @vFI0+16.5,vCO0+001.0 Say "Comentario"         Font "&mLetAri",9  Style "NT"
 @vFI0+16.5,vCO0+049.5 Say "Referencia"         Font "&mLetAri",9  Style "NT"
 @vFI0+18.2,vCO0+020.8 Say "Usuario: "+xUSU     Font "&mLetAri",9  Style "BT" Size 1,50 Pict "@S40"
 @vFI0+18.2,vCO0+083.1 Say "Fecha: "+Dtoc(xDAT) Font "&mLetAri",9  Style "BT" Size 1,17
 @vFI0+18.2,vCO0+105.6 Say "Hora: "+xTIM        Font "&mLetAri",9  Style "BT" Size 1,14
 DO coLbln
 SET READBORDER ON
 @vFI0+00.7,vCO0+013.2 Edit xNOM Font "&mLetAri",9  Style "NQ" Size 1,73.4,70
 @vFI0+07.3,vCO0+013.2 Edit xANO Font "&mLetAri",9  Style "NQ" Size 1,73.4,70
 @vFI0+12.4,vCO0+099.0 Edit xNBA Font "&mLetAri",9  Style "NQ" Size 1,23.5,50                Color Scheme 7
 @vFI0+00.7,vCO0+101.8 Get  xFEM Font "&mLetAri",9  Style "NQ" Size 1,12.1                   Color ,&mColBlN
 @vFI0+03.7,vCO0+101.8 Get  xFVE Font "&mLetAri",9  Style "NQ" Size 1,12.1                   Color Scheme 6
 @vFI0+02.2,vCO0+101.8 Get  xDIA Font "&mLetAri",9  Style "NQ" Size 1,5.4  Pict "999"        Color ,&mColBlN
 @vFI0+14.5,vCO0+108.0 Get  xTOT Font "&mLetAri",9  Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mColBlN
 @vFI0+14.5,vCO0+034.0 Get  xNRE Font "&mLetAri",9  Style "NQ" Size 1,4    Pict "99"         Color ,&mColBlN
 @vFI0+14.5,vCO0+062.4 Edit xLE1 Font "&mLetAri",9  Style "NQ" Size 1,24,15
 @vFI0+16.5,vCO0+016.4 Edit xCOM Font "&mLetAri",9  Style "NQ" Size 1,30,15
 @vFI0+16.5,vCO0+062.4 Edit xREF Font "&mLetAri",9  Style "NQ" Size 1,60,50
 @vFI0+05.9,vCO0+101.1 Get  xMON Font "&mLetAri",11 Style "NQ" Default vMON Function "*RHT S/.;US$"
 @vFI0+07.9,vCO0+101.1 Get  xTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
 @vFI0+14.5,vCO0+016.4 Get  xREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
 DO coL_fondo
 @vFI0+02.2,vCO0+013.2 Edit xDIR Font "&mLetAri",9  Style "NQ" Size 1,73.4,70
 @vFI0+03.7,vCO0+013.2 Edit xDIS Font "&mLetAri",9  Style "NQ" Size 1,35,25
 @vFI0+08.8,vCO0+013.2 Edit xADI Font "&mLetAri",9  Style "NQ" Size 1,73.4,70
 @vFI0+10.3,vCO0+013.2 Edit xADS Font "&mLetAri",9  Style "NQ" Size 1,35,25
 @vFI0+03.7,vCO0+66.6 Get xTEL Font "&mLetAri",9 Style "NQ" Size 1,15.6                    Color ,RGB(0,0,0,220,213,199)
 @vFI0+05.2,vCO0+13.2 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999" Color ,RGB(0,0,0,220,213,199)
 @vFI0+10.3,vCO0+66.6 Get xATL Font "&mLetAri",9 Style "NQ" Size 1,15.6                    Color ,RGB(0,0,0,220,213,199)
 @vFI0+11.8,vCO0+13.2 Get xARU Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999" Color ,RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Rs1_3210c
 DO reS_3210b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 SELECT leTras
 DO muE_3210a
 IF xmOn=1
      STORE "S/." TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 DO p00_3210c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Clp_3210c
 = INKEY(0.01)
 DO CASE
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3210c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte del programa se puede ver e imprimir la letra escogida."
 @ pfIl+2, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+4, 22 SAY ":" STYLE "BT"
 @ pfIl+5, 22 SAY ":" STYLE "BT"
 @ pfIl+6, 22 SAY ":" STYLE "BT"
 @ pfIl+4, 13 SAY "ESC" STYLE "BT"
 @ pfIl+5, 13 SAY "F10" STYLE "BT"
 @ pfIl+6, 13 SAY "F1" STYLE "BT"
 @ pfIl+4, 24 SAY "Regresar a Detalle"
 @ pfIl+5, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+6, 24 SAY "Ayuda del Programa"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
