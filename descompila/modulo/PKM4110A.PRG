 SET CENTURY ON
 STORE 1 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "4110", "K"
 Use &mDBF Shared Alias Amarres
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET ORDER TO F4110COD
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, vcT1, ccT1, vgL1, vcT2, vgL2, vtB1, vtB2, vfB1, vfB2,  ;
        vfB3, vcB1
 PUBLIC vcB2, vcB3
 STORE 99 TO mkEy
 STORE "000.000" TO vcT1, vcT2
 STORE SPACE(07) TO ccT1
 STORE SPACE(70) TO vgL1, vgL2
 STORE 00 TO viT1
 STORE 01 TO viTe
 SELECT amArres
 SET READBORDER ON
 DO p00_4110a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4110a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4110a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT amArres
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Amarres de Cuentas registrados..." TO mmSj
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
                DO veR_lock
                STORE 01 TO meRr
                SET ORDER TO F4110NOM
                STORE 00 TO meRr
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                STORE 01 TO meRr
                SET ORDER TO F4110COD
                STORE 00 TO meRr
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f4110cod TO vcOd
                     @mFI0+0.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4110a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4110a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=02
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=01
                STORE "No hay más campos arriba..." TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT amArres
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc="S"
                               DO deL_4110a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del
                SELECT amArres
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO CASE
                               CASE f4110est="1"
                                    DO prE_docum WITH  ;
                                       "¿Desea anular este Registro?"
                               CASE f4110est="9"
                                    DO prE_docum WITH  ;
                                       "¿Desea activar este Registro?"
                          ENDCASE
                          IF moPc="S"
                               DO anU_4110a
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
                DO veR_lock
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4110cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4110a
                          DO diS_4110a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4110cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4110a
                          DO diS_4110a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ELSE
                     IF f4110cod=vcOd
                          SKIP
                          DO veR_lock
                          IF EOF()
                               GOTO BOTTOM
                               DO veR_lock
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4110cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4110a
                          DO diS_4110a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4110cod>=vcOd
                     SKIP -1
                     DO veR_lock
                     IF BOF() .OR. EOF()
                          GOTO TOP
                          DO veR_lock
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4110cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4110a
                          DO diS_4110a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down
                DO veR_4110a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=2
                               DO grA_4110a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                               STORE 01 TO viTe
                               STORE 00 TO viT1
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                DO veR_4110a
                IF mkEy<>99
                     STORE 02 TO viTe
                ENDIF
           CASE mkEy=k_Tab
                DO veR_4110a
                IF mkEy<>99 .AND. viTe<02
                     STORE 02 TO viTe
                     DO veR_4110a
                ENDIF
                IF mkEy<>99
                     DO grA_4110a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO viTe, viT1
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK ALLTRIM(vcOd)+"*"
           DO veR_lock
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>01 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(104) Font "&mLetRom",9 Style "BQ" Size 1,104
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+15 Say "ES DE 6 DÍGITOS, NO PUEDE SER 000.000, NI TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+14 Say "ES DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."         Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=01
                @mFI0+0.3,mCO0+19 Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999" Color ,&mColBlN
           CASE viTe=02
                @mFI0+3.0,mCO0+13 Edit vGLO Font "&mLetAri",9  Style "NQ" Size 1,90,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_4110a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=01 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código de Cuenta Contable no puede estar vacío..." TO mmSj
      CASE viTe=01 .AND. vcOd="000.000"
           STORE "Código de Cuenta Contable no puede ser 000.000..." TO mmSj
      CASE viTe=01 .AND. AT("..", vcOd)<>0
           STORE "Código de Cuenta Contable errado...              " TO mmSj
      CASE viTe=1
           SELECT amArres
           STORE ALLTRIM(vcOd) TO vcOd
           STORE SPACE(100) TO mmSj
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=7 .AND. AT(" ", vcOd)<>0
                     STORE "Código de Cuenta Contable errado..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=6 .AND. AT(" ", vcOd)<>0
                     STORE "Código de Cuenta Contable errado..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=5 .AND. AT(" ", vcOd)<>0
                     STORE "Código de Cuenta Contable errado..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=4 .AND. AT(" ", vcOd)<>0
                     DO CASE
                          CASE SUBSTR(vcOd, 2, 3)="  ."
                               STORE SUBSTR(vcOd, 1, 1)+"      " TO vcOd
                          CASE SUBSTR(vcOd, 3, 2)=" ."
                               STORE SUBSTR(vcOd, 1, 2)+"     " TO vcOd
                     ENDCASE
                CASE LEN(ALLTRIM(vcOd))=3 .AND. AT(" ", vcOd)<>0
                     STORE "Código de Cuenta Contable errado..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=2 .AND. AT(" ", vcOd)<>0
                     STORE "Código de Cuenta Contable errado..." TO mmSj
                CASE LEN(ALLTRIM(vcOd))=1
                     STORE "Código de Cuenta Contable errado..." TO mmSj
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0
                SEEK ALLTRIM(vcOd)+"*"
                DO veR_lock
                IF EOF()
                     DO coL_fondo
                     @mFI0+.4,mCO0+mUCO-13 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                     STORE 01 TO vtIp, vsAl, vrEs, viOm
                     STORE 02 TO voRd, vcCo
                     STORE "1" TO veSt
                     STORE SPACE(70) TO vgLo
                ELSE
                     DO muE_4110a
                ENDIF
                DO diS_4110a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vgLo))=0
           STORE "Glosa no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4110a
 SELECT amArres
 DO coL_fondo
 IF f4110est="9"
      @mFI0+.4,mCO0+mUCO-13 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      @mFI0+.4,mCO0+mUCO-13 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 STORE f4110cod TO vcOd
 STORE f4110glo TO vgLo
 STORE f4110tip TO vtIp
 STORE f4110sal TO vsAl
 STORE f4110res TO vrEs
 STORE f4110ord TO voRd
 STORE f4110cco TO vcCo
 STORE f4110est TO veSt
 STORE 02 TO viOm
