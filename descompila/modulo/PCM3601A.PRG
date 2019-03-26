 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3601", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Ini_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3210", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3521DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3541DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Proveedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pagos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vtDo, vsEr, vdOc, vpRv, vsUc, vdIr, vnOm, vrUc,  ;
        vtPr, vnTp
 PUBLIC vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vtOt, vaCu, vsLd, vtD1, vsR1,  ;
        vdO1, vtB1
 PUBLIC vtB2, vtB3, vtB4, vtB5, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6,  ;
        vfB7, vfB8
 PUBLIC vfB9, vfB0, vcBi, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8,  ;
        vcB9, vcB0
 PUBLIC vsW0, vfCa, vrEn, vaNo, vmEs, vdIa, vsR2, vnUm, vpAg, vtPo, vmNd, vtCa
 STORE SPACE(11) TO vrUc
 STORE SPACE(04) TO vpRv
 STORE SPACE(20) TO vdO1
 STORE SPACE(50) TO vnTp, vnFp
 STORE SPACE(70) TO vnOm, vdIr
 STORE SPACE(02) TO vtPr, vfPa, vsUc, vtD1
 STORE DATE() TO vfEm, vfVe
 STORE "0000001" TO vdOc
 STORE "CO" TO vtDo
 STORE mmOn TO vmOn
 STORE miGv TO vpIg
 STORE msEr(01) TO vsEr, vsR1
 STORE 00 TO viT1, vtOt, vaCu, vsLd
 STORE 01 TO viTe, vsW0
 STORE 99 TO mkEy
 STORE 20.5 TO muFi
 STORE 106 TO muCo
 SET READBORDER ON
 DO p00_3601a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3601a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3601a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<=3
                = INKEY(0.01)
                SELECT ctAs_ini_cpras
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                STORE 99 TO mkEy
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE 03 TO viTe
                     STORE f3601tdo TO vtDo
                     STORE f3601ser TO vsEr
                     STORE f3601doc TO vdOc
                     @mFI0+0.5,mCO0+26.0 Say vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2 Pict "!!"
                     @mFI0+0.5,mCO0+31.5 Say vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5 Pict "999"
                     @mFI0+0.5,mCO0+37.5 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,08   Pict "9999999"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=4 .AND. vsW0=1
                = INKEY(0.01)
                SELECT prOveedores
                SET FILTER TO f2101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Proveedores registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB3, vcB3
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_F3
                     GOTO TOP
                ELSE
                     SET NEAR ON
                     SEEK UPPER(ALLTRIM(vnOm))
                     SET NEAR OFF
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB2 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "2101", "A", "F2101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     DO coL_fondo
                     STORE f2101cod TO vpRv
                     STORE f2101nom TO vnOm
                     STORE f2101ruc TO vrUc
                     STORE f2101tip TO vtPr
                     SELECT tiPos
                     SEEK vtPr
                     IF EOF()
                          STORE SPACE(50) TO vnTp
                     ELSE
                          STORE f9210nti TO vnTp
                     ENDIF
                     SELECT suCursales
                     SEEK vpRv
                     IF EOF()
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(70) TO vdIr
                     ELSE
                          STORE f2102suc TO vsUc
                          STORE f2102dir TO vdIr
                     ENDIF
                     @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                     @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
                     @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
                     @mFI0+7.0,mCO0+27 Say vNTP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
                ENDIF
                STORE 00 TO viT1
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3601a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3601a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=12 .AND. vsW0=1
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=13 .AND. vsW0=2
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2 .AND. viTe<>3 .AND. ((vsW0= ;
                1 .AND. viTe<>6 .AND. viTe<>7) .OR. (vsW0=2 .AND. viTe<>7  ;
                .AND. viTe<>8))
                STORE "No hay mas campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Up .AND. viTe<04
                STORE "No hay más campos arriba...        " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe<03
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT ctAs_ini_cpras
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vtDo+vsEr+vdOc
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc="S"
                               DO deL_3601a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                SELECT ctAs_ini_cpras
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3601tdo+f3601ser+f3601doc=vtDo+vsEr+vdOc
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3601a
                          DO diS_3601a
                ENDCASE
           CASE mkEy=k_F6
                SELECT ctAs_ini_cpras
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3601tdo+f3601ser+f3601doc=vtDo+vsEr+vdOc
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3601a
                          DO diS_3601a
                ENDCASE
           CASE mkEy=k_F7
                SELECT ctAs_ini_cpras
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ELSE
                     IF f3601tdo+f3601ser+f3601doc=vtDo+vsEr+vdOc
                          SKIP
                          IF EOF() .OR. BOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3601tdo+f3601ser+f3601doc=vtDo+vsEr+vdOc
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3601a
                          DO diS_3601a
                ENDCASE
           CASE mkEy=k_F8
                SELECT ctAs_ini_cpras
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f3601tdo+ ;
                    f3601ser+f3601doc>=vtDo+vsEr+vdOc
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3601tdo+f3601ser+f3601doc=vtDo+vsEr+vdOc
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3601a
                          DO diS_3601a
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_3601a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=12 .AND. vsW0=1
                               DO grA_3601a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=13 .AND. vsW0=2
                               DO grA_3601a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_3601a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=12 .AND. vsW0=1
                               DO grA_3601a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=13 .AND. vsW0=2
                               DO grA_3601a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<3
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3601a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE (viTe=5 .OR. viTe=6) .AND. vsW0=1
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3601a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE (viTe=6 .OR. viTe=7) .AND. vsW0=2
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3601a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_end
                IF vsW0=1
                     STORE 12 TO ciTx
                ELSE
                     STORE 13 TO ciTx
                ENDIF
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3601a
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
                IF vsW0=1
                     STORE 12 TO ciTx
                ELSE
                     STORE 13 TO ciTx
                ENDIF
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3601a
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
                     DO grA_3601a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SELECT ctAs_ini_cpras
           SEEK vtDo+vsEr+vdOc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe<4 .AND. (viT1>3 .OR. viT1=0)
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe>3
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4
                     DO prEsiona WITH "3", "VARIOS", vfB1, vcB1
                CASE vsW0=1
                     DO prEsiona WITH "1", "VARIOS", vfB1, vcB1
                OTHERWISE
                     DO prEsiona WITH "2", "VARIOS", vfB1, vcB1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2
                     DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2
                     DO prEsiona WITH "3", "BUSCAR", vfB3, vcB3
                OTHERWISE
                     DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vpRv))=0
                     DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vpRv))=0
                     DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vpRv))=0 .OR.  ;
                     LEN(ALLTRIM(vsUc))=0 .OR. vsUc="00"
                     DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4
                     DO prEsiona WITH "3", "CONSUL", vfB7, vcB7
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. LEN(ALLTRIM(vtPr))=0
                     DO prEsiona WITH "3", "DESCAR", vfB8, vcB8
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfB8, vcB8
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4
                     DO prEsiona WITH "3", "CONSUL", vfB9, vcB9
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. LEN(ALLTRIM(vfPa))=0
                     DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfB0, vcB0
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(106) Font "&mLetRom",9 Style "BQ" Size 1,106
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+32 Say "EL TIPO DE DOCUMENTO ES CO o LP..."                                           Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+33 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000..."                                         Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+28 Say "ES DE 7 DÍGITOS, NO PUEDE SER CEROS..."                                       Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+11 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                Font "&mLetRom",9 Style "BQ"
                CASE viTe=5 .AND. vsW0=2
                     @mMF2,mMC2+03 Say "EL RUC ES DE 11 DÍGITOS, SI SE VA A LLENAR NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                     @mMF2,mMC2+21 Say "EL TIPO DE DOCUMENTO ES FA, BO, NP, NC, ND..."                                Font "&mLetRom",9 Style "BQ"
                CASE (viTe=6 .AND. vsW0=1) .OR. (viTe=7 .AND. vsW0=2)
                     @mMF2,mMC2+33 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000..."                                         Font "&mLetRom",9 Style "BQ"
                CASE (viTe=7 .AND. vsW0=1) .OR. (viTe=8 .AND. vsW0=2)
                     @mMF2,mMC2+20 Say "ES DE 7 DÍGITOS, NO PUEDE SER CEROS, NI ESTAR VACÍO..."                       Font "&mLetRom",9 Style "BQ"
                CASE (viTe=8 .AND. vsW0=1) .OR. (viTe=9 .AND. vsW0=2)
                     @mMF2,mMC2+27 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                                  Font "&mLetRom",9 Style "BQ"
                CASE (viTe=9 .AND. vsW0=1) .OR. (viTe=10 .AND. vsW0=2)
                     @mMF2,mMC2+24 Say "LA FECHA DE VENCIMIENTO TIENE QUE SER VÁLIDA..."                              Font "&mLetRom",9 Style "BQ"
                CASE (viTe=10 .AND. vsW0=1) .OR. (viTe=11 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
                CASE (viTe=11 .AND. vsW0=1) .OR. (viTe=12 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
                CASE (viTe=12 .AND. vsW0=1) .OR. (viTe=13 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.5,mCO0+26.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2 Pict "!!"      Color ,&mColBlN
           CASE viTe=2
                @mFI0+0.5,mCO0+31.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5 Pict "999"     Color ,&mColBlN
           CASE viTe=3
                @mFI0+0.5,mCO0+37.5 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08   Pict "9999999" Color ,&mColBlN
           CASE viTe=4 .AND. (vsW0=2 .OR. LEN(ALLTRIM(vpRv))=0)
                @mFI0+2.5,mCO0+27 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,66,70
           CASE viTe=4
                DO coL_beige
                @mFI0+2.5,mCO0+27 Say  vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+2.5,mCO0+27 Say  vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
           CASE viTe=5 .AND. vsW0=2
                @mFI0+4.0,mCO0+27 Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
           CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                @mFI0+10,mCO0+27.0 Get vTD1 Font "&mLetAri",9 Style "NQ" Size 1,03.2 Pict "!!"  Color ,&mColBlN
           CASE (viTe=6 .AND. vsW0=1) .OR. (viTe=7 .AND. vsW0=2)
                @mFI0+10,mCO0+32.2 Get vSR1 Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999" Color ,&mColBlN
           CASE (viTe=7 .AND. vsW0=1) .OR. (viTe=8 .AND. vsW0=2)
                @mFI0+10,mCO0+38.1 Get vDO1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Color ,&mColBlN
           CASE (viTe=8 .AND. vsW0=1) .OR. (viTe=9 .AND. vsW0=2)
                @mFI0+11.5,mCO0+27 Get vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE (viTe=9 .AND. vsW0=1) .OR. (viTe=10 .AND. vsW0=2)
                @mFI0+13.0,mCO0+27 Get vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE (viTe=10 .AND. vsW0=1) .OR. (viTe=11 .AND. vsW0=2)
                @mFI0+14.5,mCO0+27 Get vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99"     Color ,&mColBlN
           CASE (viTe=11 .AND. vsW0=1) .OR. (viTe=12 .AND. vsW0=2)
                @mFI0+16.0,mCO0+27 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
           CASE (viTe=12 .AND. vsW0=1) .OR. (viTe=13 .AND. vsW0=2)
                @mFI0+17.5,mCO0+27 Get vACU Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
      ENDCASE
      DO CASE
           CASE viTe=4 .AND. vsW0=1 .AND. LEN(ALLTRIM(vpRv))<>0
           OTHERWISE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_3601a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. vtDo<>"CO" .AND. vtDo<>"LP"
           STORE "Tipo de Documento debe ser CO o LP..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "Serie de Documento no puede estar vacío...           "  ;
                 TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vsEr))<3
           STORE "Serie de Documento no puede ser menor de 3 dígitos..."  ;
                 TO mmSj
      CASE viTe=2 .AND. AT(" ", vsEr)<>0
           STORE "Serie de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=2 .AND. vsEr="000"
           STORE "Serie de Documento no puede ser 000...               "  ;
                 TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "Número de Documento no puede estar vacío...           "  ;
                 TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vdOc))<7
           STORE "Número de Documento no puede ser menor de 7 dígitos..."  ;
                 TO mmSj
      CASE viTe=3 .AND. AT(" ", vdOc)<>0
           STORE "Número de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=3
           SELECT ctAs_ini_cpras
           SEEK vtDo+vsEr+vdOc
           IF EOF()
                DO CASE
                     CASE vtDo="CO"
                          SELECT caB_cpra
                          SEEK vtDo+vsEr+vdOc
                          IF  .NOT. EOF()
                               STORE "Documento de Compra ya registrado en el Sistema..."  ;
                                     TO mmSj
                          ENDIF
                     CASE vtDo="LP"
                          SELECT leTras
                          SEEK vsEr+vdOc
                          IF  .NOT. EOF()
                               STORE "Letra ya registrada en el Sistema..."  ;
                                     TO mmSj
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO coL_fondo
                     @mFI0+0.2,mCO0+mUCO-17 Say "NUEVO" Font "&mLetRom",12 Style "BQ" Size 1,12
                     STORE SPACE(04) TO vpRv
                     STORE SPACE(11) TO vrUc
                     STORE SPACE(20) TO vdO1
                     STORE SPACE(50) TO vnTp, vnFp
                     STORE SPACE(70) TO vnOm, vdIr
                     STORE SPACE(02) TO vtPr, vfPa, vsUc, vtD1
                     STORE DATE() TO vfEm, vfVe
                     STORE 01 TO vsW0
                     STORE mmOn TO vmOn
                     STORE miGv TO vpIg
                     STORE msEr(01) TO vsR1
                     STORE 00 TO vtOt, vaCu, vsLd
                ENDIF
           ELSE
                DO muE_3601a
           ENDIF
           DO diS_3601a
      CASE viTe=4 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre o Razón Social no puede estar vacío... " TO mmSj
      CASE viTe=4 .AND. vsW0=1 .AND. LEN(ALLTRIM(vnOm))<>0 .AND.  ;
           LEN(ALLTRIM(vpRv))=0
           STORE "Proveedor tiene que estar registrado... " TO mmSj
      CASE viTe=5 .AND. vsW0=2 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. AT(" ",  ;
           vrUc)<>0
           STORE "Si se llena RUC, no puede tener espacios vacíos..." TO mmSj
      CASE viTe=5 .AND. vsW0=2 .AND. LEN(ALLTRIM(vrUc))<>0
           SELECT prOveedores
           DO orD_0000a WITH "2101", "A", "F2101RUC", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SEEK vrUc
           IF  .NOT. EOF()
                STORE f2101cod TO vpRv
                STORE f2101nom TO vnOm
                STORE f2101ruc TO vrUc
                DO diS_3601a
           ENDIF
           DO orD_0000a WITH "2101", "A", "F2101COD", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      CASE ((viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)) .AND. vtDo<> ;
           "AG" .AND. vtDo<>"AT" .AND. vtDo<>"BA" .AND. vtDo<>"BI" .AND.  ;
           vtDo<>"BO" .AND. vtDo<>"BM" .AND. vtDo<>"BT" .AND. vtDo<>"BV"  ;
           .AND. vtDo<>"C1" .AND. vtDo<>"C2" .AND. vtDo<>"CE" .AND. vtDo<> ;
           "CN" .AND. vtDo<>"CO" .AND. vtDo<>"CP" .AND. vtDo<>"CR" .AND.  ;
           vtDo<>"D1" .AND. vtDo<>"D2" .AND. vtDo<>"DA" .AND. vtDo<>"DS"  ;
           .AND. vtDo<>"DU" .AND. vtDo<>"FA" .AND. vtDo<>"FI" .AND. vtDo<> ;
           "FO" .AND. vtDo<>"FR" .AND. vtDo<>"GA" .AND. vtDo<>"GN" .AND.  ;
           vtDo<>"GR" .AND. vtDo<>"GT" .AND. vtDo<>"IG" .AND. vtDo<>"IV"  ;
           .AND. vtDo<>"LC" .AND. vtDo<>"LK" .AND. vtDo<>"RH" .AND. vtDo<> ;
           "ME" .AND. vtDo<>"NC" .AND. vtDo<>"ND" .AND. vtDo<>"OP" .AND.  ;
           vtDo<>"PA" .AND. vtDo<>"PE" .AND. vtDo<>"PO" .AND. vtDo<>"PU"  ;
           .AND. vtDo<>"RA" .AND. vtDo<>"RE" .AND. vtDo<>"SA" .AND. vtDo<> ;
           "SE" .AND. vtDo<>"SI" .AND. vtDo<>"TA" .AND. vtDo<>"TK"
           STORE "Tipo de Documento no registrado..." TO mmSj
      CASE (viTe=11 .OR. viTe=12) .AND. vsW0=1
           DO coL_fondo
           STORE vtOt-vaCu TO vsLd
           @mFI0+19,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
      CASE (viTe=12 .OR. viTe=13) .AND. vsW0=2
           DO coL_fondo
           STORE vtOt-vaCu TO vsLd
           @mFI0+19,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_3601a
 SELECT ctAs_ini_cpras
 DO coL_fondo
 @mFI0+0.2,mCO0+mUCO-17 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12
 STORE f3601tdo TO vtDo
 STORE f3601ser TO vsEr
 STORE f3601doc TO vdOc
 STORE f3601td1 TO vtD1
 STORE f3601sr1 TO vsR1
 STORE f3601do1 TO vdO1
 STORE f3601prv TO vpRv
 STORE f3601suc TO vsUc
 STORE f3601ruc TO vrUc
 STORE f3601nom TO vnOm
 STORE f3601tpr TO vtPr
 STORE f3601ntp TO vnTp
 STORE f3601fpa TO vfPa
 STORE f3601nfp TO vnFp
 STORE f3601fem TO vfEm
 STORE f3601fve TO vfVe
 STORE f3601pig TO vpIg
 STORE f3601mon TO vmOn
 STORE f3601tot TO vtOt
 STORE f3601acu TO vaCu
 STORE vtOt-vaCu TO vsLd
 IF LEN(ALLTRIM(vpRv))=0
      STORE 2 TO vsW0
 ELSE
      STORE 1 TO vsW0
 ENDIF
 SELECT suCursales
 SEEK vpRv+vsUc
 IF  .NOT. EOF()
      STORE f2102dir TO vdIr
 ELSE
      STORE SPACE(70) TO vdIr
 ENDIF
 SELECT ctAs_ini_cpras
