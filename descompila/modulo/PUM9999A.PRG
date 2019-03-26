 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtDo, vsEr, vnUm, vtB1, vfBi, vcBi, vlIn, vpAg
 STORE SPACE(07) TO vnUm
 STORE SPACE(02) TO vtDo
 STORE msEr(01) TO vsEr
 STORE 00 TO viT1
 STORE 01 TO viTe
 STORE 99 TO mkEy
 STORE 08 TO muFi
 STORE 98 TO muCo
 SET READBORDER ON
 DO p00_9999a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9999a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9999a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=03
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vtDo+vsEr
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                STORE 99 TO mkEy
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE 02 TO viTe
                     STORE f9999tdo TO vtDo
                     STORE f9999ser TO vsEr
                     @mFI0+0.4,mCO0+39 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.5 Pict "!!"
                     @mFI0+0.4,mCO0+81 Say vSER Font "&mLetRom",12 Style "BQ" Size 1,5.4 Pict "!!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9999a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9999a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO imP_9999a
                     DO p1_0000a
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=03
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>02
                STORE "No hay mas campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<03
                STORE "No hay más campos arriba...        " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe<03
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vtDo+vsEr
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9999a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9999tdo+f9999ser=vtDo+vsEr
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9999a
                          DO diS_9999a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9999tdo+f9999ser=vtDo+vsEr
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9999a
                          DO diS_9999a
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vtDo+vsEr
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ELSE
                     IF vtDo+vsEr=f9999tdo+f9999ser
                          SKIP
                          IF EOF() .OR. BOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9999tdo+f9999ser=vtDo+vsEr
                          STORE "Este es el último Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9999a
                          DO diS_9999a
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vtDo+vsEr
                SET NEAR OFF
                IF EOF() .OR. BOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9999tdo+ ;
                    f9999ser>=vtDo+vsEr
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9999tdo+f9999ser=vtDo+vsEr
                          STORE "Este es el primer Tipo, Serie y Numero de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9999a
                          DO diS_9999a
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=03
                               DO grA_9999a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=03
                               DO grA_9999a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=01
                               STORE 02 TO viTe
                               DO veR_0000a
                               IF mkEy<>99
                                    STORE 03 TO viTe
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE 1 TO viTe
           CASE mkEy=k_Ctrl_left
                STORE 1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 3 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 3 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_0000a
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
                     DO grA_9999a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe<03 .AND. viT1<>02
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe=03
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(85) Font "&mLetRom",9 Style "BQ" Size 1,94
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+11 Say "EL TIPO DE DOCUMENTO SE TIENE QUE ELEGIR DE LA TABLA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+24 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+13 Say "ES DE 7 DÍGITOS, ESTE NÚMERO ES EL ÚLTIMO GRABADO..."    Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=01
                @mFI0+0.4,mCO0+39 Get vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
           CASE viTe=02
                @mFI0+0.4,mCO0+81 Get vSER Font "&mLetRom",12 Style "BQ" Size 1,5.4 Pict "!!!"     Color ,&mColBlN
           CASE viTe=03
                @mFI0+4.6,mCO0+38 Get vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=01 .AND. LEN(ALLTRIM(vtDo))=0
           STORE "Tipo de Documento no puede estar vacío...              "  ;
                 TO mmSj
      CASE viTe=01 .AND. LEN(ALLTRIM(vtDo))<2
           STORE "Tipo de Documento no puede ser menor de 2 caracteres..."  ;
                 TO mmSj
      CASE viTe=01 .AND. AT(" ", vtDo)<>0
           STORE "Tipo de Documento no puede tener espacios vacíos...    "  ;
                 TO mmSj
      CASE viTe=01 .AND. vtDo<>"FA" .AND. vtDo<>"FE" .AND. vtDo<>"FC"  ;
           .AND. vtDo<>"BO" .AND. vtDo<>"BE" .AND. vtDo<>"BC" .AND. vtDo<> ;
           "TF" .AND. vtDo<>"TB" .AND. vtDo<>"ND" .AND. vtDo<>"NC" .AND.  ;
           vtDo<>"N1" .AND. vtDo<>"N2" .AND. vtDo<>"N3" .AND. vtDo<>"N4"  ;
           .AND. vtDo<>"GR" .AND. vtDo<>"ER" .AND. vtDo<>"CT" .AND. vtDo<> ;
           "NP" .AND. vtDo<>"PE" .AND. vtDo<>"LE" .AND. vtDo<>"LP" .AND.  ;
           vtDo<>"CO" .AND. vtDo<>"GI" .AND. vtDo<>"GS" .AND. vtDo<>"IM"  ;
           .AND. vtDo<>"PC" .AND. vtDo<>"BP"
           STORE "Tipo de Documento no pertenece a tabla...            "  ;
                 TO mmSj
      CASE viTe=01
           DO diS_9999a
      CASE viTe=02 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "Serie de Documento no puede estar vacío...           "  ;
                 TO mmSj
      CASE viTe=01 .AND. LEN(ALLTRIM(vsEr))<3
           STORE "Serie de Documento no puede ser menor de 3 dígitos..."  ;
                 TO mmSj
      CASE viTe=02 .AND. AT(" ", vsEr)<>0
           STORE "Serie de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=02 .AND. vsEr="000"
           STORE "Serie de Documento no puede ser 000...               "  ;
                 TO mmSj
      CASE viTe=02
           SEEK vtDo+vsEr
           IF EOF()
                DO coL_fondo
                @mFI0+6.6,mCO0+mUCO-17 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12
                STORE "0000000" TO vnUm
           ELSE
                DO muE_9999a
           ENDIF
           DO diS_9999a
      CASE viTe=03 .AND. LEN(ALLTRIM(vnUm))=0
           STORE "Número de Documento no puede estar vacío...           "  ;
                 TO mmSj
      CASE viTe=03 .AND. LEN(ALLTRIM(vnUm))<7
           STORE "Número de Documento no puede ser menor de 7 dígitos..."  ;
                 TO mmSj
      CASE viTe=03 .AND. AT(" ", vnUm)<>0
           STORE "Número de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=03
           DO coL_fondo
           @mFI0+4.6,mCO0+82 Say StrTran(Str(Val(vNUM)+1,7,0)," ","0") Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9999a
 DO coL_fondo
 @mFI0+6.6,mCO0+mUCO-17 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12
 STORE f9999tdo TO vtDo
 STORE f9999ser TO vsEr
 STORE f9999num TO vnUm
