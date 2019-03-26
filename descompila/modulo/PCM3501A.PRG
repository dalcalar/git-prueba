 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3501", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Ini_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3501DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
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
 SELECT 15
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
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vtDo, vsEr, vdOc, vcLi, vsUc, vdIr, vnOm, vrUc,  ;
        vtIt, vnTi
 PUBLIC vtCl, vnTc, vfPa, vnFp, vfEm, vfVe, vvEn, vnVe, vpIg, vmOn, vtOt,  ;
        vaCu, vsLd
 PUBLIC vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vfBi, vfB1, vfB2, vfB3,  ;
        vfB4, vfB5
 PUBLIC vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vcBi,  ;
        vcB1, vcB2
 PUBLIC vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb, vcBc,  ;
        vcBd, vcBe
 PUBLIC vsW0, vfCa, vpG1, vpG2, vrEn, vaNo, vmEs, vdIa, vsR1, vnUm, vpAg,  ;
        vtPo, vmNd
 PUBLIC vtCa
 STORE SPACE(11) TO vrUc
 STORE SPACE(04) TO vcLi, vtIt
 STORE SPACE(50) TO vnTc, vnVe, vnFp
 STORE SPACE(70) TO vnOm, vdIr, vnTi
 STORE SPACE(02) TO vtCl, vvEn, vfPa, vsUc
 STORE DATE() TO vfEm, vfVe
 STORE "0000001" TO vdOc
 STORE "FA" TO vtDo
 STORE mmOn TO vmOn
 STORE miGv TO vpIg
 STORE msEr(01) TO vsEr
 STORE 00 TO viT1, vtOt, vaCu, vsLd
 STORE 01 TO viTe, vsW0
 STORE 99 TO mkEy
 STORE 22 TO muFi
 STORE 106 TO muCo
 SET READBORDER ON
 DO p00_3501a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3501a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3501a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<=3
                = INKEY(0.01)
                SELECT ctAs_ini_vtas
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
                     STORE f3501tdo TO vtDo
                     STORE f3501ser TO vsEr
                     STORE f3501doc TO vdOc
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
                SELECT clIentes
                SET FILTER TO f1101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Clientes registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO (AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f1101nom)))<>0 .OR. AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f1101ali)))<>0) .AND. f1101est<>"9"
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Clientes que contengan la palabra o frase..."  ;
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
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
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
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     DO coL_fondo
                     STORE f1101cod TO vcLi
                     STORE f1101nom TO vnOm
                     STORE f1101ruc TO vrUc
                     STORE f1101tip TO vtCl
                     SELECT tiPos
                     SEEK vtCl
                     IF EOF()
                          STORE SPACE(50) TO vnTc
                     ELSE
                          STORE f9110nti TO vnTc
                     ENDIF
                     SELECT suCursales
                     SEEK vcLi
                     IF EOF()
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(70) TO vdIr
                     ELSE
                          STORE f1102suc TO vsUc
                          STORE f1102dir TO vdIr
                     ENDIF
                     @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                     @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
                     @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
                     @mFI0+7.0,mCO0+27 Say vNTC Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
                ENDIF
                STORE 00 TO viT1
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. ((viTe=5 .AND. vsW0=1)  ;
                .OR. (viTe=6 .AND. vsW0=2))
                = INKEY(0.01)
                SELECT clIentes
                SET FILTER TO f1101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Clientes Titulares registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO (AT(UPPER(ALLTRIM(vnTi)), UPPER(ALLTRIM(f1101nom)))<>0 .OR. AT(UPPER(ALLTRIM(vnTi)), UPPER(ALLTRIM(f1101ali)))<>0) .AND. f1101est<>"9"
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Clientes Titulares que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB0, vcB0
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB9, vcB9
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_F3
                     GOTO TOP
                ELSE
                     SET NEAR ON
                     SEEK UPPER(ALLTRIM(vnTi))
                     SET NEAR OFF
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB7 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     DO coL_fondo
                     STORE f1101cod TO vtIt
                     STORE f1101nom TO vnTi
                     @mFI0+8.5,mCO0+27 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                ENDIF
                STORE 00 TO viT1
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3501a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3501a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=10 .AND. vsW0=1
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=11 .AND. vsW0=2
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2 .AND. viTe<>3
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
                SELECT ctAs_ini_vtas
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
                               DO deL_3501a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                SELECT ctAs_ini_vtas
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3501tdo+f3501ser+f3501doc=vtDo+vsEr+vdOc
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3501a
                          DO diS_3501a
                ENDCASE
           CASE mkEy=k_F6
                SELECT ctAs_ini_vtas
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3501tdo+f3501ser+f3501doc=vtDo+vsEr+vdOc
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3501a
                          DO diS_3501a
                ENDCASE
           CASE mkEy=k_F7
                SELECT ctAs_ini_vtas
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ELSE
                     IF f3501tdo+f3501ser+f3501doc=vtDo+vsEr+vdOc
                          SKIP
                          IF EOF() .OR. BOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3501tdo+f3501ser+f3501doc=vtDo+vsEr+vdOc
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3501a
                          DO diS_3501a
                ENDCASE
           CASE mkEy=k_F8
                SELECT ctAs_ini_vtas
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f3501tdo+ ;
                    f3501ser+f3501doc>=vtDo+vsEr+vdOc
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f3501tdo+f3501ser+f3501doc=vtDo+vsEr+vdOc
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_3501a
                          DO diS_3501a
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_3501a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=10 .AND. vsW0=1
                               DO grA_3501a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=11 .AND. vsW0=2
                               DO grA_3501a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_3501a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=10 .AND. vsW0=1
                               DO grA_3501a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=11 .AND. vsW0=2
                               DO grA_3501a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<3
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3501a
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
                     STORE 10 TO ciTx
                ELSE
                     STORE 11 TO ciTx
                ENDIF
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3501a
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
                     STORE 10 TO ciTx
                ELSE
                     STORE 11 TO ciTx
                ENDIF
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3501a
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
                     DO grA_3501a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SELECT ctAs_ini_vtas
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
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vcLi))=0
                     DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vcLi))=0
                     DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. vsW0=2 .OR. LEN(ALLTRIM(vcLi))=0 .OR.  ;
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
                CASE viTe<4 .OR. LEN(ALLTRIM(vtCl))=0
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
                CASE viTe<4
                     DO prEsiona WITH "3", "BUSCAR", vfB0, vcB0
                OTHERWISE
                     DO prEsiona WITH "1", "BUSCAR", vfB0, vcB0
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. LEN(ALLTRIM(vtIt))=0
                     DO prEsiona WITH "3", "DESCAR", vfBa, vcBa
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfBa, vcBa
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4
                     DO prEsiona WITH "3", "CONSUL", vfBb, vcBb
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfBb, vcBb
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. LEN(ALLTRIM(vvEn))=0
                     DO prEsiona WITH "3", "DESCAR", vfBc, vcBc
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfBc, vcBc
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4
                     DO prEsiona WITH "3", "CONSUL", vfBd, vcBd
                OTHERWISE
                     DO prEsiona WITH "1", "CONSUL", vfBd, vcBd
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO CASE
                CASE viTe<4 .OR. LEN(ALLTRIM(vfPa))=0
                     DO prEsiona WITH "3", "DESCAR", vfBe, vcBe
                OTHERWISE
                     DO prEsiona WITH "1", "DESCAR", vfBe, vcBe
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(106) Font "&mLetRom",9 Style "BQ" Size 1,106
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+21 Say "EL TIPO DE DOCUMENTO ES FA, BO, NP, NC, ND o LE..."                           Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+33 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000..."                                         Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+28 Say "ES DE 7 DÍGITOS, NO PUEDE SER CEROS..."                                       Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+11 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                Font "&mLetRom",9 Style "BQ"
                CASE viTe=5 .AND. vsW0=2
                     @mMF2,mMC2+03 Say "EL RUC ES DE 11 DÍGITOS, SI SE VA A LLENAR NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                     @mMF2,mMC2+11 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                Font "&mLetRom",9 Style "BQ"
                CASE (viTe=6 .AND. vsW0=1) .OR. (viTe=7 .AND. vsW0=2)
                     @mMF2,mMC2+27 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                                  Font "&mLetRom",9 Style "BQ"
                CASE (viTe=7 .AND. vsW0=1) .OR. (viTe=8 .AND. vsW0=2)
                     @mMF2,mMC2+24 Say "LA FECHA DE VENCIMIENTO TIENE QUE SER VÁLIDA..."                              Font "&mLetRom",9 Style "BQ"
                CASE (viTe=8 .AND. vsW0=1) .OR. (viTe=9 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
                CASE (viTe=9 .AND. vsW0=1) .OR. (viTe=10 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
                CASE (viTe=10 .AND. vsW0=1) .OR. (viTe=11 .AND. vsW0=2)
                     @mMF2,mMC2+12 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."            Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.5,mCO0+26.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2 Pict "!!"      Color ,&mColBlN
           CASE viTe=2
                @mFI0+00.5,mCO0+31.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5 Pict "999"     Color ,&mColBlN
           CASE viTe=3
                @mFI0+00.5,mCO0+37.5 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08   Pict "9999999" Color ,&mColBlN
           CASE viTe=4 .AND. (vsW0=2 .OR. LEN(ALLTRIM(vcLi))=0)
                @mFI0+02.5,mCO0+27 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,66,70
           CASE viTe=4
                DO coL_beige
                @mFI0+02.5,mCO0+27 Say  vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+02.5,mCO0+27 Say  vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
           CASE viTe=5 .AND. vsW0=2
                @mFI0+04.0,mCO0+27 Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
           CASE ((viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)) .AND.  ;
                LEN(ALLTRIM(vtIt))=0
                @mFI0+08.5,mCO0+27 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,66,70
           CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                DO coL_beige
                @mFI0+08.5,mCO0+27 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+08.5,mCO0+27 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
           CASE (viTe=6 .AND. vsW0=1) .OR. (viTe=7 .AND. vsW0=2)
                @mFI0+13.0,mCO0+27 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE (viTe=7 .AND. vsW0=1) .OR. (viTe=8 .AND. vsW0=2)
                @mFI0+14.5,mCO0+27 Get  vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE (viTe=8 .AND. vsW0=1) .OR. (viTe=9 .AND. vsW0=2)
                @mFI0+16.0,mCO0+27 Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99"     Color ,&mColBlN
           CASE (viTe=9 .AND. vsW0=1) .OR. (viTe=10 .AND. vsW0=2)
                @mFI0+17.5,mCO0+27 Get  vTOT Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
           CASE (viTe=10 .AND. vsW0=1) .OR. (viTe=11 .AND. vsW0=2)
                @mFI0+19.0,mCO0+27 Get  vACU Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
      ENDCASE
      DO CASE
           CASE viTe=4 .AND. vsW0=1 .AND. LEN(ALLTRIM(vcLi))<>0
           CASE ((viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)) .AND.  ;
                LEN(ALLTRIM(vtIt))<>0
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
PROCEDURE Ver_3501a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. vtDo<>"FA" .AND. vtDo<>"BO" .AND. vtDo<>"NP"  ;
           .AND. vtDo<>"LE" .AND. vtDo<>"ND" .AND. vtDo<>"NC"
           STORE "Tipo de Documento debe ser FA,BO,NP,LE,ND o NC...    "  ;
                 TO mmSj
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
           SELECT ctAs_ini_vtas
           SEEK vtDo+vsEr+vdOc
           IF EOF()
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="BO" .OR. vtDo="NP"
                          SELECT caB_fact
                          SEEK vtDo+vsEr+vdOc
                          IF  .NOT. EOF()
                               STORE "Documento de Venta ya registrado en el Sistema..."  ;
                                     TO mmSj
                          ENDIF
                     CASE vtDo="LE"
                          SELECT leTras
                          SEEK vsEr+vdOc
                          IF  .NOT. EOF()
                               STORE "Letra ya registrada en el Sistema..."  ;
                                     TO mmSj
                          ENDIF
                     CASE vtDo="NC" .OR. vtDo="ND"
                          SELECT caB_nota
                          SEEK vtDo+vsEr+vdOc
                          IF  .NOT. EOF()
                               STORE "Nota Contable ya registrado en el Sistema... "  ;
                                     TO mmSj
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO coL_fondo
                     @mFI0+0.2,mCO0+mUCO-17 Say "NUEVO" Font "&mLetRom",12 Style "BQ" Size 1,12
                     STORE SPACE(11) TO vrUc
                     STORE SPACE(04) TO vcLi, vtIt
                     STORE SPACE(50) TO vnTc, vnVe, vnFp
                     STORE SPACE(70) TO vnOm, vdIr, vnTi
                     STORE SPACE(02) TO vtCl, vvEn, vfPa, vsUc
                     STORE DATE() TO vfEm, vfVe
                     STORE 01 TO vsW0
                     STORE mmOn TO vmOn
                     STORE miGv TO vpIg
                     STORE 00 TO vtOt, vaCu, vsLd
                ENDIF
           ELSE
                DO muE_3501a
           ENDIF
           DO diS_3501a
      CASE viTe=4 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre o Razón Social no puede estar vacío... " TO mmSj
      CASE viTe=4 .AND. vsW0=1 .AND. LEN(ALLTRIM(vnOm))<>0 .AND.  ;
           LEN(ALLTRIM(vcLi))=0
           STORE "Cliente tiene que estar registrado... " TO mmSj
      CASE viTe=5 .AND. vsW0=2 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. AT(" ",  ;
           vrUc)<>0
           STORE "Si se llena RUC, no puede tener espacios vacíos..." TO mmSj
      CASE viTe=5 .AND. vsW0=2 .AND. LEN(ALLTRIM(vrUc))<>0
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vrUc
           IF  .NOT. EOF()
                STORE f1101cod TO vcLi
                STORE f1101nom TO vnOm
                STORE f1101ruc TO vrUc
                DO diS_3501a
           ENDIF
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE ((viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)) .AND.  ;
           LEN(ALLTRIM(vnTi))<>0 .AND. LEN(ALLTRIM(vtIt))=0
           STORE "Titular tiene que estar registrado o estar vacío..." TO mmSj
      CASE viTe=5 .AND. vsW0=1 .AND. vtIt<>vcLi
           STORE "Titular y Cliente deben ser el mismo..." TO mmSj
      CASE (viTe=9 .OR. viTe=10) .AND. vsW0=1
           DO coL_fondo
           STORE vtOt-vaCu TO vsLd
           @mFI0+20.5,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
      CASE (viTe=10 .OR. viTe=11) .AND. vsW0=2
           DO coL_fondo
           STORE vtOt-vaCu TO vsLd
           @mFI0+20.5,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_3501a
 SELECT ctAs_ini_vtas
 DO coL_fondo
 @mFI0+0.2,mCO0+mUCO-17 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12
 STORE f3501tdo TO vtDo
 STORE f3501ser TO vsEr
 STORE f3501doc TO vdOc
 STORE f3501ven TO vvEn
 STORE f3501nve TO vnVe
 STORE f3501tit TO vtIt
 STORE f3501nti TO vnTi
 STORE f3501cli TO vcLi
 STORE f3501suc TO vsUc
 STORE f3501ruc TO vrUc
 STORE f3501nom TO vnOm
 STORE f3501tcl TO vtCl
 STORE f3501ntc TO vnTc
 STORE f3501fpa TO vfPa
 STORE f3501nfp TO vnFp
 STORE f3501fem TO vfEm
 STORE f3501fve TO vfVe
 STORE f3501pig TO vpIg
 STORE f3501mon TO vmOn
 STORE f3501tot TO vtOt
 STORE f3501acu TO vaCu
 STORE vtOt-vaCu TO vsLd
 IF LEN(ALLTRIM(vcLi))=0
      STORE 2 TO vsW0
 ELSE
      STORE 1 TO vsW0
 ENDIF
 SELECT suCursales
 SEEK vcLi+vsUc
 IF  .NOT. EOF()
      STORE f1102dir TO vdIr
 ELSE
      STORE SPACE(70) TO vdIr
 ENDIF
 SELECT ctAs_ini_vtas
ENDPROC
*
PROCEDURE Dis_3501a
 = INKEY(0.01)
 DO coLbln
 @mFI0+00.5,mCO0+26.0 Say vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2
 @mFI0+00.5,mCO0+31.5 Say vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5
 @mFI0+00.5,mCO0+37.5 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,08
 @mFI0+13.0,mCO0+27.0 Say vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.2
 @mFI0+14.5,mCO0+27.0 Say vFVE Font "&mLetAri",9  Style "NQ" Size 1,12.2
 @mFI0+16.0,mCO0+27.0 Say vPIG Font "&mLetAri",9  Style "NQ" Size 1,07.3 Pict "99.99"
 @mFI0+17.5,mCO0+27.0 Say vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99"
 @mFI0+19.0,mCO0+27.0 Say vACU Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99"
 IF vsW0=1 .AND. LEN(ALLTRIM(vcLi))<>0
      DO coL_fondo
 ENDIF
 @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
 DO coLbln
 IF vsW0=1
      DO coL_fondo
 ENDIF
 @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
 DO coLbln
 IF vsW0=1 .AND. LEN(ALLTRIM(vtIt))<>0
      DO coL_fondo
 ENDIF
 @mFI0+8.5,mCO0+27 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
 DO coL_fondo
 @mFI0+05.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70   Pict "@S70"
 @mFI0+07.0,mCO0+27 Say vNTC Font "&mLetAri",9 Style "NQ" Size 1,50   Pict "@S50"
 @mFI0+10.0,mCO0+27 Say vNVE Font "&mLetAri",9 Style "NQ" Size 1,50   Pict "@S50"
 @mFI0+11.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50   Pict "@S50"
 @mFI0+20.5,mCO0+27 Say vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99"
 @mFI0+17.5,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Gra_3501a
 PRIVATE ptOt, paCu
 DO grAbar WITH "1"
 STORE vfEm TO vfCa
 STORE 0 TO vrEn
 SELECT ctAs_ini_vtas
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
 SELECT peNd_vtas
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
      STORE f3500tot TO ptOt
      STORE f3500acu TO paCu
 ELSE
      STORE 0 TO ptOt, paCu
 ENDIF
 SELECT ctAs_total_vtas
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
 SELECT ctAs_ini_vtas
 IF EOF()
      DO nuEvo_rg
      REPLACE f3501tdo WITH vtDo
      REPLACE f3501ser WITH vsEr
      REPLACE f3501doc WITH vdOc
 ENDIF
 REPLACE f3501ven WITH vvEn
 REPLACE f3501nve WITH vnVe
 REPLACE f3501tit WITH vtIt
 REPLACE f3501nti WITH vnTi
 REPLACE f3501cli WITH vcLi
 REPLACE f3501suc WITH vsUc
 REPLACE f3501ruc WITH vrUc
 REPLACE f3501nom WITH vnOm
 REPLACE f3501tcl WITH vtCl
 REPLACE f3501ntc WITH vnTc
 REPLACE f3501fpa WITH vfPa
 REPLACE f3501nfp WITH vnFp
 REPLACE f3501fem WITH vfEm
 REPLACE f3501fve WITH vfVe
 REPLACE f3501pig WITH vpIg
 REPLACE f3501mon WITH vmOn
 REPLACE f3501tot WITH vtOt
 REPLACE f3501acu WITH vaCu
 UNLOCK
 DO slD_3501a
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      DO nuEvo_rg
      REPLACE f3500tdo WITH vtDo
      REPLACE f3500ser WITH vsEr
      REPLACE f3500doc WITH vdOc
      REPLACE f3500acu WITH 0
 ENDIF
 REPLACE f3500ruc WITH vrUc
 REPLACE f3500ven WITH vvEn
 REPLACE f3500nve WITH vnVe
 REPLACE f3500tit WITH vtIt
 REPLACE f3500nti WITH vnTi
 REPLACE f3500cli WITH vcLi
 REPLACE f3500suc WITH vsUc
 REPLACE f3500nom WITH vnOm
 REPLACE f3500tcl WITH vtCl
 REPLACE f3500ntc WITH vnTc
 REPLACE f3500fpa WITH vfPa
 REPLACE f3500nfp WITH vnFp
 REPLACE f3500fem WITH vfEm
 REPLACE f3500fve WITH vfVe
 REPLACE f3500mon WITH vmOn
 REPLACE f3500pig WITH vpIg
 REPLACE f3500tot WITH vtOt
 REPLACE f3500acu WITH vaCu
 IF vrEn=0 .AND. f3500tot+f3500int-f3500acu=0
      REPLACE f3500fca WITH vfCa
      IF f3500tdo="NC" .OR. f3500tdo="ND" .OR. f3500tdo="LE" .OR.  ;
         f3500can="2" .OR. mgRa=1
           REPLACE f3500est WITH "@"
      ELSE
           REPLACE f3500est WITH SPACE(01)
      ENDIF
 ELSE
      REPLACE f3500fca WITH CTOD("  /  /    ")
      REPLACE f3500est WITH SPACE(01)
 ENDIF
 UNLOCK
 SELECT ctAs_total_vtas
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH vtDo
      REPLACE f3502ser WITH vsEr
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ENDIF
 IF vmOn=1
      REPLACE f3502to1 WITH f3502to1-ptOt+vtOt
      REPLACE f3502ac1 WITH f3502ac1-paCu+vaCu
 ELSE
      REPLACE f3502to2 WITH f3502to2-ptOt+vtOt
      REPLACE f3502ac2 WITH f3502ac2-paCu+vaCu
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
PROCEDURE Del_3501a
 DO grAbar WITH "2"
 SELECT ctAs_ini_vtas
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
 SELECT peNd_vtas
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
      STORE f3500tot TO ptOt
      STORE f3500acu TO paCu
 ELSE
      STORE 0 TO ptOt, paCu
 ENDIF
 SELECT ctAs_total_vtas
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
 SELECT ctAs_ini_vtas
 REPLACE f3501tdo WITH SPACE(02)
 REPLACE f3501ser WITH SPACE(03)
 REPLACE f3501doc WITH SPACE(07)
 DELETE
 UNLOCK
 SELECT peNd_vtas
 REPLACE f3500tdo WITH SPACE(02)
 REPLACE f3500ser WITH SPACE(03)
 REPLACE f3500doc WITH SPACE(07)
 DELETE
 UNLOCK
 STORE 0 TO vaCu
 SELECT ctAs_total_vtas
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH vtDo
      REPLACE f3502ser WITH vsEr
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ENDIF
 IF vmOn=1
      REPLACE f3502to1 WITH f3502to1-ptOt+vtOt
      REPLACE f3502ac1 WITH f3502ac1-paCu+vaCu
 ELSE
      REPLACE f3502to2 WITH f3502to2-ptOt+vtOt
      REPLACE f3502ac2 WITH f3502ac2-paCu+vaCu
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
PROCEDURE Sld_3501a
 SELECT deT_ing_caja
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=vtDo+vsEr+vdOc
      STORE f3511ano TO vaNo
      STORE f3511mes TO vmEs
      STORE f3511ser TO vsR1
      STORE f3511num TO vnUm
      STORE f3511pag TO vpAg
      SELECT caB_ing_caja
      SEEK vaNo+vmEs+vsR1+vnUm
      IF  .NOT. EOF() .AND. f3510est<>"9"
           STORE f3510tpo TO vtPo
           STORE f3510dia TO vdIa
           STORE f3510mon TO vmNd
           STORE f3510tca TO vtCa
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
      SELECT deT_ing_caja
      SKIP
 ENDDO
 SELECT deT_ing_bancos
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=vtDo+vsEr+vdOc
      STORE f3531ano TO vaNo
      STORE f3531mes TO vmEs
      STORE f3531ser TO vsR1
      STORE f3531num TO vnUm
      STORE f3531pag TO vpAg
      SELECT caB_ing_bancos
      SEEK vaNo+vmEs+vsR1+vnUm
      IF  .NOT. EOF() .AND. f3530est<>"9"
           STORE f3530tpo TO vtPo
           STORE f3530dia TO vdIa
           STORE f3530mon TO vmNd
           STORE f3530tca TO vtCa
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
      SELECT deT_ing_bancos
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_3501a
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
 STORE mfI0+08.45 TO vfB9, vfB0, vfBa
 STORE mfI0+09.95 TO vfBb, vfBc
 STORE mfI0+11.45 TO vfBd, vfBe
 STORE mcO0+49.60 TO vcBi
 STORE mcO0+22.50 TO vcB1
 STORE mcO0+93.50 TO vcB2, vcB9
 STORE vcB2+4 TO vcB3, vcB5, vcB0
 STORE vcB3+4 TO vcB4, vcB6, vcBa
 STORE mcO0+77.70 TO vcB7, vcBb, vcBd
 STORE vcB7+4 TO vcB8, vcBc, vcBe
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+02.0,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F3501TDO+":"+F3501SER+"-"+F3501DOC+" "+Dtoc(F3501FEM)+" "+F3501NOM Scroll Color Scheme 10 Footer "DOCUMENTOS CON CTAS.INICIALES"
 Define Popup vTB2 from mFI0+03.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES"
 Define Popup vTB3 from mFI0+06.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field AllTrim(F1102DIR)+", "+AllTrim(F1102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB4 from mFI0+08.0,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F9110NTI Scroll Color Scheme 3 Footer "TIPOS DE CLIENTES"
 Define Popup vTB5 from mFI0+12.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
 Define Popup vTB6 from mFI0+11.0,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
 Define Popup vTB7 from mFI0+09.5,mCO0 to mFI0+24.5,mCO0+106 Font "&mLetAri",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES TITULARES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 ON SELECTION POPUP vtB7 DO TB7_0000A
 DO tiT_0000a WITH "Saldos Iniciales de Cuentas x Cobrar"
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
 @ mfI0+0.1, mcO0+1 TO mfI0+2.10, mcO0+56.70 PATTERN 1 COLOR SCHEME 7
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+56.55 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.05, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 DO coLbln
 @mFI0+00.4,mCO0+2 Say "DOCUMENTO:"           Font "&mLetRom",12 Style "BT"
 @mFI0+02.5,mCO0+1 Say "Nombre/Razón Social"  Font "&mLetAri",9 Style "BT"
 @mFI0+04.0,mCO0+1 Say "R.U.C."               Font "&mLetAri",9 Style "NT"
 @mFI0+05.5,mCO0+1 Say "Sucursal"             Font "&mLetAri",9 Style "NT"
 @mFI0+07.0,mCO0+1 Say "Tipo de Cliente"      Font "&mLetAri",9 Style "NT"
 @mFI0+08.5,mCO0+1 Say "Titular"              Font "&mLetAri",9 Style "NT"
 @mFI0+10.0,mCO0+1 Say "Vendedor"             Font "&mLetAri",9 Style "NT"
 @mFI0+11.5,mCO0+1 Say "Forma de Pago"        Font "&mLetAri",9 Style "NT"
 @mFI0+13.0,mCO0+1 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BT"
 @mFI0+14.5,mCO0+1 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "NT"
 @mFI0+16.0,mCO0+1 Say "% IGV"                Font "&mLetAri",9 Style "NT"
 @mFI0+17.5,mCO0+1 Say "Total"                Font "&mLetAri",9 Style "BT"
 @mFI0+19.0,mCO0+1 Say "A/C"                  Font "&mLetAri",9 Style "NT"
 @mFI0+20.5,mCO0+1 Say "Saldo"                Font "&mLetAri",9 Style "BT"
 @mFI0+00.5,mCO0+26.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,03.2 Color ,&mColBlN
 @mFI0+00.5,mCO0+31.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,03.5 Color ,&mColBlN
 @mFI0+00.5,mCO0+37.5 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08   Color ,&mColBlN
 @mFI0+13.0,mCO0+27.0 Get vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+14.5,mCO0+27.0 Get vFVE Font "&mLetAri",9  Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+16.0,mCO0+27.0 Get vPIG Font "&mLetAri",9  Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
 @mFI0+17.5,mCO0+10.0 Get vMON Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$"
 @mFI0+17.5,mCO0+27.0 Get vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mColBlN
 @mFI0+19.0,mCO0+27.0 Get vACU Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mColBlN
 IF vsW0=1 .AND. LEN(ALLTRIM(vcLi))<>0
      DO coL_fondo
 ENDIF
 @mFI0+02.5,mCO0+27 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,66,70
 IF vsW0=1
      DO coL_fondo
 ENDIF
 DO coLbln
 @mFI0+04.0,mCO0+27 Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
 IF vsW0=1 .AND. LEN(ALLTRIM(vtIt))<>0
      DO coL_fondo
 ENDIF
 @mFI0+08.5,mCO0+27 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,66,70
 DO coL_fondo
 @mFI0+05.5,mCO0+27 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,70,70
 @mFI0+07.0,mCO0+27 Edit vNTC Font "&mLetAri",9 Style "NQ" Size 1,50,50
 @mFI0+10.0,mCO0+27 Edit vNVE Font "&mLetAri",9 Style "NQ" Size 1,50,50
 @mFI0+11.5,mCO0+27 Edit vNFP Font "&mLetAri",9 Style "NQ" Size 1,50,50
 @mFI0+20.5,mCO0+27 Get  vSLD Font "&mLetAri",9 Style "NQ" Size 1,13.3 Pict "999,999.99" Color ,&mCol_Fondo
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dir_3501a
 PARAMETER ppRg
 = INKEY(0.01)
 SELECT suCursales
 GOTO TOP
 SEEK vcLi
 IF EOF()
      STORE "Este Cliente no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f1102cod=vcLi
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
 IF mkEy=k_Enter .AND. f1102suc<>vsUc
      DO coL_fondo
      STORE f1102suc TO vsUc
      STORE f1102dir TO vdIr
      @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
 ENDIF
 STORE 00 TO viT1
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tcl_3501a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Cliente registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9110", "U", "F9110NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTc)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9110tip<>vtCl
      DO coL_fondo
      STORE f9110tip TO vtCl
      STORE f9110nti TO vnTc
      @mFI0+7,mCO0+27 Say vNTC Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9110", "U", "F9110TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Ven_3501a
 = INKEY(0.01)
 SELECT veNdedores
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBb, vcBb
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnVe)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB6 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9113cod<>vvEn
      DO coL_fondo
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      @mFI0+10,mCO0+27 Say vNVE Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Fpa_3501a
 = INKEY(0.01)
 SELECT paGos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfBd, vcBd
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
      @mFI0+11.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
ENDPROC
*
PROCEDURE Clp_3501a
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
      CASE mfIl>=mfI0+17.464 .AND. mfIl<=mfI0+18.464 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+9.8 .AND. mcCc<=mcO0+16.4 .AND. vmOn<>1
           STORE 1 TO vmOn
           @mFI0+17.5,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+17.464 .AND. mfIl<=mfI0+18.464 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+16.4 .AND. mcCc<=mcO0+25.6 .AND. vmOn<>2
           STORE 2 TO vmOn
           @mFI0+17.5,mCO0+10 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
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
                STORE SPACE(50) TO vnTc
                STORE SPACE(70) TO vdIr
                STORE SPACE(02) TO vsUc, vtCl
           ELSE
                STORE 1 TO vsW0
           ENDIF
           DO diS_3501a
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
           LEN(ALLTRIM(vcLi))<>0
           STORE 00 TO viT1
           STORE 04 TO viTe
           STORE 99 TO mkEy
           STORE SPACE(02) TO vtCl
           STORE SPACE(04) TO vcLi
           STORE SPACE(11) TO vrUc
           STORE SPACE(50) TO vnTc
           STORE SPACE(70) TO vnOm
           DO coLbln
           @mFI0+2.5,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
           DO coL_fondo
           @mFI0+4.0,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5
           @mFI0+7.0,mCO0+27 Say vNTC Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>3 .AND. vsW0=1 .AND.  ;
           LEN(ALLTRIM(vcLi))<>0
           DO diR_3501a
           STORE 99 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>3 .AND. vsW0=1 .AND.  ;
           LEN(ALLTRIM(vcLi))<>0 .AND. LEN(ALLTRIM(vsUc))<>0
           DO coL_fondo
           STORE 00 TO viT1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vsUc
           STORE SPACE(70) TO vdIr
           @mFI0+5.5,mCO0+27 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. viTe>3
           DO tcL_3501a
           STORE 99 TO mkEy
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2 .AND. viTe>3 .AND. LEN(ALLTRIM(vtCl))<>0
           DO coL_fondo
           STORE 99 TO mkEy
           STORE SPACE(02) TO vtCl
           STORE SPACE(50) TO vnTc
           @mFI0+7,mCO0+27 Say vNTC Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2 .AND. viTe>3
           IF vsW0=1
                STORE 5 TO ciTx
           ELSE
                STORE 6 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2 .AND. viTe>3
           IF vsW0=1
                STORE 5 TO ciTx
           ELSE
                STORE 6 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2 .AND. mcCc>=vcBa+mcO1  ;
           .AND. mcCc<=vcBa+mcO2 .AND. viTe>3 .AND. LEN(ALLTRIM(vtIt))<>0
           DO coLbln
           STORE 00 TO viT1
           STORE SPACE(02) TO vtIt
           STORE SPACE(70) TO vnTi
           @mFI0+8.5,mCO0+27 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S70"
      CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2 .AND. mcCc>=vcBb+mcO1  ;
           .AND. mcCc<=vcBb+mcO2 .AND. viTe>3
           DO veN_3501a
           STORE 99 TO mkEy
      CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2 .AND. mcCc>=vcBc+mcO1  ;
           .AND. mcCc<=vcBc+mcO2 .AND. viTe>3
           DO coL_fondo
           STORE 00 TO viT1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           @mFI0+10,mCO0+27 Say vNVE Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2 .AND. mcCc>=vcBd+mcO1  ;
           .AND. mcCc<=vcBd+mcO2 .AND. viTe>3
           DO fpA_3501a
           STORE 99 TO mkEy
      CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2 .AND. mcCc>=vcBe+mcO1  ;
           .AND. mcCc<=vcBe+mcO2 .AND. viTe>3
           DO coL_fondo
           STORE 00 TO viT1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vfPa
           STORE SPACE(50) TO vnFp
           @mFI0+11.5,mCO0+27 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S50"
      CASE mfIl>=mfI0+0.464 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+25.6 .AND. mcCc<=mcO0+30.2
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.464 .AND. mfIl<=mfI0+1.892 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+31.2 .AND. mcCc<=mcO0+36.2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
                DO veR_3501a
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
                DO veR_3501a
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
                DO veR_3501a
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
      CASE mfIl>=mfI0+8.535 .AND. mfIl<=mfI0+9.678 .AND. ((vsW0=1 .AND.  ;
           viTe<>5) .OR. (vsW0=2 .AND. viTe<>6)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+93.2
           IF vsW0=1
                STORE 5 TO ciTx
           ELSE
                STORE 6 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
      CASE mfIl>=mfI0+13.035 .AND. mfIl<=mfI0+14.107 .AND. ((vsW0=1 .AND.  ;
           viTe<>6) .OR. (vsW0=2 .AND. viTe<>7)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+39.6
           IF vsW0=1
                STORE 6 TO ciTx
           ELSE
                STORE 7 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.678 .AND. ((vsW0=1 .AND.  ;
           viTe<>7) .OR. (vsW0=2 .AND. viTe<>8)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+39.6
           IF vsW0=1
                STORE 7 TO ciTx
           ELSE
                STORE 8 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
      CASE mfIl>=mfI0+15.964 .AND. mfIl<=mfI0+17.178 .AND. ((vsW0=1 .AND.  ;
           viTe<>8) .OR. (vsW0=2 .AND. viTe<>9)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+34.8
           IF vsW0=1
                STORE 8 TO ciTx
           ELSE
                STORE 9 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
      CASE mfIl>=mfI0+17.535 .AND. mfIl<=mfI0+18.607 .AND. ((vsW0=1 .AND.  ;
           viTe<>9) .OR. (vsW0=2 .AND. viTe<>10)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+40.8
           IF vsW0=1
                STORE 9 TO ciTx
           ELSE
                STORE 10 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
      CASE mfIl>=mfI0+18.964 .AND. mfIl<=mfI0+20.178 .AND. ((vsW0=1 .AND.  ;
           viTe<>10) .OR. (vsW0=2 .AND. viTe<>11)) .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+40.8
           IF vsW0=1
                STORE 10 TO ciTx
           ELSE
                STORE 11 TO ciTx
           ENDIF
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3501a
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
PROCEDURE Hl1_3501a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "Este Mantenimiento, es un programa utilitario, en donde se pueden crear,"
 @ pfIl+1, 01 SAY  ;
   "modificar y eliminar los Saldos Iniciales de Cuentas x Cobrar."
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
 IF viTe<3 .OR. (viTe=4 .AND. vsW0=1) .OR. ((viTe=5 .AND. vsW0=1) .OR.  ;
    (viTe=6 .AND. vsW0=2))
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe<3
                @ pfIl, 26 SAY "Consulta de Documentos Registrados"
           CASE viTe=4 .AND. vsW0=1
                @ pfIl, 26 SAY "Consulta de Clientes Registrados"
           CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                @ pfIl, 26 SAY "Consulta de Clientes Titulares Registrados"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF (viTe=4 .AND. vsW0=1) .OR. ((viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND.  ;
    vsW0=2))
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F3" STYLE "BT"
      DO CASE
           CASE viTe=4 .AND. vsW0=1
                @ pfIl, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
           CASE (viTe=5 .AND. vsW0=1) .OR. (viTe=6 .AND. vsW0=2)
                @ pfIl, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      ENDCASE
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
 RELEASE viTe, viT1, ciTx, vtDo, vsEr, vdOc, vcLi, vsUc, vdIr, vnOm, vrUc,  ;
         vtIt, vnTi
 RELEASE vtCl, vnTc, vfPa, vnFp, vfEm, vfVe, vvEn, vnVe, vpIg, vmOn, vtOt,  ;
         vaCu, vsLd
 RELEASE vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vfBi, vfB1, vfB2, vfB3,  ;
         vfB4, vfB5
 RELEASE vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vcBi,  ;
         vcB1, vcB2
 RELEASE vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb, vcBc,  ;
         vcBd, vcBe
 RELEASE vsW0, vfCa, vpG1, vpG2, vrEn, vaNo, vmEs, vdIa, vsR1, vnUm, vpAg,  ;
         vtPo, vmNd
 RELEASE vtCa
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
