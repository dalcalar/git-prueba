 STORE 99 TO mkEy
 STORE 01 TO meRr
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"IDENTI2.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"IDENTI2.DBB" TO mdBf
 ENDIF
 Use &mDBF Share
 IF mkEy=k_Esc
      DO deL_files
 ENDIF
 STORE 00 TO meRr
 STORE 00 TO meRr
 PUBLIC vcLa, vdFe, vhFe, vdIa, vmEs, vaNo, vsUn, vfEm, vcL1, vcL2, vcL3,  ;
        vcL4, vcL5
 STORE DATE() TO vfEm
 STORE SPACE(05) TO vcLa
 STORE 99 TO mkEy
 GOTO TOP
 STORE fdE TO vdFe
 STORE fhA TO vhFe
 STORE ruC TO vsUn
 SET READBORDER ON
 DO p00_9992a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9992a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9992a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9992a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9992a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                mkEy = INKEY(0, "HM")
                IF mkEy=k_F4
                     mkEy = INKEY(0, "HM")
                     IF mkEy=k_F2
                          mkEy = INKEY(0, "HM")
                          IF mkEy=k_F4
                               mkEy = INKEY(0, "HM")
                               IF mkEy=k_F6
                                    SAVE SCREEN TO vpAn_11
                                    SET COLOR TO BG/R
                                    DO cuAdro WITH mfI0+6, mcO0, mfI0+12,  ;
                                       mcO0+muCo
                                    IF mkEy=k_Esc
                                         RESTORE SCREEN FROM vpAn_11
                                         EXIT
                                    ENDIF
                                    @mFI0+8.0,mCO0+20 Say "Digitar Clave..." Font "&mLetRom",16 Style "BQ"
                                    SET CONFIRM ON
                                    SET READBORDER OFF
                                    @mFI0+9.5,mCO0+30 Get vFEM               Font "&mLetRom",16 Style "BQ" Size 1,11.4 Color 4/4,4/4,4/4
                                    READ
                                    SET CONFIRM OFF
                                    SET READBORDER ON
                                    IF mkEy=k_F6
                                         IF AT(" ", DTOC(vfEm))=0 .AND.  ;
                                          vfEm>DATE()
                                              STORE SUBSTR(DTOC(vfEm), 7,  ;
                                               4) TO vaAa
                                              STORE SUBSTR(DTOC(vfEm), 4,  ;
                                               2) TO vmMm
                                              STORE SUBSTR(DTOC(vfEm), 1,  ;
                                               2) TO vdDd
                                              DO CASE
                                                   CASE vmMm<"10"
                                                        STORE SUBSTR(vmMm,  ;
                                                         1, 1) TO vcL1
                                                   CASE vmMm="10"
                                                        STORE "0" TO vcL1
                                                   CASE vmMm="11"
                                                        STORE "A" TO vcL1
                                                   CASE vmMm="12"
                                                        STORE "B" TO vcL1
                                              ENDCASE
                                              STORE SUBSTR(vaAa, 4, 1) TO vcL2
                                              DO CASE
                                                   CASE vdDd<"10"
                                                        STORE SUBSTR(vdDd,  ;
                                                         1, 1) TO vcL3
                                                   CASE vdDd="10"
                                                        STORE "0" TO vcL3
                                                   CASE vdDd="11"
                                                        STORE "A" TO vcL3
                                                   CASE vdDd="12"
                                                        STORE "B" TO vcL3
                                                   CASE vdDd="13"
                                                        STORE "C" TO vcL3
                                                   CASE vdDd="14"
                                                        STORE "D" TO vcL3
                                                   CASE vdDd="15"
                                                        STORE "E" TO vcL3
                                                   CASE vdDd="16"
                                                        STORE "F" TO vcL3
                                                   CASE vdDd="17"
                                                        STORE "G" TO vcL3
                                                   CASE vdDd="18"
                                                        STORE "H" TO vcL3
                                                   CASE vdDd="19"
                                                        STORE "I" TO vcL3
                                                   CASE vdDd="20"
                                                        STORE "J" TO vcL3
                                                   CASE vdDd="21"
                                                        STORE "K" TO vcL3
                                                   CASE vdDd="22"
                                                        STORE "L" TO vcL3
                                                   CASE vdDd="23"
                                                        STORE "M" TO vcL3
                                                   CASE vdDd="24"
                                                        STORE "N" TO vcL3
                                                   CASE vdDd="25"
                                                        STORE "O" TO vcL3
                                                   CASE vdDd="26"
                                                        STORE "P" TO vcL3
                                                   CASE vdDd="27"
                                                        STORE "Q" TO vcL3
                                                   CASE vdDd="28"
                                                        STORE "R" TO vcL3
                                                   CASE vdDd="29"
                                                        STORE "S" TO vcL3
                                                   CASE vdDd="30"
                                                        STORE "T" TO vcL3
                                                   CASE vdDd="31"
                                                        STORE "U" TO vcL3
                                              ENDCASE
                                              DO CASE
                                                   CASE msUn$"AB"
                                                        STORE msUn TO vcL4
                                                   OTHERWISE
                                                        STORE "A" TO vcL4
                                              ENDCASE
                                              STORE SUBSTR(DTOC(DATE()),  ;
                                               2, 1) TO vcL5
                                         ENDIF
                                         SET COLOR TO BG/R
                                         DO cuAdro WITH mfI0+6, mcO0,  ;
                                          mfI0+12, mcO0+muCo
                                         IF mkEy=k_Esc
                                              RESTORE SCREEN FROM vpAn_11
                                              EXIT
                                         ENDIF
                                         SET COLOR TO BG+/RB
                                         @mFI0+8,mCO0+29 Say vCL1+vCL2+vCL3+vCL4+vCL5 Font "&mLetRom",22 Style "BQ"
                                         mkEy = INKEY(0)
                                    ENDIF
                                    RESTORE SCREEN FROM vpAn_11
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_F8
                DO prE_docum WITH "Esta seguro de borrar acceso a Sunat?"
                IF moPc$"Ss"
                     REPLACE fdE WITH CTOD("  /  /    ")
                     REPLACE fhA WITH CTOD("  /  /    ")
                     UNLOCK
                     DO coLbln
                     @mFI0+10,mCO0+40 Say vDFE Font "&mLetRom",16 Style "BQ" Size 1,11.4
                     @mFI0+13,mCO0+40 Say vHFE Font "&mLetRom",16 Style "BQ" Size 1,11.4
                     WAIT WINDOW NOWAIT  ;
                          "Acceso Borrado... Cerrar todos los programas de la Red"+ ;
                          CHR(13)+ ;
                          "y volver a abrirlos para cargar los cambios de la Sunat"
                     mkEy = INKEY(5)
                     WAIT CLEAR
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Up .OR.  ;
                mkEy=k_Down
                STORE "Estás en el único campo... " TO mmSj
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_9992a
                IF mkEy<>99
                     DO grA_9992a
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      @mFI0+7,mCO0+40 Edit vCLA Font "&mLetRom",16 Style "BQ" Size 1,7.4,5 Pict "!!!!!"
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9992a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcLa))=0
           STORE "Clave no puede estar vacía..." TO mmSj
      OTHERWISE
           DO CASE
                CASE SUBSTR(vcLa, 1, 1)$"123456789"
                     STORE "0"+SUBSTR(vcLa, 1, 1) TO vmEs
                CASE SUBSTR(vcLa, 1, 1)="0"
                     STORE "10" TO vmEs
                CASE SUBSTR(vcLa, 1, 1)="A"
                     STORE "11" TO vmEs
                CASE SUBSTR(vcLa, 1, 1)="B"
                     STORE "12" TO vmEs
                OTHERWISE
                     STORE "Clave mal registrada..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
           ENDCASE
           IF mkEy<>99
                IF SUBSTR(vcLa, 2, 1)$"23456789"
                     STORE "201"+SUBSTR(vcLa, 2, 1) TO vaNo
                ELSE
                     STORE "Clave mal registrada..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ENDIF
           ENDIF
           IF mkEy<>99
                DO CASE
                     CASE SUBSTR(vcLa, 3, 1)$"123456789"
                          STORE "0"+SUBSTR(vcLa, 3, 1) TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="0"
                          STORE "10" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="A"
                          STORE "11" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="B"
                          STORE "12" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="C"
                          STORE "13" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="D"
                          STORE "14" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="E"
                          STORE "15" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="F"
                          STORE "16" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="G"
                          STORE "17" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="H"
                          STORE "18" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="I"
                          STORE "19" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="J"
                          STORE "20" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="K"
                          STORE "21" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="L"
                          STORE "22" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="M"
                          STORE "23" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="N"
                          STORE "24" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="O"
                          STORE "25" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="P"
                          STORE "26" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="Q"
                          STORE "27" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="R"
                          STORE "28" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="S"
                          STORE "29" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="T"
                          STORE "30" TO vdIa
                     CASE SUBSTR(vcLa, 3, 1)="U"
                          STORE "31" TO vdIa
                     OTHERWISE
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                ENDCASE
           ENDIF
           IF mkEy<>99
                DO CASE
                     CASE (vdIa="30" .OR. vdIa="31") .AND. vmEs="02"
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                     CASE vdIa="29" .AND. (vmEs="2013" .OR. vmEs="2014"  ;
                          .OR. vmEs="2015")
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                     CASE vdIa="31" .AND. (vmEs="04" .OR. vmEs="06" .OR.  ;
                          vmEs="09" .OR. vmEs="11")
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                ENDCASE
           ENDIF
           IF mkEy<>99
                DO CASE
                     CASE SUBSTR(vcLa, 4, 1)$"BA"
                          STORE SUBSTR(vcLa, 4, 1) TO vsUn
                     OTHERWISE
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                ENDCASE
           ENDIF
           IF mkEy<>99
                DO CASE
                     CASE SUBSTR(vcLa, 5, 1)=SUBSTR(DTOC(DATE()), 2, 1)
                     OTHERWISE
                          STORE "Clave mal registrada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                ENDCASE
           ENDIF
           IF mkEy<>99
                STORE DATE() TO vdFe
                STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO vhFe
           ENDIF
           IF mkEy<>99 .AND. vdFe=fdE .AND. vhFe=fhA .AND. vsUn=ruC
                STORE "Pago ya registrado..." TO mmSj
                STORE 99 TO mkEy
                DO poNmsj
           ENDIF
           IF mkEy<>99
                DO coLbln
                @mFI0+10,mCO0+40 Say vDFE Font "&mLetRom",16 Style "BQ" Size 1,11.4
                @mFI0+13,mCO0+40 Say vHFE Font "&mLetRom",16 Style "BQ" Size 1,11.4
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE P00_9992a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 20 TO muFi
 STORE 76 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Registro de Pago Sunat"
 DO coLbln
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+0.7, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLblr
 @mFI0+07,mCO0+10 Say "Clave"                            Font "&mLetRom",16 Style "BQ"
 @mFI0+10,mCO0+10 Say "Fecha de Inicio"                  Font "&mLetRom",16 Style "BQ"
 @mFI0+13,mCO0+10 Say "Fecha Final"                      Font "&mLetRom",16 Style "BQ"
 DO coLbln
 @mFI0+17,mCO0+07 Say "Ingresos nuevos: S/ 1500 anuales" Font "&mLetRom",16 Style "NQI"
 @mFI0+19,mCO0+07 Say "Renovacion: 700 Anuales         " Font "&mLetRom",16 Style "NQI"
 @mFI0+07,mCO0+40 Edit vCLA Font "&mLetRom",16 Style "BQ" Size 1,07.4,5 Pict "!!!!!"
 @mFI0+10,mCO0+40 Get  vDFE Font "&mLetRom",16 Style "BQ" Size 1,11.4 Color ,&mColBlN
 @mFI0+13,mCO0+40 Get  vHFE Font "&mLetRom",16 Style "BQ" Size 1,11.4 Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "SUNAT", mfI0+0.7, mcO0+5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gra_9992a
 DO prE_docum WITH "¿Está seguro de registrar pago?"
 IF moPc$"Ss"
      REPLACE ruC WITH vsUn
      REPLACE fdE WITH vdFe
      REPLACE fhA WITH vhFe
      UNLOCK
      WAIT WINDOW NOWAIT  ;
           "Pago registrado... Cerrar todos los programas de la Red"+ ;
           CHR(13)+"y volver a abrirlos para cargar los cambios de la Sunat"
      mkEy = INKEY(5)
      WAIT CLEAR
 ENDIF