ENDPROC
*
PROCEDURE Tdo_9999a
 PARAMETER ptDo
 DO CASE
      CASE ptDo="FA"
           STORE "Factura" TO mfRa
      CASE ptDo="TF"
           STORE "Ticket Factura" TO mfRa
      CASE ptDo="FE"
           STORE "Factura Electrónica" TO mfRa
      CASE ptDo="FC"
           STORE "Factura Electrónica Sol" TO mfRa
      CASE ptDo="BO"
           STORE "Boleta" TO mfRa
      CASE ptDo="TB"
           STORE "Ticket Boleta" TO mfRa
      CASE ptDo="BE"
           STORE "Boleta Electrónica" TO mfRa
      CASE ptDo="BC"
           STORE "Boleta Electrónica Sol" TO mfRa
      CASE ptDo="GR"
           STORE "Guía de Remisión" TO mfRa
      CASE ptDo="ER"
           STORE "Guía de Remisión Electrónica" TO mfRa
      CASE ptDo="NC"
           STORE "Nota de Crédito" TO mfRa
      CASE ptDo="N1"
           STORE "Nota de Crédito Electrónica" TO mfRa
      CASE ptDo="N3"
           STORE "Nota de Crédito Electrónica SOL" TO mfRa
      CASE ptDo="ND"
           STORE "Nota de Débito" TO mfRa
      CASE ptDo="N2"
           STORE "Nota de Débito Electrónica" TO mfRa
      CASE ptDo="N3"
           STORE "Nota de Débito Electrónica SOL" TO mfRa
      CASE ptDo="CT"
           STORE "Cotización" TO mfRa
      CASE ptDo="NP"
           STORE "Nota de Pedido" TO mfRa
      CASE ptDo="PE"
           STORE "Pedidos de Venta" TO mfRa
      CASE ptDo="LE"
           STORE "Letra de Venta" TO mfRa
      CASE ptDo="LP"
           STORE "Letra de Compra" TO mfRa
      CASE ptDo="CO"
           STORE "Compra/Gasto" TO mfRa
      CASE ptDo="GI"
           STORE "Guía de Ingreso" TO mfRa
      CASE ptDo="GS"
           STORE "Guía de Salida" TO mfRa
      CASE ptDo="IM"
           STORE "Importación" TO mfRa
      CASE ptDo="PC"
           STORE "Percepción" TO mfRa
      CASE ptDo="BP"
           STORE "Boleta de Pago" TO mfRa
 ENDCASE
