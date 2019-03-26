 PARAMETER wnIv, wsTo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
 STORE 01 TO meRr, wsW0
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 DO tmP_1200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_1200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm8_1200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_1200a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 44
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
 STORE 44 TO muLt
 STORE 00 TO meRr
 DO vaR_1200w IN PVI1200W
 STORE 1 TO vlEc
 IF mdEt=2
      STORE "." TO vnOm
      STORE 2 TO vsW0
      STORE k_Tab TO mkEy
      STORE 14 TO vuLt
 ELSE
      STORE 09 TO vuLt
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
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. vsW0=2 .AND. msUn$"AB" .AND. mfDe<>CTOD( ;
                " ") .AND. DATE()<=mfHa
                DO prE_docum WITH "¿Desea consultar Razon Social de SUNAT?"
                IF moPc$"Ss"
                     DO q1_0000a
                     DO coN_ruc IN FAC0000A
                     DO p1_0000a
                ENDIF
                = INKEY(0.01)
                SELECT clIentes
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. vsW0=2 .AND. mrEn$"AB" .AND. mfDr<>CTOD( ;
                " ") .AND. DATE()<=mfHr
                DO prE_docum WITH  ;
                   "¿Desea consultar Apellidos y Nombres de RENIEC?"
                IF moPc$"Ss"
                     DO q1_0000a
                     DO coN_dni IN FAC0000A
                     DO p1_0000a
                ENDIF
                = INKEY(0.01)
                SELECT clIentes
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. vsW0=2
                STORE 99 TO mkEy
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
                     STORE f1101cod TO vcLi
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
                          STORE 2 TO vnSu
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
                     DO noM_1200w IN PVI1200W
                     DO ruC_1200w IN PVI1200W
                     DO drC_1200w IN PVI1200W
                     DO luG_1200w IN PVI1200W
                     DO dvE_1200w IN PVI1200W
                     DO dtI_1200w IN PVI1200W
                     DO dcT_1200w IN PVI1200W WITH 1
                     DO reF_1200a
                     IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa  ;
                        .AND. LEN(ALLTRIM(vcOn))<>0
                          STORE "Cliente "+vcOn TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          IF vcOn<>"HABIDO"
                               DO prE_docum WITH "RUC "+ALLTRIM(vcOn)+ ;
                                  CHR(13)+"¿Desea continuar?"
                               IF moPc$"Nn"
                                    STORE 01 TO viTe
                                    STORE 02 TO vsW0
                                    STORE 99 TO mkEy
                               ENDIF
                          ENDIF
                     ENDIF
                     STORE vcLi TO xcLi
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
                STORE SPACE(15) TO vdNi
                STORE SPACE(11) TO vrUc
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
                DO qrF_1200a
                STORE 1 TO viTe
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
           CASE mkEy=k_Ctrl_o
                DO reC_1200a
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=vuLt
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. (viTe<4 .OR. viTe=7  ;
                .OR. viTe=8 .OR. viTe=9)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=2 .AND. (viTe<4 .OR. viTe=7  ;
                .OR. viTe=8 .OR. viTe=12 .OR. viTe=13 .OR. viTe=14)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=1 .AND. viTe=5
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=2 .AND. viTe=10
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F4
                DO tiT_1200a
           CASE mkEy=k_F5 .AND. vsW0=1
                DO diR_1200a WITH "2"
           CASE mkEy=k_F5 .AND. vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vrUc))=0
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
                DO p04_1200a
                STORE 99 TO mkEy
           CASE mkEy=k_F6
                STORE 1 TO viTe
                STORE 0 TO viT1
                STORE SPACE(02) TO vsUc
                STORE SPACE(04) TO vcLi
                IF vsW0=1
                     STORE 00 TO vmDd
                     STORE 02 TO vsW0
                     STORE 14 TO vuLt
                ELSE
                     STORE 00 TO vmDd
                     STORE 01 TO vsW0
                     STORE 09 TO vuLt
                     IF ALLTRIM(vnOm)="."
                          STORE SPACE(70) TO vnOm
                     ENDIF
                ENDIF
                DO bf6_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO drC_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                STORE 99 TO mkEy
           CASE mkEy=k_F7
                DO fpA_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. viTe=1 .AND. msUn$"AB" .AND. mfDe<>CTOD( ;
                " ") .AND. DATE()<=mfHa
                DO leN_0000a IN FAC0000A WITH "4"
                DO leN_0000a IN FAC0000A WITH "5"
                DO leN_0000a IN FAC0000A WITH "C"
                DO leN_0000a IN FAC0000A WITH "D"
                DO noM_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
           CASE mkEy=k_F8 .AND. vsW0=2 .AND. (viTe=5 .OR. viTe=6) .AND.  ;
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
                DO veN_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_c
                STORE viTe TO ciTe
                DO coP_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Alt_z
                STORE viTe TO ciTe
                DO co2_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
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
                          CASE vsW0=1 .AND. viTe=5 .AND. mpIg=2
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
                          CASE vsW0=2 .AND. viTe=10 .AND. mpIg=2
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
                          CASE vsW0=1 .AND. viTe<3
                               STORE 5 TO ciTx
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
                          CASE vsW0=2 .AND. (viTe<3 .OR. viTe=6 .OR. viTe=7)
                               STORE 10 TO ciTx
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
                     CASE vsW0=1 .AND. (viTe=5 .OR. viTe=6)
                          STORE 1 TO viTe
                     CASE vsW0=2 .AND. viTe=10
                          STORE 1 TO viTe
                     CASE vsW0=2 .AND. viTe=11
                          STORE 6 TO viTe
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
                          CASE vsW0=1 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=5)
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
                          CASE vsW0=2 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=5)
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
                          CASE vsW0=2 .AND. (viTe=8 .OR. viTe=9 .OR. viTe=10)
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
           CASE mkEy=k_Up
                DO CASE
                     CASE vsW0=1 .AND. viTe=4
                          STORE 2 TO viTe
                     CASE vsW0=1 .AND. viTe=7
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. (viTe=4 .OR. viTe=5 .OR. viTe=6)
                          STORE 2 TO viTe
                     CASE vsW0=2 .AND. viTe=7
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. viTe=9
                          STORE 7 TO viTe
                     CASE vsW0=2 .AND. viTe=12
                          STORE 8 TO viTe
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
                CASE vsW0=1 .AND. viTe=1
                     @mMF2,mMC2+40 Say "ESCOGER CLIENTE REGISTRADO..."                                                 Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=2 .OR. viTe=7 .OR. viTe=8)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=3 .OR. viTe=4)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=5
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=6
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=9
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=1
                     @mMF2,mMC2+14 Say "DIGITAR NOMBRE DE CLIENTE, CAMPO DE 70 CARACTERES ALFANUMÉRICOS..."            Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=2
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=9)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=5
                     @mMF2,mMC2+35 Say "DIGITAR RUC DE CLIENTE SI ES QUE LO TIENE..."                                  Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=6
                     @mMF2,mMC2+25 Say "DIGITAR D.I./D.N.I. DEL CLIENTE EN CASO DE SER BOLETA DE VENTA..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=7 .OR. viTe=12 .OR. viTe=13)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=10
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=11
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=14
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vsW0=1
                STORE 3 TO vsW0
                DO noM_1200w IN PVI1200W
                mkEy = INKEY(0, "HM")
                STORE 1 TO vsW0
                DO noM_1200w IN PVI1200W
           OTHERWISE
                DO CASE
                     CASE viTe=1
                          @mFI0+01.0,mCO0+13.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=2
                          @mFI0+02.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=3
                          @mFI0+04.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=4
                          @mFI0+04.0,vCL1      Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=5
                          @mFI0+4,vCL2         Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "99999999999" Color ,&mColBlN
                     CASE vsW0=2 .AND. viTe=6
                          @mFI0+4,vCL3+0.7     Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,11.7,15
                     CASE (vsW0=1 .AND. viTe=2) .OR. (vsW0=2 .AND. viTe=7)
                          @mFI0+05.5,mCO0+13.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,vTM3,70
                     CASE (vsW0=1 .AND. viTe=3) .OR. (vsW0=2 .AND. viTe=8)
                          @mFI0+07.0,mCO0+13.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=4) .OR. (vsW0=2 .AND. viTe=9)
                          @mFI0+07.0,vCL1      Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)
                          @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=11)
                          @mFI0+04.2,vCL5      Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=12)
                          @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
                     CASE (vsW0=1 .AND. viTe=8) .OR. (vsW0=2 .AND. viTe=13)
                          @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
                     CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=14)
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
PROCEDURE QRf_1200a
 STORE vrEc TO crEc
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           STORE ftM1ref TO vrEf
           SELECT coD_cliente
           SEEK ALLTRIM(vcOd)+"*"+xcLi
           IF  .NOT. EOF() .AND. ALLTRIM(UPPER(f1104cdg))+"*"= ;
               ALLTRIM(UPPER(vrEf))+"*"
                STORE SPACE(60) TO vrEf
           ENDIF
           SELECT teMporal
           REPLACE ftM1ref WITH vrEf
           SKIP
      ENDDO
      SELECT teMporal
      GOTO irEc
      DO paN_1200b IN PVI1200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE crEc TO vrEc
 STORE cfIl TO vfIl
 STORE "  " TO xcLi
