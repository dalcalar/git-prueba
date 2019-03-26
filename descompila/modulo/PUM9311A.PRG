 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9311", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9311TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtDo, ctDo, vtD1, vtB1, vtPo, vlIn, vpAg, vfBi, vcBi
 STORE SPACE(02) TO ctDo
 STORE "FA" TO vtDo
 STORE "00" TO vtD1
 STORE 01 TO viTe, vtPo
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 07 TO muFi
 STORE 130 TO muCo
 SET READBORDER ON
 DO p00_9311a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9311a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9311a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
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
                SEEK vtDo
                SET NEAR OFF
                STORE 99 TO mkEy
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO CASE
                     CASE mkEy=k_Esc
                          EXIT
                     CASE mkEy=k_Enter
                          DO coLbln
                          STORE f9311tdo TO vtDo
                          @mFI0+0.4,mCO0+20 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!"
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9311a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9311a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO imP_9311a
                     DO p1_0000a
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vtDo
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9311a
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
                          STORE "No hay Registros Grabados...          "  ;
                                TO mmSj
                     CASE f9311tdo=vtDo
                          STORE "Este es el primer Tipo de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9311a
                          DO diS_9311a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados...          "  ;
                                TO mmSj
                     CASE f9311tdo=vtDo
                          STORE "Este es el último Tipo de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9311a
                          DO diS_9311a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vtDo
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vtDo=f9311tdo
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados...          "  ;
                                TO mmSj
                     CASE f9311tdo=vtDo
                          STORE "Este es el último Tipo de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9311a
                          DO diS_9311a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vtDo
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9311tdo>=vtDo
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados...          "  ;
                                TO mmSj
                     CASE f9311tdo=vtDo
                          STORE "Este es el primer Tipo de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9311a
                          DO diS_9311a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=2
                          DO grA_9311a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                     ELSE
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 2 TO ciTx
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
                STORE 2 TO ciTx
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
                     DO grA_9311a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>1
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF viTe=1
                @mFI0+3.5,mCO0+35 Say "Registro de Compras" Font "&mLetAri",10 Style "BT" Color RGB(120,120,120,220,213,199)
                @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           ELSE
                DO coL_fondo
                @mFI0+3.5,mCO0+35 Say "Registro de Compras" Font "&mLetAri",10 Style "BQ"
                @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO
           ENDIF
           READ TIMEOUT 0.01
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+17 Say "ES DE 2 CARACTERES ALFANUMÉRICOS, ELEGIBLES DE LA TABLA ADJUNTA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+17 Say "ES DE 2 DÍGITOS, ESTOS SON LOS QUE VAN EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+25 Get vTD1 Font "&mLetAri",9  Style "NQ" Size 1,2.5 Pict "99" Color ,&mColBlN
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vtDo))=0
           STORE "Tipo de Documento no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vtDo)<>0
           STORE "Tipo de Documento no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vtDo<>"FA" .AND. vtDo<>"AG" .AND. vtDo<>"GA"  ;
           .AND. vtDo<>"FE" .AND. vtDo<>"AT" .AND. vtDo<>"GN" .AND. vtDo<> ;
           "FC" .AND. vtDo<>"BA" .AND. vtDo<>"GT" .AND. vtDo<>"TK" .AND.  ;
           vtDo<>"BI" .AND. vtDo<>"IG" .AND. vtDo<>"TF" .AND. vtDo<>"BM"  ;
           .AND. vtDo<>"IV" .AND. vtDo<>"TB" .AND. vtDo<>"BT" .AND. vtDo<> ;
           "LC" .AND. vtDo<>"BO" .AND. vtDo<>"BV" .AND. vtDo<>"LK" .AND.  ;
           vtDo<>"BE" .AND. vtDo<>"CE" .AND. vtDo<>"RH" .AND. vtDo<>"BC"  ;
           .AND. vtDo<>"CN" .AND. vtDo<>"ME" .AND. vtDo<>"NC" .AND. vtDo<> ;
           "CO" .AND. vtDo<>"OP" .AND. vtDo<>"ND" .AND. vtDo<>"CP" .AND.  ;
           vtDo<>"PA" .AND. vtDo<>"C1" .AND. vtDo<>"CR" .AND. vtDo<>"PE"  ;
           .AND. vtDo<>"C2" .AND. vtDo<>"DA" .AND. vtDo<>"PO" .AND. vtDo<> ;
           "D1" .AND. vtDo<>"DS" .AND. vtDo<>"PU" .AND. vtDo<>"D2" .AND.  ;
           vtDo<>"DU" .AND. vtDo<>"RA" .AND. vtDo<>"N1" .AND. vtDo<>"FI"  ;
           .AND. vtDo<>"RE" .AND. vtDo<>"N2" .AND. vtDo<>"FO" .AND. vtDo<> ;
           "SA" .AND. vtDo<>"N3" .AND. vtDo<>"SI" .AND. vtDo<>"FR" .AND.  ;
           vtDo<>"N4" .AND. vtDo<>"GR" .AND. vtDo<>"SE" .AND. vtDo<>"TA"
           STORE "Tipo de Documento no pertenece a tabla...          " TO mmSj
      CASE viTe=1
           SEEK vtDo
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE "00" TO vtD1
           ELSE
                DO muE_9311a
           ENDIF
           IF vtDo<>ctDo
                DO diS_9311a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vtD1))=0
           STORE "Tipo de Documento Contable no puede estar vacío...          "  ;
                 TO mmSj
      CASE viTe=2 .AND. AT(" ", vtD1)<>0
           STORE "Tipo de Documento Contable no puede tener espacios vacíos..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9311a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9311tdo TO vtDo
 STORE f9311td1 TO vtD1
 STORE f9311tpo TO vtPo
