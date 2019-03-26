 STORE k_Enter TO mkEy
 STORE 00 TO viT1
 = INKEY(0.01)
 IF viTe<>01
      STORE viTe TO viT1
      STORE 01 TO viTe
      DO veR_2101b
      IF mkEy<>99 .AND. viT1>02
           STORE 02 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>03
           STORE 03 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>04
           STORE 04 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>05
           STORE 05 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>06
           STORE 06 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>07
           STORE 07 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>08
           STORE 08 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>09
           STORE 09 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>10
           STORE 10 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>11
           STORE 11 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>12
           STORE 12 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>13
           STORE 13 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>14
           STORE 14 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>15
           STORE 15 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>16
           STORE 16 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>17
           STORE 17 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>18
           STORE 18 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>19
           STORE 19 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>20
           STORE 20 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99 .AND. viT1>21
           STORE 21 TO viTe
           DO veR_2101b
      ENDIF
      IF mkEy<>99
           STORE viT1 TO viTe
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2101a WITH "1"
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
           DO clP_2101b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SET FILTER TO f2102cod=vcOd
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Sucursales registradas en este Proveedor..."  ;
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
                     DO coLbln
                     STORE f2102suc TO vsUc
                     @mFI0+vFI0+6.4,mCO0+17 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2101b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2101a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 01 TO viTe, viT1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=21
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<3 .OR. viTe=4 .OR. viTe=6  ;
                .OR. viTe=9 .OR. viTe=11 .OR. viTe=14 .OR. viTe=16 .OR.  ;
                viTe=19 .OR. viTe=21)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                DO deL_2101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5
                GOTO TOP
                SEEK vcOd
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f2102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2102suc=vsUc
                          STORE "Este es el primer código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_2101b
                          DO diS_2101b
                          IF viTe<>01
                               DO coLbln
                               @mFI0+vFI0+6.4,mCO0+17 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F6
                SET NEAR ON
                SEEK vcOd+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f2102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f2102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2102suc=vsUc
                          STORE "Este es el último código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_2101b
                          DO diS_2101b
                          IF viTe<>01
                               DO coLbln
                               @mFI0+vFI0+6.4,mCO0+17 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd+vsUc
                SET NEAR OFF
                IF EOF() .OR. f2102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ELSE
                     IF vsUc=f2102suc
                          SKIP
                          IF EOF() .OR. f2102cod<>vcOd
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF() .OR. f2102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2102suc=vsUc
                          STORE "Este es el último código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_2101b
                          DO diS_2101b
                          IF viTe<>01
                               DO coLbln
                               @mFI0+vFI0+6.4,mCO0+17 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd+vsUc
                SET NEAR OFF
                IF EOF() .OR. f2102cod<>vcOd
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f2102suc>=vsUc
                     SKIP -1
                     IF BOF() .OR. f2102cod<>vcOd
                          GOTO TOP
                          SEEK vcOd
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF() .OR. f2102cod<>vcOd
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2102suc=vsUc
                          STORE "Este es el primer código de Sucursal..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_2101b
                          DO diS_2101b
                          IF viTe<>01
                               DO coLbln
                               @mFI0+vFI0+6.4,mCO0+17 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))<>0
                     SEEK vcOd+vsUc
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_2101b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=21
                               DO grA_2101b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Down
                DO veR_2101b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=02 .OR. viTe=03 .OR. viTe=04 .OR.  ;
                               viTe=09 .OR. viTe=10 .OR. viTe=14 .OR.  ;
                               viTe=15 .OR. viTe=18 .OR. viTe=19
                               STORE viTe+2 TO ciTx
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=05 .OR. viTe=06 .OR. viTe=07 .OR.  ;
                               viTe=11 .OR. viTe=12 .OR. viTe=16 .OR. viTe=17
                               STORE viTe+3 TO ciTx
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=08 .OR. viTe=13
                               STORE viTe+5 TO ciTx
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2101b
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=21
                               DO grA_2101b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=01
                          STORE 03 TO viTe, viT1
                          EXIT
                     CASE viTe=03 .OR. viTe=04 .OR. viTe=05 .OR. viTe=06  ;
                          .OR. viTe=11 .OR. viTe=12 .OR. viTe=16 .OR.  ;
                          viTe=17 .OR. viTe=21
                          STORE viTe-2 TO viTe
                     CASE viTe=07 .OR. viTe=08 .OR. viTe=09 .OR. viTe=10  ;
                          .OR. viTe=14 .OR. viTe=15 .OR. viTe=19 .OR. viTe=20
                          STORE viTe-3 TO viTe
                     CASE viTe=13 .OR. viTe=18
                          STORE viTe-5 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO veR_2101b
                IF mkEy<>99 .AND. viTe<02
                     STORE 02 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<03
                     STORE 03 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<04
                     STORE 04 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<05
                     STORE 05 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<06
                     STORE 06 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<07
                     STORE 07 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<08
                     STORE 08 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<09
                     STORE 09 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<10
                     STORE 10 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<11
                     STORE 11 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<12
                     STORE 12 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<13
                     STORE 13 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<14
                     STORE 14 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<15
                     STORE 15 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<16
                     STORE 16 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<17
                     STORE 17 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<18
                     STORE 18 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<19
                     STORE 19 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<20
                     STORE 20 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99
                     STORE 21 TO viTe
                ENDIF
           CASE mkEy=k_Tab
                DO veR_2101b
                IF mkEy<>99 .AND. viTe<02
                     STORE 02 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<03
                     STORE 03 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<04
                     STORE 04 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<05
                     STORE 05 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<06
                     STORE 06 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<07
                     STORE 07 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<08
                     STORE 08 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<09
                     STORE 09 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<10
                     STORE 10 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<11
                     STORE 11 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<12
                     STORE 12 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<13
                     STORE 13 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<14
                     STORE 14 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<15
                     STORE 15 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<16
                     STORE 16 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<17
                     STORE 17 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<18
                     STORE 18 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<19
                     STORE 19 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<20
                     STORE 20 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99 .AND. viTe<21
                     STORE 21 TO viTe
                     DO veR_2101b
                ENDIF
                IF mkEy<>99
                     DO grA_2101b
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
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(116) Font "&mLetRom",9 Style "BQ" Size 1,116
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+14 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NI PUEDE TENER ESPACIOS VACÍOS..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+11 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+11 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=04
                     @mMF2,mMC2+10 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=05
                     @mMF2,mMC2+10 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=06
                     @mMF2,mMC2+08 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=07
                     @mMF2,mMC2+08 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=08
                     @mMF2,mMC2+08 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=09
                     @mMF2,mMC2+08 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=10
                     @mMF2,mMC2+08 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=11
                     @mMF2,mMC2+08 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=12
                     @mMF2,mMC2+08 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=13 .OR. viTe=16 .OR. viTe=19
                     @mMF2,mMC2+20 Say "CAMPO DE 16 DÍGITOS, SI NO SE USA DEJAR EN BLANCO..."                     Font "&mLetRom",9 Style "BQ"
                CASE viTe=14 .OR. viTe=17 .OR. viTe=20
                     @mMF2,mMC2+20 Say "CAMPO DE 4 DÍGITOS, SI NO SE USA DEJAR EN BLANCO..."                     Font "&mLetRom",9 Style "BQ"
                CASE viTe=15 .OR. viTe=18 .OR. viTe=21
                     @mMF2,mMC2+20 Say "CAMPO DE 16 DÍGITOS, SI NO SE USA DEJAR EN BLANCO..."                     Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+vFI0+06.4,mCO0+17.0 Get  vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"     Color ,&mColBlN
           CASE viTe=2
                @mFI0+vFI0+08.5,mCO0+15.0 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,68,70
           CASE viTe=3
                @mFI0+vFI0+08.5,mCO0+85.0 Edit vDIS Font "&mLetAri",9  Style "NQ" Size 1,29,25
           CASE viTe=4
                @mFI0+vFI0+10.0,mCO0+15.0 Edit vENT Font "&mLetAri",9  Style "NQ" Size 1,68,70
           CASE viTe=5
                @mFI0+vFI0+10.0,mCO0+85.0 Edit vDIE Font "&mLetAri",9  Style "NQ" Size 1,29,25
           CASE viTe=6
                @mFI0+vFI0+11.5,mCO0+15.0 Edit vCT1 Font "&mLetAri",9  Style "NQ" Size 1,34,50
           CASE viTe=7
                @mFI0+vFI0+13.0,mCO0+15.0 Edit vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34,30
           CASE viTe=8
                @mFI0+vFI0+14.5,mCO0+15.0 Edit vCT2 Font "&mLetAri",9  Style "NQ" Size 1,34,50
           CASE viTe=9
                @mFI0+vFI0+16.0,mCO0+15.0 Edit vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34,30
           CASE viTe=10
                @mFI0+vFI0+17.5,mCO0+15.0 Edit vCT3 Font "&mLetAri",9  Style "NQ" Size 1,34,50
           CASE viTe=11
                @mFI0+vFI0+19.0,mCO0+15.0 Edit vCA3 Font "&mLetAri",9 Style "NQ" Size 1,34,30
           CASE viTe=12
                @mFI0+vFI0+20.5,mCO0+15.0 Edit vMAI Font "&mLetAri",9 Style "NQ" Size 1,34,30
           CASE viTe=13
                @mFI0+vFI0+11.5,mCO0+64.0 Get  vTL1 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
           CASE viTe=14
                @mFI0+vFI0+11.5,mCO0+99.5 Get  vAN1 Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "9999"             Color ,&mColBlN
           CASE viTe=15
                @mFI0+vFI0+13.0,mCO0+64.0 Get  vFA1 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
           CASE viTe=16
                @mFI0+vFI0+14.5,mCO0+64.0 Get  vTL2 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
           CASE viTe=17
                @mFI0+vFI0+14.5,mCO0+99.5 Get  vAN2 Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "9999"             Color ,&mColBlN
           CASE viTe=18
                @mFI0+vFI0+16.0,mCO0+64.0 Get  vFA2 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
           CASE viTe=19
                @mFI0+vFI0+17.5,mCO0+64.0 Get  vTL3 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
           CASE viTe=20
                @mFI0+vFI0+17.5,mCO0+99.5 Get  vAN3 Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "9999"             Color ,&mColBlN
           CASE viTe=21
                @mFI0+vFI0+19.0,mCO0+64.0 Get  vFA3 Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
