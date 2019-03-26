 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 IF vlEc=1
      DO CASE
           CASE BOF()
                STORE ifIl TO vfIl
                STORE 01 TO irEc, vrEc, viTe
                STORE 00 TO urEc, frEc
                DO liM_1200b IN PVI1200B
           CASE viOm=1 .OR. vrEc>frEc
                DO liM_1200b IN PVI1200B
           CASE viOm=2
                STORE 2 TO viTe
                GOTO vrEc
                DO muE_1200b IN PVI1200B
      ENDCASE
      DO diS_1200b IN PVI1200B WITH "R"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      STORE ifIl TO vfIl
      STORE 01 TO irEc, vrEc, viTe
      STORE 00 TO urEc, frEc
      DO liM_1200b IN PVI1200B
 ENDIF
 DO ctO_1200b IN PVI1200B
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs .AND. vlEc=1
           DO reS_1300b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=1
                          DO blA_1200b IN PVI1200B
                     ELSE
                          DO diS_1200b IN PVI1200B WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4 .OR. mkEy=k_F6)  ;
                .AND. viTe<>1 .AND. vlEc=1
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viOm=2 .AND. vlEc=1
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vdCr))=0 .AND. vlEc=1
                STORE "No hay palabras o frases que buscar..." TO mmSj
           CASE mkEy=k_F2 .AND. vlEc=2 .AND. viTe=1
                = INKEY(0.01)
                STORE 2 TO vsWw
                STORE 1 TO vsWr
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
                DO paC2111w WITH "F"
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
                          DO prO_1200b IN PVI1200B
                          DO foT_1200b IN PVI1200B
                          DO coL_boton
                          @mFI0+1.0,vCO1+Int(vUCO/2)+23 Say vCOD Font "&mLetRom",14 Style "NQ" Size 1,07
                          @mFI0+3.8,vCO1+Int(vUCO/2)+06 Say vDES Font "&mLetRom",14 Style "NQ" Size 1,54 Pict "@S54"
                          @mFI0+1.0,vCO1+Int(vUCO/2)+45 Say vPRE Font "&mLetRom",14 Style "NQ" Size 1,05 Pict "99.99"
                          DO coLbln
                          @mFI0+1.0,vCO1+Int(vUCO/2)+84 Say vCAN Font "&mLetRom",14 Style "NQ" Size 1,5 Pict "9,999"
                ENDCASE
                STORE 1 TO vsW1
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. vlEc=1
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
                DO paC2111w WITH "F"
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
                          DO prO_1200b IN PVI1200B
                          DO me3_1200b IN PVI1200B
                          SELECT teMporal
                          DO diS_1200b IN PVI1200B WITH "R"
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
                                         DO prO_1200b IN PVI1200B
                                         DO grA_1300b
                               ENDCASE
                               SELECT tmP_prod
                               SKIP
                          ENDDO
                          SELECT teMporal
                          GOTO irEc
                          DO paN_1200b IN PVI1200B
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
           CASE mkEy=k_Ctrl_del .AND. vlEc=1
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
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6 .AND. vlEc=1
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
                                    DO prO_1200b IN PVI1200B
                                    DO me3_1200b IN PVI1200B
                                    SELECT teMporal
                                    DO diS_1200b IN PVI1200B WITH "R"
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
           CASE mkEy=k_F1 .AND. vlEc=1
                DO hl1_1300b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12 .AND. vlEc=1
                DO reS_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF vlEc=1
                     IF viOm=1
                          DO blA_1200b IN PVI1200B
                     ELSE
                          DO diS_1200b IN PVI1200B WITH "N"
                     ENDIF
                     EXIT
                ELSE
                     STORE k_Esc TO mkEy
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vlEc=1
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
                DO reS_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. vsW3=2 .AND. vlEc=1
                STORE 1 TO vsW3
                DO reS_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vtPo=10 .AND. vsRr=2 .AND. vlEc=1
                STORE "Este Conjunto no maneja Cálculos..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vtPo=10 .AND. vsRr=1 .AND. vlEc=1
                DO q2_0000a
                DO p3_0000a
                DO meD_1200b IN PVI1200B
                DO q3_0000a
                DO p2_0000a
                SELECT teMporal
                DO caL_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. vlEc=1
                SAVE SCREEN TO vpAn_12
                DO foT_1200b IN PVI1200B
                mkEy = INKEY(0)
                RESTORE SCREEN FROM vpAn_12
           CASE mkEy=k_Alt_del .AND. viOm=1 .AND. vlEc=1
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_c .AND. LEN(ALLTRIM(vcOd))=0 .AND. vlEc=1
                STORE "No se puede ver ventas ya que no hay código registrado..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_z .AND. LEN(ALLTRIM(vcOd))=0 .AND. vlEc=1
                STORE "No se puede ver ventas ya que no hay código registrado..."  ;
                      TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=1 .AND. vlEc=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc) .AND. vlEc=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrEc=1 .AND. vlEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=1 .AND. vlEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. vlEc=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=2 .AND. vmD1=2 .AND. vlEc=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo> ;
                3 .AND. vtPo<>10)) .AND. ((viTe=3 .AND. vmD2=1) .OR.  ;
                (viTe=4 .AND. vmD2=2)) .AND. vlEc=1
                SAVE SCREEN TO vpAn_11
                DO CASE
                     CASE vcSt=1 .AND. vsRr=1
                          DO paI2701a
                     CASE vtPo=4
                          DO paI2700c WITH "1", "1300"
                     CASE vtPo=7
                          DO paI2700c WITH "2", "1300"
                     CASE vtPo=5
                          DO paI2700c WITH "3", "1300"
                     CASE vtPo=6
                          DO paI2700c WITH "4", "1300"
                     CASE vtPo=8
                          DO paI2700c WITH "5", "1300"
                     CASE vtPo=9
                          DO paI2700c WITH "6", "1300"
                     CASE vtPo=11
                          DO paI2700c WITH "7", "1300"
                     CASE vtPo=12
                          DO paI2700c WITH "8", "1300"
                     CASE vtPo=13
                          DO paI2700c WITH "9", "1300"
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
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_c .AND. vlEc=1
                DO vpR_1300b WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_z .AND. vlEc=1
                DO vpR_1300b WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left .AND. vlEc=1
                DO CASE
                     CASE viTe=4 .AND. vmD2=1
                          STORE 3 TO viTe
                     CASE viTe=4 .AND. vmD2=2
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .AND. vlEc=2
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE "Código no digitado..." TO mmSj
                          STORE 99 TO mkEy
                     CASE viTe=1 .AND. vrEc=5
                          STORE "Sólo se pueden vender 5 Items..." TO mmSj
                     CASE viTe=1
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               DO prO_1200b IN PVI1200B
                               DO foT_1200b IN PVI1200B
                               DO coL_boton
                               @mFI0+3.8,vCO1+Int(vUCO/2)+06 Say vDES Font "&mLetRom",14 Style "NQ" Size 1,54 Pict "@S54"
                               @mFI0+1.0,vCO1+Int(vUCO/2)+45 Say vPRE Font "&mLetRom",14 Style "NQ" Size 1,5 Pict "99.99"
                               DO coLbln
                               @mFI0+1.0,vCO1+Int(vUCO/2)+84 Say vCAN Font "&mLetRom",14 Style "NQ" Size 1,5 Pict "9,999"
                               SELECT teMporal
                               IF mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1
                                    STORE "NO HAY STOCK..." TO mmSj
                                    STORE 01 TO viTe
                               ELSE
                                    STORE 99 TO mkEy
                                    STORE 02 TO viTe
                               ENDIF
                          ENDIF
                     CASE viTe=2 .AND. vcAn=0
                          STORE "Cantidad no puede ser cero..." TO mmSj
                     CASE viTe=2 .AND. vcAn<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe<2
                          STORE viTe+1 TO viTe
                          STORE 99 TO mkEy
                ENDCASE
                = INKEY(0.01)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1dcr<>vdCr .OR. ftM1can<>vcAn .OR. ftM1pre<>vpRe .OR.  ;
                ftM1pdc<>vpDc .OR. ftM1ref<>vrEf) .AND. vlEc=1
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
                     CASE viTe=2 .AND. mcSt=1 .AND. vsTo-vcAn<0 .AND.  ;
                          vcSt=1 .AND. wsW0=1 .AND. wnIv$"12"
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
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
                     CASE viTe=2 .AND. mcSt=1 .AND. vsTo-vcAn<0 .AND.  ;
                          vcSt=1 .AND. wsW0=2 .AND. wnIv$"12"
                          SELECT deT_fact
                          DO orD_0000a WITH "1301", "V", "F1301COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                          DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          IF  .NOT. EOF() .AND. mcSt=1 .AND. vsTo-vcAn+ ;
                              f1301can<0 .AND. wnIv$"12"
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
                     CASE viTe=4 .AND. vpDc>0 .AND. wnIv="1"
                          DO caL_1200b IN PVI1200B
                          DO CASE
                               CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)< ;
                                    vmV1 .AND. vmV1<>0
                                    STORE  ;
                                     "El Descuento es mayor al permitido..."  ;
                                     TO mmSj
                                    STORE 0 TO vpDc
                                    DO caL_1200b IN PVI1200B
                               CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)< ;
                                    vmV2 .AND. vmV2<>0
                                    STORE  ;
                                     "El Descuento es mayor al permitido..."  ;
                                     TO mmSj
                                    STORE 0 TO vpDc
                                    DO caL_1200b IN PVI1200B
                          ENDCASE
                          DO diS_1200b IN PVI1200B WITH "R"
                     OTHERWISE
                          DO diS_1200b IN PVI1200B WITH "R"
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
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. vlEc=1 .AND. viTe<5
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
           CASE mkEy=k_Alt_del .AND. viOm=2 .AND. vlEc=1
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
                DO cl1_1200b IN PVI1200B
                STORE tvAl-vtOt TO tvAl
                STORE tnPe-vnPe TO tnPe
                STORE tpEr-viPe TO tpEr
                DO ctO_1200b IN PVI1200B
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
                     DO muE_1200b IN PVI1200B
                     DO diS_1200b IN PVI1200B WITH "N"
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
                     DO muE_1200b IN PVI1200B
                ELSE
                     DO liM_1200b IN PVI1200B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. vlEc=2
                = INKEY(0.01)
                SELECT teMporal
                SET FILTER TO RECNO()=crEc
                GOTO TOP
                IF  .NOT. BOF()
                     STORE ftM1cod TO vcOd
                     SELECT teMporal_4
                     DELETE FOR ALLTRIM(vcOd)+"*"=ALLTRIM(ftM4cod)+"*"
                     PACK
                     REINDEX
                     SELECT teMporal
                     DO cl1_1200b IN PVI1200B
                     STORE tvAl-vtOt TO tvAl
                     DELETE
                     PACK
                     REINDEX
                     SET FILTER TO
                     DO ctO_1200b IN PVI1200B
                     STORE frEc-1 TO frEc
                     STORE urEc-1 TO urEc
                     STORE vrEc-1 TO vrEc
                     DO p07_1200a IN PVI1200A
                     SELECT teMporal
                     GOTO TOP
                     DO WHILE  .NOT. EOF()
                          STORE RECNO() TO vrEc
                          DO muE_1200b IN PVI1200B
                          DO liS_1300b
                          SKIP
                     ENDDO
                     STORE 1 TO viTe
                ENDIF
                SELECT teMporal
                SET FILTER TO
                GOTO BOTTOM
                STORE RECNO() TO vrEc
                STORE 1 TO viOm
                DO liM_1200b IN PVI1200B
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1dcr<>vdCr .OR. ftM1can<> ;
                vcAn .OR. ftM1pre<>vpRe .OR. ftM1pdc<>vpDc .OR. ftM1ref<> ;
                vrEf .OR. vcAn<1 .OR. LEN(ALLTRIM(vcOd))=0) .AND. vlEc=1
                DO ve1_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=1 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                LEN(ALLTRIM(vdCr))<>0 .AND. vcAn<>0
                DO grA_1300b
                IF vlEc=2
                     DO liS_1300b
                ENDIF
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF vlEc=1
                     IF viOm=1
                          DO blA_1200b IN PVI1200B
                     ELSE
                          DO diS_1200b IN PVI1200B WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                     SELECT teMporal
                     GOTO TOP
                     IF BOF()
                          STORE 01 TO viTe
                          STORE 99 TO mkEy
                          DO diS_1200b IN PVI1200B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ELSE
                          EXIT
                     ENDIF
                ELSE
                     SELECT teMporal
                     GOTO TOP
                     IF  .NOT. BOF()
                          EXIT
                     ENDIF
                ENDIF
           CASE (mkEy=k_Ctrl_right .OR. mkEy=k_Down) .AND. vlEc=2
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .AND. vlEc=2
                DO liM_1200b IN PVI1200B
                DO foT_1200b IN PVI1200B
                DO coLbln
                @mFI0+1.0,vCO1+Int(vUCO/2)+23 Say vCOD Font "&mLetRom",14 Style "NQ" Size 1,07
                @mFI0+1.0,vCO1+Int(vUCO/2)+84 Say vCAN Font "&mLetRom",14 Style "NQ" Size 1,05 Pict "9,999"
                DO coL_boton
                @mFI0+3.8,vCO1+Int(vUCO/2)+06 Say vDES Font "&mLetRom",14 Style "NQ" Size 1,54 Pict "@S54"
                @mFI0+1.0,vCO1+Int(vUCO/2)+45 Say vPRE Font "&mLetRom",14 Style "NQ" Size 1,05 Pict "99.99"
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2 .AND. vlEc=1
                DO diS_1200b IN PVI1200B WITH "N"
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
                     DO muE_1200b IN PVI1200B
                ELSE
                     DO liM_1200b IN PVI1200B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1 .AND. vlEc=1
                IF viOm=1
                     DO blA_1200b IN PVI1200B
                ELSE
                     DO diS_1200b IN PVI1200B WITH "N"
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
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1 .AND. vlEc=1
                IF vrEc>frEc
                     DO blA_1200b IN PVI1200B
                ELSE
                     DO diS_1200b IN PVI1200B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_1200b IN PVI1200B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc .AND. vlEc=1
                DO diS_1200b IN PVI1200B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_1200b IN PVI1200B
                ELSE
                     DO diS_1200b IN PVI1200B WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1 .AND. vlEc=1
                IF viOm=2
                     DO diS_1200b IN PVI1200B WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_1200b IN PVI1200B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc .AND. vlEc=1
                DO diS_1200b IN PVI1200B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_1200b IN PVI1200B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF vlEc=1
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
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      IF viTe=1 .AND. vlEc=1
           DO CASE
                CASE vmD3=2
                     DO coLblz
                CASE vmD1=1
                     DO coLblr
           ENDCASE
      ENDIF
      DO CASE
           CASE vlEc=1
                DO CASE
                     CASE viTe=1 .AND. (viOm=1 .OR. vmD1=1) .AND. mrEs="3"
                          @vFIL,vCO1+003.7 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,60.4,70
                     CASE viTe=1 .AND. (viOm=1 .OR. vmD1=1)
                          @vFIL,vCO1+003.7 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,60.4,70
                     CASE viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo> ;
                          3 .AND. vtPo<>10))
                          SAVE SCREEN TO vpAn_11
                          DO CASE
                               CASE vcSt=1 .AND. vsRr=1
                                    DO paI2701a
                               CASE vtPo=4
                                    DO paI2700c WITH "1", "1300"
                               CASE vtPo=7
                                    DO paI2700c WITH "2", "1300"
                               CASE vtPo=5
                                    DO paI2700c WITH "3", "1300"
                               CASE vtPo=6
                                    DO paI2700c WITH "4", "1300"
                               CASE vtPo=8
                                    DO paI2700c WITH "5", "1300"
                               CASE vtPo=9
                                    DO paI2700c WITH "6", "1300"
                               CASE vtPo=11
                                    DO paI2700c WITH "7", "1300"
                               CASE vtPo=12
                                    DO paI2700c WITH "8", "1300"
                               CASE vtPo=13
                                    DO paI2700c WITH "9", "1300"
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
                          DO diS_1200b IN PVI1200B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          LOOP
                     CASE mrEs="3" .AND. viTe=2 .AND. mdEc=0
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999"       Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=2 .AND. mdEc=1
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9"     Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=2 .AND. mdEc=2
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.99"    Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=2 .AND. mdEc=3
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.999"   Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=2 .AND. mdEc=4
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"  Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=3
                          @vFIL,vCO1+095.9 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999999.9999" Color ,&mColBlR
                     CASE mrEs="3" .AND. viTe=4
                          @vFIL,vCO1+113.1 Get  vPDC Font "&mLetAri",9 Style "NQ" Size 1,06.9 Pict "99.99"        Color ,&mColBlN
                     CASE mrEs="3" .AND. viTe=5
                          @vFIL,vCO1+138.2 Edit vREF Font "&mLetAri",9 Style "NQ" Size 1,42.4,60
                     CASE viTe=2 .AND. mdEc=0
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999"       Color ,&mColBlN
                     CASE viTe=2 .AND. mdEc=1
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9"     Color ,&mColBlN
                     CASE viTe=2 .AND. mdEc=2
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.99"    Color ,&mColBlN
                     CASE viTe=2 .AND. mdEc=3
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.999"   Color ,&mColBlN
                     CASE viTe=2 .AND. mdEc=4
                          @vFIL,vCO1+078.7 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "999999.9999"  Color ,&mColBlN
                     CASE viTe=3
                          @vFIL,vCO1+095.9 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "9999999.9999" Color ,&mColBlR
                     CASE viTe=4
                          @vFIL,vCO1+113.1 Get  vPDC Font "&mLetAri",9 Style "NQ" Size 1,06.9 Pict "99.99"        Color ,&mColBlN
                     CASE viTe=5
                          @vFIL,vCO1+138.2 Edit vREF Font "&mLetAri",9 Style "NQ" Size 1,42.4,60
                ENDCASE
                IF viTe=2 .AND. ((vcSt=1 .AND. vsRr=1) .OR. (vtPo>3 .AND.  ;
                   vtPo<>10))
                     mkEy = INKEY(0, "HM")
                ELSE
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDIF
           CASE vlEc=2
                DO CASE
                     CASE viTe=1
                          @mFI0+1,vCO1+Int(vUCO/2)+23 Get vCOD Font "&mLetRom",14 Style "NQ" Size 1,7 Pict "999999" Color ,&mColBlN
                     CASE viTe=2
                          @mFI0+1,vCO1+Int(vUCO/2)+84 Get vCAN Font "&mLetRom",14 Style "NQ" Size 1,5 Pict "9999"   Color ,&mColBlN
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Vpr_1300b
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
 DO prE_1200b IN PVI1200B
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
ENDPROC
*
PROCEDURE Gra_1300b
 PRIVATE pdBf
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      DO cl1_1200b IN PVI1200B
      STORE tvAl-vtOt TO tvAl
      STORE tpEr-viPe TO tpEr
      STORE tnPe-vnPe TO tnPe
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
 DO caL_1200b IN PVI1200B
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
 REPLACE ftM1per WITH vpEr
 REPLACE ftM1dtr WITH vdTr
 REPLACE ftM1to1 WITH vnEt
 REPLACE ftM1to2 WITH vtOt
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
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM9+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntM0+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntMa+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf+","
 STORE "TM01"+ntMb+meXt TO pdBf
 REPLACE ftM1tmp WITH ALLTRIM(ftM1tmp)+pdBf
 STORE tvAl+vtOt TO tvAl
 STORE tpEr+viPe TO tpEr
 STORE tnPe+vnPe TO tnPe
 STORE 02 TO viOm
 DO ctO_1200b IN PVI1200B
 FLUSH
 RELEASE pdBf
