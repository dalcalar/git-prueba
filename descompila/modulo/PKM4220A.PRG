 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4220", "K"
 Use &mDBF Shared Alias Horarios
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4220COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "9511", "U"
 Use &mDBF Shared NoUpdate Alias Areas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9511COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_4220a
 DO liM_4220a
 DO ulT_4220a
 STORE SPACE(50) TO vnOm
 STORE SPACE(02) TO vcOd, ccOd
 SELECT arEas
 GOTO TOP
 DO veR_lock
 STORE f9511cod TO vcOd
 STORE f9511des TO vnOm
 SET READBORDER ON
 DO p00_4220a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT hoRarios
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4220a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4220a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT arEas
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "9511", "U", "F9511DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnOm))
                SET NEAR OFF
                DO veR_lock
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9511", "U", "F9511COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f9511cod TO vcOd
                     STORE f9511des TO vnOm
                     DO di2_4220a WITH "1"
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT hoRarios
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4220a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4220a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=vuLt
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<3 .OR. viTe=08 .OR. viTe=14  ;
                .OR. viTe=20 .OR. viTe=26 .OR. viTe=32 .OR. viTe=38)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                DO veR_lock
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4220cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4220a
                          DO diS_4220a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4220cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4220a
                          DO diS_4220a
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ELSE
                     IF vcOd=f4220cod
                          SKIP
                          DO veR_lock
                          IF EOF()
                               GOTO BOTTOM
                               DO veR_lock
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4220cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4220a
                          DO diS_4220a
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4220cod>=vcOd
                     SKIP -1
                     DO veR_lock
                     IF BOF()
                          GOTO TOP
                          DO veR_lock
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4220cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4220a
                          DO diS_4220a
                ENDCASE
           CASE mkEy=k_Enter
                DO veR_4220a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_4220a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=7 .OR. viTe=13
                               STORE 44 TO ciTx
                          CASE viTe=19 .OR. viTe=25
                               STORE 45 TO ciTx
                          CASE (viTe=31 .OR. viTe=37 .OR. viTe=43) .AND.  ;
                               voPt>0 .AND. voPt<4
                               STORE 46 TO ciTx
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy<>99
                                    STORE viTe+1 TO viTe
                               ENDIF
                          ENDDO
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          IF mkEy<>99
                               STORE ciTx TO viTe
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Down
                DO veR_4220a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe>=2 .AND. viTe<=37
                               STORE viTe+6 TO ciTx
                          CASE viTe>=38 .AND. viTe<=43
                               STORE vuLt TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4220a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy<>99
                                    DO grA_4220a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                               STORE 0 TO ciTx
                          CASE viTe=46
                               STORE vuLt TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4220a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy<>99
                                    DO grA_4220a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                               STORE 0 TO ciTx
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4220a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy<>99
                                    STORE viTe+1 TO viTe
                               ENDIF
                          ENDDO
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          IF mkEy<>99
                               STORE ciTx TO viTe
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=44
                          STORE 13 TO viTe
                     CASE viTe=45
                          STORE 19 TO viTe
                     CASE viTe=46 .AND. voPt=1
                          STORE 37 TO viTe
                     CASE viTe=46 .AND. voPt=2
                          STORE 43 TO viTe
                     CASE viTe=46 .AND. voPt=3
                          STORE 43 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=47
                          STORE 45 TO viTe
                     CASE viTe=44
                          STORE 13 TO viTe
                     CASE viTe>=3 .AND. viTe<=7
                          STORE 01 TO viTe
                     CASE viTe<44 .AND. viTe>7
                          STORE viTe-6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE vuLt TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_4220a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab
                STORE vuLt TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_4220a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO grA_4220a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
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
                EXIT
           ENDIF
           STORE viTe TO viT1
           DO msJ_4220a
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                DO coLbln
                DO di3_4220a
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                DO di3_4220a
           OTHERWISE
                DO geT_4220a WITH viTe
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Get_4220a
 PARAMETER piTe
 DO CASE
      CASE piTe=2
           @mFI0+00.5,mCO0+013.1 Get vIN1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=3
           @mFI0+00.5,mCO0+022.0 Get vSA1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=4
           @mFI0+00.5,mCO0+030.8 Get vTO1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=5
           @mFI0+00.5,mCO0+036.3 Get vRS1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=6
           @mFI0+00.5,mCO0+045.1 Get vRI1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=7
           @mFI0+00.5,mCO0+053.9 Get vRF1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=8
           @mFI0+02.5,mCO0+013.1 Get vIN2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=9
           @mFI0+02.5,mCO0+022.0 Get vSA2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=10
           @mFI0+02.5,mCO0+030.8 Get vTO2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=11
           @mFI0+02.5,mCO0+036.3 Get vRS2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=12
           @mFI0+02.5,mCO0+045.1 Get vRI2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=13
           @mFI0+02.5,mCO0+053.9 Get vRF2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=14
           @mFI0+04.5,mCO0+013.1 Get vIN3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=15
           @mFI0+04.5,mCO0+022.0 Get vSA3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=16
           @mFI0+04.5,mCO0+030.8 Get vTO3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=17
           @mFI0+04.5,mCO0+036.3 Get vRS3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=18
           @mFI0+04.5,mCO0+045.1 Get vRI3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=19
           @mFI0+04.5,mCO0+053.9 Get vRF3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=20
           @mFI0+06.5,mCO0+013.1 Get vIN4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=21
           @mFI0+06.5,mCO0+022.0 Get vSA4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=22
           @mFI0+06.5,mCO0+030.8 Get vTO4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=23
           @mFI0+06.5,mCO0+036.3 Get vRS4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=24
           @mFI0+06.5,mCO0+045.1 Get vRI4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=25
           @mFI0+06.5,mCO0+053.9 Get vRF4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=26
           @mFI0+08.5,mCO0+013.1 Get vIN5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=27
           @mFI0+08.5,mCO0+022.0 Get vSA5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=28
           @mFI0+08.5,mCO0+030.8 Get vTO5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=29
           @mFI0+08.5,mCO0+036.3 Get vRS5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=30
           @mFI0+08.5,mCO0+045.1 Get vRI5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=31
           @mFI0+08.5,mCO0+053.9 Get vRF5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=32
           @mFI0+10.5,mCO0+013.1 Get vIN6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=33
           @mFI0+10.5,mCO0+022.0 Get vSA6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=34
           @mFI0+10.5,mCO0+030.8 Get vTO6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=35
           @mFI0+10.5,mCO0+036.3 Get vRS6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=36
           @mFI0+10.5,mCO0+045.1 Get vRI6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=37
           @mFI0+10.5,mCO0+053.9 Get vRF6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=38
           @mFI0+12.5,mCO0+013.1 Get vIN7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=39
           @mFI0+12.5,mCO0+022.0 Get vSA7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=40
           @mFI0+12.5,mCO0+030.8 Get vTO7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=41
           @mFI0+12.5,mCO0+036.3 Get vRS7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=42
           @mFI0+12.5,mCO0+045.1 Get vRI7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
      CASE piTe=43
           @mFI0+12.5,mCO0+053.9 Get vRF7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
      CASE piTe=44
           @vFI0+04.0,vCO0+042.8 Get vHE1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"     Color ,&mColBlN
      CASE piTe=45
           @vFI0+05.5,vCO0+021.6 Get vHE2 Font "&mLetAri",10 Style "NQ" Size 1,7.0 Pict "999.99" Color ,&mColBlN
      CASE piTe=46 .AND. voPt=1
           @vFI0+12.0,vCO0+19.6 Get  vHE3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
      CASE piTe=47 .AND. voPt=1
           @vFI0+12.0,vCO0+38.6 Get  vHE4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
      CASE piTe=46 .AND. voPt=2
           @vFI0+13.5,vCO0+19.6 Get  vHE5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
      CASE piTe=47 .AND. voPt=2
           @vFI0+13.5,vCO0+38.6 Get  vHE6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
      CASE piTe=46 .AND. voPt=3
           @vFI0+15.0,vCO0+19.6 Get  vHE7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
      CASE piTe=47 .AND. voPt=3
           @vFI0+15.0,vCO0+38.6 Get  vHE8 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99" Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE Dis_4220a
 DO di2_4220a WITH "1"
 DO di1_4220a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO exT_4220a
 DO taR_4220a
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Di1_4220a
 DO coLbln
 @mFI0+00.5,mCO0+013.1 Say vIN1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+00.5,mCO0+022.0 Say vSA1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+00.5,mCO0+030.8 Say vTO1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+00.5,mCO0+036.3 Say vRS1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+00.5,mCO0+045.1 Say vRI1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+00.5,mCO0+053.9 Say vRF1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+02.5,mCO0+013.1 Say vIN2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+02.5,mCO0+022.0 Say vSA2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+02.5,mCO0+030.8 Say vTO2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+02.5,mCO0+036.3 Say vRS2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+02.5,mCO0+045.1 Say vRI2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+02.5,mCO0+053.9 Say vRF2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+04.5,mCO0+013.1 Say vIN3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+04.5,mCO0+022.0 Say vSA3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+04.5,mCO0+030.8 Say vTO3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+04.5,mCO0+036.3 Say vRS3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+04.5,mCO0+045.1 Say vRI3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+04.5,mCO0+053.9 Say vRF3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+06.5,mCO0+013.1 Say vIN4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+06.5,mCO0+022.0 Say vSA4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+06.5,mCO0+030.8 Say vTO4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+06.5,mCO0+036.3 Say vRS4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+06.5,mCO0+045.1 Say vRI4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+06.5,mCO0+053.9 Say vRF4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+08.5,mCO0+013.1 Say vIN5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+08.5,mCO0+022.0 Say vSA5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+08.5,mCO0+030.8 Say vTO5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+08.5,mCO0+036.3 Say vRS5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+08.5,mCO0+045.1 Say vRI5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+08.5,mCO0+053.9 Say vRF5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+10.5,mCO0+013.1 Say vIN6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+10.5,mCO0+022.0 Say vSA6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+10.5,mCO0+030.8 Say vTO6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+10.5,mCO0+036.3 Say vRS6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+10.5,mCO0+045.1 Say vRI6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+10.5,mCO0+053.9 Say vRF6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+12.5,mCO0+013.1 Say vIN7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+12.5,mCO0+022.0 Say vSA7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+12.5,mCO0+030.8 Say vTO7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @mFI0+12.5,mCO0+036.3 Say vRS7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+12.5,mCO0+045.1 Say vRI7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
 @mFI0+12.5,mCO0+053.9 Say vRF7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @vFI0+04.0,vCO0+042.8 Say vHE1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 @vFI0+05.5,vCO0+021.6 Say vHE2 Font "&mLetAri",10 Style "NQ" Size 1,7.0 Pict "999.99"
 DO coL_beige
 DO CASE
      CASE voPt=1
           @vFI0+13.5,vCO0+19.6 Say vHE5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+38.6 Say vHE6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+19.6 Say vHE7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+38.6 Say vHE8 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           DO coLbln
           @vFI0+12.0,vCO0+19.6 Say vHE3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.0,vCO0+38.6 Say vHE4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      CASE voPt=2
           @vFI0+12.0,vCO0+19.6 Say vHE3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.0,vCO0+38.6 Say vHE4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+19.6 Say vHE7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+38.6 Say vHE8 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           DO coLbln
           @vFI0+13.5,vCO0+19.6 Say vHE5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+38.6 Say vHE6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      CASE voPt=3
           @vFI0+12.0,vCO0+19.6 Say vHE3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.0,vCO0+38.6 Say vHE4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+19.6 Say vHE5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+38.6 Say vHE6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           DO coLbln
           @vFI0+15.0,vCO0+19.6 Say vHE7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+38.6 Say vHE8 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      CASE voPt=4
           @vFI0+12.0,vCO0+19.6 Say vHE3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.0,vCO0+38.6 Say vHE4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+19.6 Say vHE5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+13.5,vCO0+38.6 Say vHE6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+19.6 Say vHE7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+15.0,vCO0+38.6 Say vHE8 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 ENDCASE
 DO opT_4220a
