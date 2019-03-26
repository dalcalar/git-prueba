 PARAMETER wnIv, wsTo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
 STORE 01 TO meRr
 STORE 02 TO wsW0
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 DO tmP_1200a IN PVI1200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_1200a IN PVI1200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm8_1200a IN PVI1200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 43 TO muLt
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_1200a IN PVI1200A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_1200w IN PVI1200W
 PUBLIC csEr, csE1, cdOc, cdO1, vfBi, vcBi
 STORE 1 TO vlEc
 STORE SPACE(03) TO csEr
 STORE SPACE(07) TO cdOc
 SELECT caB_ped
 GOTO BOTTOM
 STORE f1200tdo TO vtDo
 STORE f1200ser TO vsEr
 STORE f1200doc TO vdOc
 IF vsW0=1
      STORE 11 TO vuLt
 ELSE
      STORE 16 TO vuLt
 ENDIF
 SET READBORDER ON
 DO p00_1200a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_1200a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>3
                STORE 99 TO mkEy
           CASE (mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>3
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. vsW0=2
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<3
                = INKEY(0.01)
                SELECT caB_ped
                DO CASE
                     CASE mvNd=2 .OR. wnIv="3"
                          SET FILTER TO f1200est="1"
                     CASE mvNd=1
                          SET FILTER TO f1200est="1" .AND. f1200ven=vvEn
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     DO CASE
                          CASE mvNd=2 .OR. wnIv="3"
                               STORE "No hay Documentos registrados..." TO mmSj
                          CASE mvNd=1
                               STORE "No hay Documentos registrados del vendedor..."  ;
                                     TO mmSj
                     ENDCASE
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                STORE vsEr TO csE1
                STORE vdOc TO cdO1
                STORE vnOm TO cnOm
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO pvC1200w WITH "PVM1200A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_ped
                SET FILTER TO
                DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          STORE 02 TO viTe
                     OTHERWISE
                          STORE csE1 TO vsEr
                          STORE cdO1 TO vdOc
                          STORE cnOm TO vnOm
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .OR. mkEy=k_F3
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
                     STORE f1101cod TO vcLi, xcLi
                     STORE f1101nom TO vnOm
                     STORE f1101ruc TO vrUc
                     STORE f1101ele TO vdNi
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ELSE
                          STORE SPACE(50) TO vnTi
                          STORE 00 TO vdTc, vdMc
                     ENDIF
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
                          DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                     ELSE
                          STORE 00 TO vdCl
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vdIr, vlUg
                          STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                          DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO noM_1200w IN PVI1200W
                     DO ruC_1200w IN PVI1200W
                     DO drC_1200w IN PVI1200W
                     DO luG_1200w IN PVI1200W
                     DO dvE_1200w IN PVI1200W
                     DO dtI_1200w IN PVI1200W
                     DO dcT_1200w IN PVI1200W WITH 1
                     DO reF_1200a IN PVI1200A
                     IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa  ;
                        .AND. LEN(ALLTRIM(vcOn))<>0
                          STORE "Cliente "+vcOn TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          IF vcOn<>"HABIDO"
                               DO prE_docum WITH "RUC "+ALLTRIM(vcOn)+ ;
                                  CHR(13)+"¿Desea continuar?"
                               IF moPc$"Nn"
                                    STORE 03 TO viTe
                                    STORE 02 TO vsW0
                                    STORE 99 TO mkEy
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                = INKEY(0.01)
                STORE 00 TO vdTc, vdMc, vdCl, vmDd
                STORE 02 TO vcRe
                STORE mpPe TO vpPe
                STORE SPACE(07) TO vtEl
                STORE SPACE(11) TO vrUc
                STORE SPACE(15) TO vdNi
                STORE SPACE(50) TO vnTi
                STORE SPACE(02) TO vsUc, vtCl
                STORE SPACE(04) TO vcLi, vtIt
                STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                STORE SPACE(70) TO vnOm, vdIr, vlUg, vnTt
                DO noM_1200w IN PVI1200W
                DO luG_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                DO dcT_1200w IN PVI1200W WITH 1
                DO qrF_1200a IN PVI1200A
                STORE 3 TO viTe
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
                DO hl1_1200a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_1200a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                SELECT teMporal
                GOTO TOP
                IF  .NOT. BOF()
                     DO prE_docum WITH "¿Desea salir sin grabar?"
                     IF moPc$"Ss"
                          STORE 99 TO mkEy
                          EXIT
                     ENDIF
                ELSE
                     STORE 99 TO mkEy
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=vuLt
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=3 .OR. viTe=4  ;
                .OR. viTe=5 .OR. viTe=9 .OR. viTe=10)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. viTe=11
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=2 .AND. (viTe=14 .OR. viTe=15  ;
                .OR. viTe=16)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. viTe<3
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=1 .AND. viTe=7
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=2 .AND. viTe=12
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F4 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. vsW0=1 .AND. viTe>2
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. vsW0=2 .AND. viTe<>7
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F4
                DO tiT_1200a IN PVI1200A
           CASE mkEy=k_F5 .AND. vsW0=1
                DO diR_1200a IN PVI1200A WITH "2"
           CASE mkEy=k_F5 .AND. vsW0=2 .AND. viTe=8 .AND. LEN(ALLTRIM(vrUc))=0
                DO CASE
                     CASE vtDi="0"
                          STORE "1" TO vtDi
                     CASE vtDi="1" .OR. vtDi="6"
                          STORE "4" TO vtDi
                     CASE vtDi="4"
                          STORE "7" TO vtDi
                     CASE vtDi="7"
                          STORE "A" TO vtDi
                     CASE vtDi="A"
                          STORE "0" TO vtDi
                     OTHERWISE
                          STORE "1" TO vtDi
                ENDCASE
                DO p04_1200a IN PVI1200A
                STORE 99 TO mkEy
           CASE mkEy=k_F6
                STORE 1 TO viTe
                STORE 0 TO viT1
                STORE SPACE(02) TO vsUc
                STORE SPACE(04) TO vcLi
                IF vsW0=1
                     STORE 00 TO vmDd
                     STORE 02 TO vsW0
                     STORE 16 TO vuLt
                ELSE
                     STORE 00 TO vmDd
                     STORE 01 TO vsW0
                     STORE 11 TO vuLt
                     IF ALLTRIM(vnOm)="."
                          STORE SPACE(70) TO vnOm
                     ENDIF
                ENDIF
                DO bf6_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO drC_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                STORE 99 TO mkEy
           CASE mkEy=k_F7
                DO fpA_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. viTe=3 .AND. msUn$"AB" .AND. mfDe<>CTOD( ;
                " ") .AND. DATE()<=mfHa
                DO leN_0000a IN FAC0000A WITH "4"
                DO leN_0000a IN FAC0000A WITH "5"
                DO leN_0000a IN FAC0000A WITH "C"
                DO leN_0000a IN FAC0000A WITH "D"
                DO noM_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
           CASE mkEy=k_F8 .AND. vsW0=2 .AND. (viTe=7 .OR. viTe=8) .AND.  ;
                msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                DO CASE
                     CASE vsWa=1
                          STORE 2 TO vsWa
                     CASE vsWa=2
                          STORE 1 TO vsWa
                ENDCASE
                DO p04_1200a IN PVI1200A
                DO p05_1200a IN PVI1200A
           CASE mkEy=k_F9 .AND. (mvNd=1 .OR. wnIv="3")
                DO veN_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                DO veR_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1200a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vsW0=1 .AND. viTe=7 .AND. mpIg=2
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                          CASE vsW0=2 .AND. viTe=12 .AND. mpIg=2
                               STORE 14 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                DO veR_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1200a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vsW0=1 .AND. (viTe=3 .OR. viTe=4)
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                          CASE vsW0=2 .AND. (viTe=3 .OR. viTe=4 .OR. viTe= ;
                               8 .OR. viTe=9)
                               STORE 12 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                     CASE vsW0=1 .AND. (viTe=7 .OR. viTe=8)
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. viTe=12
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. viTe=13
                          STORE 8 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1200a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                          CASE vsW0=1 .AND. (viTe=5 .OR. viTe=6 .OR. viTe=7)
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                          CASE vsW0=2 .AND. (viTe=5 .OR. viTe=6 .OR. viTe=7)
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                          CASE vsW0=2 .AND. (viTe=10 .OR. viTe=11 .OR. viTe=12)
                               STORE 14 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1200a
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
                     CASE viTe=3
                          STORE 1 TO viTe
                     CASE vsW0=1 .AND. viTe=6
                          STORE 4 TO viTe
                     CASE vsW0=1 .AND. viTe=9
                          STORE 5 TO viTe
                     CASE vsW0=2 .AND. (viTe=6 .OR. viTe=7 .OR. viTe=8)
                          STORE 4 TO viTe
                     CASE vsW0=2 .AND. viTe=9
                          STORE 5 TO viTe
                     CASE vsW0=2 .AND. viTe=11
                          STORE 9 TO viTe
                     CASE vsW0=2 .AND. viTe=14
                          STORE 10 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE vuLt TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_1200a
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
                     DO veR_1200a
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
                     DO deT_1200a
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
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+35 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                         Font "&mLetRom",9 Style "BT"
                CASE viTe=2
                     @mMF2,mMC2+34 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                        Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=3
                     @mMF2,mMC2+40 Say "ESCOGER CLIENTE REGISTRADO..."                                                 Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=4 .OR. viTe=9 .OR. viTe=10)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=5 .OR. viTe=6)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=7
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=8
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=11
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=3
                     @mMF2,mMC2+14 Say "DIGITAR NOMBRE DE CLIENTE, CAMPO DE 70 CARACTERES ALFANUMÉRICOS..."            Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=4
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=5 .OR. viTe=6 .OR. viTe=10 .OR.  ;
                     viTe=11)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=7
                     @mMF2,mMC2+35 Say "DIGITAR RUC DE CLIENTE SI ES QUE LO TIENE..."                                  Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=8
                     @mMF2,mMC2+25 Say "DIGITAR D.I./D.N.I. DEL CLIENTE EN CASO DE SER BOLETA DE VENTA..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=9 .OR. viTe=14 .OR. viTe=15)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=12
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=13
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=16
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=3 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vsW0=1
                STORE 3 TO vsW0
                DO noM_1200w IN PVI1200W
                mkEy = INKEY(0, "HM")
                STORE 1 TO vsW0
                DO noM_1200w IN PVI1200W
           OTHERWISE
                DO CASE
                     CASE viTe=1
                          @mFI0-01.8,mCO0+13.5 Get  vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999" Color ,&mColBlN
                     CASE viTe=2
                          @mFI0-01.8,mCO0+20.2 Get  vDOC Font "&mLetAri",11 Style "NQ" Size 1,8 Pict "9999999" Color ,&mColBlN
                     CASE viTe=3
                          @mFI0+01.0,mCO0+13.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=4
                          @mFI0+02.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=5
                          @mFI0+04.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=6
                          @mFI0+04.0,vCL1      Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=7
                          @mFI0+4,vCL2         Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "99999999999" Color ,&mColBlN
                     CASE vsW0=2 .AND. viTe=8
                          @mFI0+4,vCL3+0.7     Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,11.7,15                 Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=4) .OR. (vsW0=2 .AND. viTe=9)
                          @mFI0+05.5,mCO0+13.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,vTM3,70
                     CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)
                          @mFI0+07.0,mCO0+13.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=11)
                          @mFI0+07.0,vCL1      Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=12)
                          @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=8) .OR. (vsW0=2 .AND. viTe=13)
                          @mFI0+04.2,vCL5      Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=14)
                          @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
                     CASE (vsW0=1 .AND. viTe=10) .OR. (vsW0=2 .AND. viTe=15)
                          @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
                     CASE (vsW0=1 .AND. viTe=11) .OR. (vsW0=2 .AND. viTe=16)
                          @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99" Color ,&mColBlN
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_1200a
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
           SELECT caB_ped
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Este Pedido no se encuentra registrada..." TO mmSj
                CASE f1200est="9"
                     STORE "Este Pedido se encuentra anulada..." TO mmSj
                CASE f1200est$"23"
                     STORE "Este Pedido se encuentra Aprobado...No se puede modificar..."  ;
                           TO mmSj
                CASE f1200est="4"
                     STORE "Este Pedido se encuentra parcialmente Generado...No se puede modificar..."  ;
                           TO mmSj
                CASE f1200est="5"
                     STORE "Este Pedido se encuentra Generado...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
                     DO q1_0000a
                     DO muC_1200a IN PVI1200A
                     DO muD_1200a IN PVI1200A
                     DO reF_1200a IN PVI1200A
                     DO p1_0000a
                     STORE 02 TO viTe
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                     ENDIF
                     IF vsW0=1
                          STORE 11 TO vuLt
                     ELSE
                          STORE 16 TO vuLt
                     ENDIF
                     STORE 1 TO vrEc, irEc
           ENDCASE
      CASE mpIg=1 .AND. ((vsW0=1 .AND. viTe=8) .OR. (vsW0=2 .AND. viTe=13))
           DO caL_1200w IN PVI1200W
           DO CASE
                CASE vsW0=1
                     STORE 11 TO vuLt
                     STORE 8 TO viTe
                OTHERWISE
                     STORE 16 TO vuLt
                     STORE 13 TO viTe
           ENDCASE
      CASE wnIv="2" .AND. ((vsW0=1 .AND. viTe=11) .OR. (vsW0=2 .AND. viTe= ;
           16)) .AND. vpGd<>0
           STORE "Este Nivel no tiene acceso a Descuento General..." TO mmSj
      CASE ((vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=12)) .AND. AT( ;
           " ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=12)
           SELECT caMbio
           SEEK vfEm
           IF EOF()
                STORE "Fecha no tiene Tipo de Cambio registrado..." TO mmSj
                STORE 0 TO vtCa
           ELSE
                STORE f9111tc3 TO vtCa
           ENDIF
           DO tcA_1200w IN PVI1200W
      CASE viTe=3 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=1 .AND. viTe=3 .AND. LEN(ALLTRIM(vcLi))=0
           STORE "Cliente debe estar registrado en el Maestro de Clientes..."  ;
                 TO mmSj
      CASE vsW0=1 .AND. viTe=3
           DO reF_1200a IN PVI1200A
      CASE vsW0=2 .AND. viTe=7 .AND. LEN(ALLTRIM(vrUc))<>0 .AND.  ;
           LEN(ALLTRIM(vrUc))<11
           STORE "RUC no puede ser menor de 11 dígitos..." TO mmSj
      CASE vsW0=2 .AND. viTe=8 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=2 .AND. viTe=7 .AND. LEN(ALLTRIM(vrUc))<>0
           STORE "" TO vcOn
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND. vsWa=1
                DO vaL_ruc IN FAC0000A WITH vrUc
                IF mkEy=99
                     RETURN
                ENDIF
           ENDIF
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND. vsWa=1
                DO veR_ruc IN FAC0000A WITH "1", vrUc
                IF mkEy=1733
                     STORE "RUC no se encuentra en la BASE DE SUNAT" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF mkEy=1999
                     STORE 2 TO vsWa
                     DO p04_1200a IN PVI1200A
                     DO p05_1200a IN PVI1200A
                     RETURN
                ENDIF
           ENDIF
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           IF msUn="A" .AND. LEN(ALLTRIM(vcOn))<>0
                STORE "Cliente "+vcOn TO mmSj
                DO poNmsj
                STORE k_Enter TO mkEy
                IF vcOn<>"HABIDO"
                     DO prE_docum WITH "RUC "+ALLTRIM(vcOn)+CHR(13)+ ;
                        "¿Desea continuar?"
                     IF moPc$"Nn"
                          STORE 99 TO mkEy
                     ENDIF
                ENDIF
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
                     STORE f1101cod TO vcLi
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE 9 TO vuLt
                     STORE 1 TO vsW0
                     STORE 3 TO viTe
                     STORE 0 TO vdTc, vdMc
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ENDIF
                     SELECT suCursal
                     GOTO TOP
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
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
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
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vlUg
                          STORE SPACE(25) TO vlUd, vlUp
                     ENDIF
                     DO boT_1200w IN PVI1200W WITH "1"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO reF_1200a IN PVI1200A
                     STORE vcLi TO xcLi
                CASE EOF() .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
                     DATE()<=mfHa .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_ped
                     DO orD_0000a WITH "1200", "V", "F1200RUC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vrUc)+"*"
                     DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     IF  .NOT. EOF()
                          STORE 2 TO vcRe
                          STORE "N" TO moPc
                          STORE " " TO vsUc, vtCl, vcLi, vnTi, vnTt
                          STORE 0 TO vmDd, vdTc, vdMc, ulIs, ulI1, ulI2
                          DO prE_docum WITH  ;
                             "RUC anteriormente registrado en Documentos de Ventas..."+ ;
                             CHR(13)+CHR(13)+ ;
                             "¿Desea volver a llamar estos datos?"
                          IF moPc$"Ss"
                               IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
                                  DATE()<=mfHa
                               ELSE
                                    STORE f1200nom TO vnOm
                                    STORE f1200dir TO vdIr
                                    STORE f1200dis TO vdIs
                                    STORE f1200dep TO vdEp
                               ENDIF
                               STORE f1200tel TO vtEl
                               STORE f1200lug TO vlUg
                               STORE f1200lud TO vlUd
                               STORE f1200lup TO vlUp
                               STORE f1200ven TO vvEn
                               STORE f1200nve TO vnVe
                               STORE f1200com TO vcOm
                               STORE f1200tit TO vtIt
                               SELECT clIentes
                               SEEK vtIt
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnTt
                                    STORE f1101med TO vmDd
                                    STORE f1101tip TO vtCl
                                    STORE f1101lis TO ulIs
                                    STORE f1101li2 TO ulI2
                                    STORE f1101li3 TO ulI3
                                    STORE f1101cre TO vcRe
                                    IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                                         STORE f1101ven TO vvEn
                                         SELECT veNdedor
                                         SEEK vvEn
                                         IF EOF()
                                              STORE SPACE(50) TO vnVe
                                              STORE 0 TO vcOm
                                         ELSE
                                              STORE f9113nom TO vnVe
                                              STORE f9113com TO vcOm
                                         ENDIF
                                    ENDIF
                                    SELECT tiPo_cli
                                    SEEK vtCl
                                    IF  .NOT. EOF()
                                         STORE f9110nti TO vnTi
                                         STORE f9110dct TO vdTc
                                         STORE f9110max TO vdMc
                                    ENDIF
                               ENDIF
                               DO reF_1200a IN PVI1200A
                          ENDIF
                     ENDIF
           ENDCASE
           DO noM_1200w IN PVI1200W
           DO ruC_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           DO luG_1200w IN PVI1200W
           DO dvE_1200w IN PVI1200W
           DO dtI_1200w IN PVI1200W
           DO dcT_1200w IN PVI1200W WITH 2
      CASE vsW0=2 .AND. viTe=8 .AND. LEN(ALLTRIM(vdNi))<>0 .AND. vtDi$"16"
           IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr .AND. vsWa=1
                DO veR_dni IN FAC0000A WITH "1", vdNi
                IF mkEy=1733
                     STORE "DNI no se encuentra en la BASE de RENIEC" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ENDIF
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
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
                     STORE f1101cod TO vcLi
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE 9 TO vuLt
                     STORE 3 TO viTe
                     STORE 1 TO vsW0
                     STORE 0 TO vdTc, vdMc
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ENDIF
                     SELECT suCursal
                     GOTO TOP
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
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
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
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vlUg
                          STORE SPACE(25) TO vlUd, vlUp
                     ENDIF
                     DO boT_1200w IN PVI1200W WITH "1"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO reF_1200a IN PVI1200A
                     STORE vcLi TO xcLi
                CASE EOF() .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND.  ;
                     DATE()<=mfHr .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_ped
                     DO orD_0000a WITH "1200", "V", "F1200ELE", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vdNi)+"*"
                     DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     IF  .NOT. EOF()
                          STORE 2 TO vcRe
                          STORE "N" TO moPc
                          STORE " " TO vsUc, vtCl, vcLi, vnTi, vnTt
                          STORE 0 TO vmDd, vdTc, vdMc, ulIs, ulI1, ulI2
                          DO prE_docum WITH  ;
                             "DNI anteriormente registrado en Documentos de Ventas..."+ ;
                             CHR(13)+CHR(13)+ ;
                             "¿Desea volver a llamar estos datos?"
                          IF moPc$"Ss"
                               IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND.  ;
                                  DATE()<=mfHr
                               ELSE
                                    STORE f1200nom TO vnOm
                                    STORE f1200dir TO vdIr
                                    STORE f1200dis TO vdIs
                                    STORE f1200dep TO vdEp
                               ENDIF
                               STORE f1200tel TO vtEl
                               STORE f1200lug TO vlUg
                               STORE f1200lud TO vlUd
                               STORE f1200lup TO vlUp
                               STORE f1200ven TO vvEn
                               STORE f1200nve TO vnVe
                               STORE f1200com TO vcOm
                               STORE f1200tit TO vtIt
                               SELECT clIentes
                               SEEK vtIt
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnTt
                                    STORE f1101med TO vmDd
                                    STORE f1101tip TO vtCl
                                    STORE f1101lis TO ulIs
                                    STORE f1101li2 TO ulI2
                                    STORE f1101li3 TO ulI3
                                    STORE f1101cre TO vcRe
                                    IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                                         STORE f1101ven TO vvEn
                                         SELECT veNdedor
                                         SEEK vvEn
                                         IF EOF()
                                              STORE SPACE(50) TO vnVe
                                              STORE 0 TO vcOm
                                         ELSE
                                              STORE f9113nom TO vnVe
                                              STORE f9113com TO vcOm
                                         ENDIF
                                    ENDIF
                                    SELECT tiPo_cli
                                    SEEK vtCl
                                    IF  .NOT. EOF()
                                         STORE f9110nti TO vnTi
                                         STORE f9110dct TO vdTc
                                         STORE f9110max TO vdMc
                                    ENDIF
                               ENDIF
                               DO reF_1200a IN PVI1200A
                          ENDIF
                     ENDIF
           ENDCASE
           DO noM_1200w IN PVI1200W
           DO ruC_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           DO luG_1200w IN PVI1200W
           DO dvE_1200w IN PVI1200W
           DO dtI_1200w IN PVI1200W
           DO dcT_1200w IN PVI1200W WITH 2
      CASE vsW0=2 .AND. viTe=8 .AND. LEN(ALLTRIM(vrUc))=0 .AND.  ;
           LEN(ALLTRIM(vdNi))=0 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE P00_1200a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p02_1200a IN PVI1200A
 STORE mmF2+01.0 TO mmF2
 STORE mfI0-01.9 TO vfBi
 STORE mcO0+32.0 TO vcBi
 DO CASE
      CASE wnIv="1"
           DO tiT_0000a WITH "Modificación de Pedidos de Clientes c/Dctos"
      CASE wnIv="2"
           DO tiT_0000a WITH "Modificación de Pedidos de Clientes s/Dctos"
      CASE wnIv="3"
           DO tiT_0000a WITH "Modificación de Pedidos"
 ENDCASE
 DO p01_1200a IN PVI1200A WITH "1200"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ mfI0-2.2, mcO0-00.6 TO mfI0-0.2, mcO0+37.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-00.6 TO mfI0-2.2, mcO0+37.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-00.6 TO mfI0-0.2, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 @mFI0-1.8,mCO0+00.8 Say "Pedido:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.8,mCO0+13.5 Get vSER      Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Get vDOC      Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Det_1200a
 SET READBORDER OFF
 DO boT_1200w IN PVI1200W WITH "3"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 DO p2_0000a
 DO pvI1200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 DO p1_0000a
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO peR_1200w IN PVI1200W
 DO prEsiona WITH "1", "ROMBO", mmF1+0.6, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
 SET READBORDER ON
 IF vsW3=2
      STORE 1 TO vsW3
      DO p00_1200a WITH "1"
 ELSE
      DO boT_1200w IN PVI1200W WITH "1"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy<>k_Clic .AND. mkEy<>k_Esc
      STORE 01 TO viTe
      STORE 00 TO viT1
 ENDIF
 IF mkEy=k_Tab
      DO q1_0000a
      ON KEY LABEL ESC DO P_ESC
      DO grA_1200a
      WAIT CLEAR
      UNLOCK ALL
      FLUSH
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO p1_0000a
      STORE 99 TO mkEy
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_1200a
 PRIVATE pnUm, pcOd, pcAn
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_ped
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
 IF LEN(ALLTRIM(vrUc))<>0
      STORE "6" TO vtDi
 ELSE
      IF LEN(ALLTRIM(vdNi))=0
           STORE "0" TO vtDi
      ENDIF
 ENDIF
 DO vrF_1200a IN PVI1200A
 IF msTp=1
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcOd
                ENDIF
           ENDIF
           SELECT teMporal_cj
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2921cdg TO ccOd
                SELECT prOductos
                SEEK ALLTRIM(ccOd)+"*"
                IF  .NOT. EOF() .AND. f2111cst=1
                     SELECT tmP_prod
                     SEEK ALLTRIM(ccOd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2cod WITH ccOd
                     ENDIF
                ENDIF
                SELECT teMporal_cj
                SKIP
           ENDDO
           SELECT teMporal
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201cod TO vcOd
      STORE f1201ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF msTp=1
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcOd
                ENDIF
           ENDIF
      ENDIF
      SELECT deT_ped
      SKIP
 ENDDO
 SELECT itE_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc=vtDo+vsEr+vdOc
      STORE f1202cod TO vcOd
      STORE f1202rcc TO vrEc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT coN_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+vsEr+vdOc
      STORE f1204cod TO vcOd
      STORE f1204cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF msTp=1
           SELECT prOductos
           SEEK ALLTRIM(vcDg)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcDg)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcDg
                ENDIF
           ENDIF
      ENDIF
      SELECT coN_ped
      SKIP
 ENDDO
 IF msTp=1
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT tmP_prod
           SKIP
      ENDDO
 ENDIF
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ped
 REPLACE f1200tit WITH vtIt
 REPLACE f1200ntt WITH vnTt
 REPLACE f1200cli WITH vcLi
 REPLACE f1200suc WITH vsUc
 REPLACE f1200nom WITH vnOm
 REPLACE f1200dir WITH vdIr
 REPLACE f1200dis WITH vdIs
 REPLACE f1200dep WITH vdEp
 REPLACE f1200ruc WITH vrUc
 REPLACE f1200ele WITH vdNi
 REPLACE f1200tel WITH vtEl
 REPLACE f1200dtc WITH vdTc
 REPLACE f1200dcl WITH vdCl
 REPLACE f1200swg WITH vsWg
 REPLACE f1200pgd WITH vpGd
 REPLACE f1200fem WITH vfEm
 REPLACE f1200mon WITH vmOn
 REPLACE f1200fpa WITH vfPa
 REPLACE f1200nfp WITH vnFp
 REPLACE f1200dia WITH vdI1
 REPLACE f1200tfp WITH vtFp
 REPLACE f1200pig WITH vpIg
 REPLACE f1200cm1 WITH vcM1
 REPLACE f1200cm2 WITH vcM2
 REPLACE f1200lug WITH vlUg
 REPLACE f1200lud WITH vlUd
 REPLACE f1200lup WITH vlUp
 REPLACE f1200ven WITH vvEn
 REPLACE f1200nve WITH vnVe
 REPLACE f1200com WITH vcOm
 REPLACE f1200net WITH tnEt
 REPLACE f1200igv WITH tiGv
 REPLACE f1200tot WITH ttOt
 REPLACE f1200est WITH "1"
 REPLACE f1200usu WITH muSu
 REPLACE f1200dat WITH DATE()
 REPLACE f1200tim WITH TIME()
 UNLOCK
 DO WHILE .T.
      SELECT deT_ped
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f1201cod TO pcOd
      STORE f1201can TO pcAn
      STORE VAL(ALLTRIM(f1201ref)) TO pcAj
      REPLACE f1201tdo WITH SPACE(02)
      REPLACE f1201ser WITH SPACE(03)
      REPLACE f1201doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT itE_ped
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1202tdo WITH SPACE(02)
      REPLACE f1202ser WITH SPACE(03)
      REPLACE f1202doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 DO WHILE .T.
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f1204cdg TO pcOd
      STORE f1204can TO pcAn
      REPLACE f1204tdo WITH SPACE(02)
      REPLACE f1204ser WITH SPACE(03)
      REPLACE f1204doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 DO gr1_1200a IN PVI1200A
 DO coLbln
 STORE SPACE(07) TO cdOc
 @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO caL_1200w IN PVI1200W
 DO coL_fondo
 STORE SPACE(01) TO tdPp
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
 DO boT_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mdEs<3
      DO coLsc7
      DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
      @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
 ENDIF
 = INKEY(0.01)
 RELEASE pnUm, pcOd, pcAn
