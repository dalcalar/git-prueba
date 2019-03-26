 SET CENTURY ON
 PUBLIC wsW0, ntM7
 STORE "0006" TO ntM7
 STORE 01 TO wsW0
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
 afIl[x, 3] = 80
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
      DO deL_file1
      RETURN
 ENDIF
 DO abR_2600a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 47
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vfB1, vfB2, vfB3,  ;
        vfB4, vfB5
 PUBLIC vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf,  ;
        vfBg, vfBh
 PUBLIC vfBi, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0,  ;
        vcBa, vcBb
 PUBLIC vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi, vcO0, vcL0, vcL9, vsW2,  ;
        vsW3, vmTt
 PUBLIC vpEs, tpEs, vcSs, vnTr, vcLi, vsUc, vnOm, cnOm, inOm, unOm, xnOm,  ;
        vdIr, vdIs
 PUBLIC vdEp, vrUc, vdNi, vtEl, vmDd, vmD1, xmD1, vmD3, xmD3, vtRa, vtNo,  ;
        vtRu, vtDi
 PUBLIC vtDs, vtDp, vcIm, vcC1, vcC2, vmR1, vmR2, vpLc, vpL2, vcHo, vcH2,  ;
        vlC1, vlC2
 PUBLIC vcR1, vcR2, vaLm, vnAl, vlUg, vlUd, vlUp, vpPa, vpPd, vpPp, vcM1,  ;
        vcM2, vdIa
 PUBLIC idIa, udIa, xdIa, vmEs, imEs, umEs, xmEs, vaNo, iaNo, uaNo, xaNo,  ;
        itDo, utDo
 PUBLIC xtDo, isEr, usEr, xsEr, idOc, udOc, xdOc, vtOt, vfOr, vtTt, vdSp,  ;
        vdSt, tpLa
 PUBLIC vcPr, ccOd, vpDi, vpDs, vpPr, vpDp
 STORE 01 TO vmTt, vsW3, vcSs
 STORE 02 TO vtPp
 STORE 00 TO vpEs, tpEs
 STORE "GR" TO vtDo
 STORE msEr(04) TO vsEr
 STORE SPACE(08) TO vdNi
 STORE SPACE(50) TO vnTr
 STORE SPACE(90) TO vcM2
 STORE SPACE(07) TO vtEl, vdOc
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
           ELSE
                STORE msEr(04) TO vsEr
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
           DO cl1_2600w IN PAI2600W
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1 .AND. viTe<>2 .AND. viTe<>6 .AND.  ;
                viTe<>9 .AND. viTe<>11 .AND. viTe<>13 .AND. viTe<>15
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe<>1 .AND. viTe<>2 .AND. viTe<>6
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe<>1 .AND. viTe<>2 .AND. viTe<>6  ;
                .AND. viTe<>9 .AND. viTe<>11 .AND. viTe<>13 .AND. viTe<>15
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=1 .AND. vmTt<>5  ;
                .AND. vmTt<>11
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
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=1 .AND. (vmTt=5  ;
                .OR. vmTt=11)
                = INKEY(0.01)
                SELECT prOveedores
                SET FILTER TO f2101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
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
                     DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnOm))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB9 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "2101", "A", "F2101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE f2101cod TO vcLi
                     STORE f2101nom TO vnOm
                     STORE f2101ruc TO vrUc
                     STORE SPACE(8) TO vdNi
                     STORE 1 TO vmDd
                     SELECT suC_proveedores
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f2102suc TO vsUc
                          STORE f2102dir TO vdIr
                          STORE f2102dis TO vdIs
                          STORE f2102ent TO vlUg
                          STORE f2102die TO vlUd
                          STORE SPACE(25) TO vdEp, vlUp
                          IF LEN(ALLTRIM(f2102tl1))<>0
                               STORE f2102tl1 TO vtEl
                          ELSE
                               IF LEN(ALLTRIM(f2102tl2))<>0
                                    STORE f2102tl2 TO vtEl
                               ELSE
                                    STORE f2102tl3 TO vtEl
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
           CASE mkEy=k_Ctrl_del .AND. viTe=1
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
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=2
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
                     IF LEN(ALLTRIM(f9214sr3))<>0
                          STORE f9214sr3 TO vsEr
                     ELSE
                          STORE msEr(04) TO vsEr
                     ENDIF
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
           CASE mkEy=k_Ctrl_del .AND. viTe=2
                STORE msEr(04) TO vsEr
                STORE SPACE(04) TO vaLm
                STORE SPACE(25) TO vpPd, vpPp
                STORE SPACE(70) TO vnAl, vpPa
                DO naL_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=6
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
           CASE mkEy=k_Ctrl_del .AND. viTe=6
                STORE SPACE(04) TO vtRa
                STORE SPACE(11) TO vtRu
                STORE SPACE(70) TO vtNo, vtDi
                STORE SPACE(25) TO vtDs, vtDp, vcIm
                DO trA_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=9
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
           CASE mkEy=k_Ctrl_del .AND. viTe=9
                STORE SPACE(02) TO vcC1
                STORE SPACE(20) TO vlC1
                STORE SPACE(70) TO vcHo
                DO ch1_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
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
           CASE mkEy=k_Ctrl_del .AND. viTe=11
                STORE SPACE(02) TO vcC2
                STORE SPACE(20) TO vlC2
                STORE SPACE(70) TO vcH2
                DO ch2_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=13
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
           CASE mkEy=k_Ctrl_del .AND. viTe=13
                STORE SPACE(02) TO vcR1
                STORE SPACE(10) TO vpLc
                STORE SPACE(20) TO vmR1
                DO mr1_2600w IN PAI2600W WITH "1"
                DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
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
           CASE mkEy=k_Ctrl_del .AND. viTe=15
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
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vmTt<>5 .AND.  ;
                vmTt<>11
                DO diR_2600w IN PAI2600W
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vcLi))<>0
                DO di2_2600w IN PAI2600W
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=20
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>5 .AND. viTe<>8 .AND. viTe<> ;
                10 .AND. viTe<>12 .AND. viTe<>14 .AND. viTe<>16 .AND.  ;
                viTe<>17 .AND. viTe<>18 .AND. viTe<>19 .AND. viTe<>20
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=1 .OR. viTe=17)
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Alt_c
                STORE viTe TO ciTe
                DO coP_2600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Enter
                DO veR_2600a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=20
                               DO deT_2600a
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
                          CASE viTe=20
                               DO deT_2600a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=01
                               STORE 17 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=02
                               STORE 18 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=14
                               STORE 19 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=16
                               STORE 20 TO ciTx
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
                          CASE viTe=20
                               DO deT_2600a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=4
                               STORE 6 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=7 .AND. viTe<=14
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=15 .OR. viTe=16
                               STORE 20 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2600a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO deT_2600a
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
                     CASE viTe=17 .OR. viTe=18
                          STORE 01 TO viTe
                     CASE viTe=19
                          STORE 14 TO viTe
                     CASE viTe=20
                          STORE 16 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=5 .OR. viTe=6 .OR. viTe=8 .OR. viTe=9 .OR.  ;
                          viTe=10
                          STORE viTe-2 TO viTe
                     CASE viTe=11 .OR. viTe=12 .OR. viTe=13 .OR. viTe=15  ;
                          .OR. viTe=16
                          STORE viTe-2 TO viTe
                     CASE viTe=14
                          STORE 11 TO viTe
                     CASE viTe=19
                          STORE 12 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 20 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2600a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 20 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2600a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO deT_2600a
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
                     @mMF2,mMC2+40 Say "ESCOGER CLIENTE REGISTRADO..."                                                              Font "&mLetRom",9 Style "BT"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "ESCOGER PUNTO DE PARTIDA O ALMACEN..."                                                      Font "&mLetRom",9 Style "BT"
                CASE viTe=3
                     @mMF2,mMC2+12 Say "DIGITAR EL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA LA DIRECCIÓN..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=4
                     @mMF2,mMC2+04 Say "DIGITAR EL DISTRITO DEL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA EL DE LA DIRECCIÓN..." Font "&mLetRom",9 Style "BT"
                CASE viTe=5
                     @mMF2,mMC2+08 Say "DIGITAR EL DPTO.DEL PUNTO DE LLEGADA SI SE DEJA VACÍO SE ASUMIRA EL DE LA DIRECCIÓN..."     Font "&mLetRom",9 Style "BT"
                CASE viTe=6
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR TRANSPORTISTA..."                                                         Font "&mLetRom",9 Style "BT"
                CASE viTe=7
                     @mMF2,mMC2+30 Say "CAMPO DE 11 DIGITOS, SE DIGITA CON EL TRANSPORTISTA..."                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=8
                     @mMF2,mMC2+15 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=9
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR EL CHOFER..."                                                             Font "&mLetRom",9 Style "BT"
                CASE viTe=10
                     @mMF2,mMC2+41 Say "DIGITAR LA LICENCIA..."                                                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=11
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR EL CHOFER..."                                                             Font "&mLetRom",9 Style "BT"
                CASE viTe=12
                     @mMF2,mMC2+41 Say "DIGITAR LA LICENCIA..."                                                                     Font "&mLetRom",9 Style "BT"
                CASE viTe=13
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR MARCA DE CARRO..."                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=14
                     @mMF2,mMC2+44 Say "DIGITAR LA PLACA..."                                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=15
                     @mMF2,mMC2+40 Say "ESCOGER O DIGITAR MARCA DE CARRO..."                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=16
                     @mMF2,mMC2+44 Say "DIGITAR LA PLACA..."                                                                        Font "&mLetRom",9 Style "BT"
                CASE viTe=17
                     @mMF2,mMC2+30 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                                                Font "&mLetRom",9 Style "BT"
                CASE viTe=18
                     @mMF2,mMC2+22 Say "CAMPO DE 6 ENTEROS Y 4 DECIMALES, SI NO SE USA PUEDE SER 0.0000..."                         Font "&mLetRom",9 Style "BT"
                CASE viTe=19
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=20
                     @mMF2,mMC2+12 Say "CAMPO DE 90 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                    Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE LEN(ALLTRIM(vcLi))<>0 .AND. viTe=1
                DO noM_2600w IN PAI2600W WITH "2"
                mkEy = INKEY(0, "HM")
                DO noM_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vaLm))<>0 .AND. viTe=2
                DO naL_2600w IN PAI2600W WITH "2"
                mkEy = INKEY(0, "HM")
                DO naL_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vtRa))<>0 .AND. (viTe=6 .OR. viTe=7 .OR. viTe=8)
                DO CASE
                     CASE viTe=6
                          DO trA_2600w IN PAI2600W WITH "2"
                     CASE viTe=7
                          DO trA_2600w IN PAI2600W WITH "3"
                     CASE viTe=8
                          DO trA_2600w IN PAI2600W WITH "4"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO trA_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcC1))<>0 .AND. (viTe=9 .OR. viTe=10)
                DO CASE
                     CASE viTe=9
                          DO ch1_2600w IN PAI2600W WITH "2"
                     CASE viTe=10
                          DO ch1_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO ch1_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcC2))<>0 .AND. (viTe=11 .OR. viTe=12)
                DO CASE
                     CASE viTe=11
                          DO ch2_2600w IN PAI2600W WITH "2"
                     CASE viTe=12
                          DO ch2_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO ch2_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcR1))<>0 .AND. (viTe=13 .OR. viTe=14)
                DO CASE
                     CASE viTe=13
                          DO mr1_2600w IN PAI2600W WITH "2"
                     CASE viTe=14
                          DO mr1_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO mr1_2600w IN PAI2600W WITH "1"
           CASE LEN(ALLTRIM(vcR2))<>0 .AND. (viTe=15 .OR. viTe=16)
                DO CASE
                     CASE viTe=15
                          DO mr2_2600w IN PAI2600W WITH "2"
                     CASE viTe=16
                          DO mr2_2600w IN PAI2600W WITH "3"
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO mr2_2600w IN PAI2600W WITH "1"
           CASE viTe=1
                @mFI0+0.4,mCO0+13.0 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,70,70
           CASE viTe=2
                @mFI0+5.3,mCO0+20.5 Edit vNAL Font "&mLetAri",9 Style "NQ" Size 1,62.2,70
           CASE viTe=3
                @mFI0+7.2,mCO0+22.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,72.1,70
           CASE viTe=4
                @mFI0+8.7,mCO0+22.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,25,25
           CASE viTe=5
                @mFI0+8.7,mCO0+52.0 Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,25,25
           CASE viTe=6
                @mFI0+10.5,mCO0+17.5 Edit vTNO Font "&mLetAri",9 Style "NQ" Size 1,65.2,70
           CASE viTe=7
                @mFI0+12.0,mCO0+17.5 Edit vTRU Font "&mLetAri",9 Style "NQ" Size 1,17,11
           CASE viTe=8
                @mFI0+12.0,mCO0+67.8 Edit vCIM Font "&mLetAri",9 Style "NQ" Size 1,27,25
           CASE viTe=9
                @mFI0+13.5,mCO0+12.5 Edit vCHO Font "&mLetAri",9 Style "NQ" Size 1,34,70
           CASE viTe=10
                @mFI0+13.5,mCO0+67.8 Edit vLC1 Font "&mLetAri",9 Style "NQ" Size 1,27,20
           CASE viTe=11
                @mFI0+15.0,mCO0+12.5 Edit vCH2 Font "&mLetAri",9 Style "NQ" Size 1,34,70
           CASE viTe=12
                @mFI0+15.0,mCO0+67.8 Edit vLC2 Font "&mLetAri",9 Style "NQ" Size 1,27,20
           CASE viTe=13
                @mFI0+16.8,mCO0+10.5 Edit vMR1 Font "&mLetAri",9 Style "NQ" Size 1,16,25
           CASE viTe=14
                @mFI0+16.8,mCO0+43.5 Edit vPLC Font "&mLetAri",9 Style "NQ" Size 1,14,25
           CASE viTe=15
                @mFI0+18.3,mCO0+10.5 Edit vMR2 Font "&mLetAri",9 Style "NQ" Size 1,16,25
           CASE viTe=16
                @mFI0+18.3,mCO0+43.5 Edit vPL2 Font "&mLetAri",9 Style "NQ" Size 1,14,25
           CASE viTe=17
                @mFI0+00.2,vCL9+13.8 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           CASE viTe=18
                DO coLbln
                @mFI0+02.2,vCL9+10.0 Say  tPES Font "&mLetAri",9 Style "NQ" Size 1,16   Pict "999999.9999"
                mkEy = INKEY(0)
                DO coL_beige
                @mFI0+02.2,vCL9+10.0 Say  tPES Font "&mLetAri",9 Style "NQ" Size 1,16   Pict "999999.9999"
           CASE viTe=19
                @mFI0+16.8,mCO0+67.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
           CASE viTe=20
                @mFI0+18.3,mCO0+67.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
      ENDCASE
      DO CASE
           CASE viTe=18
           CASE LEN(ALLTRIM(vcLi))<>0 .AND. viTe=1
           CASE LEN(ALLTRIM(vaLm))<>0 .AND. viTe=2
           CASE LEN(ALLTRIM(vtRa))<>0 .AND. (viTe=6 .OR. viTe=7 .OR. viTe=8)
           CASE LEN(ALLTRIM(vcC1))<>0 .AND. (viTe=9 .OR. viTe=10)
           CASE LEN(ALLTRIM(vcC2))<>0 .AND. (viTe=11 .OR. viTe=12)
           CASE LEN(ALLTRIM(vcR1))<>0 .AND. (viTe=13 .OR. viTe=14)
           CASE LEN(ALLTRIM(vcR2))<>0 .AND. (viTe=15 .OR. viTe=16)
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
      CASE viTe=1 .AND. AT(" ", vcLi)<>0 .AND. vmTt<>5 .AND. vmTt<>11
           STORE "Cliente debe de estar registrado..." TO mmSj
      CASE viTe=1 .AND. AT(" ", vcLi)<>0
           STORE "Proveedor debe de estar registrado..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0 .AND. vmTt<>5 .AND. vmTt<>11
           STORE "Nombre de Cliente debe de estar lleno..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Proveedor debe de estar lleno..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vrUc))=0 .AND. LEN(ALLTRIM(vdNi))=0  ;
           .AND. vmTt<>5 .AND. vmTt<>11
           STORE "RUC o DNI debe de estar lleno..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vrUc))=0 .AND. (vmTt=5 .OR. vmTt=11)
           STORE "RUC debe de estar lleno..." TO mmSj
      CASE viTe=2 .AND. AT(" ", vaLm)<>0
           STORE "Punto de Partida/Almacén debe de estar registrado..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vpPa))=0
           STORE "Dirección del Punto de Partida/Almacén no puede estar vacía..."  ;
                 TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vpPd))=0
           STORE "Distrito del Punto de Partida/Almacén no puede estar vacía..."  ;
                 TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vpPp))=0
           STORE "Departamento del Punto de Partida/Almacén no puede estar vacío..."  ;
                 TO mmSj
      CASE viTe=17 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_2600a
 DO boT_2600a IN PAI2600A WITH "3"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO paI2600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 SET READBORDER ON
 IF vsW3<>1
      STORE 1 TO vsW3
      IF wsW0=1
           DO p00_2600a IN PAI2600A WITH "1"
      ELSE
           DO p00_2600a IN PAM2600A WITH "1"
      ENDIF
      STORE irEc TO vrEc
      STORE ifIl TO vfIl
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO boT_2600a IN PAI2600A WITH "1"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Tab
      SELECT teMporal
      SET ORDER TO FTM1COD
      IF wsW0=1
           DO grA_2600a IN PAI2600A
      ELSE
           DO grA_2600a IN PAM2600A
      ENDIF
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal
      SET ORDER TO
      STORE 99 TO mkEy
 ENDIF
 DO p1_0000a
 STORE 1 TO viTe
 STORE 0 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Cop_2600a
 SELECT caB_ped
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Pedidos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f1200est<>"9" .AND. f1200est<>" "
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos registrados..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE vtDo TO ctDo
 STORE vsEr TO csEr
 STORE vnOm TO cnOm
 STORE f1200doc TO vdOc
 SAVE SCREEN TO vpAn_11
 DO pvC1200w WITH "PAI2600A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_ped
 SET FILTER TO
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO muE_2600a
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      STORE cnOm TO vnOm
 ENDIF
 STORE ctDo TO vtDo
 STORE csEr TO vsEr
