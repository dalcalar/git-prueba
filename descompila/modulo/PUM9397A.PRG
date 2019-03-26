 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9397", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9397TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vaNo, vmEs, vtDo, vsEr, vnUm, vtB1, vfBi, vcBi,  ;
        vlIn, vpAg
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vaNo
 STORE SUBSTR(DTOC(DATE()), 4, 2) TO vmEs
 STORE 00 TO viT1
 STORE 01 TO viTe
 STORE 08 TO muFi
 STORE 99 TO mkEy, muCo
 STORE "V1" TO vtDo
 STORE msEr(01) TO vsEr
 STORE SPACE(07) TO vnUm
 SET READBORDER ON
 DO p00_9397a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9397a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9397a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=05
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
                SEEK vaNo+vmEs+vtDo+vsEr
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
                DO CASE
                     CASE mkEy=k_Esc
                          EXIT
                     CASE mkEy=k_Enter
                          DO coLbln
                          STORE 04 TO viTe
                          STORE f9397ano TO vaNo
                          STORE f9397mes TO vmEs
                          STORE f9397tdo TO vtDo
                          STORE f9397ser TO vsEr
                          @mFI0+0.4,mCO0+11 Say vANO Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                          @mFI0+0.4,mCO0+31 Say vMES Font "&mLetRom",12 Style "BQ" Size 1,2.1 Pict "99"
                          @mFI0+0.4,mCO0+70 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,2.6 Pict "!!"
                          @mFI0+0.4,mCO0+87 Say vSER Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9397a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9397a WITH "1"
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
                     DO imP_9397a
                     DO p1_0000a
                ENDIF
                STORE 01 TO viTe
                STORE 00 TO viT1
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=05
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=01 .OR. viTe=05)
                STORE "No hay mas campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<05
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vaNo+vmEs+vtDo+vsEr
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9397a
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
                     CASE f9397ano+f9397mes+f9397tdo+f9397ser=vaNo+vmEs+ ;
                          vtDo+vsEr
                          STORE "Este es el primer Tipo y Serie de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9397a
                          DO diS_9397a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9397ano+f9397mes+f9397tdo+f9397ser=vaNo+vmEs+ ;
                          vtDo+vsEr
                          STORE "Este es el último Tipo y Serie de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9397a
                          DO diS_9397a
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vaNo+vmEs+vtDo+vsEr
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vaNo+vmEs+vtDo+vsEr=f9397ano+f9397mes+f9397tdo+f9397ser
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9397ano+f9397mes+f9397tdo+f9397ser=vaNo+vmEs+ ;
                          vtDo+vsEr
                          STORE "Este es el último Tipo de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9397a
                          DO diS_9397a
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vaNo+vmEs+vtDo+vsEr
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9397ano+ ;
                    f9397mes+f9397tdo+f9397ser>=vaNo+vmEs+vtDo+vsEr
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9397ano+f9397mes+f9397tdo+f9397ser=vaNo+vmEs+ ;
                          vtDo+vsEr
                          STORE "Este es el primer Tipo y Serie de Documento..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9397a
                          DO diS_9397a
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO grA_9397a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+01 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO grA_9397a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 5 TO ciTx
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up .OR. mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 5 TO ciTx
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
                STORE 5 TO ciTx
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
                     DO grA_9397a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vaNo+vmEs+vtDo+vsEr
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe<5 .AND. (viT1=5 .OR. viT1=0)
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe=5 .AND. (viT1<5 .OR. viT1=0)
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
                     @mMF2,mMC2+20 Say "EL AÑO ES DE 4 DÍGITOS, TIENE QUE SER VÁLIDO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+20 Say "EL MES ES DE 2 DÍGITOS, TIENE QUE SER VÁLIDO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+14 Say "EL TIPO DE DOCUMENTO SE TIENE QUE ELEGIR DE LA TABLA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=04
                     @mMF2,mMC2+26 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=05
                     @mMF2,mMC2+15 Say "ES DE 7 DÍGITOS, ESTE NÚMERO ES EL ÚLTIMO GRABADO..."    Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=01
                @mFI0+0.4,mCO0+11 Get vANO Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999" Color ,&mColBlN
           CASE viTe=02
                @mFI0+0.4,mCO0+31 Get vMES Font "&mLetRom",12 Style "BQ" Size 1,2.1 Pict "99"   Color ,&mColBlN
           CASE viTe=03
                @mFI0+0.4,mCO0+70 Get vTDO Font "&mLetRom",12 Style "BQ" Size 1,2.6 Pict "!!"   Color ,&mColBlN
           CASE viTe=04
                @mFI0+0.4,mCO0+87 Get vSER Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "!!!"  Color ,&mColBlN
           CASE viTe=05
                @mFI0+4.6,mCO0+36 Get vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,&mColBlN
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
      CASE viTe=01 .AND. LEN(ALLTRIM(vaNo))=0
           STORE "Año no puede estar vacío...                            "  ;
                 TO mmSj
      CASE viTe=01 .AND. LEN(ALLTRIM(vaNo))<4
           STORE "Año no puede ser menor de 4 dígitos...                 "  ;
                 TO mmSj
      CASE viTe=01 .AND. AT(" ", vaNo)<>0
           STORE "Año no puede tener espacios vacíos...                  "  ;
                 TO mmSj
      CASE viTe=02 .AND. LEN(ALLTRIM(vmEs))=0
           STORE "Mes no puede estar vacío...                            "  ;
                 TO mmSj
      CASE viTe=02 .AND. LEN(ALLTRIM(vmEs))<2
           STORE "Mes no puede ser menor de 2 dígitos...                 "  ;
                 TO mmSj
      CASE viTe=02 .AND. AT(" ", vmEs)<>0
           STORE "Mes no puede tener espacios vacíos...                  "  ;
                 TO mmSj
      CASE viTe=03 .AND. LEN(ALLTRIM(vtDo))=0
           STORE "Tipo de Documento no puede estar vacío...              "  ;
                 TO mmSj
      CASE viTe=03 .AND. LEN(ALLTRIM(vtDo))<2
           STORE "Tipo de Documento no puede ser menor de 2 caracteres..."  ;
                 TO mmSj
      CASE viTe=03 .AND. AT(" ", vtDo)<>0
           STORE "Tipo de Documento no puede tener espacios vacíos...    "  ;
                 TO mmSj
      CASE viTe=03 .AND. vtDo<>"V1" .AND. vtDo<>"V2" .AND. vtDo<>"V3"  ;
           .AND. vtDo<>"V4"
           STORE "Tipo de Documento no pertenece a tabla...              "  ;
                 TO mmSj
      CASE viTe=03
           DO coL_fondo
           DO CASE
                CASE vtDo="V1"
                     @mFI0+2.5,mCO0+02 Say "- Ingreso a Caja -"   Font "&mLetAri",10 Style "NQ" Size 1,23
                CASE vtDo="V2"
                     @mFI0+2.5,mCO0+02 Say "- Salida de Caja -"   Font "&mLetAri",10 Style "NQ" Size 1,23
                CASE vtDo="V3"
                     @mFI0+2.5,mCO0+02 Say "- Ingreso a Bancos -" Font "&mLetAri",10 Style "NQ" Size 1,23
                CASE vtDo="V4"
                     @mFI0+2.5,mCO0+02 Say "- Salida de Bancos -" Font "&mLetAri",10 Style "NQ" Size 1,23
           ENDCASE
      CASE viTe=04 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "Serie de Documento no puede estar vacía...           "  ;
                 TO mmSj
      CASE viTe=04 .AND. LEN(ALLTRIM(vsEr))<3
           STORE "Serie de Documento no puede ser menor de 3 dígitos..."  ;
                 TO mmSj
      CASE viTe=04 .AND. AT(" ", vsEr)<>0
           STORE "Serie de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=04 .AND. vsEr="000"
           STORE "Serie de Documento no puede ser 000...               "  ;
                 TO mmSj
      CASE viTe=04
           SEEK vaNo+vmEs+vtDo+vsEr
           IF EOF()
                DO coL_fondo
                @mFI0+6.8,mCO0+mUCO-16 Say " INGRESO" Font "&mLetRom",11 Style "BQ" Size 1,12
                STORE "0000000" TO vnUm
           ELSE
                DO muE_9397a
           ENDIF
           DO diS_9397a
      CASE viTe=05 .AND. LEN(ALLTRIM(vnUm))=0
           STORE "Número de Documento no puede estar vacío...           "  ;
                 TO mmSj
      CASE viTe=05 .AND. LEN(ALLTRIM(vnUm))<7
           STORE "Número de Documento no puede ser menor de 7 dígitos..."  ;
                 TO mmSj
      CASE viTe=05 .AND. AT(" ", vnUm)<>0
           STORE "Número de Documento no puede tener espacios vacíos... "  ;
                 TO mmSj
      CASE viTe=05
           DO coL_fondo
           @mFI0+4.6,mCO0+78 Say StrTran(Str(Val(vNUM)+1,7,0)," ","0") Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9397a
 DO coL_fondo
 @mFI0+6.8,mCO0+mUCO-16 Say "MODIFICA" Font "&mLetRom",11 Style "BQ" Size 1,12
 STORE f9397ano TO vaNo
 STORE f9397mes TO vmEs
 STORE f9397tdo TO vtDo
 STORE f9397ser TO vsEr
 STORE f9397num TO vnUm
