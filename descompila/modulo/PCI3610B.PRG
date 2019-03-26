 = INKEY(0.01)
 STORE 99 TO mkEy
 DO toT_3610a IN PCI3610A
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_3610b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_3610b
      CASE viOm=02
           GOTO vrEc
           DO muE_3610b
 ENDCASE
 DO diS_3610b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3610b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3610b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=01
                          DO blA_3610b
                     ELSE
                          DO diS_3610b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3610b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_3610b
                ELSE
                     DO diS_3610b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_Alt_z
                DO q2_0000a
                ACTIVATE POPUP vpO1 BAR voP1 AT ifIl, mcO0+20
                DO p2_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_s
                DO q2_0000a
                ACTIVATE POPUP vpO2 BAR voP2 AT ifIl, mcO0+20
                DO p2_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_c .AND. (SUBSTR(vcM1, 3, 1)<>":" .OR.  ;
                SUBSTR(vcM1, 7, 1)<>"-" .OR. SUBSTR(vcM1, 7, 1)<>"-")
                STORE "El formato del Documento no es correcto..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_c
                = INKEY(0.01)
                STORE SUBSTR(vcM1, 1, 2) TO vtD1
                STORE SUBSTR(vcM1, 4, 3) TO vsR1
                STORE SUBSTR(vcM1, 8, 7) TO vdO1
                SELECT deT_fact
                SEEK vtD1+vsR1+vdO1
                IF EOF()
                     STORE "No hay detalle de Documento de Venta..." TO mmSj
                     STORE 99 TO mkEy
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pvC1301w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                     IF mkEy=k_Enter
                          SELECT deT_fact
                          STORE f1301cod TO vcOd
                          STORE f1301dcr TO vdEs
                          STORE f1301cuv TO vcUv
                          STORE f1301nuv TO vnUv
                          STORE f1301can TO vcAn
                          STORE f1301to1/f1301can TO vpRe
                          STORE f1301to1 TO vtOt
                     ENDIF
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Tab .AND.  ;
                   mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
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
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1des<>vdEs .OR. ftM1can<>vcAn .OR. ftM1pre<>vpRe)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vcAn<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe=3 .AND. vpRe<0
                          STORE "Precio no puede ser menor a cero..." TO mmSj
                     OTHERWISE
                          STORE vpRe*vcAn TO vtOt
                          STORE ROUND(vtOt*(1+(vpIg/100)), 2) TO vtOt
                          DO diS_3610b WITH "R"
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
                SELECT teMporal
                STORE ttOt-ftM1tot TO ttOt
                STORE ROUND(ttOt/(1+(vpIg/100)), 2) TO tnEt
                STORE ttOt-tnEt TO tiGv
                DO toT_3610a IN PCI3610A
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+5.3, ffIl, ucLn, 1
                DO liN_3610a IN PCI3610A WITH ifIl, ffIl+1.1
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
                     DO muE_3610b
                     DO diS_3610b WITH "N"
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
                     DO muE_3610b
                ELSE
                     DO liM_3610b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1des<>vdEs .OR. ftM1can<> ;
                vcAn .OR. ftM1pre<>vpRe .OR. vcAn<1)
                DO ve1_3610b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vdEs))<>0
                DO grA_3610b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_3610b
                ELSE
                     DO diS_3610b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_3610b WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_3610b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_3610a IN PCI3610A WITH ifIl, ffIl+1.1
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
                     DO muE_3610b
                ELSE
                     DO liM_3610b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_3610b
                ELSE
                     DO diS_3610b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_3610a IN PCI3610A WITH ifIl, ffIl+1.1
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
                DO muE_3610b
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_3610b
                ELSE
                     DO diS_3610b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_3610b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3610b
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_3610b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_3610b
                ELSE
                     DO diS_3610b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_3610b
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_3610b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3610b
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_3610b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3610b
                DO diS_3610b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(160) Font "&mLetRom",9 Style "BQ" Size 1,160
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+40 Say "SE DEBE ESCOGER EL DETALLE DE LA NOTA ODEBE SER LA DESCRIPCION DEL PRODUCTO..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+64 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 4 DECIMALES..."                   Font "&mLetRom",9 Style "BQ"
           CASE viTe=3
                @mMF2,mMC2+58 Say "EL VALOR DE VENTA UNITARIO NO PUEDE SER 0, ES DE 7 ENTEROS Y 4 DECIMALES..."    Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @vFIL,mCO0+007.1 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,124.6,120
           CASE viTe=2
                @vFIL,mCO0+132.8 Get  vCAN Font "&mLetAri",9 Style "NQ" Size 1,16.3 Pict "999999.9999"  Color ,&mColBlN
           CASE viTe=3
                @vFIL,mCO0+150.6 Get  vPRE Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "9999999.9999" Color ,&mColBlR
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_3610b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_3610b
      DO diS_3610b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_3610a IN PCI3610A WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3610b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.1 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,000.7
 @vFIL,mCO0+000.7 Say vREC Font "&mLetAri",9 Style "NQ" Size 1,004.5 Pict "999"
 @vFIL,mCO0+005.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,000.6
 @vFIL,mCO0+007.1 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,124.6 Pict "@S120"
 @vFIL,mCO0+132.6 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,016.8 Pict   "999,999.9999"
 @vFIL,mCO0+150.4 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,019.6 Pict "9,999,999.9999"
 @vFIL,mCO0+170.9 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,019.6 Pict "9,999,999.9999"
 DO prEsiona WITH "1", "DESCAN", vfIl, mcO0+muCo-4.1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bla_3610b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_3610a IN PCI3610A WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_3610b
 STORE SPACE(01) TO vdEs, vcOd, vcUv, vnUv
 STORE 00 TO vtOt, vcAn, vpRe
 STORE 01 TO viOm, viTe
