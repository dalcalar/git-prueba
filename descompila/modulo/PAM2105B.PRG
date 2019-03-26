 = INKEY(0.01)
 STORE 01 TO viTe
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO BOTTOM
 STORE RECNO() TO frEc
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE SPACE(02) TO vcUx, vmNd
           STORE SPACE(30) TO vnUx, vsIg
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_2105b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_2105b
      CASE viOm=02
           GOTO vrEc
           DO muE_2105b
 ENDCASE
 DO diS_2105b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2105b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2105b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=01
                          DO blA_2105b
                     ELSE
                          DO diS_2105b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F3 .AND. viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                STORE "No hay palabras o frases que buscar..." TO mmSj
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe=1
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
                DO paC2111w WITH "4"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT prOductos
                SEEK ALLTRIM(vcDg)+"*"
                IF mkEy=k_Enter
                     DO prO_2105b
                     DO diS_2105b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. LEN(ALLTRIM(vcOd))=0 .AND. vsW2=1 .AND. viTe=4
                = INKEY(0.01)
                SELECT unIdad
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                DO orD_0000a WITH "9213", "U", "F9213DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q2_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB3 REST
                SET CONFIRM OFF
                DO p2_0000a
                DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f9213uni TO vcUx
                     STORE f9213des TO vnUx
                     DO diS_2105b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. ((vsW2=1 .AND. ((LEN(ALLTRIM(vcOd))=0  ;
                .AND. viTe=5) .OR. viTe=4)) .OR. (vsW2=2 .AND. viTe=2)  ;
                .OR. (vsW2=3 .AND. viTe=3) .OR. (vsW2=4 .AND. viTe=2))
                = INKEY(0.01)
                SELECT moNedas
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                DO orD_0000a WITH "9226", "U", "F9226SIG", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q2_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB4 REST
                SET CONFIRM OFF
                DO p2_0000a
                DO orD_0000a WITH "9226", "U", "F9226COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f9226cod TO vmNd
                     STORE f9226sig TO vsIg
                     STORE f9226tca TO vtCa
                     DO diS_2105b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=1
                STORE 99 TO mkEy
                STORE 01 TO viTe, vtP1
                IF LEN(ALLTRIM(vcD1))=0
                     STORE SPACE(02) TO vcUx
                     STORE SPACE(30) TO vnUx
                ENDIF
                STORE SPACE(02) TO vcUc
                STORE SPACE(30) TO vnUc
                STORE SPACE(120) TO vdEs
                STORE SPACE(mtMc) TO vcOd
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6 .AND. viTe=1
                = INKEY(0.01)
                SELECT tiP_prod
                SET FILTER TO LEN(ALLTRIM(f9211let))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Codificación Nemotécnica registrada..."  ;
                           TO mmSj
                ELSE
                     STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                     STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_let
                     DO q2_0000a
                     DO puC9211w WITH "9"
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
                                    DO prO_2105b
                                    DO diS_2105b WITH "R"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT teMporal
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4 .OR. mkEy=k_F6  ;
                .OR. mkEy=k_Ctrl_del
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2105b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2105b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_2105b
                ELSE
                     DO diS_2105b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F5 .AND. vsW3=1
                STORE 2 TO vsW3
                DO reS_2105b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. vsW3=2
                STORE 1 TO vsW3
                DO reS_2105b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
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
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE SPACE(02) TO vcUc
                          STORE SPACE(30) TO vnUc
                          STORE SPACE(120) TO vdEs
                          STORE 01 TO vtP1
                     CASE viTe=1
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          DO CASE
                               CASE EOF()
                                    STORE  ;
                                     "Producto no registrado en el Sistema..."  ;
                                     TO mmSj
                               CASE f2111est="9"
                                    STORE  ;
                                     "Producto se encuentra ANULADO..." TO mmSj
                               OTHERWISE
                                    SELECT teMporal
                                    SET ORDER TO FTM1CO1
                                    SEEK ALLTRIM(vcOd)+"*"
                                    IF  .NOT. EOF() .AND. RECNO()<>vrEc
                                         STORE "Código ya digitado..." TO mmSj
                                         DO poNmsj
                                    ENDIF
                                    STORE k_Enter TO mkEy
                                    DO prO_2105b
                          ENDCASE
                          SELECT teMporal
                          SET ORDER TO
                          DO diS_2105b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE vsW2=1 .AND. viTe=2 .AND. LEN(ALLTRIM(vcOd))=0  ;
                          .AND. LEN(ALLTRIM(vcD1))=0 .AND. LEN(ALLTRIM(vdCr))=0
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0 .AND. viTe=4  ;
                          .AND. LEN(ALLTRIM(vcUx))=0
                          STORE "Unidad de Compra tiene que estar registrada..."  ;
                                TO mmSj
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0 .AND. viTe=5  ;
                          .AND. LEN(ALLTRIM(vmNd))=0
                          STORE "Moneda tiene que estar registrada..." TO mmSj
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0 .AND. viTe=6  ;
                          .AND. vfOb<0 .AND. vsW1=1
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0 .AND. viTe=6  ;
                          .AND. vcFr<0 .AND. vsW1=2
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0 .AND. viTe=6  ;
                          .AND. vcIf<0 .AND. vsW1=3
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=1 .AND. viTe=4 .AND. LEN(ALLTRIM(vmNd))=0
                          STORE "Moneda tiene que estar registrada..." TO mmSj
                     CASE vsW2=1 .AND. viTe=5 .AND. vfOb<0 .AND. vsW1=1
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=1 .AND. viTe=5 .AND. vcFr<0 .AND. vsW1=2
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=1 .AND. viTe=5 .AND. vcIf<0 .AND. vsW1=3
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=2 .AND. viTe=2 .AND. LEN(ALLTRIM(vmNd))=0
                          STORE "Moneda tiene que estar registrada..." TO mmSj
                     CASE vsW2=2 .AND. viTe=3 .AND. vfOb<0 .AND. vsW1=1
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=2 .AND. viTe=3 .AND. vcFr<0 .AND. vsW1=2
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=2 .AND. viTe=3 .AND. vcIf<0 .AND. vsW1=3
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=3 .AND. viTe=3 .AND. LEN(ALLTRIM(vmNd))=0
                          STORE "Moneda tiene que estar registrada..." TO mmSj
                     CASE vsW2=3 .AND. viTe=4 .AND. vfOb<0 .AND. vsW1=1
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=3 .AND. viTe=4 .AND. vcFr<0 .AND. vsW1=2
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=3 .AND. viTe=4 .AND. vcIf<0 .AND. vsW1=3
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=4 .AND. viTe=2 .AND. LEN(ALLTRIM(vmNd))=0
                          STORE "Moneda tiene que estar registrada..." TO mmSj
                     CASE vsW2=4 .AND. viTe=3 .AND. vfOb<0 .AND. vsW1=1
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=4 .AND. viTe=3 .AND. vcFr<0 .AND. vsW1=2
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=4 .AND. viTe=3 .AND. vcIf<0 .AND. vsW1=3
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     CASE vsW2=4 .AND. viTe=4 .AND. vsW4=1 .AND. vpD1<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=5 .AND. vsW4=1 .AND. vpD2<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=4 .AND. vsW4=2 .AND. vpD3<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=5 .AND. vsW4=2 .AND. vpD4<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=4 .AND. vsW4=3 .AND. vpD5<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=5 .AND. vsW4=3 .AND. vpD6<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=4 .AND. vsW4=4 .AND. vpD7<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=5 .AND. vsW4=4 .AND. vpD8<0
                          STORE "Porcentaje no puede ser menor a cero..."  ;
                                TO mmSj
                     CASE vsW2=4 .AND. viTe=6 .AND. vfCt<0
                          STORE "Factor no puede ser menor a cero..." TO mmSj
                     OTHERWISE
                          DO diS_2105b WITH "R"
                ENDCASE
                DO CASE
                     CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE 6 TO vuLt
                     CASE vsW2=1
                          STORE 5 TO vuLt
                     CASE vsW2=2
                          STORE 3 TO vuLt
                     CASE vsW2=3
                          STORE 4 TO vuLt
                     CASE vsW2=4
                          STORE 6 TO vuLt
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<vuLt
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+5.4, ffIl, ucLn, 1
                DO liN_2105a WITH ifIl, ffIl+1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, mcO0 CLEAR TO ufIl+1, mcO0+4.4
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
                     DO muE_2105b
                     DO diS_2105b WITH "N"
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
                     DO muE_2105b
                ELSE
                     DO liM_2105b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. viOm=2
                STORE vrEc TO xrEc
                @vFIL,mCO0+0.2 Get xREC Font "&mLetAri",9 Style "NQ" Size 1,4 Pict "999" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
                DO coL_fondo
                @vFIL,mCO0+0.1 Say xREC Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
                IF mkEy=k_Enter
                     DO caM_2105b
                ENDIF
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. vsW2=4
                IF vsW4=4
                     STORE 1 TO vsW4
                ELSE
                     STORE vsW4+1 TO vsW4
                ENDIF
                DO daT_2105b
           CASE mkEy=k_F9
                IF vsW2=4
                     STORE 1 TO vsW2
                ELSE
                     STORE vsW2+1 TO vsW2
                ENDIF
                DO daT_2105b
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1cod<>vcOd .OR. ftM1cdg<> ;
                vcD1 .OR. ftM1des<>vdEs .OR. ftM1dcr<>vdCr .OR. ftM1cux<> ;
                vcUx .OR. ftM1mon<>vmNd .OR. ftM1fob<>vfOb .OR. ftM1cfr<> ;
                vcFr .OR. ftM1cif<>vcIf)
                DO ve1_2105b
                DO caL_2105b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (vpD1<0 .OR. vpD2<0 .OR. vpD3<0 .OR. vpD4< ;
                0 .OR. vpD5<0 .OR. vpD6<0 .OR. vpD7<0 .OR. vpD8<0)
                STORE "Porcentaje no puede ser menor a cero..." TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (vfOb<>0 .OR. vcFr<>0 .OR. vcIf<>0) .AND.  ;
                (LEN(ALLTRIM(vcOd))<>0 .OR. LEN(ALLTRIM(vcD1))<>0 .OR.  ;
                LEN(ALLTRIM(vdCr))<>0)
                DO grA_2105b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_2105b
                ELSE
                     DO diS_2105b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_2105b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2105a WITH ifIl, ffIl+1
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
                     IF vsW2=1
                          DO CASE
                               CASE LEN(ALLTRIM(vcOd))=0 .AND.  ;
                                    LEN(ALLTRIM(ftM1cod))<>0 .AND. viTe=5
                                    STORE 4 TO viTe
                               CASE LEN(ALLTRIM(vcOd))=0 .AND.  ;
                                    LEN(ALLTRIM(ftM1cod))<>0 .AND. viTe=6
                                    STORE 5 TO viTe
                               CASE LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                                    LEN(ALLTRIM(ftM1cod))=0 .AND. viTe=4
                                    STORE 5 TO viTe
                               CASE LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                                    LEN(ALLTRIM(ftM1cod))=0 .AND. viTe=5
                                    STORE 6 TO viTe
                          ENDCASE
                     ENDIF
                     DO muE_2105b
                ELSE
                     DO liM_2105b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_2105b
                ELSE
                     DO diS_2105b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_2105a WITH ifIl, ffIl+1
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
                IF vsW2=1
                     DO CASE
                          CASE LEN(ALLTRIM(vcOd))=0 .AND.  ;
                               LEN(ALLTRIM(ftM1cod))<>0 .AND. viTe=5
                               STORE 4 TO viTe
                          CASE LEN(ALLTRIM(vcOd))=0 .AND.  ;
                               LEN(ALLTRIM(ftM1cod))<>0 .AND. viTe=6
                               STORE 5 TO viTe
                          CASE LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                               LEN(ALLTRIM(ftM1cod))=0 .AND. viTe=4
                               STORE 5 TO viTe
                          CASE LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                               LEN(ALLTRIM(ftM1cod))=0 .AND. viTe=5
                               STORE 6 TO viTe
                     ENDCASE
                ENDIF
                DO muE_2105b
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_2105b
                ELSE
                     DO diS_2105b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_2105b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2105b
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_2105b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_2105b
                ELSE
                     DO diS_2105b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_2105b
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_2105b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_2105b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2105b
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_2105b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_2105b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2105b
                DO diS_2105b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,118
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+24 Say "SE DEBE DIGITAR O ESCOGER EL CÓDIGO INTERNO DE PRODUCTO..."               Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=2
                @mMF2,mMC2+26 Say "SE DEBE DIGITAR EL CÓDIGO DEL PRODUCTO DEL PROVEEDOR..."                  Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=3
                @mMF2,mMC2+16 Say "LA DESCRIPCIÓN ES DE 80 CARACTERES ALFANUMÉRICOS, ES LA DEL PROVEEDOR..." Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=4 .AND. LEN(ALLTRIM(vcOd))=0
                @mMF2,mMC2+24 Say "SE TIENE QUE ESCOGER LA UNIDAD DE COMPRA YA REGISTRADA..."                Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=5 .AND. LEN(ALLTRIM(vcOd))=0
                @mMF2,mMC2+28 Say "SE TIENE QUE ESCOGER LA MONEDA YA REGISTRADA..."                          Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=6 .AND. LEN(ALLTRIM(vcOd))=0
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=4
                @mMF2,mMC2+28 Say "SE TIENE QUE ESCOGER LA MONEDA YA REGISTRADA..."                          Font "&mLetRom",9 Style "BQ"
           CASE vsW1=1 .AND. viTe=5
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=2 .AND. viTe=2
                @mMF2,mMC2+28 Say "SE TIENE QUE ESCOGER LA MONEDA YA REGISTRADA..."                          Font "&mLetRom",9 Style "BQ"
           CASE vsW1=2 .AND. viTe=3
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=3 .AND. viTe=2
                @mMF2,mMC2+16 Say "EL COMENTARIO ES DE 70 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO..."    Font "&mLetRom",9 Style "BQ"
           CASE vsW1=3 .AND. viTe=3
                @mMF2,mMC2+28 Say "SE TIENE QUE ESCOGER LA MONEDA YA REGISTRADA..."                          Font "&mLetRom",9 Style "BQ"
           CASE vsW1=3 .AND. viTe=4
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=4 .AND. viTe=2
                @mMF2,mMC2+28 Say "SE TIENE QUE ESCOGER LA MONEDA YA REGISTRADA..."                          Font "&mLetRom",9 Style "BQ"
           CASE vsW1=4 .AND. viTe=3
                @mMF2,mMC2+24 Say "EL PRECIO ES UN CAMPO DE 6 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=4 .AND. viTe=4
                @mMF2,mMC2+24 Say "EL DCTO-1 ES UN CAMPO DE 3 ENTEROS Y 3 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=4 .AND. viTe=5
                @mMF2,mMC2+24 Say "EL DCTO-1 ES UN CAMPO DE 3 ENTEROS Y 3 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
           CASE vsW1=4 .AND. viTe=6
                @mMF2,mMC2+24 Say "EL FACTOR ES UN CAMPO DE 3 ENTEROS Y 6 DECIMALES..."                      Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @vFIL,mCO0+005.4 Edit vCOD Font "&mLetAri",9 Style "NQ" Size 1,18,15
           CASE vsW2=1 .AND. viTe=2
                @vFIL,mCO0+024.4 Edit vCD1 Font "&mLetAri",9 Style "NQ" Size 1,18,20
           CASE vsW2=1 .AND. viTe=3
                @vFIL,mCO0+043.4 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,80,80
           CASE vsW2=1 .AND. viTe=4 .AND. LEN(ALLTRIM(vcOd))=0
                @vFIL,mCO0+124.4 Edit vNUX Font "&mLetAri",9 Style "NQ" Size 1,17.5,30
           CASE vsW2=1 .AND. viTe=5 .AND. LEN(ALLTRIM(vcOd))=0
                @vFIL,mCO0+143.0 Edit vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2,30
           CASE vsW2=1 .AND. viTe=6 .AND. LEN(ALLTRIM(vcOd))=0 .AND. vsW1=1
                @vFIL,mCO0+151.3 Get  vFOB Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=1 .AND. viTe=6 .AND. LEN(ALLTRIM(vcOd))=0 .AND. vsW1=2
                @vFIL,mCO0+151.3 Get  vCFR Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=1 .AND. viTe=6 .AND. LEN(ALLTRIM(vcOd))=0 .AND. vsW1=3
                @vFIL,mCO0+151.3 Get  vCIF Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=1 .AND. viTe=4
                @vFIL,mCO0+143.0 Edit vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2,30
           CASE vsW2=1 .AND. viTe=5 .AND. vsW1=1
                @vFIL,mCO0+151.3 Get  vFOB Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=1 .AND. viTe=5 .AND. vsW1=2
                @vFIL,mCO0+151.3 Get  vCFR Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=1 .AND. viTe=5 .AND. vsW1=3
                @vFIL,mCO0+151.3 Get  vCIF Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=2 .AND. viTe=2
                @vFIL,mCO0+143.0 Edit vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2,30
           CASE vsW2=2 .AND. viTe=3 .AND. vsW1=1
                @vFIL,mCO0+151.3 Get  vFOB Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=2 .AND. viTe=3 .AND. vsW1=2
                @vFIL,mCO0+151.3 Get  vCFR Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=2 .AND. viTe=3 .AND. vsW1=3
                @vFIL,mCO0+151.3 Get  vCIF Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=3 .AND. viTe=2
                @vFIL,mCO0+024.4 Edit vCM3 Font "&mLetAri",9 Style "NQ" Size 1,98.9,100
           CASE vsW2=3 .AND. viTe=3
                @vFIL,mCO0+143.0 Edit vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2,30
           CASE vsW2=3 .AND. viTe=4 .AND. vsW1=1
                @vFIL,mCO0+151.3 Get  vFOB Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=3 .AND. viTe=4 .AND. vsW1=2
                @vFIL,mCO0+151.3 Get  vCFR Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=3 .AND. viTe=4 .AND. vsW1=3
                @vFIL,mCO0+151.3 Get  vCIF Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=2
                @vFIL,mCO0+103.0 Edit vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2,30
           CASE vsW2=4 .AND. viTe=3 .AND. vsW1=1
                @vFIL,mCO0+111.4 Get  vFOB Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=3 .AND. vsW1=2
                @vFIL,mCO0+111.4 Get  vCFR Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=3 .AND. vsW1=3
                @vFIL,mCO0+111.4 Get  vCIF Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999999.999999" Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=4 .AND. vsW4=1
                @vFIL,mCO0+132.2 Get  vPD1 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=5 .AND. vsW4=1
                @vFIL,mCO0+143.1 Get  vPD2 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=4 .AND. vsW4=2
                @vFIL,mCO0+132.2 Get  vPD3 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=5 .AND. vsW4=2
                @vFIL,mCO0+143.1 Get  vPD4 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=4 .AND. vsW4=3
                @vFIL,mCO0+132.2 Get  vPD5 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=5 .AND. vsW4=3
                @vFIL,mCO0+143.1 Get  vPD6 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=4 .AND. vsW4=4
                @vFIL,mCO0+132.2 Get  vPD7 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=5 .AND. vsW4=4
                @vFIL,mCO0+143.1 Get  vPD8 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"       Color ,&mColBlN
           CASE vsW2=4 .AND. viTe=6
                @vFIL,mCO0+154.2 Get  vFCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999.999999"    Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_2105b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_2105b
      DO diS_2105b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_2105a WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Pro_2105b
 SELECT prOductos
 IF  .NOT. EOF()
      STORE f2111cod TO vcOd
      STORE f2111des TO vdEs
      STORE f2111cuc TO vcUc
      STORE f2111nuc TO vnUc
      STORE f2111cux TO vcUx
      STORE f2111nux TO vnUx
      STORE f2111tip TO vtP1
 ELSE
      STORE "01" TO vtP1
 ENDIF
 IF LEN(ALLTRIM(vcUx))=0
      STORE vcUc TO vcUx
 ENDIF
 SELECT unIdad
 SEEK vcUc
 IF  .NOT. EOF()
      STORE f9213des TO vnUc
 ELSE
      STORE " " TO vnUc
 ENDIF
 SEEK vcUx
 IF  .NOT. EOF()
      STORE f9213des TO vnUx
 ELSE
      STORE " " TO vnUx
 ENDIF
 SELECT tiP_prod
 SEEK vtP1
 IF  .NOT. EOF()
      STORE f9211tpo TO vtP1
 ELSE
      STORE 1 TO vtP1
 ENDIF
 SELECT teMporal
