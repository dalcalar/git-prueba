 SET CENTURY ON
 STORE 1 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 Use &mDBF Shared Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9312", "U"
 Use &mDBF Shared NoUpdate Alias Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9312BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9313", "U"
 Use &mDBF Shared NoUpdate Alias Cuentas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9313CTA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9318", "U"
 Use &mDBF Shared NoUpdate Alias CCostos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9318CCO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9510", "U"
 Use &mDBF Shared NoUpdate Alias Cargos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9510COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Cargos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Areas vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9512", "U"
 Use &mDBF Shared NoUpdate Alias Salud
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9512SAL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Salud (IPSS) vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9513", "U"
 Use &mDBF Shared NoUpdate Alias Pension
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9513PEN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Pensión (IPSS) vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9514", "U"
 Use &mDBF Shared NoUpdate Alias IPSS_Vida
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9514IPS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de IPSS Vida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9515", "U"
 Use &mDBF Shared NoUpdate Alias AFP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9515AFP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo de AFP vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7,  ;
        vfB8, vfB9
 PUBLIC vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg, vfBh, vfBj, vfBk,  ;
        vcBi, vcB1
 PUBLIC vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb,  ;
        vcBc, vcBd
 PUBLIC vcBe, vcBf, vcBg, vcBh, vcBj, vcBk, vtB1, vtB2, vtB3, vtB4, vtB5,  ;
        vtB6, vtB7
 PUBLIC vtB8, vtB9, vtB0, vtBa, vcOd, vaPp, vaPm, vnOm, vdIr, vdIs, vnDi,  ;
        vdPt, vnDp
 PUBLIC vtEl, veLe, vmIl, vrUc, vcAr, vcIv, vsEx, vsSo, vaFp, vnAf, vsPp,  ;
        vfNa, vlNa
 PUBLIC vnAc, vbAn, vnBa, vcTa, vnCt, vsAl, vnSa, vpEn, vnPe, viPs, vnIp,  ;
        vrE4, vcCo
 PUBLIC vnCc, vcRg, vnCa, vaRe, vnAr, vgRu, vfOt, cfOt, veSt, vcLa, ccLa,  ;
        vcLv, vnUm
 PUBLIC vlLn, vcLl, vcL1, vcL2, vc11, vc12
 PUBLIC vpAn_11
 STORE 99 TO mkEy
 STORE 00 TO viT1, vcAr
 STORE 02 TO vrE4, vcLv
 STORE 01 TO viTe, vcIv, vsEx
 STORE SPACE(04) TO vcOd
 STORE SPACE(07) TO vtEl
 STORE SPACE(10) TO vmIl
 STORE SPACE(11) TO vrUc
 STORE SPACE(30) TO vnOm
 STORE SPACE(70) TO vdIr
 STORE SPACE(15) TO vsSo, vsPp
 STORE SPACE(01) TO vsAl, vpEn, viPs, veSt
 STORE SPACE(08) TO veLe, vfOt, cfOt, vgRu, vcLa
 STORE SPACE(25) TO vaPp, vaPm, vnDi, vnDp, vlNa, vnAc
 STORE SPACE(02) TO vaFp, vbAn, vcCo, vcTa, vdIs, vdPt, vcRg, vaRe
 STORE SPACE(50) TO vnAf, vnSa, vnPe, vnIp, vnCc, vnBa, vnCt, vnCa, vnAr
 STORE CTOD("  /  /    ") TO vfNa
 SELECT trAbajadores
 SET READBORDER ON
 DO p00_4200a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4200a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Trabajadores registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                DO orD_0000a WITH "4200", "K", "F4200NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "4200", "K", "F4200COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f4200cod TO vcOd
                     DO itE_4200a WITH 1, "2"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4200a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4200a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=15
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=1 .OR. viTe=5)
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<5 .OR. (viTe>=6 .AND. viTe<=10))
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc="S"
                               DO deL_4200a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO CASE
                               CASE f4200est="1"
                                    DO prE_docum WITH  ;
                                       "¿Desea anular este Registro?"
                               CASE f4200est="9"
                                    DO prE_docum WITH  ;
                                       "¿Desea activar este Registro?"
                          ENDCASE
                          IF moPc="S"
                               DO anU_4200a
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
                     CASE f4200cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4200a
                          DO diS_4200a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4200cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4200a
                          DO diS_4200a
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
                     IF f4200cod=vcOd
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
                     CASE f4200cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4200a
                          DO diS_4200a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4200cod>=vcOd
                     SKIP -1
                     DO veR_lock
                     IF BOF() .OR. EOF()
                          GOTO TOP
                          DO veR_lock
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4200cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4200a
                          DO diS_4200a
                ENDCASE
           CASE mkEy=k_F9 .AND. viTe>1
                STORE 01 TO vcLv
                DO daT_4200a WITH "D"
                READ TIMEOUT 0.01
                DO clA_4200a
           CASE viTe=15 .AND. (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy= ;
                k_Ctrl_right .OR. mkEy=k_Tab)
                DO veR_4200a
                IF mkEy<>99
                     DO grA_4200a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO viTe, viT1
                     STORE 99 TO mkEy
                ENDIF
           CASE mkEy=k_Enter
                DO veR_4200a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_4200a
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=2
                               STORE 05 TO ciTx
                          CASE viTe=6
                               STORE 13 TO ciTx
                          CASE viTe=7
                               STORE 14 TO ciTx
                          CASE viTe=8
                               STORE 15 TO ciTx
                          CASE viTe=10
                               STORE 12 TO ciTx
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4200a
                               IF mkEy<>99
                                    STORE viTe+1 TO viTe
                               ENDIF
                          ENDDO
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Down
                DO veR_4200a
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=4
                               STORE 6 TO ciTx
                          CASE viTe=5
                               STORE 13 TO ciTx
                          CASE viTe=10
                               STORE 15 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4200a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO grA_4200a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 01 TO viTe, viT1
                               ENDIF
                               STORE 00 TO ciTx
                               STORE 99 TO mkEy
                          CASE viTe=12
                               STORE 15 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4200a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO grA_4200a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 01 TO viTe, viT1
                               ENDIF
                               STORE 00 TO ciTx
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4200a
                               IF mkEy<>99
                                    STORE viTe+1 TO viTe
                               ENDIF
                          ENDDO
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=6
                          STORE 4 TO viTe
                     CASE viTe=11
                          STORE 4 TO viTe
                     CASE viTe=13
                          STORE 5 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 00 TO viT1
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=5
                          STORE 2 TO viTe
                     CASE viTe=11
                          STORE 8 TO viTe
                     CASE viTe=12
                          STORE 10 TO viTe
                     CASE viTe=13
                          STORE 6 TO viTe
                     CASE viTe=14
                          STORE 7 TO viTe
                     CASE viTe=15
                          STORE 11 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 00 TO viT1
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_end
                STORE 15 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_4200a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                STORE 00 TO viT1
                STORE 99 TO mkEy
           CASE mkEy=k_Tab
                STORE 15 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_4200a
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
                     DO grA_4200a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 1 TO viTe
                ENDIF
                STORE 00 TO viT1
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO veR_lock
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
           IF viTe<>1
                DO prEsiona WITH "1", "PONFOT", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vaFp))<>0
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vcRg))<>0
                     DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vaRe))<>0
                     DO prEsiona WITH "1", "DESCAR", vfB8, vcB8
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfB8, vcB8
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vsAl))<>0
                     DO prEsiona WITH "1", "DESCAR", vfB0, vcB0
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBa, vcBa
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vpEn))<>0
                     DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(viPs))<>0
                     DO prEsiona WITH "1", "DESCAR", vfBd, vcBd
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBe, vcBe
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vbAn))<>0
                     DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBg, vcBg
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vcTa))<>0
                     DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBj, vcBj
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vcCo))<>0
                     DO prEsiona WITH "1", "DESCAR", vfBk, vcBk
                ELSE
                     DO prEsiona WITH "3", "DESCAR", vfBk, vcBk
                ENDIF
           ELSE
                DO prEsiona WITH "3", "PONFOT", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfB8, vcB8
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB9, vcB9
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfBa, vcBa
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfBc, vcBc
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfBe, vcBe
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfBg, vcBg
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfBj, vcBj
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "DESCAR", vfBk, vcBk
           ENDIF
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(123) Font "&mLetRom",9 Style "BQ" Size 1,122.5
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2    Say "EL CÓDIGO ES DE 4 CARACTERES ALFANUMÉRICOS, NO PUEDE SER 0000, NI TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+9  Say "EL APELLIDO PATERNO ES DE 25 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+9  Say "EL APELLIDO MATERNO ES DE 25 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE viTe=04
                     @mMF2,mMC2+13 Say "LOS NOMBRES SON DE 30 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=05
                     @mMF2,mMC2+14 Say "LA DIRECCIÓN ES DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=06
                     @mMF2,mMC2+20 Say "EL TELÉFONO ES DE 7 DÍGITOS, SI NO SE USA DEBE ESTAR VACÍO..."                              Font "&mLetRom",9 Style "BQ"
                CASE viTe=07
                     @mMF2,mMC2+19 Say "EL DNI O L.E. ES DE 8 DÍGITOS, SI NO SE USA DEBE ESTAR VACÍO..."                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=08
                     @mMF2,mMC2+3  Say "LA LIBRETA MILITAR ES DE 15 CARACTERES ALFANUMÉRICOS, SI NO SE USA DEBE ESTAR VACÍO..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=09
                     @mMF2,mMC2+22 Say "EL RUC ES DE 11 DÍGITOS, SI NO SE USA DEBE ESTAR VACÍO..."                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=10
                     @mMF2,mMC2+24 Say "LAS CARGAS FAMILIARES SON EL NÚMERO DE HIJOS..."                                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=11
                     @mMF2,mMC2+12 Say "DIGITAR EL NÚMERO DEL SEGURO SOCIAL, ES DE 15 CARACTERES ALFANUMÉRICOS..."                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=12
                     @mMF2,mMC2+07 Say "SI ESCOGE AFP, ESTE NÚMERO DEBE ESTAR LLENO, ES DE 15 CARACTERES ALFANUMÉRICOS..."          Font "&mLetRom",9 Style "BQ"
                CASE viTe=13
                     @mMF2,mMC2+16 Say "DIGITAR LA FECHA DE NACIMIENTO, SI NO SE USA DEBE ESTAR VACÍA..."                           Font "&mLetRom",9 Style "BQ"
                CASE viTe=14
                     @mMF2,mMC2+10 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=15
                     @mMF2,mMC2+10 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO itE_4200a WITH viTe, "1"
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_4200a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código de Trabajador no puede estar vacío...          "  ;
                 TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "Código de Trabajador no puede tener espacios vacíos..."  ;
                 TO mmSj
      CASE viTe=1 .AND. vcOd="0000"
           STORE "Código de Trabajador no puede ser 0000...             "  ;
                 TO mmSj
      CASE viTe=1
           SELECT trAbajadores
           SEEK vcOd
           DO veR_lock
           IF EOF()
                DO coL_beige
                @mFI0+.4,mCO0+mUCO-13 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                STORE 0 TO vcAr
                STORE 2 TO vrE4, vcLv
                STORE 1 TO vcIv, vsEx
                STORE SPACE(07) TO vtEl
                STORE SPACE(10) TO vmIl
                STORE SPACE(11) TO vrUc
                STORE SPACE(30) TO vnOm
                STORE SPACE(70) TO vdIr
                STORE SPACE(15) TO vsSo, vsPp
                STORE SPACE(01) TO vsAl, vpEn, viPs, veSt
                STORE SPACE(08) TO veLe, vfOt, cfOt, vgRu, vcLa
                STORE SPACE(25) TO vaPp, vaPm, vnDi, vnDp, vlNa, vnAc
                STORE SPACE(02) TO vaFp, vbAn, vcCo, vcTa, vdIs, vdPt,  ;
                      vcRg, vaRe
                STORE SPACE(50) TO vnAf, vnSa, vnPe, vnIp, vnCc, vnBa,  ;
                      vnCt, vnCa, vnAr
                STORE CTOD("  /  /    ") TO vfNa
           ELSE
                DO muE_4200a
           ENDIF
           DO diS_4200a
      CASE viTe=02 .AND. LEN(ALLTRIM(vaPp))=0
           STORE "Apellido Paterno de Trabajador no puede estar vacío..."  ;
                 TO mmSj
      CASE viTe=03 .AND. LEN(ALLTRIM(vaPm))=0
           STORE "Apellido Materno de Trabajador no puede estar vacío..."  ;
                 TO mmSj
      CASE viTe=04 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre no puede estar vacío... " TO mmSj
      CASE viTe=05 .AND. LEN(ALLTRIM(vdIr))=0
           STORE "Dirección no puede estar vacía..." TO mmSj
      CASE viTe=06 .AND. LEN(ALLTRIM(vtEl))<>0 .AND. AT(" ", ALLTRIM(vtEl))<>0
           STORE "Teléfono es de 7 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=06 .AND. LEN(ALLTRIM(vtEl))<>0 .AND. LEN(ALLTRIM(vtEl))<>7
           STORE "Teléfono es de 7 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=07 .AND. LEN(ALLTRIM(veLe))<>0 .AND. AT(" ", ALLTRIM(veLe))<>0
           STORE "DNI es de 8 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=07 .AND. LEN(ALLTRIM(veLe))<>0 .AND. LEN(ALLTRIM(veLe))<>8
           STORE "DNI es de 8 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=09 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. AT(" ", ALLTRIM(vrUc))<>0
           STORE "RUC es de 11 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=09 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. LEN(ALLTRIM(vrUc))<>11
           STORE "RUC es de 11 dígitos o debe estar vacío..." TO mmSj
      CASE viTe=12 .AND. LEN(ALLTRIM(vsPp))<>0 .AND. LEN(ALLTRIM(vaFp))=0
           STORE "Número de AFP debe estar vacío..." TO mmSj
      CASE viTe=12 .AND. LEN(ALLTRIM(vsPp))=0 .AND. LEN(ALLTRIM(vaFp))<>0
           STORE "Número de AFP no debe estar vacío..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4200a
 SELECT trAbajadores
 DO coL_beige
 IF f4200est="9"
      @mFI0+.4,mCO0+mUCO-13 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      @mFI0+.4,mCO0+mUCO-13 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 STORE f4200cod TO vcOd
 STORE f4200app TO vaPp
 STORE f4200apm TO vaPm
 STORE f4200nom TO vnOm
 STORE f4200dir TO vdIr
 STORE f4200dis TO vdIs
 STORE f4200ndi TO vnDi
 STORE f4200dpt TO vdPt
 STORE f4200ndp TO vnDp
 STORE f4200tel TO vtEl
 STORE f4200ele TO veLe
 STORE f4200mil TO vmIl
 STORE f4200ruc TO vrUc
 STORE f4200car TO vcAr
 STORE f4200civ TO vcIv
 STORE f4200sex TO vsEx
 STORE f4200sso TO vsSo
 STORE f4200afp TO vaFp
 STORE f4200naf TO vnAf
 STORE f4200spp TO vsPp
 STORE f4200fna TO vfNa
 STORE f4200lna TO vlNa
 STORE f4200nac TO vnAc
 STORE f4200gru TO vgRu
 STORE f4200crg TO vcRg
 STORE f4200nca TO vnCa
 STORE f4200are TO vaRe
 STORE f4200nar TO vnAr
 STORE f4200ban TO vbAn
 STORE f4200nba TO vnBa
 STORE f4200cta TO vcTa
 STORE f4200nct TO vnCt
 STORE f4200sal TO vsAl
 STORE f4200nsa TO vnSa
 STORE f4200pen TO vpEn
 STORE f4200npe TO vnPe
 STORE f4200ips TO viPs
 STORE f4200nip TO vnIp
 STORE f4200re4 TO vrE4
 STORE f4200cco TO vcCo
 STORE f4200ncc TO vnCc
 STORE f4200fot TO vfOt
 STORE f4200cla TO vcLa
 STORE f4200est TO veSt
 IF LEN(ALLTRIM(vcLa))=0
      STORE 2 TO vcLv
 ELSE
      STORE 1 TO vcLv
 ENDIF
