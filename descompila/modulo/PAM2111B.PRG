 STORE 1 TO ciTe
 STORE 0 TO ciT1
 DO p00_2111b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2111a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO p00_2111b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2111b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2111a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO p00_2111b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. ciTe=1
                STORE 16 TO viTe
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Up
                STORE ciTe-1 TO ciTe
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_left
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home
                EXIT
           CASE mkEy=k_Ctrl_end
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE ciTe=6
                          STORE 99 TO mkEy
                          EXIT
                     OTHERWISE
                          STORE ciTe+1 TO ciTe
                ENDCASE
           CASE mkEy=k_Tab
                EXIT
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF ciTe<>ciT1
           STORE ciTe TO ciT1
           DO coL_fondo
           @mMF2,mMC2 Say Space(116) Font "&mLetRom",9 Style "BQ" Size 1,117
           DO CASE
                CASE ciTe=1
                     @mMF2,mMC2+20 Say "CAMPO DE 2 ENTEROS Y 3 DECIMALES, PUEDE SER CERO SI NO SE USA..." Font "&mLetRom",9 Style "BQ"
                CASE ciTe=2
                     @mMF2,mMC2+20 Say "CAMPO DE 2 ENTEROS Y 3 DECIMALES, PUEDE SER CERO SI NO SE USA..." Font "&mLetRom",9 Style "BQ"
                CASE ciTe=3
                     @mMF2,mMC2+26 Say "CAMPO DE 5 DÍGITOS, PUEDE SER CERO SI NO SE USA..."               Font "&mLetRom",9 Style "BQ"
                CASE ciTe=4
                     @mMF2,mMC2+20 Say "CAMPO DE 4 ENTEROS Y 2 DECIMALES, PUEDE SER CERO SI NO SE USA..." Font "&mLetRom",9 Style "BQ"
                CASE ciTe=5
                     @mMF2,mMC2+20 Say "CAMPO DE 4 ENTEROS Y 2 DECIMALES, PUEDE SER CERO SI NO SE USA..." Font "&mLetRom",9 Style "BQ"
                CASE ciTe=6
                     @mMF2,mMC2+20 Say "CAMPO DE 3 ENTEROS Y 3 DECIMALES, PUEDE SER CERO SI NO SE USA..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE ciTe=01
                @mFI0+17.5,mCO0+34.5 Get  vLA3 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
           CASE ciTe=02
                @mFI0+19.0,mCO0+34.5 Get  vAN3 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
           CASE ciTe=03
                @mFI0+20.5,mCO0+34.5 Get  vPXC Font "&mLetAri",9 Style "NQ" Size 1,7   Pict "99999"   Color ,&mColBlN
           CASE ciTe=04
                @mFI0+22.0,mCO0+34.5 Get  vCX1 Font "&mLetAri",9 Style "NQ" Size 1,11  Pict "9999.99" Color ,&mColBlN
           CASE ciTe=05
                @mFI0+23.5,mCO0+34.5 Get  vCX2 Font "&mLetAri",9 Style "NQ" Size 1,11  Pict "9999.99" Color ,&mColBlN
           CASE ciTe=06
                @mFI0+15.5,mCO0+72.5 Get  vADV Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE P00_2111b
 DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ mfI0+14, mcO0+00.2 TO mfI0+25.0, mcO0+118.9 PATTERN 1 COLOR SCHEME 7
 @ mfI0+21, mcO0+51.0 TO mfI0+24.5, mcO0+117.0 PATTERN 1 COLOR SCHEME 6
 @ mfI0+14, mcO0+00.2 TO mfI0+14.0, mcO0+118.9 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+14, mcO0+00.2 TO mfI0+25.0, mcO0+000.2 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+21, mcO0+51.0 TO mfI0+21.0, mcO0+117.0 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+21, mcO0+51.0 TO mfI0+24.5, mcO0+051.0 COLOR RGB(255,255,255,0,0,0)
 @mFI0+14.3,mCO0+02.0 Say "Medidas de Compra"           Font "&mLetAri",9 Style "BTU"
 @mFI0+16.0,mCO0+02.0 Say "Unidad de Compra"            Font "&mLetAri",9 Style "NT"
 @mFI0+17.5,mCO0+02.0 Say "Medidas de Compra"           Font "&mLetAri",9 Style "NT"
 @mFI0+17.6,mCO0+26.3 Say "LARGO"                       Font "&mLetAri",8 Style "BT"
 @mFI0+17.6,mCO0+46.8 Say "mt"                          Font "&mLetAri",8 Style "BT"
 @mFI0+19.0,mCO0+26.3 Say "ANCHO"                       Font "&mLetAri",8 Style "BT"
 @mFI0+19.0,mCO0+46.8 Say "mt"                          Font "&mLetAri",8 Style "BT"
 @mFI0+20.5,mCO0+02.0 Say "Unidades x Caja:"            Font "&mLetAri",9 Style "NT"
 @mFI0+22.0,mCO0+02.0 Say "Caj x Conteiner de 20 pies:" Font "&mLetAri",9 Style "NT"
 @mFI0+23.5,mCO0+02.0 Say "Caj x Conteiner de 40 pies:" Font "&mLetAri",9 Style "NT"
 @mFI0+15.5,mCO0+54.0 Say "% de Advaloren:"             Font "&mLetAri",9 Style "NT"
 @mFI0+17.5,mCO0+54.0 Say "Procedencia"                 Font "&mLetAri",9 Style "NT"
 @mFI0+19.0,mCO0+54.0 Say "Marca"                       Font "&mLetAri",9 Style "NT"
 DO coLblz
 @mFI0+21.5,mCO0+52.0 Say "Largo"                       Font "&mLetAri",9 Style "NT"
 @mFI0+21.5,mCO0+70.5 Say "Ancho"                       Font "&mLetAri",9 Style "NT"
 @mFI0+21.5,mCO0+89.0 Say "mt"                          Font "&mLetAri",8 Style "NT"
 @mFI0+21.5,mCO0+94.0 Say "Esp."                        Font "&mLetAri",9 Style "NT"
 @mFI0+23.0,mCO0+52.0 Say "Largo"                       Font "&mLetAri",9 Style "NT"
 @mFI0+23.0,mCO0+70.5 Say "Ancho"                       Font "&mLetAri",9 Style "NT"
 @mFI0+23.0,mCO0+89.0 Say "pulg"                        Font "&mLetAri",8 Style "NT"
 IF vtPp=3
      @mFI0+21.5,mCO0+112 Say "pulg"                      Font "&mLetAri",8 Style "NQ" Size 1,3.8 Color Scheme 6
 ELSE
      @mFI0+21.5,mCO0+112 Say "mm"                        Font "&mLetAri",8 Style "NQ" Size 1,3.8 Color Scheme 6
 ENDIF
 DO coLsc7
 @mFI0+16.0,mCO0+024.5 Edit vNUX Font "&mLetAri",9 Style "NQ" Size 1,24,30
 @mFI0+17.5,mCO0+068.5 Edit vPRO Font "&mLetAri",9 Style "NQ" Size 1,38,30
 @mFI0+19.0,mCO0+068.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,38,30
 DO coLbln
 @mFI0+15.5,mCO0+072.5 Get  vADV Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
 @mFI0+17.5,mCO0+034.5 Get  vLA3 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
 @mFI0+19.0,mCO0+034.5 Get  vAN3 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
 @mFI0+20.5,mCO0+034.5 Get  vPXC Font "&mLetAri",9 Style "NQ" Size 1,7   Pict "99999"   Color ,&mColBlN
 @mFI0+22.0,mCO0+034.5 Get  vCX1 Font "&mLetAri",9 Style "NQ" Size 1,11  Pict "9999.99" Color ,&mColBlN
 @mFI0+23.5,mCO0+034.5 Get  vCX2 Font "&mLetAri",9 Style "NQ" Size 1,11  Pict "9999.99" Color ,&mColBlN
 @mFI0+21.5,mCO0+059.5 Get  vLA1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColSc6
 @mFI0+21.5,mCO0+078.0 Get  vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColSc6
 @mFI0+21.5,mCO0+101.2 Get  vESP Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99"  Color ,&mColSc6
 @mFI0+23.0,mCO0+059.5 Get  vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColSc6
 @mFI0+23.0,mCO0+078.0 Get  vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColSc6
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "FLECH2", mfI0+15, mcO0+109
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Unx_2111b
 = INKEY(0.01)
 SELECT unIdad
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9213", "U", "F9213DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnUx))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO coLsc7
      STORE f9213uni TO vcUx
      STORE f9213des TO vnUx
      @mFI0+16,mCO0+24.5 Say vNUX Font "&mLetAri",9 Style "NQ" Size 1,24 Pict "@S27"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2111b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+53 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mfI0+15.036 .AND. mfIl<=mfI0+17.893 .AND. mcCc>=mcO0+109  ;
           .AND. mcCc<=mcO0+114.8
           STORE k_Ctrl_left TO mkEy
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2
           DO unX_2111b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+17.407 .AND. mfIl<=mfI0+18.621 .AND. mcCc>=mcO0+1.4  ;
           .AND. mcCc<=mcO0+48.2 .AND. ciTe<>1
           STORE 01 TO ciTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.907 .AND. mfIl<=mfI0+20.05 .AND. mcCc>=mcO0+1.4  ;
           .AND. mcCc<=mcO0+48.2 .AND. ciTe<>2
           STORE 02 TO ciTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+20.407 .AND. mfIl<=mfI0+21.550 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+48.2 .AND. ciTe<>3
           STORE 03 TO ciTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+21.907 .AND. mfIl<=mfI0+23.121 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+48.2 .AND. ciTe<>4
           STORE 04 TO ciTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+23.336 .AND. mfIl<=mfI0+24.621 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+48.2 .AND. ciTe<>5
           STORE 05 TO ciTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+15.514 .AND. mfIl<=mfI0+16.657 .AND. mcCc>=mcO0+ ;
           72.2 .AND. mcCc<=mcO0+83 .AND. ciTe<>6
           STORE 06 TO ciTe
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2111b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 01 SAY  ;
   "En esta parte del programa, en donde se pueden poner datos adicionales para"
 @ pfIl+01, 01 SAY "los programas de Importaciones."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+15, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 06 SAY "ESC" STYLE "BT"
 @ pfIl+06, 06 SAY "F10" STYLE "BT"
 @ pfIl+07, 06 SAY "F1" STYLE "BT"
 @ pfIl+08, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 06 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl+12, 06 SAY "<- CTRL" STYLE "BT"
 @ pfIl+13, 06 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+14, 06 SAY "CTRL END" STYLE "BT"
 @ pfIl+15, 06 SAY "TAB" STYLE "BT"
 @ pfIl+05, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+06, 26 SAY "Ayuda del Programa"
 @ pfIl+07, 26 SAY "Regresar al  Menú Principal"
 @ pfIl+08, 26 SAY "Ir al campo siguiente"
 @ pfIl+09, 26 SAY "Ir al campo siguiente"
 @ pfIl+10, 26 SAY "Ir al campo superior"
 @ pfIl+11, 26 SAY "Ir al campo derecho"
 @ pfIl+12, 26 SAY "Ir al campo izquierdo"
 @ pfIl+13, 26 SAY "Ir al primer campo"
 @ pfIl+14, 26 SAY "Ir al último campo"
 @ pfIl+15, 26 SAY "Grabar y regresar al primer campo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