ENDPROC
*
PROCEDURE Cal_2105b
 PRIVATE ppRe
 DO CASE
      CASE vtP1=2
           STORE 10.77 TO vpIe
      OTHERWISE
           STORE 1 TO vpIe
 ENDCASE
 DO CASE
      CASE vtIp=1 .AND. vsW1=1 .AND. vfOb<>0
           STORE ROUND(vfOb+(vfOb*miGv/100), 6) TO vcFr
      CASE vtIp=1 .AND. vsW1=2 .AND. vcFr<>0
           STORE ROUND(vcFr/(1+(miGv/100)), 6) TO vfOb
 ENDCASE
 STORE vfOb*vpD1/100 TO pdCt
 STORE vfOb-pdCt TO ppRe
 STORE ppRe*vpD2/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD3/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD4/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD5/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD6/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD7/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD8/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE (vfOb*vfCt)+ppRe TO vfO1
 STORE vfO1/vpIe TO vfO1
 STORE vcFr*vpD1/100 TO pdCt
 STORE vcFr-pdCt TO ppRe
 STORE ppRe*vpD2/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD3/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD4/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD5/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD6/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD7/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD8/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE (vcFr*vfCt)+ppRe TO vcF1
 STORE vcF1/vpIe TO vcF1
 STORE vcIf*vpD1/100 TO pdCt
 STORE vcIf-pdCt TO ppRe
 STORE ppRe*vpD2/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD3/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD4/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD5/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD6/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD7/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE ppRe*vpD8/100 TO pdCt
 STORE ppRe-pdCt TO ppRe
 STORE (vcIf*vfCt)+ppRe TO vcI1
 STORE vcI1/vpIe TO vcI1
