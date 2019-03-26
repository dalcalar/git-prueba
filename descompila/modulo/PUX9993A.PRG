 PUBLIC afIl, x, ntM1
 SET CENTURY ON
 STORE 01 TO meRr
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[4, 4]
 STORE 1 TO x
 afIl[x, 1] = "TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC_01"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC_02"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON tdO+seR+doC_01 TAG doC_01
 INDEX ON tdO+seR+doC_02 TAG doC_02
 CLOSE DATABASES
 CLOSE INDEXES
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-1"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Det_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-2"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1302", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Ite_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-3"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Ser_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-4"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Con_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-5"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-6"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F2990DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Kardex_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-7"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F2991DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Cargos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-8"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Det_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-9"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share Alias Det_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT "Borrando Temporal-10"
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))<>0
      DO WHILE .T.
           GOTO BOTTOM
           IF EOF() .OR. BOF()
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. LEN(ALLTRIM(doC))=0
                EXIT
           ENDIF
           REPLACE doC WITH " "
      ENDDO
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO DOC_01
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 WAIT CLEAR
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, vtDo, vsEr, vdOc, cdOc, vnUm
 PUBLIC vtDo_01, vtDo_02, vtDo_03, vtDo_04, vtDo_05, vtDo_06, vtDo_07, vtDo_08
 PUBLIC vtDo_09, vtDo_10, vtDo_11, vtDo_12, vtDo_13, vtDo_14, vtDo_15, vsEr_01
 PUBLIC vsEr_02, vsEr_03, vsEr_04, vsEr_05, vsEr_06, vsEr_07, vsEr_08, vsEr_09
 PUBLIC vsEr_10, vsEr_11, vsEr_12, vsEr_13, vsEr_14, vsEr_15, vdOc_01, vdOc_02
 PUBLIC vdOc_03, vdOc_04, vdOc_05, vdOc_06, vdOc_07, vdOc_08, vdOc_09, vdOc_10
 PUBLIC vdOc_11, vdOc_12, vdOc_13, vdOc_14, vdOc_15, vdO1_01, vdO1_02, vdO1_03
 PUBLIC vdO1_04, vdO1_05, vdO1_06, vdO1_07, vdO1_08, vdO1_09, vdO1_10, vdO1_11
 PUBLIC vdO1_12, vdO1_13, vdO1_14, vdO1_15
 PUBLIC vpAn_11
 STORE SPACE(02) TO vtDo_01, vtDo_04, vtDo_07, vtDo_10, vtDo_13
 STORE SPACE(02) TO vtDo_02, vtDo_05, vtDo_08, vtDo_11, vtDo_14
 STORE SPACE(02) TO vtDo_03, vtDo_06, vtDo_09, vtDo_12, vtDo_15
 STORE SPACE(03) TO vsEr_01, vsEr_04, vsEr_07, vsEr_10, vsEr_13
 STORE SPACE(03) TO vsEr_02, vsEr_05, vsEr_08, vsEr_11, vsEr_14
 STORE SPACE(03) TO vsEr_03, vsEr_06, vsEr_09, vsEr_12, vsEr_15
 STORE SPACE(07) TO vdOc_01, vdOc_04, vdOc_07, vdOc_10, vdOc_13
 STORE SPACE(07) TO vdOc_02, vdOc_05, vdOc_08, vdOc_11, vdOc_14
 STORE SPACE(07) TO vdOc_03, vdOc_06, vdOc_09, vdOc_12, vdOc_15
 STORE SPACE(07) TO vdO1_01, vdO1_04, vdO1_07, vdO1_10, vdO1_13
 STORE SPACE(07) TO vdO1_02, vdO1_05, vdO1_08, vdO1_11, vdO1_14
 STORE SPACE(07) TO vdO1_03, vdO1_06, vdO1_09, vdO1_12, vdO1_15
 STORE 01 TO viTe
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9993a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9993a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9993a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9993a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9993a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=60
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=01 .OR. viTe=5 .OR. viTe=9  ;
                .OR. viTe=13 .OR. viTe=17 .OR. viTe=21 .OR. viTe=25 .OR.  ;
                viTe=29 .OR. viTe=33 .OR. viTe=37 .OR. viTe=41 .OR. viTe= ;
                45 .OR. viTe=49 .OR. viTe=53 .OR. viTe=57)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<5
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_9993a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=60
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_9993a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=60
                               STORE 99 TO mkEy
                          CASE viTe>=57
                               STORE 60 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_9993a
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
                          CASE viTe<57
                               STORE viTe+4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_9993a
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
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-4 TO viTe
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 60 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_9993a
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
                STORE 60 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_9993a
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
                     SAVE SCREEN TO vpAn_11
                     DO caM_9993a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+02.0,mCO0+001.0 Get vTDO_01 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=2
                @mFI0+02.0,mCO0+006.5 Get vSER_01 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=3
                @mFI0+02.0,mCO0+012.7 Get vDOC_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=4
                @mFI0+02.0,mCO0+030.7 Get vDO1_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=5
                @mFI0+03.5,mCO0+001.0 Get vTDO_02 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=6
                @mFI0+03.5,mCO0+006.5 Get vSER_02 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=7
                @mFI0+03.5,mCO0+012.7 Get vDOC_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=8
                @mFI0+03.5,mCO0+030.7 Get vDO1_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=9
                @mFI0+05.0,mCO0+001.0 Get vTDO_03 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=10
                @mFI0+05.0,mCO0+006.5 Get vSER_03 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=11
                @mFI0+05.0,mCO0+012.7 Get vDOC_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=12
                @mFI0+05.0,mCO0+030.7 Get vDO1_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=13
                @mFI0+06.5,mCO0+001.0 Get vTDO_04 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=14
                @mFI0+06.5,mCO0+006.5 Get vSER_04 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=15
                @mFI0+06.5,mCO0+012.7 Get vDOC_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=16
                @mFI0+06.5,mCO0+030.7 Get vDO1_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=17
                @mFI0+08.0,mCO0+001.0 Get vTDO_05 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=18
                @mFI0+08.0,mCO0+006.5 Get vSER_05 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=19
                @mFI0+08.0,mCO0+012.7 Get vDOC_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=20
                @mFI0+08.0,mCO0+030.7 Get vDO1_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=21
                @mFI0+09.5,mCO0+001.0 Get vTDO_06 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=22
                @mFI0+09.5,mCO0+006.5 Get vSER_06 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=23
                @mFI0+09.5,mCO0+012.7 Get vDOC_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=24
                @mFI0+09.5,mCO0+030.7 Get vDO1_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=25
                @mFI0+11.0,mCO0+001.0 Get vTDO_07 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=26
                @mFI0+11.0,mCO0+006.5 Get vSER_07 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=27
                @mFI0+11.0,mCO0+012.7 Get vDOC_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=28
                @mFI0+11.0,mCO0+030.7 Get vDO1_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=29
                @mFI0+12.5,mCO0+001.0 Get vTDO_08 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=30
                @mFI0+12.5,mCO0+006.5 Get vSER_08 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=31
                @mFI0+12.5,mCO0+012.7 Get vDOC_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=32
                @mFI0+12.5,mCO0+030.7 Get vDO1_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=33
                @mFI0+14.0,mCO0+001.0 Get vTDO_09 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=34
                @mFI0+14.0,mCO0+006.5 Get vSER_09 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=35
                @mFI0+14.0,mCO0+012.7 Get vDOC_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=36
                @mFI0+14.0,mCO0+030.7 Get vDO1_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=37
                @mFI0+15.5,mCO0+001.0 Get vTDO_10 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=38
                @mFI0+15.5,mCO0+006.5 Get vSER_10 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=39
                @mFI0+15.5,mCO0+012.7 Get vDOC_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=40
                @mFI0+15.5,mCO0+030.7 Get vDO1_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=41
                @mFI0+17.0,mCO0+001.0 Get vTDO_11 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=42
                @mFI0+17.0,mCO0+006.5 Get vSER_11 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=43
                @mFI0+17.0,mCO0+012.7 Get vDOC_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=44
                @mFI0+17.0,mCO0+030.7 Get vDO1_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=45
                @mFI0+18.5,mCO0+001.0 Get vTDO_12 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=46
                @mFI0+18.5,mCO0+006.5 Get vSER_12 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=47
                @mFI0+18.5,mCO0+012.7 Get vDOC_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=48
                @mFI0+18.5,mCO0+030.7 Get vDO1_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=49
                @mFI0+20.0,mCO0+001.0 Get vTDO_13 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=50
                @mFI0+20.0,mCO0+006.5 Get vSER_13 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=51
                @mFI0+20.0,mCO0+012.7 Get vDOC_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=52
                @mFI0+20.0,mCO0+030.7 Get vDO1_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=53
                @mFI0+21.5,mCO0+001.0 Get vTDO_14 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=54
                @mFI0+21.5,mCO0+006.5 Get vSER_14 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=55
                @mFI0+21.5,mCO0+012.7 Get vDOC_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=56
                @mFI0+21.5,mCO0+030.7 Get vDO1_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=57
                @mFI0+23.0,mCO0+001.0 Get vTDO_15 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
           CASE viTe=58
                @mFI0+23.0,mCO0+006.5 Get vSER_15 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
           CASE viTe=59
                @mFI0+23.0,mCO0+012.7 Get vDOC_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
           CASE viTe=60
                @mFI0+23.0,mCO0+030.7 Get vDO1_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9993a
 STORE SPACE(100) TO mmSj
 DO doC_9993a WITH viTe
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Doc_9993a
 PARAMETER piTe
 PRIVATE dtDo, dsEr, ddOc, hdOc
 DO CASE
      CASE piTe>=01 .OR. piTe<=4
           STORE vtDo_01 TO dtDo
           STORE vsEr_01 TO dsEr
           STORE vdOc_01 TO ddOc
           STORE vdO1_01 TO hdOc
      CASE piTe>=5 .OR. piTe<=8
           STORE vtDo_02 TO dtDo
           STORE vsEr_02 TO dsEr
           STORE vdOc_02 TO ddOc
           STORE vdO1_02 TO hdOc
      CASE piTe>=9 .OR. piTe<=12
           STORE vtDo_03 TO dtDo
           STORE vsEr_03 TO dsEr
           STORE vdOc_03 TO ddOc
           STORE vdO1_03 TO hdOc
      CASE piTe>=13 .OR. piTe<=16
           STORE vtDo_04 TO dtDo
           STORE vsEr_04 TO dsEr
           STORE vdOc_04 TO ddOc
           STORE vdO1_04 TO hdOc
      CASE piTe>=17 .OR. piTe<=20
           STORE vtDo_05 TO dtDo
           STORE vsEr_05 TO dsEr
           STORE vdOc_05 TO ddOc
           STORE vdO1_05 TO hdOc
      CASE piTe>=21 .OR. piTe<=24
           STORE vtDo_06 TO dtDo
           STORE vsEr_06 TO dsEr
           STORE vdOc_06 TO ddOc
           STORE vdO1_06 TO hdOc
      CASE piTe>=25 .OR. piTe<=28
           STORE vtDo_07 TO dtDo
           STORE vsEr_07 TO dsEr
           STORE vdOc_07 TO ddOc
           STORE vdO1_07 TO hdOc
      CASE piTe>=29 .OR. piTe<=32
           STORE vtDo_08 TO dtDo
           STORE vsEr_08 TO dsEr
           STORE vdOc_08 TO ddOc
           STORE vdO1_08 TO hdOc
      CASE piTe>=33 .OR. piTe<=36
           STORE vtDo_09 TO dtDo
           STORE vsEr_09 TO dsEr
           STORE vdOc_09 TO ddOc
           STORE vdO1_09 TO hdOc
      CASE piTe>=37 .OR. piTe<=40
           STORE vtDo_10 TO dtDo
           STORE vsEr_10 TO dsEr
           STORE vdOc_10 TO ddOc
           STORE vdO1_10 TO hdOc
      CASE piTe>=41 .OR. piTe<=44
           STORE vtDo_11 TO dtDo
           STORE vsEr_11 TO dsEr
           STORE vdOc_11 TO ddOc
           STORE vdO1_11 TO hdOc
      CASE piTe>=45 .OR. piTe<=48
           STORE vtDo_12 TO dtDo
           STORE vsEr_12 TO dsEr
           STORE vdOc_12 TO ddOc
           STORE vdO1_12 TO hdOc
      CASE piTe>=49 .OR. piTe<=52
           STORE vtDo_13 TO dtDo
           STORE vsEr_13 TO dsEr
           STORE vdOc_13 TO ddOc
           STORE vdO1_13 TO hdOc
      CASE piTe>=53 .OR. piTe<=56
           STORE vtDo_14 TO dtDo
           STORE vsEr_14 TO dsEr
           STORE vdOc_14 TO ddOc
           STORE vdO1_14 TO hdOc
      CASE piTe>=57 .OR. piTe<=60
           STORE vtDo_15 TO dtDo
           STORE vsEr_15 TO dsEr
           STORE vdOc_15 TO ddOc
           STORE vdO1_15 TO hdOc
 ENDCASE
 DO CASE
      CASE LEN(ALLTRIM(dtDo))>0 .AND. dtDo<>"FA" .AND. dtDo<>"BO" .AND.  ;
           dtDo<>"NP" .AND. dtDo<>"CO"
           STORE "Tipo de Documento no Válido..." TO mmSj
      CASE LEN(ALLTRIM(dsEr))<>0 .AND. LEN(ALLTRIM(dsEr))<>3
           STORE "Serie de Documento es de 3 dígitos..." TO mmSj
      CASE LEN(ALLTRIM(dsEr))=3 .AND. LEN(ALLTRIM(dtDo))=0
           STORE "Serie no se puede llenar sin el Tipo de Documento..." TO mmSj
      CASE LEN(ALLTRIM(ddOc))<>0 .AND. LEN(ALLTRIM(ddOc))<>7
           STORE "Número de Documento es de 7 dígitos..." TO mmSj
      CASE LEN(ALLTRIM(ddOc))=7 .AND. (LEN(ALLTRIM(dtDo))=0 .OR.  ;
           LEN(ALLTRIM(dsEr))=0)
           STORE "Número no se puede llenar sin el Tipo o Serie de Documento..."  ;
                 TO mmSj
      CASE LEN(ALLTRIM(hdOc))<>0 .AND. LEN(ALLTRIM(hdOc))<>7 .AND.  ;
           LEN(ALLTRIM(ddOc))<>7
           STORE "Número de Documento es de 7 dígitos..." TO mmSj
      CASE hdOc=ddOc .AND. LEN(ALLTRIM(ddOc))<>0
           STORE "Rango Inicial no puede ser igual al final..." TO mmSj
      CASE LEN(ALLTRIM(ddOc))<>0
           SELECT caB_fact
           DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK dtDo+dsEr+ddOc
           IF EOF()
                STORE "Número de Documento NO REGISTRADO..." TO mmSj
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Pan_9993a
 DO coLbln
 @mFI0+02.0,mCO0+001.0 Say vTDO_01 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+02.0,mCO0+006.5 Say vSER_01 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+02.0,mCO0+012.7 Say vDOC_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+02.0,mCO0+030.7 Say vDO1_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+03.5,mCO0+001.0 Say vTDO_02 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+03.5,mCO0+006.5 Say vSER_02 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+03.5,mCO0+012.7 Say vDOC_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+03.5,mCO0+030.7 Say vDO1_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+05.0,mCO0+001.0 Say vTDO_03 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+05.0,mCO0+006.5 Say vSER_03 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+05.0,mCO0+012.7 Say vDOC_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+05.0,mCO0+030.7 Say vDO1_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+06.5,mCO0+001.0 Say vTDO_04 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+06.5,mCO0+006.5 Say vSER_04 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+06.5,mCO0+012.7 Say vDOC_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+06.5,mCO0+030.7 Say vDO1_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+08.0,mCO0+001.0 Say vTDO_05 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+08.0,mCO0+006.5 Say vSER_05 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+08.0,mCO0+012.7 Say vDOC_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+08.0,mCO0+030.7 Say vDO1_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+09.5,mCO0+001.0 Say vTDO_06 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+09.5,mCO0+006.5 Say vSER_06 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+09.5,mCO0+012.7 Say vDOC_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+09.5,mCO0+030.7 Say vDO1_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+11.0,mCO0+001.0 Say vTDO_07 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+11.0,mCO0+006.5 Say vSER_07 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+11.0,mCO0+012.7 Say vDOC_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+11.0,mCO0+030.7 Say vDO1_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+12.5,mCO0+001.0 Say vTDO_08 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+12.5,mCO0+006.5 Say vSER_08 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+12.5,mCO0+012.7 Say vDOC_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+12.5,mCO0+030.7 Say vDO1_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+14.0,mCO0+001.0 Say vTDO_09 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+14.0,mCO0+006.5 Say vSER_09 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+14.0,mCO0+012.7 Say vDOC_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+14.0,mCO0+030.7 Say vDO1_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+15.5,mCO0+001.0 Say vTDO_10 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+15.5,mCO0+006.5 Say vSER_10 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+15.5,mCO0+012.7 Say vDOC_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+15.5,mCO0+030.7 Say vDO1_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+17.0,mCO0+001.0 Say vTDO_11 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+17.0,mCO0+006.5 Say vSER_11 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+17.0,mCO0+012.7 Say vDOC_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+17.0,mCO0+030.7 Say vDO1_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+18.5,mCO0+001.0 Say vTDO_12 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+18.5,mCO0+006.5 Say vSER_12 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+18.5,mCO0+012.7 Say vDOC_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+18.5,mCO0+030.7 Say vDO1_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+20.0,mCO0+001.0 Say vTDO_13 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+20.0,mCO0+006.5 Say vSER_13 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+20.0,mCO0+012.7 Say vDOC_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+20.0,mCO0+030.7 Say vDO1_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+21.5,mCO0+001.0 Say vTDO_14 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+21.5,mCO0+006.5 Say vSER_14 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+21.5,mCO0+012.7 Say vDOC_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+21.5,mCO0+030.7 Say vDO1_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+23.0,mCO0+001.0 Say vTDO_15 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+23.0,mCO0+006.5 Say vSER_15 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+23.0,mCO0+012.7 Say vDOC_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+23.0,mCO0+030.7 Say vDO1_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