ENDPROC
*
PROCEDURE Ref_1200a
 STORE vrEc TO crEc
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           STORE ftM1ref TO vrEf
           DO clI_1200b IN PVI1200B
           SELECT teMporal
           REPLACE ftM1ref WITH vrEf
           SKIP
      ENDDO
      SELECT teMporal
      GOTO irEc
      DO paN_1200b IN PVI1200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE crEc TO vrEc
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE Ver_1200a
 DO CASE
      CASE mpIg=1 .AND. ((vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=11))
           DO caL_1200w IN PVI1200W
           DO CASE
                CASE vsW0=1
                     STORE 9 TO vuLt
                     STORE 6 TO viTe
                OTHERWISE
                     STORE 14 TO vuLt
                     STORE 11 TO viTe
           ENDCASE
      CASE wnIv="2" .AND. ((vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe= ;
           14)) .AND. vpGd<>0
           STORE "Este Nivel no tiene acceso a Descuento General..." TO mmSj
      CASE ((vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)) .AND. AT( ;
           " ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)
           SELECT caMbio
           SEEK vfEm
           IF EOF()
                STORE "Fecha no tiene Tipo de Cambio registrado..." TO mmSj
                STORE 0 TO vtCa
           ELSE
                STORE f9111tc3 TO vtCa
           ENDIF
           DO tcA_1200w IN PVI1200W
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=1 .AND. viTe=1 .AND. LEN(ALLTRIM(vcLi))=0
           STORE "Cliente debe estar registrado en el Maestro de Clientes..."  ;
                 TO mmSj
      CASE vsW0=1 .AND. viTe=1
           DO reF_1200a
      CASE vsW0=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0 .AND.  ;
           LEN(ALLTRIM(vrUc))<11
           STORE "RUC no puede ser menor de 11 dígitos..." TO mmSj
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0
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
                CASE  .NOT. EOF() .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
                      .AND. DATE()>mfHa
                     STORE "RUC REGISTRADO YA CADUCO EL ACCESO A SUNAT..."  ;
                           TO mmSj
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
                     STORE 0 TO vdTc, vdMc
                     STORE 1 TO viTe, vsW0
                     STORE " " TO vnTt
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
                     DO reF_1200a
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
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()>mfHa
                               STORE "RUC REGISTRADO YA CADUCO EL ACCESO A SUNAT..."  ;
                                     TO mmSj
                          ELSE
                               DO prE_docum WITH  ;
                                  "RUC anteriormente registrado en Documentos de Ventas..."+ ;
                                  CHR(13)+CHR(13)+ ;
                                  "¿Desea volver a llamar estos datos?"
                               IF moPc$"Ss"
                                    IF msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHa
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
                                         IF LEN(ALLTRIM(f1101ven))<>0  ;
                                          .AND. mvNd=2
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
                                    DO reF_1200a
                               ENDIF
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
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vdNi))<>0 .AND. vtDi$"16"
           IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr .AND. vsWa=1
                IF UPPER(ALLTRIM(vdNi))<>UPPER(ALLTRIM(cdNi)) .OR.  ;
                   LEN(ALLTRIM(cdNi))=0
                     STORE " " TO vdIr
                     STORE vdNi TO cdNi
                ENDIF
                DO veR_dni IN FAC0000A WITH "1", vdNi
                IF mkEy=1733
                     STORE "DNI no se encuentra en la BASE de RENIEC" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                STORE vdNi TO cdNi
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
                CASE  .NOT. EOF() .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
                      .AND. DATE()>mfHr
                     STORE "DNI REGISTRADO YA CADUCO EL ACCESO A RENIEC..."  ;
                           TO mmSj
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
                     STORE 0 TO vdTc, vdMc
                     STORE 1 TO viTe, vsW0
                     STORE " " TO vnTt
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
                     DO reF_1200a
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
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()>mfHr
                               STORE "DNI REGISTRADO YA CADUCO EL ACCESO A RENIEC..."  ;
                                     TO mmSj
                          ELSE
                               DO prE_docum WITH  ;
                                  "DNI anteriormente registrado en Documentos de Ventas..."+ ;
                                  CHR(13)+CHR(13)+ ;
                                  "¿Desea volver a llamar estos datos?"
                               IF moPc$"Ss"
                                    IF mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHr
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
                                         IF LEN(ALLTRIM(f1101ven))<>0  ;
                                          .AND. mvNd=2
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
                                    DO reF_1200a
                               ENDIF
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
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vrUc))=0 .AND.  ;
           LEN(ALLTRIM(vdNi))=0 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
      CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=14)
           DO caL_1200w IN PVI1200W
           DO CASE
                CASE vsW0=1
                     STORE 9 TO vuLt, viTe
                OTHERWISE
                     STORE 14 TO vuLt, viTe
           ENDCASE
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
 DO p02_1200a
 DO CASE
      CASE wnIv="1"
           DO tiT_0000a WITH "Pedidos nuevos con acceso a Descuentos"
      CASE wnIv="2"
           DO tiT_0000a WITH "Pedidos nuevos sin acceso a Descuentos"
      CASE wnIv="3"
           DO tiT_0000a WITH "Pedidos nuevos"
 ENDCASE
 IF vlEc=1
      DO p01_1200a IN PVI1200A WITH "1200"
 ELSE
      DO p06_1200a IN PVI1200A
      DO toT_1200w IN PVI1200W
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P01_1200a
 PARAMETER ppRg
 IF vlEc=2
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mmF2, vcO1, mmF2+1, vcO1+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO cuAdro WITH mfI0+0.3, mcO0, mfI0+13.8, mcO0+muCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_beige
      @ mfI0+0.4, mcO0+0.1 TO mfI0+08.5, vcB4+4.5 PATTERN 1
      @ mfI0+0.4, mcO0+0.1 TO mfI0+00.4, vcB4+4.5 COLOR RGB(128,128,128,0,0,0)
      @ mfI0+0.4, mcO0+0.1 TO mfI0+08.5, mcO0+0.1 COLOR RGB(128,128,128,0,0,0)
      @ mfI0+8.9, mcO0+0.1 TO mfI0+13.9, mcO0+muCo-0.9 PATTERN 1
      @ mfI0+8.9, mcO0+0.1 TO mfI0+08.9, mcO0+muCo-0.9 COLOR RGB(128,128, ;
        128,0,0,0)
      @ mfI0+8.9, mcO0+0.1 TO mfI0+13.9, mcO0+0.1 COLOR RGB(128,128,128,0,0,0)
      DO coLsc6
      @ mfI0+0.4, vcB4+5.5 TO mfI0+07.3, mcO0+muCo-0.9 PATTERN 1
      @ mfI0+3.9, vcB4+5.5 TO mfI0+03.9, mcO0+muCo-0.9
      @ mfI0+5.6, vcB4+5.5 TO mfI0+05.6, mcO0+muCo-0.9
      DO coL_fondo
      @mFI0+01.1,mCO0+01.1 Say "Cliente"                  Font "&mLetAri",9 Style "BT"
      @mFI0+01.0,vCL4-10.0 Say "Emisión"                  Font "&mLetAri",9 Style "BT"
      @mFI0+02.5,mCO0+01.1 Say "Dirección"                Font "&mLetAri",9 Style "NT"
      @mFI0+04.0,mCO0+01.1 Say "Distr/Dpto"               Font "&mLetAri",9 Style "NT"
      @mFI0+04.3,vCL5-08.0 Say "I.G.V."                   Font "&mLetAri",9 Style "BT"
      @mFI0+05.5,mCO0+01.1 Say "L.Entrega"                Font "&mLetAri",9 Style "BT"
      @mFI0+07.0,mCO0+01.1 Say "Distr/Dpto"               Font "&mLetAri",9 Style "NT"
      @mFI0+07.0,vCL6-08.0 Say "Titular"                  Font "&mLetAri",9 Style "NT"
      @mFI0+12.5,mCO0+01.1 Say "Dcto.Gral:"               Font "&mLetAri",9 Style "BT"
      @mFI0+12.5,mCO0+58.0 Say "% Dcto.x Tipo de Cliente" Font "&mLetAri",9 Style "NT" Color &mColPlP
      @mFI0+12.5,mCO0+96.4 Say "% Dcto.x Cliente"         Font "&mLetAri",9 Style "NT" Color &mColPlP
      @mFI0+02.5,vCL4-10.0 Say "F.Pago"                   Font "&mLetAri",9 Style "BT"
      @mFI0+06.0,vCL4-10.0 Say "Vendedor"                 Font "&mLetAri",9 Style "BT"
      DO p04_1200a IN PVI1200A
      DO p05_1200a IN PVI1200A
      DO coL_beige
      DO CASE
           CASE ppRg="1200"
                @mFI0+09.5,mCO0+01.1 Say "Observaciones"    Font "&mLetAri",9 Style "BT"
           CASE ppRg="1300"
                @mFI0+09.5,mCO0+01.1 Say "Guía-Remisión"    Font "&mLetAri",9 Style "BT"
                @mFI0+11.0,mCO0+01.1 Say "Observaciones"    Font "&mLetAri",9 Style "BT"
      ENDCASE
      @mFI0+1,vCL7-12 Say "T.Cambio"                      Font "&mLetAri",9 Style "NT"
      DO coLbln
      @mFI0+01.0,mCO0+013.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
      @mFI0+01.0,vCL4       Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
      @mFI0+05.5,mCO0+013.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,vTM3,70
      @mFI0+07.0,mCO0+013.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
      @mFI0+07.0,vCL1       Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
      @mFI0+09.5,mCO0+019.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
      @mFI0+11.0,mCO0+019.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,70
      @mFI0+12.5,mCO0+043.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
      @mFI0+07.0,vCL6       Get  vTIT Font "&mLetAri",9 Style "NQ" Size 1,5.5 Pict "!!!!"   Color ,RGB(0,0,0,235,231,222)
      @mFI0+12.5,mCO0+085.5 Get  vDTC Font "&mLetAri",9 Style "NQ" Size 1,7.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
      @mFI0+12.5,mCO0+115.5 Get  vDCL Font "&mLetAri",9 Style "NQ" Size 1,7.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
      DO CASE
           CASE vsW0=1
                SET COLOR TO
                @mFI0+4,vCL2     Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "99999999999" Color ,RGB(0,0,0,235,231,222)
                @mFI0+4,vCL3+0.7 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,11.7,15
           OTHERWISE
                DO coLbln
                @mFI0+4,vCL2     Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "99999999999" Color ,&mColBlN
                @mFI0+4,vCL3+0.7 Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,11.7,15
      ENDCASE
      DO CASE
           CASE mpIg=2
                @mFI0+4.2,vCL5 Get vPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99" Color Scheme 6
           OTHERWISE
                @mFI0+4.2,vCL5 Get vPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99" Color ,&mColBlN
      ENDCASE
      @mFI0+6.0,vCL4-01.4 Say  "  " Font "&mLetAri",9 Style "NQ" Size 1,2         Color Scheme 6
      @mFI0+2.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
      @mFI0+4.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
      @mFI0+4.0,vCL1      Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
      @mFI0+1.0,vCL7      Get  vTCA Font "&mLetAri",9 Style "NQ" Size 1,08.3      Color Scheme 6 Pict "99.999"
      @mFI0+2.5,vCL4      Edit vNFP Font "&mLetAri",9 Style "NQ" Size 1,vTM4,50   Color Scheme 6
      @mFI0+6.0,vCL4      Edit vNVE Font "&mLetAri",9 Style "NQ" Size 1,vTM4,70   Color Scheme 6
      DO dtI_1200w IN PVI1200W
      DO swG_1200w IN PVI1200W WITH "N"
      IF mwEr="T"
           READ TIMEOUT 0.01
      ENDIF
 ENDIF
 DO coL_fondo
 DO cuAdro WITH ifIl-1.4, vcO1, ffIl+5.6, vcO1+vuCo
 IF wsTo="1" .OR. ppRg="1300"
      DO coL_fonaz
      @fFIL+3.4,vCO1+0.3 Say "Stock:"            Font "&mLetAri",9 Style "BT"
 ENDIF
 DO coL_fonro
 @fFIL+4.6,vCO1+0.3 Say "Descripción General:" Font "&mLetAri",9 Style "BT"
 DO coLsc3
 DO coLscz
 @ ifIl-1.55, vcO1-0.6 TO ifIl-0.2, vcO1+vuCo+0.4 PATTERN 1
 DO coLsc3
 @ ffIl+1.1, vcO1 TO ffIl+3.35, vcO1+vuCo PATTERN 1
 @ ffIl+1.1, vcO1+11.6 TO ffIl+3.35, vcO1+11.6
 @ ffIl+1.1, vcO1+028.6 TO ffIl+3.35, vcO1+028.6
 @ ffIl+1.1, vcO1+045.6 TO ffIl+3.35, vcO1+045.6
 @ ffIl+1.1, vcO1+062.6 TO ffIl+3.35, vcO1+062.6
 @ ffIl+1.1, vcO1+079.6 TO ffIl+3.35, vcO1+079.6
 @ ffIl+1.1, vcO1+096.6 TO ffIl+3.35, vcO1+096.6
 @ ffIl+1.1, vcO1+113.6 TO ffIl+3.35, vcO1+113.6
 @ ffIl+1.1, vcO1+130.6 TO ffIl+3.35, vcO1+130.6
 @ ffIl+1.1, vcO1+147.6 TO ffIl+3.35, vcO1+147.6
 DO coLscz
 DO CASE
      CASE mrEs="3"
           @iFIL-1.4,vCO1+000.9 Say "It"                                     Font "&mLetAri",8 Style "BQ"
           @iFIL-1.4,vCO1+003.8 Say "Producto/Servicio: Descripción Impresa" Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+067.2 Say "Unidad"                                 Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+081.3 Say "Cantidad"                               Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+095.6 Say "Precio Unitario"                        Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+113.3 Say "%Dcto"                                  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+123.3 Say "Total Item"                             Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE mcAj=1 .AND. vsW9=1
                     @iFIL-1.4,vCO1+138 Say "Ref.o Cajas"                      Font "&mLetAri",9 Style "BQ" Size 1,13
                CASE vsW9=1
                     @iFIL-1.4,vCO1+138 Say "Referencia"                       Font "&mLetAri",9 Style "BQ" Size 1,13
                OTHERWISE
                     @iFIL-1.4,vCO1+138 Say "Peso Unitar"                      Font "&mLetAri",9 Style "BQ" Size 1,13
           ENDCASE
           DO coLsc3
           @fFIL+1.2,vCO1+000.1 Say "Totales:"                               Font "&mLetAri",9 Style "BT"
           @fFIL+2.2,vCO1+013.2 Say "Total Ítems"                            Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+029.7 Say "Dcto.x T/Clien"                         Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+046.5 Say "Dcto.x Cliente"                         Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+063.6 Say "Dcto.General"                           Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+081.0 Say "Total Dctos."                           Font "&mLetAri",9 Style "NT"
           DO coLblz
           @fFIL+2.2,vCO1+103.0 Say "Neto"                                   Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+120.0 Say "I.G.V."                                 Font "&mLetAri",9 Style "NT"
           DO coLblv
           @fFIL+3.4,vCO1+053.5 Say "Precio Unitario:"                       Font "&mLetAri",9 Style "BT"
           DO coLblr
           @fFIL+3.4,vCO1+091.5 Say "Total Ítem:"                            Font "&mLetAri",9 Style "BT"
      OTHERWISE
           @iFIL-1.4,vCO1+000.8 Say "It"                                     Font "&mLetAri",8 Style "BQ"
           @iFIL-1.4,vCO1+003.8 Say "Producto/Servicio: Descripción Impresa" Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+067.5 Say "Unidad"                                 Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+082.3 Say "Cantidad"                               Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+095.5 Say "Precio Unitario"                        Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+113.3 Say "%Dcto"                                  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,vCO1+123.7 Say "Total Item"                             Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE mcAj=1 .AND. vsW9=1
                     @iFIL-1.4,vCO1+151 Say "Ref.o Cajas"                      Font "&mLetAri",9 Style "BQ" Size 1,13
                CASE vsW9=1
                     @iFIL-1.4,vCO1+151 Say "Referencia"                       Font "&mLetAri",9 Style "BQ" Size 1,13
                OTHERWISE
                     @iFIL-1.4,vCO1+151 Say "Peso Unitar"                      Font "&mLetAri",9 Style "BQ" Size 1,13
           ENDCASE
           @fFIL+1.2,vCO1+000.1 Say "Totales:"                               Font "&mLetAri",9 Style "BT"
           @fFIL+2.2,vCO1+013.2 Say "Total Ítems"                            Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+029.7 Say "Dcto.x T/Clien"                         Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+046.5 Say "Dcto.x Cliente"                         Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+063.6 Say "Dcto.General"                           Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+081.0 Say "Total Dctos."                           Font "&mLetAri",9 Style "NT"
           DO coLblz
           @fFIL+2.2,vCO1+103.0 Say "Neto"                                   Font "&mLetAri",9 Style "NT"
           @fFIL+2.2,vCO1+120.0 Say "I.G.V."                                 Font "&mLetAri",9 Style "NT"
           DO coLblv
           @fFIL+3.4,vCO1+053.5 Say "Precio Unitario:"                       Font "&mLetAri",9 Style "BT"
           DO coLblr
           @fFIL+3.4,vCO1+091.5 Say "Total Ítem:"                            Font "&mLetAri",9 Style "BT"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO toT_1200w IN PVI1200W WITH "N"
 DO liN_1200w IN PVI1200W WITH ifIl-1.4, ffIl+1.15
 IF mdEs<3
      DO coLsc7
      @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
 ENDIF
 IF ppRg="1200"
      DO caL_1200w IN PVI1200W
 ELSE
      DO caL_1300w IN PVI1200W
 ENDIF
 IF mdEs<3
      DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "ALFABE", mfI0, mcO0-8.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ROMBO", mmF1+0.6, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mMF1+1.1,01.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
 IF vsW3=1
      DO boT_1200w IN PVI1200W WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      IF irEc<=frEc
           GOTO irEc
           DO paN_1200b IN PVI1200B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           GOTO BOTTOM
           DO coL_fondo
           @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
           DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
           STORE ifIl TO cfIl, vfIl
           STORE RECNO()+1 TO vrEc, irEc
      ENDIF
 ENDIF
 STORE cfIl TO vfIl
 DO peR_1200w IN PVI1200W
 DO prEsiona WITH "1", "DESCAR", ifIl-1.9, ucLn+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P02_1200a
 STORE irEc TO vrEc
 STORE 000.0 TO viT1
 STORE 126.0 TO muCo, vuCo
 DO CASE
      CASE wsW0=1
           STORE 23.3 TO muFi
      CASE wsW0=2
           STORE 21.3 TO muFi
 ENDCASE
 DO CASE
      CASE mrEs="3"
           STORE muCo+60 TO muCo
           STORE vuCo+60 TO vuCo
           STORE muFi+18 TO muFi
           STORE (mwCo-166)/2 TO vcL0
      CASE mrEs="4"
           STORE muCo+60 TO muCo
           STORE vuCo+60 TO vuCo
           STORE muFi+18 TO muFi
           STORE (mwCo-166)/2 TO vcL0
      OTHERWISE
           STORE muCo+60 TO muCo
           STORE vuCo+60 TO vuCo
           STORE muFi+18 TO muFi
           STORE (mwCo-166)/2 TO vcL0
 ENDCASE
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO vcO0
 DO CASE
      CASE wsW0=1
           STORE mfI0-1 TO mfI0
 ENDCASE
 STORE mfI0+muFi+1.8 TO mmF2
 STORE (mwCo-muCo)/2 TO mcO0, vcO1, mmC2
 STORE (mwCo-126.8)/2 TO vcO2
 STORE mmC2+22 TO mmC2
 STORE vcO1 TO icLn
 DO CASE
      CASE mrEs="3"
           STORE vcO2-15 TO vcO2
           STORE vcO2+75 TO vcO3
           STORE vcO0+46 TO vcO0
           STORE icLn+185.6 TO ucLn
      CASE mrEs="4"
           STORE vcO2-15 TO vcO2
           STORE vcO2+75 TO vcO3
           STORE vcO0+46 TO vcO0
           STORE icLn+185.6 TO ucLn
      OTHERWISE
           STORE vcO2-15 TO vcO2
           STORE vcO2+75 TO vcO3
           STORE vcO0+46 TO vcO0
           STORE icLn+185.6 TO ucLn
 ENDCASE
 STORE mfI0 TO vfI2
 STORE mfI0+02 TO ifFs, ufFs, vfFs
 STORE ifFs+34 TO ffFs
 STORE mfI0+01.7 TO ifFr, ufFr, vfFr
 STORE ifFr+37 TO ffFr
 STORE mfI0+02.7 TO ifFt, ufFt, vfFt
 STORE ifFt+17 TO ffFt
 STORE mfI0+03.7 TO ifFu, ufFu, vfFu
 STORE ifFu+16 TO ffFu
 STORE mfI0+04.7 TO ifFv, ufFv, vfFv
 STORE ifFv+15 TO ffFv
 STORE mfI0+05.7 TO ifFw, ufFw, vfFw
 STORE ifFw+14 TO ffFw
 STORE mfI0+06.7 TO ifFx, ufFx, vfFx
 STORE ifFx+13 TO ffFx
 DO p03_1200a
 IF wsW0=2
      STORE mmF2-0.5 TO mmF2
 ENDIF
 STORE mfI0+0.9 TO vfB1, vfB2, vfB3, vfB4
 STORE mfI0+2.5 TO vfB5, vfB6
 STORE mfI0+6.9 TO vfB8, vfB9
 STORE mfI0+6.0 TO vfB7
 STORE mcO0+9.3 TO vcB1
 DO CASE
      CASE mrEs="3"
           STORE 90 TO vtM1
           STORE 27 TO vtM2
           STORE 102 TO vtM3
           STORE 50 TO vtM4
           STORE mcO0+042.0 TO vcL1
           STORE mcO0+078.9 TO vcL2
           STORE mcO0+103.3 TO vcL3
           STORE mcO0+129.4 TO vcL4
           STORE mcO0+080.1 TO vcL6
      CASE mrEs="4"
           STORE 90 TO vtM1
           STORE 27 TO vtM2
           STORE 102 TO vtM3
           STORE 50 TO vtM4
           STORE mcO0+042.0 TO vcL1
           STORE mcO0+078.9 TO vcL2
           STORE mcO0+103.3 TO vcL3
           STORE mcO0+129.4 TO vcL4
           STORE mcO0+080.1 TO vcL6
      OTHERWISE
           STORE 90 TO vtM1
           STORE 27 TO vtM2
           STORE 102 TO vtM3
           STORE 50 TO vtM4
           STORE mcO0+042.0 TO vcL1
           STORE mcO0+078.9 TO vcL2
           STORE mcO0+103.3 TO vcL3
           STORE mcO0+129.4 TO vcL4
           STORE mcO0+080.1 TO vcL6
 ENDCASE
 STORE mcO0+vtM1+14 TO vcB2, vcB5
 STORE vcL4+vtM4+0.4 TO vcB6, vcB7
 STORE vcB2+4 TO vcB3
 STORE vcB3+4 TO vcB4
 STORE vcL6+6.4 TO vcB8
 STORE vcB8+4 TO vcB9
 STORE vcL4+vtM4+0.4 TO vcB6, vcB7
 STORE vcL4+vtM4-7.9 TO vcL5
 STORE vcL4+vtM4-8.9 TO vcL7
 DO CASE
      CASE mrEs="3"
           Define Popup vTB1 from mFI0+2.2,mCO0 to fFIL+7.9,mCO0+110 Font "&mLetCou",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES"
           Define Popup vTB2 from mFI0+3.8,mCO0 to fFIL+7.9,mCO0+110 Font "&mLetCou",13 Style "NQ" Prompt Field AllTrim(F1102DIR)+", "+AllTrim(F1102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
           Define Popup vTB3 from mFI0+3.5,mCO0+88 to fFIL+7.9,mCO0+184 Font "&mLetCou",13 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
           Define Popup vTB4 from mFI0+7.0,mCO0+88 to fFIL+7.9,mCO0+184 Font "&mLetCou",13 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
           Define Popup vTB5 from mFI0+8.2,mCO0 to fFIL+7.9,mCO0+94 Font "&mLetCou",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES TITULARES"
           Define Popup vTB6 from mFI0,0.1 to iFIL-0.5,mCO0+195 Font "&mLetCou",10 Style "NQ" Prompt Field Dtoc(FTM6FEM)+" PU:"+Str(FTM6PRE,12,4)+" CANT:"+Str(FTM6CAN,12,4)+" "+FTM6TDO+":"+FTM6SER+"-"+FTM6DOC+" TIT:"+FTM6TIT+" COMP:"+FTM6NOM Scroll Color Scheme 3 Footer "CONSULTA DE PRECIOS"
      OTHERWISE
           Define Popup vTB1 from mFI0+2.2,mCO0 to fFIL+7.9,mCO0+110 Font "&mLetCou",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES"
           Define Popup vTB2 from mFI0+3.8,mCO0 to fFIL+7.9,mCO0+110 Font "&mLetCou",13 Style "NQ" Prompt Field AllTrim(F1102DIR)+", "+AllTrim(F1102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
           Define Popup vTB3 from mFI0+3.5,mCO0+88 to fFIL+7.9,mCO0+184 Font "&mLetCou",13 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
           Define Popup vTB4 from mFI0+7.0,mCO0+88 to fFIL+7.9,mCO0+184 Font "&mLetCou",13 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
           Define Popup vTB5 from mFI0+8.2,mCO0 to fFIL+7.9,mCO0+94 Font "&mLetCou",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES TITULARES"
           Define Popup vTB6 from mFI0,0.1 to iFIL-0.5,mCO0+195 Font "&mLetCou",10 Style "NQ" Prompt Field Dtoc(FTM6FEM)+" PU:"+Str(FTM6PRE,12,4)+" CANT:"+Str(FTM6CAN,12,4)+" "+FTM6TDO+":"+FTM6SER+"-"+FTM6DOC+" TIT:"+FTM6TIT+" COMP:"+FTM6NOM Scroll Color Scheme 3 Footer "CONSULTA DE PRECIOS"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_1200A IN PVI1200A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
ENDPROC
*
PROCEDURE P03_1200a
 DO CASE
      CASE vsW3=1 .AND. wsW0=1
           STORE mfI0+16 TO ifIl, ufIl, vfIl
           STORE ifIl+03 TO ffIl
      CASE vsW3=2 .AND. wsW0=1
           STORE mfI0+02 TO ifIl, ufIl, vfIl
           STORE ifIl+17 TO ffIl
      CASE vsW3=1 .AND. wsW0=2
           STORE mfI0+15 TO ifIl, ufIl, vfIl
           STORE ifIl+03 TO ffIl
      CASE vsW3=2 .AND. wsW0=2
           STORE mfI0+02 TO ifIl, ufIl, vfIl
           STORE ifIl+16 TO ffIl
 ENDCASE
 DO CASE
      CASE mrEs="3"
           STORE ifIl+01 TO ifIl, ufIl, vfIl
           STORE ffIl+17 TO ffIl
      CASE mrEs="4"
           STORE ifIl+01 TO ifIl, ufIl, vfIl
           STORE ffIl+17 TO ffIl
      OTHERWISE
           STORE ifIl+01 TO ifIl, ufIl, vfIl
           STORE ffIl+17 TO ffIl
 ENDCASE
ENDPROC
*
PROCEDURE P04_1200a
 DO coL_beige
 DO CASE
      CASE vtDi$"16" .AND. vsW0=2 .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
           .AND. DATE()<=mfHr .AND. vsWa=1
           DO coL_beiro
           @mFI0+4,vCL3-8 Say "     DNI" Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
      CASE vtDi="1" .OR. vtDi="6"
           @mFI0+4,vCL3-8 Say "     DNI" Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
      CASE vtDi="4"
           @mFI0+4,vCL3-8 Say "C.Extran" Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
      CASE vtDi="7"
           @mFI0+4,vCL3-8 Say "  Pasap." Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
      CASE vtDi="A"
           @mFI0+4,vCL3-8 Say "C.Diplo"  Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
      OTHERWISE
           @mFI0+4,vCL3-8 Say "   Otros" Font "&mLetAri",9 Style "NQ" Size 1,8 Pict "@S10"
 ENDCASE
ENDPROC
*
PROCEDURE P05_1200a
 DO coL_beige
 DO CASE
      CASE vsW0=2 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<= ;
           mfHa .AND. vsWa=1
           DO coL_beiro
           @mFI0+4,vCL2-6.1 Say "RUC" Font "&mLetAri",9 Style "BQ" Size 1,4.9
      CASE vsW0=2 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<= ;
           mfHa .AND. vsWa=2
           @mFI0+4,vCL2-6.1 Say "RUC" Font "&mLetAri",9 Style "NQ" Size 1,5.1
      OTHERWISE
           @mFI0+4,vCL2-6.1 Say "RUC" Font "&mLetAri",9 Style "NQ" Size 1,5.1
 ENDCASE
ENDPROC
*
PROCEDURE P06_1200a
 IF vlEc=1
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLbln
 DO cuAdro WITH mfI0, vcO1-2, ffIl+7.6, vcO1+INT(vuCo/2)
 DO coL_boton
 DO cuAdro WITH mfI0, vcO1+INT(vuCo/2)+4, ffIl+7.6, vcO1+vuCo+2
 @mFI0+1.1,vCO1+Int(vUCO/2)+06 Say "Producto:" Font "&mLetRom",14 Style "NT"
 @mFI0+1.1,vCO1+Int(vUCO/2)+68 Say "Cantidad:" Font "&mLetRom",14 Style "NT"
 @mFI0+3.8,vCO1+Int(vUCO/2)+06 Edit vDES       Font "&mLetRom",14 Style "NQ" Size 1,54,54
 DO coLbln
 @mFI0+01,vCO1+Int(vUCO/2)+23 Get vCOD Font "&mLetRom",14 Style "NQ" Size 1,07 Pict "999999" Color ,&mColBlN
 @mFI0+01,vCO1+Int(vUCO/2)+84 Get vCAN Font "&mLetRom",14 Style "NQ" Size 1,05 Pict "9999"   Color ,&mColBlN
 DO p07_1200a
ENDPROC
*
PROCEDURE P07_1200a
 DO coL_boton
 @ ifIl+08.6, vcO1+INT(vuCo/2)+4.0 CLEAR TO ifIl+23.7, vcO1+vuCo+2
 DO coLbln
 @ ifIl+08.7, vcO1+INT(vuCo/2)+4.0 CLEAR TO ifIl+11.7, vcO1+vuCo+2
 @ ifIl+14.7, vcO1+INT(vuCo/2)+4.0 CLEAR TO ifIl+17.7, vcO1+vuCo+2
 @ ifIl+20.7, vcO1+INT(vuCo/2)+4.0 CLEAR TO ifIl+23.7, vcO1+vuCo+2
 @iFIL+09.5,vCO1+Int(vUCO/2)+4.6 Say "1." Font "&mLetRom",13 Style "NT"
 @iFIL+12.5,vCO1+Int(vUCO/2)+4.6 Say "2." Font "&mLetRom",13 Style "NT"
 @iFIL+15.5,vCO1+Int(vUCO/2)+4.6 Say "3." Font "&mLetRom",13 Style "NT"
 @iFIL+18.5,vCO1+Int(vUCO/2)+4.6 Say "4." Font "&mLetRom",13 Style "NT"
 @iFIL+21.5,vCO1+Int(vUCO/2)+4.6 Say "5." Font "&mLetRom",13 Style "NT"
 DO prEsiona WITH "1", "DESCAN", ifIl+09.6, vcO1+vuCo-2
 DO prEsiona WITH "1", "DESCAN", ifIl+12.6, vcO1+vuCo-2
 DO prEsiona WITH "1", "DESCAN", ifIl+15.6, vcO1+vuCo-2
 DO prEsiona WITH "1", "DESCAN", ifIl+18.6, vcO1+vuCo-2
 DO prEsiona WITH "1", "DESCAN", ifIl+21.6, vcO1+vuCo-2
ENDPROC
*
PROCEDURE Rec_1200a
 PRIVATE ptM1, ptM2, ptM3, ptM4, ptM5, ptM6, ptM7
 PRIVATE pcD1, pcD2, pcD3, pcD4, pcD5, pcD6, pcD7
 PRIVATE plIsta, piTe, pdBf, psW0, ptAm
 ADIR(plIsta, "TM01A*.DBF")
 ptAm = ALEN(plIsta, 1)
 STORE 1 TO piTe, psW0
 DO WHILE .T.
      IF piTe>ptAm
           EXIT
      ENDIF
      STORE plIsta(piTe,1) TO pdBf
      STORE piTe+1 TO piTe
 ENDDO
 STORE ptAm-1 TO piTe
 IF piTe<=0
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT 45
 DO WHILE .T.
      STORE plIsta(piTe,1) TO pdBf
      Use &pDBF Share
      GOTO TOP
      IF BOF() .OR. EOF() .OR. LEN(ALLTRIM(ftM1tmp))=0
           STORE piTe-1 TO piTe
           IF piTe<=0
                STORE 0 TO psW0
                EXIT
           ENDIF
           LOOP
      ENDIF
      EXIT
 ENDDO
 = INKEY(0.01)
 IF psW0=0
      SELECT 45
      USE
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 GOTO TOP
 STORE SUBSTR(ftM1tmp, 01, 13) TO ptM1
 STORE SUBSTR(ftM1tmp, 15, 12) TO ptM2
 STORE SUBSTR(ftM1tmp, 28, 12) TO ptM3
 STORE SUBSTR(ftM1tmp, 41, 12) TO ptM4
 STORE SUBSTR(ftM1tmp, 54, 12) TO ptM5
 STORE SUBSTR(ftM1tmp, 67, 12) TO ptM6
 STORE SUBSTR(ftM1tmp, 80, 12) TO ptM7
 If .not.File("&pTM1")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM2")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM3")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM4")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM5")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM6")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM7")
      STORE 0 TO psW0
 ENDIF
 SELECT 45
 USE
 IF psW0=0
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 = INKEY(0.01)
 STORE SUBSTR(ptM1, 1, 9)+".CDX" TO pcD1
 STORE SUBSTR(ptM2, 1, 8)+".CDX" TO pcD2
 STORE SUBSTR(ptM3, 1, 8)+".CDX" TO pcD3
 STORE SUBSTR(ptM4, 1, 8)+".CDX" TO pcD4
 STORE SUBSTR(ptM5, 1, 8)+".CDX" TO pcD5
 STORE SUBSTR(ptM6, 1, 8)+".CDX" TO pcD6
 STORE SUBSTR(ptM7, 1, 8)+".CDX" TO pcD7
 If .not.File("&pCD1")
      Delete File &pCD1
 ENDIF
 If .not.File("&pCD2")
      Delete File &pCD2
 ENDIF
 If .not.File("&pCD3")
      Delete File &pCD3
 ENDIF
 If .not.File("&pCD4")
      Delete File &pCD4
 ENDIF
 If .not.File("&pCD5")
      Delete File &pCD5
 ENDIF
 If .not.File("&pCD6")
      Delete File &pCD6
 ENDIF
 If .not.File("&pCD7")
      Delete File &pCD7
 ENDIF
 = INKEY(0.1)
 SET SAFETY OFF
 SELECT teMporal
 Append from &pTM1
 = INKEY(0.01)
 SELECT tmP_prod
 Append from &pTM2
 = INKEY(0.01)
 SELECT teMporal_3
 Append from &pTM3
 = INKEY(0.01)
 SELECT teMporal_4
 Append from &pTM4
 = INKEY(0.01)
 SELECT teMporal_cj
 Append from &pTM5
 = INKEY(0.01)
 SELECT teMporal_6
 Append from &pTM6
 = INKEY(0.01)
 SELECT teMporal_7
 Append from &pTM7
 = INKEY(0.01)
 SELECT teMporal
 GOTO BOTTOM
 STORE RECNO() TO frEc
 GOTO TOP
 DO paN_1200b IN PVI1200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO ctO_1200b IN PVI1200B
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 RELEASE ptM1, ptM2, ptM3, ptM4, ptM5, ptM6, ptM7
 RELEASE pcD1, pcD2, pcD3, pcD4, pcD5, pcD6, pcD7
 RELEASE plIsta, piTe, pdBf, psW0, ptAm