ENDPROC
*
PROCEDURE Gra_4200a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT trAbajadores
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f4200cod WITH vcOd
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
 STORE f4200cla TO ccLa
 REPLACE f4200app WITH vaPp
 REPLACE f4200apm WITH vaPm
 REPLACE f4200nom WITH vnOm
 REPLACE f4200dir WITH vdIr
 REPLACE f4200dis WITH vdIs
 REPLACE f4200ndi WITH vnDi
 REPLACE f4200dpt WITH vdPt
 REPLACE f4200ndp WITH vnDp
 REPLACE f4200tel WITH vtEl
 REPLACE f4200ele WITH veLe
 REPLACE f4200mil WITH vmIl
 REPLACE f4200ruc WITH vrUc
 REPLACE f4200car WITH vcAr
 REPLACE f4200civ WITH vcIv
 REPLACE f4200sex WITH vsEx
 REPLACE f4200sso WITH vsSo
 REPLACE f4200afp WITH vaFp
 REPLACE f4200naf WITH vnAf
 REPLACE f4200spp WITH vsPp
 REPLACE f4200fna WITH vfNa
 REPLACE f4200lna WITH vlNa
 REPLACE f4200nac WITH vnAc
 REPLACE f4200gru WITH vgRu
 REPLACE f4200crg WITH vcRg
 REPLACE f4200nca WITH vnCa
 REPLACE f4200are WITH vaRe
 REPLACE f4200nar WITH vnAr
 REPLACE f4200ban WITH vbAn
 REPLACE f4200nba WITH vnBa
 REPLACE f4200cta WITH vcTa
 REPLACE f4200nct WITH vnCt
 REPLACE f4200sal WITH vsAl
 REPLACE f4200nsa WITH vnSa
 REPLACE f4200pen WITH vpEn
 REPLACE f4200npe WITH vnPe
 REPLACE f4200ips WITH viPs
 REPLACE f4200nip WITH vnIp
 REPLACE f4200re4 WITH vrE4
 REPLACE f4200cco WITH vcCo
 REPLACE f4200ncc WITH vnCc
 REPLACE f4200fot WITH vfOt
 REPLACE f4200cla WITH vcLa
 REPLACE f4200est WITH "1"
 REPLACE f4200usu WITH muSu
 REPLACE f4200dat WITH DATE()
 REPLACE f4200tim WITH TIME()
 UNLOCK ALL
 FLUSH
 SELECT trAbajadores
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4200a
 SEEK vcOd
 IF EOF()
      STORE "Código de Trabajador no registrado..." TO mmSj
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
 STORE f4200cla TO ccLa
 REPLACE f4200cod WITH SPACE(04)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 SELECT trAbajadores
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Anu_4200a
 SEEK vcOd
 IF EOF()
      STORE "Código de Trabajador no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO CASE
      CASE veSt="1"
           DO grAbar WITH "4"
      CASE veSt="9"
           DO grAbar WITH "6"
 ENDCASE
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
 DO CASE
      CASE veSt="1"
           REPLACE f4200est WITH "9"
      CASE veSt="9"
           REPLACE f4200est WITH "1"
 ENDCASE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE P00_4200a
 PARAMETER ptPo
 PRIVATE ptAm, pfIn, pfFi, puCl
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE 22 TO muFi
 STORE 123.2 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.4 TO mfI0
 STORE (mwCo-muCo)/2 TO mmC2
 IF mrEs>"1"
      STORE mfI0-1 TO mfI0
      STORE muCo+28 TO muCo
      DO CASE
           CASE mrEs="2"
                STORE 11 TO ptAm
                STORE 03 TO pfIn
                STORE 07 TO pfFi
                STORE 01 TO puCl
           CASE mrEs="3"
                STORE 12 TO ptAm
                STORE 09 TO pfIn
                STORE 13 TO pfFi
                STORE 14 TO puCl
           CASE mrEs="4"
                STORE 13 TO ptAm
                STORE 06 TO pfIn
                STORE 09 TO pfFi
                STORE 34 TO puCl
           CASE mrEs="5"
                STORE 14 TO ptAm
                STORE 12 TO pfIn
                STORE 14 TO pfFi
                STORE 34 TO puCl
      ENDCASE
 ELSE
      STORE 10 TO ptAm
      STORE 03 TO pfIn
      STORE 04 TO pfFi
      STORE 00 TO puCl
 ENDIF
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+muFi+1.1 TO mmF2
 STORE mmC2+0.5 TO mmC2
 IF mrEs>"1"
      STORE mmF2+1 TO mmF2
      IF mrEs>"2"
           STORE mcO0-22 TO mcO0
           STORE mmC2-22 TO mmC2
      ENDIF
 ENDIF
 IF mrEs<"3"
      STORE mcO0+muCo-29 TO vcLl
 ELSE
      STORE mcO0+muCo+12 TO vcLl
 ENDIF
 IF mrEs="1"
      STORE mfI0 TO vlLn
      STORE mcO0+29 TO vcL1
      STORE vcL1+49.5 TO vcL2
      STORE 0 TO vc11, vc12
 ELSE
      STORE mfI0+2 TO vlLn
      STORE mcO0+39 TO vcL1
      STORE vcL1+59.5 TO vcL2
      STORE 6 TO vc11
      STORE 9 TO vc12
 ENDIF
 STORE mfI0+00.3 TO vfBi
 STORE mcO0+31.3 TO vcBi
 STORE mfI0+00.5 TO vfB1
 STORE mfI0+04.0 TO vfB2
 STORE mfI0+12.05 TO vfB3, vfB4, vfB5, vfB6
 STORE mfI0+13.55 TO vfB7, vfB8
 STORE mfI0+15.4 TO vfBe, vfBf
 STORE mfI0+16.9 TO vfBg, vfBh
 STORE mfI0+18.4 TO vfBj, vfBk
 STORE mfI0+16.4 TO vfB9, vfB0
 STORE mfI0+19.4 TO vfBc, vfBd
 STORE mfI0+17.9 TO vfBa, vfBb
 STORE vcL1+18.0 TO vcB1
 STORE vcL1+73.3 TO vcB2
 STORE vcL1+vc11+40.5 TO vcB3
 STORE vcB3+4 TO vcB4
 STORE vcL2+35.7 TO vcB5, vcB7
 STORE vcB5+4 TO vcB6, vcB8
 STORE mcO0+49 TO vcB9, vcBa, vcBc
 STORE vcB9+4 TO vcB0, vcBb, vcBd
 STORE vcL1+vc12+71 TO vcBe, vcBg, vcBj
 STORE vcBe+4 TO vcBf, vcBh, vcBk
 Define Popup vTB1 from mFI0-pFIN,mCO0+36  to mFI0+mUFI+pFFI,mCO0+mUCO+pUCL Font "&mLetAri",pTAM Style "NQU" Prompt Field AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM)+"  ("+F4200COD+")" Scroll Color Scheme 10 Footer "CONSULTA DE TRABAJADORES"
 Define Popup vTB2 from vFB2+1.2,vCB2-37.8 to mFI0+mUFI+pFFI,vCB2+3.4       Font "&mLetAri",pTAM Style "NQ" Prompt Field F9115NOM Scroll Color Scheme 3 Footer "CONSULTA DE DISTRITOS/CIUDADES"
 Define Popup vTB3 from vFB3+1.2,vCB3-24.9 to mFI0+mUFI+pFFI,vCB3+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9515NAF Scroll Color Scheme 3 Footer "CONSULTA DE AFP"
 Define Popup vTB4 from vFB5+1.2,vCB5-21.7 to mFI0+mUFI+pFFI,vCB5+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9510DES Scroll Color Scheme 3 Footer "CONSULTA DE CARGOS"
 Define Popup vTB5 from vFB7+1.2,vCB7-21.7 to mFI0+mUFI+pFFI,vCB7+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9511DES Scroll Color Scheme 3 Footer "CONSULTA DE AREAS"
 Define Popup vTB6 from vFB9+1.3,vCB9-33.5 to mFI0+mUFI+pFFI,vCB9+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9512NSA Scroll Color Scheme 3 Footer "LEYES AFECTAS: SALUD"
 Define Popup vTB7 from vFBA+1.3,vCBA-33.5 to mFI0+mUFI+pFFI,vCBA+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9513NPE Scroll Color Scheme 3 Footer "LEYES AFECTAS: PENSIÓN"
 Define Popup vTB8 from vFBC+1.3,vCBC-33.5 to mFI0+mUFI+pFFI,vCBC+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9514DES Scroll Color Scheme 3 Footer "LEYES AFECTAS: IPSS VIDA"
 Define Popup vTB9 from vFBE+1.3,vCBE-30.5 to mFI0+mUFI+pFFI,vCBE+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9312NBA Scroll Color Scheme 3 Footer "CONSULTA DE BANCOS"
 Define Popup vTB0 from vFBG+1.3,vCBG-30.5 to mFI0+mUFI+pFFI,vCBG+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9313DES Scroll Color Scheme 3 Footer "CONSULTA DE CUENTAS"
 Define Popup vTBA from vFBJ+1.3,vCBJ-30.5 to mFI0+mUFI+pFFI,vCBJ+7.3 Font "&mLetAri",pTAM Style "NQ" Prompt Field F9318NCC Scroll Color Scheme 3 Footer "CENTROS DE COSTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 ON SELECTION POPUP vtB7 DO TB7_0000A
 ON SELECTION POPUP vtB8 DO TB8_0000A
 ON SELECTION POPUP vtB9 DO TB9_0000A
 ON SELECTION POPUP vtB0 DO TB0_0000A
 ON SELECTION POPUP vtBa DO TBA_0000A
 DO tiT_0000a WITH "Mantenimiento de Trabajadores"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+0.3, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_beige
 @ mfI0+0.1, mcO0+1 TO mfI0+2, mcO0+36.4 PATTERN 1 COLOR SCHEME 3
 @ mfI0+0.1, mcO0+1 TO mfI0+0.1, mcO0+36.2 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2, mcO0+1 COLOR RGB(0,0,0,0,0,0)
 DO coL_beige
 @ mfI0, mcO0 TO mfI0+7.1, mcO0+muCo PATTERN 1
 @ mfI0, mcO0 TO mfI0+2.1, mcO0+38 PATTERN 1 COLOR SCHEME 3
 @ mfI0+15, mcO0 TO mfI0+muFi+0.3, mcO0+muCo PATTERN 1
 IF mrEs="1"
      @ mfI0+7.1, vcL1-1 TO mfI0+15, vcL1-1
      @ mfI0+7.1, vcL2 TO mfI0+15, vcL2
 ELSE
      @ mfI0+7.1, vcL1-3 TO mfI0+15, vcL1-3
      @ mfI0+7.1, vcL2-3 TO mfI0+15, vcL2-3
 ENDIF
 DO coL_fondo
 IF mrEs>"2"
      DO fo1_4200a
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coLsc3
 @mFI0+00.4,mCO0+2 Say "CÓDIGO:"       Font "&mLetRom",13 Style "BQ"
 @mFI0+15.2,mCO0+1 Say "LEYES AFECTAS" Font "&mLetRom",9  Style "BT" Color 1
 DO coL_fondo
 DO CASE
      CASE mrEs="1"
           @mFI0+02.6,mCO0+01  Say "Ap.Paterno"        Font "&mLetAri",9 Style "NT"
           @mFI0+04.1,mCO0+01  Say "Ap.Materno"        Font "&mLetAri",9 Style "NT"
           @mFI0+05.6,mCO0+01  Say "Nombres"           Font "&mLetAri",9 Style "NT"
           @mFI0+07.6,mCO0+01  Say "Teléfono"          Font "&mLetAri",9 Style "NT"
           @mFI0+09.1,mCO0+01  Say "# DNI "            Font "&mLetAri",9 Style "NT"
           @mFI0+10.6,mCO0+01  Say "# L.M."            Font "&mLetAri",9 Style "NT"
           @mFI0+12.1,mCO0+01  Say "# R.U.C."          Font "&mLetAri",9 Style "NT"
           @mFI0+13.6,mCO0+01  Say "Cargas Familiares" Font "&mLetAri",9 Style "NT"
           @mFI0+16.5,mCO0+01  Say "Salud"             Font "&mLetAri",9 Style "NT"
           @mFI0+18.0,mCO0+01  Say "Pensiones"         Font "&mLetAri",9 Style "NT"
           @mFI0+19.5,mCO0+01  Say "IPSS Vida"         Font "&mLetAri",9 Style "NT"
           @mFI0+21.0,mCO0+01  Say "Renta de 4ta."     Font "&mLetAri",9 Style "NT"
           @mFI0+07.6,vCL1     Say "Estado Civil"      Font "&mLetAri",9 Style "NT"
           @mFI0+09.1,vCL1     Say "Sexo"              Font "&mLetAri",9 Style "NT"
           @mFI0+10.6,vCL1     Say "#Seg.Social"       Font "&mLetAri",9 Style "NT"
           @mFI0+12.1,vCL1     Say "AFP"               Font "&mLetAri",9 Style "NT"
           @mFI0+13.6,vCL1     Say "# AFP"             Font "&mLetAri",9 Style "NT"
           @mFI0+02.6,vCL1+18  Say "Dirección"         Font "&mLetAri",9 Style "NT"
           @mFI0+04.1,vCL1+18  Say "Distrito"          Font "&mLetAri",9 Style "NT"
           @mFI0+05.6,vCL1+18  Say "Departamento"      Font "&mLetAri",9 Style "NT"
           @mFI0+15.5,vCL1+30  Say "Banco"             Font "&mLetAri",9 Style "NT"
           @mFI0+17.0,vCL1+30  Say "#Cuenta"           Font "&mLetAri",9 Style "NT"
           @mFI0+18.5,vCL1+30  Say "C.Costo"           Font "&mLetAri",9 Style "NT"
           @mFI0+07.6,vCL2+1.5 Say "F.Nacim"           Font "&mLetAri",9 Style "NT"
           @mFI0+09.1,vCL2+1.5 Say "L.Nacim"           Font "&mLetAri",9 Style "NT"
           @mFI0+10.6,vCL2+1.5 Say "Nacionalid"        Font "&mLetAri",9 Style "NT"
           @mFI0+12.1,vCL2+1.5 Say "Cargo"             Font "&mLetAri",9 Style "NT"
           @mFI0+13.6,vCL2+1.5 Say "Area"              Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @mFI0+02.6,mCO0+01  Say "Apellido Paterno"  Font "&mLetAri",9 Style "BT"
           @mFI0+04.1,mCO0+01  Say "Apellido Materno"  Font "&mLetAri",9 Style "BT"
           @mFI0+05.6,mCO0+01  Say "Nombres"           Font "&mLetAri",9 Style "BT"
           @mFI0+07.6,mCO0+01  Say "Teléfono"          Font "&mLetAri",9 Style "BT"
           @mFI0+09.1,mCO0+01  Say "# DNI "            Font "&mLetAri",9 Style "BT"
           @mFI0+10.6,mCO0+01  Say "# L.M."            Font "&mLetAri",9 Style "BT"
           @mFI0+12.1,mCO0+01  Say "# R.U.C."          Font "&mLetAri",9 Style "BT"
           @mFI0+13.6,mCO0+01  Say "Cargas Familiares" Font "&mLetAri",9 Style "BT"
           @mFI0+16.5,mCO0+01  Say "Essalud"           Font "&mLetAri",9 Style "BT"
           @mFI0+18.0,mCO0+01  Say "Pensiones"         Font "&mLetAri",9 Style "BT"
           @mFI0+19.5,mCO0+01  Say "IPSS Vida"         Font "&mLetAri",9 Style "BT"
           @mFI0+21.0,mCO0+01  Say "Renta de 4ta."     Font "&mLetAri",9 Style "BT"
           @mFI0+07.6,vCL1     Say "Estado Civil"      Font "&mLetAri",9 Style "BT"
           @mFI0+09.1,vCL1     Say "Sexo"              Font "&mLetAri",9 Style "BT"
           @mFI0+10.6,vCL1     Say "# Seguro Social"   Font "&mLetAri",9 Style "BT"
           @mFI0+12.1,vCL1     Say "AFP"               Font "&mLetAri",9 Style "BT"
           @mFI0+13.6,vCL1     Say "# AFP"             Font "&mLetAri",9 Style "BT"
           @mFI0+02.6,vCL1+18  Say "Dirección"         Font "&mLetAri",9 Style "BT"
           @mFI0+04.1,vCL1+18  Say "Distrito"          Font "&mLetAri",9 Style "BT"
           @mFI0+05.6,vCL1+18  Say "Departamento"      Font "&mLetAri",9 Style "BT"
           @mFI0+15.5,vCL1+30  Say "Banco"             Font "&mLetAri",9 Style "BT"
           @mFI0+17.0,vCL1+30  Say "# Cuenta"          Font "&mLetAri",9 Style "BT"
           @mFI0+18.5,vCL1+30  Say "Centro de Costos"  Font "&mLetAri",9 Style "BT"
           @mFI0+07.6,vCL2+1.5 Say "Fecha-Nacimiento"  Font "&mLetAri",9 Style "BT"
           @mFI0+09.1,vCL2+1.5 Say "Lugar-Nacimiento"  Font "&mLetAri",9 Style "BT"
           @mFI0+10.6,vCL2+1.5 Say "Nacionalidad"      Font "&mLetAri",9 Style "BT"
           @mFI0+12.1,vCL2+1.5 Say "Cargo"             Font "&mLetAri",9 Style "BT"
           @mFI0+13.6,vCL2+1.5 Say "Area"              Font "&mLetAri",9 Style "BT"
 ENDCASE
 @mFI0+21,vCL1+30 Say "C L A V E" Font "&mLetAri",9 Style "BT" Color 3/4
 DO daT_4200a WITH "A"
 DO daT_4200a WITH "B"
 DO daT_4200a WITH "C"
 DO daT_4200a WITH "D"
 DO daT_4200a WITH "E"
 DO daT_4200a WITH "Z1"
 DO daT_4200a WITH "Z2"
 DO daT_4200a WITH "Z3"
 DO daT_4200a WITH "Z4"
 DO daT_4200a WITH "Z5"
 DO daT_4200a WITH "Z6"
 DO daT_4200a WITH "Z7"
 DO daT_4200a WITH "Z8"
 DO daT_4200a WITH "Z9"
 DO itE_4200a WITH 1, "1"
 DO itE_4200a WITH 2, "1"
 DO itE_4200a WITH 3, "1"
 DO itE_4200a WITH 4, "1"
 DO itE_4200a WITH 5, "1"
 DO itE_4200a WITH 6, "1"
 DO itE_4200a WITH 7, "1"
 DO itE_4200a WITH 8, "1"
 DO itE_4200a WITH 9, "1"
 DO itE_4200a WITH 10, "1"
 DO itE_4200a WITH 11, "1"
 DO itE_4200a WITH 12, "1"
 DO itE_4200a WITH 13, "1"
 DO itE_4200a WITH 14, "1"
 DO itE_4200a WITH 15, "1"
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pfIn, pfFi, puCl
ENDPROC
*
PROCEDURE Dat_4200a
 PARAMETER pnMr
 DO coL_fondo
 DO CASE
      CASE pnMr="1"
           DO coL_beige
           @mFI0+04.1,vCL1+36        Say  vNDI Font "&mLetAri",9 Style "NQ" Size 1,37   Pict "@S25"
           @mFI0+05.6,vCL1+36        Say  vNDP Font "&mLetAri",9 Style "NQ" Size 1,37   Pict "@S25"
      CASE pnMr="Z1"
           DO coL_beige
           @mFI0+04.1,vCL1+36        Edit vNDI Font "&mLetAri",9 Style "NQ" Size 1,37,25
           @mFI0+05.6,vCL1+36        Edit vNDP Font "&mLetAri",9 Style "NQ" Size 1,37,25
      CASE pnMr="2"
           @mFI0+12.1,vCL1+vC11+16   Say  vNAF Font "&mLetAri",9 Style "NQ" Size 1,24.2 Pict "@S27"
      CASE pnMr="Z2"
           @mFI0+12.1,vCL1+vC11+16   Edit vNAF Font "&mLetAri",9 Style "NQ" Size 1,24.2,50
      CASE pnMr="3"
           @mFI0+12.1,vCL2+14.5      Say  vNCA Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S23"
      CASE pnMr="Z3"
           @mFI0+12.1,vCL2+14.5      Edit vNCA Font "&mLetAri",9 Style "NQ" Size 1,20.7,50
      CASE pnMr="4"
           @mFI0+13.6,vCL2+14.5      Say  vNAR Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S23"
      CASE pnMr="Z4"
           @mFI0+13.6,vCL2+14.5      Edit vNAR Font "&mLetAri",9 Style "NQ" Size 1,20.7,50
      CASE pnMr="5"
           DO coL_beige
           @mFI0+16.5,mCO0+16        Say  vNSA Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S25"
      CASE pnMr="Z5"
           DO coL_beige
           @mFI0+16.5,mCO0+16        Edit vNSA Font "&mLetAri",9 Style "NQ" Size 1,32.8,25
      CASE pnMr="6"
           DO coL_beige
           @mFI0+18.0,mCO0+16        Say  vNPE Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S25"
      CASE pnMr="Z6"
           DO coL_beige
           @mFI0+18.0,mCO0+16        Edit vNPE Font "&mLetAri",9 Style "NQ" Size 1,32.8,25
      CASE pnMr="7"
           DO coL_beige
           @mFI0+19.5,mCO0+16        Say  vNIP Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S25"
      CASE pnMr="Z7"
           DO coL_beige
           @mFI0+19.5,mCO0+16        Edit vNIP Font "&mLetAri",9 Style "NQ" Size 1,32.8,25
      CASE pnMr="8"
           DO coL_beige
           @mFI0+15.5,vCL1+vC12+41   Say  vNBA Font "&mLetAri",9 Style "NQ" Size 1,29.7 Pict "@S32"
           @mFI0+17.0,vCL1+vC12+41   Say  vNCT Font "&mLetAri",9 Style "NQ" Size 1,29.7 Pict "@S32"
      CASE pnMr="Z8"
           DO coL_beige
           @mFI0+15.5,vCL1+vC12+41   Edit vNBA Font "&mLetAri",9 Style "NQ" Size 1,29.7,50
           @mFI0+17.0,vCL1+vC12+41   Edit vNCT Font "&mLetAri",9 Style "NQ" Size 1,29.7,50
      CASE pnMr="9"
           DO coL_beige
           @mFI0+18.5,vCL1+vC12+41   Say  vNCC Font "&mLetAri",9 Style "NQ" Size 1,29.5 Pict "@S32"
      CASE pnMr="Z9"
           DO coL_beige
           @mFI0+18.5,vCL1+vC12+41   Edit vNCC Font "&mLetAri",9 Style "NQ" Size 1,29.5,50
      CASE pnMr="A"
           @mFI0+07.6,vCL1+16        Get  vCIV Font "&mLetAri",9 Style "NQ" Function "*RHT Sol;Cas;Viu;Div" Default vCIV Size 1,8.1,.08
      CASE pnMr="B"
           @mFI0+09.1,vCL1+16        Get  vSEX Font "&mLetAri",9 Style "NQ" Function "*RHT Mas;Fem"         Default vSEX Size 1,8.1,.08
      CASE pnMr="C"
           @mFI0+21.0,mCO0+vC11+16   Get  vRE4 Font "&mLetAri",9 Style "NQ" Function "*RHT \<Si;\<No"       Default vRE4 Size 1,8.1,.08
      CASE pnMr="D"
           @mFI0+21.0,vCL1+43        Get  vCLV Font "&mLetAri",9 Style "NQ" Function "*RHT \<Si;\<No"       Default vCLV Size 1,8.1,.08
      CASE pnMr="E" .AND. mnPs=6
           @mFI0+21,vCL1+60.5        Get  vCLA Font "&mLetAri",9 Style "NQ" Size 1,6 Color ,&mColBlN
      CASE pnMr="E" .AND. mnPs=8
           @mFI0+21,vCL1+60.5        Get  vCLA Font "&mLetAri",9 Style "NQ" Size 1,8 Color ,&mColBlN
      CASE pnMr="ZE" .AND. mnPs=6 .AND. LEN(ALLTRIM(vcLa))=0
           @mFI0+21,vCL1+60.5        Say  vCLA Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE pnMr="ZE" .AND. mnPs=6
           @mFI0+21,vCL1+60.5     Say "******" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE pnMr="ZE" .AND. mnPs=8 .AND. LEN(ALLTRIM(vcLa))=0
           @mFI0+21,vCL1+60.5        Say  vCLA Font "&mLetAri",9 Style "NQ" Size 1,8
      CASE pnMr="ZE" .AND. mnPs=8
           @mFI0+21,vCL1+60.5   Say "********" Font "&mLetAri",9 Style "NQ" Size 1,8
 ENDCASE