ENDPROC
*
PROCEDURE Dis_2105b
 PARAMETER ptIp
 PRIVATE psTo, ppRe, ppR1
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 0 TO psTo
 ELSE
      STORE f2111sto TO psTo
 ENDIF
 SELECT teMporal
 DO caL_2105b
 DO CASE
      CASE vsW1=1
           STORE vfOb TO ppRe
           STORE vfO1 TO ppR1
      CASE vsW1=2
           STORE vcFr TO ppRe
           STORE vcF1 TO ppR1
      CASE vsW1=3
           STORE vcIf TO ppRe
           STORE vcI1 TO ppR1
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfIl, ucLn-3.9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFIL,mCO0+0.1 Say vREC Font "&mLetAri",9 Style "NQ" Size 1,04.1 Pict "999"
 @vFIL,mCO0+5.4 Say vCOD Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S15"
 IF vsW2<4
      @vFIL,mCO0+143.0 Say vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2 Pict "@S10"
      @vFIL,mCO0+151.1 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
      @vFIL,mCO0+151.3 Say pPRE Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999,999.999999"
      @vFIL,mCO0+170.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.4
      @vFIL,mCO0+171.9 Say pSTO Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDIF
 DO CASE
      CASE vsW2=1
           @vFIL,mCO0+024.4 Say vCD1 Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S20"
           @vFIL,mCO0+043.4 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,80.0 Pict "@S80"
           @vFIL,mCO0+124.4 Say vNUX Font "&mLetAri",9 Style "NQ" Size 1,17.5 Pict "@S20"
      CASE vsW2=2
           @vFIL,mCO0+024.4 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,98.9 Pict "@S101"
           @vFIL,mCO0+124.4 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,17.5 Pict "@S20"
      CASE vsW2=3
           @vFIL,mCO0+024.4 Say vCM3 Font "&mLetAri",9 Style "NQ" Size 1,98.9 Pict "@S100"
           @vFIL,mCO0+124.4 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,17.5 Pict "@S20"
      CASE vsW2=4
           @vFIL,mCO0+024.4 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,69.0 Pict "@S72"
           @vFIL,mCO0+094.3 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,07.5 Pict "@S10"
           @vFIL,mCO0+103.0 Say vSIG Font "&mLetAri",9 Style "NQ" Size 1,07.2 Pict "@S10"
           @vFIL,mCO0+111.4 Say pPRE Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "999,999.999999"
           @vFIL,mCO0+154.2 Say vFCT Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999.999999"
           @vFIL,mCO0+169.5 Say pPR1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+132.2 Say vPD1 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                     @vFIL,mCO0+143.1 Say vPD2 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                CASE vsW4=2
                     @vFIL,mCO0+132.2 Say vPD3 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                     @vFIL,mCO0+143.1 Say vPD4 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                CASE vsW4=3
                     @vFIL,mCO0+132.2 Say vPD5 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                     @vFIL,mCO0+143.1 Say vPD6 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                CASE vsW4=4
                     @vFIL,mCO0+132.2 Say vPD7 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
                     @vFIL,mCO0+143.1 Say vPD8 Font "&mLetAri",9 Style "NQ" Size 1,09.4 Pict "999.999"
           ENDCASE
           @vFIL,mCO0+111.2 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
           @vFIL,mCO0+130.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.4
           @vFIL,mCO0+132.0 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
           @vFIL,mCO0+141.6 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
           @vFIL,mCO0+142.9 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
           @vFIL,mCO0+152.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
           @vFIL,mCO0+154.0 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
           @vFIL,mCO0+168.2 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
 ENDCASE
 DO coLsc3
 @fFIL+1.9,mCO0+32.4 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,91 Pict "@S94"
 @fFIL+3.6,mCO0+32.4 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,91 Pict "@S80"
 @fFIL+5.1,mCO0+32.4 Say vCM3 Font "&mLetAri",9 Style "NQ" Size 1,91 Pict "@S71"
