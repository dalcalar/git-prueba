 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_2920b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_2920b
      CASE viOm=02
           GOTO vrEc
           DO muE_2920b
 ENDCASE
 DO diS_2920b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2920b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2920b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=01
                          DO blA_2920b
                     ELSE
                          DO diS_2920b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viOm=2
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vdEs))=0
                STORE "No hay palabras o frases que buscar..." TO mmSj
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4
                = INKEY(0.01)
                SELECT prOductos
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
                DO paC2111w WITH "3"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT prOductos
                SEEK ALLTRIM(vcDg)+"*"
                DO CASE
                     CASE mkEy=k_Enter
                          STORE f2111cod TO vcD1
                          STORE f2111des TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          IF mmOn=1
                               STORE f2111vv1 TO vpRe
                          ELSE
                               STORE f2111vv2 TO vpRe
                          ENDIF
                          IF vsW0=2
                               STORE 1 TO vcAn
                          ENDIF
                          DO diS_2920b WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_del
                STORE 00 TO vpRe
                STORE 01 TO viTe
                STORE 99 TO mkEy
                STORE SPACE(mtMa) TO vcD1
                STORE SPACE(120) TO vdCr
                STORE SPACE(02) TO vcUv, vcUc
                STORE SPACE(30) TO vnUv, vnUc
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F6
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
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_let
                     DO puC9211w WITH "8"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     RESTORE SCREEN FROM vpAn_let
                     SELECT tiP_prod
                     SET FILTER TO
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Enter
                          STORE ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ ;
                                ALLTRIM(voP3)+ALLTRIM(voP4)+ALLTRIM(voP5)+ ;
                                ALLTRIM(voP6)+ALLTRIM(voP7) TO vcD1
                          SELECT prOductos
                          SEEK UPPER(ALLTRIM(vcD1))+"*"
                          STORE f2111des TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          IF mmOn=1
                               STORE f2111vv1 TO vpRe
                          ELSE
                               STORE f2111vv2 TO vpRe
                          ENDIF
                          DO diS_2920b WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
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
                DO hl1_2920b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2920b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_2920b
                ELSE
                     DO diS_2920b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F5 .AND. vsW0=2
                DO coLsc7
                STORE 1 TO vsW2
                SET READBORDER ON
                SAVE SCREEN TO vpAn_11
                STORE ifIl-1 TO vlIn
                @ vlIn-0.5, icLn-0.6 TO vlIn+27.3, ucLn+0.2 PATTERN 1 PEN 1
                @vLIN-00.4,iCLN+5 Say "Ampliación visual de fórmula:" Font "&mLetRom",12 Style "BT"
                @vLIN+02.6,iCLN+5 Say "Formulación detallada:"        Font "&mLetRom",12 Style "BT"
                @vLIN+04.0,iCLN+01.1 Say "Lar: " Font "&mLetAri",9 Style "NQ"
                @vLIN+05.5,iCLN+01.1 Say "Anc: " Font "&mLetAri",9 Style "NQ"
                @vLIN+07.0,iCLN+01.1 Say "Alt: " Font "&mLetAri",9 Style "NQ"
                @vLIN+08.5,iCLN+01.1 Say "Lar1:" Font "&mLetAri",9 Style "NQ"
                @vLIN+10.0,iCLN+01.1 Say "Anc1:" Font "&mLetAri",9 Style "NQ"
                @vLIN+11.5,iCLN+01.1 Say "Alt1:" Font "&mLetAri",9 Style "NQ"
                @vLIN+13.0,iCLN+01.1 Say "Lar2:" Font "&mLetAri",9 Style "NQ"
                @vLIN+14.5,iCLN+01.1 Say "Anc2:" Font "&mLetAri",9 Style "NQ"
                @vLIN+16.0,iCLN+01.1 Say "Alt2:" Font "&mLetAri",9 Style "NQ"
                @vLIN+17.5,iCLN+01.1 Say "Lar3:" Font "&mLetAri",9 Style "NQ"
                @vLIN+19.0,iCLN+01.1 Say "Anc3:" Font "&mLetAri",9 Style "NQ"
                @vLIN+20.5,iCLN+01.1 Say "Alt3:" Font "&mLetAri",9 Style "NQ"
                @vLIN+22.0,iCLN+01.1 Say "Lar4:" Font "&mLetAri",9 Style "NQ"
                @vLIN+23.5,iCLN+01.1 Say "Anc4:" Font "&mLetAri",9 Style "NQ"
                @vLIN+25.0,iCLN+01.1 Say "Alt4:" Font "&mLetAri",9 Style "NQ"
                @vLIN+04.0,iCLN+28.1 Say "Lar5:" Font "&mLetAri",9 Style "NQ"
                @vLIN+05.5,iCLN+28.1 Say "Anc5:" Font "&mLetAri",9 Style "NQ"
                @vLIN+07.0,iCLN+28.1 Say "Alt5:" Font "&mLetAri",9 Style "NQ"
                @vLIN+08.5,iCLN+28.1 Say "Lar6:" Font "&mLetAri",9 Style "NQ"
                @vLIN+10.0,iCLN+28.1 Say "Anc6:" Font "&mLetAri",9 Style "NQ"
                @vLIN+11.5,iCLN+28.1 Say "Alt6:" Font "&mLetAri",9 Style "NQ"
                @vLIN+13.0,iCLN+28.1 Say "Lar7:" Font "&mLetAri",9 Style "NQ"
                @vLIN+14.5,iCLN+28.1 Say "Anc7:" Font "&mLetAri",9 Style "NQ"
                @vLIN+16.0,iCLN+28.1 Say "Alt7:" Font "&mLetAri",9 Style "NQ"
                @vLIN+17.5,iCLN+28.1 Say "Lar8:" Font "&mLetAri",9 Style "NQ"
                @vLIN+19.0,iCLN+28.1 Say "Anc8:" Font "&mLetAri",9 Style "NQ"
                @vLIN+20.5,iCLN+28.1 Say "Alt8:" Font "&mLetAri",9 Style "NQ"
                @vLIN+22.0,iCLN+28.1 Say "Lar9:" Font "&mLetAri",9 Style "NQ"
                @vLIN+23.5,iCLN+28.1 Say "Anc9:" Font "&mLetAri",9 Style "NQ"
                @vLIN+25.0,iCLN+28.1 Say "Alt9:" Font "&mLetAri",9 Style "NQ"
                @vLIN+04.0,iCLN+08.1 Edit vLAR   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+05.5,iCLN+08.1 Edit vANC   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+07.0,iCLN+08.1 Edit vALT   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+08.5,iCLN+08.1 Edit vLA1   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+10.0,iCLN+08.1 Edit vAN1   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+11.5,iCLN+08.1 Edit vAL1   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+13.0,iCLN+08.1 Edit vLA2   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+14.5,iCLN+08.1 Edit vAN2   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+16.0,iCLN+08.1 Edit vAL2   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+17.5,iCLN+08.1 Edit vLA3   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+19.0,iCLN+08.1 Edit vAN3   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+20.5,iCLN+08.1 Edit vAL3   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+22.0,iCLN+08.1 Edit vLA4   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+23.5,iCLN+08.1 Edit vAN4   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+25.0,iCLN+08.1 Edit vAL4   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+04.0,iCLN+35.1 Edit vLA5   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+05.5,iCLN+35.1 Edit vAN5   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+07.0,iCLN+35.1 Edit vAL5   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+08.5,iCLN+35.1 Edit vLA6   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+10.0,iCLN+35.1 Edit vAN6   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+11.5,iCLN+35.1 Edit vAL6   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+13.0,iCLN+35.1 Edit vLA7   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+14.5,iCLN+35.1 Edit vAN7   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+16.0,iCLN+35.1 Edit vAL7   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+17.5,iCLN+35.1 Edit vLA8   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+19.0,iCLN+35.1 Edit vAN8   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+20.5,iCLN+35.1 Edit vAL8   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+22.0,iCLN+35.1 Edit vLA9   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+23.5,iCLN+35.1 Edit vAN9   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                @vLIN+25.0,iCLN+35.1 Edit vAL9   Font "&mLetAri",9 Style "NQ" Size 1,14,10
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO prEsiona WITH "4", "BOT_MA07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "SI", vlIn-0.4, icLn+1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "NO", vlIn+2.6, icLn+1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO WHILE .T.
                     DO coLbln
                     SET READBORDER ON
                     @vLIN+0.9,iCLN+1 Edit vFOR Font "&mLetRom",12 Style "NQ" Size 1,126,80
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO CASE
                          CASE mkEy=k_F1
                               DO hl3_2920b
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_F2
                               IF vsW2=1
                                    STORE 2 TO vsW2
                                    DO prEsiona WITH "1", "NO", vlIn-0.4,  ;
                                       icLn+1
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    DO prEsiona WITH "1", "SI", vlIn+2.6,  ;
                                       icLn+1
                               ELSE
                                    STORE 1 TO vsW2
                                    DO prEsiona WITH "1", "SI", vlIn-0.4,  ;
                                       icLn+1
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    DO prEsiona WITH "1", "NO", vlIn+2.6,  ;
                                       icLn+1
                               ENDIF
                          CASE mkEy=k_Enter
                               EXIT
                     ENDCASE
                ENDDO
                RESTORE SCREEN FROM vpAn_11
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
           CASE mkEy=k_F7 .AND. vsW0=2
                STORE k_Enter TO mkEy
                DO q2_0000a
                DO p3_0000a
                SET READBORDER ON
                DO p02_2920a
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                DO q3_0000a
                DO p2_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                DO foT_2920b
                RESTORE SCREEN FROM vpAn_11
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
           CASE mkEy=k_F9 .AND. vsW0=2
                IF vsW1=1
                     STORE 2 TO vsW1
                ELSE
                     STORE 1 TO vsW1
                ENDIF
                SET READBORDER ON
                DO p02_2920a
                READ TIMEOUT 0.01
                SET READBORDER OFF
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. viOm=1
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND. vrEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. vsW0=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. vsEr=1 .AND. vsW0=2
                STORE 01 TO vsW0
                DO p01_2920a
                SET READBORDER ON
                DO p02_2920a
                READ TIMEOUT 0.01
                SET READBORDER OFF
                STORE vrEc TO crEc
                STORE vfIl TO cfIl
                STORE vcD1 TO ccD1
                STORE vdCr TO cdCr
                STORE vcAn TO ccAn
                STORE vcUv TO ccUv
                STORE vnUv TO cnUv
                STORE vfOr TO cfOr
                STORE vpRe TO cpRe
                IF irEc<=frEc
                     GOTO irEc
                     DO paN_2920b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE crEc TO vrEc
                STORE cfIl TO vfIl
                STORE ccD1 TO vcD1
                STORE cdCr TO vdCr
                STORE ccAn TO vcAn
                STORE ccUv TO vcUv
                STORE cnUv TO vnUv
                STORE cfOr TO vfOr
                STORE cpRe TO vpRe
                IF vrEc<=frEc
                     GOTO vrEc
                     STORE 2 TO viOm
                ELSE
                     STORE 1 TO viOm
                ENDIF
                STORE 02 TO viTe
                STORE 99 TO mkEy
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right .AND. viTe=2 .AND. vsEr=1 .AND. vsW0=1  ;
                .AND. vcAn<0
                STORE "Cantidad no puede ser menor a cero..." TO mmSj
           CASE mkEy=k_Ctrl_right .AND. viTe=2 .AND. vsEr=1 .AND. vsW0=1  ;
                .AND. vcAn=0
                STORE "Cantidad no puede ser cero..." TO mmSj
           CASE mkEy=k_Ctrl_right .AND. viTe=2 .AND. vsEr=1 .AND. vsW0=1
                STORE 02 TO vsW0
                DO p01_2920a
                SET READBORDER ON
                DO p02_2920a
                READ TIMEOUT 0.01
                SET READBORDER OFF
                STORE vrEc TO crEc
                STORE vfIl TO cfIl
                STORE vcD1 TO ccD1
                STORE vdCr TO cdCr
                STORE vcAn TO ccAn
                STORE vcUv TO ccUv
                STORE vnUv TO cnUv
                STORE vfOr TO cfOr
                STORE vpRe TO cpRe
                IF irEc<=frEc
                     GOTO irEc
                     DO paN_2920b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE crEc TO vrEc
                STORE cfIl TO vfIl
                STORE ccD1 TO vcD1
                STORE cdCr TO vdCr
                STORE ccAn TO vcAn
                STORE ccUv TO vcUv
                STORE cnUv TO vnUv
                STORE cfOr TO vfOr
                STORE cpRe TO vpRe
                IF vrEc<=frEc
                     GOTO vrEc
                     STORE 2 TO viOm
                ELSE
                     STORE 1 TO viOm
                ENDIF
                STORE 02 TO viTe
                STORE 99 TO mkEy
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcD1))=0
                          STORE "Código de Producto no puede estar vacío..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. ALLTRIM(vcOd)+"*"=ALLTRIM(vcD1)+"*"
                          STORE "Código de Producto no puede ser igual al que esta en la Cabecera..."  ;
                                TO mmSj
                     CASE viTe=1
                          SELECT prOductos
                          SEEK ALLTRIM(vcD1)+"*"
                          IF EOF()
                               STORE "Producto no registrado en el Sistema..."  ;
                                     TO mmSj
                          ELSE
                               STORE f2111cod TO vcD1
                               STORE f2111des TO vdCr
                               STORE f2111cuv TO vcUv
                               STORE f2111nuv TO vnUv
                               IF mmOn=1
                                    STORE f2111vv1 TO vpRe
                               ELSE
                                    STORE f2111vv2 TO vpRe
                               ENDIF
                          ENDIF
                          SELECT teMporal
                          DO diS_2920b WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     CASE viTe=2 .AND. vcAn<0 .AND. vsW0=1
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe=2 .AND. vcAn=0 .AND. vsW0=1
                          STORE "Cantidad no puede ser cero..." TO mmSj
                     OTHERWISE
                          DO trA_2920b
                          IF veRr="@"
                               STORE "La fórmula tiene errores..." TO mmSj
                          ELSE
                               DO diS_2920b WITH "R"
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO CASE
                          CASE vsEr=1 .AND. vsW0=1 .AND. viTe=2
                          CASE vsEr=1 .AND. vsW0=2 .AND. viTe=3
                          CASE vsW0=1 .AND. viTe<2
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                          CASE vsW0=2 .AND. viTe<3
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                     ENDCASE
                ENDIF
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                DO coL_fondo
                DO suBe WITH vfIl, icLn+5.3, ffIl, ucLn, 1
                DO liN_2920a WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, icLn+0.1 CLEAR TO ufIl+1, icLn+4.3
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
                     DO muE_2920b
                     DO diS_2920b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfIl TO vfIl
                     STORE crEc TO vrEc
                     GOTO vrEc
                ENDIF
                DELETE
                PACK
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_2920b
                ELSE
                     DO liM_2920b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1cod<>vcD1 .OR. ftM1can<> ;
                vcAn .OR. ftM1for<>vfOr .OR. ftM1dsp<>vdSp)
                DO ve1_2920b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcD1))<>0 .AND. vcAn>0
                DO grA_2920b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_2920b
                ELSE
                     DO diS_2920b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_2920b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn+0.1, ffIl, ucLn, 1
                     DO liN_2920a WITH ifIl, ffIl+1.1
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
                     DO muE_2920b
                ELSE
                     DO liM_2920b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_2920b
                ELSE
                     DO diS_2920b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn+0.1, ffIl, ucLn, 1
                     DO liN_2920a WITH ifIl, ffIl+1.1
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
                DO muE_2920b
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_2920b
                ELSE
                     DO diS_2920b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_2920b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2920b
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_2920b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_2920b
                ELSE
                     DO diS_2920b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_2920b
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_2920b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_2920b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2920b
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_2920b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_2920b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2920b
                DO diS_2920b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,118
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+24 Say "SE DEBE DIGITAR O ESCOGER EL CÓDIGO INTERNO DE PRODUCTO..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=0 .AND. vsW0=1
                @mMF2,mMC2+31 Say "LA CANTIDAD ES UN CAMPO DE 6 DÍGITOS..."                    Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=1 .AND. vsW0=1
                @mMF2,mMC2+25 Say "LA CANTIDAD ES UN CAMPO DE 6 ENTEROS Y 1 DECIMAL..."        Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=2 .AND. vsW0=1
                @mMF2,mMC2+24 Say "LA CANTIDAD ES UN CAMPO DE 6 ENTEROS Y 2 DECIMALES..."      Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=3 .AND. vsW0=1
                @mMF2,mMC2+24 Say "LA CANTIDAD ES UN CAMPO DE 5 ENTEROS Y 3 DECIMALES..."      Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. mdEc=4 .AND. vsW0=1
                @mMF2,mMC2+24 Say "LA CANTIDAD ES UN CAMPO DE 4 ENTEROS Y 4 DECIMALES..."      Font "&mLetRom",9 Style "BQ"
           CASE viTe=2 .AND. vsW0=2
                @mMF2,mMC2+28 Say "ES UN CAMPO DE 80 CARACTERES ALFANUMÉRICOS..."              Font "&mLetRom",9 Style "BQ"
           CASE viTe=3 .AND. vsW0=2
                @mMF2,mMC2+24 Say "LA CANTIDAD ES UN CAMPO DE 1 ENTERO Y 2 DECIMALES..."       Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      IF viTe=3 .AND. veRr="@"
           DO coLblr
      ENDIF
      DO CASE
           CASE viTe=1
                @vFIL,iCLN+005.5 Get  vCD1 Font "&mLetAri",9 Style "NQ" Size 1,23.0                  Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=0 .AND. vsW0=1
                @vFIL,iCLN+134.0 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "999999"    Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=1 .AND. vsW0=1
                @vFIL,iCLN+134.0 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "999999.9"  Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=2 .AND. vsW0=1
                @vFIL,iCLN+134.0 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "999999.99" Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=3 .AND. vsW0=1
                @vFIL,iCLN+134.0 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "99999.999" Color ,&mColBlN
           CASE viTe=2 .AND. mdEc=4 .AND. vsW0=1
                @vFIL,iCLN+134.0 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "9999.9999" Color ,&mColBlN
           CASE viTe=2 .AND. vsW0=2
                @vFIL,iCLN+101.8 Edit vFOR Font "&mLetAri",9 Style "NQ" Size 1,39.3,80               Color ,&mColBlN
           CASE viTe=3 .AND. vsW0=2
                @vFIL,iCLN+142.6 Get  vDSP Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "99.9"       Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF viTe=3
           STORE UPPER(vfOr) TO vfOr
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_2920b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_2920b
      DO diS_2920b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_2920a WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2920b
 PARAMETER ptIp
 PRIVATE pcAm
 IF vcAm="M"
      STORE 1 TO pcAm
 ELSE
      STORE 2 TO pcAm
 ENDIF
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
 @vFIL,iCLN+0.1 Say vREC                 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFIL,iCLN+5.3 Say "  "                 Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFIL,iCLN+5.5 Say vCD1                 Font "&mLetAri",9 Style "NQ" Size 1,23.3 Pict "@S20"
 DO CASE
      CASE vsW0=1
           @vFIL,iCLN+029.9 Say vDCR       Font "&mLetAri",9 Style "NQ" Size 1,84.4 Pict "@S87"
           @vFIL,iCLN+115.4 Say vNUV       Font "&mLetAri",9 Style "NQ" Size 1,17.3 Pict "@S20"
           @vFIL,iCLN+133.8 Say "  "       Font "&mLetAri",9 Style "NQ" Size 1,00.4
           DO CASE
                CASE mdEc=0
                     @vFIL,iCLN+134 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "99,999,999"
                CASE mdEc=1
                     @vFIL,iCLN+134 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "9999,999.9"
                CASE mdEc=2
                     @vFIL,iCLN+134 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "999,999.99"
                CASE mdEc=3
                     @vFIL,iCLN+134 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "99,999.999"
                CASE mdEc=4
                     @vFIL,iCLN+134 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "9,999.9999"
           ENDCASE
           @vFIL,iCLN+148.4 Say "  "       Font "&mLetAri",9 Style "NQ" Size 1,00.5
      CASE vsW0=2
           @vFIL,iCLN+029.9 Say vDCR       Font "&mLetAri",9 Style "NQ" Size 1,39.9 Pict "@S42"
           @vFIL,iCLN+071.0 Say vNUV       Font "&mLetAri",9 Style "NQ" Size 1,08.8 Pict "@S10"
           @vFIL,iCLN+080.7 Get pCAM       Font "&mLetAri",9 Style "NQ" Function "*RHT Mod;No Mod" Default pCAM Size 1,7.5,.01
           @vFIL,iCLN+142.2 Say " "        Font "&mLetAri",9 Style "NQ" Size 1,00.3
           @vFIL,iCLN+142.6 Say vDSP       Font "&mLetAri",9 Style "NQ" Size 1,06.0 Pict "99.9"
           @vFIL,iCLN+148.6 Say " "        Font "&mLetAri",9 Style "NQ" Size 1,00.3
           IF veRr="@"
                DO CASE
                     CASE ptIp="N"
                          DO coL_fonro
                     CASE ptIp="R"
                          DO coLblr
                ENDCASE
           ENDIF
           @vFIL,iCLN+101.8 Say vFOR Font "&mLetAri",9 Style "NQ" Size 1,39.3 Pict "@S42"
           READ TIMEOUT 0.01
 ENDCASE
 DO coLsc3
 @fFIL+1.4,iCLN+00.5 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,93 Pict "@S96"
 @fFIL+1.4,iCLN+95.7 Say vNUV Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S30"
