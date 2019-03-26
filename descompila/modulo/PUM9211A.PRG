 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Tip_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT tiP_prod
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, ctIp, vnTi, vtPo, vlEt, veNt, ceNt, vpEr,  ;
        vdEt, vpO1
 PUBLIC vpO2, vfIl, vtB1, vlIn, vpAg, vfBi, vcBi
 STORE SPACE(01) TO veNt
 STORE SPACE(02) TO ctIp, vlEt
 STORE SPACE(50) TO vnTi
 STORE "00" TO vtIp
 STORE 99 TO mkEy
 STORE 126 TO muCo
 STORE 02 TO vpEr, vdEt
 STORE 00 TO viT1, vpO1, vpO2
 STORE 01 TO viTe, vtPo, ceNt, vfIl
 DO CASE
      CASE mvIt=1
           STORE 16 TO muFi
      CASE mvIt=2
           STORE 25 TO muFi
      CASE mvIt=3
           STORE 20 TO muFi
      OTHERWISE
           STORE 09 TO mvIt
           STORE 28 TO muFi
 ENDCASE
 SET READBORDER ON
 DO p00_9211a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9211a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9211a
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
                SEEK vtIp
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9211tip TO vtIp
                     @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9211a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9211a WITH "1"
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
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9211a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5
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
                     SEEK vtIp
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               SELECT prOductos
                               SEEK vtIp
                               IF  .NOT. EOF()
                                    SELECT tiP_prod
                                    STORE  ;
                                     "Tipo esta registrado en uno o varios códigos de Productos..."  ;
                                     TO mmSj
                               ELSE
                                    SELECT tiP_prod
                                    DO deL_9211a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
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
                     CASE f9211tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9211a
                          DO diS_9211a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9211tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9211a
                          DO diS_9211a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vtIp
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vtIp=f9211tip
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9211tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9211a
                          DO diS_9211a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vtIp
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9211tip>=vtIp
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9211tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9211a
                          DO diS_9211a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=5
                          DO grA_9211a
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
                     DO grA_9211a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtIp
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
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+18 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+16 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+18 Say "CAMPO DE 1 CARACTER ALFANUMÉRICO, NO PUEDE ESTAR EN BLANCO..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+44 Say "ES DE 2 ENTEROS Y 2 DECIMALES..."                                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+44 Say "ES DE 2 ENTEROS Y 2 DECIMALES..."                                    Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "!!"    Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+26 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.0,mCO0+26 Get  vLET Font "&mLetAri",9  Style "NQ" Size 1,3.2 Pict "!!"    Color ,&mColBlN
           CASE viTe=4
                @vFIL+3.0,mCO0+97 Get  vPO1 Font "&mLetAri",9  Style "NQ" Size 1,7.2 Pict "99.99" Color ,&mColBlN
           CASE viTe=5
                @vFIL+4.5,mCO0+97 Get  vPO2 Font "&mLetAri",9  Style "NQ" Size 1,7.2 Pict "99.99" Color ,&mColBlN
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vtIp))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vtIp)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vtIp="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=1
           SEEK vtIp
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(01) TO veNt
                STORE SPACE(02) TO vlEt
                STORE SPACE(50) TO vnTi
                STORE 1 TO vtPo, ceNt
                STORE 2 TO vpEr, vdEt
                STORE 0 TO vpO1, vpO2
           ELSE
                DO muE_9211a
           ENDIF
           IF vtIp<>ctIp
                DO diS_9211a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnTi))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9211a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9211tip TO vtIp
 STORE f9211nti TO vnTi
 STORE f9211tpo TO vtPo
 STORE f9211let TO vlEt
 STORE f9211ent TO veNt
 STORE f9211per TO vpEr
 STORE f9211det TO vdEt
 STORE f9211po1 TO vpO1
 STORE f9211po2 TO vpO2
 IF vpEr=0
      STORE 2 TO vpEr
 ENDIF
 IF vdEt=0
      STORE 2 TO vdEt
 ENDIF
 DO CASE
      CASE veNt="1"
           STORE 2 TO ceNt
      CASE veNt="2"
           STORE 3 TO ceNt
      CASE veNt="3"
           STORE 4 TO ceNt
      CASE veNt="4"
           STORE 5 TO ceNt
      OTHERWISE
           STORE 1 TO ceNt
 ENDCASE
 DO CASE
      CASE mvIt=1 .AND. vtPo=10
           STORE 2 TO vtPo
      CASE mvIt=2
           DO CASE
                CASE vtPo=4
                     STORE 3 TO vtPo
                CASE vtPo=5
                     STORE 4 TO vtPo
                CASE vtPo=6
                     STORE 5 TO vtPo
                CASE vtPo=7
                     STORE 6 TO vtPo
                CASE vtPo=8
                     STORE 7 TO vtPo
                CASE vtPo=9
                     STORE 8 TO vtPo
                CASE vtPo=10
                     STORE 9 TO vtPo
                CASE vtPo=12
                     STORE 10 TO vtPo
                CASE vtPo=13
                     STORE 11 TO vtPo
           ENDCASE
      CASE mvIt=3
           DO CASE
                CASE vtPo=3
                     STORE 2 TO vtPo
                CASE vtPo=4
                     STORE 3 TO vtPo
                CASE vtPo=10
                     STORE 4 TO vtPo
                CASE vtPo=11
                     STORE 5 TO vtPo
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Dis_9211a
 DO coLbln
 @mFI0+3.5,mCO0+26 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,74  Pict "@S50"
 @mFI0+5.0,mCO0+26 Say vLET Font "&mLetAri",9 Style "NQ" Size 1,3.3 Pict "!!"
 @vFIL+3.0,mCO0+97 Say vPO1 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "99.99"
 @vFIL+4.5,mCO0+97 Say vPO2 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "99.99"
 DO enT_9211a
 DO tpO_9211a
 DO peR_9211a
 DO deT_9211a
 READ TIMEOUT 0.01
 STORE vtIp TO ctIp