ENDPROC
*
PROCEDURE Mue_2600a
 STORE f1200fem TO vfEm
 STORE f1200cli TO vcLi
 STORE f1200suc TO vsUc
 STORE f1200nom TO vnOm
 STORE f1200dir TO vdIr
 STORE f1200dis TO vdIs
 STORE f1200dep TO vdEp
 STORE f1200ruc TO vrUc
 STORE f1200ele TO vdNi
 STORE f1200tel TO vtEl
 STORE f1200cm1 TO vcM1
 STORE f1200cm2 TO vcM2
 STORE f1200lug TO vlUg
 STORE f1200lud TO vlUd
 STORE f1200lup TO vlUp
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 REINDEX
 SELECT teMporal_4
 ZAP
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_conj
 ZAP
 REINDEX
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE ifIl TO vfIl, ufIl
 STORE 00 TO irEc, vrEc, urEc, frEc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201cod TO vcOd
      STORE f1201des TO vdEs
      STORE f1201dcr TO vdCr
      STORE f1201cuv TO vcUv
      STORE f1201nuv TO vnUv
      STORE f1201cuc TO vcUc
      STORE f1201nuc TO vnUc
      STORE f1201med TO vmEd
      STORE f1201can TO vcAn
      STORE f1201pie TO vpIe
      STORE f1201md1 TO vmD1
      STORE f1201md3 TO vmD3
      STORE f1201la1 TO vlA1
      STORE f1201la2 TO vlA2
      STORE f1201an1 TO vaN1
      STORE f1201an2 TO vaN2
      STORE f1201esp TO veSp
      STORE VAL(f1201ref) TO vcAj
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vcSt, vsRr
           STORE 0 TO vsTo
           STORE SPACE(2) TO ctPo
      ELSE
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111sto TO vsTo
           STORE f2111tip TO ctPo
      ENDIF
      SELECT tiP_prod
      SEEK ctPo
      IF EOF()
           STORE 1 TO vtPo
           STORE " " TO veNt
      ELSE
           STORE f9211tpo TO vtPo
           STORE f9211ent TO veNt
      ENDIF
      STORE 1 TO viOm
      DO grA_2600b IN PAI2600B
      SELECT deT_ped
      SKIP
 ENDDO
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT itE_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc=vtDo+vsEr+vdOc
      STORE f1202cod TO vcOd
      STORE f1202rcc TO vrCc
      STORE f1202opc TO voPc
      STORE f1202un1 TO vuN1
      STORE f1202un2 TO vuN2
      STORE f1202mla TO vmLa
      STORE f1202man TO vmAn
      STORE f1202p11 TO vp11
      STORE f1202p12 TO vp12
      STORE f1202p21 TO vp21
      STORE f1202p22 TO vp22
      STORE f1202ctd TO vcTd
      STORE f1202ca1 TO vcA1
      STORE f1202ca2 TO vcA2
      STORE f1202ca3 TO vcA3
      STORE f1202ca4 TO vcA4
      STORE f1202por TO vpOr
      STORE f1202mm1 TO vmM1
      STORE f1202mm2 TO vmM2
      STORE f1202mm3 TO vmM3
      STORE f1202mm4 TO vmM4
      STORE f1202cx1 TO vcX1
      STORE f1202cx2 TO vcX2
      STORE f1202cx3 TO vcX3
      STORE f1202cx4 TO vcX4
      STORE f1202cy1 TO vcY1
      STORE f1202cy2 TO vcY2
      STORE f1202cy3 TO vcY3
      STORE f1202cy4 TO vcY4
      STORE f1202pie TO vtPi
      STORE f1202cm1 TO vcMm
      STORE f1202cm2 TO vcMp
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
      SELECT itE_ped
      SKIP
 ENDDO
 SELECT coN_ped
 DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+vsEr+vdOc
      STORE f1204cod TO vcOd
      STORE f1204cdg TO vcDg
      STORE f1204cun TO vcAn
      STORE f1204can TO vtOt
      STORE f1204for TO vfOr
      STORE f1204dsp TO vdSp
      STORE f1204dst TO vdSt
      STORE f1204ttt TO vtTt
      SELECT prOductos
      SEEK ALLTRIM(vcDg)+"*"
      IF EOF()
           STORE "Producto Borrado... " TO vdCr
           STORE SPACE(02) TO vcUv
           STORE SPACE(50) TO vnUv
      ELSE
           STORE f2111des TO vdCr
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
      ENDIF
      SELECT tmP_conj
      APPEND BLANK
      REPLACE f2921cod WITH vcOd
      REPLACE f2921cdg WITH vcDg
      REPLACE f2921dcr WITH vdCr
      REPLACE f2921cuv WITH vcUv
      REPLACE f2921nuv WITH vnUv
      REPLACE f2921can WITH vcAn
      REPLACE f2921tot WITH vtOt
      REPLACE f2921pre WITH 1
      REPLACE f2921for WITH vfOr
      REPLACE f2921dsp WITH vdSp
      REPLACE f2921dst WITH vdSt
      REPLACE f2921ttt WITH vtTt
      SELECT coN_ped
      SKIP
 ENDDO
 SELECT coN_ped
 DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p02_2600a WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
