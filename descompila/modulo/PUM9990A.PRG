 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE "PRINTERS"+meXt TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vdEs, vpRt, viNi, vsUb, vcLn, vtB1,  ;
        vlIn, vpAg
 PUBLIC vfBi, vcBi
 STORE SPACE(02) TO ccOd, vcOd
 STORE SPACE(50) TO vdEs
 STORE 00 TO viT1, viNi, vsUb, vcLn
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 02 TO vpRt
 SET FILTER TO f9990cod="FE"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "FE"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="BE"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "BE"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="FC"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "FC"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="BC"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "BC"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="N1"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "N1"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="N2"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "N2"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="N3"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "N3"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="N4"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "N4"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO f9990cod="ER"
 GOTO TOP
 IF BOF() .OR. EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "ER"
      REPLACE f9990des WITH "PdfCreator"
      REPLACE f9990prt WITH "1"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET FILTER TO
 SET READBORDER ON
 DO p00_9990a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9990a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9990a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>01
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
                SEEK vcOd
                SET NEAR OFF
                STORE 99 TO mkEy
                STORE 01 TO meRr
                SET ORDER TO F9990DES
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 01 TO meRr
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                STORE 01 TO meRr
                SET ORDER TO F9990COD
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 00 TO meRr
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9990cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9990a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9990a WITH "1"
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
                     STORE 99 TO mkEy
                     STORE 01 TO meRr
                     SET ORDER TO F9990DES
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 00 TO meRr
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9990a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     STORE 01 TO meRr
                     SET ORDER TO F9990COD
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 00 TO meRr
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=05
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=01
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                STORE "No se puede borrar las Impresoras..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9990cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9990a
                          DO diS_9990a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9990cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9990a
                          DO diS_9990a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vcOd=f9990cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9990cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9990a
                          DO diS_9990a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9990cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9990cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9990a
                          DO diS_9990a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=05
                          DO grA_9990a
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
                     DO grA_9990a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=01
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>01
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+13 Say "CAMPO DE 2 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+13 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+25 Say "CAMPO DE 2 DÍGITOS, NO PUEDE SER CERO..."                          Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+25 Say "CAMPO DE 2 DÍGITOS, NO PUEDE SER CERO..."                          Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+25 Say "CAMPO DE 2 DÍGITOS, NO PUEDE SER CERO..."                          Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+37 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.5,mCO0+37 Get  vINI Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
           CASE viTe=4
                @mFI0+7.5,mCO0+37 Get  vSUB Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
           CASE viTe=5
                @mFI0+9.5,mCO0+37 Get  vCLN Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
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
      CASE viTe=01 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=01 .AND. AT(" ", vcOd)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=01 .AND. vcOd="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=01
           SEEK vcOd
           IF EOF()
                STORE "La Impresora no se encuentra registrada..." TO mmSj
           ELSE
                DO muE_9990a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9990a
           ENDIF
      CASE viTe=02 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9990a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9990cod TO vcOd
 STORE f9990des TO vdEs
 STORE f9990ini TO viNi
 STORE f9990sub TO vsUb
 STORE f9990cln TO vcLn
 STORE VAL(f9990prt) TO vpRt