ENDPROC
*
PROCEDURE Bla_2105b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_2105a WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_2105b
 STORE SPACE(mtMc) TO vcOd
 STORE SPACE(20) TO vcD1
 STORE SPACE(70) TO vcM3
 STORE SPACE(80) TO vdCr
 STORE SPACE(120) TO vdEs
 STORE SPACE(02) TO vcUc, vcUx
 STORE SPACE(30) TO vnUc, vnUx
 STORE 01 TO viOm, viTe, vtP1
 STORE 00 TO vsTo, vtCa, vpD1, vpD2, vpD3, vpD4, vpD5, vpD6, vpD7, vpD8, vfCt
 STORE 00 TO vfOb, vcFr, vcIf, vfO1, vcF1, vcI1
ENDPROC
*
PROCEDURE Mue_2105b
 STORE ftM1cod TO vcOd
 STORE ftM1cdg TO vcD1
 STORE ftM1des TO vdEs
 STORE ftM1dcr TO vdCr
 STORE ftM1cuc TO vcUc
 STORE ftM1nuc TO vnUc
 STORE ftM1cux TO vcUx
 STORE ftM1nux TO vnUx
 STORE ftM1mon TO vmNd
 STORE ftM1sig TO vsIg
 STORE ftM1tca TO vtCa
 STORE ftM1fob TO vfOb
 STORE ftM1cfr TO vcFr
 STORE ftM1cif TO vcIf
 STORE ftM1cm3 TO vcM3
 STORE ftM1pd1 TO vpD1
 STORE ftM1pd2 TO vpD2
 STORE ftM1pd3 TO vpD3
 STORE ftM1pd4 TO vpD4
 STORE ftM1pd5 TO vpD5
 STORE ftM1pd6 TO vpD6
 STORE ftM1pd7 TO vpD7
 STORE ftM1pd8 TO vpD8
 STORE ftM1fac TO vfCt
 STORE ftM1fo1 TO vfO1
 STORE ftM1cf1 TO vcF1
 STORE ftM1ci1 TO vcI1
 STORE 02 TO viOm
 IF LEN(ALLTRIM(vcOd))<>0
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      DO prO_2105b
 ELSE
      STORE 1 TO vtP1
 ENDIF
 DO caL_2105b
 DO CASE
      CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE 6 TO vuLt
      CASE vsW2=1
           STORE 5 TO vuLt
      CASE vsW2=2
           STORE 3 TO vuLt
      CASE vsW2=3
           STORE 4 TO vuLt
      CASE vsW2=4
           STORE 6 TO vuLt
 ENDCASE
 DO CASE
      CASE viTe<1
           STORE 1 TO viTe
      CASE viTe>vuLt
           STORE vuLt TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2105b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
 ENDIF
 = INKEY(0.01)
 SELECT teMporal
 DO caL_2105b
 REPLACE ftM1cod WITH vcOd
 REPLACE ftM1cdg WITH vcD1
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1dcr WITH vdCr
 REPLACE ftM1cuc WITH vcUc
 REPLACE ftM1nuc WITH vnUc
 REPLACE ftM1cux WITH vcUx
 REPLACE ftM1nux WITH vnUx
 REPLACE ftM1mon WITH vmNd
 REPLACE ftM1sig WITH vsIg
 REPLACE ftM1tca WITH vtCa
 REPLACE ftM1fob WITH vfOb
 REPLACE ftM1cfr WITH vcFr
 REPLACE ftM1cif WITH vcIf
 REPLACE ftM1pd1 WITH vpD1
 REPLACE ftM1pd2 WITH vpD2
 REPLACE ftM1pd3 WITH vpD3
 REPLACE ftM1pd4 WITH vpD4
 REPLACE ftM1pd5 WITH vpD5
 REPLACE ftM1pd6 WITH vpD6
 REPLACE ftM1pd7 WITH vpD7
 REPLACE ftM1pd8 WITH vpD8
 REPLACE ftM1fac WITH vfCt
 REPLACE ftM1cm3 WITH vcM3
 REPLACE ftM1fo1 WITH vfO1
 REPLACE ftM1cf1 WITH vcF1
 REPLACE ftM1ci1 WITH vcI1
 STORE 02 TO viOm