ENDPROC
*
PROCEDURE P00_9993a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 24 TO muFi
 STORE 70 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Cambio de Numeración x Documentos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+0.7, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fonro
 @mFI0,mCO0+01.0 Say "Doc.Antig" Font "&mLetAri",10 Style "BQ"
 @mFI0,mCO0+30.7 Say "Doc.Nuevo" Font "&mLetAri",10 Style "BQ"
 DO coL_fondo
 @ mfI0+01.5, mcO0 TO mfI0+1.5, mcO0+muCo
 @mFI0+02.0,mCO0+01.0 Get vTDO_01 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+02.0,mCO0+06.5 Get vSER_01 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+02.0,mCO0+12.7 Get vDOC_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+02.0,mCO0+30.7 Get vDO1_01 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+03.5,mCO0+01.0 Get vTDO_02 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+03.5,mCO0+06.5 Get vSER_02 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+03.5,mCO0+12.7 Get vDOC_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+03.5,mCO0+30.7 Get vDO1_02 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+05.0,mCO0+01.0 Get vTDO_03 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+05.0,mCO0+06.5 Get vSER_03 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+05.0,mCO0+12.7 Get vDOC_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+05.0,mCO0+30.7 Get vDO1_03 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+06.5,mCO0+01.0 Get vTDO_04 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+06.5,mCO0+06.5 Get vSER_04 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+06.5,mCO0+12.7 Get vDOC_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+06.5,mCO0+30.7 Get vDO1_04 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+08.0,mCO0+01.0 Get vTDO_05 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+08.0,mCO0+06.5 Get vSER_05 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+08.0,mCO0+12.7 Get vDOC_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+08.0,mCO0+30.7 Get vDO1_05 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+09.5,mCO0+01.0 Get vTDO_06 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+09.5,mCO0+06.5 Get vSER_06 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+09.5,mCO0+12.7 Get vDOC_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+09.5,mCO0+30.7 Get vDO1_06 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+11.0,mCO0+01.0 Get vTDO_07 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+11.0,mCO0+06.5 Get vSER_07 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+11.0,mCO0+12.7 Get vDOC_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+11.0,mCO0+30.7 Get vDO1_07 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+12.5,mCO0+01.0 Get vTDO_08 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+12.5,mCO0+06.5 Get vSER_08 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+12.5,mCO0+12.7 Get vDOC_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+12.5,mCO0+30.7 Get vDO1_08 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+14.0,mCO0+01.0 Get vTDO_09 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+14.0,mCO0+06.5 Get vSER_09 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+14.0,mCO0+12.7 Get vDOC_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+14.0,mCO0+30.7 Get vDO1_09 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+15.5,mCO0+01.0 Get vTDO_10 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+15.5,mCO0+06.5 Get vSER_10 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+15.5,mCO0+12.7 Get vDOC_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+15.5,mCO0+30.7 Get vDO1_10 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+17.0,mCO0+01.0 Get vTDO_11 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+17.0,mCO0+06.5 Get vSER_11 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+17.0,mCO0+12.7 Get vDOC_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+17.0,mCO0+30.7 Get vDO1_11 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+18.5,mCO0+01.0 Get vTDO_12 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+18.5,mCO0+06.5 Get vSER_12 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+18.5,mCO0+12.7 Get vDOC_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+18.5,mCO0+30.7 Get vDO1_12 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+20.0,mCO0+01.0 Get vTDO_13 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+20.0,mCO0+06.5 Get vSER_13 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+20.0,mCO0+12.7 Get vDOC_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+20.0,mCO0+30.7 Get vDO1_13 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+21.5,mCO0+01.0 Get vTDO_14 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+21.5,mCO0+06.5 Get vSER_14 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+21.5,mCO0+12.7 Get vDOC_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+21.5,mCO0+30.7 Get vDO1_14 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+23.0,mCO0+01.0 Get vTDO_15 Font "&mLetAri",9 Style "NQ" Size 1,03.6 Pict "!!"              Color ,&mColBlN
 @mFI0+23.0,mCO0+06.5 Get vSER_15 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"             Color ,&mColBlN
 @mFI0+23.0,mCO0+12.7 Get vDOC_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 @mFI0+23.0,mCO0+30.7 Get vDO1_15 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"         Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Pro_9993a
 IF LEN(ALLTRIM(vtDo))=0
      RETURN
 ENDIF
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento:"+vtDo+"-"+vsEr+"-"+vdOc+" no registrado..." TO mmSj
      DO poNmsj
      = INKEY(1)
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT teMporal
 SET ORDER TO DOC_01
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "Documento:"+vtDo+"-"+vsEr+"-"+vdOc+" repetido..." TO mmSj
      DO poNmsj
      = INKEY(1)
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SET ORDER TO DOC_02
 SEEK vtDo+vsEr+cdOc
 IF  .NOT. EOF()
      STORE "Documento:"+vtDo+"-"+vsEr+"-"+cdOc+" repetido..." TO mmSj
      DO poNmsj
      = INKEY(1)
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 APPEND BLANK
 REPLACE tdO WITH vtDo
 REPLACE seR WITH vsEr
 REPLACE doC_01 WITH vdOc
 REPLACE doC_02 WITH cdOc
