 PARAMETER ptPo
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
 DO CASE
      CASE ptPo="1" .AND. LEN(ALLTRIM(xrUc))<11
           STORE "Esta Factura no tiene RUC..." TO mmSj
      CASE ptPo="2" .AND. LEN(ALLTRIM(xdNi))=0 .AND. xtOt>=mmBo .AND. xmOn=1
           STORE "Esta Boleta necesita DNI OBLIGATORIO..." TO mmSj
      CASE ptPo="2" .AND. LEN(ALLTRIM(xdNi))=0 .AND. xtOt>=ROUND(mmBo/ ;
           xtCa, 2) .AND. xmOn=2
           STORE "Esta Boleta necesita DNI OBLIGATORIO..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      = INKEY(2)
      RETURN
 ENDIF
 STORE "  " TO vdO1, vdO2
 DO CASE
      CASE ptPo="1"
           STORE "FA" TO vtD1
           STORE vsR1 TO vsE1
           STORE "GR" TO vtD2
           STORE vsR4 TO vsE2
      CASE ptPo="2"
           STORE "BO" TO vtD1
           STORE vsR2 TO vsE1
           STORE "GR" TO vtD2
           STORE vsR4 TO vsE2
      CASE ptPo="3"
           STORE "NP" TO vtD1
           STORE vsR3 TO vsE1
           STORE "  " TO vtD2, vsE2
 ENDCASE
 IF wtPo="7"
      STORE "  " TO vtD2, vsE2
 ENDIF
 DO nuM_1200d
 IF mkEy=k_Esc
      UNLOCK ALL
      RETURN
 ENDIF
 SET CONFIRM ON
 SET READBORDER ON
 STORE 99 TO mkEy
 DO p00_1200d WITH ptPo
 IF mkEy=k_Esc
      UNLOCK ALL
      RETURN
 ENDIF
 STORE 1 TO viTe
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200d
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET CONFIRM ON
           SET READBORDER ON
           DO p00_1200d WITH ptPo
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl1_1200d
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F12
                DO rs1_1200d
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET CONFIRM ON
                SET READBORDER ON
                DO p00_1200d WITH ptPo
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=3
                DO alM_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=4
                DO trA_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=8
                DO chO_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=10
                DO ayU_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=12
                DO ca1_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=14
                DO ca2_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=19
                DO al1_1200d
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=20
                DO tr1_1200d
           CASE mkEy=k_Ctrl_del .AND. viTe=3
                STORE SPACE(04) TO vaLm
                STORE SPACE(25) TO vpPd, vpPp
                STORE SPACE(70) TO vnAl, vpPa, vpPn
                STORE msEr(01) TO vsR1
                STORE msEr(02) TO vsR2
                STORE msEr(04) TO vsR4
                STORE msEr(03) TO vsR3
                DO CASE
                     CASE vtD1="FA"
                          STORE vsR1 TO vsE1
                     CASE vtD1="BO"
                          STORE vsR2 TO vsE1
                     CASE vtD1="NP"
                          STORE vsR3 TO vsE1
                ENDCASE
                IF vtD2="GR" .AND. LEN(ALLTRIM(vsE2))<>0
                     STORE vsR4 TO vsE2
                ENDIF
                DO nuM_1200d
                DO daL_1200d
           CASE mkEy=k_Ctrl_del .AND. viTe=4
                STORE SPACE(04) TO vtRa
                STORE SPACE(11) TO vtRu
                STORE SPACE(25) TO vtDs, vtDp
                STORE SPACE(70) TO vtNo, vtDi
                DO dtR_1200d
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
                STORE SPACE(20) TO vmR1
                @vFI1+12,vCO2+16 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
                @vFI1+12,vCO2+69 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
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
                DO veR_1200d
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
                DO veR_1200d
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
                                    DO veR_1200d
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
                                    DO veR_1200d
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
                                    DO veR_1200d
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
                                    DO veR_1200d
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
                     DO veR_1200d
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
                     DO veR_1200d
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
                     DO grA_1200d
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
                          STORE 99 TO mkEy
                          SELECT trAnsportista
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
                          SELECT tmP_doc1
                          GOTO TOP
                          STORE vtD1 TO vtDo
                          DO WHILE  .NOT. EOF()
                               STORE f1300ser TO vsEr
                               STORE f1300doc TO vdOc
                               STORE mdEs TO zdDd
                               SELECT caB_fact
                               SEEK vtDo+vsEr+vdOc
                               STORE "N" TO moPc
                               DO CASE
                                    CASE vtDo="FA"
                                         DO prE_docum WITH  ;
                                          "¿Desea imprimir Factura: "+ ;
                                          vsEr+"-"+vdOc+" ?"
                                    CASE vtDo="BO"
                                         DO prE_docum WITH  ;
                                          "¿Desea imprimir Boleta: "+vsEr+ ;
                                          "-"+vdOc+" ?"
                                    CASE vtDo="NP"
                                         DO prE_docum WITH  ;
                                          "¿Desea imprimir Nota de Pedido: "+ ;
                                          vsEr+"-"+vdOc+" ?"
                               ENDCASE
                               IF moPc$"Ss"
                                    DO pvI1300z
                               ENDIF
                               STORE zdDd TO mdEs
                               SELECT tmP_doc1
                               SKIP
                          ENDDO
                          UNLOCK ALL
                          STORE 99 TO mkEy
                          SELECT trAnsportista
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
                          SELECT deT_ped
                          GOTO TOP
                          SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                          DO paN_1200c
                          STORE xrEc TO vrEc
                          STORE cfFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
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
                DO daL_1200d
           CASE viTe=4 .AND. LEN(ALLTRIM(vtRa))<>0
                DO coL_beige
                @vFI1+04.0,vCO2+19 Say vTNO Font "&mLetAri",9 Style "NQ" Size 1,64.0 Pict "@S67"
                mkEy = INKEY(0, "HM")
                DO dtR_1200d
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
                          @vFI1+15.0,vCO2+020.5 Edit xCM1 Font "&mLetAri",9  Style "NQ" Size 1,101,70
                     CASE viTe=18
                          @vFI1+16.5,vCO2+020.5 Edit xCM2 Font "&mLetAri",9  Style "NQ" Size 1,101,90
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
                SET CURSOR ON
                READ
                SET CURSOR OFF
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
PROCEDURE Ver_1200d
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(vfE1))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vnAl))=0
           STORE "Punto de Partida no puede estar vacío..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vaLm))=0 .AND. LEN(ALLTRIM(vnAl))<>0
           STORE "Punto de Partida tiene que estar registrado..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vtNo))=0 .AND. wtPo$"56"
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
PROCEDURE P00_1200d
 PARAMETER ptPo
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
 @vFI1+15.0,vCO2+002 Say "Observ.Factur:"               Font "&mLetAri",9  Style "BT"
 @vFI1+16.5,vCO2+002 Say "Observ.G.Remi:"               Font "&mLetAri",9  Style "BT"
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
 @vFI1+15.0,vCO2+020.5 Edit xCM1 Font "&mLetAri",9  Style "NQ" Size 1,101,70
 @vFI1+16.5,vCO2+020.5 Edit xCM2 Font "&mLetAri",9  Style "NQ" Size 1,101,90
 @vFI1+21.5,vCO2+034.0 Edit vLG2 Font "&mLetAri",9  Style "NQ" Size 1,88,70
 @vFI1+23.0,vCO2+034.0 Edit vLD2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
 @vFI1+23.0,vCO2+097.0 Edit vLP2 Font "&mLetAri",9  Style "NQ" Size 1,25,25
 DO coLsc3
 @vFI1+04.0,vCO2+105.6 Edit vTRU Font "&mLetAri",9  Style "NQ" Size 1,15.4,11
 DO coLsc7
 @vFI1+20.0,vCO2+105.6 Edit vTRR Font "&mLetAri",9  Style "NQ" Size 1,15.4,11
 DO coL_beige
 DO CASE
      CASE vtD1="FA" .AND. LEN(ALLTRIM(vtD2))<>0
           @vFI1+25.2,vCO2+018 Say "Factura:"          Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+032 Get vSE1                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+039 Get vDO1                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
           @vFI1+25.2,vCO2+055 Say "Guía de Remisión:" Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+082 Get vSE2                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+089 Get vDO2                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
      CASE vtD1="FA"
           @vFI1+25.2,vCO2+040 Say "Factura:"          Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+054 Get vSE1                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+061 Get vDO1                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
      CASE vtD1="BO" .AND. LEN(ALLTRIM(vtD2))<>0
           @vFI1+25.2,vCO2+018 Say "Boleta: "          Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+032 Get vSE1                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+039 Get vDO1                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
           @vFI1+25.2,vCO2+055 Say "Guía de Remisión:" Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+082 Get vSE2                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+089 Get vDO2                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
      CASE vtD1="BO"
           @vFI1+25.2,vCO2+047 Say "Boleta: "          Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+061 Get vSE1                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+068 Get vDO1                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
      CASE vtD1="NP"
           @vFI1+25.2,vCO2+037 Say "Nota de Pedido:"   Font "&mLetRom",12 Style "BQ"
           @vFI1+25.2,vCO2+062 Get vSE1                Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6 Color ,&mColBlN
           @vFI1+25.2,vCO2+069 Get vDO1                Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8   Color ,&mColBlN
 ENDCASE
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
 IF LEN(ALLTRIM(vtD2))<>0
      IF LEN(ALLTRIM(vdO2))=0
           DO prEsiona WITH "3", "DESCAR", vfBo, vcBo
      ELSE
           DO prEsiona WITH "1", "DESCAR", vfBo, vcBo
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Vrf_1200d
 SELECT clIentes
 SEEK xcLi
 IF EOF()
      STORE 0 TO vpPe
 ELSE
      STORE f1101ppe TO vpPe
 ENDIF
 SELECT nuMeracion
 SEEK vtD1+vsE1
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtD1+vsE1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vsE2))<>0
      SEEK vtD2+vsE2
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtD2+vsE2
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT caB_ped
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT caB_fact
 SEEK vtD1+vsE1+vdO1
 IF  .NOT. EOF() .AND. f1300est>"1"
      STORE "Documento: "+vtD1+":"+vsE1+"-"+vdO1+ ;
            " ya grabado e impreso..." TO mmSj
      DO poNmsj
      = INKEY(2)
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SEEK vtD1+vsE1+vdO1
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtD1+vsE1+vdO1
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      SELECT caB_remi
      SEEK vtD2+vsE2+vdO2
      IF  .NOT. EOF() .AND. f2600est>"1"
           STORE "Documento: "+vtD2+":"+vsE2+"-"+vdO2+ ;
                 " ya grabado e impreso..." TO mmSj
           DO poNmsj
           = INKEY(2)
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD2+vsE2+vdO2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
 ENDIF
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201ite TO xrEc
      STORE f1201cod TO vcOd
      SELECT seLeccion
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_ped
           SKIP
           LOOP
      ENDIF
      SELECT deT_ped
      SEEK vtDo+vsEr+vdOc+STR(xrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(xrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT seLeccion
      STORE ftM3can TO vcAn
      STORE ftM3caj TO vcAj
      IF msTp<>1
           SELECT tmP_prod
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                REPLACE ftM2can WITH 0
                REPLACE ftM2caj WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+vcAn
           REPLACE ftM2caj WITH ftM2caj+vcAj
      ENDIF
      SELECT deT_ped
      SKIP
 ENDDO
 IF msTp<>1
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+vsEr+vdOc
           STORE f1204cod TO vcOd
           STORE f1204cdg TO vcDg
           STORE f1204cun TO vcUn
           SELECT seLeccion
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT coN_ped
                SKIP
                LOOP
           ENDIF
           STORE ftM3can TO vcAn
           STORE ftM3caj TO vcAj
           SELECT tmP_prod
           SEEK ALLTRIM(vcDg)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcDg
                REPLACE ftM2can WITH 0
                REPLACE ftM2caj WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+(vcAn*vcUn)
           SELECT coN_ped
           SKIP
      ENDDO
 ENDIF
 SELECT tmP_prod
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. f2111cst=1
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT tmP_prod
      SKIP
 ENDDO
 SELECT caB_fact
 SEEK vtD1+vsE1+vdO1
 IF EOF()
      DO gnU_1200d WITH "1"
 ENDIF
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      SELECT caB_remi
      SEEK vtD2+vsE2+vdO2
      IF EOF()
           DO gnU_1200d WITH "2"
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Gra_1200d
 STORE 99 TO mkEy
 UNLOCK ALL
 SELECT tmP_doc1
 ZAP
 REINDEX
 SELECT tmP_doc2
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 DO vrF_1200d
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 STORE k_Tab TO mkEy
 DO grAbar WITH "1"
 DO gfA_1200d
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      DO grE_1200d
 ENDIF
 SELECT caB_ped
 REPLACE f1200est WITH "4"
 IF vsW1=2
      SELECT teMporal
      REPLACE f1200est WITH "4"
 ENDIF
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 STORE 00 TO xiTe, xiTt, xiT1, tdC1, tdC2, tdC3, tvAl, tnEt, tiGv, ttOt
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201ite TO xrEc
      STORE f1201cod TO vcOd
      STORE f1201ref TO xrEf
      SELECT seLeccion
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_ped
           SKIP
           LOOP
      ENDIF
      STORE ftM3can TO vcAn
      STORE ftM3caj TO vcAj
      DO pr1_1300z IN FAC0000A
      IF vmD3=1
           IF (vtD1="FA" .AND. mlL0="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="BO" .AND. ml0b="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="NP" .AND. ml0n="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="CT" .AND. ml0c="S" .AND. LEN(ALLTRIM(xrEf))>0)
                STORE xiT1+1 TO xiT1
           ENDIF
           SELECT itE_ped
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF EOF() .OR. (vtD1="FA" .AND. mlLz="N") .OR. (vtD1="BO" .AND.  ;
              mlLb="N") .OR. mlL1=0 .OR. (vtD1="NP" .AND. mlLn="N") .OR.  ;
              (vtD1="CT" .AND. mlLc="N")
                STORE xiT1+1 TO xiT1
           ELSE
                STORE xiT1+2 TO xiT1
           ENDIF
      ENDIF
      IF (vtD1="FA" .AND. xiT1>mlFa) .OR. (vtD1="BO" .AND. xiT1>mlBo)  ;
         .OR. (vtD1="NP" .AND. xiT1>mlNp) .OR. (vtD2="GR" .AND. vtD1="FA"  ;
         .AND. LEN(ALLTRIM(vdO2))>0 .AND. xiT1>mlFa) .OR. (vtD2="GR"  ;
         .AND. vtD1="BO" .AND. LEN(ALLTRIM(vdO2))>0 .AND. xiT1>mlBo)
           DO ct1_1200b IN PVI1200B
           DO ct2_1200b IN PVI1200B
           SELECT caB_fact
           REPLACE f1300net WITH tnEt
           REPLACE f1300igv WITH tiGv
           REPLACE f1300tot WITH ttOt
           UNLOCK
           IF vsWg=2
                STORE 0 TO vpGd
           ENDIF
           STORE STRTRAN(STR(VAL(vdO1)+1, 7, 0), " ", "0") TO vdO1
           DO gnU_1200d WITH "1"
           IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                STORE STRTRAN(STR(VAL(vdO2)+1, 7, 0), " ", "0") TO vdO2
                DO gnU_1200d WITH "2"
           ENDIF
           DO gfA_1200d
           IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                DO grE_1200d
           ENDIF
           STORE 00 TO xiTe, xiTt, xiT1, tdC1, tdC2, tdC3, tvAl, tnEt,  ;
                 tiGv, ttOt
           IF (vtD1="FA" .AND. mlL0="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="BO" .AND. ml0b="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="NP" .AND. ml0n="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
              (vtD1="CT" .AND. ml0c="S" .AND. LEN(ALLTRIM(xrEf))>0)
                STORE xiT1+1 TO xiT1
           ENDIF
           SELECT itE_ped
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF EOF() .OR. (vtD1="FA" .AND. mlLz="N") .OR. (vtD1="BO" .AND.  ;
              mlLb="N") .OR. mlL1=0 .OR. (vtD1="NP" .AND. mlLn="N") .OR.  ;
              (vtD1="CT" .AND. mlLc="N")
                STORE xiT1+1 TO xiT1
           ELSE
                STORE xiT1+2 TO xiT1
           ENDIF
      ENDIF
      SELECT deT_ped
      STORE f1201des TO xdEs
      STORE f1201dcr TO xdCr
      STORE f1201cuv TO xcUv
      STORE f1201nuv TO xnUv
      STORE f1201cuc TO xcUc
      STORE f1201nuc TO xnUc
      STORE f1201med TO vmEd
      STORE f1201sol TO xsOl
      STORE f1201usd TO xuSd
      STORE f1201pre TO vpRe
      STORE f1201pro TO vpRo
      STORE f1201pr1 TO vpR1
      STORE f1201pdc TO vpDc
      STORE f1201dct TO vdCt
      STORE f1201md1 TO xmD1
      STORE f1201md2 TO xmD2
      STORE f1201md3 TO xmD3
      STORE f1201ref TO xrEf
      STORE f1201lar TO xlAr
      STORE f1201la1 TO vlA1
      STORE f1201la2 TO vlA2
      STORE f1201la3 TO xlA3
      STORE f1201la4 TO xlA4
      STORE f1201la5 TO xlA5
      STORE f1201la6 TO xlA6
      STORE f1201la7 TO xlA7
      STORE f1201la8 TO xlA8
      STORE f1201la9 TO xlA9
      STORE f1201anc TO xaNc
      STORE f1201an1 TO vaN1
      STORE f1201an2 TO vaN2
      STORE f1201an3 TO xaN3
      STORE f1201an4 TO xaN4
      STORE f1201an5 TO xaN5
      STORE f1201an6 TO xaN6
      STORE f1201an7 TO xaN7
      STORE f1201an8 TO xaN8
      STORE f1201an9 TO xaN9
      STORE f1201alt TO xaLt
      STORE f1201al1 TO xaL1
      STORE f1201al2 TO xaL2
      STORE f1201al3 TO xaL3
      STORE f1201al4 TO xaL4
      STORE f1201al5 TO xaL5
      STORE f1201al6 TO xaL6
      STORE f1201al7 TO xaL7
      STORE f1201al8 TO xaL8
      STORE f1201al9 TO xaL9
      STORE f1201esp TO veSp
      DO caL_1200b IN PVI1200B
      STORE vnEt TO xtO1
      STORE vtOt TO xtO2
      REPLACE f1201cad WITH f1201cad+vcAn
      IF mcAj=1 .AND. vsRr=1
           REPLACE f1201cjd WITH f1201cjd+vcAj
           IF VAL(ALLTRIM(xrEf))=f1201cjd .AND. f1201can<>f1201cad .AND.  ;
              f1201cjd>0
                STORE f1201can-f1201cad TO ccAn
                REPLACE f1201can WITH f1201cad
                REPLACE f1201pie WITH vpIe
                REPLACE f1201pr1 WITH vpR1
                REPLACE f1201dct WITH vdCt
                REPLACE f1201to1 WITH xtO1
                REPLACE f1201to2 WITH xtO2
           ENDIF
      ELSE
           STORE 00 TO ccAn
      ENDIF
      UNLOCK
      STORE xiTe+1 TO xiTe
      DO gdF_1200d
      IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
           STORE xiTt+1 TO xiTt
           DO gdG_1200d
      ENDIF
      SELECT itE_ped
      IF  .NOT. EOF()
           DO gsE_1200d
      ELSE
           STORE tvAl+xtO2 TO tvAl
           DO kaR_1200d WITH vcOd
      ENDIF
      SELECT deT_fact
      UNLOCK
      SELECT deT_remi
      UNLOCK
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc+ ;
         ALLTRIM(f1204cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE f1204cdg TO vcDg
           STORE f1204cun TO vcUn
           STORE f1204for TO vfOr
           STORE f1204dsp TO vdSp
           STORE f1204dst TO vdSt
           STORE f1204ttt TO vtTt
           SELECT deT_fact
           STORE f1201can TO vcAn
           SELECT coN_fact
           DO nuEvo_rg
           REPLACE f1304tdo WITH vtD1
           REPLACE f1304ser WITH vsE1
           REPLACE f1304doc WITH vdO1
           REPLACE f1304cod WITH vcOd
           REPLACE f1304cdg WITH vcDg
           REPLACE f1304can WITH vcAn*vcUn
           REPLACE f1304cun WITH vcUn
           REPLACE f1304for WITH vfOr
           REPLACE f1304dsp WITH vdSp
           REPLACE f1304dst WITH vdSt
           REPLACE f1304ttt WITH vtTt
           UNLOCK
           IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
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
           ENDIF
           SELECT kaRdex
           SEEK ALLTRIM(vcDg)+"*"+SUBSTR(DTOC(vfE1), 7, 4)+ ;
                SUBSTR(DTOC(vfE1), 4, 2)+SUBSTR(DTOC(vfE1), 1, 2)+"2"+"1"+ ;
                vtD1+vsE1+vdO1
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcDg
                REPLACE f2990ano WITH SUBSTR(DTOC(vfE1), 7, 4)
                REPLACE f2990mes WITH SUBSTR(DTOC(vfE1), 4, 2)
                REPLACE f2990dia WITH SUBSTR(DTOC(vfE1), 1, 2)
                REPLACE f2990tpp WITH "1"
                REPLACE f2990tpo WITH "2"
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH vcAn*vcUn
                REPLACE f2990caj WITH 0
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH vtD1
                REPLACE f2990ser WITH vsE1
                REPLACE f2990doc WITH vdO1
                REPLACE f2990sr1 WITH vsE2
                REPLACE f2990rem WITH vdO2
                REPLACE f2990emi WITH vfE1
                REPLACE f2990fem WITH vfE1
                REPLACE f2990tit WITH xtIt
                REPLACE f2990cli WITH xcLi
                REPLACE f2990nom WITH xnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH "CJ"
           ELSE
                REPLACE f2990can WITH f2990can+(vcAn*vcUn)
           ENDIF
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcDg)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(vcDg)+"*"+SUBSTR(DTOC(vfE1), 7, 4)+ ;
                SUBSTR(DTOC(vfE1), 4, 2)+SUBSTR(DTOC(vfE1), 1, 2)+"2"+"1"+ ;
                vtD1+vsE1+vdO1
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcDg)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcDg)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcDg)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
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
           SELECT deT_ped
           DO orD_0000a WITH "1201", "V", "F1201COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT coN_ped
           DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO grA_stock IN PAI2700A WITH vcDg
           SELECT deT_ped
           DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT coN_ped
           DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
           SKIP
      ENDDO
      SELECT teMporal_7
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM7cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE ftM7ped TO vpEd
           STORE ftM7sec TO vsEc
           STORE ftM7pla TO vpLa
           STORE ftM7mot TO vmOt
           SELECT seR_ped
           DO nuEvo_rg
           REPLACE f1203tdo WITH vtDo
           REPLACE f1203ser WITH vsEr
           REPLACE f1203doc WITH vdOc
           REPLACE f1203cod WITH vcOd
           REPLACE f1203ped WITH vpEd
           REPLACE f1203sec WITH vsEc
           REPLACE f1203pla WITH vpLa
           UNLOCK
           SELECT seR_fact
           DO nuEvo_rg
           REPLACE f1303tdo WITH vtD1
           REPLACE f1303ser WITH vsE1
           REPLACE f1303doc WITH vdO1
           REPLACE f1303cod WITH vcOd
           REPLACE f1303ped WITH vpEd
           REPLACE f1303sec WITH vsEc
           REPLACE f1303pla WITH vpLa
           REPLACE f1303mot WITH vmOt
           UNLOCK
           IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                DO gpR_1200d
           ENDIF
           SELECT kaRdex_series
           DO nuEvo_rg
           REPLACE f2991cod WITH vcOd
           REPLACE f2991ped WITH vpEd
           REPLACE f2991sec WITH vsEc
           REPLACE f2991ano WITH SUBSTR(DTOC(vfE1), 7, 4)
           REPLACE f2991mes WITH SUBSTR(DTOC(vfE1), 4, 2)
           REPLACE f2991dia WITH SUBSTR(DTOC(vfE1), 1, 2)
           REPLACE f2991tpp WITH "1"
           REPLACE f2991tpo WITH "2"
           REPLACE f2991pla WITH vpLa
           REPLACE f2991mot WITH vmOt
           REPLACE f2991est WITH "V"
           REPLACE f2991tdo WITH vtD1
           REPLACE f2991ser WITH vsE1
           REPLACE f2991doc WITH vdO1
           UNLOCK
           STORE vpEd TO vpD1
           DO grA_serie IN PAI2700A
           SELECT teMporal_7
           SKIP
      ENDDO
      SELECT deT_ped
      SEEK vtDo+vsEr+vdOc+STR(xrEc, 2, 0)
      SKIP
 ENDDO
 SELECT caB_fact
 DO ct1_1200b IN PVI1200B
 DO ct2_1200b IN PVI1200B
 REPLACE f1300net WITH tnEt
 REPLACE f1300igv WITH tiGv
 REPLACE f1300tot WITH ttOt
 UNLOCK
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      SELECT caB_remi
      UNLOCK
 ENDIF
 STORE 00 TO tcAn, tcAj
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      STORE f1201cod TO vcOd
      STORE 0 TO vcAj
      STORE f1201can-f1201cad TO vcAn
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. mcAj=1 .AND. f2111ser=1
           SELECT deT_ped
           IF VAL(ALLTRIM(f1201ref))>0
                STORE VAL(ALLTRIM(f1201ref))-f1201cjd TO vcAj
                IF vcAn=0
                     REPLACE f1201cjd WITH VAL(ALLTRIM(f1201ref))
                     STORE 0 TO vcAj
                ENDIF
                IF vcAj=0 .AND. VAL(ALLTRIM(f1201ref))=f1201cjd
                     REPLACE f1201cad WITH f1201can
                     STORE 0 TO vcAn
                ENDIF
           ENDIF
      ENDIF
      SELECT deT_ped
      STORE tcAn+vcAn TO tcAn
      STORE tcAj+vcAj TO tcAj
      SKIP
 ENDDO
 SELECT caB_ped
 IF tcAn=0 .AND. tcAj=0
      REPLACE f1200est WITH "5"
      IF vsW1=2
           SELECT teMporal
           REPLACE f1200est WITH "4"
      ENDIF
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE k_Tab TO mkEy
ENDPROC
*
PROCEDURE Num_1200d
 UNLOCK ALL
 SELECT nuMeracion
 SEEK vtD1+vsE1
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtD1
      REPLACE f9999ser WITH vsE1
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtD1+vsE1
 STORE f9999num TO vdO1
 STORE STRTRAN(STR(VAL(vdO1)+1, 7, 0), " ", "0") TO vdO1
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vsE2))<>0
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
 ENDIF
