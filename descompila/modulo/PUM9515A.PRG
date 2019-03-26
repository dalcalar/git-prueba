 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9515", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9515AFP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vaFp, caFp, vnAf, voBl, vsEg, vcOm, voTr, vtB1,  ;
        vlIn, vpAg
 PUBLIC vfBi, vcBi
 STORE SPACE(02) TO caFp
 STORE SPACE(50) TO vnAf
 STORE "00" TO vaFp
 STORE 00 TO viT1, voBl, vsEg, vcOm, voTr
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 14 TO muFi
 STORE 115 TO muCo
 SET READBORDER ON
 DO p00_9515a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9515a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9515a
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
                SEEK vaFp
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9515", "U", "F9515NAF", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9515", "U", "F9515AFP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9515afp TO vaFp
                     @mFI0+0.4,mCO0+20 Say vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9515a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9515a WITH "1"
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
                     DO orD_0000a WITH "9515", "U", "F9515NAF", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9515a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9515", "U", "F9515AFP", "A"
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
           CASE mkEy=k_Ctrl_end .AND. viTe=6
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
                     SEEK vaFp
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9515a
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
                     CASE f9515afp=vaFp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9515a
                          DO diS_9515a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9515afp=vaFp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9515a
                          DO diS_9515a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vaFp
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vaFp=f9515afp
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9515afp=vaFp
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9515a
                          DO diS_9515a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vaFp
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9515afp>=vaFp
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9515afp=vaFp
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9515a
                          DO diS_9515a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=6
                          DO grA_9515a
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
                STORE 6 TO ciTx
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
                STORE 6 TO ciTx
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
                     DO grA_9515a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vaFp
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
                CASE viTe>2
                     @mMF2,mMC2+35 Say "SI NO SE USA PUEDE SER CERO..."                                               Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+20 Get  vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+03.5,mCO0+36 Edit vNAF Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+05.5,mCO0+36 Get  vOBL Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
           CASE viTe=4
                @mFI0+07.5,mCO0+36 Get  vSEG Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+09.5,mCO0+36 Get  vCOM Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
           CASE viTe=6
                @mFI0+11.5,mCO0+36 Get  vOTR Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vaFp))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vaFp)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vaFp="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=1
           SEEK vaFp
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vnAf
                STORE 00.000 TO voBl, vsEg, vcOm, voTr
           ELSE
                DO muE_9515a
           ENDIF
           IF vaFp<>caFp
                DO diS_9515a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnAf))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9515a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9515afp TO vaFp
 STORE f9515naf TO vnAf
 STORE f9515obl TO voBl
 STORE f9515seg TO vsEg
 STORE f9515com TO vcOm
 STORE f9515otr TO voTr
ENDPROC
*
PROCEDURE Dis_9515a
 DO coLbln
 @mFI0+03.5,mCO0+36.1 Say vNAF Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+05.5,mCO0+36   Say vOBL Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "999.999"
 @mFI0+07.5,mCO0+36   Say vSEG Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "999.999"
 @mFI0+09.5,mCO0+36   Say vCOM Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "999.999"
 @mFI0+11.5,mCO0+36   Say vOTR Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "999.999"
 STORE vaFp TO caFp