ENDPROC
*
PROCEDURE Ite_4200a
 PARAMETER piTe, ptPp
 DO coLbln
 DO CASE
      CASE piTe=1 .AND. ptPp="1"
           @mFI0+0.3,mCO0+18.5       Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!" Color ,&mColBlN
      CASE piTe=1 .AND. ptPp="2"
           @mFI0+0.3,mCO0+18.5       Say  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4
      CASE piTe=2 .AND. ptPp="1"
           @mFI0+2.6,mCO0+vC11+15    Edit vAPP Font "&mLetAri",9  Style "NQ" Size 1,27,25
      CASE piTe=2 .AND. ptPp="2"
           @mFI0+2.6,mCO0+vC11+15    Say  vAPP Font "&mLetAri",9  Style "NQ" Size 1,27 Pict "@S25"
      CASE piTe=3 .AND. ptPp="1"
           @mFI0+4.1,mCO0+vC11+15    Edit vAPM Font "&mLetAri",9  Style "NQ" Size 1,27,25
      CASE piTe=3 .AND. ptPp="2"
           @mFI0+4.1,mCO0+vC11+15    Say  vAPM Font "&mLetAri",9  Style "NQ" Size 1,27 Pict "@S25"
      CASE piTe=4 .AND. ptPp="1"
           @mFI0+5.6,mCO0+vC11+15    Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,30,30
      CASE piTe=4 .AND. ptPp="2"
           @mFI0+5.6,mCO0+vC11+15    Say  vNOM Font "&mLetAri",9  Style "NQ" Size 1,30 Pict "@S30"
      CASE piTe=5 .AND. ptPp="1"
           @mFI0+2.6,vCL1+36         Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,54,70
      CASE piTe=5 .AND. ptPp="2"
           @mFI0+2.6,vCL1+36         Say  vDIR Font "&mLetAri",9  Style "NQ" Size 1,54 Pict "@S57"
      CASE piTe=6 .AND. ptPp="1"
           @mFI0+7.6,mCO0+vC11+17.2  Get  vTEL Font "&mLetAri",9  Style "NQ" Size 1,09.7 Pict "9999999" Color ,&mColBlN
      CASE piTe=6 .AND. ptPp="2"
           @mFI0+7.6,mCO0+vC11+17.2  Say  vTEL Font "&mLetAri",9  Style "NQ" Size 1,09.7
      CASE piTe=7 .AND. ptPp="1"
           @mFI0+9.1,mCO0+vC11+15.8  Get  vELE Font "&mLetAri",9  Style "NQ" Size 1,11.1 Pict "!!!!!!!!" Color ,&mColBlN
      CASE piTe=7 .AND. ptPp="2"
           @mFI0+9.1,mCO0+vC11+15.8  Say  vELE Font "&mLetAri",9  Style "NQ" Size 1,11.1
      CASE piTe=8 .AND. ptPp="1"
           @mFI0+10.6,mCO0+vC11+12.8 Get  vMIL Font "&mLetAri",9  Style "NQ" Size 1,14.1 Pict "!!!!!!!!!!" Color ,&mColBlN
      CASE piTe=8 .AND. ptPp="2"
           @mFI0+10.6,mCO0+vC11+12.8 Say  vMIL Font "&mLetAri",9  Style "NQ" Size 1,14.1
      CASE piTe=9 .AND. ptPp="1"
           @mFI0+12.1,mCO0+vC11+12   Get  vRUC Font "&mLetAri",9  Style "NQ" Size 1,14.9 Pict "!!!!!!!!!!!" Color ,&mColBlN
      CASE piTe=9 .AND. ptPp="2"
           @mFI0+12.1,mCO0+vC11+12   Say  vRUC Font "&mLetAri",9  Style "NQ" Size 1,14.9
      CASE piTe=10 .AND. ptPp="1"
           @mFI0+13.6,mCO0+vC11+23   Get  vCAR Font "&mLetAri",9  Style "NQ" Size 1,03.9 Pict "99" Color ,&mColBlN
      CASE piTe=10 .AND. ptPp="2"
           @mFI0+13.6,mCO0+vC11+23   Say  vCAR Font "&mLetAri",9  Style "NQ" Size 1,03.9 Pict "99"
      CASE piTe=11 .AND. ptPp="1"
           @mFI0+10.6,vCL1+vC11+16   Edit vSSO Font "&mLetAri",9  Style "NQ" Size 1,27.3,15
      CASE piTe=11 .AND. ptPp="2"
           @mFI0+10.6,vCL1+vC11+16   Say  vSSO Font "&mLetAri",9  Style "NQ" Size 1,27.3 Pict "@S15"
      CASE piTe=12 .AND. ptPp="1"
           @mFI0+13.6,vCL1+vC11+16   Edit vSPP Font "&mLetAri",9  Style "NQ" Size 1,32.3,15
      CASE piTe=12 .AND. ptPp="2"
           @mFI0+13.6,vCL1+vC11+16   Say  vSPP Font "&mLetAri",9  Style "NQ" Size 1,32.3 Pict "@S15"
      CASE piTe=13 .AND. ptPp="1"
           @mFI0+7.6,vCL2+vC12+14.5  Get  vFNA Font "&mLetAri",9  Style "NQ" Size 1,12.2 Color ,&mColBlN
      CASE piTe=13 .AND. ptPp="2"
           @mFI0+7.6,vCL2+vC12+14.5  Say  vFNA Font "&mLetAri",9  Style "NQ" Size 1,12.2
      CASE piTe=14 .AND. ptPp="1"
           @mFI0+9.1,vCL2+vC12+14.5  Edit vLNA Font "&mLetAri",9  Style "NQ" Size 1,25.6,25
      CASE piTe=14 .AND. ptPp="2"
           @mFI0+9.1,vCL2+vC12+14.5  Say  vLNA Font "&mLetAri",9  Style "NQ" Size 1,25.6 Pict "@S25"
      CASE piTe=15 .AND. ptPp="1"
           @mFI0+10.6,vCL2+vC12+14.5 Edit vNAC Font "&mLetAri",9  Style "NQ" Size 1,25.6,25
      CASE piTe=15 .AND. ptPp="2"
           @mFI0+10.6,vCL2+vC12+14.5 Say  vNAC Font "&mLetAri",9  Style "NQ" Size 1,25.6 Pict "@S25"
 ENDCASE
