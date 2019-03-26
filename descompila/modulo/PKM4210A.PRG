 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "4210", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Conceptos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4210COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vtB1, vcOd, ccOd, vdEs, vdCr, vtIp, vaFp, vpOr,  ;
        vfBi, vcBi
 STORE 00 TO viT1, vpOr
 STORE 01 TO viTe, vtIp, vaFp
 STORE SPACE(04) TO vcOd, ccOd
 STORE SPACE(50) TO vdEs
 STORE SPACE(25) TO vdCr
 STORE 13 TO muFi
 STORE 120 TO muCo
 SET READBORDER ON
 DO p00_4210a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4210a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4210a
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
                DO veR_lock
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
                DO veR_lock
                STORE 99 TO mkEy
                DO orD_0000a WITH "4210", "K", "F4210DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "4210", "K", "F4210COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f4210cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4210a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4210a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                DO veR_lock
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "4210", "K", "F4210DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO veR_lock
                     DO q1_0000a
                     DO imP_4210a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "4210", "K", "F4210COD", "A"
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
           CASE mkEy=k_Up .AND. viTe=01
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                DO veR_lock
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_4210a
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
                     CASE f4210cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4210a
                          DO diS_4210a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4210cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4210a
                          DO diS_4210a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
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
                     IF vcOd=f4210cod
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
                     CASE f4210cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4210a
                          DO diS_4210a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4210cod>=vcOd
                     SKIP -1
                     DO veR_lock
                     IF BOF()
                          GOTO TOP
                          DO veR_lock
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4210cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4210a
                          DO diS_4210a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_4210a
                IF mkEy<>99
                     IF viTe=4
                          DO grA_4210a
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
                     DO veR_4210a
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
                     DO veR_4210a
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
                     DO grA_4210a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO veR_lock
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
                     @mMF2,mMC2+12 Say "PONER UN CÓDIGO DE CONCEPTO PARA BOLETAS DE PAGO, ES DE 4 DÍGITOS..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+11 Say "LA DESCRIPCIÓN ES DE 50 CARACTERES ALFANUMÉRICOS NO PUEDE ESTAR VACÍA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+16 Say "LA DESCRIPCIÓN ABREVIADA ES DE 25 CARACTERES ALFANUMÉRICOS..."            Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+22 Say "ESTE SE USA EN LAS BOLETAS. SI NO SE USA DEBE SER 0..."                   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+28 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.5,mCO0+28 Edit vDCR Font "&mLetAri",9  Style "NQ" Size 1,35,25
           CASE viTe=4
                @mFI0+11.5,mCO0+28 Get vPOR Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_4210a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vcOd="0000"
           STORE "Código no puede ser 0000...             " TO mmSj
      CASE viTe=1
           SEEK vcOd
           DO veR_lock
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE 01 TO vtIp, vaFp
                STORE 00 TO vpOr
                STORE SPACE(50) TO vdEs
                STORE SPACE(25) TO vdCr
           ELSE
                DO muE_4210a
           ENDIF
           IF vcOd<>ccOd
                DO diS_4210a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4210a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f4210cod TO vcOd
 STORE f4210des TO vdEs
 STORE f4210dcr TO vdCr
 STORE f4210tip TO vtIp
 STORE f4210afp TO vaFp
 STORE f4210por TO vpOr