ENDPROC
*
PROCEDURE Di2_4220a
 PARAMETER ptPp
 DO coL_fondo
 DO CASE
      CASE ptPp="1"
           DO di3_4220a
      CASE ptPp="2"
           @mFI0-6.1,mCO0+10 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,55,50
 ENDCASE
ENDPROC
*
PROCEDURE Di3_4220a
 @mFI0-6.1,mCO0+10 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,55 Pict "@S50"
ENDPROC
*
PROCEDURE Ext_4220a
 @vFI0+0,vCO0+16 Get vEXT Font "&mLetAri",9 Style "NQ" Default vEXT Function "*RVT No Calcula;Calcula siempre;Calcula solo Domingos y Feriados"
ENDPROC
*
PROCEDURE Tar_4220a
 @vFI0+8,vCO0+16 Get vTAR Font "&mLetAri",9 Style "NQ" Default vTAR Function "*RVT No Descuenta;Descuenta solo Entradas;Descuenta Entradas y Refrigerios"
ENDPROC
*
PROCEDURE P00_4220a
 PARAMETER ptPo
 PUBLIC ptAm, ppFi
 DO p01_4220a
 Define Popup vTB1 from vFBI+1.4,mCO0-.6 to mFI0+mUFI+pPFI,vCBI+4 Font "&mLetCou",pTAM Style "NQU" Prompt Field F9511DES Scroll Color Scheme 10 Footer "CONSULTA DE ÁREAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Horarios x Área"
 DO p02_4220a
 DO di2_4220a WITH "2"
 DO coLbln
 @mFI0-6.3,mCO0+0.3 Say "Area" Font "&mLetRom",13 Style "BT"
 READ TIMEOUT 0.01
 RELEASE ptAm, ppFi
