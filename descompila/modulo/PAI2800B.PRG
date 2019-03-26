 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF() .OR. EOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc, viTe
           STORE 00 TO urEc, frEc
           DO liM_2700b IN PAI2700B
           IF AT("TRANSF", UPPER(ALLTRIM(vnTi)))<>0
                STORE vcD1 TO vcOd, vdEs
           ENDIF
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_2700b IN PAI2700B
      CASE viOm=02
           STORE 2 TO viTe
           GOTO vrEc
           DO muE_2700b IN PAI2700B
 ENDCASE
 DO diS_2700b IN PAI2700B WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2800b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2800b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=1
                          DO blA_2700b IN PAI2700B
                     ELSE
                          DO diS_2700b IN PAI2700B WITH "N"
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
                DO paC2111w WITH "9"
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
                          DO diS_2700b IN PAI2700B WITH "R"
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
                                    DO grA_2700b IN PAI2700B
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
                          DO paN_2700b IN PAI2700B
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                          STORE urEc TO vrEc
                          STORE ufIl TO vfIl
                          GOTO vrEc
                          DO diS_2700b IN PAI2700B WITH "R"
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
                DO diS_2700b IN PAI2700B WITH "R"
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
                     DO puC9211w WITH "4"
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
                                    DO diS_2700b IN PAI2700B WITH "R"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
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
                DO hl1_2700b IN PAI2700B
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F5
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO p04_2700a IN PAI2700A
                DO CASE
                     CASE vsW3=2 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc>ffIl-ifIl .AND. vrEc>ffIl-ifIl
                          STORE vrEc TO irEc
                ENDCASE
                DO reS_2800b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vtPp=5 .AND. LEN(ALLTRIM(vcOd))=0
                STORE "No hay código seleccionado..." TO mmSj
           CASE mkEy=k_F7 .AND. vtPp=5
                SAVE SCREEN TO vpAn_11
                STORE 0 TO xcAn
                SELECT deT_fact
                SET ORDER TO F1301COD
                SELECT caB_fact
                SET ORDER TO F1300FEM
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
                DO WHILE  .NOT. EOF() .AND. f1300fem=vfEm
                     IF f1300est$"89" .OR. (f1300tdo<>"FA" .AND. f1300tdo<> ;
                        "BO" .AND. f1300tdo<>"NP")
                          SKIP
                          LOOP
                     ENDIF
                     STORE f1300tdo TO itDo
                     STORE f1300ser TO isEr
                     STORE f1300doc TO idOc
                     @iFIL-3,mCO0+15 Say iTDO+":"+iSER+"-"+iDOC Font "&mLetRom",14 Style "BQ" Size 1,30
                     SELECT deT_fact
                     SEEK ALLTRIM(vcD2)+"*"+itDo+isEr+idOc
                     DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+ ;
                        f1301doc=itDo+isEr+idOc .AND. ALLTRIM(f1301cod)+ ;
                        "*"=ALLTRIM(vcD2)+"*"
                          STORE xcAn+f1301can TO xcAn
                          SKIP
                     ENDDO
                     SELECT caB_fact
                     SKIP
                ENDDO
                RESTORE SCREEN FROM vpAn_11
                DO CASE
                     CASE vlA1<>0 .AND. vaN1<>0
                          STORE ROUND(vlA1*vaN1*10.77, 4) TO vpIe
                     CASE vlA2<>0 .AND. vaN2<>0
                          STORE ROUND((vlA2*vaN2/144), 4) TO vpIe
                     OTHERWISE
                          STORE 1 TO vpIe
                ENDCASE
                IF vpIe=0
                     STORE 1 TO vpIe
                ENDIF
                DO coL_fondo
                @fFIL+1.4,mCO0+132 Say xCAN      Font "&mLetAri",10 Style "BQ" Pict "9,999,999.9999" Size 1,17
                @fFIL+1.4,mCO0+155 Say vPIE      Font "&mLetAri",10 Style "BQ" Pict "999.9999"       Size 1,11
                @fFIL+1.4,mCO0+169 Say xCAN/vPIE Font "&mLetAri",10 Style "BQ" Pict "9,999,999.9999" Size 1,17
                SELECT deT_fact
                SET ORDER TO F1301DOC
                SELECT caB_fact
                SET ORDER TO F1300DOC
                SELECT teMporal
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
                          DO paI2700c WITH "1", "2800"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "2800"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "2800"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "2800"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "2800"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "2800"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "2800"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "2800"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "2800"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE 3 TO viTe
                STORE 99 TO mkEy
                SELECT teMporal
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left .AND. viTe=2 .AND. LEN(ALLTRIM(vcOd))<>0
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viOm=2 .AND. viTe=2
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1can<>vcAn .OR. ftM1caj<>vcAj)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vcAn=0
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
                     CASE viTe=2 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=1
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=2
                          SELECT deT_sali
                          DO orD_0000a WITH "2801", "A", "F2801COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                          IF  .NOT. EOF() .AND. vsTo-vcAn+f2801can<0
                               STORE "Cantidad no puede ser mayor a Stock..."  ;
                                     TO mmSj
                          ENDIF
                          DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT teMporal
                     CASE viTe=3 .AND. vcAj<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     OTHERWISE
                          DO caL_2700w IN PAI2700W
                          DO diS_2700b IN PAI2700B WITH "R"
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<3
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<3
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
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+5.3, ffIl, ucLn, 1
                DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, mcO0+0.1 CLEAR TO ufIl+1, mcO0+4.3
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
                     DO muE_2700b IN PAI2700B
                     DO diS_2700b IN PAI2700B WITH "N"
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
                     DO muE_2700b IN PAI2700B
                ELSE
                     DO liM_2700b IN PAI2700B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1des<>vdEs .OR. ftM1can<> ;
                vcAn .OR. ftM1caj<>vcAj .OR. vcAn<1 .OR. LEN(ALLTRIM(vcOd))=0)
                DO ve1_2800b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                LEN(ALLTRIM(vdEs))<>0 .AND. vcAn<>0
                DO grA_2700b IN PAI2700B
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_2700b IN PAI2700B WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_2700b IN PAI2700B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
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
                     DO muE_2700b IN PAI2700B
                ELSE
                     DO liM_2700b IN PAI2700B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
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
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_2700b IN PAI2700B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_2700b IN PAI2700B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_2700b IN PAI2700B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_2700b IN PAI2700B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_2700b IN PAI2700B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_2700b IN PAI2700B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
      DO CASE
           CASE (vcSt=1 .AND. vsRr=1 .AND. viOm=2) .OR. (vtPo>=4 .AND.  ;
                vtPo<=11 .AND. viOm=2) .OR. (vtPo=11 .AND. viOm=2)
                @mMF2,mMC2+24 Say "PARA VER EL DETALLE PULSAR CTRL-FLECHA IZQUIERDA..."          Font "&mLetRom",9 Style "BQ"
           CASE viTe=1
                @mMF2,mMC2+38 Say "SE DEBE SELECCIONAR UN PRODUCTO..."                           Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 4 DECIMALES..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=3
                @mMF2,mMC2+24 Say "LA CANTIDAD DE CAJAS PUEDE SER 0, ES DE 6 ENTEROS..."         Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. viOm=1
                @vFIL,mCO0+5.3 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,111.2,80
           CASE viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo>3 .AND.  ;
                vtPo<>10))
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a
                     CASE vtPo=4
                          DO paI2700c WITH "1", "2800"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "2800"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "2800"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "2800"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "2800"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "2800"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "2800"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "2800"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "2800"
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
                DO diS_2700b IN PAI2700B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                LOOP
           CASE viTe=2
                @vFIL,mCO0+149.9 Get vCAN Font "&mLetAri",9 Style "NQ" Size 1,21.4 Pict "999999.9999" Color ,&mColBlN
           CASE viTe=3
                @vFIL,mCO0+173.2 Get vCAJ Font "&mLetAri",9 Style "NQ" Size 1,9.4  Pict "999999"      Color ,&mColBlN
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
PROCEDURE Ve1_2800b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0
           STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                 TO mmSj
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE vcAn=0
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
      CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=1
           STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
      CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=2
           SELECT deT_sali
           DO orD_0000a WITH "2801", "A", "F2801COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           IF  .NOT. EOF() .AND. vsTo-vcAn+f2801can<0
                STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
           ENDIF
           SELECT deT_sali
           DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
 ENDCASE