ENDPROC
*
PROCEDURE Gra_9211a
 DO grAbar WITH "1"
 SEEK vtIp
 IF EOF()
      DO nuEvo_rg
      REPLACE f9211tip WITH vtIp
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtIp
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 DO CASE
      CASE ceNt=2
           STORE "1" TO veNt
      CASE ceNt=3
           STORE "2" TO veNt
      CASE ceNt=4
           STORE "3" TO veNt
      CASE ceNt=5
           STORE "4" TO veNt
      OTHERWISE
           STORE " " TO veNt
 ENDCASE
 DO CASE
      CASE mvIt=1 .AND. vtPo=2
           STORE 10 TO vtPo
      CASE mvIt=2
           DO CASE
                CASE vtPo=3
                     STORE 4 TO vtPo
                CASE vtPo=4
                     STORE 5 TO vtPo
                CASE vtPo=5
                     STORE 6 TO vtPo
                CASE vtPo=6
                     STORE 7 TO vtPo
                CASE vtPo=7
                     STORE 8 TO vtPo
                CASE vtPo=8
                     STORE 9 TO vtPo
                CASE vtPo=9
                     STORE 10 TO vtPo
                CASE vtPo=10
                     STORE 12 TO vtPo
                CASE vtPo=11
                     STORE 13 TO vtPo
           ENDCASE
      CASE mvIt=3
           DO CASE
                CASE vtPo=2
                     STORE 3 TO vtPo
                CASE vtPo=3
                     STORE 4 TO vtPo
                CASE vtPo=4
                     STORE 10 TO vtPo
                CASE vtPo=5
                     STORE 11 TO vtPo
           ENDCASE
 ENDCASE
 REPLACE f9211nti WITH ALLTRIM(vnTi)
 REPLACE f9211tpo WITH vtPo
 REPLACE f9211let WITH ALLTRIM(vlEt)
 REPLACE f9211ent WITH veNt
 REPLACE f9211per WITH vpEr
 REPLACE f9211det WITH vdEt
 REPLACE f9211po1 WITH vpO1
 REPLACE f9211po2 WITH vpO2
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9211a
 SEEK vtIp
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtIp
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9211tip WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9211a
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
 DO reP_9211a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9211a
 PRIVATE ptAm
 STORE 14 TO mcLn
 STORE 82 TO ptAm
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
           DO cb1_0000a WITH "Tipos de Productos/Servicios/Activos Fijos",  ;
              "PUM9211A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN     Say "Cód"            Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+6   Say "Descripción"    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+80  Say "Tipo de Manejo" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+119 Say "Let"            Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say "Cód"            Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+6   Say "Descripción"    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80  Say "Tipo de Manejo" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+119 Say "Let"            Font "&mLetAri",9 Style "NT"
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
                CASE f9211tpo=1
                     STORE "Varios" TO mfRa
                CASE f9211tpo=2
                     STORE "Planchas x pie2" TO mfRa
                CASE f9211tpo=3
                     STORE "Maderas x pulg" TO mfRa
                CASE f9211tpo=4
                     STORE "Cortes x mt2" TO mfRa
                CASE f9211tpo=5
                     STORE "Cortes x pie2" TO mfRa
                CASE f9211tpo=6
                     STORE "Aluminio x mt/Medidas x Cant" TO mfRa
                CASE f9211tpo=7
                     STORE "Bisel C/S Forma" TO mfRa
                CASE f9211tpo=8
                     STORE "Bisel Circular" TO mfRa
                CASE f9211tpo=9
                     STORE "Bisel x lado" TO mfRa
                CASE f9211tpo=10
                     STORE "Conjuntos" TO mfRa
                CASE f9211tpo=11
                     STORE "Tapacantos" TO mfRa
                CASE f9211tpo=12
                     STORE "Perforaciones" TO mfRa
                CASE f9211tpo=13
                     STORE "Puntas Boleadas" TO mfRa
           ENDCASE
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+0.9 Say F9211TIP Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+006 Say F9211NTI Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+080 Say mFRA     Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+120 Say F9211LET Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+0.9 Say F9211TIP Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+6.0 Say F9211NTI Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+090 Say mFRA     Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+120 Say F9211LET Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9211a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+2.1 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+23.8 TO vcBi
 STORE 00 TO viT1
 DO CASE
      CASE mvIt=1
           STORE mfI0+09.5 TO vfIl
      CASE mvIt=2
           STORE mfI0+19.0 TO vfIl
      CASE mvIt=3
           STORE mfI0+13.5 TO vfIl
      CASE mvIt=9
           STORE mfI0+21.5 TO vfIl
 ENDCASE
 Define Popup vTB1 from mFI0-9,mCO0+mUCO-97.5 to mFI0+34,mCO0+mUCO+28 Font "&mLetCou",13 Style "NQ" Prompt Field F9211NTI+" : "+F9211TIP Scroll Color Scheme 10 Footer "TIPOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Productos/Servicios/Activos Fijos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.10, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.10, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+0.10, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.50,mCO0+02 Say "CÓDIGO:"                               Font "&mLetRom",13 Style "BT"
 @mFI0+3.50,mCO0+02 Say "DESCRIPCIÓN"                           Font "&mLetAri",10 Style "NT"
 @mFI0+5.00,mCO0+02 Say "LETRA (COD.NEM)"                       Font "&mLetAri",10 Style "NT"
 @mFI0+6.50,mCO0+02 Say "TIPO DE MANEJO"                        Font "&mLetAri",10 Style "NT"
 @vFIL     ,mCO0+02 Say "Tipo de cantidad"                      Font "&mLetAri",10 Style "BT"
 @vFIL     ,mCO0+69 Say "Genera Percepción"                     Font "&mLetAri",10 Style "BT"
 @vFIL+1.50,mCO0+69 Say "Genera Detracción"                     Font "&mLetAri",10 Style "BT"
 @vFIL+3.00,mCO0+69 Say "% Comisión Contado"                    Font "&mLetAri",10 Style "BT"
 @vFIL+4.50,mCO0+69 Say "% Comisión Crédito"                    Font "&mLetAri",10 Style "BT"
 @mFI0+6.55,mCO0+69 Say "Operación simple, se ingresa cantidad" Font "&mLetAri",8  Style "NT"
 @ mfI0+7.55, mcO0+26 TO mfI0+07.55, mcO0+muCo-1
 DO CASE
      CASE mvIt=1
           @mFI0+07.60,mCO0+69 Say "Usado para cálculo de precios y componentes"             Font "&mLetAri",8 Style "NT"
           @ mfI0+08.60, mcO0+26 TO mfI0+08.60, mcO0+muCo-1
      CASE mvIt=2
           @mFI0+07.60,mCO0+69 Say "mt y/o pulg del producto y se convierte a pies2"         Font "&mLetAri",8 Style "NT"
           @mFI0+08.65,mCO0+69 Say "Se digita Largo x Ancho y se calcula mt2"                Font "&mLetAri",8 Style "NT"
           @mFI0+09.70,mCO0+69 Say "Se digita mt. y pulg. y se calcula pies2"                Font "&mLetAri",8 Style "NT"
           @mFI0+10.75,mCO0+69 Say "Se digitan medidas, usado para metros,peso o unidades"   Font "&mLetAri",8 Style "NT"
           @mFI0+11.80,mCO0+69 Say "Se digita el Largo x Ancho y se calcula Largo*2+Ancho*2" Font "&mLetAri",8 Style "NT"
           @mFI0+12.85,mCO0+69 Say "Se digita el Diámetro, y se calcula el perímetro "       Font "&mLetAri",8 Style "NT"
           @mFI0+13.90,mCO0+69 Say "Se digita una medida simple, calcula metros totales"     Font "&mLetAri",8 Style "NT"
           @mFI0+15.00,mCO0+69 Say "Usado para cálculo de precios y componentes"             Font "&mLetAri",8 Style "NT"
           @mFI0+16.10,mCO0+69 Say "Se digitan las coordenadas y se escoge el ángulo"        Font "&mLetAri",8 Style "NT"
           @mFI0+17.15,mCO0+69 Say "Se digitan el grado y se escoge el ángulo"               Font "&mLetAri",8 Style "NT"
           @ mfI0+08.60, mcO0+26 TO mfI0+08.60, mcO0+muCo-1
           @ mfI0+09.65, mcO0+26 TO mfI0+09.65, mcO0+muCo-1
           @ mfI0+10.70, mcO0+26 TO mfI0+10.70, mcO0+muCo-1
           @ mfI0+11.75, mcO0+26 TO mfI0+11.75, mcO0+muCo-1
           @ mfI0+12.80, mcO0+26 TO mfI0+12.80, mcO0+muCo-1
           @ mfI0+13.85, mcO0+26 TO mfI0+13.85, mcO0+muCo-1
           @ mfI0+14.90, mcO0+26 TO mfI0+14.90, mcO0+muCo-1
           @ mfI0+16.00, mcO0+26 TO mfI0+16.00, mcO0+muCo-1
           @ mfI0+17.10, mcO0+26 TO mfI0+17.10, mcO0+muCo-1
           @ mfI0+18.15, mcO0+26 TO mfI0+18.15, mcO0+muCo-1
      CASE mvIt=3
           @mFI0+07.60,mCO0+69 Say "Largo x Ancho x Espesor del producto / 12 = pies3"       Font "&mLetAri",8 Style "NT"
           @mFI0+08.65,mCO0+69 Say "Se digita Largo x Ancho y se calcula mt2"                Font "&mLetAri",8 Style "NT"
           @mFI0+09.70,mCO0+69 Say "Usado para cálculo de precios y componentes"             Font "&mLetAri",8 Style "NT"
           @mFI0+10.75,mCO0+69 Say "Se digita la cantidad de largos y de anchos, calcula mt" Font "&mLetAri",8 Style "NT"
           @ mfI0+08.60, mcO0+26 TO mfI0+08.60, mcO0+muCo-1
           @ mfI0+09.65, mcO0+26 TO mfI0+09.65, mcO0+muCo-1
           @ mfI0+10.70, mcO0+26 TO mfI0+10.70, mcO0+muCo-1
           @ mfI0+11.75, mcO0+26 TO mfI0+11.75, mcO0+muCo-1
      CASE mvIt=9
           @mFI0+07.60,mCO0+69 Say "mt y/o pulg del producto y se convierte a pies2"         Font "&mLetAri",8 Style "NT"
           @mFI0+08.65,mCO0+69 Say "Largo x Ancho x Espesor del producto / 12 = pies3"       Font "&mLetAri",8 Style "NT"
           @mFI0+09.70,mCO0+69 Say "Se digita Largo x Ancho y se calcula mt2"                Font "&mLetAri",8 Style "NT"
           @mFI0+10.75,mCO0+69 Say "Se digita mt. y pulg. y se calcula pies2"                Font "&mLetAri",8 Style "NT"
           @mFI0+11.80,mCO0+69 Say "Se digitan medidas, usado para metros,peso o unidades"   Font "&mLetAri",8 Style "NT"
           @mFI0+12.85,mCO0+69 Say "Se digita el Largo x Ancho y se calcula Largo*2+Ancho*2" Font "&mLetAri",8 Style "NT"
           @mFI0+13.90,mCO0+69 Say "Se digita el Diámetro, y se calcula el perímetro "       Font "&mLetAri",8 Style "NT"
           @mFI0+15.00,mCO0+69 Say "Se digita una medida simple, calcula metros totales"     Font "&mLetAri",8 Style "NT"
           @mFI0+16.10,mCO0+69 Say "Usado para cálculo de precios y componentes"             Font "&mLetAri",8 Style "NT"
           @mFI0+17.15,mCO0+69 Say "Se digita la cantidad de largos y de anchos, calcula mt" Font "&mLetAri",8 Style "NT"
           @mFI0+18.25,mCO0+69 Say "Se digitan las coordenadas y se escoge el ángulo"        Font "&mLetAri",8 Style "NT"
           @mFI0+19.30,mCO0+69 Say "Se digitan el grado y se escoge el ángulo"               Font "&mLetAri",8 Style "NT"
           @ mfI0+08.60, mcO0+26 TO mfI0+08.60, mcO0+muCo-1
           @ mfI0+09.65, mcO0+26 TO mfI0+09.65, mcO0+muCo-1
           @ mfI0+10.70, mcO0+26 TO mfI0+10.70, mcO0+muCo-1
           @ mfI0+11.75, mcO0+26 TO mfI0+11.75, mcO0+muCo-1
           @ mfI0+12.80, mcO0+26 TO mfI0+12.80, mcO0+muCo-1
           @ mfI0+13.85, mcO0+26 TO mfI0+13.85, mcO0+muCo-1
           @ mfI0+14.90, mcO0+26 TO mfI0+14.90, mcO0+muCo-1
           @ mfI0+16.00, mcO0+26 TO mfI0+16.00, mcO0+muCo-1
           @ mfI0+17.10, mcO0+26 TO mfI0+17.10, mcO0+muCo-1
           @ mfI0+18.15, mcO0+26 TO mfI0+18.15, mcO0+muCo-1
           @ mfI0+19.25, mcO0+26 TO mfI0+19.25, mcO0+muCo-1
           @ mfI0+20.30, mcO0+26 TO mfI0+20.30, mcO0+muCo-1
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+3.5,mCO0+26 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.0,mCO0+26 Get  vLET Font "&mLetAri",9  Style "NQ" Size 1,3.2 Pict "!!" Color ,&mColBlN
 @vFIL+3.0,mCO0+97 Get  vPO1 Font "&mLetAri",9  Style "NQ" Size 1,7.2 Pict "99.99" Color ,&mColBlN
 @vFIL+4.5,mCO0+97 Get  vPO2 Font "&mLetAri",9  Style "NQ" Size 1,7.2 Pict "99.99" Color ,&mColBlN
 DO enT_9211a
 DO tpO_9211a
 DO peR_9211a
 DO deT_9211a
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Ent_9211a
 @vFIL,mCO0+26 Get cENT Font "&mLetAri",9 Style "NQ" Function "*RVT Enteros y Fraccionados;Sólo enteros;Enteros y 0.5;Enteros,0.5,0.25 y 0.75;Sólo decimales" Default cENT
