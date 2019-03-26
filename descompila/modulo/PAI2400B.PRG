 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc, viTe
           STORE 00 TO urEc, frEc
           DO liM_2400b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_2400b
      CASE viOm=02
           STORE 2 TO viTe
           GOTO vrEc
           DO muE_2400b
 ENDCASE
 DO diS_2400b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2400b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=1
                          DO blA_2400b
                     ELSE
                          DO diS_2400b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4 .OR. mkEy=k_F6)  ;
                .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viOm=2
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vdEs))=0
                STORE "No hay palabras o frases que buscar..." TO mmSj
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4
                = INKEY(0.01)
                DO CASE
                     CASE mkEy=k_F2
                          STORE 2 TO vsWw
                          STORE 1 TO vsWr
                     CASE mkEy=k_F3
                          STORE 2 TO vsWw
                          STORE 2 TO vsWr
                     CASE mkEy=k_F4
                          STORE 1 TO vsWw
                          STORE 1 TO vsWr
                ENDCASE
                SAVE SCREEN TO vpAn_11
                DO paC2111w WITH "6"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT prOductos
                SEEK ALLTRIM(vcDg)+"*"
                DO CASE
                     CASE  .NOT. EOF() .AND. mkEy=k_Enter
                          STORE f2111cod TO vcOd
                          STORE f2111des TO vdEs
                          STORE f2111dcr TO vdCr
                          STORE f2111sto TO vsTo
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          STORE f2111cuc TO vcUc
                          STORE f2111nuc TO vnUc
                          STORE f2111cst TO vcSt
                          STORE f2111ser TO vsRr
                          STORE f2111la1 TO vlA1
                          STORE f2111la2 TO vlA2
                          STORE f2111an1 TO vaN1
                          STORE f2111an2 TO vaN2
                          STORE f2111esp TO veSp
                          STORE f2111tip TO ctPo
                          DO CASE
                               CASE vlA1=0 .AND. vaN1=0
                                    STORE 2 TO vmEd
                               CASE vlA2=0 .AND. vaN2=0
                                    STORE 1 TO vmEd
                               OTHERWISE
                                    STORE 1 TO vmEd
                          ENDCASE
                          SELECT tiP_prod
                          SEEK ctPo
                          IF EOF()
                               STORE 1 TO vtPo
                               STORE " " TO veNt
                          ELSE
                               STORE f9211tpo TO vtPo
                               STORE f9211ent TO veNt
                          ENDIF
                          DO diS_2400b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE mkEy=k_Tab
                          DO coL_fondo
                          SELECT tmP_prod
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               STORE ftM2cod TO vcOd
                               STORE ftM2can TO vcAn
                               @iFIL+1,mCO0+30 Say vCOD Font "&mLetRom",9 Style "BQ"
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE f2111des TO vdEs
                                    STORE f2111dcr TO vdCr
                                    STORE f2111sto TO vsTo
                                    STORE f2111cuv TO vcUv
                                    STORE f2111nuv TO vnUv
                                    STORE f2111cuc TO vcUc
                                    STORE f2111nuc TO vnUc
                                    STORE f2111cst TO vcSt
                                    STORE f2111ser TO vsRr
                                    STORE f2111la1 TO vlA1
                                    STORE f2111la2 TO vlA2
                                    STORE f2111an1 TO vaN1
                                    STORE f2111an2 TO vaN2
                                    STORE f2111esp TO veSp
                                    STORE f2111tip TO ctPo
                                    DO CASE
                                         CASE vlA1=0 .AND. vaN1=0
                                              STORE 2 TO vmEd
                                         CASE vlA2=0 .AND. vaN2=0
                                              STORE 1 TO vmEd
                                         OTHERWISE
                                              STORE 1 TO vmEd
                                    ENDCASE
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
                                    DO grA_2400b
                               ENDIF
                               SELECT tmP_prod
                               SKIP
                          ENDDO
                          SELECT teMporal
                          GOTO BOTTOM
                          STORE RECNO() TO frEc, vrEc
                          IF frEc-INT(ffIl-ifIl)>0
                               SKIP -INT(ffIl-ifIl)
                               STORE RECNO() TO irEc
                          ELSE
                               STORE 1 TO irEc
                          ENDIF
                          GOTO irEc
                          DO paN_2400b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                          STORE urEc TO vrEc
                          STORE ufIl TO vfIl
                          GOTO vrEc
                          DO diS_2400b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                STORE 99 TO mkEy
                STORE 02 TO vcSt, vsRr
                STORE 01 TO viTe, vtPo, vmEd
                STORE 00 TO vlA1, vlA2, vaN1, vaN2, veSp, vsTo
                STORE SPACE(70) TO vdEs, vdCr
                STORE SPACE(02) TO vcUv, vcUc
                STORE SPACE(30) TO vnUv, vnUc
                STORE SPACE(mtMc) TO vcOd
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                = INKEY(0.01)
                SELECT tiP_prod
                SET FILTER TO LEN(ALLTRIM(f9211let))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     STORE "No hay Codificación Nemotécnica registrada..."  ;
                           TO mmSj
                ELSE
                     SET FILTER TO
                     STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                     STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_let
                     DO q2_0000a
                     DO puC9211w WITH "6"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p2_0000a
                     RESTORE SCREEN FROM vpAn_let
                     SELECT tiP_prod
                     SET FILTER TO
                     STORE mkEy TO ckEy
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE ckEy TO mkEy
                     IF mkEy=k_Enter
                          STORE ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ ;
                                ALLTRIM(voP3)+ALLTRIM(voP4)+ALLTRIM(voP5)+ ;
                                ALLTRIM(voP6)+ALLTRIM(voP7) TO vcOd
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          DO CASE
                               CASE EOF()
                                    STORE  ;
                                     "Código no registrado en el Maestro de Productos..."  ;
                                     TO mmSj
                               CASE f2111est="9"
                                    STORE  ;
                                     "Código se encuentra anulado..." TO mmSj
                               OTHERWISE
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
                                    DO CASE
                                         CASE vtPo=10
                                              STORE  ;
                                               "Código de Conjuntos no se puede usar en Compras..."  ;
                                               TO mmSj
                                         OTHERWISE
                                              SELECT prOductos
                                              STORE f2111cod TO vcOd
                                              STORE f2111des TO vdEs
                                              STORE f2111dcr TO vdCr
                                              STORE f2111sto TO vsTo
                                              STORE f2111cuv TO vcUv
                                              STORE f2111nuv TO vnUv
                                              STORE f2111cuc TO vcUc
                                              STORE f2111nuc TO vnUc
                                              STORE f2111cst TO vcSt
                                              STORE f2111ser TO vsRr
                                              STORE f2111la1 TO vlA1
                                              STORE f2111la2 TO vlA2
                                              STORE f2111an1 TO vaN1
                                              STORE f2111an2 TO vaN2
                                              STORE f2111esp TO veSp
                                              DO CASE
                                                   CASE vlA1=0 .AND. vaN1=0
                                                        STORE 2 TO vmEd
                                                   CASE vlA2=0 .AND. vaN2=0
                                                        STORE 1 TO vmEd
                                                   OTHERWISE
                                                        STORE 1 TO vmEd
                                              ENDCASE
                                              DO diS_2400b WITH "R"
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                    ENDCASE
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT teMporal
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2400b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_2400b
                ELSE
                     DO diS_2400b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F5
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO p05_2400a
                DO CASE
                     CASE vsW3=2 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc>ffIl-ifIl .AND. vrEc>ffIl-ifIl
                          STORE vrEc TO irEc
                ENDCASE
                DO reS_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                STORE ROUND(vpRe/(1+(vpIg/100)), 6) TO vpRe
           CASE mkEy=k_Alt_z
                SET READBORDER ON
                DO CASE
                     CASE vpIg=0
                          @fFIL+1.9,vCLA+09.5 Get vDCT Font "&mLetAri",9 Style "BQ" Size 1,14.8 Pict "99999999.99" Color ,&mColSc3
                     OTHERWISE
                          @fFIL+1.9,vCL8+11.3 Get vDCT Font "&mLetAri",9 Style "BQ" Size 1,14.8 Pict "99999999.99" Color ,&mColSc3
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                DO clT_2400a IN PAI2400A
                DO toT_2400a IN PAI2400A
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_c
                SET READBORDER ON
                @fFIL+1.9,vCLB+13.1 Get vRED Font "&mLetAri",9 Style "BQ" Size 1,14.9 Pict "99999999.99" Color ,&mColSc3
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                DO clT_2400a IN PAI2400A
                DO toT_2400a IN PAI2400A
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. viOm=01
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=01
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=2 .AND. viOm=2
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=3 .AND. ((vcSt=1 .AND. vsRr= ;
                1) .OR. (vtPo>3 .AND. vtPo<>10))
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a
                     CASE vtPo=4
                          DO paI2700c WITH "1", "2400"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "2400"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "2400"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "2400"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "2400"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "2400"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "2400"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "2400"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "2400"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE 3 TO viTe
                STORE 99 TO mkEy
                SELECT teMporal
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left .AND. viTe=2 .AND. LEN(ALLTRIM(vcOd))<>0
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1can<>vcAn .OR. ftM1caj<>vcAj .OR. ftM1cos<>vpRe)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vcAn=0 .AND. vtDf<>"NC"
                          STORE "Cantidad no puede ser cero..." TO mmSj
                     CASE viTe=2 .AND. vcAn<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe=2 .AND. veNt="1" .AND. INT(vcAn)<>vcAn
                          STORE "Cantidad debe ser entero..." TO mmSj
                     CASE viTe=2 .AND. veNt="2" .AND. INT(vcAn)<>vcAn  ;
                          .AND. vcAn<>0.5
                          STORE "Cantidad debe ser entero o 0.5..." TO mmSj
                     CASE viTe=2 .AND. veNt="3" .AND. INT(vcAn)<>vcAn  ;
                          .AND. vcAn<>0.5 .AND. vcAn<>0.25 .AND. vcAn<>0.75
                          STORE "Cantidad debe ser entero o 0.5 o 0.25 o 0.75..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. veNt="4" .AND. INT(vcAn)<>0
                          STORE "Cantidad debe ser solo decimales..." TO mmSj
                     CASE viTe=3 .AND. vcAj<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe=4 .AND. vpRe=0
                          STORE "Precio no puede ser cero..." TO mmSj
                     OTHERWISE
                          DO caL_2400w IN PAI2400W
                          DO diS_2400b WITH "R"
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<4
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<4
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal_4
                DELETE FOR ALLTRIM(vcOd)+"*"=ALLTRIM(ftM4cod)+"*"
                PACK
                SELECT teMporal_6
                DELETE FOR ALLTRIM(vcOd)+"*"=ALLTRIM(ftM6cod)+"*"
                PACK
                SELECT teMporal
                DO cl1_2400w IN PAI2400W
                STORE tvAl-vtOt TO tvAl
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+5.3, ffIl, ucLn, 1
                DO liN_2400a IN PAI2400A WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, mcO0+0.10 CLEAR TO ufIl+1.0, mcO0+4.3
                     STORE frEc-1 TO frEc
                     STORE urEc-1 TO urEc
                     STORE ufIl-1 TO ufIl
                ELSE
                     STORE frEc-1 TO frEc
                     STORE vfIl TO cfIl
                     STORE vrEc TO crEc
                     STORE ffIl TO vfIl
                     STORE urEc+1 TO vrEc
                     GOTO vrEc
                     STORE vrEc-1 TO vrEc
                     DO muE_2400b
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE cfIl TO vfIl
                     STORE crEc TO vrEc
                     GOTO vrEc
                ENDIF
                DELETE
                PACK
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_2400b
                ELSE
                     DO liM_2400b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO clT_2400a IN PAI2400A
                DO toT_2400a IN PAI2400A
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1des<>vdEs .OR. ftM1can<> ;
                vcAn .OR. ftM1caj<>vcAj .OR. ftM1cos<>vpRe .OR. vcAn<1  ;
                .OR. LEN(ALLTRIM(vcOd))=0)
                DO ve1_2400b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcOd))<>0 .AND. vpRe<>0 .AND.  ;
                LEN(ALLTRIM(vdEs))<>0 .AND. (vcAn<>0 .OR. vtDf="NC")
                DO grA_2400b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_2400b
                ELSE
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_2400b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_2400b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2400a IN PAI2400A WITH ifIl, ffIl+1.1
                     STORE irEc+1 TO irEc
                     IF urEc<frEc
                          STORE urEc+1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl+1 TO vfIl
                ENDIF
                STORE vrEc+1 TO vrEc
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_2400b
                ELSE
                     DO liM_2400b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_2400b
                ELSE
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2400a IN PAI2400A WITH ifIl, ffIl+1.1
                     STORE irEc-1 TO irEc
                     IF ufIl<ffIl
                          STORE ufIl+1 TO ufIl
                     ELSE
                          STORE urEc-1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl-1 TO vfIl
                ENDIF
                STORE vrEc-1 TO vrEc
                GOTO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_2400b
                ELSE
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_2400b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_2400b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_2400b
                ELSE
                     DO diS_2400b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_2400b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
      DO CASE
           CASE (vcSt=1 .AND. vsRr=1 .AND. viOm=2) .OR. (vtPo>=4 .AND.  ;
                vtPo<=9 .AND. viOm=2) .OR. (vtPo=11 .AND. viOm=2)
                @mMF2,mMC2+24 Say "PARA VER EL DETALLE PULSAR CTRL-FLECHA IZQUIERDA..."          Font "&mLetRom",9 Style "BQ"
           CASE viTe=1
                @mMF2,mMC2+38 Say "SE DEBE SELECCIONAR UN PRODUCTO..."                           Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 4 DECIMALES..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=3
                @mMF2,mMC2+24 Say "LA CANTIDAD DE CAJAS PUEDE SER 0, ES DE 6 ENTEROS..."         Font "&mLetRom",9 Style "BQ"
           CASE viTe=4
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 2 DECIMALES..."          Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. viOm=1
                @vFIL,mCO0+5.3 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,vTM1,80
           CASE viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo>3 .AND.  ;
                vtPo<>10))
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a WITH "2400"
                     CASE vtPo=4
                          DO paI2700c WITH "1", "2400"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "2400"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "2400"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "2400"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "2400"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "2400"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "2400"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "2400"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "2400"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO CASE
                     CASE viOm=1 .AND. vcAn=0
                          STORE 1 TO viTe
                     OTHERWISE
                          STORE 3 TO viTe
                ENDCASE
                STORE 99 TO mkEy
                SELECT teMporal
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                LOOP
           CASE viTe=2
                @vFIL,vCL2+0.2 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,20.5 Pict "99999999.9999"   Color ,&mColBlN
           CASE viTe=3
                @vFIL,vCL3+0.2 Get  vCAJ Font "&mLetAri",9 Style "NQ" Size 1,06.1 Pict "9999"            Color ,&mColBlN
           CASE viTe=4 .AND. vdEc=1
                @vFIL,vCL4+0.2 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "9999999999.9999" Color ,&mColBlN
           CASE viTe=4 .AND. vdEc=2
                @vFIL,vCL4+0.2 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999999999.99999" Color ,&mColBlN
           CASE viTe=4 .AND. vdEc=3
                @vFIL,vCL4+0.2 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99999999.999999" Color ,&mColBlN
      ENDCASE
      IF viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo>3 .AND. vtPo<>10))
           mkEy = INKEY(0, "HM")
      ELSE
           SET CURSOR ON
           READ
           SET CURSOR OFF
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_2400b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_2400b IN PAI2400B
      DO diS_2400b IN PAI2400B WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      @ vfIl, vcL6-0.03 CLEAR TO ffIl+1.1, vcL6+3.9
      DO liN_2400a IN PAI2400A WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2400b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfIl, vcL6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO caL_2400w IN PAI2400W
 @vFIL,vCL3-1.3 Say " "                   Font "&mLetAri",9 Style "NQ" Size 1,00.4
 @vFIL,vCL4-1.3 Say " "                   Font "&mLetAri",9 Style "NQ" Size 1,00.4
 @vFIL,vCL5-1.3 Say " "                   Font "&mLetAri",9 Style "NQ" Size 1,00.4
 @vFIL,mCO0+0.1 Say vREC                  Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFIL,mCO0+5.3 Say Substr(vDES,1,vTM1+3) Font "&mLetAri",9 Style "NQ" Size 1,vTM1
 @vFIL,vCL1     Say Substr(vNUC,1,vTM2+3) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
 @vFIL,vCL3     Say vCAJ                  Font "&mLetAri",9 Style "NQ" Size 1,06.1 Pict "9999"
 @vFIL,vCL2     Say vCAN                  Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO CASE
      CASE vdEc=1 .AND. vpRe>99999999.999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.999"
      CASE vdEc=1
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
      CASE vdEc=2 .AND. vpRe>99999999.9999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.999"
      CASE vdEc=2 .AND. vpRe>9999999.9999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
      CASE vdEc=2
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "9,999,999.99999"
      CASE vdEc=3 .AND. vpRe>99999999.999999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.999"
      CASE vdEc=3 .AND. vpRe>9999999.999999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
      CASE vdEc=3 .AND. vpRe>999999.999999
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "9,999,999.99999"
      CASE vdEc=3
           @vFIL,vCL4 Say vPRE              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict  "999,999.999999"
 ENDCASE
 DO CASE
      CASE vtOt>9999999999.9999
           @vFIL,vCL5 Say vTOT              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999'999,999,999"
      CASE vtOt>999999999.9999
           @vFIL,vCL5 Say vTOT              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "9999,999,999.99"
      CASE vtOt>99999999.9999
           @vFIL,vCL5 Say vTOT              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "999,999,999.999"
      OTHERWISE
           @vFIL,vCL5 Say vTOT              Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 ENDCASE
 DO coLsc3
 @fFIL+3.7,mCO0+10 Say vCOD               Font "&mLetAri",9  Style "NQ" Size 1,15.4
 IF vpIe=0
      @fFIL+3.6,mCO0+41.0 Say "  "          Font "&mLetAri",11 Style "BQ" Size 1,40
 ELSE
      @fFIL+3.7,mCO0+41.5 Say vPIE          Font "&mLetAri",9  Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
      @fFIL+3.7,mCO0+65.0 Say "Pies"        Font "&mLetAri",9  Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Bla_2400b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 @ vfIl, vcL6-0.03 CLEAR TO vfIl+1.1, vcL6+3.9
 DO liN_2400a IN PAI2400A WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_2400b
 STORE SPACE(mtMc) TO vcOd
 STORE SPACE(02) TO vcUv, vcUc
 STORE SPACE(10) TO vnUv, vnUc
 STORE SPACE(70) TO vdEs, vdCr
 STORE 02 TO vcSt, vsRr
 STORE 01 TO viOm, viTe, vmEd, vtPo
 STORE 00 TO vlA1, vlA2, vaN1, vaN2, veSp, vcAn, vcAj, vpIe, vsTo, vpRe, vtOt