ENDPROC
*
PROCEDURE Dis_9397a
 = INKEY(0.01)
 DO coLbln
 @mFI0+0.4,mCO0+11 Say vANO Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
 @mFI0+0.4,mCO0+31 Say vMES Font "&mLetRom",12 Style "BQ" Size 1,2.1 Pict "99"
 @mFI0+0.4,mCO0+70 Say vTDO Font "&mLetRom",12 Style "BQ" Size 1,2.6 Pict "!!"
 @mFI0+0.4,mCO0+87 Say vSER Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
 @mFI0+4.6,mCO0+36 Say vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
 DO coL_fondo
 DO CASE
      CASE vtDo="V1"
           @mFI0+2.5,mCO0+02 Say "- Ingreso a Caja -"   Font "&mLetAri",10 Style "NQ" Size 1,23
      CASE vtDo="V2"
           @mFI0+2.5,mCO0+02 Say "- Salida de Caja -"   Font "&mLetAri",10 Style "NQ" Size 1,23
      CASE vtDo="V3"
           @mFI0+2.5,mCO0+02 Say "- Ingreso a Bancos -" Font "&mLetAri",10 Style "NQ" Size 1,23
      CASE vtDo="V4"
           @mFI0+2.5,mCO0+02 Say "- Salida de Bancos -" Font "&mLetAri",10 Style "NQ" Size 1,23
 ENDCASE
 @mFI0+4.6,mCO0+78 Say StrTran(Str(Val(vNUM)+1,7,0)," ","0") Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999"
