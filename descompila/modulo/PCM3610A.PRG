 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DO tmP_3610a IN PCI3610A
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3611", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Clientes no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingresos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingresos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
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
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Cambio no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedor
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 16
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
 SELECT 17
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
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SEEK "90"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT3
 ELSE
      STORE "FACT\" TO mpT3
 ENDIF
 STORE 20 TO muLt
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vsW0, vtB1, vtB2, vtB3, vtB4, vtB5, vfIl, ifIl,  ;
        ufIl, ffIl
 PUBLIC cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vrEc, irEc, urEc, frEc, crEc,  ;
        vrCc, irCc
 PUBLIC urCc, frCc, crCc, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7,  ;
        vfB8, vcBi
 PUBLIC vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, viOm, vtDo, ctDo,  ;
        vsEr, csEr
 PUBLIC vdOc, cdOc, vpIg, vmOn, vfEm, vfRe, vtCa, vtCs, vtCv, vcLi, vsUc,  ;
        vtIt, vnTi
 PUBLIC vnOm, vdIr, vdIs, vdEp, vtEl, vrUc, vdNi, vvEn, vnVe, vcM1, xcM1,  ;
        vcM2, vrEl
 PUBLIC vtD1, itD1, utD1, ctD1, vsR1, isR1, usR1, csR1, vdO1, idO1, udO1,  ;
        cdO1, cdO1
 PUBLIC vnO1, inO1, unO1, cnO1, vfE1, ifE1, ufE1, cfE1, vsRi, vnUi, vdEs,  ;
        tnEt, tiGv
 PUBLIC vtOt, ttOt, vfRa, vlIn, icLn, ucLn, vcL1, vtM1, vtM2, vpO1, vpO2,  ;
        voPc, voP1
 PUBLIC voP2, vtCl, vnTc, vsIg, xsIg, vtDi, vcOn, tvAl, vcOd, vcUv, vnUv,  ;
        vcAn, vpRe
 PUBLIC vpAn_11
 DO poP_3610a IN PCI3610A
 STORE "6" TO vtDi
 STORE SPACE(11) TO vrUc
 STORE SPACE(15) TO vdNi
 STORE SPACE(50) TO vnVe
 STORE SPACE(04) TO vcLi, vtIt
 STORE SPACE(25) TO vdIs, vdEp
 STORE SPACE(70) TO vnOm, vdIr, vnTi
 STORE SPACE(80) TO vcM1, xcM1, vcM2
 STORE SPACE(03) TO vsR1, isR1, usR1, csEr
 STORE SPACE(07) TO vdO1, idO1, udO1, cdOc, vtEl
 STORE SPACE(02) TO vtD1, itD1, utD1, ctDo, vsUc, vvEn
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viTe, vsW0, vrEl, voP1, voP2
 STORE 00 TO frEc, urEc, crEc, cfIl, viT1, tnEt, tiGv, ttOt
 STORE "ND" TO vtDo
 STORE msEr(06) TO vsEr
 STORE miGv TO vpIg
 STORE mmOn TO vmOn
 STORE DATE() TO vfEm, vfRe
 SELECT caMbio
 SEEK vfRe
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc1 TO vtCa
 ENDIF
 IF LEN(ALLTRIM(mvEn))<>0
      STORE mvEn TO vvEn
      SELECT veNdedor
      SEEK vvEn
      IF EOF()
           STORE SPACE(50) TO vnVe
      ELSE
           STORE f9113nom TO vnVe
      ENDIF
 ENDIF
 SELECT caB_nota
 GOTO BOTTOM
 IF EOF()
      STORE "0000000" TO vdOc
 ELSE
      STORE f3610tdo TO vtDo
      STORE f3610ser TO vsEr
      STORE f3610doc TO vdOc
 ENDIF
 SET READBORDER ON
 DO p00_3610a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3610a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3610a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>4
                STORE 99 TO mkEy
           CASE (mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>4
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<4
                = INKEY(0.01)
                SELECT caB_nota
                DO orD_0000a WITH "3610", "C", "F3610DOC", "D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO f3610est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     STORE "No hay Notas registradas o todas est n impresas..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                STORE 99 TO mkEy
                ACTIVATE POPUP vtB5 REST
                SET CONFIRM OFF
                DO p1_0000a
                SET FILTER TO
                DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO CASE
                          CASE f3610est="8"
                               STORE "Nota Contable se encuentra dada de Baja..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE f3610est="9"
                               STORE "Nota Contable se encuentra anulada..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE f3610est="2"
                               STORE "Nota Contable se encuentra Impresa...No se puede modificar..."  ;
                                     TO mmSj
                               DO poNmsj
                          OTHERWISE
                               STORE f3610tdo TO vtDo
                               STORE f3610ser TO vsEr
                               STORE f3610doc TO vdOc
                               STORE 3 TO viTe
                     ENDCASE
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=4
                = INKEY(0.01)
                SELECT clIentes
                SET FILTER TO f1101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
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
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE SPACE(04) TO vtIt
                     STORE SPACE(70) TO vnTi
                     STORE f1101cod TO vcLi
                     STORE f1101nom TO vnOm
                     STORE f1101ruc TO vrUc
                     STORE f1101ele TO vdNi
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                          ELSE
                               STORE f9113nom TO vnVe
                          ENDIF
                     ENDIF
                     SELECT suCursal
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                          STORE f1102dir TO vdIr
                          STORE f1102ndi TO vdIs
                          STORE f1102ndp TO vdEp
                          IF LEN(ALLTRIM(f1102tl1))<>0
                               STORE f1102tl1 TO vtEl
                          ELSE
                               IF LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               ELSE
                                    STORE f1102tl3 TO vtEl
                               ENDIF
                          ENDIF
                          DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                     ELSE
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(25) TO vdIs, vdEp
                          STORE SPACE(70) TO vdIr, vnTi
                          DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coL_beige
                     DO clI_3610a IN PCI3610A WITH "0"
                     DO ntI_3610a IN PCI3610A
                     DO nvE_3610a IN PCI3610A
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=4
                = INKEY(0.01)
                STORE SPACE(02) TO vsUc
                STORE SPACE(07) TO vtEl
                STORE SPACE(11) TO vrUc
                STORE SPACE(15) TO vdNi
                STORE SPACE(04) TO vcLi, vtIt
                STORE SPACE(25) TO vdIs, vdEp
                STORE SPACE(70) TO vnOm, vdIr, vnTi
                DO coLbln
                DO clI_3610a IN PCI3610A WITH "1"
                DO coL_beige
                DO clI_3610a IN PCI3610A WITH "2"
                DO clI_3610a IN PCI3610A WITH "3"
                DO clI_3610a IN PCI3610A WITH "4"
                DO clI_3610a IN PCI3610A WITH "5"
                DO ntI_3610a IN PCI3610A
                DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3610a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3610a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vsW0=1 .AND. viTe=9
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vsW0=2 .AND. viTe=13
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. (viTe=4 .OR. viTe=7  ;
                .OR. viTe=8)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=2 .AND. ((viTe>3 .AND. viTe< ;
                7) .OR. viTe=11 .OR. viTe=12)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<4
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F4 .AND. vsW0=2 .AND. viTe>3
                DO tiT_3610a IN PCI3610A
           CASE mkEy=k_F5 .AND. vsW0=1 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. viTe>3
                DO diR_3610a IN PCI3610A
           CASE mkEy=k_F6 .AND. viTe>3
                STORE 4 TO viTe
                STORE 0 TO viT1
                STORE SPACE(02) TO vsUc
                STORE SPACE(70) TO vnTi
                STORE SPACE(04) TO vcLi, vtIt
                IF vsW0=1
                     STORE 2 TO vsW0
                ELSE
                     STORE 1 TO vsW0
                ENDIF
                DO boT_3610a IN PCI3610A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW0=2
                          DO coLbln
                     OTHERWISE
                          DO coL_beige
                ENDCASE
                DO clI_3610a IN PCI3610A WITH "2"
                DO clI_3610a IN PCI3610A WITH "3"
                DO clI_3610a IN PCI3610A WITH "4"
                DO clI_3610a IN PCI3610A WITH "5"
                DO ntI_3610a IN PCI3610A
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. viTe>3
                DO veN_3610a IN PCI3610A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                DO veR_3610a
                IF mkEy<>99
                     DO CASE
                          CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND.  ;
                               viTe=13)
                               DO deT_3610a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vsW0=1 .AND. viTe=4) .OR. (vsW0=2 .AND. viTe=8)
                               STORE viTe+3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_3610a
                IF mkEy<>99
                     DO CASE
                          CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND.  ;
                               viTe=13)
                               DO deT_3610a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vsW0=1 .AND. viTe=7
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. viTe=4
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. (viTe=5 .OR. viTe=7 .OR. viTe=8)
                               STORE 10 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. viTe=11
                               STORE 13 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE vsW0=1 .AND. viTe=6
                          STORE 4 TO viTe
                     CASE vsW0=1 .AND. viTe=9
                          STORE 7 TO viTe
                     CASE vsW0=2 .AND. viTe=8
                          STORE 6 TO viTe
                     CASE vsW0=2 .AND. viTe=9
                          STORE 4 TO viTe
                     CASE vsW0=2 .AND. viTe=10
                          STORE 5 TO viTe
                     CASE vsW0=2 .AND. viTe=13
                          STORE 11 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_3610a
                IF mkEy<>99
                     DO CASE
                          CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND.  ;
                               viTe=13)
                               DO deT_3610a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=1 .AND. viTe=4
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=1 .AND. viTe=6
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. viTe=6
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. viTe=8
                               STORE 13 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          CASE vsW0=2 .AND. viTe=10
                               STORE 13 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3610a
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
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=4
                          STORE 1 TO viTe
                     CASE viTe=7 .AND. vsW0=1
                          STORE 4 TO viTe
                     CASE viTe=9 .AND. vsW0=1
                          STORE 4 TO viTe
                     CASE viTe=7 .AND. vsW0=2
                          STORE 5 TO viTe
                     CASE viTe=11 .AND. vsW0=2
                          STORE 6 TO viTe
                     CASE viTe=13 .AND. vsW0=2
                          STORE 8 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                IF vsW0=1
                     STORE 9 TO ciTx
                ELSE
                     STORE 13 TO ciTx
                ENDIF
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3610a
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
                     STORE 9 TO ciTx
                ELSE
                     STORE 13 TO ciTx
                ENDIF
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3610a
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
                     DO deT_3610a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Tab
                          LOOP
                     ENDIF
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(160) Font "&mLetRom",9 Style "BQ" Size 1,160
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+42 Say "TIPO DE DOCUMENTO ES NC/N1/N3 O ND/N2/N4..."                                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                         Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                        Font "&mLetRom",9 Style "BQ"
                CASE vsW0=1 .AND. viTe=4
                     @mMF2,mMC2+77 Say "ESCOGER CLIENTE REGISTRADO..."                                                 Font "&mLetRom",9 Style "BQ"
                CASE vsW0=2 .AND. viTe=4
                     @mMF2,mMC2+54 Say "DIGITAR NOMBRE DE CLIENTE, CAMPO DE 70 CARACTERES ALFANUMÉRICOS..."            Font "&mLetRom",9 Style "BQ"
                CASE vsW0=2 .AND. viTe=6
                     @mMF2,mMC2+52 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BQ"
                CASE vsW0=2 .AND. viTe=7
                     @mMF2,mMC2+84 Say "DIGITAR RUC DEL CLIENTE..."                                                    Font "&mLetRom",9 Style "BQ"
                CASE vsW0=2 .AND. viTe=8
                     @mMF2,mMC2+81 Say "DIGITAR D.I./D.N.I. DEL CLIENTE..."                                            Font "&mLetRom",9 Style "BQ"
                CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=9)
                     @mMF2,mMC2+52 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BQ"
                CASE (vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=10)
                     @mMF2,mMC2+62 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BQ"
                CASE (vsW0=1 .AND. (viTe=7 .OR. viTe=8)) .OR. (vsW0=2  ;
                     .AND. (viTe=11 .OR. viTe=12))
                     @mMF2,mMC2+52 Say "CAMPO DE 80 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BQ"
                CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=13)
                     @mMF2,mMC2+43 Say "LA FECHA DE REGISTRO CONSIDERA EL TIPO DE CAMBIO EN EL REGISTRO DE VENTAS..."  Font "&mLetRom",9 Style "BQ"
                CASE vsW0=2 .AND. viTe=5
                     @mMF2,mMC2+52 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-2.1,mCO0+24.2 Get vTDO Font "&mLetAri",11 Style "NQ" Size 1,3   Pict "!!"      Color ,&mColBlN
           CASE viTe=2
                @mFI0-2.1,mCO0+30.5 Get vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "!!!"     Color ,&mColBlN
           CASE viTe=3
                @mFI0-2.1,mCO0+37.2 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
           CASE viTe=4 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vsW0=1
                DO coL_fonro
                DO clI_3610a IN PCI3610A WITH "1"
                mkEy = INKEY(0, "HM")
                DO coL_beige
                DO clI_3610a IN PCI3610A WITH "1"
           CASE viTe=4
                @mFI0+1,mCO0+13.5      Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
           CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=9)
                @mFI0+1.0,mCO0+mUCO-36 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE (vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=10)
                @mFI0+2.7,mCO0+mUCO-36 Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
           CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=11)
                @mFI0+8.0,mCO0+13.5    Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,70,80
           CASE (vsW0=1 .AND. viTe=8) .OR. (vsW0=2 .AND. viTe=12)
                @mFI0+9.5,mCO0+13.5    Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,70,80
           CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=13)
                DO frE_3610a IN PCI3610A
           CASE viTe=5 .AND. vsW0=2
                @mFI0+2.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
           CASE viTe=6 .AND. vsW0=2
                @mFI0+4.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
           CASE viTe=7 .AND. vsW0=2
                @mFI0+4.0,vCL1      Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Pict "99999999999" Color ,&mColBlN
           CASE viTe=8 .AND. vsW0=2
                @mFI0+5.5,vCL1      Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,12.2,15
      ENDCASE
      DO CASE
           CASE viTe=4 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vsW0=1
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
PROCEDURE Ver_3610a
 DO CASE
      CASE viTe=1 .AND. vtDo<>"NC" .AND. vtDo<>"ND" .AND. vtDo<>"N1"  ;
           .AND. vtDo<>"N2" .AND. vtDo<>"N3" .AND. vtDo<>"N4"
           STORE "El Tipo de Documento es NC/N1/N3 o ND/N2/N4..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "El número de Serie no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. vsEr="000"
           STORE "El número de Serie no puede ser 000..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "El número de Documento no puede estar vacío..." TO mmSj
      CASE viTe=3 .AND. vdOc="0000000"
           STORE "El número de Serie no puede ser 0000000..." TO mmSj
      CASE viTe=3 .AND. (vtDo+vsEr+vdOc<>ctDo+csEr+cdOc .OR.  ;
           LEN(ALLTRIM(cdOc))=0)
           SELECT caB_nota
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Nota no se encuentra registrada..." TO mmSj
                CASE f3610est="8"
                     STORE "Esta Nota se encuentra dada de Baja..." TO mmSj
                CASE f3610est="9"
                     STORE "Esta Nota se encuentra anulada..." TO mmSj
                CASE f3610est="2"
                     STORE "Esta Nota se encuentra Impresa...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE vtDo TO ctDo
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
                     DO muE_3610a
                     STORE 3 TO viTe
           ENDCASE
      CASE vsW0=1 .AND. viTe=4 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=1 .AND. viTe=4 .AND. LEN(ALLTRIM(vcLi))=0
           STORE "Cliente debe estar registrado en el Maestro de Clientes..."  ;
                 TO mmSj
      CASE (vsW0=1 .AND. viTe=5 .AND. AT(" ", DTOC(vfEm))<>0) .OR. (vsW0= ;
           2 .AND. viTe=9 .AND. AT(" ", DTOC(vfEm))<>0)
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (vsW0=1 .AND. viTe=9 .AND. AT(" ", DTOC(vfRe))<>0) .OR. (vsW0= ;
           2 .AND. viTe=13 .AND. AT(" ", DTOC(vfRe))<>0)
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=13)
           SELECT caMbio
           SEEK vfRe
           IF EOF()
                STORE "Fecha de Registro no tiene Tipo de Cambio registrado..."  ;
                      TO mmSj
           ELSE
                STORE f9111tc1 TO vtCa
                @mFI0+1,mCO0+mUCO-10.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color Scheme 6
           ENDIF
      CASE vsW0=2 .AND. viTe=7 .AND. LEN(ALLTRIM(vrUc))<>0
           STORE "" TO vcOn
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                DO vaL_ruc IN FAC0000A WITH vrUc
                IF mkEy=99
                     RETURN
                ENDIF
           ENDIF
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                DO veR_ruc IN FAC0000A WITH "1", vrUc
                IF mkEy=1733
                     STORE "RUC no se encuentra en la BASE DE SUNAT" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ENDIF
           DO clI_3610a IN PCI3610A WITH "0"
           IF msUn="A" .AND. LEN(ALLTRIM(vcOn))<>0
                STORE "Cliente "+vcOn TO mmSj
                DO poNmsj
                STORE k_Enter TO mkEy
           ENDIF
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vrUc)+"*"
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF  .NOT. EOF() .AND. f1101est="9"
                STORE "RUC pertenece a un Cliente ANULADO..."+CHR(13)+ ;
                      CHR(13)+ ;
                      "No se le puede hacer el documento hasta ACTIVARLO"  ;
                      TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
                RETURN
           ENDIF
           DO CASE
                CASE  .NOT. EOF() .AND. f1101est="9"
                     STORE "RUC pertenece a un Cliente ANULADO..."+ ;
                           CHR(13)+CHR(13)+ ;
                           "No se le puede vender hasta ACTIVARLO" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                CASE  .NOT. EOF()
                     IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     ELSE
                          STORE f1101nom TO vnOm
                     ENDIF
                     STORE 04 TO viTe
                     STORE 01 TO vsW0
                     STORE SPACE(04) TO vtIt
                     STORE SPACE(70) TO vnTi, vnVe
                     STORE f1101cod TO vcLi
                     STORE f1101ven TO vvEn
                     IF LEN(ALLTRIM(vvEn))<>0 .AND. mvNd=2
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                          ELSE
                               STORE f9113nom TO vnVe
                          ENDIF
                     ENDIF
                     SELECT suCursal
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                     ELSE
                          STORE "00" TO vsUc
                     ENDIF
                     SEEK vcLi+vsUc
                     IF  .NOT. EOF()
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                          ELSE
                               STORE f1102dir TO vdIr
                               STORE f1102ndi TO vdIs
                               STORE f1102ndp TO vdEp
                          ENDIF
                          DO CASE
                               CASE LEN(ALLTRIM(f1102tl1))<>0
                                    STORE f1102tl1 TO vtEl
                               CASE LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               OTHERWISE
                                    STORE f1102tl3 TO vtEl
                          ENDCASE
                     ELSE
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                          ELSE
                               STORE SPACE(70) TO vdIr
                               STORE SPACE(25) TO vdIs, vdEp
                          ENDIF
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                     ENDIF
                     DO boT_3610a IN PCI3610A WITH "1"
                CASE EOF() .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
                     DATE()<=mfHa .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_nota
                     DO orD_0000a WITH "3610", "C", "F3610RUC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vrUc)+"*"
                     DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO CASE
                          CASE EOF() .AND. LEN(ALLTRIM(vnOm))=0
                               STORE "Nombre de Cliente no puede estar vacío..."  ;
                                     TO mmSj
                          CASE  .NOT. EOF()
                               STORE "N" TO moPc
                               IF LEN(ALLTRIM(vnOm))<>0
                                    DO prE_docum WITH  ;
                                       "RUC anteriormente registrado en Documentos de Ventas..."+ ;
                                       CHR(13)+CHR(13)+ ;
                                       "¿Desea volver a llamar estos datos?"
                               ENDIF
                               IF moPc$"Ss"
                                    IF msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHa
                                    ELSE
                                         STORE f3610nom TO vnOm
                                         STORE f3610dir TO vdIr
                                         STORE f3610dis TO vdIs
                                         STORE f3610dep TO vdEp
                                    ENDIF
                                    STORE SPACE(02) TO vsUc
                                    STORE SPACE(04) TO vcLi
                                    STORE f3610tdi TO vtDi
                                    STORE f3610tel TO vtEl
                                    STORE f3610tit TO vtIt
                                    STORE f3610nti TO vnTi
                                    STORE f3610ven TO vvEn
                                    STORE f3610nve TO vnVe
                                    SELECT clIentes
                                    SEEK vtIt
                                    IF  .NOT. EOF()
                                         STORE f1101nom TO vnTi
                                    ENDIF
                               ENDIF
                     ENDCASE
           ENDCASE
           DO CASE
                CASE vsW0=1
                     DO coL_beige
                OTHERWISE
                     DO coLbln
           ENDCASE
           DO clI_3610a IN PCI3610A WITH "0"
           DO ntI_3610a IN PCI3610A
           DO nvE_3610a IN PCI3610A
      CASE vsW0=2 .AND. viTe=8 .AND. LEN(ALLTRIM(vdNi))<>0
           IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                DO veR_dni IN FAC0000A WITH "1", vdNi
                IF mkEy=1733
                     STORE "DNI no se encuentra en la BASE de RENIEC" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ENDIF
           DO clI_3610a IN PCI3610A WITH "0"
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101ELE", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vdNi)+"*"
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF  .NOT. EOF() .AND. f1101est="9"
                STORE "DNI pertenece a un Cliente ANULADO..."+CHR(13)+ ;
                      CHR(13)+ ;
                      "No se le puede hacer el documento hasta ACTIVARLO"  ;
                      TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
                RETURN
           ENDIF
           DO CASE
                CASE  .NOT. EOF() .AND. f1101est="9"
                     STORE "DNI pertenece a un Cliente ANULADO..."+ ;
                           CHR(13)+CHR(13)+ ;
                           "No se le puede vender hasta ACTIVARLO" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                CASE  .NOT. EOF()
                     IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                     ELSE
                          STORE f1101nom TO vnOm
                     ENDIF
                     STORE 04 TO viTe
                     STORE 01 TO vsW0
                     STORE SPACE(04) TO vtIt
                     STORE SPACE(70) TO vnTi, vnVe
                     STORE f1101cod TO vcLi
                     STORE f1101ven TO vvEn
                     IF LEN(ALLTRIM(vvEn))<>0 .AND. mvNd=2
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                          ELSE
                               STORE f9113nom TO vnVe
                          ENDIF
                     ENDIF
                     SELECT suCursal
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                     ELSE
                          STORE "00" TO vsUc
                     ENDIF
                     SEEK vcLi+vsUc
                     IF  .NOT. EOF()
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                          ELSE
                               STORE f1102dir TO vdIr
                               STORE f1102ndi TO vdIs
                               STORE f1102ndp TO vdEp
                          ENDIF
                          DO CASE
                               CASE LEN(ALLTRIM(f1102tl1))<>0
                                    STORE f1102tl1 TO vtEl
                               CASE LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               OTHERWISE
                                    STORE f1102tl3 TO vtEl
                          ENDCASE
                     ELSE
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                          ELSE
                               STORE SPACE(70) TO vdIr
                               STORE SPACE(25) TO vdIs, vdEp
                          ENDIF
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                     ENDIF
                     DO boT_3610a IN PCI3610A WITH "1"
                CASE EOF() .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND.  ;
                     DATE()<=mfHr .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_nota
                     DO orD_0000a WITH "3610", "C", "F3610ELE", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vdNi)+"*"
                     DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO CASE
                          CASE EOF() .AND. LEN(ALLTRIM(vnOm))=0
                               STORE "Nombre de Cliente no puede estar vacío..."  ;
                                     TO mmSj
                          CASE  .NOT. EOF()
                               STORE "N" TO moPc
                               IF LEN(ALLTRIM(vnOm))<>0
                                    DO prE_docum WITH  ;
                                       "DNI anteriormente registrado en Documentos de Ventas..."+ ;
                                       CHR(13)+CHR(13)+ ;
                                       "¿Desea volver a llamar estos datos?"
                               ENDIF
                               IF moPc$"Ss"
                                    IF mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHr
                                    ELSE
                                         STORE f3610nom TO vnOm
                                         STORE f3610dir TO vdIr
                                         STORE f3610dis TO vdIs
                                         STORE f3610dep TO vdEp
                                    ENDIF
                                    STORE SPACE(02) TO vsUc
                                    STORE SPACE(04) TO vcLi
                                    STORE f3610tdi TO vtDi
                                    STORE f3610tel TO vtEl
                                    STORE f3610tit TO vtIt
                                    STORE f3610nti TO vnTi
                                    STORE f3610ven TO vvEn
                                    STORE f3610nve TO vnVe
                                    SELECT clIentes
                                    SEEK vtIt
                                    IF  .NOT. EOF()
                                         STORE f1101nom TO vnTi
                                    ENDIF
                               ENDIF
                     ENDCASE
           ENDCASE
           DO CASE
                CASE vsW0=1
                     DO coL_beige
                OTHERWISE
                     DO coLbln
           ENDCASE
           DO clI_3610a IN PCI3610A WITH "0"
           DO ntI_3610a IN PCI3610A
           DO nvE_3610a IN PCI3610A
      CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=11)
           IF SUBSTR(vcM1, 1, 1)$"FB"
                SELECT caB_fact
                SEEK SUBSTR(vcM1, 1, 2)+SUBSTR(vcM1, 4, 3)+SUBSTR(vcM1, 8, 7)
                IF  .NOT. EOF()
                     DO coLbln
                     STORE f1300cli TO vcLi
                     STORE f1300suc TO vsUc
                     STORE f1300nom TO vnOm
                     STORE f1300ruc TO vrUc
                     STORE f1300ele TO veLe
                     STORE f1300dir TO vdIr
                     STORE f1300dis TO vdIs
                     STORE f1300dep TO vdEp
                     STORE DTOC(f1300fem) TO vcM2
                     @mFI0+9.5,mCO0+13.5 Say vCM2 Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S73"
                     DO coL_beige
                     DO clI_3610a IN PCI3610A WITH "0"
                ENDIF
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE P00_3610a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE irEc TO vrEc
 STORE 00 TO viT1
 STORE 39 TO muFi
 STORE 196 TO muCo
 STORE (mwCo-muCo)/2 TO mmC2
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+13.5 TO ifIl, ufIl, vfIl
 STORE ifIl+25 TO ffIl
 STORE mfI0+06.5 TO ifFs, ufFs, vfFs
 STORE ifFs+22 TO ffFs
 STORE ffIl+04.6 TO mmF2
 STORE mfI0-02.1 TO vfBi
 STORE mfI0+00.9 TO vfB1, vfB2, vfB3, vfB4
 STORE mfI0+02.4 TO vfB5
 STORE mfI0+04.4 TO vfB6
 STORE mfI0+05.4 TO vfB7, vfB8
 STORE mcO0+49.0 TO vcBi
 STORE mcO0+09.3 TO vcB1
 STORE mcO0+muCo-62 TO vcB2, vcB5
 STORE vcB2+4 TO vcB3
 STORE vcB3+4 TO vcB4
 STORE mcO0+20.3 TO vcB7
 STORE mcO0+24.3 TO vcB8
 STORE mcO0+muCo-5.5 TO vcB6
 STORE mcO0+0.1 TO icLn
 STORE mcO0+muCo-0.4 TO ucLn
 STORE mcO0+121.9 TO vcL1
 STORE 120 TO vtM1
 STORE 45 TO vtM2
 Define Popup vTB1 from mFI0+2.2,mCO0+0.9 to fFIL+4.9,mCO0+145.4 Font "&mLetCou",14 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES"
 Define Popup vTB2 from mFI0+3.8,mCO0+0.9 to fFIL+4.9,mCO0+145.4 Font "&mLetCou",14 Style "NQ" Prompt Field AllTrim(F1102DIR)+", "+AllTrim(F1102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB3 from mFI0+5.6,mCO0+mUCO-48.1 to fFIL+4.9,mCO0+mUCO-1.4 Font "&mLetCou",14 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
 Define Popup vTB4 from mFI0+6.6,mCO0+0.9 to fFIL+4.9,mCO0+145.4 Font "&mLetCou",14 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES TITULARES"
 Define Popup vTB5 from mFI0,mCO0 to fFIL+4.9,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field F3610TDO+":"+F3610SER+"-"+F3610DOC+" "+Substr(F3610NOM,1,62)+" "+Dtoc(F3610FEM) Scroll Color Scheme 3 Footer "CONSULTA DE NOTAS CONTABLES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO tiT_0000a WITH "Modificación de Notas de Débito/Crédito (Clientes)"
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+11, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+0.9, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ mfI0-2.5, mcO0-0.6 TO mfI0-0.5, mcO0+54.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.5, mcO0-0.6 TO mfI0-2.5, mcO0+54.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.5, mcO0-0.6 TO mfI0-0.5, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 DO coL_beige
 @ mfI0+0.4, mcO0+0.1 TO mfI0+07, mcO0+muCo-49 PATTERN 1
 @ mfI0+7.3, mcO0+0.1 TO mfI0+11, mcO0+muCo-0.9 PATTERN 1
 @ mfI0+0.4, mcO0+0.1 TO mfI0+00.4, mcO0+muCo-49 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, mcO0+0.1 TO mfI0+07.0, mcO0+0.1 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.3, mcO0+0.1 TO mfI0+07.3, mcO0+muCo-0.9 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.3, mcO0+0.1 TO mfI0+11.0, mcO0+0.1 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, mcO0+muCo-48 TO mfI0+6.0, mcO0+muCo-0.9 PATTERN 1 COLOR SCHEME 6
 @ mfI0+2.4, mcO0+muCo-48 TO mfI0+2.4, mcO0+muCo-0.9
 @ mfI0+4.1, mcO0+muCo-48 TO mfI0+4.1, mcO0+muCo-0.9
 @ mfI0+6.0, mcO0+muCo-48 TO mfI0+6.0, mcO0+muCo-0.9
 @mFI0-2.1,mCO0+00.8    Say "Nota Contable:"        Font "&mLetRom",13 Style "BT"
 @mFI0+1.1,mCO0+01.1    Say "Cliente"               Font "&mLetAri",9  Style "BT"
 @mFI0+2.5,mCO0+01.1    Say "Dirección"             Font "&mLetAri",9  Style "NT"
 @mFI0+4.0,mCO0+01.1    Say "Distrito"              Font "&mLetAri",9  Style "NT"
 @mFI0+5.5,mCO0+01.1    Say "Titular"               Font "&mLetAri",9  Style "NT"
 @mFI0+8.0,mCO0+01.1    Say "#Facturas"             Font "&mLetAri",9  Style "BT"
 @mFI0+9.5,mCO0+01.1    Say "Fechas"                Font "&mLetAri",9  Style "BT"
 @mFI0+4.0,vCL1-06.8    Say "RUC"                   Font "&mLetAri",9  Style "NT"
 @mFI0+5.5,vCL1-06.8    Say "DNI"                   Font "&mLetAri",9  Style "NT"
 @mFI0+1.0,mCO0+mUCO-47 Say "Emisión"               Font "&mLetAri",9  Style "BT"
 @mFI0+1.0,mCO0+mUCO-16 Say "T/C"                   Font "&mLetAri",9  Style "BT"
 @mFI0+2.8,mCO0+mUCO-47 Say "I.G.V."                Font "&mLetAri",9  Style "BT"
 @mFI0+4.5,mCO0+mUCO-47 Say "Vendedor"              Font "&mLetAri",9  Style "BT"
 @mFI0+8.0,mCO0+87 Say "Fecha para T/C de Registro" Font "&mLetAri",9  Style "BT"
 DO coLbln
 @mFI0-2.1,mCO0+24.2      Get  vTDO                 Font "&mLetAri",11 Style "NQ" Size 1,3   Pict "!!"      Color ,&mColBlN
 @mFI0-2.1,mCO0+30.5      Get  vSER                 Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-2.1,mCO0+37.2      Get  vDOC                 Font "&mLetAri",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
 @mFI0+8.0,mCO0+13.5      Edit vCM1                 Font "&mLetAri",9  Style "NQ" Size 1,70,80
 @mFI0+9.5,mCO0+13.5      Edit vCM2                 Font "&mLetAri",9  Style "NQ" Size 1,70,80
 @mFI0+1.0,mCO0+mUCO-36.0 Get  vFEM                 Font "&mLetAri",9  Style "NQ" Size 1,12.2              Color ,&mColBlN
 @mFI0+2.7,mCO0+mUCO-20.0 Get  vMON                 Font "&mLetAri",9  Style "NQ" Size 1,5,1 Default vMON Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
 @mFI0+1.0,mCO0+mUCO-10.5 Get  vTCA                 Font "&mLetAri",9  Style "NQ" Size 1,8.3 Pict "99.999" Color Scheme 6
 @mFI0+2.7,mCO0+mUCO-36.0 Get  vPIG                 Font "&mLetAri",9  Style "NQ" Size 1,7.3 Pict "99.99"  Color ,&mColBlN
 @mFI0+4.5,mCO0+mUCO-35.0 Edit vNVE                 Font "&mLetAri",9  Style "NQ" Size 1,29,50             Color Scheme 6
 @mFI0+5.5,mCO0+13.5      Get  vTIT                 Font "&mLetAri",9  Style "NQ" Size 1,05.5              Color ,&mCol_Beige
 DO frE_3610a IN PCI3610A
 DO ntI_3610a IN PCI3610A
 IF vsW0=1
      DO coL_beige
      @mFI0+2.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
      @mFI0+4.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
      @mFI0+4.0,vCL1      Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Color ,&mCol_Beige
      @mFI0+5.5,vCL1      Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,12.2,15
      IF LEN(ALLTRIM(vcLi))=0
           DO coLbln
      ENDIF
      @mFI0+1.0,mCO0+13.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
 ELSE
      DO coLbln
      @mFI0+1.0,mCO0+13.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
      @mFI0+2.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
      @mFI0+4.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
      @mFI0+4.0,vCL1      Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Color ,&mColBlN
      @mFI0+5.5,vCL1      Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,12.2,15
 ENDIF
 READ TIMEOUT 0.01
 DO coL_fondo
 DO cuAdro WITH ifIl-1.2, mcO0, ffIl+3.25, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.30, mcO0 TO ifIl-0.20, mcO0+muCo PATTERN 1
 @ ffIl+1.40, mcO0 TO ffIl+3.25, mcO0+muCo PATTERN 1
 @ ffIl+1.40, mcO0+muCo-71.0 TO ffIl+3.25, mcO0+muCo-71.0
 @ ffIl+1.40, mcO0+muCo-46.8 TO ffIl+3.25, mcO0+muCo-46.8
 @ ffIl+1.40, mcO0+muCo-24.5 TO ffIl+3.25, mcO0+muCo-24.5
 @fFIL+1.80,mCO0+mUCO-70.0 Say "Neto:"                   Font "&mLetAri",9 Style "BQ"
 @fFIL+1.80,mCO0+mUCO-45.8 Say "IGV:"                    Font "&mLetAri",9 Style "BQ"
 @fFIL+1.80,mCO0+mUCO-23.5 Say "Total:"                  Font "&mLetAri",9 Style "BQ"
 @fFIL+1.80,mCO0+1         Say "Caracteres Descripción:" Font "&mLetAri",9 Style "BT"
 @iFIL-1.25,mCO0+000.8     Say "Ítem"                    Font "&mLetAri",9 Style "BT"
 @iFIL-1.25,mCO0+007.1     Say "Descripción"             Font "&mLetAri",9 Style "BT"
 @iFIL-1.25,mCO0+135.7     Say "Cantidad"                Font "&mLetAri",9 Style "BT"
 @iFIL-1.25,mCO0+154.9     Say "V.Vta.Unit"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.25,mCO0+177.5     Say "Total"                   Font "&mLetAri",9 Style "BT"
 DO toT_3610a IN PCI3610A
 DO liN_3610a IN PCI3610A WITH ifIl-1.3, ffIl+1.4
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_3610a IN PCI3610A WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vrEc TO crEc
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      GOTO irEc
      DO paN_3610b IN PCI3610B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE crEc TO vrEc
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE Det_3610a
 STORE 1 TO viTe, viT1
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO pcI3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 DO p1_0000a
 SET READBORDER ON
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy<>k_Clic .AND. mkEy<>k_Esc
      STORE 01 TO viTe
      STORE 00 TO viT1
 ENDIF
 IF mkEy=k_Tab
      DO grA_3610a
      STORE 99 TO mkEy
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_3610a
 PRIVATE ptX1, ptX2, poPc
 DO CASE
      CASE vtDo="NC"
           ptX2 = "NOTA DE CRÉDITO No.:"+vsEr+"-"+vdOc
      CASE vtDo="ND"
           ptX2 = "NOTA DE DÉBITO No.: "+vsEr+"-"+vdOc
      CASE vtDo="N1"
           ptX2 = "NOTA DE CRÉDITO ELECTRÓNICA No.: "+vsEr+"-"+vdOc
      CASE vtDo="N2"
           ptX2 = "NOTA DE DÉBITO ELECTRÓNICA No.: "+vsEr+"-"+vdOc
      CASE vtDo="N3"
           ptX2 = "NOTA DE CRÉDITO ELECTRÓNICA SOL No.: "+vsEr+"-"+vdOc
      CASE vtDo="N4"
           ptX2 = "NOTA DE DÉBITO ELECTRÓNICA SOL No.: "+vsEr+"-"+vdOc
 ENDCASE
 ptX1 = "¿Desea Modificar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_nota
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      STORE f3611ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_nota
 REPLACE f3610tit WITH vtIt
 REPLACE f3610nti WITH vnTi
 REPLACE f3610cli WITH vcLi
 REPLACE f3610suc WITH vsUc
 REPLACE f3610nom WITH vnOm
 REPLACE f3610dir WITH vdIr
 REPLACE f3610dis WITH vdIs
 REPLACE f3610dep WITH vdEp
 REPLACE f3610ruc WITH vrUc
 REPLACE f3610tdi WITH vtDi
 REPLACE f3610ele WITH vdNi
 REPLACE f3610tel WITH vtEl
 REPLACE f3610fem WITH vfEm
 REPLACE f3610fre WITH vfRe
 REPLACE f3610mon WITH vmOn
 REPLACE f3610pig WITH vpIg
 REPLACE f3610cm1 WITH vcM1
 REPLACE f3610cm2 WITH vcM2
 REPLACE f3610ven WITH vvEn
 REPLACE f3610nve WITH vnVe
 REPLACE f3610net WITH tnEt
 REPLACE f3610igv WITH tiGv
 REPLACE f3610tot WITH ttOt
 REPLACE f3610est WITH "1"
 REPLACE f3610usu WITH muSu
 REPLACE f3610dat WITH DATE()
 REPLACE f3610tim WITH TIME()
 SELECT deT_nota
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f3611tdo WITH SPACE(02)
      REPLACE f3611ser WITH SPACE(03)
      REPLACE f3611doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      STORE ftM1des TO vdEs
      STORE ftM1tot TO vtOt
      STORE vrEc+1 TO vrEc
      SELECT deT_nota
      DO nuEvo_rg
      REPLACE f3611tdo WITH vtDo
      REPLACE f3611ser WITH vsEr
      REPLACE f3611doc WITH vdOc
      REPLACE f3611ite WITH vrEc
      REPLACE f3611cod WITH vcOd
      REPLACE f3611des WITH vdEs
      REPLACE f3611cuv WITH vcUv
      REPLACE f3611nuv WITH vnUv
      REPLACE f3611can WITH vcAn
      REPLACE f3611pre WITH vpRe
      REPLACE f3611tot WITH vtOt
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 ZAP
 UNLOCK ALL
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE vcM1 TO xcM1
 DO pcI3610z
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE SPACE(03) TO csEr
 STORE SPACE(11) TO vrUc
 STORE SPACE(15) TO vdNi
 STORE SPACE(50) TO vnVe
 STORE SPACE(04) TO vcLi, vtIt
 STORE SPACE(07) TO vtEl, cdOc
 STORE SPACE(25) TO vdIs, vdEp
 STORE SPACE(80) TO vcM1, xcM1, vcM2
 STORE SPACE(02) TO vsUc, vvEn, ctDo
 STORE SPACE(70) TO vnOm, vdIr, vnTi
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viTe, vsW0
 STORE 00 TO frEc, urEc, crEc, cfIl, viT1, tnEt, tiGv, ttOt
 STORE miGv TO vpIg
 STORE mmOn TO vmOn
 STORE DATE() TO vfEm, vfRe
 SELECT caMbio
 SEEK vfRe
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc1 TO vtCa
 ENDIF
 IF LEN(ALLTRIM(mvEn))<>0
      STORE mvEn TO vvEn
      SELECT veNdedor
      SEEK vvEn
      IF EOF()
           STORE SPACE(50) TO vnVe
      ELSE
           STORE f9113nom TO vnVe
      ENDIF
 ENDIF
 DO coLbln
 DO clI_3610a IN PCI3610A WITH "1"
 DO coL_beige
 DO clI_3610a IN PCI3610A WITH "2"
 DO clI_3610a IN PCI3610A WITH "3"
 DO clI_3610a IN PCI3610A WITH "4"
 DO clI_3610a IN PCI3610A WITH "5"
 DO frE_3610a IN PCI3610A
 DO nvE_3610a IN PCI3610A
 DO ntI_3610a IN PCI3610A
 DO toT_3610a IN PCI3610A
 DO coLbln
 @mFI0+1.0,mCO0+mUCO-36   Say vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @mFI0+2.7,mCO0+mUCO-36   Say vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99"
 @mFI0+8.0,mCO0+013.5     Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,70   Pict "@S73"
 @mFI0+9.5,mCO0+013.5     Say vCM2 Font "&mLetAri",9 Style "NQ" Size 1,70   Pict "@S73"
 @mFI0+1.0,mCO0+mUCO-10.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999" Color Scheme 6
 @mFI0+2.7,mCO0+mUCO-20   Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Size 1,5,1 Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
 READ TIMEOUT 0.01
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_3610a IN PCI3610A WITH ifIl, ffIl+1.4
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Mue_3610a
 DO coLbln
 SELECT caB_nota
 STORE f3610tdo TO vtDo
 STORE f3610ser TO vsEr
 STORE f3610doc TO vdOc
 STORE f3610tit TO vtIt
 STORE f3610cli TO vcLi
 STORE f3610suc TO vsUc
 STORE f3610nom TO vnOm
 STORE f3610dir TO vdIr
 STORE f3610dis TO vdIs
 STORE f3610dep TO vdEp
 STORE f3610ruc TO vrUc
 STORE f3610tdi TO vtDi
 STORE f3610ele TO vdNi
 STORE f3610tel TO vtEl
 STORE f3610fem TO vfEm
 STORE f3610fre TO vfRe
 STORE f3610mon TO vmOn
 STORE f3610pig TO vpIg
 STORE f3610cm1 TO vcM1
 STORE f3610cm2 TO vcM2
 STORE f3610ven TO vvEn
 STORE f3610nve TO vnVe
 STORE f3610net TO tnEt
 STORE f3610igv TO tiGv
 STORE f3610tot TO ttOt
 STORE f3610est TO veSt
 DO CASE
      CASE LEN(ALLTRIM(vcLi))=0
           STORE 2 TO vsW0
      OTHERWISE
           STORE 1 TO vsW0
 ENDCASE
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc1 TO vtCa
 ENDIF
 SELECT caB_nota
 DO clI_3610a IN PCI3610A WITH "1"
 DO coL_beige
 DO clI_3610a IN PCI3610A WITH "2"
 DO clI_3610a IN PCI3610A WITH "3"
 DO clI_3610a IN PCI3610A WITH "4"
 DO clI_3610a IN PCI3610A WITH "5"
 DO frE_3610a IN PCI3610A
 DO nvE_3610a IN PCI3610A
 DO ntI_3610a IN PCI3610A
 DO toT_3610a IN PCI3610A
 DO coLbln
 @mFI0-2.1,mCO0+24.2      Say vTDO Font "&mLetAri",11 Style "NQ" Size 1,03.0 Pict "!!"
 @mFI0-2.1,mCO0+30.5      Say vSER Font "&mLetAri",11 Style "NQ" Size 1,03.4 Pict "999"
 @mFI0-2.1,mCO0+37.2      Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999"
 @mFI0+1.0,mCO0+mUCO-36   Say vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.2
 @mFI0+2.7,mCO0+mUCO-36   Say vPIG Font "&mLetAri",9  Style "NQ" Size 1,07.3 Pict "99.99"
 @mFI0+8.0,mCO0+013.5     Say vCM1 Font "&mLetAri",9  Style "NQ" Size 1,70   Pict "@S73"
 @mFI0+9.5,mCO0+013.5     Say vCM2 Font "&mLetAri",9  Style "NQ" Size 1,70   Pict "@S73"
 @mFI0+1.0,mCO0+mUCO-10.5 Say vTCA Font "&mLetAri",9  Style "NQ" Size 1,08.3 Pict "99.999" Color Scheme 6
 @mFI0+2.7,mCO0+mUCO-20   Get vMON Font "&mLetAri",9  Style "NQ" Default vMON Size 1,5,1 Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
 READ TIMEOUT 0.01
 SELECT teMporal
 ZAP
 REINDEX
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 01 TO irEc
 STORE 00 TO ttOt, frEc, urEc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      STORE f3611cod TO vcOd
      STORE f3611des TO vdEs
      STORE f3611cuv TO vcUv
      STORE f3611nuv TO vnUv
      STORE f3611can TO vcAn
      STORE f3611pre TO vpRe
      STORE f3611tot TO vtOt
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1des WITH vdEs
      REPLACE ftM1cuv WITH vcUv
      REPLACE ftM1nuv WITH vnUv
      REPLACE ftM1can WITH vcAn
      REPLACE ftM1pre WITH vpRe
      REPLACE ftM1tot WITH vtOt
      STORE RECNO() TO frEc
      STORE ttOt+vtOt TO ttOt
      SELECT deT_nota
      SKIP
 ENDDO
 STORE ROUND(ttOt/(1+(vpIg/100)), 2) TO tnEt
 STORE ttOt-tnEt TO tiGv
 SELECT teMporal
 GOTO TOP
 DO paN_3610b IN PCI3610B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 DO toT_3610a IN PCI3610A
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Clp_3610a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
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
           = INKEY(0.01)
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+2.692 .AND. mfIl<=mfI0+3.692 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+muCo-20 .AND. mcCc<=mcO0+muCo-13.4 .AND. vmOn<>1
           = INKEY(0.01)
           STORE 1 TO vmOn
           @mFI0+2.7,mCO0+mUCO-20 Get vMON Font "&mLetAri",9 Style "NQ" Size 1,5,1 Default vMON Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.692 .AND. mfIl<=mfI0+3.692 .AND. viTe>3 .AND.  ;
           mcCc>=mcO0+muCo-13.4 .AND. mcCc<=mcO0+muCo-4 .AND. vmOn<>2
           = INKEY(0.01)
           STORE 2 TO vmOn
           @mFI0+2.7,mCO0+mUCO-20 Get vMON Font "&mLetAri",9 Style "NQ" Size 1,5,1 Default vMON Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9 .AND. viTe>3
           STORE 04 TO viTe
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB2-0.2 .AND. mcCc<=vcB2+3.8 .AND. vsW0=1
           STORE 04 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB3-0.2 .AND. mcCc<=vcB3+3.8 .AND. vsW0=1
           STORE 04 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB4-0.2 .AND. mcCc<=vcB4+3.8 .AND. vsW0=1
           STORE 04 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB5-0.2 .AND. mcCc<=vcB5+3.8 .AND. vsW0=1
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB6-0.028 .AND. mfIl<=vfB6+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB6-0.2 .AND. mcCc<=vcB6+3.8
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB7-0.028 .AND. mfIl<=vfB7+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB7-0.2 .AND. mcCc<=vcB7+3.8 .AND. vsW0=2
           STORE k_F4 TO mkEy
      CASE mfIl>=vfB8-0.028 .AND. mfIl<=vfB8+1.185 .AND. viTe>3 .AND.  ;
           mcCc>=vcB8-0.2 .AND. mcCc<=vcB8+3.8 .AND. vsW0=2
           STORE 99 TO mkEy
           STORE SPACE(04) TO vtIt
           STORE SPACE(70) TO vnTi
           DO ntI_3610a IN PCI3610A
           DO prEsiona WITH "3", "DESCAR", vfB8, vcB8
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mfI0-2.164 .AND. mfIl<=mfI0-0.764 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+28.8 .AND. viTe<>1
           STORE 1 TO ciTx
      CASE mfIl>=mfI0-2.164 .AND. mfIl<=mfI0-0.764 .AND. mcCc>=mcO0+30  ;
           .AND. mcCc<=mcO0+36.8 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0-2.164 .AND. mfIl<=mfI0-0.764 .AND. mcCc>=mcO0+36.8  ;
           .AND. mcCc<=mcO0+49 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+0.907 .AND. mfIl<=mfI0+2.121 .AND. mcCc>=mcO0+13.2  ;
           .AND. mcCc<=mcO0+13.5+vtM1 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+2.407 .AND. mfIl<=mfI0+3.621 .AND. vsW0=2 .AND.  ;
           mcCc>=mcO0+0.8 .AND. mcCc<=mcO0+13.5+vtM1 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+3.978 .AND. mfIl<=mfI0+5.050 .AND. vsW0=2 .AND.  ;
           mcCc>=mcO0+0.8 .AND. mcCc<=mcO0+13.5+vtM2 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+3.978 .AND. mfIl<=mfI0+5.050 .AND. vsW0=2 .AND.  ;
           mcCc>=vcL1-7.5 .AND. mcCc<=vcL1+15.7 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+5.407 .AND. mfIl<=mfI0+6.621 .AND. vsW0=2 .AND.  ;
           mcCc>=vcL1-7.5 .AND. mcCc<=vcL1+12.9 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+0.907 .AND. mfIl<=mfI0+2.050 .AND. mcCc>=mcO0+muCo- ;
           47.4 .AND. mcCc<=mcO0+muCo-23 .AND. ((vsW0=1 .AND. viTe<>5)  ;
           .OR. (vsW0=2 .AND. viTe<>9))
           IF vsW0=1
                STORE 5 TO ciTx
           ELSE
                STORE 9 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+2.621 .AND. mfIl<=mfI0+3.764 .AND. mcCc>=mcO0+muCo- ;
           47.4 .AND. mcCc<=mcO0+muCo-28 .AND. ((vsW0=1 .AND. viTe<>6)  ;
           .OR. (vsW0=2 .AND. viTe<>10))
           IF vsW0=1
                STORE 6 TO ciTx
           ELSE
                STORE 10 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+7.907 .AND. mfIl<=mfI0+9.121 .AND. mcCc>=mcO0+0.8  ;
           .AND. mcCc<=mcO0+83.8 .AND. ((vsW0=1 .AND. viTe<>7) .OR. (vsW0= ;
           2 .AND. viTe<>11))
           IF vsW0=1
                STORE 7 TO ciTx
           ELSE
                STORE 11 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+9.407 .AND. mfIl<=mfI0+10.55 .AND. mcCc>=mcO0+0.8  ;
           .AND. mcCc<=mcO0+83.8 .AND. ((vsW0=1 .AND. viTe<>8) .OR. (vsW0= ;
           2 .AND. viTe<>12))
           IF vsW0=1
                STORE 8 TO ciTx
           ELSE
                STORE 12 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+7.907 .AND. mfIl<=mfI0+9.121 .AND. mcCc>=mcO0+86.4  ;
           .AND. mcCc<=mcO0+130.8 .AND. ((vsW0=1 .AND. viTe<>9) .OR.  ;
           (vsW0=2 .AND. viTe<>13))
           IF vsW0=1
                STORE 9 TO ciTx
           ELSE
                STORE 13 TO ciTx
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_3610a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy<>99
           STORE ciTx TO viTe
      ENDIF
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Hl1_3610a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 02 SAY  ;
   "En este programa, sólo se puede modificar Notas Contables registradas."
 @ pfIl+1, 02 SAY  ;
   "Los clientes, no necesariamente tienen que estar registrados en el Sis-"
 @ pfIl+2, 02 SAY "tema la fecha tiene que tener el Tipo de Cambio registrado."
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+8, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 01 SAY "F10" STYLE "BT"
 @ pfIl+7, 01 SAY "ESC" STYLE "BT"
 @ pfIl+8, 01 SAY "F1" STYLE "BT"
 @ pfIl+6, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 21 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+7, 21 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+7, 21 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+9 TO pfIl
 IF viTe<4
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      @ pfIl, 21 SAY "Consulta de Notas Contables registradas"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=4 .AND. vsW0=1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+0, 21 SAY "Consulta de Clientes registrados"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF vsW0=2 .AND. viTe>3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F4" STYLE "BT"
      @ pfIl, 21 SAY "Consulta de Clientes Titulares registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW0=1 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. viTe>3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F5" STYLE "BT"
      @ pfIl, 21 SAY "Seleccionar Sucursal de Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>3
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F6" STYLE "BT"
      @ pfIl+1, 01 SAY "F9" STYLE "BT"
      @ pfIl+0, 21 SAY "Cambiar Opción de Clientes existentes a nuevos"
      @ pfIl+1, 21 SAY "Elegir Vendedor"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+0, 21 SAY "Ir al campo izquierdo"
      @ pfIl+1, 21 SAY "Ir al Primer campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al Último campo"
 @ pfIl+1, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 STORE pfIl+2 TO pfIl
 IF viTe>3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 01 SAY "TAB" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+1, 21 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 RELEASE viTe, viT1, ciTx, vsW0, vtB1, vtB2, vtB3, vtB4, vtB5, vfIl, ifIl,  ;
         ufIl, ffIl
 RELEASE cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vrEc, irEc, urEc, frEc, crEc,  ;
         vrCc, irCc
 RELEASE urCc, frCc, crCc, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7,  ;
         vfB8, vcBi
 RELEASE vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, viOm, vtDo, ctDo,  ;
         vsEr, csEr
 RELEASE vdOc, cdOc, vpIg, vmOn, vfEm, vfRe, vtCa, vtCs, vtCv, vcLi, vsUc,  ;
         vtIt, vnTi
 RELEASE vnOm, vdIr, vdIs, vdEp, vtEl, vrUc, vdNi, vvEn, vnVe, vcM1, xcM1,  ;
         vcM2, vrEl
 RELEASE vtD1, itD1, utD1, ctD1, vsR1, isR1, usR1, csR1, vdO1, idO1, udO1,  ;
         cdO1, cdO1
 RELEASE vnO1, inO1, unO1, cnO1, vfE1, ifE1, ufE1, cfE1, vsRi, vnUi, vdEs,  ;
         tnEt, tiGv
 RELEASE vtOt, ttOt, vfRa, vlIn, icLn, ucLn, vcL1, vtM1, vtM2, vpO1, vpO2,  ;
         voPc, voP1
 RELEASE voP2, vtCl, vnTc, vsIg, xsIg, vtDi, vcOn, tvAl, vcOd, vcUv, vnUv,  ;
         vcAn, vpRe
 RELEASE vpAn_11
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
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 WITH "1", "N"
 RELEASE ntM1
ENDPROC
*