ENDPROC
*
PROCEDURE Dis_9990a
 DO coLsc4
 DO CASE
      CASE vcOd="FA"
           @mFI0+0.5,mCO0+36 Say "Factura"                         Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="FE"
           @mFI0+0.5,mCO0+36 Say "Factura Electrónica"             Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="FC"
           @mFI0+0.5,mCO0+36 Say "Factura Electrónica SOL"         Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="BO"
           @mFI0+0.5,mCO0+36 Say "Boleta"                          Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="BE"
           @mFI0+0.5,mCO0+36 Say "Boleta Electrónica"              Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="BC"
           @mFI0+0.5,mCO0+36 Say "Boleta Electrónica SOL"          Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="NP"
           @mFI0+0.5,mCO0+36 Say "Nota de Pedido"                  Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="PE"
           @mFI0+0.5,mCO0+36 Say "Pedido"                          Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="RE"
           @mFI0+0.5,mCO0+36 Say "Guía de Remisión"                Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="ER"
           @mFI0+0.5,mCO0+36 Say "Guía de Remisión Electrónica"    Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="DE"
           @mFI0+0.5,mCO0+36 Say "Despacho"                        Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D1"
           @mFI0+0.5,mCO0+36 Say "Despacho1"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D2"
           @mFI0+0.5,mCO0+36 Say "Despacho2"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D3"
           @mFI0+0.5,mCO0+36 Say "Despacho3"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D4"
           @mFI0+0.5,mCO0+36 Say "Despacho4"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D5"
           @mFI0+0.5,mCO0+36 Say "Despacho5"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D6"
           @mFI0+0.5,mCO0+36 Say "Despacho6"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D7"
           @mFI0+0.5,mCO0+36 Say "Despacho7"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D8"
           @mFI0+0.5,mCO0+36 Say "Despacho8"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="D9"
           @mFI0+0.5,mCO0+36 Say "Despacho9"                       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="CT"
           @mFI0+0.5,mCO0+36 Say "Cotización"                      Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="VE"
           @mFI0+0.5,mCO0+36 Say "Impresión Vertical"              Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="HO"
           @mFI0+0.5,mCO0+36 Say "Impresión Horizontal"            Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="NC"
           @mFI0+0.5,mCO0+36 Say "Nota de Crédito"                 Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="N1"
           @mFI0+0.5,mCO0+36 Say "Nota de Crédito Electrónica"     Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="N3"
           @mFI0+0.5,mCO0+36 Say "Nota de Crédito Electrónica SOL" Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="ND"
           @mFI0+0.5,mCO0+36 Say "Nota de Débito"                  Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="N2"
           @mFI0+0.5,mCO0+36 Say "Nota de Débito Electrónica"      Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="N4"
           @mFI0+0.5,mCO0+36 Say "Nota de Débito Electrónica SOL"  Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="LE"
           @mFI0+0.5,mCO0+36 Say "Letra"                           Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="ET"
           @mFI0+0.5,mCO0+36 Say "Etiqueta"                        Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="GI"
           @mFI0+0.5,mCO0+36 Say "Guía de Ingreso"                 Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="GS"
           @mFI0+0.5,mCO0+36 Say "Guía de Salida"                  Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="PC"
           @mFI0+0.5,mCO0+36 Say "Comprobante de Percepción"       Font "&mLetRom",12 Style "NQ" Size 1,40
      CASE vcOd="BP"
           @mFI0+0.5,mCO0+36 Say "Boletas de Pago"                 Font "&mLetRom",12 Style "NQ" Size 1,40
 ENDCASE
 DO coL_fondo
 @mFI0+11.5,mCO0+37 Say Space(40) Font "&mLetAri",9 Style "NQ" Size 1,40
 DO coLbln
 @mFI0+03.5,mCO0+37 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+05.5,mCO0+37 Get vINI Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "99.99" Color ,&mColBlN
 @mFI0+07.5,mCO0+37 Get vSUB Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "99.99" Color ,&mColBlN
 @mFI0+09.5,mCO0+37 Get vCLN Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "99.99" Color ,&mColBlN
 IF vcOd<>"ET"
      @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Inyección/Láser (600x600);Matricial(120x144)" Color Scheme 6
 ELSE
      @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Etiquetera;Matricial(120x144)"                Color Scheme 6
 ENDIF
 READ TIMEOUT 0.01
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9990a
 PRIVATE pdEs
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9990cod WITH vcOd
      STORE vdEs TO pdEs
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9990des TO pdEs
 ENDIF
 IF ALLTRIM(f9990des)+"*"<>ALLTRIM(vdEs)+"*" .OR. f9990ini<>viNi .OR.  ;
    f9990sub<>vsUb .OR. f9990cln<>vcLn .OR. f9990prt<>STR(vpRt, 1, 0)
      REPLACE f9990des WITH ALLTRIM(vdEs)
      REPLACE f9990ini WITH viNi
      REPLACE f9990sub WITH vsUb
      REPLACE f9990cln WITH vcLn
      REPLACE f9990prt WITH STR(vpRt, 1, 0)
 ENDIF
 IF ALLTRIM(pdEs)+"*"<>ALLTRIM(vdEs)+"*"
      SET FILTER TO UPPER(ALLTRIM(f9990des))+"*"=UPPER(ALLTRIM(pdEs))+"*" .AND. f9990cod<>vcOd
      GOTO TOP
      IF BOF() .OR. EOF()
      ELSE
           DO prE_docum WITH  ;
              "¿Desea cambiar el Nombre y Tipo de Impresora a todas las del mismo nombre anterior?"
           IF moPc$"Ss"
                REPLACE f9990des WITH ALLTRIM(vdEs), f9990prt WITH  ;
                        STR(vpRt, 1, 0) FOR UPPER(ALLTRIM(f9990des))+"*"= ;
                        UPPER(ALLTRIM(pdEs))+"*"
           ENDIF
      ENDIF
      SET FILTER TO
 ENDIF
 UNLOCK ALL
 GOTO TOP
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE f9990cod="FA"
                STORE ALLTRIM(f9990des) TO mpRf[01, 1]
                STORE f9990prt TO mpRf[01, 2]
                STORE f9990ini TO mpRf[01, 3]
                STORE f9990sub TO mpRf[01, 4]
                STORE f9990cln TO mpRf[01, 5]
           CASE f9990cod="BO"
                STORE ALLTRIM(f9990des) TO mpRf[02, 1]
                STORE f9990prt TO mpRf[02, 2]
                STORE f9990ini TO mpRf[02, 3]
                STORE f9990sub TO mpRf[02, 4]
                STORE f9990cln TO mpRf[02, 5]
           CASE f9990cod="PE"
                STORE ALLTRIM(f9990des) TO mpRf[03, 1]
                STORE f9990prt TO mpRf[03, 2]
                STORE f9990ini TO mpRf[03, 3]
                STORE f9990sub TO mpRf[03, 4]
                STORE f9990cln TO mpRf[03, 5]
           CASE f9990cod="RE"
                STORE ALLTRIM(f9990des) TO mpRf[04, 1]
                STORE f9990prt TO mpRf[04, 2]
                STORE f9990ini TO mpRf[04, 3]
                STORE f9990sub TO mpRf[04, 4]
                STORE f9990cln TO mpRf[04, 5]
           CASE f9990cod="DE"
                STORE ALLTRIM(f9990des) TO mpRf[05, 1]
                STORE f9990prt TO mpRf[05, 2]
                STORE f9990ini TO mpRf[05, 3]
                STORE f9990sub TO mpRf[05, 4]
                STORE f9990cln TO mpRf[05, 5]
           CASE f9990cod="D1"
                STORE ALLTRIM(f9990des) TO mpRf[06, 1]
                STORE f9990prt TO mpRf[06, 2]
                STORE f9990ini TO mpRf[06, 3]
                STORE f9990sub TO mpRf[06, 4]
                STORE f9990cln TO mpRf[06, 5]
           CASE f9990cod="D2"
                STORE ALLTRIM(f9990des) TO mpRf[07, 1]
                STORE f9990prt TO mpRf[07, 2]
                STORE f9990ini TO mpRf[07, 3]
                STORE f9990sub TO mpRf[07, 4]
                STORE f9990cln TO mpRf[07, 5]
           CASE f9990cod="D3"
                STORE ALLTRIM(f9990des) TO mpRf[08, 1]
                STORE f9990prt TO mpRf[08, 2]
                STORE f9990ini TO mpRf[08, 3]
                STORE f9990sub TO mpRf[08, 4]
                STORE f9990cln TO mpRf[08, 5]
           CASE f9990cod="D4"
                STORE ALLTRIM(f9990des) TO mpRf[09, 1]
                STORE f9990prt TO mpRf[09, 2]
                STORE f9990ini TO mpRf[09, 3]
                STORE f9990sub TO mpRf[09, 4]
                STORE f9990cln TO mpRf[09, 5]
           CASE f9990cod="D5"
                STORE ALLTRIM(f9990des) TO mpRf[10, 1]
                STORE f9990prt TO mpRf[10, 2]
                STORE f9990ini TO mpRf[10, 3]
                STORE f9990sub TO mpRf[10, 4]
                STORE f9990cln TO mpRf[10, 5]
           CASE f9990cod="D6"
                STORE ALLTRIM(f9990des) TO mpRf[11, 1]
                STORE f9990prt TO mpRf[11, 2]
                STORE f9990ini TO mpRf[11, 3]
                STORE f9990sub TO mpRf[11, 4]
                STORE f9990cln TO mpRf[11, 5]
           CASE f9990cod="D7"
                STORE ALLTRIM(f9990des) TO mpRf[12, 1]
                STORE f9990prt TO mpRf[12, 2]
                STORE f9990ini TO mpRf[12, 3]
                STORE f9990sub TO mpRf[12, 4]
                STORE f9990cln TO mpRf[12, 5]
           CASE f9990cod="D8"
                STORE ALLTRIM(f9990des) TO mpRf[13, 1]
                STORE f9990prt TO mpRf[13, 2]
                STORE f9990ini TO mpRf[13, 3]
                STORE f9990sub TO mpRf[13, 4]
                STORE f9990cln TO mpRf[13, 5]
           CASE f9990cod="D9"
                STORE ALLTRIM(f9990des) TO mpRf[14, 1]
                STORE f9990prt TO mpRf[14, 2]
                STORE f9990ini TO mpRf[14, 3]
                STORE f9990sub TO mpRf[14, 4]
                STORE f9990cln TO mpRf[14, 5]
           CASE f9990cod="VE"
                STORE ALLTRIM(f9990des) TO mpRf[15, 1]
                STORE f9990prt TO mpRf[15, 2]
                STORE f9990ini TO mpRf[15, 3]
                STORE f9990sub TO mpRf[15, 4]
                STORE f9990cln TO mpRf[15, 5]
           CASE f9990cod="HO"
                STORE ALLTRIM(f9990des) TO mpRf[16, 1]
                STORE f9990prt TO mpRf[16, 2]
                STORE f9990ini TO mpRf[16, 3]
                STORE f9990sub TO mpRf[16, 4]
                STORE f9990cln TO mpRf[16, 5]
           CASE f9990cod="LE"
                STORE ALLTRIM(f9990des) TO mpRf[17, 1]
                STORE f9990prt TO mpRf[17, 2]
                STORE f9990ini TO mpRf[17, 3]
                STORE f9990sub TO mpRf[17, 4]
                STORE f9990cln TO mpRf[17, 5]
           CASE f9990cod="ET"
                STORE ALLTRIM(f9990des) TO mpRf[18, 1]
                STORE f9990prt TO mpRf[18, 2]
                STORE f9990ini TO mpRf[18, 3]
                STORE f9990sub TO mpRf[18, 4]
                STORE f9990cln TO mpRf[18, 5]
           CASE f9990cod="NP"
                STORE ALLTRIM(f9990des) TO mpRf[19, 1]
                STORE f9990prt TO mpRf[19, 2]
                STORE f9990ini TO mpRf[19, 3]
                STORE f9990sub TO mpRf[19, 4]
                STORE f9990cln TO mpRf[19, 5]
           CASE f9990cod="CT"
                STORE ALLTRIM(f9990des) TO mpRf[20, 1]
                STORE f9990prt TO mpRf[20, 2]
                STORE f9990ini TO mpRf[20, 3]
                STORE f9990sub TO mpRf[20, 4]
                STORE f9990cln TO mpRf[20, 5]
           CASE f9990cod="ND"
                STORE ALLTRIM(f9990des) TO mpRf[21, 1]
                STORE f9990prt TO mpRf[21, 2]
                STORE f9990ini TO mpRf[21, 3]
                STORE f9990sub TO mpRf[21, 4]
                STORE f9990cln TO mpRf[21, 5]
           CASE f9990cod="NC"
                STORE ALLTRIM(f9990des) TO mpRf[22, 1]
                STORE f9990prt TO mpRf[22, 2]
                STORE f9990ini TO mpRf[22, 3]
                STORE f9990sub TO mpRf[22, 4]
                STORE f9990cln TO mpRf[22, 5]
           CASE f9990cod="GI"
                STORE ALLTRIM(f9990des) TO mpRf[23, 1]
                STORE f9990prt TO mpRf[23, 2]
                STORE f9990ini TO mpRf[23, 3]
                STORE f9990sub TO mpRf[23, 4]
                STORE f9990cln TO mpRf[23, 5]
           CASE f9990cod="GS"
                STORE ALLTRIM(f9990des) TO mpRf[24, 1]
                STORE f9990prt TO mpRf[24, 2]
                STORE f9990ini TO mpRf[24, 3]
                STORE f9990sub TO mpRf[24, 4]
                STORE f9990cln TO mpRf[24, 5]
           CASE f9990cod="PC"
                STORE ALLTRIM(f9990des) TO mpRf[25, 1]
                STORE f9990prt TO mpRf[25, 2]
                STORE f9990ini TO mpRf[25, 3]
                STORE f9990sub TO mpRf[25, 4]
                STORE f9990cln TO mpRf[25, 5]
           CASE f9990cod="BP"
                STORE ALLTRIM(f9990des) TO mpRf[26, 1]
                STORE f9990prt TO mpRf[26, 2]
                STORE f9990ini TO mpRf[26, 3]
                STORE f9990sub TO mpRf[26, 4]
                STORE f9990cln TO mpRf[26, 5]
           CASE f9990cod="FE"
                STORE ALLTRIM(f9990des) TO mpRf[27, 1]
                STORE f9990prt TO mpRf[27, 2]
                STORE f9990ini TO mpRf[27, 3]
                STORE f9990sub TO mpRf[27, 4]
                STORE f9990cln TO mpRf[27, 5]
           CASE f9990cod="BE"
                STORE ALLTRIM(f9990des) TO mpRf[28, 1]
                STORE f9990prt TO mpRf[28, 2]
                STORE f9990ini TO mpRf[28, 3]
                STORE f9990sub TO mpRf[28, 4]
                STORE f9990cln TO mpRf[28, 5]
           CASE f9990cod="N1"
                STORE ALLTRIM(f9990des) TO mpRf[29, 1]
                STORE f9990prt TO mpRf[29, 2]
                STORE f9990ini TO mpRf[29, 3]
                STORE f9990sub TO mpRf[29, 4]
                STORE f9990cln TO mpRf[29, 5]
           CASE f9990cod="N2"
                STORE ALLTRIM(f9990des) TO mpRf[30, 1]
                STORE f9990prt TO mpRf[30, 2]
                STORE f9990ini TO mpRf[30, 3]
                STORE f9990sub TO mpRf[30, 4]
                STORE f9990cln TO mpRf[30, 5]
           CASE f9990cod="ER"
                STORE ALLTRIM(f9990des) TO mpRf[31, 1]
                STORE f9990prt TO mpRf[31, 2]
                STORE f9990ini TO mpRf[31, 3]
                STORE f9990sub TO mpRf[31, 4]
                STORE f9990cln TO mpRf[31, 5]
           CASE f9990cod="FC"
                STORE ALLTRIM(f9990des) TO mpRf[32, 1]
                STORE f9990prt TO mpRf[32, 2]
                STORE f9990ini TO mpRf[32, 3]
                STORE f9990sub TO mpRf[32, 4]
                STORE f9990cln TO mpRf[32, 5]
           CASE f9990cod="BC"
                STORE ALLTRIM(f9990des) TO mpRf[33, 1]
                STORE f9990prt TO mpRf[33, 2]
                STORE f9990ini TO mpRf[33, 3]
                STORE f9990sub TO mpRf[33, 4]
                STORE f9990cln TO mpRf[33, 5]
           CASE f9990cod="N3"
                STORE ALLTRIM(f9990des) TO mpRf[34, 1]
                STORE f9990prt TO mpRf[34, 2]
                STORE f9990ini TO mpRf[34, 3]
                STORE f9990sub TO mpRf[34, 4]
                STORE f9990cln TO mpRf[34, 5]
           CASE f9990cod="N4"
                STORE ALLTRIM(f9990des) TO mpRf[35, 1]
                STORE f9990prt TO mpRf[35, 2]
                STORE f9990ini TO mpRf[35, 3]
                STORE f9990sub TO mpRf[35, 4]
                STORE f9990cln TO mpRf[35, 5]
      ENDCASE
      SKIP
 ENDDO
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9990a
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
 DO reP_9990a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9990a
 PRIVATE ptAm
 STORE 30 TO mcLn
 STORE 62 TO ptAm
 STORE 00 TO vlIn, vpAg
 GOTO TOP
 DO WHILE  .NOT. EOF()
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
                DO cb1_0000a WITH "Impresoras", "PUM9990A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN    Say "Cód"       Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+8  Say "Documento" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+70 Say "Nombre"    Font "&mLetAri",9 Style "NT"
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+.9 Say F9990COD Font "&mLetAri",9 Style "NT"
           DO CASE
                CASE f9990cod="FA"
                     @vLIN,mCLN+8 Say "Factura"                         Font "&mLetAri",9 Style "NT"
                CASE f9990cod="FE"
                     @vLIN,mCLN+8 Say "Factura Electrónica"             Font "&mLetAri",9 Style "NT"
                CASE f9990cod="FC"
                     @vLIN,mCLN+8 Say "Factura Electrónica SOL"         Font "&mLetAri",9 Style "NT"
                CASE f9990cod="BO"
                     @vLIN,mCLN+8 Say "Boleta"                          Font "&mLetAri",9 Style "NT"
                CASE f9990cod="BE"
                     @vLIN,mCLN+8 Say "Boleta Electrónica"              Font "&mLetAri",9 Style "NT"
                CASE f9990cod="BC"
                     @vLIN,mCLN+8 Say "Boleta Electrónica SOL"          Font "&mLetAri",9 Style "NT"
                CASE f9990cod="NP"
                     @vLIN,mCLN+8 Say "Nota de Pedido"                  Font "&mLetAri",9 Style "NT"
                CASE f9990cod="PE"
                     @vLIN,mCLN+8 Say "Pedido"                          Font "&mLetAri",9 Style "NT"
                CASE f9990cod="RE"
                     @vLIN,mCLN+8 Say "Guía de Remisión"                Font "&mLetAri",9 Style "NT"
                CASE f9990cod="ER"
                     @vLIN,mCLN+8 Say "Guía de Remisión Electrónica"    Font "&mLetAri",9 Style "NT"
                CASE f9990cod="DE"
                     @vLIN,mCLN+8 Say "Despacho"                        Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D1"
                     @vLIN,mCLN+8 Say "Despacho1"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D2"
                     @vLIN,mCLN+8 Say "Despacho2"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D3"
                     @vLIN,mCLN+8 Say "Despacho3"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D4"
                     @vLIN,mCLN+8 Say "Despacho4"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D5"
                     @vLIN,mCLN+8 Say "Despacho5"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D6"
                     @vLIN,mCLN+8 Say "Despacho6"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D7"
                     @vLIN,mCLN+8 Say "Despacho7"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D8"
                     @vLIN,mCLN+8 Say "Despacho8"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="D9"
                     @vLIN,mCLN+8 Say "Despacho9"                       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="CT"
                     @vLIN,mCLN+8 Say "Cotización"                      Font "&mLetAri",9 Style "NT"
                CASE f9990cod="VE"
                     @vLIN,mCLN+8 Say "Impresión Vertical"              Font "&mLetAri",9 Style "NT"
                CASE f9990cod="HO"
                     @vLIN,mCLN+8 Say "Impresión Horizontal"            Font "&mLetAri",9 Style "NT"
                CASE f9990cod="NC"
                     @vLIN,mCLN+8 Say "Nota de Crédito"                 Font "&mLetAri",9 Style "NT"
                CASE f9990cod="N1"
                     @vLIN,mCLN+8 Say "Nota de Crédito Electrónica"     Font "&mLetAri",9 Style "NT"
                CASE f9990cod="N3"
                     @vLIN,mCLN+8 Say "Nota de Crédito Electrónica SOL" Font "&mLetAri",9 Style "NT"
                CASE f9990cod="ND"
                     @vLIN,mCLN+8 Say "Nota de Débito"                  Font "&mLetAri",9 Style "NT"
                CASE f9990cod="N2"
                     @vLIN,mCLN+8 Say "Nota de Débito Electrónica"      Font "&mLetAri",9 Style "NT"
                CASE f9990cod="N4"
                     @vLIN,mCLN+8 Say "Nota de Débito Electrónica SOL"  Font "&mLetAri",9 Style "NT"
                CASE f9990cod="LE"
                     @vLIN,mCLN+8 Say "Letra"                           Font "&mLetAri",9 Style "NT"
                CASE f9990cod="ET"
                     @vLIN,mCLN+8 Say "Etiqueta"                        Font "&mLetAri",9 Style "NT"
                CASE f9990cod="GI"
                     @vLIN,mCLN+8 Say "Guía de Ingreso"                 Font "&mLetAri",9 Style "NT"
                CASE f9990cod="GS"
                     @vLIN,mCLN+8 Say "Guía de Salida"                  Font "&mLetAri",9 Style "NT"
                CASE f9990cod="PC"
                     @vLIN,mCLN+8 Say "Comprobante de Percepción"       Font "&mLetAri",9 Style "NT"
                CASE f9990cod="BP"
                     @vLIN,mCLN+8 Say "Boletas de Pago"                 Font "&mLetAri",9 Style "NT"
           ENDCASE
           @vLIN,mCLN+70 Say F9990DES                                 Font "&mLetAri",9 Style "NT"
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
PROCEDURE P00_9990a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 30 TO muFi
 STORE 115 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE 00 TO viT1
 STORE mfI0+14.2 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+25.2 TO vcBi
 Define Popup vTB1 from mFI0-8,mCO0+mUCO-85.4 to mFI0+39,mCO0+mUCO+30 Font "&mLetCou",13 Style "NQ" Prompt Field F9990DES+" : "+F9990COD Scroll Color Scheme 10 Footer "IMPRESORAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Impresoras"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+13, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 DO coLsc7
 @mFI0+00.5,mCO0+2 Say "CÓDIGO:"               Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+1 Say "UBICACIÓN/NOMBRE"      Font "&mLetAri",10 Style "NT"
 @mFI0+05.5,mCO0+1 Say "LÍNEA INICIAL"         Font "&mLetAri",10 Style "NT"
 @mFI0+07.5,mCO0+1 Say "LÍNEA SUB-TOT (FA/BO)" Font "&mLetAri",10 Style "NT"
 @mFI0+09.5,mCO0+1 Say "COLUMNA INICIAL"       Font "&mLetAri",10 Style "NT"
 @mFI0+11.5,mCO0+1 Say "TIPO DE IMPRESORA"     Font "&mLetAri",10 Style "NT"
 STORE mfI0+7 TO mfI0
 STORE mcO0-6 TO mcO0
 @ mfI0+13.1, mcO0 TO mfI0+26.6, mcO0+muCo+12 PATTERN 1
 @mFI0+13.6,mCO0+02 Say "Códigos:"             Font "&mLetRom",13 Style "BT"
 @mFI0+15.1,mCO0+02 Say "FA"                   Font "&mLetRom",11 Style "BT"
 @mFI0+16.6,mCO0+02 Say "FE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+18.1,mCO0+02 Say "FC"                   Font "&mLetRom",11 Style "BT"
 @mFI0+19.6,mCO0+02 Say "BO"                   Font "&mLetRom",11 Style "BT"
 @mFI0+21.1,mCO0+02 Say "BE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+22.6,mCO0+02 Say "BC"                   Font "&mLetRom",11 Style "BT"
 @mFI0+24.1,mCO0+02 Say "N3"                   Font "&mLetRom",11 Style "BT"
 @mFI0+15.1,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+16.6,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+18.1,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+19.6,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+21.1,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+22.6,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+24.1,mCO0+07 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+15.1,mCO0+09 Say "Factura"              Font "&mLetRom",12 Style "NT"
 @mFI0+16.6,mCO0+09 Say "Fact.Elect"           Font "&mLetRom",12 Style "NT"
 @mFI0+18.1,mCO0+09 Say "Fact.Elect. SOL"      Font "&mLetRom",12 Style "NT"
 @mFI0+19.6,mCO0+09 Say "Boleta"               Font "&mLetRom",12 Style "NT"
 @mFI0+21.1,mCO0+09 Say "Boleta Elect"         Font "&mLetRom",12 Style "NT"
 @mFI0+22.6,mCO0+09 Say "Boleta Elect SOL"     Font "&mLetRom",12 Style "NT"
 @mFI0+24.1,mCO0+09 Say "Nota-Cred.Elect SOL"  Font "&mLetRom",12 Style "NT"
 @mFI0+15.1,mCO0+32 Say "CT"                   Font "&mLetRom",11 Style "BT"
 @mFI0+16.6,mCO0+32 Say "LE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+18.1,mCO0+32 Say "NP"                   Font "&mLetRom",11 Style "BT"
 @mFI0+19.6,mCO0+32 Say "RE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+21.1,mCO0+32 Say "VE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+22.6,mCO0+32 Say "HO"                   Font "&mLetRom",11 Style "BT"
 @mFI0+15.1,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+16.6,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+18.1,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+19.6,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+21.1,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+22.6,mCO0+37 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+15.1,mCO0+39 Say "Cotización"           Font "&mLetRom",12 Style "NT"
 @mFI0+16.6,mCO0+39 Say "Letra"                Font "&mLetRom",12 Style "NT"
 @mFI0+18.1,mCO0+39 Say "Nota de Pedido"       Font "&mLetRom",12 Style "NT"
 @mFI0+19.6,mCO0+39 Say "Guía de Remisión"     Font "&mLetRom",12 Style "NT"
 @mFI0+21.1,mCO0+39 Say "Impresión Vertical"   Font "&mLetRom",12 Style "NT"
 @mFI0+22.6,mCO0+39 Say "Impresión Horizontal" Font "&mLetRom",12 Style "NT"
 @mFI0+15.1,mCO0+68 Say "ND"                   Font "&mLetRom",11 Style "BT"
 @mFI0+16.6,mCO0+68 Say "NC"                   Font "&mLetRom",11 Style "BT"
 @mFI0+18.1,mCO0+68 Say "GI"                   Font "&mLetRom",11 Style "BT"
 @mFI0+19.6,mCO0+68 Say "GS"                   Font "&mLetRom",11 Style "BT"
 @mFI0+21.1,mCO0+68 Say "BP"                   Font "&mLetRom",11 Style "BT"
 @mFI0+22.6,mCO0+68 Say "PE"                   Font "&mLetRom",11 Style "BT"
 @mFI0+24.1,mCO0+68 Say "N4"                   Font "&mLetRom",11 Style "BT"
 @mFI0+15.1,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+16.6,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+18.1,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+19.6,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+21.1,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+22.6,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+24.1,mCO0+73 Say ":"                    Font "&mLetRom",12 Style "BT"
 @mFI0+15.1,mCO0+75 Say "Nota de Débito"       Font "&mLetRom",12 Style "NT"
 @mFI0+16.6,mCO0+75 Say "Nota de Crédito"      Font "&mLetRom",12 Style "NT"
 @mFI0+18.1,mCO0+75 Say "Guía de Ingreso"      Font "&mLetRom",12 Style "NT"
 @mFI0+19.6,mCO0+75 Say "Guía de Salida"       Font "&mLetRom",12 Style "NT"
 @mFI0+21.1,mCO0+75 Say "Boleta-Pago"          Font "&mLetRom",12 Style "NT"
 @mFI0+22.6,mCO0+75 Say "Pedido/OC"            Font "&mLetRom",12 Style "NT"
 @mFI0+24.1,mCO0+75 Say "Nota-Deb.Elect SOL"   Font "&mLetRom",12 Style "NT"
 @mFI0+15.1,mCO0+098 Say "DE"                  Font "&mLetRom",11 Style "BT"
 @mFI0+16.6,mCO0+098 Say "ET"                  Font "&mLetRom",11 Style "BT"
 @mFI0+18.1,mCO0+098 Say "PC"                  Font "&mLetRom",11 Style "BT"
 @mFI0+19.6,mCO0+098 Say "N1"                  Font "&mLetRom",11 Style "BT"
 @mFI0+21.1,mCO0+098 Say "N2"                  Font "&mLetRom",11 Style "BT"
 @mFI0+22.6,mCO0+098 Say "ER"                  Font "&mLetRom",11 Style "BT"
 @mFI0+15.1,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+16.6,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+18.1,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+19.6,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+21.1,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+22.6,mCO0+103 Say ":"                   Font "&mLetRom",12 Style "BT"
 @mFI0+15.1,mCO0+105 Say "Despacho"            Font "&mLetRom",12 Style "NT"
 @mFI0+16.6,mCO0+105 Say "Etiqueta"            Font "&mLetRom",12 Style "NT"
 @mFI0+18.1,mCO0+105 Say "Comp.Percepc"        Font "&mLetRom",12 Style "NT"
 @mFI0+19.6,mCO0+105 Say "Nota-Cred.Elect"     Font "&mLetRom",12 Style "NT"
 @mFI0+21.1,mCO0+105 Say "Nota-Deb.Elect"      Font "&mLetRom",12 Style "NT"
 @mFI0+22.6,mCO0+105 Say "G.Remis.Electr"      Font "&mLetRom",12 Style "NT"
 STORE mfI0-7 TO mfI0
 STORE mcO0+6 TO mcO0
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!" Color ,&mColBlN
 @mFI0+3.5,mCO0+37 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.5,mCO0+37 Get  vINI Font "&mLetAri",9  Style "NQ" Size 1,7  Pict "99.99" Color ,&mColBlN
 @mFI0+7.5,mCO0+37 Get  vSUB Font "&mLetAri",9  Style "NQ" Size 1,7  Pict "99.99" Color ,&mColBlN
 @mFI0+9.5,mCO0+37 Get  vCLN Font "&mLetAri",9  Style "NQ" Size 1,7  Pict "99.99" Color ,&mColBlN
 DO coL_fondo
 @mFI0+11.5,mCO0+37 Say Space(40) Font "&mLetAri",9 Style "NQ" Size 1,40
 IF vcOd<>"ET"
      @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Default vPRT Size 1,36 Function "*RHT Inyección/Láser (600x600);Matricial(120x144)" Color Scheme 6
 ELSE
      @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Default vPRT Size 1,36 Function "*RHT Etiquetera;Matricial(120x144)"                Color Scheme 6
 ENDIF
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9990a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>01
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
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+11.464 .AND. mfIl<=mfI0+12.464 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+30.7 .AND. mcCc<=mcO0+63.3 .AND. vpRt<>1
           DO coL_fondo
           STORE 01 TO vpRt
           @mFI0+11.5,mCO0+37 Say Space(40) Font "&mLetAri",9 Style "NQ" Size 1,40
           IF vcOd<>"ET"
                @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Inyección/Láser (600x600);Matricial(120x144)" Color Scheme 6
           ELSE
                @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Etiquetera;Matricial(120x144)"                Color Scheme 6
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.464 .AND. mfIl<=mfI0+12.464 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+67.5 .AND. mcCc<=mcO0+91.7 .AND. vpRt<>2
           DO coL_fondo
           STORE 02 TO vpRt
           @mFI0+11.5,mCO0+37 Say Space(40) Font "&mLetAri",9 Style "NQ" Size 1,40
           IF vcOd<>"ET"
                @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Inyección/Láser (600x600);Matricial(120x144)" Color Scheme 6
           ELSE
                @mFI0+11.5,mCO0+37 Get vPRT Font "&mLetAri",9 Style "NQ" Size 1,36 Default vPRT Function "*RHT Etiquetera;Matricial(120x144)"                Color Scheme 6
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>01 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>02 .AND.  ;
           mcCc>=mcO0+09.7 .AND. mcCc<=mcO0+105.1
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.678 .AND. viTe<>03 .AND.  ;
           mcCc>=mcO0+09.7 .AND. mcCc<=mcO0+35.7
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.678 .AND. viTe<>04 .AND.  ;
           mcCc>=mcO0+09.7 .AND. mcCc<=mcO0+35.7
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+9.464 .AND. mfIl<=mfI0+10.678 .AND. viTe<>05 .AND.  ;
           mcCc>=mcO0+09.7 .AND. mcCc<=mcO0+35.7
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9990a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden modi-"
 @ pfIl+01, 02 SAY "ficar:"
 @ pfIl+02, 04 SAY "Nombres: Ubicacion y Nombre de la Impresora"
 @ pfIl+03, 04 SAY "Linea inicial: Linea donde empieza la impresion"
 @ pfIl+04, 04 SAY "Sub-Total: En caso de FA-BO, es donde empiezan los totales"
 @ pfIl+05, 04 SAY "Columna Inicial: Columna donde empieza la impresion"
 @ pfIl+07, 02 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+21, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 06 SAY "ESC" STYLE "BT"
 @ pfIl+10, 06 SAY "F10" STYLE "BT"
 @ pfIl+11, 06 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=01
           @ pfIl+12, 06 SAY "F2" STYLE "BT"
           @ pfIl+13, 06 SAY "F5" STYLE "BT"
           @ pfIl+14, 06 SAY "F6" STYLE "BT"
           @ pfIl+15, 06 SAY "F7" STYLE "BT"
           @ pfIl+16, 06 SAY "F8" STYLE "BT"
           @ pfIl+17, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+18, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL END" STYLE "BT"
           @ pfIl+21, 06 SAY "CTRL P" STYLE "BT"
      OTHERWISE
           @ pfIl+22, 24 SAY ":" STYLE "BT"
           @ pfIl+23, 24 SAY ":" STYLE "BT"
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
           @ pfIl+23, 06 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+10, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+11, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+09, 26 SAY "Regresar al Menú Principal"
           @ pfIl+12, 26 SAY "Consulta de los Códigos Registrados"
           @ pfIl+13, 26 SAY "Inicio del Archivo"
           @ pfIl+14, 26 SAY "Final del Archivo"
           @ pfIl+15, 26 SAY "Registro siguiente"
           @ pfIl+16, 26 SAY "Registro anterior"
           @ pfIl+17, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+18, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+19, 26 SAY "Ir al siguiente campo"
           @ pfIl+20, 26 SAY "Ir al último campo"
           @ pfIl+21, 26 SAY "Imprimir Listado"
           STORE pfIl+23 TO pfIl
      OTHERWISE
           @ pfIl+09, 26 SAY "Regresar al primer campo"
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
           @ pfIl+23, 26 SAY "Grabar y regresar al 1er.campo"
           STORE pfIl+25 TO pfIl
 ENDCASE
 @ pfIl+0, 04 SAY  ;
   "La Impresora de Despacho tiene Anexos: D1,D2,etc. Si se quiere"
 @ pfIl+1, 04 SAY  ;
   "programar que diferentes grupos de productos en despacho vayan"
 @ pfIl+2, 04 SAY  ;
   "a diferentes impresoras se pone el codigo del grupo, separado"
 @ pfIl+3, 04 SAY "por comas, en el siguiente formato: IMPRESORA**01,02**"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vdEs, vpRt, viNi, vsUb, vcLn, vtB1,  ;
         vlIn, vpAg
 RELEASE vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