ENDPROC
*
PROCEDURE Gra_9397a
 DO grAbar WITH "1"
 SEEK vaNo+vmEs+vtDo+vsEr
 IF EOF()
      APPEND BLANK
      REPLACE f9397ano WITH vaNo
      REPLACE f9397mes WITH vmEs
      REPLACE f9397tdo WITH vtDo
      REPLACE f9397ser WITH vsEr
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vaNo+vmEs+vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF f9397num<>vnUm
      REPLACE f9397num WITH vnUm
 ENDIF
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9397a
 SEEK vaNo+vmEs+vtDo+vsEr
 IF EOF()
      STORE "Tipo de Documento no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaNo+vmEs+vtDo+vsEr
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9397ano WITH SPACE(04)
 REPLACE f9397mes WITH SPACE(02)
 REPLACE f9397tdo WITH SPACE(02)
 REPLACE f9397ser WITH SPACE(03)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9397a
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
 DO reP_9397a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9397a
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
                DO cb1_0000a WITH "Números de Vouchers Caja/Bancos", "PUM9397A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Año"               Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+6  Say "Mes"               Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+12 Say "Tipo de Documento" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+52 Say "Serie"             Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+63 Say "Último"            Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+75 Say "Siguiente"         Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Año"               Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+6  Say "Mes"               Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+12 Say "Tipo de Documento" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+52 Say "Serie"             Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+63 Say "Último"            Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+75 Say "Siguiente"         Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN    Say F9397ANO Font "&mLetAri",9 Style "NT" Pict "9999"
                     @vLIN,mCLN+07 Say F9397MES Font "&mLetAri",9 Style "NT" Pict "99"
                     @vLIN,mCLN+12 Say F9397TDO Font "&mLetAri",9 Style "NT"
                     DO CASE
                          CASE f9397tdo="V1"
                               @vLIN,mCLN+16 Say ": Voucher de Ingreso a Caja"   Font "&mLetAri",9 Style "NT" Size 1,20
                          CASE f9397tdo="V2"
                               @vLIN,mCLN+16 Say ": Voucher de Salida de Caja"   Font "&mLetAri",9 Style "NT" Size 1,20
                          CASE f9397tdo="V3"
                               @vLIN,mCLN+16 Say ": Voucher de Ingreso a Bancos" Font "&mLetAri",9 Style "NT" Size 1,20
                          CASE f9397tdo="V4"
                               @vLIN,mCLN+16 Say ": Voucher de Salida de Bancos" Font "&mLetAri",9 Style "NT" Size 1,20
                     ENDCASE
                     @vLIN,mCLN+53 Say F9397SER                                  Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+63 Say F9397NUM                                  Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+75 Say StrTran(Str(Val(F9397NUM)+1,7,0)," ","0") Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN    Say F9397ANO Font "&mLetSwi",9 Style "NT" Pict "9999"
                     @vLIN,mCLN+07 Say F9397MES Font "&mLetSwi",9 Style "NT" Pict "99"
                     @vLIN,mCLN+12 Say F9397TDO Font "&mLetSwi",9 Style "NT"
                     DO CASE
                          CASE f9397tdo="V1"
                               @vLIN,mCLN+16 Say ": Voucher de Ingreso a Caja"   Font "&mLetSwi",9 Style "NT" Size 1,20
                          CASE f9397tdo="V2"
                               @vLIN,mCLN+16 Say ": Voucher de Salida de Caja"   Font "&mLetSwi",9 Style "NT" Size 1,20
                          CASE f9397tdo="V3"
                               @vLIN,mCLN+16 Say ": Voucher de Ingreso a Bancos" Font "&mLetSwi",9 Style "NT" Size 1,20
                          CASE f9397tdo="V4"
                               @vLIN,mCLN+16 Say ": Voucher de Salida de Bancos" Font "&mLetSwi",9 Style "NT" Size 1,20
                     ENDCASE
                     @vLIN,mCLN+53 Say F9397SER Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+63 Say F9397NUM Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+75 Say StrTran(Str(Val(F9397NUM)+1,7,0)," ","0") Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9397a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-3 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+0.4 TO vfBi
 STORE mcO0+92.5 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+2,mCO0+60 to mFI0+22,mCO0+96 Font "&mLetAri",13 Style "NQ" Prompt Field "  "+F9397MES+"/"+F9397ANO+"   "+F9397TDO+" - "+F9397SER Scroll Color Scheme 10 Footer "TIPO Y SERIE POR MES/AÑO"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Numeración de Vouchers"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1.2, mmC2+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           DO cuAdro WITH mmF2+4, mmC2+3, mmF2+8.2, mmC2+muCo-3
      OTHERWISE
           DO cuAdro WITH mmF2+4, mmC2+2, mmF2+8.2, mmC2+muCo-2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.4,mCO0+02 Say "Año:"                          Font "&mLetRom",15 Style "NT"
 @mFI0+0.4,mCO0+22 Say "Mes:"                          Font "&mLetRom",15 Style "NT"
 @mFI0+0.4,mCO0+38 Say "Tipo de Documento:"            Font "&mLetRom",14 Style "NT"
 @mFI0+0.4,mCO0+77 Say "Serie:"                        Font "&mLetRom",14 Style "NT"
 DO CASE
      CASE mrEs="3"
           @mFI0+2.5,mCO0+02 Say "- Ingreso a Caja -"            Font "&mLetAri",10 Style "NT"
           @mFI0+4.7,mCO0+03 Say "ÚLTIMO NÚMERO GRABADO"         Font "&mLetAri",9  Style "NT"
           @mFI0+4.7,mCO0+52 Say "SIGUIENTE NÚMERO:"             Font "&mLetAri",9  Style "NT"
           @mMF2+3.8,mMC2+05 Say "TABLA DE DOCUMENTOS:"          Font "&mLetRom",12 Style "BT"
           @mMF2+5.5,mMC2+05 Say "V1"                            Font "&mLetRom",12 Style "BT"
           @mMF2+6.8,mMC2+05 Say "V2"                            Font "&mLetRom",12 Style "BT"
           @mMF2+5.5,mMC2+50 Say "V3"                            Font "&mLetRom",12 Style "BT"
           @mMF2+6.8,mMC2+50 Say "V4"                            Font "&mLetRom",12 Style "BT"
           @mMF2+5.5,mMC2+09 Say ": Voucher de Ingreso a Caja"   Font "&mLetAri",11 Style "NT"
           @mMF2+6.8,mMC2+09 Say ": Voucher de Salida de Caja"   Font "&mLetAri",11 Style "NT"
           @mMF2+5.5,mMC2+54 Say ": Voucher de Ingreso a Bancos" Font "&mLetAri",11 Style "NT"
           @mMF2+6.8,mMC2+54 Say ": Voucher de Salida de Bancos" Font "&mLetAri",11 Style "NT"
      OTHERWISE
           @mFI0+2.5,mCO0+02 Say "- Ingreso a Caja -"            Font "&mLetAri",11 Style "NT"
           @mFI0+4.7,mCO0+02 Say "ÚLTIMO NÚMERO GRABAD"          Font "&mLetAri",10 Style "NT"
           @mFI0+4.7,mCO0+51 Say "SIGUIENTE NÚMERO:"             Font "&mLetAri",10 Style "NT"
           @mMF2+3.8,mMC2+04 Say "TABLA DE DOCUMENTOS:"          Font "&mLetRom",13 Style "BT"
           @mMF2+5.5,mMC2+04 Say "V1"                            Font "&mLetRom",13 Style "BT"
           @mMF2+6.8,mMC2+04 Say "V2"                            Font "&mLetRom",13 Style "BT"
           @mMF2+5.5,mMC2+49 Say "V3"                            Font "&mLetRom",13 Style "BT"
           @mMF2+6.8,mMC2+49 Say "V4"                            Font "&mLetRom",13 Style "BT"
           @mMF2+5.5,mMC2+08 Say ": Voucher de Ingreso a Caja"   Font "&mLetAri",12 Style "NT"
           @mMF2+6.8,mMC2+08 Say ": Voucher de Salida de Caja"   Font "&mLetAri",12 Style "NT"
           @mMF2+5.5,mMC2+53 Say ": Voucher de Ingreso a Bancos" Font "&mLetAri",12 Style "NT"
           @mMF2+6.8,mMC2+53 Say ": Voucher de Salida de Bancos" Font "&mLetAri",12 Style "NT"
 ENDCASE
 @mFI0+0.4,mCO0+11 Get vANO Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999" Color ,&mColBlN
 @mFI0+0.4,mCO0+31 Get vMES Font "&mLetRom",12 Style "BQ" Size 1,2.1 Pict "99"   Color ,&mColBlN
 @mFI0+0.4,mCO0+70 Get vTDO Font "&mLetRom",12 Style "BQ" Size 1,2.6 Pict "!!"   Color ,&mColBlN
 @mFI0+0.4,mCO0+87 Get vSER Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"  Color ,&mColBlN
 @mFI0+4.6,mCO0+36 Get vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,&mColBlN
 @mFI0+4.6,mCO0+78 Get vNUM Font "&mLetAri",11 Style "NQ" Size 1,7.9 Pict "9999999" Color ,RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9397a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>04
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>04
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
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_0000a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.5 .AND. mcCc<=mcO0+18.3
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+21.5 .AND. mcCc<=mcO0+35.1
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+37.3 .AND. mcCc<=mcO0+74.5
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+76.5 .AND. mcCc<=mcO0+92.1
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.892 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+2.1 .AND. mcCc<=mcO0+48.1
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9397a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "Este Mantenimiento,  es un programa utilitario,  en donde se pueden crear,"
 @ pfIl+01, 01 SAY  ;
   "modificar y eliminar las Numeraciones de los Vouchers de Caja y Bancos x  "
 @ pfIl+02, 01 SAY  ;
   "Mes y Año. Aquí se ingresa el último  número  grabado o el número anterior"
 @ pfIl+03, 01 SAY  ;
   "al que deseamos que continue. Los Tipos de Vouchers están en la Tabla "
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
           @ pfIl+19, 06 SAY "CTRL END" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL P" STYLE "BT"
      CASE viTe<05
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
           @ pfIl+20, 06 SAY "CTRL HOME" STYLE "BT"
           @ pfIl+21, 06 SAY "CTRL END" STYLE "BT"
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
           @ pfIl+19, 06 SAY "CTRL HOME" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL END" STYLE "BT"
           @ pfIl+21, 06 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+22, 06 SAY "CTRL P" STYLE "BT"
           @ pfIl+23, 06 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+09, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+08, 26 SAY "Regresar al Menú Principal"
           @ pfIl+11, 26 SAY "Consulta de los Tipos y Series de Vouchers"
           @ pfIl+12, 26 SAY "Inicio del Archivo"
           @ pfIl+13, 26 SAY "Final del Archivo"
           @ pfIl+14, 26 SAY "Registro siguiente"
           @ pfIl+15, 26 SAY "Registro anterior"
           @ pfIl+16, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+17, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+18, 26 SAY "Ir al siguiente campo"
           @ pfIl+19, 26 SAY "Ir al último campo"
           @ pfIl+20, 26 SAY "Imprimir Listado"
      CASE viTe<05
           @ pfIl+08, 26 SAY "Regresar al primer campo"
           @ pfIl+11, 26 SAY "Consulta de los Tipos y Series de Vouchers"
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
 RELEASE viTe, ciTx, viT1, vaNo, vmEs, vtDo, vsEr, vnUm, vtB1, vfBi, vcBi,  ;
         vlIn, vpAg
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