ENDPROC
*
PROCEDURE Det_1200a
 STORE 99 TO mkEy
 SET READBORDER OFF
 IF vlEc=1
      DO boT_1200w IN PVI1200W WITH "3"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
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
 IF vlEc=1
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO peR_1200w IN PVI1200W
      SET READBORDER ON
      IF vsW3=2
           STORE 1 TO vsW3
           DO p00_1200a WITH "1"
      ELSE
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
           DO boT_1200w IN PVI1200W WITH "1"
      ENDIF
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
      UNLOCK ALL
      WAIT CLEAR
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
PROCEDURE Vrf_1200a
 SELECT teMporal
 SET ORDER TO FTM1COD
 SELECT teMporal_cj
 SET FILTER TO
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2921cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal_cj
           DELETE FOR ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
           PACK
           GOTO TOP
           LOOP
      ENDIF
      SELECT teMporal_cj
      SKIP
 ENDDO
 SELECT teMporal_cj
 SET ORDER TO F2921COD
 SELECT teMporal_4
 SET FILTER TO
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM4cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal_4
           DELETE FOR ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
           PACK
           GOTO TOP
           LOOP
      ENDIF
      SELECT teMporal_4
      SKIP
 ENDDO
 SELECT teMporal_4
 SET ORDER TO FTM4COD
 SELECT tmP_prod
 ZAP
 REINDEX