ENDPROC
*
PROCEDURE Dis_9311a
 DO coLsc4
 DO CASE
      CASE vtDo="FA"
           @mFI0+0.5,mCO0+55 Say "Factura"                               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="FE"
           @mFI0+0.5,mCO0+55 Say "Factura Electrónica"                   Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="FC"
           @mFI0+0.5,mCO0+55 Say "Factura Electrónica Sol"               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BO"
           @mFI0+0.5,mCO0+55 Say "Boleta de Venta"                       Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BE"
           @mFI0+0.5,mCO0+55 Say "Boleta Electrónica"                    Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BC"
           @mFI0+0.5,mCO0+55 Say "Boleta Electrónica Sol"                Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="NC"
           @mFI0+0.5,mCO0+55 Say "Nota de Crédito"                       Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="N1"
           @mFI0+0.5,mCO0+55 Say "Nota de Crédito Electrónica"           Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="N3"
           @mFI0+0.5,mCO0+55 Say "Nota de Crédito Electrónica SOL"       Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="ND"
           @mFI0+0.5,mCO0+55 Say "Nota de Débito"                        Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="N2"
           @mFI0+0.5,mCO0+55 Say "Nota de Débito Electrónica"            Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="N4"
           @mFI0+0.5,mCO0+55 Say "Nota de Débito Electrónica SOL"        Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="TK"
           @mFI0+0.5,mCO0+55 Say "Ticket"                                Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="TF"
           @mFI0+0.5,mCO0+55 Say "Ticket-Factura"                        Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="TB"
           @mFI0+0.5,mCO0+55 Say "Ticket-Boleta"                         Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="C1"
           @mFI0+0.5,mCO0+55 Say "Nota de Crédito especial"              Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="D1"
           @mFI0+0.5,mCO0+55 Say "Nota de Débito especial"               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="C2"
           @mFI0+0.5,mCO0+55 Say "Nota de Crédito no domiciliado"        Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="D2"
           @mFI0+0.5,mCO0+55 Say "Nota de Débito no domiciliado"         Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="GR"
           @mFI0+0.5,mCO0+55 Say "Guías de Remisión - Remitente"         Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="RH"
           @mFI0+0.5,mCO0+55 Say "Recibo por Honorarios"                 Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="LC"
           @mFI0+0.5,mCO0+55 Say "Liquidación de Compra"                 Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BA"
           @mFI0+0.5,mCO0+55 Say "Boleto de Avión"                       Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="CP"
           @mFI0+0.5,mCO0+55 Say "Carta de Porte Aéreo"                  Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="RA"
           @mFI0+0.5,mCO0+55 Say "Recibo de Arrendamiento"               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BV"
           @mFI0+0.5,mCO0+55 Say "Póliza emit.Bolsa de Valores"          Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="FI"
           @mFI0+0.5,mCO0+55 Say "Doc.emit.x Bancos o Inst.Financ"       Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="PE"
           @mFI0+0.5,mCO0+55 Say "Percepción"                            Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="PU"
           @mFI0+0.5,mCO0+55 Say "Recibos de Servicios Públicos"         Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BT"
           @mFI0+0.5,mCO0+55 Say "Boleto de Transporte Urbano"           Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BI"
           @mFI0+0.5,mCO0+55 Say "Boleto de Transporte Interprovincial"  Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="IG"
           @mFI0+0.5,mCO0+55 Say "Doc.emitido x Igles.Catol.x arrend."   Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="FO"
           @mFI0+0.5,mCO0+55 Say "Doc.emitido x Adm.Fondo Pensiones"     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="AT"
           @mFI0+0.5,mCO0+55 Say "Boleta de Atracc.y Espec.Públicos"     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="RE"
           @mFI0+0.5,mCO0+55 Say "Comprobante de Retención"              Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="CE"
           @mFI0+0.5,mCO0+55 Say "Conocimiento de Embarque"              Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="CO"
           @mFI0+0.5,mCO0+55 Say "Comp.por operaciones no habituales"    Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="PO"
           @mFI0+0.5,mCO0+55 Say "Polizas de adj. emitidas en remates"   Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="CR"
           @mFI0+0.5,mCO0+55 Say "Certif.de pago de regalias"            Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="DA"
           @mFI0+0.5,mCO0+55 Say "Documento de Atribución"               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="AG"
           @mFI0+0.5,mCO0+55 Say "Rec.agua artificial c/fines agrarios"  Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="SE"
           @mFI0+0.5,mCO0+55 Say "Seguro complemento de trab.riesgo"     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="TA"
           @mFI0+0.5,mCO0+55 Say "Tarifa única de uso de aeropuerto"     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="FR"
           @mFI0+0.5,mCO0+55 Say "Doc.emitidos por Cofopri"              Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="SI"
           @mFI0+0.5,mCO0+55 Say "Doc.emit.por adq.de Sist.Pago TD y TC" Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="GT"
           @mFI0+0.5,mCO0+55 Say "Guías de Remisión - Transportistas"    Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="GA"
           @mFI0+0.5,mCO0+55 Say "Doc.Emit.Emp.Recaud.Garantía de red"   Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="OP"
           @mFI0+0.5,mCO0+55 Say "Doc.del Operador"                      Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="PA"
           @mFI0+0.5,mCO0+55 Say "Doc.del Participe"                     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="GN"
           @mFI0+0.5,mCO0+55 Say "Recibo de Distribución de gas natural" Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="IV"
           @mFI0+0.5,mCO0+55 Say "Constancia de Depósito IVAP"           Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="DU"
           @mFI0+0.5,mCO0+55 Say "DUA"                                   Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="DS"
           @mFI0+0.5,mCO0+55 Say "Despacho simplificado"                 Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="ME"
           @mFI0+0.5,mCO0+55 Say "Declaración de mensajeria Courier"     Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="LK"
           @mFI0+0.5,mCO0+55 Say "Liquidación de Cobranza"               Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="BM"
           @mFI0+0.5,mCO0+55 Say "BVME"                                  Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="SA"
           @mFI0+0.5,mCO0+55 Say "Comprobante de Pago SEAE"              Font "&mLetAri",9 Style "NQ" Size 1,48
      CASE vtDo="CN"
           @mFI0+0.5,mCO0+55 Say "Comprobante de no domiciliado"         Font "&mLetAri",9 Style "NQ" Size 1,48
 ENDCASE
 DO coLbln
 @mFI0+3.5,mCO0+25 Say vTD1 Font "&mLetAri",9 Style "NQ" Size 1,2.5 Pict "99"
 DO coL_fondo
 @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO
 READ TIMEOUT 0.01
 STORE vtDo TO ctDo