ENDPROC
*
PROCEDURE Per_9211a
 @vFIL+0.0,mCO0+97 Get vPER Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vPER
ENDPROC
*
PROCEDURE Det_9211a
 @vFIL+1.5,mCO0+97 Get vDET Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vDET
ENDPROC
*
PROCEDURE Tpo_9211a
 DO CASE
      CASE mvIt=1
           @mFI0+6.5,mCO0+26 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Varios;Conjuntos" Default vTPO
      CASE mvIt=2
           @mFI0+6.5,mCO0+26 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Varios;Plancha x pie²;Cortes x mt²;Cortes x pie²;Aluminio x mt/Medidas x Cantidad;Bisel C/S Forma;Bisel Circular;Bisel x Lado;Conjuntos;Perforaciones;Punta Boleada" Default vTPO
      CASE mvIt=3
           @mFI0+6.5,mCO0+26 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Varios;Maderas x pulg;Cortes x mt²;Conjuntos;Tapacantos" Default vTPO
      CASE mvIt=9
           @mFI0+6.5,mCO0+26 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT Varios;Plancha x pie²;Maderas x pulg;Cortes x mt²;Cortes x pie²;Aluminio x mt/Medidas x Cantidad;Bisel C/S Forma;Bisel Circular;Bisel x Lado;Conjuntos;Tapacantos;Perforaciones;Punta Boleada" Default vTPO
 ENDCASE