ENDPROC
*
PROCEDURE Dis_9999a
 = INKEY(0.01)
 DO tdO_9999a WITH vtDo
 DO coL_fondo
 @mFI0+2.5,mCO0+02 Say "- "+mFRA+" -"                        Font "&mLetAri",10 Style "NQ" Size 1,33
 @mFI0+4.6,mCO0+82 Say StrTran(Str(Val(vNUM)+1,7,0)," ","0") Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
 DO coLbln
 @mFI0+0.4,mCO0+39 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.5 Pict "!!"
 @mFI0+0.4,mCO0+81 Say vSER Font "&mLetRom",12 Style "BQ" Size 1,5.4 Pict "!!!"
 @mFI0+4.6,mCO0+38 Say vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
ENDPROC
*
PROCEDURE Gra_9999a
 DO grAbar WITH "1"
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF f9999num<>vnUm
      REPLACE f9999num WITH vnUm
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9999a
 SEEK vtDo+vsEr
 IF EOF()
      STORE "Tipo de Documento no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9999tdo WITH SPACE(02)
 REPLACE f9999ser WITH SPACE(03)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9999a
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_9999a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9999a
 PRIVATE ptAm
 STORE 40 TO mcLn
 STORE 59 TO ptAm
 STORE 00 TO vlIn, vpAg
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           IF vpAg<>0
                DO paG_0000a WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           DO caB_0000a WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO cb1_0000a WITH "Numeración de Documentos", "PUM9999A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+00 Say "Tipo de Documento" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+36 Say "Último Número"     Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+58 Say "Siguiente Número"  Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+00 Say "Tipo de Documento" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+36 Say "Último Número"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+58 Say "Siguiente Número"  Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO tdO_9999a WITH f9999tdo
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say F9999TDO                                               Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+05 Say ": "+mFRA                                              Font "&mLetAri",9 Style "NT" Size 1,23
                     @vLIN,mCLN+38 Say F9999SER+"-"+F9999NUM                                  Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+62 Say F9999SER+"-"+StrTran(Str(Val(F9999NUM)+1,7,0)," ","0") Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN    Say F9999TDO                                               Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+05 Say ": "+mFRA                                              Font "&mLetSwi",9 Style "NT" Size 1,23
                     @vLIN,mCLN+38 Say F9999SER+"-"+F9999NUM                                  Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+62 Say F9999SER+"-"+StrTran(Str(Val(F9999NUM)+1,7,0)," ","0") Font "&mLetSwi",9 Style "NT"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_9999a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-8 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+2 TO mmF2
 STORE mcO0+89.5 TO vcBi
 STORE 00 TO viT1
 STORE mfI0+0.4 TO vfBi
 Define Popup vTB1 from mFI0+2,mCO0+56 to mFI0+24.5,mCO0+90 Font "&mLetAri",13 Style "NQ" Prompt Field " "+F9999TDO+" - "+F9999SER+"  "+F9999NUM Scroll Color Scheme 10 Footer "TIPO Y SERIE"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Numeración de Documentos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1.1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.4,mCO0+02 Say "TIPO DE DOCUMENTO:"    Font "&mLetRom",12 Style "BT"
 @mFI0+0.4,mCO0+49 Say "NÚMERO DE SERIE:"      Font "&mLetRom",12 Style "BT"
 @mFI0+2.5,mCO0+02 Say "- Factura -"           Font "&mLetAri",11 Style "NT"
 @mFI0+4.7,mCO0+02 Say "ÚLTIMO NÚMERO GRABADO" Font "&mLetAri",10 Style "NT"
 @mFI0+4.7,mCO0+55 Say "SIGUIENTE NÚMERO:"     Font "&mLetAri",10 Style "NT"
 @mFI0+0.4,mCO0+39 Get vTDO                    Font "&mLetRom",12 Style "BQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
 @mFI0+0.4,mCO0+81 Get vSER                    Font "&mLetRom",12 Style "BQ" Size 1,5.4 Pict "!!!"     Color ,&mColBlN
 @mFI0+4.6,mCO0+38 Get vNUM                    Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,&mColBlN
 @mFI0+4.6,mCO0+82 Get vNUM                    Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 STORE mmF2+3 TO mmF2
 STORE mcO0-28 TO mcO0
 DO cuAdro WITH mmF2+4, mcO0, mmF2+13.9, mcO0+muCo+61
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mMF2+04.7,mCO0+002 Say "TABLA DE DOCUMENTOS:"              Font "&mLetRom",11 Style "BT"
 @mMF2+06.3,mCO0+002 Say "FA/TF/FE/FC"                       Font "&mLetAri",12 Style "BT"
 @mMF2+07.6,mCO0+002 Say "BO/TB/BE/BC"                       Font "&mLetAri",12 Style "BT"
 @mMF2+08.9,mCO0+002 Say "NC/N1/N3"                          Font "&mLetAri",12 Style "BT"
 @mMF2+10.2,mCO0+002 Say "ND/N2/N4"                          Font "&mLetAri",12 Style "BT"
 @mMF2+11.5,mCO0+002 Say "GR/RE"                             Font "&mLetAri",12 Style "BT"
 @mMF2+06.3,mCO0+025 Say ": Factura/Ticket/Fact.Elect/Sol"   Font "&mLetAri",12 Style "NT"
 @mMF2+07.6,mCO0+025 Say ": Boleta/Ticket/Bol.Elect/Sol"     Font "&mLetAri",12 Style "NT"
 @mMF2+08.9,mCO0+025 Say ": Nota de Crédito/NC Elect/NC SOL" Font "&mLetAri",12 Style "NT"
 @mMF2+10.2,mCO0+025 Say ": Nota de Débito/ND Elect/ND SOL"  Font "&mLetAri",12 Style "NT"
 @mMF2+11.5,mCO0+025 Say ": Guía de Remisión/G.R.Elect"      Font "&mLetAri",12 Style "NT"
 @mMF2+06.3,mCO0+077 Say "CT"                                Font "&mLetAri",12 Style "BT"
 @mMF2+07.6,mCO0+077 Say "NP"                                Font "&mLetAri",12 Style "BT"
 @mMF2+08.9,mCO0+077 Say "PC"                                Font "&mLetAri",12 Style "BT"
 @mMF2+10.2,mCO0+077 Say "PE"                                Font "&mLetAri",12 Style "BT"
 @mMF2+11.5,mCO0+077 Say "LE/LP"                             Font "&mLetAri",12 Style "BT"
 @mMF2+06.3,mCO0+087 Say ": Cotización"                      Font "&mLetAri",12 Style "NT"
 @mMF2+07.6,mCO0+087 Say ": N.de Pedido"                     Font "&mLetAri",12 Style "NT"
 @mMF2+08.9,mCO0+087 Say ": Percepción"                      Font "&mLetAri",12 Style "NT"
 @mMF2+10.2,mCO0+087 Say ": Pedido de Venta"                 Font "&mLetAri",12 Style "NT"
 @mMF2+11.5,mCO0+087 Say ": Letras Cli/Prov"                 Font "&mLetAri",12 Style "NT"
 @mMF2+06.3,mCO0+117 Say "IM"                                Font "&mLetAri",12 Style "BT"
 @mMF2+07.6,mCO0+117 Say "CO"                                Font "&mLetAri",12 Style "BT"
 @mMF2+08.9,mCO0+117 Say "GI"                                Font "&mLetAri",12 Style "BT"
 @mMF2+10.2,mCO0+117 Say "GS"                                Font "&mLetAri",12 Style "BT"
 @mMF2+11.5,mCO0+117 Say "BP"                                Font "&mLetAri",12 Style "BT"
 @mMF2+06.3,mCO0+126 Say ": Importación"                     Font "&mLetAri",12 Style "NT"
 @mMF2+07.6,mCO0+126 Say ": Compra/Gastos"                   Font "&mLetAri",12 Style "NT"
 @mMF2+08.9,mCO0+126 Say ": Guía de Ingreso"                 Font "&mLetAri",12 Style "NT"
 @mMF2+10.2,mCO0+126 Say ": Guía de Salida"                  Font "&mLetAri",12 Style "NT"
 @mMF2+11.5,mCO0+126 Say ": Boletas de Pago"                 Font "&mLetAri",12 Style "NT"
 STORE mmF2-3 TO mmF2
 STORE mcO0+28 TO mcO0
