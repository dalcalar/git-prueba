 SET CENTURY ON
 PUBLIC wsW0
 STORE 02 TO wsW0
 DO tmP_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2700w IN PAI2700W
 IF mkEy=k_Esc
      DO deL_file1 IN PAI2400A
      RETURN
 ENDIF
 DO abR_2400a IN PAI2400A
 IF mkEy=k_Esc
      DO deL_file1 IN PAI2400A
      RETURN
 ENDIF
 SELECT 48
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
 STORE 48 TO muLt
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC ciTe, vsW0, vsW2, vsW3, vcL0, vcL1, vcL2, vcL3, vcL4, vcL5, vcL6,  ;
        vcL7, vcL8
 PUBLIC vcL9, vcLa, vcLb, vnVa, vnDc, vnNt, vnIg, vcO0, vcO1, vtB1, vtB2,  ;
        vtB3, vtB4
 PUBLIC vtB5, vtB6, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7, vfB8, vfB9,  ;
        vfB0, vfBa
 PUBLIC vfBb, vfBc, vfBd, vfBe, vfBf, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
        vcB7, vcB8
 PUBLIC vcB9, vcB0, vcBb, vcBc, vcBd, vcBe, vcBf, vtM1, vtM2, vtMc, vtMd,  ;
        vtMf, vtMi
 PUBLIC vtMn, vtMo, vtMp, vtMq, vtMr, vtMt, vsOr, csOr, voRd, coRd, vmOn,  ;
        vsIg, vtCa
 PUBLIC ctC1, ctC2, ctC3, ctC4, vpIg, vpEd, vsRg, vrEm, vsRf, vfAc, ifAc,  ;
        ufAc, xfAc
 PUBLIC cfAc, vtDf, ctDf, vpRv, cpRv, vsUc, vrUc, vnOm, inOm, unOm, xnOm,  ;
        cnOm, vdIr
 PUBLIC vdIs, vcCo, vnCc, vfPa, vnFp, vdIp, vcM1, vcM2, vpRe, vpUn, xpRe,  ;
        vtOt, vdCt
 PUBLIC tvAl, tnEt, tiGv, ttOt, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC idIa, udIa, xdIa, vnMm, inMm, unMm, xnMm, vtDd, itDd, utDd, xtDd,  ;
        vsRo, isRo
 PUBLIC usRo, xsRo, vdDo, idDo, udDo, xdDo, vtP1, ctP1, vtP2, vtI1, ctI1,  ;
        vtIg, vfIn
 PUBLIC vfRe, cfRe, itDo, utDo, xtDo, isEr, usEr, xsEr, csE1, idOc, udOc,  ;
        xdOc, cdO1
 PUBLIC vdEc, vcOs, vpLn, vtIt, vnTi, vrEd, vdEp, vpEr, vcOn
 STORE SPACE(10) TO vpLn
 STORE SPACE(11) TO vrUc
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(25) TO vdIs
 STORE SPACE(120) TO vdEs
 STORE SPACE(20) TO vsRf, vfAc
 STORE SPACE(50) TO vnCc, vnFp
 STORE SPACE(04) TO vpRv, cpRv, vtIt
 STORE SPACE(02) TO vsUc, vtDf, vcCo, vfPa
 STORE SPACE(03) TO vsOr, csOr, vsRg, csEr
 STORE SPACE(70) TO vnOm, vdIr, vcM1, vcM2, vnTi
 STORE SPACE(07) TO vdOc, vrEm, voRd, coRd, vpEd, cdOc
 STORE "CO" TO vtDo
 STORE "US$" TO vsIg
 STORE miGv TO vpIg
 STORE 00 TO vsTo, vtCa, vcAn, vpRe, vdIp, vtOt, vdCt, tvAl, tnEt, tiGv,  ;
       ttOt, vrEd, vpEr
 STORE 01 TO vtIg, vsW0, vsW3
 STORE 02 TO vmOn
 STORE 01 TO vdEc
 STORE "1" TO vtRa
 STORE DATE() TO vfIn, vfRe, cfRe
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      GOTO BOTTOM
      IF  .NOT. EOF()
           STORE f9111tc1 TO ctC1
           STORE f9111tc2 TO ctC2
           STORE f9111tc3 TO ctC3
           STORE f9111tc4 TO ctC4
           DO nuEvo_rg
           REPLACE f9111fem WITH vfEm
           REPLACE f9111tc1 WITH ctC1
           REPLACE f9111tc2 WITH ctC2
           REPLACE f9111tc3 WITH ctC3
           REPLACE f9111tc4 WITH ctC4
           UNLOCK
           FLUSH
      ENDIF
 ENDIF
 SET READBORDER ON
 DO p00_2400a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2400a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=8 .AND. LEN(ALLTRIM(vtDf))=0
                STORE "Campo de Tipo de Documento vacío..." TO mmSj
           CASE mkEy=k_F2 .AND. viTe=8 .AND. LEN(ALLTRIM(vsRf))=0
                STORE "Campo de Serie vacío..." TO mmSj
           CASE mkEy=k_F2 .AND. viTe=8 .AND. LEN(ALLTRIM(vfAc))=0
                STORE "Campo de Factura vacío..." TO mmSj
           CASE mkEy=k_F2 .AND. viTe=8 .AND. LEN(ALLTRIM(vfAc))<>0
                DO q1_0000a
                DO jaL_2400a IN PAI2400A
                DO p1_0000a
                STORE 08 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe>4 .AND. viTe<>13 .AND. viTe<>14
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe<>3
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=3 .AND. vsW0=02
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe<>3 .AND. viTe<>7 .AND. viTe<>8
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del
                DO CASE
                     CASE mkEy=k_F2 .AND. viTe<3
                          DO coP_2400a IN PAI2400A WITH "2"
                     CASE mkEy=k_F2 .AND. viTe=3
                          DO prV_2400w IN PAI2400W WITH "1"
                          IF LEN(ALLTRIM(vrUc))<>0 .AND. msUn$"AB" .AND.  ;
                             mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                               DO veR_ruc IN FAC0000A WITH "1", vrUc
                               DO CASE
                                    CASE mkEy=1800
                                         STORE  ;
                                          "MOTOR DE BASE DE SUNAT no e encuentra"  ;
                                          TO mmSj
                                         DO poNmsj
                                         STORE 99 TO mkEy
                                         = INKEY(10, "HM")
                                         RETURN
                                    CASE mkEy=1733
                                         STORE  ;
                                          "RUC no se encuentra en la BASE DE SUNAT"  ;
                                          TO mmSj
                                         DO poNmsj
                                         STORE 99 TO mkEy
                                         = INKEY(10, "HM")
                                         RETURN
                                    OTHERWISE
                                         DO coL_fonro
                                         @mFI0+1,mCO0+mUCO-26 Say vCON Font "&mLetAri",15 Style "BQ" Size 1,13
                               ENDCASE
                          ENDIF
                     CASE mkEy=k_F2 .AND. (viTe=13 .OR. viTe=14)
                          DO orD_2400a IN PAI2400A
                     CASE mkEy=k_F3 .AND. viTe=3
                          DO prV_2400w IN PAI2400W WITH "2"
                          IF LEN(ALLTRIM(vrUc))<>0 .AND. msUn$"AB" .AND.  ;
                             mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                               DO veR_ruc IN FAC0000A WITH "1", vrUc
                               DO CASE
                                    CASE mkEy=1800
                                         STORE  ;
                                          "MOTOR DE BASE DE SUNAT no e encuentra"  ;
                                          TO mmSj
                                         DO poNmsj
                                         STORE 99 TO mkEy
                                         = INKEY(10, "HM")
                                    CASE mkEy=1733
                                         STORE  ;
                                          "RUC no se encuentra en la BASE DE SUNAT"  ;
                                          TO mmSj
                                         DO poNmsj
                                         STORE 99 TO mkEy
                                         = INKEY(10, "HM")
                                    OTHERWISE
                                         DO coL_fonro
                                         @mFI0+1,mCO0+mUCO-26 Say vCON Font "&mLetAri",15 Style "BQ" Size 1,13
                               ENDCASE
                          ENDIF
                     CASE mkEy=k_Ctrl_del .AND. viTe=3
                          DO bpR_2400w IN PAI2400W
                     CASE mkEy=k_Ctrl_del .AND. (viTe=7 .OR. viTe=8)
                          DO btD_2400w IN PAI2400W
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2400a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                STORE viTe TO xiTe
                DO p00_2400a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE xiTe TO viTe
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
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=19
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. ((viTe<6 .AND. viTe<>2) .OR. viTe= ;
                7 .OR. viTe=10 .OR. viTe=13 .OR. viTe=18 .OR. viTe=19)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe<3 .OR. viTe=17)
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_F5 .AND. vsW0=1 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F4 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. viTe<3
                STORE 99 TO mkEy
           CASE mkEy=k_F4
                DO tiT_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vsW0=1
                DO diR_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO caM_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 3 TO viTe
           CASE mkEy=k_F7
                DO tdO_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                DO ccO_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                DO fpA_2400w IN PAI2400W
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_2400a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=19
                               DO deT_2400a IN PAI2400A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=3 .AND. vsW0=1
                               STORE 7 TO viTe
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_2400a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=19
                               DO deT_2400a IN PAI2400A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (viTe<5 .AND. viTe<>1) .OR. viTe=6 .OR.  ;
                               viTe=9 .OR. viTe=12
                               STORE 17 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=17
                          STORE 09 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_2400a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=19
                               DO deT_2400a IN PAI2400A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=3 .AND. vsW0=1
                               STORE 7 TO viTe
                          CASE viTe=5
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=6 .AND. viTe<=12
                               STORE viTe+3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=13 .AND. viTe<=16
                               STORE 18 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=17
                               STORE 19 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_2400a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO deT_2400a IN PAI2400A
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=03
                          STORE 01 TO viTe
                     CASE viTe=06
                          STORE 04 TO viTe
                     CASE viTe>=7 .AND. viTe<=9 .AND. vsW0=1
                          STORE 03 TO viTe
                     CASE viTe>=7 .AND. viTe<=8 .AND. vsW0=2
                          STORE 05 TO viTe
                     CASE viTe=09 .AND. vsW0=2
                          STORE 06 TO viTe
                     CASE viTe>=10 .AND. viTe<=15
                          STORE viTe-3 TO viTe
                     CASE viTe=16
                          STORE 03 TO viTe
                     CASE viTe=18
                          STORE 13 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 19 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2400a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 19 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2400a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO deT_2400a IN PAI2400A
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
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(123) Font "&mLetRom",9 Style "BQ" Size 1,123
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=03 .AND. vsW0=1
                     @mMF2,mMC2+42 Say "ESCOGER PROVEEDOR REGISTRADO..."                                                         Font "&mLetRom",9 Style "BT"
                CASE viTe=03 .AND. vsW0=2
                     @mMF2,mMC2+14 Say "DIGITAR NOMBRE DE PROVEEDOR, CAMPO DE 70 CARACTERES ALFANUMÉRICOS..."                    Font "&mLetRom",9 Style "BT"
                CASE viTe=04
                     @mMF2,mMC2+14 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BT"
                CASE viTe=05
                     @mMF2,mMC2+14 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BT"
                CASE viTe=06
                     @mMF2,mMC2+44 Say "DIGITAR RUC DE PROVEEDOR..."                                                             Font "&mLetRom",9 Style "BT"
                CASE viTe=07
                     @mMF2,mMC2+09 Say "EL NÚMERO DE SERIE DEL DOCUMENTO DE COMPRA ES DE 20 CARACTERES ALFANUMÉRICOS..."         Font "&mLetRom",9 Style "BT"
                CASE viTe=08
                     @mMF2,mMC2+12 Say "EL NÚMERO DE DOCUMENTO DE COMPRA ES DE 10 DÍGITOS, NO PUEDE ESTAR VACÍO..."              Font "&mLetRom",9 Style "BT"
                CASE viTe=09
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ES LA DEL DOCUMENTO DE COMPRA..."              Font "&mLetRom",9 Style "BT"
                CASE viTe=10
                     @mMF2,mMC2+22 Say "EL NÚMERO DE SERIE DE LA GUÍA DE REMISIÓN ES DE 001 A 999..."                            Font "&mLetRom",9 Style "BT"
                CASE viTe=11
                     @mMF2,mMC2+18 Say "EL NÚMERO DE LA GUÍA DE REMISIÓN ES DE 7 DÍGITOS, PUEDE ESTAR VACÍO..."                  Font "&mLetRom",9 Style "BT"
                CASE viTe=12
                     @mMF2,mMC2+20 Say "LA FECHA DE INGRESO O DE GUÍA DE REMISIÓN TIENE QUE SER VÁLIDA..."                       Font "&mLetRom",9 Style "BT"
                CASE viTe=13
                     @mMF2,mMC2+22 Say "EL NÚMERO DE SERIE DE LA ORDEN DE COMPRA ES DE 001 A 999..."                             Font "&mLetRom",9 Style "BT"
                CASE viTe=14
                     @mMF2,mMC2+08 Say "EL NÚMERO DE LA ORDEN DE COMPRA ES DE 7 DÍGITOS, PUEDE ESTAR VACÍO SI NO SE USA..."      Font "&mLetRom",9 Style "BT"
                CASE viTe=15
                     @mMF2,mMC2+22 Say "LA FECHA DE REGISTRO DE COMPRAS TIENE QUE SER VÁLIDA..."                                 Font "&mLetRom",9 Style "BT"
                CASE viTe=16
                     @mMF2,mMC2+04 Say "EL NÚMERO DE PEDIDO ES DE 7 CARACTERES ALFANUMERICOS, PUEDE ESTAR VACÍO SI NO SE USA..." Font "&mLetRom",9 Style "BT"
                CASE viTe=17
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."                       Font "&mLetRom",9 Style "BT"
                CASE viTe=18
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BT"
                CASE viTe=19
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO CASE
           CASE viTe=03 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. vsW0=01
                DO coL_fonro
                @mFI0+0.4,mCO0+17.5 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTMP Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO noM_2400w IN PAI2400W
           OTHERWISE
                DO coLbln
                DO CASE
                     CASE viTe=1
                          @mFI0-01.9,mCO0+17.5   Get  vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
                     CASE viTe=2
                          @mFI0-01.9,mCO0+24.2   Get  vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
                     CASE viTe=3
                          @mFI0+00.4,mCO0+17.5   Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTMP,70
                     CASE viTe=4
                          @mFI0+01.9,mCO0+17.5   Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTMP,70
                     CASE viTe=5
                          @mFI0+03.4,mCO0+17.5   Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTMD,25
                     CASE viTe=6
                          @mFI0+03.4,mCO0+vTMR   Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "99999999999" Color ,&mColBlN
                     CASE viTe=7
                          @mFI0+05.5,mCO0+24.0   Edit vSRF Font "&mLetAri",9 Style "NQ" Size 1,16.7,20
                     CASE viTe=8
                          @mFI0+05.5,mCO0+42.0   Edit vFAC Font "&mLetAri",9 Style "NQ" Size 1,16.7,20
                     CASE viTe=9
                          @mFI0+05.5,mCO0+vTMF   Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1                    Color ,&mColBlN
                     CASE viTe=10
                          @mFI0+06.9,mCO0+24.0   Get  vSRG Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"         Color ,&mColBlN
                     CASE viTe=11
                          @mFI0+06.9,mCO0+30.0   Get  vREM Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "9999999"     Color ,&mColBlN
                     CASE viTe=12
                          @mFI0+06.9,mCO0+vTMF   Get  vFIN Font "&mLetAri",9 Style "NQ" Size 1,12.1                    Color ,&mColBlN
                     CASE viTe=13
                          @mFI0+08.3,mCO0+24.0   Get  vSOR Font "&mLetAri",9 Style "NQ" Size 1,03.9 Pict "999"         Color ,&mColBlN
                     CASE viTe=14
                          @mFI0+08.3,mCO0+30.0   Get  vORD Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "!999999"     Color ,&mColBlN
                     CASE viTe=15
                          @mFI0+08.3,mCO0+vTMF   Get  vFRE Font "&mLetAri",9 Style "NQ" Size 1,12.1                    Color ,&mColBlN
                     CASE viTe=16
                          @mFI0+08.3,mCO0+vTMT-2 Get  vPED Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "!9999!!"     Color ,&mColBlN
                     CASE viTe=17
                          @vFBA+00.5,mCO0+vTMI   Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"      Color ,&mColBlN
                     CASE viTe=18
                          @mFI0+10.5,mCO0+20.5   Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,vTMO,70
                     CASE viTe=19
                          @mFI0+11.9,mCO0+20.5   Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,vTMO,70
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
PROCEDURE Ver_2400a
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
           SELECT caB_cpra
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Compra no se encuentra registrada..." TO mmSj
                CASE f2400est="9"
                     STORE "Esta Compra se encuentra anulada..." TO mmSj
                CASE f2400est="2"
                     STORE "Esta Guía se encuentra Procesada...No se puede modificar..."  ;
                           TO mmSj
                CASE f2400est="3"
                     STORE "Esta Guía se encuentra Cerrada...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE f2400tdo TO xtDo
                     STORE f2400ser TO xsEr, csEr
                     STORE f2400doc TO xdOc, cdOc
                     STORE f2400sor TO csOr
                     STORE f2400ord TO coRd
                     DO muE_2400w IN PAI2400W
                     DO diS_2400a IN PAI2400A
                     DO ttT_2400a IN PAI2400A
                     STORE 02 TO viTe
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                     ENDIF
           ENDCASE
      CASE viTe>2 .AND. viTe<6 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Proveedor no puede estar vacío..." TO mmSj
      CASE viTe=3 .AND. vsW0=1 .AND. LEN(ALLTRIM(vpRv))=0
           STORE "Proveedor debe estar registrado en el Maestro de Proveedores..."  ;
                 TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(vrUc))<>0
           IF vrUc<>"00000000000"
                DO vaL_ruc IN FAC0000A WITH vrUc
                IF mkEy=99
                     RETURN
                ENDIF
           ENDIF
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                DO veR_ruc IN FAC0000A WITH "1", vrUc
                DO CASE
                     CASE mkEy=1800
                          STORE "MOTOR DE BASE DE SUNAT no e encuentra" TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          = INKEY(10, "HM")
                          RETURN
                     CASE mkEy=1733
                          STORE "RUC no se encuentra en la BASE DE SUNAT"  ;
                                TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          = INKEY(10, "HM")
                          RETURN
                     OTHERWISE
                          DO coL_fonro
                          @mFI0+1,mCO0+mUCO-26 Say vCON Font "&mLetAri",15 Style "BQ" Size 1,13
                ENDCASE
           ENDIF
           SELECT prOveedores
           DO orD_0000a WITH "2101", "A", "F2101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vrUc)
           DO orD_0000a WITH "2101", "A", "F2101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF  .NOT. EOF()
                STORE 01 TO vsW0
                STORE f2101cod TO vpRv
                STORE f2101nom TO vnOm
                STORE f2101ruc TO vrUc
                SELECT suCursal
                SEEK vpRv
                IF  .NOT. EOF()
                     STORE f2102suc TO vsUc
                     STORE f2102dir TO vdIr
                     STORE f2102dis TO vdIs
                ENDIF
           ENDIF
           DO noM_2400w IN PAI2400W
      CASE viTe=9 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=9
           SELECT caMbio
           SEEK vfEm
           IF EOF()
                STORE "Fecha no tiene Tipo de Cambio registrado..." TO mmSj
           ELSE
                IF vtIg=1
                     DO CASE
                          CASE vfEm<CTOD("01/03/2011") .AND. vpIg=19
                          CASE vpIg=18
                          CASE vfEm<CTOD("01/03/2011") .AND. vpIg<>19
                               DO prE_docum WITH  ;
                                  "El I.G.V. de esa fecha es 19% desea cambiarlo?"
                               IF moPc$"Ss"
                                    STORE 19 TO vpIg
                               ENDIF
                          CASE vpIg<>18
                               DO prE_docum WITH  ;
                                  "El I.G.V. de esa fecha es 18% desea cambiarlo?"
                               IF moPc$"Ss"
                                    STORE 18 TO vpIg
                               ENDIF
                     ENDCASE
                     DO coLbln
                     @vFBA+0.5,mCO0+vTMI Say vPIG Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"
                ENDIF
                DO coL_beige
                STORE f9111tc1 TO vtCa
                @mFI0+5.5,mCO0+vTMT-3 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "99.99999"
           ENDIF
      CASE viTe=13 .AND. AT(" ", vsOr)<>0 .AND. LEN(ALLTRIM(vsOr))<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=14 .AND. AT(" ", voRd)<>0 .AND. LEN(ALLTRIM(voRd))<>0
           STORE "Numero de Orden no puede tener espacios vacíos..." TO mmSj
      CASE viTe=14 .AND. LEN(ALLTRIM(voRd))=0 .AND. LEN(ALLTRIM(vsOr))<>0
           STORE "Numero de Orden no puede tener espacios vacíos, si se llena la Serie de la Orden..."  ;
                 TO mmSj
      CASE viTe=14 .AND. vsOr+voRd<>csOr+coRd .AND. LEN(ALLTRIM(voRd))<>0
           SELECT deT_orden
           DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
           IF mkEy=k_Esc
                WAIT CLEAR
                RETURN
           ENDIF
           SELECT caB_orden
           SEEK "OC"+vsOr+voRd
           DO CASE
                CASE EOF()
                     STORE "Orden de Compra no registrada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+8.3,mCO0+24 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
                     @mFI0+8.3,mCO0+30 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.5
                CASE f2910est="3"
                     STORE "Orden de Compra ya procesada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+8.3,mCO0+24 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
                     @mFI0+8.3,mCO0+30 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.5
                CASE f2910est="9"
                     STORE "Orden de Compra anulada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+8.3,mCO0+24 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
                     @mFI0+8.3,mCO0+30 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.5
                OTHERWISE
                     SELECT tmP_prod
                     ZAP
                     REINDEX
                     SELECT deT_orden
                     SEEK "OC"+vsOr+voRd
                     DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+ ;
                        f2911doc="OC"+vsOr+voRd
                          IF f2911can-f2911ctd<=0
                               SKIP
                               LOOP
                          ENDIF
                          STORE f2911cod TO vcOd
                          SELECT tmP_prod
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH vcOd
                          ENDIF
                          SELECT deT_orden
                          SKIP
                     ENDDO
                     SELECT tmP_prod
                     GOTO TOP
                     IF BOF()
                          STORE "Orden de Compra ya despachada..." TO mmSj
                          DO coLbln
                          STORE csOr TO vsOr
                          STORE coRd TO voRd
                          @mFI0+8.3,mCO0+24 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
                          @mFI0+8.3,mCO0+30 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.5
                     ELSE
                          SELECT caB_orden
                          STORE f2910tdo TO xtDo
                          STORE f2910ser TO xsEr, csOr
                          STORE f2910doc TO xdOc, coRd
                          DO orD_2400w IN PAI2400W WITH "1"
                     ENDIF
           ENDCASE
      CASE viTe=15 .AND. AT(" ", DTOC(vfRe))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=17
           SELECT teMporal
           GOTO TOP
           STORE 0 TO tvAl, tnEt, tiGv, ttOt
           DO WHILE  .NOT. EOF()
                DO cl1_2400w IN PAI2400W
                STORE tvAl+vtOt TO tvAl
                SKIP
           ENDDO
           DO clT_2400a IN PAI2400A
           DO ttT_2400a IN PAI2400A
           DO p04_2400a IN PAI2400A
      CASE viTe=18 .AND. vtDf<>"NC" .AND. vtDf<>"ND" .AND. vtDf<>"PE"  ;
           .AND. LEN(ALLTRIM(vcM1))<>0
           STORE "No se puede llenar este campo si no es Nota de Crédito o Nota de Débito"  ;
                 TO mmSj
      CASE viTe=19 .AND. vtDf<>"NC" .AND. vtDf<>"ND" .AND. vtDf<>"PE"  ;
           .AND. LEN(ALLTRIM(vcM2))<>0
           STORE "No se puede llenar este campo si no es Nota de Crédito o Nota de Débito"  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_2400a
 PRIVATE pnUm, ppRe, pmO1, pmO2, ptC1, ptC2
 = INKEY(0.01)
 STORE "CO" TO vtDo
 DO grAbar WITH "1"
 DO CASE
      CASE vtDf="PE"
           STORE "PR" TO vtDo
      CASE vtDf="AD"
           STORE "AD" TO vtDo
      OTHERWISE
           STORE "CO" TO vtDo
 ENDCASE
 SELECT caB_cpra
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
 STORE "1" TO ctP1, ctI1
 IF f2400td1="NC"
      STORE "2" TO ctI1
 ENDIF
 STORE f2400sor TO csOr
 STORE f2400ord TO coRd
 STORE f2400td1 TO ctDf
 STORE SUBSTR(DTOC(f2400fin), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2400fin), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2400fin), 7, 4) TO xaNo
 STORE "S" TO veSt
 STORE "1" TO vtP1, vtI1
 IF vtDf="NC"
      STORE "2" TO vtI1
 ENDIF
 STORE SUBSTR(DTOC(vfIn), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfIn), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfIn), 7, 4) TO vaNo
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Verificando Orden..."
      SELECT caB_orden
      SEEK "OC"+csOr+coRd
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "OC"+csOr+coRd
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           STORE f2910mon TO pmO1, pmO2
           STORE f2910tca TO ptC1, ptC2
           SELECT moNedas
           SEEK pmO1
           IF EOF()
                STORE 1 TO pmO1, pmO2
           ELSE
                STORE f9226tpo TO pmO1, pmO2
           ENDIF
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(voRd))<>0 .AND. csOr+coRd<>vsOr+voRd
      WAIT WINDOW NOWAIT "Verificando Orden de Compra..."
      SELECT caB_orden
      SEEK "OC"+vsOr+voRd
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "OC"+vsOr+voRd
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           STORE f2910mon TO pmO2
           STORE f2910tca TO ptC2
           IF LEN(ALLTRIM(coRd))=0
                STORE f2910mon TO pmO1
                STORE f2910tca TO ptC1
           ENDIF
           SELECT moNedas
           SEEK pmO2
           IF EOF()
                STORE 1 TO pmO2
                IF LEN(ALLTRIM(coRd))=0
                     STORE 1 TO pmO1
                ENDIF
           ELSE
                STORE f9226tpo TO pmO2
                IF LEN(ALLTRIM(coRd))=0
                     STORE f9226tpo TO pmO1
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Verificando Producto: "+ftM1cod+"..."
      STORE ftM1cod TO vcOd
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
      SELECT teMporal
      SKIP
 ENDDO
 SELECT deT_cpra
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      STORE f2401cod TO vcOd
      SELECT teMporal
      SET ORDER TO FTM1COD
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SET ORDER TO
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_cpra
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
      SELECT teMporal
      SET ORDER TO
      SELECT deT_cpra
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_cpra
 REPLACE f2400tra WITH vtRa
 REPLACE f2400sw0 WITH vsW0
 REPLACE f2400prv WITH vpRv
 REPLACE f2400nom WITH vnOm
 REPLACE f2400suc WITH vsUc
 REPLACE f2400dir WITH vdIr
 REPLACE f2400dis WITH vdIs
 REPLACE f2400ruc WITH vrUc
 REPLACE f2400tit WITH vtIt
 REPLACE f2400nti WITH vnTi
 REPLACE f2400pla WITH vpLn
 REPLACE f2400mon WITH vmOn
 REPLACE f2400fem WITH vfEm
 REPLACE f2400fin WITH vfIn
 REPLACE f2400reg WITH vfRe
 REPLACE f2400td1 WITH vtDf
 REPLACE f2400sr1 WITH vsRf
 REPLACE f2400fac WITH vfAc
 REPLACE f2400sr2 WITH vsRg
 REPLACE f2400rem WITH vrEm
 REPLACE f2400sor WITH vsOr
 REPLACE f2400ord WITH voRd
 REPLACE f2400ped WITH vpEd
 REPLACE f2400tig WITH vtIg
 REPLACE f2400pig WITH vpIg
 REPLACE f2400per WITH vpEr
 REPLACE f2400cco WITH vcCo
 REPLACE f2400ncc WITH vnCc
 REPLACE f2400fpa WITH vfPa
 REPLACE f2400nfp WITH vnFp
 REPLACE f2400dia WITH vdIp
 REPLACE f2400tpo WITH vtPp
 REPLACE f2400cm1 WITH vcM1
 REPLACE f2400cm2 WITH vcM2
 DO CASE
      CASE f2400tdo="AD"
           REPLACE f2400val WITH 0
           REPLACE f2400dct WITH 0
           REPLACE f2400net WITH 0
           REPLACE f2400igv WITH tvAl-vdCt
           REPLACE f2400tot WITH 0
      OTHERWISE
           REPLACE f2400val WITH tvAl
           REPLACE f2400dct WITH vdCt
           REPLACE f2400net WITH tnEt
           REPLACE f2400igv WITH tiGv
           REPLACE f2400tot WITH ttOt
 ENDCASE
 REPLACE f2400per WITH vpEr
 REPLACE f2400red WITH vrEd
 REPLACE f2400dec WITH vdEc
 REPLACE f2400est WITH "1"
 REPLACE f2400usu WITH muSu
 REPLACE f2400maq WITH mmAq
 REPLACE f2400dat WITH DATE()
 REPLACE f2400tim WITH TIME()
 UNLOCK
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Grabando Orden Anterior..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_cpra
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
           STORE f2401cod TO vcOd
           STORE f2401can TO vcAn
           STORE f2401caj TO vcAj
           SELECT deT_orden
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"+f2911tdo+ ;
              f2911ser+f2911doc=ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
                IF f2911ctd>0
                     STORE f2911ite TO vrEc
                     SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+"OC"+csOr+ ;
                             coRd+STR(vrEc, 4, 0)
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2911ctd>=vcAn
                               REPLACE f2911ctd WITH f2911ctd-vcAn
                               REPLACE f2911cjd WITH f2911cjd-vcAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT prO_tot
                               SEEK ALLTRIM(vcOd)+"*"
                               REPLACE f2118orp WITH f2118orp+vcAn
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmO1=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptC1)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmO1=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptC1)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                               EXIT
                          OTHERWISE
                               STORE vcAn-f2911ctd TO vcAn
                               STORE vcAj-f2911cjd TO vcAj
                               REPLACE f2911ctd WITH 0
                               REPLACE f2911cjd WITH 0
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT prO_tot
                               SEEK ALLTRIM(vcOd)+"*"
                               REPLACE f2118orp WITH f2118orp+vcAn
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmO1=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptC1)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmO1=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptC1)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                     ENDCASE
                ENDIF
                SELECT deT_orden
                SKIP
           ENDDO
           SELECT deT_cpra
           SKIP
      ENDDO
      IF LEN(ALLTRIM(coRd))<>0 .AND. csOr+coRd<>vsOr+voRd
           SELECT deT_orden
           DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK "OC"+csOr+coRd
           STORE 0 TO pnUm
           DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+ ;
              csOr+coRd
                IF f2911can-f2911ctd>0
                     STORE 1 TO pnUm
                ENDIF
                SKIP
           ENDDO
           SELECT caB_orden
           SEEK "OC"+csOr+coRd
           IF  .NOT. EOF()
                IF pnUm=0
                     REPLACE f2910est WITH "3"
                ELSE
                     REPLACE f2910est WITH "2"
                ENDIF
                UNLOCK
           ENDIF
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(voRd))<>0
      WAIT WINDOW NOWAIT "Grabando Orden..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           SELECT deT_orden
           SEEK ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"+f2911tdo+ ;
              f2911ser+f2911doc=ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd
                IF f2911can-f2911ctd>0
                     STORE f2911ite TO vrEc
                     SEEK ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+"OC"+vsOr+ ;
                             voRd+STR(vrEc, 4, 0)
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2911can-f2911ctd>=vcAn
                               REPLACE f2911ctd WITH f2911ctd+vcAn
                               REPLACE f2911cjd WITH f2911cjd+vcAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT prO_tot
                               SEEK ALLTRIM(vcOd)+"*"
                               REPLACE f2118orp WITH f2118orp-vcAn
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp-vcAn
                               DO CASE
                                    CASE pmO2=1
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          ((vcAn*ppRe)/ptC2)
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          (vcAn*ppRe)
                                    CASE pmO2=2
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          ((vcAn*ppRe)*ptC2)
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                               EXIT
                          OTHERWISE
                               STORE f2911can-f2911ctd TO ccAn
                               STORE f2911caj-f2911cjd TO ccAj
                               STORE vcAn-ccAn TO vcAn
                               STORE vcAj-ccAj TO vcAj
                               REPLACE f2911ctd WITH f2911ctd+ccAn
                               REPLACE f2911cjd WITH f2911cjd+ccAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT prO_tot
                               SEEK ALLTRIM(vcOd)+"*"
                               REPLACE f2118orp WITH f2118orp-ccAn
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp-ccAn
                               DO CASE
                                    CASE pmO2=1
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          ((ccAn*ppRe)/ptC2)
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          (ccAn*ppRe)
                                    CASE pmO2=2
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          ((ccAn*ppRe)*ptC2)
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          (ccAn*ppRe)
                               ENDCASE
                               UNLOCK
                     ENDCASE
                ENDIF
                SELECT deT_orden
                SKIP
           ENDDO
           SELECT teMporal
           SKIP
      ENDDO
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK "OC"+vsOr+voRd
      STORE 0 TO pnUm
      DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+vsOr+voRd
           IF f2911can-f2911ctd>0
                STORE 1 TO pnUm
           ENDIF
           SKIP
      ENDDO
      SELECT caB_orden
      SEEK "OC"+vsOr+voRd
      IF  .NOT. EOF()
           IF pnUm=0
                REPLACE f2910est WITH "3"
           ELSE
                REPLACE f2910est WITH "2"
           ENDIF
           UNLOCK
      ENDIF
 ENDIF
 SELECT deT_cpra
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      STORE f2401ite TO vrEc
      STORE f2401cod TO vcOd
      STORE f2401can TO vcAn
      STORE f2401caj TO vcAj
      STORE f2401pre TO vpRe
      DO CASE
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND.  ;
                vdEc<=1
                STORE ROUND(vcAn*vpRe, 4) TO vtOt
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND. vdEc=2
                STORE ROUND(vcAn*vpRe, 5) TO vtOt
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND. vdEc=3
                STORE ROUND(vcAn*vpRe, 6) TO vtOt
           CASE vtPo=2 .AND. vmEd=1
                STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
           CASE vtPo=2 .AND. vmEd=2
                STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
           CASE vtPo=2
                STORE ROUND((vlA2*vaN2)*vcAn, 4) TO vpIe
           CASE vtPo=3
                STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
           CASE vtPo=4
                STORE ROUND((vlA1*vaN1)*vcAn, 4) TO vpIe
      ENDCASE
      IF vtPo>=2 .AND. vtPo<=4
           DO CASE
                CASE vdEc<=1
                     STORE ROUND(vpIe*vpRe, 4) TO vtOt
                CASE vdEc=2
                     STORE ROUND(vpIe*vpRe, 5) TO vtOt
                CASE vdEc=3
                     STORE ROUND(vpIe*vpRe, 6) TO vtOt
           ENDCASE
      ENDIF
      DO CASE
           CASE vdEc<=1
                STORE ROUND(vtOt/vcAn, 4) TO vcOs
           CASE vdEc=2
                STORE ROUND(vtOt/vcAn, 5) TO vcOs
           CASE vdEc=3
                STORE ROUND(vtOt/vcAn, 6) TO vcOs
      ENDCASE
      SELECT teMporal
      SET ORDER TO FTM1COD
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ftM1can=vcAn .AND. ftM1caj=vcAj .AND. ftM1cos= ;
          vpRe .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+vtP1
           SET ORDER TO
           SELECT deT_cpra
           SKIP
           LOOP
      ENDIF
      SELECT teMporal
      SET ORDER TO
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_cpra
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
      IF  .NOT. EOF() .AND. (vcAn<>0 .OR. ctDf="NC")
           STORE 1 TO pnUm
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           STORE ftM1cos TO vpRe
           SELECT deT_cpra
           REPLACE f2401can WITH vcAn
           REPLACE f2401caj WITH vcAj
           REPLACE f2401pre WITH vpRe
      ELSE
           SELECT deT_cpra
           STORE 0 TO pnUm
           REPLACE f2401tdo WITH SPACE(02)
           REPLACE f2401ser WITH SPACE(03)
           REPLACE f2401doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ ;
                   ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE pnUm<>0 .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+ ;
                     vdIa+vtI1+vtP1
                     REPLACE f2990can WITH vcAn
                     IF mcAj=1 .AND. vsRr=1
                          REPLACE f2990caj WITH vcAj
                     ENDIF
                     REPLACE f2990cos WITH vcOs
                     REPLACE f2990nom WITH vnOm
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990td1 WITH vtDf
                     REPLACE f2990srf WITH vsRf
                     REPLACE f2990fac WITH vfAc
                     REPLACE f2990ped WITH vpEd
                     REPLACE f2990sor WITH vsOr
                     REPLACE f2990ord WITH voRd
                     REPLACE f2990ten WITH SPACE(02)
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
           REPLACE f2990tra WITH vtRa
           REPLACE f2990can WITH vcAn
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vcAj
           ENDIF
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH vcOs
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH vtDo
           REPLACE f2990ser WITH vsEr
           REPLACE f2990doc WITH vdOc
           REPLACE f2990sr1 WITH vsRg
           REPLACE f2990rem WITH vrEm
           REPLACE f2990td1 WITH vtDf
           REPLACE f2990srf WITH vsRf
           REPLACE f2990fac WITH vfAc
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH vsOr
           REPLACE f2990ord WITH voRd
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfIn
           REPLACE f2990tit WITH vpRv
           REPLACE f2990cli WITH vpRv
           REPLACE f2990nom WITH vnOm
           REPLACE f2990pig WITH vpIg
           REPLACE f2990mon WITH vmOn
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH SPACE(02)
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
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ ;
                   ctPp+ctDo+csEr+cdOc
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
      SELECT prO_tot
      DO CASE
           CASE vmOn=1 .AND. f2118fe1<vfEm
                REPLACE f2118co1 WITH vcOs
                REPLACE f2118fe1 WITH vfEm
           CASE vmOn=2 .AND. f2118fe2<vfEm
                REPLACE f2118co2 WITH vcOs
                REPLACE f2118fe2 WITH vfEm
      ENDCASE
      SELECT deT_cpra
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_cpra
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2402cod TO vcOd
      STORE f2402rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2402tdo WITH SPACE(02)
      REPLACE f2402ser WITH SPACE(03)
      REPLACE f2402doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_cpra
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2403tdo+f2403ser+f2403doc=vtDo+vsEr+vdOc
      STORE f2403cod TO vcOd
      STORE f2403ped TO vpD1
      STORE f2403sec TO vsEc
      STORE f2403pla TO vpLa
      STORE f2403mot TO vmOt
      SELECT teMporal_6
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF() .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+ ;
          vtP1 .AND. ftM6pla=vpLa
           SELECT seR_cpra
           SKIP
           LOOP
      ENDIF
      SELECT seR_cpra
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
           SELECT seR_cpra
           REPLACE f2403pla WITH vpLa
           REPLACE f2403mot WITH vmOt
      ELSE
           SELECT seR_cpra
           STORE 0 TO pnUm
           REPLACE f2403tdo WITH SPACE(02)
           REPLACE f2403ser WITH SPACE(03)
           REPLACE f2403doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
           vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+ ;
                   xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
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
      SELECT seR_cpra
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0 .AND. vtDf<>"NC"
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
      STORE ftM1cos TO vpRe
      DO CASE
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND.  ;
                vdEc<=1
                STORE ROUND(vcAn*vpRe, 4) TO vtOt
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND. vdEc=2
                STORE ROUND(vcAn*vpRe, 5) TO vtOt
           CASE (vtPo=1 .OR. vtPo=10 .OR. (vtPo>=5 .AND. vtPo<=6)) .AND. vdEc=3
                STORE ROUND(vcAn*vpRe, 6) TO vtOt
           CASE vtPo=2 .AND. vmEd=1
                STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
           CASE vtPo=2 .AND. vmEd=2
                STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
           CASE vtPo=2
                STORE ROUND((vlA2*vaN2)*vcAn, 4) TO vpIe
           CASE vtPo=3
                STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
           CASE vtPo=4
                STORE ROUND((vlA1*vaN1)*vcAn, 4) TO vpIe
      ENDCASE
      IF vtPo>=2 .AND. vtPo<=4
           DO CASE
                CASE vdEc<=1
                     STORE ROUND(vpIe*vpRe, 4) TO vtOt
                CASE vdEc=2
                     STORE ROUND(vpIe*vpRe, 5) TO vtOt
                CASE vdEc=3
                     STORE ROUND(vpIe*vpRe, 6) TO vtOt
           ENDCASE
      ENDIF
      DO CASE
           CASE vdEc<=1
                STORE ROUND(vtOt/vcAn, 4) TO vcOs
           CASE vdEc=2
                STORE ROUND(vtOt/vcAn, 5) TO vcOs
           CASE vdEc=3
                STORE ROUND(vtOt/vcAn, 6) TO vcOs
      ENDCASE
      STORE vrEc+1 TO vrEc
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_cpra
      DO orD_0000a WITH "2401", "A", "F2401COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2401", "A", "F2401DOC", "A"
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
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
           REPLACE f2401tdo WITH vtDo
           REPLACE f2401ser WITH vsEr
           REPLACE f2401doc WITH vdOc
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
           REPLACE f2401an1 WITH vaN1
           REPLACE f2401la2 WITH vlA2
           REPLACE f2401an2 WITH vaN2
           REPLACE f2401esp WITH veSp
           REPLACE f2401tpo WITH vtPo
           REPLACE f2401pre WITH vpRe
           UNLOCK
           SELECT kaRdex
           DO nuEvo_rg
           REPLACE f2990cod WITH vcOd
           REPLACE f2990ano WITH vaNo
           REPLACE f2990mes WITH vmEs
           REPLACE f2990dia WITH vdIa
           REPLACE f2990tpp WITH vtP1
           REPLACE f2990tpo WITH vtI1
           REPLACE f2990tra WITH vtRa
           REPLACE f2990can WITH vcAn
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vcAj
           ENDIF
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH vcOs
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH vtDo
           REPLACE f2990ser WITH vsEr
           REPLACE f2990doc WITH vdOc
           REPLACE f2990sr1 WITH vsRg
           REPLACE f2990rem WITH vrEm
           REPLACE f2990td1 WITH vtDf
           REPLACE f2990srf WITH vsRf
           REPLACE f2990fac WITH vfAc
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH vsOr
           REPLACE f2990ord WITH voRd
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfIn
           REPLACE f2990tit WITH vpRv
           REPLACE f2990cli WITH vpRv
           REPLACE f2990nom WITH vnOm
           REPLACE f2990pig WITH vpIg
           REPLACE f2990mon WITH vmOn
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH SPACE(02)
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
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
           SELECT prO_tot
           DO CASE
                CASE vmOn=1 .AND. f2118fe1<vfEm
                     REPLACE f2118co1 WITH vcOs
                     REPLACE f2118fe1 WITH vfEm
                CASE vmOn=2 .AND. f2118fe2<vfEm
                     REPLACE f2118co2 WITH vcOs
                     REPLACE f2118fe2 WITH vfEm
           ENDCASE
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
                SELECT itE_cpra
                DO nuEvo_rg
                REPLACE f2402tdo WITH vtDo
                REPLACE f2402ser WITH vsEr
                REPLACE f2402doc WITH vdOc
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
           SELECT teMporal_6
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 SELECT caB_cpra
 SET ORDER TO
 SET FILTER TO f2400est<>"9" .AND. (LEN(ALLTRIM(f2400td1))<2 .OR. LEN(ALLTRIM(f2400sr1))<4 .OR. LEN(ALLTRIM(f2400fac))<10)
 GOTO TOP
 IF BOF() .OR. EOF()
      SELECT nuMeracion
      SEEK "9C"
      IF  .NOT. EOF()
           REPLACE f9999num WITH "0000000"
      ENDIF
 ELSE
      SELECT nuMeracion
      SEEK "9C"
      IF EOF()
           APPEND BLANK
           REPLACE f9999tdo WITH "9C"
           REPLACE f9999ser WITH "999"
           REPLACE f9999num WITH "0000000"
      ENDIF
      REPLACE f9999num WITH "0000001"
 ENDIF
 SELECT caB_cpra
 SET ORDER TO F2400DOC
 SET FILTER TO
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
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE "CO" TO vtDo
 STORE "US$" TO vsIg
 STORE miGv TO vpIg
 STORE SPACE(10) TO vpLn
 STORE SPACE(11) TO vrUc
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(25) TO vdIs
 STORE SPACE(120) TO vdEs
 STORE SPACE(04) TO vpRv, cpRv
 STORE SPACE(20) TO vsRf, vfAc
 STORE SPACE(50) TO vnCc, vnFp
 STORE SPACE(02) TO vsUc, vtDf, vcCo, vfPa
 STORE SPACE(03) TO vsRg, vsOr, csOr, csEr
 STORE SPACE(07) TO vrEm, voRd, coRd, vpEd, cdOc
 STORE SPACE(70) TO vnOm, vdIr, vcM1, vcM2, vnOm
 STORE 99 TO mkEy
 STORE 02 TO vmOn
 STORE 01 TO irEc, vrEc, viOm, vtPp, vtIg, vsW0, vsW3
 STORE 00 TO frEc, urEc, crEc, cfIl, vsTo, vtCa, vcAn
 STORE 00 TO vpRe, vdIp, vtOt, vdCt, tvAl, tnEt, tiGv, ttOt
 STORE DATE() TO vfEm, vfIn, vfRe, cfRe
 DO diS_2400a IN PAI2400A
 DO ttT_2400a IN PAI2400A
 DO coLbln
 @mFI0-1.9,mCO0+17.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"
 @mFI0-1.9,mCO0+24.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999"
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2400a IN PAI2400A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE pnUm
ENDPROC
*
PROCEDURE P00_2400a
 PARAMETER ptPo
 DO p01_2400a IN PAI2400A WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tb0_2400w IN PAI2400W
 STORE mfI0-02.0 TO vfBc
 STORE mcO0+36.2 TO vcBc
 DO tiT_0000a WITH "Modificación de Compras/Gastos"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO p02_2400a IN PAI2400A
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO boT_2400a IN PAI2400A WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO p03_2400a IN PAI2400A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.4, mcO0+41.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-0.6 TO mfI0-2.2, mcO0+41.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.4, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 @mFI0-1.9,mCO0+00.6 Say "Compra:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.9,mCO0+17.5 Get vSER      Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.9,mCO0+24.2 Get vDOC      Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2400a
 STORE 0 TO ciTx
 = INKEY(0.01)
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
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+3.8
           STORE k_F6 TO mkEy
      CASE mfIl>=vfBc+mfG1 .AND. mfIl<=vfBc+mfG2 .AND. mcCc>=vcBc+mcG1  ;
           .AND. mcCc<=vcBc+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>2
           STORE 3 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>2
           STORE 3 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>2
           STORE 3 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>2
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. viTe>2
           STORE 14 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2400a
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
           STORE 0 TO ciTx
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2 .AND. viTe>2
           STORE k_F8 TO mkEy
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. viTe>2 .AND. mcCc>= ;
           vcB9+mcO1 .AND. mcCc<=vcB9+mcO2 .AND. LEN(ALLTRIM(vcCo))<>0
           DO bcC_2400w IN PAI2400W
           IF mkEy=k_Esc
                EXIT
           ENDIF
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2 .AND. viTe>2
           STORE k_F9 TO mkEy
      CASE mfIl>=mfI0+0.186 .AND. mfIl<=mfI0+1.4 .AND. vtPp<>1 .AND. mcCc>= ;
           mcO0+vtMq+0.5 .AND. mcCc<=mcO0+vtMq+12.7 .AND. viTe>2
           STORE 1 TO vtPp
           @mFI0+0.3,mCO0+vTMQ Get vTPP Font "&mLetAri",9 Style "NQ" Default vTPP Size 1,12,.1 Function "*RVT Compra;Gastos" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.4 .AND. mfIl<=mfI0+2.543 .AND. vtPp<>2 .AND. mcCc>= ;
           mcO0+vtMq+0.5 .AND. mcCc<=mcO0+vtMq+12.7 .AND. viTe>2
           STORE 2 TO vtPp
           @mFI0+0.3,mCO0+vTMQ Get vTPP Font "&mLetAri",9 Style "NQ" Default vTPP Size 1,12,.1 Function "*RVT Compra;Gastos" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfBb-0.156 .AND. mfIl<=vfBb+0.986 .AND. vdEc<>1 .AND.  ;
           mcCc>=vcBb+13.4 .AND. mcCc<=vcBb+18.4 .AND. viTe>2
           STORE 1 TO vdEc
           @vFBB,vCBB+13.5 Get vDEC Font "&mLetAri",9 Style "NQ" Default vDEC Size 1,04,.01 Function "*RHT 4;5;6"              Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           SELECT teMporal
           STORE 00 TO tvAl, tnEt, tiGv, ttOt
           DO WHILE  .NOT. EOF()
                DO cl1_2400w IN PAI2400W
                STORE tvAl+vtOt TO tvAl
                SKIP
           ENDDO
           DO clT_2400a IN PAI2400A
           GOTO TOP
           IF  .NOT. BOF()
                GOTO irEc
                DO paN_2400b IN PAI2400B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irEc
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBb-0.156 .AND. mfIl<=vfBb+0.986 .AND. vdEc<>2 .AND.  ;
           mcCc>=vcBb+18.4 .AND. mcCc<=vcBb+23.4 .AND. viTe>2
           STORE 2 TO vdEc
           @vFBB,vCBB+13.5 Get vDEC Font "&mLetAri",9 Style "NQ" Default vDEC Size 1,04,.01 Function "*RHT 4;5;6"              Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           SELECT teMporal
           STORE 00 TO tvAl, tnEt, tiGv, ttOt
           DO WHILE  .NOT. EOF()
                DO cl1_2400w IN PAI2400W
                STORE tvAl+vtOt TO tvAl
                SKIP
           ENDDO
           DO clT_2400a IN PAI2400A
           GOTO TOP
           IF  .NOT. BOF()
                GOTO irEc
                DO paN_2400b IN PAI2400B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irEc
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfBb-0.156 .AND. mfIl<=vfBb+0.986 .AND. vdEc<>3 .AND.  ;
           mcCc>=vcBb+23.4 .AND. mcCc<=vcBb+28.4 .AND. viTe>2
           STORE 3 TO vdEc
           @vFBB,vCBB+13.5 Get vDEC Font "&mLetAri",9 Style "NQ" Default vDEC Size 1,04,.01 Function "*RHT 4;5;6"              Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           SELECT teMporal
           STORE 00 TO tvAl, tnEt, tiGv, ttOt
           DO WHILE  .NOT. EOF()
                DO cl1_2400w IN PAI2400W
                STORE tvAl+vtOt TO tvAl
                SKIP
           ENDDO
           DO clT_2400a IN PAI2400A
           GOTO TOP
           IF  .NOT. BOF()
                GOTO irEc
                DO paN_2400b IN PAI2400B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irEc
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.186 .AND. mfIl<=mfI0+1.4 .AND. vmOn<>1 .AND. mcCc>= ;
           mcO0+vtMi-1.2 .AND. mcCc<=mcO0+vtMi+8.8 .AND. viTe>2
           STORE 1 TO vmOn
           STORE "S/." TO vsIg
           DO toT_2400a IN PAI2400A
           @mFI0+0.3,mCO0+vTMI-0.8 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Size 1,12,.1 Function "*RVT S/.;US$" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.4 .AND. mfIl<=mfI0+2.543 .AND. vmOn<>2 .AND. mcCc>= ;
           mcO0+vtMi-1.2 .AND. mcCc<=mcO0+vtMi+8.8 .AND. viTe>2
           STORE 2 TO vmOn
           STORE "US$" TO vsIg
           DO toT_2400a IN PAI2400A
           @mFI0+0.3,mCO0+vTMI-0.8 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Size 1,12,.1 Function "*RVT S/.;US$" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfBa-0.186 .AND. mfIl<=vfBa+1.1 .AND. vtIg<>1 .AND. mcCc>= ;
           mcO0+vtMq-0.3 .AND. mcCc<=mcO0+vtMq+10.1 .AND. viTe>2
           STORE 1 TO vtIg
           @vFBA,mCO0+vTMQ Get vTIG Font "&mLetAri",9 Style "NQ" Default vTIG Size 1,12,.1 Function "*RVT I.G.V.;Impto-Renta" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           DO clT_2400a IN PAI2400A
           DO p04_2400a IN PAI2400A
           DO toT_2400a IN PAI2400A
           STORE 99 TO mkEy
      CASE mfIl>=vfBa+1.1 .AND. mfIl<=vfBa+2.314 .AND. vtIg<>2 .AND. mcCc>= ;
           mcO0+vtMq-0.3 .AND. mcCc<=mcO0+vtMq+17.7 .AND. viTe>2
           STORE 2 TO vtIg
           @vFBA,mCO0+vTMQ Get vTIG Font "&mLetAri",9 Style "NQ" Default vTIG Size 1,12,.1 Function "*RVT I.G.V.;Impto-Renta" Color RGB(0,0,0,235,231,222)
           READ TIMEOUT 0.01
           DO clT_2400a IN PAI2400A
           DO p04_2400a IN PAI2400A
           DO toT_2400a IN PAI2400A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.885 .AND. mfIl<=mfI0-0.6 .AND. mcCc>=mcO0+17  ;
           .AND. mcCc<=mcO0+25 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.885 .AND. mfIl<=mfI0-0.6 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+38 .AND. viTe<>2
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+0.328 .AND. mfIl<=mfI0+1.614 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+vtMt+17.6
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+1.828 .AND. mfIl<=mfI0+3.043 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+vtMt+17.6 .AND. vsW0=2
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+1.828 .AND. mfIl<=mfI0+3.043 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+vtMd+17.6 .AND. vsW0=2
           STORE 05 TO ciTx
      CASE mfIl>=mfI0+3.321 .AND. mfIl<=mfI0+4.607 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+vtMr-7.1 .AND. mcCc<=mcO0+vtMr+15.7 .AND. vsW0=2
           STORE 06 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. viTe<>7 .AND. mcCc>= ;
           mcO0+23.6 .AND. mcCc<=mcO0+28.6
           STORE 07 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. viTe<>8 .AND. mcCc>= ;
           mcO0+29.6 .AND. mcCc<=mcO0+47
           STORE 08 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. viTe<>9 .AND. mcCc>= ;
           mcO0+vtMf-15.2 .AND. mcCc<=mcO0+vtMf+12.8
           STORE 09 TO ciTx
      CASE mfIl>=mfI0+6.9 .AND. mfIl<=mfI0+8.043 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+23.6 .AND. mcCc<=mcO0+28.6
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+6.9 .AND. mfIl<=mfI0+8.043 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+29.6 .AND. mcCc<=mcO0+47
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+6.9 .AND. mfIl<=mfI0+8.043 .AND. viTe<>12 .AND.  ;
           mcCc>=mcO0+vtMf-15.2 .AND. mcCc<=mcO0+vtMf+12.8
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+8.328 .AND. mfIl<=mfI0+9.471 .AND. viTe<>13 .AND.  ;
           mcCc>=mcO0+23.6 .AND. mcCc<=mcO0+28.6
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+8.328 .AND. mfIl<=mfI0+9.471 .AND. viTe<>14 .AND.  ;
           mcCc>=mcO0+29.6 .AND. mcCc<=mcO0+47
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+8.328 .AND. mfIl<=mfI0+9.471 .AND. viTe<>15 .AND.  ;
           mcCc>=mcO0+vtMf-15.2 .AND. mcCc<=mcO0+vtMf+12.8
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+8.328 .AND. mfIl<=mfI0+9.471 .AND. viTe<>16 .AND.  ;
           mcCc>=mcO0+vtMt-2.3 .AND. mcCc<=mcO0+vtMt+8.5
           STORE 16 TO ciTx
      CASE mfIl>=vfBa+0.528 .AND. mfIl<=vfBa+1.671 .AND. viTe<>17 .AND.  ;
           mcCc>=mcO0+vtMi-0.4 .AND. mcCc<=mcO0+vtMi+9
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+10.471 .AND. mfIl<=mfI0+11.614 .AND. viTe<>18 .AND.  ;
           mcCc>=mcO0+20 .AND. mcCc<=mcO0+vtMo+20.9
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+11.9 .AND. mfIl<=mfI0+13.114 .AND. viTe<>19 .AND.  ;
           mcCc>=mcO0+20 .AND. mcCc<=mcO0+vtMo+20.9
           STORE 19 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_2400a
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
PROCEDURE Hl1_2400a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En este programa, se modificarán las Compras de Mercadería o Gastos"
 @ pfIl+1, 02 SAY "que tengan estado digitado."
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
 IF viTe<4 .OR. viTe=8 .OR. viTe=13 .OR. viTe=14
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe<3
                @ pfIl, 21 SAY "Consultar Compras y Gastos registrados"
           CASE viTe=3
                @ pfIl, 21 SAY "Consultar Proveedores en orden alfabético"
           CASE viTe=8
                @ pfIl, 21 SAY "SUNAT: Consulta de Autorización de Comp.Pago"
           CASE viTe=13 .OR. viTe=14
                @ pfIl, 21 SAY "Consultar Ordenes de Compra pendientes"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F3" STYLE "BT"
      @ pfIl, 21 SAY "Buscar palabra o frase en nombre de Proveedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+2, 19 SAY ":" STYLE "BT"
      @ pfIl+3, 19 SAY ":" STYLE "BT"
      @ pfIl+4, 19 SAY ":" STYLE "BT"
      @ pfIl+5, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F4" STYLE "BT"
      @ pfIl+1, 01 SAY "F5" STYLE "BT"
      @ pfIl+2, 01 SAY "F6" STYLE "BT"
      @ pfIl+3, 01 SAY "F7" STYLE "BT"
      @ pfIl+4, 01 SAY "F8" STYLE "BT"
      @ pfIl+5, 01 SAY "F9" STYLE "BT"
      @ pfIl+0, 21 SAY "Poner otros datos"
      @ pfIl+1, 21 SAY "Consultar Sucursales"
      @ pfIl+2, 21 SAY "Cambiar de Proveedores existentes a nuevos y vicev."
      @ pfIl+3, 21 SAY "Consultar Tipos de Documentos"
      @ pfIl+4, 21 SAY "Consultar Centros de Costos"
      @ pfIl+5, 21 SAY "Consultar Formas de Pago"
      STORE pfIl+6 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+1 TO pfIl
 IF viTe=02 .OR. viTe=06 .OR. viTe=08 .OR. viTe=09 .OR. viTe=11 .OR. viTe= ;
    12 .OR. viTe=14 .OR. viTe=15 .OR. viTe=16 .OR. viTe=17
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL <-" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo izquierdo"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe<>1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 21 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl, 21 SAY "Ir al Último campo"
 STORE pfIl+1 TO pfIl
 IF viTe=3 .OR. viTe=7 .OR. viTe=8
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE viTe=3
                @ pfIl, 21 SAY "Des-seleccionar Proveedor"
           CASE viTe=7 .OR. viTe=8
                @ pfIl, 21 SAY "Des-seleccionar Tipo de Documento"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo inferior"
 STORE pfIl+1 TO pfIl
 IF viTe<>1 .AND. viTe<>15
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
 IF vtDf="NC" .OR. vtDf="ND" .OR. vtDf="PE"
      STORE pfIl+3 TO pfIl
      @ pfIl+0, 2 SAY  ;
        "Las Notas de Débito/Crédito y Percepciones deben tener Número de Fac-"
      @ pfIl+1, 2 SAY "tura y Fecha en Observaciones en el siguiente formato:"
      @ pfIl+3, 2 SAY "FA:0001-1234567890"
      @ pfIl+4, 2 SAY "01/01/2016"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PAI2400A
 DO bvA_2700w IN PAI2700W
 RELEASE ciTe, vsW0, vsW2, vsW3, vcL0, vcL1, vcL2, vcL3, vcL4, vcL5, vcL6,  ;
         vcL7, vcL8
 RELEASE vcL9, vcLa, vcLb, vnVa, vnDc, vnNt, vnIg, vcO0, vcO1, vtB1, vtB2,  ;
         vtB3, vtB4
 RELEASE vtB5, vtB6, vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7, vfB8, vfB9,  ;
         vfB0, vfBa
 RELEASE vfBb, vfBc, vfBd, vfBe, vfBf, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
         vcB7, vcB8
 RELEASE vcB9, vcB0, vcBb, vcBc, vcBd, vcBe, vcBf, vtM1, vtM2, vtMc, vtMd,  ;
         vtMf, vtMi
 RELEASE vtMn, vtMo, vtMp, vtMq, vtMr, vtMt, vsOr, csOr, voRd, coRd, vmOn,  ;
         vsIg, vtCa
 RELEASE ctC1, ctC2, ctC3, ctC4, vpIg, vpEd, vsRg, vrEm, vsRf, vfAc, ifAc,  ;
         ufAc, xfAc
 RELEASE cfAc, vtDf, ctDf, vpRv, cpRv, vsUc, vrUc, vnOm, inOm, unOm, xnOm,  ;
         cnOm, vdIr
 RELEASE vdIs, vcCo, vnCc, vfPa, vnFp, vdIp, vcM1, vcM2, vpRe, vpUn, xpRe,  ;
         vtOt, vdCt
 RELEASE tvAl, tnEt, tiGv, ttOt, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
         xmEs, vdIa
 RELEASE idIa, udIa, xdIa, vnMm, inMm, unMm, xnMm, vtDd, itDd, utDd, xtDd,  ;
         vsRo, isRo
 RELEASE usRo, xsRo, vdDo, idDo, udDo, xdDo, vtP1, ctP1, vtP2, vtI1, ctI1,  ;
         vtIg, vfIn
 RELEASE vfRe, cfRe, itDo, utDo, xtDo, isEr, usEr, xsEr, csE1, idOc, udOc,  ;
         xdOc, cdO1
 RELEASE vdEc, vcOs, vpLn, vtIt, vnTi, vrEd, vdEp, vpEr, vcOn
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