ENDPROC
*
PROCEDURE Ver_2101b
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
                @mFI0+vFI0+20.4,mCO0+mUCO-26 Say "       SUC.NUEVA" Font "&LetRom",10 Style "BQ" Size 1,15.5
                STORE SPACE(70) TO vdIr, veNt
                STORE SPACE(25) TO vdIs, vdIe
                STORE SPACE(04) TO vaN1, vaN2, vaN3
                STORE SPACE(50) TO vcT1, vcT2, vcT3
                STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi
                STORE SPACE(16) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
           ELSE
                @mFI0+vFI0+20.4,mCO0+mUCO-26 Say "SUC.EXISTENTE" Font "&LetRom",10 Style "BQ" Size 1,15.5
                DO muE_2101b
           ENDIF
           DO diS_2101b
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
PROCEDURE Mue_2101b
 STORE f2102suc TO vsUc
 STORE f2102dir TO vdIr
 STORE f2102dis TO vdIs
 STORE f2102ent TO veNt
 STORE f2102die TO vdIe
 STORE f2102ct1 TO vcT1
 STORE f2102ct2 TO vcT2
 STORE f2102ct3 TO vcT3
 STORE f2102ca1 TO vcA1
 STORE f2102ca2 TO vcA2
 STORE f2102ca3 TO vcA3
 STORE f2102tl1 TO vtL1
 STORE f2102tl2 TO vtL2
 STORE f2102tl3 TO vtL3
 STORE f2102an1 TO vaN1
 STORE f2102an2 TO vaN2
 STORE f2102an3 TO vaN3
 STORE f2102fa1 TO vfA1
 STORE f2102fa2 TO vfA2
 STORE f2102fa3 TO vfA3
 STORE f2102mai TO vmAi