ENDPROC
*
PROCEDURE Dis_3601a
 = INKEY(0.01)
 DO coLbln
 @mFI0+00.5,mCO0+26.0 Say vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2
 @mFI0+00.5,mCO0+31.5 Say vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5
 @mFI0+00.5,mCO0+37.5 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,08
 @mFI0+10.0,mCO0+27.0 Say vTD1 Font "&mLetAri",9  Style "NQ" Size 1,03.2
 @mFI0+10.0,mCO0+32.2 Say vSR1 Font "&mLetAri",9  Style "NQ" Size 1,03.9
 @mFI0+10.0,mCO0+38.1 Say vDO1 Font "&mLetAri",9  Style "NQ" Size 1,16.7
 @mFI0+11.5,mCO0+27.0 Say vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.2
 @mFI0+13.0,mCO0+27.0 Say vFVE Font "&mLetAri",9  Style "NQ" Size 1,12.2
 @mFI0+14.5,mCO0+27.0 Say vPIG Font "&mLetAri",9  Style "NQ" Size 1,07.3 Pict "99.99"
 @mFI0+16.0,mCO0+27.0 Say vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99"
 @mFI0+17.5,mCO0+27.0 Say vACU Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99"
 IF vsW0=1 .AND. LEN(ALLTRIM(vpRv))<>0
      DO coL_fondo
 ENDIF
 @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
 DO coLbln
 IF vsW0=1
      DO coL_fondo
 ENDIF
 @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
 DO coL_fondo
 @mFI0+05.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70   Pict "@S70"
 @mFI0+07.0,mCO0+27 Say vNTP Font "&mLetAri",9 Style "NQ" Size 1,50   Pict "@S50"
 @mFI0+08.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50   Pict "@S50"
 @mFI0+19.0,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
 @mFI0+16.0,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Gra_3601a
 PRIVATE ptOt, paCu
 DO grAbar WITH "1"
 STORE vfEm TO vfCa
 STORE 0 TO vrEn
 SELECT ctAs_ini_cpras
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT peNd_cpras
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                EXIT
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f3600tot TO ptOt
      STORE f3600acu TO paCu
 ELSE
      STORE 0 TO ptOt, paCu
 ENDIF
 SELECT ctAs_total_cpras
 SEEK vtDo+vsEr
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT ctAs_ini_cpras
 IF EOF()
      DO nuEvo_rg
      REPLACE f3601tdo WITH vtDo
      REPLACE f3601ser WITH vsEr
      REPLACE f3601doc WITH vdOc
 ENDIF
 REPLACE f3601td1 WITH vtD1
 REPLACE f3601sr1 WITH vsR1
 REPLACE f3601do1 WITH vdO1
 REPLACE f3601prv WITH vpRv
 REPLACE f3601suc WITH vsUc
 REPLACE f3601ruc WITH vrUc
 REPLACE f3601nom WITH vnOm
 REPLACE f3601tpr WITH vtPr
 REPLACE f3601ntp WITH vnTp
 REPLACE f3601fpa WITH vfPa
 REPLACE f3601nfp WITH vnFp
 REPLACE f3601fem WITH vfEm
 REPLACE f3601fve WITH vfVe
 REPLACE f3601pig WITH vpIg
 REPLACE f3601mon WITH vmOn
 REPLACE f3601tot WITH vtOt
 REPLACE f3601acu WITH vaCu
 UNLOCK
 DO slD_3601a
 SELECT peNd_cpras
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      DO nuEvo_rg
      REPLACE f3600tdo WITH vtDo
      REPLACE f3600ser WITH vsEr
      REPLACE f3600doc WITH vdOc
      REPLACE f3600acu WITH 0
 ENDIF
 REPLACE f3600td1 WITH vtD1
 REPLACE f3600sr1 WITH vsR1
 REPLACE f3600do1 WITH vdO1
 REPLACE f3600ruc WITH vrUc
 REPLACE f3600prv WITH vpRv
 REPLACE f3600suc WITH vsUc
 REPLACE f3600nom WITH vnOm
 REPLACE f3600tpr WITH vtPr
 REPLACE f3600ntp WITH vnTp
 REPLACE f3600fpa WITH vfPa
 REPLACE f3600nfp WITH vnFp
 REPLACE f3600fem WITH vfEm
 REPLACE f3600fve WITH vfVe
 REPLACE f3600mon WITH vmOn
 REPLACE f3600pig WITH vpIg
 REPLACE f3600tot WITH vtOt
 REPLACE f3600acu WITH vaCu
 IF vrEn=0 .AND. f3600tot-f3600acu=0
      REPLACE f3600fca WITH vfCa
      REPLACE f3600est WITH "@"
 ELSE
      REPLACE f3600fca WITH CTOD("  /  /    ")
      REPLACE f3600est WITH SPACE(01)
 ENDIF
 UNLOCK
 SELECT ctAs_total_cpras
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3602tdo WITH vtDo
      REPLACE f3602ser WITH vsEr
      REPLACE f3602to1 WITH 0
      REPLACE f3602in1 WITH 0
      REPLACE f3602ac1 WITH 0
      REPLACE f3602to2 WITH 0
      REPLACE f3602in2 WITH 0
      REPLACE f3602ac2 WITH 0
 ENDIF
 IF vmOn=1
      REPLACE f3602to1 WITH f3602to1-ptOt+vtOt
      REPLACE f3602ac1 WITH f3602ac1-paCu+vaCu
 ELSE
      REPLACE f3602to2 WITH f3602to2-ptOt+vtOt
      REPLACE f3602ac2 WITH f3602ac2-paCu+vaCu
 ENDIF
 UNLOCK
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_3601a
 DO grAbar WITH "2"
 SELECT ctAs_ini_cpras
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Tipo de Documento no registrado..." TO mmSj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT peNd_cpras
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                EXIT
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f3600tot TO ptOt
      STORE f3600acu TO paCu
 ELSE
      STORE 0 TO ptOt, paCu
 ENDIF
 SELECT ctAs_total_cpras
 SEEK vtDo+vsEr
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT ctAs_ini_cpras
 REPLACE f3601tdo WITH SPACE(02)
 REPLACE f3601ser WITH SPACE(03)
 REPLACE f3601doc WITH SPACE(07)
 DELETE
 UNLOCK
 SELECT peNd_cpras
 REPLACE f3600tdo WITH SPACE(02)
 REPLACE f3600ser WITH SPACE(03)
 REPLACE f3600doc WITH SPACE(07)
 DELETE
 UNLOCK
 STORE 0 TO vaCu
 SELECT ctAs_total_cpras
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3602tdo WITH vtDo
      REPLACE f3602ser WITH vsEr
      REPLACE f3602to1 WITH 0
      REPLACE f3602in1 WITH 0
      REPLACE f3602ac1 WITH 0
      REPLACE f3602to2 WITH 0
      REPLACE f3602in2 WITH 0
      REPLACE f3602ac2 WITH 0
 ENDIF
 IF vmOn=1
      REPLACE f3602to1 WITH f3602to1-ptOt+vtOt
      REPLACE f3602ac1 WITH f3602ac1-paCu+vaCu
 ELSE
      REPLACE f3602to2 WITH f3602to2-ptOt+vtOt
      REPLACE f3602ac2 WITH f3602ac2-paCu+vaCu
 ENDIF
 UNLOCK
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Sld_3601a
 SELECT deT_sal_caja
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=vtDo+vsEr+vdOc
      STORE f3521ano TO vaNo
      STORE f3521mes TO vmEs
      STORE f3521ser TO vsR1
      STORE f3521num TO vnUm
      STORE f3521pag TO vpAg
      SELECT caB_sal_caja
      SEEK vaNo+vmEs+vsR1+vnUm
      IF  .NOT. EOF() .AND. f3520est<>"9"
           STORE f3520tpo TO vtPo
           STORE f3520dia TO vdIa
           STORE f3520mon TO vmNd
           STORE f3520tca TO vtCa
           IF vfCa<CTOD(vdIa+"/"+vmEs+"/"+vaNo)
                STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO vfCa
           ENDIF
           IF vtPo<>1
                DO CASE
                     CASE vmOn=vmNd
                          STORE vaCu+vpAg TO vaCu
                     CASE vmOn=1
                          STORE vaCu+(vpAg*vtCa) TO vaCu
                     CASE vmOn=2
                          STORE vaCu+(vpAg/vtCa) TO vaCu
                ENDCASE
           ELSE
                STORE vrEn+vpAg TO vrEn
           ENDIF
      ENDIF
      SELECT deT_sal_caja
      SKIP
 ENDDO
 SELECT deT_sal_bancos
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=vtDo+vsEr+vdOc
      STORE f3541ano TO vaNo
      STORE f3541mes TO vmEs
      STORE f3541ser TO vsR1
      STORE f3541num TO vnUm
      STORE f3541pag TO vpAg
      SELECT caB_sal_bancos
      SEEK vaNo+vmEs+vsR1+vnUm
      IF  .NOT. EOF() .AND. f3540est<>"9"
           STORE f3540tpo TO vtPo
           STORE f3540dia TO vdIa
           STORE f3540mon TO vmNd
           STORE f3540tca TO vtCa
           IF vfCa<CTOD(vdIa+"/"+vmEs+"/"+vaNo)
                STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO vfCa
           ENDIF
           IF vtPo<>1
                DO CASE
                     CASE vmOn=vmNd
                          STORE vaCu+vpAg TO vaCu
                     CASE vmOn=1
                          STORE vaCu+(vpAg*vtCa) TO vaCu
                     CASE vmOn=2
                          STORE vaCu+(vpAg/vtCa) TO vaCu
                ENDCASE
           ELSE
                STORE vrEn+vpAg TO vrEn
           ENDIF
      ENDIF
      SELECT deT_sal_bancos
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_3601a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+1.5 TO mmF2
 STORE mfI0+00.40 TO vfBi
 STORE mfI0+02.45 TO vfB1, vfB2, vfB3, vfB4
 STORE mfI0+05.45 TO vfB5, vfB6
 STORE mfI0+06.95 TO vfB7, vfB8
 STORE mfI0+08.45 TO vfB9, vfB0
 STORE mcO0+49.60 TO vcBi
 STORE mcO0+22.50 TO vcB1
 STORE mcO0+93.50 TO vcB2
 STORE vcB2+4 TO vcB3, vcB5
 STORE vcB3+4 TO vcB4, vcB6
 STORE mcO0+77.70 TO vcB7, vcB9
 STORE vcB7+4 TO vcB8, vcB0
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+2.0,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F3601TDO+":"+F3601SER+"-"+F3601DOC+" "+Dtoc(F3601FEM)+" "+F3601NOM Scroll Color Scheme 10 Footer "DOCUMENTOS CON CTAS.INICIALES"
 Define Popup vTB2 from mFI0+3.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "CONSULTA DE PROVEEDORES"
 Define Popup vTB3 from mFI0+6.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB4 from mFI0+8.0,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F9210NTI Scroll Color Scheme 3 Footer "TIPOS DE PROVEEDORES"
 Define Popup vTB5 from mFI0+9.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO tiT_0000a WITH "Saldos Iniciales de Cuentas x Pagar"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1.1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+00.1, mcO0+1 TO mfI0+2.10, mcO0+56.70 PATTERN 1 COLOR SCHEME 7
 @ mfI0+00.1, mcO0+1 TO mfI0+0.10, mcO0+56.55 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+00.1, mcO0+1 TO mfI0+2.05, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 DO coLbln
 @mFI0+00.4,mCO0+2 Say "DOCUMENTO:"           Font "&mLetRom",12 Style "BT"
 @mFI0+02.5,mCO0+1 Say "Nombre/Razón Social"  Font "&mLetAri",9 Style "BT"
 @mFI0+04.0,mCO0+1 Say "R.U.C."               Font "&mLetAri",9 Style "NT"
 @mFI0+05.5,mCO0+1 Say "Sucursal"             Font "&mLetAri",9 Style "NT"
 @mFI0+07.0,mCO0+1 Say "Tipo de Proveedor"    Font "&mLetAri",9 Style "NT"
 @mFI0+08.5,mCO0+1 Say "Forma de Pago"        Font "&mLetAri",9 Style "NT"
 @mFI0+10.0,mCO0+1 Say "Documento Real"       Font "&mLetAri",9 Style "NT"
 @mFI0+11.5,mCO0+1 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BT"
 @mFI0+13.0,mCO0+1 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "NT"
 @mFI0+14.5,mCO0+1 Say "% IGV"                Font "&mLetAri",9 Style "NT"
 @mFI0+16.0,mCO0+1 Say "Total"                Font "&mLetAri",9 Style "BT"
 @mFI0+17.5,mCO0+1 Say "A/C"                  Font "&mLetAri",9 Style "NT"
 @mFI0+19.0,mCO0+1 Say "Saldo"                Font "&mLetAri",9 Style "BT"
 @mFI0+00.5,mCO0+26.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2 Color ,&mColBlN
 @mFI0+00.5,mCO0+31.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5 Color ,&mColBlN
 @mFI0+00.5,mCO0+37.5 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08   Color ,&mColBlN
 @mFI0+10.0,mCO0+27.0 Get vTD1 Font "&mLetAri",9  Style "NQ" Size 1,03.2 Color ,&mColBlN
 @mFI0+10.0,mCO0+32.2 Get vSR1 Font "&mLetAri",9  Style "NQ" Size 1,03.9 Color ,&mColBlN
 @mFI0+10.0,mCO0+38.1 Get vDO1 Font "&mLetAri",9  Style "NQ" Size 1,16.7 Color ,&mColBlN
 @mFI0+11.5,mCO0+27.0 Get vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+13.0,mCO0+27.0 Get vFVE Font "&mLetAri",9  Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+14.5,mCO0+27.0 Get vPIG Font "&mLetAri",9  Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
 @mFI0+16.0,mCO0+10.0 Get vMON Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$"
 @mFI0+16.0,mCO0+27.0 Get vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mColBlN
 @mFI0+17.5,mCO0+27.0 Get vACU Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mColBlN
 IF vsW0=1 .AND. LEN(ALLTRIM(vpRv))<>0
      DO coL_fondo
 ENDIF
 @mFI0+02.5,mCO0+27 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,66,70
 IF vsW0=1
      DO coL_fondo
 ENDIF
 DO coLbln
 @mFI0+04.0,mCO0+27 Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
 DO coL_fondo
 @mFI0+05.5,mCO0+27 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,70,70
 @mFI0+07.0,mCO0+27 Edit vNTP Font "&mLetAri",9 Style "NQ" Size 1,50,50
 @mFI0+08.5,mCO0+27 Edit vNFP Font "&mLetAri",9 Style "NQ" Size 1,50,50
 @mFI0+19.0,mCO0+27 Get  vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mCol_Fondo
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dir_3601a
 PARAMETER ppRg
 = INKEY(0.01)
 SELECT suCursales
 GOTO TOP
 SEEK vpRv
 IF EOF()
      STORE "Este Proveedor no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f2102cod=vpRv
 GOTO TOP
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f2102suc<>vsUc
      DO coL_fondo
      STORE f2102suc TO vsUc
      STORE f2102dir TO vdIr
      @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
 ENDIF
 STORE 99 TO mkEy
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Tpr_3601a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Proveedor registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9210", "U", "F9210NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTp)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9210tip<>vtPr
      DO coL_fondo
      STORE f9210tip TO vtPr
      STORE f9210nti TO vnTp
      @mFI0+7,mCO0+27 Say vNTP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9210", "U", "F9210TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Fpa_3601a
 = INKEY(0.01)
 SELECT paGos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112NFP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnFp)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9112fpa<>vfPa
      DO coL_fondo
      STORE f9112fpa TO vfPa
      STORE f9112nfp TO vnFp
      @mFI0+8.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Clp_3601a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>04
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>04
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
      CASE mfIl>=mfI0+15.857 .AND. mfIl<=mfI0+17.071 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+9.8 .AND. mcCc<=mcO0+16.4 .AND. vmOn<>1
           STORE 1 TO vmOn
           @mFI0+16,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+15.857 .AND. mfIl<=mfI0+17.071 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+16.4 .AND. mcCc<=mcO0+25.6 .AND. vmOn<>2
           STORE 2 TO vmOn
           @mFI0+16,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2 .AND. viTe>3
           IF vsW0=1
                STORE 2 TO vsW0
                STORE SPACE(50) TO vnTp
                STORE SPACE(70) TO vdIr
                STORE SPACE(02) TO vsUc, vtPr
           ELSE
                STORE 1 TO vsW0
           ENDIF
           DO diS_3601a
           STORE 00 TO viT1
           STORE 99 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>3 .AND. vsW0=1
           STORE 04 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>3 .AND. vsW0=1
           STORE 04 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>3 .AND. vsW0=1 .AND.  ;
           LEN(ALLTRIM(vpRv))<>0
           STORE 00 TO viT1
           STORE 04 TO viTe
           STORE 99 TO mkEy
           STORE SPACE(02) TO vtPr
           STORE SPACE(04) TO vpRv
           STORE SPACE(11) TO vrUc
           STORE SPACE(50) TO vnTp
           STORE SPACE(70) TO vnOm
           DO coLbln
           @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
           DO coL_fondo
           @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
           @mFI0+7.0,mCO0+27 Say vNTP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>3 .AND. vsW0=1 .AND.  ;
           LEN(ALLTRIM(vpRv))<>0
           DO diR_3601a
           STORE 99 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>3 .AND. vsW0=1 .AND.  ;
           LEN(ALLTRIM(vpRv))<>0 .AND. LEN(ALLTRIM(vsUc))<>0
           DO coL_fondo
           STORE 00 TO viT1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vsUc
           STORE SPACE(70) TO vdIr
           @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. viTe>3
           DO tpR_3601a
           STORE 99 TO mkEy
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2 .AND. viTe>3 .AND. LEN(ALLTRIM(vtPr))<>0
           DO coL_fondo
           STORE 99 TO mkEy
           STORE SPACE(02) TO vtPr
           STORE SPACE(50) TO vnTp
           @mFI0+7,mCO0+27 Say vNTP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2 .AND. viTe>3
           DO fpA_3601a
           STORE 99 TO mkEy
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2 .AND. viTe>3
           DO coL_fondo
           STORE 00 TO viT1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vfPa
           STORE SPACE(50) TO vnFp
           @mFI0+8.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=mfI0+0.464 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+25.6 .AND. mcCc<=mcO0+30.2
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.464 .AND. mfIl<=mfI0+1.892 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+31.2 .AND. mcCc<=mcO0+36.2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+0.464 .AND. mfIl<=mfI0+1.892 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+37.2 .AND. mcCc<=mcO0+49.2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+2.464 .AND. mfIl<=mfI0+3.607 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+0.4 .AND. mcCc<=mcO0+93.2
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+4.035 .AND. mfIl<=mfI0+5.178 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+0.4 .AND. mcCc<=mcO0+42.6 .AND. vsW0=2
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+10 .AND. mfIl<=mfI0+11.142 .AND. ((vsW0=1 .AND.  ;
           viTe<>5) .OR. (vsW0=2 .AND. viTe<>6)) .AND. mcCc>=mcO0+26.6  ;
           .AND. mcCc<=mcO0+30.6
           IF vsW0=1
                STORE 5 TO ciTx
           ELSE
                STORE 6 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+10 .AND. mfIl<=mfI0+11.142 .AND. ((vsW0=1 .AND.  ;
           viTe<>6) .OR. (vsW0=2 .AND. viTe<>7)) .AND. mcCc>=mcO0+31.8  ;
           .AND. mcCc<=mcO0+36.6
           IF vsW0=1
                STORE 6 TO ciTx
           ELSE
                STORE 7 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+10 .AND. mfIl<=mfI0+11.142 .AND. ((vsW0=1 .AND.  ;
           viTe<>7) .OR. (vsW0=2 .AND. viTe<>8)) .AND. mcCc>=mcO0+37.8  ;
           .AND. mcCc<=mcO0+55.4
           IF vsW0=1
                STORE 7 TO ciTx
           ELSE
                STORE 8 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+11.5 .AND. mfIl<=mfI0+12.642 .AND. ((vsW0=1 .AND.  ;
           viTe<>8) .OR. (vsW0=2 .AND. viTe<>9)) .AND. mcCc>=mcO0+26.6  ;
           .AND. mcCc<=mcO0+30.6
           IF vsW0=1
                STORE 8 TO ciTx
           ELSE
                STORE 9 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+12.928 .AND. mfIl<=mfI0+14.142 .AND. ((vsW0=1 .AND.  ;
           viTe<>9) .OR. (vsW0=2 .AND. viTe<>10)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+39.6
           IF vsW0=1
                STORE 9 TO ciTx
           ELSE
                STORE 10 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+14.5 .AND. mfIl<=mfI0+15.571 .AND. ((vsW0=1 .AND.  ;
           viTe<>10) .OR. (vsW0=2 .AND. viTe<>11)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+39.6
           IF vsW0=1
                STORE 10 TO ciTx
           ELSE
                STORE 11 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+16 .AND. mfIl<=mfI0+17.142 .AND. ((vsW0=1 .AND.  ;
           viTe<>11) .OR. (vsW0=2 .AND. viTe<>12)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+34.8
           IF vsW0=1
                STORE 11 TO ciTx
           ELSE
                STORE 12 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      CASE mfIl>=mfI0+17.5 .AND. mfIl<=mfI0+18.571 .AND. ((vsW0=1 .AND.  ;
           viTe<>12) .OR. (vsW0=2 .AND. viTe<>13)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+40.8
           IF vsW0=1
                STORE 12 TO ciTx
           ELSE
                STORE 13 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3601a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3601a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "Este Mantenimiento, es un programa utilitario, en donde se pueden crear,"
 @ pfIl+1, 01 SAY  ;
   "modificar y eliminar los Saldos Iniciales de Cuentas x Pagar."
 @ pfIl+3, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+6, 24 SAY ":" STYLE "BT"
 @ pfIl+7, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 06 SAY "ESC" STYLE "BT"
 @ pfIl+6, 06 SAY "F10" STYLE "BT"
 @ pfIl+7, 06 SAY "F1" STYLE "BT"
 @ pfIl+6, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+5, 26 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+5, 26 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+8 TO pfIl
 IF viTe<3 .OR. (viTe=4 .AND. vsW0=1)
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe<3
                @ pfIl, 26 SAY "Consulta de Documentos Registrados"
           CASE viTe=4 .AND. vsW0=1
                @ pfIl, 26 SAY "Consulta de Proveedores Registrados"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=4 .AND. vsW0=1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F3" STYLE "BT"
      @ pfIl, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "F5" STYLE "BT"
 @ pfIl+1, 06 SAY "F6" STYLE "BT"
 @ pfIl+2, 06 SAY "F7" STYLE "BT"
 @ pfIl+3, 06 SAY "F8" STYLE "BT"
 @ pfIl+4, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 26 SAY "Inicio del Archivo"
 @ pfIl+1, 26 SAY "Final del Archivo"
 @ pfIl+2, 26 SAY "Registro siguiente"
 @ pfIl+3, 26 SAY "Registro anterior"
 @ pfIl+4, 26 SAY "Ir al siguiente campo, llegando al final graba"
 @ pfIl+5, 26 SAY "Ir al campo inferior, llegando al final graba"
 STORE pfIl+6 TO pfIl
 IF viTe>3
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 26 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 24 SAY ":" STYLE "BT"
 @ pfIl, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 26 SAY "Ir al siguiente campo, llegando al final graba"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 26 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 24 SAY ":" STYLE "BT"
 @ pfIl, 06 SAY "CTRL END" STYLE "BT"
 @ pfIl, 26 SAY "Ir al último campo"
 STORE pfIl+1 TO pfIl
 IF viTe>3
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "CTRL DEL" STYLE "BT"
      @ pfIl+1, 06 SAY "TAB" STYLE "BT"
      @ pfIl+0, 26 SAY "Borrar registro"
      @ pfIl+1, 26 SAY "Grabar y regresar al 1er.campo"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, vtDo, vsEr, vdOc, vpRv, vsUc, vdIr, vnOm, vrUc,  ;
         vtPr, vnTp
 RELEASE vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vtOt, vaCu, vsLd, vtD1, vsR1,  ;
         vdO1, vtB1
 RELEASE vtB2, vtB3, vtB4, vtB5, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6,  ;
         vfB7, vfB8
 RELEASE vfB9, vfB0, vcBi, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8,  ;
         vcB9, vcB0
 RELEASE vsW0, vfCa, vrEn, vaNo, vmEs, vdIa, vsR2, vnUm, vpAg, vtPo, vmNd, vtCa
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
