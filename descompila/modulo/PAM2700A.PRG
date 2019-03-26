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
      DO deL_file1 IN PAI2700A
      RETURN
 ENDIF
 DO abR_2700a IN PAI2700A
 IF mkEy=k_Esc
      DO deL_file1 IN PAI2700A
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vsOr, csOr, voRd, coRd, vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2,  ;
        vfB3, vfB4
 PUBLIC vcB1, vcB2, vcB3, vcB4, vcL0, vcO0, vsW2, vsW3, vsW4, vaNo, iaNo,  ;
        uaNo, xaNo
 PUBLIC vmEs, imEs, umEs, xmEs, vdIa, idIa, udIa, xdIa, vtP1, vtI1, csE1,  ;
        cdO1, vcM1
 PUBLIC icM1, ucM1, ccM1, xcM1, vfBi, vcBi, itDo, utDo, xtDo, isEr, usEr,  ;
        xsEr, idOc
 PUBLIC udOc, xdOc, xtPp, ctP1, ctI1, vnOm, inOm, unOm, xnOm, vcOs, xcOs, ctIp
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(04) TO vaLm
 STORE SPACE(120) TO vdEs
 STORE SPACE(70) TO vcM1, vnAl
 STORE SPACE(03) TO vsOr, csOr, csEr
 STORE SPACE(07) TO voRd, coRd, cdOc, vpEd
 STORE "GI" TO vtDo
 STORE 1 TO vsW3, vsW4
 STORE 0 TO vsTo
 SELECT tiPos
 GOTO TOP
 STORE f9217tip TO vtIp
 STORE f9217nti TO vnTi
 STORE f9217tpo TO vtPp
 SELECT caB_ingr
 GOTO BOTTOM
 STORE f2700tdo TO vtDo
 STORE f2700ser TO vsEr
 STORE f2700doc TO vdOc
 SET READBORDER ON
 DO p00_2700a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2700a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>3 .AND. viTe<>5 .AND. viTe<>6
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<3
                = INKEY(0.01)
                SELECT caB_ingr
                DO orD_0000a WITH "2700", "A", "F2700DOC", "D"
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
                SET FILTER TO f2700est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos que se puedan modificar..."  ;
                           TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO vpAn_11
                STORE vsEr TO csE1
                STORE vdOc TO cdO1
                STORE vcM1 TO ccM1
                DO paC2700w WITH "PAM2700A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_ingr
                SET FILTER TO
                DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          STORE 02 TO viTe
                          STORE 01 TO vsW4
                     CASE mkEy=k_Tab
                          STORE 02 TO viTe
                          STORE 02 TO vsW4
                          STORE k_Enter TO mkEy
                     OTHERWISE
                          STORE csE1 TO vsEr
                          STORE cdO1 TO vdOc
                          STORE ccM1 TO vcM1
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F2 .AND. (viTe=5 .OR. viTe=6)
                SELECT caB_orden
                GOTO BOTTOM
                IF BOF() .OR. EOF()
                     STORE "No hay Ordenes de Compras registradas registrados..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SET FILTER TO f2910est<"3"
                     GOTO BOTTOM
                     IF BOF() .OR. EOF()
                          STORE "No hay Documentos registrados..." TO mmSj
                          SET FILTER TO
                          STORE 99 TO mkEy
                          DO poNmsj
                     ELSE
                          SAVE SCREEN TO vpAn_11
                          STORE vsEr TO csE1
                          STORE vdOc TO cdO1
                          DO paC2910w WITH "2"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          RESTORE SCREEN FROM vpAn_11
                          SELECT caB_orden
                          SET FILTER TO
                          DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          IF mkEy=k_Enter .OR. mkEy=k_Tab
                               STORE f2910tdo TO xtDo
                               STORE f2910ser TO xsEr, vsOr, csOr
                               STORE f2910doc TO xdOc, voRd, coRd
                               DO orD_2400w IN PAI2400W WITH "2"
                          ENDIF
                          STORE "GI" TO vtDo
                          STORE csE1 TO vsEr
                          STORE cdO1 TO vdOc
                     ENDIF
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2700a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2700a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. viTe>2
                DO alM_2700a IN PAI2700A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. viTe>2
                DO tiP_2700a IN PAI2700A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=7
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Up .AND. viTe<3
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 01 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=7
                               DO deT_2700a IN PAI2700A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=7
                               DO deT_2700a IN PAI2700A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2700a
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
                          CASE viTe>=5
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_2700a
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
                                    DO deT_2700a IN PAI2700A
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
                     CASE viTe=3
                          STORE 1 TO viTe
                     CASE viTe>=5
                          STORE 4 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 7 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2700a
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
                STORE 7 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2700a
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
                     DO deT_2700a IN PAI2700A
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
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+31 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+25 Say "CAMPO DE 3 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=6
                     @mMF2,mMC2+25 Say "CAMPO DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=7
                     @mMF2,mMC2+25 Say "CAMPO DE 5 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-1.8,mCO0+13.5 Get  vSER Font "&mLetAri",11 Style "NQ" Size 1,03.4 Pict "999"     Color ,&mColBlN
           CASE viTe=2
                @mFI0-1.8,mCO0+20.2 Get  vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
           CASE viTe=3
                @mFI0+1.0,mCO0+21.5 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE viTe=4
                @mFI0+2.5,mCO0+21.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74,70
           CASE viTe=5
                @mFI0+4.0,mCO0+21.5 Get  vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"     Color ,&mColBlN
           CASE viTe=6
                @mFI0+4.0,mCO0+29.0 Get  vORD Font "&mLetAri",9 Style "NQ" Size 1,9.4 Pict "9999999" Color ,&mColBlN
           CASE viTe=7
                @mFI0+4.0,mCO0+56.5 Get  vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!9999!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2700a
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
           SELECT caB_ingr
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Guía no se encuentra registrada..." TO mmSj
                CASE f2700est="9"
                     STORE "Esta Guía se encuentra anulada..." TO mmSj
                CASE f2700est="2"
                     STORE "Esta Guía se encuentra Procesada...No se puede modificar..."  ;
                           TO mmSj
                CASE f2700est="4"
                     STORE "Esta Guía se encuentra Generada...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
                     DO muE_2700a
                     STORE 02 TO viTe
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                     ENDIF
           ENDCASE
      CASE viTe=3 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(vsOr))<>0 .AND. LEN(ALLTRIM(vsOr))<>3
           STORE "Serie de Orden de Compra debe estar vacío o tener 3 dígitos..."  ;
                 TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(voRd))<>0 .AND. LEN(ALLTRIM(voRd))<>7
           STORE "Serie de Orden de Compra debe estar vacío o tener 7 dígitos..."  ;
                 TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(voRd))<>0 .AND. vsOr+voRd<>csOr+coRd
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
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                CASE f2910est="3"
                     STORE "Orden de Compra ya procesada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                CASE f2910est="9"
                     STORE "Orden de Compra anulada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
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
                          @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                          @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                     ELSE
                          SELECT caB_orden
                          STORE f2910tdo TO xtDo
                          STORE f2910ser TO xsEr, csOr
                          STORE f2910doc TO xdOc, coRd
                          DO orD_2400w IN PAI2400W WITH "2"
                     ENDIF
           ENDCASE
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_2700a
 SELECT caB_ingr
 STORE f2700tdo TO vtDo
 STORE f2700ser TO vsEr
 STORE f2700doc TO vdOc
 STORE f2700fem TO vfEm
 STORE f2700tip TO vtIp
 STORE f2700nti TO vnTi
 STORE f2700cm1 TO vcM1
 STORE f2700sor TO vsOr, csOr
 STORE f2700ord TO voRd, coRd
 STORE f2700tpp TO vtPp
 STORE f2700ped TO vpEd
 DO diS_2700a IN PAI2700A
 DO coLbln
 @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
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
 SELECT deT_ingr
 IF vsW4=2
      DO orD_0000a WITH "2701", "A", "F2701DES", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE f2701cod TO vcOd
      STORE f2701can TO vcAn
      STORE f2701caj TO vcAj
      STORE f2701pie TO vpIe
      STORE f2701cos TO vcOs
      STORE 1 TO viOm
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE "Producto ["+ALLTRIM(vcOd)+"] se encuentra BORRADO..." TO mmSj
           STORE mmSj+CHR(13)+"Presionar un Tecla para continuar..." TO mmSj
           DO poNmsj
           = INKEY(0, "HM")
           WAIT CLEAR
      ELSE
           STORE f2111tip TO vtPo
           SELECT tiP_prod
           SEEK vtPo
           IF EOF()
                STORE 1 TO vtPo
           ELSE
                STORE f9211tpo TO vtPo
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111dcr TO vdCr
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
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
           DO grA_2700b IN PAI2700B
      ENDIF
      SELECT deT_ingr
      SKIP
 ENDDO
 SELECT deT_ingr
 IF vsW4=2
      DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 1 TO vsW4
 SELECT itE_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2702tdo+f2702ser+f2702doc=vtDo+vsEr+vdOc
      STORE f2702cod TO vcOd
      STORE f2702rcc TO vrCc
      STORE f2702opc TO voPc
      STORE f2702un1 TO vuN1
      STORE f2702un2 TO vuN2
      STORE f2702mla TO vmLa
      STORE f2702man TO vmAn
      STORE f2702p11 TO vp11
      STORE f2702p12 TO vp12
      STORE f2702p21 TO vp21
      STORE f2702p22 TO vp22
      STORE f2702ctd TO vcTd
      STORE f2702ca1 TO vcA1
      STORE f2702ca2 TO vcA2
      STORE f2702ca3 TO vcA3
      STORE f2702ca4 TO vcA4
      STORE f2702por TO vpOr
      STORE f2702mm1 TO vmM1
      STORE f2702mm2 TO vmM2
      STORE f2702mm3 TO vmM3
      STORE f2702mm4 TO vmM4
      STORE f2702cx1 TO vcX1
      STORE f2702cx2 TO vcX2
      STORE f2702cx3 TO vcX3
      STORE f2702cx4 TO vcX4
      STORE f2702cy1 TO vcY1
      STORE f2702cy2 TO vcY2
      STORE f2702cy3 TO vcY3
      STORE f2702cy4 TO vcY4
      STORE f2702pie TO vtPi
      STORE f2702cm1 TO vcMm
      STORE f2702cm2 TO vcMp
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
      SELECT itE_ingr
      SKIP
 ENDDO
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc=vtDo+vsEr+vdOc
      STORE f2703cod TO vcOd
      STORE f2703ped TO vpD1
      STORE f2703sec TO vsEc
      STORE f2703pla TO vpLa
      STORE f2703mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6cod WITH vcOd
      REPLACE ftM6ped WITH vpD1
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6mot WITH vmOt
      SELECT seR_ingr
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO paN_2700b IN PAI2700B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
ENDPROC
*
PROCEDURE Gra_2700a
 PRIVATE pnUm, pcAn, ppRe, pmO1, pmO2, ptC1, ptC2
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_ingr
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
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 STORE SUBSTR(DTOC(f2700fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2700fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2700fem), 7, 4) TO xaNo
 STORE f2700tip TO ctIp
 STORE f2700cm1 TO ccM1
 STORE f2700sor TO csOr
 STORE f2700ord TO coRd
 STORE f2700tpp TO ctPp
 DO CASE
      CASE ctPp=3
           STORE "1" TO ctP1
           STORE "3" TO ctI1
      CASE ctPp=4
           STORE "0" TO ctP1
           STORE "1" TO ctI1
      OTHERWISE
           STORE "1" TO ctP1
           STORE "1" TO ctI1
 ENDCASE
 DO CASE
      CASE vtPp=3
           STORE "1" TO vtP1
           STORE "3" TO vtI1
           STORE "M" TO veSt
      CASE vtPp=4
           STORE "0" TO vtP1
           STORE "1" TO vtI1
           STORE "S" TO veSt
      OTHERWISE
           STORE "1" TO vtP1
           STORE "1" TO vtI1
           STORE "S" TO veSt
 ENDCASE
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
 SELECT deT_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE f2701cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_ingr
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
      SELECT deT_ingr
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ingr
 REPLACE f2700tip WITH vtIp
 REPLACE f2700nti WITH vnTi
 REPLACE f2700tpp WITH vtPp
 REPLACE f2700fem WITH vfEm
 REPLACE f2700sor WITH vsOr
 REPLACE f2700ord WITH voRd
 REPLACE f2700ped WITH vpEd
 REPLACE f2700cm1 WITH vcM1
 REPLACE f2700alm WITH vaLm
 REPLACE f2700est WITH "1"
 REPLACE f2700usu WITH muSu
 REPLACE f2700maq WITH mmAq
 REPLACE f2700dat WITH DATE()
 REPLACE f2700tim WITH TIME()
 IF LEN(ALLTRIM(coRd))<>0 .AND. csOr+coRd<>vsOr+voRd
      WAIT WINDOW NOWAIT "Grabando Orden Anterior..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
           STORE f2701cod TO vcOd
           STORE f2701can TO vcAn
           STORE f2701caj TO vcAj
           STORE f2701cos TO vcOs
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
           SELECT deT_ingr
           SKIP
      ENDDO
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK "OC"+csOr+coRd
      STORE 0 TO pnUm
      DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+csOr+coRd
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
           STORE ftM1cos TO vcOs
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
 SELECT deT_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE f2701ite TO vrEc
      STORE f2701cod TO vcOd
      STORE f2701can TO vcAn
      STORE f2701caj TO vcAj
      STORE f2701cos TO vcOs
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ftM1can=vcAn .AND. ftM1caj=vcAj .AND. xaNo+ ;
          xmEs+xdIa+ctI1+ctP1+ctIp=vaNo+vmEs+vdIa+vtI1+vtP1+vtIp .AND.  ;
          UPPER(ALLTRIM(vcM1))+"*"=UPPER(ALLTRIM(ccM1))+"*"
           SELECT deT_ingr
           SKIP
           LOOP
      ENDIF
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal
      IF  .NOT. EOF() .AND. (vcAn<>0 .OR. (vtPp=4 .AND. vcAn=0))
           STORE 1 TO pnUm
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           STORE ftM1cos TO vcOs
           SELECT deT_ingr
           REPLACE f2701can WITH vcAn
           REPLACE f2701cos WITH vcOs
           REPLACE f2701caj WITH vcAj
      ELSE
           SELECT deT_ingr
           STORE 0 TO pnUm
           REPLACE f2701tdo WITH SPACE(02)
           REPLACE f2701ser WITH SPACE(03)
           REPLACE f2701doc WITH SPACE(07)
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
                     REPLACE f2990caj WITH vcAj
                     REPLACE f2990cos WITH vcOs
                     REPLACE f2990nom WITH vcM1
                     REPLACE f2990sor WITH vsOr
                     REPLACE f2990ord WITH voRd
                     REPLACE f2990ped WITH vpEd
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990ten WITH vtIp
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
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH vsOr
           REPLACE f2990ord WITH voRd
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH ALLTRIM(vcM1)
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH vtIp
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
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_ingr
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2702cod TO vcOd
      STORE f2702rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2702tdo WITH SPACE(02)
      REPLACE f2702ser WITH SPACE(03)
      REPLACE f2702doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_ingr
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc=vtDo+vsEr+vdOc
      STORE f2703cod TO vcOd
      STORE f2703ped TO vpD1
      STORE f2703sec TO vsEc
      STORE f2703pla TO vpLa
      STORE f2703mot TO vmOt
      SELECT teMporal_6
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF() .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+ ;
          vtP1 .AND. ftM6pla=vpLa
           SELECT seR_ingr
           SKIP
           LOOP
      ENDIF
      SELECT seR_ingr
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
           SELECT seR_ingr
           REPLACE f2703pla WITH vpLa
           REPLACE f2703mot WITH vmOt
      ELSE
           SELECT seR_ingr
           STORE 0 TO pnUm
           REPLACE f2703tdo WITH SPACE(02)
           REPLACE f2703ser WITH SPACE(03)
           REPLACE f2703doc WITH SPACE(07)
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
      SELECT seR_ingr
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
      IF ftM1can=0 .AND. vtPp<>4
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
      STORE ftM1cos TO vcOs
      STORE ftM1pie TO vpIe
      STORE ftM1la1 TO vlA1
      STORE ftM1an1 TO vaN1
      STORE ftM1la2 TO vlA2
      STORE ftM1an2 TO vaN2
      STORE ftM1esp TO veSp
      STORE ftM1tpo TO vtPo
      STORE vrEc+1 TO vrEc
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_ingr
      DO orD_0000a WITH "2701", "A", "F2701COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF EOF()
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF  .NOT. EOF()
                DO WHILE .T.
                     STORE vrEc+1 TO vrEc
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                     IF EOF()
                          EXIT
                     ENDIF
                     IF vrEc=10000
                          STORE "Límite de Ítems ha sobrepasado 9999..."  ;
                                TO mmSj
                          DO poNmsj
                          = INKEY(0)
                          STORE k_Esc TO mkEy
                          RETURN
                     ENDIF
                ENDDO
           ENDIF
           DO nuEvo_rg
           REPLACE f2701tdo WITH vtDo
           REPLACE f2701ser WITH vsEr
           REPLACE f2701doc WITH vdOc
           REPLACE f2701ite WITH vrEc
           REPLACE f2701cod WITH vcOd
           REPLACE f2701des WITH vdEs
           REPLACE f2701dcr WITH vdCr
           REPLACE f2701cuv WITH vcUv
           REPLACE f2701nuv WITH vnUv
           REPLACE f2701cuc WITH vcUc
           REPLACE f2701nuc WITH vnUc
           REPLACE f2701med WITH vmEd
           REPLACE f2701can WITH vcAn
           REPLACE f2701caj WITH vcAj
           REPLACE f2701cos WITH vcOs
           REPLACE f2701pie WITH vpIe
           REPLACE f2701la1 WITH vlA1
           REPLACE f2701an1 WITH vaN1
           REPLACE f2701la2 WITH vlA2
           REPLACE f2701an2 WITH vaN2
           REPLACE f2701esp WITH veSp
           REPLACE f2701tpo WITH vtPo
           UNLOCK
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
           REPLACE f2990cos WITH vcOs
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
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH vsOr
           REPLACE f2990ord WITH voRd
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH ALLTRIM(vcM1)
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH vtIp
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
                SELECT itE_ingr
                DO nuEvo_rg
                REPLACE f2702tdo WITH vtDo
                REPLACE f2702ser WITH vsEr
                REPLACE f2702doc WITH vdOc
                REPLACE f2702cod WITH vcOd
                REPLACE f2702rcc WITH vrCc
                REPLACE f2702opc WITH voPc
                REPLACE f2702un1 WITH vuN1
                REPLACE f2702un2 WITH vuN2
                REPLACE f2702mla WITH vmLa
                REPLACE f2702man WITH vmAn
                REPLACE f2702p11 WITH vp11
                REPLACE f2702p12 WITH vp12
                REPLACE f2702p21 WITH vp21
                REPLACE f2702p22 WITH vp22
                REPLACE f2702ctd WITH vcTd
                REPLACE f2702ca1 WITH vcA1
                REPLACE f2702ca2 WITH vcA2
                REPLACE f2702ca3 WITH vcA3
                REPLACE f2702ca4 WITH vcA4
                REPLACE f2702por WITH vpOr
                REPLACE f2702mm1 WITH vmM1
                REPLACE f2702mm2 WITH vmM2
                REPLACE f2702mm3 WITH vmM3
                REPLACE f2702mm4 WITH vmM4
                REPLACE f2702cx1 WITH vcX1
                REPLACE f2702cx2 WITH vcX2
                REPLACE f2702cx3 WITH vcX3
                REPLACE f2702cx4 WITH vcX4
                REPLACE f2702cy1 WITH vcY1
                REPLACE f2702cy2 WITH vcY2
                REPLACE f2702cy3 WITH vcY3
                REPLACE f2702cy4 WITH vcY4
                REPLACE f2702pie WITH vtPi
                REPLACE f2702cm1 WITH vcMm
                REPLACE f2702cm2 WITH vcMp
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
           SELECT seR_ingr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2703tdo WITH vtDo
                REPLACE f2703ser WITH vsEr
                REPLACE f2703doc WITH vdOc
                REPLACE f2703cod WITH vcOd
                REPLACE f2703ped WITH vpD1
                REPLACE f2703sec WITH vsEc
                REPLACE f2703pla WITH vpLa
                REPLACE f2703plo WITH vpLa
                REPLACE f2703mot WITH vmOt
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
 STORE DATE() TO vfEm
 STORE SPACE(70) TO vcM1
 STORE SPACE(03) TO csEr, vsOr
 STORE SPACE(07) TO cdOc, voRd, vpEd
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm
 STORE 00 TO frEc, urEc, crEc, cfIl
 DO diS_2700a IN PAI2700A
 DO coLbln
 @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE pnUm