PROCEDURE Mot_2600a
 @mFI0+4.2,vCL9-17 Get vMTT Font "&mLetAri",9 Style "BQ" Default vMTT Size 0.9,35,.01 Color ,,,,,,,,1 Function "*RVT Salida x Traslado;Ingreso x Traslado;Devolución;Consumo;Ingreso x Compra;Venta sujeta a Confirmación;Transformación;Emis.Itinerante;Trasl.Zona Primaria;Consignación;Recojo de Bienes Transformados;Otros"
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P00_2600a
 PARAMETER ptPo
 DO p01_2600a WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tb0_2600w IN PAI2600W
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO tiT_0000a WITH "Guías de Remisión nuevas"
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO p02_2600a WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO p03_2600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P01_2600a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE irEc TO vrEc
 STORE 22.3 TO muFi
 STORE 126 TO muCo
 STORE (mwCo-muCo)/2 TO mmC2
 STORE muCo+64 TO muCo
 STORE muFi+21 TO muFi
 IF wsW0=2
      STORE muFi-4 TO muFi
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, vcL0, vcO0
 STORE mfI0+02.0 TO ifFs, ufFs, vfFs
 STORE ifFs+20.0 TO ffFs
 STORE mfI0+01.7 TO ifFr, ufFr, vfFr
 STORE ifFr+21.0 TO ffFr
 STORE mfI0+02.7 TO ifFt, ufFt, vfFt
 STORE ifFt+20.0 TO ffFt
 STORE mfI0+03.7 TO ifFu, ufFu, vfFu
 STORE ifFu+19.0 TO ffFu
 STORE mfI0+04.7 TO ifFv, ufFv, vfFv
 STORE ifFv+18.0 TO ffFv
 STORE mfI0+05.7 TO ifFw, ufFw, vfFw
 STORE ifFw+17.0 TO ffFw
 STORE mfI0+06.7 TO ifFx, ufFx, vfFx
 STORE ifFx+16.0 TO ffFx
 STORE mcO0+00.1 TO icLn
 STORE mcO0+189.1 TO ucLn
 STORE vcO0+46 TO vcO0
 STORE ffFs+17 TO ffFs
 STORE ffFr+19 TO ffFr
 DO p04_2600a
 IF wsW0=2
      STORE ffFs-2 TO ffFs
      STORE ffFr-2 TO ffFr
 ENDIF
 STORE ffIl+4 TO mmF2
 STORE mfI0+00.25 TO vfB1, vfB2, vfB3
 STORE mfI0+01.85 TO vfB4
 STORE mfI0+05.15 TO vfB5, vfB6, vfB7
 STORE mfI0+10.50 TO vfB8, vfB9, vfB0
 STORE mfI0+13.45 TO vfBa, vfBb
 STORE mfI0+14.95 TO vfBc, vfBd
 STORE mfI0+16.75 TO vfBe, vfBf
 STORE mfI0+18.25 TO vfBg, vfBh
 STORE mcO0+83.45 TO vcB1, vcB4, vcB5, vcB8
 STORE vcB1+4 TO vcB2, vcB6, vcB9
 STORE vcB2+4 TO vcB3, vcB7, vcB0
 STORE mcO0+46.9 TO vcBa, vcBc
 STORE vcBa+4 TO vcBb, vcBd
 STORE mcO0+27 TO vcBe, vcBg
 STORE vcBe+4 TO vcBf, vcBh
 STORE mfI0+01.00 TO vfBi
 STORE mcO0+108 TO vcBi
 STORE mcO0+161.6 TO vcL9
