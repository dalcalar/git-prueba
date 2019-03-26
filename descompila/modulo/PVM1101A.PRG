 PARAMETER plIs
 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Clientes vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Vendedores vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
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
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
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
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vuFi, vuCo, vcO0, ccO0, vfI0, cfI0, vfI1, vfI2,  ;
        vmF2, vmC2
 PUBLIC vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB8, vcBi, vcB1, vcB2,  ;
        vcB3, vcB4
 PUBLIC vcB5, vcB6, vcB8, vcL1, vcL2, vcL3, vtB1, vtB2, vtB3, vtB4, vtB5,  ;
        vtB6, vcOd
 PUBLIC vnOm, xnOm, vaLi, vtIp, vnTi, vdTc, vdMc, vrUc, vtDi, vdNi, vsUc,  ;
        vdCt, vcRe
 PUBLIC vdIr, vdIs, vnDi, xdSt, vdPt, xdPt, vnDp, vdEp, veNt, vdIe, vnD1,  ;
        vdP1, vnP1
 PUBLIC vcT1, vcA1, vcT2, vcA2, vcT3, vcA3, vtL1, vtL2, vtL3, vfA1, vfA2,  ;
        vfA3, vaN1
 PUBLIC vaN2, vaN3, vmAi, vmA2, vmA3, vtOt, vcOn, veSt, viOm, vmEd, vvEn,  ;
        vnVe, vlIs
 PUBLIC vlI2, vlI3, vgIr, vlIc, vrEg, viNi, vmOn, vaLq, vaNo, vfNa, vtPo,  ;
        vpPe, vnO1
 PUBLIC vaPp, vaPm, vtPp, vsWw
 PUBLIC vpAn_99
 STORE CTOD("  /  /    ") TO viNi, vfNa
 STORE SPACE(04) TO vcOd
 STORE SPACE(11) TO vrUc
 STORE SPACE(15) TO vdNi
 STORE SPACE(02) TO vtIp, vvEn, vdIs, vdIe
 STORE SPACE(70) TO vnOm, xnOm, vdIr, veNt
 STORE SPACE(04) TO vaNo, vaN1, vaN2, vaN3, vtL1, vtL2, vtL3, vfA1
 STORE SPACE(20) TO vfA2, vfA3, vaLi, vlIc, vrEg, vaPp, vaPm, vnO1
 STORE SPACE(50) TO vnTi, vcT1, vcT2, vcT3, vnVe, vnDi, vnDp, vnD1, vnP1
 STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi, vmA2, vmA3, vgIr, vnB1, vnB2, vnB3
 STORE "01" TO vsUc
 STORE " " TO vcOn
 STORE "1" TO veSt
 STORE 2 TO vtPo
 STORE 02 TO vcRe, vaLq
 STORE 01 TO viTe, viOm, vtPp
 STORE 00 TO vdTc, vdMc, vdCt, vtOt, vlIs, vlI2, vlI3, viT1, vpPe, vsWw
 STORE 99 TO mkEy
 STORE mmOn TO vmOn
 STORE "6" TO vtDi
 DO reS_0001a
 STORE 28.2 TO muFi
 STORE 194.2 TO muCo
 STORE 25 TO vcL1
 IF mvId=1
      STORE 1 TO vmEd
 ELSE
      STORE 0 TO vmEd
 ENDIF
 SELECT tiPos_cli
 STORE f9110tip TO vtIp
 STORE f9110nti TO vnTi
 STORE f9110dct TO vdTc
 STORE f9110max TO vdMc
 SELECT clIentes
 SET READBORDER ON
 DO p00_1101a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_1101a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT clIentes
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Clientes registrados..." TO mmSj
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
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f1101cod TO vcOd
                     DO coD_1101a
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1101a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_1101a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=7 .AND. plIs$"24" .AND. vtPo=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=11 .AND. plIs$"13" .AND. vtPo= ;
                1 .AND. vcRe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=12 .AND. plIs$"13" .AND. vtPo= ;
                1 .AND. vcRe=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5 .AND. plIs$"24" .AND. vtPo=2  ;
                .AND. vtPp=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=9 .AND. plIs$"13" .AND. vtPo=2  ;
                .AND. vtPp=1 .AND. vcRe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=10 .AND. plIs$"13" .AND. vtPo= ;
                2 .AND. vtPp=1 .AND. vcRe=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=6 .AND. plIs$"24" .AND. vtPo=2  ;
                .AND. vtPp=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=10 .AND. plIs$"13" .AND. vtPo= ;
                2 .AND. vtPp=2 .AND. vcRe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=11 .AND. plIs$"13" .AND. vtPo= ;
                2 .AND. vtPp=2 .AND. vcRe=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vtPo=1 .AND. (viTe<3 .OR. viTe=5  ;
                .OR. viTe=6)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vtPo=2 .AND. vtPp=1 .AND. (viTe<4  ;
                .OR. viTe=5)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vtPo=2 .AND. vtPp=2 .AND. (viTe<3  ;
                .OR. viTe=5)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del .AND. plIs$"34"
                STORE "En este nivel no se puede usar esta opción..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. plIs$"12"
                SELECT clIentes
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_1101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. plIs$"34"
                STORE "En este nivel no se puede usar esta opción..." TO mmSj
           CASE mkEy=k_Alt_del .AND. plIs$"12"
                SELECT clIentes
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO CASE
                               CASE f1101est="1"
                                    DO prE_docum WITH  ;
                                       "¿Desea anular este Registro?"
                               CASE f1101est="9"
                                    DO prE_docum WITH  ;
                                       "¿Desea activar este Registro?"
                          ENDCASE
                          IF moPc$"Ss"
                               DO anU_1101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe>1
                DO tiP_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1101cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_1101a
                          DO diS_1101a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1101cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_1101a
                          DO diS_1101a
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF f1101cod=vcOd
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1101cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_1101a
                          DO diS_1101a
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f1101cod>=vcOd
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f1101cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_1101a
                          DO diS_1101a
                ENDCASE
           CASE mkEy=k_Clic
                DO grA_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO deT_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE ((viTe=7 .AND. plIs$"24" .AND. vtPo=1) .OR. (viTe=11  ;
                .AND. plIs$"13" .AND. vtPo=1 .AND. vcRe=2) .OR. (viTe=12  ;
                .AND. plIs$"13" .AND. vtPo=1 .AND. vcRe=1) .OR. (viTe=5  ;
                .AND. plIs$"24" .AND. vtPo=2 .AND. vtPp=1) .OR. (viTe=9  ;
                .AND. plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2)  ;
                .OR. (viTe=10 .AND. plIs$"13" .AND. vtPo=2 .AND. vtPp=1  ;
                .AND. vcRe=1) .OR. (viTe=6 .AND. plIs$"24" .AND. vtPo=2  ;
                .AND. vtPp=2) .OR. (viTe=10 .AND. plIs$"13" .AND. vtPo=2  ;
                .AND. vtPp=2 .AND. vcRe=2) .OR. (viTe=11 .AND. plIs$"13"  ;
                .AND. vtPo=2 .AND. vtPp=2 .AND. vcRe=1)) .AND. (mkEy= ;
                k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR. mkEy= ;
                k_Tab)
                DO veR_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO grA_1101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 1 TO viTe, viT1
                     DO deT_1101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
           CASE mkEy=k_Enter
                DO veR_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           CASE mkEy=k_Down
                DO veR_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE vtPo=1
                               DO CASE
                                    CASE viTe=2
                                         STORE 5 TO ciTx
                                    CASE viTe=3
                                         STORE 5 TO ciTx
                                    CASE viTe=5
                                         STORE 7 TO ciTx
                                    CASE viTe=4 .AND. plIs$"13"
                                         STORE 8 TO ciTx
                                    CASE (viTe=8 .OR. viTe=9 .OR. viTe= ;
                                     10) .AND. plIs$"13"
                                         STORE 11 TO ciTx
                                    CASE viTe=11 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 12 TO ciTx
                                    CASE viTe=6 .OR. (viTe=7 .AND. plIs$"13")
                                         DO CASE
                                              CASE plIs$"24"
                                                   STORE 7 TO ciTx
                                              CASE plIs$"13" .AND. vcRe=2
                                                   STORE 11 TO ciTx
                                              CASE plIs$"13" .AND. vcRe=1
                                                   STORE 12 TO ciTx
                                         ENDCASE
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_1101a
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
                                              DO grA_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 1 TO viTe, viT1
                                              DO deT_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vtPo=2 .AND. vtPp=1
                               DO CASE
                                    CASE viTe=2
                                         STORE 4 TO ciTx
                                    CASE viTe=3
                                         STORE 5 TO ciTx
                                    CASE (viTe=6 .OR. viTe=7 .OR. viTe=8)  ;
                                     .AND. plIs$"13"
                                         STORE 9 TO ciTx
                                    CASE viTe=9 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 10 TO ciTx
                                    CASE viTe=5 .AND. plIs$"13"
                                         DO CASE
                                              CASE vcRe=2
                                                   STORE 9 TO ciTx
                                              CASE vcRe=1
                                                   STORE 10 TO ciTx
                                         ENDCASE
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_1101a
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
                                              DO grA_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 1 TO viTe, viT1
                                              DO deT_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vtPo=2 .AND. vtPp=2
                               DO CASE
                                    CASE viTe=2 .OR. viTe=3
                                         STORE 6 TO ciTx
                                    CASE viTe=4 .AND. plIs$"13"
                                         STORE 7 TO ciTx
                                    CASE viTe=4 .AND. plIs$"24"
                                         STORE 6 TO ciTx
                                    CASE (viTe=7 .OR. viTe=8 .OR. viTe=9)  ;
                                     .AND. plIs$"13"
                                         STORE 10 TO ciTx
                                    CASE viTe=10 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 11 TO ciTx
                                    CASE viTe=5 .OR. (viTe=6 .AND. plIs$"13")
                                         DO CASE
                                              CASE plIs$"24"
                                                   STORE 6 TO ciTx
                                              CASE plIs$"13" .AND. vcRe=2
                                                   STORE 10 TO ciTx
                                              CASE plIs$"13" .AND. vcRe=1
                                                   STORE 11 TO ciTx
                                         ENDCASE
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_1101a
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
                                              DO grA_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 1 TO viTe, viT1
                                              DO deT_1101a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_1101a
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
                     ENDIF
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE vtPo=1
                               DO CASE
                                    CASE viTe=5 .AND. plIs$"13"
                                         STORE 8 TO ciTx
                                    CASE viTe=7 .AND. plIs$"13"
                                         STORE 10 TO ciTx
                                    CASE viTe=10 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 12 TO ciTx
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vtPo=2 .AND. vtPp=1
                               DO CASE
                                    CASE viTe=4 .AND. plIs$"13"
                                         STORE 6 TO ciTx
                                    CASE viTe=5 .AND. plIs$"13"
                                         STORE 9 TO ciTx
                                    CASE viTe=8 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 10 TO ciTx
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vtPo=2 .AND. vtPp=2
                               DO CASE
                                    CASE viTe=9 .AND. plIs$"13" .AND. vcRe=1
                                         STORE 11 TO ciTx
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_1101a
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
                     ENDIF
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE vtPo=1 .AND. viTe=8 .AND. plIs$"13"
                          STORE 5 TO viTe
                     CASE vtPo=1 .AND. viTe=11 .AND. plIs$"13"
                          STORE 7 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. viTe=6 .AND. plIs$"13"
                          STORE 4 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. viTe=9 .AND. plIs$"13"
                          STORE 5 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Up
                DO CASE
                     CASE vtPo=1 .AND. (viTe=3 .OR. viTe=4)
                          STORE 1 TO viTe
                     CASE vtPo=1 .AND. viTe=5
                          STORE 2 TO viTe
                     CASE vtPo=1 .AND. viTe=6 .AND. plIs$"13"
                          STORE 1 TO viTe
                     CASE vtPo=1 .AND. viTe=7 .AND. plIs$"13"
                          STORE 5 TO viTe
                     CASE vtPo=1 .AND. (viTe=8 .OR. viTe=9 .OR. viTe=10)  ;
                          .AND. plIs$"13"
                          STORE 4 TO viTe
                     CASE vtPo=1 .AND. viTe=11 .AND. plIs$"13"
                          STORE 8 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. viTe=3
                          STORE 1 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. viTe=4
                          STORE 2 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. (viTe=6 .OR. viTe=7  ;
                          .OR. viTe=8) .AND. plIs$"13"
                          STORE 2 TO viTe
                     CASE vtPo=2 .AND. vtPp=1 .AND. viTe=9 .AND. plIs$"13"
                          STORE 6 TO viTe
                     CASE vtPo=2 .AND. vtPp=2 .AND. (viTe=3 .OR. viTe=4)
                          STORE 1 TO viTe
                     CASE vtPo=2 .AND. vtPp=2 .AND. viTe=5
                          STORE 1 TO viTe
                     CASE vtPo=2 .AND. vtPp=2 .AND. viTe=6
                          STORE 2 TO viTe
                     CASE vtPo=2 .AND. vtPp=2 .AND. (viTe=7 .OR. viTe=8  ;
                          .OR. viTe=9) .AND. plIs$"13"
                          STORE 4 TO viTe
                     CASE vtPo=2 .AND. vtPp=2 .AND. viTe=10 .AND. plIs$"13"
                          STORE 7 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE plIs$"24" .AND. vtPo=1
                          STORE 7 TO ciTx
                     CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=2
                          STORE 11 TO ciTx
                     CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                          STORE 12 TO ciTx
                     CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                          STORE 5 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                          STORE 9 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=1
                          STORE 10 TO ciTx
                     CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                          STORE 6 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=2 .AND. vcRe=2
                          STORE 10 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=2 .AND. vcRe=1
                          STORE 11 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_1101a
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
                DO CASE
                     CASE plIs$"24" .AND. vtPo=1
                          STORE 7 TO ciTx
                     CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=2
                          STORE 11 TO ciTx
                     CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                          STORE 12 TO ciTx
                     CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                          STORE 5 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                          STORE 9 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=1
                          STORE 10 TO ciTx
                     CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                          STORE 6 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=2 .AND. vcRe=2
                          STORE 10 TO ciTx
                     CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=2 .AND. vcRe=1
                          STORE 11 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_1101a
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
                     DO grA_1101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 1 TO viTe, viT1
                     DO deT_1101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF plIs$"34"
                          DO prEsiona WITH "3", "BORRAR", mmF1+0.1, mmC1+2
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF viTe<>1
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF LEN(ALLTRIM(vvEn))=0
                     DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                ELSE
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ELSE
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
           ENDIF
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(150) Font "&mLetRom",9 Style "BQ" Size 1,150
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+vCL1+04 Say "CAMPO DE 4 CARACTERES ALFANUMÉRICOS, NO PUEDE SER 0000, NI TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=2
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=3
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=4
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=5
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=6
                     @mMF2,mMC2+vCL1+06 Say "EL DOCUMENTO DE IDENTIDAD ES DE UN MÁXIMO DE 15 CARACTERES ALFANUMÉRICOS..."         Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=7
                     @mMF2,mMC2+vCL1+22 Say "CAMPO FECHA: DIA/MES/AÑO, PUEDE DEJARSE VACÍO..."                                    Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=8 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-1 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=9 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-2 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=10 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-3 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=11 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+04 Say "SI NO SE USA PUEDE QUEDARSE EN 0, CASO CONTRARIO ES UN DCTO AUTOMÁTICO EN VENTAS..." Font "&mLetRom",9 Style "BQ"
                CASE vtPo=1 .AND. viTe=12 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+24 Say "SI EL CLIENTE TIENE CRÉDITO SE DEBE LLENAR ESTE CAMPO..."                            Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=2
                     @mMF2,mMC2+vCL1+16 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                       Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=3
                     @mMF2,mMC2+vCL1+13 Say "EL RUC ES DE 11 DÍGITOS, SI SE VA A LLENAR NO PUEDE TENER ESPACIOS VACÍOS..."        Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=4
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=5
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=6 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-1 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=7 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-2 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=8 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-3 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=9 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+04 Say "SI NO SE USA PUEDE QUEDARSE EN 0, CASO CONTRARIO ES UN DCTO AUTOMÁTICO EN VENTAS..." Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=1 .AND. viTe=10 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+24 Say "SI EL CLIENTE TIENE CRÉDITO SE DEBE LLENAR ESTE CAMPO..."                            Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=2
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=3
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=4
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=5
                     @mMF2,mMC2+vCL1+13 Say "EL RUC ES DE 11 DÍGITOS, SI SE VA A LLENAR NO PUEDE TENER ESPACIOS VACÍOS..."        Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=6
                     @mMF2,mMC2+vCL1+12 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."             Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=7 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-1 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=8 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-2 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=9 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+16 Say "LISTA DE PRECIOS-3 POR DEFECTO EN VTA., SI NO SE USA PUEDEN SER 0..."                Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=10 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+04 Say "SI NO SE USA PUEDE QUEDARSE EN 0, CASO CONTRARIO ES UN DCTO AUTOMÁTICO EN VENTAS..." Font "&mLetRom",9 Style "BQ"
                CASE vtPo=2 .AND. vtPp=2 .AND. viTe=11 .AND. plIs$"13"
                     @mMF2,mMC2+vCL1+24 Say "SI EL CLIENTE TIENE CRÉDITO SE DEBE LLENAR ESTE CAMPO..."                            Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+019.0 Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.8  Pict "!!!!"        Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=2) .OR. (vtPo=2 .AND. vtPp=2 .AND. viTe=2)
                @mFI0+03.3,mCO0+45.0 Edit vAPP Font "&mLetAri",9 Style "NQ" Size 1,22,20
           CASE (vtPo=1 .AND. viTe=3) .OR. (vtPo=2 .AND. vtPp=2 .AND. viTe=3)
                @mFI0+03.3,mCO0+70.0 Edit vAPM Font "&mLetAri",9 Style "NQ" Size 1,22,20
           CASE (vtPo=1 .AND. viTe=4) .OR. (vtPo=2 .AND. vtPp=2 .AND. viTe=4)
                @mFI0+03.3,mCO0+95.0 Edit vNO1 Font "&mLetAri",9 Style "NQ" Size 1,22,20
           CASE (vtPo=1 .AND. viTe=5) .OR. (vtPo=2 .AND. vtPp=1 .AND.  ;
                viTe=4) .OR. (vtPo=2 .AND. vtPp=2 .AND. viTe=6)
                @mFI0+04.8,mCO0+45.0 Edit vALI Font "&mLetAri",9 Style "NQ" Size 1,18,20
           CASE vtPo=1 .AND. viTe=6
                @mFI0+06.3,mCO0+10.0 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,15.4,15            Color ,&mColBlN
           CASE vtPo=1 .AND. viTe=7
                @mFI0+06.3,mCO0+45.0 Get  vFNA Font "&mLetAri",9 Style "NQ" Size 1,12                 Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=8 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=1 .AND. viTe=6 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=2 .AND. viTe=7 .AND. plIs$"13")
                @mFI0+04.8,vCL2+67.8 Get  vLIS Font "&mLetAri",9 Style "NQ" Size 1,3.2  Pict "99"     Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=9 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=1 .AND. viTe=7 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=2 .AND. viTe=8 .AND. plIs$"13")
                @mFI0+04.8,vCL2+73.8 Get  vLI2 Font "&mLetAri",9 Style "NQ" Size 1,3.2  Pict "99"     Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=10 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=1 .AND. viTe=8 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=2 .AND. viTe=9 .AND. plIs$"13")
                @mFI0+04.8,vCL2+79.8 Get  vLI3 Font "&mLetAri",9 Style "NQ" Size 1,3.2  Pict "99"     Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=11 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=1 .AND. viTe=9 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=2 .AND. viTe=10 .AND. plIs$"13")
                @mFI0+06.3,vCL2+67.8 Get  vDCT Font "&mLetAri",9 Style "NQ" Size 1,7.3  Pict "99.99"  Color ,&mColBlN
           CASE (vtPo=1 .AND. viTe=12 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=1 .AND. viTe=10 .AND. plIs$"13") .OR. (vtPo=2 .AND.  ;
                vtPp=2 .AND. viTe=11 .AND. plIs$"13")
                @mFI0+07.8,vCL2+112  Get  vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999999" Color ,&mColBlN
           CASE vtPo=2 .AND. vtPp=1 .AND. viTe=2
                @mFI0+03.3,mCO0+45   Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,80,70
           CASE vtPo=2 .AND. ((vtPp=1 .AND. viTe=3) .OR. (vtPp=2 .AND. viTe=5))
                @mFI0+04.8,mCO0+10   Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "99999999999" Color ,&mColBlN
           CASE vtPo=2 .AND. vtPp=1 .AND. viTe=5
                @mFI0+06.3,mCO0+45   Edit vGIR Font "&mLetAri",9 Style "NQ" Size 1,18,20
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_1101a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código de Cliente no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "Código de Cliente no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vcOd="0000"
           STORE "Código de Cliente no puede ser 0000...             " TO mmSj
      CASE viTe=1
           SEEK vcOd
           IF EOF()
                DO coL_fonaz
                @mFI0+0.4,mCO0+mUCO-13 Say "-NUEVO-" Font "&LetRom",11 Style "BQ" Size 1,8
                STORE SPACE(02) TO vnOm, vaPp, vaPm, vnO1, vdIr, vdPt,  ;
                      vdIs, vrUc, vdNi
                STORE SPACE(02) TO vtL1, vtL2, vtL3, vaN1, vaN2, vaN3,  ;
                      vfA1, vfA2, vfA3
                STORE SPACE(02) TO vdIe, vdP1, vnDi, vnDp, vnD1, vnP1,  ;
                      vgIr, vvEn, vnVe
                STORE SPACE(02) TO vcA1, vcA2, vcA3, vmAi, vmA2, vmA3,  ;
                      vcT1, vcT2, vcT3
                STORE SPACE(02) TO vaNo, veNt, vaLi, vlIc
                STORE SPACE(02) TO vrEg, vcOn
                STORE 00 TO vdTc, vdMc, vdCt, vtOt, vlIs, vlI2, vlI3
                STORE 02 TO vcRe, vaLq, vtPo
                STORE 01 TO viOm, vtPp
                STORE "01" TO vsUc
                STORE " " TO vcOn
                STORE "1" TO veSt
                STORE "6" TO vtDi
                STORE mmOn TO vmOn
                STORE mpPe TO vpPe
                STORE CTOD("  /  /    ") TO viNi, vfNa, vfAn
                IF mvId=1
                     STORE 1 TO vmEd
                ELSE
                     STORE 0 TO vmEd
                ENDIF
           ELSE
                DO muE_1101a
           ENDIF
           DO diS_1101a
           DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnTi))=0
           STORE "Tipo de Cliente no puede estar vacío..." TO mmSj
      CASE vtPo=1 .AND. viTe=2 .AND. LEN(ALLTRIM(vaPp))=0
           STORE "Apellido Paterno no puede estar vacío..." TO mmSj
      CASE vtPo=1 .AND. vtPp=1 .AND. viTe=6 .AND. LEN(ALLTRIM(vdNi))<>0
           DO orD_0000a WITH "1101", "V", "F1101ELE", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vdNi
           IF  .NOT. EOF() .AND. f1101cod<>vcOd
                STORE "D.N.I. o Documento de Identidad ya registrado..."  ;
                      TO mmSj
           ELSE
                IF EOF()
                     STORE 0 TO vsWw
                     DO veR_dni IN FAC0000A WITH "1", vdNi
                     IF mkEy=1733 .AND. maDm=1
                          DO prE_docum WITH  ;
                             "¿DNI no se encuentra en la BASE de RENIEC... Desea Agregarlo?"
                          IF moPc$"Ss"
                               IF LEN(ALLTRIM(vaPp))=0 .AND.  ;
                                  LEN(ALLTRIM(vnO1))=0
                                    STORE  ;
                                     "Apellido Paterno, Materno y Nombres tienen que estar ingresados..."  ;
                                     TO mmSj
                               ELSE
                                    STORE 1 TO vsWw
                               ENDIF
                          ENDIF
                     ELSE
                          SELECT suCursal
                          SEEK vcOd+"01"
                          IF EOF()
                               STORE "01" TO vsUc
                               DO grA_1101b IN PVM1101B
                               DO grA_1101a
                               STORE 3 TO viTe, viT1
                               STORE 2 TO viOm
                               DO coL_fonaz
                               @mFI0+0.4,mCO0+mUCO-13 Say "-EXISTE-" Font "&LetRom",11 Style "BQ" Size 1,8
                          ENDIF
                          DO diS_1101a
                     ENDIF
                ENDIF
           ENDIF
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE vtPo=1 .AND. viTe=8 .AND. plIs$"13" .AND. (vlIs<0 .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=1 .AND. viTe=9 .AND. plIs$"13" .AND. (vlI2<0 .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=1 .AND. viTe=10 .AND. plIs$"13" .AND. (vlI3<0 .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=1 .AND. viTe=11 .AND. plIs$"13" .AND. vdCt<0
           STORE "Porcentaje de Descuento no puede ser menor a cero..." TO mmSj
      CASE vtPo=1 .AND. viTe=11 .AND. plIs$"13" .AND. vdCt>0 .AND. vdCt> ;
           vdMc .AND. vdMc>0
           STORE "Porcentaje de Descuento es mayor al máximo del Tipo de Cliente..."  ;
                 TO mmSj
      CASE vtPo=1 .AND. viTe=12 .AND. plIs$"13" .AND. vtOt=0 .AND. vcRe=1
           STORE "Monto Máximo de Crédito no puede ser 0..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre o Razón Social no puede estar vacío... " TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=3 .AND. LEN(ALLTRIM(vrUc))<>0  ;
           .AND. AT(" ", vrUc)<>0
           STORE "Si se llena RUC, no puede tener espacios vacíos..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=3 .AND. LEN(ALLTRIM(vrUc))<>0  ;
           .AND. viOm=1
           DO vaL_ruc IN FAC0000A WITH vrUc
           IF mkEy=99
                RETURN
           ENDIF
           SELECT clIentes
           STORE mkEy TO ckEy
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vrUc
           IF  .NOT. EOF() .AND. f1101cod<>vcOd
                STORE "RUC ya registrado..." TO mmSj
           ENDIF
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF LEN(ALLTRIM(mmSj))=0
                PRIVATE pdP1, pdI1
                STORE " " TO pdP1, pdI1
                SEEK vcOd
                IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                     DO veR_ruc IN FAC0000A WITH "1", vrUc
                     IF mkEy=1733 .OR. mkEy<=-204
                     ELSE
                          DO leN_0000a IN FAC0000A WITH "4"
                          DO leN_0000a IN FAC0000A WITH "5"
                          DO leN_0000a IN FAC0000A WITH "C"
                          DO leN_0000a IN FAC0000A WITH "D"
                          STORE vdIs TO vnDi
                          STORE vdEp TO vnDp
                          STORE pdP1 TO vdPt
                          STORE pdI1 TO vdIs
                          SELECT suCursal
                          SEEK vcOd+"01"
                          IF EOF()
                               STORE "01" TO vsUc
                               DO grA_1101b IN PVM1101B
                               DO grA_1101a
                               STORE 3 TO viTe, viT1
                               STORE 2 TO viOm
                               DO coL_fonaz
                               @mFI0+0.4,mCO0+mUCO-13 Say "-EXISTE-" Font "&LetRom",11 Style "BQ" Size 1,8
                          ENDIF
                          DO diS_1101a
                     ENDIF
                ENDIF
                RELEASE pdP1, pdI1
           ENDIF
           STORE ckEy TO mkEy
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=6 .AND. plIs$"13" .AND. (vlIs<0  ;
           .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=7 .AND. plIs$"13" .AND. (vlI2<0  ;
           .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=8 .AND. plIs$"13" .AND. (vlI3<0  ;
           .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=9 .AND. plIs$"13" .AND. vdCt<0
           STORE "Porcentaje de Descuento no puede ser menor a cero..." TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=9 .AND. plIs$"13" .AND. vdCt>0  ;
           .AND. vdCt>vdMc .AND. vdMc>0
           STORE "Porcentaje de Descuento es mayor al máximo del Tipo de Cliente..."  ;
                 TO mmSj
      CASE vtPo=2 .AND. vtPp=1 .AND. viTe=10 .AND. plIs$"13" .AND. vtOt=0  ;
           .AND. vcRe=1
           STORE "Monto Máximo de Crédito no puede ser 0..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=2 .AND. LEN(ALLTRIM(vaPp))=0
           STORE "Apellido Paterno no puede estar vacío..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0  ;
           .AND. AT(" ", vrUc)<>0
           STORE "Si se llena RUC, no puede tener espacios vacíos..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0  ;
           .AND. viOm=1
           DO vaL_ruc IN FAC0000A WITH vrUc
           IF mkEy=99
                RETURN
           ENDIF
           SELECT clIentes
           STORE mkEy TO ckEy
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vrUc
           IF  .NOT. EOF() .AND. f1101cod<>vcOd
                STORE "RUC ya registrado..." TO mmSj
           ENDIF
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF LEN(ALLTRIM(mmSj))=0
                PRIVATE pdP1, pdI1
                STORE " " TO pdP1, pdI1
                SEEK vcOd
                IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                     DO veR_ruc IN FAC0000A WITH "1", vrUc
                     IF mkEy=1733 .OR. mkEy<=-204
                     ELSE
                          DO leN_0000a IN FAC0000A WITH "4"
                          DO leN_0000a IN FAC0000A WITH "5"
                          DO leN_0000a IN FAC0000A WITH "C"
                          DO leN_0000a IN FAC0000A WITH "D"
                          STORE vdIs TO vnDi
                          STORE vdEp TO vnDp
                          STORE pdP1 TO vdPt
                          STORE pdI1 TO vdIs
                          SELECT suCursal
                          SEEK vcOd+"01"
                          IF EOF()
                               STORE "01" TO vsUc
                               DO grA_1101b IN PVM1101B
                               DO grA_1101a
                               STORE 3 TO viTe, viT1
                               STORE 2 TO viOm
                               DO coL_fonaz
                               @mFI0+0.4,mCO0+mUCO-13 Say "-EXISTE-" Font "&LetRom",11 Style "BQ" Size 1,8
                          ENDIF
                          DO diS_1101a
                     ENDIF
                ENDIF
                RELEASE pdP1, pdI1
           ENDIF
           STORE ckEy TO mkEy
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=7 .AND. plIs$"13" .AND. (vlIs<0  ;
           .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=8 .AND. plIs$"13" .AND. (vlI2<0  ;
           .OR. vlIs>mlSt)
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=9 .AND. plIs$"13" .AND. (vlI3<0  ;
           .OR. vlIs>mlSt) .AND. plIs$"13"
           STORE "Lista de Precios no permitida..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=10 .AND. plIs$"13" .AND. vdCt>0  ;
           .AND. vdCt>vdMc .AND. vdMc>0
           STORE "Porcentaje de Descuento no puede ser menor a cero..." TO mmSj
      CASE vtPo=2 .AND. vtPp=2 .AND. viTe=11 .AND. plIs$"13" .AND. vtOt=0  ;
           .AND. vcRe=1
           STORE "Monto Máximo de Crédito no puede ser 0..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_1101a
 PRIVATE psWx
 STORE 0 TO psWx
 DO coL_fonaz
 DO CASE
      CASE f1101est="9"
           @mFI0+0.4,mCO0+mUCO-13 Say "-ANULAD-" Font "&LetRom",11 Style "BQ" Size 1,8
      OTHERWISE
           @mFI0+0.4,mCO0+mUCO-13 Say "-EXISTE-" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDCASE
 STORE f1101cod TO vcOd
 STORE f1101nom TO vnOm
 STORE f1101app TO vaPp
 STORE f1101apm TO vaPm
 STORE f1101no1 TO vnO1
 STORE f1101dct TO vdCt
 STORE f1101ppe TO vpPe
 STORE f1101ali TO vaLi
 STORE f1101tdi TO vtDi
 STORE f1101ruc TO vrUc
 STORE f1101ele TO vdNi
 STORE f1101tip TO vtIp
 STORE f1101med TO vmEd
 STORE f1101ven TO vvEn
 STORE f1101lis TO vlIs
 STORE f1101li2 TO vlI2
 STORE f1101li3 TO vlI3
 STORE f1101gir TO vgIr
 STORE f1101lic TO vlIc
 STORE f1101reg TO vrEg
 STORE f1101ini TO viNi
 STORE f1101cre TO vcRe
 STORE f1101mon TO vmOn
 STORE f1101tpo TO vtPo
 STORE f1101tpp TO vtPp
 STORE f1101nac TO vfNa
 STORE f1101tot TO vtOt
 STORE f1101con TO vcOn
 STORE f1101est TO veSt
 STORE 02 TO viOm
 IF vtPp<=0
      STORE 1 TO vtPp
 ENDIF
 IF vtPo<2 .AND. LEN(ALLTRIM(vrUc))<>0
      STORE 2 TO vtPo
      STORE 1 TO psWx
 ENDIF
 SELECT tiPos_cli
 SEEK vtIp
 IF EOF()
      STORE "Tipo de Cliente ha sido borrado..." TO vnTi
      STORE 00 TO vdTc, vdMc
 ELSE
      STORE f9110nti TO vnTi
      STORE f9110dct TO vdTc
      STORE f9110max TO vdMc
 ENDIF
 SELECT veNdedores
 SEEK vvEn
 IF EOF()
      STORE SPACE(50) TO vnVe
 ELSE
      STORE f9113nom TO vnVe
 ENDIF
 SELECT suCursal
 SEEK vcOd
 IF EOF()
      STORE 00 TO vdCt, vpPe
      STORE 02 TO vaLq
      STORE "01" TO vsUc
      STORE SPACE(02) TO vdIs, vdIe
      STORE SPACE(70) TO vdIr, veNt
      STORE SPACE(04) TO vaNo, vaN1, vaN2, vaN3
      STORE SPACE(50) TO vcT1, vcT2, vcT3, vnDi, vnD1
      STORE SPACE(20) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
      STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi, vmA2, vmA3
 ELSE
      SEEK vcOd+vsUc
      IF EOF()
           SEEK vcOd
      ENDIF
      DO muE_1101b IN PVM1101B
 ENDIF
 SELECT clIentes
 IF psWx=1
      DO grA_1101a
 ENDIF
 RELEASE psWx
ENDPROC
*
PROCEDURE Ppe_1101a
 DO coL_fondo
 IF vtPo=2 .AND. vtPp=1 .AND. mpPe>0
      @mFI0+6.1,vCL2+098.0 Say "%Percepc" Font "&mLetRom",12 Style "BQ"
      @mFI0+6.2,vCL2+113.6 Get vPPE       Font "&mLetAri",10 Style "NQ" Size 1,7.3 Pict "99.99" Color ,&mCol_Fondo
      READ TIMEOUT 0.001
      DO prEsiona WITH "1", "ABREI", mfI0+6.3, vcL2+123.7
 ELSE
      @mFI0+6.1,vCL2+98 Say " " Font "&mLetAri",10 Style "BQ" Size 1,24
      @mFI0+6.2,vCL2+98 Say " " Font "&mLetAri",10 Style "BQ" Size 1,24
      @mFI0+6.3,vCL2+98 Say " " Font "&mLetAri",10 Style "BQ" Size 1,24
 ENDIF
ENDPROC
*
PROCEDURE Tpp_1101a
 PARAMETER ptPo
 IF vtPo=2
      @mFI0+3.3,mCO0+1 Get vTPP Font "&mLetAri",9 Style "BQ" Default vTPP Function "*RHT Razon Social;Apellid/Nombres"
 ENDIF
 IF ptPo="1"
      READ TIMEOUT 0.001
 ENDIF
ENDPROC
*
PROCEDURE Med_1101a
 PARAMETER ptPo
 IF vtPo=2 .AND. vtPp=1 .AND. mvId=1
      DO coL_fonve
      @mFI0+2.9,vCL2+135.5 Say "Sólo Vidrios" Font "&mLetAri",9  Style "BQ"
      @mFI0+3.9,vCL2+133.1 Get vMED           Font "&mLetAri",10 Style "NQ" Default vMED Function "*RHT Cm;Pulg"
      IF ptPo="1"
           READ TIMEOUT 0.001
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Nve_1101a
 PARAMETER ptPo
 DO coL_fondo
 DO CASE
      CASE ptPo="1"
           @mFI0+7.8,mCO0+16 Say  vNVE Font "&mLetAri",11 Style "NQ" Size 1,35.6 Pict "@S38"
      CASE ptPo="2"
           @mFI0+7.8,mCO0+16 Edit vNVE Font "&mLetAri",11 Style "NQ" Size 1,35.6,50
           READ TIMEOUT 0.001
 ENDCASE
ENDPROC
*
PROCEDURE Alq_1101a
 PARAMETER ptPo
 DO coL_beige
 @cFI0+9.7,mCO0+52 Say " " Font "&mLetAri",9 Style "BQ" Size 1,24
 @cFI0+9.8,mCO0+52 Say " " Font "&mLetAri",9 Style "BQ" Size 1,24
 @cFI0+9.9,mCO0+52 Say " " Font "&mLetAri",9 Style "BQ" Size 1,24
 DO CASE
      CASE vtPo=1
           @cFI0+9.8,mCO0+52 Get vALQ Font "&mLetRom",12 Style "NQ" Default vALQ Function "*RHT Alquilada;Propia" Size 1,10
      CASE vtPp=1
           @cFI0+9.8,mCO0+52 Get vALQ Font "&mLetRom",12 Style "NQ" Default vALQ Function "*RHT Alquilado;Propio" Size 1,10
      CASE vtPp=2
           @cFI0+9.8,mCO0+52 Get vALQ Font "&mLetRom",12 Style "NQ" Default vALQ Function "*RHT Alquilada;Propia" Size 1,10
 ENDCASE
 IF ptPo="1"
      READ TIMEOUT 0.001
 ENDIF
ENDPROC
*
PROCEDURE Nti_1101a
 PARAMETER ptPo
 DO coLsc6
 DO CASE
      CASE plIs$"13"
           @mFI0+0.5,mCO0+128 Say ">"+AllTrim(Str(vDTC,5,2))+"%" Font "&mLetRom",14 Style "BQ" Size 1,9
 ENDCASE
 DO CASE
      CASE ptPo="1"
           @mFI0+0.6,mCO0+66.5 Say  vNTI Font "&mLetAri",11 Style "BQ" Size 1,40 Pict "@S43"
      CASE ptPo="2"
           @mFI0+0.6,mCO0+66.5 Edit vNTI Font "&mLetAri",11 Style "BQ" Size 1,40,50
           READ TIMEOUT 0.001
 ENDCASE
ENDPROC
*
PROCEDURE Cre_1101a
 IF plIs<>"1" .AND. plIs<>"3"
      RETURN
 ENDIF
 @mFI0+7.8,vCL2+78 Get vCRE Font "&mLetAri",9 Style "NQ" Default vCRE Function "*RHT Si;No"
 READ TIMEOUT 0.001
 IF vcRe=1
      DO coL_fondo
 ELSE
      DO coLplp
 ENDIF
 @mFI0+7.8,vCL2+95 Say "Monto" Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE vcRe=1
           @mFI0+7.8,vCL2+103.1 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT &mSIG;US$"
           @mFI0+7.8,vCL2+112.0 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999" Color ,&mColBlN
      OTHERWISE
           @mFI0+7.8,vCL2+103.1 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT &mSIG;US$" Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           @mFI0+7.8,vCL2+112.0 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999"            Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
 ENDCASE
 READ TIMEOUT 0.001
ENDPROC
*
PROCEDURE Cod_1101a
 DO coLbln
 @mFI0+0.4,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.8 Pict "!!!!"
ENDPROC
*
PROCEDURE Tpo_1101a
 PARAMETER ptPo
 @mFI0+0.1,mCO0+146 Get vTPO Font "&mLetAri",11 Style "NQ" Default vTPO Function "*RVT Persona sin RUC;Persona con RUC"
 IF ptPo="1"
      READ TIMEOUT 0.001
 ENDIF
ENDPROC
*
PROCEDURE Dis_1101a
 DO coLbln
 DO coD_1101a
 @mFI0+4.8,mCO0+45 Say vALI Font "&mLetAri",9 Style "NQ" Size 1,18  Pict "@S20"
 DO coLbln
 IF plIs$"13"
      @mFI0+6.3,vCL2+67.8 Say vDCT Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99"
      @mFI0+4.8,vCL2+67.8 Say vLIS Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"
      @mFI0+4.8,vCL2+73.8 Say vLI2 Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"
      @mFI0+4.8,vCL2+79.8 Say vLI3 Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"
 ENDIF
 DO crE_1101a
 DO ppE_1101a
 DO ntI_1101a WITH "1"
 DO nvE_1101a WITH "1"
 READ TIMEOUT 0.001
 DO p01_1101a
 DO diS_1101b IN PVM1101B
ENDPROC
*
PROCEDURE Gra_1101a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT clIentes
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f1101cod WITH vcOd
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
 REPLACE f1101tip WITH vtIp
 REPLACE f1101tpo WITH vtPo
 REPLACE f1101tpp WITH vtPp
 DO CASE
      CASE vtPo=2 .AND. vtPp=1
           REPLACE f1101nom WITH vnOm
           REPLACE f1101app WITH " "
           REPLACE f1101apm WITH " "
           REPLACE f1101no1 WITH " "
      CASE LEN(ALLTRIM(vnO1+vaPp+vaPm))=0
           REPLACE f1101nom WITH vnOm
           REPLACE f1101app WITH vaPp
           REPLACE f1101apm WITH vaPm
           REPLACE f1101no1 WITH vnO1
      OTHERWISE
           REPLACE f1101nom WITH ALLTRIM(vaPp)+" "+ALLTRIM(vaPm)+" "+ ;
                   ALLTRIM(vnO1)
           REPLACE f1101app WITH vaPp
           REPLACE f1101apm WITH vaPm
           REPLACE f1101no1 WITH vnO1
 ENDCASE
 REPLACE f1101dct WITH vdCt
 REPLACE f1101ppe WITH vpPe
 REPLACE f1101ali WITH vaLi
 REPLACE f1101ruc WITH vrUc
 REPLACE f1101tdi WITH vtDi
 REPLACE f1101ele WITH vdNi
 REPLACE f1101med WITH vmEd
 REPLACE f1101ven WITH vvEn
 REPLACE f1101lis WITH vlIs
 REPLACE f1101li2 WITH vlI2
 REPLACE f1101li3 WITH vlI3
 REPLACE f1101gir WITH vgIr
 REPLACE f1101lic WITH vlIc
 REPLACE f1101reg WITH vrEg
 REPLACE f1101ini WITH viNi
 REPLACE f1101cre WITH vcRe
 REPLACE f1101mon WITH vmOn
 REPLACE f1101tot WITH vtOt
 REPLACE f1101nac WITH vfNa
 REPLACE f1101con WITH vcOn
 REPLACE f1101est WITH "1"
 REPLACE f1101usu WITH muSu
 REPLACE f1101dat WITH DATE()
 REPLACE f1101tim WITH TIME()
 REPLACE f1101maq WITH mmAq
 UNLOCK ALL
 IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr .AND. vsWw=1 .AND.  ;
    LEN(ALLTRIM(vdNi))<>0
      PRIVATE pdB2, piD2
      DO veR_ult IN FAC0000A WITH muLt, 1
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
      APPEND BLANK
      REPLACE dnI WITH vdNi
      REPLACE apP WITH vaPp
      REPLACE apM WITH vaPm
      REPLACE noM WITH vnO1
      REPLACE deP WITH "15"
      REPLACE diS WITH "0101"
      UNLOCK
      USE
      RELEASE pdB2, piD2
 ENDIF
 FLUSH
 WAIT CLEAR
 SELECT clIentes
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_1101a
 SEEK vcOd
 IF EOF()
      STORE "Código de Cliente no registrado..." TO mmSj
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
 REPLACE f1101cod WITH SPACE(04)
 DELETE
 SELECT suCursal
 DO WHILE .T.
      SEEK vcOd
      IF EOF()
           EXIT
      ENDIF
      STORE f1102suc TO vsUc
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
      REPLACE f1102cod WITH SPACE(04)
      REPLACE f1102suc WITH SPACE(02)
      DELETE
 ENDDO
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 SELECT clIentes
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Anu_1101a
 SEEK vcOd
 IF EOF()
      STORE "Código de Cliente no registrado..." TO mmSj
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
           REPLACE f1101est WITH "9"
      CASE veSt="9"
           REPLACE f1101est WITH "1"
 ENDCASE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Det_1101a
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT suCursal
 DO pvM1101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT clIentes
 DO prEsiona WITH "3", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE P00_1101a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE muCo-68 TO vuCo
 STORE muFi+14 TO vuFi
 STORE ((mwFi-muFi)/2)-0.9 TO mfI0
 STORE ((mwFi-vuFi)/2)+1 TO vfI0
 STORE vfI0+4 TO vfI1, vfI2
 STORE vfI0+vuFi+0.8 TO vmF2
 DO CASE
      CASE mrEs="3"
           STORE vfI0+23.4 TO vfI1, vfI2
      OTHERWISE
           STORE vfI0+27.4 TO vfI1, vfI2
 ENDCASE
 STORE 00 TO viT1
 STORE mfI0+4.7 TO cfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE (mwCo-vuCo)/2 TO vcO0, vmC2
 STORE cfI0+muFi+1 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE cfI0+09.30 TO vfB1
 STORE mfI0+00.55 TO vfB2
 STORE mfI0+07.80 TO vfB3, vfB4
 STORE cfI0+11.15 TO vfB5
 STORE cfI0+12.72 TO vfB6
 STORE mfI0+4 TO vfB8
 STORE mcO0+32.4 TO vcBi
 STORE mcO0+22.0 TO vcB1
 STORE mcO0+123.2 TO vcB2
 STORE mcO0+66.5 TO vcB3
 STORE vcB3+4 TO vcB4
 STORE mcO0+159.5 TO vcB5, vcB6
 STORE mcO0+muCo-7.5 TO vcB8
 STORE mcO0+25 TO ccO0
 STORE mcO0+35 TO vcL2
 STORE mcO0+20 TO vcL3
 DO prEsiona WITH "1", "ALFABE", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from mFI0-08.0,mCO0+36.0 to mFI0+mUFI+09,mCO0+160 Font "&mLetCou",14 Style "NQU" Prompt Field F1101NOM+" - "+F1101COD Scroll Color Scheme 10 Footer "CONSULTA DE CLIENTES"
 Define Popup vTB2 from mFI0+01.7,mCO0+40.0 to mFI0+mUFI+09,mCO0+119 Font "&mLetCou",14 Style "NQ" Prompt Field F9110NTI Scroll Color Scheme 10 Footer "CONSULTA DE TIPOS DE CLIENTES"
 Define Popup vTB3 from cFI0+06.0,mCO0+27.0 to cFI0+32,mCO0+mUCO Font "&mLetCou",14 Style "NQ" Prompt Field F1102SUC+": "+AllTrim(F1102DIR)+", "+AllTrim(F1102DIS) Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
 Define Popup vTB4 from mFI0+08.9,mCO0+01.0 to mFI0+mUFI+09,mCO0+100.8 Font "&mLetCou",14 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 10 Footer "CONSULTA DE VENDEDORES"
 Define Popup vTB5 from cFI0+12.5,mCO0+84.7 to cFI0+32,vCL3+142.3 Font "&mLetCou",14 Style "NQ" Prompt Field F9115NOM Scroll Color Scheme 10 Footer "CONSULTA DE DISTRITOS/CIUDADES"
 Define Popup vTB6 from cFI0+14.0,mCO0+84.7 to cFI0+32,vCL3+142.3 Font "&mLetCou",14 Style "NQ" Prompt Field F9115NOM Scroll Color Scheme 10 Footer "CONSULTA DE DISTRITOS/CIUDADES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 SAVE SCREEN TO vpAn_99
 DO tiT_0000a WITH "Mantenimiento de Clientes"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+12, mcO0+muCo
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
 @ cfI0+8.8, mcO0-0.6 TO cfI0+23.7, mcO0+muCo+0.3 PATTERN 1
 DO coLsc3
 @ mfI0, mcO0-0.2 TO mfI0+2.5, mcO0+36.8 PATTERN 1
 DO coLsc6
 @ cfI0+9.0, mcO0-00.2 TO cfI0+10.95, mcO0+026.5 PATTERN 1
 @ mfI0+0.1, mcO0+39.9 TO mfI0+02.50, mcO0+143.1 PATTERN 1
 DO coL_fonaz
 @mFI0+00.4,mCO0+01 Say "CÓDIGO:"              Font "&mLetRom",14 Style "BT"
 @mFI0+00.5,mCO0+41 Say "Tipo de Cliente"      Font "&mLetRom",13 Style "BT"
 @cFI0+15.8,mCO0+72 Say "e-mail"               Font "&mLetRom",12 Style "BT"
 @cFI0+18.8,mCO0+72 Say "e-mail"               Font "&mLetRom",12 Style "BT"
 @cFI0+21.8,mCO0+72 Say "e-mail"               Font "&mLetRom",12 Style "BT"
 DO coL_fondo
 @mFI0+04.8,mCO0+032 Say "Alias"               Font "&mLetRom",12 Style "BT"
 @mFI0+07.8,mCO0+001 Say "Vendedor"            Font "&mLetRom",12 Style "BT"
 @cFI0+09.8,mCO0+083 Say "Año"                 Font "&mLetRom",12 Style "BT"
 @cFI0+11.1,mCO0+001 Say "Dirección"           Font "&mLetRom",12 Style "BT"
 @cFI0+11.1,mCO0+104 Say "Ciudad/Distrito"     Font "&mLetRom",12 Style "BT"
 @cFI0+12.6,mCO0+104 Say "Ciudad/Distrito"     Font "&mLetRom",12 Style "BT"
 @cFI0+14.3,mCO0+001 Say "Contacto-1"          Font "&mLetRom",12 Style "BT"
 @cFI0+14.3,mCO0+072 Say "Teléfono"            Font "&mLetRom",12 Style "BT"
 @cFI0+14.3,mCO0+105 Say "Anexo"               Font "&mLetRom",12 Style "BT"
 @cFI0+14.3,mCO0+137 Say "Fax"                 Font "&mLetRom",12 Style "BT"
 @cFI0+15.8,mCO0+001 Say "Cargo"               Font "&mLetRom",12 Style "BT"
 @cFI0+17.3,mCO0+001 Say "Contacto-2"          Font "&mLetRom",12 Style "BT"
 @cFI0+17.3,mCO0+072 Say "Teléfono"            Font "&mLetRom",12 Style "BT"
 @cFI0+17.3,mCO0+105 Say "Anexo"               Font "&mLetRom",12 Style "BT"
 @cFI0+17.3,mCO0+137 Say "Fax"                 Font "&mLetRom",12 Style "BT"
 @cFI0+18.8,mCO0+001 Say "Cargo"               Font "&mLetRom",12 Style "BT"
 @cFI0+20.3,mCO0+001 Say "Contacto-3"          Font "&mLetRom",12 Style "BT"
 @cFI0+20.3,mCO0+072 Say "Teléfono"            Font "&mLetRom",12 Style "BT"
 @cFI0+20.3,mCO0+105 Say "Anexo"               Font "&mLetRom",12 Style "BT"
 @cFI0+20.3,mCO0+137 Say "Fax"                 Font "&mLetRom",12 Style "BT"
 @cFI0+21.8,mCO0+001 Say "Cargo"               Font "&mLetRom",12 Style "BT"
 DO coLbln
 @mFI0+0.4,mCO0+19 Get  vCOD                   Font "&mLetRom",13 Style "BQ" Size 1,8.8 Pict "!!!!" Color ,&mColBlN
 @mFI0+4.8,mCO0+45 Edit vALI                   Font "&mLetAri",9  Style "NQ" Size 1,18,20
 IF plIs$"13"
      @mFI0+4.8,vCL2+59.0 Say "Listas"           Font "&mLetAri",9 Style "BT"
      @mFI0+6.3,vCL2+59.0 Say "%Dcto"            Font "&mLetAri",9 Style "BT"
      @mFI0+7.8,vCL2+59.0 Say "Línea de Crédito" Font "&mLetAri",9 Style "BT"
      @mFI0+4.8,vCL2+67.8 Get vLIS               Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlN
      @mFI0+4.8,vCL2+73.8 Get vLI2               Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlN
      @mFI0+4.8,vCL2+79.8 Get vLI3               Font "&mLetAri",9 Style "NQ" Size 1,3.2 Pict "99"    Color ,&mColBlN
      @mFI0+6.3,vCL2+67.8 Get vDCT               Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99" Color ,&mColBlN
 ENDIF
 @cFI0+09.3,mCO0+018.0 Get  vSUC Font "&mLetRom",11 Style "BQ" Size 1,2.5 Pict "99"   Color ,&mColBlN
 @cFI0+11.3,mCO0+018.0 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,78,70
 @cFI0+12.8,mCO0+018.0 Edit vENT Font "&mLetAri",9  Style "NQ" Size 1,78,70
 @cFI0+11.3,vCL3+105.0 Edit vNDI Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @cFI0+12.8,vCL3+105.0 Edit vND1 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @cFI0+09.8,mCO0+090.0 Edit vANO Font "&mLetAri",9  Style "NQ" Size 1,06,04
 @cFI0+14.3,mCO0+018.0 Edit vCT1 Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @cFI0+14.3,mCO0+087.0 Edit vTL1 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+14.3,mCO0+115.0 Get  vAN1 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
 @cFI0+14.3,mCO0+144.6 Edit vFA1 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+15.8,mCO0+018.0 Edit vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @cFI0+17.3,mCO0+018.0 Edit vCT2 Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @cFI0+17.3,mCO0+087.0 Edit vTL2 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+17.3,mCO0+115.0 Get  vAN2 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
 @cFI0+17.3,mCO0+144.6 Edit vFA2 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+18.8,mCO0+018.0 Edit vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @cFI0+20.3,mCO0+018.0 Edit vCT3 Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @cFI0+20.3,mCO0+087.0 Edit vTL3 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+20.3,mCO0+115.0 Get  vAN3 Font "&mLetAri",9  Style "NQ" Size 1,06 Color ,&mColBlN
 @cFI0+20.3,mCO0+144.6 Edit vFA3 Font "&mLetAri",9  Style "NQ" Size 1,14,20
 @cFI0+21.8,mCO0+018.0 Edit vCA3 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 DO coLblz
 @cFI0+15.8,mCO0+087.0 Edit vMAI Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
 @cFI0+18.8,mCO0+087.0 Edit vMA2 Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
 @cFI0+21.8,mCO0+087.0 Edit vMA3 Font "&mLetAri",9  Style "NQ" Size 1,52.4,30
 READ TIMEOUT 0.001
 DO ntI_1101a WITH "2"
 DO nvE_1101a WITH "2"
 DO crE_1101a
 READ TIMEOUT 0.001
 DO p01_1101a
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "ALFABE", vfB8, vcB8
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF viTe<>1
      DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF plIs$"34"
           DO prEsiona WITH "3", "BORRAR", mmF1+0.1, mmC1+2
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF LEN(ALLTRIM(vvEn))=0
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
      ELSE
           DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P01_1101a
 DO coL_fondo
 IF vtPo=1
      @mFI0+4.8,mCO0+01 Say "R.U.C."                               Font "&mLetAri",9 Style "BT" Color &mColPlP
      @mFI0+6.3,mCO0+01 Say "Doc.Id"                               Font "&mLetAri",9 Style "BT"
      @mFI0+6.3,mCO0+29 Say Space(20)                              Font "&mLetAri",9 Style "NQ" Size 1,20
      @mFI0+3.2,mCO0+01 Say Space(20)                              Font "&mLetAri",9 Style "NQ" Size 1,42
      @mFI0+3.3,mCO0+01 Say Space(20)                              Font "&mLetAri",9 Style "NQ" Size 1,42
      @mFI0+3.6,mCO0+01 Say Space(20)                              Font "&mLetAri",9 Style "NQ" Size 1,42
      @mFI0+3.3,mCO0+01 Say "Apellidos Paterno, Materno y Nombres" Font "&mLetAri",9 Style "BQ" Size 1,44
 ELSE
      @mFI0+4.8,mCO0+01 Say "R.U.C."                               Font "&mLetAri",9 Style "BT"
      @mFI0+6.3,mCO0+01 Say "Doc.Id"                               Font "&mLetAri",9 Style "BT" Color &mColPlP
      @mFI0+3.3,mCO0+01 Say Space(50)                              Font "&mLetAri",9 Style "NQ" Size 1,44
 ENDIF
 DO coLbln
 DO CASE
      CASE vtPo=1 .OR. vtPp=2
           DO coL_fondo
           @mFI0+3.2,mCO0+067.3 Say " " Font "&mLetAri",11 Style "BQ" Size 1,1.85
           @mFI0+3.2,mCO0+092.3 Say " " Font "&mLetAri",11 Style "BQ" Size 1,1.65
           @mFI0+3.2,mCO0+117.3 Say " " Font "&mLetAri",11 Style "BQ" Size 1,10
           DO coLbln
           @mFI0+3.3,mCO0+45 Edit vAPP Font "&mLetAri",9 Style "NQ" Size 1,22,20
           @mFI0+3.3,mCO0+70 Edit vAPM Font "&mLetAri",9 Style "NQ" Size 1,22,20
           @mFI0+3.3,mCO0+95 Edit vNO1 Font "&mLetAri",9 Style "NQ" Size 1,22,20
      OTHERWISE
           @mFI0+3.3,mCO0+45 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,80,70
 ENDCASE
 IF vtPo=1
      DO coL_fondo
      @mFI0+4.8,mCO0+10 Edit vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.4,11
      DO coLbln
      @mFI0+6.3,mCO0+10 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,15.4,15
 ELSE
      DO coLbln
      @mFI0+4.8,mCO0+10 Edit vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.4,11
      DO coL_fondo
      @mFI0+6.3,mCO0+10 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,15.4,15
 ENDIF
 DO coLsc6
 DO CASE
      CASE vtPo=1
           @cFI0+09.3,mCO0+02.0 Say "Cód.Dir.:"       Font "&mLetRom",13 Style "BQ"
           DO coL_fondo
           @mFI0+06.2,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           @mFI0+06.3,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           @mFI0+06.5,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           @mFI0+06.3,mCO0+32.0 Say "Nacim."          Font "&mLetAri",9  Style "BQ" Size 1,10
           DO coL_beige
           @cFI0+09.8,mCO0+44.0 Say "Casa"            Font "&mLetRom",12 Style "BQ"
           @cFI0+12.6,mCO0+01.0 Say "Dir.Trabajo"     Font "&mLetRom",12 Style "BQ" Size 1,11.5
           @cFI0+09.8,mCO0+52.0 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,26
           @mFI0+06.3,mCO0+45.0 Get vFNA              Font "&mLetAri",9  Style "NQ" Size 1,12 Color ,&mColBlN
      CASE vtPo=2 .AND. vtPp=1
           @cFI0+9.3,mCO0+2 Say "Sucursal:"           Font "&mLetRom",13 Style "BQ"
           DO coL_beige
           @cFI0+09.8,mCO0+44 Say "Local"             Font "&mLetRom",12 Style "BQ"
           @cFI0+12.6,mCO0+01 Say "Lug.Entrega"       Font "&mLetRom",12 Style "BQ" Size 1,11.5
           @cFI0+09.8,mCO0+52 Say Space(20)           Font "&mLetAri",9  Style "NQ" Size 1,26
           DO coL_fondo
           @mFI0+06.3,mCO0+32 Say "Giro"              Font "&mLetAri",9  Style "NQ" Size 1,10
           DO coLbln
           @mFI0+6.3,mCO0+45 Edit vGIR                Font "&mLetAri",9  Style "NQ" Size 1,18,20
      CASE vtPo=2 .AND. vtPp=2
           @cFI0+09.3,mCO0+02.0 Say "Cód.Dir.:"       Font "&mLetRom",13 Style "BQ"
           DO coL_fondo
           @mFI0+06.2,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           @mFI0+06.3,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           @mFI0+06.4,mCO0+31.5 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,38
           DO coL_beige
           @cFI0+09.8,mCO0+44.0 Say "Casa"            Font "&mLetRom",12 Style "BQ"
           @cFI0+12.6,mCO0+01.0 Say "Dir.Trabajo"     Font "&mLetRom",12 Style "BQ" Size 1,11.5
           @cFI0+09.8,mCO0+52.0 Say Space(20)         Font "&mLetAri",9  Style "NQ" Size 1,26
 ENDCASE
 DO tpO_1101a WITH "2"
 DO alQ_1101a WITH "2"
 DO meD_1101a WITH "2"
 DO tpP_1101a WITH "2"
 READ TIMEOUT 0.001
ENDPROC
*
PROCEDURE Tip_1101a
 = INKEY(0.01)
 SELECT tiPos_cli
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT clIentes
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9110", "U", "F9110NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnTi))
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB2 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9110", "U", "F9110TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO coL_beige
      STORE f9110tip TO vtIp
      STORE f9110nti TO vnTi
      STORE f9110dct TO vdTc
      STORE f9110max TO vdMc
      DO ntI_1101a WITH "1"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT clIentes
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ven_1101a
 = INKEY(0.01)
 SELECT veNdedores
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SELECT clIentes
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnVe))
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB4 REST
 DO p1_0000a
 SET CONFIRM OFF
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      DO nvE_1101a WITH "1"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vvEn))=0
      DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT clIentes
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_1101a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>01
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
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>1
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>1
           DO veN_1101a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           DO nvE_1101a WITH "1"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB8 .AND. mfIl<=vfB8+2.5 .AND. vtPo=1 .AND. mcCc>=vcB8  ;
           .AND. mcCc<=vcB8+6.6 .AND. viTe>1 .AND. viTe<5
           DO CASE
                CASE viTe=2
                     DO leN_0000a IN FAC0000A WITH "1"
                CASE viTe=3
                     DO leN_0000a IN FAC0000A WITH "2"
                CASE viTe=4
                     DO leN_0000a IN FAC0000A WITH "3"
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfB8 .AND. mfIl<=vfB8+2.5 .AND. vtPo=2 .AND. vtPp=1  ;
           .AND. mcCc>=vcB8 .AND. mcCc<=vcB8+6.6 .AND. viTe=2
           DO leN_0000a IN FAC0000A WITH "4"
           STORE 99 TO mkEy
      CASE mfIl>=vfB8 .AND. mfIl<=vfB8+2.5 .AND. vtPo=2 .AND. vtPp=1  ;
           .AND. mcCc>=vcB8 .AND. mcCc<=vcB8+6.6 .AND. viTe>1 .AND. viTe<5
           DO CASE
                CASE viTe=2
                     DO leN_0000a IN FAC0000A WITH "1"
                CASE viTe=3
                     DO leN_0000a IN FAC0000A WITH "2"
                CASE viTe=4
                     DO leN_0000a IN FAC0000A WITH "3"
           ENDCASE
           STORE 99 TO mkEy
      CASE vtPo<>1 .AND. viTe>1 .AND. mfIl>=mfI0-0.142 .AND. mfIl<=mfI0+1  ;
           .AND. mcCc>=mcO0+145.7 .AND. mcCc<=mcO0+173.7
           STORE 1 TO vtPo
           STORE "1" TO vtDi
           DO p01_1101a
           READ TIMEOUT 0.001
           DO diS_1101a
           STORE 99 TO mkEy
           STORE 99 TO mkEy
      CASE vtPo<>2 .AND. viTe>1 .AND. mfIl>=mfI0+1 .AND. mfIl<=mfI0+2.071  ;
           .AND. mcCc>=mcO0+145.7 .AND. mcCc<=mcO0+173.7
           STORE 2 TO vtPo
           STORE "6" TO vtDi
           DO p01_1101a
           READ TIMEOUT 0.001
           DO diS_1101a
           STORE 99 TO mkEy
      CASE vtPo=2 .AND. vtPp<>1 .AND. viTe>1 .AND. mfIl>=mfI0+3.2 .AND.  ;
           mfIl<=mfI0+4.357 .AND. mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+19.1
           STORE 1 TO vtPp
           DO tpP_1101a WITH "1"
           DO diS_1101a
           STORE 99 TO mkEy
      CASE vtPo=2 .AND. vtPp<>2 .AND. viTe>1 .AND. mfIl>=mfI0+3.2 .AND.  ;
           mfIl<=mfI0+4.357 .AND. mcCc>=mcO0+19.1 .AND. mcCc<=mcO0+42.9
           STORE 2 TO vtPp
           DO tpP_1101a WITH "1"
           DO diS_1101a
           STORE 99 TO mkEy
      CASE viTe>1 .AND. mvId=1 .AND. vmEd<>1 .AND. vtPo=2 .AND. mfIl>= ;
           mfI0+3.357 .AND. mfIl<=mfI0+4.714 .AND. mcCc>=vcL2+132.5 .AND.  ;
           mcCc<=vcL2+141.1
           STORE 1 TO vmEd
           DO meD_1101a WITH "1"
           STORE 99 TO mkEy
      CASE viTe>1 .AND. mvId=1 .AND. vmEd<>2 .AND. vtPo=2 .AND. mfIl>= ;
           mfI0+3.357 .AND. mfIl<=mfI0+4.714 .AND. mcCc>=vcL2+141.1 .AND.  ;
           mcCc<=vcL2+151.3
           STORE 2 TO vmEd
           DO meD_1101a WITH "1"
           STORE 99 TO mkEy
      CASE vtPo=2 .AND. vtPp=1 .AND. mpPe>0 .AND. viTe>1 .AND. mfIl>=mfI0+ ;
           5.785 .AND. mfIl<=mfI0+7.285 .AND. mcCc>=vcL2+98.3 .AND. mcCc<= ;
           vcL2+125.7
           @mFI0+6.2,vCL2+113.6 Get vPPE Font "&mLetAri",10 Style "NQ" Size 1,7.3 Pict "99.99" Color ,&mColBlN
           SET CURSOR ON
           READ
           SET CURSOR OFF
           DO coL_fondo
           @mFI0+6.2,vCL2+113.4 Say " "  Font "&mLetAri",10 Style "NQ" Size 1,0.3
           @mFI0+6.2,vCL2+113.6 Say vPPE Font "&mLetAri",10 Style "NQ" Size 1,7.3 Pict "99.99"
           @mFI0+6.2,vCL2+122.4 Say " "  Font "&mLetAri",10 Style "NQ" Size 1,0.3
           STORE 99 TO mkEy
      CASE vcRe<>1 .AND. viTe>1 .AND. plIs$"13" .AND. mfIl>=mfI0+7.5  ;
           .AND. mfIl<=mfI0+8.642 .AND. mcCc>=vcL2+77.5 .AND. mcCc<=vcL2+84.3
           STORE 1 TO vcRe
           IF vmOn=0
                STORE mmOn TO vmOn
           ENDIF
           DO crE_1101a
           STORE 99 TO mkEy
      CASE vcRe<>2 .AND. viTe>1 .AND. plIs$"13" .AND. mfIl>=mfI0+7.5  ;
           .AND. mfIl<=mfI0+8.642 .AND. mcCc>=vcL2+84.3 .AND. mcCc<=vcL2+91.9
           STORE 2 TO vcRe
           IF vmOn=0
                STORE mmOn TO vmOn
           ENDIF
           DO crE_1101a
           STORE 99 TO mkEy
      CASE vmOn<>1 .AND. vcRe=1 .AND. viTe>1 .AND. plIs$"13" .AND. mfIl>= ;
           mfI0+7.357 .AND. mfIl<=mfI0+8.571 .AND. mcCc>=vcL2+102.5 .AND.  ;
           mcCc<=vcL2+110.9
           STORE 1 TO vmOn
           @mFI0+7.8,vCL2+103.1 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT &mSIG;US$"
           READ TIMEOUT 0.001
           STORE 99 TO mkEy
      CASE vmOn<>2 .AND. vcRe=1 .AND. viTe>1 .AND. plIs$"13" .AND. mfIl>= ;
           mfI0+8.571 .AND. mfIl<=mfI0+9.642 .AND. mcCc>=vcL2+102.5 .AND.  ;
           mcCc<=vcL2+110.9
           STORE 2 TO vmOn
           @mFI0+7.8,vCL2+103.1 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT &mSIG;US$"
           READ TIMEOUT 0.001
           STORE 99 TO mkEy
      CASE viTe<>1 .AND. mfIl>=mfI0-0.214 .AND. mfIl<=mfI0+2.214 .AND.  ;
           mcCc>=mcO0-0.300 .AND. mcCc<=mcO0+31.9
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE viTe<>2 .AND. (vtPo=1 .OR. (vtPo=2 .AND. vtPp=2)) .AND. mfIl>= ;
           mfI0+3 .AND. mfIl<=mfI0+4.214 .AND. mcCc>=mcO0+44.7 .AND. mcCc<= ;
           mcO0+67.1
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE viTe<>3 .AND. (vtPo=1 .OR. (vtPo=2 .AND. vtPp=2)) .AND. mfIl>= ;
           mfI0+3 .AND. mfIl<=mfI0+4.214 .AND. mcCc>=mcO0+69.7 .AND. mcCc<= ;
           mcO0+92.1
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE viTe<>4 .AND. (vtPo=1 .OR. (vtPo=2 .AND. vtPp=2)) .AND. mfIl>= ;
           mfI0+3 .AND. mfIl<=mfI0+4.214 .AND. mcCc>=mcO0+94.7 .AND. mcCc<= ;
           mcO0+117.1
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>5 .AND. vtPo=1) .OR. (viTe<>4 .AND. vtPo=2 .AND. vtPp= ;
           1) .OR. (viTe<>6 .AND. vtPo=2 .AND. vtPp=2)) .AND. mfIl>=mfI0+ ;
           4.5 .AND. mfIl<=mfI0+5.714 .AND. mcCc>=mcO0+31.9 .AND. mcCc<= ;
           mcO0+63.1
           DO CASE
                CASE vtPo=1
                     STORE 5 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 4 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE viTe<>6 .AND. vtPo=1 .AND. mfIl>=mfI0+6.0 .AND. mfIl<=mfI0+ ;
           7.240 .AND. mcCc>=mcO0+0.7 .AND. mcCc<=mcO0+21.50
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>7 .AND. vtPo=1) .OR. (viTe<>5 .AND. vtPo=2 .AND. vtPp= ;
           1)) .AND. mfIl>=mfI0+6 .AND. mfIl<=mfI0+7.24 .AND. mcCc>=mcO0+ ;
           32.1 .AND. mcCc<=mcO0+63.1
           DO CASE
                CASE vtPo=1
                     STORE 7 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE viTe<>2 .AND. vtPo=2 .AND. vtPp=1 .AND. mfIl>=mfI0+3 .AND.  ;
           mfIl<=mfI0+4.214 .AND. mcCc>=mcO0+44.7 .AND. mcCc<=mcO0+125.1
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE vtPo=2 .AND. ((viTe<>3 .AND. vtPp=1) .OR. (viTe<>5 .AND. vtPp= ;
           2)) .AND. mfIl>=mfI0+4.5 .AND. mfIl<=mfI0+5.714 .AND. mcCc>= ;
           mcO0+0.1 .AND. mcCc<=mcO0+25.7
           DO CASE
                CASE vtPp=1
                     STORE 3 TO ciTx
                CASE vtPp=2
                     STORE 5 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>8 .AND. vtPo=1) .OR. (vtPo=2 .AND. (viTe<>6 .AND. vtPp= ;
           1) .OR. (viTe<>7 .AND. vtPp=2))) .AND. mfIl>=mfI0+4.571 .AND.  ;
           mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+67.30 .AND. mcCc<=vcL2+71.3
           DO CASE
                CASE vtPo=1
                     STORE 8 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 6 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 7 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>9 .AND. vtPo=1) .OR. (vtPo=2 .AND. (viTe<>7 .AND. vtPp= ;
           1) .OR. (viTe<>8 .AND. vtPp=2))) .AND. mfIl>=mfI0+4.571 .AND.  ;
           mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+73.3 .AND. mcCc<=vcL2+77.5
           DO CASE
                CASE vtPo=1
                     STORE 9 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 7 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 8 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>10 .AND. vtPo=1) .OR. (vtPo=2 .AND. (viTe<>8 .AND.  ;
           vtPp=1) .OR. (viTe<>9 .AND. vtPp=2))) .AND. mfIl>=mfI0+4.571  ;
           .AND. mfIl<=mfI0+5.714 .AND. mcCc>=vcL2+79.30 .AND. mcCc<=vcL2+83.3
           DO CASE
                CASE vtPo=1
                     STORE 10 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 8 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 9 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>11 .AND. vtPo=1) .OR. (vtPo=2 .AND. (viTe<>9 .AND.  ;
           vtPp=1) .OR. (viTe<>10 .AND. vtPp=2))) .AND. mfIl>=mfI0+6  ;
           .AND. mfIl<=mfI0+7.142 .AND. mcCc>=vcL2+58.90 .AND. mcCc<=vcL2+75.5
           DO CASE
                CASE vtPo=1
                     STORE 11 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 9 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 10 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE ((viTe<>12 .AND. vtPo=1) .OR. (vtPo=2 .AND. (viTe<>10 .AND.  ;
           vtPp=1) .OR. (viTe<>11 .AND. vtPp=2))) .AND. mfIl>=mfI0+7.5  ;
           .AND. mfIl<=mfI0+8.714 .AND. mcCc>=vcL2+111.7 .AND. mcCc<=vcL2+123.1
           DO CASE
                CASE vtPo=1
                     STORE 12 TO ciTx
                CASE vtPo=2 .AND. vtPp=1
                     STORE 10 TO ciTx
                CASE vtPo=2 .AND. vtPp=2
                     STORE 11 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
      CASE mfIl>=cfI0+6.15 .AND. mfIl<=cfI0+8.078 .AND. mcCc>=mcO0+0.9  ;
           .AND. mcCc<=mcO0+31.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 01 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+9.078 .AND. mfIl<=cfI0+10.936 .AND. mcCc>=mcO0+82.9  ;
           .AND. mcCc<=mcO0+96.3 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 02 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+11.293 .AND. mfIl<=cfI0+12.436 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+96.3 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 03 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+11.293 .AND. mfIl<=cfI0+12.436 .AND. mcCc>=mcO0+ ;
           105.1 .AND. mcCc<=mcO0+159.3 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 04 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+12.721 .AND. mfIl<=cfI0+13.864 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+96.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 05 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+12.721 .AND. mfIl<=cfI0+13.864 .AND. mcCc>=mcO0+ ;
           105.1 .AND. mcCc<=mcO0+159.3 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 06 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND. mcCc>=mcO0+0.9  ;
           .AND. mcCc<=mcO0+68.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 07 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+15.721 .AND. mfIl<=cfI0+16.936 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+52.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 08 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND. mcCc>=mcO0+ ;
           71.9 .AND. mcCc<=mcO0+101.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 09 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND. mcCc>=mcO0+ ;
           105.1 .AND. mcCc<=mcO0+121.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 10 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+14.221 .AND. mfIl<=cfI0+15.436 .AND. mcCc>=mcO0+ ;
           137.1 .AND. mcCc<=mcO0+159.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 11 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+15.793 .AND. mfIl<=cfI0+16.936 .AND. mcCc>=mcO0+ ;
           71.9 .AND. mcCc<=mcO0+139.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 12 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+68.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 13 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+18.793 .AND. mfIl<=cfI0+19.936 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+52.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 14 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND. mcCc>=mcO0+ ;
           71.7 .AND. mcCc<=mcO0+101.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 15 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND. mcCc>=mcO0+ ;
           105.1 .AND. mcCc<=mcO0+121.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 16 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+17.221 .AND. mfIl<=cfI0+18.436 .AND. mcCc>=mcO0+ ;
           137.1 .AND. mcCc<=mcO0+159.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 17 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+18.793 .AND. mfIl<=cfI0+19.936 .AND. mcCc>=mcO0+ ;
           71.9 .AND. mcCc<=mcO0+139.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 18 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+68.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 19 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+21.721 .AND. mfIl<=cfI0+22.864 .AND. mcCc>=mcO0+0.7  ;
           .AND. mcCc<=mcO0+52.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 20 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND. mcCc>=mcO0+ ;
           71.7 .AND. mcCc<=mcO0+101.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 21 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND. mcCc>=mcO0+ ;
           105.1 .AND. mcCc<=mcO0+121.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 22 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+20.221 .AND. mfIl<=cfI0+21.436 .AND. mcCc>=mcO0+ ;
           137.1 .AND. mcCc<=mcO0+159.1 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 23 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=cfI0+21.721 .AND. mfIl<=cfI0+22.864 .AND. mcCc>=mcO0+ ;
           71.9 .AND. mcCc<=mcO0+139.7 .AND. viOm=2
           DO CASE
                CASE plIs$"24" .AND. vtPo=1
                     STORE 7 TO ciTx
                CASE plIs$"13" .AND. ((vtPo=1 .AND. vcRe=2) .OR. (vtPo=2  ;
                     .AND. vtPp=2 .AND. vcRe=1))
                     STORE 11 TO ciTx
                CASE plIs$"13" .AND. vtPo=1 .AND. vcRe=1
                     STORE 12 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=1
                     STORE 5 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. vtPp=1 .AND. vcRe=2
                     STORE 9 TO ciTx
                CASE plIs$"13" .AND. vtPo=2 .AND. ((vtPp=1 .AND. vcRe=1)  ;
                     .OR. (vtPp=2 .AND. vcRe=2))
                     STORE 10 TO ciTx
                CASE plIs$"24" .AND. vtPo=2 .AND. vtPp=2
                     STORE 6 TO ciTx
           ENDCASE
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_1101a
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
                STORE 24 TO viTe
                STORE k_Clic TO mkEy
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1101a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE plIs="1"
           @ pfIl+0, 1.500 SAY  ;
             "Este Mantenimiento, es un programa en donde se pueden crear, modificar,"
           @ pfIl+1, 1.500 SAY  ;
             "Anular y/o Eliminar los Clientes que figurarán en el Sistema. Los códigos"
           @ pfIl+2, 1.500 SAY  ;
             "son alfanuméricos, es decir, pueden tener letras y números."
           STORE pfIl+3 TO pfIl
      CASE plIs="2"
           @ pfIl+0, 1.500 SAY  ;
             "Este Mantenimiento, es un programa en donde se pueden crear, modificar,"
           @ pfIl+1, 1.500 SAY  ;
             "anular y/o eliminar los Clientes que figurarán en el Sistema. Los códigos"
           @ pfIl+2, 1.500 SAY  ;
             "son alfanuméricos, es decir, pueden tener letras y números. No se tiene "
           @ pfIl+3, 1.500 SAY  ;
             "acceso a datos de listas de precios y descuentos."
           STORE pfIl+4 TO pfIl
      CASE plIs="3"
           @ pfIl+0, 1.500 SAY  ;
             "Este Mantenimiento, es un programa en donde se pueden crear y modificar"
           @ pfIl+1, 1.500 SAY  ;
             "Clientes que figurarán en el Sistema. No se puede anular o eliminar.  Los"
           @ pfIl+2, 1.500 SAY  ;
             "códigos son alfanuméricos, es decir, pueden tener letras y números."
           STORE pfIl+3 TO pfIl
      CASE plIs="4"
           @ pfIl+0, 1.500 SAY  ;
             "Este Mantenimiento, es un programa en donde se pueden crear y modificar"
           @ pfIl+1, 1.500 SAY  ;
             "Clientes que figurarán en el Sistema. No se puede anular o eliminar. Los"
           @ pfIl+2, 1.500 SAY  ;
             "códigos son alfanuméricos, es decir, pueden tener letras y números. No se"
           @ pfIl+3, 1.500 SAY  ;
             "tiene acceso a datos de listas de precios y descuentos."
           STORE pfIl+4 TO pfIl
 ENDCASE
 STORE pfIl+1 TO pfIl
 @ pfIl, 1.500 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "ESC" STYLE "BT"
 @ pfIl+1, 04 SAY "F10" STYLE "BT"
 @ pfIl+2, 04 SAY "F1" STYLE "BT"
 @ pfIl+3, 04 SAY "F2" STYLE "BT"
 @ pfIl+1, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 24 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl+0, 24 SAY "Regresar al Menú Principal"
      @ pfIl+3, 24 SAY "Consulta alfabética de Clientes registrados"
 ELSE
      @ pfIl+0, 24 SAY "Regresar al primer campo"
      @ pfIl+3, 24 SAY "Consulta de Tipos de Clientes registrados"
 ENDIF
 STORE pfIl+4 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+4, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F5" STYLE "BT"
 @ pfIl+1, 04 SAY "F6" STYLE "BT"
 @ pfIl+2, 04 SAY "F7" STYLE "BT"
 @ pfIl+3, 04 SAY "F8" STYLE "BT"
 @ pfIl+4, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+0, 24 SAY "Primer Código"
 @ pfIl+1, 24 SAY "Último Código"
 @ pfIl+2, 24 SAY "Código posterior al actual"
 @ pfIl+3, 24 SAY "Código anterior al actual"
 @ pfIl+4, 24 SAY "Ir al siguiente campo, llegando al final Graba"
 STORE pfIl+5 TO pfIl
 IF plIs$"13"
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "ALT DEL" STYLE "BT"
      @ pfIl+1, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl+0, 24 SAY "Anular/Activar Cliente"
      @ pfIl+1, 24 SAY "Eliminar definitivamente un código"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 24 SAY "Ir al campo derecho, llegando al final se graba"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 04 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+0, 24 SAY "Ir al campo izquierdo"
      @ pfIl+1, 24 SAY "Ir al primer campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 24 SAY "Ir al último campo"
 @ pfIl+1, 24 SAY "Ir al campo inferior, llegando al final se graba"
 STORE pfIl+2 TO pfIl
 IF viTe>1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl+1, 04 SAY "TAB" STYLE "BT"
      @ pfIl+0, 24 SAY "Ir al campo superior"
      @ pfIl+1, 24 SAY "Grabar y pasar a la pantalla de Sucursales"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vuFi, vuCo, vcO0, ccO0, vfI0, cfI0, vfI1, vfI2,  ;
         vmF2, vmC2
 RELEASE vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB8, vcBi, vcB1, vcB2,  ;
         vcB3, vcB4
 RELEASE vcB5, vcB6, vcB8, vcL1, vcL2, vcL3, vtB1, vtB2, vtB3, vtB4, vtB5,  ;
         vtB6, vcOd
 RELEASE vnOm, xnOm, vaLi, vtIp, vnTi, vdTc, vdMc, vrUc, vtDi, vdNi, vsUc,  ;
         vdCt, vcRe
 RELEASE vdIr, vdIs, vnDi, xdSt, vdPt, xdPt, vnDp, vdEp, veNt, vdIe, vnD1,  ;
         vdP1, vnP1
 RELEASE vcT1, vcA1, vcT2, vcA2, vcT3, vcA3, vtL1, vtL2, vtL3, vfA1, vfA2,  ;
         vfA3, vaN1
 RELEASE vaN2, vaN3, vmAi, vmA2, vmA3, vtOt, vcOn, veSt, viOm, vmEd, vvEn,  ;
         vnVe, vlIs
 RELEASE vlI2, vlI3, vgIr, vlIc, vrEg, viNi, vmOn, vaLq, vaNo, vfNa, vtPo,  ;
         vpPe, vnO1
 RELEASE vaPp, vaPm, vtPp, vsWw
 RELEASE vpAn_99
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