ENDPROC
*
PROCEDURE Dis_4200a
 DO itE_4200a WITH 1, "2"
 DO itE_4200a WITH 2, "2"
 DO itE_4200a WITH 3, "2"
 DO itE_4200a WITH 4, "2"
 DO itE_4200a WITH 5, "2"
 DO itE_4200a WITH 6, "2"
 DO itE_4200a WITH 7, "2"
 DO itE_4200a WITH 8, "2"
 DO itE_4200a WITH 9, "2"
 DO itE_4200a WITH 10, "2"
 DO itE_4200a WITH 11, "2"
 DO itE_4200a WITH 12, "2"
 DO itE_4200a WITH 13, "2"
 DO itE_4200a WITH 14, "2"
 DO itE_4200a WITH 15, "2"
 DO daT_4200a WITH "1"
 DO daT_4200a WITH "2"
 DO daT_4200a WITH "3"
 DO daT_4200a WITH "4"
 DO daT_4200a WITH "5"
 DO daT_4200a WITH "6"
 DO daT_4200a WITH "7"
 DO daT_4200a WITH "8"
 DO daT_4200a WITH "9"
 DO daT_4200a WITH "A"
 DO daT_4200a WITH "B"
 DO daT_4200a WITH "C"
 DO daT_4200a WITH "D"
 DO daT_4200a WITH "ZE"
 IF mrEs>"2"
      DO fo2_4200a
 ENDIF
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Fot_4200a
 IF mrEs<"3"
      SAVE SCREEN TO vpAn_11
      DO fo1_4200a
      READ TIMEOUT 0.01
 ENDIF
 DO coLbln
 STORE UPPER(vfOt) TO cfOt
 DO prEsiona WITH "2", "PONFOT", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vLLN+15.8,vCLL+1.6 Say "Presiona TAB o ESC..." Font "&mLetAri",9 Style "NQ" Size 1,25
 DO WHILE .T.
      @vLLN+12.6,vCLL+11 Get cFOT Font "&mLetAri",10 Style "NQ" Pict "!!!!!!!!" Size 1,11.3 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           EXIT
      ENDIF
      IF mkEy=k_Enter .OR. mkEy=k_Tab
           IF LEN(ALLTRIM(cfOt))<>0
                STORE ALLTRIM(UPPER(cfOt)) TO cfOt
                IF LEN(ALLTRIM(muNi))=0
                     STORE mpTh+"DIB\"+cfOt+".BMP" TO mdBf
                ELSE
                     STORE muNi+":"+mpTh+"DIB\"+cfOt+".BMP" TO mdBf
                ENDIF
                If .not.File("&mDBF")
                     STORE SPACE(08) TO cfOt
                     STORE "Imagen BITMAP no registrada..." TO mmSj
                     DO poNmsj
                     DO coLbln
                     @vLLN+12.6,vCLL+11 Say cFOT Font "&mLetAri",10 Style "NQ" Size 1,11.3
                     DO fo4_4200a
                ELSE
                     DO fo3_4200a
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfOt TO vfOt
                ENDIF
           ELSE
                STORE cfOt TO vfOt
           ENDIF
      ENDIF
      IF mkEy=k_Tab
           STORE 99 TO mkEy
           EXIT
      ENDIF
 ENDDO
 STORE 99 TO mkEy
 IF mrEs<"3"
      RESTORE SCREEN FROM vpAn_11
 ELSE
      DO coLbln
      @vLLN+15.8,vCLL+1.6 Say Space(20) Font "&mLetAri",9 Style "NQ" Size 1,25
      DO prEsiona WITH "1", "PONFOT", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Fo1_4200a
 DO coLbln
 IF mrEs>"2"
      DO prEsiona WITH "1", "CUADR1", vlLn-0.6, vcLl-4.2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO fo4_4200a
 @ vlLn+12.4, vcLl TO vlLn+17.2, vcLl+27.7 PATTERN 1 PEN 1
 @ vlLn+14.0, vcLl TO vlLn+14.0, vcLl+27.7
 @ vlLn+15.6, vcLl TO vlLn+15.6, vcLl+27.7
 @vLLN+12.6,vCLL+2 Say "FOTO:"                  Font "&mLetAri",10 Style "BQ"
 @vLLN+14.2,vCLL+1 Say "Alto:172 Ancho:137 pix" Font "&mLetAri",9  Style "BQ"
 DO fo2_4200a