ENDPROC
*
PROCEDURE Ve1_1300b
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
      CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=1 .AND. wnIv$"12"
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
      CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=2 .AND. wnIv$"12"
           SELECT deT_fact
           DO orD_0000a WITH "1301", "V", "F1301COD", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
           DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF  .NOT. EOF() .AND. mcSt=1 .AND. vsTo-vcAn+f1301can<0 .AND.  ;
               wnIv$"12"
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
      CASE vpDc>0 .AND. wnIv="1"
           DO caL_1200b IN PVI1200B
           DO CASE
                CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV1 .AND. vmV1<>0
                     STORE "El Descuento es mayor al permitido..." TO mmSj
                     STORE 0 TO vpDc
                     DO caL_1200b IN PVI1200B
                CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV2 .AND. vmV2<>0
                     STORE "El Descuento es mayor al permitido..." TO mmSj
                     STORE 0 TO vpDc
                     DO caL_1200b IN PVI1200B
           ENDCASE
 ENDCASE
 DO diS_1200b IN PVI1200B WITH "R"
 IF LEN(ALLTRIM(mmSj))<>0
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_1300b
 SET READBORDER ON
 STORE vrEc TO xrEc
 DO mu1_1200b IN PVI1200B
 DO p00_1300a WITH "1"
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
           DO mu2_1200b IN PVI1200B
      CASE irEc>frEc .AND. vrEc=irEc
           STORE 01 TO viOm
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
           DO mu2_1200b IN PVI1200B
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
                DO mu2_1200b IN PVI1200B
           ELSE
                GOTO vrEc
                DO muE_1200b IN PVI1200B
           ENDIF
 ENDCASE
 DO diS_1200b IN PVI1200B WITH "R"