ENDPROC
*
PROCEDURE Res_2800b
 SET READBORDER ON
 STORE vrEc TO xrEc
 DO mu1_2700b IN PAI2700B
 DO CASE
      CASE wsW0=1
           DO p00_2800a IN PAI2800A WITH "1"
      CASE wsW0=2
           DO p00_2800a IN PAM2800A WITH "1"
 ENDCASE
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
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
           DO mu2_2700b IN PAI2700B
      CASE irEc>frEc .AND. vrEc=irEc
           STORE 01 TO viOm
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
           DO mu2_2700b IN PAI2700B
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
                DO mu2_2700b IN PAI2700B
           ELSE
                GOTO vrEc
                DO muE_2700b IN PAI2700B
           ENDIF
 ENDCASE
 DO diS_2700b IN PAI2700B WITH "R"
ENDPROC
*
PROCEDURE Clp_2800b
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-5 .AND. mcCc<=ucLn
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
                CASE vcAn=0
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
           DO ve1_2800b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ELSE
                IF LEN(ALLTRIM(vcOd))<>0 .AND. LEN(ALLTRIM(vdEs))<>0  ;
                   .AND. vcAn<>0
                     DO grA_2700b IN PAI2700B
                ENDIF
                IF viOm=01
                     DO blA_2700b IN PAI2700B
                ELSE
                     DO diS_2700b IN PAI2700B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE ifIl+INT(mfIl-ifIl) TO vfIl
                GOTO irEc
                SKIP INT(mfIl-ifIl)
                STORE RECNO() TO vrEc
                DO muE_2700b IN PAI2700B
                DO diS_2700b IN PAI2700B WITH "R"
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