ENDPROC
*
PROCEDURE Gnu_1200d
 PARAMETER pgRa
 SELECT nuMeracion
 DO CASE
      CASE pgRa="1"
           SEEK vtD1+vsE1
           REPLACE f9999num WITH vdO1
           SELECT tmP_doc1
           APPEND BLANK
           REPLACE f1300ser WITH vsE1
           REPLACE f1300doc WITH vdO1
           SELECT nuMeracion
      CASE pgRa="2"
           SEEK vtD2+vsE2
           REPLACE f9999num WITH vdO2
           SELECT tmP_doc2
           APPEND BLANK
           REPLACE f2600ser WITH vsE2
           REPLACE f2600doc WITH vdO2
           SELECT nuMeracion
 ENDCASE
ENDPROC
*
PROCEDURE GFa_1200d
 SELECT caB_fact
 SEEK vtD1+vsE1+vdO1
 IF EOF()
      DO nuEvo_rg
      REPLACE f1300tdo WITH vtD1
      REPLACE f1300ser WITH vsE1
      REPLACE f1300doc WITH vdO1
      REPLACE f1300int WITH 0
      REPLACE f1300net WITH 0
      REPLACE f1300igv WITH 0
      REPLACE f1300tot WITH 0
 ENDIF
 REPLACE f1300tit WITH xtIt
 REPLACE f1300ntt WITH xnTt
 REPLACE f1300cli WITH xcLi
 REPLACE f1300suc WITH xsUc
 REPLACE f1300nom WITH xnOm
 REPLACE f1300dir WITH xdIr
 REPLACE f1300dis WITH xdIs
 REPLACE f1300dep WITH xdEp
 REPLACE f1300ruc WITH xrUc
 REPLACE f1300ele WITH xdNi
 REPLACE f1300tel WITH xtEl
 REPLACE f1300ven WITH xvEn
 REPLACE f1300nve WITH xnVe
 REPLACE f1300com WITH xcOm
 REPLACE f1300dtc WITH xdTc
 REPLACE f1300dcl WITH xdCl
 REPLACE f1300mon WITH xmOn
 REPLACE f1300fpa WITH xfPa
 REPLACE f1300nfp WITH xnFp
 REPLACE f1300dia WITH xdIa
 REPLACE f1300tfp WITH xtFp
 REPLACE f1300pig WITH xpIg
 REPLACE f1300srp WITH vsEr
 REPLACE f1300ped WITH vdOc
 REPLACE f1300cop WITH 0
 REPLACE f1300tec WITH SPACE(02)
 REPLACE f1300nte WITH SPACE(70)
 REPLACE f1300cm1 WITH SPACE(48)
 REPLACE f1300cm2 WITH xcM1
 REPLACE f1300det WITH SPACE(01)
 REPLACE f1300cmm WITH SPACE(01)
 REPLACE f1300est WITH "1"
 REPLACE f1300can WITH "1"
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 REPLACE f1300maq WITH mmAq
 REPLACE f1300fem WITH vfE1
 IF mdSp=2
      REPLACE f1300fde WITH CTOD("  /  /    ")
 ELSE
      REPLACE f1300fde WITH vfE1
 ENDIF
 REPLACE f1300swg WITH vsWg
 REPLACE f1300pgd WITH vpGd
 REPLACE f1300ppn WITH vpPn
 REPLACE f1300ppa WITH vpPa
 REPLACE f1300ppd WITH vpPd
 REPLACE f1300ppp WITH vpPp
 REPLACE f1300tra WITH vtRa
 REPLACE f1300lug WITH vlUg
 REPLACE f1300lud WITH vlUd
 REPLACE f1300lup WITH vlUp
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      IF LEN(ALLTRIM(f1300cm1))=0
           REPLACE f1300cm1 WITH vsE2+"-"+vdO2
      ELSE
           REPLACE f1300cm1 WITH ALLTRIM(f1300cm1)+","+vsE2+"-"+vdO2
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE GRe_1200d
 SELECT caB_remi
 SEEK vtD2+vsE2+vdO2
 IF EOF()
      DO nuEvo_rg
      REPLACE f2600tdo WITH vtD2
      REPLACE f2600ser WITH vsE2
      REPLACE f2600doc WITH vdO2
 ENDIF
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
 REPLACE f2600td1 WITH vtD1
 REPLACE f2600sr1 WITH vsE1
 REPLACE f2600do1 WITH vdO1
 REPLACE f2600fem WITH vfE1
 REPLACE f2600ffa WITH vfE1
 REPLACE f2600srp WITH vsEr
 REPLACE f2600ped WITH vdOc
 REPLACE f2600pes WITH tpEs
 REPLACE f2600cst WITH 2
 REPLACE f2600mot WITH vmOt
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
 REPLACE f2600cim WITH vcIm
 REPLACE f2600cm1 WITH xcM2
 REPLACE f2600cm2 WITH SPACE(80)
 REPLACE f2600est WITH "1"
 REPLACE f2600usu WITH muSu
 REPLACE f2600dat WITH DATE()
 REPLACE f2600tim WITH TIME()
 REPLACE f2600tra WITH vtRa
 REPLACE f2600tno WITH vtNo
 REPLACE f2600tdi WITH vtDi
 REPLACE f2600tds WITH vtDs
 REPLACE f2600tdp WITH vtDp
 REPLACE f2600tru WITH vtRu
 REPLACE f2600alm WITH vaLm
 REPLACE f2600lug WITH vlUg
 REPLACE f2600lud WITH vlUd
 REPLACE f2600lup WITH vlUp
 REPLACE f2600lg2 WITH vlG2
 REPLACE f2600ld2 WITH vlD2
 REPLACE f2600lp2 WITH vlP2
 UNLOCK