ENDPROC
*
PROCEDURE Gra_1200a
 PRIVATE ptX1, ptX2, poPc, pnUm
 = INKEY(0.01)
 STORE "PE" TO vtDo
 STORE msEr(03) TO vsEr
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
 ptX2 = "PEDIDO No.:"+vsEr+"-"+vdOc
 SELECT caB_ped
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
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
 DO vrF_1200a IN PVI1200A
 IF LEN(ALLTRIM(vrUc))<>0
      STORE "6" TO vtDi
 ELSE
      IF LEN(ALLTRIM(vdNi))=0
           STORE "0" TO vtDi
      ENDIF
 ENDIF
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 REPLACE f9999num WITH vdOc
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ped
 DO nuEvo_rg
 REPLACE f1200tdo WITH vtDo
 REPLACE f1200ser WITH vsEr
 REPLACE f1200doc WITH vdOc
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
 DO gr1_1200a IN PVI1200A
 SELECT caB_ped
 STORE SPACE(07) TO vdOc
 STORE SPACE(04) TO xcLi
 DO coLbln
 @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO caL_1200w IN PVI1200W
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
 DO boT_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Gr1_1200a
 PUBLIC pcSt, psEr, pvCs, pvCp
 SELECT teMporal
 SET ORDER TO FTM1PER
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0
           SKIP
           LOOP
      ENDIF
      STORE ftM1cod TO vcOd
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuv TO vcUv
      STORE ftM1nuv TO vnUv
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1can TO vcAn
      STORE ftM1pie TO vpIe
      STORE ftM1sol TO vsOl
      STORE ftM1usd TO vuSd
      STORE ftM1pre TO vpRe
      STORE ftM1pro TO vpRo
      STORE ftM1pr1 TO vpR1
      STORE ftM1pdc TO vpDc
      STORE ftM1dct TO vdCt
      STORE ftM1med TO vmEd
      STORE ftM1md1 TO vmD1
      STORE ftM1md2 TO vmD2
      STORE ftM1md3 TO vmD3
      STORE ftM1ref TO vrEf
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      STORE ftM1esp TO veSp
      STORE ftM1to1 TO vtO1
      STORE ftM1to2 TO vtO2
      IF mcAj=1
           STORE VAL(ALLTRIM(vrEf)) TO vcAj
      ENDIF
      STORE vrEc+1 TO vrEc
      SELECT deT_ped
      DO nuEvo_rg
      REPLACE f1201tdo WITH vtDo
      REPLACE f1201ser WITH vsEr
      REPLACE f1201doc WITH vdOc
      REPLACE f1201ite WITH vrEc
      REPLACE f1201cod WITH vcOd
      REPLACE f1201des WITH vdEs
      REPLACE f1201dcr WITH vdCr
      REPLACE f1201cuv WITH vcUv
      REPLACE f1201nuv WITH vnUv
      REPLACE f1201cuc WITH vcUc
      REPLACE f1201nuc WITH vnUc
      REPLACE f1201med WITH vmEd
      REPLACE f1201can WITH vcAn
      REPLACE f1201cad WITH 0
      REPLACE f1201cjd WITH 0
      REPLACE f1201pie WITH vpIe
      REPLACE f1201sol WITH vsOl
      REPLACE f1201usd WITH vuSd
      REPLACE f1201pre WITH vpRe
      REPLACE f1201pro WITH vpRo
      REPLACE f1201pr1 WITH vpR1
      REPLACE f1201pdc WITH vpDc
      REPLACE f1201dct WITH vdCt
      REPLACE f1201md1 WITH vmD1
      REPLACE f1201md2 WITH vmD2
      REPLACE f1201md3 WITH vmD3
      REPLACE f1201ref WITH vrEf
      REPLACE f1201lar WITH vlAr
      REPLACE f1201la1 WITH vlA1
      REPLACE f1201la2 WITH vlA2
      REPLACE f1201la3 WITH vlA3
      REPLACE f1201la4 WITH vlA4
      REPLACE f1201la5 WITH vlA5
      REPLACE f1201la6 WITH vlA6
      REPLACE f1201la7 WITH vlA7
      REPLACE f1201la8 WITH vlA8
      REPLACE f1201la9 WITH vlA9
      REPLACE f1201anc WITH vaNc
      REPLACE f1201an1 WITH vaN1
      REPLACE f1201an2 WITH vaN2
      REPLACE f1201an3 WITH vaN3
      REPLACE f1201an4 WITH vaN4
      REPLACE f1201an5 WITH vaN5
      REPLACE f1201an6 WITH vaN6
      REPLACE f1201an7 WITH vaN7
      REPLACE f1201an8 WITH vaN8
      REPLACE f1201an9 WITH vaN9
      REPLACE f1201alt WITH vaLt
      REPLACE f1201al1 WITH vaL1
      REPLACE f1201al2 WITH vaL2
      REPLACE f1201al3 WITH vaL3
      REPLACE f1201al4 WITH vaL4
      REPLACE f1201al5 WITH vaL5
      REPLACE f1201al6 WITH vaL6
      REPLACE f1201al7 WITH vaL7
      REPLACE f1201al8 WITH vaL8
      REPLACE f1201al9 WITH vaL9
      REPLACE f1201esp WITH veSp
      REPLACE f1201to1 WITH vtO1
      REPLACE f1201to2 WITH vtO2
      UNLOCK
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
                SELECT itE_ped
                DO nuEvo_rg
                REPLACE f1202tdo WITH vtDo
                REPLACE f1202ser WITH vsEr
                REPLACE f1202doc WITH vdOc
                REPLACE f1202cod WITH vcOd
                REPLACE f1202rcc WITH vrCc
                REPLACE f1202opc WITH voPc
                REPLACE f1202un1 WITH vuN1
                REPLACE f1202un2 WITH vuN2
                REPLACE f1202mla WITH vmLa
                REPLACE f1202man WITH vmAn
                REPLACE f1202p11 WITH vp11
                REPLACE f1202p12 WITH vp12
                REPLACE f1202p21 WITH vp21
                REPLACE f1202p22 WITH vp22
                REPLACE f1202ctd WITH vcTd
                REPLACE f1202ca1 WITH vcA1
                REPLACE f1202ca2 WITH vcA2
                REPLACE f1202ca3 WITH vcA3
                REPLACE f1202ca4 WITH vcA4
                REPLACE f1202por WITH vpOr
                REPLACE f1202mm1 WITH vmM1
                REPLACE f1202mm2 WITH vmM2
                REPLACE f1202mm3 WITH vmM3
                REPLACE f1202mm4 WITH vmM4
                REPLACE f1202cx1 WITH vcX1
                REPLACE f1202cx2 WITH vcX2
                REPLACE f1202cx3 WITH vcX3
                REPLACE f1202cx4 WITH vcX4
                REPLACE f1202cy1 WITH vcY1
                REPLACE f1202cy2 WITH vcY2
                REPLACE f1202cy3 WITH vcY3
                REPLACE f1202cy4 WITH vcY4
                REPLACE f1202pie WITH vtPi
                REPLACE f1202cm1 WITH vcMm
                REPLACE f1202cm2 WITH vcMp
                UNLOCK
                SELECT teMporal_4
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_cj
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2921cdg TO ccOd
           STORE f2921tot TO ccAn
           STORE f2921for TO vfOr
           STORE f2921dsp TO vdSp
           STORE f2921dst TO vdSt
           STORE f2921ttt TO vtTt
           SELECT coN_ped
           DO nuEvo_rg
           REPLACE f1204tdo WITH vtDo
           REPLACE f1204ser WITH vsEr
           REPLACE f1204doc WITH vdOc
           REPLACE f1204cod WITH vcOd
           REPLACE f1204cdg WITH ccOd
           REPLACE f1204cun WITH ccAn
           REPLACE f1204can WITH ccAn*vcAn
           REPLACE f1204for WITH vfOr
           REPLACE f1204dsp WITH vdSp
           REPLACE f1204dst WITH vdSt
           REPLACE f1204ttt WITH vtTt
           UNLOCK
           SELECT teMporal_cj
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 IF msTp=1
      SELECT deT_ped
      STORE 99 TO mkEy
      DO orD_0000a WITH "1201", "V", "F1201COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT kaRdex
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*ZZ"
           SET NEAR OFF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           STORE f2990sld TO vsLd
           STORE f2990slc TO vsLc
           STORE 00 TO vcAn, vcAj
           SELECT deT_ped
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF f1201can>f1201cad
                     STORE vcAn+(f1201can-f1201cad) TO vcAn
                     IF mcAj=1 .AND. vsRr=1
                          STORE vcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO vcAj
                     ENDIF
                ENDIF
                SKIP
           ENDDO
           SELECT coN_ped
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(vcOd)+"*"
                IF mkEy=9000
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                STORE f1204tdo TO vtD1
                STORE f1204ser TO vsR1
                STORE f1204doc TO vdO1
                STORE f1204cod TO vcDg
                STORE f1204cun TO vcUn
                SELECT deT_ped
                SEEK ALLTRIM(vcDg)+"*"+vtD1+vsR1+vdO1
                IF  .NOT. EOF() .AND. f1201can>f1201cad
                     STORE vcAn+((f1201can-f1201cad)*vcUn) TO vcAn
                ENDIF
                SELECT coN_ped
                SKIP
           ENDDO
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                STORE f2111cst TO pcSt
                STORE f2111ser TO psEr
                STORE f2111vcs TO pvCs
                STORE f2111vcp TO pvCp
                IF pcSt=1
                     REPLACE f2111sto WITH vsLd-vcAn
                     IF mcAj=1 .AND. psEr=1
                          REPLACE f2111caj WITH vsLc-vcAj
                     ENDIF
                ENDIF
                UNLOCK
           ELSE
                STORE 1 TO pvCs, pvCp
           ENDIF
           IF pcSt=1
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF  .NOT. EOF()
                     REPLACE f2118sto WITH vsLd
                     REPLACE f2118cpe WITH vcAn
                     IF mcAj=1 .AND. psEr=1
                          REPLACE f2118caj WITH vsLc
                          REPLACE f2118cjp WITH vcAj
                     ENDIF
                     UNLOCK
                ENDIF
           ENDIF
           SELECT tmP_prod
           SKIP
      ENDDO
      DO toT_2111c IN PAM2111C
      SELECT deT_ped
      STORE 99 TO mkEy
      DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO boR_1200a IN PVI1200A
 UNLOCK ALL
 WAIT CLEAR
 STORE 99 TO mkEy
 IF mpEd="S"
      DO pvI1200z WITH "1"
 ENDIF
 = INKEY(0.01)
 STORE SPACE(01) TO tdPp
 DO liM_1200w IN PVI1200W
 DO noM_1200w IN PVI1200W
 DO luG_1200w IN PVI1200W
 DO dtI_1200w IN PVI1200W
 DO ruC_1200w IN PVI1200W
 DO drC_1200w IN PVI1200W
 DO dvE_1200w IN PVI1200W
 DO tcA_1200w IN PVI1200W
 DO piG_1200w IN PVI1200W
 DO nfP_1200w IN PVI1200W
 DO dcT_1200w IN PVI1200W WITH 1
 DO swG_1200w IN PVI1200W WITH "N"
 DO toT_1200w IN PVI1200W WITH "N"
 IF mdEs<3
      DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
      DO coLsc7
      @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
 ENDIF
 RELEASE pcSt, psEr, pvCs, pvCp