ENDPROC
*
PROCEDURE P00_2700a
 PARAMETER ptPo
 DO p01_2700a IN PAI2700A WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from mFI0+2.2,mCO0+61.8 to fFIL+6.5,mCO0+116.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9217NTI Scroll Color Scheme 3 Footer "TIPOS DE ENTRADA"
 Define Popup vTB2 from mFI0+5.2,mCO0+69.8 to fFIL+6.5,mCO0+120.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9214NOM Scroll Color Scheme 3 Footer "ALMACENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 STORE mfI0-01.9 TO vfBi
 STORE mcO0+32.0 TO vcBi
 DO tiT_0000a WITH "Modificación de Guías de Entradas a Almacén"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 IF vsW3=1
      DO p02_2700a IN PAI2700A
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0+37.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-0.6 TO mfI0-2.2, mcO0+37.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 DO coLbln
 @mFI0-1.8,mCO0+00.8 Say "Guía:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.8,mCO0+13.5 Get vSER    Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Get vDOC    Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p03_2700a IN PAI2700A
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2700a
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
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2 .AND. viTe>2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>2
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>2
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>2
           DO coL_beige
           STORE SPACE(02) TO vaLm
           STORE SPACE(70) TO vnAl
           @mFI0+4,mCO0+81.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S33"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.956 .AND. mfIl<=mfI0-0.528 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.956 .AND. mfIl<=mfI0-0.528 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.914 .AND. mfIl<=mfI0+2.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.414 .AND. mfIl<=mfI0+3.628 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+28.6  ;
           .AND. mcCc<=mcO0+38.8 .AND. viTe<>6
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+45.8  ;
           .AND. mcCc<=mcO0+67 .AND. viTe<>7
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
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
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2700a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 01 SAY  ;
   "En este programa, sólo se pueden crear Entradas a Almacén nuevas.  Los"
 @ pfIl+1, 01 SAY  ;
   "Tipos de Entrada tienen que estar registrados en el Sistema previamente."
 @ pfIl+3, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 01 SAY "F10" STYLE "BT"
 @ pfIl+6, 01 SAY "ESC" STYLE "BT"
 @ pfIl+7, 01 SAY "F1" STYLE "BT"
 @ pfIl+5, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 21 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl+6, 21 SAY "Regresar al primer campo"
 ELSE
      @ pfIl+6, 21 SAY "Regresar al Menú Principal"
 ENDIF
 STORE pfIl+8 TO pfIl
 IF viTe<3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      @ pfIl, 21 SAY "Consultar Entradas a Almacén"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F3" STYLE "BT"
      @ pfIl+1, 01 SAY "F7" STYLE "BT"
      @ pfIl+0, 21 SAY "Seleccionar Almacen"
      @ pfIl+1, 21 SAY "Seleccionar Tipo de Entrada"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+3, 19 SAY ":" STYLE "BT"
 @ pfIl+4, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+1, 01 SAY "CTRL <-" STYLE "BT"
 @ pfIl+2, 01 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+3, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+4, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+5, 01 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+6, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+7, 01 SAY "TAB" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 @ pfIl+1, 21 SAY "Ir al campo izquierdo"
 @ pfIl+2, 21 SAY "Ir al Primer campo"
 @ pfIl+3, 21 SAY "Ir al Último campo"
 @ pfIl+4, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 @ pfIl+5, 21 SAY "Ir al campo superior"
 @ pfIl+6, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+7, 21 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PAI2700A
 DO bvA_2700w IN PAI2700W
 RELEASE vsOr, csOr, voRd, coRd, vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2,  ;
         vfB3, vfB4
 RELEASE vcB1, vcB2, vcB3, vcB4, vcL0, vcO0, vsW2, vsW3, vsW4, vaNo, iaNo,  ;
         uaNo, xaNo
 RELEASE vmEs, imEs, umEs, xmEs, vdIa, idIa, udIa, xdIa, vtP1, vtI1, csE1,  ;
         cdO1, vcM1
 RELEASE icM1, ucM1, ccM1, xcM1, vfBi, vcBi, itDo, utDo, xtDo, isEr, usEr,  ;
         xsEr, idOc
 RELEASE udOc, xdOc, xtPp, ctP1, ctI1, vnOm, inOm, unOm, xnOm, vcOs, xcOs, ctIp
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