ENDPROC
*
PROCEDURE P01_4220a
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE 14 TO muFi
 STORE 120 TO muCo
 DO CASE
      CASE mrEs="2"
           STORE muCo+15 TO muCo
      CASE mrEs="3"
           STORE muCo+20 TO muCo
      CASE mrEs="4"
           STORE muCo+25 TO muCo
      CASE mrEs>="5"
           STORE muCo+30 TO muCo
 ENDCASE
 STORE (mwFi-muFi)/2 TO mfI0, vfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+2 TO mfI0
 STORE vfI0-1.6 TO vfI0
 STORE mcO0-2 TO mcO0
 STORE INT((mcO0+muCo)/2) TO vcO0
 STORE mfI0+muFi+2 TO mmF2
 STORE mfI0-06.2 TO vfBi
 STORE mcO0+65.4 TO vcBi
 STORE vfI0+12.1 TO vfB1
 STORE vfI0+13.6 TO vfB2
 STORE vfI0+15.1 TO vfB3
 STORE vfI0+16.6 TO vfB4
 IF mrEs>"1"
      STORE 13 TO ptAm
      STORE mmF2+1 TO mmF2
      DO CASE
           CASE mrEs="2"
                STORE 8 TO ppFi
                STORE vcO0+18 TO vcO0
                STORE mmC2+6 TO mmC2
           CASE mrEs="3"
                STORE 12 TO ppFi
                STORE vcO0+30 TO vcO0
                STORE mmC2+10 TO mmC2
           CASE mrEs="4"
                STORE 8 TO ppFi
                STORE vcO0+45 TO vcO0
                STORE mmC2+13 TO mmC2
           CASE mrEs>="5"
                STORE 10 TO ppFi
                STORE vcO0+50 TO vcO0
                STORE mmC2+15 TO mmC2
      ENDCASE
 ELSE
      STORE 9 TO ptAm
      STORE 3 TO ppFi
      STORE vcO0+6 TO vcO0
 ENDIF
 STORE vcO0+15 TO vcB1, vcB2, vcB3, vcB4
