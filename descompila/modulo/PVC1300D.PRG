 = INKEY(0.01)
 SELECT seLeccion
 GOTO TOP
 IF BOF()
      STORE "No se ha seleccionado ningún producto..." TO mmSj
      DO poNmsj
      = INKEY(1)
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE SPACE(80) TO mmSj
 STORE "GR" TO vtD2
 STORE msEr(04) TO vsE2
 STORE "  " TO vdO2
 DO nuM_1300d
 IF mkEy=k_Esc
      UNLOCK ALL
      RETURN
 ENDIF
 SELECT caB_remi
 SEEK vtD2+vsE2+vdO2
 IF  .NOT. EOF()
      DO CASE
           CASE f2600est="2"
                STORE "Guía de Remisión esta IMPRESA..." TO mmSj
                DO poNmsj
                = INKEY(1)
                STORE 99 TO mkEy
                RETURN
           CASE f2600est="9"
                STORE "Guía de Remisión esta ANULADA..." TO mmSj
                DO poNmsj
                = INKEY(1)
                STORE 99 TO mkEy
                RETURN
           CASE f2600mot<>1
                STORE "Guía de Remisión no es de Venta..." TO mmSj
                DO poNmsj
                = INKEY(1)
                STORE 99 TO mkEy
                RETURN
           OTHERWISE
                STORE f2600cm2 TO vcM2
      ENDCASE
 ELSE
      STORE " " TO vcM2
 ENDIF
 SET CONFIRM ON
 SET READBORDER ON
 STORE 99 TO mkEy
 DO p00_1300d
 IF mkEy=k_Esc
      UNLOCK ALL
      RETURN
 ENDIF
 STORE 1 TO viTe
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300d
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET CONFIRM ON
           SET READBORDER ON
           DO p00_1300d
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl1_1300d
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F12
                DO rs1_1300d
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET CONFIRM ON
                SET READBORDER ON
                DO p00_1300d
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=3
                DO alM_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=4
                DO trA_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=8
                DO chO_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=10
                DO ayU_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=12
                DO ca1_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=14
                DO ca2_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=19
                DO al1_1300d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=20
                DO tr1_1300d
           CASE mkEy=k_Ctrl_del .AND. viTe=3
                STORE SPACE(04) TO vaLm
                STORE SPACE(25) TO vpPd, vpPp
                STORE SPACE(70) TO vnAl, vpPa, vpPn
                STORE msEr(04) TO vsE2
                DO nuM_1300d
                DO daL_1300d
           CASE mkEy=k_Ctrl_del .AND. viTe=4
                STORE SPACE(04) TO vtRa
                STORE SPACE(11) TO vtRu
                STORE SPACE(25) TO vtDs, vtDp
                STORE SPACE(70) TO vtNo, vtDi
                DO dtR_1300d
           CASE mkEy=k_Ctrl_del .AND. viTe=8
                DO coLbln
                STORE SPACE(02) TO vcC1
                STORE SPACE(70) TO vcHo
                STORE SPACE(30) TO vlC1
                @vFI1+9,vCO2+16 Say vCHO Font "&mLetAri",9 Style "NQ" Size 1,48   Pict "@S50"
                @vFI1+9,vCO2+97 Say vLC1 Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S27"
           CASE mkEy=k_Ctrl_del .AND. viTe=10
                DO coLbln
                STORE SPACE(02) TO vcC2
                STORE SPACE(70) TO vcH2
                STORE SPACE(30) TO vlC2
                @vFI1+10.5,vCO2+16 Say vCH2 Font "&mLetAri",9 Style "NQ" Size 1,48   Pict "@S50"
                @vFI1+10.5,vCO2+97 Say vLC2 Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S26"
           CASE mkEy=k_Ctrl_del .AND. viTe=12
                DO coLbln
                STORE SPACE(02) TO vcR1
                STORE SPACE(10) TO vpLc
                STORE SPACE(20) TO vmR1, vcIm
                @vFI1+12.0,vCO2+16 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
                @vFI1+12.0,vCO2+69 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
                @vFI1+13.5,vCO2+97 Say vCIM Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S20"
           CASE mkEy=k_Ctrl_del .AND. viTe=14
                DO coLbln
                STORE SPACE(02) TO vcR2
                STORE SPACE(10) TO vpL2
                STORE SPACE(20) TO vmR2
                @vFI1+13.5,vCO2+16 Say vMR2 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
                @vFI1+13.5,vCO2+69 Say vPL2 Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
           CASE mkEy=k_Ctrl_del .AND. viTe=19
                DO coLbln
                STORE SPACE(04) TO vaL1
                STORE SPACE(25) TO xpPd, xpPp
                STORE SPACE(70) TO vnA1, xpPa, xpPn
                @vFI1+18.5,vCO2+25 Say vNA1 Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
           CASE mkEy=k_Ctrl_del .AND. viTe=20
                DO coLbln
                STORE SPACE(04) TO vtR1
                STORE SPACE(11) TO vtRr
                STORE SPACE(70) TO vtN1
                @vFI1+20,vCO2+19 Say vTN1 Font "&mLetAri",9 Style "NQ" Size 1,64 Pict "@S67"
           CASE mkEy=k_Ctrl_left .AND. viTe<>02 .AND. viTe<>07 .AND. viTe<> ;
                09 .AND. viTe<>11 .AND. viTe<>13 .AND. viTe<>15 .AND.  ;
                viTe<>16 .AND. viTe<>23
                STORE "No hay mas campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Este es el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=23
                STORE "Este es el ultimo campo..." TO mmSj
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=23
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=23
                               STORE 99 TO mkEy
                          CASE (viTe>=6 .AND. viTe<=10) .OR. viTe=01 .OR.  ;
                               viTe=12 .OR. viTe=13 .OR. viTe=15
                               STORE viTe+2 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300d
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
                          CASE viTe=11
                               STORE 16 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300d
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
                          CASE viTe=14
                               STORE 17 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300d
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
                          CASE viTe=22
                               STORE 23 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_1300d
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
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE (viTe>=7 .AND. viTe<=12) .OR. viTe=3 .OR. viTe= ;
                          14 .OR. viTe=15 .OR. viTe=23
                          STORE viTe-2 TO viTe
                     CASE viTe=13
                          STORE 10 TO viTe
                     CASE viTe=16
                          STORE 11 TO viTe
                     CASE viTe=17
                          STORE 14 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_home
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 23 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_1300d
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
                STORE 23 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_1300d
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                DO coLbln
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 1 TO viTe
                     DO grA_1300d
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Tab
                          SELECT teMporal_6
                          ZAP
                          REINDEX
                          SELECT teMporal_7
                          ZAP
                          REINDEX
                          SELECT seLeccion
                          ZAP
                          REINDEX
                          SELECT trAnsportista
                          STORE 99 TO mkEy
                          DO orD_0000a WITH "9215", "U", "F9215COD", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          SELECT alMacen
                          DO orD_0000a WITH "9214", "U", "F9214COD", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          IF LEN(ALLTRIM(vtD2))<>0
                               STORE vtD2 TO vtDo
                               SELECT tmP_doc2
                               GOTO TOP
                               DO WHILE  .NOT. EOF()
                                    STORE f2600ser TO vsEr
                                    STORE f2600doc TO vdOc
                                    SELECT caB_remi
                                    SEEK vtDo+vsEr+vdOc
                                    DO paI2600z WITH "1"
                                    SELECT tmP_doc2
                                    SKIP
                               ENDDO
                               UNLOCK ALL
                          ENDIF
                          SELECT trAnsportista
                          STORE 99 TO mkEy
                          DO orD_0000a WITH "9215", "U", "F9215NOM", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          SELECT alMacen
                          DO orD_0000a WITH "9214", "U", "F9214NOM", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE xtDo TO vtDo
                          STORE xsEr TO vsEr
                          STORE xdOc TO vdOc
                          STORE xfEm TO vfEm
                          STORE vrEc TO xrEc
                          STORE vfFs TO cfFs
                          RESTORE SCREEN FROM vpAn_12
                          SELECT deT_fact
                          GOTO TOP
                          SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                          DO paN_1300c
                          STORE xrEc TO vrEc
                          STORE cfFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                          SAVE SCREEN TO vpAn_12
                     ENDIF
                     EXIT
                ENDIF
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=3 .AND. LEN(ALLTRIM(vaLm))<>0
                DO coL_beige
                @vFI1+02.5,vCO2+25 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO daL_1300d
           CASE viTe=4 .AND. LEN(ALLTRIM(vtRa))<>0
                DO coL_beige
                @vFI1+04.0,vCO2+19 Say vTNO Font "&mLetAri",9 Style "NQ" Size 1,64.0 Pict "@S67"
                mkEy = INKEY(0, "HM")
                DO dtR_1300d
           CASE viTe=19 .AND. LEN(ALLTRIM(vaL1))<>0
                DO coL_beige
                @vFI1+18.5,vCO2+25 Say vNA1 Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coLsc7
                @vFI1+18.5,vCO2+25 Say vNA1 Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
           CASE viTe=20 .AND. LEN(ALLTRIM(vtR1))<>0
                DO coL_beige
                @vFI1+20.0,vCO2+19 Say vTN1 Font "&mLetAri",9 Style "NQ" Size 1,64.0 Pict "@S67"
                mkEy = INKEY(0, "HM")
                DO coLsc7
                @vFI1+20.0,vCO2+19 Say vTN1 Font "&mLetAri",9 Style "NQ" Size 1,64.0 Pict "@S67"
           OTHERWISE
                DO CASE
                     CASE viTe=1
                          @vFI1+00.5,vCO2+016.0 Get  vFE1 Font "&mLetRom",10 Style "BQ" Size 1,10.3 Color ,&mColBlN
                     CASE viTe=2
                          @vFI1+00.5,vCO2+097.2 Get  tPES Font "&mLetAri",9  Style "NQ" Size 1,16.5 Pict "999999.999" Color ,&mColBlN
                     CASE viTe=3
                          @vFI1+02.5,vCO2+025.0 Edit vNAL Font "&mLetAri",9  Style "NQ" Size 1,83.9,70
                     CASE viTe=4
                          @vFI1+04.0,vCO2+019.0 Edit vTNO Font "&mLetAri",9  Style "NQ" Size 1,64.0,70
                     CASE viTe=5
                          @vFI1+05.5,vCO2+034.0 Edit vLUG Font "&mLetAri",9  Style "NQ" Size 1,88,70
                     CASE viTe=6
                          @vFI1+07.0,vCO2+034.0 Edit vLUD Font "&mLetAri",9  Style "NQ" Size 1,25,25
                     CASE viTe=7
                          @vFI1+07.0,vCO2+097.0 Edit vLUP Font "&mLetAri",9  Style "NQ" Size 1,25,25
                     CASE viTe=8
                          @vFI1+09.0,vCO2+016.0 Edit vCHO Font "&mLetAri",9  Style "NQ" Size 1,48,70
                     CASE viTe=9
                          @vFI1+09.0,vCO2+097.0 Edit vLC1 Font "&mLetAri",9  Style "NQ" Size 1,24.6,30
                     CASE viTe=10
                          @vFI1+10.5,vCO2+016.0 Edit vCH2 Font "&mLetAri",9  Style "NQ" Size 1,48,70
                     CASE viTe=11
                          @vFI1+10.5,vCO2+097.0 Edit vLC2 Font "&mLetAri",9  Style "NQ" Size 1,24.6,30
                     CASE viTe=12
                          @vFI1+12.0,vCO2+016.0 Edit vMR1 Font "&mLetAri",9  Style "NQ" Size 1,25,20
                     CASE viTe=13
                          @vFI1+12.0,vCO2+069.0 Edit vPLC Font "&mLetAri",9  Style "NQ" Size 1,15,10
                     CASE viTe=14
                          @vFI1+13.5,vCO2+016.0 Edit vMR2 Font "&mLetAri",9  Style "NQ" Size 1,25,20
                     CASE viTe=15
                          @vFI1+13.5,vCO2+069.0 Edit vPL2 Font "&mLetAri",9  Style "NQ" Size 1,15,10
                     CASE viTe=16
                          @vFI1+13.5,vCO2+097.0 Edit vCIM Font "&mLetAri",9  Style "NQ" Size 1,24.6,20
                     CASE viTe=17
                          @vFI1+15.0,vCO2+020.5 Edit vCM1 Font "&mLetAri",9  Style "NQ" Size 1,101,70
                     CASE viTe=18
                          DO coL_fondo
                          @vFI1+16.5,vCO2+20.5 Say vCM2 Font "&mLetAri",9  Style "NQ" Size 1,101,90
                          mkEy = INKEY(0)
                          DO coLbln
                          @vFI1+16.5,vCO2+20.5 Say vCM2 Font "&mLetAri",9  Style "NQ" Size 1,101,90
                     CASE viTe=19
                          @vFI1+18.5,vCO2+025.0 Edit vNA1 Font "&mLetAri",9  Style "NQ" Size 1,83.9,70
                     CASE viTe=20
                          @vFI1+20.0,vCO2+019.0 Edit vTN1 Font "&mLetAri",9  Style "NQ" Size 1,64.0,70
                     CASE viTe=21
                          @vFI1+21.5,vCO2+034.0 Edit vLG2 Font "&mLetAri",9  Style "NQ" Size 1,88,70
                     CASE viTe=22
                          @vFI1+23.0,vCO2+034.0 Edit vLD2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
                     CASE viTe=23
                          @vFI1+23.0,vCO2+097.0 Edit vLP2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
                ENDCASE
                IF viTe=18
                ELSE
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDIF
      ENDCASE
 ENDDO
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 WAIT CLEAR
ENDPROC
*
PROCEDURE Ver_1300d
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(vfE1))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vnAl))=0
           STORE "Punto de Partida no puede estar vacío..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vaLm))=0 .AND. LEN(ALLTRIM(vnAl))<>0
           STORE "Punto de Partida tiene que estar registrado..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vtNo))=0
           STORE "Transportista no puede estar vacío..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vtRa))=0 .AND. LEN(ALLTRIM(vtNo))<>0
           STORE "Transportista tiene que estar registrado..." TO mmSj
      CASE viTe=19 .AND. LEN(ALLTRIM(vaL1))=0 .AND. LEN(ALLTRIM(vnA1))<>0
           STORE "Punto de Partida tiene que estar registrado..." TO mmSj
      CASE viTe=20 .AND. LEN(ALLTRIM(vtR1))=0 .AND. LEN(ALLTRIM(vtN1))<>0
           STORE "Transportista tiene que estar registrado..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE P00_1300d
 STORE vfI1+02.5 TO vfB1, vfB2, vfB3
 STORE vfI1+04.0 TO vfB4, vfB5, vfB6
 STORE vfI1+09.0 TO vfB7, vfB8, vfB9
 STORE vfI1+10.5 TO vfB0, vfBa, vfBb
 STORE vfI1+12.0 TO vfBc, vfBd, vfBe
 STORE vfI1+13.5 TO vfBf, vfBg, vfBh
 STORE vfI1+18.5 TO vfBi, vfBj, vfBk
 STORE vfI1+20.0 TO vfBl, vfBm, vfBn
 STORE vcO2+109.3 TO vcB1, vcBi
 STORE vcB1+04 TO vcB2, vcBj
 STORE vcB2+04 TO vcB3, vcBk
 STORE vcO2+83.3 TO vcB4, vcBl
 STORE vcB4+04 TO vcB5, vcBm
 STORE vcB5+04 TO vcB6, vcBn
 STORE vcO2+64.2 TO vcB7, vcB0
 STORE vcB7+04 TO vcB8, vcBa
 STORE vcB8+04 TO vcB9, vcBb
 STORE vcO2+41.2 TO vcBc, vcBf
 STORE vcBc+04 TO vcBd, vcBg
 STORE vcBd+04 TO vcBe, vcBh
 DO prEsiona WITH "4", "R_CONS11", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ vfI1+00.0, vcO2+0.5 TO vfI1+02.0, vcO2+125.1 PATTERN 1 COLOR SCHEME 7
 @ vfI1+02.0, vcO2+0.5 TO vfI1+08.5, vcO2+125.1 PATTERN 1 COLOR SCHEME 3
 @ vfI1+08.5, vcO2+0.5 TO vfI1+18.0, vcO2+125.1 PATTERN 1 COLOR SCHEME 6
 @ vfI1+18.0, vcO2+0.5 TO vfI1+24.6, vcO2+125.1 PATTERN 1 COLOR SCHEME 7
 DO coL_fondo
 @ vfI1+25.1, vcO2+013 TO vfI1+27.5, vcO2+111.1 PATTERN 1 PEN 1
 DO coL_beige
 @ vfI1+24.7, vcO2+012 TO vfI1+27.1, vcO2+110.0 PATTERN 1 PEN 2
 DO coLbln
 @vFI1+00.5,vCO2+002 Say "FECHA:"                       Font "&mLetRom",11 Style "BT"
 @vFI1+00.5,vCO2+089 Say "Peso:"                        Font "&mLetAri",9  Style "BT"
 DO coLblz
 @vFI1+02.5,vCO2+002 Say "Punto de Partida-1:"          Font "&mLetAri",9  Style "BT"
 @vFI1+04.0,vCO2+002 Say "Transportista:"               Font "&mLetAri",9  Style "BT"
 @vFI1+04.0,vCO2+099 Say "RUC:"                         Font "&mLetAri",9  Style "BT"
 @vFI1+05.5,vCO2+002 Say "Punto de Llegada-1 (modif) :" Font "&mLetAri",9  Style "BT"
 @vFI1+07.0,vCO2+002 Say "Distrito/Ciudad (P.Llegada):" Font "&mLetAri",9  Style "BT"
 @vFI1+07.0,vCO2+079 Say "Departamento:"                Font "&mLetAri",9  Style "BT"
 DO coLbln
 @vFI1+09.0,vCO2+002 Say "Chofer:"                      Font "&mLetAri",9  Style "BT"
 @vFI1+09.0,vCO2+088 Say "Licenc:"                      Font "&mLetAri",9  Style "BT"
 @vFI1+10.5,vCO2+002 Say "Ayudante:"                    Font "&mLetAri",9  Style "BT"
 @vFI1+10.5,vCO2+088 Say "Licenc:"                      Font "&mLetAri",9  Style "BT"
 @vFI1+12.0,vCO2+002 Say "Marca-1:"                     Font "&mLetAri",9  Style "BT"
 @vFI1+12.0,vCO2+058 Say "Placa-1:"                     Font "&mLetAri",9  Style "BT"
 @vFI1+13.5,vCO2+002 Say "Marca-2:"                     Font "&mLetAri",9  Style "BT"
 @vFI1+13.5,vCO2+058 Say "Placa-2:"                     Font "&mLetAri",9  Style "BT"
 @vFI1+13.5,vCO2+088 Say "CIMTC:"                       Font "&mLetAri",9  Style "BT"
 @vFI1+15.0,vCO2+002 Say "Observación-1:"               Font "&mLetAri",9  Style "BT"
 @vFI1+16.5,vCO2+002 Say "Observación-2:"               Font "&mLetAri",9  Style "BT"
 DO coLblr
 @vFI1+18.5,vCO2+002 Say "Punto de Partida-2:"          Font "&mLetAri",9  Style "BT"
 @vFI1+20.0,vCO2+002 Say "Transportista:"               Font "&mLetAri",9  Style "BT"
 @vFI1+20.0,vCO2+099 Say "RUC:"                         Font "&mLetAri",9  Style "BT"
 @vFI1+21.5,vCO2+002 Say "Punto de Llegada-2 (modif) :" Font "&mLetAri",9  Style "BT"
 @vFI1+23.0,vCO2+002 Say "Distrito/Ciudad (P.Llegada):" Font "&mLetAri",9  Style "BT"
 @vFI1+23.0,vCO2+079 Say "Departamento:"                Font "&mLetAri",9  Style "BT"
 DO coLbln
 IF LEN(ALLTRIM(vaLm))<>0
      DO coLsc3
 ENDIF
 @vFI1+02.5,vCO2+025.0 Edit vNAL Font "&mLetAri",9  Style "NQ" Size 1,83.9,70
 DO coLbln
 IF LEN(ALLTRIM(vtRa))<>0
      DO coLsc3
 ENDIF
 @vFI1+04.0,vCO2+019.0 Edit vTNO Font "&mLetAri",9  Style "NQ" Size 1,64.0,70
 DO coLbln
 IF LEN(ALLTRIM(vaL1))<>0
      DO coLsc7
 ENDIF
 @vFI1+18.5,vCO2+025.0 Edit vNA1 Font "&mLetAri",9  Style "NQ" Size 1,83.9,70
 DO coLbln
 IF LEN(ALLTRIM(vtR1))<>0
      DO coLsc7
 ENDIF
 @vFI1+20.0,vCO2+019.0 Edit vTN1 Font "&mLetAri",9  Style "NQ" Size 1,64.0,70
 DO coLbln
 @vFI1+00.5,vCO2+016.0 Get  vFE1 Font "&mLetRom",10 Style "BQ" Size 1,10.3 Color ,&mColBlN
 @vFI1+00.5,vCO2+097.2 Get  tPES Font "&mLetAri",9  Style "NQ" Size 1,16.5 Pict "999999.999" Color ,&mColBlN
 @vFI1+05.5,vCO2+034.0 Edit vLUG Font "&mLetAri",9  Style "NQ" Size 1,88,70
 @vFI1+07.0,vCO2+034.0 Edit vLUD Font "&mLetAri",9  Style "NQ" Size 1,25,25
 @vFI1+07.0,vCO2+097.0 Edit vLUP Font "&mLetAri",9  Style "NQ" Size 1,25,25
 @vFI1+09.0,vCO2+016.0 Edit vCHO Font "&mLetAri",9  Style "NQ" Size 1,48,70
 @vFI1+09.0,vCO2+097.0 Edit vLC1 Font "&mLetAri",9  Style "NQ" Size 1,24.6,30
 @vFI1+10.5,vCO2+016.0 Edit vCH2 Font "&mLetAri",9  Style "NQ" Size 1,48,70
 @vFI1+10.5,vCO2+097.0 Edit vLC2 Font "&mLetAri",9  Style "NQ" Size 1,24.6,30
 @vFI1+12.0,vCO2+016.0 Edit vMR1 Font "&mLetAri",9  Style "NQ" Size 1,25,20
 @vFI1+12.0,vCO2+069.0 Edit vPLC Font "&mLetAri",9  Style "NQ" Size 1,15,10
 @vFI1+13.5,vCO2+016.0 Edit vMR2 Font "&mLetAri",9  Style "NQ" Size 1,25,20
 @vFI1+13.5,vCO2+069.0 Edit vPL2 Font "&mLetAri",9  Style "NQ" Size 1,15,10
 @vFI1+13.5,vCO2+097.0 Edit vCIM Font "&mLetAri",9  Style "NQ" Size 1,24.6,20
 @vFI1+15.0,vCO2+020.5 Edit vCM1 Font "&mLetAri",9  Style "NQ" Size 1,101,70
 @vFI1+16.5,vCO2+020.5 Edit vCM2 Font "&mLetAri",9  Style "NQ" Size 1,101,90
 @vFI1+21.5,vCO2+034.0 Edit vLG2 Font "&mLetAri",9  Style "NQ" Size 1,88,70
 @vFI1+23.0,vCO2+034.0 Edit vLD2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
 @vFI1+23.0,vCO2+097.0 Edit vLP2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
 DO coLsc3
 @vFI1+04.0,vCO2+105.6 Edit vTRU Font "&mLetAri",9  Style "NQ" Size 1,15.4,11
 DO coLsc7
 @vFI1+20.0,vCO2+105.6 Edit vTRR Font "&mLetAri",9  Style "NQ" Size 1,15.4,11
 DO coL_beige
 @vFI1+25.2,vCO2+035 Say "Guía de Remisión:" Font "&mLetRom",12 Style "BQ"
 @vFI1+25.2,vCO2+062 Get vSE2                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
 @vFI1+25.2,vCO2+069 Get vDO2                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaLm))=0
      DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vtRa))=0
      DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaL1))=0
      DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vtR1))=0
      DO prEsiona WITH "3", "DESCAR", vfBb, vcBb
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBd, vcBd
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcHo))=0
      DO prEsiona WITH "3", "DESCAR", vfBe, vcBe
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBe, vcBe
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBf, vcBf
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBg, vcBg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcH2))=0
      DO prEsiona WITH "3", "DESCAR", vfBh, vcBh
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBj, vcBj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vmR1))=0
      DO prEsiona WITH "3", "DESCAR", vfBk, vcBk
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBk, vcBk
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBl, vcBl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBm, vcBm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vmR2))=0
      DO prEsiona WITH "3", "DESCAR", vfBn, vcBn
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBn, vcBn
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Alm_1300d
 SELECT alMacen
 SET FILTER TO
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Almacenes/Puntos de Partida registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      IF LEN(ALLTRIM(vaLm))<>0
           SET FILTER TO AT(vpPn, f9214nom)<>0 .OR. AT(vpPa, f9214dir)<>0
      ELSE
           SET FILTER TO AT(UPPER(ALLTRIM(vnAl)), UPPER(f9214nom))<>0 .OR. AT(UPPER(ALLTRIM(vnAl)), UPPER(f9214dir))<>0
      ENDIF
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Almacenes registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter .AND. f9214cod<>vaLm
      STORE f9214cod TO vaLm
      STORE f9214nom TO vpPn
      STORE f9214dir TO vpPa
      STORE f9214dis TO vpPd
      STORE f9214dpt TO vpPp
      STORE ALLTRIM(vpPn)+","+ALLTRIM(vpPa)+","+ALLTRIM(vpPd)+","+ ;
            ALLTRIM(vpPp) TO vnAl
      IF LEN(ALLTRIM(f9214sr3))<>0
           STORE f9214sr3 TO vsE2
      ELSE
           STORE msEr(04) TO vsE2
      ENDIF
      DO nuM_1300d
      DO daL_1300d
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dal_1300d
 DO coLbln
 IF LEN(ALLTRIM(vaLm))<>0
      DO coLsc3
 ENDIF
 @vFI1+02.5,vCO2+25 Say vNAL Font "&mLetAri",9  Style "NQ" Pict "@S70"    Size 1,83.9
 DO coLbln
 @vFI1+25.2,vCO2+62 Say vSE2 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
 @vFI1+25.2,vCO2+69 Say vDO2 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
