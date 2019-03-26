 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT tiPos
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, ctIp, vnTi, vdCt, vmAx, vtB1, vlIn, vpAg,  ;
        vfBi, vcBi
 STORE SPACE(02) TO ctIp
 STORE SPACE(50) TO vnTi
 STORE "00" TO vtIp
 STORE 00 TO viT1, vdCt, vmAx
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 10 TO muFi
 STORE 115 TO muCo
 SET READBORDER ON
 DO p00_9110a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9110a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9110a
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
                DO orD_0000a WITH "9110", "U", "F9110NTI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9110", "U", "F9110TIP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9110tip TO vtIp
                     @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9110a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9110a WITH "1"
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
                     DO orD_0000a WITH "9110", "U", "F9110NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9110a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9110", "U", "F9110TIP", "A"
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
           CASE mkEy=k_Ctrl_end .AND. viTe=4
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
                               SELECT clIentes
                               SEEK vtIp
                               IF  .NOT. EOF()
                                    SELECT tiPos
                                    STORE  ;
                                     "Tipo esta registrado en uno o varios códigos de Cliente..."  ;
                                     TO mmSj
                               ELSE
                                    SELECT tiPos
                                    DO deL_9110a
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
                     CASE f9110tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9110a
                          DO diS_9110a
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
                     CASE f9110tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9110a
                          DO diS_9110a
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
                     IF vtIp=f9110tip
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9110tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9110a
                          DO diS_9110a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9110tip>=vtIp
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9110tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9110a
                          DO diS_9110a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=4
                          DO grA_9110a
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
           CASE mkEy=k_Tab
                STORE 4 TO ciTx
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
                     DO grA_9110a
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
                     @mMF2,mMC2+15 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..."          Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+12 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."            Font "&mLetRom",9 Style "BQ"
                CASE viTe=3 .OR. viTe=4
                     @mMF2,mMC2+06 Say "SI NO SE USA PUEDE SER CERO, ESTE % DE DCTO. SE USA EN FACTURAS Y BOLETAS..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+36 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.5,mCO0+36 Get  vDCT Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
           CASE viTe=4
                @mFI0+7.5,mCO0+36 Get  vMAX Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
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
                STORE SPACE(50) TO vnTi
                STORE 00 TO vdCt, vmAx
           ELSE
                DO muE_9110a
           ENDIF
           IF vtIp<>ctIp
                DO diS_9110a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnTi))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE viTe=3 .AND. vdCt>vmAx .AND. vmAx<>0
           STORE "Porcentaje de Descuento Fijo no puede ser mayor a Máximo..."  ;
                 TO mmSj
      CASE viTe=4 .AND. vdCt>vmAx .AND. vmAx<>0
           STORE "Porcentaje de Descuento Fijo no puede ser mayor a Máximo..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9110a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9110tip TO vtIp
 STORE f9110nti TO vnTi
 STORE f9110dct TO vdCt
 STORE f9110max TO vmAx
ENDPROC
*
PROCEDURE Dis_9110a
 DO coLbln
 @mFI0+3.5,mCO0+36.1 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+5.5,mCO0+36   Say vDCT Font "&mLetAri",9 Style "NQ" Size 1,07   Pict "99.99"
 @mFI0+7.5,mCO0+36   Say vMAX Font "&mLetAri",9 Style "NQ" Size 1,07   Pict "99.99"
 STORE vtIp TO ctIp
ENDPROC
*
PROCEDURE Gra_9110a
 DO grAbar WITH "1"
 SEEK vtIp
 IF EOF()
      DO nuEvo_rg
      REPLACE f9110tip WITH vtIp
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
 REPLACE f9110nti WITH ALLTRIM(vnTi)
 REPLACE f9110dct WITH vdCt
 REPLACE f9110max WITH vmAx
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9110a
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
 REPLACE f9110tip WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9110a
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
 DO reP_9110a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9110a
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 22 TO mcLn
           STORE 76 TO ptAm
      CASE mpRt="2"
           STORE 22 TO mcLn
           STORE 80 TO ptAm
 ENDCASE
 STORE 0 TO vlIn, vpAg
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
           DO cb1_0000a WITH "Tipos de Clientes", "PUM9110A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+102.3 Say "Descuentos" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+103.0 Say "Descuentos" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+000.1 Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+006.0 Say "Descripción" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+100.2 Say "%Fijo"       Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+109.1 Say "% Máx"       Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+000.0 Say "Cód"         Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+006.0 Say "Descripción" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+102.0 Say "%Fijo"       Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+110.4 Say "% Máx"       Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+.9  Say F9110TIP Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+006 Say F9110NTI Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+105 Say F9110DCT Font "&mLetAri",9 Style "NT" Pict "99.99" Size 1,7
                     @vLIN,mCLN+115 Say F9110MAX Font "&mLetAri",9 Style "NT" Pict "99.99" Size 1,7
                CASE mpRt="2"
                     @vLIN,mCLN+.9  Say F9110TIP Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+006 Say F9110NTI Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+102 Say F9110DCT Font "&mLetSwi",9 Style "NQ" Pict "99.99" Size 1,7
                     @vLIN,mCLN+112 Say F9110MAX Font "&mLetSwi",9 Style "NQ" Pict "99.99" Size 1,7
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
 RELEASE ptAm