ENDPROC
*
PROCEDURE Dis_2101b
 DO coLbln
 @mFI0+vFI0+06.4,mCO0+17.0 Say vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"
 @mFI0+vFI0+08.5,mCO0+15.0 Say vDIR Font "&mLetAri",9  Style "NQ" Size 1,68,70
 @mFI0+vFI0+08.5,mCO0+85.0 Say vDIS Font "&mLetAri",9  Style "NQ" Size 1,29,25
 @mFI0+vFI0+10.0,mCO0+15.0 Say vENT Font "&mLetAri",9  Style "NQ" Size 1,68,70
 @mFI0+vFI0+10.0,mCO0+85.0 Say vDIE Font "&mLetAri",9  Style "NQ" Size 1,29,25
 @mFI0+vFI0+11.5,mCO0+15.0 Say vCT1 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+13.0,mCO0+15.0 Say vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+14.5,mCO0+15.0 Say vCT2 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+16.0,mCO0+15.0 Say vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+17.5,mCO0+15.0 Say vCT3 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+19.0,mCO0+15.0 Say vCA3 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+20.5,mCO0+15.0 Say vMAI Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+11.5,mCO0+64.0 Say vTL1 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 @mFI0+vFI0+11.5,mCO0+99.5 Say vAN1 Font "&mLetAri",9  Style "NQ" Size 1,05 Pict "9999"
 @mFI0+vFI0+13.0,mCO0+64.0 Say vFA1 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 @mFI0+vFI0+14.5,mCO0+64.0 Say vTL2 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 @mFI0+vFI0+14.5,mCO0+99.5 Say vAN2 Font "&mLetAri",9  Style "NQ" Size 1,05 Pict "9999"
 @mFI0+vFI0+16.0,mCO0+64.0 Say vFA2 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 @mFI0+vFI0+17.5,mCO0+64.0 Say vTL3 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 @mFI0+vFI0+17.5,mCO0+99.5 Say vAN3 Font "&mLetAri",9  Style "NQ" Size 1,05 Pict "9999"
 @mFI0+vFI0+19.0,mCO0+64.0 Say vFA3 Font "&mLetAri",9  Style "NQ" Size 1,23 Pict "!!!!!!!!!!!!!!!!"
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Gra_2101b
 = INKEY(0.01)
 DO grAbar WITH "1"
 SEEK vcOd+vsUc
 IF EOF()
      DO nuEvo_rg
      REPLACE f2102cod WITH vcOd
      REPLACE f2102suc WITH vsUc
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
 REPLACE f2102dir WITH vdIr
 REPLACE f2102dis WITH vdIs
 REPLACE f2102ent WITH veNt
 REPLACE f2102die WITH vdIe
 REPLACE f2102ct1 WITH vcT1
 REPLACE f2102ct2 WITH vcT2
 REPLACE f2102ct3 WITH vcT3
 REPLACE f2102ca1 WITH vcA1
 REPLACE f2102ca2 WITH vcA2
 REPLACE f2102ca3 WITH vcA3
 REPLACE f2102tl1 WITH vtL1
 REPLACE f2102tl2 WITH vtL2
 REPLACE f2102tl3 WITH vtL3
 REPLACE f2102an1 WITH vaN1
 REPLACE f2102an2 WITH vaN2
 REPLACE f2102an3 WITH vaN3
 REPLACE f2102fa1 WITH vfA1
 REPLACE f2102fa2 WITH vfA2
 REPLACE f2102fa3 WITH vfA3
 REPLACE f2102mai WITH vmAi
 REPLACE f2102usu WITH muSu
 REPLACE f2102usu WITH mmAq
 REPLACE f2102dat WITH DATE()
 REPLACE f2102tim WITH TIME()
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_2101b
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
 REPLACE f2102cod WITH SPACE(04)
 REPLACE f2102suc WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Clp_2101b
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
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68.0 .AND.  ;
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
      CASE mfIl>=mfI0+vfI0+6.221 .AND. mfIl<=mfI0+vfI0+8.078 .AND. mcCc>= ;
           mcO0+0.9 .AND. mcCc<=mcO0+26.3 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+vfI0+8.485 .AND. mfIl<=mfI0+vfI0+9.65 .AND. mcCc>= ;
           mcO0+0.3 .AND. mcCc<=mcO0+83.3 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+vfI0+8.485 .AND. mfIl<=mfI0+vfI0+9.65 .AND. mcCc>= ;
           mcO0+84.7 .AND. mcCc<=mcO0+114.3 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+vfI0+9.935 .AND. mfIl<=mfI0+vfI0+11.15 .AND. mcCc>= ;
           mcO0+0.3 .AND. mcCc<=mcO0+83.3 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+vfI0+9.935 .AND. mfIl<=mfI0+vfI0+11.15 .AND. mcCc>= ;
           mcO0+84.7 .AND. mcCc<=mcO0+114.3 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+vfI0+12.935 .AND. mfIl<=mfI0+vfI0+14.078 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+vfI0+15.935 .AND. mfIl<=mfI0+vfI0+17.15 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>9
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+vfI0+19.007 .AND. mfIl<=mfI0+vfI0+20.15 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+vfI0+20.435 .AND. mfIl<=mfI0+vfI0+21.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+vfI0+12.935 .AND. mfIl<=mfI0+vfI0+14.078 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>15
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>16
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viTe<>17
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+vfI0+15.935 .AND. mfIl<=mfI0+vfI0+17.15 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>18
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>19
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viTe<>20
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+vfI0+19.007 .AND. mfIl<=mfI0+vfI0+20.15 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viTe<>21
           STORE 21 TO ciTx
      CASE mfIl>=mfI0 .AND. mfIl<=mfI0+1.864 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+35.90
           STORE 01 TO viTe, viT1
      CASE mfIl>=mfI0+2.964 .AND. mfIl<=mfI0+4.178 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+102.2
           STORE 02 TO viTe, viT1
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.678 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+39.2
           STORE 03 TO viTe, viT1
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.678 .AND. mcCc>=mcO0+109.2  ;
           .AND. mcCc<=mcO0+120.8 .AND. vcRe=1
           STORE 04 TO viTe, viT1
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_2101b
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
PROCEDURE Hl1_2101b
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
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+12, 21 SAY ":" STYLE "BT"
 @ pfIl+13, 21 SAY ":" STYLE "BT"
 @ pfIl+14, 21 SAY ":" STYLE "BT"
 @ pfIl+15, 21 SAY ":" STYLE "BT"
 @ pfIl+16, 21 SAY ":" STYLE "BT"
 @ pfIl+17, 21 SAY ":" STYLE "BT"
 @ pfIl+18, 21 SAY ":" STYLE "BT"
 @ pfIl+19, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 03 SAY "ESC" STYLE "BT"
 @ pfIl+09, 03 SAY "F10" STYLE "BT"
 @ pfIl+10, 03 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=01
           @ pfIl+11, 03 SAY "F2" STYLE "BT"
           @ pfIl+12, 03 SAY "F5" STYLE "BT"
           @ pfIl+13, 03 SAY "F6" STYLE "BT"
           @ pfIl+14, 03 SAY "F7" STYLE "BT"
           @ pfIl+15, 03 SAY "F8" STYLE "BT"
           @ pfIl+16, 03 SAY "ENTER" STYLE "BT"
           @ pfIl+17, 03 SAY "CTRL ->" STYLE "BT"
           @ pfIl+18, 03 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+19, 03 SAY "FLECHA ARRIBA" STYLE "BT"
      OTHERWISE
           @ pfIl+20, 21 SAY ":" STYLE "BT"
           @ pfIl+21, 21 SAY ":" STYLE "BT"
           @ pfIl+22, 21 SAY ":" STYLE "BT"
           @ pfIl+23, 21 SAY ":" STYLE "BT"
           @ pfIl+11, 03 SAY "F5" STYLE "BT"
           @ pfIl+12, 03 SAY "F6" STYLE "BT"
           @ pfIl+13, 03 SAY "F7" STYLE "BT"
           @ pfIl+14, 03 SAY "F8" STYLE "BT"
           @ pfIl+15, 03 SAY "ENTER" STYLE "BT"
           @ pfIl+16, 03 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+17, 03 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+18, 03 SAY "CTRL ->" STYLE "BT"
           @ pfIl+19, 03 SAY "<- CTRL" STYLE "BT"
           @ pfIl+20, 03 SAY "CTRL HOME" STYLE "BT"
           @ pfIl+21, 03 SAY "CTRL END" STYLE "BT"
           @ pfIl+22, 03 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+23, 03 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+08, 23 SAY "Regresar a la Cabecera"
           @ pfIl+11, 23 SAY "Consulta de Sucursales x Proveedor"
           @ pfIl+12, 23 SAY "Primer Sucursal del Proveedor"
           @ pfIl+13, 23 SAY "Último Sucursal del Proveedor"
           @ pfIl+14, 23 SAY "Sucursal siguiente"
           @ pfIl+15, 23 SAY "Sucursal anterior"
           @ pfIl+16, 23 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ pfIl+17, 23 SAY "Ir al campo derecho, llegando al final se graba"
           @ pfIl+18, 23 SAY "Ir al campo inferior, llegando al final se graba"
           @ pfIl+19, 23 SAY "Ir al campo superior"
      OTHERWISE
           @ pfIl+08, 23 SAY "Regresar al Código de Sucursal"
           @ pfIl+11, 23 SAY "Primer Sucursal del Proveedor"
           @ pfIl+12, 23 SAY "Último Sucursal del Proveedor"
           @ pfIl+13, 23 SAY "Sucursal siguiente"
           @ pfIl+14, 23 SAY "Sucursal anterior"
           @ pfIl+15, 23 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ pfIl+16, 23 SAY "Ir al campo inferior, llegando al final se graba"
           @ pfIl+17, 23 SAY "Ir al campo superior"
           @ pfIl+18, 23 SAY "Ir al campo derecho, llegando al final se graba"
           @ pfIl+19, 23 SAY "Ir al campo izquierdo"
           @ pfIl+20, 23 SAY "Ir al primer campo"
           @ pfIl+21, 23 SAY "Ir al último campo"
           @ pfIl+22, 23 SAY "Borrar registro"
           @ pfIl+23, 23 SAY "Grabar y pasar al campo de código de Sucursal"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