ENDPROC
*
PROCEDURE P02_2600a
 PARAMETER ptPo
 IF ptPo="1"
      DO coL_beige
      DO cuAdro WITH mfI0, mcO0, mfI0+19.7, mcO0+muCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      @ mfI0+0.00, mcO0+0.1 TO mfI0+04.90, mcO0+96.7 PATTERN 1
      @ mfI0+6.75, mcO0+0.1 TO mfI0+10.15, mcO0+96.7
      @ mfI0+4.85, mcO0+0.1 TO mfI0+16.40, mcO0+96.7
      @ mfI0-0.10, vcL9+0.0 TO mfI0+01.60, vcL9+27.3 PATTERN 1 COLOR SCHEME 3
      @ mfI0+1.90, vcL9+0.0 TO mfI0+03.60, vcL9+27.3 PATTERN 1 COLOR SCHEME 7
      @mFI0+1.90,mCO0+1.1 Say "Dirección"  Font "&mLetAri",9 Style "NT"
      @mFI0+3.40,mCO0+1.1 Say "Distr/Dpto" Font "&mLetAri",9 Style "NT"
      DO clI_2600w IN PAI2600W
      DO coLblr
      @mFI0+5.3,mCO0+1 Say "Punto de Partida" Font "&mLetAri",9 Style "BT"
      DO coLblz
      @mFI0+7.2,mCO0+1 Say "Punto de Llegada" Font "&mLetAri",9 Style "BT"
      @mFI0+8.7,mCO0+1 Say "Distrito/Departam" Font "&mLetAri",9 Style "NT"
      DO coLbln
      @mFI0+10.5,mCO0+01.0 Say "Transportista"    Font "&mLetAri",9 Style "BT"
      @mFI0+12.0,mCO0+10.1 Say "RUC"              Font "&mLetAri",9 Style "NT"
      @mFI0+12.0,mCO0+57.1 Say "CIMTC"            Font "&mLetAri",9 Style "NT"
      @mFI0+13.5,mCO0+01.0 Say "Chofer"           Font "&mLetAri",9 Style "BT"
      @mFI0+13.5,mCO0+57.1 Say "Licencia"         Font "&mLetAri",9 Style "NT"
      @mFI0+15.0,mCO0+01.0 Say "Ayudante"         Font "&mLetAri",9 Style "BT"
      @mFI0+15.0,mCO0+57.1 Say "Licencia"         Font "&mLetAri",9 Style "NT"
      @mFI0+16.8,mCO0+01.1 Say "Carro1"           Font "&mLetAri",9 Style "BT"
      @mFI0+16.8,mCO0+36.1 Say "Placa"            Font "&mLetAri",9 Style "NT"
      @mFI0+18.3,mCO0+01.1 Say "Carro2"           Font "&mLetAri",9 Style "BT"
      @mFI0+18.3,mCO0+36.1 Say "Placa"            Font "&mLetAri",9 Style "NT"
      @mFI0+16.8,mCO0+61.1 Say "OBS:"             Font "&mLetAri",9 Style "BT"
      @mFI0+00.2,vCL9+01.0 Say "Emisión"          Font "&mLetAri",9 Style "BT"
      @mFI0+02.2,vCL9+01.1 Say "Peso"             Font "&mLetAri",9 Style "BT"
 ENDIF
 IF LEN(ALLTRIM(vcLi))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 SET READBORDER ON
 @mFI0+0.4,mCO0+013.0 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,70,70
 @mFI0+1.9,mCO0+013.0 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,70,70
 @mFI0+3.4,mCO0+013.0 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,25,25
 @mFI0+3.4,mCO0+040.0 Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,25,25
 IF LEN(ALLTRIM(vdNi))=0 .OR. LEN(ALLTRIM(vrUc))<>0
      @mFI0+3.4,mCO0+78.5 Edit vRUC Font "&mLetAri",9 Style "NQ" Size 1,16,11
 ELSE
      @mFI0+3.4,mCO0+78.5 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,12,08
 ENDIF
 IF LEN(ALLTRIM(vaLm))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+5.3,mCO0+20.5 Edit vNAL Font "&mLetAri",9 Style "NQ" Size 1,62.2,70
 IF LEN(ALLTRIM(vtRa))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+10.5,mCO0+17.5 Edit vTNO Font "&mLetAri",9 Style "NQ" Size 1,65.2,70
 @mFI0+12.0,mCO0+17.5 Edit vTRU Font "&mLetAri",9 Style "NQ" Size 1,17,11
 @mFI0+12.0,mCO0+67.8 Edit vCIM Font "&mLetAri",9 Style "NQ" Size 1,27,25
 IF LEN(ALLTRIM(vcC1))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+13.5,mCO0+12.5 Edit vCHO Font "&mLetAri",9 Style "NQ" Size 1,34,70
 @mFI0+13.5,mCO0+67.8 Edit vLC1 Font "&mLetAri",9 Style "NQ" Size 1,27,20
 IF LEN(ALLTRIM(vcC2))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+15.0,mCO0+12.5 Edit vCH2 Font "&mLetAri",9 Style "NQ" Size 1,34,70
 @mFI0+15.0,mCO0+67.8 Edit vLC2 Font "&mLetAri",9 Style "NQ" Size 1,27,20
 IF LEN(ALLTRIM(vcR1))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+16.8,mCO0+10.5 Edit vMR1 Font "&mLetAri",9 Style "NQ" Size 1,16,25
 @mFI0+16.8,mCO0+43.5 Edit vPLC Font "&mLetAri",9 Style "NQ" Size 1,14,25
 IF LEN(ALLTRIM(vcR2))<>0
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 @mFI0+18.3,mCO0+10.5 Edit vMR2 Font "&mLetAri",9 Style "NQ" Size 1,16,25
 @mFI0+18.3,mCO0+43.5 Edit vPL2 Font "&mLetAri",9 Style "NQ" Size 1,14,25
 DO coLbln
 @mFI0+00.2,vCL9+13.8 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+02.2,vCL9+10.0 Get  tPES Font "&mLetAri",9 Style "NQ" Size 1,16   Color ,&mColBlN Pict "999,999.9999"
 @mFI0+07.2,mCO0+22.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,72.1,70
 IF ptPo="1"
      @ mfI0+3.9, vcL9-20 TO mfI0+16.40, vcL9+27.3 PATTERN 1 COLOR SCHEME 3
 ENDIF
 @mFI0+08.7,mCO0+22.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,25,25
 @mFI0+08.7,mCO0+52.0 Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,25,25
 @mFI0+16.8,mCO0+67.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
 @mFI0+18.3,mCO0+67.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,120.2,70
 READ TIMEOUT 0.01
 SET READBORDER OFF
 DO moT_2600a
 DO boT_2600a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ptPo="1"
      DO csS_2600w IN PAI2600W
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE P03_2600a
 PRIVATE pdEs, psTo
 STORE 0 TO psTo
 STORE SPACE(70) TO pdEs
 DO coL_fondo
 DO cuAdro WITH ifIl-1.3, mcO0, ffIl+2.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffIl+1.2, mcO0 TO ffIl+2.6, mcO0+muCo PATTERN 1
 DO coLsc3
 @ ifIl-1.3, mcO0 TO ifIl-0.2, mcO0+muCo PATTERN 1
 DO liN_2700a IN PAI2700A WITH ifIl-1.3, ffIl+1.15
 SET READBORDER ON
 @iFIL-1.3,mCO0+000.6 Say "Ítem"      Font "&mLetAri",8 Style "NT"
 @iFIL-1.3,mCO0+005.5 Say "Producto"  Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+119.5 Say "Unidad"    Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+136.5 Say "Stock"     Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+155.5 Say "Cantidad"  Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+174.9 Say "Cajas"     Font "&mLetAri",9 Style "NT"
 DO coL_fondo
 @fFIL+1.4,mCO0+000.3 Say "Producto:" Font "&mLetAri",9 Style "BQ"
 @fFIL+1.4,mCO0+012.4 Edit pDES       Font "&mLetAri",9 Style "NQ" Size 1,130,80
 READ TIMEOUT 0.01
 SET READBORDER OFF
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      IF irEc<=frEc
           GOTO irEc
           DO paN_2600b IN PAI2600B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           GOTO BOTTOM
           DO coL_fondo
           @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
           DO liN_2600a IN PAI2600A WITH ifIl, ffIl+1.1
           STORE ifIl TO cfIl, vfIl
           STORE RECNO()+1 TO vrEc, irEc
      ENDIF
 ENDIF
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE P04_2600a
 STORE mfI0+22.5 TO ifIl, ufIl, vfIl
 STORE ifIl+17 TO ffIl
 IF wsW0=2
      STORE ffIl-2 TO ffIl
 ENDIF
 IF vsW3=2
      STORE ifIl-20 TO ifIl
 ENDIF
