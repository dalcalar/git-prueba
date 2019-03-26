 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc, viTe
           STORE 00 TO urEc, frEc
           DO liM_4240b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_4240b
      CASE viOm=02
           STORE 2 TO viTe
           GOTO vrEc
           DO muE_4240b
 ENDCASE
 DO diS_4240b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_4240b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4240b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=1
                          DO blA_4240b
                     ELSE
                          DO diS_4240b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viOm=2
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT coNceptos
                DO orD_0000a WITH "4210", "K", "F4210DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO pkC4210w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT coNceptos
                DO orD_0000a WITH "4210", "K", "F4210COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vcPt
                DO veR_lock
                IF mkEy=k_Enter
                     STORE f4210cod TO vcPt
                     STORE f4210des TO vdEs
                     STORE f4210dcr TO vdCr
                     STORE f4210tip TO vtIp
                     STORE f4210afp TO vaFp
                     STORE f4210por TO vpOr
                     STORE 2 TO vtPo
                     DO diS_4240b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter .AND. mkEy<>k_Ctrl_end
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                STORE SPACE(04) TO vcPt
                STORE SPACE(25) TO vdCr
                STORE SPACE(50) TO vdEs
                STORE 00 TO vtIp, vaFp, vpOr
                STORE 01 TO viTe
                STORE 02 TO vtPo
                STORE 99 TO mkEy
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4240b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_4240b
                ELSE
                     DO diS_4240b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_Alt_del .AND. viOm=1
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_del .AND. vtPo=1
                STORE "No se puede borrar un CONCEPTO FIJO..." TO mmSj
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
           CASE mkEy=k_Ctrl_left .AND. viOm=2 .AND. vtPo=1
                STORE "No se puede retroceder..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viOm=2 .AND. viTe=2
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viOm=2 .AND. vtPo=1
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1tot<>vtOt)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcPt))=0
                          STORE "Descripción tiene que pertenecer a algún código de Concepto..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vtOt=0
                          STORE "Monto no puede ser cero..." TO mmSj
                     CASE viTe=2 .AND. vtOt<0
                          STORE "Monto no puede ser menor a cero..." TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<2
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<2
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                DO CASE
                     CASE ftM1tip=1
                          STORE tiNg-ftM1tot TO tiNg
                     CASE ftM1tip=2
                          STORE tdCt-ftM1tot TO tdCt
                     CASE ftM1tip=3
                          STORE taPo-ftM1tot TO taPo
                ENDCASE
                DO toT_4240a
                DO coL_fondo
                DO suBe WITH vfIl, icLn+3.6, ffIl, ucLn, 1
                DO liN_4240a IN PKI4240A WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, icLn+0.1 CLEAR TO ufIl+1, icLn+2.9
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
                     DO muE_4240b
                     DO diS_4240b WITH "N"
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
                     DO muE_4240b
                ELSE
                     DO liM_4240b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1des<>vdEs .OR. ftM1tot<> ;
                vtOt .OR. vtOt<1 .OR. LEN(ALLTRIM(vcPt))=0)
                DO ve1_4240b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcPt))<>0 .AND.  ;
                LEN(ALLTRIM(vdEs))<>0 .AND. vtOt<>0
                DO grA_4240b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_4240b
                ELSE
                     DO diS_4240b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_4240b WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_4240b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_4240a IN PKI4240A WITH ifIl, ffIl+1.1
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
                     DO muE_4240b
                ELSE
                     DO liM_4240b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_4240b
                ELSE
                     DO diS_4240b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_4240a IN PKI4240A WITH ifIl, ffIl+1.1
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
                DO muE_4240b
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_4240b
                ELSE
                     DO diS_4240b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_4240b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4240b
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_4240b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_4240b
                ELSE
                     DO diS_4240b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_4240b
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_4240b WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4240b
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_4240b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO urEc
                SKIP
                DO paN_4240b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4240b
                DO diS_4240b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
      DO CASE
           CASE viOm=2 .AND. vtIp=1
                @mMF2,mMC2+34 Say "ESTE CONCEPTO FIJO NO SE PUEDE MODIFICAR..."                  Font "&mLetRom",9 Style "BQ"
           CASE viTe=1
                @mMF2,mMC2+38 Say "SE DEBE SELECCIONAR UN CONCEPTO..."                           Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+21 Say "LA CANTIDAD NO PUEDE SER 0, ES DE 6 ENTEROS Y 2 DECIMALES..." Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viOm=2 .AND. vtPo=1
                mkEy = INKEY(0, "HM")
           CASE viTe=1
                DO deS_4240b WITH "1"
                SET CURSOR ON
                READ
                SET CURSOR OFF
           CASE viTe=2
                DO toT_4240b WITH "1"
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_4240b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_4240b IN PKI4240B
      DO diS_4240b IN PKI4240B WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_4240a IN PKI4240A WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4240b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. vtPo=1
           DO coL_fonaz
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R" .AND. vtPo=1
           DO coLblz
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfIl, ucLn-3.8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="1" .AND. vtPo=1
           @vFIL,iCLN+000.1 Say vREC Font "&mLetAri",9 Style "NQI" Size 1,02.7 Pict "99"
           @vFIL,iCLN+054.1 Say vDCR Font "&mLetAri",9 Style "NQI" Size 1,21.3 Pict "@S23"
      CASE mrEs="1"
           @vFIL,iCLN+000.1 Say vREC Font "&mLetAri",9 Style "NQ"  Size 1,02.7 Pict "99"
           @vFIL,iCLN+054.1 Say vDCR Font "&mLetAri",9 Style "NQ"  Size 1,21.3 Pict "@S23"
      CASE mrEs>="2" .AND. vtPo=1
           @vFIL,iCLN+000.1 Say vREC Font "&mLetAri",9 Style "NQI" Size 1,02.7 Pict "99"
           @vFIL,iCLN+054.1 Say vDCR Font "&mLetAri",9 Style "NQI" Size 1,30.0 Pict "@S25"
           @vFIL,iCLN+097.4 Say vPOR Font "&mLetAri",9 Style "NQI" Size 1,08.2 Pict "999.99"
           @vFIL,iCLN+105.6 Say "%"  Font "&mLetAri",9 Style "NQI" Size 1,01.9
           DO CASE
                CASE vtIp=1
                     @vFIL,iCLN+84.8 Say "Ingreso"    Font "&mLetAri",9 Style "NQI" Size 1,12
                CASE vtIp=2
                     @vFIL,iCLN+84.8 Say "Descuento"  Font "&mLetAri",9 Style "NQI" Size 1,12
                CASE vtIp=3
                     @vFIL,iCLN+84.8 Say "Aportacion" Font "&mLetAri",9 Style "NQI" Size 1,12
                OTHERWISE
                     @vFIL,iCLN+84.8 Say Space(12)    Font "&mLetAri",9 Style "NQI" Size 1,12
           ENDCASE
      CASE mrEs>="2"
           @vFIL,iCLN+000.1 Say vREC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @vFIL,iCLN+054.1 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,30.0 Pict "@S25"
           @vFIL,iCLN+097.4 Say vPOR Font "&mLetAri",9 Style "NQ" Size 1,08.2 Pict "999.99"
           @vFIL,iCLN+105.6 Say "%"  Font "&mLetAri",9 Style "NQ" Size 1,01.9
           DO CASE
                CASE vtIp=1
                     @vFIL,iCLN+84.8 Say "Ingreso"    Font "&mLetAri",9 Style "NQ" Size 1,12
                CASE vtIp=2
                     @vFIL,iCLN+84.8 Say "Descuento"  Font "&mLetAri",9 Style "NQ" Size 1,12
                CASE vtIp=3
                     @vFIL,iCLN+84.8 Say "Aportacion" Font "&mLetAri",9 Style "NQ" Size 1,12
                OTHERWISE
                     @vFIL,iCLN+84.8 Say Space(12)    Font "&mLetAri",9 Style "NQ" Size 1,12
           ENDCASE
 ENDCASE
 DO deS_4240b WITH "2"
 DO toT_4240b WITH "2"
