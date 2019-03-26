 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, ctIp, vnTi, vtPo, vtB1, vtB2, vlIn, vpAg,  ;
        vfBi, vcBi
 STORE SPACE(02) TO ctIp
 STORE SPACE(30) TO vnTi
 STORE "00" TO vtIp
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe, vtPo
 STORE 13 TO muFi
 STORE 84 TO muCo
 DIMENSION vtB2[6]
 STORE "Salida de Disponible" TO vtB2[1]
 STORE "Devolución al Proveedor" TO vtB2[2]
 STORE "Salida de Malogrados" TO vtB2[3]
 STORE "Transformación Externa" TO vtB2[4]
 STORE "Transformación Interna" TO vtB2[5]
 STORE "Cambio de Códigos" TO vtB2[6]
 SET READBORDER ON
 DO p00_9218a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9218a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9218a
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
                DO orD_0000a WITH "9218", "U", "F9218NTI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9218", "U", "F9218TIP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9218tip TO vtIp
                     @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9218a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9218a WITH "1"
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
                     DO orD_0000a WITH "9218", "U", "F9218NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9218a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9218", "U", "F9218TIP", "A"
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
                     SEEK vtIp
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9218a
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
                     CASE f9218tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9218a
                          DO diS_9218a
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
                     CASE f9218tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9218a
                          DO diS_9218a
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
                     IF vtIp=f9218tip
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9218tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9218a
                          DO diS_9218a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9218tip>=vtIp
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9218tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9218a
                          DO diS_9218a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=2
                          DO grA_9218a
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
                     DO grA_9218a
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
           @mMF2,mMC2 Say Space(92) Font "&mLetRom",9 Style "BQ" Size 1,92
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+1.9 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+0.2 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+23 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,54,30
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
                STORE SPACE(30) TO vnTi
                STORE 1 TO vtPo
           ELSE
                DO muE_9218a
           ENDIF
           IF vtIp<>ctIp
                DO diS_9218a
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
PROCEDURE Mue_9218a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9218tip TO vtIp
 STORE f9218nti TO vnTi
 STORE f9218tpo TO vtPo
ENDPROC
*
PROCEDURE Dis_9218a
 DO coLbln
 @mFI0+3.5,mCO0+23.1 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,53.8 Pict "@S30"
 @mFI0+5.5,mCO0+30.0 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
 READ TIMEOUT 0.01
 STORE vtIp TO ctIp