ENDPROC
*
PROCEDURE Ve1_2105b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
           STORE "Unidad de Compra tiene que estar registrada..." TO mmSj
      CASE LEN(ALLTRIM(vmNd))=0
           STORE "Moneda tiene que estar registrada..." TO mmSj
      CASE vfOb<0
           STORE "Precio no puede ser menor a cero..." TO mmSj
      CASE vcFr<0
           STORE "Precio no puede ser menor a cero..." TO mmSj
      CASE vcIf<0
           STORE "Precio no puede ser menor a cero..." TO mmSj
      CASE vsW2=4 .AND. (vpD1<0 .OR. vpD2<0 .OR. vpD3<0 .OR. vpD4<0 .OR.  ;
           vpD5<0 .OR. vpD6<0 .OR. vpD7<0 .OR. vpD8<0)
           STORE "Porcentaje no puede ser menor a cero..." TO mmSj
      CASE vsW2=4 .AND. vfCt<0
           STORE "Factor no puede ser menor a cero..." TO mmSj
      CASE LEN(ALLTRIM(vcOd))=0
           IF LEN(ALLTRIM(vcD1))=0
                STORE SPACE(02) TO vcUx
                STORE SPACE(30) TO vnUx
           ENDIF
           STORE SPACE(02) TO vcUc
           STORE SPACE(30) TO vnUc
           STORE SPACE(120) TO vdEs
           STORE 01 TO vtP1
      OTHERWISE
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE "Producto no registrado en el Sistema..." TO mmSj
           ELSE
                DO prO_2105b
           ENDIF
           SELECT teMporal
 ENDCASE
