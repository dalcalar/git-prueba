 SET CENTURY ON
 PUBLIC wsW0, ntM7
 STORE "0006" TO ntM7
 STORE 02 TO wsW0
 DO tmP_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[14, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2921COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2921FOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921FO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 60
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921DSP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F2921DST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2921TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2921TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F2921EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE "TM01"+ntM7+meXt TO mdBf
 DO WHILE .T.
      ntM7 = STRTRAN(STR(VAL(ntM7)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM7+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM7="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(f2921cod)+"*"+ALLTRIM(f2921cdg)+"*" TAG f2921cod
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2700w IN PAI2700W
 IF mkEy=k_Esc
      DO deL_file1 IN PAI2600A
      RETURN
 ENDIF
 DO abR_2600a IN PAI2600A
 IF mkEy=k_Esc
      DO deL_file1 IN PAI2600A
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vfB1, vfB2, vfB3,  ;
        vfB4, vfB5
 PUBLIC vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf,  ;
        vfBg, vfBh
 PUBLIC vfBi, vfBj, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9,  ;
        vcB0, vcBa
 PUBLIC vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi, vcBj, vcO0, vcL0,  ;
        vcL9, vsW2
 PUBLIC vsW3, vmTt, vpEs, tpEs, vcSs, ccSs, vnTr, vcLi, vsUc, vnOm, cnOm,  ;
        inOm, unOm
 PUBLIC xnOm, cnO1, vdIr, vdIs, vdEp, vrUc, vdNi, vtEl, vmDd, vmD1, xmD1,  ;
        vmD3, xmD3
 PUBLIC vtRa, vtNo, vtRu, vtDi, vtDs, vtDp, vcIm, vcC1, vcC2, vmR1, vmR2,  ;
        vpLc, vpL2
 PUBLIC vcHo, vcH2, vlC1, vlC2, vcR1, vcR2, vaLm, vnAl, vlUg, vlUd, vlUp,  ;
        vpPa, vpPd
 PUBLIC vpPp, vcM1, vcM2, vdIa, idIa, udIa, xdIa, vmEs, imEs, umEs, xmEs,  ;
        vaNo, iaNo
 PUBLIC uaNo, xaNo, itDo, utDo, xtDo, isEr, usEr, xsEr, csE1, idOc, udOc,  ;
        xdOc, cdO1
 PUBLIC vtOt, vfOr, vtTt, vdSp, vdSt, tpLa, vcPr, ctP1, ccOd, vpDi, vpDs,  ;
        vpPr, vpDp
 STORE 01 TO vmTt, vsW3, vcSs
 STORE 02 TO vtPp
 STORE 00 TO vpEs, tpEs
 STORE "GR" TO vtDo
 STORE msEr(04) TO vsEr
 STORE "0000001" TO vdOc
 STORE SPACE(03) TO csEr
 STORE SPACE(08) TO vdNi
 STORE SPACE(50) TO vnTr
 STORE SPACE(90) TO vcM2
 STORE SPACE(07) TO vtEl, cdOc
 STORE SPACE(11) TO vrUc, vtRu
 STORE SPACE(20) TO vlC1, vlC2
 STORE SPACE(04) TO vcLi, vtRa, vaLm
 STORE SPACE(02) TO vsUc, vcR1, vcR2, vcC1, vcC2
 STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp, vpPd, vpPp
 STORE SPACE(25) TO vtDs, vtDp, vcIm, vmR1, vmR2, vpLc, vpL2
 STORE SPACE(70) TO vnOm, vdIr, vcM1, vlUg, vpPa, vnAl, vtNo, vtDi, vcHo, vcH2
 DO CASE
      CASE mcIa="NV"
           STORE mcIm TO vcIm
           STORE meMp TO vcLi
           STORE mtRa TO vtRa
           STORE maLm TO vaLm
      CASE mcIa="NP"
           STORE meMp TO vcLi
           STORE maLm TO vaLm
      CASE mcIa="NM"
           STORE mcIm TO vcIm
           STORE meMp TO vcLi
 ENDCASE
 IF LEN(ALLTRIM(vcLi))<>0
      SELECT clIentes
      SEEK vcLi
      IF EOF()
           STORE SPACE(4) TO vcLi
      ELSE
           STORE f1101nom TO vnOm
           STORE f1101ruc TO vrUc
           STORE f1101ele TO vdNi
           STORE f1101med TO vmDd
           SELECT suCursal
           SEEK vcLi
           IF  .NOT. EOF()
                STORE f1102suc TO vsUc
                STORE f1102dir TO vdIr
                STORE f1102ndi TO vdIs
                STORE f1102ndp TO vdEp
                STORE f1102ent TO vlUg
                STORE f1102nd1 TO vlUd
                STORE f1102np1 TO vlUp
                IF LEN(ALLTRIM(f1102tl1))<>0
                     STORE f1102tl1 TO vtEl
                ELSE
                     IF LEN(ALLTRIM(f1102tl2))<>0
                          STORE f1102tl2 TO vtEl
                     ELSE
                          STORE f1102tl3 TO vtEl
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vtRa))<>0
      SELECT trAnsportista
      SEEK vtRa
      IF EOF()
           STORE SPACE(4) TO vtRa
      ELSE
           STORE f9215nom TO vtNo
           STORE f9215ruc TO vtRu
           STORE f9215dir TO vtDi
           STORE f9215dis TO vtDs
           STORE f9215dpt TO vtDp
           STORE f9215cim TO vcIm
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vaLm))<>0
      SELECT alMacen
      SEEK vaLm
      IF EOF()
           STORE SPACE(4) TO vaLm
      ELSE
           STORE f9214nom TO vnAl
           STORE f9214dir TO vpPa
           STORE f9214dis TO vpPd
           STORE f9214dpt TO vpPp
           IF LEN(ALLTRIM(f9214sr3))<>0
                STORE f9214sr3 TO vsEr
           ENDIF
      ENDIF
 ENDIF
 SET READBORDER ON
 DO p00_2600a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2600a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO cl2_2600w IN PAI2600W
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1 .AND. viTe<>2 .AND. viTe<>3 .AND.  ;
                viTe<>4 .AND. viTe<>8 .AND. viTe<>11 .AND. viTe<>13 .AND.  ;
                viTe<>15 .AND. viTe<>17
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe<>3 .AND. viTe<>4 .AND. viTe<>8
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe<>3 .AND. viTe<>4 .AND. viTe<>8  ;
                .AND. viTe<>11 .AND. viTe<>13 .AND. viTe<>15 .AND. viTe<>17
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<3
                = INKEY(0.01)
                SELECT caB_remi
                DO orD_0000a WITH "2600", "A", "F2600DOC", "D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos registrados..." TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET FILTER TO f2600est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos que se puedan modificar..."  ;
                           TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBj, vcBj
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO vpAn_11
                STORE vsEr TO csE1
                STORE vdOc TO cdO1
                STORE vnOm TO cnO1
                DO paC2600w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_remi
                SET FILTER TO
                DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          DO CASE
                               CASE f2600est="9"
                                    STORE "Guía se encuentra anulada..."  ;
                                     TO mmSj
                                    DO poNmsj
                               CASE f2600est="8"
                                    STORE  ;
                                     "Guía se encuentra de baja...No se puede modificar..."  ;
                                     TO mmSj
                                    DO poNmsj
                               CASE f2600est="2"
                                    STORE  ;
                                     "Guía se encuentra impresa...No se puede modificar..."  ;
                                     TO mmSj
                                    DO poNmsj
                               CASE f2600mot=1
                                    STORE  ;
                                     "Esta Guía es de Ventas...No se puede modificar..."  ;
                                     TO mmSj
                                    DO poNmsj
                               CASE f2600mot-1=5
                                    STORE  ;
                                     "Esta Guía es de Ingreso x Compras...No se puede modificar..."  ;
                                     TO mmSj
                                    DO poNmsj
                               CASE f2600mot-1=11
                                    STORE  ;
                                     "Esta Guía es de Ingreso x Recojo de Bienes Transformados...No se puede modificar..."  ;
                                     TO mmSj
                                    DO poNmsj
                               OTHERWISE
                                    IF mkEy=k_Esc
                                         STORE 99 TO mkEy
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                    ENDIF
                                    STORE 2 TO viTe
                          ENDCASE
                     OTHERWISE
                          STORE csE1 TO vsEr
                          STORE cdO1 TO vdOc
                          STORE cnO1 TO vnO1
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBj, vcBj
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=3
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
                     DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnOm))
                SET NEAR OFF
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
                     STORE f1101cod TO vcLi
                     STORE f1101nom TO vnOm
                     STORE f1101ruc TO vrUc
                     STORE f1101ele TO vdNi
                     STORE f1101med TO vmDd
                     SELECT suCursal
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                          STORE f1102dir TO vdIr
                          STORE f1102ndi TO vdIs
                          STORE f1102ndp TO vdEp
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
                          IF LEN(ALLTRIM(f1102tl1))<>0
                               STORE f1102tl1 TO vtEl
                          ELSE
                               IF LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               ELSE
                                    STORE f1102tl3 TO vtEl
                               ENDIF
                          ENDIF
                          DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
                     ELSE
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vdIr, vlUg
                          STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                          DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO noM_2600w IN PAI2600W WITH "1"
                     DO drC_2600w IN PAI2600W
                     DO luG_2600w IN PAI2600W
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=3
                = INKEY(0.01)
                STORE SPACE(04) TO vcLi
                STORE SPACE(07) TO vtEl
                STORE SPACE(08) TO vdNi
                STORE SPACE(11) TO vrUc
                STORE SPACE(02) TO vsUc
                STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                STORE SPACE(70) TO vnOm, vdIr, vlUg, vnTt
                DO noM_2600w IN PAI2600W WITH "1"
                DO drC_2600w IN PAI2600W
                DO luG_2600w IN PAI2600W
                DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=4
                = INKEY(0.01)
                SELECT alMacen
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Puntos de Partida/Almacenes registrados..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO AT(UPPER(ALLTRIM(vnAl)), UPPER(ALLTRIM(f9214nom)))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Puntos de Partida/Almacenes que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB6, vcB6
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9214", "U", "F9214NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnAl))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB3 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9214", "U", "F9214COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE f9214cod TO vaLm
                     STORE f9214nom TO vnAl
                     STORE f9214dir TO vpPa
                     STORE f9214dis TO vpPd
                     STORE f9214dpt TO vpPp
                     DO naL_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfB7, vcB7
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB6, vcB6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=4
                STORE SPACE(04) TO vaLm
                STORE SPACE(25) TO vpPd, vpPp
                STORE SPACE(70) TO vnAl, vpPa
                DO naL_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=8
                = INKEY(0.01)
                SELECT trAnsportista
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Transportistas registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO AT(UPPER(ALLTRIM(vtNo)), UPPER(ALLTRIM(f9215nom)))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Transportistas que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB9, vcB9
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB8, vcB8
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9215", "U", "F9215NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vtNo))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB4 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9215", "U", "F9215COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE f9215cod TO vtRa
                     STORE f9215nom TO vtNo
                     STORE f9215ruc TO vtRu
                     STORE f9215dir TO vtDi
                     STORE f9215dis TO vtDs
                     STORE f9215dpt TO vtDp
                     STORE f9215cim TO vcIm
                     DO trA_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfB0, vcB0
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB9, vcB9
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=8
                STORE SPACE(04) TO vtRa
                STORE SPACE(11) TO vtRu
                STORE SPACE(70) TO vtNo, vtDi
                STORE SPACE(25) TO vtDs, vtDp, vcIm
                DO trA_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=11
                = INKEY(0.01)
                SELECT chOferes
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Choferes registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBa, vcBa
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB7 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE f9212cod TO vcC1
                     STORE f9212nom TO vcHo
                     STORE f9212lic TO vlC1
                     DO ch1_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfBa, vcBa
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=11
                STORE SPACE(02) TO vcC1
                STORE SPACE(20) TO vlC1
                STORE SPACE(70) TO vcHo
                DO ch1_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=13
                = INKEY(0.01)
                SELECT chOferes
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Choferes registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBc, vcBc
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB8 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE f9212cod TO vcC2
                     STORE f9212nom TO vcH2
                     STORE f9212lic TO vlC2
                     DO ch2_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfBd, vcBd
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=13
                STORE SPACE(02) TO vcC2
                STORE SPACE(20) TO vlC2
                STORE SPACE(70) TO vcH2
                DO ch2_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=15
                = INKEY(0.01)
                SELECT caRros
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Carros registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBe, vcBe
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB5 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE f9219cod TO vcR1
                     STORE f9219mar TO vmR1
                     STORE f9219pla TO vpLc
                     DO mr1_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfBe, vcBe
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=15
                STORE SPACE(02) TO vcR1
                STORE SPACE(10) TO vpLc
                STORE SPACE(20) TO vmR1
                DO mr1_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=17
                = INKEY(0.01)
                SELECT caRros
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Carros registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBg, vcBg
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB6 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE f9219cod TO vcR2
                     STORE f9219mar TO vmR2
                     STORE f9219pla TO vpL2
                     DO mr2_2600w IN PAI2600W WITH "1"
                     DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                DO prEsiona WITH "1", "CONSUL", vfBg, vcBg
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=17
                STORE SPACE(02) TO vcR2
                STORE SPACE(10) TO vpL2
                STORE SPACE(20) TO vmR2
                DO mr2_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2600a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2600a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. viTe>2
                DO diR_2600w IN PAI2600W
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=22
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>1 .AND. viTe<>7 .AND. viTe<> ;
                10 .AND. viTe<>12 .AND. viTe<>14 .AND. viTe<>16 .AND.  ;
                viTe<>18 .AND. viTe<>19 .AND. viTe<>20 .AND. viTe<>21  ;
                .AND. viTe<>22
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe<3 .OR. viTe=19)
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_2600a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=22
                               DO deT_2600a IN PAI2600A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_2600a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=22
                               DO deT_2600a IN PAI2600A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=03
                               STORE 19 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=04
                               STORE 20 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=16
                               STORE 21 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=18
                               STORE 22 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_2600a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=22
                               DO deT_2600a IN PAI2600A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=6
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=9 .AND. viTe<=16
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=17 .OR. viTe=18
                               STORE 22 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO deT_2600a IN PAI2600A
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=19 .OR. viTe=20
                          STORE 03 TO viTe
                     CASE viTe=21
                          STORE 16 TO viTe
                     CASE viTe=22
                          STORE 18 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=3 .OR. viTe=7 .OR. viTe=8 .OR. viTe=10  ;
                          .OR. viTe=11 .OR. viTe=12
                          STORE viTe-2 TO viTe
                     CASE viTe=13 .OR. viTe=14 .OR. viTe=15 .OR. viTe=17  ;
                          .OR. viTe=18
                          STORE viTe-2 TO viTe
                     CASE viTe=16
                          STORE 13 TO viTe
                     CASE viTe=21
                          STORE 14 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 22 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2600a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 22 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2600a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO deT_2600a IN PAI2600A
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
           STORE viTe TO viT1
           DO coL_fondo
           @mMF2,mMC2-8 Say Space(140) Font "&mLetRom",9 Style "BQ" Size 1,140
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                                      Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                                     Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+40 Say "ESCOGER CLIENTE REGISTRADO..."                                                              Font "&mLetRom",9 Style "BT"
                CASE viTe=4
                     @mMF2,mMC2+40 Say "ESCOGER PUNTO DE PARTIDA O ALMACEN..."                                                      Font "&mLetRom",9 Style "BT"
                CASE viTe=5
                     @mMF2,mMC2+12 Say "DIGITAR EL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA LA DIRECCIÓN..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=6
                     @mMF2,mMC2+04 Say "DIGITAR EL DISTRITO DEL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA EL DE LA DIRECCIÓN..." Font "&mLetRom",9 Style "BT"
                CASE viTe=7
                     @mMF2,mMC2+08 Say "DIGITAR EL DPTO.DEL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA EL DE LA DIRECCIÓN..."     Font "&mLetRom",9 Style "BT"
                CASE viTe=8
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR TRANSPORTISTA..."                                                         Font "&mLetRom",9 Style "BT"
                CASE viTe=9
                     @mMF2,mMC2+30 Say "CAMPO DE 11 DIGITOS, SE DIGITA CON EL TRANSPORTISTA..."                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=10
                     @mMF2,mMC2+15 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=11
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR EL CHOFER..."                                                             Font "&mLetRom",9 Style "BT"
                CASE viTe=12
                     @mMF2,mMC2+41 Say "DIGITAR LA LICENCIA..."                                                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=13
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR EL CHOFER..."                                                             Font "&mLetRom",9 Style "BT"
                CASE viTe=14
                     @mMF2,mMC2+41 Say "DIGITAR LA LICENCIA..."                                                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=15
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR MARCA DE CARRO..."                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=16
                     @mMF2,mMC2+44 Say "DIGITAR LA PLACA..."                                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=17
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR MARCA DE CARRO..."                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=18
                     @mMF2,mMC2+44 Say "DIGITAR LA PLACA..."                                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=19
                     @mMF2,mMC2+30 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                                                Font "&mLetRom",9 Style "BT"
                CASE viTe=20
                     @mMF2,mMC2+22 Say "CAMPO DE 6 ENTEROS Y 4 DECIMALES, SI NO SE USA PUEDE SER 0.0000..."                         Font "&mLetRom",9 Style "BT"
                CASE viTe=21
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=22
                     @mMF2,mMC2+12 Say "CAMPO DE 90 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE LEN(ALLTRIM(vcLi))<>0 .AND. viTe=3
                DO noM_2600w IN PAI2600W WITH "2"
                mkEy = INKEY(0, "HM")
                DO noM_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vaLm))<>0 .AND. viTe=4
                DO naL_2600w IN PAI2600W WITH "2"
                mkEy = INKEY(0, "HM")
                DO naL_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vtRa))<>0 .AND. (viTe=8 .OR. viTe=9 .OR. viTe=10)
                DO CASE
                     CASE viTe=8
                          DO trA_2600w IN PAI2600W WITH "2"
                     CASE viTe=9
                          DO trA_2600w IN PAI2600W WITH "3"
                     CASE viTe=10
                          DO trA_2600w IN PAI2600W WITH "4"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO trA_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcC1))<>0 .AND. (viTe=11 .OR. viTe=12)
                DO CASE
                     CASE viTe=11
                          DO ch1_2600w IN PAI2600W WITH "2"
                     CASE viTe=12
                          DO ch1_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO ch1_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcC2))<>0 .AND. (viTe=13 .OR. viTe=14)
                DO CASE
                     CASE viTe=13
                          DO ch2_2600w IN PAI2600W WITH "2"
                     CASE viTe=14
                          DO ch2_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO ch2_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcR1))<>0 .AND. (viTe=15 .OR. viTe=16)
                DO CASE
                     CASE viTe=15
                          DO mr1_2600w IN PAI2600W WITH "2"
                     CASE viTe=16
                          DO mr1_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO mr1_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcR2))<>0 .AND. (viTe=17 .OR. viTe=18)
                DO CASE
                     CASE viTe=17
                          DO mr2_2600w IN PAI2600W WITH "2"
                     CASE viTe=18
                          DO mr2_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO mr2_2600w IN PAI2600W WITH "1"
           CASE viTe=1
                @mFI0-1.9,mCO0+29.5 Get vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
           CASE viTe=2
                @mFI0-1.9,mCO0+36.2 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
           CASE viTe=3
                @mFI0+0.4,mCO0+13.0 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=4
                @mFI0+5.3,mCO0+20.5 Edit vNAL Font "&mLetAri",9 Style "NQ" Size 1,62.2,70
           CASE viTe=5
                @mFI0+7.2,mCO0+22.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,72.1,70
           CASE viTe=6
                @mFI0+8.7,mCO0+22.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,25,25
           CASE viTe=7
                @mFI0+8.7,mCO0+52.0 Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,25,25
           CASE viTe=8
                @mFI0+10.5,mCO0+17.5 Edit vTNO Font "&mLetAri",9 Style "NQ" Size 1,65.2,70
           CASE viTe=9
                @mFI0+12.0,mCO0+17.5 Edit vTRU Font "&mLetAri",9 Style "NQ" Size 1,17,11
           CASE viTe=10
                @mFI0+12.0,mCO0+67.8 Edit vCIM Font "&mLetAri",9 Style "NQ" Size 1,27,25
           CASE viTe=11
                @mFI0+13.5,mCO0+12.5 Edit vCHO Font "&mLetAri",9 Style "NQ" Size 1,34,70
           CASE viTe=12
                @mFI0+13.5,mCO0+67.8 Edit vLC1 Font "&mLetAri",9 Style "NQ" Size 1,27,20
           CASE viTe=13
                @mFI0+15.0,mCO0+12.5 Edit vCH2 Font "&mLetAri",9 Style "NQ" Size 1,34,70
           CASE viTe=14
                @mFI0+15.0,mCO0+67.8 Edit vLC2 Font "&mLetAri",9 Style "NQ" Size 1,27,20
           CASE viTe=15
                @mFI0+16.8,mCO0+10.5 Edit vMR1 Font "&mLetAri",9 Style "NQ" Size 1,16,25
           CASE viTe=16
                @mFI0+16.8,mCO0+43.5 Edit vPLC Font "&mLetAri",9 Style "NQ" Size 1,14,25
           CASE viTe=17
                @mFI0+18.3,mCO0+10.5 Edit vMR2 Font "&mLetAri",9 Style "NQ" Size 1,16,25
           CASE viTe=18
                @mFI0+18.3,mCO0+43.5 Edit vPL2 Font "&mLetAri",9 Style "NQ" Size 1,14,25
           CASE viTe=19
                @mFI0+00.2,vCL9+13.8 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           CASE viTe=20
                DO coLbln
                @mFI0+02.2,vCL9+10.0 Say  tPES Font "&mLetAri",9 Style "NQ" Size 1,16   Pict "999999.9999"
                mkEy = INKEY(0)
                DO coL_beige
                @mFI0+02.2,vCL9+10.0 Say  tPES Font "&mLetAri",9 Style "NQ" Size 1,16   Pict "999999.9999"
           CASE viTe=21
                @mFI0+16.8,mCO0+67.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
           CASE viTe=22
                @mFI0+18.3,mCO0+67.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
      ENDCASE
      DO CASE
           CASE viTe=20
           CASE LEN(ALLTRIM(vcLi))<>0 .AND. viTe=3
           CASE LEN(ALLTRIM(vaLm))<>0 .AND. viTe=4
           CASE LEN(ALLTRIM(vtRa))<>0 .AND. (viTe=8 .OR. viTe=9 .OR. viTe=10)
           CASE LEN(ALLTRIM(vcC1))<>0 .AND. (viTe=11 .OR. viTe=12)
           CASE LEN(ALLTRIM(vcC2))<>0 .AND. (viTe=13 .OR. viTe=14)
           CASE LEN(ALLTRIM(vcR1))<>0 .AND. (viTe=15 .OR. viTe=16)
           CASE LEN(ALLTRIM(vcR2))<>0 .AND. (viTe=17 .OR. viTe=18)
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
PROCEDURE Ver_2600a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "El número de Serie no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vsEr="000"
           STORE "El número de Serie no puede ser 000..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "El número de Documento no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. vdOc="0000000"
           STORE "El número de Documento no puede ser 0000000..." TO mmSj
      CASE viTe=2 .AND. (vsEr+vdOc<>csEr+cdOc .OR. LEN(ALLTRIM(cdOc))=0)
           SELECT caB_remi
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Guía no se encuentra registrada..." TO mmSj
                CASE f2600est="9"
                     STORE "Esta Guía se encuentra anulada..." TO mmSj
                CASE f2600est="8"
                     STORE "Esta Guía se encuentra de BAJA..." TO mmSj
                CASE f2600est="2"
                     STORE "Esta Guía se encuentra Impresa...No se puede modificar..."  ;
                           TO mmSj
                CASE f2600mot=1
                     STORE "Esta Guía es de Ventas...No se puede modificar..."  ;
                           TO mmSj
                CASE f2600mot-1=5
                     STORE "Esta Guía es de Ingreso x Compras...No se puede modificar..."  ;
                           TO mmSj
                CASE f2600mot-1=11
                     STORE "Esta Guía es de Ingreso x Recojo de Bienes Transformados...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
                     DO muE_2600a
                     STORE 02 TO viTe
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                     ENDIF
           ENDCASE
      CASE viTe=3 .AND. AT(" ", vcLi)<>0
           STORE "Cliente debe de estar registrado..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente debe de estar lleno..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vrUc))=0 .AND. LEN(ALLTRIM(vdNi))=0
           STORE "RUC o DNI debe de estar lleno..." TO mmSj
      CASE viTe=4 .AND. AT(" ", vaLm)<>0
           STORE "Punto de Partida/Almacén debe de estar registrado..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vpPa))=0
           STORE "Dirección del Punto de Partida/Almacén no puede estar vacía..."  ;
                 TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vpPd))=0
           STORE "Distrito del Punto de Partida/Almacén no puede estar vacía..."  ;
                 TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vpPp))=0
           STORE "Departamento del Punto de Partida/Almacén no puede estar vacío..."  ;
                 TO mmSj
      CASE viTe=19 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_2600a
 SELECT caB_remi
 STORE f2600tdo TO vtDo
 STORE f2600ser TO vsEr
 STORE f2600doc TO vdOc
 STORE f2600fem TO vfEm
 STORE f2600cli TO vcLi
 STORE f2600suc TO vsUc
 STORE f2600nom TO vnOm
 STORE f2600dir TO vdIr
 STORE f2600dis TO vdIs
 STORE f2600dep TO vdEp
 STORE f2600ruc TO vrUc
 STORE f2600ele TO vdNi
 STORE f2600tel TO vtEl
 STORE f2600lug TO vlUg
 STORE f2600lud TO vlUd
 STORE f2600lup TO vlUp
 STORE f2600alm TO vaLm
 STORE f2600tra TO vtRa
 STORE f2600tno TO vtNo
 STORE f2600tdi TO vtDi
 STORE f2600tds TO vtDs
 STORE f2600tdp TO vtDp
 STORE f2600tru TO vtRu
 STORE f2600cim TO vcIm
 STORE f2600cst TO vcSs
 STORE f2600cr1 TO vcR1
 STORE f2600mr1 TO vmR1
 STORE f2600pla TO vpLc
 STORE f2600cr2 TO vcR2
 STORE f2600mr2 TO vmR2
 STORE f2600pl2 TO vpL2
 STORE f2600cc1 TO vcC1
 STORE f2600cho TO vcHo
 STORE f2600lc1 TO vlC1
 STORE f2600cc2 TO vcC2
 STORE f2600ch2 TO vcH2
 STORE f2600lc2 TO vlC2
 STORE f2600pes TO tpEs
 STORE f2600cm1 TO vcM1
 STORE f2600cm2 TO vcM2
 STORE f2600mot-1 TO vmTt
 SELECT alMacen
 SEEK vaLm
 IF EOF()
      STORE SPACE(4) TO vaLm, vnAl, vpPa, vpPd, vpPp
 ELSE
      STORE f9214nom TO vnAl
      STORE f9214dir TO vpPa
      STORE f9214dis TO vpPd
      STORE f9214dpt TO vpPp
 ENDIF
 DO p02_2600a IN PAI2600A WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mFI0-1.9,mCO0+29.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"
 @mFI0-1.9,mCO0+36.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999"
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_conj
 ZAP
 REINDEX
 FLUSH
 SELECT deT_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      STORE f2601cod TO vcOd
      STORE f2601des TO vdEs
      STORE f2601dcr TO vdCr
      STORE f2601can TO vcAn
      STORE f2601caj TO vcAj
      STORE f2601pie TO vpIe
      STORE 1 TO viOm
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE "Producto ["+ALLTRIM(vcOd)+"] se encuentra BORRADO..." TO mmSj
           STORE mmSj+CHR(13)+"Presionar un Tecla para continuar..." TO mmSj
           DO poNmsj
           = INKEY(0, "HM")
           WAIT CLEAR
           STORE k_Esc TO mkEy
           RETURN
      ELSE
           STORE f2111tip TO vtPo
           SELECT tiP_prod
           SEEK vtPo
           IF EOF()
                STORE 1 TO vtPo
                STORE " " TO veNt
           ELSE
                STORE f9211tpo TO vtPo
                STORE f9211ent TO veNt
           ENDIF
           SELECT prOductos
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111md1 TO vmD1
           STORE f2111md3 TO vmD3
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111la1 TO vlA1
           STORE f2111la2 TO vlA2
           STORE f2111an1 TO vaN1
           STORE f2111an2 TO vaN2
           DO CASE
                CASE vlA1=0 .AND. vaN1=0
                     STORE 2 TO vmEd
                OTHERWISE
                     STORE 1 TO vmEd
           ENDCASE
           DO grA_2600b IN PAI2600B
      ENDIF
      SELECT deT_remi
      SKIP
 ENDDO
 SELECT itE_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2602tdo+f2602ser+f2602doc=vtDo+vsEr+vdOc
      STORE f2602cod TO vcOd
      STORE f2602rcc TO vrCc
      STORE f2602opc TO voPc
      STORE f2602un1 TO vuN1
      STORE f2602un2 TO vuN2
      STORE f2602mla TO vmLa
      STORE f2602man TO vmAn
      STORE f2602p11 TO vp11
      STORE f2602p12 TO vp12
      STORE f2602p21 TO vp21
      STORE f2602p22 TO vp22
      STORE f2602ctd TO vcTd
      STORE f2602ca1 TO vcA1
      STORE f2602ca2 TO vcA2
      STORE f2602ca3 TO vcA3
      STORE f2602ca4 TO vcA4
      STORE f2602por TO vpOr
      STORE f2602mm1 TO vmM1
      STORE f2602mm2 TO vmM2
      STORE f2602mm3 TO vmM3
      STORE f2602mm4 TO vmM4
      STORE f2602cx1 TO vcX1
      STORE f2602cx2 TO vcX2
      STORE f2602cx3 TO vcX3
      STORE f2602cx4 TO vcX4
      STORE f2602cy1 TO vcY1
      STORE f2602cy2 TO vcY2
      STORE f2602cy3 TO vcY3
      STORE f2602cy4 TO vcY4
      STORE f2602pie TO vtPi
      STORE f2602cm1 TO vcMm
      STORE f2602cm2 TO vcMp
      SELECT teMporal_4
      APPEND BLANK
      REPLACE ftM4cod WITH vcOd
      REPLACE ftM4rec WITH vrCc
      REPLACE ftM4opc WITH voPc
      REPLACE ftM4un1 WITH vuN1
      REPLACE ftM4un2 WITH vuN2
      REPLACE ftM4mla WITH vmLa
      REPLACE ftM4man WITH vmAn
      REPLACE ftM4p11 WITH vp11
      REPLACE ftM4p12 WITH vp12
      REPLACE ftM4p21 WITH vp21
      REPLACE ftM4p22 WITH vp22
      REPLACE ftM4can WITH vcTd
      REPLACE ftM4ca1 WITH vcA1
      REPLACE ftM4ca2 WITH vcA2
      REPLACE ftM4ca3 WITH vcA3
      REPLACE ftM4ca4 WITH vcA4
      REPLACE ftM4por WITH vpOr
      REPLACE ftM4mm1 WITH vmM1
      REPLACE ftM4mm2 WITH vmM2
      REPLACE ftM4mm3 WITH vmM3
      REPLACE ftM4mm4 WITH vmM4
      REPLACE ftM4cx1 WITH vcX1
      REPLACE ftM4cx2 WITH vcX2
      REPLACE ftM4cx3 WITH vcX3
      REPLACE ftM4cx4 WITH vcX4
      REPLACE ftM4cy1 WITH vcY1
      REPLACE ftM4cy2 WITH vcY2
      REPLACE ftM4cy3 WITH vcY3
      REPLACE ftM4cy4 WITH vcY4
      REPLACE ftM4pie WITH vtPi
      REPLACE ftM4cm1 WITH vcMm
      REPLACE ftM4cm2 WITH vcMp
      SELECT itE_remi
      SKIP
 ENDDO
 SELECT seR_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2603tdo+f2603ser+f2603doc=vtDo+vsEr+vdOc
      STORE f2603cod TO vcOd
      STORE f2603ped TO vpD1
      STORE f2603sec TO vsEc
      STORE f2603pla TO vpLa
      STORE f2603mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6cod WITH vcOd
      REPLACE ftM6ped WITH vpD1
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6mot WITH vmOt
      SELECT seR_remi
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO paN_2600b IN PAI2600B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
ENDPROC
*
PROCEDURE P00_2600a
 PARAMETER ptPo
 PRIVATE pdEs, psTo
 STORE 0 TO psTo
 STORE SPACE(70) TO pdEs
 DO p01_2600a IN PAI2600A WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tb0_2600w IN PAI2600W
 STORE mfI0-02.0 TO vfBj
 STORE mcO0+48.3 TO vcBj
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO tiT_0000a WITH "Modificación de Guías de Remisión"
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO p02_2600a IN PAI2600A WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO p03_2600a IN PAI2600A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 DO coLbln
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.4, mcO0+53.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-0.6 TO mfI0-2.2, mcO0+53.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.4, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 @mFI0-1.9,mCO0+00.6 Say "Guía de Remisión:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.9,mCO0+29.5 Get vSER                Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.9,mCO0+36.2 Get vDOC                Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 READ TIMEOUT 0.01
 SET READBORDER OFF
 DO prEsiona WITH "1", "CONSU0", vfBj, vcBj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      GOTO irEc
      DO paN_2600b IN PAI2600B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE Gra_2600a
 PRIVATE pnUm, pcO1, pcO2
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_remi
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
 STORE "1" TO ctP1
 STORE f2600cst TO ccSs
 STORE SUBSTR(DTOC(f2600fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2600fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2600fem), 7, 4) TO xaNo
 DO CASE
      CASE f2600mot-1=2
           STORE "1" TO ctI1
      OTHERWISE
           STORE "2" TO ctI1
 ENDCASE
 DO CASE
      CASE vmTt=2
           STORE "1" TO vtI1
           STORE "S" TO veSt
      OTHERWISE
           STORE "2" TO vtI1
           STORE "O" TO veSt
 ENDCASE
 STORE "1" TO vtP1
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT tmP_conj
 ZAP
 REINDEX
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Verificando Conjunto: "+ftM1cod+"..."
      STORE ftM1cod TO vcOd
      STORE ftM1can TO vcAn
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      STORE f2111tip TO ctPo
      SELECT tiP_prod
      SEEK ctPo
      IF EOF()
           STORE 1 TO vtPo
           STORE " " TO veNt
      ELSE
           STORE f9211tpo TO vtPo
           STORE f9211ent TO veNt
      ENDIF
      IF vtPo=10
           SELECT deT_conjuntos
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2921cdg TO vcDg
                STORE f2921dcr TO vdCr
                STORE f2921cuv TO vcUv
                STORE f2921nuv TO vnUv
                STORE f2921can TO ccAn
                STORE f2921for TO vfOr
                STORE f2921dsp TO vdSp
                STORE f2921ttt TO vtTt
                SELECT tmP_conj
                APPEND BLANK
                REPLACE f2921cod WITH vcOd
                REPLACE f2921cdg WITH vcDg
                REPLACE f2921dcr WITH vdCr
                REPLACE f2921cuv WITH vcUv
                REPLACE f2921nuv WITH vnUv
                REPLACE f2921can WITH ccAn
                REPLACE f2921tot WITH vcAn*ccAn
                REPLACE f2921pre WITH 0
                REPLACE f2921for WITH vfOr
                REPLACE f2921dsp WITH vdSp
                REPLACE f2921dst WITH 0
                REPLACE f2921ttt WITH vtTt
                SELECT deT_conjuntos
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 IF vcSs=1
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           WAIT WINDOW NOWAIT "Verificando Producto: "+ftM1cod+"..."
           STORE ftM1cod TO vcOd
           SELECT tmP_prod
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT teMporal
                     SKIP
                     LOOP
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2118cod WITH vcOd
                     REPLACE f2118sto WITH 0
                     REPLACE f2118caj WITH 0
                     REPLACE f2118cpe WITH 0
                     REPLACE f2118cjp WITH 0
                     REPLACE f2118sts WITH 0
                     REPLACE f2118orp WITH 0
                     REPLACE f2118vcp WITH 0
                     REPLACE f2118vcs WITH 0
                     REPLACE f2118prm WITH 0
                     UNLOCK
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT tmP_conj
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2921cdg TO ccDg
                SELECT tmP_prod
                SEEK ALLTRIM(ccDg)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH ccDg
                     SELECT prOductos
                     SEEK ALLTRIM(ccDg)+"*"
                     IF EOF()
                          SELECT tmP_conj
                          SKIP
                          LOOP
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     SELECT prO_tot
                     SEEK ALLTRIM(ccDg)+"*"
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f2118cod WITH ccDg
                          REPLACE f2118sto WITH 0
                          REPLACE f2118caj WITH 0
                          REPLACE f2118cpe WITH 0
                          REPLACE f2118cjp WITH 0
                          REPLACE f2118sts WITH 0
                          REPLACE f2118orp WITH 0
                          REPLACE f2118vcp WITH 0
                          REPLACE f2118vcs WITH 0
                          REPLACE f2118prm WITH 0
                          UNLOCK
                          SEEK ALLTRIM(ccDg)+"*"
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                SELECT tmP_conj
                SKIP
           ENDDO
           SELECT teMporal
           SKIP
      ENDDO
 ENDIF
 IF ccSs=1
      SELECT deT_remi
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
           STORE f2601cod TO vcOd
           SELECT tmP_prod
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT deT_remi
                     SKIP
                     LOOP
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2118cod WITH vcOd
                     REPLACE f2118sto WITH 0
                     REPLACE f2118caj WITH 0
                     REPLACE f2118cpe WITH 0
                     REPLACE f2118cjp WITH 0
                     REPLACE f2118sts WITH 0
                     REPLACE f2118orp WITH 0
                     REPLACE f2118vcp WITH 0
                     REPLACE f2118vcs WITH 0
                     REPLACE f2118prm WITH 0
                     UNLOCK
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT coN_remi
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. f2604tdo+f2604ser+f2604doc+ ;
              ALLTRIM(f2604cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                STORE f2604cdg TO ccDg
                SELECT tmP_prod
                SEEK ALLTRIM(ccDg)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH ccDg
                     SELECT prOductos
                     SEEK ALLTRIM(ccDg)+"*"
                     IF EOF()
                          SELECT deT_remi
                          SKIP
                          LOOP
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     SELECT prO_tot
                     SEEK ALLTRIM(ccDg)+"*"
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f2118cod WITH ccDg
                          REPLACE f2118sto WITH 0
                          REPLACE f2118caj WITH 0
                          REPLACE f2118cpe WITH 0
                          REPLACE f2118cjp WITH 0
                          REPLACE f2118sts WITH 0
                          REPLACE f2118orp WITH 0
                          REPLACE f2118vcp WITH 0
                          REPLACE f2118vcs WITH 0
                          REPLACE f2118prm WITH 0
                          UNLOCK
                          SEEK ALLTRIM(ccDg)+"*"
                     ENDIF
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccDg)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                SELECT coN_remi
                SKIP
           ENDDO
           SELECT deT_remi
           SKIP
      ENDDO
 ENDIF
 WAIT WINDOW NOWAIT "Grabando Cabecera de Guías de Remisión..."
 SELECT caB_remi
 REPLACE f2600tit WITH vcLi
 REPLACE f2600cli WITH vcLi
 REPLACE f2600suc WITH vsUc
 REPLACE f2600nom WITH vnOm
 REPLACE f2600dir WITH vdIr
 REPLACE f2600dis WITH vdIs
 REPLACE f2600dep WITH vdEp
 REPLACE f2600ruc WITH vrUc
 REPLACE f2600ele WITH vdNi
 REPLACE f2600tel WITH vtEl
 REPLACE f2600lug WITH vlUg
 REPLACE f2600lud WITH vlUd
 REPLACE f2600lup WITH vlUp
 REPLACE f2600fem WITH vfEm
 REPLACE f2600alm WITH vaLm
 REPLACE f2600tra WITH vtRa
 REPLACE f2600tno WITH vtNo
 REPLACE f2600tdi WITH vtDi
 REPLACE f2600tds WITH vtDs
 REPLACE f2600tdp WITH vtDp
 REPLACE f2600tru WITH vtRu
 REPLACE f2600cim WITH vcIm
 REPLACE f2600mot WITH vmTt+1
 REPLACE f2600cst WITH vcSs
 REPLACE f2600cr1 WITH vcR1
 REPLACE f2600mr1 WITH vmR1
 REPLACE f2600pla WITH vpLc
 REPLACE f2600cr2 WITH vcR2
 REPLACE f2600mr2 WITH vmR2
 REPLACE f2600pl2 WITH vpL2
 REPLACE f2600cc1 WITH vcC1
 REPLACE f2600cho WITH vcHo
 REPLACE f2600lc1 WITH vlC1
 REPLACE f2600cc2 WITH vcC2
 REPLACE f2600ch2 WITH vcH2
 REPLACE f2600lc2 WITH vlC2
 REPLACE f2600pes WITH tpEs
 REPLACE f2600cm1 WITH vcM1
 REPLACE f2600cm2 WITH vcM2
 REPLACE f2600est WITH "1"
 REPLACE f2600usu WITH muSu
 REPLACE f2600maq WITH mmAq
 REPLACE f2600dat WITH DATE()
 REPLACE f2600tim WITH TIME()
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      STORE f2601ite TO vrEc
      STORE f2601cod TO vcOd
      STORE f2601can TO vcAn
      STORE f2601caj TO vcAj
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ftM1can=vcAn .AND. ftM1caj=vcAj .AND. xaNo+ ;
          xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+vtP1
           SELECT deT_remi
           SKIP
           LOOP
      ENDIF
      SELECT deT_remi
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal
      IF  .NOT. EOF() .AND. vcAn<>0
           STORE 1 TO pnUm
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 0 TO pcO1, pcO2
           ELSE
                STORE f2111vcs TO pcO1
                STORE f2111vcp TO pcO2
           ENDIF
           SELECT deT_remi
           REPLACE f2601can WITH vcAn
           REPLACE f2601caj WITH vcAj
           REPLACE f2601co1 WITH pcO1
           REPLACE f2601co2 WITH pcO2
      ELSE
           SELECT deT_remi
           STORE 0 TO pnUm
           REPLACE f2601tdo WITH SPACE(02)
           REPLACE f2601ser WITH SPACE(03)
           REPLACE f2601doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      IF ccSs=1
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ ;
                        ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE pnUm<>0 .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+ ;
                          vmEs+vdIa+vtI1+vtP1
                          REPLACE f2990can WITH vcAn
                          IF mcAj=1
                               REPLACE f2990caj WITH vcAj
                          ENDIF
                          REPLACE f2990nom WITH vnOm
                          IF vmTt=7 .AND. LEN(ALLTRIM(vcM1))<>0
                               REPLACE f2990nom WITH  ;
                                       LOWER(ALLTRIM(SUBSTR(vnOm, 1,  ;
                                       20)))+" / "+vcM1
                          ENDIF
                          REPLACE f2990pig WITH miGv
                          REPLACE f2990ten WITH STRTRAN(STR(vmTt+1, 2, 0),  ;
                                  " ", "0")
                          STORE 2 TO pnUm
                     OTHERWISE
                          REPLACE f2990cod WITH SPACE(mtMa)
                          DELETE
                ENDCASE
                UNLOCK
           ENDIF
           IF pnUm=1
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH vaNo
                REPLACE f2990mes WITH vmEs
                REPLACE f2990dia WITH vdIa
                REPLACE f2990tpp WITH vtP1
                REPLACE f2990tpo WITH vtI1
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH vcAn
                IF mcAj=1
                     REPLACE f2990caj WITH vcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH vtDo
                REPLACE f2990ser WITH vsEr
                REPLACE f2990doc WITH vdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH vfEm
                REPLACE f2990fem WITH vfEm
                REPLACE f2990tit WITH SPACE(04)
                REPLACE f2990cli WITH SPACE(04)
                REPLACE f2990nom WITH vnOm
                IF vmTt=7 .AND. LEN(ALLTRIM(vcM1))<>0
                     REPLACE f2990nom WITH LOWER(ALLTRIM(SUBSTR(vnOm, 1,  ;
                             20)))+" / "+vcM1
                ENDIF
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH STRTRAN(STR(vmTt+1, 2, 0), " ", "0")
                UNLOCK
           ENDIF
           IF xaNo+xmEs+xdIa+ctI1+ctP1<=vaNo+vmEs+vdIa+vtI1+vtP1
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                SET NEAR OFF
           ELSE
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
           ENDIF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
                SKIP
           ELSE
                STORE 0 TO vsLd, vsLc
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                REPLACE f2990slc WITH vsLc
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT deT_remi
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_remi
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2602cod TO vcOd
      STORE f2602rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2602tdo WITH SPACE(02)
      REPLACE f2602ser WITH SPACE(03)
      REPLACE f2602doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2603tdo+f2603ser+f2603doc=vtDo+vsEr+vdOc
      STORE f2603cod TO vcOd
      STORE f2603ped TO vpD1
      STORE f2603sec TO vsEc
      STORE f2603pla TO vpLa
      STORE f2603mot TO vmOt
      SELECT teMporal_6
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF() .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+ ;
          vtP1 .AND. ftM6pla=vpLa
           SELECT seR_remi
           SKIP
           LOOP
      ENDIF
      SELECT seR_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal_6
      IF  .NOT. EOF()
           STORE 1 TO pnUm
           STORE ftM6pla TO vpLa
           STORE ftM6mot TO vmOt
           SELECT seR_remi
           REPLACE f2603pla WITH vpLa
           REPLACE f2603mot WITH vmOt
      ELSE
           SELECT seR_remi
           STORE 0 TO pnUm
           REPLACE f2603tdo WITH SPACE(02)
           REPLACE f2603ser WITH SPACE(03)
           REPLACE f2603doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      IF ccSs=1
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ ;
                ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+ ;
                        vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2991cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           IF pnUm=1
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH vpD1
                REPLACE f2991sec WITH vsEc
                REPLACE f2991ano WITH vaNo
                REPLACE f2991mes WITH vmEs
                REPLACE f2991dia WITH vdIa
                REPLACE f2991tpp WITH vtP1
                REPLACE f2991tpo WITH vtI1
                REPLACE f2991tdo WITH vtDo
                REPLACE f2991ser WITH vsEr
                REPLACE f2991doc WITH vdOc
                REPLACE f2991pla WITH vpLa
                REPLACE f2991mot WITH vmOt
                REPLACE f2991est WITH veSt
                UNLOCK
           ENDIF
           DO grA_serie IN PAI2700A
      ENDIF
      SELECT seR_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           SET NEAR OFF
      ENDIF
 ENDDO
 DO WHILE .T.
      SELECT coN_remi
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2604cod TO vcOd
      STORE f2604cdg TO ccDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ccDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ccDg)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2604tdo WITH SPACE(02)
      REPLACE f2604ser WITH SPACE(03)
      REPLACE f2604doc WITH SPACE(07)
      REPLACE f2604cod WITH SPACE(mtMa)
      REPLACE f2604cdg WITH SPACE(mtMa)
      DELETE
      UNLOCK
      IF ccSs=1
           SELECT kaRdex
           SEEK ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ ;
                        ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
                SET NEAR ON
                SEEK ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(ccDg)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccDg)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(ccDg)+"*"
                ENDIF
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(ccDg)+"*"
                     STORE f2990ano TO caNo
                     STORE f2990mes TO cmEs
                     STORE f2990dia TO cdIa
                     STORE f2990tpo TO ctPo
                     STORE f2990tpp TO ctPp
                     STORE f2990tdo TO ctDo
                     STORE f2990ser TO csEr
                     STORE f2990doc TO cdOc
                     SEEK ALLTRIM(ccDg)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+ ;
                          csEr+cdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccDg)+"*"+caNo+cmEs+ ;
                             cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2990tpo="1" .AND. f2990tpp="0"
                               STORE f2990can TO vsLd
                               STORE f2990caj TO vsLc
                          CASE f2990tpo="1"
                               STORE vsLd+f2990can TO vsLd
                               STORE vsLc+f2990caj TO vsLc
                          CASE f2990tpo="2"
                               STORE vsLd-f2990can TO vsLd
                               STORE vsLc-f2990caj TO vsLc
                     ENDCASE
                     REPLACE f2990sld WITH vsLd
                     REPLACE f2990slc WITH vsLc
                     UNLOCK
                     SKIP
                ENDDO
                DO grA_stock IN PAI2700A WITH ccDg
           ENDIF
      ENDIF
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOWAIT "Grabando: "+ftM1cod
      STORE ftM1cod TO vcOd
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuv TO vcUv
      STORE ftM1nuv TO vnUv
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1med TO vmEd
      STORE ftM1can TO vcAn
      STORE ftM1caj TO vcAj
      STORE ftM1pie TO vpIe
      STORE ftM1la1 TO vlA1
      STORE ftM1an1 TO vaN1
      STORE ftM1la2 TO vlA2
      STORE ftM1an2 TO vaN2
      STORE ftM1esp TO veSp
      STORE ftM1tpo TO vtPo
      STORE ftM1md1 TO vmD1
      STORE ftM1md3 TO vmD3
      STORE vrEc+1 TO vrEc
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 0 TO pcO1, pcO2
      ELSE
           STORE f2111vcs TO pcO1
           STORE f2111vcp TO pcO2
      ENDIF
      SELECT deT_remi
      DO orD_0000a WITH "2601", "A", "F2601COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2601", "A", "F2601DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF EOF()
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF  .NOT. EOF()
                DO WHILE .T.
                     STORE vrEc+1 TO vrEc
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                     IF EOF()
                          EXIT
                     ENDIF
                     IF vrEc=100
                          STORE "Límite de Ítems ha sobrepasado 99..." TO mmSj
                          DO poNmsj
                          = INKEY(0)
                          STORE k_Esc TO mkEy
                          RETURN
                     ENDIF
                ENDDO
           ENDIF
           DO nuEvo_rg
           REPLACE f2601tdo WITH vtDo
           REPLACE f2601ser WITH vsEr
           REPLACE f2601doc WITH vdOc
           REPLACE f2601ite WITH vrEc
           REPLACE f2601cod WITH vcOd
           REPLACE f2601des WITH vdEs
           REPLACE f2601dcr WITH vdCr
           REPLACE f2601cuv WITH vcUv
           REPLACE f2601nuv WITH vnUv
           REPLACE f2601cuc WITH vcUc
           REPLACE f2601nuc WITH vnUc
           REPLACE f2601med WITH vmEd
           REPLACE f2601can WITH vcAn
           REPLACE f2601caj WITH vcAj
           REPLACE f2601pie WITH vpIe
           REPLACE f2601la1 WITH vlA1
           REPLACE f2601an1 WITH vaN1
           REPLACE f2601la2 WITH vlA2
           REPLACE f2601an2 WITH vaN2
           REPLACE f2601esp WITH veSp
           REPLACE f2601tpo WITH vtPo
           REPLACE f2601co1 WITH pcO1
           REPLACE f2601co2 WITH pcO2
           REPLACE f2601lar WITH 0
           REPLACE f2601la3 WITH 0
           REPLACE f2601la4 WITH 0
           REPLACE f2601la5 WITH 0
           REPLACE f2601la6 WITH 0
           REPLACE f2601la7 WITH 0
           REPLACE f2601la8 WITH 0
           REPLACE f2601la9 WITH 0
           REPLACE f2601anc WITH 0
           REPLACE f2601anc WITH 0
           REPLACE f2601an3 WITH 0
           REPLACE f2601an4 WITH 0
           REPLACE f2601an5 WITH 0
           REPLACE f2601an6 WITH 0
           REPLACE f2601an7 WITH 0
           REPLACE f2601an8 WITH 0
           REPLACE f2601an9 WITH 0
           REPLACE f2601alt WITH 0
           REPLACE f2601al1 WITH 0
           REPLACE f2601al2 WITH 0
           REPLACE f2601al3 WITH 0
           REPLACE f2601al4 WITH 0
           REPLACE f2601al5 WITH 0
           REPLACE f2601al6 WITH 0
           REPLACE f2601al7 WITH 0
           REPLACE f2601al8 WITH 0
           REPLACE f2601al9 WITH 0
           REPLACE f2601pes WITH 0
           UNLOCK
           IF vcSs=1
                SELECT kaRdex
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH vaNo
                REPLACE f2990mes WITH vmEs
                REPLACE f2990dia WITH vdIa
                REPLACE f2990tpp WITH vtP1
                REPLACE f2990tpo WITH vtI1
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH vcAn
                IF mcAj=1
                     REPLACE f2990caj WITH vcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH vtDo
                REPLACE f2990ser WITH vsEr
                REPLACE f2990doc WITH vdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH vfEm
                REPLACE f2990fem WITH vfEm
                REPLACE f2990tit WITH vcLi
                REPLACE f2990cli WITH vcLi
                REPLACE f2990nom WITH vnOm
                IF vmTt=7 .AND. LEN(ALLTRIM(vcM1))<>0
                     REPLACE f2990nom WITH LOWER(ALLTRIM(SUBSTR(vnOm, 1,  ;
                             20)))+" / "+vcM1
                ENDIF
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH STRTRAN(STR(vmTt+1, 2, 0), " ", "0")
                UNLOCK
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                ELSE
                     STORE 0 TO vsLd, vsLc
                ENDIF
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     STORE f2990ano TO caNo
                     STORE f2990mes TO cmEs
                     STORE f2990dia TO cdIa
                     STORE f2990tpo TO ctPo
                     STORE f2990tpp TO ctPp
                     STORE f2990tdo TO ctDo
                     STORE f2990ser TO csEr
                     STORE f2990doc TO cdOc
                     SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+ ;
                          csEr+cdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+ ;
                             cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2990tpo="1" .AND. f2990tpp="0"
                               STORE f2990can TO vsLd
                               STORE f2990caj TO vsLc
                          CASE f2990tpo="1"
                               STORE vsLd+f2990can TO vsLd
                               STORE vsLc+f2990caj TO vsLc
                          CASE f2990tpo="2"
                               STORE vsLd-f2990can TO vsLd
                               STORE vsLc-f2990caj TO vsLc
                     ENDCASE
                     REPLACE f2990sld WITH vsLd
                     REPLACE f2990slc WITH vsLc
                     UNLOCK
                     SKIP
                ENDDO
                DO grA_stock IN PAI2700A WITH vcOd
           ENDIF
           SELECT tmP_conj
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2921cdg TO ccDg
                STORE f2921can TO ccAn
                STORE f2921for TO vfOr
                STORE f2921dsp TO vdSp
                STORE f2921dst TO vdSt
                STORE f2921ttt TO vtTt
                SELECT coN_remi
                DO nuEvo_rg
                REPLACE f2604tdo WITH vtDo
                REPLACE f2604ser WITH vsEr
                REPLACE f2604doc WITH vdOc
                REPLACE f2604cod WITH vcOd
                REPLACE f2604cdg WITH ccDg
                REPLACE f2604cun WITH ccAn
                REPLACE f2604can WITH ccAn*vcAn
                REPLACE f2604for WITH vfOr
                REPLACE f2604dsp WITH vdSp
                REPLACE f2604dst WITH vdSt
                REPLACE f2604ttt WITH vtTt
                UNLOCK
                IF vcSs=1
                     SELECT kaRdex
                     DO nuEvo_rg
                     REPLACE f2990cod WITH ccDg
                     REPLACE f2990ano WITH vaNo
                     REPLACE f2990mes WITH vmEs
                     REPLACE f2990dia WITH vdIa
                     REPLACE f2990tpp WITH vtP1
                     REPLACE f2990tpo WITH vtI1
                     REPLACE f2990tra WITH "1"
                     REPLACE f2990can WITH ccAn*vcAn
                     REPLACE f2990caj WITH 0
                     REPLACE f2990sld WITH 0
                     REPLACE f2990slc WITH 0
                     REPLACE f2990sls WITH 0
                     REPLACE f2990scs WITH 0
                     REPLACE f2990cos WITH 0
                     REPLACE f2990dct WITH 0
                     REPLACE f2990gas WITH 0
                     REPLACE f2990prm WITH 0
                     REPLACE f2990tdo WITH vtDo
                     REPLACE f2990ser WITH vsEr
                     REPLACE f2990doc WITH vdOc
                     REPLACE f2990sr1 WITH SPACE(03)
                     REPLACE f2990rem WITH SPACE(07)
                     REPLACE f2990td1 WITH SPACE(02)
                     REPLACE f2990srf WITH SPACE(03)
                     REPLACE f2990fac WITH SPACE(20)
                     REPLACE f2990ped WITH SPACE(07)
                     REPLACE f2990sor WITH SPACE(03)
                     REPLACE f2990ord WITH SPACE(07)
                     REPLACE f2990emi WITH vfEm
                     REPLACE f2990fem WITH vfEm
                     REPLACE f2990tit WITH vcLi
                     REPLACE f2990cli WITH vcLi
                     REPLACE f2990nom WITH vnOm
                     IF vmTt=7 .AND. LEN(ALLTRIM(vcM1))<>0
                          REPLACE f2990nom WITH LOWER(ALLTRIM(SUBSTR(vnOm,  ;
                                  1, 20)))+" / "+vcM1
                     ENDIF
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990mon WITH 1
                     REPLACE f2990tne WITH 0
                     REPLACE f2990tig WITH 0
                     REPLACE f2990tfa WITH 0
                     REPLACE f2990ten WITH "CJ"
                     UNLOCK
                     SKIP -1
                     IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                         ALLTRIM(ccDg)+"*"
                          STORE f2990sld TO vsLd
                          STORE f2990slc TO vsLc
                     ELSE
                          STORE 0 TO vsLd, vsLc
                     ENDIF
                     SEEK ALLTRIM(ccDg)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+ ;
                          vsEr+vdOc
                     DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                        ALLTRIM(ccDg)+"*"
                          STORE f2990ano TO caNo
                          STORE f2990mes TO cmEs
                          STORE f2990dia TO cdIa
                          STORE f2990tpo TO ctPo
                          STORE f2990tpp TO ctPp
                          STORE f2990tdo TO ctDo
                          STORE f2990ser TO csEr
                          STORE f2990doc TO cdOc
                          SEEK ALLTRIM(ccDg)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ ;
                               ctDo+csEr+cdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ALLTRIM(ccDg)+"*"+caNo+ ;
                                  cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          DO CASE
                               CASE f2990tpo="1" .AND. f2990tpp="0"
                                    STORE f2990can TO vsLd
                                    STORE f2990caj TO vsLc
                               CASE f2990tpo="1"
                                    STORE vsLd+f2990can TO vsLd
                                    STORE vsLc+f2990caj TO vsLc
                               CASE f2990tpo="2"
                                    STORE vsLd-f2990can TO vsLd
                                    STORE vsLc-f2990caj TO vsLc
                          ENDCASE
                          REPLACE f2990sld WITH vsLd
                          REPLACE f2990slc WITH vsLc
                          UNLOCK
                          SKIP
                     ENDDO
                     DO grA_stock IN PAI2700A WITH ccDg
                ENDIF
                SELECT tmP_conj
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_4
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE ftM4rec TO vrCc
                STORE ftM4opc TO voPc
                STORE ftM4un1 TO vuN1
                STORE ftM4un2 TO vuN2
                STORE ftM4mla TO vmLa
                STORE ftM4man TO vmAn
                STORE ftM4p11 TO vp11
                STORE ftM4p12 TO vp12
                STORE ftM4p21 TO vp21
                STORE ftM4p22 TO vp22
                STORE ftM4can TO vcTd
                STORE ftM4ca1 TO vcA1
                STORE ftM4ca2 TO vcA2
                STORE ftM4ca3 TO vcA3
                STORE ftM4ca4 TO vcA4
                STORE ftM4por TO vpOr
                STORE ftM4mm1 TO vmM1
                STORE ftM4mm2 TO vmM2
                STORE ftM4mm3 TO vmM3
                STORE ftM4mm4 TO vmM4
                STORE ftM4cx1 TO vcX1
                STORE ftM4cx2 TO vcX2
                STORE ftM4cx3 TO vcX3
                STORE ftM4cx4 TO vcX4
                STORE ftM4cy1 TO vcY1
                STORE ftM4cy2 TO vcY2
                STORE ftM4cy3 TO vcY3
                STORE ftM4cy4 TO vcY4
                STORE ftM4pie TO vtPi
                STORE ftM4cm1 TO vcMm
                STORE ftM4cm2 TO vcMp
                SELECT itE_remi
                DO nuEvo_rg
                REPLACE f2602tdo WITH vtDo
                REPLACE f2602ser WITH vsEr
                REPLACE f2602doc WITH vdOc
                REPLACE f2602cod WITH vcOd
                REPLACE f2602rcc WITH vrCc
                REPLACE f2602opc WITH voPc
                REPLACE f2602un1 WITH vuN1
                REPLACE f2602un2 WITH vuN2
                REPLACE f2602mla WITH vmLa
                REPLACE f2602man WITH vmAn
                REPLACE f2602p11 WITH vp11
                REPLACE f2602p12 WITH vp12
                REPLACE f2602p21 WITH vp21
                REPLACE f2602p22 WITH vp22
                REPLACE f2602ctd WITH vcTd
                REPLACE f2602ca1 WITH vcA1
                REPLACE f2602ca2 WITH vcA2
                REPLACE f2602ca3 WITH vcA3
                REPLACE f2602ca4 WITH vcA4
                REPLACE f2602por WITH vpOr
                REPLACE f2602mm1 WITH vmM1
                REPLACE f2602mm2 WITH vmM2
                REPLACE f2602mm3 WITH vmM3
                REPLACE f2602mm4 WITH vmM4
                REPLACE f2602cx1 WITH vcX1
                REPLACE f2602cx2 WITH vcX2
                REPLACE f2602cx3 WITH vcX3
                REPLACE f2602cx4 WITH vcX4
                REPLACE f2602cy1 WITH vcY1
                REPLACE f2602cy2 WITH vcY2
                REPLACE f2602cy3 WITH vcY3
                REPLACE f2602cy4 WITH vcY4
                REPLACE f2602pie WITH vtPi
                REPLACE f2602cm1 WITH vcMm
                REPLACE f2602cm2 WITH vcMp
                UNLOCK
                SELECT teMporal_4
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_6
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM6cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE ftM6ped TO vpD1
           STORE ftM6sec TO vsEc
           STORE ftM6pla TO vpLa
           STORE ftM6mot TO vmOt
           SELECT seR_remi
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2603tdo WITH vtDo
                REPLACE f2603ser WITH vsEr
                REPLACE f2603doc WITH vdOc
                REPLACE f2603cod WITH vcOd
                REPLACE f2603ped WITH vpD1
                REPLACE f2603sec WITH vsEc
                REPLACE f2603pla WITH vpLa
                REPLACE f2603plo WITH vpLa
                REPLACE f2603mot WITH vmOt
                UNLOCK
                IF vcSs=1
                     SELECT kaRdex_series
                     DO nuEvo_rg
                     REPLACE f2991cod WITH vcOd
                     REPLACE f2991ped WITH vpD1
                     REPLACE f2991sec WITH vsEc
                     REPLACE f2991ano WITH vaNo
                     REPLACE f2991mes WITH vmEs
                     REPLACE f2991dia WITH vdIa
                     REPLACE f2991tpp WITH vtP1
                     REPLACE f2991tpo WITH vtI1
                     REPLACE f2991tdo WITH vtDo
                     REPLACE f2991ser WITH vsEr
                     REPLACE f2991doc WITH vdOc
                     REPLACE f2991pla WITH vpLa
                     REPLACE f2991mot WITH vmOt
                     REPLACE f2991est WITH veSt
                     UNLOCK
                     DO grA_serie IN PAI2700A
                ENDIF
           ENDIF
           SELECT teMporal_6
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_conj
 ZAP
 REINDEX
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE msEr(04) TO vsEr
 STORE DATE() TO vfEm
 STORE SPACE(08) TO vdNi
 STORE SPACE(50) TO vnTr
 STORE SPACE(90) TO vcM2
 STORE SPACE(07) TO vtEl, cdOc
 STORE SPACE(11) TO vrUc, vtRu
 STORE SPACE(20) TO vlC1, vlC2
 STORE SPACE(04) TO vcLi, vtRa, vaLm
 STORE SPACE(02) TO vsUc, vcR1, vcR2, vcC1, vcC2
 STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp, vpPd, vpPp
 STORE SPACE(25) TO vtDs, vtDp, vcIm, vmR1, vmR2, vpLc, vpL2
 STORE SPACE(70) TO vnOm, vdIr, vcM1, vlUg, vpPa, vnAl, vtNo, vtDi, vcHo, vcH2
 STORE 99 TO mkEy
 STORE 00 TO frEc, urEc, crEc, cfIl
 STORE 01 TO irEc, vrEc, viOm, vsW3, vmTt, vcSs
 DO p02_2600a WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE pnUm, pcOs
