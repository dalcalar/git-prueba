 = INKEY(0.01)
 DO p00_3560d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tm3_detalle
 GOTO TOP
 SEEK vtDo+vsR1+vdOc
 DO paN_3560d
 STORE iaN1 TO vaN1
 STORE imE1 TO vmE1
 STORE idI1 TO vdI1
 STORE itT1 TO vtT1
 STORE isR2 TO vsR2
 STORE inU1 TO vnU1
 STORE ifFr TO vfFr
 SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
 DO diS_3560d WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3560d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3560d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3560d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3560d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_13
                vxLs = PUTFILE("Archivo Excel:", "XLS\CTAS.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM3SER,FTM3NUM,FTM3DIA,FTM3MES,FTM3ANO,FTM3GLO,FTM3NBA,FTM3NCT,FTM3CHE,FTM3TCA,FTM3MON,FTM3PAG Type XLS
                     ENDCASE
                ENDIF
                SELECT tm3_detalle
                SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3560d
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT tm3_detalle
                SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsR1+vdOc
                DO CASE
                     CASE ftM3ano+ftM3mes+ftM3dia+ftM3ttt+ftM3ser+ftM3num= ;
                          iaN1+imE1+idI1+itT1+isR2+inU1 .AND. vaN1+vmE1+ ;
                          vdI1+vtT1+vsR2+vnU1=iaN1+imE1+idI1+itT1+isR2+inU1
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtT1+vsR2+vnU1=iaN1+ ;
                                    imE1+idI1+itT1+isR2+inU1
                                    DO paN_3560d
                               OTHERWISE
                                    SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+ ;
                                     vtT1+vsR2+vnU1
                                    DO diS_3560d WITH "N"
                          ENDCASE
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE itT1 TO vtT1
                          STORE isR2 TO vsR2
                          STORE inU1 TO vnU1
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsR1+vdOc+"ZZZZ"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
                DO CASE
                     CASE ftM3ano+ftM3mes+ftM3dia+ftM3ttt+ftM3ser+ftM3num= ;
                          uaN1+umE1+udI1+utT1+usR2+unU1 .AND. vaN1+vmE1+ ;
                          vdI1+vtT1+vsR2+vnU1=uaN1+umE1+udI1+utT1+usR2+unU1
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaN1+vmE1+vdI1+vtT1+vsR2+vnU1=uaN1+ ;
                                    umE1+udI1+utT1+usR2+unU1
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_3560d
                               OTHERWISE
                                    SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+ ;
                                     vtT1+vsR2+vnU1
                                    DO diS_3560d WITH "N"
                          ENDCASE
                          STORE uaN1 TO vaN1
                          STORE umE1 TO vmE1
                          STORE udI1 TO vdI1
                          STORE utT1 TO vtT1
                          STORE usR2 TO vsR2
                          STORE unU1 TO vnU1
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM3tdo+ftM3sr1+ftM3doc<>vtDo+vsR1+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "N"
                          SKIP
                          IF vaN1+vmE1+vdI1+vtT1+vsR2+vnU1=uaN1+umE1+udI1+ ;
                             utT1+usR2+unU1
                               DO coL_fondo
                               DO suBe WITH ifFr, icL2, ffFr, ucL2, 1
                               STORE ftM3ano TO uaN1, vaN1
                               STORE ftM3mes TO umE1, vmE1
                               STORE ftM3dia TO udI1, vdI1
                               STORE ftM3ttt TO utT1, vtT1
                               STORE ftM3ser TO usR2, vsR2
                               STORE ftM3num TO unU1, vnU1
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               STORE ftM3ano TO iaN1
                               STORE ftM3mes TO imE1
                               STORE ftM3dia TO idI1
                               STORE ftM3ttt TO itT1
                               STORE ftM3ser TO isR2
                               STORE ftM3num TO inU1
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE ftM3ano TO vaN1
                               STORE ftM3mes TO vmE1
                               STORE ftM3dia TO vdI1
                               STORE ftM3ttt TO vtT1
                               STORE ftM3ser TO vsR2
                               STORE ftM3num TO vnU1
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM3tdo+ftM3sr1+ftM3doc<>vtDo+vsR1+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "N"
                          SKIP -1
                          IF vaN1+vmE1+vdI1+vtT1+vsR2+vnU1=iaN1+imE1+idI1+ ;
                             itT1+isR2+inU1
                               DO coL_fondo
                               DO baJa WITH ifFr, icL2, ffFr, ucL2, 1
                               STORE ftM3ano TO iaN1, vaN1
                               STORE ftM3mes TO imE1, vmE1
                               STORE ftM3dia TO idI1, vdI1
                               STORE ftM3ttt TO itT1, vtT1
                               STORE ftM3ser TO isR2, vsR2
                               STORE ftM3num TO inU1, vnU1
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    STORE ftM3ano TO uaN1
                                    STORE ftM3mes TO umE1
                                    STORE ftM3dia TO udI1
                                    STORE ftM3ttt TO utT1
                                    STORE ftM3ser TO usR2
                                    STORE ftM3num TO unU1
                               ENDIF
                          ELSE
                               STORE ftM3ano TO vaN1
                               STORE ftM3mes TO vmE1
                               STORE ftM3dia TO vdI1
                               STORE ftM3ttt TO vtT1
                               STORE ftM3ser TO vsR2
                               STORE ftM3num TO vnU1
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsR1+vdOc+uaN1+umE1+udI1+utT1+usR2+unU1
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM3tdo+ftM3sr1+ftM3doc<>vtDo+vsR1+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3560d
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE itT1 TO vtT1
                          STORE isR2 TO vsR2
                          STORE inU1 TO vnU1
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsR1+vdOc+iaN1+imE1+idI1+itT1+isR2+inU1
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM3tdo+ftM3sr1+ftM3doc<>vtDo+vsR1+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. ftM3tdo+ftM3sr1+ftM3doc<>vtDo+vsR1+vdOc
                               GOTO TOP
                               SEEK vtDo+vsR1+vdOc
                          ENDIF
                          DO paN_3560d
                          STORE iaN1 TO vaN1
                          STORE imE1 TO vmE1
                          STORE idI1 TO vdI1
                          STORE itT1 TO vtT1
                          STORE isR2 TO vsR2
                          STORE inU1 TO vnU1
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
                          DO diS_3560d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3560d
 STORE ifFr TO vfFr, ufFr
 STORE ftM3ano TO iaN1, uaN1
 STORE ftM3mes TO imE1, umE1
 STORE ftM3dia TO idI1, udI1
 STORE ftM3ttt TO itT1, utT1
 STORE ftM3ser TO isR2, usR2
 STORE ftM3num TO inU1, unU1
 DO WHILE  .NOT. EOF() .AND. ftM3tdo+ftM3sr1+ftM3doc=vtDo+vsR1+vdOc .AND.  ;
    vfFr<ffFr+1
      DO diS_3560d WITH "N"
      STORE ftM3ano TO uaN1
      STORE ftM3mes TO umE1
      STORE ftM3dia TO udI1
      STORE ftM3ttt TO utT1
      STORE ftM3ser TO usR2
      STORE ftM3num TO unU1
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coL_fondo
      @ ufFr+1, icL2 CLEAR TO ffFr+1, ucL2
 ENDIF
ENDPROC
*
PROCEDURE Dis_3560d
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM3tpo=1
           DO coL_fonro
      CASE ptIp="R" .AND. ftM3tpo=1
           DO coLsc1
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc3
 ENDCASE
 DO CASE
      CASE ftM3mon=1
           STORE "S/." TO vsG1
      OTHERWISE
           STORE "US$" TO vsG1
 ENDCASE
 @vFFR,vCO1+12.2 Say FTM3SER Font "&mLetAri",8 Style "NQ" Size 1,03.7
 @vFFR,vCO1+16.9 Say FTM3NUM Font "&mLetAri",8 Style "NQ" Size 1,08.5
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLsc3
 ENDCASE
 @vFFR,vCO1+000.0 Say FTM3DIA+"/"+FTM3MES+"/"+FTM3ANO Font "&mLetAri",8 Style "NQ" Size 1,11.2
 @vFFR,vCO1+026.5 Say FTM3GLO                         Font "&mLetAri",8 Style "NQ" Size 1,20.1 Pict "@S22"
 @vFFR,vCO1+047.8 Say FTM3NBA                         Font "&mLetAri",8 Style "NQ" Size 1,15.9 Pict "@S18"
 @vFFR,vCO1+064.8 Say FTM3NCT                         Font "&mLetAri",8 Style "NQ" Size 1,15.9 Pict "@S18"
 @vFFR,vCO1+081.8 Say FTM3CHE                         Font "&mLetAri",8 Style "NQ" Size 1,15.9 Pict "@S18"
 @vFFR,vCO1+098.8 Say FTM3TCA                         Font "&mLetAri",8 Style "NQ" Size 1,7.1  Pict "99.999"
 @vFFR,vCO1+106.9 Say vSG1                            Font "&mLetAri",8 Style "NQ" Size 1,4.2
 @vFFR,vCO1+112.1 Say FTM3PAG                         Font "&mLetAri",8 Style "NQ" Size 1,13.6 Pict "9999,999.99"
 DO coL_fondo
 @fFFR+1.3,vCO1 Say FTM3TIP+"-"+FTM3NTI Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
 DO CASE
      CASE ftM3ttt="1" .AND. ftM3tpo=1
           @fFFR+2.5,vCO1 Say "Caja: Por Rendir"                Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="1" .AND. ftM3tpo=2
           @fFFR+2.5,vCO1 Say "Caja: Varios"                    Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="1" .AND. ftM3tpo=3
           @fFFR+2.5,vCO1 Say "Caja: Cobro de Ventas"           Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="1" .AND. ftM3tpo=4
           @fFFR+2.5,vCO1 Say "Caja: Ingreso a Caja con Cheque" Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="2" .AND. ftM3tpo=1
           @fFFR+2.5,vCO1 Say "Bancos: Por Rendir"              Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="2" .AND. ftM3tpo=2
           @fFFR+2.5,vCO1 Say "Bancos: Ingresos Varios"         Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="2" .AND. ftM3tpo=3
           @fFFR+2.5,vCO1 Say "Bancos: Notas de Abono"          Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
      CASE ftM3ttt="2" .AND. ftM3tpo=4
           @fFFR+2.5,vCO1 Say "Bancos: Cobro de Ventas"         Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S42"
 ENDCASE
 @fFFR+2.5,vCO1+60 Say FTM3RCB                                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "9999999"
ENDPROC
*
PROCEDURE P00_3560d
 RESTORE SCREEN FROM vpAn_11
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0-2.2, vcO1, mfI0+muFi+0.4, vcO1+126
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @mFI0-2.0,vCO1+000.0 Say "Documento"            Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,vCO1+000.0 Say "Emisión"              Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,vCO1+000.0 Say "Vencimiento"          Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+000.0 Say "Vendedor"             Font "&mLetAri",9 Style "BQ"
 DO coL_fonaz
 @mFI0-2.0,vCO1+045.0 Say "Cliente Titular"      Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,vCO1+045.0 Say "Cliente Complemento"  Font "&mLetAri",9 Style "BQ"
 DO coL_fonro
 @mFI0+0.6,vCO1+045.0 Say "Total Documento"      Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+045.0 Say "Total Intereses"      Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,vCO1+098.5 Say "A/C"                  Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+098.5 Say "Saldo"                Font "&mLetAri",9 Style "BQ"
 @fFFR+2.5,vCO1+050.0 Say "Recibo"               Font "&mLetAri",9 Style "NQ"
 DO coL_fondo
 @mFI0-2.0,vCO1+014.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,vCO1+014.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,vCO1+014.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+014.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,vCO1+069.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,vCO1+069.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,vCO1+069.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+069.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,vCO1+077.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-0.7,vCO1+077.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+0.6,vCO1+105.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0+1.9,vCO1+105.5 Say ":"            Font "&mLetAri",9 Style "BQ"
 @mFI0-2.0,vCO1+015.5 Say vTDO+":"+vSR1+"-"+vDOC Font "&mLetAri",9 Style "NQ"
 @mFI0-0.7,vCO1+015.5 Say vFEM           Font "&mLetAri",9 Style "NQ"
 @mFI0+0.6,vCO1+015.5 Say vFVE           Font "&mLetAri",9 Style "NQ"
 @mFI0+1.9,vCO1+015.5 Say vNVE           Font "&mLetAri",9 Style "NQ" Size 1,29 Pict "@S32"
 @mFI0-2.0,vCO1+071.0 Say vTIT           Font "&mLetAri",9 Style "NQ" Size 1,06 Pict "@S09"
 @mFI0-2.0,vCO1+078.5 Say vNTT           Font "&mLetAri",9 Style "NQ" Size 1,46 Pict "@S49"
 @mFI0-0.7,vCO1+071.0 Say vCLI           Font "&mLetAri",9 Style "NQ" Size 1,06 Pict "@S09"
 @mFI0-0.7,vCO1+078.5 Say vNOM           Font "&mLetAri",9 Style "NQ" Size 1,46 Pict "@S49"
 @mFI0+0.6,vCO1+071.0 Say vSIG           Font "&mLetAri",9 Style "NQ"
 @mFI0+0.6,vCO1+075.2 Say vTOT           Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @mFI0+1.9,vCO1+075.2 Say vINT           Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @mFI0+0.6,vCO1+106.6 Say vACU           Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @mFI0+1.9,vCO1+106.6 Say vTOT+vINT-vACU Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,17
 @ ifFr-1.4, vcO1-0.3 TO ifFr-0.1, vcO1+126+0.3 PATTERN 1 COLOR SCHEME 7
 @ ffFr+1.1, vcO1 TO ffFr+1.1, vcO1+126
 DO coLplp
 @ ifFr-1.3, vcO1+011.5 TO ffFr+1.0, vcO1+011.5
 @ ifFr-0.2, vcO1+016.3 TO ffFr+1.0, vcO1+016.3
 @ ifFr-1.3, vcO1+025.9 TO ffFr+1.0, vcO1+025.9
 @ ifFr-1.3, vcO1+047.1 TO ffFr+1.0, vcO1+047.1
 @ ifFr-1.3, vcO1+064.1 TO ffFr+1.0, vcO1+064.1
 @ ifFr-1.3, vcO1+081.1 TO ffFr+1.0, vcO1+081.1
 @ ifFr-1.3, vcO1+098.1 TO ffFr+1.0, vcO1+098.1
 @ ifFr-1.3, vcO1+106.3 TO ffFr+1.0, vcO1+106.3
 @ ifFr-0.2, vcO1+111.5 TO ffFr+1.0, vcO1+111.5
 DO coLblz
 @ ffFr+1.1, vcO1+078.5 TO ffFr+2.5, vcO1+100.6 PATTERN 1 COLOR SCHEME 7
 @ ffFr+1.1, vcO1+100.5 TO ffFr+2.5, vcO1+124.1 PATTERN 1 COLOR SCHEME 7
 @iFFR-1.2,vCO1+002.0 Say "Fecha"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+013.8 Say "Voucher" Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+031.8 Say "Glosa"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+051.8 Say "Banco"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+068.8 Say "Cuenta"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+085.1 Say "Cheque"  Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+101.1 Say "T/C"     Font "&mLetAri",9 Style "BT"
 @iFFR-1.2,vCO1+119.1 Say "Pago"    Font "&mLetAri",9 Style "BT"
 @fFFR+1.3,vCO1+079.8 Say "S/."     Font "&mLetAri",8 Style "BT"
 @fFFR+1.3,vCO1+101.5 Say "US$"     Font "&mLetAri",8 Style "BT"
 SELECT tm3_detalle
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_3560d
 STORE vaN1 TO caN1
 STORE vmE1 TO cmE1
 STORE vdI1 TO cdI1
 STORE vtT1 TO ctT1
 STORE vsR2 TO csR2
 STORE vnU1 TO cnU1
 DO reS_3560c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_13
 DO p00_3560d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 SELECT tm3_detalle
 SEEK vtDo+vsR1+vdOc+iaN1+imE1+idI1+itT1+isR2+inU1
 DO WHILE  .NOT. EOF() .AND. ftM3tdo+ftM3sr1+ftM3doc=vtDo+vsR1+vdOc .AND.  ;
    vfFr<ffFr+1
      IF ftM3ano+ftM3mes+ftM3dia+ftM3ttt+ftM3ser+ftM3num=vaN1+vmE1+vdI1+ ;
         vtT1+vsR2+vnU1
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vaN1 TO iaN1, caN1
      STORE vmE1 TO imE1, cmE1
      STORE vdI1 TO idI1, cdI1
      STORE vtT1 TO itT1, ctT1
      STORE vsR2 TO isR2, csR2
      STORE vnU1 TO inU1, cnU1
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsR1+vdOc+iaN1+imE1+idI1+itT1+isR2+inU1
 DO paN_3560d
 STORE caN1 TO vaN1
 STORE cmE1 TO vmE1
 STORE cdI1 TO vdI1
 STORE ctT1 TO vtT1
 STORE csR2 TO vsR2
 STORE cnU1 TO vnU1
 STORE cfFr TO vfFr
 SEEK vtDo+vsR1+vdOc+vaN1+vmE1+vdI1+vtT1+vsR2+vnU1
 DO diS_3560d WITH "R"
ENDPROC
*
PROCEDURE Imp_3560d
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
 DO reP_3560d
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3560d
 PRIVATE ptAm
 SELECT tm3_detalle
 GOTO TOP
 SEEK vtDo+vsR1+vdOc
 STORE 102 TO ptAm
 STORE 06 TO mcLn
 STORE 00 TO ctO1, ctO2, vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. ftM3tdo+ftM3sr1+ftM3doc=vtDo+vsR1+vdOc
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3560d
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT tm3_detalle
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE ftM3mon=1
                     STORE "S/." TO vsG1
                OTHERWISE
                     STORE "US$" TO vsG1
           ENDCASE
           @vLIN,mCLN     Say FTM3DIA+"/"+FTM3MES+"/"+FTM3ANO Font "&mLetSwi",9 Style "NQ" Size 1,12.5
           @vLIN,mCLN+14  Say FTM3SER+"-"+FTM3NUM             Font "&mLetSwi",9 Style "NQ" Size 1,04.2
           @vLIN,mCLN+30  Say FTM3GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,36.1 Pict "@S38"
           @vLIN,mCLN+64  Say FTM3NBA                         Font "&mLetSwi",9 Style "NQ" Size 1,10   Pict "@S12"
           @vLIN,mCLN+81  Say FTM3NCT                         Font "&mLetSwi",9 Style "NQ" Size 1,15   Pict "@S17"
           @vLIN,mCLN+103 Say FTM3CHE                         Font "&mLetSwi",9 Style "NQ" Size 1,40   Pict "@S25"
           @vLIN,mCLN+125 Say FTM3TCA                         Font "&mLetSwi",9 Style "NQ" Size 1,8.5  Pict "99.999"
           @vLIN,mCLN+133 Say vSG1                            Font "&mLetSwi",9 Style "NQ" Size 1,5.2
           @vLIN,mCLN+140 Say FTM3PAG                         Font "&mLetSwi",9 Style "NQ" Size 1,14.5 Pict "999,999.99"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+90  Say "Saldos" Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+103 Say "S/."    Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+131 Say "US$"    Font "&mLetAri",9 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3560d
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
      @vLIN,mCLN Say "Estado de Cuenta"  Font "&mLetAri",13 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg=1
      DO CASE
           CASE vsW1=01
                SELECT peNdientes
           CASE vsW1=02
                SELECT coPia
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Titular"                  Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say F3500TIT                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say ":"                                Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+87 Say F3500NTI                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Documento"                        Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Titular"                  Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                                Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say F3500TIT                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say ":"                                Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+87 Say F3500NTI                           Font "&mLetAri",9 Style "NQ" Pict "@S35"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Complemento" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say F3500CLI              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say ":"                   Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+87 Say F3500NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Fecha de Emisión"    Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FEM              Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Cliente Complemento" Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say F3500CLI              Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+85 Say ":"                   Font "&mLetAri",9 Style "NQ" Pict "@S35"
                     @vLIN,mCLN+87 Say F3500NOM              Font "&mLetAri",9 Style "NQ" Pict "@S35"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Vencimiento"          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FVE               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Total Documento"      Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say vSIG                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT               Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Vencimiento"          Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"                    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500FVE               Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+50 Say "Total Documento"      Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"                    Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+77 Say vSIG                   Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT               Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT-F3500ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Total A/C"       Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+21 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+23 Say F3500ACU          Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
                     @vLIN,mCLN+50 Say "Saldo"           Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+75 Say ":"               Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+82 Say F3500TOT-F3500ACU Font "&mLetAri",9 Style "BQ" Pict "999,999.99" Size 1,15
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN     Say "Fecha"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+014 Say "Voucher" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+031 Say "Glosa"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+068 Say "Banco"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+090 Say "Cuenta"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+112 Say "Cheque"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+127 Say "T/C"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+146 Say "Pago"    Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Fecha"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+014 Say "Voucher" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+030 Say "Glosa"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+064 Say "Banco"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+081 Say "Cuenta"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+103 Say "Cheque"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+127 Say "T/C"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+147 Say "Pago"    Font "&mLetAri",9 Style "NT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Clp_3560d
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+126
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=vcO1 .AND.  ;
           mcCc<=vcO1+126
           DO diS_3560d WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsR1+vdOc+iaN1+imE1+idI1+itT1+isR2+inU1
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           STORE ftM3ano TO vaN1
           STORE ftM3mes TO vmE1
           STORE ftM3dia TO vdI1
           STORE ftM3ttt TO vtT1
           STORE ftM3ser TO vsR2
           STORE ftM3num TO vnU1
           DO diS_3560d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3560d
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Pagos en Efectivo y  "
 @ 1.200, 02 SAY "por Bancos del documento elegido."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 28 SAY ":" STYLE "BT"
 @ 6.200, 28 SAY ":" STYLE "BT"
 @ 7.200, 28 SAY ":" STYLE "BT"
 @ 8.200, 28 SAY ":" STYLE "BT"
 @ 9.200, 28 SAY ":" STYLE "BT"
 @ 10.200, 28 SAY ":" STYLE "BT"
 @ 11.200, 28 SAY ":" STYLE "BT"
 @ 12.200, 28 SAY ":" STYLE "BT"
 @ 13.200, 28 SAY ":" STYLE "BT"
 @ 14.200, 28 SAY ":" STYLE "BT"
 @ 15.200, 28 SAY ":" STYLE "BT"
 @ 5.200, 09 SAY "ESC" STYLE "BT"
 @ 6.200, 09 SAY "F10" STYLE "BT"
 @ 7.200, 09 SAY "F1" STYLE "BT"
 @ 8.200, 09 SAY "F8" STYLE "BT"
 @ 9.200, 09 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 09 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 09 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 09 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 09 SAY "HOME" STYLE "BT"
 @ 14.200, 09 SAY "END" STYLE "BT"
 @ 15.200, 09 SAY "CTRL P" STYLE "BT"
 @ 5.200, 30 SAY "Regresar a Cabecera"
 @ 6.200, 30 SAY "Cerrar y regresar a Windows"
 @ 7.200, 30 SAY "Ayuda del Programa"
 @ 8.200, 30 SAY "Pasar datos a Excel"
 @ 9.200, 30 SAY "Línea inferior"
 @ 10.200, 30 SAY "Línea superior"
 @ 11.200, 30 SAY "Página siguiente"
 @ 12.200, 30 SAY "Página anterior"
 @ 13.200, 30 SAY "Primera línea"
 @ 14.200, 30 SAY "Última línea"
 @ 15.200, 30 SAY "Imprimir Estado de Cuenta del Documento"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
