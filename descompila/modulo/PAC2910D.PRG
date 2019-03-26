 = INKEY(0.01)
 SET READBORDER ON
 DO muE_2910a
 DO p00_2910d
 STORE 99 TO mkEy
 STORE 1 TO viTe
 STORE 0 TO viT1
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2910d WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2910d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2910d WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=13
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<5 .OR. viTe=10 .OR. viTe=11)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO CASE
                     CASE viTe=13
                          DO grA_2910d
                          EXIT
                     OTHERWISE
                          STORE viTe+1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=13
                          DO grA_2910d
                          EXIT
                     CASE viTe<05
                          STORE 05 TO viTe
                     CASE viTe=09 .OR. viTe=10
                          STORE 11 TO viTe
                     OTHERWISE
                          STORE viTe+1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Down
                DO CASE
                     CASE viTe=13
                          DO grA_2910d
                          EXIT
                     CASE viTe=04
                          STORE 09 TO viTe
                     CASE viTe=10
                          STORE 12 TO viTe
                     OTHERWISE
                          STORE viTe+1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=05
                          STORE 01 TO viTe
                     CASE viTe=09
                          STORE 04 TO viTe
                     CASE viTe=11 .OR. viTe=12
                          STORE 08 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=05
                          STORE 04 TO viTe
                     CASE viTe=06
                          STORE 04 TO viTe
                     CASE viTe=11
                          STORE 09 TO viTe
                     CASE viTe=12
                          STORE 10 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_end
                STORE 13 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Tab
                DO grA_2910d
                EXIT
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,vCO1 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
           DO CASE
                CASE viTe=1 .OR. viTe=4
                     @mMF2,vCO1+06 Say "CAMPO DE 15 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE TENER ESPACIOS VACÍOS..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=2 .OR. viTe=3
                     @mMF2,vCO1+06 Say "CAMPO DE 7 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE TENER ESPACIOS VACÍOS..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=5 .OR. viTe=6 .OR. viTe=7 .OR. viTe=8
                     @mMF2,vCO1+06 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE TENER ESPACIOS VACÍOS..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .OR. viTe=10 .OR. viTe=11
                     @mMF2,vCO1+06 Say "CAMPO TIPO FECHA: DIA, MES Y ANO DE 4 DIAGITOS, SI NO SE USA PUEDE QUEDAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=12 .OR. viTe=13
                     @mMF2,vCO1+06 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE TENER ESPACIOS VACÍOS..."  Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @vFI0+02.5,vCO0+013 Edit xPRO Font "&mLetAri",9 Style "NQ" Size 1,21.8,15
           CASE viTe=2
                @vFI0+04.5,vCO0+013 Edit xPLZ Font "&mLetAri",9 Style "NQ" Size 1,10.8,7
           CASE viTe=3
                @vFI0+06.5,vCO0+013 Edit xPLA Font "&mLetAri",9 Style "NQ" Size 1,10.8,7
           CASE viTe=4
                @vFI0+08.5,vCO0+013 Edit xVAP Font "&mLetAri",9 Style "NQ" Size 1,21.8,15
           CASE viTe=5
                @vFI0+06.5,vCO0+052 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=6
                @vFI0+08.0,vCO0+052 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=7
                @vFI0+09.5,vCO0+052 Edit xCM3 Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=8
                @vFI0+11.0,vCO0+052 Edit xCM4 Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=9
                @vFI0+13.5,vCO0+027 Get  xEMB Font "&mLetAri",9 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE viTe=10
                @vFI0+15.0,vCO0+027 Get  xFLL Font "&mLetAri",9 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE viTe=11
                @vFI0+13.5,vCO0+110 Get  xFDI Font "&mLetAri",9 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE viTe=12
                @vFI0+17.5,vCO0+020 Edit xCM5 Font "&mLetAri",9 Style "NQ" Size 1,60,50
           CASE viTe=13
                @vFI0+19.0,vCO0+020 Edit xCM6 Font "&mLetAri",9 Style "NQ" Size 1,60,50
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Gra_2910d
 SELECT caBecera
 STORE 99 TO mkEy
 DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2910pro WITH xpRo
 REPLACE f2910plz WITH xpLz
 REPLACE f2910pla WITH xpLa
 REPLACE f2910vap WITH xvAp
 REPLACE f2910tco WITH xtCo
 REPLACE f2910ent WITH xeNt
 REPLACE f2910cm1 WITH xcM1
 REPLACE f2910cm2 WITH xcM2
 REPLACE f2910cm3 WITH xcM3
 REPLACE f2910cm4 WITH xcM4
 REPLACE f2910emb WITH xeMb
 REPLACE f2910can WITH xcAn
 REPLACE f2910fdi WITH xfDi
 REPLACE f2910fll WITH xfLl
 REPLACE f2910hdi WITH xhDi
 REPLACE f2910cm5 WITH xcM5
 REPLACE f2910cm6 WITH xcM6
 UNLOCK
 IF vsW1=02
      SELECT teMporal
      REPLACE f2910pro WITH xpRo
      REPLACE f2910plz WITH xpLz
      REPLACE f2910pla WITH xpLa
      REPLACE f2910vap WITH xvAp
      REPLACE f2910tco WITH xtCo
      REPLACE f2910ent WITH xeNt
      REPLACE f2910cm1 WITH xcM1
      REPLACE f2910cm2 WITH xcM2
      REPLACE f2910cm3 WITH xcM3
      REPLACE f2910cm4 WITH xcM4
      REPLACE f2910emb WITH xeMb
      REPLACE f2910can WITH xcAn
      REPLACE f2910fdi WITH xfDi
      REPLACE f2910fll WITH xfLl
      REPLACE f2910hdi WITH xhDi
      REPLACE f2910cm5 WITH xcM5
      REPLACE f2910cm6 WITH xcM6
 ENDIF
 DO CASE
      CASE vsW1=01
           SELECT caBecera
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 DO orD_2910b IN PAC2910B
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_2910d
 DO prEsiona WITH "4", "BOT_MA07", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH vfI0-1, vcO0+0.4, vfI0+22, vcO0+125
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, vcO1, mmF2+0.9, vcO1+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH vfI0+13, vcO0+1.6, vfI0+21, vcO0+123.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 STORE 99 TO mkEy
 @vFI0-00.5,vCO0+001 Say "ORDEN DE COMPRA:"         Font "&mLetRom",13 Style "BQ"
 @vFI0+00.0,vCO0+051 Say "Proveedor"                Font "&mLetAri",9  Style "BQ"
 @vFI0+02.5,vCO0+001 Say "Proforma:"                Font "&mLetAri",9  Style "NQ"
 @vFI0+04.5,vCO0+001 Say "Poliza:"                  Font "&mLetAri",9  Style "NQ"
 @vFI0+06.5,vCO0+001 Say "Planilla:"                Font "&mLetAri",9  Style "NQ"
 @vFI0+08.5,vCO0+001 Say "Vapor:"                   Font "&mLetAri",9  Style "NQ"
 @vFI0+11.0,vCO0+001 Say "Conteiners:"              Font "&mLetAri",9  Style "BT" Color 4
 @vFI0+02.5,vCO0+036 Say "Tipo de Contenedor:"      Font "&mLetAri",9  Style "NQ"
 @vFI0+02.5,vCO0+086 Say "Tipo de Entrega:"         Font "&mLetAri",9  Style "NQ"
 @vFI0+06.5,vCO0+036 Say "Comentarios:"             Font "&mLetAri",9  Style "NQ"
 DO coLsc3
 @vFI0+13.5,vCO0+002 Say "Fecha de Embarque:"       Font "&mLetAri",9  Style "BQ"
 @vFI0+13.5,vCO0+046 Say "Canal:"                   Font "&mLetAri",9  Style "NQ"
 @vFI0+13.5,vCO0+081 Say "Fecha de Disponibilidad:" Font "&mLetAri",9  Style "BQ"
 @vFI0+15.0,vCO0+002 Say "Fecha de Llegada:"        Font "&mLetAri",9  Style "BQ"
 @vFI0+15.0,vCO0+081 Say "Hora de Disponibilidad:"  Font "&mLetAri",9  Style "BQ"
 @vFI0+17.5,vCO0+002 Say "Observaciones:"           Font "&mLetAri",9  Style "NQ"
 DO coL_fondo
 @vFI0-00.5,vCO0+036 Edit xDOC Font "&mLetRom",11 Style "BQ" Size 1,10,7
 @vFI0+00.0,vCO0+065 Edit xNOM Font "&mLetAri",9  Style "NQ" Size 1,58,70
 DO coLbln
 @vFI0+02.5,vCO0+013 Edit xPRO Font "&mLetAri",9  Style "NQ" Size 1,21.8,15
 @vFI0+04.5,vCO0+013 Edit xPLZ Font "&mLetAri",9  Style "NQ" Size 1,10.8,7
 @vFI0+06.5,vCO0+013 Edit xPLA Font "&mLetAri",9  Style "NQ" Size 1,10.8,7
 @vFI0+08.5,vCO0+013 Edit xVAP Font "&mLetAri",9  Style "NQ" Size 1,21.8,15
 @vFI0+02.5,vCO0+060 Get  xTCO Font "&mLetAri",9  Style "NQ" Default xTPO Function "*RVT Abierto;Cerrado;Abierto y Cerrado"
 @vFI0+02.5,vCO0+105 Get  xENT Font "&mLetAri",9  Style "NQ" Default xENT Function "*RVT Completa;Parcial"
 @vFI0+06.5,vCO0+052 Edit xCM1 Font "&mLetAri",9  Style "NQ" Size 1,70,70
 @vFI0+08.0,vCO0+052 Edit xCM2 Font "&mLetAri",9  Style "NQ" Size 1,70,70
 @vFI0+09.5,vCO0+052 Edit xCM3 Font "&mLetAri",9  Style "NQ" Size 1,70,70
 @vFI0+11.0,vCO0+052 Edit xCM4 Font "&mLetAri",9  Style "NQ" Size 1,70,70
 @vFI0+13.5,vCO0+027 Get  xEMB Font "&mLetAri",9  Style "NQ" Size 1,12 Color ,&mColBlN
 @vFI0+13.5,vCO0+055 Get  xCAN Font "&mLetAri",9  Style "NQ" Default xCAN Function "*RVT Verde;Anaranjado;Rojo"
 @vFI0+13.5,vCO0+110 Get  xFDI Font "&mLetAri",9  Style "NQ" Size 1,12 Color ,&mColBlN
 @vFI0+15.0,vCO0+027 Get  xFLL Font "&mLetAri",9  Style "NQ" Size 1,12 Color ,&mColBlN
 @vFI0+15.0,vCO0+110 Get  xHDI Font "&mLetAri",9  Style "NQ" Default xHDI Function "*RVT Mañana;Tarde;Noche"
 @vFI0+17.5,vCO0+020 Edit xCM5 Font "&mLetAri",9  Style "NQ" Size 1,60,50
 @vFI0+19.0,vCO0+020 Edit xCM6 Font "&mLetAri",9  Style "NQ" Size 1,60,50
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Clp_2910d
 = INKEY(0.05)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.6 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
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
      CASE mfIl>=vfI0+2.393 .AND. mfIl<=vfI0+3.464 .AND. mcCc>=vcO0+59.6  ;
           .AND. mcCc<=vcO0+71 .AND. xtCo<>1
           STORE 1 TO xtCo
           @vFI0+2.5,vCO0+60 Get xTCO Font "&mLetAri",9 Style "NQ" Default xTPO Function "*RVT Abierto;Cerrado;Abierto y Cerrado"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+3.464 .AND. mfIl<=vfI0+4.536 .AND. mcCc>=vcO0+59.6  ;
           .AND. mcCc<=vcO0+72.8 .AND. xtCo<>2
           STORE 2 TO xtCo
           @vFI0+2.5,vCO0+60 Get xTCO Font "&mLetAri",9 Style "NQ" Default xTPO Function "*RVT Abierto;Cerrado;Abierto y Cerrado"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+4.536 .AND. mfIl<=vfI0+5.607 .AND. mcCc>=vcO0+59.6  ;
           .AND. mcCc<=vcO0+82.6 .AND. xtCo<>3
           STORE 3 TO xtCo
           @vFI0+2.5,vCO0+60 Get xTCO Font "&mLetAri",9 Style "NQ" Default xTPO Function "*RVT Abierto;Cerrado;Abierto y Cerrado"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+2.393 .AND. mfIl<=vfI0+3.464 .AND. mcCc>=vcO0+104.4  ;
           .AND. mcCc<=vcO0+119.2 .AND. xeNt<>1
           STORE 1 TO xeNt
           @vFI0+2.5,vCO0+105 Get xENT Font "&mLetAri",9 Style "NQ" Default xENT Function "*RVT Completa;Parcial"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+3.464 .AND. mfIl<=vfI0+4.536 .AND. mcCc>=vcO0+104.4  ;
           .AND. mcCc<=vcO0+116.6 .AND. xeNt<>2
           STORE 2 TO xeNt
           @vFI0+2.5,vCO0+105 Get xENT Font "&mLetAri",9 Style "NQ" Default xENT Function "*RVT Completa;Parcial"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+13.25 .AND. mfIl<=vfI0+14.464 .AND. mcCc>=vcO0+54.6  ;
           .AND. mcCc<=vcO0+64.8 .AND. xcAn<>1
           STORE 1 TO xcAn
           @vFI0+13.5,vCO0+55 Get xCAN Font "&mLetAri",9 Style "NQ" Default xCAN Function "*RVT Verde;Anaranjado;Rojo"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+14.464 .AND. mfIl<=vfI0+15.536 .AND. mcCc>=vcO0+ ;
           54.6 .AND. mcCc<=vcO0+70.8 .AND. xcAn<>2
           STORE 2 TO xcAn
           @vFI0+13.5,vCO0+55 Get xCAN Font "&mLetAri",9 Style "NQ" Default xCAN Function "*RVT Verde;Anaranjado;Rojo"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+15.536 .AND. mfIl<=vfI0+16.607 .AND. mcCc>=vcO0+ ;
           54.6 .AND. mcCc<=vcO0+63.6 .AND. xcAn<>3
           STORE 3 TO xcAn
           @vFI0+13.5,vCO0+55 Get xCAN Font "&mLetAri",9 Style "NQ" Default xCAN Function "*RVT Verde;Anaranjado;Rojo"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+14.893 .AND. mfIl<=vfI0+15.964 .AND. mcCc>=vcO0+ ;
           109.4 .AND. mcCc<=vcO0+122 .AND. xhDi<>1
           STORE 1 TO xhDi
           @vFI0+15,vCO0+110 Get xHDI Font "&mLetAri",9 Style "NQ" Default xHDI Function "*RVT Mañana;Tarde;Noche"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+15.964 .AND. mfIl<=vfI0+17.036 .AND. mcCc>=vcO0+ ;
           109.4 .AND. mcCc<=vcO0+122 .AND. xhDi<>2
           STORE 2 TO xhDi
           @vFI0+15,vCO0+110 Get xHDI Font "&mLetAri",9 Style "NQ" Default xHDI Function "*RVT Mañana;Tarde;Noche"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+17.036 .AND. mfIl<=vfI0+18.036 .AND. mcCc>=vcO0+ ;
           109.4 .AND. mcCc<=vcO0+122 .AND. xhDi<>3
           STORE 3 TO xhDi
           @vFI0+15,vCO0+110 Get xHDI Font "&mLetAri",9 Style "NQ" Default xHDI Function "*RVT Mañana;Tarde;Noche"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+2.393 .AND. mfIl<=vfI0+3.607 .AND. mcCc>=vcO0+0.8  ;
           .AND. mcCc<=vcO0+35 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+4.393 .AND. mfIl<=vfI0+5.607 .AND. mcCc>=vcO0+0.8  ;
           .AND. mcCc<=vcO0+24 .AND. viTe<>2
           STORE 02 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+6.393 .AND. mfIl<=vfI0+7.607 .AND. mcCc>=vcO0+0.8  ;
           .AND. mcCc<=vcO0+24 .AND. viTe<>3
           STORE 03 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+8.393 .AND. mfIl<=vfI0+9.607 .AND. mcCc>=vcO0+0.8  ;
           .AND. mcCc<=vcO0+35 .AND. viTe<>4
           STORE 04 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+6.393 .AND. mfIl<=vfI0+7.607 .AND. mcCc>=vcO0+51.6  ;
           .AND. mcCc<=vcO0+122.2 .AND. viTe<>5
           STORE 05 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+7.893 .AND. mfIl<=vfI0+9.107 .AND. mcCc>=vcO0+51.6  ;
           .AND. mcCc<=vcO0+122.2 .AND. viTe<>6
           STORE 06 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+9.393 .AND. mfIl<=vfI0+10.607 .AND. mcCc>=vcO0+51.6  ;
           .AND. mcCc<=vcO0+122.2 .AND. viTe<>7
           STORE 07 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+10.893 .AND. mfIl<=vfI0+12.036 .AND. mcCc>=vcO0+ ;
           51.6 .AND. mcCc<=vcO0+122.2 .AND. viTe<>8
           STORE 08 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+13.393 .AND. mfIl<=vfI0+14.607 .AND. mcCc>=vcO0+1.4  ;
           .AND. mcCc<=vcO0+39.4 .AND. viTe<>9
           STORE 09 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+14.893 .AND. mfIl<=vfI0+16.107 .AND. mcCc>=vcO0+1.4  ;
           .AND. mcCc<=vcO0+39.4 .AND. viTe<>10
           STORE 10 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+13.393 .AND. mfIl<=vfI0+14.607 .AND. mcCc>=vcO0+80  ;
           .AND. mcCc<=vcO0+122.4 .AND. viTe<>11
           STORE 11 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+17.393 .AND. mfIl<=vfI0+18.607 .AND. mcCc>=vcO0+ ;
           19.6 .AND. mcCc<=vcO0+80.2 .AND. viTe<>12
           STORE 12 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+18.893 .AND. mfIl<=vfI0+20.036 .AND. mcCc>=vcO0+ ;
           19.6 .AND. mcCc<=vcO0+80.2 .AND. viTe<>13
           STORE 13 TO viTe
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2910d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte se pueden modificar los datos de la Orden de Compra, para"
 @ pfIl+01, 02 SAY "hacer el seguimiento."
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
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 11 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+11, 11 SAY "CTRL END" STYLE "BT"
 @ pfIl+12, 11 SAY "CTRL -->" STYLE "BT"
 @ pfIl+13, 11 SAY "CTRL <--" STYLE "BT"
 @ pfIl+14, 11 SAY "TAB" STYLE "BT"
 @ pfIl+05, 31 SAY "Salir sin Grabar"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Campo inferior"
 @ pfIl+09, 31 SAY "Campo superior"
 @ pfIl+10, 31 SAY "Primer campo"
 @ pfIl+11, 31 SAY "Último campo"
 @ pfIl+12, 31 SAY "Campo derecho"
 @ pfIl+13, 31 SAY "Campo izquierdo"
 @ pfIl+14, 31 SAY "Grabar Datos de la Orden"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