ENDPROC
*
PROCEDURE Mue_2400b
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
 STORE ftM1la2 TO vlA2
 STORE ftM1an1 TO vaN1
 STORE ftM1an2 TO vaN2
 STORE ftM1esp TO veSp
 STORE ftM1tpo TO vtPo
 STORE ftM1cos TO vpRe
 STORE 02 TO viOm
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 2 TO vcSt, vsRr
      STORE 0 TO vsTo
      STORE " " TO veNt
 ELSE
      STORE f2111cst TO vcSt
      STORE f2111ser TO vsRr
      STORE f2111sto TO vsTo
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
 ENDIF
 SELECT teMporal
 DO CASE
      CASE (vtPo>3 .AND. vtPo<>10) .AND. (viTe<3 .OR. viTe>4)
           STORE 3 TO viTe
      CASE viTe<2 .OR. viTe>4
           STORE 2 TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2400b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      DO cl1_2400w IN PAI2400W
      STORE tvAl-vtOt TO tvAl
 ENDIF
 = INKEY(0.01)
 SELECT teMporal
 DO caL_2400w IN PAI2400W
 REPLACE ftM1cod WITH vcOd
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1dcr WITH vdCr
 REPLACE ftM1cuv WITH vcUv
 REPLACE ftM1nuv WITH vnUv
 REPLACE ftM1cuc WITH vcUc
 REPLACE ftM1nuc WITH vnUc
 REPLACE ftM1med WITH vmEd
 REPLACE ftM1can WITH vcAn
 REPLACE ftM1caj WITH vcAj
 REPLACE ftM1pie WITH vpIe
 REPLACE ftM1la1 WITH vlA1
 REPLACE ftM1la2 WITH vlA2
 REPLACE ftM1an1 WITH vaN1
 REPLACE ftM1an2 WITH vaN2
 REPLACE ftM1esp WITH veSp
 REPLACE ftM1tpo WITH vtPo
 REPLACE ftM1cos WITH vpRe
 STORE 02 TO viOm
 STORE tvAl+vtOt TO tvAl
 DO clT_2400a IN PAI2400A
 DO toT_2400a IN PAI2400A