ENDPROC
*
PROCEDURE Bla_2920b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_2920a WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_2920b
 STORE SPACE(01) TO veRr, vcAm
 STORE SPACE(02) TO vcUv
 STORE SPACE(mtMa) TO vcD1
 STORE SPACE(30) TO vnUv
 STORE SPACE(80) TO vfOr
 STORE SPACE(120) TO vdCr
 STORE "T" TO vtTt
 STORE 01 TO viOm, viTe
 STORE 00 TO vcAn, vpRe, vdSp
ENDPROC
*
PROCEDURE Mue_2920b
 STORE ftM1cod TO vcD1
 STORE ftM1des TO vdCr
 STORE ftM1cuv TO vcUv
 STORE ftM1nuv TO vnUv
 STORE ftM1can TO vcAn
 STORE ftM1for TO vfOr
 STORE ftM1pre TO vpRe
 STORE ftM1dsp TO vdSp
 STORE ftM1ttt TO vtTt
 STORE ftM1cam TO vcAm
 STORE ftM1err TO veRr
 STORE 02 TO viOm
 DO CASE
      CASE vsW0=1 .AND. (viTe<1 .OR. viTe>2)
           STORE 02 TO viTe
      CASE vsW0=1 .AND. (viTe<1 .OR. viTe>3)
           STORE 03 TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2920b
 = INKEY(0.01)
 DO trA_2920b
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
 ENDIF
 REPLACE ftM1cod WITH vcD1
 REPLACE ftM1des WITH vdCr
 REPLACE ftM1cuv WITH vcUv
 REPLACE ftM1nuv WITH vnUv
 REPLACE ftM1can WITH vcAn
 REPLACE ftM1for WITH vfOr
 REPLACE ftM1pre WITH vpRe
 REPLACE ftM1dsp WITH vdSp
 REPLACE ftM1ttt WITH vtTt
 REPLACE ftM1err WITH veRr
 REPLACE ftM1cam WITH vcAm
 STORE 02 TO viOm