ENDPROC
*
PROCEDURE Tra_1300d
 = INKEY(0.01)
 SELECT trAnsportista
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Transportistas registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(UPPER(ALLTRIM(vtNo)), UPPER(f9215nom))<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Transportistas registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfB5, vcB5
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9215cod TO vtRa
      STORE f9215nom TO vtNo
      STORE f9215ruc TO vtRu
      STORE f9215dir TO vtDi
      STORE f9215dis TO vtDs
      STORE f9215dpt TO vtDp
      DO dtR_1300d
      DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Dtr_1300d
 DO coLbln
 DO CASE
      CASE LEN(ALLTRIM(vtRa))<>0
           DO coLsc3
 ENDCASE
 @vFI1+04.0,vCO2+019.0 Say vTNO Font "&mLetAri",9 Style "NQ" Size 1,64.0 Pict "@S66"
 DO coLsc3
 @vFI1+04.0,vCO2+105.6 Say vTRU Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "@S11"
ENDPROC
*
PROCEDURE Cho_1300d
 = INKEY(0.01)
 SELECT chOferes
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Choferes registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(UPPER(ALLTRIM(vcHo)), UPPER(f9212nom))<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Choferes registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfB8, vcB8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLbln
      STORE f9212cod TO vcC1
      STORE f9212nom TO vcHo
      STORE f9212lic TO vlC1
      @vFI1+9,vCO2+16 Say vCHO Font "&mLetAri",9 Style "NQ" Size 1,48   Pict "@S50"
      @vFI1+9,vCO2+97 Say vLC1 Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S27"
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Ayu_1300d
 = INKEY(0.01)
 SELECT chOferes
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Choferes registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(UPPER(ALLTRIM(vcH2)), UPPER(f9212nom))<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Choferes/Ayudantes registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfB0, vcB0
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBa, vcBa
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLbln
      STORE f9212cod TO vcC2
      STORE f9212nom TO vcH2
      STORE f9212lic TO vlC2
      @vFI1+10.5,vCO2+16 Say vCH2 Font "&mLetAri",9 Style "NQ" Size 1,48   Pict "@S50"
      @vFI1+10.5,vCO2+97 Say vLC2 Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S26"
      DO prEsiona WITH "1", "DESCAR", vfBb, vcBb
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Ca1_1300d
 = INKEY(0.01)
 SELECT caRros
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Carros registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(UPPER(ALLTRIM(vmR1)), UPPER(f9219mar))<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Carros registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfBc, vcBc
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBd, vcBd
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLbln
      STORE f9219cod TO vcR1
      STORE f9219mar TO vmR1
      STORE f9219pla TO vpLc
      STORE f9219cim TO vcIm
      @vFI1+12.0,vCO2+16.0 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
      @vFI1+12.0,vCO2+69.0 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
      @vFI1+13.5,vCO2+97.0 Say vCIM Font "&mLetAri",9 Style "NQ" Size 1,24.6 Pict "@S20"
      DO prEsiona WITH "1", "DESCAR", vfBe, vcBe
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBd, vcBd
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Ca2_1300d
 = INKEY(0.01)
 SELECT caRros
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Carros registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(UPPER(ALLTRIM(vmR2)), UPPER(f9219mar))<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Carros registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfBf, vcBf
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBg, vcBg
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB6 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLbln
      STORE f9219cod TO vcR2
      STORE f9219mar TO vmR2
      STORE f9219pla TO vpL2
      @vFI1+13.5,vCO2+16 Say vMR2 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
      @vFI1+13.5,vCO2+69 Say vPL2 Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
      DO prEsiona WITH "1", "DESCAR", vfBh, vcBh
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSUL", vfBf, vcBf
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBg, vcBg
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Al1_1300d
 = INKEY(0.01)
 SELECT alMacen
 SET FILTER TO
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Almacenes/Puntos de Partida registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      IF LEN(ALLTRIM(vaL1))<>0
           SET FILTER TO AT(xpPn, f9214nom)<>0 .OR. AT(xpPa, f9214dir)<>0
      ELSE
           SET FILTER TO AT(UPPER(ALLTRIM(vnA1)), UPPER(f9214nom))<>0 .OR. AT(UPPER(ALLTRIM(vnA1)), UPPER(f9214dir))<>0
      ENDIF
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Almacenes registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfBi, vcBi
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBj, vcBj
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB7 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLsc7
      STORE f9214cod TO vaL1
      STORE f9214nom TO xpPn
      STORE f9214dir TO xpPa
      STORE f9214dis TO xpPd
      STORE f9214dpt TO xpPp
      STORE ALLTRIM(xpPn)+","+ALLTRIM(xpPa)+","+ALLTRIM(xpPd)+","+ ;
            ALLTRIM(xpPp) TO vnA1
      @vFI1+18.5,vCO2+25 Say vNA1 Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
      DO prEsiona WITH "1", "DESCAR", vfBk, vcBk
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBj, vcBj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tr1_1300d
 = INKEY(0.01)
 SELECT trAnsportista
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Transportistas registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF mkEy=k_F3
      SET FILTER TO AT(vtN1, f9215nom)<>0
      GOTO TOP
      IF BOF() .OR. EOF()
           SET FILTER TO
           STORE "No hay Transportistas registrados..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF mkEy=k_F2
      DO prEsiona WITH "2", "CONSUL", vfBl, vcBl
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBm, vcBm
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB8 REST
 SET CONFIRM OFF
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLsc7
      STORE f9215cod TO vtR1
      STORE f9215nom TO vtN1
      STORE f9215ruc TO vtRr
      @vFI1+20,vCO2+19 Say vTN1 Font "&mLetAri",9 Style "NQ" Size 1,64 Pict "@S67"
      DO prEsiona WITH "1", "DESCAR", vfBn, vcBn
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBl, vcBl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBm, vcBm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Num_1300d
 UNLOCK ALL
 SELECT nuMeracion
 SEEK vtD2+vsE2
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtD2
      REPLACE f9999ser WITH vsE2
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtD2+vsE2
 STORE f9999num TO vdO2
 STORE STRTRAN(STR(VAL(vdO2)+1, 7, 0), " ", "0") TO vdO2
