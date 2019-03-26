 STORE k_Enter TO mkEy
 STORE 00 TO viT1
 = INKEY(0.01)
 IF viTe<>01
      STORE viTe TO viT1
      STORE 01 TO viTe
      DO veR_1101b
      IF mkEy<>99 .AND. viT1>02
           STORE 02 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>03
           STORE 03 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>04
           STORE 04 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>05
           STORE 05 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>06
           STORE 06 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>07
           STORE 07 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>08
           STORE 08 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>09
           STORE 09 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>10
           STORE 10 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>11
           STORE 11 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>12
           STORE 12 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>13
           STORE 13 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>14
           STORE 14 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>15
           STORE 15 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>16
           STORE 16 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>17
           STORE 17 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>18
           STORE 18 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>19
           STORE 19 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>20
           STORE 20 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>21
           STORE 21 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>22
           STORE 22 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>23
           STORE 23 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99 .AND. viT1>24
           STORE 24 TO viTe
           DO veR_1101b
      ENDIF
      IF mkEy<>99
           STORE viT1 TO viTe
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_1101a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1101b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1 .AND. viTe<>4 .AND. viTe<>6
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT suCursal
                SET FILTER TO f1102cod=vcOd
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Sucursales registradas en este Cliente..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO q1_0000a
                STORE 99 TO mkEy
                SET CONFIRM ON
                ACTIVATE POPUP vtB3 REST
                SET CONFIRM OFF
                SET FILTER TO
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE f1102suc TO vsUc
                     DO suC_1101b
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=4
                = INKEY(0.01)
                SELECT diStritos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SELECT clIentes
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "9115", "U", "F9115NO1", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnDi))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB5 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f9115dpt TO vdPt
                     STORE f9115dis TO vdIs
                     STORE f9115nom TO vnDi
                     SELECT dePartamentos
                     SEEK vdPt
                     STORE f9114nom TO vnDp
                     DO coL_beige
                     SELECT diStritos
                     @cFI0+11.3,vCL3+105 Say vNDI Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S37"
                     STORE 99 TO mkEy
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT suCursal
           CASE mkEy=k_F2 .AND. viTe=6
                = INKEY(0.01)
                SELECT diStritos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SELECT clIentes
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfB6, vcB6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "9115", "U", "F9115NO1", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnD1))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB6 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f9115dpt TO vdP1
                     STORE f9115dis TO vdIe
                     STORE f9115nom TO vnD1
                     SELECT dePartamentos
                     SEEK vdP1
                     STORE f9114nom TO vnP1
                     DO coL_beige
                     SELECT diStritos
                     @cFI0+12.8,vCL3+105 Say vND1 Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S37"
                     STORE 99 TO mkEy
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT suCursal
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1101b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_1101a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01 .AND. mrEn$"AB" .AND. mfDr<> ;
                CTOD(" ") .AND. DATE()<=mfHr .AND. vsWw=1 .AND.  ;
                LEN(ALLTRIM(vdNi))<>0
                DO prE_docum WITH  ;
                   "¿DNI TODAVIA no se encuentra en la BASE de RENIEC..."+ ;
                   CHR(13)+"Pon Direccion... Todavia deseas Agregarlo?"
                STORE 99 TO mkEy
                IF moPc$"Nn"
                     STORE 01 TO viTe, viT1
                     STORE 00 TO vsWw
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 01 TO viTe, viT1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=24
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=3 .OR. viTe=5  ;
                .OR. viTe=7 .OR. viTe=8 .OR. viTe=13 .OR. viTe=14 .OR.  ;
                viTe=19 .OR. viTe=20)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del .AND. plIs$"34"
                STORE "En este nivel no se puede usar esta opción..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. plIs$"12"
                DO deL_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5
                GOTO TOP
                SEEK vcOd
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f1102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1102suc=vsUc
                          STORE "Este es el primer código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_1101b
                          DO diS_1101b
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F6
                SET NEAR ON
                SEEK vcOd+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f1102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f1102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1102suc=vsUc
                          STORE "Este es el último código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_1101b
                          DO diS_1101b
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd+vsUc
                SET NEAR OFF
                IF EOF() .OR. f1102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ELSE
                     IF vsUc=f1102suc
                          SKIP
                          IF EOF() .OR. f1102cod<>vcOd
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f1102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1102suc=vsUc
                          STORE "Este es el último código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_1101b
                          DO diS_1101b
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd+vsUc
                SET NEAR OFF
                IF EOF() .OR. f1102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f1102suc>=vsUc
                     SKIP -1
                     IF BOF() .OR. f1102cod<>vcOd
                          GOTO TOP
                          SEEK vcOd
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF() .OR. f1102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1102suc=vsUc
                          STORE "Este es el primer código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_1101b
                          DO diS_1101b
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_Enter
                DO veR_1101b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=24
                               DO grA_1101b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_1101b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=07 .OR. viTe=13 .OR. viTe=19
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=08 .OR. viTe=14 .OR. viTe=20
                               STORE viTe+4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=12 .OR. viTe=18 .OR. viTe=24
                               STORE viTe-1 TO viTe
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=09 .OR. viTe=15 .OR. viTe=21
                          STORE viTe-2 TO viTe
                     CASE viTe=12 .OR. viTe=18 .OR. viTe=24
                          STORE viTe-4 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_1101b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=24
                               DO grA_1101b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<6 .OR. viTe=10 .OR. viTe=16 .OR. viTe=22
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=6 .OR. viTe=8 .OR. viTe=14
                               STORE viTe+5 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=09 .OR. viTe=12 .OR. viTe=15 .OR.  ;
                               viTe=18 .OR. viTe=21
                               STORE viTe+3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=11 .OR. viTe=17
                               STORE viTe+6 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=20
                               STORE 24 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_1101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO grA_1101b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=1
                          STORE 04 TO viTe, viT1
                          EXIT
                     CASE viTe=2 .AND. plIs$"13"
                          STORE 10 TO viTe, viT1
                          EXIT
                     CASE viTe=2
                          STORE 6 TO viTe, viT1
                          EXIT
                     CASE viTe<8
                          STORE viTe-2 TO viTe
                     CASE viTe=9 .OR. viTe=16 .OR. viTe=22
                          STORE viTe-4 TO viTe
                     CASE viTe=10 .OR. viTe=11 .OR. viTe=13 .OR. viTe=19
                          STORE viTe-5 TO viTe
                     CASE viTe=12 .OR. viTe=15 .OR. viTe=18 .OR. viTe=21  ;
                          .OR. viTe=24
                          STORE viTe-3 TO viTe
                     CASE viTe=17 .OR. viTe=23
                          STORE viTe-6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 24 TO ciTx
                STORE viTe+1 TO viTe
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_1101b
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 24 TO ciTx
                STORE viTe+1 TO viTe
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_1101b
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO grA_1101b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd+vsUc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=01 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>01 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
                     IF plIs$"34"
                          DO prEsiona WITH "3", "BORRAR", mmF1+0.1, mmC1+2
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF viTe=01
                DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB6, vcB6
           ELSE
                DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(150) Font "&mLetRom",9 Style "BQ" Size 1,150
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+vCL1+18 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NI PUEDE TENER ESPACIOS VACÍOS..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+vCL1+16 Say "CAMPO DE 4 DÍGITOS, PUEDE ESTAR EN BLANCO SI NO SE USA..."               Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+vCL1+16 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=04
                     @mMF2,mMC2+vCL1+16 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=05
                     @mMF2,mMC2+vCL1+15 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, FIGURA EN GUÍA DE REMISIÓN..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=06
                     @mMF2,mMC2+vCL1+15 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, FIGURA EN GUÍA DE REMISIÓN..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=07 .OR. viTe=13 .OR. viTe=19
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=08 .OR. viTe=12 .OR. viTe=14 .OR. viTe=18 .OR.  ;
                     viTe=20 .OR. viTe=24
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=09 .OR. viTe=11 .OR. viTe=15 .OR. viTe=17 .OR.  ;
                     viTe=21 .OR. viTe=23
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=10 .OR. viTe=16 .OR. viTe=22
                     @mMF2,mMC2+vCL1+24 Say "CAMPO DE 4 DÍGITOS, SI NO SE USA DEJAR EN BLANCO..."                     Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @cFI0+09.3,mCO0+018.0 Get  vSUC Font "&mLetRom",11 Style "BQ" Size 1,2.5 Pict "99"   Color ,&mColBlN
           CASE viTe=2
                @cFI0+09.8,mCO0+090.0 Edit vANO Font "&mLetAri",9  Style "NQ" Size 1,06,04
           CASE viTe=3
                @cFI0+11.3,mCO0+018.0 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,78,70
           CASE viTe=4 .AND. LEN(ALLTRIM(vdIs))=0
                @cFI0+11.3,vCL3+105.0 Edit vNDI Font "&mLetAri",9  Style "NQ" Size 1,34,50
           CASE viTe=4
                DO coL_beige
                @cFI0+11.3,vCL3+105.0 Say vNDI Font "&mLetAri",9   Style "NQ" Size 1,34 Pict "@S37"
                mkEy = INKEY(0, "HM")
                DO coLbln
                @cFI0+11.3,vCL3+105.0 Say vNDI Font "&mLetAri",9   Style "NQ" Size 1,34 Pict "@S37"
           CASE viTe=5
                @cFI0+12.8,mCO0+018.0 Edit vENT Font "&mLetAri",9  Style "NQ" Size 1,78,70
           CASE viTe=6 .AND. LEN(ALLTRIM(vdIe))=0
                @cFI0+12.8,vCL3+105.0 Edit vND1 Font "&mLetAri",9  Style "NQ" Size 1,34,50
           CASE viTe=6
                DO coL_beige
                @cFI0+12.8,vCL3+105.0 Say  vND1 Font "&mLetAri",9  Style "NQ" Size 1,34 Pict "@S35"
                mkEy = INKEY(0, "HM")
                DO coLbln
                @cFI0+12.8,vCL3+105.0 Say  vND1 Font "&mLetAri",9  Style "NQ" Size 1,34 Pict "@S35"
           CASE viTe=7
                @cFI0+14.3,mCO0+018.0 Edit vCT1 Font "&mLetAri",9  Style "NQ" Size 1,50,50
           CASE viTe=8
                @cFI0+15.8,mCO0+018.0 Edit vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34,30
           CASE viTe=9
                @cFI0+14.3,mCO0+087.0 Get  vTL1 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=10
                @cFI0+14.3,mCO0+115.0 Get  vAN1 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
           CASE viTe=11
                @cFI0+14.3,mCO0+144.6 Get  vFA1 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=12
                DO coLblz
                @cFI0+15.8,mCO0+087.0 Edit vMAI Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
           CASE viTe=13
                @cFI0+17.3,mCO0+018.0 Edit vCT2 Font "&mLetAri",9  Style "NQ" Size 1,50,50
           CASE viTe=14
                @cFI0+18.8,mCO0+018.0 Edit vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34,30
           CASE viTe=15
                @cFI0+17.3,mCO0+087.0 Get  vTL2 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=16
                @cFI0+17.3,mCO0+115.0 Get  vAN2 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
           CASE viTe=17
                @cFI0+17.3,mCO0+144.6 Get  vFA2 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=18
                DO coLblz
                @cFI0+18.8,mCO0+087.0 Edit vMA2 Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
           CASE viTe=19
                @cFI0+20.3,mCO0+018.0 Edit vCT3 Font "&mLetAri",9  Style "NQ" Size 1,50,50
           CASE viTe=20
                @cFI0+21.8,mCO0+018.0 Edit vCA3 Font "&mLetAri",9  Style "NQ" Size 1,34,30
           CASE viTe=21
                @cFI0+20.3,mCO0+087.0 Get  vTL3 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=22
                @cFI0+20.3,mCO0+115.0 Get  vAN3 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
           CASE viTe=23
                @cFI0+20.3,mCO0+144.6 Get  vFA3 Font "&mLetAri",9  Style "NQ" Size 1,14 Color ,&mColBlN
           CASE viTe=24
                DO coLblz
                @cFI0+21.8,mCO0+087.0 Edit vMA3 Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
      ENDCASE
      IF (viTe=4 .AND. LEN(ALLTRIM(vdIs))<>0) .OR. (viTe=6 .AND.  ;
         LEN(ALLTRIM(vdIe))<>0)
      ELSE
           SET CURSOR ON
           READ
           SET CURSOR OFF
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Ver_1101b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=01 .AND. LEN(ALLTRIM(vsUc))=0
           STORE "Código de Sucursal no puede estar vacío...          " TO mmSj
      CASE viTe=01 .AND. AT(" ", vsUc)<>0
           STORE "Código de Sucursal no puede tener espacios vacíos..." TO mmSj
      CASE viTe=01 .AND. vsUc="00"
           STORE "Código de Sucursal no puede ser 00...               " TO mmSj
      CASE viTe=01
           SEEK vcOd+vsUc
           DO coL_beige
           IF EOF()
                @cFI0+9.3,mCO0+mUCO-26 Say "       SUC.NUEVA" Font "&LetRom",10 Style "BQ" Size 1,15.5
                STORE 02 TO vaLq
                STORE SPACE(70) TO vdIr, veNt
                STORE SPACE(02) TO vdIs, vdIe, vdPt, vdP1
                STORE SPACE(04) TO vaNo, vaN1, vaN2, vaN3
                STORE SPACE(10) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
                STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi, vmA2, vmA3
                STORE SPACE(50) TO vcT1, vcT2, vcT3, vnDi, vnDp, vnD1, vnP1
           ELSE
                @cFI0+9.3,mCO0+mUCO-26 Say "SUC.EXISTENTE" Font "&LetRom",10 Style "BQ" Size 1,15.5
                DO muE_1101b
           ENDIF
           DO diS_1101b
      CASE viTe=03 .AND. LEN(ALLTRIM(vdIr))=0
           STORE "Dirección no puede estar vacía..." TO mmSj
      CASE viTe=04 .AND. LEN(ALLTRIM(vdIs))=0
           STORE "Distrito no puede estar vacío..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_1101b
 STORE f1102suc TO vsUc
 STORE f1102dir TO vdIr
 STORE f1102dpt TO vdPt
 STORE f1102dis TO vdIs
 STORE f1102ndi TO vnDi
 STORE f1102ndp TO vnDp
 STORE f1102ent TO veNt
 STORE f1102dp1 TO vdP1
 STORE f1102die TO vdIe
 STORE f1102nd1 TO vnD1
 STORE f1102np1 TO vnP1
 STORE f1102ct1 TO vcT1
 STORE f1102ct2 TO vcT2
 STORE f1102ct3 TO vcT3
 STORE f1102ca1 TO vcA1
 STORE f1102ca2 TO vcA2
 STORE f1102ca3 TO vcA3
 STORE f1102tl1 TO vtL1
 STORE f1102tl2 TO vtL2
 STORE f1102tl3 TO vtL3
 STORE f1102an1 TO vaN1
 STORE f1102an2 TO vaN2
 STORE f1102an3 TO vaN3
 STORE f1102fa1 TO vfA1
 STORE f1102fa2 TO vfA2
 STORE f1102fa3 TO vfA3
 STORE f1102mai TO vmAi
 STORE f1102ma2 TO vmA2
 STORE f1102ma3 TO vmA3
 STORE f1102alq TO vaLq
 STORE f1102ano TO vaNo
 IF vaLq=0
      STORE 2 TO vaLq
 ENDIF