ENDPROC
*
PROCEDURE Des_4240b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1"
           @vFIL,iCLN+3.6 Edit vDES Font "&mLetAri",9  Style "NQ"  Size 1,50,50
      CASE ptIp="2" .AND. vtPo=1
           @vFIL,iCLN+3.6 Say  vDES Font "&mLetAri",9  Style "NQI" Size 1,50 Pict "@S53"
      CASE ptIp="2"
           @vFIL,iCLN+3.6 Say  vDES Font "&mLetAri",9  Style "NQ"  Size 1,50 Pict "@S53"
 ENDCASE
ENDPROC
*
PROCEDURE Tot_4240b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1" .AND. vtIp=1
           @vFIL,vCLN+00.1 Get vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
      CASE ptIp="1" .AND. vtIp=2
           @vFIL,vCLN+14.7 Get vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
      CASE ptIp="1" .AND. vtIp=3
           @vFIL,vCLN+29.3 Get vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.3 Pict "999999.99" Color ,&mColBlN
      CASE ptIp="2" .AND. vtIp=1
           @vFIL,vCLN+14.6 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           @vFIL,vCLN+29.2 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           IF vtPo=1
                @vFIL,vCLN Say vTOT   Font "&mLetAri",9  Style "NQI" Size 1,14 Pict "999,999.99"
           ELSE
                @vFIL,vCLN Say vTOT   Font "&mLetAri",9  Style "NQ"  Size 1,14 Pict "999,999.99"
           ENDIF
      CASE ptIp="2" .AND. vtIp=2
           @vFIL,vCLN+00.0 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           @vFIL,vCLN+29.2 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           IF vtPo=1
                @vFIL,vCLN+14.6 Say vTOT Font "&mLetAri",9 Style "NQI" Size 1,14 Pict "999,999.99"
           ELSE
                @vFIL,vCLN+14.6 Say vTOT Font "&mLetAri",9 Style "NQ"  Size 1,14 Pict "999,999.99"
           ENDIF
      CASE ptIp="2" .AND. vtIp=3
           @vFIL,vCLN+00.0 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           @vFIL,vCLN+14.6 Say " "  Font "&mLetAri",9  Style "NQ" Size 1,14
           IF vtPo=1
                @vFIL,vCLN+29.2 Say vTOT Font "&mLetAri",9 Style "NQI" Size 1,14 Pict "999,999.99"
           ELSE
                @vFIL,vCLN+29.2 Say vTOT Font "&mLetAri",9 Style "NQ"  Size 1,14 Pict "999,999.99"
           ENDIF
      CASE ptIp="2"
           @vFIL,vCLN+00.0 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,14
           @vFIL,vCLN+14.6 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,14
           @vFIL,vCLN+29.2 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,14
 ENDCASE