ENDPROC
*
PROCEDURE Ve1_2400b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0
           STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                 TO mmSj
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE vcAn=0 .AND. vtDf<>"NC"
           STORE "Cantidad no puede ser cero..." TO mmSj
      CASE vcAn<0
           STORE "Cantidad no puede ser menor a cero..." TO mmSj
      CASE veNt="1" .AND. INT(vcAn)<>vcAn
           STORE "Cantidad debe ser entero..." TO mmSj
      CASE veNt="2" .AND. INT(vcAn)<>vcAn .AND. vcAn<>0.5
           STORE "Cantidad debe ser entero o 0.5..." TO mmSj
      CASE veNt="3" .AND. INT(vcAn)<>vcAn .AND. vcAn<>0.5 .AND. vcAn<> ;
           0.25 .AND. vcAn<>0.75
           STORE "Cantidad debe ser entero o 0.5 o 0.25 o 0.75..." TO mmSj
      CASE veNt="4" .AND. INT(vcAn)<>0
           STORE "Cantidad debe ser solo decimales..." TO mmSj
      CASE vcAj<0
           STORE "Cantidad no puede ser menor a cero..." TO mmSj
      CASE vpRe=0
           STORE "Precio no puede ser cero..." TO mmSj
 ENDCASE
ENDPROC
*
PROCEDURE Mu1_2400b
 STORE viTe TO xiTe
 STORE vcOd TO xcOd
 STORE vdEs TO xdEs
 STORE vdCr TO xdCr
 STORE vcUv TO xcUv
 STORE vnUv TO xnUv
 STORE vcUc TO xcUc
 STORE vnUc TO xnUc
 STORE vcSt TO xcSt
 STORE vsRr TO xsRr
 STORE vmEd TO xmEd
 STORE vtPo TO xtPo
 STORE vlA1 TO xlA1
 STORE vlA2 TO xlA2
 STORE vaN1 TO xaN1
 STORE vaN2 TO xaN2
 STORE veSp TO xeSp
 STORE vcAn TO xcAn
 STORE vcAj TO xcAj
 STORE vpIe TO xpIe
 STORE vsTo TO xsTo
 STORE vpRe TO xpRe
