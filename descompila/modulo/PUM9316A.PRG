 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9316", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9316TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, ctIp, vnTi, voPc, vtB1, vtB2, vlIn, vpAg,  ;
        vfBi, vcBi
 PUBLIC caNo, cmEs, csEr, cnUm, vcTd, vcTh
 STORE SPACE(02) TO ctIp
 STORE SPACE(50) TO vnTi
 STORE SPACE(12) TO vcTd, vcTh
 STORE "00" TO vtIp
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe, voPc
 STORE 14 TO muFi
 STORE 110 TO muCo
 DIMENSION vtB2[4]
 STORE "Por Rendir" TO vtB2[1]
 STORE "Ingresos Varios" TO vtB2[2]
 STORE "Notas de Abono al Banco" TO vtB2[3]
 STORE "Cobro de Ventas" TO vtB2[4]
 SET READBORDER ON
 DO p00_9316a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9316a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9316a
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
                DO orD_0000a WITH "9316", "U", "F9316NTI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9316", "U", "F9316TIP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9316tip TO vtIp
                     @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9316a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9316a WITH "1"
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
                     DO orD_0000a WITH "9316", "U", "F9316NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9316a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9316", "U", "F9316TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 01 TO viTe
                STORE 00 TO viT1
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
                               DO deL_9316a
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
                     CASE f9316tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9316a
                          DO diS_9316a
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
                     CASE f9316tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9316a
                          DO diS_9316a
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
                     IF vtIp=f9316tip
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9316tip=vtIp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9316a
                          DO diS_9316a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9316tip>=vtIp
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9316tip=vtIp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9316a
                          DO diS_9316a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=4
                          DO grA_9316a
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
                     DO grA_9316a
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
           @mMF2,mMC2 Say Space(110) Font "&mLetRom",9 Style "BQ" Size 1,108
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+10.0 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+08.0 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+00.2 Say "CAMPO DE 12 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+00.2 Say "CAMPO DE 12 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+03.5,mCO0+31 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+10.5,mCO0+31 Edit vCTD Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=4
                @mFI0+12.5,mCO0+31 Edit vCTH Font "&mLetAri",9  Style "NQ" Size 1,20,12
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
                STORE SPACE(12) TO vcTd, vcTh
                STORE SPACE(50) TO vnTi
                STORE 01 TO voPc
           ELSE
                DO muE_9316a
           ENDIF
           IF vtIp<>ctIp
                DO diS_9316a
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
PROCEDURE Mue_9316a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9316tip TO vtIp
 STORE f9316nti TO vnTi
 STORE f9316opc TO voPc
 STORE f9316ctd TO vcTd
 STORE f9316cth TO vcTh
ENDPROC
*
PROCEDURE Dis_9316a
 = INKEY(0.01)
 DO coLbln
 @mFI0+03.5,mCO0+31.1 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+05.5,mCO0+31.0 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
 @mFI0+10.5,mCO0+31.0 Say vCTD Font "&mLetAri",9 Style "NQ" Size 1,20.0
 @mFI0+12.5,mCO0+31.0 Say vCTH Font "&mLetAri",9 Style "NQ" Size 1,20.0
 READ TIMEOUT 0.01
 STORE vtIp TO ctIp