ENDPROC
*
PROCEDURE Gra_9311a
 DO grAbar WITH "1"
 SEEK vtDo
 IF EOF()
      DO nuEvo_rg
      REPLACE f9311tdo WITH vtDo
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9311td1 WITH ALLTRIM(vtD1)
 REPLACE f9311tpo WITH vtPo
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9311a
 SEEK vtDo
 IF EOF()
      STORE "Tipo de Documento no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9311tdo WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9311a
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
 DO reP_9311a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9311a
 PRIVATE ptAm
 STORE 32 TO mcLn
 STORE 65 TO ptAm
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
                DO cb1_0000a WITH "Tipos de Documentos Sunat", "PUM9311A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+55.5 Say "Cód" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+55.5 Say "Cód" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Tipo de Documento" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+55 Say "Ctble"             Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+65 Say "Registro Compras"  Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Tipo de Documento" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+55 Say "Ctble"             Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+65 Say "Registro Compras"  Font "&mLetAri",9 Style "NT"
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
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN Say F9311TDO Font "&mLetAri",9 Style "NT"
                     DO CASE
                          CASE vtDo="FA"
                               @vLIN,mCLN+4 Say ": Factura"                               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="FE"
                               @vLIN,mCLN+4 Say ": Factura Electrónica"                   Font "&mLetAri",9 Style "NT"
                          CASE vtDo="FC"
                               @vLIN,mCLN+4 Say ": Factura Electrónica Sol"               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BO"
                               @vLIN,mCLN+4 Say ": Boleta de Venta"                       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BE"
                               @vLIN,mCLN+4 Say ": Boleta de Venta Electrónica"           Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BC"
                               @vLIN,mCLN+4 Say ": Boleta de Venta Electrónica Sol"       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="TK"
                               @vLIN,mCLN+4 Say ": Ticket"                                Font "&mLetAri",9 Style "NT"
                          CASE vtDo="TF"
                               @vLIN,mCLN+4 Say ": Ticket-Factura"                        Font "&mLetAri",9 Style "NT"
                          CASE vtDo="TB"
                               @vLIN,mCLN+4 Say ": Ticket-Boleta"                         Font "&mLetAri",9 Style "NT"
                          CASE vtDo="NC"
                               @vLIN,mCLN+4 Say ": Nota de Crédito"                       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="ND"
                               @vLIN,mCLN+4 Say ": Nota de Débito"                        Font "&mLetAri",9 Style "NT"
                          CASE vtDo="N1"
                               @vLIN,mCLN+4 Say ": Nota de Crédito Electrónica"           Font "&mLetAri",9 Style "NT"
                          CASE vtDo="N2"
                               @vLIN,mCLN+4 Say ": Nota de Débito Electrónica"            Font "&mLetAri",9 Style "NT"
                          CASE vtDo="N3"
                               @vLIN,mCLN+4 Say ": Nota de Crédito Electrónica SOL"       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="N4"
                               @vLIN,mCLN+4 Say ": Nota de Débito Electrónica SOL"        Font "&mLetAri",9 Style "NT"
                          CASE vtDo="C1"
                               @vLIN,mCLN+4 Say ": Nota de Crédito especial"              Font "&mLetAri",9 Style "NT"
                          CASE vtDo="D1"
                               @vLIN,mCLN+4 Say ": Nota de Débito especial"               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="C2"
                               @vLIN,mCLN+4 Say ": Nota de Crédito no domiciliado"        Font "&mLetAri",9 Style "NT"
                          CASE vtDo="D2"
                               @vLIN,mCLN+4 Say ": Nota de Débito no domiciliado"         Font "&mLetAri",9 Style "NT"
                          CASE vtDo="GR"
                               @vLIN,mCLN+4 Say ": Guías de Remisión - Remitente"         Font "&mLetAri",9 Style "NT"
                          CASE vtDo="RH"
                               @vLIN,mCLN+4 Say ": Recibo por Honorarios"                 Font "&mLetAri",9 Style "NT"
                          CASE vtDo="LC"
                               @vLIN,mCLN+4 Say ": Liquidación de Compra"                 Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BA"
                               @vLIN,mCLN+4 Say ": Boleto de Avión"                       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="CP"
                               @vLIN,mCLN+4 Say ": Carta de Porte Aereo"                  Font "&mLetAri",9 Style "NT"
                          CASE vtDo="RA"
                               @vLIN,mCLN+4 Say ": Recibo de Arrendamiento"               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BV"
                               @vLIN,mCLN+4 Say ": Póliza emit.Bolsa de Valores"          Font "&mLetAri",9 Style "NT"
                          CASE vtDo="FI"
                               @vLIN,mCLN+4 Say ": Doc.emit.x Bancos o Inst.Financ"       Font "&mLetAri",9 Style "NT"
                          CASE vtDo="PE"
                               @vLIN,mCLN+4 Say ": Percepción"                            Font "&mLetAri",9 Style "NT"
                          CASE vtDo="PU"
                               @vLIN,mCLN+4 Say ": Recibos de Servicios Públicos"         Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BT"
                               @vLIN,mCLN+4 Say ": Boleto de Transporte Urbano"           Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BI"
                               @vLIN,mCLN+4 Say ": Boleto de Transporte Interprovincial"  Font "&mLetAri",9 Style "NT"
                          CASE vtDo="IG"
                               @vLIN,mCLN+4 Say ": Doc.emitido x Igles.Catól.x Arrend."   Font "&mLetAri",9 Style "NT"
                          CASE vtDo="FO"
                               @vLIN,mCLN+4 Say ": Doc.emitido x Adm.Fondo pensiones"     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="AT"
                               @vLIN,mCLN+4 Say ": Boleta de Atracc.y Espec.Públicos"     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="RE"
                               @vLIN,mCLN+4 Say ": Comprobante de Retención"              Font "&mLetAri",9 Style "NT"
                          CASE vtDo="CE"
                               @vLIN,mCLN+4 Say ": Conocimiento de Embarque"              Font "&mLetAri",9 Style "NT"
                          CASE vtDo="CO"
                               @vLIN,mCLN+4 Say ": Comp.por Operaciones no habituales"    Font "&mLetAri",9 Style "NT"
                          CASE vtDo="PO"
                               @vLIN,mCLN+4 Say ": Pólizas de Adj. Emitidas en Remates"   Font "&mLetAri",9 Style "NT"
                          CASE vtDo="CR"
                               @vLIN,mCLN+4 Say ": Certif.de Pago de regalias"            Font "&mLetAri",9 Style "NT"
                          CASE vtDo="DA"
                               @vLIN,mCLN+4 Say ": Documento de Atribución"               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="AG"
                               @vLIN,mCLN+4 Say ": Rec.Agua Artificial c/fines Agrarios"  Font "&mLetAri",9 Style "NT"
                          CASE vtDo="SE"
                               @vLIN,mCLN+4 Say ": Seguro Complemento de Trab.Riesgo"     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="TA"
                               @vLIN,mCLN+4 Say ": Tarifa Unica de uso de Aeropuerto"     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="FR"
                               @vLIN,mCLN+4 Say ": Doc.emitidos por Cofopri"              Font "&mLetAri",9 Style "NT"
                          CASE vtDo="SI"
                               @vLIN,mCLN+4 Say ": Doc.emit.por Adq.de Sist.Pago TD y TC" Font "&mLetAri",9 Style "NT"
                          CASE vtDo="GT"
                               @vLIN,mCLN+4 Say ": Guías de Remision - Transportistas"    Font "&mLetAri",9 Style "NT"
                          CASE vtDo="GA"
                               @vLIN,mCLN+4 Say ": Doc.emit.emp.recaud.garantia de red"   Font "&mLetAri",9 Style "NT"
                          CASE vtDo="OP"
                               @vLIN,mCLN+4 Say ": Doc.del Operador"                      Font "&mLetAri",9 Style "NT"
                          CASE vtDo="PA"
                               @vLIN,mCLN+4 Say ": Doc.del Participe"                     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="GN"
                               @vLIN,mCLN+4 Say ": Recibo de Distribución de Gas Natural" Font "&mLetAri",9 Style "NT"
                          CASE vtDo="IV"
                               @vLIN,mCLN+4 Say ": Constancia de deposito IVAP"           Font "&mLetAri",9 Style "NT"
                          CASE vtDo="DU"
                               @vLIN,mCLN+4 Say ": DUA"                                   Font "&mLetAri",9 Style "NT"
                          CASE vtDo="DS"
                               @vLIN,mCLN+4 Say ": Despacho simplificado"                 Font "&mLetAri",9 Style "NT"
                          CASE vtDo="ME"
                               @vLIN,mCLN+4 Say ": Declaración de mensajeria courier"     Font "&mLetAri",9 Style "NT"
                          CASE vtDo="LK"
                               @vLIN,mCLN+4 Say ": Liquidación de Cobranza"               Font "&mLetAri",9 Style "NT"
                          CASE vtDo="BM"
                               @vLIN,mCLN+4 Say ": BVME"                                  Font "&mLetAri",9 Style "NT"
                          CASE vtDo="SA"
                               @vLIN,mCLN+4 Say ": Comprobante de Pago SEAE"              Font "&mLetAri",9 Style "NT"
                          CASE vtDo="CN"
                               @vLIN,mCLN+4 Say ": Comprobante de no domiciliado"         Font "&mLetAri",9 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+57 Say F9311TD1 Font "&mLetAri",9 Style "NT"
                     DO CASE
                          CASE f9311tpo=1
                               @vLIN,mCLN+65 Say "Con derecho a Crédito Fiscal"           Font "&mLetAri",9 Style "NT"
                          CASE f9311tpo=2
                               @vLIN,mCLN+65 Say "Sin derecho a Crédito Fiscal"           Font "&mLetAri",9 Style "NT"
                          CASE f9311tpo=3
                               @vLIN,mCLN+65 Say "Ninguno"                                Font "&mLetAri",9 Style "NT"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN Say F9311TDO Font "&mLetSwi",9 Style "NT"
                     DO CASE
                          CASE vtDo="FA"
                               @vLIN,mCLN+4 Say ": Factura"                               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="FE"
                               @vLIN,mCLN+4 Say ": Factura Electrónica"                   Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="FC"
                               @vLIN,mCLN+4 Say ": Factura Electrónica Sol"               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BO"
                               @vLIN,mCLN+4 Say ": Boleta de Venta"                       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BE"
                               @vLIN,mCLN+4 Say ": Boleta de Venta Electrónica"           Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BC"
                               @vLIN,mCLN+4 Say ": Boleta de Venta Electrónica Sol"       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="TK"
                               @vLIN,mCLN+4 Say ": Ticket"                                Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="TF"
                               @vLIN,mCLN+4 Say ": Ticket-Factura"                        Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="TB"
                               @vLIN,mCLN+4 Say ": Ticket-Boleta"                         Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="NC"
                               @vLIN,mCLN+4 Say ": Nota de Crédito"                       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="ND"
                               @vLIN,mCLN+4 Say ": Nota de Débito"                        Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="N1"
                               @vLIN,mCLN+4 Say ": Nota de Crédito Electrónica"           Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="N2"
                               @vLIN,mCLN+4 Say ": Nota de Débito Electrónica"            Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="N3"
                               @vLIN,mCLN+4 Say ": Nota de Crédito Electrónica SOL"       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="N4"
                               @vLIN,mCLN+4 Say ": Nota de Débito Electrónica SOL"        Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="C1"
                               @vLIN,mCLN+4 Say ": Nota de Crédito especial"              Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="D1"
                               @vLIN,mCLN+4 Say ": Nota de Débito especial"               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="C2"
                               @vLIN,mCLN+4 Say ": Nota de Crédito no domiciliado"        Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="D2"
                               @vLIN,mCLN+4 Say ": Nota de Débito no domiciliado"         Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="GR"
                               @vLIN,mCLN+4 Say ": Guías de Remisión - Remitente"         Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="RH"
                               @vLIN,mCLN+4 Say ": Recibo por Honorarios"                 Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="LC"
                               @vLIN,mCLN+4 Say ": Liquidación de Compra"                 Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BA"
                               @vLIN,mCLN+4 Say ": Boleto de Avión"                       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="CP"
                               @vLIN,mCLN+4 Say ": Carta de Porte Aereo"                  Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="RA"
                               @vLIN,mCLN+4 Say ": Recibo de Arrendamiento"               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BV"
                               @vLIN,mCLN+4 Say ": Póliza emit.Bolsa de Valores"          Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="FI"
                               @vLIN,mCLN+4 Say ": Doc.emit.x Bancos o Inst.Financ"       Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="PE"
                               @vLIN,mCLN+4 Say ": Percepción"                            Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="PU"
                               @vLIN,mCLN+4 Say ": Recibos de Servicios Públicos"         Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BT"
                               @vLIN,mCLN+4 Say ": Boleto de Transporte Urbano"           Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BI"
                               @vLIN,mCLN+4 Say ": Boleto de Transporte Interprovincial"  Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="IG"
                               @vLIN,mCLN+4 Say ": Doc.emitido x Igles.Catól.x Arrend."   Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="FO"
                               @vLIN,mCLN+4 Say ": Doc.emitido x Adm.Fondo pensiones"     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="AT"
                               @vLIN,mCLN+4 Say ": Boleta de Atracc.y Espec.Públicos"     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="RE"
                               @vLIN,mCLN+4 Say ": Comprobante de Retención"              Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="CE"
                               @vLIN,mCLN+4 Say ": Conocimiento de Embarque"              Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="CO"
                               @vLIN,mCLN+4 Say ": Comp.por Operaciones no habituales"    Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="PO"
                               @vLIN,mCLN+4 Say ": Pólizas de Adj. Emitidas en Remates"   Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="CR"
                               @vLIN,mCLN+4 Say ": Certif.de Pago de regalias"            Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="DA"
                               @vLIN,mCLN+4 Say ": Documento de Atribución"               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="AG"
                               @vLIN,mCLN+4 Say ": Rec.Agua Artificial c/fines Agrarios"  Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="SE"
                               @vLIN,mCLN+4 Say ": Seguro Complemento de Trab.Riesgo"     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="TA"
                               @vLIN,mCLN+4 Say ": Tarifa Unica de uso de Aeropuerto"     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="FR"
                               @vLIN,mCLN+4 Say ": Doc.emitidos por Cofopri"              Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="SI"
                               @vLIN,mCLN+4 Say ": Doc.emit.por Adq.de Sist.Pago TD y TC" Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="GT"
                               @vLIN,mCLN+4 Say ": Guías de Remision - Transportistas"    Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="GA"
                               @vLIN,mCLN+4 Say ": Doc.emit.emp.recaud.garantia de red"   Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="OP"
                               @vLIN,mCLN+4 Say ": Doc.del Operador"                      Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="PA"
                               @vLIN,mCLN+4 Say ": Doc.del Participe"                     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="GN"
                               @vLIN,mCLN+4 Say ": Recibo de Distribución de Gas Natural" Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="IV"
                               @vLIN,mCLN+4 Say ": Constancia de deposito IVAP"           Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="DU"
                               @vLIN,mCLN+4 Say ": DUA"                                   Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="DS"
                               @vLIN,mCLN+4 Say ": Despacho simplificado"                 Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="ME"
                               @vLIN,mCLN+4 Say ": Declaración de mensajeria courier"     Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="LK"
                               @vLIN,mCLN+4 Say ": Liquidación de Cobranza"               Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="BM"
                               @vLIN,mCLN+4 Say ": BVME"                                  Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="SA"
                               @vLIN,mCLN+4 Say ": Comprobante de Pago SEAE"              Font "&mLetSwi",9 Style "NT"
                          CASE vtDo="CN"
                               @vLIN,mCLN+4 Say ": Comprobante de no domiciliado"         Font "&mLetSwi",9 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+57 Say F9311TD1                                         Font "&mLetSwi",9 Style "NT"
                     DO CASE
                          CASE f9311tpo=1
                               @vLIN,mCLN+65 Say "Con derecho a Crédito Fiscal"           Font "&mLetSwi",9 Style "NT"
                          CASE f9311tpo=2
                               @vLIN,mCLN+65 Say "Sin derecho a Crédito Fiscal"           Font "&mLetSwi",9 Style "NT"
                          CASE f9311tpo=3
                               @vLIN,mCLN+65 Say "Ninguno"                                Font "&mLetSwi",9 Style "NT"
                     ENDCASE
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
PROCEDURE P00_9311a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-4 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0-8 TO mfI0
 STORE mfI0+muFi+27 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+25.1 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+.1,mCO0+30 to mFI0+22.5,mCO0+44 Font "&mLetAri",13 Style "NQ" Prompt Field "   "+F9311TDO Scroll Color Scheme 10 Footer "TIPOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Documentos Sunat"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1.1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 @ mfI0+00.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+00.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+02 Say "CÓDIGO:"              Font "&mLetRom",13 Style "BT"
 @mFI0+00.5,mCO0+33 Say "DESCRIPCIÓN:"         Font "&mLetAri",10 Style "NT"
 @mFI0+00.5,mCO0+55 Say "Factura"              Font "&mLetAri",10 Style "NT"
 @mFI0+03.5,mCO0+03 Say "TIPO CONTABLE"        Font "&mLetAri",10 Style "NT"
 @mFI0+03.5,mCO0+35 Say "Registro de Compras"  Font "&mLetAri",10 Style "BT" Color RGB(120,120,120,220,213,199)
 DO coL_fondo
 STORE mcO0-35 TO mcO0
 DO cuAdro WITH mfI0+muFi+3, mcO0, mfI0+muFi+25, mcO0+muCo+70
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+10.2,mCO0+002 Say "TABLA DE DOCUMENTOS:"                      Font "&mLetRom",11 Style "BT"
 @mFI0+12.0,mCO0+002 Say "FA: Factura"                               Font "&mLetCou",10 Style "NT"
 @mFI0+13.0,mCO0+002 Say "FE: Factura Electrónica"                   Font "&mLetCou",10 Style "NT"
 @mFI0+14.0,mCO0+002 Say "FC: Factura Electrónica Sol"               Font "&mLetCou",10 Style "NT"
 @mFI0+15.0,mCO0+002 Say "BO: Boleta de Venta"                       Font "&mLetCou",10 Style "NT"
 @mFI0+16.0,mCO0+002 Say "BE: Boleta Electrónica"                    Font "&mLetCou",10 Style "NT"
 @mFI0+17.0,mCO0+002 Say "BE: Boleta Electrónica Sol"                Font "&mLetCou",10 Style "NT"
 @mFI0+18.0,mCO0+002 Say "NC: Nota de Crédito"                       Font "&mLetCou",10 Style "NT"
 @mFI0+19.0,mCO0+002 Say "N1: Nota de Crédito Electrónica"           Font "&mLetCou",10 Style "NT"
 @mFI0+20.0,mCO0+002 Say "N3: Nota de Crédito Electrónica SOL"       Font "&mLetCou",10 Style "NT"
 @mFI0+21.0,mCO0+002 Say "C1: Nota de Crédito especial"              Font "&mLetCou",10 Style "NT"
 @mFI0+22.0,mCO0+002 Say "C2: Nota de Crédito no domiciliado"        Font "&mLetCou",10 Style "NT"
 @mFI0+23.0,mCO0+002 Say "ND: Nota de Débito"                        Font "&mLetCou",10 Style "NT"
 @mFI0+24.0,mCO0+002 Say "N2: Nota de Débito Electrónica"            Font "&mLetCou",10 Style "NT"
 @mFI0+25.0,mCO0+002 Say "N4: Nota de Débito Electrónica SOL"        Font "&mLetCou",10 Style "NT"
 @mFI0+26.0,mCO0+002 Say "D1: Nota de Débito especial"               Font "&mLetCou",10 Style "NT"
 @mFI0+27.0,mCO0+002 Say "D2: Nota de Débito no domiciliado"         Font "&mLetCou",10 Style "NT"
 @mFI0+28.0,mCO0+002 Say "GR: Guias de Remisión - Remitente"         Font "&mLetCou",10 Style "NT"
 @mFI0+29.0,mCO0+002 Say "RH: Recibo por Honorarios"                 Font "&mLetCou",10 Style "NT"
 @mFI0+30.0,mCO0+002 Say "RE: Comprobante de Retención"              Font "&mLetCou",10 Style "NT"
 @mFI0+12.0,mCO0+062 Say "TK: Ticket / TF: Tic-Fact / TB: Tic-Bol"   Font "&mLetCou",10 Style "NT"
 @mFI0+13.0,mCO0+062 Say "LC: Liquidación de Compra"                 Font "&mLetCou",10 Style "NT"
 @mFI0+14.0,mCO0+062 Say "BA: Boleto de Avién"                       Font "&mLetCou",10 Style "NT"
 @mFI0+15.0,mCO0+062 Say "CP: Carta de Porte Aereo"                  Font "&mLetCou",10 Style "NT"
 @mFI0+16.0,mCO0+062 Say "RA: Recibo de Arrendamiento"               Font "&mLetCou",10 Style "NT"
 @mFI0+17.0,mCO0+062 Say "BV: Poliza emit.Bolsa de Valores"          Font "&mLetCou",10 Style "NT"
 @mFI0+18.0,mCO0+062 Say "FI: Doc.emit.x Bancos o Inst.Financ"       Font "&mLetCou",10 Style "NT"
 @mFI0+19.0,mCO0+062 Say "PU: Recibos de Servicios Públicos"         Font "&mLetCou",10 Style "NT"
 @mFI0+20.0,mCO0+062 Say "BT: Boleto de Transporte Urbano"           Font "&mLetCou",10 Style "NT"
 @mFI0+21.0,mCO0+062 Say "BI: Boleto de Transporte Interprovincial"  Font "&mLetCou",10 Style "NT"
 @mFI0+22.0,mCO0+062 Say "IG: Doc.emitido x Igles.Catól.x Arrend."   Font "&mLetCou",10 Style "NT"
 @mFI0+23.0,mCO0+062 Say "FO: Doc.emitido x Adm.fondo Pensiones"     Font "&mLetCou",10 Style "NT"
 @mFI0+24.0,mCO0+062 Say "AT: Boleta de Atracc.y Espec.Públicos"     Font "&mLetCou",10 Style "NT"
 @mFI0+25.0,mCO0+062 Say "CE: Conocimiento de Embarque"              Font "&mLetCou",10 Style "NT"
 @mFI0+26.0,mCO0+062 Say "CO: Comp.por operaciones no habituales"    Font "&mLetCou",10 Style "NT"
 @mFI0+27.0,mCO0+062 Say "PO: Polizas de Adj. emitidas en remates"   Font "&mLetCou",10 Style "NT"
 @mFI0+28.0,mCO0+062 Say "CR: Certif.de Pago de regalias"            Font "&mLetCou",10 Style "NT"
 @mFI0+29.0,mCO0+062 Say "DA: Documento de atribución"               Font "&mLetCou",10 Style "NT"
 @mFI0+30.0,mCO0+062 Say "PE: Percepción"                            Font "&mLetCou",10 Style "NT"
 @mFI0+12.0,mCO0+132 Say "SE: Seguro complemento de Trab.Riesgo"     Font "&mLetCou",10 Style "NT"
 @mFI0+13.0,mCO0+132 Say "TA: Tarifa única de uso de Aeropuerto"     Font "&mLetCou",10 Style "NT"
 @mFI0+14.0,mCO0+132 Say "FR: Doc.emitidos por Cofopri"              Font "&mLetCou",10 Style "NT"
 @mFI0+15.0,mCO0+132 Say "SI: Doc.emit.por Adq.de Sist.Pago TD y TC" Font "&mLetCou",10 Style "NT"
 @mFI0+16.0,mCO0+132 Say "GT: Guías de Remisión - Transportistas"    Font "&mLetCou",10 Style "NT"
 @mFI0+17.0,mCO0+132 Say "GA: Doc.emit.Emp.recaud.Garantía de red"   Font "&mLetCou",10 Style "NT"
 @mFI0+18.0,mCO0+132 Say "OP: Doc.del Operador"                      Font "&mLetCou",10 Style "NT"
 @mFI0+19.0,mCO0+132 Say "PA: Doc.del Partícipe"                     Font "&mLetCou",10 Style "NT"
 @mFI0+20.0,mCO0+132 Say "GN: Recibo de Distribución de gas natural" Font "&mLetCou",10 Style "NT"
 @mFI0+21.0,mCO0+132 Say "IV: Constancia de Depósito IVAP"           Font "&mLetCou",10 Style "NT"
 @mFI0+22.0,mCO0+132 Say "DU: DUA"                                   Font "&mLetCou",10 Style "NT"
 @mFI0+23.0,mCO0+132 Say "DS: Despacho simplificado"                 Font "&mLetCou",10 Style "NT"
 @mFI0+24.0,mCO0+132 Say "ME: Declaración de mensajeria courier"     Font "&mLetCou",10 Style "NT"
 @mFI0+25.0,mCO0+132 Say "LK: Liquidación de cobranza"               Font "&mLetCou",10 Style "NT"
 @mFI0+26.0,mCO0+132 Say "BM: BVME"                                  Font "&mLetCou",10 Style "NT"
 @mFI0+27.0,mCO0+132 Say "SA: Comprobante de pago SEAE"              Font "&mLetCou",10 Style "NT"
 @mFI0+28.0,mCO0+132 Say "CN: Comprobante de no domiciliado"         Font "&mLetCou",10 Style "NT"
 @mFI0+29.0,mCO0+132 Say "AG: Rec.agua Artificial c/fines Agrarios"  Font "&mLetCou",10 Style "NT"
 STORE mcO0+35 TO mcO0
 @mFI0+00.4,mCO0+020 Get vTDO Font "&mLetRom",12 Style "BQ" Size 1,3.1 Pict "!!" Color ,&mColBlN
 @mFI0+03.5,mCO0+025 Get vTD1 Font "&mLetAri",9  Style "NT" Size 1,2.5 Pict "99" Color ,&mColBlN
 @mFI0+03.5,mCO0+062 Get vTPO Font "&mLetAri",9  Style "NT" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9311a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+33
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
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
      CASE mfIl>=mfI0+3.535 .AND. mfIl<=mfI0+4.535 .AND. mcCc>=mcO0+61.9  ;
           .AND. mcCc<=mcO0+97.3 .AND. vtPo<>1 .AND. viTe>1
           DO coL_fondo
           STORE 01 TO vtPo
           @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.678 .AND. mcCc>=mcO0+61.9  ;
           .AND. mcCc<=mcO0+96.3 .AND. vtPo<>2 .AND. viTe>1
           DO coL_fondo
           STORE 02 TO vtPo
           @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+5.678 .AND. mfIl<=mfI0+6.607 .AND. mcCc>=mcO0+61.9  ;
           .AND. mcCc<=mcO0+75.1 .AND. vtPo<>3 .AND. viTe>1
           DO coL_fondo
           STORE 03 TO vtPo
           @mFI0+3.5,mCO0+62 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Con derecho a Crédito Fiscal;Sin derecho a Crédito Fiscal;Ninguno" Default vTPO
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+24.9
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+2.9 .AND. mcCc<=mcO0+28.1
           STORE 02 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9311a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento, es un programa utilitario en donde se pueden crear, "
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Tipos de Documentos Sunat que figurarán en el Re-"
 @ pfIl+2, 3 SAY  ;
   "gistro de Ventas y el de Compras;  éstos tienen relación con los Ti-"
 @ pfIl+3, 3 SAY  ;
   "pos de Documentos que el Sistema usa; éstos son: FA: Factura, BO: Bo-"
 @ pfIl+4, 3 SAY "leta, NC: Nota de Crédito, ND: Nota de Débito, etc."
 STORE pfIl+6 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtDo, ctDo, vtD1, vtB1, vtPo, vlIn, vpAg, vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