ENDPROC
*
PROCEDURE Cam_2105b
 SELECT teMporal_2
 ZAP
 REINDEX
 SELECT teMporal
 GOTO TOP
 STORE 0 TO crEc
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1cdg TO vcD1
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1cux TO vcUx
      STORE ftM1nux TO vnUx
      STORE ftM1mon TO vmNd
      STORE ftM1sig TO vsIg
      STORE ftM1tca TO vtCa
      STORE ftM1fob TO vfOb
      STORE ftM1cfr TO vcFr
      STORE ftM1cif TO vcIf
      STORE ftM1pd1 TO vpD1
      STORE ftM1pd2 TO vpD2
      STORE ftM1pd3 TO vpD3
      STORE ftM1pd4 TO vpD4
      STORE ftM1pd5 TO vpD5
      STORE ftM1pd6 TO vpD6
      STORE ftM1pd7 TO vpD7
      STORE ftM1pd8 TO vpD8
      STORE ftM1fac TO vfCt
      STORE ftM1cm3 TO vcM3
      STORE ftM1fo1 TO vfO1
      STORE ftM1cf1 TO vcF1
      STORE ftM1ci1 TO vcI1
      STORE RECNO() TO crE1
      STORE crEc+1 TO crEc
      SELECT teMporal_2
      APPEND BLANK
      DO CASE
           CASE crE1=vrEc
                STORE crEc-1 TO crEc
                REPLACE ftM2rec WITH xrEc
           CASE crEc=xrEc
                STORE crEc+1 TO crEc
                REPLACE ftM2rec WITH crEc
           OTHERWISE
                REPLACE ftM2rec WITH crEc
      ENDCASE
      REPLACE ftM2cod WITH vcOd
      REPLACE ftM2cdg WITH vcD1
      REPLACE ftM2des WITH vdEs
      REPLACE ftM2dcr WITH vdCr
      REPLACE ftM2cuc WITH vcUc
      REPLACE ftM2nuc WITH vnUc
      REPLACE ftM2cux WITH vcUx
      REPLACE ftM2nux WITH vnUx
      REPLACE ftM2mon WITH vmNd
      REPLACE ftM2sig WITH vsIg
      REPLACE ftM2tca WITH vtCa
      REPLACE ftM2fob WITH vfOb
      REPLACE ftM2cfr WITH vcFr
      REPLACE ftM2cif WITH vcIf
      REPLACE ftM2pd1 WITH vpD1
      REPLACE ftM2pd2 WITH vpD2
      REPLACE ftM2pd3 WITH vpD3
      REPLACE ftM2pd4 WITH vpD4
      REPLACE ftM2pd5 WITH vpD5
      REPLACE ftM2pd6 WITH vpD6
      REPLACE ftM2pd7 WITH vpD7
      REPLACE ftM2pd8 WITH vpD8
      REPLACE ftM2fac WITH vfCt
      REPLACE ftM2cm3 WITH vcM3
      REPLACE ftM2fo1 WITH vfO1
      REPLACE ftM2cf1 WITH vcF1
      REPLACE ftM2ci1 WITH vcI1
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 ZAP
 SELECT teMporal_2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2cod TO vcOd
      STORE ftM2cdg TO vcD1
      STORE ftM2des TO vdEs
      STORE ftM2dcr TO vdCr
      STORE ftM2cuc TO vcUc
      STORE ftM2nuc TO vnUc
      STORE ftM2cux TO vcUx
      STORE ftM2nux TO vnUx
      STORE ftM2mon TO vmNd
      STORE ftM2sig TO vsIg
      STORE ftM2tca TO vtCa
      STORE ftM2fob TO vfOb
      STORE ftM2cfr TO vcFr
      STORE ftM2cif TO vcIf
      STORE ftM2pd1 TO vpD1
      STORE ftM2pd2 TO vpD2
      STORE ftM2pd3 TO vpD3
      STORE ftM2pd4 TO vpD4
      STORE ftM2pd5 TO vpD5
      STORE ftM2pd6 TO vpD6
      STORE ftM2pd7 TO vpD7
      STORE ftM2pd8 TO vpD8
      STORE ftM2fac TO vfCt
      STORE ftM2cm3 TO vcM3
      STORE ftM2fo1 TO vfO1
      STORE ftM2cf1 TO vcF1
      STORE ftM2ci1 TO vcI1
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1cdg WITH vcD1
      REPLACE ftM1des WITH vdEs
      REPLACE ftM1dcr WITH vdCr
      REPLACE ftM1cuc WITH vcUc
      REPLACE ftM1nuc WITH vnUc
      REPLACE ftM1cux WITH vcUx
      REPLACE ftM1nux WITH vnUx
      REPLACE ftM1mon WITH vmNd
      REPLACE ftM1sig WITH vsIg
      REPLACE ftM1tca WITH vtCa
      REPLACE ftM1fob WITH vfOb
      REPLACE ftM1cfr WITH vcFr
      REPLACE ftM1cif WITH vcIf
      REPLACE ftM1pd1 WITH vpD1
      REPLACE ftM1pd2 WITH vpD2
      REPLACE ftM1pd3 WITH vpD3
      REPLACE ftM1pd4 WITH vpD4
      REPLACE ftM1pd5 WITH vpD5
      REPLACE ftM1pd6 WITH vpD6
      REPLACE ftM1pd7 WITH vpD7
      REPLACE ftM1pd8 WITH vpD8
      REPLACE ftM1fac WITH vfCt
      REPLACE ftM1cm3 WITH vcM3
      REPLACE ftM1fo1 WITH vfO1
      REPLACE ftM1cf1 WITH vcF1
      REPLACE ftM1ci1 WITH vcI1
      STORE RECNO() TO frEc
      SELECT teMporal_2
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO paN_2105b
 GOTO TOP
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 DO muE_2105b
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Res_2105b
 STORE irEc TO crEc
 STORE vrEc TO xrEc
 SET READBORDER ON
 DO p00_2105a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW3=1
      DO boT_2105a WITH "3"
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
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
      OTHERWISE
           GOTO crEc
           DO paN_2105b
           GOTO crEc
           STORE 00 TO vrEc
           STORE ifIl TO vfIl
           DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
                IF RECNO()=xrEc
                     STORE RECNO() TO vrEc
                     EXIT
                ENDIF
                STORE vfIl+1 TO vfIl
                SKIP
           ENDDO
           DO CASE
                CASE xrEc>urEc .AND. xrEc>frEc .AND. ufIl<ffIl
                     STORE ufIl+1 TO vfIl
                     STORE frEc+1 TO vrEc
                     DO liM_2105b
                CASE vrEc=0
                     STORE irEc TO vrEc
                     STORE ifIl TO vfIl
                     GOTO vrEc
                     DO muE_2105b
                OTHERWISE
                     GOTO vrEc
                     DO muE_2105b
           ENDCASE
 ENDCASE
 DO diS_2105b WITH "R"