ENDPROC
*
PROCEDURE Dis_4110a
 DO coLbln
 @mFI0+00.3,mCO0+19 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.2 Pict "999.999"
 @mFI0+03.0,mCO0+13 Say vGLO Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 @mFI0+06.0,mCO0+26 Get vTIP Font "&mLetAri",10 Style "NQ" Function "*RHT Activo;Pasivo;Patrimonio;Ninguno" Default vTIP Size 1,15
 @mFI0+07.5,mCO0+26 Get vSAL Font "&mLetAri",10 Style "NQ" Function "*RHT Deudor;Acreedor;Ambos;Ninguno"    Default vSAL Size 1,15
 @mFI0+09.0,mCO0+26 Get vRES Font "&mLetAri",10 Style "NQ" Function "*RHT Naturaleza;Función;Ambos;Ninguno" Default vRES Size 1,15
 @mFI0+10.5,mCO0+26 Get vORD Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No"                            Default vORD Size 1,15
 @mFI0+12.0,mCO0+26 Get vCCO Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No"                            Default vCCO Size 1,15
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Gra_4110a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT amArres
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      DO nuEvo_rg
      REPLACE f4110cod WITH vcOd
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f4110glo WITH vgLo
 REPLACE f4110tip WITH vtIp
 REPLACE f4110sal WITH vsAl
 REPLACE f4110res WITH vrEs
 REPLACE f4110ord WITH voRd
 REPLACE f4110cco WITH vcCo
 REPLACE f4110est WITH "1"
 REPLACE f4110usu WITH muSu
 REPLACE f4110dat WITH DATE()
 REPLACE f4110tim WITH TIME()
 UNLOCK ALL
 FLUSH
 SELECT amArres
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4110a
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE "Código de Cuenta Contable no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO grAbar WITH "2"
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. RLOCK()
      DO reG_lock WITH ALLTRIM(vcOd)+"*"
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f4110cod WITH SPACE(04)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Anu_4110a
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE "Código de Cuenta Contable no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO CASE
      CASE veSt="1"
           DO grAbar WITH "4"
      CASE veSt="9"
           DO grAbar WITH "6"
 ENDCASE
 IF  .NOT. RLOCK()
      DO reG_lock WITH ALLTRIM(vcOd)+"*"
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 DO CASE
      CASE veSt="1"
           REPLACE f4110est WITH "9"
      CASE veSt="9"
           REPLACE f4110est WITH "1"
 ENDCASE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE P00_4110a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE 07 TO muFi
 STORE 115 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.4 TO mfI0
 IF mrEs>"1"
      STORE mfI0-1 TO mfI0
 ENDIF
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+0.5 TO mmC2
 STORE mfI0+muFi+1.1 TO mmF2
 IF mrEs>"1"
      STORE mmF2+1 TO mmF2
 ENDIF
 STORE mfI0+0.55 TO vfB1, vfB2
 STORE mfI0+3.65 TO vfB3
 STORE mcO0+33.5 TO vcB1
 STORE mcO0+37.5 TO vcB2
 STORE mcO0+38.8 TO vcB3
 DO CASE
      CASE mrEs="1"
           Define Popup vTB1 from mFI0-10,mCO0+42 to mFI0+mUFI+11,mCO0+mUCO+4 Font "&mLetAri",9 Style "NQ" Prompt Field F4110CT1+": "+F4110GL1 Scroll Color Scheme 3 Footer "CONSULTA DE CUENTAS CONTABLES DE ORIGEN"
           Define Popup vTB2 from mFI0-10,mCO0+42 to mFI0+mUFI+11,mCO0+mUCO+4 Font "&mLetAri",9 Style "NQ" Prompt Field F4100COD+": "+F4100GLO Scroll Color Scheme 3 Footer "CONSULTA DE CUENTAS CONTABLES"
      OTHERWISE
           Define Popup vTB1 from mFI0-12,mCO0+42 to mFI0+mUFI+14,mCO0+mUCO+10 Font "&mLetAri",11 Style "NQ" Prompt Field F4110CT1+": "+F4110GL1 Scroll Color Scheme 3 Footer "CONSULTA DE CUENTAS CONTABLES DE ORIGEN"
           Define Popup vTB2 from mFI0-12,mCO0+42 to mFI0+mUFI+14,mCO0+mUCO+10 Font "&mLetAri",11 Style "NQ" Prompt Field F4100COD+": "+F4100GLO Scroll Color Scheme 3 Footer "CONSULTA DE CUENTAS CONTABLES"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Mantenimiento de Amarres de Cuentas"
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
 DO coLsc3
 @ mfI0+0.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR RGB(255, ;
   255,255,139,125,124)
 @ mfI0+0.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.4,mCO0+02 Say "Cuenta Origen: "    Font "&mLetRom",12 Style "BQ" Color Scheme 4
 @mFI0+3.5,mCO0+02 Say "Cuenta que genera:" Font "&mLetRom",12 Style "BQ"
 @mFI0+0.5,mCO0+44 Edit vGL1                Font "&mLetAri",9  Style "NQ" Size 1,68,70 Color Scheme 4
 @mFI0+3.7,mCO0+44 Edit vGL2                Font "&mLetAri",9  Style "NQ" Size 1,68,70
 DO coLbln
 @mFI0+0.5,mCO0+24 Get  vCT1                Font "&mLetRom",10 Style "BQ" Size 1,7.4 Pict "999.999" Color ,&mColBlN
 @mFI0+3.7,mCO0+30 Get  vCT2                Font "&mLetRom",10 Style "NQ" Size 1,7.5 Pict "999.999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU1", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_4110a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>01
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi-0.05 .AND. mfIl<=vfBi+1.521 .AND. mcCc>=vcBi-0.30  ;
           .AND. mcCc<=vcBi+3.9
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+0.107 .AND. mfIl<=mfI0+1.964 .AND. viTe<>01 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+36
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.964 .AND. mfIl<=mfI0+4.107 .AND. viTe<>02 .AND.  ;
           mcCc>=mcO0+1.8 .AND. mcCc<=mcO0+103.2
           IF viTe=01
                DO veR_4110a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.178 .AND. mfIl<=mfI0+7.107 .AND. vtIp<>1 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+36.6 .AND. viTe>1
           STORE 1 TO vtIp
           @mFI0+6,mCO0+26 Get vTIP Font "&mLetAri",10 Style "NQ" Function "*RHT Activo;Pasivo;Patrimonio;Ninguno" Default vTIP Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+6.178 .AND. mfIl<=mfI0+7.107 .AND. vtIp<>2 .AND.  ;
           mcCc>=mcO0+45 .AND. mcCc<=mcO0+56.4 .AND. viTe>1
           STORE 2 TO vtIp
           @mFI0+6,mCO0+26 Get vTIP Font "&mLetAri",10 Style "NQ" Function "*RHT Activo;Pasivo;Patrimonio;Ninguno" Default vTIP Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+6.178 .AND. mfIl<=mfI0+7.107 .AND. vtIp<>3 .AND.  ;
           mcCc>=mcO0+64.4 .AND. mcCc<=mcO0+80.4 .AND. viTe>1
           STORE 3 TO vtIp
           @mFI0+6,mCO0+26 Get vTIP Font "&mLetAri",10 Style "NQ" Function "*RHT Activo;Pasivo;Patrimonio;Ninguno" Default vTIP Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+6.178 .AND. mfIl<=mfI0+7.107 .AND. vtIp<>4 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+96.6 .AND. viTe>1
           STORE 4 TO vtIp
           @mFI0+6,mCO0+26 Get vTIP Font "&mLetAri",10 Style "NQ" Function "*RHT Activo;Pasivo;Patrimonio;Ninguno" Default vTIP Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.535 .AND. vsAl<>1 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+38 .AND. viTe>1
           STORE 1 TO vsAl
           @mFI0+7.5,mCO0+26 Get vSAL Font "&mLetAri",10 Style "NQ" Function "*RHT Deudor;Acreedor;Ambos;Ninguno" Default vSAL Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.535 .AND. vsAl<>2 .AND.  ;
           mcCc>=mcO0+45 .AND. mcCc<=mcO0+59.4 .AND. viTe>1
           STORE 2 TO vsAl
           @mFI0+7.5,mCO0+26 Get vSAL Font "&mLetAri",10 Style "NQ" Function "*RHT Deudor;Acreedor;Ambos;Ninguno" Default vSAL Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.535 .AND. vsAl<>3 .AND.  ;
           mcCc>=mcO0+64.4 .AND. mcCc<=mcO0+76.4 .AND. viTe>1
           STORE 3 TO vsAl
           @mFI0+7.5,mCO0+26 Get vSAL Font "&mLetAri",10 Style "NQ" Function "*RHT Deudor;Acreedor;Ambos;Ninguno" Default vSAL Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.607 .AND. mfIl<=mfI0+8.535 .AND. vsAl<>4 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+96.6 .AND. viTe>1
           STORE 4 TO vsAl
           @mFI0+7.5,mCO0+26 Get vSAL Font "&mLetAri",10 Style "NQ" Function "*RHT Deudor;Acreedor;Ambos;Ninguno" Default vSAL Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.035 .AND. mfIl<=mfI0+9.964 .AND. vrEs<>1 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+42 .AND. viTe>1
           STORE 1 TO vrEs
           @mFI0+9,mCO0+26 Get vRES Font "&mLetAri",10 Style "NQ" Function "*RHT Naturaleza;Función;Ambos;Ninguno" Default vRES Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.035 .AND. mfIl<=mfI0+9.964 .AND. vrEs<>2 .AND.  ;
           mcCc>=mcO0+45 .AND. mcCc<=mcO0+58 .AND. viTe>1
           STORE 2 TO vrEs
           @mFI0+9,mCO0+26 Get vRES Font "&mLetAri",10 Style "NQ" Function "*RHT Naturaleza;Función;Ambos;Ninguno" Default vRES Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.035 .AND. mfIl<=mfI0+9.964 .AND. vrEs<>3 .AND.  ;
           mcCc>=mcO0+64.4 .AND. mcCc<=mcO0+76.4 .AND. viTe>1
           STORE 3 TO vrEs
           @mFI0+9,mCO0+26 Get vRES Font "&mLetAri",10 Style "NQ" Function "*RHT Naturaleza;Función;Ambos;Ninguno" Default vRES Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.035 .AND. mfIl<=mfI0+9.964 .AND. vrEs<>4 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+96.6 .AND. viTe>1
           STORE 4 TO vrEs
           @mFI0+9,mCO0+26 Get vRES Font "&mLetAri",10 Style "NQ" Function "*RHT Naturaleza;Función;Ambos;Ninguno" Default vRES Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+10.535 .AND. mfIl<=mfI0+11.607 .AND. voRd<>1 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+32.4 .AND. viTe>1
           STORE 1 TO voRd
           @mFI0+10.5,mCO0+26 Get vORD Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No" Default vORD Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+10.535 .AND. mfIl<=mfI0+11.607 .AND. voRd<>2 .AND.  ;
           mcCc>=mcO0+45 .AND. mcCc<=mcO0+52.4 .AND. viTe>1
           STORE 2 TO voRd
           @mFI0+10.5,mCO0+26 Get vORD Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No" Default vORD Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+12.107 .AND. mfIl<=mfI0+13.035 .AND. vcCo<>1 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+32.4 .AND. viTe>1
           STORE 1 TO vcCo
           @mFI0+12,mCO0+26 Get vCCO Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No" Default vCCO Size 1,15
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+12.107 .AND. mfIl<=mfI0+13.035 .AND. vcCo<>2 .AND.  ;
           mcCc>=mcO0+45 .AND. mcCc<=mcO0+52.4 .AND. viTe>1
           STORE 2 TO vcCo
           @mFI0+12,mCO0+26 Get vCCO Font "&mLetAri",10 Style "NQ" Function "*RHT Si;No" Default vCCO Size 1,15
           READ TIMEOUT 0.01
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4110a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 1.000 SAY  ;
   "Este Mantenimiento,  es un programa en donde se pueden crear, modificar, "
 @ 1.200, 1.000 SAY  ;
   "anular y/o eliminar las Cuenta Contables que figurarán en el Sistema. Los"
 @ 2.200, 1.000 SAY  ;
   "códigos de Cuenta Contables son alfanuméricos, es decir, pueden tener"
 @ 3.200, 1.000 SAY "letras y números."
 @ 5.200, 1.000 SAY "Las teclas para movilizarse son:"
 @ 7.200, 23.200 SAY ":" STYLE "BT"
 @ 8.200, 23.200 SAY ":" STYLE "BT"
 @ 9.200, 23.200 SAY ":" STYLE "BT"
 @ 10.200, 23.200 SAY ":" STYLE "BT"
 @ 11.200, 23.200 SAY ":" STYLE "BT"
 @ 12.200, 23.200 SAY ":" STYLE "BT"
 @ 13.200, 23.200 SAY ":" STYLE "BT"
 @ 14.200, 23.200 SAY ":" STYLE "BT"
 @ 15.200, 23.200 SAY ":" STYLE "BT"
 @ 16.200, 23.200 SAY ":" STYLE "BT"
 @ 17.200, 23.200 SAY ":" STYLE "BT"
 @ 18.200, 23.200 SAY ":" STYLE "BT"
 @ 7.200, 6.000 SAY "ESC" STYLE "BT"
 @ 8.200, 6.000 SAY "F10" STYLE "BT"
 @ 9.200, 6.000 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=1
           @ 10.200, 6.000 SAY "F2" STYLE "BT"
           @ 11.200, 6.000 SAY "F5" STYLE "BT"
           @ 12.200, 6.000 SAY "F6" STYLE "BT"
           @ 13.200, 6.000 SAY "F7" STYLE "BT"
           @ 14.200, 6.000 SAY "F8" STYLE "BT"
           @ 15.200, 6.000 SAY "ENTER" STYLE "BT"
           @ 16.200, 6.000 SAY "CTRL ->" STYLE "BT"
           @ 17.200, 6.000 SAY "FLECHA ABAJO" STYLE "BT"
           @ 18.200, 6.000 SAY "ALT DEL" STYLE "BT"
      OTHERWISE
           @ 19.200, 23.200 SAY ":" STYLE "BT"
           @ 20.200, 23.200 SAY ":" STYLE "BT"
           @ 21.200, 23.200 SAY ":" STYLE "BT"
           @ 22.200, 23.200 SAY ":" STYLE "BT"
           @ 23.200, 23.200 SAY ":" STYLE "BT"
           @ 10.200, 6.000 SAY "F5" STYLE "BT"
           @ 11.200, 6.000 SAY "F6" STYLE "BT"
           @ 12.200, 6.000 SAY "F7" STYLE "BT"
           @ 13.200, 6.000 SAY "F8" STYLE "BT"
           @ 14.200, 6.000 SAY "ENTER" STYLE "BT"
           @ 15.200, 6.000 SAY "FLECHA ABAJO" STYLE "BT"
           @ 16.200, 6.000 SAY "FLECHA ARRIBA" STYLE "BT"
           @ 17.200, 6.000 SAY "CTRL ->" STYLE "BT"
           @ 18.200, 6.000 SAY "<- CTRL" STYLE "BT"
           @ 19.200, 6.000 SAY "CTRL HOME" STYLE "BT"
           @ 20.200, 6.000 SAY "CTRL END" STYLE "BT"
           @ 21.200, 6.000 SAY "CTRL DEL" STYLE "BT"
           @ 22.200, 6.000 SAY "ALT DEL" STYLE "BT"
           @ 23.200, 6.000 SAY "TAB" STYLE "BT"
 ENDCASE
 @ 8.200, 25.200 SAY "Cerrar y regresar a Windows"
 @ 9.200, 25.200 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ 7.200, 25.200 SAY "Regresar al Menú Principal"
           @ 10.200, 25.200 SAY  ;
             "Consulta alfabética de Cuentas Contables registrados"
           @ 11.200, 25.200 SAY "Primer Código de Cuenta"
           @ 12.200, 25.200 SAY "Último Código de Cuenta"
           @ 13.200, 25.200 SAY "Código de Cuenta posterior al actual"
           @ 14.200, 25.200 SAY "Código de Cuenta anterior al actual"
           @ 15.200, 25.200 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ 16.200, 25.200 SAY  ;
             "Ir al campo derecho, llegando al final se graba"
           @ 17.200, 25.200 SAY  ;
             "Ir al campo inferior, llegando al final se graba"
           @ 18.200, 25.200 SAY "Activar Cuenta anulado"
      OTHERWISE
           @ 7.200, 25.200 SAY "Regresar al primer campo"
           @ 10.200, 25.200 SAY "Primer Código de Cuenta"
           @ 11.200, 25.200 SAY "Último Código de Cuenta"
           @ 12.200, 25.200 SAY "Código de Cuenta posterior al actual"
           @ 13.200, 25.200 SAY "Código de Cuenta anterior al actual"
           @ 14.200, 25.200 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ 15.200, 25.200 SAY  ;
             "Ir al campo inferior, llegando al final se graba"
           @ 16.200, 25.200 SAY "Ir al campo superior"
           @ 17.200, 25.200 SAY  ;
             "Ir al campo derecho, llegando al final se graba"
           @ 18.200, 25.200 SAY "Ir al campo izquierdo"
           @ 19.200, 25.200 SAY "Ir al primer campo"
           @ 20.200, 25.200 SAY "Ir al último campo"
           @ 21.200, 25.200 SAY "Eliminar definitivamente un código"
           @ 22.200, 25.200 SAY "Anular Cuenta activo"
           @ 23.200, 25.200 SAY "Grabar Datos"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 SET READBORDER OFF
 RELEASE viTe, viT1, vcOd, vgLo, cgLo, vtIp, vsAl, vrEs, voRd, vcCo, veSt,  ;
         vtB1, vfBi
 RELEASE vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