ENDPROC
*
PROCEDURE Clp_1200a
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
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mfI0 .AND. mfIl<=mfI0+2.578 .AND. mcCc>=mcO0-8.6 .AND.  ;
           mcCc<=mcO0-2 .AND. viTe>2
           STORE 3 TO viTe
           STORE k_F8 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>1 .AND.  ;
           mcCc>=vcL4-9.8 .AND. mcCc<=vcL4-3 .AND. viTe>2
           STORE 01 TO vmOn
           STORE msIg TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>2 .AND.  ;
           mcCc>=vcL4-3 .AND. mcCc<=vcL4+6.2 .AND. viTe>2
           STORE 02 TO vmOn
           STORE "US$" TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+13 .AND. mcCc<=mcO0+30.4 .AND. vsWg<>1
           STORE 01 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+30.4 .AND. mcCc<=mcO0+42.4 .AND. vsWg<>2
           STORE 02 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfBi-0.05 .AND. mfIl<=vfBi+1.521 .AND. mcCc>=vcBi-0.30  ;
           .AND. mcCc<=vcBi+3.900
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9 .AND. viTe>2
           STORE 03 TO viTe
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB2-0.2 .AND. mcCc<=vcB2+3.8 .AND. vsW0=1
           STORE 03 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB3-0.2 .AND. mcCc<=vcB3+3.8 .AND. vsW0=1
           STORE 03 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB4-0.2 .AND. mcCc<=vcB4+3.8
           STORE 03 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB5-0.2 .AND. mcCc<=vcB5+3.8 .AND. vsW0=1
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB6-0.028 .AND. mfIl<=vfB6+1.185 .AND. mcCc>=vcB6-0.2  ;
           .AND. mcCc<=vcB6+3.8 .AND. viTe>2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB7-0.028 .AND. mfIl<=vfB7+1.185 .AND. mcCc>=vcB7-0.2  ;
           .AND. mcCc<=vcB7+3.8 .AND. viTe>2
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB8-0.028 .AND. mfIl<=vfB8+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB8-0.2 .AND. mcCc<=vcB8+3.8
           STORE k_F4 TO mkEy
      CASE mfIl>=vfB9-0.028 .AND. mfIl<=vfB9+1.185 .AND. viTe>2 .AND.  ;
           mcCc>=vcB9-0.2 .AND. mcCc<=vcB9+3.8 .AND. vsW0=2 .AND.  ;
           LEN(ALLTRIM(vtIt))<>0
           STORE 99 TO mkEy
           STORE 00 TO vmDd
           STORE SPACE(04) TO vtIt
           STORE SPACE(70) TO vnTt
           DO dtI_1200w IN PVI1200W
      CASE mfIl>=mfI0-1.814 .AND. mfIl<=mfI0-0.457 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+13 .AND. mcCc<=mcO0+18.8
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.814 .AND. mfIl<=mfI0-0.457 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+32
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. viTe<>3 .AND. mcCc>= ;
           mcO0+1 .AND. mcCc<=mcO0+vtM1+13.6
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+2.4 .AND. mfIl<=mfI0+3.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM1+13.6 .AND. vsW0=2 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM2+13.6 .AND. vsW0=2 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. vsW0=2 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL2-6.1  ;
           .AND. mcCc<=vcL2+15.7 .AND. vsW0=2 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL3-5.3  ;
           .AND. mcCc<=vcL3+12.3 .AND. vsW0=2 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM3+13.6 .AND. ((vsW0=1 .AND. viTe<>4) .OR. (vsW0= ;
           2 .AND. viTe<>9))
           DO CASE
                CASE vsW0=1
                     STORE 4 TO ciTx
                CASE vsW0=2
                     STORE 9 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+vtM2+13.6 .AND. ((vsW0=1 .AND. viTe<>5) .OR.  ;
           (vsW0=2 .AND. viTe<>10))
           DO CASE
                CASE vsW0=1
                     STORE 5 TO ciTx
                CASE vsW0=2
                     STORE 10 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. ((vsW0=1 .AND. viTe<>6) .OR. (vsW0= ;
           2 .AND. viTe<>11))
           DO CASE
                CASE vsW0=1
                     STORE 6 TO ciTx
                CASE vsW0=2
                     STORE 11 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. mcCc>=vcL4-11.2  ;
           .AND. mcCc<=vcL4+12.6 .AND. ((vsW0=1 .AND. viTe<>7) .OR. (vsW0= ;
           2 .AND. viTe<>12))
           DO CASE
                CASE vsW0=1
                     STORE 7 TO ciTx
                CASE vsW0=2
                     STORE 12 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.328 .AND. mpIg=1 .AND.  ;
           mcCc>=vcL5-8.5 .AND. mcCc<=vcL5+8.1 .AND. ((vsW0=1 .AND. viTe<> ;
           8) .OR. (vsW0=2 .AND. viTe<>13))
           DO CASE
                CASE vsW0=1
                     STORE 8 TO ciTx
                CASE vsW0=2
                     STORE 13 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+9.4 .AND. mfIl<=mfI0+10.614 .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+110.8 .AND. ((vsW0=1 .AND. viTe<>9) .OR.  ;
           (vsW0=2 .AND. viTe<>14))
           DO CASE
                CASE vsW0=1
                     STORE 9 TO ciTx
                CASE vsW0=2
                     STORE 14 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+10.9 .AND. mfIl<=mfI0+12.042 .AND. mcCc>=mcO0+19.2  ;
           .AND. mcCc<=mcO0+110.6 .AND. ((vsW0=1 .AND. viTe<>10) .OR.  ;
           (vsW0=2 .AND. viTe<>15))
           DO CASE
                CASE vsW0=1
                     STORE 10 TO ciTx
                CASE vsW0=2
                     STORE 15 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.614 .AND. mcCc>=mcO0+43  ;
           .AND. mcCc<=mcO0+53.2 .AND. ((vsW0=1 .AND. viTe<>11) .OR.  ;
           (vsW0=2 .AND. viTe<>16))
           DO CASE
                CASE vsW0=1
                     STORE 11 TO ciTx
                CASE vsW0=2
                     STORE 16 TO ciTx
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_1200a
           IF mkEy=k_Esc
                RETURN
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
PROCEDURE Hl1_1200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En este programa, sólo se puede modificar Pedidos existentes con estado"
 @ pfIl+1, 01 SAY  ;
   "digitado. Funciona igual que Pedidos nuevos solo que con algunas funcio-"
 @ pfIl+2, 01 SAY "nes restringidas."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
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
      @ pfIl, 21 SAY "Consultar Pedidos (dig)"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=3 .AND. vsW0=1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+0, 21 SAY "Consulta de Clientes registrados"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F4" STYLE "BT"
      @ pfIl, 21 SAY "Consultar Titulares"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW0=1 .AND. viTe>2
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F5" STYLE "BT"
      @ pfIl, 21 SAY "Seleccionar Sucursal de Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F6" STYLE "BT"
      @ pfIl+1, 01 SAY "F7" STYLE "BT"
      @ pfIl+0, 21 SAY "Cambiar Opción de Clientes existentes a nuevos y vic."
      @ pfIl+1, 21 SAY "Elegir Forma de Pago"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF viTe=3 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F8" STYLE "BT"
      @ pfIl, 21 SAY "Cambiar Nombre de Cliente a Tipo Oracion"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F9" STYLE "BT"
      @ pfIl, 21 SAY "Elegir Vendedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=3 .AND. vsW0=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 21 SAY "Des-Seleccionar Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+1 TO pfIl
 IF viTe<>1
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
 IF viTe>2
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
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PVM1200A
 DO deL_1200w IN PVI1200W
 RELEASE csEr, csE1, cdOc, cdO1, vfBi, vcBi
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
 STORE 999 TO mkEy
 DO deL_file2 WITH "1A", "S"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "S"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 DO deL_file2 WITH "8", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
ENDPROC
*
