 SELECT leTras
 DO muE_3110a
 STORE 1 TO vsW3
 IF xmOn=1
      STORE "S/." TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 SELECT clIentes
 SEEK xtIt
 IF EOF()
      STORE SPACE(70) TO xnTi
 ELSE
      STORE f1101nom TO xnTi
 ENDIF
 DO p00_3110c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_3110c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3110c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3110c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F2 .AND. wtPo="2"
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO boT_3110c
           CASE mkEy=k_Ctrl_p
                DO pcI3110z
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_o
                DO imP_3110c
                STORE 99 TO mkEy
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
PROCEDURE P00_3110c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_0000a WITH "Letra:"+vsEr+"-"+vdOc
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH vfI0+20.5, vcO0, vfI0+23.7, vcO0+125
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
 @vFI0+00.6,vCO0+001.0 Say "Cliente"            Font "&mLetAri",9  Style "NT"
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
 @vFI0+20.5,vCO0+008.4 Say "Titular"            Font "&mLetRom",12 Style "BT"
 @vFI0+22.5,vCO0+008.4 Say "Vendedor"           Font "&mLetRom",12 Style "BT"
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
 @vFI0+20.5,vCO0+023.2 Edit xNTI Font "&mLetRom",11 Style "NQ" Size 1,69.9,70
 @vFI0+22.5,vCO0+023.2 Edit xNVE Font "&mLetRom",11 Style "NQ" Size 1,69.9,70
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
 DO boT_3110c
ENDPROC
*
PROCEDURE Bot_3110c
 IF wtPo="2" .AND. vsW3=2
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF LEN(ALLTRIM(xtIt))=0
           DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
      ELSE
           DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 ELSE
      DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cli_3110c
 = INKEY(0.01)
 SELECT clIentes
 SET FILTER TO f1101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "1101", "V", "F1101COD", "A"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f1101cod TO xtIt
      STORE f1101nom TO xnTi
      DO grA_3110c
      DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ven_3110c
 = INKEY(0.01)
 SELECT veNdedor
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9113cod TO xvEn
      STORE f9113nom TO xnVe
      DO grA_3110c
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gra_3110c
 SELECT leTras
 SEEK vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f3110tit WITH xtIt
 REPLACE f3110ven WITH xvEn
 REPLACE f3110nve WITH xnVe
 UNLOCK
 SELECT peNd_vtas
 SEEK "LE"+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH "LE"+vsEr+vdOc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f3500tit WITH xtIt
 REPLACE f3500nti WITH xnTi
 REPLACE f3500ven WITH xvEn
 REPLACE f3500nve WITH xnVe
 UNLOCK ALL
 FLUSH
 DO coLbln
 @vFI0+20.5,vCO0+23.2 Say xNTI Font "&mLetRom",11 Style "NQ" Size 1,69.8 Pict "@S70"
 @vFI0+22.5,vCO0+23.2 Say xNVE Font "&mLetRom",11 Style "NQ" Size 1,69.8 Pict "@S70"
ENDPROC
*
PROCEDURE Imp_3110c
 = INKEY(0.01)
 STORE "S" TO moPc
 STORE 99 TO mkEy
 DO prE_docum WITH "¿Está seguro de Imprimir Sobre?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE vsW1=01
           SELECT leTras
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 STORE 00 TO mvIs
 STORE 99 TO mkEy
 STORE f3110mon TO vmOn
 STORE f3110pig TO vpIg
 STORE f3110tot TO ttOt
 STORE f3110fem TO vfEm
 DO coLbln
 SAVE SCREEN TO mpAn_prn
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO soB_3110c
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Sob_3110c
 STORE 00 TO mcLn, vlIn
 @0,0 Say Space(01)          Font "&mLetRom",12 Style "NQ"
 STORE vlIn+12 TO vlIn
 @vLIN,mCLN+20 Say "Sr(es):" Font "&mLetRom",13 Style "BQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+20 Say F3110NOM  Font "&mLetRom",13 Style "BQ" Size 1,70 Pict "@S70"
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+20 Say F3110DIR  Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+20 Say F3110DIS  Font "&mLetRom",12 Style "NQ" Size 1,50 Pict "@S52"
ENDPROC
*
PROCEDURE Rs1_3110c
 DO reS_3110b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 SELECT leTras
 DO muE_3110a
 IF xmOn=1
      STORE "S/." TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 SELECT clIentes
 SEEK xtIt
 IF EOF()
      STORE SPACE(70) TO xnTi
 ELSE
      STORE f1101nom TO xnTi
 ENDIF
 DO p00_3110c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Clp_3110c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.2  ;
           .AND. mcCc<=vcB1+3.8 .AND. wtPo="2" .AND. vsW3=2
           DO clI_3110c
           STORE 99 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.2  ;
           .AND. mcCc<=vcB2+3.8 .AND. wtPo="2" .AND. vsW3=2
           STORE SPACE(04) TO xtIt
           STORE SPACE(70) TO xnTi
           DO grA_3110c
           STORE 99 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.2  ;
           .AND. mcCc<=vcB3+3.8 .AND. wtPo="2" .AND. vsW3=2
           DO veN_3110c
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3110c
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
 STORE pfIl+7 TO pfIl
 IF wtPo="2"
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 13 SAY "F2" STYLE "BT"
      @ pfIl, 24 SAY "Cambiar Datos o no de la letra"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 13 SAY "CTRL P" STYLE "BT"
 @ pfIl+1, 13 SAY "CTRL O" STYLE "BT"
 @ pfIl+0, 24 SAY "Imprimir Letras"
 @ pfIl+1, 24 SAY "Imprimir Sobres"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