ENDPROC
*
PROCEDURE Bla_4240b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_4240a IN PKI4240A WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_4240b
 STORE SPACE(04) TO vcPt
 STORE SPACE(25) TO vdCr
 STORE SPACE(50) TO vdEs
 STORE SPACE(70) TO vfOr
 STORE 02 TO vtPo
 STORE 01 TO viOm, viTe, vmNd
 STORE 00 TO vtIp, vaFp, vpOr, vtOt
ENDPROC
*
PROCEDURE Mue_4240b
 STORE ftM1cpt TO vcPt
 STORE ftM1des TO vdEs
 STORE ftM1dcr TO vdCr
 STORE ftM1mnd TO vmNd
 STORE ftM1for TO vfOr
 STORE ftM1tot TO vtOt
 STORE ftM1tip TO vtIp
 STORE ftM1tpo TO vtPo
 STORE ftM1afp TO vaFp
 STORE ftM1por TO vpOr
 STORE 02 TO viOm, viTe
ENDPROC
*
PROCEDURE Gra_4240b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      DO CASE
           CASE ftM1tip=1
                STORE tiNg-ftM1tot TO tiNg
           CASE ftM1tip=2
                STORE tdCt-ftM1tot TO tdCt
           CASE ftM1tip=3
                STORE taPo-ftM1tot TO taPo
      ENDCASE
 ENDIF
 = INKEY(0.01)
 SELECT teMporal
 REPLACE ftM1cpt WITH vcPt
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1dcr WITH vdCr
 REPLACE ftM1mnd WITH vmNd
 REPLACE ftM1for WITH vfOr
 REPLACE ftM1tot WITH vtOt
 REPLACE ftM1tip WITH vtIp
 REPLACE ftM1afp WITH vaFp
 REPLACE ftM1por WITH vpOr
 REPLACE ftM1tpo WITH vtPo
 STORE 2 TO viOm
 DO CASE
      CASE vtIp=1
           STORE tiNg+vtOt TO tiNg
      CASE vtIp=2
           STORE tdCt+vtOt TO tdCt
      CASE vtIp=3
           STORE taPo+vtOt TO taPo
 ENDCASE
 DO toT_4240a
ENDPROC
*
PROCEDURE Ve1_4240b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcPt))=0
           STORE "Descripción tiene que pertenecer a algún código..." TO mmSj
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE vtOt=0
           STORE "Monto no puede ser cero..." TO mmSj
      CASE vtOt<0
           STORE "Monto no puede ser menor a cero..." TO mmSj
 ENDCASE