ENDPROC
*
PROCEDURE Lis_1300b
 DO CASE
      CASE vrEc=1
           DO coLbln
           @iFIL+09.5,vCO1+Int(vUCO/2)+09.6 Say vDES Font "&mLetRom",12 Style "NQ" Size 1,37.4 Pict "@S40"
           @iFIL+09.5,vCO1+Int(vUCO/2)+56.9 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,04.6 Pict "999"
           @iFIL+09.5,vCO1+Int(vUCO/2)+64.6 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,08.3 Pict "999.99"
           @iFIL+09.5,vCO1+Int(vUCO/2)+76.8 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,11.0 Pict "9,999.99"
      CASE vrEc=2
           DO coL_boton
           @iFIL+12.5,vCO1+Int(vUCO/2)+09.6 Say vDES Font "&mLetRom",12 Style "NQ" Size 1,37.4 Pict "@S40"
           @iFIL+12.5,vCO1+Int(vUCO/2)+56.9 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,04.6 Pict "999"
           @iFIL+12.5,vCO1+Int(vUCO/2)+64.6 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,08.3 Pict "999.99"
           @iFIL+12.5,vCO1+Int(vUCO/2)+76.8 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,11.0 Pict "9,999.99"
      CASE vrEc=3
           DO coLbln
           @iFIL+15.5,vCO1+Int(vUCO/2)+09.6 Say vDES Font "&mLetRom",12 Style "NQ" Size 1,37.4 Pict "@S40"
           @iFIL+15.5,vCO1+Int(vUCO/2)+56.9 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,04.6 Pict "999"
           @iFIL+15.5,vCO1+Int(vUCO/2)+64.6 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,08.3 Pict "999.99"
           @iFIL+15.5,vCO1+Int(vUCO/2)+76.8 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,11.0 Pict "9,999.99"
      CASE vrEc=4
           DO coL_boton
           @iFIL+18.5,vCO1+Int(vUCO/2)+09.6 Say vDES Font "&mLetRom",12 Style "NQ" Size 1,37.4 Pict "@S40"
           @iFIL+18.5,vCO1+Int(vUCO/2)+56.9 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,04.6 Pict "999"
           @iFIL+18.5,vCO1+Int(vUCO/2)+64.6 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,08.3 Pict "999.99"
           @iFIL+18.5,vCO1+Int(vUCO/2)+76.8 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,11.0 Pict "9,999.99"
      CASE vrEc=5
           DO coLbln
           @iFIL+21.5,vCO1+Int(vUCO/2)+09.6 Say vDES Font "&mLetRom",12 Style "NQ" Size 1,37.4 Pict "@S40"
           @iFIL+21.5,vCO1+Int(vUCO/2)+56.9 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,04.6 Pict "999"
           @iFIL+21.5,vCO1+Int(vUCO/2)+64.6 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,08.3 Pict "999.99"
           @iFIL+21.5,vCO1+Int(vUCO/2)+76.8 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,11.0 Pict "9,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_1300b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
           mcCc<=mmC1+59.40 .AND. vlEc=1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68 .AND. vlEc=1
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77 .AND. vlEc=1
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+64 .AND.  ;
           mcCc<=mmC1+77 .AND. vlEc=2
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=ifIl-1.992 .AND. mfIl<=ifIl-0.778 .AND. mcCc>=ucLn+3.8  ;
           .AND. mcCc<=ucLn+8 .AND. vlEc=1
           STORE 99 TO mkEy
           DO prE_docum WITH "¿Desea Borrar Detalle y Cabecera?"
           IF moPc$"Ss"
                DO boR_1200a IN PVI1200A
                DO liM_1200w IN PVI1200W
                IF mdEt=2
                     STORE "." TO vnOm
                     STORE 2 TO vsW0
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
                @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,48
                @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
                @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
                READ TIMEOUT 0.01
                DO caL_1300w IN PVI1200W
                DO coL_fondo
                @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
                IF mdEs<3
                     DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
                     DO coLsc7
                     @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
                ENDIF
                DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
                DO boT_1200w IN PVI1200W WITH "1"
                STORE 01 TO viTe
                STORE 00 TO viT1
                STORE k_Clic TO mkEy
           ENDIF
      CASE mfIl>=ifIl-1.35 .AND. mfIl<=ifIl-0.635 .AND. vlEc=1 .AND. mcCc>= ;
           icLn-4 .AND. mcCc<=icLn-1.2 .AND. mdEs<3
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
                DO paN_1200b IN PVI1200B
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
      CASE mfIl>=vfIl+0.149 .AND. mfIl<=vfIl+1.007 .AND. vlEc=1 .AND.  ;
           mcCc>=icLn-4 .AND. mcCc<=icLn-1.2 .AND. mdEs<3
           IF vdPp=" "
                STORE "N" TO vdPp
           ELSE
                STORE " " TO vdPp
           ENDIF
           DO dpP_1200b IN PVI1200B
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1+111.6 .AND.  ;
           mcCc<=vcO1+113 .AND. vlEc=1
           STORE k_Alt_z TO mkEy
      CASE mfIl>=ifIl+09.6 .AND. mfIl<=ifIl+10.6 .AND. vlEc=2 .AND. mcCc>= ;
           vcO1+vuCo-2 .AND. mcCc<=vcO1+vuCo+2 .AND. frEc>0
           STORE 01 TO crEc
           STORE k_Alt_del TO mkEy
      CASE mfIl>=ifIl+12.6 .AND. mfIl<=ifIl+13.6 .AND. vlEc=2 .AND. mcCc>= ;
           vcO1+vuCo-2 .AND. mcCc<=vcO1+vuCo+2 .AND. frEc>0
           STORE 02 TO crEc
           STORE k_Alt_del TO mkEy
      CASE mfIl>=ifIl+15.6 .AND. mfIl<=ifIl+16.6 .AND. vlEc=2 .AND. mcCc>= ;
           vcO1+vuCo-2 .AND. mcCc<=vcO1+vuCo+2 .AND. frEc>0
           STORE 03 TO crEc
           STORE k_Alt_del TO mkEy
      CASE mfIl>=ifIl+18.6 .AND. mfIl<=ifIl+19.6 .AND. vlEc=2 .AND. mcCc>= ;
           vcO1+vuCo-2 .AND. mcCc<=vcO1+vuCo+2 .AND. frEc>0
           STORE 04 TO crEc
           STORE k_Alt_del TO mkEy
      CASE mfIl>=ifIl+21.6 .AND. mfIl<=ifIl+22.6 .AND. vlEc=2 .AND. mcCc>= ;
           vcO1+vuCo-2 .AND. mcCc<=vcO1+vuCo+2 .AND. frEc>0
           STORE 05 TO crEc
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vlEc=2 .AND. mcCc>=ucLn-5  ;
           .AND. mcCc<=ucLn+0.4
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>1 .AND. vmD1=1 .AND.  ;
           mcCc>=vcO1 .AND. mcCc<=vcO1+78.2 .AND. vlEc=1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=vcO1  ;
           .AND. mcCc<=vcO1+95.2 .AND. vlEc=1
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
           mcCc>=vcO1+95.2 .AND. mcCc<=vcO1+112.4 .AND. vlEc=1
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
                CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=1  ;
                     .AND. wnIv$"12"
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
                CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=2  ;
                     .AND. wnIv$"12"
                     SELECT deT_fact
                     DO orD_0000a WITH "1301", "V", "F1301COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. mcSt=1 .AND. vsTo-vcAn+ ;
                         f1301can<0 .AND. wnIv$"12"
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
           112.4 .AND. mcCc<=vcO1+137.6 .AND. vlEc=1
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
                CASE vsTo-vcAn<0 .AND. mcSt=1 .AND. vcSt=1 .AND. wsW0=1  ;
                     .AND. wnIv$"12"
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
                CASE vsTo-vcAn<0 .AND. mcSt=1 .AND. vcSt=1 .AND. wsW0=2  ;
                     .AND. wnIv$"12"
                     SELECT deT_fact
                     DO orD_0000a WITH "1301", "V", "F1301COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. mcSt=1 .AND. vsTo-vcAn+ ;
                         f1301can<0 .AND. wnIv$"12"
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
           137.6 .AND. mcCc<=vcO1+181 .AND. vlEc=1
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
                CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=1  ;
                     .AND. wnIv$"12"
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
                CASE mcSt=1 .AND. vsTo-vcAn<0 .AND. vcSt=1 .AND. wsW0=2  ;
                     .AND. wnIv$"12"
                     SELECT deT_fact
                     DO orD_0000a WITH "1301", "V", "F1301COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
                     DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF() .AND. mcSt=1 .AND. vsTo-vcAn+ ;
                         f1301can<0 .AND. wnIv$"12"
                          STORE "Cantidad no puede ser mayor a Stock..."  ;
                                TO mmSj
                     ENDIF
                     SELECT teMporal
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0 .AND. vpDc>0 .AND. wnIv="1"
                DO caL_1200b IN PVI1200B
                DO CASE
                     CASE vmOn=1 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV1  ;
                          .AND. vmV1<>0
                          STORE "El Descuento es mayor al permitido..." TO mmSj
                          STORE 0 TO vpDc
                          DO caL_1200b IN PVI1200B
                     CASE vmOn=2 .AND. vpRe-ROUND(vdCt/vpIe, 4)<vmV2  ;
                          .AND. vmV2<>0
                          STORE "El Descuento es mayor al permitido..." TO mmSj
                          STORE 0 TO vpDc
                          DO caL_1200b IN PVI1200B
                ENDCASE
                DO diS_1200b IN PVI1200B WITH "R"
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
           ELSE
                STORE 5 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO1 .AND. mcCc<= ;
           ucLn+0.4 .AND. vlEc=1 .AND. viOm=1
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=vcO1 .AND. mcCc<= ;
           ucLn+0.4 .AND. vlEc=1
           STORE k_Clic TO mkEy
           DO ve1_1300b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ELSE
                IF LEN(ALLTRIM(vcOd))<>0 .AND. LEN(ALLTRIM(vdCr))<>0  ;
                   .AND. vcAn<>0
                     DO grA_1300b
                ENDIF
                IF viOm=01
                     DO blA_1200b IN PVI1200B
                ELSE
                     DO diS_1200b IN PVI1200B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE ifIl+INT(mfIl-ifIl) TO vfIl
                GOTO irEc
                SKIP INT(mfIl-ifIl)
                STORE RECNO() TO vrEc
                DO muE_1200b IN PVI1200B
                DO diS_1200b IN PVI1200B WITH "R"
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
PROCEDURE Hl1_1300b
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
ENDPROC
*