ENDPROC
*
PROCEDURE Suc_1101b
 DO coLbln
 @cFI0+9.3,mCO0+18 Say vSUC Font "&mLetRom",11 Style "BQ" Size 1,2.5
ENDPROC
*
PROCEDURE Dis_1101b
 DO coLbln
 @cFI0+11.3,mCO0+018.0 Say vDIR Font "&mLetAri",9  Style "NQ" Size 1,78  Pict "@S70"
 @cFI0+12.8,mCO0+018.0 Say vENT Font "&mLetAri",9  Style "NQ" Size 1,78  Pict "@S70"
 @cFI0+11.3,vCL3+105.0 Say vNDI Font "&mLetAri",9  Style "NQ" Size 1,34  Pict "@S37"
 @cFI0+12.8,vCL3+105.0 Say vND1 Font "&mLetAri",9  Style "NQ" Size 1,34  Pict "@S37"
 @cFI0+09.8,mCO0+090.0 Say vANO Font "&mLetAri",9  Style "NQ" Size 1,06  Pict "@S04"
 @cFI0+14.3,mCO0+018.0 Say vCT1 Font "&mLetAri",9  Style "NQ" Size 1,50  Pict "@S50"
 @cFI0+14.3,mCO0+087.0 Say vTL1 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+14.3,mCO0+115.0 Say vAN1 Font "&mLetAri",9  Style "NQ" Size 1,06
 @cFI0+14.3,mCO0+144.6 Say vFA1 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+15.8,mCO0+018.0 Say vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34  Pict "@S30"
 @cFI0+17.3,mCO0+018.0 Say vCT2 Font "&mLetAri",9  Style "NQ" Size 1,50  Pict "@S50"
 @cFI0+17.3,mCO0+087.0 Say vTL2 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+17.3,mCO0+115.0 Say vAN2 Font "&mLetAri",9  Style "NQ" Size 1,06
 @cFI0+17.3,mCO0+144.6 Say vFA2 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+18.8,mCO0+018.0 Say vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34  Pict "@S30"
 @cFI0+20.3,mCO0+018.0 Say vCT3 Font "&mLetAri",9  Style "NQ" Size 1,50  Pict "@S50"
 @cFI0+20.3,mCO0+087.0 Say vTL3 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+20.3,mCO0+115.0 Say vAN3 Font "&mLetAri",9  Style "NQ" Size 1,06
 @cFI0+20.3,mCO0+144.6 Say vFA3 Font "&mLetAri",9  Style "NQ" Size 1,14
 @cFI0+21.8,mCO0+018.0 Say vCA3 Font "&mLetAri",9  Style "NQ" Size 1,34  Pict "@S30"
 DO coLblz
 @cFI0+15.8,mCO0+087.0 Say vMAI Font "&mLetAri",9  Style "NQ" Size 1,52.4 Pict "@S30"
 @cFI0+18.8,mCO0+087.0 Say vMA2 Font "&mLetAri",9  Style "NQ" Size 1,52.4 Pict "@S30"
 @cFI0+21.8,mCO0+087.0 Say vMA3 Font "&mLetAri",9  Style "NQ" Size 1,52.4 Pict "@S30"
 DO suC_1101b
 DO alQ_1101a WITH "2"
 READ TIMEOUT 0.001