ENDPROC
*
PROCEDURE Gdf_1200d
 SELECT deT_fact
 DO nuEvo_rg
 REPLACE f1301tdo WITH vtD1
 REPLACE f1301ser WITH vsE1
 REPLACE f1301doc WITH vdO1
 REPLACE f1301ite WITH xiTe
 REPLACE f1301cod WITH vcOd
 REPLACE f1301des WITH xdEs
 REPLACE f1301dcr WITH xdCr
 REPLACE f1301cuv WITH xcUv
 REPLACE f1301nuv WITH xnUv
 REPLACE f1301cuc WITH xcUc
 REPLACE f1301nuc WITH xnUc
 REPLACE f1301med WITH vmEd
 REPLACE f1301can WITH vcAn
 REPLACE f1301pes WITH 0
 REPLACE f1301pie WITH vpIe
 REPLACE f1301sol WITH xsOl
 REPLACE f1301usd WITH xuSd
 REPLACE f1301pre WITH vpRe
 REPLACE f1301pro WITH vpRo
 REPLACE f1301pr1 WITH vpR1
 REPLACE f1301pdc WITH vpDc
 REPLACE f1301dct WITH vdCt
 REPLACE f1301md1 WITH xmD1
 REPLACE f1301md2 WITH xmD2
 REPLACE f1301md3 WITH xmD3
 IF mcAj=1 .AND. vsRr=1
      REPLACE f1301ref WITH ALLTRIM(STR(vcAj, 5, 0))
 ELSE
      REPLACE f1301ref WITH xrEf
 ENDIF
 REPLACE f1301lar WITH xlAr
 REPLACE f1301la1 WITH vlA1
 REPLACE f1301la2 WITH vlA2
 REPLACE f1301la3 WITH xlA3
 REPLACE f1301la4 WITH xlA4
 REPLACE f1301la5 WITH xlA5
 REPLACE f1301la6 WITH xlA6
 REPLACE f1301la7 WITH xlA7
 REPLACE f1301la8 WITH xlA8
 REPLACE f1301la9 WITH xlA9
 REPLACE f1301anc WITH xaNc
 REPLACE f1301an1 WITH vaN1
 REPLACE f1301an2 WITH vaN2
 REPLACE f1301an3 WITH xaN3
 REPLACE f1301an4 WITH xaN4
 REPLACE f1301an5 WITH xaN5
 REPLACE f1301an6 WITH xaN6
 REPLACE f1301an7 WITH xaN7
 REPLACE f1301an8 WITH xaN8
 REPLACE f1301an9 WITH xaN9
 REPLACE f1301alt WITH xaLt
 REPLACE f1301al1 WITH xaL1
 REPLACE f1301al2 WITH xaL2
 REPLACE f1301al3 WITH xaL3
 REPLACE f1301al4 WITH xaL4
 REPLACE f1301al5 WITH xaL5
 REPLACE f1301al6 WITH xaL6
 REPLACE f1301al7 WITH xaL7
 REPLACE f1301al8 WITH xaL8
 REPLACE f1301al9 WITH xaL9
 REPLACE f1301esp WITH veSp
 REPLACE f1301to1 WITH xtO1
 REPLACE f1301to2 WITH xtO2
 IF mdSp=2
      REPLACE f1301fde WITH CTOD("  /  /    ")
 ELSE
      REPLACE f1301fde WITH vfE1
 ENDIF