ENDPROC
*
PROCEDURE Fo2_4200a
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(UPPER(vfOt))+".BMP" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(UPPER(vfOt))+".BMP" TO mdBf
 ENDIF
 If File("&mDBF")
      DO fo3_4200a
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO fo4_4200a
 ENDIF
 @vLLN+12.6,vCLL+11 Get vFOT Font "&mLetAri",10 Style "NQ" Pict "!!!!!!!!" Size 1,11.3 Color ,&mColBlN
ENDPROC
*
PROCEDURE Fo3_4200a
 IF mrEs<"3"
      @vLLN+0.05,vCLL+0.2 Say "&mDBF" BitMap Style "B" Size 12.3,27.1 Stretch
 ELSE
      @vLLN+0.05,vCLL+0.2 Say "&mDBF" BitMap Style "B" Size 12.3,27.3 Stretch
 ENDIF
ENDPROC
*
PROCEDURE Fo4_4200a
 DO coLbln
 @ vlLn, vcLl TO vlLn+12.4, vcLl+27.7 PATTERN 1 PEN 1
ENDPROC
*
PROCEDURE Dst_4200a
 = INKEY(0.01)
 SELECT diStritos
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9115", "U", "F9115NO1", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnDi))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB2 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9115dpt TO vdPt
      STORE f9115dis TO vdIs
      STORE f9115nom TO vnDi
      SELECT dePartamentos
      SEEK vdPt
      DO veR_lock
      STORE f9114nom TO vnDp
      DO daT_4200a WITH "1"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Afp_4200a
 = INKEY(0.01)
 SELECT afP
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9515", "U", "F9515NAF", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnAf))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB3 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9515", "U", "F9515AFP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9515afp TO vaFp
      STORE f9515naf TO vnAf
      DO daT_4200a WITH "2"
      DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Car_4200a
 = INKEY(0.01)
 SELECT caRgos
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9510", "U", "F9510DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnCa))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB4 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9510", "U", "F9510COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9510cod TO vcRg
      STORE f9510des TO vnCa
      DO daT_4200a WITH "3"
      DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Are_4200a
 = INKEY(0.01)
 SELECT arEas
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9511", "U", "F9511DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnAr))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB5 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9511", "U", "F9511COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9511cod TO vaRe
      STORE f9511des TO vnAr
      DO daT_4200a WITH "4"
      DO prEsiona WITH "1", "DESCAR", vfB8, vcB8
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Sal_4200a
 = INKEY(0.01)
 SELECT saLud
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9512", "U", "F9512NSA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnSa))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB6 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9512", "U", "F9512SAL", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9512sal TO vsAl
      STORE f9512nsa TO vnSa
      DO daT_4200a WITH "5"
      DO prEsiona WITH "1", "DESCAR", vfB0, vcB0
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Pen_4200a
 = INKEY(0.01)
 SELECT peNsion
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9513", "U", "F9513NPE", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnPe))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB7 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9513", "U", "F9513PEN", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9513pen TO vpEn
      STORE f9513npe TO vnPe
      DO daT_4200a WITH "6"
      DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Ips_4200a
 = INKEY(0.01)
 SELECT ipSs_vida
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9514", "U", "F9514DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnIp))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB8 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9514", "U", "F9514IPS", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9514ips TO viPs
      STORE f9514des TO vnIp
      DO daT_4200a WITH "7"
      DO prEsiona WITH "1", "DESCAR", vfBd, vcBd
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Ban_4200a
 = INKEY(0.01)
 SELECT baNcos
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBe, vcBe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9312", "U", "F9312NBA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnBa))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB9 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9312", "U", "F9312BAN", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9312ban TO vbAn
      STORE f9312nba TO vnBa
      DO daT_4200a WITH "8"
      DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBe, vcBe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Cta_4200a
 = INKEY(0.01)
 SELECT cuEntas
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f9313ban=vbAn
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      SET FILTER TO
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBg, vcBg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnCt))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB0 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9313cta TO vcTa
      STORE f9313des TO vnCt
      DO daT_4200a WITH "8"
      DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBg, vcBg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Cco_4200a
 = INKEY(0.01)
 SELECT ccOstos
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT trAbajadores
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBj, vcBj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9318", "U", "F9318NCC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnCc))
 SET NEAR OFF
 DO veR_lock
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtBa REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9318", "U", "F9318CCO", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9318cco TO vcCo
      STORE f9318ncc TO vnCc
      DO daT_4200a WITH "9"
      DO prEsiona WITH "1", "DESCAR", vfBk, vcBk
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBj, vcBj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT trAbajadores
ENDPROC
*
PROCEDURE Cla_4200a
 PRIVATE pkEy
 STORE 99 TO mkEy
 DO orD_0000a WITH "4200", "K", "F4200CLA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 01 TO vnUm
 STORE vcLa TO ccLa
 DO coLbln
 DO WHILE .T.
      @mFI0+21,vCL1+59.5+vNUM Say "_" Font "&mLetAri",9 Style "NQ" Size 1,1
      STORE SUBSTR(ccLa, vnUm, 1) TO mkEy
      mkEy = INKEY(0, "HM")
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1 .OR. mkEy=k_F12 .OR. mkEy<0
                STORE 999 TO mkEy
           CASE mkEy=k_Left .AND. vnUm>1
                STORE 999 TO mkEy
                @mFI0+21,vCL1+59.5+vNUM Say "*" Font "&mLetAri",9 Style "NQ" Size 1,1
                STORE vnUm-1 TO vnUm
           CASE mkEy=k_Right
                STORE 999 TO mkEy
                @mFI0+21,vCL1+59.5+vNUM Say "*" Font "&mLetAri",9 Style "NQ" Size 1,1
                STORE vnUm+1 TO vnUm
      ENDCASE
      DO CASE
           CASE mkEy=999 .OR. mkEy=k_Enter
           CASE (UPPER(CHR(mkEy))>="A" .AND. UPPER(CHR(mkEy))<="Z") .OR.  ;
                CHR(mkEy)=" "
                STORE UPPER(CHR(mkEy)) TO pkEy
                @mFI0+21,vCL1+59.5+vNUM Say "*" Font "&mLetAri",9 Style "NQ" Size 1,1
                STORE SUBSTR(ccLa, 1, vnUm-1)+pkEy+SUBSTR(ccLa, vnUm+1) TO ccLa
                STORE vnUm+1 TO vnUm
           CASE UPPER(CHR(mkEy))>="0" .AND. UPPER(CHR(mkEy))<="9"
                STORE UPPER(CHR(mkEy)) TO pkEy
                @mFI0+21,vCL1+59.5+vNUM Say "*" Font "&mLetAri",9 Style "NQ" Size 1,1
                STORE SUBSTR(ccLa, 1, vnUm-1)+pkEy+SUBSTR(ccLa, vnUm+1) TO ccLa
                STORE vnUm+1 TO vnUm
      ENDCASE
      IF vnUm>mnPs .OR. mkEy=k_Enter
           STORE 99 TO mkEy
           IF LEN(ALLTRIM(ccLa))=0
                STORE 02 TO vcLv
                STORE ccLa TO vcLa
                DO daT_4200a WITH "D"
                DO daT_4200a WITH "E"
                READ TIMEOUT 0.01
                EXIT
           ELSE
                SEEK UPPER(ALLTRIM(ccLa))+"*"
                DO veR_lock
                IF  .NOT. EOF() .AND. vcOd<>f4200cod
                     STORE 01 TO vnUm
                     STORE "Clave ya registrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE ccLa TO vcLa
                     EXIT
                ENDIF
           ENDIF
      ENDIF
 ENDDO
 DO orD_0000a WITH "4200", "K", "F4200COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vcOd
 DO veR_lock
 RELEASE pkEy