ENDPROC
*
PROCEDURE Clp_9999a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>02
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>02
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+33
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.80
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.40
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.60
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>01 .AND.  ;
           mcCc>=mcO0+2.1 .AND. mcCc<=mcO0+44.7
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>02 .AND.  ;
           mcCc>=mcO0+48.9 .AND. mcCc<=mcO0+88.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+4.607 .AND. mfIl<=mfI0+5.892 .AND. viTe<>03 .AND.  ;
           mcCc>=mcO0+2.5 .AND. mcCc<=mcO0+49.7
           STORE 03 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9999a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "Este Mantenimiento,  es un programa utilitario,  en donde se pueden crear,"
 @ pfIl+01, 01 SAY  ;
   "modificar y eliminar las Numeraciones de los Documentos que emite la em-"
 @ pfIl+02, 01 SAY  ;
   "presa.  Aquí se ingresa el último  número  grabado o el número anterior al"
 @ pfIl+03, 01 SAY  ;
   "que deseamos que continue. Los Tipos de Documentos están en la Tabla "
 @ pfIl+04, 01 SAY "inferior."
 @ pfIl+06, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+15, 24 SAY ":" STYLE "BT"
 @ pfIl+16, 24 SAY ":" STYLE "BT"
 @ pfIl+17, 24 SAY ":" STYLE "BT"
 @ pfIl+18, 24 SAY ":" STYLE "BT"
 @ pfIl+19, 24 SAY ":" STYLE "BT"
 @ pfIl+20, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 06 SAY "ESC" STYLE "BT"
 @ pfIl+09, 06 SAY "F10" STYLE "BT"
 @ pfIl+10, 06 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=01
           @ pfIl+11, 06 SAY "F2" STYLE "BT"
           @ pfIl+12, 06 SAY "F5" STYLE "BT"
           @ pfIl+13, 06 SAY "F6" STYLE "BT"
           @ pfIl+14, 06 SAY "F7" STYLE "BT"
           @ pfIl+15, 06 SAY "F8" STYLE "BT"
           @ pfIl+16, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+17, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+18, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL P" STYLE "BT"
      CASE viTe=02
           @ pfIl+21, 24 SAY ":" STYLE "BT"
           @ pfIl+22, 24 SAY ":" STYLE "BT"
           @ pfIl+11, 06 SAY "F2" STYLE "BT"
           @ pfIl+12, 06 SAY "F5" STYLE "BT"
           @ pfIl+13, 06 SAY "F6" STYLE "BT"
           @ pfIl+14, 06 SAY "F7" STYLE "BT"
           @ pfIl+15, 06 SAY "F8" STYLE "BT"
           @ pfIl+16, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+17, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+18, 06 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL INICIO" STYLE "BT"
           @ pfIl+21, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+22, 06 SAY "CTRL P" STYLE "BT"
      OTHERWISE
           @ pfIl+21, 24 SAY ":" STYLE "BT"
           @ pfIl+22, 24 SAY ":" STYLE "BT"
           @ pfIl+23, 24 SAY ":" STYLE "BT"
           @ pfIl+11, 06 SAY "F5" STYLE "BT"
           @ pfIl+12, 06 SAY "F6" STYLE "BT"
           @ pfIl+13, 06 SAY "F7" STYLE "BT"
           @ pfIl+14, 06 SAY "F8" STYLE "BT"
           @ pfIl+15, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+16, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+17, 06 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+18, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL INICIO" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+21, 06 SAY "CTRL SUPR" STYLE "BT"
           @ pfIl+22, 06 SAY "CTRL P" STYLE "BT"
           @ pfIl+23, 06 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+09, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+08, 26 SAY "Regresar al Menú Principal"
           @ pfIl+11, 26 SAY "Consulta de los Tipos y Series de Documentos"
           @ pfIl+12, 26 SAY "Inicio del Archivo"
           @ pfIl+13, 26 SAY "Final del Archivo"
           @ pfIl+14, 26 SAY "Registro siguiente"
           @ pfIl+15, 26 SAY "Registro anterior"
           @ pfIl+16, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+17, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+18, 26 SAY "Ir al siguiente campo"
           @ pfIl+19, 26 SAY "Ir al último campo"
           @ pfIl+20, 26 SAY "Imprimir Listado"
      CASE viTe=02
           @ pfIl+08, 26 SAY "Regresar al primer campo"
           @ pfIl+11, 26 SAY "Consulta de los Tipos y Series de Documentos"
           @ pfIl+12, 26 SAY "Inicio del Archivo"
           @ pfIl+13, 26 SAY "Final del Archivo"
           @ pfIl+14, 26 SAY "Registro siguiente"
           @ pfIl+15, 26 SAY "Registro anterior"
           @ pfIl+16, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+17, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+18, 26 SAY "Ir al campo superior"
           @ pfIl+19, 26 SAY "Ir al campo derecho, llegando al final graba"
           @ pfIl+20, 26 SAY "Ir al primer campo"
           @ pfIl+21, 26 SAY "Ir al último campo"
           @ pfIl+22, 26 SAY "Imprimir Listado"
      OTHERWISE
           @ pfIl+08, 26 SAY "Regresar al primer campo"
           @ pfIl+11, 26 SAY "Inicio del Archivo"
           @ pfIl+12, 26 SAY "Final del Archivo"
           @ pfIl+13, 26 SAY "Registro siguiente"
           @ pfIl+14, 26 SAY "Registro anterior"
           @ pfIl+15, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+16, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+17, 26 SAY "Ir al campo superior"
           @ pfIl+18, 26 SAY "Ir al campo derecho, llegando al final graba"
           @ pfIl+19, 26 SAY "Ir al primer campo"
           @ pfIl+20, 26 SAY "Ir al último campo"
           @ pfIl+21, 26 SAY "Borrar registro"
           @ pfIl+22, 26 SAY "Imprimir Listado"
           @ pfIl+23, 26 SAY "Grabar y regresar al 1er.campo"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtDo, vsEr, vnUm, vtB1, vfBi, vcBi, vlIn, vpAg
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