ENDPROC
*
PROCEDURE Hl1_2600a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En este programa, sólo se pueden modificar Guías de Remisión que no"
 @ pfIl+1, 02 SAY  ;
   "sean por Ventas, ni por Ingreso por Compras, no por Ingreso x Recojo"
 @ pfIl+2, 02 SAY "de Bienes Transformados, que sólo estén digitadas."
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
 IF viTe<3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      @ pfIl, 21 SAY "Consultar Salidas de Almacén"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=11 .OR. viTe=13 .OR. viTe=15  ;
    .OR. viTe=17
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe=3
                @ pfIl, 21 SAY "Consultar Clientes en orden alfabético"
           CASE viTe=4
                @ pfIl, 21 SAY "Consultar Puntos de Partida/Almacenes"
           CASE viTe=8
                @ pfIl, 21 SAY "Consultar Transportistas"
           CASE viTe=11 .OR. viTe=13
                @ pfIl, 21 SAY "Consultar Choferes"
           CASE viTe=15 .OR. viTe=17
                @ pfIl, 21 SAY "Consultar Carros"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=3 .OR. viTe=4 .OR. viTe=8
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F3" STYLE "BT"
      DO CASE
           CASE viTe=3
                @ pfIl, 21 SAY "Buscar palabra o frase en nombre de Cliente"
           CASE viTe=4
                @ pfIl, 21 SAY "Consultar Puntos de Partida/Almacenes"
           CASE viTe=8
                @ pfIl, 21 SAY "Buscar palabra o frase en Transportistas"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "F5" STYLE "BT"
 @ pfIl+1, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 21 SAY "Consultar Direcciones"
 @ pfIl+1, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+2 TO pfIl
 IF viTe<>1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+0, 21 SAY "Ir al campo izquierdo"
      @ pfIl+1, 21 SAY "Ir al primer campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl, 21 SAY "Ir al Último campo"
 STORE pfIl+1 TO pfIl
 IF viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=11 .OR. viTe=13 .OR. viTe=15  ;
    .OR. viTe=17
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE viTe=3
                @ pfIl, 21 SAY "Des-seleccionar Cliente"
           CASE viTe=4
                @ pfIl, 21 SAY "Des-seleccionar Puntos de Partida/Almacen"
           CASE viTe=8
                @ pfIl, 21 SAY "Des-seleccionar Transportista"
           CASE viTe=11 .OR. viTe=13
                @ pfIl, 21 SAY "Des-seleccionar Chofer/Ayudante"
           CASE viTe=15 .OR. viTe=17
                @ pfIl, 21 SAY "Des-seleccionar Carro"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo inferior"
 STORE pfIl+1 TO pfIl
 IF viTe<>3 .AND. viTe<>19
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 01 SAY "TAB" STYLE "BT"
 @ pfIl+2, 01 SAY "ALT C" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+1, 21 SAY "Pasar al Detalle"
 @ pfIl+2, 21 SAY "Copiar Pedidos de Venta para convertirlos en Guías"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PAI2600A
 DO bvA_2700w IN PAI2700W
 RELEASE vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vfB1, vfB2, vfB3,  ;
         vfB4, vfB5
 RELEASE vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf,  ;
         vfBg, vfBh
 RELEASE vfBi, vfBj, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9,  ;
         vcB0, vcBa
 RELEASE vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi, vcBj, vcO0, vcL0,  ;
         vcL9, vsW2
 RELEASE vsW3, vmTt, vpEs, tpEs, vcSs, ccSs, vnTr, vcLi, vsUc, vnOm, cnOm,  ;
         inOm, unOm
 RELEASE xnOm, cnO1, vdIr, vdIs, vdEp, vrUc, vdNi, vtEl, vmDd, vmD1, xmD1,  ;
         vmD3, xmD3
 RELEASE vtRa, vtNo, vtRu, vtDi, vtDs, vtDp, vcIm, vcC1, vcC2, vmR1, vmR2,  ;
         vpLc, vpL2
 RELEASE vcHo, vcH2, vlC1, vlC2, vcR1, vcR2, vaLm, vnAl, vlUg, vlUd, vlUp,  ;
         vpPa, vpPd
 RELEASE vpPp, vcM1, vcM2, vdIa, idIa, udIa, xdIa, vmEs, imEs, umEs, xmEs,  ;
         vaNo, iaNo
 RELEASE uaNo, xaNo, itDo, utDo, xtDo, isEr, usEr, xsEr, csE1, idOc, udOc,  ;
         xdOc, cdO1
 RELEASE vtOt, vfOr, vtTt, vdSp, vdSt, tpLa, vcPr, ctP1, ccOd, vpDi, vpDs,  ;
         vpPr, vpDp
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