ENDPROC
*
PROCEDURE Mu2_2400b
 STORE xiTe TO viTe
 STORE xcOd TO vcOd
 STORE xcUv TO vcUv
 STORE xnUv TO vnUv
 STORE xdEs TO vdEs
 STORE xcSt TO vcSt
 STORE xcUc TO vcUc
 STORE xnUc TO vnUc
 STORE xdCr TO vdCr
 STORE xsRr TO vsRr
 STORE xmEd TO vmEd
 STORE xtPo TO vtPo
 STORE xlA1 TO vlA1
 STORE xlA2 TO vlA2
 STORE xaN1 TO vaN1
 STORE xaN2 TO vaN2
 STORE xeSp TO veSp
 STORE xcAn TO vcAn
 STORE xcAj TO vcAj
 STORE xpIe TO vpIe
 STORE xsTo TO vsTo
 STORE xpRe TO vpRe
ENDPROC
*
PROCEDURE Res_2400b
 SET READBORDER ON
 STORE vrEc TO xrEc
 DO mu1_2400b
 DO CASE
      CASE wsW0=1
           DO p00_2400a IN PAI2400A WITH "1"
      CASE wsW0=2
           DO p00_2400a IN PAM2400A WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO boT_2400a IN PAI2400A WITH "3"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc, viOm
           STORE 00 TO urEc, frEc
           DO mu2_2400b
      CASE irEc>frEc .AND. vrEc=irEc
           STORE 01 TO viOm
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
           DO mu2_2400b
      OTHERWISE
           STORE ifIl TO vfIl
           GOTO irEc
           DO WHILE  .NOT. EOF()
                STORE RECNO() TO vrEc
                IF vrEc=xrEc
                     EXIT
                ENDIF
                SKIP
                IF  .NOT. EOF()
                     STORE vfIl+1 TO vfIl
                     IF vfIl>ffIl
                          STORE ifIl TO vfIl
                          STORE RECNO() TO irEc
                     ENDIF
                ENDIF
           ENDDO
           IF vrEc<>xrEc
                GOTO BOTTOM
                STORE 1 TO viOm
                STORE frEc+1 TO vrEc, xrEc
                STORE ufIl+1 TO vfIl
                IF vfIl>ffIl
                     STORE ifIl TO vfIl
                     STORE vrEc TO irEc
                ENDIF
                DO mu2_2400b
           ELSE
                GOTO vrEc
                DO muE_2400b
           ENDIF
 ENDCASE
 DO diS_2400b WITH "R"