ENDPROC
*
PROCEDURE Gdg_1200d
 SELECT deT_remi
 DO nuEvo_rg
 REPLACE f2601tdo WITH vtD2
 REPLACE f2601ser WITH vsE2
 REPLACE f2601doc WITH vdO2
 REPLACE f2601ite WITH xiTt
 REPLACE f2601cod WITH vcOd
 REPLACE f2601des WITH xdEs
 REPLACE f2601dcr WITH xdCr
 REPLACE f2601cuv WITH xcUv
 REPLACE f2601nuv WITH xnUv
 REPLACE f2601cuc WITH xcUc
 REPLACE f2601nuc WITH xnUc
 REPLACE f2601med WITH vmEd
 REPLACE f2601can WITH vcAn
 IF mcAj=1 .AND. vsRr=1
      REPLACE f2601caj WITH vcAj
 ELSE
      REPLACE f2601caj WITH 0
      REPLACE f2601ref WITH xrEf
 ENDIF
 REPLACE f2601pie WITH vpIe
 REPLACE f2601lar WITH xlAr
 REPLACE f2601la1 WITH vlA1
 REPLACE f2601la2 WITH vlA2
 REPLACE f2601la3 WITH xlA3
 REPLACE f2601la4 WITH xlA4
 REPLACE f2601la5 WITH xlA5
 REPLACE f2601la6 WITH xlA6
 REPLACE f2601la7 WITH xlA7
 REPLACE f2601la8 WITH xlA8
 REPLACE f2601la9 WITH xlA9
 REPLACE f2601anc WITH xaNc
 REPLACE f2601an1 WITH vaN1
 REPLACE f2601an2 WITH vaN2
 REPLACE f2601an3 WITH xaN3
 REPLACE f2601an4 WITH xaN4
 REPLACE f2601an5 WITH xaN5
 REPLACE f2601an6 WITH xaN6
 REPLACE f2601an7 WITH xaN7
 REPLACE f2601an8 WITH xaN8
 REPLACE f2601an9 WITH xaN9
 REPLACE f2601alt WITH xaLt
 REPLACE f2601al1 WITH xaL1
 REPLACE f2601al2 WITH xaL2
 REPLACE f2601al3 WITH xaL3
 REPLACE f2601al4 WITH xaL4
 REPLACE f2601al5 WITH xaL5
 REPLACE f2601al6 WITH xaL6
 REPLACE f2601al7 WITH xaL7
 REPLACE f2601al8 WITH xaL8
 REPLACE f2601al9 WITH xaL9
 REPLACE f2601esp WITH veSp