ENDPROC
*
PROCEDURE Clp_4200a
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
      CASE mfIl>=vfBi-0.05 .AND. mfIl<=vfBi+1.521 .AND. mcCc>=vcBi-0.30  ;
           .AND. mcCc<=vcBi+3.9
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.471 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+7.6 .AND. viTe>1
           DO foT_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. mcCc>=vcB2-0.700  ;
           .AND. mcCc<=vcB2+3.7 .AND. viTe>1
           DO dsT_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB3-0.014 .AND. mfIl<=vfB3+1.2 .AND. mcCc>=vcB3-0.700  ;
           .AND. mcCc<=vcB3+3.7 .AND. viTe>1
           DO afP_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB4-0.014 .AND. mfIl<=vfB4+1.2 .AND. LEN(ALLTRIM(vaFp))<> ;
           0 .AND. mcCc>=vcB4-0.700 .AND. mcCc<=vcB4+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vaFp
           STORE SPACE(50) TO vnAf
           STORE SPACE(15) TO vsPp
           DO daT_4200a WITH "2"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB5-0.014 .AND. mfIl<=vfB5+1.2 .AND. mcCc>=vcB5-0.700  ;
           .AND. mcCc<=vcB5+3.7 .AND. viTe>1
           DO caR_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB6-0.014 .AND. mfIl<=vfB6+1.2 .AND. LEN(ALLTRIM(vcRg))<> ;
           0 .AND. mcCc>=vcB6-0.700 .AND. mcCc<=vcB6+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vcRg
           STORE SPACE(50) TO vnCa
           DO daT_4200a WITH "3"
           DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB7-0.014 .AND. mfIl<=vfB7+1.2 .AND. mcCc>=vcB7-0.700  ;
           .AND. mcCc<=vcB7+3.7 .AND. viTe>1
           DO arE_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB8-0.014 .AND. mfIl<=vfB8+1.2 .AND. LEN(ALLTRIM(vaRe))<> ;
           0 .AND. mcCc>=vcB8-0.700 .AND. mcCc<=vcB8+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vaRe
           STORE SPACE(50) TO vnAr
           DO daT_4200a WITH "4"
           DO prEsiona WITH "3", "DESCAR", vfB8, vcB8
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB9-0.014 .AND. mfIl<=vfB9+1.2 .AND. mcCc>=vcB9-0.700  ;
           .AND. mcCc<=vcB9+3.7 .AND. viTe>1
           DO saL_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB0-0.014 .AND. mfIl<=vfB0+1.2 .AND. LEN(ALLTRIM(vsAl))<> ;
           0 .AND. mcCc>=vcB0-0.700 .AND. mcCc<=vcB0+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(01) TO vsAl
           STORE SPACE(50) TO vnSa
           DO daT_4200a WITH "5"
           DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfBa-0.014 .AND. mfIl<=vfBa+1.2 .AND. mcCc>=vcBa-0.700  ;
           .AND. mcCc<=vcBa+3.7 .AND. viTe>1
           DO peN_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBb-0.014 .AND. mfIl<=vfBb+1.2 .AND. LEN(ALLTRIM(vpEn))<> ;
           0 .AND. mcCc>=vcBb-0.700 .AND. mcCc<=vcBb+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(01) TO vpEn
           STORE SPACE(50) TO vnPe
           DO daT_4200a WITH "6"
           DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfBc-0.014 .AND. mfIl<=vfBc+1.2 .AND. mcCc>=vcBc-0.700  ;
           .AND. mcCc<=vcBc+3.7 .AND. viTe>1
           DO ipS_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBd-0.014 .AND. mfIl<=vfBd+1.2 .AND. LEN(ALLTRIM(viPs))<> ;
           0 .AND. mcCc>=vcBd-0.700 .AND. mcCc<=vcBd+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(01) TO viPs
           STORE SPACE(50) TO vnIp
           DO daT_4200a WITH "7"
           DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfBe-0.014 .AND. mfIl<=vfBe+1.2 .AND. mcCc>=vcBe-0.700  ;
           .AND. mcCc<=vcBe+3.7 .AND. viTe>1
           DO baN_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBf-0.014 .AND. mfIl<=vfBf+1.2 .AND. LEN(ALLTRIM(vbAn))<> ;
           0 .AND. mcCc>=vcBf-0.700 .AND. mcCc<=vcBf+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vbAn, vcTa
           STORE SPACE(50) TO vnBa, vnCt
           DO daT_4200a WITH "8"
           DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfBg-0.014 .AND. mfIl<=vfBg+1.2 .AND. mcCc>=vcBg-0.700  ;
           .AND. mcCc<=vcBg+3.7 .AND. viTe>1
           DO ctA_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBh-0.014 .AND. mfIl<=vfBh+1.2 .AND. LEN(ALLTRIM(vcTa))<> ;
           0 .AND. mcCc>=vcBh-0.700 .AND. mcCc<=vcBh+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vcTa
           STORE SPACE(50) TO vnCt
           DO daT_4200a WITH "8"
           DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfBj-0.014 .AND. mfIl<=vfBj+1.2 .AND. mcCc>=vcBj-0.700  ;
           .AND. mcCc<=vcBj+3.7 .AND. viTe>1
           DO ccO_4200a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBk-0.014 .AND. mfIl<=vfBk+1.2 .AND. LEN(ALLTRIM(vcCo))<> ;
           0 .AND. mcCc>=vcBk-0.700 .AND. mcCc<=vcBk+3.7 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vcCo
           STORE SPACE(50) TO vnCc
           DO daT_4200a WITH "9"
           DO prEsiona WITH "3", "DESCAR", vfBk, vcBk
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mfI0+7.614 .AND. mfIl<=mfI0+8.614 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+16.2 .AND. mcCc<=vcL1+23.4 .AND. vcIv<>01
           STORE 1 TO vcIv
           DO daT_4200a WITH "A"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.614 .AND. mfIl<=mfI0+8.614 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+23.4 .AND. mcCc<=vcL1+32 .AND. vcIv<>02
           STORE 2 TO vcIv
           DO daT_4200a WITH "A"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.614 .AND. mfIl<=mfI0+8.614 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+32 .AND. mcCc<=vcL1+40 .AND. vcIv<>03
           STORE 3 TO vcIv
           DO daT_4200a WITH "A"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.614 .AND. mfIl<=mfI0+8.614 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+40 .AND. mcCc<=vcL1+47.8 .AND. vcIv<>04
           STORE 4 TO vcIv
           DO daT_4200a WITH "A"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.185 .AND. mfIl<=mfI0+10.042 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+16.2 .AND. mcCc<=vcL1+23.4 .AND. vsEx<>01
           STORE 1 TO vsEx
           DO daT_4200a WITH "B"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.185 .AND. mfIl<=mfI0+10.042 .AND. viTe>1 .AND.  ;
           mcCc>=vcL1+23.4 .AND. mcCc<=vcL1+32 .AND. vsEx<>02
           STORE 2 TO vsEx
           DO daT_4200a WITH "B"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+20.9 .AND. mfIl<=mfI0+22.1 .AND. viTe>1 .AND. mcCc>= ;
           mcO0+21.2 .AND. mcCc<=mcO0+28.4 .AND. vrE4<>01
           STORE 1 TO vrE4
           DO daT_4200a WITH "C"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+20.9 .AND. mfIl<=mfI0+22.1 .AND. viTe>1 .AND. mcCc>= ;
           mcO0+28.4 .AND. mcCc<=mcO0+37.2 .AND. vrE4<>02
           STORE 2 TO vrE4
           DO daT_4200a WITH "C"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+20.9 .AND. mfIl<=mfI0+22.1 .AND. viTe>1 .AND. mcCc>= ;
           vcL1+60 .AND. mcCc<=vcL1+67.4 .AND. vcLv=1
           STORE k_F9 TO mkEy
      CASE mfIl>=mfI0+20.9 .AND. mfIl<=mfI0+22.1 .AND. viTe>1 .AND. mcCc>= ;
           vcL1+43 .AND. mcCc<=vcL1+49.8 .AND. vcLv<>1
           STORE 1 TO vcLv
           DO daT_4200a WITH "D"
           DO daT_4200a WITH "E"
           READ TIMEOUT 0.01
           STORE k_F9 TO mkEy
      CASE mfIl>=mfI0+20.9 .AND. mfIl<=mfI0+22.1 .AND. viTe>1 .AND. mcCc>= ;
           vcL1+49.8 .AND. mcCc<=vcL1+58.4 .AND. vcLv<>2
           STORE 2 TO vcLv
           STORE " " TO vcLa
           DO daT_4200a WITH "D"
           DO daT_4200a WITH "E"
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+0.042 .AND. mfIl<=mfI0+2.114 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+30.8 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.535 .AND. mfIl<=mfI0+3.821 .AND. mcCc>=mcO0+vc11- ;
           5.4 .AND. mcCc<=mcO0+vc11+45.2 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+4.035 .AND. mfIl<=mfI0+5.249 .AND. mcCc>=mcO0+vc11- ;
           5.4 .AND. mcCc<=mcO0+vc11+45.2 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+5.607 .AND. mfIl<=mfI0+6.749 .AND. mcCc>=mcO0+vc11- ;
           5.4 .AND. mcCc<=mcO0+vc11+45.2 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+2.535 .AND. mfIl<=mfI0+3.821 .AND. mcCc>=vcL1+17.6  ;
           .AND. mcCc<=vcL1+90 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.749 .AND. mcCc>=mcO0+vc11- ;
           5.4 .AND. mcCc<=mcO0+vc11+27.4 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+9.035 .AND. mfIl<=mfI0+10.249 .AND. mcCc>=mcO0+vc11- ;
           5.4 .AND. mcCc<=mcO0+vc11+27.4 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+10.535 .AND. mfIl<=mfI0+11.749 .AND. mcCc>=mcO0+ ;
           vc11-5.4 .AND. mcCc<=mcO0+vc11+27.4 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+12.035 .AND. mfIl<=mfI0+13.249 .AND. mcCc>=mcO0+ ;
           vc11-5.4 .AND. mcCc<=mcO0+vc11+27.4 .AND. viTe<>9
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+13.607 .AND. mfIl<=mfI0+14.749 .AND. mcCc>=mcO0+ ;
           vc11-5.4 .AND. mcCc<=mcO0+vc11+27.4 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+10.607 .AND. mfIl<=mfI0+11.749 .AND. mcCc>=vcL1+ ;
           vc11-6.4 .AND. mcCc<=vcL1+vc11+48.6 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+13.535 .AND. mfIl<=mfI0+14.749 .AND. mcCc>=vcL1+ ;
           vc11-6.4 .AND. mcCc<=vcL1+vc11+48.6 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.749 .AND. mcCc>=vcL2+vc12- ;
           7.9 .AND. mcCc<=vcL2+vc12+40.1 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+9.107 .AND. mfIl<=mfI0+10.178 .AND. mcCc>=vcL2+vc12- ;
           7.9 .AND. mcCc<=vcL2+vc12+40.1 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+10.535 .AND. mfIl<=mfI0+11.678 .AND. mcCc>=vcL2+ ;
           vc12-7.9 .AND. mcCc<=vcL2+vc12+40.1 .AND. viTe<>15
           STORE 15 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_4200a
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_4200a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden crear, modificar,"
 @ pfIl+1, 1.500 SAY  ;
   "anular y/o eliminar los Trabajadores que figurarán en el Sistema. Los códi-"
 @ pfIl+2, 1.500 SAY  ;
   "gos de Trabajadores son alfanuméricos, es decir, pueden tener letras y"
 @ pfIl+3, 1.500 SAY "números. Trabajadores en Planilla del 0001 al 8999."
 STORE pfIl+5 TO pfIl
 @ pfIl, 1.500 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 23.200 SAY ":" STYLE "BT"
 @ pfIl+1, 23.200 SAY ":" STYLE "BT"
 @ pfIl+2, 23.200 SAY ":" STYLE "BT"
 @ pfIl+0, 5.000 SAY "ESC" STYLE "BT"
 @ pfIl+1, 5.000 SAY "F10" STYLE "BT"
 @ pfIl+2, 5.000 SAY "F1" STYLE "BT"
 @ pfIl+1, 25.200 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 25.200 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl, 25.200 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl, 25.200 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+3 TO pfIl
 IF viTe=1
      @ pfIl, 23.200 SAY ":" STYLE "BT"
      @ pfIl, 5.000 SAY "F2" STYLE "BT"
      @ pfIl, 25.200 SAY "Consulta alfabética de Trabajadores registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 23.200 SAY ":" STYLE "BT"
 @ pfIl+1, 23.200 SAY ":" STYLE "BT"
 @ pfIl+2, 23.200 SAY ":" STYLE "BT"
 @ pfIl+3, 23.200 SAY ":" STYLE "BT"
 @ pfIl+0, 5.000 SAY "F5" STYLE "BT"
 @ pfIl+1, 5.000 SAY "F6" STYLE "BT"
 @ pfIl+2, 5.000 SAY "F7" STYLE "BT"
 @ pfIl+3, 5.000 SAY "F8" STYLE "BT"
 @ pfIl+0, 25.200 SAY "Primer Código de Trabajador"
 @ pfIl+1, 25.200 SAY "Último Código de Trabajador"
 @ pfIl+2, 25.200 SAY "Código de Trabajador posterior al actual"
 @ pfIl+3, 25.200 SAY "Código de Trabajador anterior al actual"
 STORE pfIl+4 TO pfIl
 IF viTe<>1
      @ pfIl, 23.200 SAY ":" STYLE "BT"
      @ pfIl, 5.000 SAY "F9" STYLE "BT"
      @ pfIl, 25.200 SAY "Digitar clave"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 23.200 SAY ":" STYLE "BT"
 @ pfIl+1, 23.200 SAY ":" STYLE "BT"
 @ pfIl+0, 5.000 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 5.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 25.200 SAY "Ir al siguiente campo, llegando al final se graba"
 @ pfIl+1, 25.200 SAY "Ir al campo derecho, llegando al final se graba"
 STORE pfIl+2 TO pfIl
 IF viTe<>1
      @ pfIl, 23.200 SAY ":" STYLE "BT"
      @ pfIl, 5.000 SAY "<- CTRL" STYLE "BT"
      @ pfIl, 25.200 SAY "Ir al campo izquierdo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 23.200 SAY ":" STYLE "BT"
 @ pfIl, 5.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 25.200 SAY "Ir al campo inferior, llegando al final se graba"
 STORE pfIl+1 TO pfIl
 IF viTe<>1
      @ pfIl+0, 23.200 SAY ":" STYLE "BT"
      @ pfIl+1, 23.200 SAY ":" STYLE "BT"
      @ pfIl+2, 23.200 SAY ":" STYLE "BT"
      @ pfIl+3, 23.200 SAY ":" STYLE "BT"
      @ pfIl+0, 5.000 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl+1, 5.000 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+2, 5.000 SAY "CTRL END" STYLE "BT"
      @ pfIl+3, 5.000 SAY "CTRL DEL" STYLE "BT"
      @ pfIl+0, 25.200 SAY "Ir al campo superior"
      @ pfIl+1, 25.200 SAY "Ir al primer campo"
      @ pfIl+2, 25.200 SAY "Ir al último campo"
      @ pfIl+3, 25.200 SAY "Eliminar definitivamente un código"
      STORE pfIl+4 TO pfIl
 ENDIF
 @ pfIl, 23.200 SAY ":" STYLE "BT"
 @ pfIl, 5.000 SAY "ALT DEL" STYLE "BT"
 @ pfIl, 25.200 SAY "Activar/Anular Trabajador anulado"
 STORE pfIl+1 TO pfIl
 IF viTe<>1
      @ pfIl, 23.200 SAY ":" STYLE "BT"
      @ pfIl, 5.000 SAY "TAB" STYLE "BT"
      @ pfIl, 25.200 SAY "Grabar Datos"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7,  ;
         vfB8, vfB9
 RELEASE vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg, vfBh, vfBj, vfBk,  ;
         vcBi, vcB1
 RELEASE vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb,  ;
         vcBc, vcBd
 RELEASE vcBe, vcBf, vcBg, vcBh, vcBj, vcBk, vtB1, vtB2, vtB3, vtB4, vtB5,  ;
         vtB6, vtB7
 RELEASE vtB8, vtB9, vtB0, vtBa, vcOd, vaPp, vaPm, vnOm, vdIr, vdIs, vnDi,  ;
         vdPt, vnDp
 RELEASE vtEl, veLe, vmIl, vrUc, vcAr, vcIv, vsEx, vsSo, vaFp, vnAf, vsPp,  ;
         vfNa, vlNa
 RELEASE vnAc, vbAn, vnBa, vcTa, vnCt, vsAl, vnSa, vpEn, vnPe, viPs, vnIp,  ;
         vrE4, vcCo
 RELEASE vnCc, vcRg, vnCa, vaRe, vnAr, vgRu, vfOt, cfOt, veSt, vcLa, ccLa,  ;
         vcLv, vnUm
 RELEASE vlLn, vcLl, vcL1, vcL2, vc11, vc12
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