ENDPROC
*
PROCEDURE Gra_1300d
 PRIVATE psW0
 STORE 0 TO psW0, xiTt
 STORE 99 TO mkEy
 STORE "N" TO moPc
 DO prE_docum WITH "¿Está seguro de Grabar Guía de Remisión:"+vsE2+"-"+vdO2+"?"
 IF moPc$"Nn"
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "1"
 SELECT coP_prod
 ZAP
 REINDEX
 UNLOCK ALL
 SELECT caB_remi
 SEEK vtD2+vsE2+vdO2
 IF  .NOT. EOF()
      DO CASE
           CASE f2600est="2"
                STORE "Guía de Remisión esta IMPRESA..." TO mmSj
                DO poNmsj
                = INKEY(0.5)
                UNLOCK ALL
                RETURN
           CASE f2600est="9"
                STORE "Guía de Remisión esta ANULADA..." TO mmSj
                DO poNmsj
                = INKEY(0.5)
                UNLOCK ALL
                RETURN
           CASE f2600mot<>1
                STORE "Guía de Remisión no es de Venta..." TO mmSj
                DO poNmsj
                = INKEY(0.5)
                UNLOCK ALL
                RETURN
           OTHERWISE
                STORE f2600cm2 TO vcM2
                STORE 1 TO psW0
                SELECT deT_remi
                SEEK vtD2+vsE2+vdO2
                DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc= ;
                   vtD2+vsE2+vdO2
                     STORE f2601ite TO xiTt
                     SKIP
                ENDDO
      ENDCASE
 ENDIF
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT caB_remi
 SELECT nuMeracion
 SEEK vtD2+vsE2
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtD2+vsE2
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9999num WITH vdO2
 UNLOCK
 WAIT WINDOW NOWAIT "Grabando Cabecera de Guía de Remisión..."
 SELECT caB_remi
 IF psW0=0
      DO nuEvo_rg
      REPLACE f2600tdo WITH vtD2
      REPLACE f2600ser WITH vsE2
      REPLACE f2600doc WITH vdO2
      REPLACE f2600tit WITH xtIt
      REPLACE f2600cli WITH xcLi
      REPLACE f2600suc WITH xsUc
      REPLACE f2600nom WITH xnOm
      REPLACE f2600dir WITH xdIr
      REPLACE f2600dis WITH xdIs
      REPLACE f2600dep WITH xdEp
      REPLACE f2600ruc WITH xrUc
      REPLACE f2600ele WITH xdNi
      REPLACE f2600tel WITH xtEl
      REPLACE f2600lug WITH vlUg
      REPLACE f2600lud WITH vlUd
      REPLACE f2600lup WITH vlUp
      REPLACE f2600fem WITH vfE1
      REPLACE f2600alm WITH vaLm
      REPLACE f2600tra WITH vtRa
      REPLACE f2600tno WITH vtNo
      REPLACE f2600tdi WITH vtDi
      REPLACE f2600tds WITH vtDs
      REPLACE f2600tdp WITH vtDp
      REPLACE f2600tru WITH vtRu
      REPLACE f2600cim WITH vcIm
      REPLACE f2600td1 WITH vtDo
      REPLACE f2600sr1 WITH vsEr
      REPLACE f2600do1 WITH vdOc
      REPLACE f2600ffa WITH xfEm
      REPLACE f2600srp WITH " "
      REPLACE f2600ped WITH " "
      REPLACE f2600mot WITH 1
      REPLACE f2600cst WITH 2
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
      REPLACE f2600cm2 WITH " "
      REPLACE f2600cps WITH " "
      REPLACE f2600cpn WITH " "
      REPLACE f2600est WITH "1"
 ENDIF
 IF LEN(ALLTRIM(f2600cm2))=0
      REPLACE f2600cm2 WITH vtDo+":"+vsEr+"-"+vdOc
 ELSE
      REPLACE f2600cm2 WITH ALLTRIM(f2600cm2)+"/"+vtDo+":"+vsEr+"-"+vdOc
 ENDIF
 REPLACE f2600usu WITH muSu
 REPLACE f2600dat WITH DATE()
 REPLACE f2600tim WITH TIME()
 REPLACE f2600maq WITH mmAq
 UNLOCK
 SELECT caB_fact
 DO CASE
      CASE LEN(ALLTRIM(f1300cm1))=0
           REPLACE f1300cm1 WITH vsE2+"-"+vdO2
      CASE AT(vsE2+"-"+vdO2, f1300cm1)<>0
      OTHERWISE
           REPLACE f1300cm1 WITH ALLTRIM(f1300cm1)+","+vsE2+"-"+vdO2
 ENDCASE
 UNLOCK
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT seLeccion
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      STORE ftM3can TO vcAn
      STORE ftM3caj TO vcAj
      SELECT deT_fact
      STORE xiTt+1 TO xiTt
      STORE f1301des TO xdEs
      STORE f1301dcr TO xdCr
      STORE f1301ref TO xrEf
      STORE f1301cuv TO xcUv
      STORE f1301nuv TO xnUv
      STORE f1301cuc TO xcUc
      STORE f1301nuc TO xnUc
      STORE f1301med TO vmEd
      STORE f1301lar TO xlAr
      STORE f1301la1 TO vlA1
      STORE f1301la2 TO vlA2
      STORE f1301la3 TO xlA3
      STORE f1301la4 TO xlA4
      STORE f1301la5 TO xlA5
      STORE f1301la6 TO xlA6
      STORE f1301la7 TO xlA7
      STORE f1301la8 TO xlA8
      STORE f1301la9 TO xlA9
      STORE f1301anc TO xaNc
      STORE f1301an1 TO vaN1
      STORE f1301an2 TO vaN2
      STORE f1301an3 TO xaN3
      STORE f1301an4 TO xaN4
      STORE f1301an5 TO xaN5
      STORE f1301an6 TO xaN6
      STORE f1301an7 TO xaN7
      STORE f1301an8 TO xaN8
      STORE f1301an9 TO xaN9
      STORE f1301alt TO xaLt
      STORE f1301al1 TO xaL1
      STORE f1301al2 TO xaL2
      STORE f1301al3 TO xaL3
      STORE f1301al4 TO xaL4
      STORE f1301al5 TO xaL5
      STORE f1301al6 TO xaL6
      STORE f1301al7 TO xaL7
      STORE f1301al8 TO xaL8
      STORE f1301al9 TO xaL9
      STORE f1301esp TO veSp
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(02) TO vtIp
      ELSE
           STORE f2111tip TO vtIp
      ENDIF
      SELECT tiP_prod
      SEEK vtIp
      IF EOF()
           STORE 1 TO vtPo
           STORE 2 TO vpEr
      ELSE
           STORE f9211tpo TO vtPo
           STORE f9211per TO vpEr
      ENDIF
      DO CASE
           CASE vtPo=2 .AND. vmEd=1
                STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
           CASE vtPo=2 .AND. vmEd=2
                STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
           CASE vtPo=3
                STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
           OTHERWISE
                STORE vcAn TO vpIe
      ENDCASE
      DO gdG_1200d IN PVC1200D
      UNLOCK
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc+ ;
         ALLTRIM(f1302cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE f1302rcc TO xrCc
           STORE f1302opc TO xoPc
           STORE f1302un1 TO xuN1
           STORE f1302un2 TO xuN2
           STORE f1302mla TO xmLa
           STORE f1302man TO xmAn
           STORE f1302p11 TO xp11
           STORE f1302p12 TO xp12
           STORE f1302p21 TO xp21
           STORE f1302p22 TO xp22
           STORE f1302ctd TO xcTd
           STORE f1302pie TO xpIe
           SELECT itE_remi
           DO nuEvo_rg
           REPLACE f2602tdo WITH vtD2
           REPLACE f2602ser WITH vsE2
           REPLACE f2602doc WITH vdO2
           REPLACE f2602cod WITH vcOd
           REPLACE f2602rcc WITH xrCc
           REPLACE f2602opc WITH xoPc
           REPLACE f2602un1 WITH xuN1
           REPLACE f2602un2 WITH xuN2
           REPLACE f2602mla WITH xmLa
           REPLACE f2602man WITH xmAn
           REPLACE f2602p11 WITH xp11
           REPLACE f2602p12 WITH xp12
           REPLACE f2602p21 WITH xp21
           REPLACE f2602p22 WITH xp22
           REPLACE f2602ctd WITH xcTd
           REPLACE f2602pie WITH xpIe
           UNLOCK
           SELECT itE_fact
           SKIP
      ENDDO
      SELECT seR_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc+ ;
         ALLTRIM(f1303cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE f1303ped TO vpEd
           STORE f1303sec TO vsEc
           STORE f1303pla TO vpLa
           STORE f1303mot TO vmOt
           SELECT seR_remi
           DO nuEvo_rg
           REPLACE f2603tdo WITH vtD2
           REPLACE f2603ser WITH vsE2
           REPLACE f2603doc WITH vdO2
           REPLACE f2603ped WITH vpEd
           REPLACE f2603sec WITH vsEc
           REPLACE f2603pla WITH vpLa
           REPLACE f2603mot WITH vmOt
           UNLOCK
           SELECT seR_fact
           SKIP
      ENDDO
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc+ ;
         ALLTRIM(f1304cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE f1304cdg TO vcDg
           STORE f1304cun TO vcUn
           STORE f1304for TO vfOr
           STORE f1304dsp TO vdSp
           STORE f1304dst TO vdSt
           STORE f1304ttt TO vtTt
           SELECT coN_remi
           DO nuEvo_rg
           REPLACE f2604tdo WITH vtD2
           REPLACE f2604ser WITH vsE2
           REPLACE f2604doc WITH vdO2
           REPLACE f2604cod WITH vcOd
           REPLACE f2604cdg WITH vcDg
           REPLACE f2604can WITH vcAn*vcUn
           REPLACE f2604cun WITH vcUn
           REPLACE f2604for WITH vfOr
           REPLACE f2604dsp WITH vdSp
           REPLACE f2604dst WITH vdSt
           REPLACE f2604ttt WITH vtTt
           UNLOCK
           SELECT coN_fact
           SKIP
      ENDDO
      SELECT deT_fact
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Rs1_1300d
 DO rs1_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_1300d
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1300d
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE 3 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE 3 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE 3 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2
           STORE 4 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2
           STORE 4 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2
           STORE 4 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2
           STORE 8 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2
           STORE 8 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2
           STORE 8 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2
           STORE 10 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2 .AND. mcCc>=vcBa+mcO1  ;
           .AND. mcCc<=vcBa+mcO2
           STORE 10 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2 .AND. mcCc>=vcBb+mcO1  ;
           .AND. mcCc<=vcBb+mcO2
           STORE 10 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2 .AND. mcCc>=vcBc+mcO1  ;
           .AND. mcCc<=vcBc+mcO2
           STORE 12 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2 .AND. mcCc>=vcBd+mcO1  ;
           .AND. mcCc<=vcBd+mcO2
           STORE 12 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2 .AND. mcCc>=vcBe+mcO1  ;
           .AND. mcCc<=vcBe+mcO2
           STORE 12 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2 .AND. mcCc>=vcBf+mcO1  ;
           .AND. mcCc<=vcBf+mcO2
           STORE 14 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBg+mfI1 .AND. mfIl<=vfBg+mfI2 .AND. mcCc>=vcBg+mcO1  ;
           .AND. mcCc<=vcBg+mcO2
           STORE 14 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfBh+mfI1 .AND. mfIl<=vfBh+mfI2 .AND. mcCc>=vcBh+mcO1  ;
           .AND. mcCc<=vcBh+mcO2
           STORE 14 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfBi+mfI1 .AND. mfIl<=vfBi+mfI2 .AND. mcCc>=vcBi+mcO1  ;
           .AND. mcCc<=vcBi+mcO2
           STORE 19 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBj+mfI1 .AND. mfIl<=vfBj+mfI2 .AND. mcCc>=vcBj+mcO1  ;
           .AND. mcCc<=vcBj+mcO2
           STORE 19 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfBk+mfI1 .AND. mfIl<=vfBk+mfI2 .AND. mcCc>=vcBk+mcO1  ;
           .AND. mcCc<=vcBk+mcO2
           STORE 19 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfBl+mfI1 .AND. mfIl<=vfBl+mfI2 .AND. mcCc>=vcBl+mcO1  ;
           .AND. mcCc<=vcBl+mcO2
           STORE 20 TO ciTx
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBm+mfI1 .AND. mfIl<=vfBm+mfI2 .AND. mcCc>=vcBm+mcO1  ;
           .AND. mcCc<=vcBm+mcO2
           STORE 20 TO ciTx
           STORE k_F3 TO mkEy
      CASE mfIl>=vfBn+mfI1 .AND. mfIl<=vfBn+mfI2 .AND. mcCc>=vcBn+mcO1  ;
           .AND. mcCc<=vcBn+mcO2
           STORE 20 TO ciTx
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfI1+0.435 .AND. mfIl<=vfI1+1.721 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+28.8 .AND. viTe<>1
           STORE 01 TO ciTx
      CASE mfIl>=vfI1+0.435 .AND. mfIl<=vfI1+1.721 .AND. mcCc>=vcO2+88.6  ;
           .AND. mcCc<=vcO2+114.2 .AND. viTe<>2
           STORE 02 TO ciTx
      CASE mfIl>=vfI1+2.435 .AND. mfIl<=vfI1+3.650 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+109.2 .AND. viTe<>3
           STORE 03 TO ciTx
      CASE mfIl>=vfI1+3.935 .AND. mfIl<=vfI1+5.15 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+83 .AND. viTe<>4
           STORE 04 TO ciTx
      CASE mfIl>=vfI1+5.435 .AND. mfIl<=vfI1+6.65 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+122 .AND. viTe<>5
           STORE 05 TO ciTx
      CASE mfIl>=vfI1+6.935 .AND. mfIl<=vfI1+8.15 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+59.2 .AND. viTe<>6
           STORE 06 TO ciTx
      CASE mfIl>=vfI1+6.935 .AND. mfIl<=vfI1+8.15 .AND. mcCc>=vcO2+78.8  ;
           .AND. mcCc<=vcO2+122 .AND. viTe<>7
           STORE 07 TO ciTx
      CASE mfIl>=vfI1+8.935 .AND. mfIl<=vfI1+10.15 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+64.2 .AND. viTe<>8
           STORE 08 TO ciTx
      CASE mfIl>=vfI1+8.935 .AND. mfIl<=vfI1+10.15 .AND. mcCc>=vcO2+87.2  ;
           .AND. mcCc<=vcO2+121.8 .AND. viTe<>9
           STORE 09 TO ciTx
      CASE mfIl>=vfI1+10.507 .AND. mfIl<=vfI1+11.65 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+64.2 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=vfI1+10.507 .AND. mfIl<=vfI1+11.65 .AND. mcCc>=vcO2+87.2  ;
           .AND. mcCc<=vcO2+121.8 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=vfI1+11.935 .AND. mfIl<=vfI1+13.15 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+41 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=vfI1+11.935 .AND. mfIl<=vfI1+13.15 .AND. mcCc>=vcO2+57.4  ;
           .AND. mcCc<=vcO2+84.2 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=vfI1+13.435 .AND. mfIl<=vfI1+14.65 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+41 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=vfI1+13.435 .AND. mfIl<=vfI1+14.65 .AND. mcCc>=vcO2+57.4  ;
           .AND. mcCc<=vcO2+84.2 .AND. viTe<>15
           STORE 15 TO ciTx
      CASE mfIl>=vfI1+13.435 .AND. mfIl<=vfI1+14.65 .AND. mcCc>=vcO2+87.2  ;
           .AND. mcCc<=vcO2+121.6 .AND. viTe<>16
           STORE 16 TO ciTx
      CASE mfIl>=vfI1+14.935 .AND. mfIl<=vfI1+16.15 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+121.6 .AND. viTe<>17
           STORE 17 TO ciTx
      CASE mfIl>=vfI1+16.507 .AND. mfIl<=vfI1+17.65 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+121.6 .AND. viTe<>18
           STORE 18 TO ciTx
      CASE mfIl>=vfI1+18.435 .AND. mfIl<=vfI1+19.65 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+109 .AND. viTe<>19
           STORE 19 TO ciTx
      CASE mfIl>=vfI1+19.935 .AND. mfIl<=vfI1+21.078 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+83.2 .AND. viTe<>20
           STORE 20 TO ciTx
      CASE mfIl>=vfI1+21.435 .AND. mfIl<=vfI1+22.578 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+122 .AND. viTe<>21
           STORE 21 TO ciTx
      CASE mfIl>=vfI1+22.935 .AND. mfIl<=vfI1+24.078 .AND. mcCc>=vcO2+1.8  ;
           .AND. mcCc<=vcO2+59 .AND. viTe<>22
           STORE 22 TO ciTx
      CASE mfIl>=vfI1+22.935 .AND. mfIl<=vfI1+24.078 .AND. mcCc>=vcO2+79  ;
           .AND. mcCc<=vcO2+122 .AND. viTe<>23
           STORE 23 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_1300d
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
           IF mkEy=k_Clic
                STORE 99 TO mkEy
           ENDIF
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_1300d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte del programa se tienen que ingresar los datos de la Guía"
 @ pfIl+1, 02 SAY  ;
   "de Remisión. Puede generarse hasta 2 Guías poniendo el Punto de Parti-"
 @ pfIl+2, 02 SAY "da y Transportistas adicionales."
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+6 TO pfIl
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ESC" STYLE "BT"
 @ pfIl+1, 01 SAY "F10" STYLE "BT"
 @ pfIl+2, 01 SAY "F1" STYLE "BT"
 @ pfIl+0, 21 SAY "Regresar al detalle sin grabar"
 @ pfIl+1, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 21 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=10 .OR. viTe=12 .OR. viTe=14  ;
    .OR. viTe=19 .OR. viTe=20
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      DO CASE
           CASE viTe=3 .OR. viTe=19
                @ pfIl+0, 21 SAY "Consulta de Almacenes"
           CASE viTe=4 .OR. viTe=20
                @ pfIl+0, 21 SAY "Consulta de Transportistas"
           CASE viTe=8
                @ pfIl+0, 21 SAY "Consulta de Choferes"
           CASE viTe=10
                @ pfIl+0, 21 SAY "Consulta de Ayudantes"
           CASE viTe=12 .OR. viTe=14
                @ pfIl+0, 21 SAY "Consulta de Carros"
      ENDCASE
      STORE pfIl+2 TO pfIl
 ENDIF
 IF viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=10 .OR. viTe=12 .OR. viTe=14  ;
    .OR. viTe=19 .OR. viTe=20
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE viTe=3 .OR. viTe=19
                @ pfIl+0, 21 SAY "Des-Seleccionar Almacén"
           CASE viTe=4 .OR. viTe=20
                @ pfIl+0, 21 SAY "Des-Seleccionar Transportista"
           CASE viTe=8
                @ pfIl+0, 21 SAY "Des-Seleccionar Chofer"
           CASE viTe=10
                @ pfIl+0, 21 SAY "Des-Seleccionar Ayudante"
           CASE viTe=12 .OR. viTe=14
                @ pfIl+0, 21 SAY "Des-Seleccionar Carro"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo derecho"
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
 @ pfIl+1, 21 SAY "Ir al campo inferior"
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
 @ pfIl+0, 21 SAY "Ir al siguiente campo"
 @ pfIl+1, 21 SAY "GRABAR DOCUMENTOS"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