ENDPROC
*
PROCEDURE Clp_9211a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.4 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.2 .AND. viTe>1
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
      CASE mfIl>=vfIl-0.242 .AND. mfIl<=vfIl+0.685 .AND. vpEr<>1 .AND.  ;
           mcCc>=mcO0+96.4 .AND. mcCc<=mcO0+103 .AND. viTe>1
           STORE 01 TO vpEr
           STORE 99 TO mkEy
           DO peR_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl-0.242 .AND. mfIl<=vfIl+0.685 .AND. vpEr<>2 .AND.  ;
           mcCc>=mcO0+103 .AND. mcCc<=mcO0+110.8 .AND. viTe>1
           STORE 02 TO vpEr
           STORE 99 TO mkEy
           DO peR_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+1.258 .AND. mfIl<=vfIl+2.185 .AND. vdEt<>1 .AND.  ;
           mcCc>=mcO0+96.4 .AND. mcCc<=mcO0+103 .AND. viTe>1
           STORE 01 TO vdEt
           STORE 99 TO mkEy
           DO deT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+1.258 .AND. mfIl<=vfIl+2.185 .AND. vdEt<>2 .AND.  ;
           mcCc>=mcO0+103 .AND. mcCc<=mcO0+110.8 .AND. viTe>1
           STORE 02 TO vdEt
           STORE 99 TO mkEy
           DO deT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+6.185 .AND. mfIl<=mfI0+7.257 .AND. vtPo<>1 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+36.2 .AND. viTe>1
           STORE 01 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.257 .AND. mfIl<=mfI0+8.328 .AND. vtPo<>2 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+45.2 .AND. viTe>1
           STORE 02 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+8.328 .AND. mfIl<=mfI0+9.471 .AND. vtPo<>3 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+46.2 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=3 .OR. mvIt=9)
           STORE 03 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.471 .AND. mfIl<=mfI0+10.542 .AND. vtPo<>4 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+42.8 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=3 .OR. mvIt=9)
           STORE 04 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+10.542 .AND. mfIl<=mfI0+11.542 .AND. vtPo<>5 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+43.4 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=3 .OR. mvIt=9)
           STORE 05 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+11.542 .AND. mfIl<=mfI0+12.614 .AND. vtPo<>6 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+66.4 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 06 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+12.614 .AND. mfIl<=mfI0+13.893 .AND. vtPo<>7 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+47.6 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 07 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+13.893 .AND. mfIl<=mfI0+14.964 .AND. vtPo<>8 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+44.4 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 08 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+14.964 .AND. mfIl<=mfI0+16.036 .AND. vtPo<>9 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+42.6 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 09 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+16.036 .AND. mfIl<=mfI0+17.178 .AND. vtPo<>10 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+40.8 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 10 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+17.178 .AND. mfIl<=mfI0+18.335 .AND. vtPo<>11 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+40.8 .AND. viTe>1 .AND. (mvIt= ;
           2 .OR. mvIt=9)
           STORE 11 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+18.335 .AND. mfIl<=mfI0+19.492 .AND. vtPo<>12 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+40.8 .AND. viTe>1 .AND. mvIt=9
           STORE 12 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+19.492 .AND. mfIl<=mfI0+20.649 .AND. vtPo<>13 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+40.8 .AND. viTe>1 .AND. mvIt=9
           STORE 13 TO vtPo
           STORE 99 TO mkEy
           DO tpO_9211a
           IF ceNt<>1
                STORE 1 TO ceNt
                DO enT_9211a
           ENDIF
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl-0.314 .AND. mfIl<=vfIl+0.828 .AND. ceNt<>1 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+55.4 .AND. viTe>1
           STORE 01 TO ceNt
           STORE 99 TO mkEy
           DO enT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+0.828 .AND. mfIl<=vfIl+1.828 .AND. ceNt<>2 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+55.4 .AND. viTe>1
           STORE 02 TO ceNt
           STORE 99 TO mkEy
           DO enT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+1.828 .AND. mfIl<=vfIl+2.90 .AND. ceNt<>3 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+55.4 .AND. viTe>1
           STORE 03 TO ceNt
           STORE 99 TO mkEy
           DO enT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+2.90 .AND. mfIl<=vfIl+3.971 .AND. ceNt<>4 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+55.4 .AND. viTe>1
           STORE 04 TO ceNt
           STORE 99 TO mkEy
           DO enT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=vfIl+3.971 .AND. mfIl<=vfIl+4.971 .AND. ceNt<>5 .AND.  ;
           mcCc>=mcO0+25.8 .AND. mcCc<=mcO0+55.4 .AND. viTe>1
           STORE 05 TO ceNt
           STORE 99 TO mkEy
           DO enT_9211a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+1.8 .AND. mcCc<=mcO0+100.2
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+4.964 .AND. mfIl<=mfI0+6.107 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+1.8 .AND. mcCc<=mcO0+30.4
           STORE 03 TO ciTx
      CASE mfIl>=vfIl+2.758 .AND. mfIl<=vfIl+4.285 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+68.2 .AND. mcCc<=mcO0+105.4
           STORE 04 TO ciTx
      CASE mfIl>=vfIl+4.285 .AND. mfIl<=vfIl+5.714 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+68.2 .AND. mcCc<=mcO0+105.4
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9211a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y/o eliminar los Tipos de Productos, Servicios o Activos Fijos"
 @ pfIl+2, 3 SAY  ;
   "que figurarán en el Sistema. Se pueden crear Tipos del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtIp, ctIp, vnTi, vtPo, vlEt, veNt, ceNt, vpEr,  ;
         vdEt, vpO1
 RELEASE vpO2, vfIl, vtB1, vlIn, vpAg, vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