ENDPROC
*
PROCEDURE Gra_1101b
 = INKEY(0.01)
 SELECT suCursal
 DO grAbar WITH "1"
 SEEK vcOd+vsUc
 IF EOF()
      DO nuEvo_rg
      REPLACE f1102cod WITH vcOd
      REPLACE f1102suc WITH vsUc
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd+vsUc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f1102dir WITH vdIr
 REPLACE f1102dpt WITH vdPt
 REPLACE f1102dis WITH vdIs
 REPLACE f1102ndi WITH vnDi
 REPLACE f1102ndp WITH vnDp
 REPLACE f1102ent WITH veNt
 REPLACE f1102dp1 WITH vdP1
 REPLACE f1102die WITH vdIe
 REPLACE f1102nd1 WITH vnD1
 REPLACE f1102np1 WITH vnP1
 REPLACE f1102ct1 WITH vcT1
 REPLACE f1102ct2 WITH vcT2
 REPLACE f1102ct3 WITH vcT3
 REPLACE f1102ca1 WITH vcA1
 REPLACE f1102ca2 WITH vcA2
 REPLACE f1102ca3 WITH vcA3
 REPLACE f1102tl1 WITH vtL1
 REPLACE f1102tl2 WITH vtL2
 REPLACE f1102tl3 WITH vtL3
 REPLACE f1102an1 WITH vaN1
 REPLACE f1102an2 WITH vaN2
 REPLACE f1102an3 WITH vaN3
 REPLACE f1102fa1 WITH vfA1
 REPLACE f1102fa2 WITH vfA2
 REPLACE f1102fa3 WITH vfA3
 REPLACE f1102mai WITH vmAi
 REPLACE f1102ma2 WITH vmA2
 REPLACE f1102ma3 WITH vmA3
 REPLACE f1102alq WITH vaLq
 REPLACE f1102ano WITH vaNo
 REPLACE f1102usu WITH muSu
 REPLACE f1102dat WITH DATE()
 REPLACE f1102tim WITH TIME()
 REPLACE f1102maq WITH mmAq
 UNLOCK
 IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr .AND. vsWw=1
      PRIVATE pdB2, piD2, puBi, pdIs, ppRv, pdPt
      STORE ALLTRIM(SUBSTR(vnDi, 1, AT(",", vnDi)-1)) TO pdIs
      STORE ALLTRIM(SUBSTR(vnDi, AT(",", vnDi)+1, 30)) TO ppRv
      STORE ALLTRIM(vnDp) TO pdPt
      STORE mpTh+"RRR1\GUBI.DLL" TO pdB2
      STORE mpTh+"RRR1\GUBI.SSL" TO piD2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
           STORE muNi+":"+piD2 TO piD2
      ENDIF
      DO veR_ult IN FAC0000A WITH muLt, 1
      Use &pDB2 Shared NoUpdate Alias Ubigeo
      Set Index to &pID2
      SET FILTER TO pdIs+"*"=ALLTRIM(UPPER(diSt))+"*" .AND. ppRv+"*"=ALLTRIM(UPPER(prOv))+"*" .AND. pdPt+"*"=ALLTRIM(UPPER(deP))+"*"
      GOTO TOP
      STORE ubIgeo TO puBi
      DO veR_ult IN FAC0000A WITH muLt, 2
      DO CASE
           CASE SUBSTR(vdNi, 1, 1)="0"
                STORE mpTh+"RRR1\D0NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D0NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="1"
                STORE mpTh+"RRR1\D1NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D1NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="2"
                STORE mpTh+"RRR1\D2NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D2NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="3"
                STORE mpTh+"RRR1\D3NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D3NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="4"
                STORE mpTh+"RRR1\D4NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D4NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="5"
                STORE mpTh+"RRR1\D5NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D5NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="6"
                STORE mpTh+"RRR1\D6NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D6NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="7"
                STORE mpTh+"RRR1\D7NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D7NI.SSL" TO piD2
           CASE SUBSTR(vdNi, 1, 1)="8"
                STORE mpTh+"RRR1\D8NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D8NI.SSL" TO piD2
           OTHERWISE
                STORE mpTh+"RRR1\D9NI.DLL" TO pdB2
                STORE mpTh+"RRR1\D9NI.SSL" TO piD2
      ENDCASE
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
           STORE muNi+":"+piD2 TO piD2
      ENDIF
      Use &pDB2 Shared Alias Reniec
      Set Index to &pID2
      SEEK ALLTRIM(vdNi)+"*"
      IF  .NOT. EOF()
           REPLACE diR WITH vdIr
           REPLACE deP WITH SUBSTR(puBi, 1, 2)
           REPLACE diS WITH SUBSTR(puBi, 3, 4)
           UNLOCK
      ENDIF
      STORE 0 TO vsWw
      USE
      RELEASE pdB2, piD2, puBi, pdIs, ppRv, pdPt
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_1101b
 SEEK vcOd+vsUc
 IF EOF()
      STORE "Código de Sucursal no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd+vsUc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f1102cod WITH SPACE(04)
 REPLACE f1102suc WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Clp_1101b
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.80
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.40
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.60
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1+mfG1 .AND. mfIl<=vfB1+mfG2 .AND. mcCc>=vcB1+mcG1  ;
           .AND. mcCc<=vcB1+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>1
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE 0 TO ciTx
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>1
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE 0 TO ciTx
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB8 .AND. mfIl<=vfB8+2.5 .AND. mcCc>=vcB8 .AND. mcCc<= ;
           vcB8+6.6 .AND. (viTe=3 .OR. viTe=5 .OR. viTe=7 .OR. viTe=8  ;
           .OR. viTe=13 .OR. viTe=14 .OR. viTe=19 .OR. viTe=20)
           DO CASE
                CASE viTe=3
                     DO leN_0000a IN FAC0000A WITH "5"
                CASE viTe=5
                     DO leN_0000a IN FAC0000A WITH "6"
                CASE viTe=7
                     DO leN_0000a IN FAC0000A WITH "7"
                CASE viTe=8
                     DO leN_0000a IN FAC0000A WITH "0"
                CASE viTe=13
                     DO leN_0000a IN FAC0000A WITH "8"
                CASE viTe=14
                     DO leN_0000a IN FAC0000A WITH "A"
                CASE viTe=19
                     DO leN_0000a IN FAC0000A WITH "9"
                CASE viTe=20
                     DO leN_0000a IN FAC0000A WITH "B"
           ENDCASE
           STORE 99 TO mkEy
      CASE viTe>1 .AND. vaLq<>1 .AND. mfIl>=cfI0+9.793 .AND. mfIl<=cfI0+ ;
           10.721 .AND. mcCc>=mcO0+51.9 .AND. mcCc<=mcO0+66.3
           STORE 1 TO vaLq
           DO alQ_1101a WITH "1"
           STORE 99 TO mkEy
      CASE viTe>1 .AND. vaLq<>2 .AND. mfIl>=cfI0+9.793 .AND. mfIl<=cfI0+ ;
           10.721 .AND. mcCc>=mcO0+66.3 .AND. mcCc<=mcO0+77.5
           STORE 2 TO vaLq
           DO alQ_1101a WITH "1"
           STORE 99 TO mkEy
      CASE viTe<>1 .AND. mfIl>=cfI0+6.15 .AND. mfIl<=cfI0+8.078 .AND.  ;
           mcCc>=mcO0+0.9 .AND. mcCc<=mcO0+31.7
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE viTe<>2 .AND. mfIl>=cfI0+9.078 .AND. mfIl<=cfI0+10.936 .AND.  ;
           mcCc>=mcO0+82.9 .AND. mcCc<=mcO0+96.3
           STORE 2 TO ciTx
      CASE viTe<>3 .AND. mfIl>=cfI0+11.293 .AND. mfIl<=cfI0+12.436 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+96.3
           STORE 3 TO ciTx
      CASE viTe<>4 .AND. mfIl>=cfI0+11.293 .AND. mfIl<=cfI0+12.436 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+159.3
           STORE 4 TO ciTx
      CASE viTe<>5 .AND. mfIl>=cfI0+12.721 .AND. mfIl<=cfI0+13.864 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+96.1
           STORE 5 TO ciTx
      CASE viTe<>6 .AND. mfIl>=cfI0+12.721 .AND. mfIl<=cfI0+13.864 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+159.3
           STORE 6 TO ciTx
      CASE viTe<>7 .AND. mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND.  ;
           mcCc>=mcO0+0.9 .AND. mcCc<=mcO0+68.1
           STORE 7 TO ciTx
      CASE viTe<>8 .AND. mfIl>=cfI0+15.721 .AND. mfIl<=cfI0+16.936 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+52.1
           STORE 8 TO ciTx
      CASE viTe<>9 .AND. mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND.  ;
           mcCc>=mcO0+71.9 .AND. mcCc<=mcO0+101.7
           STORE 9 TO ciTx
      CASE viTe<>10 .AND. mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+121.7
           STORE 10 TO ciTx
      CASE viTe<>11 .AND. mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND.  ;
           mcCc>=mcO0+137.1 .AND. mcCc<=mcO0+159.1
           STORE 11 TO ciTx
      CASE viTe<>12 .AND. mfIl>=cfI0+15.793 .AND. mfIl<=cfI0+16.936 .AND.  ;
           mcCc>=mcO0+71.9 .AND. mcCc<=mcO0+139.7
           STORE 12 TO ciTx
      CASE viTe<>13 .AND. mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+68.1
           STORE 13 TO ciTx
      CASE viTe<>14 .AND. mfIl>=cfI0+18.793 .AND. mfIl<=cfI0+19.936 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+52.1
           STORE 14 TO ciTx
      CASE viTe<>15 .AND. mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND.  ;
           mcCc>=mcO0+71.7 .AND. mcCc<=mcO0+101.7
           STORE 15 TO ciTx
      CASE viTe<>16 .AND. mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+121.7
           STORE 16 TO ciTx
      CASE viTe<>17 .AND. mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND.  ;
           mcCc>=mcO0+137.1 .AND. mcCc<=mcO0+159.1
           STORE 17 TO ciTx
      CASE viTe<>18 .AND. mfIl>=cfI0+18.793 .AND. mfIl<=cfI0+19.936 .AND.  ;
           mcCc>=mcO0+71.9 .AND. mcCc<=mcO0+139.7
           STORE 18 TO ciTx
      CASE viTe<>19 .AND. mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+68.1
           STORE 19 TO ciTx
      CASE viTe<>20 .AND. mfIl>=cfI0+21.721 .AND. mfIl<=cfI0+22.864 .AND.  ;
           mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+52.1
           STORE 20 TO ciTx
      CASE viTe<>21 .AND. mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND.  ;
           mcCc>=mcO0+71.7 .AND. mcCc<=mcO0+101.7
           STORE 21 TO ciTx
      CASE viTe<>22 .AND. mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+121.7
           STORE 22 TO ciTx
      CASE viTe<>23 .AND. mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND.  ;
           mcCc>=mcO0+137.1 .AND. mcCc<=mcO0+159.1
           STORE 23 TO ciTx
      CASE viTe<>24 .AND. mfIl>=cfI0+21.721 .AND. mfIl<=cfI0+22.864 .AND.  ;
           mcCc>=mcO0+71.9 .AND. mcCc<=mcO0+139.7
           STORE 24 TO ciTx
      CASE mfIl>=mfI0-0.214 .AND. mfIl<=mfI0+2.214 .AND. mcCc>=mcO0-0.3  ;
           .AND. mcCc<=mcO0+31.9
           STORE 1 TO viTe, viT1
      CASE (vtPo=1 .OR. vtPp=2) .AND. mfIl>=mfI0+3 .AND. mfIl<=mfI0+4.214  ;
           .AND. mcCc>=mcO0+44.7 .AND. mcCc<=mcO0+67.1
           STORE 2 TO viTe, viT1
      CASE (vtPo=1 .OR. vtPp=2) .AND. mfIl>=mfI0+3 .AND. mfIl<=mfI0+4.214  ;
           .AND. mcCc>=mcO0+69.7 .AND. mcCc<=mcO0+92.1
           STORE 3 TO viTe, viT1
      CASE (vtPo=1 .OR. (vtPo=2 .AND. vtPp=2)) .AND. mfIl>=mfI0+3.00  ;
           .AND. mfIl<=mfI0+4.214 .AND. mcCc>=mcO0+94.7 .AND. mcCc<=mcO0+117.1
           STORE 4 TO viTe, viT1
      CASE mfIl>=mfI0+4.5 .AND. mfIl<=mfI0+5.714 .AND. mcCc>=mcO0+31.9  ;
           .AND. mcCc<=mcO0+63.1
           DO CASE
                CASE vtPo=1
                     STORE 5 TO viTe, viT1
                CASE vtPp=1
                     STORE 4 TO viTe, viT1
                CASE vtPp=2
                     STORE 6 TO viTe, viT1
           ENDCASE
      CASE vtPo=1 .AND. mfIl>=mfI0+6.0 .AND. mfIl<=mfI0+7.24 .AND. mcCc>= ;
           mcO0+0.7 .AND. mcCc<=mcO0+21.5
           STORE 6 TO viTe, viT1
      CASE (vtPo=1 .OR. (vtPo=2 .AND. vtPp=1)) .AND. mfIl>=mfI0+6.00  ;
           .AND. mfIl<=mfI0+7.24 .AND. mcCc>=mcO0+32.1 .AND. mcCc<=mcO0+63.1
           DO CASE
                CASE vtPo=1
                     STORE 7 TO viTe, viT1
                CASE vtPp=1
                     STORE 5 TO viTe, viT1
           ENDCASE
      CASE vtPo=2 .AND. vtPp=1 .AND. mfIl>=mfI0+3 .AND. mfIl<=mfI0+4.214  ;
           .AND. mcCc>=mcO0+44.7 .AND. mcCc<=mcO0+125.1
           STORE 2 TO viTe, viT1
      CASE vtPo=2 .AND. mfIl>=mfI0+4.5 .AND. mfIl<=mfI0+5.714 .AND. mcCc>= ;
           mcO0+0.1 .AND. mcCc<=mcO0+25.7
           DO CASE
                CASE vtPp=1
                     STORE 3 TO viTe, viT1
                CASE vtPp=2
                     STORE 5 TO viTe, viT1
           ENDCASE
      CASE mfIl>=mfI0+4.571 .AND. mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+67.3  ;
           .AND. mcCc<=vcL2+71.3
           DO CASE
                CASE vtPo=1
                     STORE 8 TO viTe, viT1
                CASE vtPp=1
                     STORE 6 TO viTe, viT1
                CASE vtPp=2
                     STORE 7 TO viTe, viT1
           ENDCASE
      CASE mfIl>=mfI0+4.571 .AND. mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+73.3  ;
           .AND. mcCc<=vcL2+77.5
           DO CASE
                CASE vtPo=1
                     STORE 9 TO viTe, viT1
                CASE vtPp=1
                     STORE 7 TO viTe, viT1
                CASE vtPp=2
                     STORE 8 TO viTe, viT1
           ENDCASE
      CASE mfIl>=mfI0+4.571 .AND. mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+79.3  ;
           .AND. mcCc<=vcL2+83.3
           DO CASE
                CASE vtPo=1
                     STORE 10 TO viTe, viT1
                CASE vtPp=1
                     STORE 8 TO viTe, viT1
                CASE vtPp=2
                     STORE 9 TO viTe, viT1
           ENDCASE
      CASE mfIl>=mfI0+6 .AND. mfIl<=mfI0+7.142 .AND. mcCc>=vcL2+58.9  ;
           .AND. mcCc<=vcL2+75.5
           DO CASE
                CASE vtPo=1
                     STORE 11 TO viTe, viT1
                CASE vtPp=1
                     STORE 9 TO viTe, viT1
                CASE vtPp=2
                     STORE 10 TO viTe, viT1
           ENDCASE
      CASE mfIl>=mfI0+7.5 .AND. mfIl<=mfI0+8.714 .AND. mcCc>=vcL2+111.7  ;
           .AND. mcCc<=vcL2+123.1
           DO CASE
                CASE vtPo=1
                     STORE 12 TO viTe, viT1
                CASE vtPp=1
                     STORE 10 TO viTe, viT1
                CASE vtPp=2
                     STORE 11 TO viTe, viT1
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_1101b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_1101b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 01 SAY  ;
   "En esta parte del programa, se debe ingresar las sucursales si es que las"
 @ pfIl+01, 01 SAY  ;
   "hay,  en caso de ser una empresa que no las tenga se registrará el resto "
 @ pfIl+02, 01 SAY  ;
   "de los datos como Sucursal 01.                                           "
 @ pfIl+04, 01 SAY "Se puede crear, modificar y/o eliminar Sucursales."
 @ pfIl+06, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 03 SAY "ESC" STYLE "BT"
 @ pfIl+09, 03 SAY "F10" STYLE "BT"
 @ pfIl+10, 03 SAY "F1" STYLE "BT"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+08, 23 SAY "Regresar a la Cabecera"
      OTHERWISE
           @ pfIl+08, 23 SAY "Regresar al Código de Sucursal"
 ENDCASE
 STORE pfIl+11 TO pfIl
 IF viTe=1 .OR. viTe=4 .OR. viTe=6
      @ pfIl, 21 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe=1
                @ pfIl, 23 SAY "Consulta de Sucursales x Cliente"
           CASE viTe=4 .OR. viTe=6
                @ pfIl, 23 SAY "Consultar Distritos"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+4, 21 SAY ":" STYLE "BT"
 @ pfIl+5, 21 SAY ":" STYLE "BT"
 @ pfIl+6, 21 SAY ":" STYLE "BT"
 @ pfIl+7, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "F5" STYLE "BT"
 @ pfIl+1, 03 SAY "F6" STYLE "BT"
 @ pfIl+2, 03 SAY "F7" STYLE "BT"
 @ pfIl+3, 03 SAY "F8" STYLE "BT"
 @ pfIl+4, 03 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+6, 03 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+7, 03 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 23 SAY "Primer Sucursal del Cliente"
 @ pfIl+1, 23 SAY "Último Sucursal del Cliente"
 @ pfIl+2, 23 SAY "Sucursal siguiente"
 @ pfIl+3, 23 SAY "Sucursal anterior"
 @ pfIl+4, 23 SAY "Ir al siguiente campo, llegando al final se graba"
 @ pfIl+5, 23 SAY "Ir al campo inferior, llegando al final se graba"
 @ pfIl+6, 23 SAY "Ir al campo superior"
 @ pfIl+7, 23 SAY "Ir al campo derecho, llegando al final se graba"
 STORE pfIl+8 TO pfIl
 IF viTe>1
      @ pfIl+0, 21 SAY ":" STYLE "BT"
      @ pfIl+1, 21 SAY ":" STYLE "BT"
      @ pfIl+2, 21 SAY ":" STYLE "BT"
      @ pfIl+3, 21 SAY ":" STYLE "BT"
      @ pfIl+4, 21 SAY ":" STYLE "BT"
      @ pfIl+0, 03 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 03 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+2, 03 SAY "CTRL END" STYLE "BT"
      @ pfIl+3, 03 SAY "CTRL DEL" STYLE "BT"
      @ pfIl+4, 03 SAY "TAB" STYLE "BT"
      @ pfIl+0, 23 SAY "Ir al campo izquierdo"
      @ pfIl+1, 23 SAY "Ir al primer campo"
      @ pfIl+2, 23 SAY "Ir al último campo"
      @ pfIl+3, 23 SAY "Borrar Sucursal"
      @ pfIl+4, 23 SAY "Grabar y pasar al campo de código de Sucursal"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
