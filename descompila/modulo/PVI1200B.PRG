 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc, viTe
           STORE 00 TO urEc, frEc
           DO liM_1200b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_1200b
      CASE viOm=02
           STORE 2 TO viTe
           GOTO vrEc
           DO muE_1200b
 ENDCASE
 DO diS_1200b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO ctO_1200b
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1200b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=1
                          DO blA_1200b
                     ELSE
                          DO diS_1200b WITH "N"
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
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vdCr))=0
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
                DO CASE
                     CASE mlIs<>0 .AND. ulIs=0 .AND. (vlIs<1 .OR. vlIs>10)
                          STORE mlIs TO vlIs
                     CASE mlIs=0 .AND. ulIs=0 .AND. vlIs<>1
                          STORE 1 TO vlIs
                     CASE ulIs<>0 .AND. vlIs<>ulIs .AND. vlIs<>ulI2 .AND.  ;
                          vlIs<>ulI3 .AND. vsW0=1
                          STORE ulIs TO vlIs
                ENDCASE
                DO coLbln
                @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                SAVE SCREEN TO vpAn_11
                DO q2_0000a
                DO paC2111w WITH "E"
                DO p2_0000a
                RESTORE SCREEN FROM vpAn_11
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                SELECT prOductos
                SEEK ALLTRIM(vcDg)+"*"
                DO CASE
                     CASE mkEy=k_Enter .AND. EOF()
                     CASE mkEy=k_Enter .AND. f2111est="9"
                     CASE mkEy=k_Enter
                          DO prO_1200b
                          DO me3_1200b
                          SELECT teMporal
                          DO diS_1200b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE mkEy=k_Tab
                          SELECT tmP_prod
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               STORE ftM2cod TO vcOd
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               DO CASE
                                    CASE EOF()
                                    CASE f2111est="9"
                                    OTHERWISE
                                         STORE 0 TO vpDc
                                         STORE 1 TO vcAn, viOm
                                         STORE SPACE(60) TO vrEf
                                         DO prO_1200b
                                         DO grA_1200b
                               ENDCASE
                               SELECT tmP_prod
                               SKIP
                          ENDDO
                          SELECT teMporal
                          GOTO irEc
                          DO paN_1200b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE urEc TO vrEc
                          STORE ufIl TO vfIl
                          GOTO vrEc
                          STORE k_Ctrl_end TO mkEy
                ENDCASE
                STORE 1 TO vsW1
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                STORE 99 TO mkEy
                STORE 01 TO viTe, vtPo, vmEd, vsW1
                STORE 02 TO vmD1, vmD2, vmD3, vcSt, vsRr, vpEr, vdTr
                STORE 00 TO vsOl, vuSd, vpRe, vpRo, veSp, vsTo, vpR1,  ;
                      vlAr, xlAr
                STORE 00 TO vlA1, xlA1, vlA2, xlA2, vlA3, xlA3, vlA4,  ;
                      xlA4, vlA5
                STORE 00 TO xlA5, vlA6, xlA6, vlA7, xlA7, vlA8, xlA8,  ;
                      vlA9, xlA9
                STORE 00 TO vaNc, xaNc, vaN1, xaN1, vaN2, xaN2, vaN3,  ;
                      xaN3, vaN4
                STORE 00 TO xaN4, vaN5, xaN5, vaN6, xaN6, vaN7, xaN7,  ;
                      vaN8, xaN8
                STORE 00 TO vaN9, xaN9, vaLt, xaLt, vaL1, xaL1, vaL2,  ;
                      xaL2, vaL3
                STORE 00 TO xaL3, vaL4, xaL4, vaL5, xaL5, vaL6, xaL6,  ;
                      vaL7, xaL7
                STORE 00 TO vaL8, xaL8, vaL9, xaL9
                STORE SPACE(01) TO vdPp
                STORE SPACE(02) TO vcUv, vcUc
                STORE SPACE(30) TO vnUv, vnUc
                STORE SPACE(70) TO vdEs, vdCr
                STORE SPACE(mtMa) TO vcOd
                DO diS_1200b WITH "R"
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
                     STORE 99 TO mkEy
                     STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                     STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_let
                     DO q2_0000a
                     DO puC9211w WITH "1"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coLbln
                     DO p2_0000a
                     RESTORE SCREEN FROM vpAn_let
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
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
                                    DO prO_1200b
                                    DO me3_1200b
                                    SELECT teMporal
                                    DO diS_1200b WITH "R"
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
                DO hl1_1200b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_1200b
                ELSE
                     DO diS_1200b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F5
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO p03_1200a IN PVI1200A
                DO CASE
                     CASE vsW3=2 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc<=ffIl-ifIl
                          STORE 1 TO irEc
                     CASE vsW3=1 .AND. frEc>ffIl-ifIl .AND. vrEc>ffIl-ifIl
                          STORE vrEc TO irEc
                ENDCASE
                DO reS_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. vsW3=2
                STORE 1 TO vsW3
                DO reS_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vtPo=10 .AND. vsRr=2
                STORE "Este Conjunto no maneja Cálculos..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vtPo=10 .AND. vsRr=1
                DO q2_0000a
                DO p3_0000a
                DO meD_1200b
                DO q3_0000a
                DO p2_0000a
                SELECT teMporal
                DO caL_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_del .AND. viOm=01
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_c .AND. LEN(ALLTRIM(vcOd))=0
                STORE "No se puede ver ventas ya que no hay código registrado..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_z .AND. LEN(ALLTRIM(vcOd))=0
                STORE "No se puede ver ventas ya que no hay código registrado..."  ;
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
           CASE mkEy=k_Pgup .AND. irEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=2 .AND. vmD1=2
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo> ;
                3 .AND. vtPo<>10)) .AND. ((viTe=3 .AND. vmD2=1) .OR.  ;
                (viTe=4 .AND. vmD2=2))
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a
                     CASE vtPo=4
                          DO paI2700c WITH "1", "1200"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "1200"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "1200"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "1200"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "1200"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "1200"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "1200"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "1200"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "1200"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                IF vmD2=1
                     STORE 03 TO viTe
                ELSE
                     STORE 04 TO viTe
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_c
                DO vpR_1200b WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_z
                DO vpR_1200b WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=4 .AND. vmD2=1
                          STORE 3 TO viTe
                     CASE viTe=4 .AND. vmD2=2
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1dcr<>vdCr .OR. ftM1can<>vcAn .OR. ftM1pre<>vpRe .OR.  ;
                ftM1pdc<>vpDc .OR. ftM1ref<>vrEf)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. LEN(ALLTRIM(vdCr))=0
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
                     CASE viTe=2 .AND. vtPo=10 .AND. vsRr=1 .AND. vlAr=0  ;
                          .AND. vlA1=0 .AND. vlA2=0 .AND. vlA3=0 .AND.  ;
                          vlA4=0 .AND. vlA5=0 .AND. vlA6=0 .AND. vlA7=0  ;
                          .AND. vlA8=0 .AND. vlA9=0 .AND. vaNc=0 .AND.  ;
                          vaN1=0 .AND. vaN2=0 .AND. vaN3=0 .AND. vaN4=0  ;
                          .AND. vaN5=0 .AND. vaN6=0 .AND. vaN7=0 .AND.  ;
                          vaN8=0 .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1=0  ;
                          .AND. vaL2=0 .AND. vaL3=0 .AND. vaL4=0 .AND.  ;
                          vaL5=0 .AND. vaL6=0 .AND. vaL7=0 .AND. vaL8=0  ;
                          .AND. vaL9=0
                          STORE "Hay que ingresar las Medidas..." TO mmSj
                     CASE viTe=2 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND.  ;
                          (msTp=1 .OR. msTp=3) .AND. wsW0=1
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                          .AND. wsW0=2
                          SELECT deT_ped
                          DO orD_0000a WITH "1201", "V", "F1201COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                          DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          IF  .NOT. EOF() .AND. vsTo-vcAn+f1201can<0
                               STORE "Cantidad no puede ser mayor a Stock..."  ;
                                     TO mmSj
                          ENDIF
                          SELECT teMporal
                     CASE viTe=3 .AND. vmD2=1 .AND. vpRe=0
                          STORE "Precio no puede ser cero..." TO mmSj
                     CASE viTe=3 .AND. vmD2=1 .AND. vmOn=1 .AND. vpRe< ;
                          vmV1 .AND. vmV1<>0
                          STORE "Descuento mayor al permitido en este producto..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vmD2=1 .AND. vmOn=2 .AND. vpRe< ;
                          vmV2 .AND. vmV2<>0
                          STORE "Descuento mayor al permitido en este producto..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vmD2=1 .AND. vpRe<0
                          STORE "N" TO moPc
                          DO prE_docum WITH  ;
                             "¿Está seguro de que el precio sea negativo?"
                          IF moPc$"Ss"
                          ELSE
                               STORE 0 TO vpRe
                          ENDIF
                     CASE viTe=4 .AND. vpDc<0
                          STORE "Descuento por Ítem no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vpDc>0 .AND. wnIv="2"
                          STORE "No se puede hacer Descuento en este producto..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vpDc>0 .AND. wnIv$"13"
                          DO caL_1200b
                          DO CASE
                               CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)< ;
                                    vmV1 .AND. vmV1<>0
                                    STORE  ;
                                     "El Descuento es mayor al permitido..."+ ;
                                     STR(vdCt, 10, 2) TO mmSj
                                    STORE 0 TO vpDc
                                    DO caL_1200b
                               CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)< ;
                                    vmV2 .AND. vmV2<>0
                                    STORE  ;
                                     "El Descuento es mayor al permitido..."+ ;
                                     STR(vdCt, 10, 2) TO mmSj
                                    STORE 0 TO vpDc
                                    DO caL_1200b
                          ENDCASE
                          DO diS_1200b WITH "R"
                     OTHERWISE
                          DO diS_1200b WITH "R"
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<5
                     DO CASE
                          CASE viTe=2 .AND. vmD2=1
                               STORE 3 TO viTe
                          CASE viTe=2 .AND. vmD2=2
                               STORE 4 TO viTe
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<5
                DO CASE
                     CASE viTe=2 .AND. vmD2=1
                          STORE 3 TO viTe
                     CASE viTe=2 .AND. vmD2=2
                          STORE 4 TO viTe
                     OTHERWISE
                          STORE viTe+1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal_4
                DELETE FOR ALLTRIM(vcOd)+"*"=ALLTRIM(ftM4cod)+"*"
                PACK
                REINDEX
                SELECT teMporal_cj
                DELETE FOR ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                PACK
                REINDEX
                SELECT teMporal
                DO cl1_1200b
                STORE tvAl-vtOt TO tvAl
                STORE tnPe-vnPe TO tnPe
                STORE tpEr-viPe TO tpEr
                DO ctO_1200b
                DO coL_fondo
                DO suBe WITH vfIl, vcO1+3.7, ffIl, ucLn, 1
                DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, icLn CLEAR TO ufIl+1, vcO1+2.7
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
                     DO muE_1200b
                     DO diS_1200b WITH "N"
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
                     DO muE_1200b
                ELSE
                     DO liM_1200b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1dcr<>vdCr .OR. ftM1can<> ;
                vcAn .OR. ftM1pre<>vpRe .OR. ftM1pdc<>vpDc .OR. ftM1ref<> ;
                vrEf .OR. vcAn<1 .OR. LEN(ALLTRIM(vcOd))=0)
                DO ve1_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
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
                LEN(ALLTRIM(vdCr))<>0 .AND. vcAn<>0
                DO grA_1200b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_1200b
                ELSE
                     DO diS_1200b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_1200b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_1200b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1
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
                     DO muE_1200b
                ELSE
                     DO liM_1200b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_1200b
                ELSE
                     DO diS_1200b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1
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
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_1200b
                ELSE
                     DO diS_1200b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_1200b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_1200b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_1200b
                ELSE
                     DO diS_1200b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_1200b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_1200b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+30 Say "SE DEBE SELECCIONAR UN PRODUCTO o SERVICIO..."                       Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=0
                @mMF2,mMC2+30 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 DÍGITOS..."                      Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=1
                @mMF2,mMC2+22 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 1 DECIMAL..."          Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=2
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 2 DECIMALES..."        Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=3
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 3 DECIMALES..."        Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=4
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 4 DECIMALES..."        Font "&mLetRom",9 Style "BQ"
           CASE viTe=3
                @mMF2,mMC2+25 Say "DIGITAR EL VALOR DE VENTA UNITARIO, NO PUEDE SER 0..."               Font "&mLetRom",9 Style "BQ"
           CASE viTe=4
                @mMF2,mMC2+18 Say "EL PORCENTAJE DE DESCUENTO ES POR ÍTEM, SI NO SE USA PUEDE SER 0..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=5
                @mMF2,mMC2+28 Say "LA REFERENCIA ES DE 60 CARACTERES ALFANUMÉRICOS..."                  Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      IF viTe=1
           DO CASE
                CASE vmD3=2
                     DO coLblz
                CASE vmD1=1
                     DO coLblr
           ENDCASE
      ENDIF
      DO CASE
           CASE viTe=1 .AND. (viOm=1 .OR. vmD1=1) .AND. mrEs="3"
                @vFIL,vCO1+003.7 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,60.4,70
           CASE viTe=1 .AND. (viOm=1 .OR. vmD1=1)
                @vFIL,vCO1+003.7 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,60.4,70
           CASE viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo>3 .AND.  ;
                vtPo<>10))
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a
                     CASE vtPo=4
                          DO paI2700c WITH "1", "1200"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "1200"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "1200"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "1200"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "1200"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "1200"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "1200"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "1200"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "1200"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO CASE
                     CASE viOm=1 .AND. vcAn=0
                          STORE 1 TO viTe
                     CASE vmD2=1
                          STORE 3 TO viTe
                     CASE vmD2=2
                          STORE 4 TO viTe
                ENDCASE
                STORE 99 TO mkEy
                SELECT teMporal
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                LOOP
           CASE mrEs="3" .AND. viTe=2 .AND. mdEc=0
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999"      Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=2 .AND. mdEc=1
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9"    Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=2 .AND. mdEc=2
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.99"   Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=2 .AND. mdEc=3
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.999"  Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=2 .AND. mdEc=4
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999" Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=3
                @vFIL,vCO1+095.9 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999" Color ,&mColBlR
           CASE mrEs="3" .AND. viTe=4
                @vFIL,vCO1+113.1 Get  vPDC Font "&mLetAri",9 Style "NQ" Size 1,06.9 Pict "99.99"       Color ,&mColBlN
           CASE mrEs="3" .AND. viTe=5
                @vFIL,vCO1+138.2 Edit vREF Font "&mLetAri",9 Style "NQ" Size 1,42.4,60
           CASE viTe=2 .AND. mdEc=0
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999"      Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=1
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9"    Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=2
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.99"   Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=3
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.999"  Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=4
                @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999" Color ,&mColBlN
           CASE viTe=3
                @vFIL,vCO1+095.9 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999" Color ,&mColBlR
           CASE viTe=4
                @vFIL,vCO1+113.1 Get  vPDC Font "&mLetAri",9 Style "NQ" Size 1,06.9 Pict "99.99"       Color ,&mColBlN
           CASE viTe=5
                @vFIL,vCO1+138.2 Edit vREF Font "&mLetAri",9 Style "NQ" Size 1,42.4,60
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
PROCEDURE Pan_1200b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_1200b IN PVI1200B
      DO diS_1200b IN PVI1200B WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_1200w IN PVI1200W WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1200b
 PARAMETER ptIp
 IF vlEc=2
      RETURN
 ENDIF
 DO prEsiona WITH "1", "DESCAN", vfIl, ucLn-3.9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE SPACE(01) TO clAr, caNc, caLt
 DO CASE
      CASE vlAr=0 .AND. vlA1=0 .AND. vlA2=0 .AND. vlA3=0 .AND. vlA4=0  ;
           .AND. vlA5=0 .AND. vlA6=0 .AND. vlA7=0 .AND. vlA8=0 .AND. vlA9= ;
           0 .AND. vaNc=0 .AND. vaN1=0 .AND. vaN2=0 .AND. vaN3=0 .AND.  ;
           vaN4=0 .AND. vaN5=0 .AND. vaN6=0 .AND. vaN7=0 .AND. vaN8=0  ;
           .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1=0 .AND. vaL2=0 .AND. vaL3= ;
           0 .AND. vaL4=0 .AND. vaL5=0 .AND. vaL6=0 .AND. vaL7=0 .AND.  ;
           vaL8=0 .AND. vaL9=0 .AND. vtPo=10
      CASE (vlA2=0 .OR. vaN2=0) .AND. (vtPo=2 .AND. vmEd=2)
      CASE vtPo=2 .AND. vmEd=1
           STORE ALLTRIM(STR(vlA1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(vaN1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. vmEd=2
           STORE ALLTRIM(STR(vlA2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(vaN2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=10 .AND. vsRr=2
           STORE "" TO clAr
      CASE vtPo=10 .AND. vsRr=1
           STORE "" TO caNc, clAr
           IF vlAr<>0
                STORE ALLTRIM(STR(vlAr, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA1<>0
                STORE ALLTRIM(STR(vlA1, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA2<>0
                STORE ALLTRIM(STR(vlA2, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA3<>0
                STORE ALLTRIM(STR(vlA3, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA4<>0
                STORE ALLTRIM(STR(vlA4, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA5<>0
                STORE ALLTRIM(STR(vlA5, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA6<>0
                STORE ALLTRIM(STR(vlA6, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA7<>0
                STORE ALLTRIM(STR(vlA7, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA8<>0
                STORE ALLTRIM(STR(vlA8, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vlA9<>0
                STORE ALLTRIM(STR(vlA9, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaNc<>0
                STORE ALLTRIM(STR(vaNc, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN1<>0
                STORE ALLTRIM(STR(vaN1, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN2<>0
                STORE ALLTRIM(STR(vaN2, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN3<>0
                STORE ALLTRIM(STR(vaN3, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN4<>0
                STORE ALLTRIM(STR(vaN4, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN5<>0
                STORE ALLTRIM(STR(vaN5, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN6<>0
                STORE ALLTRIM(STR(vaN6, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN7<>0
                STORE ALLTRIM(STR(vaN7, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN8<>0
                STORE ALLTRIM(STR(vaN8, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaN9<>0
                STORE ALLTRIM(STR(vaN9, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaLt<>0
                STORE ALLTRIM(STR(vaLt, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL1<>0
                STORE ALLTRIM(STR(vaL1, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL2<>0
                STORE ALLTRIM(STR(vaL2, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL3<>0
                STORE ALLTRIM(STR(vaL3, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL4<>0
                STORE ALLTRIM(STR(vaL4, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL5<>0
                STORE ALLTRIM(STR(vaL5, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL6<>0
                STORE ALLTRIM(STR(vaL6, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL7<>0
                STORE ALLTRIM(STR(vaL7, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL8<>0
                STORE ALLTRIM(STR(vaL8, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE "" TO clAr
           IF vaL9<>0
                STORE ALLTRIM(STR(vaL9, 7, 3)) TO clAr
                DO laR_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE LEN(ALLTRIM(caNc))=0
                     STORE clAr TO caNc
                CASE LEN(ALLTRIM(clAr))<>0
                     STORE caNc+" x "+clAr TO caNc
           ENDCASE
           STORE caNc TO clAr
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO caL_1200b
 DO CASE
      CASE mrEs="3"
           @vFIL,vCO1+000.0 Say vREC         Font "&mLetAri",9 Style "NQ" Size 1,2.7 Pict "99"
           @vFIL,vCO1+065.3 Say vNUV         Font "&mLetAri",9 Style "NQ" Size 1,12.1
           @vFIL,vCO1+112.9 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,0.2
           @vFIL,vCO1+113.1 Say vPDC         Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "99.99"
           @vFIL,vCO1+120.1 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,0.3
           DO CASE
                CASE vtOt>99999.9999
                     @vFIL,vCO1+121.5 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999999.9999"
                OTHERWISE
                     @vFIL,vCO1+121.5 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999,999.9999"
           ENDCASE
           @vFIL,vCO1+138.2 Say vREF         Font "&mLetAri",9 Style "NQ" Size 1,42.4 Pict "@S45"
      OTHERWISE
           @vFIL,vCO1+000.0 Say vREC         Font "&mLetAri",9 Style "NQ" Size 1,2.7 Pict "99"
           @vFIL,vCO1+065.3 Say vNUV         Font "&mLetAri",9 Style "NQ" Size 1,12.1
           @vFIL,vCO1+112.9 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,0.2
           @vFIL,vCO1+113.1 Say vPDC         Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "99.99"
           @vFIL,vCO1+120.1 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,0.3
           DO CASE
                CASE vtOt>99999.9999
                     @vFIL,vCO1+121.5 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999999.9999"
                OTHERWISE
                     @vFIL,vCO1+121.5 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999,999.9999"
           ENDCASE
           @vFIL,vCO1+138.2 Say vREF         Font "&mLetAri",9 Style "NQ" Size 1,42.4 Pict "@S45"
 ENDCASE
 IF mdEs<3
      DO dpP_1200b
 ENDIF
 DO coL_boton
 DO CASE
      CASE ptIp="N" .AND. vmD1=1
           DO coL_fonro
      CASE ptIp="R" .AND. vmD1=1
           DO coLblr
      CASE ptIp="N" .AND. vmD3=2
           DO coL_fonaz
      CASE ptIp="R" .AND. vmD3=2
           DO coLblz
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,vCO1+3.7 Say AllTrim(vDCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,60.4 Pict "@S63"
      OTHERWISE
           @vFIL,vCO1+3.7 Say AllTrim(vDCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,60.4 Pict "@S63"
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,vCO1+78.5 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.2
           DO CASE
                CASE mdEc=0
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999"
                CASE mdEc=1
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9"
                CASE mdEc=2
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.99"
                CASE mdEc=3
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.999"
                CASE mdEc=4 .AND. vcAn>99999.9999
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"
                CASE mdEc=4
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9999"
           ENDCASE
           @vFIL,vCO1+94.4 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.3
      OTHERWISE
           @vFIL,vCO1+78.5 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.2
           DO CASE
                CASE mdEc=0
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999"
                CASE mdEc=1
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9"
                CASE mdEc=2
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.99"
                CASE mdEc=3
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.999"
                CASE mdEc=4 .AND. vcAn>99999.9999
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"
                CASE mdEc=4
                     @vFIL,vCO1+78.7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9999"
           ENDCASE
           @vFIL,vCO1+94.4 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.3
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. vmD2=1
           DO coL_fonro
      CASE ptIp="R" .AND. vmD2=1
           DO coLblr
      CASE ptIp="N" .AND. vmD2=2
           DO coL_fondo
      CASE ptIp="R" .AND. vmD2=2
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,vCO1+95.7 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.2
           DO CASE
                CASE vpRe>99999.9999
                     @vFIL,vCO1+95.9 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"
                OTHERWISE
                     @vFIL,vCO1+95.9 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9999"
           ENDCASE
           @vFIL,vCO1+111.5 Say Space(01)   Font "&mLetAri",9 Style "NQ" Size 1,00.3
      OTHERWISE
           @vFIL,vCO1+95.7 Say Space(01)    Font "&mLetAri",9 Style "NQ" Size 1,00.2
           DO CASE
                CASE vpRe>99999.9999
                     @vFIL,vCO1+95.9 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"
                OTHERWISE
                     @vFIL,vCO1+95.9 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999,999.9999"
           ENDCASE
           @vFIL,vCO1+111.5 Say Space(01)   Font "&mLetAri",9 Style "NQ" Size 1,00.3
 ENDCASE
 DO coL_fonaz
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vtPo=10 .AND. vsRr=1
                     @ ffIl+3.35, vcO1+0.1 CLEAR TO ffIl+4.55, vcO1+53.4
                     @fFIL+3.4,vCO1+00.3 Say "Medidas:"    Font "&mLetAri",9 Style "BQ" Size 1,44
                     @fFIL+3.4,vCO1+13.3 Say cLAR+" "+vNUC Font "&mLetAri",9 Style "NQ"
                     DO coL_fondo
                     @fFIL+3.4,vCO1+124.8 Say Space(10)    Font "&mLetAri",9 Style "NQ" Size 1,5
                OTHERWISE
                     @ ffIl+3.35, vcO1+0.1 CLEAR TO ffIl+4.55, vcO1+53.4
                     IF wsTo="1"
                          @fFIL+3.4,vCO1+0.3 Say "Stock:" Font "&mLetAri",9 Style "BQ" Size 1,44
                          @fFIL+3.4,vCO1+7.4 Say vSTO     Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ENDIF
                     @fFIL+3.4,vCO1+25.0 Say vPIE     Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     @fFIL+3.4,vCO1+42.8 Say vNUV     Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "@S9"
                     DO CASE
                          CASE vtPo=2 .AND. vmEd=1
                               DO coL_fonro
                               @fFIL+3.4,vCO1+124.8 Say "cm"   Font "&mLetAri",9 Style "NQ" Size 1,5
                          CASE vtPo=2 .AND. vmEd=2
                               DO coL_fonro
                               @fFIL+3.4,vCO1+124.8 Say "pulg" Font "&mLetAri",9 Style "NQ" Size 1,5
                          OTHERWISE
                               DO coL_fondo
                               @fFIL+3.4,vCO1+124.8 Say "    " Font "&mLetAri",9 Style "NQ" Size 1,5
                     ENDCASE
           ENDCASE
      OTHERWISE
           DO CASE
                CASE vtPo=10 .AND. vsRr=1
                     @ ffIl+3.35, vcO1+0.1 CLEAR TO ffIl+4.55, vcO1+53.4
                     @fFIL+3.4,vCO1+00.3 Say "Medidas:"    Font "&mLetAri",9 Style "BQ" Size 1,44
                     @fFIL+3.4,vCO1+13.3 Say cLAR+" "+vNUC Font "&mLetAri",9 Style "NQ"
                     DO coL_fondo
                     @fFIL+3.4,vCO1+124.8 Say Space(10)    Font "&mLetAri",9 Style "NQ" Size 1,5
                OTHERWISE
                     @ ffIl+3.35, vcO1+0.1 CLEAR TO ffIl+4.55, vcO1+53.4
                     IF wsTo="1"
                          @fFIL+3.4,vCO1+0.3 Say "Stock:" Font "&mLetAri",9 Style "BQ" Size 1,44
                          @fFIL+3.4,vCO1+7.4 Say vSTO     Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ENDIF
                     @fFIL+3.4,vCO1+25.0 Say vPIE     Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     @fFIL+3.4,vCO1+42.8 Say vNUV     Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "@S9"
                     DO CASE
                          CASE vtPo=2 .AND. vmEd=1
                               DO coL_fonro
                               @fFIL+3.4,vCO1+124.8 Say "cm"   Font "&mLetAri",9 Style "NQ" Size 1,5
                          CASE vtPo=2 .AND. vmEd=2
                               DO coL_fonro
                               @fFIL+3.4,vCO1+124.8 Say "pulg" Font "&mLetAri",9 Style "NQ" Size 1,5
                          OTHERWISE
                               DO coL_fondo
                               @fFIL+3.4,vCO1+124.8 Say "    " Font "&mLetAri",9 Style "NQ" Size 1,5
                     ENDCASE
           ENDCASE
 ENDCASE
 DO prEsiona WITH "1", "CONSU5", vfIl+0.2, vcO1+111.7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fonaz
 DO CASE
      CASE mrEs="3"
           @fFIL+3.4,vCO1+071.0 Say vTOT/vCAN Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @fFIL+3.4,vCO1+103.5 Say vTOT      Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      OTHERWISE
           @fFIL+3.4,vCO1+071.0 Say vTOT/vCAN Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @fFIL+3.4,vCO1+103.5 Say vTOT      Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
 ENDCASE
 DO coL_fonro
 DO CASE
      CASE mrEs="3"
           @fFIL+4.4,vCO1+025.3 Say "["+vCOD+"] "+vDES Font "&mLetRom",12 Style "BQ" Size 1,114.8 Pict "@S118"
      OTHERWISE
           @fFIL+4.4,vCO1+025.3 Say "["+vCOD+"] "+vDES Font "&mLetRom",12 Style "BQ" Size 1,114.8 Pict "@S118"
 ENDCASE
ENDPROC
*
PROCEDURE Dpp_1200b
 IF vdPp=" "
      DO prEsiona WITH "1", "SI", vfIl+0.1, icLn-4
 ELSE
      DO prEsiona WITH "1", "NO", vfIl+0.1, icLn-4
 ENDIF
ENDPROC
*
PROCEDURE Vpr_1200b
 PARAMETER ptPo
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE "No hay ventas anteriores de este producto..." TO mmSj
      DO poNmsj
      DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal
      RETURN
 ENDIF
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1301cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE f1301tdo TO ctD1
      STORE f1301ser TO csR1
      STORE f1301doc TO cnDo
      STORE f1301pre TO cpRv
      STORE f1301can TO ccAn
      SELECT caB_fact
      SEEK ctD1+csR1+cnDo
      IF  .NOT. EOF() .AND. f1300est<>"9"
           WAIT WINDOW NOWAIT "Leyendo: "+DTOC(f1300fem)
           IF ptPo="1" .OR. ((LEN(ALLTRIM(vcLi))<>0 .AND. f1300cli=vcLi)  ;
              .OR. (LEN(ALLTRIM(vtIt))<>0 .AND. f1300tit=vtIt))
                STORE f1300nom TO cnOm
                STORE f1300ntt TO ctIt
                STORE f1300fem TO cfEm
                SELECT teMporal_6
                APPEND BLANK
                REPLACE ftM6tdo WITH ctD1
                REPLACE ftM6ser WITH csR1
                REPLACE ftM6doc WITH cnDo
                REPLACE ftM6fem WITH cfEm
                REPLACE ftM6nom WITH cnOm
                REPLACE ftM6tit WITH ctIt
                REPLACE ftM6can WITH ccAn
                REPLACE ftM6pre WITH cpRv
           ENDIF
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 WAIT CLEAR
 SELECT teMporal_6
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Precios anteriores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prE_1200b
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
ENDPROC
*
PROCEDURE Lim_1200b
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(01) TO vdPp
 STORE SPACE(60) TO vrEf
 STORE SPACE(02) TO vcUv, vcUc
 STORE SPACE(10) TO vnUv, vnUc
 STORE SPACE(70) TO vdEs, vdCr, vfOt
 STORE 02 TO vcSt, vsRr, vpEr, vdTr
 STORE 01 TO viOm, viTe, vmEd, vtPo, vsW1
 STORE 00 TO vmD1, vmD2, vmD3, veSp, vmV1, vmV2, vuSd, vsOl
 STORE 00 TO vcAn, vpRe, vpRo, vpR1, vpDc, vpIe, vsTo, vtOt, vpEs
 STORE 00 TO vlAr, xlAr, vlA1, xlA1, vlA2, xlA2, vlA3, xlA3, vlA4, xlA4
 STORE 00 TO vlA5, xlA5, vlA6, xlA6, vlA7, xlA7, vlA8, xlA8, vlA9, xlA9
 STORE 00 TO vaNc, xaNc, vaN1, xaN1, vaN2, xaN2, vaN3, xaN3, vaN4, xaN4
 STORE 00 TO vaN5, xaN5, vaN6, xaN6, vaN7, xaN7, vaN8, xaN8, vaN9, xaN9
 STORE 00 TO vaLt, xaLt, vaL1, xaL1, vaL2, xaL2, vaL3, xaL3, vaL4, xaL4
 STORE 00 TO vaL5, xaL5, vaL6, xaL6, vaL7, xaL7, vaL8, xaL8, vaL9, xaL9
 IF vlEc=2
      STORE 1 TO vcAn
 ENDIF
ENDPROC
*
PROCEDURE Mue_1200b
 STORE ftM1cod TO vcOd
 STORE ftM1des TO vdEs
 STORE ftM1dcr TO vdCr
 STORE ftM1cuv TO vcUv
 STORE ftM1nuv TO vnUv
 STORE ftM1cuc TO vcUc
 STORE ftM1nuc TO vnUc
 STORE ftM1med TO vmEd
 STORE ftM1can TO vcAn
 STORE ftM1pie TO vpIe
 STORE ftM1sol TO vsOl
 STORE ftM1usd TO vuSd
 STORE ftM1pre TO vpRe
 STORE ftM1pro TO vpRo
 STORE ftM1pr1 TO vpR1
 STORE ftM1pdc TO vpDc
 STORE ftM1dct TO vdCt
 STORE ftM1ref TO vrEf
 STORE ftM1pes TO vpEs
 STORE ftM1md1 TO vmD1
 STORE ftM1md2 TO vmD2
 STORE ftM1md3 TO vmD3
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
 STORE ftM1tip TO vtIp
 STORE ftM1tpo TO vtPo
 STORE ftM1to1 TO vnEt
 STORE ftM1to2 TO vtOt
 STORE ftM1per TO vpEr
 STORE ftM1dtr TO vdTr
 STORE ftM1dpp TO vdPp
 STORE 02 TO viOm
 STORE 00 TO xlAr, xlA1, xlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9
 STORE 00 TO xaNc, xaN1, xaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9
 STORE 00 TO xaLt, xaL1, xaL2, xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9
 IF vlAr<>0
      STORE 1 TO xlAr
 ENDIF
 IF vlA1<>0
      STORE 1 TO xlA1
 ENDIF
 IF vlA2<>0
      STORE 1 TO xlA2
 ENDIF
 IF vlA3<>0
      STORE 1 TO xlA3
 ENDIF
 IF vlA4<>0
      STORE 1 TO xlA4
 ENDIF
 IF vlA5<>0
      STORE 1 TO xlA5
 ENDIF
 IF vlA6<>0
      STORE 1 TO xlA6
 ENDIF
 IF vlA7<>0
      STORE 1 TO xlA7
 ENDIF
 IF vlA8<>0
      STORE 1 TO xlA8
 ENDIF
 IF vlA9<>0
      STORE 1 TO xlA9
 ENDIF
 IF vaNc<>0
      STORE 1 TO xaNc
 ENDIF
 IF vaN1<>0
      STORE 1 TO xaN1
 ENDIF
 IF vaN2<>0
      STORE 1 TO xaN2
 ENDIF
 IF vaN3<>0
      STORE 1 TO xaN3
 ENDIF
 IF vaN4<>0
      STORE 1 TO xaN4
 ENDIF
 IF vaN5<>0
      STORE 1 TO xaN5
 ENDIF
 IF vaN6<>0
      STORE 1 TO xaN6
 ENDIF
 IF vaN7<>0
      STORE 1 TO xaN7
 ENDIF
 IF vaN8<>0
      STORE 1 TO xaN8
 ENDIF
 IF vaN9<>0
      STORE 1 TO xaN9
 ENDIF
 IF vaLt<>0
      STORE 1 TO xaLt
 ENDIF
 IF vaL1<>0
      STORE 1 TO xaL1
 ENDIF
 IF vaL2<>0
      STORE 1 TO xaL2
 ENDIF
 IF vaL3<>0
      STORE 1 TO xaL3
 ENDIF
 IF vaL4<>0
      STORE 1 TO xaL4
 ENDIF
 IF vaL5<>0
      STORE 1 TO xaL5
 ENDIF
 IF vaL6<>0
      STORE 1 TO xaL6
 ENDIF
 IF vaL7<>0
      STORE 1 TO xaL7
 ENDIF
 IF vaL8<>0
      STORE 1 TO xaL8
 ENDIF
 IF vaL9<>0
      STORE 1 TO xaL9
 ENDIF
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 2 TO vcSt, vsRr
      STORE 0 TO vmV1, vmV2, vsTo
      STORE " " TO veNt
 ELSE
      STORE f2111cst TO vcSt
      STORE f2111ser TO vsRr
      STORE f2111sto TO vsTo
      STORE f2111md1 TO vmD1
      STORE f2111md2 TO vmD2
      STORE f2111md3 TO vmD3
      STORE f2111tip TO ctPo
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
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
      ENDIF
      DO me1_1200b
      IF xiT1=0
           STORE 2 TO vsRr
      ENDIF
      SELECT tiP_prod
      SEEK ctPo
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
 ENDIF
 SELECT teMporal
 DO CASE
      CASE (vtPo>3 .AND. vtPo<>10) .AND. viTe<3 .AND. vmD2=1
           STORE 3 TO viTe
      CASE (vtPo>3 .AND. vtPo<>10) .AND. viTe<4 .AND. vmD2=2
           STORE 4 TO viTe
      CASE viTe=3 .AND. vmD2=2
           STORE 4 TO viTe
      CASE viTe<2 .OR. viTe>5
           STORE 2 TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Mu1_1200b
 STORE viTe TO xiTe
 STORE vcOd TO xcOd
 STORE vdEs TO xdEs
 STORE vdCr TO xdCr
 STORE vcUv TO xcUv
 STORE vnUv TO xnUv
 STORE vcUc TO xcUc
 STORE vnUc TO xnUc
 STORE vmEd TO xmEd
 STORE vcAn TO xcAn
 STORE vpIe TO xpIe
 STORE vsOl TO xsOl
 STORE vuSd TO xuSd
 STORE vpRe TO xpRe
 STORE vpRo TO xpRo
 STORE vpR1 TO xpR1
 STORE vpDc TO xpDc
 STORE vdCt TO xdCt
 STORE vrEf TO xrEf
 STORE vpEs TO xpEs
 STORE vmD1 TO xmD1
 STORE vmD2 TO xmD2
 STORE vmD3 TO xmD3
 STORE vlAr TO xlAr
 STORE vlA1 TO xlA1
 STORE vlA2 TO xlA2
 STORE vlA3 TO xlA3
 STORE vlA4 TO xlA4
 STORE vlA5 TO xlA5
 STORE vlA6 TO xlA6
 STORE vlA7 TO xlA7
 STORE vlA8 TO xlA8
 STORE vlA9 TO xlA9
 STORE vaNc TO xaNc
 STORE vaN1 TO xaN1
 STORE vaN2 TO xaN2
 STORE vaN3 TO xaN3
 STORE vaN4 TO xaN4
 STORE vaN5 TO xaN5
 STORE vaN6 TO xaN6
 STORE vaN7 TO xaN7
 STORE vaN8 TO xaN8
 STORE vaN9 TO xaN9
 STORE vaLt TO xaLt
 STORE vaL1 TO xaL1
 STORE vaL2 TO xaL2
 STORE vaL3 TO xaL3
 STORE vaL4 TO xaL4
 STORE vaL5 TO xaL5
 STORE vaL6 TO xaL6
 STORE vaL7 TO xaL7
 STORE vaL8 TO xaL8
 STORE vaL9 TO xaL9
 STORE veSp TO xeSp
 STORE vtIp TO xtIp
 STORE vtPo TO xtPo
 STORE vpEr TO xpEr
 STORE vdTr TO xdTr
 STORE vtO1 TO xtO1
 STORE vtO2 TO xtO2
 STORE vdPp TO xdPp
ENDPROC
*
PROCEDURE Mu2_1200b
 STORE xiTe TO viTe
 STORE xcOd TO vcOd
 STORE xdEs TO vdEs
 STORE xdCr TO vdCr
 STORE xcUv TO vcUv
 STORE xnUv TO vnUv
 STORE xcUc TO vcUc
 STORE xnUc TO vnUc
 STORE xmEd TO vmEd
 STORE xcAn TO vcAn
 STORE xpIe TO vpIe
 STORE xsOl TO vsOl
 STORE xuSd TO vuSd
 STORE xpRe TO vpRe
 STORE xpRo TO vpRo
 STORE xpR1 TO vpR1
 STORE xpDc TO vpDc
 STORE xdCt TO vdCt
 STORE xrEf TO vrEf
 STORE xpEs TO vpEs
 STORE xmD1 TO vmD1
 STORE xmD2 TO vmD2
 STORE xmD3 TO vmD3
 STORE xlAr TO vlAr
 STORE xlA1 TO vlA1
 STORE xlA2 TO vlA2
 STORE xlA3 TO vlA3
 STORE xlA4 TO vlA4
 STORE xlA5 TO vlA5
 STORE xlA6 TO vlA6
 STORE xlA7 TO vlA7
 STORE xlA8 TO vlA8
 STORE xlA9 TO vlA9
 STORE xaNc TO vaNc
 STORE xaN1 TO vaN1
 STORE xaN2 TO vaN2
 STORE xaN3 TO vaN3
 STORE xaN4 TO vaN4
 STORE xaN5 TO vaN5
 STORE xaN6 TO vaN6
 STORE xaN7 TO vaN7
 STORE xaN8 TO vaN8
 STORE xaN9 TO vaN9
 STORE xaLt TO vaLt
 STORE xaL1 TO vaL1
 STORE xaL2 TO vaL2
 STORE xaL3 TO vaL3
 STORE xaL4 TO vaL4
 STORE xaL5 TO vaL5
 STORE xaL6 TO vaL6
 STORE xaL7 TO vaL7
 STORE xaL8 TO vaL8
 STORE xaL9 TO vaL9
 STORE xeSp TO veSp
 STORE xtIp TO vtIp
 STORE xtPo TO vtPo
 STORE xpEr TO vpEr
 STORE xdTr TO vdTr
 STORE xtO1 TO vtO1
 STORE xtO2 TO vtO2
 STORE xdPp TO vdPp
 STORE 00 TO xlAr, xlA1, xlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9
 STORE 00 TO xaNc, xaN1, xaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9
 STORE 00 TO xaLt, xaL1, xaL2, xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9
 IF vlAr<>0
      STORE 1 TO xlAr
 ENDIF
 IF vlA1<>0
      STORE 1 TO xlA1
 ENDIF
 IF vlA2<>0
      STORE 1 TO xlA2
 ENDIF
 IF vlA3<>0
      STORE 1 TO xlA3
 ENDIF
 IF vlA4<>0
      STORE 1 TO xlA4
 ENDIF
 IF vlA5<>0
      STORE 1 TO xlA5
 ENDIF
 IF vlA6<>0
      STORE 1 TO xlA6
 ENDIF
 IF vlA7<>0
      STORE 1 TO xlA7
 ENDIF
 IF vlA8<>0
      STORE 1 TO xlA8
 ENDIF
 IF vlA9<>0
      STORE 1 TO xlA9
 ENDIF
 IF vaNc<>0
      STORE 1 TO xaNc
 ENDIF
 IF vaN1<>0
      STORE 1 TO xaN1
 ENDIF
 IF vaN2<>0
      STORE 1 TO xaN2
 ENDIF
 IF vaN3<>0
      STORE 1 TO xaN3
 ENDIF
 IF vaN4<>0
      STORE 1 TO xaN4
 ENDIF
 IF vaN5<>0
      STORE 1 TO xaN5
 ENDIF
 IF vaN6<>0
      STORE 1 TO xaN6
 ENDIF
 IF vaN7<>0
      STORE 1 TO xaN7
 ENDIF
 IF vaN8<>0
      STORE 1 TO xaN8
 ENDIF
 IF vaN9<>0
      STORE 1 TO xaN9
 ENDIF
 IF vaLt<>0
      STORE 1 TO xaLt
 ENDIF
 IF vaL1<>0
      STORE 1 TO xaL1
 ENDIF
 IF vaL2<>0
      STORE 1 TO xaL2
 ENDIF
 IF vaL3<>0
      STORE 1 TO xaL3
 ENDIF
 IF vaL4<>0
      STORE 1 TO xaL4
 ENDIF
 IF vaL5<>0
      STORE 1 TO xaL5
 ENDIF
 IF vaL6<>0
      STORE 1 TO xaL6
 ENDIF
 IF vaL7<>0
      STORE 1 TO xaL7
 ENDIF
 IF vaL8<>0
      STORE 1 TO xaL8
 ENDIF
 IF vaL9<>0
      STORE 1 TO xaL9
 ENDIF
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 2 TO vcSt, vsRr
      STORE 0 TO vmV1, vmV2, vsTo
 ELSE
      STORE f2111cst TO vcSt
      STORE f2111ser TO vsRr
      STORE f2111sto TO vsTo
      STORE f2111md1 TO vmD1
      STORE f2111md2 TO vmD2
      STORE f2111md3 TO vmD3
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
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
      ENDIF
      DO me1_1200b
      IF xiT1=0
           STORE 2 TO vsRr
      ENDIF
 ENDIF
 SELECT teMporal
ENDPROC
*
PROCEDURE Pro_1200b
 STORE f2111cod TO vcOd
 STORE f2111des TO vdEs
 STORE f2111dcr TO vdCr
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
 STORE f2111la1 TO vlA1
 STORE f2111la2 TO vlA2
 STORE f2111an1 TO vaN1
 STORE f2111an2 TO vaN2
 STORE f2111esp TO veSp
 STORE f2111tip TO vtIp
 STORE f2111fot TO vfOt
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
 DO CASE
      CASE vlIs=1
           STORE f2111vv1 TO vsOl
           STORE f2111vv2 TO vuSd
           STORE f2111mv1 TO vmV1
           STORE f2111mv2 TO vmV2
      CASE vlIs=2
           STORE f2111vv3 TO vsOl
           STORE f2111vv4 TO vuSd
           STORE f2111mv3 TO vmV1
           STORE f2111mv4 TO vmV2
      CASE vlIs=3
           STORE f2111vv5 TO vsOl
           STORE f2111vv6 TO vuSd
           STORE f2111mv5 TO vmV1
           STORE f2111mv6 TO vmV2
      CASE vlIs=4
           STORE f2111vv7 TO vsOl
           STORE f2111vv8 TO vuSd
           STORE f2111mv7 TO vmV1
           STORE f2111mv8 TO vmV2
      CASE vlIs=5
           STORE f2111vv9 TO vsOl
           STORE f2111vv0 TO vuSd
           STORE f2111mv9 TO vmV1
           STORE f2111mv0 TO vmV2
      CASE vlIs=6
           STORE f2111vva TO vsOl
           STORE f2111vvb TO vuSd
           STORE f2111mva TO vmV1
           STORE f2111mvb TO vmV2
      CASE vlIs=7
           STORE f2111vvc TO vsOl
           STORE f2111vvd TO vuSd
           STORE f2111mvc TO vmV1
           STORE f2111mvd TO vmV2
      CASE vlIs=8
           STORE f2111vve TO vsOl
           STORE f2111vvf TO vuSd
           STORE f2111mve TO vmV1
           STORE f2111mvf TO vmV2
      CASE vlIs=9
           STORE f2111vvg TO vsOl
           STORE f2111vvh TO vuSd
           STORE f2111mvg TO vmV1
           STORE f2111mvh TO vmV2
      CASE vlIs=10
           STORE f2111vvi TO vsOl
           STORE f2111vvj TO vuSd
           STORE f2111mvi TO vmV1
           STORE f2111mvj TO vmV2
 ENDCASE
 DO CASE
      CASE vmOn=1
           STORE f2111vv1 TO vpRo
      CASE vmOn=2
           STORE f2111vv2 TO vpRo
 ENDCASE
 IF vmOn=1
      IF vsOl=0 .AND. vuSd<>0
           STORE ROUND(vuSd*vtCa, 4) TO vsOl
      ENDIF
      IF vmV1=0 .AND. vmV2<>0
           STORE ROUND(vmV2*vtCa, 4) TO vmV1
      ENDIF
      STORE vsOl TO vpRe
 ELSE
      IF vuSd=0 .AND. vsOl<>0
           STORE ROUND(vsOl/vtCa, 4) TO vuSd
      ENDIF
      IF vmV2=0 .AND. vmV1<>0
           STORE ROUND(vmV1/vtCa, 4) TO vmV2
      ENDIF
      STORE vuSd TO vpRe
 ENDIF
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
 DO clI_1200b
ENDPROC
*
PROCEDURE Cli_1200b
 IF LEN(ALLTRIM(xcLi))<>0 .AND. xcLi<>vcLi
      SELECT coD_cliente
      SEEK ALLTRIM(vcOd)+"*"+xcLi
      IF  .NOT. EOF() .AND. UPPER(ALLTRIM(f1104cdg))+"*"= ;
          UPPER(ALLTRIM(vrEf))+"*"
           STORE "  " TO vrEf
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vcLi))<>0
      SELECT coD_cliente
      SEEK ALLTRIM(vcOd)+"*"+vcLi
      IF  .NOT. EOF()
           STORE f1104cdg TO vrEf
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Bla_1200b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_1200w IN PVI1200W WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Alt_1200b
 DO CASE
      CASE SUBSTR(caLt, LEN(caLt)-2, 3)="000"
           STORE SUBSTR(caLt, 1, LEN(caLt)-4) TO caLt
      CASE SUBSTR(caLt, LEN(caLt)-1, 2)="00"
           STORE SUBSTR(caLt, 1, LEN(caLt)-2) TO caLt
      CASE SUBSTR(caLt, LEN(caLt), 1)="0"
           STORE SUBSTR(caLt, 1, LEN(caLt)-1) TO caLt
 ENDCASE
 IF LEN(ALLTRIM(clAr))=0
      STORE caLt TO clAr
 ELSE
      STORE clAr+"x"+caLt TO clAr
 ENDIF
ENDPROC
*
PROCEDURE Med_1200b
 PRIVATE pcL1, pcL2, pcL3, pcL0
 DO CASE
      CASE mrEs="3"
           STORE 15 TO pcL0
           STORE vcO3+001.0 TO pcL1
           STORE vcO3+026.8 TO pcL2
           STORE vcO3+052.6 TO pcL3
      OTHERWISE
           STORE 15 TO pcL0
           STORE vcO3+001.0 TO pcL1
           STORE vcO3+026.8 TO pcL2
           STORE vcO3+052.6 TO pcL3
 ENDCASE
 DO me1_1200b
 IF xiT1<>0
      SET READBORDER ON
      SAVE SCREEN TO vpAn_12
      DO me2_1200b
      DO WHILE .T.
           IF xlAr<>0
                DO coL_fonaz
                @iLAR,pCL1      Say nLAR Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLAR,pCL1+pCL0 Get cLAR Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaNc<>0
                DO coL_fonve
                @iANC,pCL2      Say nANC Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iANC,pCL2+pCL0 Get cANC Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaLt<>0
                DO coL_fonro
                @iALT,pCL3      Say nALT Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iALT,pCL3+pCL0 Get cALT Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA1<>0
                DO coL_fonaz
                @iLA1,pCL1      Say nLA1 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA1,pCL1+pCL0 Get cLA1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN1<>0
                DO coL_fonve
                @iAN1,pCL2      Say nAN1 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN1,pCL2+pCL0 Get cAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL1<>0
                DO coL_fonro
                @iAL1,pCL3      Say nAL1 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL1,pCL3+pCL0 Get cAL1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA2<>0
                DO coL_fonaz
                @iLA2,pCL1      Say nLA2 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA2,pCL1+pCL0 Get cLA2 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN2<>0
                DO coL_fonve
                @iAN2,pCL2      Say nAN2 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN2,pCL2+pCL0 Get cAN2 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL2<>0
                DO coL_fonro
                @iAL2,pCL3      Say nAL2 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL2,pCL3+pCL0 Get cAL2 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA3<>0
                DO coL_fonaz
                @iLA3,pCL1      Say nLA3 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA3,pCL1+pCL0 Get cLA3 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN3<>0
                DO coL_fonve
                @iAN3,pCL2      Say nAN3 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN3,pCL2+pCL0 Get cAN3 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL3<>0
                DO coL_fonro
                @iAL3,pCL3      Say nAL3 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL3,pCL3+pCL0 Get cAL3 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA4<>0
                DO coL_fonaz
                @iLA4,pCL1      Say nLA4 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA4,pCL1+pCL0 Get cLA4 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN4<>0
                DO coL_fonve
                @iAN4,pCL2      Say nAN4 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN4,pCL2+pCL0 Get cAN4 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL4<>0
                DO coL_fonro
                @iAL4,pCL3      Say nAL4 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL4,pCL3+pCL0 Get cAL4 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA5<>0
                DO coL_fonaz
                @iLA5,pCL1      Say nLA5 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA5,pCL1+pCL0 Get cLA5 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN5<>0
                DO coL_fonve
                @iAN5,pCL2      Say nAN5 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN5,pCL2+pCL0 Get cAN5 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL5<>0
                DO coL_fonro
                @iAL5,pCL3      Say nAL5 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL5,pCL3+pCL0 Get cAL5 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA6<>0
                DO coL_fonaz
                @iLA6,pCL1      Say nLA6 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA6,pCL1+pCL0 Get cLA6 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN6<>0
                DO coL_fonve
                @iAN6,pCL2      Say nAN6 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN6,pCL2+pCL0 Get cAN6 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL6<>0
                DO coL_fonro
                @iAL6,pCL3      Say nAL6 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL6,pCL3+pCL0 Get cAL6 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA7<>0
                DO coL_fonaz
                @iLA7,pCL1      Say nLA7 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA7,pCL1+pCL0 Get cLA7 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN7<>0
                DO coL_fonve
                @iAN7,pCL2      Say nAN7 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN7,pCL2+pCL0 Get cAN7 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL7<>0
                DO coL_fonro
                @iAL7,pCL3      Say nAL7 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL7,pCL3+pCL0 Get cAL7 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA8<>0
                DO coL_fonaz
                @iLA8,pCL1      Say nLA8 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA8,pCL1+pCL0 Get cLA8 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN8<>0
                DO coL_fonve
                @iAN8,pCL2      Say nAN8 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN8,pCL2+pCL0 Get cAN8 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL8<>0
                DO coL_fonro
                @iAL8,pCL3      Say nAL8 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL8,pCL3+pCL0 Get cAL8 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xlA9<>0
                DO coL_fonaz
                @iLA9,pCL1      Say nLA9 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iLA9,pCL1+pCL0 Get cLA9 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaN9<>0
                DO coL_fonve
                @iAN9,pCL2      Say nAN9 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAN9,pCL2+pCL0 Get cAN9 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           IF xaL9<>0
                DO coL_fonro
                @iAL9,pCL3      Say nAL9 Font "&mLetAri",9 Style "BT" Size 1,10  Pict "@S10"
                @iAL9,pCL3+pCL0 Get cAL9 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
           ENDIF
           SET CONFIRM ON
           SET CURSOR ON
           READ
           SET CURSOR OFF
           SET CONFIRM OFF
           DO CASE
                CASE mkEy=k_F1
                     DO hl2_1200b
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_F12
                     RESTORE SCREEN FROM vpAn_12
                     DO me2_1200b
                CASE mkEy=k_Esc
                     STORE 99 TO mkEy
                     EXIT
                CASE mkEy=k_Tab
                     STORE clAr TO vlAr
                     STORE clA1 TO vlA1
                     STORE clA2 TO vlA2
                     STORE clA3 TO vlA3
                     STORE clA4 TO vlA4
                     STORE clA5 TO vlA5
                     STORE clA6 TO vlA6
                     STORE clA7 TO vlA7
                     STORE clA8 TO vlA8
                     STORE clA9 TO vlA9
                     STORE caNc TO vaNc
                     STORE caN1 TO vaN1
                     STORE caN2 TO vaN2
                     STORE caN3 TO vaN3
                     STORE caN4 TO vaN4
                     STORE caN5 TO vaN5
                     STORE caN6 TO vaN6
                     STORE caN7 TO vaN7
                     STORE caN8 TO vaN8
                     STORE caN9 TO vaN9
                     STORE caLt TO vaLt
                     STORE caL1 TO vaL1
                     STORE caL2 TO vaL2
                     STORE caL3 TO vaL3
                     STORE caL4 TO vaL4
                     STORE caL5 TO vaL5
                     STORE caL6 TO vaL6
                     STORE caL7 TO vaL7
                     STORE caL8 TO vaL8
                     STORE caL9 TO vaL9
                     @fFIL+3.4,vCO1+37 Say cLA1*cAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999" Color Scheme 3
                     DO q2_0000a
                     DO ca1_1200b
                     DO p2_0000a
                     IF mkEy=k_Esc
                          STORE 0 TO vlA1, vlA2, vlA3, vlA4, vlA5, vlA6
                          STORE 0 TO vlA7, vlA8, vlA9, vaN1, vaN2, vaN3
                          STORE 0 TO vlA8, vlA9, vaN1, vaN2, vaN3, vaN4
                          STORE 0 TO vaN5, vaN6, vaN7, vaN8, vaN9, vaL1
                          STORE 0 TO vaL2, vaL3, vaL4, vaL5, vaL6, vaL7,  ;
                                vaL8, vaL9
                     ENDIF
                     STORE 99 TO mkEy
                     EXIT
           ENDCASE
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ENDIF
      ENDDO
      SET READBORDER OFF
      RESTORE SCREEN FROM vpAn_12
 ELSE
      DO q2_0000a
      DO ca1_1200b
      DO p2_0000a
      IF mkEy=k_Esc
           STORE 0 TO vlA1, vlA2, vlA3, vlA4, vlA5, vlA6
           STORE 0 TO vlA7, vlA8, vlA9, vaN1, vaN2, vaN3
           STORE 0 TO vlA8, vlA9, vaN1, vaN2, vaN3, vaN4
           STORE 0 TO vaN5, vaN6, vaN7, vaN8, vaN9, vaL1
           STORE 0 TO vaL2, vaL3, vaL4, vaL5, vaL6, vaL7, vaL8, vaL9
      ENDIF
 ENDIF
 DO diS_1200b WITH "R"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 RELEASE pcL1, pcL2, pcL3, pcL0
ENDPROC
*
PROCEDURE Me1_1200b
 STORE 0 TO ilAr, ilA1, ilA2, ilA3, ilA4, ilA5, ilA6, ilA7, ilA8, ilA9, xiT1
 STORE 0 TO iaNc, iaN1, iaN2, iaN3, iaN4, iaN5, iaN6, iaN7, iaN8, iaN9
 STORE 0 TO iaLt, iaL1, iaL2, iaL3, iaL4, iaL5, iaL6, iaL7, iaL8, iaL9
 STORE vlAr TO clAr
 STORE vlA1 TO clA1
 STORE vlA2 TO clA2
 STORE vlA3 TO clA3
 STORE vlA4 TO clA4
 STORE vlA5 TO clA5
 STORE vlA6 TO clA6
 STORE vlA7 TO clA7
 STORE vlA8 TO clA8
 STORE vlA9 TO clA9
 STORE vaNc TO caNc
 STORE vaN1 TO caN1
 STORE vaN2 TO caN2
 STORE vaN3 TO caN3
 STORE vaN4 TO caN4
 STORE vaN5 TO caN5
 STORE vaN6 TO caN6
 STORE vaN7 TO caN7
 STORE vaN8 TO caN8
 STORE vaN9 TO caN9
 STORE vaLt TO caLt
 STORE vaL1 TO caL1
 STORE vaL2 TO caL2
 STORE vaL3 TO caL3
 STORE vaL4 TO caL4
 STORE vaL5 TO caL5
 STORE vaL6 TO caL6
 STORE vaL7 TO caL7
 STORE vaL8 TO caL8
 STORE vaL9 TO caL9
 STORE vfI2+1.8 TO xfIl
 IF xlAr<>0
      STORE xfIl TO ilAr
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA1<>0
      STORE xfIl TO ilA1
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA2<>0
      STORE xfIl TO ilA2
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA3<>0
      STORE xfIl TO ilA3
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA4<>0
      STORE xfIl TO ilA4
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA5<>0
      STORE xfIl TO ilA5
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA6<>0
      STORE xfIl TO ilA6
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA7<>0
      STORE xfIl TO ilA7
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA8<>0
      STORE xfIl TO ilA8
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xlA9<>0
      STORE xfIl TO ilA9
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 STORE vfI2+1.8 TO xfIl
 IF xaNc<>0
      STORE xfIl TO iaNc
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN1<>0
      STORE xfIl TO iaN1
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN2<>0
      STORE xfIl TO iaN2
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN3<>0
      STORE xfIl TO iaN3
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN4<>0
      STORE xfIl TO iaN4
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN5<>0
      STORE xfIl TO iaN5
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN6<>0
      STORE xfIl TO iaN6
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN7<>0
      STORE xfIl TO iaN7
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN8<>0
      STORE xfIl TO iaN8
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaN9<>0
      STORE xfIl TO iaN9
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 STORE vfI2+1.8 TO xfIl
 IF xaLt<>0
      STORE xfIl TO iaLt
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL1<>0
      STORE xfIl TO iaL1
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL2<>0
      STORE xfIl TO iaL2
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL3<>0
      STORE xfIl TO iaL3
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL4<>0
      STORE xfIl TO iaL4
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL5<>0
      STORE xfIl TO iaL5
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL6<>0
      STORE xfIl TO iaL6
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL7<>0
      STORE xfIl TO iaL7
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL8<>0
      STORE xfIl TO iaL8
      STORE xfIl+1.5 TO xfIl
      STORE xiT1+1 TO xiT1
 ENDIF
 IF xaL9<>0
      STORE xfIl TO iaL9
      STORE xiT1+1 TO xiT1
 ENDIF
ENDPROC
*
PROCEDURE Me2_1200b
 DO coLsc7
 @ vfI2+0.0, vcO3 TO vfI2+17.0, vcO3+78.2 PATTERN 1 PEN 2
 @ vfI2+1.6, vcO3 TO vfI2+01.6, vcO3+78.2
 @vFI2+0.3,vCO3+33 Say "MEDIDAS" Font "&mLetAri",9 Style "BT" Color 4
 DO foT_1200b
ENDPROC
*
PROCEDURE Fot_1200b
 IF vlEc=1
      DO coLsc7
      @ vfI2+0.0, vcO2 TO vfI2+16.6, vcO2+64.1 PATTERN 1 PEN 2
      @ vfI2+1.6, vcO2 TO vfI2+01.6, vcO2+64.1
 ELSE
      DO coLbln
      @ vfI2, vcO2-16.3 CLEAR TO vfI2+28.6, vcO2+78.4
 ENDIF
 IF LEN(ALLTRIM(vfOt))<>0
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
      ELSE
           STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
      ENDIF
      If .not.File("&cFOT")
           IF LEN(ALLTRIM(muNi))=0
                STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".JPG" TO cfOt
           ELSE
                STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".JPG" TO cfOt
           ENDIF
      ENDIF
      If File("&cFOT")
           IF vlEc=1
                @vFI2+0.3,vCO2+10.0 Say "Nombre de la Foto:" Font "&mLetAri",9 Style "BT" Color 1
                @vFI2+0.3,vCO2+33.0 Say vFOT                 Font "&mLetAri",9 Style "BT" Color 1
                @vFI2+1.7,vCO2+00.5 Say "&cFOT" BitMap Style "Q"
           ELSE
                @vFI2+2.8,vCO2-15.7 Say "&cFOT" BitMap Style "Q" Size 25.1,93.1 Stretch
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           IF vlEc=1
                @vFI2+07.3,vCO2+21 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
           ELSE
                @vFI2+18.3,vCO2+17 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
           ENDIF
      ENDIF
 ELSE
      IF vlEc=1
           @vFI2+07.3,vCO2+21 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
      ELSE
           @vFI2+18.3,vCO2+17 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Me3_1200b
 PRIVATE pnU0, pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9, psW0,  ;
         pnUm, pfOr
 STORE 0 TO pnU0, pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9,  ;
       psW0, pnUm
 IF vtPo<>10
      RETURN
 ENDIF
 IF vsRr=1
      STORE 0 TO xlAr, xlA1, xlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9
      STORE 0 TO xaNc, xaN1, xaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9
      STORE 0 TO xaLt, xaL1, xaL2, xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9
      SELECT deT_conjuntos
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE 0 TO pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9
           IF AT("ALT1", UPPER(f2921for))<>0 .AND. xaL1=0
                STORE AT("ALT1", UPPER(f2921for)) TO pnU1
                STORE 1 TO xaL1
           ENDIF
           IF AT("ALT2", UPPER(f2921for))<>0 .AND. xaL2=0
                STORE AT("ALT2", UPPER(f2921for)) TO pnU2
                STORE 1 TO xaL2
           ENDIF
           IF AT("ALT3", UPPER(f2921for))<>0 .AND. xaL3=0
                STORE AT("ALT3", UPPER(f2921for)) TO pnU3
                STORE 1 TO xaL3
           ENDIF
           IF AT("ALT4", UPPER(f2921for))<>0 .AND. xaL4=0
                STORE AT("ALT4", UPPER(f2921for)) TO pnU4
                STORE 1 TO xaL4
           ENDIF
           IF AT("ALT5", UPPER(f2921for))<>0 .AND. xaL5=0
                STORE AT("ALT5", UPPER(f2921for)) TO pnU5
                STORE 1 TO xaL5
           ENDIF
           IF AT("ALT6", UPPER(f2921for))<>0 .AND. xaL6=0
                STORE AT("ALT6", UPPER(f2921for)) TO pnU6
                STORE 1 TO xaL6
           ENDIF
           IF AT("ALT7", UPPER(f2921for))<>0 .AND. xaL7=0
                STORE AT("ALT7", UPPER(f2921for)) TO pnU7
                STORE 1 TO xaL7
           ENDIF
           IF AT("ALT8", UPPER(f2921for))<>0 .AND. xaL8=0
                STORE AT("ALT8", UPPER(f2921for)) TO pnU8
                STORE 1 TO xaL8
           ENDIF
           IF AT("ALT9", UPPER(f2921for))<>0 .AND. xaL9=0
                STORE AT("ALT9", UPPER(f2921for)) TO pnU9
                STORE 1 TO xaL9
           ENDIF
           IF AT("ALT", UPPER(f2921for))<>0 .AND. xaLt=0
                STORE AT("ALT", UPPER(f2921for)) TO pnU0
                STORE ALLTRIM(f2921for) TO pfOr
                STORE LEN(pfOr) TO pnUm
                STORE 1 TO psW0
                IF pnUm>2 .AND. pnU0>0
                     IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3 .OR. pnU0= ;
                        pnU4 .OR. pnU0=pnU5 .OR. pnU0=pnU6 .OR. pnU0=pnU7  ;
                        .OR. pnU0=pnU8 .OR. pnU0=pnU9
                          STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+3)) TO pfOr
                          STORE LEN(pfOr) TO pnUm
                          STORE 0 TO pnU0, psW0
                          STORE AT("ALT", UPPER(pfOr)) TO pnU0
                     ENDIF
                ENDIF
                DO WHILE .T.
                     DO CASE
                          CASE psW0=1
                               EXIT
                          CASE pnUm<3
                               EXIT
                          CASE pnU0=0
                               EXIT
                          OTHERWISE
                               STORE 1 TO psW0
                               IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3  ;
                                  .OR. pnU0=pnU4 .OR. pnU0=pnU5 .OR. pnU0= ;
                                  pnU6 .OR. pnU0=pnU7 .OR. pnU0=pnU8 .OR.  ;
                                  pnU0=pnU9
                                    STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+ ;
                                     3)) TO pfOr
                                    STORE LEN(pfOr) TO pnUm
                                    STORE 0 TO pnU0, psW0
                                    STORE AT("ALT", UPPER(pfOr)) TO pnU0
                               ENDIF
                     ENDCASE
                ENDDO
                IF psW0=1
                     STORE 1 TO xaLt
                ENDIF
           ENDIF
           STORE 0 TO pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9
           IF AT("ANC1", UPPER(f2921for))<>0 .AND. xaN1=0
                STORE AT("ANC1", UPPER(f2921for)) TO pnU1
                STORE 1 TO xaN1
           ENDIF
           IF AT("ANC2", UPPER(f2921for))<>0 .AND. xaN2=0
                STORE AT("ANC2", UPPER(f2921for)) TO pnU2
                STORE 1 TO xaN2
           ENDIF
           IF AT("ANC3", UPPER(f2921for))<>0 .AND. xaN3=0
                STORE AT("ANC3", UPPER(f2921for)) TO pnU3
                STORE 1 TO xaN3
           ENDIF
           IF AT("ANC4", UPPER(f2921for))<>0 .AND. xaN4=0
                STORE AT("ANC4", UPPER(f2921for)) TO pnU4
                STORE 1 TO xaN4
           ENDIF
           IF AT("ANC5", UPPER(f2921for))<>0 .AND. xaN5=0
                STORE AT("ANC5", UPPER(f2921for)) TO pnU5
                STORE 1 TO xaN5
           ENDIF
           IF AT("ANC6", UPPER(f2921for))<>0 .AND. xaN6=0
                STORE AT("ANC6", UPPER(f2921for)) TO pnU6
                STORE 1 TO xaN6
           ENDIF
           IF AT("ANC7", UPPER(f2921for))<>0 .AND. xaN7=0
                STORE AT("ANC7", UPPER(f2921for)) TO pnU7
                STORE 1 TO xaN7
           ENDIF
           IF AT("ANC8", UPPER(f2921for))<>0 .AND. xaN8=0
                STORE AT("ANC8", UPPER(f2921for)) TO pnU8
                STORE 1 TO xaN8
           ENDIF
           IF AT("ANC9", UPPER(f2921for))<>0 .AND. xaN9=0
                STORE AT("ANC9", UPPER(f2921for)) TO pnU9
                STORE 1 TO xaN9
           ENDIF
           IF AT("ANC", UPPER(f2921for))<>0 .AND. xaNc=0
                STORE AT("ANC", UPPER(f2921for)) TO pnU0
                STORE ALLTRIM(f2921for) TO pfOr
                STORE LEN(pfOr) TO pnUm
                STORE 1 TO psW0
                IF pnUm>2 .AND. pnU0>0
                     IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3 .OR. pnU0= ;
                        pnU4 .OR. pnU0=pnU5 .OR. pnU0=pnU6 .OR. pnU0=pnU7  ;
                        .OR. pnU0=pnU8 .OR. pnU0=pnU9
                          STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+3)) TO pfOr
                          STORE LEN(pfOr) TO pnUm
                          STORE 0 TO pnU0, psW0
                          STORE AT("ANC", UPPER(pfOr)) TO pnU0
                     ENDIF
                ENDIF
                DO WHILE .T.
                     DO CASE
                          CASE psW0=1
                               EXIT
                          CASE pnUm<3
                               EXIT
                          CASE pnU0=0
                               EXIT
                          OTHERWISE
                               STORE 1 TO psW0
                               IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3  ;
                                  .OR. pnU0=pnU4 .OR. pnU0=pnU5 .OR. pnU0= ;
                                  pnU6 .OR. pnU0=pnU7 .OR. pnU0=pnU8 .OR.  ;
                                  pnU0=pnU9
                                    STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+ ;
                                     3)) TO pfOr
                                    STORE LEN(pfOr) TO pnUm
                                    STORE 0 TO pnU0, psW0
                                    STORE AT("ANC", UPPER(pfOr)) TO pnU0
                               ENDIF
                     ENDCASE
                ENDDO
                IF psW0=1
                     STORE 1 TO xaNc
                ENDIF
           ENDIF
           STORE 0 TO pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9
           IF AT("LAR1", UPPER(f2921for))<>0 .AND. xlA1=0
                STORE AT("LAR1", UPPER(f2921for)) TO pnU1
                STORE 1 TO xlA1
           ENDIF
           IF AT("LAR2", UPPER(f2921for))<>0 .AND. xlA2=0
                STORE AT("LAR2", UPPER(f2921for)) TO pnU2
                STORE 1 TO xlA2
           ENDIF
           IF AT("LAR3", UPPER(f2921for))<>0 .AND. xlA3=0
                STORE AT("LAR3", UPPER(f2921for)) TO pnU3
                STORE 1 TO xlA3
           ENDIF
           IF AT("LAR4", UPPER(f2921for))<>0 .AND. xlA4=0
                STORE AT("LAR4", UPPER(f2921for)) TO pnU4
                STORE 1 TO xlA4
           ENDIF
           IF AT("LAR5", UPPER(f2921for))<>0 .AND. xlA5=0
                STORE AT("LAR5", UPPER(f2921for)) TO pnU5
                STORE 1 TO xlA5
           ENDIF
           IF AT("LAR6", UPPER(f2921for))<>0 .AND. xlA6=0
                STORE AT("LAR6", UPPER(f2921for)) TO pnU6
                STORE 1 TO xlA6
           ENDIF
           IF AT("LAR7", UPPER(f2921for))<>0 .AND. xlA7=0
                STORE AT("LAR7", UPPER(f2921for)) TO pnU7
                STORE 1 TO xlA7
           ENDIF
           IF AT("LAR8", UPPER(f2921for))<>0 .AND. xlA8=0
                STORE AT("LAR8", UPPER(f2921for)) TO pnU8
                STORE 1 TO xlA8
           ENDIF
           IF AT("LAR9", UPPER(f2921for))<>0 .AND. xlA9=0
                STORE AT("LAR9", UPPER(f2921for)) TO pnU9
                STORE 1 TO xlA9
           ENDIF
           IF AT("LAR", UPPER(f2921for))<>0 .AND. xlAr=0
                STORE AT("LAR", UPPER(f2921for)) TO pnU0
                STORE ALLTRIM(f2921for) TO pfOr
                STORE LEN(pfOr) TO pnUm
                STORE 1 TO psW0
                IF pnUm>2 .AND. pnU0>0
                     IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3 .OR. pnU0= ;
                        pnU4 .OR. pnU0=pnU5 .OR. pnU0=pnU6 .OR. pnU0=pnU7  ;
                        .OR. pnU0=pnU8 .OR. pnU0=pnU9
                          STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+3)) TO pfOr
                          STORE LEN(pfOr) TO pnUm
                          STORE 0 TO pnU0, psW0
                          STORE AT("LAR", UPPER(pfOr)) TO pnU0
                     ENDIF
                ENDIF
                DO WHILE .T.
                     DO CASE
                          CASE psW0=1
                               EXIT
                          CASE pnUm<3
                               EXIT
                          CASE pnU0=0
                               EXIT
                          OTHERWISE
                               STORE 1 TO psW0
                               IF pnU0=pnU1 .OR. pnU0=pnU2 .OR. pnU0=pnU3  ;
                                  .OR. pnU0=pnU4 .OR. pnU0=pnU5 .OR. pnU0= ;
                                  pnU6 .OR. pnU0=pnU7 .OR. pnU0=pnU8 .OR.  ;
                                  pnU0=pnU9
                                    STORE SUBSTR(pfOr, pnU0+3, pnUm-(pnU0+ ;
                                     3)) TO pfOr
                                    STORE LEN(pfOr) TO pnUm
                                    STORE 0 TO pnU0, psW0
                                    STORE AT("LAR", UPPER(pfOr)) TO pnU0
                               ENDIF
                     ENDCASE
                ENDDO
                IF psW0=1
                     STORE 1 TO xlAr
                ENDIF
           ENDIF
           SKIP
      ENDDO
      SELECT caB_conjuntos
      SEEK ALLTRIM(vcOd)+"*"
      STORE " " TO nlAr, nlA1, nlA2, nlA3, nlA4, nlA5, nlA6, nlA7, nlA8, nlA9
      STORE " " TO naNc, naN1, naN2, naN3, naN4, naN5, naN6, naN7, naN8, naN9
      STORE " " TO naLt, naL1, naL2, naL3, naL4, naL5, naL6, naL7, naL8, naL9
      IF xaLt=1
           IF LEN(ALLTRIM(f2920alt))=0
                STORE "Altura" TO naLt
           ELSE
                STORE f2920alt TO naLt
           ENDIF
      ENDIF
      IF xaL1=1
           IF LEN(ALLTRIM(f2920al1))=0
                STORE "Altura1" TO naL1
           ELSE
                STORE f2920al1 TO naL1
           ENDIF
      ENDIF
      IF xaL2=1
           IF LEN(ALLTRIM(f2920al2))=0
                STORE "Altura2" TO naL2
           ELSE
                STORE f2920al2 TO naL2
           ENDIF
      ENDIF
      IF xaL3=1
           IF LEN(ALLTRIM(f2920al3))=0
                STORE "Altura3" TO naL3
           ELSE
                STORE f2920al3 TO naL3
           ENDIF
      ENDIF
      IF xaL4=1
           IF LEN(ALLTRIM(f2920al4))=0
                STORE "Altura4" TO naL4
           ELSE
                STORE f2920al4 TO naL4
           ENDIF
      ENDIF
      IF xaL5=1
           IF LEN(ALLTRIM(f2920al5))=0
                STORE "Altura5" TO naL5
           ELSE
                STORE f2920al5 TO naL5
           ENDIF
      ENDIF
      IF xaL6=1
           IF LEN(ALLTRIM(f2920al6))=0
                STORE "Altura6" TO naL6
           ELSE
                STORE f2920al6 TO naL6
           ENDIF
      ENDIF
      IF xaL7=1
           IF LEN(ALLTRIM(f2920al7))=0
                STORE "Altura7" TO naL7
           ELSE
                STORE f2920al7 TO naL7
           ENDIF
      ENDIF
      IF xaL8=1
           IF LEN(ALLTRIM(f2920al8))=0
                STORE "Altura8" TO naL8
           ELSE
                STORE f2920al8 TO naL8
           ENDIF
      ENDIF
      IF xaL9=1
           IF LEN(ALLTRIM(f2920al9))=0
                STORE "Altura9" TO naL9
           ELSE
                STORE f2920al9 TO naL9
           ENDIF
      ENDIF
      IF xaNc=1
           IF LEN(ALLTRIM(f2920anc))=0
                STORE "Ancho " TO naNc
           ELSE
                STORE f2920anc TO naNc
           ENDIF
      ENDIF
      IF xaN1=1
           IF LEN(ALLTRIM(f2920an1))=0
                STORE "Ancho1 " TO naN1
           ELSE
                STORE f2920an1 TO naN1
           ENDIF
      ENDIF
      IF xaN2=1
           IF LEN(ALLTRIM(f2920an2))=0
                STORE "Ancho2 " TO naN2
           ELSE
                STORE f2920an2 TO naN2
           ENDIF
      ENDIF
      IF xaN3=1
           IF LEN(ALLTRIM(f2920an3))=0
                STORE "Ancho3 " TO naN3
           ELSE
                STORE f2920an3 TO naN3
           ENDIF
      ENDIF
      IF xaN4=1
           IF LEN(ALLTRIM(f2920an4))=0
                STORE "Ancho4 " TO naN4
           ELSE
                STORE f2920an4 TO naN4
           ENDIF
      ENDIF
      IF xaN5=1
           IF LEN(ALLTRIM(f2920an5))=0
                STORE "Ancho5 " TO naN5
           ELSE
                STORE f2920an5 TO naN5
           ENDIF
      ENDIF
      IF xaN6=1
           IF LEN(ALLTRIM(f2920an6))=0
                STORE "Ancho6 " TO naN6
           ELSE
                STORE f2920an6 TO naN6
           ENDIF
      ENDIF
      IF xaN7=1
           IF LEN(ALLTRIM(f2920an7))=0
                STORE "Ancho7 " TO naN7
           ELSE
                STORE f2920an7 TO naN7
           ENDIF
      ENDIF
      IF xaN8=1
           IF LEN(ALLTRIM(f2920an8))=0
                STORE "Ancho8 " TO naN8
           ELSE
                STORE f2920an8 TO naN8
           ENDIF
      ENDIF
      IF xaN9=1
           IF LEN(ALLTRIM(f2920an9))=0
                STORE "Ancho9 " TO naN9
           ELSE
                STORE f2920an9 TO naN9
           ENDIF
      ENDIF
      IF xlAr=1
           IF LEN(ALLTRIM(f2920lar))=0
                STORE "Largo " TO nlAr
           ELSE
                STORE f2920lar TO nlAr
           ENDIF
      ENDIF
      IF xlA1=1
           IF LEN(ALLTRIM(f2920la1))=0
                STORE "Largo1 " TO nlA1
           ELSE
                STORE f2920la1 TO nlA1
           ENDIF
      ENDIF
      IF xlA2=1
           IF LEN(ALLTRIM(f2920la2))=0
                STORE "Largo2 " TO nlA2
           ELSE
                STORE f2920la2 TO nlA2
           ENDIF
      ENDIF
      IF xlA3=1
           IF LEN(ALLTRIM(f2920la3))=0
                STORE "Largo3 " TO nlA3
           ELSE
                STORE f2920la3 TO nlA3
           ENDIF
      ENDIF
      IF xlA4=1
           IF LEN(ALLTRIM(f2920la4))=0
                STORE "Largo4 " TO nlA4
           ELSE
                STORE f2920la4 TO nlA4
           ENDIF
      ENDIF
      IF xlA5=1
           IF LEN(ALLTRIM(f2920la5))=0
                STORE "Largo5 " TO nlA5
           ELSE
                STORE f2920la5 TO nlA5
           ENDIF
      ENDIF
      IF xlA6=1
           IF LEN(ALLTRIM(f2920la6))=0
                STORE "Largo6 " TO nlA6
           ELSE
                STORE f2920la6 TO nlA6
           ENDIF
      ENDIF
      IF xlA7=1
           IF LEN(ALLTRIM(f2920la7))=0
                STORE "Largo7 " TO nlA7
           ELSE
                STORE f2920la7 TO nlA7
           ENDIF
      ENDIF
      IF xlA8=1
           IF LEN(ALLTRIM(f2920la8))=0
                STORE "Largo8 " TO nlA8
           ELSE
                STORE f2920la8 TO nlA8
           ENDIF
      ENDIF
      IF xlA9=1
           IF LEN(ALLTRIM(f2920la9))=0
                STORE "Largo9 " TO nlA9
           ELSE
                STORE f2920la9 TO nlA9
           ENDIF
      ENDIF
      DO me1_1200b
      IF xiT1=0
           DO meD_1200b
           STORE 2 TO vsRr
      ENDIF
 ELSE
      DO q2_0000a
      DO ca1_1200b
      DO p2_0000a
 ENDIF
 RELEASE pnU0, pnU1, pnU2, pnU3, pnU4, pnU5, pnU6, pnU7, pnU8, pnU9, psW0,  ;
         pnUm, pfOr
ENDPROC
*
PROCEDURE Ca1_1200b
 SELECT teMporal_cj
 SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
 DELETE ALL
 SET FILTER TO
 PACK
 REINDEX
 SELECT deT_conjuntos
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE f2921cdg TO ccDg
      STORE f2921dcr TO cdCr
      STORE f2921cuv TO ccUv
      STORE f2921nuv TO cnUv
      STORE f2921can TO ccAn
      STORE f2921for TO cfOr
      STORE f2921dsp TO cdSp
      STORE f2921ttt TO ctTt
      STORE 0 TO cpRe
      IF vsRr=1
           SELECT prOductos
           SEEK ALLTRIM(ccDg)+"*"
           DO CASE
                CASE EOF()
                     STORE 1 TO cpRe
                CASE moBr=1 .AND. vmOn=1
                     IF f2111vv1=0 .AND. f2111vv2<>0
                          STORE ROUND(f2111vv2*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv1 TO cpRe
                     ENDIF
                CASE moBr=1 .AND. vmOn=2
                     IF f2111vv2=0 .AND. f2111vv1<>0
                          STORE ROUND(f2111vv1/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv2 TO cpRe
                     ENDIF
                CASE moBr=2 .AND. vmOn=1
                     IF f2111vv3=0 .AND. f2111vv4<>0
                          STORE ROUND(f2111vv4*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv3 TO cpRe
                     ENDIF
                CASE moBr=2 .AND. vmOn=2
                     IF f2111vv4=0 .AND. f2111vv3<>0
                          STORE ROUND(f2111vv3/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv4 TO cpRe
                     ENDIF
                CASE moBr=3 .AND. vmOn=1
                     IF f2111vv5=0 .AND. f2111vv6<>0
                          STORE ROUND(f2111vv6*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv5 TO cpRe
                     ENDIF
                CASE moBr=3 .AND. vmOn=2
                     IF f2111vv6=0 .AND. f2111vv5<>0
                          STORE ROUND(f2111vv5/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv6 TO cpRe
                     ENDIF
                CASE moBr=4 .AND. vmOn=1
                     IF f2111vv7=0 .AND. f2111vv8<>0
                          STORE ROUND(f2111vv8*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv7 TO cpRe
                     ENDIF
                CASE moBr=4 .AND. vmOn=2
                     IF f2111vv8=0 .AND. f2111vv7<>0
                          STORE ROUND(f2111vv7/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv8 TO cpRe
                     ENDIF
                CASE moBr=5 .AND. vmOn=1
                     IF f2111vv9=0 .AND. f2111vv0<>0
                          STORE ROUND(f2111vv0*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv9 TO cpRe
                     ENDIF
                CASE moBr=5 .AND. vmOn=2
                     IF f2111vv0=0 .AND. f2111vv9<>0
                          STORE ROUND(f2111vv9/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vv0 TO cpRe
                     ENDIF
                CASE moBr=6 .AND. vmOn=1
                     IF f2111vva=0 .AND. f2111vvb<>0
                          STORE ROUND(f2111vvb*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vva TO cpRe
                     ENDIF
                CASE moBr=6 .AND. vmOn=2
                     IF f2111vvb=0 .AND. f2111vva<>0
                          STORE ROUND(f2111vva/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvb TO cpRe
                     ENDIF
                CASE moBr=7 .AND. vmOn=1
                     IF f2111vvc=0 .AND. f2111vvd<>0
                          STORE ROUND(f2111vvd*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvc TO cpRe
                     ENDIF
                CASE moBr=7 .AND. vmOn=2
                     IF f2111vvd=0 .AND. f2111vvc<>0
                          STORE ROUND(f2111vvc/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvd TO cpRe
                     ENDIF
                CASE moBr=8 .AND. vmOn=1
                     IF f2111vve=0 .AND. f2111vvf<>0
                          STORE ROUND(f2111vvf*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vve TO cpRe
                     ENDIF
                CASE moBr=8 .AND. vmOn=2
                     IF f2111vvf=0 .AND. f2111vve<>0
                          STORE ROUND(f2111vve/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvf TO cpRe
                     ENDIF
                CASE moBr=9 .AND. vmOn=1
                     IF f2111vvg=0 .AND. f2111vvh<>0
                          STORE ROUND(f2111vvh*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvg TO cpRe
                     ENDIF
                CASE moBr=9 .AND. vmOn=2
                     IF f2111vvh=0 .AND. f2111vvg<>0
                          STORE ROUND(f2111vvg/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvh TO cpRe
                     ENDIF
                CASE moBr=10 .AND. vmOn=1
                     IF f2111vvi=0 .AND. f2111vvj<>0
                          STORE ROUND(f2111vvj*vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvi TO cpRe
                     ENDIF
                CASE moBr=10 .AND. vmOn=2
                     IF f2111vvj=0 .AND. f2111vvi<>0
                          STORE ROUND(f2111vvi/vtCa, 4) TO cpRe
                     ELSE
                          STORE f2111vvj TO cpRe
                     ENDIF
           ENDCASE
      ELSE
           DO CASE
                CASE AT("ALT", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT1", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT2", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT3", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT4", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT5", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT6", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT7", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT8", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ALT9", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC1", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC2", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC3", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC4", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC5", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC6", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC7", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC8", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("ANC9", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR1", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR2", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR3", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR4", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR5", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR6", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR7", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR8", cfOr)<>0
                     STORE SPACE(60) TO cfOr
                CASE AT("LAR9", cfOr)<>0
                     STORE SPACE(60) TO cfOr
           ENDCASE
      ENDIF
      IF cpRe<=0
           STORE 1 TO cpRe
      ENDIF
      SELECT teMporal_cj
      APPEND BLANK
      REPLACE f2921cod WITH vcOd
      REPLACE f2921cdg WITH ccDg
      REPLACE f2921dcr WITH cdCr
      REPLACE f2921cuv WITH ccUv
      REPLACE f2921nuv WITH cnUv
      REPLACE f2921can WITH ccAn
      REPLACE f2921for WITH cfOr
      REPLACE f2921pre WITH cpRe
      REPLACE f2921dsp WITH cdSp
      REPLACE f2921ttt WITH ctTt
      REPLACE f2921tot WITH 0
      SELECT deT_conjuntos
      SKIP
 ENDDO
 DO foR_1200b IN PVI1200B
ENDPROC
*
PROCEDURE Gra_1200b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      DO cl1_1200b
      STORE tvAl-vtOt TO tvAl
      STORE tnPe-vnPe TO tnPe
      STORE tpEr-viPe TO tpEr
 ENDIF
 IF vmOn=1
      IF vpRe<>vsOl
           STORE vpRe TO vsOl
           STORE ROUND(vsOl/vtCa, 4) TO vuSd
      ENDIF
 ELSE
      IF vpRe<>vuSd
           STORE vpRe TO vuSd
           STORE ROUND(vuSd*vtCa, 4) TO vsOl
      ENDIF
 ENDIF
 = INKEY(0.01)
 DO caL_1200b
 SELECT teMporal
 REPLACE ftM1cod WITH vcOd
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1dcr WITH vdCr
 REPLACE ftM1cuv WITH vcUv
 REPLACE ftM1nuv WITH vnUv
 REPLACE ftM1cuc WITH vcUc
 REPLACE ftM1nuc WITH vnUc
 REPLACE ftM1med WITH vmEd
 REPLACE ftM1can WITH vcAn
 REPLACE ftM1pie WITH vpIe
 REPLACE ftM1sol WITH vsOl
 REPLACE ftM1usd WITH vuSd
 REPLACE ftM1pre WITH vpRe
 REPLACE ftM1pro WITH vpRo
 REPLACE ftM1pr1 WITH vpR1
 REPLACE ftM1pdc WITH vpDc
 REPLACE ftM1ref WITH vrEf
 REPLACE ftM1md1 WITH vmD1
 REPLACE ftM1md2 WITH vmD2
 REPLACE ftM1md3 WITH vmD3
 REPLACE ftM1lar WITH vlAr
 REPLACE ftM1la1 WITH vlA1
 REPLACE ftM1la2 WITH vlA2
 REPLACE ftM1la3 WITH vlA3
 REPLACE ftM1la4 WITH vlA4
 REPLACE ftM1la5 WITH vlA5
 REPLACE ftM1la6 WITH vlA6
 REPLACE ftM1la7 WITH vlA7
 REPLACE ftM1la8 WITH vlA8
 REPLACE ftM1la9 WITH vlA9
 REPLACE ftM1anc WITH vaNc
 REPLACE ftM1an1 WITH vaN1
 REPLACE ftM1an2 WITH vaN2
 REPLACE ftM1an3 WITH vaN3
 REPLACE ftM1an4 WITH vaN4
 REPLACE ftM1an5 WITH vaN5
 REPLACE ftM1an6 WITH vaN6
 REPLACE ftM1an7 WITH vaN7
 REPLACE ftM1an8 WITH vaN8
 REPLACE ftM1an9 WITH vaN9
 REPLACE ftM1alt WITH vaLt
 REPLACE ftM1al1 WITH vaL1
 REPLACE ftM1al2 WITH vaL2
 REPLACE ftM1al3 WITH vaL3
 REPLACE ftM1al4 WITH vaL4
 REPLACE ftM1al5 WITH vaL5
 REPLACE ftM1al6 WITH vaL6
 REPLACE ftM1al7 WITH vaL7
 REPLACE ftM1al8 WITH vaL8
 REPLACE ftM1al9 WITH vaL9
 REPLACE ftM1esp WITH veSp
 REPLACE ftM1tip WITH vtIp
 REPLACE ftM1tpo WITH vtPo
 REPLACE ftM1to1 WITH vnEt
 REPLACE ftM1to2 WITH vtOt
 REPLACE ftM1per WITH vpEr
 REPLACE ftM1dtr WITH vdTr
 REPLACE ftM1dpp WITH vdPp
 STORE "TM01A"+ntM1+meXt TO pdBf
 REPLACE ftM1tmp WITH pdBf+","
 STORE "TM01"+ntM2+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM3+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM4+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM5+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM6+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM7+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM8+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf
 STORE tvAl+vtOt TO tvAl
 STORE tpEr+viPe TO tpEr
 STORE tnPe+vnPe TO tnPe
 STORE 02 TO viOm
 DO ctO_1200b
ENDPROC
*
PROCEDURE Cto_1200b
 DO ct1_1200b
 DO ct2_1200b
 DO CASE
      CASE vlEc=1 .AND. vsW1=1
           DO peR_1200w IN PVI1200W
           DO coLsc3
           @fFIL+1.3,vCO1+012.2 Say tVAL           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+029.2 Say tDC1           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+046.2 Say tDC2           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+063.2 Say tDC3           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+080.2 Say tDC1+tDC2+tDC3 Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+097.2 Say tNET           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+114.2 Say tIGV           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
           @fFIL+1.3,vCO1+131.2 Say tTOT           Font "&mLetAri",9  Style "NQ" Pict "99999,999.99" Size 1,16.0
      CASE vlEc=2
           DO coL_boton
           @fFIL+5.8,vCO1+Int(vUCO/2)+75 Say tTOT  Font "&mLetRom",15 Style "BQ" Pict "9,999.99" Size 1,09.0
 ENDCASE
ENDPROC
*
PROCEDURE Ct1_1200b
 PRIVATE pdCt
 STORE ROUND(tvAl*vdTc/100, 4) TO tdC1
 STORE tvAl-tdC1 TO ttOt
 STORE ROUND(ttOt*vdCl/100, 4) TO tdC2
 STORE ttOt-tdC2 TO ttOt
 IF vsWg=1
      STORE ROUND(ttOt*vpGd/100, 4) TO tdC3
      STORE ROUND(ttOt-tdC3, 2) TO ttOt
 ENDIF
 IF tpEr>0
      STORE ROUND(tpEr*vdTc/100, 4) TO pdCt
      STORE tpEr-pdCt TO tpEr
      STORE ROUND(tpEr*vdCl/100, 4) TO pdCt
      STORE tpEr-pdCt TO tpEr
      IF vsWg=1
           STORE ROUND(tpEr*vpGd/100, 4) TO pdCt
           STORE ROUND(tpEr-pdCt, 2) TO tpEr
      ENDIF
 ENDIF
 RELEASE pdCt
ENDPROC
*
PROCEDURE Ct2_1200b
 PRIVATE pdCt, ppOr
 IF vsWg=2 .AND. vpGd>0
      IF tpEr>0
           STORE ROUND(vpGd/ttOt*100, 6) TO ppOr
           STORE ROUND(tpEr*ppOr/100, 4) TO pdCt
           STORE tpEr-pdCt TO tpEr
      ENDIF
      STORE vpGd TO tdC3
      STORE ROUND(ttOt-tdC3, 2) TO ttOt
 ELSE
      STORE 0 TO tdC3
 ENDIF
 DO CASE
      CASE mrEd=0
           STORE ROUND(ttOt, 0) TO ttOt
      CASE mrEd=1
           STORE ROUND(ttOt, 1) TO ttOt
      CASE mrEd=2
 ENDCASE
 STORE ROUND(ttOt/(1+(vpIg/100)), 2) TO tnEt
 STORE ttOt-tnEt TO tiGv
 RELEASE pdCt, ppOr
ENDPROC
*
PROCEDURE Cal_1200b
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
 STORE vpIe*vpRe TO vvAl
 STORE vvAl*vpDc/100 TO vdCt
 STORE vvAl-vdCt TO vtOt
 STORE ROUND(vtOt/(1+(vpIg/100)), 4) TO vnEt
 STORE ROUND(vtOt, 2) TO vtOt
 DO CASE
      CASE vtPo=2
           STORE ROUND(vnEt/vpIe, 4) TO vpR1
           STORE ROUND(vpR1*vpIe, 2) TO vnEt
      OTHERWISE
           STORE ROUND(vnEt/vcAn, 4) TO vpR1
           STORE ROUND(vpR1*vcAn, 2) TO vnEt
 ENDCASE
 IF vpEr=1
      STORE ROUND(vtOt*vpPe/100, 2) TO viPe
 ELSE
      STORE 0 TO viPe
 ENDIF
ENDPROC
*
PROCEDURE Cl1_1200b
 DO CASE
      CASE ftM1tpo=2 .AND. ftM1med=1
           STORE ROUND(ftM1la1*ftM1an1*10.77*ftM1can, 4) TO vpIe
      CASE ftM1tpo=2 .AND. ftM1med=2
           STORE ROUND((ftM1la2*ftM1an2/144)*ftM1can, 4) TO vpIe
      CASE ftM1tpo=3
           STORE ROUND((ftM1la2*ftM1an2*ftM1esp/12)*ftM1can, 4) TO vpIe
      OTHERWISE
           STORE ftM1can TO vpIe
 ENDCASE
 STORE vpIe*ftM1pre TO vvAl
 STORE vvAl*ftM1pdc/100 TO vdCt
 STORE vvAl-vdCt TO vtOt
 STORE ROUND(vtOt/(1+(vpIg/100)), 4) TO vnEt
 STORE ROUND(vtOt, 2) TO vtOt
 DO CASE
      CASE ftM1tpo=2
           STORE ROUND(vnEt/vpIe, 4) TO vpR1
           STORE ROUND(vpR1*vpIe, 2) TO vnEt
      OTHERWISE
           STORE ROUND(vnEt/ftM1can, 4) TO vpR1
           STORE ROUND(vpR1*ftM1can, 2) TO vnEt
 ENDCASE
 IF ftM1per=1
      STORE ROUND(vtOt*vpPe/100, 2) TO viPe
 ELSE
      STORE 0 TO viPe
 ENDIF
ENDPROC
*
PROCEDURE For_1200b
 SELECT teMporal_cj
 SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2921cdg TO ccOd
      STORE ALLTRIM(UPPER(f2921for)) TO vfOr
      IF LEN(ALLTRIM(vfOr))<>0
           DO WHILE .T.
                DO CASE
                     CASE AT("ALT1", vfOr)<>0
                          STORE AT("ALT1", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL1,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT2", vfOr)<>0
                          STORE AT("ALT2", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL2,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT3", vfOr)<>0
                          STORE AT("ALT3", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL3,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT4", vfOr)<>0
                          STORE AT("ALT4", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL4,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT5", vfOr)<>0
                          STORE AT("ALT5", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL5,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT6", vfOr)<>0
                          STORE AT("ALT6", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL6,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT7", vfOr)<>0
                          STORE AT("ALT7", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL7,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT8", vfOr)<>0
                          STORE AT("ALT8", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL8,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT9", vfOr)<>0
                          STORE AT("ALT9", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaL9,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ALT", vfOr)<>0
                          STORE AT("ALT", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaLt,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC1", vfOr)<>0
                          STORE AT("ANC1", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN1,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC2", vfOr)<>0
                          STORE AT("ANC2", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN2,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC3", vfOr)<>0
                          STORE AT("ANC3", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN3,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC4", vfOr)<>0
                          STORE AT("ANC4", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN4,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC5", vfOr)<>0
                          STORE AT("ANC5", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN5,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC6", vfOr)<>0
                          STORE AT("ANC6", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN6,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC7", vfOr)<>0
                          STORE AT("ANC7", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN7,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC8", vfOr)<>0
                          STORE AT("ANC8", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN8,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC9", vfOr)<>0
                          STORE AT("ANC9", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaN9,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("ANC", vfOr)<>0
                          STORE AT("ANC", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vaNc,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR1", vfOr)<>0
                          STORE AT("LAR1", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA1,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR2", vfOr)<>0
                          STORE AT("LAR2", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA2,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR3", vfOr)<>0
                          STORE AT("LAR3", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA3,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR4", vfOr)<>0
                          STORE AT("LAR4", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA4,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR5", vfOr)<>0
                          STORE AT("LAR5", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA5,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR6", vfOr)<>0
                          STORE AT("LAR6", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA6,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR7", vfOr)<>0
                          STORE AT("LAR7", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA7,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR8", vfOr)<>0
                          STORE AT("LAR8", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA8,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR9", vfOr)<>0
                          STORE AT("LAR9", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlA9,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     CASE AT("LAR", vfOr)<>0
                          STORE AT("LAR", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(vlAr,  ;
                                6, 2))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     OTHERWISE
                          EXIT
                ENDCASE
           ENDDO
      ENDIF
      REPLACE f2921fo1 WITH vfOr
      DO CASE
           CASE LEN(ALLTRIM(vfOr))=0
           CASE AT("&", vfOr)<>0 .OR. AT("TOT", vfOr)<>0
           CASE LEN(ALLTRIM(vfOr))=0
                REPLACE f2921dst WITH ROUND(f2921can*f2921dsp/100, 4)
                REPLACE f2921tot WITH f2921can+f2921dst
           OTHERWISE
                STORE ALLTRIM(vfOr) TO vfOr
                STORE 6 TO meRr
                Store &vFOR         to cPR1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 00 TO meRr
                REPLACE f2921dst WITH ROUND(cpR1*f2921can*f2921dsp/100, 4)
                REPLACE f2921tot WITH (cpR1*f2921can)+f2921dst
      ENDCASE
      SKIP
 ENDDO
 SELECT teMporal_cj
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ALLTRIM(UPPER(f2921fo1)) TO vfOr
      IF LEN(ALLTRIM(vfOr))<>0 .AND. f2921tot=0
           STORE f2921cdg TO ccOd
           DO WHILE .T.
                DO CASE
                     CASE AT("&", vfOr)<>0
                          STORE AT("&", vfOr, 1) TO vnU1
                          STORE AT("&", vfOr, 2) TO vnU2
                          STORE SUBSTR(vfOr, vnU1+1, (vnU2-vnU1)-1) TO ccO1
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ccO1)+"*"
                          IF  .NOT. EOF()
                               IF f2921tot<>0
                                    STORE f2921tot TO cpR1
                                    STORE ALLTRIM(STR(cpR1, 12, 2)) TO cpR1
                                    STORE SUBSTR(vfOr, 1, vnU1-1)+cpR1+ ;
                                     SUBSTR(vfOr, vnU2+1, 60) TO vfOr
                               ELSE
                                    STORE SUBSTR(vfOr, 1, vnU1-1)+"$"+ ;
                                     SUBSTR(vfOr, vnU1+1, vnU2-1)+"$"+ ;
                                     SUBSTR(vfOr, vnU2+1, 60) TO vfOr
                               ENDIF
                          ELSE
                               STORE ALLTRIM(STR(1, 12, 2)) TO cpR1
                               STORE SUBSTR(vfOr, 1, vnU1-1)+cpR1+ ;
                                     SUBSTR(vfOr, vnU2+1, 60) TO vfOr
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ccOd)+"*"
                     OTHERWISE
                          EXIT
                ENDCASE
           ENDDO
           REPLACE f2921fo1 WITH vfOr
           DO CASE
                CASE AT("$", vfOr)<>0
                CASE AT("&", vfOr)<>0
                CASE AT("TOT", vfOr)<>0
                OTHERWISE
                     STORE ALLTRIM(vfOr) TO vfOr
                     STORE 6 TO meRr
                     Store &vFOR         to cPR1
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE 00 TO meRr
                     REPLACE f2921dst WITH ROUND(cpR1*f2921can*f2921dsp/100, 4)
                     REPLACE f2921tot WITH (cpR1*f2921can)+f2921dst
           ENDCASE
      ENDIF
      SKIP
 ENDDO
 SELECT teMporal_cj
 STORE 0 TO ccAn
 DO WHILE .T.
      SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE ccAn+1 TO ccAn
      IF ccAn>20
           REPLACE f2921tot WITH 0 FOR AT("TOT", vfOr)=0
           EXIT
      ENDIF
      REPLACE f2921est WITH SPACE(01) ALL
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ALLTRIM(UPPER(f2921fo1)) TO vfOr
           IF LEN(ALLTRIM(vfOr))<>0 .AND. f2921tot=0
                STORE f2921cdg TO ccOd
                DO WHILE .T.
                     DO CASE
                          CASE AT("$", vfOr)<>0 .AND. f2921est=SPACE(01)
                               STORE AT("$", vfOr, 1) TO vnU1
                               STORE AT("$", vfOr, 2) TO vnU2
                               STORE SUBSTR(vfOr, vnU1+1, (vnU2-vnU1)-1)  ;
                                     TO ccO1
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ccO1)+"*"
                               IF  .NOT. EOF()
                                    IF f2921tot<>0
                                         STORE f2921tot TO cpR1
                                         STORE ALLTRIM(STR(cpR1, 12, 2))  ;
                                          TO cpR1
                                         STORE SUBSTR(vfOr, 1, vnU1-1)+ ;
                                          cpR1+SUBSTR(vfOr, vnU2+1, 60) TO vfOr
                                    ELSE
                                         SEEK ALLTRIM(vcOd)+"*"+ ;
                                          ALLTRIM(ccOd)+"*"
                                         REPLACE f2921est WITH "1"
                                    ENDIF
                               ELSE
                                    STORE ALLTRIM(STR(1, 12, 2)) TO cpR1
                                    STORE SUBSTR(vfOr, 1, vnU1-1)+cpR1+ ;
                                     SUBSTR(vfOr, vnU2+1, 60) TO vfOr
                               ENDIF
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ccOd)+"*"
                          OTHERWISE
                               EXIT
                     ENDCASE
                ENDDO
                REPLACE f2921fo1 WITH vfOr
                DO CASE
                     CASE AT("$", vfOr)<>0
                     CASE AT("TOT", vfOr)<>0
                     OTHERWISE
                          STORE ALLTRIM(vfOr) TO vfOr
                          STORE 6 TO meRr
                          Store &vFOR         to cPR1
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE 00 TO meRr
                          REPLACE f2921dst WITH ROUND(cpR1*f2921can* ;
                                  f2921dsp/100, 4)
                          REPLACE f2921tot WITH (cpR1*f2921can)+f2921dst
                ENDCASE
           ELSE
                IF LEN(ALLTRIM(vfOr))=0
                     REPLACE f2921tot WITH f2921can
                ENDIF
           ENDIF
           SKIP
      ENDDO
      SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*" .AND. f2921est<>SPACE(01)
      GOTO TOP
      IF BOF() .OR. EOF()
           EXIT
      ENDIF
 ENDDO
 SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
 SUM f2921pre*f2921tot TO cpRe ALL
 SELECT teMporal_cj
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ALLTRIM(UPPER(f2921fo1)) TO vfOr
      IF f2921tot=0 .AND. LEN(vfOr)<>0
           DO WHILE .T.
                DO CASE
                     CASE AT("TOT", vfOr)<>0
                          STORE AT("TOT", vfOr) TO vnUm
                          STORE SUBSTR(vfOr, 1, vnUm-1)+ALLTRIM(STR(cpRe,  ;
                                12, 4))+SUBSTR(vfOr, vnUm+3, 60) TO vfOr
                     OTHERWISE
                          EXIT
                ENDCASE
           ENDDO
           REPLACE f2921fo1 WITH vfOr
           DO CASE
                CASE AT("TOT", vfOr)<>0
                OTHERWISE
                     STORE ALLTRIM(vfOr) TO vfOr
                     STORE 6 TO meRr
                     Store &vFOR         to cPR1
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE 00 TO meRr
                     REPLACE f2921dst WITH ROUND(cpR1*f2921can*f2921dsp/100, 4)
                     REPLACE f2921tot WITH (cpR1*f2921can)+f2921dst
           ENDCASE
      ENDIF
      SKIP
 ENDDO
 SET FILTER TO ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
 IF vsRr=1
      SUM f2921tot*f2921pre TO vpRe ALL
 ENDIF
 SET FILTER TO
ENDPROC
*
PROCEDURE Ve1_1200b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0
           STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                 TO mmSj
      CASE LEN(ALLTRIM(vdCr))=0
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
      CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3) .AND. wsW0=1
           STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
      CASE vtPo=10 .AND. vsRr=1 .AND. vlAr=0 .AND. vlA1=0 .AND. vlA2=0  ;
           .AND. vlA3=0 .AND. vlA4=0 .AND. vlA5=0 .AND. vlA6=0 .AND. vlA7= ;
           0 .AND. vlA8=0 .AND. vlA9=0 .AND. vaNc=0 .AND. vaN1=0 .AND.  ;
           vaN2=0 .AND. vaN3=0 .AND. vaN4=0 .AND. vaN5=0 .AND. vaN6=0  ;
           .AND. vaN7=0 .AND. vaN8=0 .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1= ;
           0 .AND. vaL2=0 .AND. vaL3=0 .AND. vaL4=0 .AND. vaL5=0 .AND.  ;
           vaL6=0 .AND. vaL7=0 .AND. vaL8=0 .AND. vaL9=0
           STORE "Hay que ingresar las Medidas..." TO mmSj
      CASE vmD2=1 .AND. vpRe=0
           STORE "Precio no puede ser cero..." TO mmSj
      CASE vmD2=1 .AND. vmOn=1 .AND. vpRe<vmV1 .AND. vmV1<>0
           STORE "Descuento mayor al permitido en este producto..." TO mmSj
      CASE vmD2=1 .AND. vmOn=2 .AND. vpRe<vmV2 .AND. vmV2<>0
           STORE "Descuento mayor al permitido en este producto..." TO mmSj
      CASE vpDc<0
           STORE "Descuento por Ítem no puede ser menor a cero..." TO mmSj
      CASE vpDc>0 .AND. wnIv="2"
           STORE "No se puede hacer Descuento en este producto..." TO mmSj
      CASE vcSt=1 .AND. (msTp=1 .OR. msTp=3) .AND. wsW0=2
           SELECT deT_ped
           DO orD_0000a WITH "1201", "V", "F1201COD", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. vsTo-vcAn+f1201can<0
                STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
           ENDIF
           SELECT teMporal
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      RETURN
 ENDIF
 IF vmD2=1 .AND. vpRe<0
      STORE "N" TO moPc
      DO prE_docum WITH "¿Está seguro de que el precio sea negativo?"
      IF moPc$"Ss"
      ELSE
           STORE 0 TO vpRe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
 DO CASE
      CASE vpDc>0 .AND. wnIv$"13"
           DO caL_1200b
           DO CASE
                CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV1 .AND. vmV1<>0
                     STORE "El Descuento es mayor al permitido..." TO mmSj
                     STORE 0 TO vpDc
                     DO caL_1200b
                CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV2 .AND. vmV2<>0
                     STORE "El Descuento es mayor al permitido..." TO mmSj
                     STORE 0 TO vpDc
                     DO caL_1200b
           ENDCASE
 ENDCASE
 DO diS_1200b WITH "R"
 IF LEN(ALLTRIM(mmSj))<>0
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_1200b
 SET READBORDER ON
 STORE vrEc TO xrEc
 DO mu1_1200b
 DO p00_1200a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO boT_1200w IN PVI1200W WITH "3"
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
           DO mu2_1200b
      CASE irEc>frEc .AND. vrEc=irEc
           STORE 01 TO viOm
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
           DO mu2_1200b
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
                DO mu2_1200b
           ELSE
                GOTO vrEc
                DO muE_1200b
           ENDIF
 ENDCASE
 DO diS_1200b WITH "R"
ENDPROC
*
PROCEDURE Pre_1200b
 = INKEY(0.01)
 DO q2_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB6 REST
 SET CONFIRM OFF
 DO p2_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_1200b
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
      CASE mfIl>=ifIl-1.992 .AND. mfIl<=ifIl-0.778 .AND. mcCc>=ucLn+3.8  ;
           .AND. mcCc<=ucLn+8 .AND. wsW0=1
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
                STORE 01 TO viTe
                STORE 00 TO viT1
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=ifIl-1.35 .AND. mfIl<=ifIl-0.635 .AND. mcCc>=icLn-4  ;
           .AND. mcCc<=icLn-1.2 .AND. mdEs<3
           SELECT teMporal
           IF tdPp=" "
                STORE "N" TO tdPp
                REPLACE ftM1dpp WITH "N" ALL
                DO prEsiona WITH "1", "NO", ifIl-1.5, vcO1-4
           ELSE
                STORE " " TO tdPp
                REPLACE ftM1dpp WITH " " ALL
                DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
           ENDIF
           GOTO TOP
           IF  .NOT. BOF()
                STORE vrEc TO crEc
                STORE vfIl TO cfIl
                GOTO irEc
                DO paN_1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE crEc TO vrEc
                STORE cfIl TO vfIl
                GOTO vrEc
                DO muE_1200b IN PVI1200B
           ENDIF
           DO diS_1200b IN PVI1200B WITH "R"
           STORE 99 TO mkEy
      CASE mfIl>=vfIl+0.149 .AND. mfIl<=vfIl+1.007 .AND. mcCc>=icLn-4  ;
           .AND. mcCc<=icLn-1.2 .AND. mdEs<3
           IF vdPp=" "
                STORE "N" TO vdPp
           ELSE
                STORE " " TO vdPp
           ENDIF
           DO dpP_1200b
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1+111.6 .AND.  ;
           mcCc<=vcO1+113
           STORE k_Alt_z TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-5 .AND. mcCc<= ;
           ucLn+0.4
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>1 .AND. vmD1=1 .AND.  ;
           mcCc>=vcO1 .AND. mcCc<=vcO1+78.2
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=vcO1  ;
           .AND. mcCc<=vcO1+95.2
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                           TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdCr))=0
                     STORE "Descripción no puede estar vacía..." TO mmSj
                     DO poNmsj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>3 .AND. vmD2=1 .AND.  ;
           mcCc>=vcO1+95.2 .AND. mcCc<=vcO1+112.4
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                           TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdCr))=0
                     STORE "Descripción no puede estar vacía..." TO mmSj
                     DO poNmsj
                CASE vcAn=0
                     STORE "Cantidad no puede ser cero..." TO mmSj
                     DO poNmsj
                CASE vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     DO poNmsj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=1
                     STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
                     DO poNmsj
                CASE vtPo=10 .AND. vsRr=1 .AND. vlAr=0 .AND. vlA1=0 .AND.  ;
                     vlA2=0 .AND. vlA3=0 .AND. vlA4=0 .AND. vlA5=0 .AND.  ;
                     vlA6=0 .AND. vlA7=0 .AND. vlA8=0 .AND. vlA9=0 .AND.  ;
                     vaNc=0 .AND. vaN1=0 .AND. vaN2=0 .AND. vaN3=0 .AND.  ;
                     vaN4=0 .AND. vaN5=0 .AND. vaN6=0 .AND. vaN7=0 .AND.  ;
                     vaN8=0 .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1=0 .AND.  ;
                     vaL2=0 .AND. vaL3=0 .AND. vaL4=0 .AND. vaL5=0 .AND.  ;
                     vaL6=0 .AND. vaL7=0 .AND. vaL8=0 .AND. vaL9=0
                     STORE "Hay que ingresar las Medidas..." TO mmSj
                     DO poNmsj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=2
                     SELECT deT_ped
                     DO orD_0000a WITH "1201", "V", "F1201COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. vsTo-vcAn+f1201can<0
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                          DO poNmsj
                     ELSE
                          STORE 3 TO viTe
                     ENDIF
                     SELECT teMporal
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>4 .AND. mcCc>=vcO1+ ;
           112.4 .AND. mcCc<=vcO1+137.6
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                           TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdCr))=0
                     STORE "Descripción no puede estar vacía..." TO mmSj
                     DO poNmsj
                CASE vcAn=0
                     STORE "Cantidad no puede ser cero..." TO mmSj
                     DO poNmsj
                CASE vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     DO poNmsj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=1
                     STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
                     DO poNmsj
                CASE vtPo=10 .AND. vsRr=1 .AND. vlAr=0 .AND. vlA1=0 .AND.  ;
                     vlA2=0 .AND. vlA3=0 .AND. vlA4=0 .AND. vlA5=0 .AND.  ;
                     vlA6=0 .AND. vlA7=0 .AND. vlA8=0 .AND. vlA9=0 .AND.  ;
                     vaNc=0 .AND. vaN1=0 .AND. vaN2=0 .AND. vaN3=0 .AND.  ;
                     vaN4=0 .AND. vaN5=0 .AND. vaN6=0 .AND. vaN7=0 .AND.  ;
                     vaN8=0 .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1=0 .AND.  ;
                     vaL2=0 .AND. vaL3=0 .AND. vaL4=0 .AND. vaL5=0 .AND.  ;
                     vaL6=0 .AND. vaL7=0 .AND. vaL8=0 .AND. vaL9=0
                     STORE "Hay que ingresar las Medidas..." TO mmSj
                     DO poNmsj
                CASE vmD2=1 .AND. vpRe=0
                     STORE "Precio no puede ser cero..." TO mmSj
                     DO poNmsj
                CASE vmD2=1 .AND. vpRe<0
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                     DO poNmsj
                CASE vmD2=1 .AND. vmOn=1 .AND. vpRe<vmV1 .AND. vmV1<>0
                     STORE "Descuento mayor al permitido en este producto..."  ;
                           TO mmSj
                     DO poNmsj
                CASE vmD2=1 .AND. vmOn=2 .AND. vpRe<vmV2 .AND. vmV2<>0
                     STORE "Descuento mayor al permitido en este producto..."  ;
                           TO mmSj
                     DO poNmsj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=2
                     SELECT deT_ped
                     DO orD_0000a WITH "1201", "V", "F1201COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. vsTo-vcAn+f1201can<0
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                          DO poNmsj
                     ELSE
                          STORE 4 TO viTe
                     ENDIF
                     SELECT teMporal
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>5 .AND. mcCc>=vcO1+ ;
           137.6 .AND. mcCc<=vcO1+181
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     STORE "Descripción tiene que pertenecer a algún código de Producto..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vdCr))=0
                     STORE "Descripción no puede estar vacía..." TO mmSj
                CASE vcAn=0
                     STORE "Cantidad no puede ser cero..." TO mmSj
                CASE vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=1
                     STORE "Cantidad no puede ser mayor a Stock..." TO mmSj
                CASE vtPo=10 .AND. vsRr=1 .AND. vlAr=0 .AND. vlA1=0 .AND.  ;
                     vlA2=0 .AND. vlA3=0 .AND. vlA4=0 .AND. vlA5=0 .AND.  ;
                     vlA6=0 .AND. vlA7=0 .AND. vlA8=0 .AND. vlA9=0 .AND.  ;
                     vaNc=0 .AND. vaN1=0 .AND. vaN2=0 .AND. vaN3=0 .AND.  ;
                     vaN4=0 .AND. vaN5=0 .AND. vaN6=0 .AND. vaN7=0 .AND.  ;
                     vaN8=0 .AND. vaN9=0 .AND. vaLt=0 .AND. vaL1=0 .AND.  ;
                     vaL2=0 .AND. vaL3=0 .AND. vaL4=0 .AND. vaL5=0 .AND.  ;
                     vaL6=0 .AND. vaL7=0 .AND. vaL8=0 .AND. vaL9=0
                     STORE "Hay que ingresar las Medidas..." TO mmSj
                CASE vmD2=1 .AND. vpRe=0
                     STORE "Precio no puede ser cero..." TO mmSj
                CASE vmD2=1 .AND. vpRe<0
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vmD2=1 .AND. vmOn=1 .AND. vpRe<vmV1 .AND. vmV1<>0
                     STORE "Descuento mayor al permitido en este producto..."  ;
                           TO mmSj
                CASE vmD2=1 .AND. vmOn=2 .AND. vpRe<vmV2 .AND. vmV2<>0
                     STORE "Descuento mayor al permitido en este producto..."  ;
                           TO mmSj
                CASE vpDc<0
                     STORE "Descuento por Ítem no puede ser menor a cero..."  ;
                           TO mmSj
                CASE vpDc>0 .AND. wnIv="2"
                     STORE "No se puede hacer Descuento en este producto..."  ;
                           TO mmSj
                CASE vsTo-vcAn<0 .AND. vcSt=1 .AND. (msTp=1 .OR. msTp=3)  ;
                     .AND. wsW0=2
                     SELECT deT_ped
                     DO orD_0000a WITH "1201", "V", "F1201COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. vsTo-vcAn+f1201can<0
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                     ENDIF
                     SELECT teMporal
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0 .AND. vpDc>0 .AND. wnIv$"13"
                DO caL_1200b
                DO CASE
                     CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV1  ;
                          .AND. vmV1<>0
                          STORE "El Descuento es mayor al permitido..." TO mmSj
                          STORE 0 TO vpDc
                          DO caL_1200b
                     CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV2  ;
                          .AND. vmV2<>0
                          STORE "El Descuento es mayor al permitido..." TO mmSj
                          STORE 0 TO vpDc
                          DO caL_1200b
                ENDCASE
                DO diS_1200b WITH "R"
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
           ELSE
                STORE 5 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1 .AND. mcCc<=ucLn+0.4
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=vcO1 .AND. mcCc<=ucLn+0.4
           STORE k_Clic TO mkEy
           DO ve1_1200b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ELSE
                IF LEN(ALLTRIM(vcOd))<>0 .AND. LEN(ALLTRIM(vdCr))<>0  ;
                   .AND. vcAn<>0
                     DO grA_1200b
                ENDIF
                IF viOm=01
                     DO blA_1200b
                ELSE
                     DO diS_1200b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE ifIl+INT(mfIl-ifIl) TO vfIl
                GOTO irEc
                SKIP INT(mfIl-ifIl)
                STORE RECNO() TO vrEc
                DO muE_1200b
                DO diS_1200b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO CASE
                     CASE mcCc>=ucLn-5 .AND. mcCc<=ucLn
                          STORE 01 TO viTe
                          STORE k_Alt_del TO mkEy
                     CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vmD1=1  ;
                          .AND. mcCc>=vcO1 .AND. mcCc<=vcO1+78.2
                          STORE 01 TO viTe
                          STORE 99 TO mkEy
                     CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1  ;
                          .AND. mcCc<=vcO1+95.2
                          STORE 02 TO viTe
                          STORE 99 TO mkEy
                     CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vmD2=1  ;
                          .AND. mcCc>=vcO1+95.2 .AND. mcCc<=vcO1+112.4
                          STORE 03 TO viTe
                          STORE 99 TO mkEy
                     CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1+ ;
                          112.4 .AND. mcCc<=vcO1+137.6
                          STORE 04 TO viTe
                          STORE 99 TO mkEy
                     CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1+ ;
                          137.6 .AND. mcCc<=vcO1+181
                          STORE 05 TO viTe
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
PROCEDURE Hl1_1200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe escoger un Código de "
 @ pfIl+1, 01 SAY  ;
   "Producto o Servicio. La descripción y precio se pueden modificar, siempre"
 @ pfIl+2, 01 SAY "y cuando esto se haya definido en el Maestro de Productos."
 STORE pfIl+4 TO pfIl
 @ pfIl, 01 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "ESC" STYLE "BT"
 @ pfIl+1, 05 SAY "F10" STYLE "BT"
 @ pfIl+2, 05 SAY "F1" STYLE "BT"
 @ pfIl+0, 26 SAY "Regresar a la Cabecera"
 @ pfIl+1, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 26 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF viTe=1
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+2, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 05 SAY "F2" STYLE "BT"
      @ pfIl+1, 05 SAY "F3" STYLE "BT"
      @ pfIl+2, 05 SAY "F4" STYLE "BT"
      @ pfIl+0, 26 SAY "Consulta de Productos"
      @ pfIl+1, 26 SAY "Buscar palabra y consultar"
      @ pfIl+2, 26 SAY "Buscar código y consultar"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl, 24 SAY ":" STYLE "BT"
 @ pfIl, 05 SAY "F5" STYLE "BT"
 @ pfIl, 26 SAY "Agrandar el detalle"
 STORE pfIl+1 TO pfIl
 IF viTe=1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "F6" STYLE "BT"
      @ pfIl, 26 SAY "Codificación nemotécnica"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF (viTe>1 .OR. viOm=2) .AND. vtPo=10 .AND. vsRr=1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "F7" STYLE "BT"
      @ pfIl, 26 SAY "Ir a medidas para Cortes"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, 05 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, 05 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+3, 05 SAY "CTRL <-" STYLE "BT"
 @ pfIl+4, 05 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+5, 05 SAY "CTRL END" STYLE "BT"
 @ pfIl+0, 26 SAY "Ir a la línea siguiente"
 @ pfIl+1, 26 SAY "Ir a la línea anterior"
 @ pfIl+2, 26 SAY "Ir al sgte.campo, en el último pasa a sgte.línea"
 @ pfIl+3, 26 SAY "Ir al campo anterior"
 @ pfIl+4, 26 SAY "Primera línea del Detalle"
 @ pfIl+5, 26 SAY "Última línea del Detalle"
 STORE pfIl+6 TO pfIl
 IF viTe=1 .AND. viOm=1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 26 SAY "Des-Seleccionar Producto"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 05 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 05 SAY "TAB" STYLE "BT"
 @ pfIl+0, 26 SAY "Página siguiente"
 @ pfIl+1, 26 SAY "Página anterior"
 @ pfIl+2, 26 SAY "GRABAR DOCUMENTO"
 STORE pfIl+3 TO pfIl
 IF viOm=2
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "ALT DEL" STYLE "BT"
      @ pfIl, 26 SAY "Borrar línea"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "ALT C" STYLE "BT"
 @ pfIl+1, 05 SAY "ALT Z" STYLE "BT"
 @ pfIl+0, 26 SAY "Ver Precios Anteriores del mismo Cliente"
 @ pfIl+1, 26 SAY "Ver Precios Anteriores"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE vtPo=10 .AND. vsRr=1
           @ pfIl+0, 2 SAY  ;
             "En esta parte del Detalle se digitan las medidas. El precio se calcula"
           @ pfIl+1, 2 SAY  ;
             "automáticamente. Si sale un mensaje de Error es porque la fórmula está"
           @ pfIl+2, 2 SAY  ;
             "mal confeccionada, habría que indicar al usuario que la hizo que la co-"
           @ pfIl+3, 2 SAY "rrija."
           STORE pfIl+5 TO pfIl
      OTHERWISE
           @ pfIl+0, 3 SAY "En esta parte del Detalle se digitan las medidas."
           STORE pfIl+2 TO pfIl
 ENDCASE
 @ pfIl+0, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 27 SAY ":" STYLE "BT"
 @ pfIl+3, 27 SAY ":" STYLE "BT"
 @ pfIl+4, 27 SAY ":" STYLE "BT"
 @ pfIl+5, 27 SAY ":" STYLE "BT"
 @ pfIl+6, 27 SAY ":" STYLE "BT"
 @ pfIl+2, 17 SAY "ESC" STYLE "BT"
 @ pfIl+3, 17 SAY "F10" STYLE "BT"
 @ pfIl+4, 17 SAY "F1" STYLE "BT"
 @ pfIl+5, 17 SAY "ENTER" STYLE "BT"
 @ pfIl+6, 17 SAY "CTRL <-" STYLE "BT"
 @ pfIl+2, 30 SAY "Regresar al Detalle"
 @ pfIl+3, 30 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 30 SAY "Ayuda del Programa"
 @ pfIl+5, 30 SAY "Ir al siguiente campo"
 @ pfIl+6, 30 SAY "Ir al campo anterior"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