ENDPROC
*
PROCEDURE Ve1_2920b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcD1))=0
           STORE "Código de Producto no puede estar vacío..." TO mmSj
      CASE ALLTRIM(vcOd)+"*"=ALLTRIM(vcD1)+"*"
           STORE "Código de Producto no puede ser igual al que esta en la Cabecera..."  ;
                 TO mmSj
      CASE vcAn<0
           STORE "Cantidad no puede ser menor a cero..." TO mmSj
      CASE vcAn=0
           STORE "Cantidad no puede ser cero..." TO mmSj
      OTHERWISE
           SELECT prOductos
           SEEK ALLTRIM(vcD1)+"*"
           IF EOF()
                STORE "Producto no registrado en el Sistema..." TO mmSj
           ELSE
                STORE f2111cod TO vcD1
                STORE f2111des TO vdCr
                STORE f2111cuv TO vcUv
                STORE f2111nuv TO vnUv
                IF mmOn=1
                     STORE f2111vv1 TO vpRe
                ELSE
                     STORE f2111vv2 TO vpRe
                ENDIF
                DO trA_2920b
                IF veRr="@"
                     STORE "La fórmula tiene errores..." TO mmSj
                ELSE
                     DO diS_2920b WITH "R"
                ENDIF
           ENDIF
           SELECT teMporal
 ENDCASE