ENDPROC
*
PROCEDURE P02_4220a
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+0.9, mcO0+muCo+3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO cuAdro WITH vfI0, vcO0, mfI0+muFi, vcO0+58
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0-2.9, mcO0, mfI0+muFi, mcO0+58
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ mfI0-06.5, mcO0-00.6 TO mfI0-4.6, mcO0+70.3 PATTERN 1
 DO coLsc7
 @ mfI0-03.1, mcO0+12.0 TO mfI0, mcO0+58.3 PATTERN 1
 @ mfI0-03.1, mcO0-00.5 TO mfI0+muFi+0.3, mcO0+12.2 PATTERN 1
 DO coLbln
 @ mfI0-01.6, mcO0+12.0 TO mfI0+00, mcO0+58.3
 @ mfI0+02.0, mcO0-00.5 TO mfI0+04, mcO0+58.3
 @ mfI0+06.0, mcO0-00.5 TO mfI0+08, mcO0+58.3
 @ mfI0+10.0, mcO0-00.5 TO mfI0+12, mcO0+58.3
 DO coLblz
 @mFI0-02.9,mCO0+14.6 Say "INGRESO/SALIDA" Font "&mLetAri",9  Style "BT"
 @mFI0-02.9,mCO0+40.3 Say "REFRIGERIO"     Font "&mLetAri",9  Style "BT"
 @mFI0-01.3,mCO0+00.5 Say "DÍA"            Font "&mLetAri",9  Style "BT"
 @mFI0-01.3,mCO0+13.1 Say "Desde"          Font "&mLetAri",9  Style "NT"
 @mFI0-01.3,mCO0+22.0 Say "Hasta"          Font "&mLetAri",9  Style "NT"
 @mFI0-01.3,mCO0+30.8 Say "Tol"            Font "&mLetAri",9  Style "NT"
 @mFI0-01.3,mCO0+36.3 Say "Desde"          Font "&mLetAri",9  Style "NT"
 @mFI0-01.3,mCO0+45.1 Say "Hasta"          Font "&mLetAri",9  Style "NT"
 @mFI0-01.3,mCO0+53.9 Say "Min"            Font "&mLetAri",9  Style "NT"
 @mFI0+00.5,mCO0+00.5 Say "Lunes"          Font "&mLetAri",9  Style "NT"
 @mFI0+02.5,mCO0+00.5 Say "Martes"         Font "&mLetAri",9  Style "NT"
 @mFI0+04.5,mCO0+00.5 Say "Miércoles"      Font "&mLetAri",9  Style "NT"
 @mFI0+06.5,mCO0+00.5 Say "Jueves"         Font "&mLetAri",9  Style "NT"
 @mFI0+08.5,mCO0+00.5 Say "Viernes"        Font "&mLetAri",9  Style "NT"
 @mFI0+10.5,mCO0+00.5 Say "Sabado"         Font "&mLetAri",9  Style "NT"
 @mFI0+12.5,mCO0+00.5 Say "Domingo"        Font "&mLetAri",9  Style "NT"
 @vFI0+00.0,vCO0+000.5 Say "Horas Extras"                                   Font "&mLetAri",9 Style "BT"
 @vFI0+08.0,vCO0+000.5 Say "Tardanzas"                                      Font "&mLetAri",9 Style "BT"
 @vFI0+12.0,vCO0+005.5 Say "Regla:"                                         Font "&mLetAri",9 Style "NT"
 @vFI0+04.0,vCO0+010.5 Say "H.E. se considera a partir de          minutos" Font "&mLetAri",9 Style "NT"
 @vFI0+05.5,vCO0+010.5 Say "H.E. vale                  % de la Hora Normal" Font "&mLetAri",9 Style "NT"
 @vFI0+12.0,vCO0+025.0 Say "tardanza  =            dia(s)"                  Font "&mLetAri",9 Style "NT"
 @vFI0+13.5,vCO0+025.0 Say "tardanza  =            hora(s)"                 Font "&mLetAri",9 Style "NT"
 @vFI0+15.0,vCO0+025.0 Say "tardanza  =            minuto(s)"               Font "&mLetAri",9 Style "NT"
 @vFI0+16.6,vCO0+020.0 Say "tardanza  = tiempo de tardanza"                 Font "&mLetAri",9 Style "NT"
 DO geT_4220a WITH 2
 DO geT_4220a WITH 3
 DO geT_4220a WITH 4
 DO geT_4220a WITH 5
 DO geT_4220a WITH 6
 DO geT_4220a WITH 7
 DO geT_4220a WITH 8
 DO geT_4220a WITH 9
 DO geT_4220a WITH 10
 DO geT_4220a WITH 11
 DO geT_4220a WITH 12
 DO geT_4220a WITH 13
 DO geT_4220a WITH 14
 DO geT_4220a WITH 15
 DO geT_4220a WITH 16
 DO geT_4220a WITH 17
 DO geT_4220a WITH 18
 DO geT_4220a WITH 19
 DO geT_4220a WITH 20
 DO geT_4220a WITH 21
 DO geT_4220a WITH 22
 DO geT_4220a WITH 23
 DO geT_4220a WITH 24
 DO geT_4220a WITH 25
 DO geT_4220a WITH 26
 DO geT_4220a WITH 27
 DO geT_4220a WITH 28
 DO geT_4220a WITH 29
 DO geT_4220a WITH 30
 DO geT_4220a WITH 31
 DO geT_4220a WITH 32
 DO geT_4220a WITH 33
 DO geT_4220a WITH 34
 DO geT_4220a WITH 35
 DO geT_4220a WITH 36
 DO geT_4220a WITH 37
 DO geT_4220a WITH 38
 DO geT_4220a WITH 39
 DO geT_4220a WITH 40
 DO geT_4220a WITH 41
 DO geT_4220a WITH 42
 DO geT_4220a WITH 43
 DO geT_4220a WITH 44
 DO geT_4220a WITH 45
 DO exT_4220a
 DO taR_4220a
 DO daT_4220a
 DO prEsiona WITH "1", "CONSUL", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO opT_4220a
ENDPROC
*
PROCEDURE Ver_4220a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Area no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vcOd<>ccOd
           SELECT hoRarios
           SEEK vcOd
           DO veR_lock
           IF EOF()
                DO coL_beige
                @vFI0+.4,mCO0+mUCO-10 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                DO liM_4220a
           ELSE
                DO muE_4220a
           ENDIF
           DO ulT_4220a
           DO diS_4220a
           STORE vcOd TO ccOd
      OTHERWISE
           DO ve1_4220a
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4220a
 SELECT hoRarios
 DO coL_beige
 IF f4220est="9"
      @vFI0+.4,mCO0+mUCO-10 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      @vFI0+.4,mCO0+mUCO-10 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 STORE f4220cod TO vcOd
 STORE f4220ext TO veXt
 STORE f4220tar TO vtAr
 STORE f4220opt TO voPt
 STORE f4220he1 TO vhE1
 STORE f4220he2 TO vhE2
 STORE f4220he3 TO vhE3
 STORE f4220he4 TO vhE4
 STORE f4220he5 TO vhE5
 STORE f4220he6 TO vhE6
 STORE f4220he7 TO vhE7
 STORE f4220he8 TO vhE8
 STORE f4220in1 TO viN1
 STORE f4220sa1 TO vsA1
 STORE f4220to1 TO vtO1
 STORE f4220rs1 TO vrS1
 STORE f4220ri1 TO vrI1
 STORE f4220rf1 TO vrF1
 STORE f4220in2 TO viN2
 STORE f4220sa2 TO vsA2
 STORE f4220to2 TO vtO2
 STORE f4220rs2 TO vrS2
 STORE f4220ri2 TO vrI2
 STORE f4220rf2 TO vrF2
 STORE f4220in3 TO viN3
 STORE f4220sa3 TO vsA3
 STORE f4220to3 TO vtO3
 STORE f4220rs3 TO vrS3
 STORE f4220ri3 TO vrI3
 STORE f4220rf3 TO vrF3
 STORE f4220in4 TO viN4
 STORE f4220sa4 TO vsA4
 STORE f4220to4 TO vtO4
 STORE f4220rs4 TO vrS4
 STORE f4220ri4 TO vrI4
 STORE f4220rf4 TO vrF4
 STORE f4220in5 TO viN5
 STORE f4220sa5 TO vsA5
 STORE f4220to5 TO vtO5
 STORE f4220rs5 TO vrS5
 STORE f4220ri5 TO vrI5
 STORE f4220rf5 TO vrF5
 STORE f4220in6 TO viN6
 STORE f4220sa6 TO vsA6
 STORE f4220to6 TO vtO6
 STORE f4220rs6 TO vrS6
 STORE f4220ri6 TO vrI6
 STORE f4220rf6 TO vrF6
 STORE f4220in7 TO viN7
 STORE f4220sa7 TO vsA7
 STORE f4220to7 TO vtO7
 STORE f4220rs7 TO vrS7
 STORE f4220ri7 TO vrI7
 STORE f4220rf7 TO vrF7
 SELECT arEas
 SEEK vcOd
 DO veR_lock
 IF EOF()
      STORE SPACE(50) TO vnOm
 ELSE
      STORE f9511des TO vnOm
 ENDIF
 SELECT hoRarios