ENDPROC
*
PROCEDURE Cop_1200a
 SELECT caB_ped
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Pedidos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO CASE
      CASE mvNd=2 .OR. wnIv="3"
           SET FILTER TO f1200est<>"9" .AND. f1200est<>" "
      CASE mvNd=1
           SET FILTER TO f1200est<>"9" .AND. f1200est<>" " .AND. f1200ven=vvEn
 ENDCASE
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 STORE f1200tdo TO vtDo
 STORE f1200ser TO vsEr
 STORE f1200doc TO vdOc
 STORE vdIa TO cdIa
 STORE vnOm TO cnOm
 SAVE SCREEN TO vpAn_11
 DO pvC1200w WITH "PVI1200A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_ped
 SET FILTER TO
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cdIa TO vdIa
 STORE cnOm TO vnOm
 IF mkEy=k_Enter .OR. mkEy=k_Tab
      DO boR_1200a IN PVI1200A
      STORE ifIl TO vfIl, ufIl
      STORE 00 TO tvAl, tpEr, vpDc, vdCt, irEc, vrEc, urEc, frEc
      IF mkEy=k_Enter
           DO muC_1200a
           DO muD_1200a
      ELSE
           DO muT_1200a
      ENDIF
      SELECT teMporal
      GOTO TOP
      DO paN_1200b IN PVI1200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO ctO_1200b IN PVI1200B
      WAIT CLEAR
      STORE 1 TO vrEc, irEc
      STORE 99 TO mkEy
      STORE ifIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE MuT_1200a
 SELECT tmP_ped
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM8tdo TO vtD1
      STORE ftM8ser TO vsE1
      STORE ftM8doc TO vdO1
      DO muD_1200a
      SELECT tmP_ped
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE MuC_1200a
 SELECT caB_ped
 STORE f1200tdo TO vtD1
 STORE f1200ser TO vsE1
 STORE f1200doc TO vdO1
 IF wsW0=2
      STORE f1200tdo TO vtDo
      STORE f1200ser TO vsEr
      STORE f1200doc TO vdOc
      STORE f1200est TO veSt
      STORE f1200fem TO vfEm
      STORE f1200pig TO vpIg
 ENDIF
 STORE f1200tit TO vtIt
 STORE f1200ntt TO vnTt
 STORE f1200cli TO vcLi, xcLi
 STORE f1200suc TO vsUc
 STORE f1200nom TO vnOm
 STORE f1200dir TO vdIr
 STORE f1200dis TO vdIs
 STORE f1200dep TO vdEp
 STORE f1200tdi TO vtDi
 STORE f1200ruc TO vrUc
 STORE f1200ele TO vdNi
 STORE f1200tel TO vtEl
 STORE f1200lug TO vlUg
 STORE f1200lud TO vlUd
 STORE f1200lup TO vlUp
 STORE f1200ven TO vvEn
 STORE f1200nve TO vnVe
 STORE f1200com TO vcOm
 STORE f1200dtc TO vdTc
 STORE f1200dcl TO vdCl
 STORE f1200swg TO vsWg
 STORE f1200pgd TO vpGd
 STORE f1200mon TO vmOn
 STORE f1200fpa TO vfPa
 STORE f1200nfp TO vnFp
 STORE f1200dia TO vdI1
 STORE f1200tfp TO vtFp
 STORE f1200net TO tnEt
 STORE f1200igv TO tiGv
 STORE f1200tot TO ttOt
 STORE f1200cm1 TO vcM1
 STORE f1200cm2 TO vcM2
 DO CASE
      CASE vmOn=1
           STORE msIg TO vsIg
      CASE vmOn=2
           STORE "US$" TO vsIg
 ENDCASE
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
      STORE f9111tc3 TO vtCa
 ENDIF
 SELECT suCursal
 GOTO TOP
 SEEK vcLi
 STORE 0 TO vnSu
 DO WHILE  .NOT. EOF() .AND. f1102cod=vcLi
      STORE vnSu+1 TO vnSu
      SKIP
 ENDDO
 SELECT clIentes
 IF vsW0=1
      SEEK vcLi
 ELSE
      SEEK vtIt
 ENDIF
 IF  .NOT. EOF()
      STORE f1101tip TO vtCl
      STORE f1101med TO vmDd
      STORE f1101lis TO ulIs
      STORE f1101li2 TO ulI2
      STORE f1101li3 TO ulI3
      STORE f1101cre TO vcRe
      IF vsW0=2
           STORE SPACE(70) TO vnTt
      ELSE
           STORE f1101nom TO vnTt
      ENDIF
 ELSE
      STORE SPACE(02) TO vtCl
      STORE SPACE(70) TO vnTt
      STORE 1 TO vmDd
      STORE 2 TO vcRe
      STORE 0 TO ulI2, ulI3
      DO CASE
           CASE mlIs=0
                STORE 1 TO ulIs
           OTHERWISE
                STORE mlIs TO ulIs
      ENDCASE
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
 DO coLbln
 SELECT caB_ped
 IF wsW0=2
      @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"
      @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999"
 ENDIF
 DO noM_1200w IN PVI1200W
 DO luG_1200w IN PVI1200W
 DO dtI_1200w IN PVI1200W
 DO ruC_1200w IN PVI1200W
 DO drC_1200w IN PVI1200W
 DO dvE_1200w IN PVI1200W
 DO tcA_1200w IN PVI1200W
 DO piG_1200w IN PVI1200W
 DO nfP_1200w IN PVI1200W
 DO dcT_1200w IN PVI1200W WITH 1
 DO swG_1200w IN PVI1200W WITH "N"
 DO toT_1200w IN PVI1200W WITH "N"
 DO coLbln
 @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO caL_1200w IN PVI1200W
 DO boT_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE MuD_1200a
 SELECT teMporal
 SET ORDER TO FTM1COD
 SELECT deT_ped
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtD1+vsE1+vdO1
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
      STORE f1201sol TO vsOl
      STORE f1201usd TO vuSd
      STORE f1201pre TO vpRe
      STORE f1201pro TO vpRo
      STORE f1201pr1 TO vpR1
      STORE f1201md1 TO vmD1
      STORE f1201md2 TO vmD2
      STORE f1201md3 TO vmD3
      STORE f1201pdc TO vpDc
      STORE f1201dct TO vdCt
      STORE f1201ref TO vrEf
      STORE f1201lar TO vlAr
      STORE f1201la1 TO vlA1
      STORE f1201la2 TO vlA2
      STORE f1201la3 TO vlA3
      STORE f1201la4 TO vlA4
      STORE f1201la5 TO vlA5
      STORE f1201la6 TO vlA6
      STORE f1201la7 TO vlA7
      STORE f1201la8 TO vlA8
      STORE f1201la9 TO vlA9
      STORE f1201anc TO vaNc
      STORE f1201an1 TO vaN1
      STORE f1201an2 TO vaN2
      STORE f1201an3 TO vaN3
      STORE f1201an4 TO vaN4
      STORE f1201an5 TO vaN5
      STORE f1201an6 TO vaN6
      STORE f1201an7 TO vaN7
      STORE f1201an8 TO vaN8
      STORE f1201an9 TO vaN9
      STORE f1201alt TO vaLt
      STORE f1201al1 TO vaL1
      STORE f1201al2 TO vaL2
      STORE f1201al3 TO vaL3
      STORE f1201al4 TO vaL4
      STORE f1201al5 TO vaL5
      STORE f1201al6 TO vaL6
      STORE f1201al7 TO vaL7
      STORE f1201al8 TO vaL8
      STORE f1201al9 TO vaL9
      STORE f1201esp TO veSp
      STORE f1201to1 TO vtO1
      STORE f1201to2 TO vtO2
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(02) TO vtIp
           STORE 1 TO vtPo
           STORE 2 TO vcSt, vpEr, vdTr
           STORE 0 TO vmV1, vmV2, vsOl, vuSd, vsTo
      ELSE
           STORE f2111tip TO vtIp
           SELECT tiP_prod
           SEEK vtIp
           IF EOF()
                STORE 1 TO vtPo
                STORE 2 TO vpEr, vdTr
                STORE " " TO veNt
           ELSE
                STORE f9211tpo TO vtPo
                STORE f9211ent TO veNt
                STORE f9211per TO vpEr
                STORE f9211det TO vdTr
                IF vpEr=0
                     STORE 2 TO vpEr
                ENDIF
                IF vdTr=0
                     STORE 2 TO vdTr
                ENDIF
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111md1 TO vmD1
           STORE f2111md2 TO vmD2
           STORE f2111md3 TO vmD3
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111fot TO vfOt
           DO CASE
                CASE vlIs=1
                     STORE f2111mv1 TO vmV1
                     STORE f2111mv2 TO vmV2
                CASE vlIs=2
                     STORE f2111mv3 TO vmV1
                     STORE f2111mv4 TO vmV2
                CASE vlIs=3
                     STORE f2111mv5 TO vmV1
                     STORE f2111mv6 TO vmV2
                CASE vlIs=4
                     STORE f2111mv7 TO vmV1
                     STORE f2111mv8 TO vmV2
                CASE vlIs=5
                     STORE f2111mv9 TO vmV1
                     STORE f2111mv0 TO vmV2
                CASE vlIs=6
                     STORE f2111mva TO vmV1
                     STORE f2111mvb TO vmV2
                CASE vlIs=7
                     STORE f2111mvc TO vmV1
                     STORE f2111mvd TO vmV2
                CASE vlIs=8
                     STORE f2111mve TO vmV1
                     STORE f2111mvf TO vmV2
                CASE vlIs=9
                     STORE f2111mvg TO vmV1
                     STORE f2111mvh TO vmV2
                CASE vlIs=10
                     STORE f2111mvi TO vmV1
                     STORE f2111mvj TO vmV2
           ENDCASE
           IF vtPo<>10
                STORE f2111la1 TO vlA1
                STORE f2111la2 TO vlA2
                STORE f2111an1 TO vaN1
                STORE f2111an2 TO vaN2
                DO CASE
                     CASE vlA1=0 .AND. vaN1=0
                          STORE 2 TO vmEd
                     CASE vlA2=0 .AND. vaN2=0
                          STORE 1 TO vmEd
                     CASE vmDd=0
                          STORE 1 TO vmEd
                     CASE vmDd=1
                          STORE 1 TO vmEd
                     CASE vmDd=2
                          STORE 2 TO vmEd
                ENDCASE
           ENDIF
           IF wsW0=1 .AND. mjAl=2
                DO CASE
                     CASE vlIs=1
                          STORE f2111vv1 TO vsOl
                          STORE f2111vv2 TO vuSd
                     CASE vlIs=2
                          STORE f2111vv3 TO vsOl
                          STORE f2111vv4 TO vuSd
                     CASE vlIs=3
                          STORE f2111vv5 TO vsOl
                          STORE f2111vv6 TO vuSd
                     CASE vlIs=4
                          STORE f2111vv7 TO vsOl
                          STORE f2111vv8 TO vuSd
                     CASE vlIs=5
                          STORE f2111vv9 TO vsOl
                          STORE f2111vv0 TO vuSd
                     CASE vlIs=6
                          STORE f2111vva TO vsOl
                          STORE f2111vvb TO vuSd
                     CASE vlIs=7
                          STORE f2111vvc TO vsOl
                          STORE f2111vvd TO vuSd
                     CASE vlIs=8
                          STORE f2111vve TO vsOl
                          STORE f2111vvf TO vuSd
                     CASE vlIs=9
                          STORE f2111vvg TO vsOl
                          STORE f2111vvh TO vuSd
                     CASE vlIs=10
                          STORE f2111vvi TO vsOl
                          STORE f2111vvj TO vuSd
                ENDCASE
                DO CASE
                     CASE vmOn=1
                          STORE f2111vv1 TO vpRo
                     CASE vmOn=2
                          STORE f2111vv2 TO vpRo
                ENDCASE
           ENDIF
      ENDIF
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
           IF wsW0=1
                IF vsOl=0 .AND. vuSd<>0
                     STORE ROUND(vuSd*vtCa, 4) TO vsOl
                ENDIF
                STORE vsOl TO vpRe
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
           IF wsW0=1
                IF vuSd=0 .AND. vsOl<>0
                     STORE ROUND(vsOl/vtCa, 4) TO vuSd
                ENDIF
                STORE vuSd TO vpRe
           ENDIF
      ENDIF
      IF wsW0=1 .AND. (msTp=1 .OR. msTp=3) .AND. (vcSt=1 .AND. vsTo-vcAn<0)
           SELECT deT_ped
           SKIP
           LOOP
      ENDIF
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE ftM1can+vcAn TO vcAn
           STORE 2 TO viOm
      ELSE
           STORE 1 TO viOm
      ENDIF
      DO grA_1200b IN PVI1200B
      SELECT deT_ped
      SKIP
 ENDDO
 SELECT teMporal
 SET ORDER TO
 SELECT itE_ped
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc=vtD1+vsE1+vdO1
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
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtD1+vsE1+vdO1
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
      DO CASE
           CASE EOF()
                STORE 1 TO cpRe
           CASE vlIs=1 .AND. vmOn=1
                IF f2111vv1=0 .AND. f2111vv2<>0
                     STORE ROUND(f2111vv2*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv1 TO cpRe
                ENDIF
           CASE vlIs=1 .AND. vmOn=2
                IF f2111vv2=0 .AND. f2111vv1<>0
                     STORE ROUND(f2111vv1/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv2 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=1
                IF f2111vv3=0 .AND. f2111vv4<>0
                     STORE ROUND(f2111vv4*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv3 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=2
                IF f2111vv4=0 .AND. f2111vv3<>0
                     STORE ROUND(f2111vv3/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv4 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=1
                IF f2111vv5=0 .AND. f2111vv6<>0
                     STORE ROUND(f2111vv6*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv5 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=2
                IF f2111vv6=0 .AND. f2111vv5<>0
                     STORE ROUND(f2111vv5/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv6 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=1
                IF f2111vv7=0 .AND. f2111vv8<>0
                     STORE ROUND(f2111vv8*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv7 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=2
                IF f2111vv8=0 .AND. f2111vv7<>0
                     STORE ROUND(f2111vv7/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv8 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=1
                IF f2111vv9=0 .AND. f2111vv0<>0
                     STORE ROUND(f2111vv0*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv9 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=2
                IF f2111vv0=0 .AND. f2111vv9<>0
                     STORE ROUND(f2111vv9/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv0 TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=1
                IF f2111vva=0 .AND. f2111vvb<>0
                     STORE ROUND(f2111vvb*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vva TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=2
                IF f2111vvb=0 .AND. f2111vva<>0
                     STORE ROUND(f2111vva/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvb TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=1
                IF f2111vvc=0 .AND. f2111vvd<>0
                     STORE ROUND(f2111vvd*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvc TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=2
                IF f2111vvd=0 .AND. f2111vvc<>0
                     STORE ROUND(f2111vvc/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvd TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=1
                IF f2111vve=0 .AND. f2111vvf<>0
                     STORE ROUND(f2111vvf*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vve TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=2
                IF f2111vvf=0 .AND. f2111vve<>0
                     STORE ROUND(f2111vve/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvf TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=1
                IF f2111vvg=0 .AND. f2111vvh<>0
                     STORE ROUND(f2111vvh*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvg TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=2
                IF f2111vvh=0 .AND. f2111vvg<>0
                     STORE ROUND(f2111vvg/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvh TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=1
                IF f2111vvi=0 .AND. f2111vvj<>0
                     STORE ROUND(f2111vvj*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvi TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=2
                IF f2111vvj=0 .AND. f2111vvi<>0
                     STORE ROUND(f2111vvi/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvj TO cpRe
                ENDIF
      ENDCASE
      IF cpRe<=0
           STORE 1 TO cpRe
      ENDIF
      SELECT teMporal_cj
      APPEND BLANK
      REPLACE f2921cod WITH vcOd
      REPLACE f2921cdg WITH vcDg
      REPLACE f2921dcr WITH vdCr
      REPLACE f2921cuv WITH vcUv
      REPLACE f2921nuv WITH vnUv
      REPLACE f2921can WITH vcAn
      REPLACE f2921tot WITH vtOt
      REPLACE f2921pre WITH cpRe
      REPLACE f2921for WITH vfOr
      REPLACE f2921dsp WITH vdSp
      REPLACE f2921dst WITH vdSt
      REPLACE f2921ttt WITH vtTt
      SELECT coN_ped
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal_cj
      SET FILTER TO
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO foR_1200b IN PVI1200B
           IF mkEy=k_Esc
                STORE 99 TO mkEy
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Co2_1200a
 SELECT caB_fact
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Cotizaciones registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO CASE
      CASE mvNd=2 .OR. wnIv="3"
           SET FILTER TO (f1300tdo="CT" .OR. f1300tdo="NP") .AND. f1300est<>"9" .AND. f1300est<>" "
      CASE mvNd=1
           SET FILTER TO (f1300tdo="CT" .OR. f1300tdo="NP") .AND. f1300est<>"9" .AND. f1300est<>" " .AND. f1300ven=vvEn
 ENDCASE
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 STORE f1300tdo TO vtDo
 STORE f1300ser TO vsEr
 STORE f1300doc TO vdOc
 STORE vdIa TO cdIa
 STORE vnOm TO cnOm
 SAVE SCREEN TO vpAn_11
 DO pvC1300w WITH "PVI1200A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_fact
 SET FILTER TO
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cdIa TO vdIa
 STORE cnOm TO vnOm
 IF mkEy=k_Enter
      DO mu1_1200a
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Mu1_1200a
 STORE f1300tdo TO vtD1
 STORE f1300ser TO vsE1
 STORE f1300doc TO vdO1
 STORE f1300tit TO vtIt
 STORE f1300ntt TO vnTt
 STORE f1300cli TO vcLi, xcLi
 STORE f1300suc TO vsUc
 STORE f1300nom TO vnOm
 STORE f1300dir TO vdIr
 STORE f1300dis TO vdIs
 STORE f1300dep TO vdEp
 STORE f1300ruc TO vrUc
 STORE f1300ele TO vdNi
 STORE f1300tel TO vtEl
 STORE f1300lug TO vlUg
 STORE f1300lud TO vlUd
 STORE f1300lup TO vlUp
 STORE f1300ven TO vvEn
 STORE f1300nve TO vnVe
 STORE f1300com TO vcOm
 STORE f1300dtc TO vdTc
 STORE f1300dcl TO vdCl
 STORE f1300swg TO vsWg
 STORE f1300pgd TO vpGd
 STORE f1300mon TO vmOn
 STORE f1300fpa TO vfPa
 STORE f1300nfp TO vnFp
 STORE f1300dia TO vdI1
 STORE f1300tfp TO vtFp
 STORE f1300net TO tnEt
 STORE f1300igv TO tiGv
 STORE f1300tot TO ttOt
 STORE f1300cm1 TO vcM1
 STORE f1300cm2 TO vcM2
 DO CASE
      CASE vmOn=1
           STORE msIg TO vsIg
      CASE vmOn=2
           STORE "US$" TO vsIg
 ENDCASE
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
      STORE f9111tc3 TO vtCa
 ENDIF
 SELECT suCursal
 GOTO TOP
 SEEK vcLi
 STORE 0 TO vnSu
 DO WHILE  .NOT. EOF() .AND. f1102cod=vcLi
      STORE vnSu+1 TO vnSu
      SKIP
 ENDDO
 SELECT clIentes
 IF vsW0=1
      SEEK vcLi
 ELSE
      SEEK vtIt
 ENDIF
 IF  .NOT. EOF()
      STORE f1101tip TO vtCl
      STORE f1101med TO vmDd
      STORE f1101lis TO ulIs
      STORE f1101li2 TO ulI2
      STORE f1101li3 TO ulI3
      STORE f1101cre TO vcRe
      IF vsW0=2
           STORE SPACE(70) TO vnTt
      ELSE
           STORE f1101nom TO vnTt
      ENDIF
 ELSE
      STORE SPACE(02) TO vtCl
      STORE SPACE(70) TO vnTt
      STORE 1 TO vmDd
      STORE 2 TO vcRe
      STORE 0 TO ulI2, ulI3
      DO CASE
           CASE mlIs=0
                STORE 1 TO ulIs
           OTHERWISE
                STORE mlIs TO ulIs
      ENDCASE
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
 DO coLbln
 SELECT caB_fact
 DO noM_1200w IN PVI1200W
 DO luG_1200w IN PVI1200W
 DO dtI_1200w IN PVI1200W
 DO ruC_1200w IN PVI1200W
 DO drC_1200w IN PVI1200W
 DO dvE_1200w IN PVI1200W
 DO tcA_1200w IN PVI1200W
 DO piG_1200w IN PVI1200W
 DO nfP_1200w IN PVI1200W
 DO dcT_1200w IN PVI1200W WITH 1
 DO swG_1200w IN PVI1200W WITH "N"
 DO toT_1200w IN PVI1200W WITH "N"
 DO coLbln
 @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO caL_1200w IN PVI1200W
 DO boT_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boR_1200a IN PVI1200A
 SELECT deT_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 STORE ifIl TO vfIl, ufIl
 STORE 00 TO tvAl, tpEr, vpDc, vdCt, irEc, vrEc, urEc, frEc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtD1+vsE1+vdO1
      STORE f1301cod TO vcOd
      STORE f1301des TO vdEs
      STORE f1301dcr TO vdCr
      STORE f1301cuv TO vcUv
      STORE f1301nuv TO vnUv
      STORE f1301cuc TO vcUc
      STORE f1301nuc TO vnUc
      STORE f1301med TO vmEd
      STORE f1301can TO vcAn
      STORE f1301pie TO vpIe
      STORE f1301sol TO vsOl
      STORE f1301usd TO vuSd
      STORE f1301pre TO vpRe
      STORE f1301pro TO vpRo
      STORE f1301pr1 TO vpR1
      STORE f1301md1 TO vmD1
      STORE f1301md2 TO vmD2
      STORE f1301md3 TO vmD3
      STORE f1301pdc TO vpDc
      STORE f1301dct TO vdCt
      STORE f1301ref TO vrEf
      STORE f1301lar TO vlAr
      STORE f1301la1 TO vlA1
      STORE f1301la2 TO vlA2
      STORE f1301la3 TO vlA3
      STORE f1301la4 TO vlA4
      STORE f1301la5 TO vlA5
      STORE f1301la6 TO vlA6
      STORE f1301la7 TO vlA7
      STORE f1301la8 TO vlA8
      STORE f1301la9 TO vlA9
      STORE f1301anc TO vaNc
      STORE f1301an1 TO vaN1
      STORE f1301an2 TO vaN2
      STORE f1301an3 TO vaN3
      STORE f1301an4 TO vaN4
      STORE f1301an5 TO vaN5
      STORE f1301an6 TO vaN6
      STORE f1301an7 TO vaN7
      STORE f1301an8 TO vaN8
      STORE f1301an9 TO vaN9
      STORE f1301alt TO vaLt
      STORE f1301al1 TO vaL1
      STORE f1301al2 TO vaL2
      STORE f1301al3 TO vaL3
      STORE f1301al4 TO vaL4
      STORE f1301al5 TO vaL5
      STORE f1301al6 TO vaL6
      STORE f1301al7 TO vaL7
      STORE f1301al8 TO vaL8
      STORE f1301al9 TO vaL9
      STORE f1301esp TO veSp
      STORE f1301to1 TO vtO1
      STORE f1301to2 TO vtO2
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(02) TO vtIp
           STORE 1 TO vtPo
           STORE 2 TO vcSt, vpEr, vdTr
           STORE 0 TO vmV1, vmV2, vsOl, vuSd, vsTo
      ELSE
           STORE f2111tip TO vtIp
           SELECT tiP_prod
           SEEK vtIp
           IF EOF()
                STORE 1 TO vtPo
                STORE 2 TO vpEr, vdTr
                STORE " " TO veNt
           ELSE
                STORE f9211tpo TO vtPo
                STORE f9211ent TO veNt
                STORE f9211per TO vpEr
                STORE f9211det TO vdTr
                IF vpEr=0
                     STORE 2 TO vpEr
                ENDIF
                IF vdTr=0
                     STORE 2 TO vdTr
                ENDIF
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111md1 TO vmD1
           STORE f2111md2 TO vmD2
           STORE f2111md3 TO vmD3
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111fot TO vfOt
           DO CASE
                CASE vlIs=1
                     STORE f2111mv1 TO vmV1
                     STORE f2111mv2 TO vmV2
                CASE vlIs=2
                     STORE f2111mv3 TO vmV1
                     STORE f2111mv4 TO vmV2
                CASE vlIs=3
                     STORE f2111mv5 TO vmV1
                     STORE f2111mv6 TO vmV2
                CASE vlIs=4
                     STORE f2111mv7 TO vmV1
                     STORE f2111mv8 TO vmV2
                CASE vlIs=5
                     STORE f2111mv9 TO vmV1
                     STORE f2111mv0 TO vmV2
                CASE vlIs=6
                     STORE f2111mva TO vmV1
                     STORE f2111mvb TO vmV2
                CASE vlIs=7
                     STORE f2111mvc TO vmV1
                     STORE f2111mvd TO vmV2
                CASE vlIs=8
                     STORE f2111mve TO vmV1
                     STORE f2111mvf TO vmV2
                CASE vlIs=9
                     STORE f2111mvg TO vmV1
                     STORE f2111mvh TO vmV2
                CASE vlIs=10
                     STORE f2111mvi TO vmV1
                     STORE f2111mvj TO vmV2
           ENDCASE
           IF vtPo<>10
                STORE f2111la1 TO vlA1
                STORE f2111la2 TO vlA2
                STORE f2111an1 TO vaN1
                STORE f2111an2 TO vaN2
                DO CASE
                     CASE vlA1=0 .AND. vaN1=0
                          STORE 2 TO vmEd
                     CASE vlA2=0 .AND. vaN2=0
                          STORE 1 TO vmEd
                     CASE vmDd=0
                          STORE 1 TO vmEd
                     CASE vmDd=1
                          STORE 1 TO vmEd
                     CASE vmDd=2
                          STORE 2 TO vmEd
                ENDCASE
           ENDIF
           IF mjAl=2
                DO CASE
                     CASE vlIs=1
                          STORE f2111vv1 TO vsOl
                          STORE f2111vv2 TO vuSd
                     CASE vlIs=2
                          STORE f2111vv3 TO vsOl
                          STORE f2111vv4 TO vuSd
                     CASE vlIs=3
                          STORE f2111vv5 TO vsOl
                          STORE f2111vv6 TO vuSd
                     CASE vlIs=4
                          STORE f2111vv7 TO vsOl
                          STORE f2111vv8 TO vuSd
                     CASE vlIs=5
                          STORE f2111vv9 TO vsOl
                          STORE f2111vv0 TO vuSd
                     CASE vlIs=6
                          STORE f2111vva TO vsOl
                          STORE f2111vvb TO vuSd
                     CASE vlIs=7
                          STORE f2111vvc TO vsOl
                          STORE f2111vvd TO vuSd
                     CASE vlIs=8
                          STORE f2111vve TO vsOl
                          STORE f2111vvf TO vuSd
                     CASE vlIs=9
                          STORE f2111vvg TO vsOl
                          STORE f2111vvh TO vuSd
                     CASE vlIs=10
                          STORE f2111vvi TO vsOl
                          STORE f2111vvj TO vuSd
                ENDCASE
                DO CASE
                     CASE vmOn=1
                          STORE f2111vv1 TO vpRo
                     CASE vmOn=2
                          STORE f2111vv2 TO vpRo
                ENDCASE
           ENDIF
      ENDIF
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
           IF wsW0=1
                IF vsOl=0 .AND. vuSd<>0
                     STORE ROUND(vuSd*vtCa, 4) TO vsOl
                ENDIF
                STORE vsOl TO vpRe
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
           IF wsW0=1
                IF vuSd=0 .AND. vsOl<>0
                     STORE ROUND(vsOl/vtCa, 4) TO vuSd
                ENDIF
                STORE vuSd TO vpRe
           ENDIF
      ENDIF
      IF wsW0=1 .AND. (msTp=1 .OR. msTp=3) .AND. (vcSt=1 .AND. vsTo-vcAn<0)
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      STORE 1 TO viOm
      DO grA_1200b IN PVI1200B
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT itE_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtD1+vsE1+vdO1
      STORE f1302cod TO vcOd
      STORE f1302rcc TO vrCc
      STORE f1302opc TO voPc
      STORE f1302un1 TO vuN1
      STORE f1302un2 TO vuN2
      STORE f1302mla TO vmLa
      STORE f1302man TO vmAn
      STORE f1302p11 TO vp11
      STORE f1302p12 TO vp12
      STORE f1302p21 TO vp21
      STORE f1302p22 TO vp22
      STORE f1302ctd TO vcTd
      STORE f1302ca1 TO vcA1
      STORE f1302ca2 TO vcA2
      STORE f1302ca3 TO vcA3
      STORE f1302ca4 TO vcA4
      STORE f1302por TO vpOr
      STORE f1302mm1 TO vmM1
      STORE f1302mm2 TO vmM2
      STORE f1302mm3 TO vmM3
      STORE f1302mm4 TO vmM4
      STORE f1302cx1 TO vcX1
      STORE f1302cx2 TO vcX2
      STORE f1302cx3 TO vcX3
      STORE f1302cx4 TO vcX4
      STORE f1302cy1 TO vcY1
      STORE f1302cy2 TO vcY2
      STORE f1302cy3 TO vcY3
      STORE f1302cy4 TO vcY4
      STORE f1302pie TO vtPi
      STORE f1302cm1 TO vcMm
      STORE f1302cm2 TO vcMp
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
      SELECT itE_fact
      SKIP
 ENDDO
 SELECT coN_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtD1+vsE1+vdO1
      STORE f1304cod TO vcOd
      STORE f1304cdg TO vcDg
      STORE f1304cun TO vcAn
      STORE f1304can TO vtOt
      STORE f1304for TO vfOr
      STORE f1304dsp TO vdSp
      STORE f1304dst TO vdSt
      STORE f1304ttt TO vtTt
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
      DO CASE
           CASE EOF()
                STORE 1 TO cpRe
           CASE vlIs=1 .AND. vmOn=1
                IF f2111vv1=0 .AND. f2111vv2<>0
                     STORE ROUND(f2111vv2*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv1 TO cpRe
                ENDIF
           CASE vlIs=1 .AND. vmOn=2
                IF f2111vv2=0 .AND. f2111vv1<>0
                     STORE ROUND(f2111vv1/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv2 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=1
                IF f2111vv3=0 .AND. f2111vv4<>0
                     STORE ROUND(f2111vv4*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv3 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=2
                IF f2111vv4=0 .AND. f2111vv3<>0
                     STORE ROUND(f2111vv3/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv4 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=1
                IF f2111vv5=0 .AND. f2111vv6<>0
                     STORE ROUND(f2111vv6*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv5 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=2
                IF f2111vv6=0 .AND. f2111vv5<>0
                     STORE ROUND(f2111vv5/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv6 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=1
                IF f2111vv7=0 .AND. f2111vv8<>0
                     STORE ROUND(f2111vv8*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv7 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=2
                IF f2111vv8=0 .AND. f2111vv7<>0
                     STORE ROUND(f2111vv7/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv8 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=1
                IF f2111vv9=0 .AND. f2111vv0<>0
                     STORE ROUND(f2111vv0*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv9 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=2
                IF f2111vv0=0 .AND. f2111vv9<>0
                     STORE ROUND(f2111vv9/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv0 TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=1
                IF f2111vva=0 .AND. f2111vvb<>0
                     STORE ROUND(f2111vvb*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vva TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=2
                IF f2111vvb=0 .AND. f2111vva<>0
                     STORE ROUND(f2111vva/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvb TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=1
                IF f2111vvc=0 .AND. f2111vvd<>0
                     STORE ROUND(f2111vvd*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvc TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=2
                IF f2111vvd=0 .AND. f2111vvc<>0
                     STORE ROUND(f2111vvc/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvd TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=1
                IF f2111vve=0 .AND. f2111vvf<>0
                     STORE ROUND(f2111vvf*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vve TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=2
                IF f2111vvf=0 .AND. f2111vve<>0
                     STORE ROUND(f2111vve/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvf TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=1
                IF f2111vvg=0 .AND. f2111vvh<>0
                     STORE ROUND(f2111vvh*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvg TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=2
                IF f2111vvh=0 .AND. f2111vvg<>0
                     STORE ROUND(f2111vvg/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvh TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=1
                IF f2111vvi=0 .AND. f2111vvj<>0
                     STORE ROUND(f2111vvj*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvi TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=2
                IF f2111vvj=0 .AND. f2111vvi<>0
                     STORE ROUND(f2111vvi/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvj TO cpRe
                ENDIF
      ENDCASE
      IF cpRe<=0
           STORE 1 TO cpRe
      ENDIF
      SELECT teMporal_cj
      APPEND BLANK
      REPLACE f2921cod WITH vcOd
      REPLACE f2921cdg WITH vcDg
      REPLACE f2921dcr WITH vdCr
      REPLACE f2921cuv WITH vcUv
      REPLACE f2921nuv WITH vnUv
      REPLACE f2921can WITH vcAn
      REPLACE f2921tot WITH vtOt
      REPLACE f2921pre WITH cpRe
      REPLACE f2921for WITH vfOr
      REPLACE f2921dsp WITH vdSp
      REPLACE f2921dst WITH vdSt
      REPLACE f2921ttt WITH vtTt
      SELECT coN_fact
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal_cj
      SET FILTER TO
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO foR_1200b IN PVI1200B
           IF mkEy=k_Esc
                STORE 99 TO mkEy
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO paN_1200b IN PVI1200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO ctO_1200b IN PVI1200B
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
ENDPROC
*
PROCEDURE Tit_1200a
 = INKEY(0.01)
 SELECT clIentes
 SET FILTER TO f1101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnOm))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "1101", "V", "F1101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f1101cod TO vtIt
      STORE f1101nom TO vnTt
      STORE f1101med TO vmDd
      STORE f1101cre TO vcRe
      DO dtI_1200w IN PVI1200W
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
           DO dvE_1200w IN PVI1200W
      ENDIF
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Fpa_1200a
 = INKEY(0.01)
 SELECT paGos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB6, vcB6
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
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9112fpa<>vfPa
      STORE f9112fpa TO vfPa
      STORE f9112nfp TO vnFp
      STORE f9112tip TO vtFp
      STORE f9112dia TO vdI1
      DO nfP_1200w IN PVI1200W
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ven_1200a
 = INKEY(0.01)
 SELECT veNdedor
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
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
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9113cod<>vvEn
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      STORE f9113com TO vcOm
      DO dvE_1200w IN PVI1200W
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dir_1200a
 PARAMETER ppRg
 = INKEY(0.01)
 SELECT suCursal
 GOTO TOP
 SEEK vcLi
 IF EOF()
      STORE "Este Cliente no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 0 TO vnSu
 DO WHILE  .NOT. EOF() .AND. f1102cod=vcLi
      STORE vnSu+1 TO vnSu
      SKIP
 ENDDO
 IF vnSu=1
      STORE "Este Cliente solo tiene Local Principal..." TO mmSj
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
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f1102suc<>vsUc
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
      DO drC_1200w IN PVI1200W
      IF ppRg="1"
           DO dcT_1200w IN PVI1200W WITH 1
      ELSE
           DO dcT_1200w IN PVI1200W WITH 2
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE BF6_1200a
 IF vsW0=2
      DO prEsiona WITH "2", "VARIOS", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "BUSCAR", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 ELSE
      DO prEsiona WITH "1", "VARIOS", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB8, vcB8
 ENDIF
 DO CASE
      CASE LEN(ALLTRIM(vtIt))=0 .OR. vsW0=1
           DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
      OTHERWISE
           DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tb3_1200a
 IF f9112dia<>0 .AND. vcRe=2
      STORE "Este Cliente no tiene Opción de Crédito..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 IF f9112tip .AND. vcRe=2
      STORE "Este Cliente no tiene Opción de Canje de Letras..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 = INKEY(0.01)
 STORE k_Enter TO mkEy
 DEACTIVATE POPUP vtB3
ENDPROC
*
PROCEDURE Tm2_1200a
 DIMENSION afIl[62, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PES"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PRO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PR1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PDC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MD1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MD2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MD3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LAR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ANC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ALT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL8"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AL9"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1REF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 60
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PER"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DTR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DPP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TMP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 157
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tmp_1200a
 DO tm2_1200a IN PVI1200A
 STORE "TM01A"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01A"+ntM1+meXt TO mdBf
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
 INDEX ON ALLTRIM(ftM1cod)+"*" TAG ftM1cod
 INDEX ON STR(ftM1per, 1, 0)+ftM1tip+ALLTRIM(ftM1cod)+"*"+STR(RECNO(), 4,  ;
       0) TAG ftM1per
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 CLOSE INDEXES
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Tm1_1200a
 DIMENSION afIl[14, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2921COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2921CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
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
 afIl[x, 3] = 60
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
 STORE "TM01"+ntM5+meXt TO mdBf
 DO WHILE .T.
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM5+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(f2921cod)+"*"+ALLTRIM(f2921cdg)+"*" TAG f2921cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[14, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM6CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE "TM01"+ntM6+meXt TO mdBf
 DO WHILE .T.
      ntM6 = STRTRAN(STR(VAL(ntM6)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM6+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM6="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON SUBSTR(DTOC(ftM6fem), 7, 4)+SUBSTR(DTOC(ftM6fem), 4, 2)+ ;
       SUBSTR(DTOC(ftM6fem), 1, 2)+ftM6tdo+ftM6ser+ftM6doc TAG ftM6fem
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[09, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM7COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM7LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM7AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM7AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM7CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM7cod)+"*" TAG ftM7cod
 INDEX ON UPPER(ftM7des)+ALLTRIM(ftM7cod)+"*" TAG ftM7des
 CLOSE INDEXES
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Tm8_1200a
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM8TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM8+meXt TO mdBf
 DO WHILE .T.
      ntM8 = STRTRAN(STR(VAL(ntM8)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM8+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM8="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM8tdo+ftM8ser+ftM8doc TAG ftM8doc
 CLOSE INDEXES
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Abr_1200a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Clientes no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1104", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cod_Cliente
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1104COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "1202", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "1302", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ite_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Productos y Servicios no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pro_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2920", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Conjuntos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2920COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 17
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
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Kardex
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Cli
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Clientes no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cambio
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
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
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pagos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Formas de Pago no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedor
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidad
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Unidades de Medida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "9221", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Primero
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9221DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9222", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Segundo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9222DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "9223", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tercero
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9223DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "9224", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuarto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9224DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "9225", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Quinto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9225DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9228", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sexto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9228DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9229", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Septimo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9229DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 35
 DO prO_virtual WITH 1
 SELECT 36
 STORE "TM01A"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 37
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 38
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 39
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM4COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 40
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_Cj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 41
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM6FEM DESCENDING
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 42
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM7COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 43
 STORE "TM01"+ntM8+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM8DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bor_1200a
 SELECT teMporal
 SET FILTER TO
 SET ORDER TO
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_cj
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 FLUSH
 = INKEY(0.01)
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
      CASE mfIl>=ifIl-1.992 .AND. mfIl<=ifIl-0.778 .AND. mcCc>=ucLn+3.8  ;
           .AND. mcCc<=ucLn+8
           STORE 99 TO mkEy
           DO prE_docum WITH "¿Desea Borrar Detalle y Cabecera?"
           IF moPc$"Ss"
                DO boR_1200a IN PVI1200A
                DO liM_1200w IN PVI1200W
                STORE SPACE(01) TO tdPp
                DO noM_1200w IN PVI1200W
                DO luG_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
                DO dvE_1200w IN PVI1200W
                DO tcA_1200w IN PVI1200W
                DO piG_1200w IN PVI1200W
                DO nfP_1200w IN PVI1200W
                DO dcT_1200w IN PVI1200W WITH 1
                DO swG_1200w IN PVI1200W WITH "N"
                DO toT_1200w IN PVI1200W WITH "S"
                IF mdEs<3
                     DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
                     DO coLsc7
                     @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
                ENDIF
                DO coL_fondo
                @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
                DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
                DO boT_1200w IN PVI1200W WITH "1"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      CASE mfIl>=mfI0 .AND. mfIl<=mfI0+2.578 .AND. mcCc>=mcO0-8.6 .AND.  ;
           mcCc<=mcO0-2 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
           DATE()<=mfHa
           STORE 1 TO viTe
           STORE k_F8 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>1 .AND.  ;
           mcCc>=vcL4-9.8 .AND. mcCc<=vcL4-3
           STORE 01 TO vmOn
           STORE msIg TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>2 .AND.  ;
           mcCc>=vcL4-3 .AND. mcCc<=vcL4+6.2
           STORE 02 TO vmOn
           STORE "US$" TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. mcCc>=mcO0+13  ;
           .AND. mcCc<=mcO0+30.4 .AND. vsWg<>1
           STORE 01 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. mcCc>=mcO0+30.4  ;
           .AND. mcCc<=mcO0+42.4 .AND. vsWg<>2
           STORE 02 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1200w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9
           STORE 01 TO viTe
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.2  ;
           .AND. mcCc<=vcB2+3.8 .AND. vsW0=1
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.2  ;
           .AND. mcCc<=vcB3+3.8 .AND. vsW0=1
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. mcCc>=vcB4-0.2  ;
           .AND. mcCc<=vcB4+3.8
           STORE 01 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. mcCc>=vcB5-0.2  ;
           .AND. mcCc<=vcB5+3.8 .AND. vsW0=1
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB6-0.028 .AND. mfIl<=vfB6+1.185 .AND. mcCc>=vcB6-0.2  ;
           .AND. mcCc<=vcB6+3.8
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB7-0.028 .AND. mfIl<=vfB7+1.185 .AND. mcCc>=vcB7-0.2  ;
           .AND. mcCc<=vcB7+3.8
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB8-0.028 .AND. mfIl<=vfB8+1.185 .AND. mcCc>=vcB8-0.2  ;
           .AND. mcCc<=vcB8+3.8
           STORE k_F4 TO mkEy
      CASE mfIl>=vfB9-0.028 .AND. mfIl<=vfB9+1.185 .AND. mcCc>=vcB9-0.2  ;
           .AND. mcCc<=vcB9+3.8 .AND. vsW0=2 .AND. LEN(ALLTRIM(vtIt))<>0
           STORE 99 TO mkEy
           STORE 00 TO vmDd
           STORE SPACE(04) TO vtIt
           STORE SPACE(70) TO vnTt
           DO dtI_1200w IN PVI1200W
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. viTe<>1 .AND. mcCc>= ;
           mcO0+1 .AND. mcCc<=mcO0+vtM1+13.6
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.4 .AND. mfIl<=mfI0+3.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM1+13.6 .AND. vsW0=2 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM2+13.6 .AND. vsW0=2 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. vsW0=2 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL2-6.1  ;
           .AND. mcCc<=vcL2+15.7 .AND. vsW0=2 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL3-5.3  ;
           .AND. mcCc<=vcL3+12.3 .AND. vsW0=2 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM3+13.6 .AND. ((vsW0=1 .AND. viTe<>2) .OR. (vsW0= ;
           2 .AND. viTe<>7))
           DO CASE
                CASE vsW0=1
                     STORE 2 TO ciTx
                CASE vsW0=2
                     STORE 7 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+vtM2+13.6 .AND. ((vsW0=1 .AND. viTe<>3) .OR.  ;
           (vsW0=2 .AND. viTe<>8))
           DO CASE
                CASE vsW0=1
                     STORE 3 TO ciTx
                CASE vsW0=2
                     STORE 8 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. ((vsW0=1 .AND. viTe<>4) .OR. (vsW0= ;
           2 .AND. viTe<>9))
           DO CASE
                CASE vsW0=1
                     STORE 4 TO ciTx
                CASE vsW0=2
                     STORE 9 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. mcCc>=vcL4-11.2  ;
           .AND. mcCc<=vcL4+12.6 .AND. ((vsW0=1 .AND. viTe<>5) .OR. (vsW0= ;
           2 .AND. viTe<>10))
           DO CASE
                CASE vsW0=1
                     STORE 5 TO ciTx
                CASE vsW0=2
                     STORE 10 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.328 .AND. mpIg=1 .AND.  ;
           mcCc>=vcL5-8.5 .AND. mcCc<=vcL5+8.1 .AND. ((vsW0=1 .AND. viTe<> ;
           6) .OR. (vsW0=2 .AND. viTe<>11))
           DO CASE
                CASE vsW0=1
                     STORE 6 TO ciTx
                CASE vsW0=2
                     STORE 11 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+9.4 .AND. mfIl<=mfI0+10.614 .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+110.8 .AND. ((vsW0=1 .AND. viTe<>7) .OR.  ;
           (vsW0=2 .AND. viTe<>12))
           DO CASE
                CASE vsW0=1
                     STORE 7 TO ciTx
                CASE vsW0=2
                     STORE 12 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+10.9 .AND. mfIl<=mfI0+12.042 .AND. mcCc>=mcO0+19.2  ;
           .AND. mcCc<=mcO0+110.6 .AND. ((vsW0=1 .AND. viTe<>8) .OR.  ;
           (vsW0=2 .AND. viTe<>13))
           DO CASE
                CASE vsW0=1
                     STORE 8 TO ciTx
                CASE vsW0=2
                     STORE 13 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.614 .AND. mcCc>=mcO0+43  ;
           .AND. mcCc<=mcO0+53.2 .AND. ((vsW0=1 .AND. viTe<>9) .OR. (vsW0= ;
           2 .AND. viTe<>14))
           DO CASE
                CASE vsW0=1
                     STORE 9 TO ciTx
                CASE vsW0=2
                     STORE 14 TO ciTx
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_1200a
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
PROCEDURE Hl1_1200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En este programa, sólo se pueden crear Pedidos de Ventas nuevos.  Los"
 @ pfIl+1, 01 SAY  ;
   "clientes, no necesariamente tienen que estar registrados en el Sistema; la"
 @ pfIl+2, 01 SAY "fecha tiene que tener el Tipo de Cambio registrado."
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
 IF viTe=1 .AND. vsW0=1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+0, 21 SAY "Consulta de Clientes registrados"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "F4" STYLE "BT"
 @ pfIl, 21 SAY "Consultar Titulares"
 STORE pfIl+1 TO pfIl
 DO CASE
      CASE vsW0=1
           @ pfIl, 19 SAY ":" STYLE "BT"
           @ pfIl, 01 SAY "F5" STYLE "BT"
           @ pfIl, 21 SAY "Seleccionar Sucursal de Cliente"
           STORE pfIl+1 TO pfIl
      CASE vsW0=2 .AND. viTe=6
           @ pfIl, 19 SAY ":" STYLE "BT"
           @ pfIl, 01 SAY "F5" STYLE "BT"
           @ pfIl, 21 SAY "Seleccionar DNI/C.Ext/Pas./CDI/Otros"
           STORE pfIl+1 TO pfIl
 ENDCASE
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "F6" STYLE "BT"
 @ pfIl+1, 01 SAY "F7" STYLE "BT"
 @ pfIl+0, 21 SAY "Cambiar Opción de Clientes existentes a nuevos y vic."
 @ pfIl+1, 21 SAY "Elegir Forma de Pago"
 STORE pfIl+2 TO pfIl
 IF viTe=1 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F8" STYLE "BT"
      @ pfIl, 21 SAY "Cambiar Nombre de Cliente a Tipo Oracion"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "F9" STYLE "BT"
 @ pfIl+1, 01 SAY "ALT C" STYLE "BT"
 @ pfIl+2, 01 SAY "ALT Z" STYLE "BT"
 @ pfIl+0, 21 SAY "Elegir Vendedor"
 @ pfIl+1, 21 SAY "Copiar Detalle de Otro Pedido"
 @ pfIl+2, 21 SAY "Copiar Detalle de Cotización/NP"
 STORE pfIl+3 TO pfIl
 IF viTe=1 .AND. vsW0=1
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
 IF viTe<>1
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
 DO deL_file1 IN PVI1200A
 DO deL_1200w IN PVI1200W
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