ENDPROC
*
PROCEDURE P00_9110a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+23.8 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from 4,mCO0+mUCO-87 to mWFI-2,mWCO-2 Font "&mLetCou",13 Style "NQ" Prompt Field F9110NTI+" : "+F9110TIP Scroll Color Scheme 10 Footer "TIPOS DE CLIENTES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Clientes"
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
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.5,mCO0+2 Say "CÓDIGO:"            Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+4 Say "DESCRIPCIÓN"        Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+4 Say "% DESCUENTO FIJO"   Font "&mLetAri",10 Style "NT"
 @mFI0+7.5,mCO0+4 Say "% DESCUENTO MÁXIMO" Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vTIP               Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"   Color ,&mColBlN
 @mFI0+3.5,mCO0+36 Edit vNTI               Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.5,mCO0+36 Get  vDCT               Font "&mLetAri",9  Style "NQ" Size 1,07 Pict "99.99" Color ,&mColBlN
 @mFI0+7.5,mCO0+36 Get  vMAX               Font "&mLetAri",9  Style "NQ" Size 1,07 Pict "99.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9110a
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
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+3.9 .AND. mcCc<=mcO0+110.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.607 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+3.9 .AND. mcCc<=mcO0+43.5
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.607 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+3.9 .AND. mcCc<=mcO0+43.5
           STORE 04 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9110a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este  Mantenimiento es un programa  utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Tipos de Clientes que figurarán en el Sistema. Se"
 @ pfIl+2, 3 SAY "pueden crear Tipos de Clientes del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl1_0000a
 PARAMETER pnUm, pfRa
 @ pfIl+0, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 06 SAY "ESC" STYLE "BT"
 @ pfIl+3, 06 SAY "F10" STYLE "BT"
 @ pfIl+4, 06 SAY "F1" STYLE "BT"
 @ pfIl+3, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=pnUm
           @ pfIl+2, 26 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+2, 26 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+5 TO pfIl
 IF viTe=pnUm
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F2" STYLE "BT"
      @ pfIl, 26 SAY "Consulta de "+pfRa+" registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "F5" STYLE "BT"
 @ pfIl+1, 06 SAY "F6" STYLE "BT"
 @ pfIl+2, 06 SAY "F7" STYLE "BT"
 @ pfIl+3, 06 SAY "F8" STYLE "BT"
 @ pfIl+4, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 26 SAY "Inicio del Archivo"
 @ pfIl+1, 26 SAY "Final del Archivo"
 @ pfIl+2, 26 SAY "Registro siguiente"
 @ pfIl+3, 26 SAY "Registro anterior"
 @ pfIl+4, 26 SAY "Ir al siguiente campo, llegando al final graba"
 @ pfIl+5, 26 SAY "Ir al campo inferior, llegando al final graba"
 STORE pfIl+6 TO pfIl
 IF viTe=pnUm
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 26 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>pnUm
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL INICIO" STYLE "BT"
      @ pfIl, 26 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "CTRL FIN" STYLE "BT"
 @ pfIl+1, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl+2, 06 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 26 SAY "Ir al último campo"
 @ pfIl+1, 26 SAY "Ir al campo derecho, llegando al final graba"
 @ pfIl+2, 26 SAY "Imprimir Listado"
 STORE pfIl+3 TO pfIl
 IF viTe>pnUm
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "CTRL SUPR" STYLE "BT"
      @ pfIl+1, 06 SAY "TAB" STYLE "BT"
      @ pfIl+0, 26 SAY "Borrar registro"
      @ pfIl+1, 26 SAY "Grabar y regresar al 1er.campo"
 ENDIF
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtIp, ctIp, vnTi, vdCt, vmAx, vtB1, vlIn, vpAg,  ;
         vfBi, vcBi
 RELEASE vsW0, vpT2, vpT3, vpT4, vpT5
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