ENDPROC
*
PROCEDURE Gra_4220a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT hoRarios
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f4220cod WITH vcOd
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f4220ext WITH veXt
 REPLACE f4220tar WITH vtAr
 REPLACE f4220opt WITH voPt
 REPLACE f4220he1 WITH vhE1
 REPLACE f4220he2 WITH vhE2
 REPLACE f4220he3 WITH vhE3
 REPLACE f4220he4 WITH vhE4
 REPLACE f4220he5 WITH vhE5
 REPLACE f4220he6 WITH vhE6
 REPLACE f4220he7 WITH vhE7
 REPLACE f4220he8 WITH vhE8
 REPLACE f4220in1 WITH viN1
 REPLACE f4220sa1 WITH vsA1
 REPLACE f4220to1 WITH vtO1
 REPLACE f4220rs1 WITH vrS1
 REPLACE f4220ri1 WITH vrI1
 REPLACE f4220rf1 WITH vrF1
 REPLACE f4220in2 WITH viN2
 REPLACE f4220sa2 WITH vsA2
 REPLACE f4220to2 WITH vtO2
 REPLACE f4220rs2 WITH vrS2
 REPLACE f4220ri2 WITH vrI2
 REPLACE f4220rf2 WITH vrF2
 REPLACE f4220in3 WITH viN3
 REPLACE f4220sa3 WITH vsA3
 REPLACE f4220to3 WITH vtO3
 REPLACE f4220rs3 WITH vrS3
 REPLACE f4220ri3 WITH vrI3
 REPLACE f4220rf3 WITH vrF3
 REPLACE f4220in4 WITH viN4
 REPLACE f4220sa4 WITH vsA4
 REPLACE f4220to4 WITH vtO4
 REPLACE f4220rs4 WITH vrS4
 REPLACE f4220ri4 WITH vrI4
 REPLACE f4220rf4 WITH vrF4
 REPLACE f4220in5 WITH viN5
 REPLACE f4220sa5 WITH vsA5
 REPLACE f4220to5 WITH vtO5
 REPLACE f4220rs5 WITH vrS5
 REPLACE f4220ri5 WITH vrI5
 REPLACE f4220rf5 WITH vrF5
 REPLACE f4220in6 WITH viN6
 REPLACE f4220sa6 WITH vsA6
 REPLACE f4220to6 WITH vtO6
 REPLACE f4220rs6 WITH vrS6
 REPLACE f4220ri6 WITH vrI6
 REPLACE f4220rf6 WITH vrF6
 REPLACE f4220in7 WITH viN7
 REPLACE f4220sa7 WITH vsA7
 REPLACE f4220to7 WITH vtO7
 REPLACE f4220rs7 WITH vrS7
 REPLACE f4220ri7 WITH vrI7
 REPLACE f4220rf7 WITH vrF7
 REPLACE f4220est WITH "1"
 REPLACE f4220usu WITH muSu
 REPLACE f4220dat WITH DATE()
 REPLACE f4220tim WITH TIME()
 UNLOCK
 FLUSH
 WAIT CLEAR
 STORE 1 TO viTe, viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4220a
 SELECT hoRarios
 SEEK vcOd
 IF EOF()
      STORE "Horario de Área no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f4220cod WITH SPACE(04)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Msj_4220a
 DO coL_fondo
 @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
 DO CASE
      CASE viTe=1
           @mMF2,mMC2+42 Say "ESCOGER DE LA LISTA..."                                Font "&mLetRom",9 Style "BQ"
      CASE viTe=2 .OR. viTe=3 .OR. viTe=5 .OR. viTe=6 .OR. viTe=8 .OR.  ;
           viTe=9 .OR. viTe=11 .OR. viTe=12 .OR. viTe=14 .OR. viTe=15  ;
           .OR. viTe=17 .OR. viTe=18 .OR. viTe=20 .OR. viTe=21 .OR. viTe= ;
           23 .OR. viTe=24 .OR. viTe=26 .OR. viTe=27 .OR. viTe=29 .OR.  ;
           viTe=30 .OR. viTe=32 .OR. viTe=33 .OR. viTe=35 .OR. viTe=36  ;
           .OR. viTe=38 .OR. viTe=39 .OR. viTe=41 .OR. viTe=42
           @mMF2,mMC2+39 Say "CAMPO DE HORAS : MINUTOS..."                           Font "&mLetRom",9 Style "BQ"
      CASE viTe=4 .OR. viTe=10 .OR. viTe=16 .OR. viTe=22 .OR. viTe=28  ;
           .OR. viTe=34 .OR. viTe=40
           @mMF2,mMC2+44 Say "TOLERANCIA EN MINUTOS..."                              Font "&mLetRom",9 Style "BQ"
      CASE viTe=7 .OR. viTe=13 .OR. viTe=19 .OR. viTe=25 .OR. viTe=31  ;
           .OR. viTe=37 .OR. viTe=43
           @mMF2,mMC2+44 Say "MINUTOS DE REFRIGERIO..."                              Font "&mLetRom",9 Style "BQ"
      CASE viTe=44
           @mMF2,mMC2+43 Say "CAMPO DE 0 A 99 MINUTOS..."                            Font "&mLetRom",9 Style "BQ"
      CASE viTe=45
           @mMF2,mMC2+29 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, ES UN PORCENTAJE..." Font "&mLetRom",9 Style "BQ"
      CASE viTe=46 .OR. viTe=47
           @mMF2,mMC2+39 Say "CAMPO DE 2 DÍGITOS PUEDE SER CERO..."                  Font "&mLetRom",9 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE Var_4220a
 PUBLIC viTe, viT1, ciTx, viOm, vfBi, vfB1, vfB2, vfB3, vfB4, vcBi, vcB1,  ;
        vcB2, vcB3
 PUBLIC vcB4, vtB1, viN1, viN2, viN3, viN4, viN5, viN6, viN7, vsA1, vsA2,  ;
        vsA3, vsA4
 PUBLIC vsA5, vsA6, vsA7, vtO1, vtO2, vtO3, vtO4, vtO5, vtO6, vtO7, vrI1,  ;
        vrI2, vrI3
 PUBLIC vrI4, vrI5, vrI6, vrI7, vrS1, vrS2, vrS3, vrS4, vrS5, vrS6, vrS7,  ;
        vrF1, vrF2
 PUBLIC vrF3, vrF4, vrF5, vrF6, vrF7, veXt, vtAr, vhE1, vhE2, vhE3, vhE4,  ;
        vhE5, vhE6
 PUBLIC vhE7, vhE8, voPt, vdAt, vuLt, vfI0, vcO0, vcOd, ccOd, vnOm
 PUBLIC vpAn_11
 STORE 00 TO viT1
 STORE 01 TO viTe
 STORE 99 TO mkEy
 STORE SPACE(05) TO vdAt