ENDPROC
*
PROCEDURE Mu1_4240b
 STORE viTe TO xiTe
 STORE vcPt TO xcPt
 STORE vdEs TO xdEs
 STORE vdCr TO xdCr
 STORE vmNd TO xmNd
 STORE vfOr TO xfOr
 STORE vtOt TO xtOt
 STORE vtIp TO xtIp
 STORE vtPo TO xtPo
 STORE vaFp TO xaFp
 STORE vpOr TO xpOr
ENDPROC
*
PROCEDURE Mu2_4240b
 STORE xiTe TO viTe
 STORE xcPt TO vcPt
 STORE xdEs TO vdEs
 STORE xdCr TO vdCr
 STORE xmNd TO vmNd
 STORE xfOr TO vfOr
 STORE xtOt TO vtOt
 STORE xtIp TO vtIp
 STORE xtPo TO vtPo
 STORE xaFp TO vaFp
 STORE xpOr TO vpOr
ENDPROC
*
PROCEDURE Res_4240b
 SET READBORDER ON
 STORE vrEc TO xrEc
 DO mu1_4240b
 DO p00_4240a IN PKI4240A WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
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
           STORE 01 TO irEc, vrEc, viOm
           STORE 00 TO urEc, frEc
           DO mu2_4240b
      CASE irEc>frEc .AND. vrEc=irEc
           STORE 01 TO viOm
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
           DO mu2_4240b
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
                DO mu2_4240b
           ELSE
                GOTO vrEc
                DO muE_4240b
           ENDIF
 ENDCASE
 DO diS_4240b WITH "R"
ENDPROC
*
PROCEDURE Clp_4240b
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>1 .AND. mcCc>=icLn  ;
           .AND. mcCc<=vcLn-0.4
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=vcLn- ;
           0.4 .AND. mcCc<=vcLn+14.2 .AND. vtIp=1
           IF LEN(ALLTRIM(vcPt))=0
                STORE "Se tiene que escoger Código de Concepto..." TO mmSj
                DO poNmsj
           ELSE
                STORE 2 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=vcLn+ ;
           14.2 .AND. mcCc<=vcLn+28.8 .AND. vtIp=2
           IF LEN(ALLTRIM(vcPt))=0
                STORE "Se tiene que escoger Código de Concepto..." TO mmSj
                DO poNmsj
           ELSE
                STORE 2 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. viTe<>2 .AND. mcCc>=vcLn+ ;
           28.8 .AND. mcCc<=vcLn+43.6 .AND. vtIp=3
           IF LEN(ALLTRIM(vcPt))=0
                STORE "Se tiene que escoger Código de Concepto..." TO mmSj
                DO poNmsj
           ELSE
                STORE 2 TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4240b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe escoger un Código de "
 @ pfIl+01, 01 SAY "Concepto. La descripción no se puede modificar."
 @ pfIl+02, 01 SAY  ;
   "El Detalle se graba en un archivo temporal, el cual toma una numeración al"
 @ pfIl+03, 01 SAY  ;
   "momento de Grabar el Documento. Si se saliera del Documento sin grabarlo,"
 @ pfIl+04, 01 SAY "el Archivo Temporal se borrará automáticamente."
 @ pfIl+06, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 02 SAY "ESC" STYLE "BT"
 @ pfIl+09, 02 SAY "F10" STYLE "BT"
 @ pfIl+10, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 22 SAY "Regresar a la Cabecera"
 @ pfIl+09, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 22 SAY "Ayuda del Programa"
 STORE pfIl+11 TO pfIl
 IF viTe=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY "Consulta de Conceptos registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+3, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+4, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+5, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+0, 22 SAY "Ir a la línea siguiente"
 @ pfIl+1, 22 SAY "Ir a la línea anterior"
 @ pfIl+2, 22 SAY "Ir al sgte.campo, llegando al último pasa a sgte.línea"
 @ pfIl+3, 22 SAY "Ir al campo anterior"
 @ pfIl+4, 22 SAY "Primera línea del Detalle"
 @ pfIl+5, 22 SAY "Última línea del Detalle"
 STORE pfIl+6 TO pfIl
 IF viTe=1 .OR. viOm=1
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 22 SAY "Des-Seleccionar Concepto"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+3, 02 SAY "TAB" STYLE "BT"
 @ pfIl+0, 22 SAY "Página siguiente"
 @ pfIl+1, 22 SAY "Página anterior"
 @ pfIl+2, 22 SAY "Borrar línea"
 @ pfIl+3, 22 SAY "GRABAR DOCUMENTO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