ENDPROC
*
PROCEDURE Cam_9993a
 SELECT 1
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO orD_0000a WITH "1302", "V", "F1302DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO orD_0000a WITH "1303", "V", "F1303DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO orD_0000a WITH "1304", "V", "F1304DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO orD_0000a WITH "2990", "A", "F2990DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO orD_0000a WITH "2991", "A", "F2991DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 DO orD_0000a WITH "3511", "C", "F3511DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 DO orD_0000a WITH "3531", "C", "F3531DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 ZAP
 DO coL_fonro
 @ mfI0+2, mcO0+41 CLEAR TO mfI0+24, mcO0+muCo-11
 @mFI0+2,mCO0+43 Say "Línea 1..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_01 TO vtDo
 STORE vsEr_01 TO vsEr
 STORE vdOc_01 TO vdOc
 STORE vdO1_01 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+3.5,mCO0+43 Say "Línea 2..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_02 TO vtDo
 STORE vsEr_02 TO vsEr
 STORE vdOc_02 TO vdOc
 STORE vdO1_02 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+5,mCO0+43 Say "Línea 3..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_03 TO vtDo
 STORE vsEr_03 TO vsEr
 STORE vdOc_03 TO vdOc
 STORE vdO1_03 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+6.5,mCO0+43 Say "Línea 4..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_04 TO vtDo
 STORE vsEr_04 TO vsEr
 STORE vdOc_04 TO vdOc
 STORE vdO1_04 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+8,mCO0+43 Say "Línea 5..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_05 TO vtDo
 STORE vsEr_05 TO vsEr
 STORE vdOc_05 TO vdOc
 STORE vdO1_05 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+9.5,mCO0+43 Say "Línea 6..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_06 TO vtDo
 STORE vsEr_06 TO vsEr
 STORE vdOc_06 TO vdOc
 STORE vdO1_06 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+11,mCO0+43 Say "Línea 7..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_07 TO vtDo
 STORE vsEr_07 TO vsEr
 STORE vdOc_07 TO vdOc
 STORE vdO1_07 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+12.5,mCO0+43 Say "Línea 8..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_08 TO vtDo
 STORE vsEr_08 TO vsEr
 STORE vdOc_08 TO vdOc
 STORE vdO1_08 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+14,mCO0+43 Say "Línea 9..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_09 TO vtDo
 STORE vsEr_09 TO vsEr
 STORE vdOc_09 TO vdOc
 STORE vdO1_09 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+15.5,mCO0+43 Say "Línea 10..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_10 TO vtDo
 STORE vsEr_10 TO vsEr
 STORE vdOc_10 TO vdOc
 STORE vdO1_10 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+43 Say "Línea 11..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_11 TO vtDo
 STORE vsEr_11 TO vsEr
 STORE vdOc_11 TO vdOc
 STORE vdO1_11 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+18.5,mCO0+43 Say "Línea 12..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_12 TO vtDo
 STORE vsEr_12 TO vsEr
 STORE vdOc_12 TO vdOc
 STORE vdO1_12 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+20,mCO0+43 Say "Línea 13..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_13 TO vtDo
 STORE vsEr_13 TO vsEr
 STORE vdOc_13 TO vdOc
 STORE vdO1_13 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+21.5,mCO0+43 Say "Línea 14..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_14 TO vtDo
 STORE vsEr_14 TO vsEr
 STORE vdOc_14 TO vdOc
 STORE vdO1_14 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+23,mCO0+43 Say "Línea 15..." Font "&mLetRom",12 Style "BT"
 STORE vtDo_15 TO vtDo
 STORE vsEr_15 TO vsEr
 STORE vdOc_15 TO vdOc
 STORE vdO1_15 TO cdOc
 DO prO_9993a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+25,mCO0+18 Say "Verificando..." Font "&mLetRom",12 Style "BT"
 SET ORDER TO DOC_01
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE tdO TO vtDo
      STORE seR TO vsEr
      STORE doC_02 TO vdOc
      STORE RECNO() TO vnUm
      SET ORDER TO DOC_02
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           SELECT caB_fact
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                STORE "Error Documento:"+vtDo+"-"+vsEr+"-"+vdOc+ ;
                      " ya existen..." TO mmSj
                DO poNmsj
                STORE k_Esc TO mkEy
                = INKEY(1)
                EXIT
           ENDIF
           SELECT teMporal
      ENDIF
      SET ORDER TO DOC_01
      GOTO vnUm
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO DOC_02
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE tdO TO vtDo
      STORE seR TO vsEr
      STORE doC_01 TO vdOc
      STORE RECNO() TO vnUm
      SET ORDER TO DOC_01
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Error Documento:"+vtDo+"-"+vsEr+"-"+vdOc+ ;
                 " no existen..." TO mmSj
           DO poNmsj
           STORE k_Esc TO mkEy
           = INKEY(1)
           EXIT
      ENDIF
      SET ORDER TO DOC_02
      GOTO vnUm
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 SET ORDER TO DOC_01
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE tdO TO vtDo
      STORE seR TO vsEr
      STORE doC_01 TO vdOc
      STORE doC_02 TO cdOc
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      REPLACE doC WITH cdOc
      SELECT caRgos
      SEEK vtDo+vsEr+vdOc
      REPLACE doC WITH cdOc
      SELECT deT_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           STORE f1301cod TO vcOd
           REPLACE doC WITH cdOc
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SELECT kaRdex_2
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"+f2991tdo+ ;
              f2991ser+f2991doc=ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                REPLACE doC WITH cdOc
                SKIP
           ENDDO
           SELECT deT_fact
           SKIP
      ENDDO
      SELECT deT_caja
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SKIP
      ENDDO
      SELECT deT_bancos
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SKIP
      ENDDO
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SKIP
      ENDDO
      SELECT seR_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc=vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SKIP
      ENDDO
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+vsEr+vdOc
           REPLACE doC WITH cdOc
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT itE_fact
 DO orD_0000a WITH "1302", "V", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_fact
 DO orD_0000a WITH "1303", "V", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_fact
 DO orD_0000a WITH "1304", "V", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex
 DO orD_0000a WITH "2990", "A", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex_2
 DO orD_0000a WITH "2991", "A", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caRgos
 DO orD_0000a WITH "3500", "C", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_caja
 DO orD_0000a WITH "3511", "C", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_bancos
 DO orD_0000a WITH "3531", "C", "DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 SET ORDER TO DOC_02
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE tdO TO vtDo
      STORE seR TO vsEr
      STORE doC_02 TO vdOc
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      REPLACE f1300doc WITH vdOc
      SELECT caRgos
      SEEK vtDo+vsEr+vdOc
      REPLACE f3500doc WITH vdOc
      SELECT deT_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+doC=vtDo+vsEr+vdOc
           STORE f1301cod TO vcOd
           REPLACE f1301doc WITH vdOc
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           REPLACE f2990doc WITH vdOc
           SELECT kaRdex_2
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"+f2991tdo+ ;
              f2991ser+doC=ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                REPLACE f2991doc WITH vdOc
                SKIP
           ENDDO
           SELECT deT_fact
           SKIP
      ENDDO
      SELECT deT_caja
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+doC=vtDo+vsEr+vdOc
           REPLACE f3511doc WITH vdOc
           SKIP
      ENDDO
      SELECT deT_bancos
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+doC=vtDo+vsEr+vdOc
           REPLACE f3531doc WITH vdOc
           SKIP
      ENDDO
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+doC=vtDo+vsEr+vdOc
           REPLACE f1302doc WITH vdOc
           SKIP
      ENDDO
      SELECT seR_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+doC=vtDo+vsEr+vdOc
           REPLACE f1303doc WITH vdOc
           SKIP
      ENDDO
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+doC=vtDo+vsEr+vdOc
           REPLACE f1304doc WITH vdOc
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 @mFI0+25,mCO0+1 Say "* * * * * Presionar una tecla para continuar * * * * *" Font "&mLetRom",14 Style "BT" Color 4+
 mkEy = INKEY(0)
 STORE 1 TO viTe