ENDPROC
*
PROCEDURE Gra_9316a
 DO grAbar WITH "1"
 SEEK vtIp
 IF EOF()
      DO nuEvo_rg
      REPLACE f9316tip WITH vtIp
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
 REPLACE f9316nti WITH ALLTRIM(vnTi)
 REPLACE f9316opc WITH voPc
 REPLACE f9316ctd WITH ALLTRIM(vcTd)
 REPLACE f9316cth WITH ALLTRIM(vcTh)
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 STORE SPACE(02) TO ctIp
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9316a
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
 REPLACE f9316tip WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9316a
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
 DO reP_9316a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9316a
 PRIVATE ptAm
 STORE 22 TO mcLn
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
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO cb1_0000a WITH "Tipos de Ingresos a Bancos", "PUM9316A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Cód"                Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+06 Say "Descripción"        Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+86 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Cód"                Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+06 Say "Descripción"        Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+86 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "NT"
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
                CASE f9316opc=1
                     STORE "Por Rendir" TO mfRa
                CASE f9316opc=2
                     STORE "Ingresos Varios" TO mfRa
                CASE f9316opc=3
                     STORE "Notas de Abono al Banco" TO mfRa
                CASE f9316opc=4
                     STORE "Cobro de Ventas" TO mfRa
           ENDCASE
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+.9 Say F9316TIP Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+6  Say F9316NTI Font "&mLetAri",9 Style "NT" Size 1,50 Pict "@S50"
                     @vLIN,mCLN+86 Say mFRA     Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+.9 Say F9316TIP Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+6  Say F9316NTI Font "&mLetSwi",9 Style "NT" Size 1,50 Pict "@S50"
                     @vLIN,mCLN+86 Say mFRA     Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9316a
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
 Define Popup vTB1 from mFI0-15.5,mCO0+28 to mFI0+29,mCO0+mUCO+34 Font "&mLetCou",13 Style "NQ" Prompt Field F9316NTI+" : "+F9316TIP Scroll Color Scheme 10 Footer "TIPOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Ingresos a Bancos"
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
 @ mfI0+00.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+00.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+2 Say "CÓDIGO:"            Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+3 Say "DESCRIPCIÓN"        Font "&mLetAri",10 Style "NT"
 @mFI0+05.5,mCO0+3 Say "TIPO DE MOVIMIENTO" Font "&mLetAri",10 Style "NT"
 @mFI0+10.5,mCO0+4 Say "CUENTA DEBE"        Font "&mLetAri",10 Style "NT"
 @mFI0+12.5,mCO0+4 Say "CUENTA HABER"       Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+00.4,mCO0+20 Get  vTIP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+03.5,mCO0+31 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+05.5,mCO0+31 Get  vOPC Font "&mLetAri",9  Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
 @mFI0+10.5,mCO0+31 Edit vCTD Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+12.5,mCO0+31 Edit vCTH Font "&mLetAri",9  Style "NQ" Size 1,20,12
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9316a
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
      CASE mfIl>=mfI0+5.678 .AND. mfIl<=mfI0+6.535 .AND. voPc<>1 .AND.  ;
           mcCc>=mcO0+31 .AND. mcCc<=mcO0+46.6 .AND. viTe>1
           STORE 01 TO voPc
           @mFI0+5.5,mCO0+31 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.535 .AND. mfIl<=mfI0+7.607 .AND. voPc<>2 .AND.  ;
           mcCc>=mcO0+31 .AND. mcCc<=mcO0+53.2 .AND. viTe>1
           STORE 02 TO voPc
           @mFI0+5.5,mCO0+31 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.678 .AND. voPc<>3 .AND.  ;
           mcCc>=mcO0+31 .AND. mcCc<=mcO0+62.8 .AND. viTe>1
           STORE 03 TO voPc
           @mFI0+5.5,mCO0+31 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.678 .AND. mfIl<=mfI0+9.75 .AND. voPc<>4 .AND.  ;
           mcCc>=mcO0+31 .AND. mcCc<=mcO0+53.4 .AND. viTe>1
           STORE 04 TO voPc
           @mFI0+5.5,mCO0+31 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT &vTB2[1];&vTB2[2];&vTB2[3];&vTB2[4]"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.4
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+4 .AND. mcCc<=mcO0+105
           STORE 02 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9316a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Tipos de Ingresos a Bancos que figurarán en el"
 @ pfIl+2, 3 SAY  ;
   "Sistema. Se pueden crear Tipos de Ingresos a Bancos del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Tipos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtIp, ctIp, vnTi, voPc, vtB1, vtB2, vlIn, vpAg,  ;
         vfBi, vcBi
 RELEASE caNo, cmEs, csEr, cnUm, vcTd, vcTh
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