ENDPROC
*
PROCEDURE Igv_2105b
 DO tpR_2105a
 DO tp1_2105a
 DO pa1_2105a
 IF vrEc<=urEc
      GOTO vrEc
 ENDIF
 DO diS_2105b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Dat_2105b
 DO tp1_2105a
 DO pa1_2105a
 IF vrEc<=urEc
      GOTO vrEc
 ENDIF
 DO diS_2105b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE 6 TO vuLt
      CASE vsW2=1
           STORE 5 TO vuLt
      CASE vsW2=2
           STORE 3 TO vuLt
      CASE vsW2=3
           STORE 4 TO vuLt
      CASE vsW2=4
           STORE 6 TO vuLt
 ENDCASE
 DO CASE
      CASE viTe<1
           STORE 1 TO viTe
      CASE viTe>vuLt
           STORE vuLt TO viTe
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_2105b
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-4.2 .AND. mcCc<=ucLn
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfB6+0.036 .AND. mfIl<=vfB6+1.25 .AND. vtIp=1 .AND. mcCc>= ;
           vcB6+0.2 .AND. mcCc<=vcB6+14 .AND. vsW1<>1
           DO caL_2105b
           STORE 1 TO vsW1
           DO igV_2105b
      CASE mfIl>=vfB6+1.25 .AND. mfIl<=vfB6+2.678 .AND. vtIp=1 .AND. mcCc>= ;
           vcB6+0.2 .AND. mcCc<=vcB6+14 .AND. vsW1<>2
           DO caL_2105b
           STORE 2 TO vsW1
           DO igV_2105b
      CASE mfIl>=vfB6-0.106 .AND. mfIl<=vfB6+1.32 .AND. vtIp=2 .AND. mcCc>= ;
           vcB6-0.6 .AND. mcCc<=vcB6+10 .AND. vsW1<>1
           DO caL_2105b
           STORE 1 TO vsW1
           DO igV_2105b
      CASE mfIl>=vfB6-0.106 .AND. mfIl<=vfB6+1.32 .AND. vtIp=2 .AND. mcCc>= ;
           vcB6+10 .AND. mcCc<=vcB6+21 .AND. vsW1<>2
           DO caL_2105b
           STORE 2 TO vsW1
           DO igV_2105b
      CASE mfIl>=vfB6-0.106 .AND. mfIl<=vfB6+1.32 .AND. vtIp=2 .AND. mcCc>= ;
           vcB6+21 .AND. mcCc<=vcB6+30.8 .AND. vsW1<>3
           DO caL_2105b
           STORE 3 TO vsW1
           DO igV_2105b
      CASE mfIl>=ifIl-2.535 .AND. mfIl<=ifIl-1.606 .AND. mcCc>=vcB7 .AND.  ;
           mcCc<=vcB7+2
           IF vsW2=1
                STORE 4 TO vsW2
           ELSE
                STORE vsW2-1 TO vsW2
           ENDIF
           DO daT_2105b
      CASE mfIl>=ifIl-2.535 .AND. mfIl<=ifIl-1.606 .AND. mcCc>=vcB7+3.6  ;
           .AND. mcCc<=vcB7+5.8
           STORE k_F9 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0 .AND. mcCc<=mcO0+23.8
           STORE 01 TO viTe
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+23.8 .AND. mcCc<=mcO0+42.8
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 02 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 2 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND.  ;
           LEN(ALLTRIM(vcOd))=0 .AND. mcCc>=mcO0+42.8 .AND. mcCc<=mcO0+ ;
           123.8 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0 .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                OTHERWISE
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 03 TO viTe
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND.  ;
           LEN(ALLTRIM(vcOd))=0 .AND. mcCc>=mcO0+123.8 .AND. mcCc<=mcO0+ ;
           142.4 .AND. viTe<>4
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0 .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                OTHERWISE
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 04 TO viTe
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND.  ;
           LEN(ALLTRIM(vcOd))=0 .AND. mcCc>=mcO0+142.4 .AND. mcCc<=mcO0+ ;
           150.6 .AND. viTe<>5
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0 .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                OTHERWISE
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 05 TO viTe
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND.  ;
           LEN(ALLTRIM(vcOd))=0 .AND. mcCc>=mcO0+150.6 .AND. mcCc<=ucLn- ;
           4.2 .AND. viTe<>6
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0 .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 06 TO viTe
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND. mcCc>=mcO0+ ;
           42.8 .AND. mcCc<=mcO0+142.4 .AND. viTe<>3
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE "Producto no registrado en el Sistema..." TO mmSj
           ELSE
                DO prO_2105b
                STORE 3 TO viTe
           ENDIF
           SELECT teMporal
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND. mcCc>=mcO0+ ;
           142.4 .AND. mcCc<=mcO0+150.6 .AND. viTe<>4
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE "Producto no registrado en el Sistema..." TO mmSj
           ELSE
                DO prO_2105b
                STORE 4 TO viTe
           ENDIF
           SELECT teMporal
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=1 .AND. mcCc>=mcO0+ ;
           150.6 .AND. mcCc<=ucLn-4.2 .AND. viTe<>5
           DO CASE
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 5 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=2 .AND. mcCc>=mcO0  ;
           .AND. mcCc<=mcO0+142.4 .AND. viTe<>1
           STORE 01 TO viTe
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=2 .AND. mcCc>=mcO0+ ;
           142.4 .AND. mcCc<=mcO0+150.6 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 02 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 2 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=2 .AND. mcCc>=mcO0+ ;
           150.6 .AND. mcCc<=ucLn-4.2 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 03 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 3 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=3 .AND. mcCc>=mcO0  ;
           .AND. mcCc<=mcO0+23.8 .AND. viTe<>1
           STORE 01 TO viTe
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=3 .AND. mcCc>=mcO0+ ;
           23.8 .AND. mcCc<=mcO0+142.4 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 02 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 2 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=3 .AND. mcCc>=mcO0+ ;
           142.4 .AND. mcCc<=mcO0+150.6 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 03 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 3 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=3 .AND. mcCc>=mcO0+ ;
           150.6 .AND. mcCc<=ucLn-4.2 .AND. viTe<>4
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 04 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 4 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0  ;
           .AND. mcCc<=mcO0+102.4 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0+ ;
           102.4 .AND. mcCc<=mcO0+110.6 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 02 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 2 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0+ ;
           110.6 .AND. mcCc<=mcO0+131.4 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 03 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 3 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0+ ;
           131.4 .AND. mcCc<=mcO0+142.4 .AND. viTe<>4
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE vsW2=4 .AND. vfOb<0 .AND. vsW1=1
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcFr<0 .AND. vsW1=2
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcIf<0 .AND. vsW1=3
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 04 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 4 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0+ ;
           142.4 .AND. mcCc<=mcO0+153.4 .AND. viTe<>5
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE vsW2=4 .AND. vfOb<0 .AND. vsW1=1
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcFr<0 .AND. vsW1=2
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcIf<0 .AND. vsW1=3
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. ((vsW4=1 .AND. vpD1<0) .OR. (vsW4=2  ;
                     .AND. vpD3<0) .OR. (vsW4=3 .AND. vpD5<0) .OR. (vsW4= ;
                     4 .AND. vpD7<0))
                     STORE "Porcentaje no puede ser menor a cero..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 05 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 5 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW2=4 .AND. mcCc>=mcO0+ ;
           153.4 .AND. mcCc<=ucLn-4.2 .AND. viTe<>6
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcD1))=0  ;
                     .AND. LEN(ALLTRIM(vdCr))=0
                     STORE "Producto no registrado en el Sistema..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0 .AND. LEN(ALLTRIM(vcUx))=0
                     STORE "Unidad de Compra tiene que estar registrada..."  ;
                           TO mmSj
                CASE LEN(ALLTRIM(vmNd))=0
                     STORE "Moneda tiene que estar registrada..." TO mmSj
                CASE vsW2=4 .AND. vfOb<0 .AND. vsW1=1
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcFr<0 .AND. vsW1=2
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. vcIf<0 .AND. vsW1=3
                     STORE "Precio no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. ((vsW4=1 .AND. vpD1<0) .OR. (vsW4=2  ;
                     .AND. vpD3<0) .OR. (vsW4=3 .AND. vpD5<0) .OR. (vsW4= ;
                     4 .AND. vpD7<0))
                     STORE "Porcentaje no puede ser menor a cero..." TO mmSj
                CASE vsW2=4 .AND. ((vsW4=1 .AND. vpD2<0) .OR. (vsW4=2  ;
                     .AND. vpD4<0) .OR. (vsW4=3 .AND. vpD6<0) .OR. (vsW4= ;
                     4 .AND. vpD8<0))
                     STORE "Porcentaje no puede ser menor a cero..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=0
                     IF LEN(ALLTRIM(vcD1))=0
                          STORE SPACE(02) TO vcUx
                          STORE SPACE(30) TO vnUx
                     ENDIF
                     STORE SPACE(02) TO vcUc
                     STORE SPACE(30) TO vnUc
                     STORE SPACE(120) TO vdEs
                     STORE 01 TO vtP1
                     STORE 06 TO viTe
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          DO prO_2105b
                          STORE 6 TO viTe
                     ENDIF
                     SELECT teMporal
           ENDCASE
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           IF viOm=2 .OR. (vfOb<>0 .OR. vcFr<>0 .OR. vcIf<>0) .AND.  ;
              (LEN(ALLTRIM(vcOd))<>0 .OR. LEN(ALLTRIM(vcD1))<>0 .OR.  ;
              LEN(ALLTRIM(vdCr))<>0)
                DO ve1_2105b
                DO caL_2105b
                IF LEN(ALLTRIM(mmSj))<>0
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                DO grA_2105b
           ENDIF
           IF viOm=01
                DO blA_2105b
           ELSE
                DO diS_2105b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_2105b
           DO diS_2105b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucLn-4.2 .AND. mcCc<=ucLn
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=mcO0 .AND. ((vsW0=1 .AND. mcCc<=mcO0+133.2)  ;
                     .OR. (vsW0=2 .AND. mcCc<=mcO0+80.2))
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ((vsW0=1 .AND. mcCc>=mcO0+133.2 .AND. mcCc<=ucLn- ;
                     4.2) .OR. (vsW0=2 .AND. mcCc>=mcO0+101.2 .AND. mcCc<= ;
                     mcO0+141.6))
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE vsW0=2 .AND. mcCc>=mcO0+141.6 .AND. mcCc<=ucLn-4.2
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2105b
 PRIVATE pfIl, psW0
 STORE 0.2 TO pfIl
 STORE 0 TO psW0
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe escoger un Código de "
 @ pfIl+01, 01 SAY  ;
   "Producto o Servicio, en caso se estar registrado en el sistema."
 @ pfIl+02, 01 SAY  ;
   "El Detalle, se graba en un archivo temporal, el cual se graba permanente-"
 @ pfIl+03, 01 SAY "mente al pulsar TAB."
 @ pfIl+05, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 02 SAY "ESC" STYLE "BT"
 @ pfIl+08, 02 SAY "F10" STYLE "BT"
 @ pfIl+09, 02 SAY "F1" STYLE "BT"
 @ pfIl+07, 22 SAY "Regresar a la Cabecera"
 @ pfIl+08, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 22 SAY "Ayuda del Programa"
 STORE pfIl+10 TO pfIl
 DO CASE
      CASE vsW2=1 .AND. viTe=5 .AND. LEN(ALLTRIM(vcOd))=0
           STORE 1 TO psW0
      CASE vsW2=1 .AND. viTe=4
           STORE 1 TO psW0
      CASE vsW2=2 .AND. viTe=2
           STORE 1 TO psW0
      CASE vsW2=3 .AND. viTe=3
           STORE 1 TO psW0
      CASE vsW2=4 .AND. viTe=2
           STORE 1 TO psW0
 ENDCASE
 IF viTe=1 .OR. (viTe=4 .AND. vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0) .OR. psW0=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      DO CASE
           CASE viTe=1
                @ pfIl, 22 SAY "Consulta de Productos registrados"
           CASE viTe=4 .AND. vsW2=1 .AND. LEN(ALLTRIM(vcOd))=0
                @ pfIl, 22 SAY "Consulta de Unidades de Compra/Venta"
           CASE psW0=1
                @ pfIl, 22 SAY "Consulta de Monedas"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F3" STYLE "BT"
      @ pfIl, 22 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F4" STYLE "BT"
      @ pfIl, 22 SAY "Consulta de Productos registrados x código"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 20 SAY ":" STYLE "BT"
 @ pfIl, 02 SAY "F5" STYLE "BT"
 @ pfIl, 22 SAY "Agrandar/Achicar detalle"
 STORE pfIl+1 TO pfIl
 IF viTe=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F6" STYLE "BT"
      @ pfIl, 22 SAY "Codificación nemotécnica"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viOm=2
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F7" STYLE "BT"
      @ pfIl, 22 SAY "Mover Item"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW2=4
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F8" STYLE "BT"
      @ pfIl, 22 SAY "Cambiar de % de Descuento"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F9" STYLE "BT"
 @ pfIl+01, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+04, 02 SAY "<- CTRL" STYLE "BT"
 @ pfIl+05, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+06, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+10, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 22 SAY "Datos Adicionales"
 @ pfIl+01, 22 SAY "Ir a sgte.campo,llegando al final pasa a sgte.línea"
 @ pfIl+02, 22 SAY "Ir a la línea siguiente"
 @ pfIl+03, 22 SAY "Ir a la línea anterior"
 @ pfIl+04, 22 SAY "Ir al campo anterior"
 @ pfIl+05, 22 SAY "Primera línea del Detalle"
 @ pfIl+06, 22 SAY "Última línea del Detalle"
 @ pfIl+07, 22 SAY "Página siguiente"
 @ pfIl+08, 22 SAY "Página anterior"
 @ pfIl+09, 22 SAY "Borrar línea"
 @ pfIl+10, 22 SAY "GRABAR"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