ENDPROC
*
PROCEDURE Clp_9993a
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
PROCEDURE Hl1_9993a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa cambia un Documento x otro, primero se hace la verifi-"
 @ pfIl+01, 02 SAY  ;
   "cacion y luego se realiza el proceso. Para esto no debe haber nadie "
 @ pfIl+02, 02 SAY "usando el sistema."
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
 @ pfIl+06, 03 SAY "ESC" STYLE "BT"
 @ pfIl+07, 03 SAY "F10" STYLE "BT"
 @ pfIl+08, 03 SAY "F1" STYLE "BT"
 @ pfIl+09, 03 SAY "ENTER,CTRL ->," STYLE "BT"
 @ pfIl+10, 03 SAY "CTRL <-" STYLE "BT"
 @ pfIl+11, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 03 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 03 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+14, 03 SAY "CTRL END" STYLE "BT"
 @ pfIl+15, 03 SAY "TAB" STYLE "BT"
 @ pfIl+06, 24 SAY "Regresar al Menú Principal"
 @ pfIl+07, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 24 SAY "Ayuda del Programa"
 @ pfIl+09, 24 SAY "Pasar al siguiente campo"
 @ pfIl+10, 24 SAY "Campo anterior"
 @ pfIl+11, 24 SAY "Pasar al campo inferior"
 @ pfIl+12, 24 SAY "Pasar al campo superior"
 @ pfIl+13, 24 SAY "Primer Campo"
 @ pfIl+14, 24 SAY "Último Campo"
 @ pfIl+15, 24 SAY "Iniciar Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, vtDo, vsEr, vdOc, cdOc
 RELEASE vtDo_01, vtDo_02, vtDo_03, vtDo_04, vtDo_05, vtDo_06, vtDo_07, vtDo_08
 RELEASE vtDo_09, vtDo_10, vtDo_11, vtDo_12, vtDo_13, vtDo_14, vtDo_15, vsEr_01
 RELEASE vsEr_02, vsEr_03, vsEr_04, vsEr_05, vsEr_06, vsEr_07, vsEr_08, vsEr_09
 RELEASE vsEr_10, vsEr_11, vsEr_12, vsEr_13, vsEr_14, vsEr_15, vdOc_01, vdOc_02
 RELEASE vdOc_03, vdOc_04, vdOc_05, vdOc_06, vdOc_07, vdOc_08, vdOc_09, vdOc_10
 RELEASE vdOc_11, vdOc_12, vdOc_13, vdOc_14, vdOc_15, vdO1_01, vdO1_02, vdO1_03
 RELEASE vdO1_04, vdO1_05, vdO1_06, vdO1_07, vdO1_08, vdO1_09, vdO1_10, vdO1_11
 RELEASE vdO1_12, vdO1_13, vdO1_14, vdO1_15
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