ENDPROC
*
PROCEDURE Clp_9992a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9992a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa Registra la Clave de Pago para activar por uno o varios"
 @ pfIl+01, 02 SAY  ;
   "meses el pago hecho para que el sistema pueda tener acceso a la SUNAT"
 @ pfIl+02, 02 SAY "directamente: RUC y Tipo de Cambio."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 22 SAY ":" STYLE "BT"
 @ pfIl+07, 22 SAY ":" STYLE "BT"
 @ pfIl+08, 22 SAY ":" STYLE "BT"
 @ pfIl+09, 22 SAY ":" STYLE "BT"
 @ pfIl+10, 22 SAY ":" STYLE "BT"
 @ pfIl+11, 22 SAY ":" STYLE "BT"
 @ pfIl+12, 22 SAY ":" STYLE "BT"
 @ pfIl+13, 22 SAY ":" STYLE "BT"
 @ pfIl+14, 22 SAY ":" STYLE "BT"
 @ pfIl+15, 22 SAY ":" STYLE "BT"
 @ pfIl+16, 22 SAY ":" STYLE "BT"
 @ pfIl+06, 03 SAY "ESC" STYLE "BT"
 @ pfIl+07, 03 SAY "F10" STYLE "BT"
 @ pfIl+08, 03 SAY "F1" STYLE "BT"
 @ pfIl+09, 03 SAY "F8" STYLE "BT"
 @ pfIl+10, 03 SAY "ENTER,CTRL ->," STYLE "BT"
 @ pfIl+11, 03 SAY "CTRL <-" STYLE "BT"
 @ pfIl+12, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+13, 03 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+14, 03 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+15, 03 SAY "CTRL END" STYLE "BT"
 @ pfIl+16, 03 SAY "TAB" STYLE "BT"
 @ pfIl+06, 24 SAY "Regresar al Menú Principal"
 @ pfIl+07, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 24 SAY "Ayuda del Programa"
 @ pfIl+09, 24 SAY "Borrar acceso"
 @ pfIl+10, 24 SAY "Pasar al siguiente campo"
 @ pfIl+11, 24 SAY "Campo anterior"
 @ pfIl+12, 24 SAY "Pasar al campo inferior"
 @ pfIl+13, 24 SAY "Pasar al campo superior"
 @ pfIl+14, 24 SAY "Primer Campo"
 @ pfIl+15, 24 SAY "Último Campo"
 @ pfIl+16, 24 SAY "Registrar y Activar"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vcLa, vdFe, vhFe, vdIa, vmEs, vaNo, vsUn, vfEm, vcL1, vcL2, vcL3,  ;
         vcL4, vcL5
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