ENDPROC
*
PROCEDURE Tra_2920b
 STORE vfOr TO cfOr
 DO WHILE .T.
      DO CASE
           CASE AT("ALT", cfOr)<>0
                STORE AT("ALT", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaLt, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT1", cfOr)<>0
                STORE AT("ALT1", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL1, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT2", cfOr)<>0
                STORE AT("ALT2", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL2, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT3", cfOr)<>0
                STORE AT("ALT3", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL3, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT4", cfOr)<>0
                STORE AT("ALT4", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL4, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT5", cfOr)<>0
                STORE AT("ALT5", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL5, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT6", cfOr)<>0
                STORE AT("ALT6", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL6, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT7", cfOr)<>0
                STORE AT("ALT7", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL7, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT8", cfOr)<>0
                STORE AT("ALT8", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL8, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ALT9", cfOr)<>0
                STORE AT("ALT9", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaL9, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC", cfOr)<>0
                STORE AT("ANC", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaNc, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC1", cfOr)<>0
                STORE AT("ANC1", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN1, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC2", cfOr)<>0
                STORE AT("ANC2", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN2, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC3", cfOr)<>0
                STORE AT("ANC3", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN3, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC4", cfOr)<>0
                STORE AT("ANC4", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN4, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC5", cfOr)<>0
                STORE AT("ANC5", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN5, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC6", cfOr)<>0
                STORE AT("ANC6", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN6, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC7", cfOr)<>0
                STORE AT("ANC7", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN7, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC8", cfOr)<>0
                STORE AT("ANC8", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN8, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("ANC9", cfOr)<>0
                STORE AT("ANC9", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xaN9, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR", cfOr)<>0
                STORE AT("LAR", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlAr, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR1", cfOr)<>0
                STORE AT("LAR1", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA1, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR2", cfOr)<>0
                STORE AT("LAR2", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA2, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR3", cfOr)<>0
                STORE AT("LAR3", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA3, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR4", cfOr)<>0
                STORE AT("LAR4", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA4, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR5", cfOr)<>0
                STORE AT("LAR5", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA5, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR6", cfOr)<>0
                STORE AT("LAR6", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA6, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR7", cfOr)<>0
                STORE AT("LAR7", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA7, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR8", cfOr)<>0
                STORE AT("LAR8", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA8, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           CASE AT("LAR9", cfOr)<>0
                STORE AT("LAR9", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+ALLTRIM(STR(xlA9, 6, 2))+ ;
                      SUBSTR(cfOr, vnUm+3, 80) TO cfOr
           OTHERWISE
                EXIT
      ENDCASE
 ENDDO
 DO CASE
      CASE AT("&", cfOr)<>0 .OR. AT("TOT", cfOr)<>0
      CASE LEN(ALLTRIM(cfOr))=0
           STORE " " TO veRr
           RETURN
      OTHERWISE
           STORE ALLTRIM(cfOr) TO cfOr
           STORE 7 TO meRr
           STORE mkEy TO ckEy
           STORE 99 TO mkEy
           Store &cFOR         to cPR1
           IF mkEy=k_Esc
                STORE "@" TO veRr
           ELSE
                STORE " " TO veRr
           ENDIF
           STORE 00 TO meRr
           STORE ckEy TO mkEy
           RETURN
 ENDCASE
 SELECT teMporal
 SET ORDER TO FTM1COD
 DO WHILE .T.
      DO CASE
           CASE AT("&", cfOr)<>0
                STORE AT("&", cfOr, 1) TO vnU1
                STORE AT("&", cfOr, 2) TO vnU2
                STORE SUBSTR(cfOr, vnU1+1, (vnU2-vnU1)-1) TO ccO1
                IF ccO1=vcD1 .OR. ccO1=vcOd
                     STORE "@" TO veRr
                     SET ORDER TO
                     RETURN
                ENDIF
                SEEK UPPER(ALLTRIM(ccO1))+"*"
                IF EOF()
                     STORE "@" TO veRr
                     SET ORDER TO
                     RETURN
                ENDIF
                STORE ALLTRIM(STR(1, 12, 2)) TO cpR1
                STORE SUBSTR(cfOr, 1, vnU1-1)+cpR1+SUBSTR(cfOr, vnU2+1,  ;
                      80) TO cfOr
           OTHERWISE
                EXIT
      ENDCASE
 ENDDO
 SELECT teMporal
 SET ORDER TO
 DO CASE
      CASE AT("TOT", cfOr)<>0
      OTHERWISE
           STORE ALLTRIM(cfOr) TO cfOr
           STORE 7 TO meRr
           STORE mkEy TO ckEy
           STORE 99 TO mkEy
           Store &cFOR         to cPR1
           IF mkEy=k_Esc
                STORE "@" TO veRr
           ELSE
                STORE " " TO veRr
           ENDIF
           STORE 00 TO meRr
           STORE ckEy TO mkEy
           RETURN
 ENDCASE
 DO WHILE .T.
      DO CASE
           CASE AT("TOT", cfOr)<>0
                STORE AT("TOT", cfOr) TO vnUm
                STORE SUBSTR(cfOr, 1, vnUm-1)+STR(1, 1, 0)+SUBSTR(cfOr,  ;
                      vnUm+3, 80) TO cfOr
           OTHERWISE
                EXIT
      ENDCASE
 ENDDO
 STORE ALLTRIM(cfOr) TO cfOr
 STORE 7 TO meRr
 STORE mkEy TO ckEy
 STORE 99 TO mkEy
 Store &cFOR         to cPR1
 IF mkEy=k_Esc
      STORE "@" TO veRr
 ELSE
      STORE " " TO veRr
 ENDIF
 STORE 00 TO meRr
 STORE ckEy TO mkEy
ENDPROC
*
PROCEDURE Res_2920b
 STORE irEc TO crEc
 STORE vrEc TO xrEc
 SET READBORDER ON
 DO p00_2920a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
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
           DO paN_2920b
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
                     DO liM_2920b
                CASE vrEc=0
                     STORE irEc TO vrEc
                     STORE ifIl TO vfIl
                     GOTO vrEc
                     DO muE_2920b
                OTHERWISE
                     GOTO vrEc
                     DO muE_2920b
           ENDCASE
 ENDCASE
 DO diS_2920b WITH "R"
ENDPROC
*
PROCEDURE P01_2920b
 DO coLsc7
 DO prEsiona WITH "4", "BOT_MA07", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl-02.6, mcO0+28 TO ifIl+18.5, mcO0+96.1 PATTERN 1 PEN 1 COLOR SCHEME 3
 @ ifIl-02.2, mcO0+26 TO ifIl+19.0, mcO0+95.0 PATTERN 1 PEN 3
 @ ifIl-02.2, mcO0+26 TO ifIl-00.1, mcO0+95.0 PATTERN 1 PEN 3
 @iFIL+16.2,mCO0+27 Say "Pulsar TAB para grabar, ENTER para Ver Gráficos" Font "&mLetAri",9 Style "BT"
 @iFIL+17.5,mCO0+27 Say " y cualquier otra para salir..."                 Font "&mLetAri",9 Style "BT"
 @iFIL-01.7,mCO0+28 Say "Nombre del Grafico:"                             Font "&mLetAri",9 Style "NQ"
 DO coLbln
 @ ifIl+00.1, mcO0+28 TO ifIl+15.5, mcO0+93.0 PATTERN 1 PEN 1
 DO prEsiona WITH "1", "BOTON", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFB3-0.2,vCB3+1.3 Say ". . ." Font "&mLetAri",12 Style "BT"
 DO p02_2920b
ENDPROC
*
PROCEDURE P02_2920b
 If Len(AllTrim(cFOT)) <> 0 .and. File("&cFOT")
      @iFIL+0.3,mCO0+29 Say "&cFOT" BitMap Style "Q"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coLbln
      @ ifIl+0.1, mcO0+28 TO ifIl+15.5, mcO0+93 PATTERN 1 PEN 1
 ENDIF
ENDPROC
*
PROCEDURE P03_2920b
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
 ENDIF
 If !File("&cFOT")
      STORE SPACE(08) TO cfOt
 ENDIF
ENDPROC
*
PROCEDURE Fot_2920b
 SELECT prOductos
 SEEK UPPER(ALLTRIM(vcOd))+"*"
 STORE SPACE(08) TO vfOt
 IF  .NOT. EOF() .AND. LEN(ALLTRIM(f2111fot))<>0
      STORE f2111fot TO vfOt
 ENDIF
 DO p03_2920b
 DO p01_2920b
 DO WHILE .T.
      DO coLbln
      STORE k_Enter TO mkEy
      SET READBORDER ON
      @iFIL-1.7,mCO0+51 Edit vFOT Font "&mLetAri",9 Style "NQ" Size 1,12,8
      SET CURSOR ON
      READ
      SET CURSOR OFF
      SET READBORDER OFF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2920b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_2920b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     44.4 .AND. mcCc<=mmC1+59.4
                     STORE k_Tab TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.80
                     STORE k_Esc TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                CASE mfIl>=vfB3 .AND. mfIl<=vfB3+1.478 .AND. mcCc>=vcB3  ;
                     .AND. mcCc<=vcB3+5.700
                     STORE k_F2 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl2_2920b
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F2
                STORE CURDIR() TO vdIr
                IF LEN(ALLTRIM(muNi))=0
                     STORE mpTh+"DIB\" TO mdBf
                ELSE
                     STORE muNi+":"+mpTh+"DIB\" TO mdBf
                ENDIF
                STORE ALLTRIM(mdBf) TO mdBf
                If .not.Directory("&mDBF")
                     STORE "No hay Carpeta de Graficos" TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     = INKEY(0)
                     RETURN
                ENDIF
                Set Defa to &mDBF
                cfOt = GETFILE('BMP', 'Mostrar Gráficos .BMP:',  ;
                       'Examinar', 1, 'Mostrar')
                Set Defa to &vDIR
                DO p02_2920b
                IF LEN(ALLTRIM(cfOt))<>0
                     STORE SUBSTR(cfOt, RAT("\", cfOt)+1, RAT(".", cfOt)- ;
                           (RAT("\", cfOt)+1)) TO vfOt
                ENDIF
           CASE mkEy=k_Tab .OR. mkEy=k_Enter
                DO p03_2920b
                DO p02_2920b
                IF mkEy=k_Tab
                     SELECT prOductos
                     SEEK UPPER(ALLTRIM(vcOd))+"*"
                     IF  .NOT. EOF()
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    UNLOCK ALL
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          REPLACE f2111fot WITH vfOt
                     ENDIF
                     EXIT
                ENDIF
      ENDCASE
 ENDDO
ENDPROC
*
PROCEDURE Clp_2920b
 PRIVATE pcAm
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=0 .AND. mfIl<=2.5 .AND. mcCc>=0 .AND. mcCc<=15
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
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
      CASE mfIl>=vfB3 .AND. mfIl<=vfB3+1.478 .AND. mcCc>=vcB3 .AND. mcCc<= ;
           vcB3+5.700
           STORE k_F2 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=2 .AND. mcCc>=icLn+ ;
           80.2 .AND. mcCc<=icLn+88.8 .AND. vcAm<>"M"
           STORE "M" TO vcAm
           STORE 1 TO pcAm
           @vFIL,iCLN+80.7 Get pCAM Font "&mLetAri",9 Style "NQ" Function "*RHT Mod;No Mod" Default pCAM Size 1,7.5,.01
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=2 .AND. mcCc>=icLn+ ;
           88.8 .AND. mcCc<=icLn+101.2 .AND. vcAm<>" "
           STORE " " TO vcAm
           STORE 2 TO pcAm
           @vFIL,iCLN+80.7 Get pCAM Font "&mLetAri",9 Style "NQ" Function "*RHT Mod;No Mod" Default pCAM Size 1,7.5,.01
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-4.2 .AND. mcCc<=ucLn
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=01 .AND. mcCc>=icLn  ;
           .AND. mcCc<=icLn+133.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=1 .AND. mcCc>=icLn+ ;
           133.2 .AND. mcCc<=ucLn-4.2 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0
                     STORE "Código de Producto no puede estar vacío..." TO mmSj
                CASE ALLTRIM(vcOd)+"*"=ALLTRIM(vcD1)+"*"
                     STORE "Código de Producto no puede ser igual al que esta en la Cabecera..."  ;
                           TO mmSj
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          STORE 02 TO viTe
                          STORE f2111cod TO vcD1
                          STORE f2111des TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          IF mmOn=1
                               STORE f2111vv1 TO vpRe
                          ELSE
                               STORE f2111vv2 TO vpRe
                          ENDIF
                     ENDIF
                     SELECT teMporal
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=2 .AND. mcCc>=icLn  ;
           .AND. mcCc<=icLn+80.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=2 .AND. mcCc>=icLn+ ;
           101.2 .AND. mcCc<=icLn+141.6 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0
                     STORE "Código de Producto no puede estar vacío..." TO mmSj
                CASE ALLTRIM(vcOd)+"*"=ALLTRIM(vcD1)+"*"
                     STORE "Código de Producto no puede ser igual al que esta en la Cabecera..."  ;
                           TO mmSj
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          STORE 02 TO viTe
                          STORE f2111cod TO vcD1
                          STORE f2111des TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          IF mmOn=1
                               STORE f2111vv1 TO vpRe
                          ELSE
                               STORE f2111vv2 TO vpRe
                          ENDIF
                     ENDIF
                     SELECT teMporal
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. vsW0=2 .AND. mcCc>=icLn+ ;
           141.6 .AND. mcCc<=ucLn-4.2 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vcD1))=0
                     STORE "Código de Producto no puede estar vacío..." TO mmSj
                CASE ALLTRIM(vcOd)+"*"=ALLTRIM(vcD1)+"*"
                     STORE "Código de Producto no puede ser igual al que esta en la Cabecera..."  ;
                           TO mmSj
                CASE vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                CASE vcAn=0
                     STORE "Cantidad no puede ser cero..." TO mmSj
                OTHERWISE
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE "Producto no registrado en el Sistema..."  ;
                                TO mmSj
                     ELSE
                          STORE 03 TO viTe
                          STORE f2111cod TO vcD1
                          STORE f2111des TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          IF mmOn=1
                               STORE f2111vv1 TO vpRe
                          ELSE
                               STORE f2111vv2 TO vpRe
                          ENDIF
                     ENDIF
                     SELECT teMporal
                     DO trA_2920b
                     SELECT teMporal
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           IF viOm=2 .OR. (LEN(ALLTRIM(vcD1))<>0 .AND. vcAn>0)
                DO ve1_2920b
                IF LEN(ALLTRIM(mmSj))<>0
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                DO grA_2920b
           ENDIF
           IF viOm=01
                DO blA_2920b
           ELSE
                DO diS_2920b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_2920b
           DO diS_2920b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucLn-4.2 .AND. mcCc<=ucLn
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=icLn .AND. mcCc<=icLn+135.2 .AND. viOm=1
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE vsW0=1
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE vsW0=2
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2920b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl, 03 SAY  ;
   "El Detalle, es la relación de los productos que componen el Conjunto."
 STORE pfIl+2 TO pfIl
 @ pfIl, 03 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "ESC" STYLE "BT"
 @ pfIl+1, 04 SAY "F10" STYLE "BT"
 @ pfIl+2, 04 SAY "F1" STYLE "BT"
 @ pfIl+0, 24 SAY "Regresar a la Cabecera"
 @ pfIl+1, 24 SAY "Cerrar/regresar a Windows"
 @ pfIl+2, 24 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF viTe=1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+2, 22 SAY ":" STYLE "BT"
      @ pfIl+3, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F2" STYLE "BT"
      @ pfIl+1, 04 SAY "F3" STYLE "BT"
      @ pfIl+2, 04 SAY "F4" STYLE "BT"
      @ pfIl+3, 04 SAY "F6" STYLE "BT"
      @ pfIl+0, 24 SAY "Consulta alfabética de Productos registrados"
      @ pfIl+1, 24 SAY "Buscar palabra o frase y mostrarla en consulta"
      @ pfIl+2, 24 SAY "Consulta x Código de Productos registrados"
      @ pfIl+3, 24 SAY "Codificación nemotécnica"
      STORE pfIl+4 TO pfIl
 ENDIF
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "F8" STYLE "BT"
 @ pfIl, 24 SAY "Insertar Foto"
 STORE pfIl+1 TO pfIl
 IF vsW0=2
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F7" STYLE "BT"
      @ pfIl+1, 04 SAY "F9" STYLE "BT"
      @ pfIl+0, 24 SAY "Ingreso de Títulos de Medidas"
      @ pfIl+1, 24 SAY "Cambiar de Títulos de Medidas"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 24 SAY "Des-Seleccionar Producto"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+4, 22 SAY ":" STYLE "BT"
 @ pfIl+5, 22 SAY ":" STYLE "BT"
 @ pfIl+6, 22 SAY ":" STYLE "BT"
 @ pfIl+7, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "TAB" STYLE "BT"
 @ pfIl+1, 04 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+2, 04 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+3, 04 SAY "CTRL END" STYLE "BT"
 @ pfIl+4, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+7, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+0, 24 SAY "GRABAR"
 @ pfIl+1, 24 SAY "Ir al siguiente campo"
 @ pfIl+2, 24 SAY "Primera línea"
 @ pfIl+3, 24 SAY "Última línea"
 @ pfIl+4, 24 SAY "Página siguiente"
 @ pfIl+5, 24 SAY "Página anterior"
 @ pfIl+6, 24 SAY "Ir a línea sgte."
 @ pfIl+7, 24 SAY "Ir a línea anterior"
 STORE pfIl+8 TO pfIl
 IF viTe<>1 .OR. vsW0=2
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "<- CTRL" STYLE "BT"
      @ pfIl, 24 SAY "Ir al campo anterior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "ALT DEL" STYLE "BT"
 @ pfIl, 24 SAY "Borrar línea"
 STORE pfIl+2 TO pfIl
 IF viTe<>1 .AND. vcAm="M" .AND. vsW0=2
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "ALT C" STYLE "BT"
      @ pfIl, 24 SAY "Ver o Añadir Productos Alternativos"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2920b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 03 SAY  ;
   "Aquí se puede digitar el nombre de el gráfico o escogerlo con el botón"
 @ pfIl+1, 03 SAY "adjunto."
 @ pfIl+3, 03 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 18 SAY "ESC" STYLE "BT"
 @ pfIl+1, 18 SAY "F10" STYLE "BT"
 @ pfIl+2, 18 SAY "F1" STYLE "BT"
 @ pfIl+3, 18 SAY "F2" STYLE "BT"
 @ pfIl+4, 18 SAY "TAB" STYLE "BT"
 @ pfIl+5, 18 SAY "ENTER" STYLE "BT"
 @ pfIl+0, 26 SAY ":" STYLE "BT"
 @ pfIl+1, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+0, 28 SAY "Regresar al Detalle"
 @ pfIl+1, 28 SAY "Cerrar/regresar a Windows"
 @ pfIl+2, 28 SAY "Ayuda del Programa"
 @ pfIl+3, 28 SAY "Escoger Gráfico"
 @ pfIl+4, 28 SAY "GRABAR el Gráfico seleccionado"
 @ pfIl+5, 28 SAY "Ver Gráfico seleccionado"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_2920b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY "Aquí se puede digitar la fórmula del ítem seleccionado."
 @ pfIl+02, 02 SAY  ;
   "Las fórmulas son tipo EXCEL, los parámetros son: LAR = Largo, ALT =  "
 @ pfIl+03, 02 SAY  ;
   "Alto/Largo, ANC = Ancho, TOT = Total; Adicionalmente, hay variaciones"
 @ pfIl+04, 02 SAY  ;
   "de LAR1 a LAR9, de ANC1 a ANC9, de ALT1 a ALT9. Para llamar el re-"
 @ pfIl+05, 02 SAY "sultado otros códigos del detalle se pone & al inicio y al final del código."
 @ pfIl+07, 02 SAY  ;
   "La Variable TOT, llama a todos los que no tengan TOT en la fórmula."
 @ pfIl+09, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+11, 18 SAY "ESC" STYLE "BT"
 @ pfIl+12, 18 SAY "F10" STYLE "BT"
 @ pfIl+13, 18 SAY "F1" STYLE "BT"
 @ pfIl+14, 18 SAY "TAB" STYLE "BT"
 @ pfIl+15, 18 SAY "ENTER" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+12, 26 SAY ":" STYLE "BT"
 @ pfIl+13, 26 SAY ":" STYLE "BT"
 @ pfIl+14, 26 SAY ":" STYLE "BT"
 @ pfIl+15, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 28 SAY "Regresar al Detalle"
 @ pfIl+12, 28 SAY "Cerrar/regresar a Windows"
 @ pfIl+13, 28 SAY "Ayuda del Programa"
 @ pfIl+14, 28 SAY "Aceptar fórmula"
 @ pfIl+15, 28 SAY "Pasar al siguiente campo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