ENDPROC
*
PROCEDURE Dis_4210a
 DO coLbln
 @mFI0+00.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!"
 @mFI0+03.5,mCO0+28 Say vDES Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50"
 @mFI0+05.5,mCO0+28 Say vDCR Font "&mLetAri",9  Style "NQ" Size 1,35  Pict "@S25"
 @mFI0+07.5,mCO0+28 Get vTIP Font "&mLetAri",9  Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
 @mFI0+09.5,mCO0+28 Get vAFP Font "&mLetAri",9  Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comision;\<Otro %" Default vAFP Size 1,18.5,.8
 @mFI0+11.5,mCO0+28 Say vPOR Font "&mLetAri",9  Style "NQ" Size 1,7    Pict "99.99"
 READ TIMEOUT 0.01
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_4210a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f4210cod WITH vcOd
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
 ENDIF
 IF f4210des<>vdEs .OR. f4210dcr<>vdCr .OR. f4210tip<>vtIp .OR. f4210afp<> ;
    vaFp .OR. f4210por<>vpOr
      REPLACE f4210des WITH vdEs
      REPLACE f4210dcr WITH vdCr
      REPLACE f4210tip WITH vtIp
      REPLACE f4210afp WITH vaFp
      REPLACE f4210por WITH vpOr
      REPLACE f4210usu WITH muSu
      REPLACE f4210dat WITH DATE()
      REPLACE f4210tim WITH TIME()
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4210a
 SEEK vcOd
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f4210cod WITH SPACE(04)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_4210a
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
 DO reP_4210a
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_4210a
 PRIVATE ptAm
 DO CASE
      CASE mvIs=0
           STORE 22 TO mcLn
           STORE 79 TO ptAm
      CASE mvIs=1
           STORE 79 TO ptAm
           DO npG_0000a
 ENDCASE
 STORE 00 TO vlIn, vpAg
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
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
           DO cb1_0000a WITH "Conceptos", "PKM4210A"
           STORE vlIn+3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN   Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+9 Say "Descripción" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="1"
                          @vLIN,mCLN   Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+9 Say "Descripción" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN   Say "Cód"         Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+9 Say "Descripción" Font "&mLetAri",9 Style "NT"
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
                CASE mvIs=1
                     @vLIN,mCLN+.9  Say F4210COD Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+9   Say F4210DES Font "&mLetAri",9 Style "NQ"
                CASE mpRt="1"
                     @vLIN,mCLN+.9  Say F4210COD Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+9   Say F4210DES Font "&mLetAri",9 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN+.9  Say F4210COD Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+9   Say F4210DES Font "&mLetSwi",9 Style "NQ"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_4210a
 PARAMETER ptPo
 PRIVATE ptAm, pfIn, pfFi, puCl
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+2 TO mmF2
 STORE mfI0+0.4 TO vfBi
 STORE mcO0+27 TO vcBi
 STORE 00 TO viT1
 IF mrEs>"1"
      STORE mmF2+1 TO mmF2
      DO CASE
           CASE mrEs="2"
                STORE 11 TO ptAm
                STORE 08 TO pfIn
                STORE 12 TO pfFi
                STORE 10 TO puCl
           CASE mrEs="3"
                STORE 12 TO ptAm
                STORE 11 TO pfIn
                STORE 15 TO pfFi
                STORE 15 TO puCl
           CASE mrEs="4"
                STORE 13 TO ptAm
                STORE 08 TO pfIn
                STORE 12 TO pfFi
                STORE 45 TO puCl
           CASE mrEs="5"
                STORE 14 TO ptAm
                STORE 12 TO pfIn
                STORE 14 TO pfFi
                STORE 45 TO puCl
      ENDCASE
 ELSE
      STORE 10 TO ptAm
      STORE 04 TO pfIn
      STORE 08 TO pfFi
      STORE 02 TO puCl
 ENDIF
 Define Popup vTB1 from mFI0-pFIN,mCO0+30.5 to mFI0+mUFI+pFFI,mCO0+mUCO+pUCL Font "&mLetCou",pTAM Style "NQU" Prompt Field Substr(F4210DES,1,46)+" : "+F4210COD Scroll Color ,RGB(0,0,0,155,117,179) Footer "CONCEPTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Conceptos"
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
 @ mfI0+00.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+00.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+02 Say "CÓDIGO:"               Font "&mLetRom",13 Style "BT"
 IF mrEs="1"
      @mFI0+03.5,mCO0+10 Say "DESCRIPCIÓN"           Font "&mLetAri",9 Style "NT"
      @mFI0+05.5,mCO0+01 Say "Descripción Abreviada" Font "&mLetAri",9 Style "NT"
      @mFI0+07.5,mCO0+01 Say "Tipo"                  Font "&mLetAri",9 Style "NT"
      @mFI0+09.5,mCO0+01 Say "Concepto de AFP"       Font "&mLetAri",9 Style "NT"
      @mFI0+11.5,mCO0+01 Say "Porcentaje fijo"       Font "&mLetAri",9 Style "NT"
 ELSE
      @mFI0+03.5,mCO0+10 Say "DESCRIPCIÓN"           Font "&mLetAri",9 Style "BT"
      @mFI0+05.5,mCO0+01 Say "Descripción Abreviada" Font "&mLetAri",9 Style "BT"
      @mFI0+07.5,mCO0+01 Say "Tipo"                  Font "&mLetAri",9 Style "BT"
      @mFI0+09.5,mCO0+01 Say "Concepto de AFP"       Font "&mLetAri",9 Style "BT"
      @mFI0+11.5,mCO0+01 Say "Porcentaje fijo"       Font "&mLetAri",9 Style "BT"
 ENDIF
 DO coLbln
 @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!!!" Color ,&mColBlN
 @mFI0+03.5,mCO0+28 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+05.5,mCO0+28 Edit vDCR Font "&mLetAri",9  Style "NQ" Size 1,35,25
 @mFI0+07.5,mCO0+28 Get  vTIP Font "&mLetAri",9  Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
 @mFI0+09.5,mCO0+28 Get  vAFP Font "&mLetAri",9  Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
 @mFI0+11.5,mCO0+28 Get  vPOR Font "&mLetAri",9  Style "NQ" Size 1,7 Pict "99.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_4210a
 = INKEY(0.01)
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
      CASE mfIl>=mfI0+7.357 .AND. mfIl<=mfI0+8.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+27.8 .AND. mcCc<=mcO0+40.8 .AND. vtIp<>1
           STORE 1 TO vtIp
           @mFI0+7.5,mCO0+28 Get vTIP Font "&mLetAri",9 Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.357 .AND. mfIl<=mfI0+8.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+47 .AND. mcCc<=mcO0+63.2 .AND. vtIp<>2
           STORE 2 TO vtIp
           @mFI0+7.5,mCO0+28 Get vTIP Font "&mLetAri",9 Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.357 .AND. mfIl<=mfI0+8.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+66.6 .AND. mcCc<=mcO0+82 .AND. vtIp<>3
           STORE 3 TO vtIp
           @mFI0+7.5,mCO0+28 Get vTIP Font "&mLetAri",9 Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.357 .AND. mfIl<=mfI0+8.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+86.4 .AND. mcCc<=mcO0+113 .AND. vtIp<>4
           STORE 4 TO vtIp
           @mFI0+7.5,mCO0+28 Get vTIP Font "&mLetAri",9 Style "NQ" Function "*RHT \<Ingreso;\<Descuento;\<Aportación;\<Otros Ingresos/Dctos" Default vTIP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.214 .AND. mfIl<=mfI0+10.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+27.8 .AND. mcCc<=mcO0+46.6 .AND. vaFp<>1
           STORE 1 TO vaFp
           @mFI0+9.5,mCO0+28 Get vAFP Font "&mLetAri",9 Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.214 .AND. mfIl<=mfI0+10.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+46.6 .AND. mcCc<=mcO0+66.2 .AND. vaFp<>2
           STORE 2 TO vaFp
           @mFI0+9.5,mCO0+28 Get vAFP Font "&mLetAri",9 Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.214 .AND. mfIl<=mfI0+10.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+66.2 .AND. mcCc<=mcO0+84.8 .AND. vaFp<>3
           STORE 3 TO vaFp
           @mFI0+9.5,mCO0+28 Get vAFP Font "&mLetAri",9 Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.214 .AND. mfIl<=mfI0+10.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+84.8 .AND. mcCc<=mcO0+106.8 .AND. vaFp<>4
           STORE 4 TO vaFp
           @mFI0+9.5,mCO0+28 Get vAFP Font "&mLetAri",9 Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.214 .AND. mfIl<=mfI0+10.571 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+106.8 .AND. mcCc<=mcO0+118.8 .AND. vaFp<>5
           STORE 5 TO vaFp
           @mFI0+9.5,mCO0+28 Get vAFP Font "&mLetAri",9 Style "NQ" Function "*RHT \<No Pertenece;% \<Obligatorio;% de \<Seguro;% de \<Comisión;\<Otro %" Default vAFP Size 1,18.5,.8
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-0.35 .AND. mfIl<=mfI0+2.107 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+32.80 .AND. viTe<>1
           STORE 01 TO viTe
      CASE mfIl>=mfI0+2.964 .AND. mfIl<=mfI0+4.107 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+93.20 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4210a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.964 .AND. mfIl<=mfI0+6.107 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+63.20 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4210a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+10.892 .AND. mfIl<=mfI0+12.178 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+35 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4210a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE 99 TO mkEy
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4210a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 2 SAY  ;
   "modificar y eliminar los Conceptos que figurarán en el Sistema. Se pue-"
 @ pfIl+2, 2 SAY "den crear Conceptos numéricas y alfanuméricas."
 STORE pfIl+4 TO pfIl
 @ pfIl, 2 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "ESC" STYLE "BT"
 @ pfIl+1, 04 SAY "F10" STYLE "BT"
 @ pfIl+2, 04 SAY "F1" STYLE "BT"
 @ pfIl+1, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 24 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl, 24 SAY "Regresar al Menú Principal"
 ELSE
      @ pfIl, 24 SAY "Regresar al primer campo"
 ENDIF
 STORE pfIl+3 TO pfIl
 IF viTe=1
      @ pfIl, 04 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 24 SAY "Consultar Conceptos registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+3, 22 SAY ":" STYLE "BT"
 @ pfIl+4, 22 SAY ":" STYLE "BT"
 @ pfIl+5, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F5" STYLE "BT"
 @ pfIl+1, 04 SAY "F6" STYLE "BT"
 @ pfIl+2, 04 SAY "F7" STYLE "BT"
 @ pfIl+3, 04 SAY "F8" STYLE "BT"
 @ pfIl+4, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 24 SAY "Primer Código"
 @ pfIl+1, 24 SAY "Último Código"
 @ pfIl+2, 24 SAY "Código posterior al actual"
 @ pfIl+3, 24 SAY "Código anterior al actual"
 @ pfIl+4, 24 SAY "Ir al siguiente campo, llegando al final Graba"
 @ pfIl+5, 24 SAY "Ir al campo inferior, llegando al final se graba"
 STORE pfIl+6 TO pfIl
 IF viTe>1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl+1, 04 SAY "TAB" STYLE "BT"
      @ pfIl+0, 24 SAY "Ir al campo superior"
      @ pfIl+1, 24 SAY "Grabar y regresar al 1er.campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 04 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 24 SAY "Ir al campo derecho, llegando al final graba"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl, 04 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 24 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 04 SAY "CTRL END" STYLE "BT"
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 24 SAY "Ir al último campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 04 SAY "CTRL P" STYLE "BT"
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 24 SAY "Imprimir Listado"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 24 SAY "Borrar registro"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, vtB1, vcOd, ccOd, vdEs, vdCr, vtIp, vaFp, vpOr,  ;
         vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