ENDPROC
*
PROCEDURE Gra_9515a
 DO grAbar WITH "1"
 SEEK vaFp
 IF EOF()
      DO nuEvo_rg
      REPLACE f9515afp WITH vaFp
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vaFp
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9515naf WITH ALLTRIM(vnAf)
 REPLACE f9515obl WITH voBl
 REPLACE f9515seg WITH vsEg
 REPLACE f9515com WITH vcOm
 REPLACE f9515otr WITH voTr
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9515a
 SEEK vaFp
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaFp
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9515afp WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9515a
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
 DO reP_9515a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9515a
 PRIVATE ptAm
 STORE 28 TO mcLn
 STORE 68 TO ptAm
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
                DO cb1_0000a WITH "AFP", "PUM9515A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+066 Say "%" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+076 Say "%" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+086 Say "%" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+096 Say "%" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+053 Say "%" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+063 Say "%" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+073 Say "%" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+083 Say "%" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1.1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+063.1 Say "Aporte" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+083.3 Say "Comis"  Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+050.1 Say "Aporte" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+070.3 Say "Comis"  Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1.2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN      Say "Cód"    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+07.0 Say "Nombre" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+63.0 Say "Obliga" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+73.0 Say "Seguro" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+85.0 Say "R.A."   Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+93.7 Say "Otros"  Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN      Say "Cód"    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+07.0 Say "Nombre" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+50.0 Say "Obliga" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+60.0 Say "Seguro" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+72.0 Say "R.A."   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80.7 Say "Otros"  Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+001 Say F9515AFP Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+007 Say F9515NAF Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+069 Say F9515OBL Font "&mLetAri",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+079 Say F9515SEG Font "&mLetAri",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+089 Say F9515COM Font "&mLetAri",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+099 Say F9515OTR Font "&mLetAri",9 Style "NT" Pict "999.999" Size 1,9
                CASE mpRt="2"
                     @vLIN,mCLN+001 Say F9515AFP Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+007 Say F9515NAF Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+050 Say F9515OBL Font "&mLetSwi",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+060 Say F9515SEG Font "&mLetSwi",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+070 Say F9515COM Font "&mLetSwi",9 Style "NT" Pict "999.999" Size 1,9
                     @vLIN,mCLN+080 Say F9515OTR Font "&mLetSwi",9 Style "NT" Pict "999.999" Size 1,9
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
PROCEDURE P00_9515a
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
 DO CASE
      CASE mrEs="3"
           Define Popup vTB1 from mFI0-14,mCO0+mUCO-87 to mFI0+26,mCO0+mUCO+28 Font "&mLetCou",13 Style "NQ" Prompt Field F9515NAF+" : "+F9515AFP Scroll Color Scheme 10 Footer "CONSULTA DE AFP"
      OTHERWISE
           Define Popup vTB1 from mFI0-14,mCO0+mUCO-87 to mFI0+26,mCO0+mUCO+28 Font "&mLetCou",13 Style "NQ" Prompt Field F9515NAF+" : "+F9515AFP Scroll Color Scheme 10 Footer "CONSULTA DE AFP"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "AFP"
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
 @mFI0+0.4,mCO0+2 Say "CÓDIGO:"               Font "&mLetRom",13 Style "BQ" Color Scheme 4
 DO CASE
      CASE mrEs="3"
           @mFI0+03.5,mCO0+4 Say "NOMBRE"                Font "&mLetAri",9  Style "NT"
           @mFI0+05.5,mCO0+4 Say "% APORTE OBLIGATORIO"  Font "&mLetAri",9  Style "NT"
           @mFI0+07.5,mCO0+4 Say "% SEGURO"              Font "&mLetAri",9  Style "NT"
           @mFI0+09.5,mCO0+4 Say "% COMISIÓN SOBRE R.A." Font "&mLetAri",9  Style "NT"
           @mFI0+11.5,mCO0+4 Say "% OTROS"               Font "&mLetAri",9  Style "NT"
      OTHERWISE
           @mFI0+03.5,mCO0+4 Say "NOMBRE"                Font "&mLetAri",10 Style "NT"
           @mFI0+05.5,mCO0+4 Say "% APORTE OBLIGATORIO"  Font "&mLetAri",10 Style "NT"
           @mFI0+07.5,mCO0+4 Say "% SEGURO"              Font "&mLetAri",10 Style "NT"
           @mFI0+09.5,mCO0+4 Say "% COMISIÓN SOBRE R.A." Font "&mLetAri",10 Style "NT"
           @mFI0+11.5,mCO0+4 Say "% OTROS"               Font "&mLetAri",10 Style "NT"
 ENDCASE
 DO coLbln
 @mFI0+00.4,mCO0+20 Get  vAFP Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+03.5,mCO0+36 Edit vNAF Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+05.5,mCO0+36 Get  vOBL Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
 @mFI0+07.5,mCO0+36 Get  vSEG Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
 @mFI0+09.5,mCO0+36 Get  vCOM Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
 @mFI0+11.5,mCO0+36 Get  vOTR Font "&mLetAri",9  Style "NQ" Size 1,9 Pict "999.999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9515a
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
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.7 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+110.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.678 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+45.7
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+7.535 .AND. mfIl<=mfI0+8.607 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+45.7
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+9.464 .AND. mfIl<=mfI0+10.678 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+45.7
           STORE 05 TO ciTx
      CASE mfIl>=mfI0+11.464 .AND. mfIl<=mfI0+12.678 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+3.7 .AND. mcCc<=mcO0+45.7
           STORE 06 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9515a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 2 SAY  ;
   "modificar y eliminar los AFP que figurarán en el Sistema. Se pueden"
 @ pfIl+2, 2 SAY "crear AFP del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vaFp, caFp, vnAf, voBl, vsEg, vcOm, voTr, vtB1,  ;
         vlIn, vpAg
 RELEASE vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