ENDPROC
*
PROCEDURE Kar_1200d
 PARAMETER pcOd
 SELECT kaRdex
 DO nuEvo_rg
 REPLACE f2990cod WITH pcOd
 REPLACE f2990ano WITH SUBSTR(DTOC(vfE1), 7, 4)
 REPLACE f2990mes WITH SUBSTR(DTOC(vfE1), 4, 2)
 REPLACE f2990dia WITH SUBSTR(DTOC(vfE1), 1, 2)
 REPLACE f2990tpp WITH "1"
 REPLACE f2990tpo WITH "2"
 REPLACE f2990tra WITH "1"
 REPLACE f2990can WITH vcAn
 REPLACE f2990caj WITH vcAj
 REPLACE f2990sld WITH 0
 REPLACE f2990slc WITH 0
 REPLACE f2990sls WITH 0
 REPLACE f2990scs WITH 0
 REPLACE f2990cos WITH vpRe
 REPLACE f2990dct WITH 0
 REPLACE f2990gas WITH 0
 REPLACE f2990prm WITH 0
 REPLACE f2990tdo WITH vtD1
 REPLACE f2990ser WITH vsE1
 REPLACE f2990doc WITH vdO1
 REPLACE f2990sr1 WITH vsE2
 REPLACE f2990rem WITH vdO2
 REPLACE f2990td1 WITH vtD1
 REPLACE f2990srf WITH vsE1
 REPLACE f2990fac WITH vdO1
 REPLACE f2990emi WITH vfE1
 REPLACE f2990fem WITH vfE1
 REPLACE f2990tit WITH xtIt
 REPLACE f2990cli WITH xcLi
 REPLACE f2990nom WITH xnOm
 REPLACE f2990pig WITH miGv
 REPLACE f2990mon WITH xmOn
 REPLACE f2990tne WITH 0
 REPLACE f2990tig WITH 0
 REPLACE f2990tfa WITH 0
 UNLOCK
 SKIP -1
 IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(pcOd)+"*"
      STORE f2990sld TO vsLd
      STORE f2990slc TO vsLc
 ELSE
      STORE 0 TO vsLd, vsLc
 ENDIF
 SEEK ALLTRIM(pcOd)+"*"+SUBSTR(DTOC(vfE1), 7, 4)+SUBSTR(DTOC(vfE1), 4, 2)+ ;
      SUBSTR(DTOC(vfE1), 1, 2)+"2"+"1"+vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(pcOd)+"*"
      STORE f2990ano TO caNo
      STORE f2990mes TO cmEs
      STORE f2990dia TO cdIa
      STORE f2990tpo TO ctPo
      STORE f2990tpp TO ctPp
      STORE f2990tdo TO ctDo
      STORE f2990ser TO csEr
      STORE f2990doc TO cdOc
      SEEK ALLTRIM(pcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(pcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ ;
              ctDo+csEr+cdOc
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
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_ped
 DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO grA_stock IN PAI2700A WITH pcOd
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_ped
 DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gse_1200d
 PRIVATE ptPo, puLt
 DO CASE
      CASE vtPo=5
           STORE 1 TO ptPo
      CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
           STORE 2 TO ptPo
      CASE vtPo=4 .OR. vtPo=7
           STORE 3 TO ptPo
 ENDCASE
 DO CASE
      CASE vtD1="FA"
           STORE mlFa TO puLt
      CASE vtD1="BO"
           STORE mlBo TO puLt
      CASE vtD1="NP"
           STORE mlNp TO puLt
 ENDCASE
 SELECT itE_ped
 STORE 00 TO clIn, xtO1, xtO2, vcAn, vpIe
 DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc+ALLTRIM(f1202cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF f1202opc<>"S" .AND. ((vtD1="FA" .AND. mlLz="S") .OR. (vtD1="BO"  ;
         .AND. mlLb="S") .OR. (vtD1="NP" .AND. mlLn="S") .OR. (vtD1="CT"  ;
         .AND. mlLc="S"))
           IF vmD3=1
                STORE clIn+1 TO clIn
           ENDIF
           IF (clIn>mlL1 .AND. mlL1>0 .AND. ptPo=1) .OR. (clIn>mlL2 .AND.  ;
              mlL2>0 .AND. ptPo=2) .OR. (clIn>mlL3 .AND. mlL3>0 .AND. ptPo=3)
                STORE 01 TO clIn
                STORE xiT1+1 TO xiT1
                IF xiT1>puLt
                     DO caL_1200b IN PVI1200B
                     STORE vnEt TO xtO1
                     STORE vtOt TO xtO2
                     STORE tvAl+xtO2 TO tvAl
                     IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                          SELECT deT_remi
                          REPLACE f2601can WITH vcAn
                          REPLACE f2601pie WITH vpIe
                          UNLOCK
                     ENDIF
                     SELECT deT_fact
                     DO ct1_1200b IN PVI1200B
                     DO ct2_1200b IN PVI1200B
                     REPLACE f1301can WITH vcAn
                     REPLACE f1301pie WITH vpIe
                     REPLACE f1301pr1 WITH vpR1
                     REPLACE f1301pdc WITH vpDc
                     REPLACE f1301dct WITH vdCt
                     REPLACE f1301to1 WITH xtO1
                     REPLACE f1301to2 WITH xtO2
                     UNLOCK
                     SELECT caB_fact
                     REPLACE f1300net WITH tnEt
                     REPLACE f1300igv WITH tiGv
                     REPLACE f1300tot WITH ttOt
                     UNLOCK
                     DO kaR_1200d WITH vcOd
                     IF vsWg=2
                          STORE 00 TO vpGd
                     ENDIF
                     STORE STRTRAN(STR(VAL(vdO1)+1, 7, 0), " ", "0") TO vdO1
                     DO gnU_1200d WITH "1"
                     IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                          STORE STRTRAN(STR(VAL(vdO2)+1, 7, 0), " ", "0")  ;
                                TO vdO2
                          DO gnU_1200d WITH "2"
                     ENDIF
                     DO gfA_1200d
                     IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                          DO grE_1200d
                     ENDIF
                     STORE 00 TO xiTe, xiTt, xiT1, tdC1, tdC2, tdC3, tvAl,  ;
                           tnEt, tiGv, ttOt
                     STORE 00 TO clIn, xtO1, xtO2, vcAn, vpIe
                     STORE xiT1+2 TO xiT1
                     STORE xiTe+1 TO xiTe
                     IF (vtD1="FA" .AND. mlL0="S" .AND.  ;
                        LEN(ALLTRIM(xrEf))>0) .OR. (vtD1="BO" .AND. ml0b= ;
                        "S" .AND. LEN(ALLTRIM(xrEf))>0) .OR. (vtD1="NP"  ;
                        .AND. ml0n="S" .AND. LEN(ALLTRIM(xrEf))>0) .OR.  ;
                        (vtD1="CT" .AND. ml0c="S" .AND. LEN(ALLTRIM(xrEf))>0)
                          STORE xiT1+1 TO xiT1
                     ENDIF
                     DO gdF_1200d
                     IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
                          STORE xiTt+1 TO xiTt
                          DO gdG_1200d
                     ENDIF
                     SELECT itE_ped
                     LOOP
                ENDIF
           ENDIF
           SELECT itE_ped
      ENDIF
      STORE f1202rcc TO xrCc
      STORE f1202opc TO xoPc
      STORE f1202un1 TO xuN1
      STORE f1202un2 TO xuN2
      STORE f1202mla TO xmLa
      STORE f1202man TO xmAn
      STORE f1202p11 TO xp11
      STORE f1202p12 TO xp12
      STORE f1202p21 TO xp21
      STORE f1202p22 TO xp22
      STORE f1202ctd TO xcTd
      STORE f1202pie TO xpIe
      STORE f1202cm1 TO xcMm
      SELECT itE_fact
      DO nuEvo_rg
      REPLACE f1302tdo WITH vtD1
      REPLACE f1302ser WITH vsE1
      REPLACE f1302doc WITH vdO1
      REPLACE f1302cod WITH vcOd
      REPLACE f1302rcc WITH xrCc
      REPLACE f1302opc WITH xoPc
      REPLACE f1302un1 WITH xuN1
      REPLACE f1302un2 WITH xuN2
      REPLACE f1302mla WITH xmLa
      REPLACE f1302man WITH xmAn
      REPLACE f1302p11 WITH xp11
      REPLACE f1302p12 WITH xp12
      REPLACE f1302p21 WITH xp21
      REPLACE f1302p22 WITH xp22
      REPLACE f1302ctd WITH xcTd
      REPLACE f1302pie WITH xpIe
      REPLACE f1302cm1 WITH xcMm
      UNLOCK
      IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
           DO gsR_1200d
      ENDIF
      DO CASE
           CASE xoPc="S"
                STORE vcAn+xpIe TO vcAn
           CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                STORE vcAn+(xpIe*xcTd) TO vcAn
           CASE vtPo=6 .OR. vtPo=9
                STORE vcAn+(xmLa*xcTd) TO vcAn
           CASE vtPo=8
                STORE vcAn+(xmLa*4*xcTd) TO vcAn
      ENDCASE
      SELECT itE_ped
      SKIP
 ENDDO
 DO caL_1200b IN PVI1200B
 STORE vnEt TO xtO1
 STORE vtOt TO xtO2
 STORE tvAl+xtO2 TO tvAl
 SELECT deT_fact
 REPLACE f1301can WITH vcAn
 REPLACE f1301pie WITH vpIe
 REPLACE f1301pr1 WITH vpR1
 REPLACE f1301pdc WITH vpDc
 REPLACE f1301dct WITH vdCt
 REPLACE f1301to1 WITH xtO1
 REPLACE f1301to2 WITH xtO2
 UNLOCK
 IF LEN(ALLTRIM(vtD2))<>0 .AND. LEN(ALLTRIM(vdO2))<>0
      SELECT deT_remi
      REPLACE f2601can WITH vcAn
      REPLACE f2601pie WITH vpIe
      UNLOCK
 ENDIF
 DO kaR_1200d WITH vcOd
 RELEASE ptPo, puLt
ENDPROC
*
PROCEDURE Gsr_1200d
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
ENDPROC
*
PROCEDURE Gpr_1200d
 SELECT seR_remi
 DO nuEvo_rg
 REPLACE f2603tdo WITH vtD2
 REPLACE f2603ser WITH vsE2
 REPLACE f2603doc WITH vdO2
 REPLACE f2603cod WITH vcOd
 REPLACE f2603ped WITH vpEd
 REPLACE f2603sec WITH vsEc
 REPLACE f2603pla WITH vpLa
 REPLACE f2603mot WITH vmOt
 UNLOCK
ENDPROC
*
PROCEDURE Alm_1200d
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
      IF LEN(ALLTRIM(vsR1))<>0
           STORE f9214sr1 TO vsR1
      ELSE
           STORE msEr(01) TO vsR1
      ENDIF
      IF LEN(ALLTRIM(vsR2))<>0
           STORE f9214sr2 TO vsR2
      ELSE
           STORE msEr(02) TO vsR2
      ENDIF
      IF LEN(ALLTRIM(vsR4))<>0
           STORE f9214sr3 TO vsR4
      ELSE
           STORE msEr(04) TO vsR4
      ENDIF
      DO CASE
           CASE vtD1="FA"
                STORE vsR1 TO vsE1
           CASE vtD1="BO"
                STORE vsR2 TO vsE1
           CASE vtD1="NP"
                STORE vsR3 TO vsE1
      ENDCASE
      IF vtD2="GR" .AND. LEN(ALLTRIM(vsE2))<>0
           STORE vsR4 TO vsE2
      ENDIF
      DO nuM_1200d
      DO daL_1200d
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
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Dal_1200d
 DO coLbln
 DO CASE
      CASE LEN(ALLTRIM(vaLm))<>0
           DO coLsc3
 ENDCASE
 @vFI1+2.5,vCO2+25 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,83.9 Pict "@S70"
 DO coLbln
 DO CASE
      CASE vtD1="FA" .AND. LEN(ALLTRIM(vtD2))<>0
           @vFI1+25.2,vCO2+32 Say vSE1 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+39 Say vDO1 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
           @vFI1+25.2,vCO2+82 Say vSE2 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+89 Say vDO2 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
      CASE vtD1="FA"
           @vFI1+25.2,vCO2+54 Say vSE1 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+61 Say vDO1 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
      CASE vtD1="BO" .AND. LEN(ALLTRIM(vtD2))<>0
           @vFI1+25.2,vCO2+32 Say vSE1 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+39 Say vDO1 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
           @vFI1+25.2,vCO2+82 Say vSE2 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+89 Say vDO2 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
      CASE vtD1="BO"
           @vFI1+25.2,vCO2+61 Say vSE1 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+68 Say vDO1 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
      CASE vtD1="NP"
           @vFI1+25.2,vCO2+62 Say vSE1 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+69 Say vDO1 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
 ENDCASE
ENDPROC
*
PROCEDURE Tra_1200d
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
      DO dtR_1200d
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
PROCEDURE Dtr_1200d
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
PROCEDURE Cho_1200d
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
PROCEDURE Ayu_1200d
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
PROCEDURE Ca1_1200d
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
      @vFI1+12,vCO2+16 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S20"
      @vFI1+12,vCO2+69 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S10"
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
PROCEDURE Ca2_1200d
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
PROCEDURE Al1_1200d
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
PROCEDURE Tr1_1200d
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
PROCEDURE Rs1_1200d
 DO rs1_1200c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_1200d
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1200d
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
      CASE mfIl>=vfBo+mfI1 .AND. mfIl<=vfBo+mfI2 .AND. mcCc>=vcBo+mcO1  ;
           .AND. mcCc<=vcBo+mcO2 .AND. LEN(ALLTRIM(vdO2))<>0
           DO coLbln
           STORE SPACE(03) TO vsE2
           STORE SPACE(07) TO vdO2
           @vFI1+25.2,vCO2+82 Say vSE2 Font "&mLetAri",11 Style "NQ" Pict "999"     Size 1,3.6
           @vFI1+25.2,vCO2+89 Say vDO2 Font "&mLetAri",11 Style "NQ" Pict "9999999" Size 1,8
           DO prEsiona WITH "3", "DESCAR", vfBo, vcBo
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
           DO veR_1200d
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
PROCEDURE Hl1_1200d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo="7"
           @ pfIl+0, 02 SAY  ;
             "En esta parte del programa se tienen que ingresar los datos de la Guía"
           @ pfIl+1, 02 SAY  ;
             "de Remisión. Puede generarse hasta 2 Guías poniendo el Punto de Parti-"
           @ pfIl+2, 02 SAY "da y Transportistas adicionales."
           @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
           STORE pfIl+6 TO pfIl
      OTHERWISE
           @ pfIl+0, 02 SAY  ;
             "En esta parte del programa se tienen que ingresar los datos de la Fac-"
           @ pfIl+1, 02 SAY  ;
             "tura, como no tiene Guía de Remisión los datos de las Guias se obvian."
           @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
           STORE pfIl+5 TO pfIl
 ENDCASE
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
 @ pfIl+1, 21 SAY "GRABAR DOCUMENTO(S)"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