ENDPROC
*
PROCEDURE Bot_2600a
 PARAMETER ptPo
 DO prEsiona WITH ptPo, "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfBe, vcBe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "CONSUL", vfBg, vcBg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "BUSCAR", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH ptPo, "BUSCAR", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE LEN(ALLTRIM(vcLi))=0 .OR. ptPo="3"
           DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
      OTHERWISE
           DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaLm))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfB7, vcB7
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB7, vcB7
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vtRa))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfB0, vcB0
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB0, vcB0
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcC1))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcC2))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfBd, vcBd
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBd, vcBd
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vmR1))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vmR2))=0 .OR. ptPo="3"
      DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE GrP_2600a
 DO coLsc3
 DO cuAdro WITH mfI0+4.2, mcO0+50, mfI0+11.5, mcO0+104
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+5.2,mCO0+52 Say "Guía de Remisión:"         Font "&mLetRom",12 Style "BT"
 @mFI0+8.2,mCO0+60 Say "Pulsar TAB para Grabar..." Font "&mLetRom",12 Style "BT"
ENDPROC
*
PROCEDURE Gra_2600a
 PRIVATE ptX1, ptX2, poPc, pnUm, pcO1, pcO2
 = INKEY(0.01)
 STORE "GR" TO vtDo
 STORE msEr(04) TO vsEr
 SELECT alMacen
 SEEK vaLm
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(f9214sr3))<>0
      STORE f9214sr3 TO vsEr
 ENDIF
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vdOc
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ptX2 = "DOCUMENTO No.:"+vsEr+"-"+vdOc
 IF vmTt=5 .OR. vmTt=11
      SELECT nuMeracion
      SEEK "CO"+msEr(03)
      IF EOF()
           DO nuEvo_rg
           REPLACE f9999tdo WITH "CO"
           REPLACE f9999ser WITH msEr(03)
           REPLACE f9999num WITH "0000000"
           UNLOCK
      ENDIF
      SEEK "CO"+msEr(03)
      IF  .NOT. RLOCK()
           DO reG_lock WITH "CO"+msEr(03)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9999num TO vcPr
      STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vcPr
 ENDIF
 IF mcOr="N"
      SAVE SCREEN TO vpAn_11
      DO prEsiona WITH "4", "R_CONS11", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 99 TO mkEy
      DO grP_2600a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO p1_0000a
      DO WHILE .T.
           DO reS_0000a
           IF mrEs<>mrSs
                DO p00_2600a WITH "1"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO grP_2600a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy=k_Clic
                DO clP_coo
                DO CASE
                     CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>= ;
                          mmC1+50.6 .AND. mcCc<=mmC1+59.40
                          STORE k_Tab TO mkEy
                     CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>= ;
                          mmC1+59.4 .AND. mcCc<=mmC1+68
                          STORE 99 TO mkEy
                          EXIT
                     CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>= ;
                          mmC1+68 .AND. mcCc<=mmC1+77
                          STORE k_F1 TO mkEy
                     CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>= ;
                          mmC1+77 .AND. mcCc<=mmC1+85.80
                          STORE k_Esc TO mkEy
                          EXIT
                     CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>= ;
                          mmC1+85.8 .AND. mcCc<=mmC1+95
                          STORE k_F10 TO mkEy
                     OTHERWISE
                          STORE 99 TO mkEy
                ENDCASE
           ENDIF
           DO CASE
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_F1
                     DO hl2_2600a
                CASE mkEy=k_Esc
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                     EXIT
                CASE mkEy=k_F12
                     DO p00_2600a WITH "1"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO grP_2600a
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE mkEy=k_Tab
                     SELECT caB_remi
                     SEEK vtDo+vsEr+vdOc
                     IF  .NOT. EOF()
                          STORE "Este Documento ya está Registrado"+ ;
                                CHR(13)+"Cambiar Numeración" TO mmSj
                          DO poNmsj
                     ELSE
                          EXIT
                     ENDIF
           ENDCASE
           STORE k_Enter TO mkEy
           DO coLbln
           @mFI0+5.2,mCO0+80 Get vSER Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @mFI0+5.2,mCO0+87 Get vDOC Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
           SET CONFIRM ON
           SET CURSOR ON
           READ
           SET CURSOR OFF
           SET CONFIRM OFF
      ENDDO
      DO q1_0000a
      IF mkEy=99
           RETURN
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 IF vmTt=5 .OR. vmTt=11
      SELECT caB_remi
      SEEK "CO"+msEr(03)+vcPr
      IF  .NOT. EOF()
           UNLOCK ALL
           ptX1 = "Documento de COMPRA:"+msEr(03)+"-"+vcPr+ ;
                  " ya está Registrado"+CHR(13)+"Cambiar Numeración"
           poPc = MESSAGEBOX(ptX1, 0048, ptX2)
           STORE SPACE(07) TO vdOc
           RETURN
      ENDIF
 ENDIF
 SELECT caB_remi
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Guía de Remisión:"+vsEr+"-"+vdOc+" ya está Registrado"+ ;
             CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      RETURN
 ENDIF
 DO grAbar WITH "1"
 DO CASE
      CASE vmTt=2 .OR. vmTt=5 .OR. vmTt=11
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
 IF vmTt=5 .OR. vmTt=11 .OR. vcSs=1
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
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF f9999ser=vsEr .AND. f9999num<vdOc
      REPLACE f9999num WITH vdOc
 ENDIF
 IF vmTt=5 .OR. vmTt=11
      SEEK "CO"+msEr(03)
      REPLACE f9999num WITH vcPr
 ENDIF
 IF vmTt=5 .OR. vmTt=11
      WAIT WINDOW NOWAIT "Grabando Cabecera de Compras..."
      SELECT caB_cpra
      DO nuEvo_rg
      REPLACE f2400tdo WITH "CO"
      REPLACE f2400ser WITH msEr(03)
      REPLACE f2400doc WITH vcPr
      REPLACE f2400sw0 WITH 1
      REPLACE f2400prv WITH vcLi
      REPLACE f2400nom WITH vnOm
      REPLACE f2400suc WITH vsUc
      REPLACE f2400dir WITH vdIr
      REPLACE f2400dis WITH vdIs
      REPLACE f2400ruc WITH vrUc
      REPLACE f2400mon WITH 1
      REPLACE f2400fem WITH vfEm
      REPLACE f2400fin WITH vfEm
      REPLACE f2400reg WITH vfEm
      REPLACE f2400sr2 WITH vsEr
      REPLACE f2400rem WITH vdOc
      REPLACE f2400tig WITH 1
      REPLACE f2400pig WITH miGv
      REPLACE f2400dia WITH 0
      REPLACE f2400tpo WITH 1
      REPLACE f2400val WITH 0
      REPLACE f2400dct WITH 0
      REPLACE f2400net WITH 0
      REPLACE f2400igv WITH 0
      REPLACE f2400tot WITH 0
      REPLACE f2400est WITH "1"
      REPLACE f2400usu WITH muSu
      REPLACE f2400maq WITH mmAq
      REPLACE f2400dat WITH DATE()
      REPLACE f2400tim WITH TIME()
      UNLOCK
 ENDIF
 WAIT WINDOW NOWAIT "Grabando Cabecera de Guías de Remisión..."
 SELECT caB_remi
 DO nuEvo_rg
 REPLACE f2600tdo WITH vtDo
 REPLACE f2600ser WITH vsEr
 REPLACE f2600doc WITH vdOc
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
 IF vmTt=5 .OR. vmTt=11
      REPLACE f2600cps WITH msEr(03)
      REPLACE f2600cpn WITH vcPr
 ENDIF
 UNLOCK
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
           IF vmTt=5 .OR. vmTt=11
                SELECT deT_cpra
                DO nuEvo_rg
                REPLACE f2401tdo WITH "CO"
                REPLACE f2401ser WITH msEr(03)
                REPLACE f2401doc WITH vcPr
                REPLACE f2401ite WITH vrEc
                REPLACE f2401cod WITH vcOd
                REPLACE f2401des WITH vdEs
                REPLACE f2401dcr WITH vdCr
                REPLACE f2401cuv WITH vcUv
                REPLACE f2401nuv WITH vnUv
                REPLACE f2401cuc WITH vcUc
                REPLACE f2401nuc WITH vnUc
                REPLACE f2401med WITH vmEd
                REPLACE f2401can WITH vcAn
                REPLACE f2401caj WITH vcAj
                REPLACE f2401pie WITH vpIe
                REPLACE f2401la1 WITH vlA1
                REPLACE f2401la2 WITH vlA2
                REPLACE f2401an1 WITH vaN1
                REPLACE f2401an2 WITH vaN2
                REPLACE f2401esp WITH veSp
                REPLACE f2401tpo WITH vtPo
                REPLACE f2401pre WITH 0
                UNLOCK
           ENDIF
           IF vmTt=5 .OR. vmTt=11 .OR. vcSs=1
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
                IF mcAj=1 .AND. vsRr=1
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
                REPLACE f2990ten WITH STRTRAN(STR(vmTt+1, 2, 0), " ", "0")
                DO CASE
                     CASE vmTt=5 .OR. vmTt=11
                          REPLACE f2990tdo WITH "CO"
                          REPLACE f2990ser WITH msEr(03)
                          REPLACE f2990doc WITH vcPr
                          REPLACE f2990sr1 WITH vsEr
                          REPLACE f2990rem WITH vdOc
                     OTHERWISE
                          REPLACE f2990tdo WITH vtDo
                          REPLACE f2990ser WITH vsEr
                          REPLACE f2990doc WITH vdOc
                          REPLACE f2990sr1 WITH SPACE(03)
                          REPLACE f2990rem WITH SPACE(07)
                ENDCASE
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
                UNLOCK
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                ELSE
                     STORE 0 TO vsLd, vsLc
                ENDIF
                IF vmTt=5 .OR. vmTt=11
                     SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+"CO"+ ;
                          msEr(03)+vcPr
                ELSE
                     SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+ ;
                          vsEr+vdOc
                ENDIF
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
                     STORE vcOd TO ccOd
                     STORE ccDg TO vcOd
                     DO grA_stock IN PAI2700A WITH vcOd
                     STORE ccOd TO vcOd
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
                IF vmTt=5 .OR. vmTt=11
                     SELECT itE_cpra
                     DO nuEvo_rg
                     REPLACE f2402tdo WITH "CO"
                     REPLACE f2402ser WITH msEr(03)
                     REPLACE f2402doc WITH vcPr
                     REPLACE f2402cod WITH vcOd
                     REPLACE f2402rcc WITH vrCc
                     REPLACE f2402opc WITH voPc
                     REPLACE f2402un1 WITH vuN1
                     REPLACE f2402un2 WITH vuN2
                     REPLACE f2402mla WITH vmLa
                     REPLACE f2402man WITH vmAn
                     REPLACE f2402p11 WITH vp11
                     REPLACE f2402p12 WITH vp12
                     REPLACE f2402p21 WITH vp21
                     REPLACE f2402p22 WITH vp22
                     REPLACE f2402ctd WITH vcTd
                     REPLACE f2402ca1 WITH vcA1
                     REPLACE f2402ca2 WITH vcA2
                     REPLACE f2402ca3 WITH vcA3
                     REPLACE f2402ca4 WITH vcA4
                     REPLACE f2402por WITH vpOr
                     REPLACE f2402mm1 WITH vmM1
                     REPLACE f2402mm2 WITH vmM2
                     REPLACE f2402mm3 WITH vmM3
                     REPLACE f2402mm4 WITH vmM4
                     REPLACE f2402cx1 WITH vcX1
                     REPLACE f2402cx2 WITH vcX2
                     REPLACE f2402cx3 WITH vcX3
                     REPLACE f2402cx4 WITH vcX4
                     REPLACE f2402cy1 WITH vcY1
                     REPLACE f2402cy2 WITH vcY2
                     REPLACE f2402cy3 WITH vcY3
                     REPLACE f2402cy4 WITH vcY4
                     REPLACE f2402pie WITH vtPi
                     REPLACE f2402cm1 WITH vcMm
                     REPLACE f2402cm2 WITH vcMp
                     UNLOCK
                ENDIF
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
                IF vmTt=5 .OR. vmTt=11
                     SELECT seR_cpra
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f2403tdo WITH vtDo
                          REPLACE f2403ser WITH vsEr
                          REPLACE f2403doc WITH vdOc
                          REPLACE f2403cod WITH vcOd
                          REPLACE f2403ped WITH vpD1
                          REPLACE f2403sec WITH vsEc
                          REPLACE f2403pla WITH vpLa
                          REPLACE f2403plo WITH vpLa
                          REPLACE f2403mot WITH vmOt
                          UNLOCK
                     ENDIF
                ENDIF
                IF vmTt=5 .OR. vmTt=11 .OR. vcSs=1
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
                     REPLACE f2991pla WITH vpLa
                     REPLACE f2991mot WITH vmOt
                     REPLACE f2991est WITH veSt
                     IF vmTt=5 .OR. vmTt=11
                          REPLACE f2991tdo WITH "CO"
                          REPLACE f2991ser WITH msEr(03)
                          REPLACE f2991doc WITH vcPr
                     ELSE
                          REPLACE f2991tdo WITH vtDo
                          REPLACE f2991ser WITH vsEr
                          REPLACE f2991doc WITH vdOc
                     ENDIF
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
 STORE SPACE(07) TO vtEl
 STORE SPACE(08) TO vdNi
 STORE SPACE(50) TO vnTr
 STORE SPACE(90) TO vcM2
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
 DO clI_2600w IN PAI2600W
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc, pnUm, pcO1, pcO2
ENDPROC
*
PROCEDURE Abr_2600a
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2603DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2604DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "2403", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2403DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Proveedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Suc_Proveedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "2921", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Conjuntos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 40
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 41
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 42
 DO abR_0000a IN PUX0000A WITH "1202", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ite_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 43
 DO abR_0000a IN PUX0000A WITH "9212", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Choferes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9212COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 44
 DO abR_0000a IN PUX0000A WITH "9215", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Transportista
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9215NOM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 45
 DO abR_0000a IN PUX0000A WITH "9219", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Carros
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9219COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 46
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Conj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2600a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En este programa, sólo se pueden crear Guías de Remisión que no sean"
 @ pfIl+1, 02 SAY "por Ventas, ya que estas se generan de las facturas."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 01 SAY "F10" STYLE "BT"
 @ pfIl+6, 01 SAY "ESC" STYLE "BT"
 @ pfIl+7, 01 SAY "F1" STYLE "BT"
 @ pfIl+5, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 21 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+6, 21 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+6, 21 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+8 TO pfIl
 IF viTe=1 .OR. viTe=2 .OR. viTe=6 .OR. viTe=9 .OR. viTe=11 .OR. viTe=13  ;
    .OR. viTe=15
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe=1 .AND. vmTt<>5 .AND. vmTt<>11
                @ pfIl, 21 SAY "Consultar Clientes en orden alfabético"
           CASE viTe=1
                @ pfIl, 21 SAY "Consultar Proveedores en orden alfabético"
           CASE viTe=2
                @ pfIl, 21 SAY "Consultar Puntos de Partida/Almacenes"
           CASE viTe=6
                @ pfIl, 21 SAY "Consultar Transportistas"
           CASE viTe=9 .OR. viTe=11
                @ pfIl, 21 SAY "Consultar Choferes"
           CASE viTe=13 .OR. viTe=15
                @ pfIl, 21 SAY "Consultar Carros"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1 .OR. viTe=2 .OR. viTe=6
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F3" STYLE "BT"
      DO CASE
           CASE viTe=1 .AND. vmTt<>5 .AND. vmTt<>11
                @ pfIl, 21 SAY "Buscar palabra o frase en nombre de Proveedor"
           CASE viTe=1
                @ pfIl, 21 SAY "Buscar palabra o frase en nombre de Cliente"
           CASE viTe=2
                @ pfIl, 21 SAY "Consultar Puntos de Partida/Almacenes"
           CASE viTe=6
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
 IF viTe=1 .OR. viTe=2 .OR. viTe=6 .OR. viTe=9 .OR. viTe=11 .OR. viTe=13  ;
    .OR. viTe=15
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE viTe=1 .AND. vmTt<>5 .AND. vmTt<>11
                @ pfIl, 21 SAY "Des-seleccionar Cliente"
           CASE viTe=1
                @ pfIl, 21 SAY "Des-seleccionar Proveedor"
           CASE viTe=2
                @ pfIl, 21 SAY "Des-seleccionar Puntos de Partida/Almacen"
           CASE viTe=6
                @ pfIl, 21 SAY "Des-seleccionar Transportista"
           CASE viTe=9 .OR. viTe=11
                @ pfIl, 21 SAY "Des-seleccionar Chofer/Ayudante"
           CASE viTe=13 .OR. viTe=15
                @ pfIl, 21 SAY "Des-seleccionar Carro"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo inferior"
 STORE pfIl+1 TO pfIl
 IF viTe<>1 .AND. viTe<>17
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
PROCEDURE Hl2_2600a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte del programa se tiene que escoger el número de la Guía de"
 @ pfIl+01, 02 SAY "Remisión."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "TAB" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Detalle"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "GRABAR"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 DO bvA_2700w IN PAI2700W
 RELEASE vtB1, vtB2, vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vfB1, vfB2, vfB3,  ;
         vfB4, vfB5
 RELEASE vfB6, vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf,  ;
         vfBg, vfBh
 RELEASE vfBi, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vcB0,  ;
         vcBa, vcBb
 RELEASE vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi, vcO0, vcL0, vcL9, vsW2,  ;
         vsW3, vmTt
 RELEASE vpEs, tpEs, vcSs, vnTr, vcLi, vsUc, vnOm, cnOm, inOm, unOm, xnOm,  ;
         vdIr, vdIs
 RELEASE vdEp, vrUc, vdNi, vtEl, vmDd, vmD1, xmD1, vmD3, xmD3, vtRa, vtNo,  ;
         vtRu, vtDi
 RELEASE vtDs, vtDp, vcIm, vcC1, vcC2, vmR1, vmR2, vpLc, vpL2, vcHo, vcH2,  ;
         vlC1, vlC2
 RELEASE vcR1, vcR2, vaLm, vnAl, vlUg, vlUd, vlUp, vpPa, vpPd, vpPp, vcM1,  ;
         vcM2, vdIa
 RELEASE idIa, udIa, xdIa, vmEs, imEs, umEs, xmEs, vaNo, iaNo, uaNo, xaNo,  ;
         itDo, utDo
 RELEASE xtDo, isEr, usEr, xsEr, idOc, udOc, xdOc, vtOt, vfOr, vtTt, vdSp,  ;
         vdSt, tpLa
 RELEASE vcPr, ccOd, vpDi, vpDs, vpPr, vpDp
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
 DO deL_file2 WITH "1", "S"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "N"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7
ENDPROC
*