ENDPROC
*
PROCEDURE Mue_3610b
 STORE ftM1cod TO vcOd
 STORE ftM1des TO vdEs
 STORE ftM1cuv TO vcUv
 STORE ftM1nuv TO vnUv
 STORE ftM1can TO vcAn
 STORE ftM1pre TO vpRe
 STORE ftM1tot TO vtOt
 STORE 02 TO viOm
 IF viTe<01 .OR. viTe>03
      STORE 02 TO viTe
 ENDIF
ENDPROC
*
PROCEDURE Gra_3610b
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      STORE ttOt-ftM1tot TO ttOt
 ENDIF
 STORE ttOt+vtOt TO ttOt
 STORE ROUND(ttOt/(1+(vpIg/100)), 2) TO tnEt
 STORE ttOt-tnEt TO tiGv
 REPLACE ftM1cod WITH vcOd
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1cuv WITH vcUv
 REPLACE ftM1nuv WITH vnUv
 REPLACE ftM1can WITH vcAn
 REPLACE ftM1pre WITH vpRe
 REPLACE ftM1tot WITH vtOt
 STORE 2 TO viOm
 DO toT_3610a IN PCI3610A
ENDPROC
*
PROCEDURE Ve1_3610b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE vcAn<0
           STORE "Cantidad no puede ser menor a cero..." TO mmSj
      CASE vpRe<0
           STORE "Monto no puede ser menor a cero..." TO mmSj
      OTHERWISE
           STORE vpRe*vcAn TO vtOt
           STORE ROUND(vtOt*(1+(vpIg/100)), 2) TO vtOt
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3610b
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-5 .AND. mcCc<= ;
           ucLn+0.4
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+132.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=mcO0+132.2 .AND.  ;
           mcCc<=mcO0+149.80 .AND. viTe<>2
           IF LEN(ALLTRIM(vdEs))=0
                STORE "Descripción no puede estar vacía..." TO mmSj
                DO poNmsj
           ELSE
                STORE 02 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=mcO0+149.8 .AND.  ;
           mcCc<=ucLn-5 .AND. viTe<>3
           IF LEN(ALLTRIM(vdEs))=0
                STORE "Descripción no puede estar vacía..." TO mmSj
                DO poNmsj
           ELSE
                IF vcAn<0
                     STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 03 TO viTe
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           IF LEN(ALLTRIM(vdEs))<>0
                DO grA_3610b
           ENDIF
           IF viOm=01
                DO blA_3610b
           ELSE
                DO diS_3610b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_3610b
           DO diS_3610b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucLn-5 .AND. mcCc<=ucLn+0.4
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+172.6
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=mcO0+172.6 .AND. mcCc<=ucLn-5
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3610b
 SET READBORDER ON
 DO p00_3610a WITH "1"
 SET READBORDER OFF
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
           DO liM_3610b
      OTHERWISE
           STORE irEc TO vrEc
           STORE ifIl TO vfIl
           DO CASE
                CASE vrEc>frEc
                     DO liM_3610b
                OTHERWISE
                     GOTO vrEc
                     DO muE_3610b
           ENDCASE
 ENDCASE
 DO diS_3610b WITH "R"
ENDPROC
*
PROCEDURE Hl1_3610b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe registrar una descrip-"
 @ pfIl+01, 01 SAY "ción que sustente el monto."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+12, 20 SAY ":" STYLE "BT"
 @ pfIl+13, 20 SAY ":" STYLE "BT"
 @ pfIl+14, 20 SAY ":" STYLE "BT"
 @ pfIl+15, 20 SAY ":" STYLE "BT"
 @ pfIl+16, 20 SAY ":" STYLE "BT"
 @ pfIl+17, 20 SAY ":" STYLE "BT"
 @ pfIl+18, 20 SAY ":" STYLE "BT"
 @ pfIl+19, 20 SAY ":" STYLE "BT"
 @ pfIl+20, 20 SAY ":" STYLE "BT"
 @ pfIl+21, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+13, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+14, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+15, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+16, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+17, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+18, 02 SAY "ALT C" STYLE "BT"
 @ pfIl+19, 02 SAY "ALT S" STYLE "BT"
 @ pfIl+20, 02 SAY "ALT Z" STYLE "BT"
 @ pfIl+21, 02 SAY "TAB" STYLE "BT"
 @ pfIl+05, 22 SAY "Regresar a la Cabecera"
 @ pfIl+06, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 22 SAY "Ayuda del Programa"
 @ pfIl+08, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+09, 22 SAY "la siguiente línea"
 @ pfIl+10, 22 SAY "Ir a la línea siguiente"
 @ pfIl+11, 22 SAY "Ir a la línea anterior"
 @ pfIl+12, 22 SAY "Ir al campo anterior"
 @ pfIl+13, 22 SAY "Primera línea del Detalle"
 @ pfIl+14, 22 SAY "Última línea del Detalle"
 @ pfIl+15, 22 SAY "Página siguiente"
 @ pfIl+16, 22 SAY "Página anterior"
 @ pfIl+17, 22 SAY "Borrar línea"
 @ pfIl+18, 22 SAY "Copiar ítem de FA/BO en formato texto (FA:001-1234567)"
 @ pfIl+19, 22 SAY "Elegir opciones de ND"
 @ pfIl+20, 22 SAY "Elegir opciones de NC"
 @ pfIl+21, 22 SAY "GRABAR DOCUMENTO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