ENDPROC
*
PROCEDURE Lim_4220a
 STORE SPACE(05) TO viN1, viN2, viN3, viN4, viN5, viN6, viN7
 STORE SPACE(05) TO vsA1, vsA2, vsA3, vsA4, vsA5, vsA6, vsA7
 STORE SPACE(05) TO vrI1, vrI2, vrI3, vrI4, vrI5, vrI6, vrI7
 STORE SPACE(05) TO vrS1, vrS2, vrS3, vrS4, vrS5, vrS6, vrS7
 STORE 00 TO vtO1, vtO2, vtO3, vtO4, vtO5, vtO6, vtO7
 STORE 00 TO vrF1, vrF2, vrF3, vrF4, vrF5, vrF6, vrF7
 STORE 00 TO vhE1, vhE2, vhE3, vhE4, vhE5, vhE6, vhE7, vhE8, voPt
 STORE 01 TO veXt, vtAr
ENDPROC
*
PROCEDURE Ult_4220a
 DO CASE
      CASE voPt=0 .OR. voPt=4
           STORE 45 TO vuLt
      OTHERWISE
           STORE 47 TO vuLt
 ENDCASE
ENDPROC
*
PROCEDURE Ve1_4220a
 DO CASE
      CASE viTe=2 .AND. (LEN(ALLTRIM(viN1))=0 .OR. ALLTRIM(viN1)=":")
      CASE viTe=2 .AND. LEN(ALLTRIM(viN1))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=3 .AND. (LEN(ALLTRIM(vsA1))=0 .OR. ALLTRIM(vsA1)=":")
      CASE viTe=3 .AND. LEN(ALLTRIM(vsA1))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=3 .AND. ALLTRIM(viN1)>ALLTRIM(vsA1)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=4 .AND. vtO1<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(vrS1))>1 .AND. LEN(ALLTRIM(vrS1))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(vrI1))>1 .AND. LEN(ALLTRIM(vrI1))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=6 .AND. (LEN(ALLTRIM(vrS1))=0 .OR. ALLTRIM(vrS1)=":")  ;
           .AND. (LEN(ALLTRIM(vrI1))=0 .OR. ALLTRIM(vrI1)=":")
      CASE viTe=6 .AND. ((LEN(ALLTRIM(vrS1))=0 .OR. ALLTRIM(vrS1)=":")  ;
           .OR. (LEN(ALLTRIM(vrI1))=0 .OR. ALLTRIM(vrI1)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=6 .AND. ALLTRIM(vrS1)>ALLTRIM(vrI1)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=8 .AND. (LEN(ALLTRIM(viN2))=0 .OR. ALLTRIM(viN2)=":")
      CASE viTe=8 .AND. LEN(ALLTRIM(viN2))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=9 .AND. (LEN(ALLTRIM(vsA2))=0 .OR. ALLTRIM(vsA2)=":")
      CASE viTe=9 .AND. LEN(ALLTRIM(vsA2))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=9 .AND. ALLTRIM(viN2)>ALLTRIM(vsA2)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=10 .AND. vtO2<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=11 .AND. LEN(ALLTRIM(vrS2))>1 .AND. LEN(ALLTRIM(vrS2))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=12 .AND. LEN(ALLTRIM(vrI2))>1 .AND. LEN(ALLTRIM(vrI2))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=12 .AND. (LEN(ALLTRIM(vrS2))=0 .OR. ALLTRIM(vrS2)=":")  ;
           .AND. (LEN(ALLTRIM(vrI2))=0 .OR. ALLTRIM(vrI2)=":")
      CASE viTe=12 .AND. ((LEN(ALLTRIM(vrS2))=0 .OR. ALLTRIM(vrS2)=":")  ;
           .OR. (LEN(ALLTRIM(vrI2))=0 .OR. ALLTRIM(vrI2)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=12 .AND. ALLTRIM(vrS2)>ALLTRIM(vrI2)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=14 .AND. (LEN(ALLTRIM(viN3))=0 .OR. ALLTRIM(viN3)=":")
      CASE viTe=14 .AND. LEN(ALLTRIM(viN3))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=15 .AND. (LEN(ALLTRIM(vsA3))=0 .OR. ALLTRIM(vsA3)=":")
      CASE viTe=15 .AND. LEN(ALLTRIM(vsA3))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=15 .AND. ALLTRIM(viN3)>ALLTRIM(vsA3)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=16 .AND. vtO3<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=17 .AND. LEN(ALLTRIM(vrS3))>1 .AND. LEN(ALLTRIM(vrS3))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=18 .AND. LEN(ALLTRIM(vrI3))>1 .AND. LEN(ALLTRIM(vrI3))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=18 .AND. (LEN(ALLTRIM(vrS3))=0 .OR. ALLTRIM(vrS3)=":")  ;
           .AND. (LEN(ALLTRIM(vrI3))=0 .OR. ALLTRIM(vrI3)=":")
      CASE viTe=18 .AND. ((LEN(ALLTRIM(vrS3))=0 .OR. ALLTRIM(vrS3)=":")  ;
           .OR. (LEN(ALLTRIM(vrI3))=0 .OR. ALLTRIM(vrI3)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=18 .AND. ALLTRIM(vrS3)>ALLTRIM(vrI3)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=20 .AND. (LEN(ALLTRIM(viN4))=0 .OR. ALLTRIM(viN4)=":")
      CASE viTe=20 .AND. LEN(ALLTRIM(viN4))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=21 .AND. (LEN(ALLTRIM(vsA4))=0 .OR. ALLTRIM(vsA4)=":")
      CASE viTe=21 .AND. LEN(ALLTRIM(vsA4))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=21 .AND. ALLTRIM(viN4)>ALLTRIM(vsA4)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=22 .AND. vtO4<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=23 .AND. LEN(ALLTRIM(vrS4))>1 .AND. LEN(ALLTRIM(vrS4))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=24 .AND. LEN(ALLTRIM(vrI4))>1 .AND. LEN(ALLTRIM(vrI4))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=24 .AND. (LEN(ALLTRIM(vrS4))=0 .OR. ALLTRIM(vrS4)=":")  ;
           .AND. (LEN(ALLTRIM(vrI4))=0 .OR. ALLTRIM(vrI4)=":")
      CASE viTe=24 .AND. ((LEN(ALLTRIM(vrS4))=0 .OR. ALLTRIM(vrS4)=":")  ;
           .OR. (LEN(ALLTRIM(vrI4))=0 .OR. ALLTRIM(vrI4)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=24 .AND. ALLTRIM(vrS4)>ALLTRIM(vrI4)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=26 .AND. (LEN(ALLTRIM(viN5))=0 .OR. ALLTRIM(viN5)=":")
      CASE viTe=26 .AND. LEN(ALLTRIM(viN5))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=27 .AND. (LEN(ALLTRIM(vsA5))=0 .OR. ALLTRIM(vsA5)=":")
      CASE viTe=27 .AND. LEN(ALLTRIM(vsA5))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=27 .AND. ALLTRIM(viN5)>ALLTRIM(vsA5)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=28 .AND. vtO5<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=29 .AND. LEN(ALLTRIM(vrS5))>1 .AND. LEN(ALLTRIM(vrS5))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=30 .AND. LEN(ALLTRIM(vrI5))>1 .AND. LEN(ALLTRIM(vrI5))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=30 .AND. (LEN(ALLTRIM(vrS5))=0 .OR. ALLTRIM(vrS5)=":")  ;
           .AND. (LEN(ALLTRIM(vrI5))=0 .OR. ALLTRIM(vrI5)=":")
      CASE viTe=30 .AND. ((LEN(ALLTRIM(vrS5))=0 .OR. ALLTRIM(vrS5)=":")  ;
           .OR. (LEN(ALLTRIM(vrI5))=0 .OR. ALLTRIM(vrI5)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=30 .AND. ALLTRIM(vrS5)>ALLTRIM(vrI5)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=32 .AND. (LEN(ALLTRIM(viN6))=0 .OR. ALLTRIM(viN6)=":")
      CASE viTe=32 .AND. LEN(ALLTRIM(viN6))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=33 .AND. (LEN(ALLTRIM(vsA6))=0 .OR. ALLTRIM(vsA6)=":")
      CASE viTe=33 .AND. LEN(ALLTRIM(vsA6))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=33 .AND. ALLTRIM(viN6)>ALLTRIM(vsA6)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=34 .AND. vtO6<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=35 .AND. LEN(ALLTRIM(vrS6))>1 .AND. LEN(ALLTRIM(vrS6))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=36 .AND. LEN(ALLTRIM(vrI6))>1 .AND. LEN(ALLTRIM(vrI6))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=36 .AND. (LEN(ALLTRIM(vrS6))=0 .OR. ALLTRIM(vrS6)=":")  ;
           .AND. (LEN(ALLTRIM(vrI6))=0 .OR. ALLTRIM(vrI6)=":")
      CASE viTe=36 .AND. ((LEN(ALLTRIM(vrS6))=0 .OR. ALLTRIM(vrS6)=":")  ;
           .OR. (LEN(ALLTRIM(vrI6))=0 .OR. ALLTRIM(vrI6)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=36 .AND. ALLTRIM(vrS6)>ALLTRIM(vrI6)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=38 .AND. (LEN(ALLTRIM(viN7))=0 .OR. ALLTRIM(viN7)=":")
      CASE viTe=38 .AND. LEN(ALLTRIM(viN7))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=39 .AND. (LEN(ALLTRIM(vsA7))=0 .OR. ALLTRIM(vsA7)=":")
      CASE viTe=39 .AND. LEN(ALLTRIM(vsA7))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=39 .AND. ALLTRIM(viN7)>ALLTRIM(vsA7)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
      CASE viTe=40 .AND. vtO7<0
           STORE "Los minutos de Tolerancia son de 0 a 99..." TO mmSj
      CASE viTe=41 .AND. LEN(ALLTRIM(vrS7))>1 .AND. LEN(ALLTRIM(vrS7))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=42 .AND. LEN(ALLTRIM(vrI7))>1 .AND. LEN(ALLTRIM(vrI7))<5
           STORE "Este dato está incompleto..." TO mmSj
      CASE viTe=42 .AND. (LEN(ALLTRIM(vrS7))=0 .OR. ALLTRIM(vrS7)=":")  ;
           .AND. (LEN(ALLTRIM(vrI7))=0 .OR. ALLTRIM(vrI7)=":")
      CASE viTe=42 .AND. ((LEN(ALLTRIM(vrS7))=0 .OR. ALLTRIM(vrS7)=":")  ;
           .OR. (LEN(ALLTRIM(vrI7))=0 .OR. ALLTRIM(vrI7)=":"))
           STORE "Se llenan los 2 rangos para refrigerio, no puede ser sólo uno..."  ;
                 TO mmSj
      CASE viTe=42 .AND. ALLTRIM(vrS7)>ALLTRIM(vrI7)
           STORE "Rango Inicial no puede ser mayor que rango final..." TO mmSj
 ENDCASE
ENDPROC
*
PROCEDURE Opt_4220a
 DO prEsiona WITH "1", "NO", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "NO", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPt=1
           DO prEsiona WITH "1", "SI", vfB1, vcB1
      CASE voPt=2
           DO prEsiona WITH "1", "SI", vfB2, vcB2
      CASE voPt=3
           DO prEsiona WITH "1", "SI", vfB3, vcB3
      CASE voPt=4
           DO prEsiona WITH "1", "SI", vfB4, vcB4
 ENDCASE
ENDPROC
*
PROCEDURE Dat_4220a
 DO coL_beige
 DO CASE
      CASE voPt=1
           @vFI0+13.5,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+13.5,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
      CASE voPt=2
           @vFI0+12.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+12.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
      CASE voPt=3
           @vFI0+12.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+12.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+13.5,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+13.5,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
      CASE voPt=4 .OR. voPt=0
           @vFI0+12.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+12.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+13.5,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+13.5,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+19.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
           @vFI0+15.0,vCO0+38.6 Edit vDAT Font "&mLetAri",10 Style "NQ" Size 1,3.0
 ENDCASE
 IF voPt>=1 .AND. voPt<=3
      DO geT_4220a WITH 46
      DO geT_4220a WITH 47
 ENDIF
ENDPROC
*
PROCEDURE Clp_4220a
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
           mcCc<=mmC1+41.8
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi-0.028 .AND. mfIl<=vfBi+1.185 .AND. mcCc>=vcBi-0.2  ;
           .AND. mcCc<=vcBi+3.8
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1 .AND. mfIl<=vfB1+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB1 .AND. mcCc<=vcB1+2.4 .AND. vtAr>1 .AND. voPt<>1
           STORE 1 TO voPt
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB2 .AND. mfIl<=vfB2+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB2 .AND. mcCc<=vcB2+2.4 .AND. vtAr>1 .AND. voPt<>2
           STORE 2 TO voPt
           STORE 0 TO vhE3, vhE4, vhE7, vhE8
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB3 .AND. mfIl<=vfB3+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB3 .AND. mcCc<=vcB3+2.4 .AND. vtAr>1 .AND. voPt<>3
           STORE 3 TO voPt
           STORE 0 TO vhE3, vhE4, vhE5, vhE6
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB4 .AND. mfIl<=vfB4+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB4 .AND. mcCc<=vcB4+2.4 .AND. vtAr>1 .AND. voPt<>4
           IF viTe>45
                STORE 45 TO viTe
           ENDIF
           STORE 4 TO voPt
           STORE 0 TO vhE3, vhE4, vhE5, vhE6, vhE7, vhE8
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+0.028 .AND. mfIl<=vfI0+1.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+31.8 .AND. veXt<>1
           STORE 1 TO veXt
           DO exT_4220a
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+1.028 .AND. mfIl<=vfI0+2.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+38.2 .AND. veXt<>2
           STORE 2 TO veXt
           DO exT_4220a
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+2.028 .AND. mfIl<=vfI0+3.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+57.4 .AND. veXt<>3
           STORE 3 TO veXt
           DO exT_4220a
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+8.028 .AND. mfIl<=vfI0+9.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>1
           STORE 1 TO vtAr
           STORE 0 TO voPt, vhE3, vhE4, vhE5, vhE6, vhE7, vhE8
           DO taR_4220a
           READ TIMEOUT 0.01
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+9.028 .AND. mfIl<=vfI0+10.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>2
           STORE 1 TO voPt
           STORE 2 TO vtAr
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO taR_4220a
           READ TIMEOUT 0.01
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+10.028 .AND. mfIl<=vfI0+11.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>3
           STORE 1 TO voPt
           STORE 3 TO vtAr
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO taR_4220a
           READ TIMEOUT 0.01
           DO ulT_4220a
           DO daT_4220a
           DO opT_4220a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-6.143 .AND. mfIl<=mfI0-4.928 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0 .AND. mcCc<=mcO0+65
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>12 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>13 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>14 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>15 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>16 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>17 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>18 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>19 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>20 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>21 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 21 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>22 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 22 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>23 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 23 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>24 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 24 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>25 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 25 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>26 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 26 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>27 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 27 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>28 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 28 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>29 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 29 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>30 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 30 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>31 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 31 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>32 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 32 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>33 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 33 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>34 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 34 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>35 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 35 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>36 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 36 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>37 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 37 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>38 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 38 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>39 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 39 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>40 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 40 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>41 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 41 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>42 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 42 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>43 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 43 TO ciTx
      CASE mfIl>=vfI0+3.957 .AND. mfIl<=vfI0+5.171 .AND. viTe<>44 .AND.  ;
           mcCc>=vcO0+42.40 .AND. mcCc<=vcO0+46.40
           STORE 44 TO ciTx
      CASE mfIl>=vfI0+5.457 .AND. mfIl<=vfI0+6.742 .AND. viTe<>45 .AND.  ;
           mcCc>=vcO0+21.2 .AND. mcCc<=vcO0+30.4
           STORE 45 TO ciTx
      CASE mfIl>=vfI0+12.028 .AND. mfIl<=vfI0+13.242 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=1
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+12.028 .AND. mfIl<=vfI0+13.242 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=1
           STORE 47 TO ciTx
      CASE mfIl>=vfI0+13.457 .AND. mfIl<=vfI0+14.742 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=2
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+13.457 .AND. mfIl<=vfI0+14.742 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=2
           STORE 47 TO ciTx
      CASE mfIl>=vfI0+14.957 .AND. mfIl<=vfI0+16.242 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=3
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+14.957 .AND. mfIl<=vfI0+16.242 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=3
           STORE 47 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_4220a
           IF mkEy=k_Esc
                EXIT
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
PROCEDURE Hl1_4220a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En este programa, se ingresaran los Horarios x Área de Trabajo. Este"
 @ pfIl+01, 02 SAY  ;
   "Horario y sus reglas se aplican en las Asistencias a los Trabajadores"
 @ pfIl+02, 02 SAY "comprendidos en el Área correspondiente."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "ESC" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F2" STYLE "BT"
 @ pfIl+10, 11 SAY "CTRL ->, TAB," STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ABAJO," STYLE "BT"
 @ pfIl+12, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Regresar al Menú Principal"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Consulta de Areas registradas"
 @ pfIl+10, 31 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, viOm, vfBi, vfB1, vfB2, vfB3, vfB4, vcBi, vcB1,  ;
         vcB2, vcB3
 RELEASE vcB4, vtB1, viN1, viN2, viN3, viN4, viN5, viN6, viN7, vsA1, vsA2,  ;
         vsA3, vsA4
 RELEASE vsA5, vsA6, vsA7, vtO1, vtO2, vtO3, vtO4, vtO5, vtO6, vtO7, vrI1,  ;
         vrI2, vrI3
 RELEASE vrI4, vrI5, vrI6, vrI7, vrS1, vrS2, vrS3, vrS4, vrS5, vrS6, vrS7,  ;
         vrF1, vrF2
 RELEASE vrF3, vrF4, vrF5, vrF6, vrF7, veXt, vtAr, vhE1, vhE2, vhE3, vhE4,  ;
         vhE5, vhE6
 RELEASE vhE7, vhE8, voPt, vdAt, vuLt, vfI0, vcO0, vcOd, ccOd, vnOm
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