ENDPROC
*
PROCEDURE Gra_9218a
 DO grAbar WITH "1"
 SEEK vtIp
 IF EOF()
      DO nuEvo_rg
      REPLACE f9218tip WITH vtIp
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
 REPLACE f9218nti WITH ALLTRIM(vnTi)
 REPLACE f9218tpo WITH vtPo
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 STORE SPACE(02) TO ctIp
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9218a
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
 REPLACE f9218tip WITH SPACE(02)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9218a
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
 DO reP_9218a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9218a
 PRIVATE ptAm
 STORE 24 TO mcLn
 STORE 76 TO ptAm
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
           DO cb1_0000a WITH "Tipos de Salidas de Almacén", "PUM9218A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Cód"            Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+7  Say "Descripción"    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+80 Say "Tipo de Manejo" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Cód"            Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+7  Say "Descripción"    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80 Say "Tipo de Manejo" Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+1 Say F9218TIP Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7 Say F9218NTI Font "&mLetAri",9 Style "NT"
                     DO CASE
                          CASE f9218tpo=1
                               @vLIN,mCLN+80 Say "Salida de Disponible   " Font "&mLetAri",9 Style "NT"
                          CASE f9218tpo=2
                               @vLIN,mCLN+80 Say "Devolución al Proveedor" Font "&mLetAri",9 Style "NT"
                          CASE f9218tpo=3
                               @vLIN,mCLN+80 Say "Salida de Malogrados   " Font "&mLetAri",9 Style "NT"
                          CASE f9218tpo=4
                               @vLIN,mCLN+80 Say "Transformación Externa " Font "&mLetAri",9 Style "NT"
                          CASE f9218tpo=5
                               @vLIN,mCLN+80 Say "Transformación Interna " Font "&mLetAri",9 Style "NT"
                          CASE f9218tpo=6
                               @vLIN,mCLN+80 Say "Cambio de Códigos      " Font "&mLetAri",9 Style "NT"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN+1 Say F9218TIP Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+7 Say F9218NTI Font "&mLetSwi",9 Style "NT"
                     DO CASE
                          CASE f9218tpo=1
                               @vLIN,mCLN+80 Say "Salida de Disponible   " Font "&mLetSwi",9 Style "NT"
                          CASE f9218tpo=2
                               @vLIN,mCLN+80 Say "Devolución al Proveedor" Font "&mLetSwi",9 Style "NT"
                          CASE f9218tpo=3
                               @vLIN,mCLN+80 Say "Salida de Malogrados   " Font "&mLetSwi",9 Style "NT"
                          CASE f9218tpo=4
                               @vLIN,mCLN+80 Say "Transformación Externa " Font "&mLetSwi",9 Style "NT"
                          CASE f9218tpo=5
                               @vLIN,mCLN+80 Say "Transformación Interna " Font "&mLetSwi",9 Style "NT"
                          CASE f9218tpo=6
                               @vLIN,mCLN+80 Say "Cambio de Códigos      " Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9218a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+23.8 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-12.5,mCO0+28 to mFI0+31,mCO0+mUCO+19 Font "&mLetCou",13 Style "NQ" Prompt Field F9218NTI+" : "+F9218TIP Scroll Color Scheme 10 Footer "TIPOS DE SALIDAS DE ALMACÉN"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Salidas de Almacén"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mcO0+muCo+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+02 Say "CÓDIGO:"            Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+04 Say "DESCRIPCIÓN"        Font "&mLetAri",10 Style "NT"
 @mFI0+06.5,mCO0+09 Say "(sólo para Series)" Font "&mLetAri",9  Style "BT"
 @mFI0+07.5,mCO0+09 Say "(sólo para Series)" Font "&mLetAri",9  Style "BT"
 DO coL_fonve
 @mFI0+05.5,mCO0+15.2 Say "(para todos)"     Font "&mLetAri",9  Style "BT"
 @mFI0+08.7,mCO0+15.2 Say "(para todos)"     Font "&mLetAri",9  Style "BT"
 @mFI0+09.7,mCO0+15.2 Say "(para todos)"     Font "&mLetAri",9  Style "BT"
 @mFI0+10.7,mCO0+15.2 Say "(para todos)"     Font "&mLetAri",9  Style "BT"
 DO coLbln
 SET READBORDER ON
 @mFI0+0.4,mCO0+20 Get  vTIP                 Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+3.5,mCO0+23 Edit vNTI                 Font "&mLetAri",9  Style "NQ" Size 1,54,30
 @mFI0+5.5,mCO0+30 Get  vTPO                 Font "&mLetAri",9  Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9218a
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
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.464 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+56.4 .AND. vtPo<>1
           STORE 1 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.464 .AND. mfIl<=mfI0+7.536 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+60.6 .AND. vtPo<>2
           STORE 2 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.536 .AND. mfIl<=mfI0+8.607 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+57.4 .AND. vtPo<>3
           STORE 3 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.607 .AND. mfIl<=mfI0+9.678 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+57.4 .AND. vtPo<>4
           STORE 4 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.678 .AND. mfIl<=mfI0+10.749 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+57.4 .AND. vtPo<>5
           STORE 5 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.749 .AND. mfIl<=mfI0+11.82 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+30.2 .AND. mcCc<=mcO0+57.4 .AND. vtPo<>6
           STORE 6 TO vtPo
           @mFI0+5.5,mCO0+30 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4];&vTB2[5];&vTB2[6]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+2.1 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+77.3
           STORE 02 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9218a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Tipos de Salidas de Almacén que figurarán en el"
 @ pfIl+2, 3 SAY "Sistema. Se pueden crear Tipos del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtIp, ctIp, vnTi, vtPo, vtB1, vtB2, vlIn, vpAg,  ;
         vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