ENDPROC
*
PROCEDURE Clp_2400b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
           mcCc<=mmC1+59.40
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
      CASE mfIl>=ffIl+1.928 .AND. mfIl<=ffIl+2.857 .AND. mcCc>=vcL8+6.8  ;
           .AND. mcCc<=vcL8+8.8 .AND. vpIg<>0
           STORE k_Alt_z TO mkEy
      CASE mfIl>=ffIl+1.928 .AND. mfIl<=ffIl+2.857 .AND. mcCc>=vcLa+6.8  ;
           .AND. mcCc<=vcLa+8.8 .AND. vpIg=0
           STORE k_Alt_z TO mkEy
      CASE mfIl>=ffIl+1.928 .AND. mfIl<=ffIl+2.857 .AND. mcCc>=vcLb+9.7  ;
           .AND. mcCc<=vcLb+11.7
           STORE k_Alt_c TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcL6-0.3 .AND. mcCc<= ;
           vcL6+3.9
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>1 .AND. mcCc>=mcO0  ;
           .AND. mcCc<=mcO0+134
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=mcO0  ;
           .AND. mcCc<=mcO0+151.4
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .OR. LEN(ALLTRIM(vdEs))=0
                     STORE "Se tiene que escoger Código de Producto o Servicio..."  ;
                           TO mmSj
                     DO poNmsj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>3 .AND. mcCc<=mcO0+ ;
           151.4 .AND. mcCc<=mcO0+161
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .OR. LEN(ALLTRIM(vdEs))=0
                     STORE "Se tiene que escoger Código de Producto o Servicio..."  ;
                           TO mmSj
                     DO poNmsj
                CASE vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     DO poNmsj
                CASE vcAn=0 .AND. vtDf<>"NC"
                     STORE "Cantidad no puede ser igual a cero..." TO mmSj
                     DO poNmsj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           STORE k_Clic TO mkEy
           DO ve1_2400b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ELSE
                IF LEN(ALLTRIM(vcOd))<>0 .AND. LEN(ALLTRIM(vdEs))<>0  ;
                   .AND. (vcAn<>0 .OR. vtDf="NC")
                     DO grA_2400b
                ENDIF
                IF viOm=01
                     DO blA_2400b
                ELSE
                     DO diS_2400b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE ifIl+INT(mfIl-ifIl) TO vfIl
                GOTO irEc
                SKIP INT(mfIl-ifIl)
                STORE RECNO() TO vrEc
                DO muE_2400b
                DO diS_2400b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO CASE
                     CASE mcCc>=ucLn-5 .AND. mcCc<=ucLn
                          STORE 01 TO viTe
                          STORE k_Alt_del TO mkEy
                     CASE mcCc>=mcO0+151.4 .AND. mcCc<=mcO0+161.2
                          STORE 03 TO viTe
                          STORE 99 TO mkEy
                     OTHERWISE
                          STORE 02 TO viTe
                          STORE 99 TO mkEy
                ENDCASE
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2400b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe escoger un Código de "
 @ pfIl+1, 01 SAY "Producto o Servicio. La descripción no se puede modificar."
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 01 SAY  ;
   "El Detalle se graba en un archivo temporal, el cual toma una numeración al"
 @ pfIl+1, 01 SAY  ;
   "momento de Grabar el Documento. Si se saliera del Documento sin grabarlo,"
 @ pfIl+2, 01 SAY "el Archivo Temporal se borrará automáticamente."
 STORE pfIl+3 TO pfIl
 @ pfIl+0, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 02 SAY "ESC" STYLE "BT"
 @ pfIl+3, 02 SAY "F10" STYLE "BT"
 @ pfIl+4, 02 SAY "F1" STYLE "BT"
 @ pfIl+2, 22 SAY "Regresar a la Cabecera"
 @ pfIl+3, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 22 SAY "Ayuda del Programa"
 STORE pfIl+5 TO pfIl
 IF viTe=1
      @ pfIl+0, 20 SAY ":" STYLE "BT"
      @ pfIl+1, 20 SAY ":" STYLE "BT"
      @ pfIl+2, 20 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "F2" STYLE "BT"
      @ pfIl+1, 02 SAY "F3" STYLE "BT"
      @ pfIl+2, 02 SAY "F4" STYLE "BT"
      @ pfIl+0, 22 SAY "Consulta de Productos registrados"
      @ pfIl+1, 22 SAY "Buscar palabra o frase y mostrarla en consulta"
      @ pfIl+2, 22 SAY "Buscar código y mostrar la descripción en consulta"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl, 20 SAY ":" STYLE "BT"
 @ pfIl, 02 SAY "F5" STYLE "BT"
 @ pfIl, 22 SAY "Ampliar/Reducir detalle"
 STORE pfIl+1 TO pfIl
 IF viTe=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F6" STYLE "BT"
      @ pfIl, 22 SAY "Codificación nemotécnica"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "F8" STYLE "BT"
 @ pfIl+1, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+4, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+5, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+6, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+0, 22 SAY "Descontar el IGV si se ha digitado el Prec.Unit.incl."
 @ pfIl+1, 22 SAY "Ir a la línea siguiente"
 @ pfIl+2, 22 SAY "Ir a la línea anterior"
 @ pfIl+3, 22 SAY "Ir al sgte.campo, llegando al último pasa a sgte.línea"
 @ pfIl+4, 22 SAY "Ir al campo anterior"
 @ pfIl+5, 22 SAY "Primera línea del Detalle"
 @ pfIl+6, 22 SAY "Última línea del Detalle"
 STORE pfIl+7 TO pfIl
 IF viTe=1 .OR. viOm=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 22 SAY "Des-Seleccionar Producto"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "TAB" STYLE "BT"
 @ pfIl+3, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+4, 02 SAY "ALT C" STYLE "BT"
 @ pfIl+5, 02 SAY "ALT Z" STYLE "BT"
 @ pfIl+0, 22 SAY "Página siguiente"
 @ pfIl+1, 22 SAY "Página anterior"
 @ pfIl+2, 22 SAY "GRABAR DOCUMENTO"
 @ pfIl+3, 22 SAY "Borrar línea"
 @ pfIl+4, 22 SAY "Ingresar Redondeo"
 @ pfIl+5, 22 SAY "Ingresar Descuento"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
