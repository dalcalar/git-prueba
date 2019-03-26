 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9220", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9220COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vdEs, vfIj, vpOr, vtOt, vcPt, vtB1,  ;
        vlIn, vpAg
 PUBLIC vfBi, vcBi
 STORE SPACE(03) TO ccOd
 STORE SPACE(50) TO vdEs, vcPt
 STORE "000" TO vcOd
 STORE 00 TO viT1, vpOr, vtOt
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 02 TO vfIj
 STORE 14 TO muFi
 STORE 117 TO muCo
 SET READBORDER ON
 DO p00_9220a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9220a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9220a
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
                SEEK vcOd
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9220", "U", "F9220DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9220", "U", "F9220COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9220cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9220a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9220a WITH "1"
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
                     DO orD_0000a WITH "9220", "U", "F9220DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9220a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9220", "U", "F9220COD", "A"
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
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9220a
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
                     CASE f9220cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9220a
                          DO diS_9220a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9220cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9220a
                          DO diS_9220a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vcOd=f9220cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9220cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9220a
                          DO diS_9220a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9220cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9220cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9220a
                          DO diS_9220a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=5
                          DO grA_9220a
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
                     DO grA_9220a
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
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
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
                     @mMF2,mMC2+15 Say "ES DE 3 DÍGITOS, NO PUEDE SER 000, NO PUEDE TENER ESPACIOS VACÍOS..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+13 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+18 Say "CAMPO DE 6 ENTEROS Y 4 DECIMALES, SI NO SE USA DEBE SER 0..."          Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+18 Say "CAMPO DE 2 ENTEROS Y 3 DECIMALES, SI NO SE USA DEBE SER 0..."          Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+10 Say "CAMPO DE 50 CARACTERES, SE PONE TOT, CODIGOS DE CONCEPTOS, SIGNOS + -" Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,3.3 Pict "999"        Color ,&mColBlN
           CASE viTe=2
                @mFI0+03.5,mCO0+37 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+07.5,mCO0+37 Get  vTOT Font "&mLetAri",9  Style "NQ" Size 1,16 Pict "999999.9999" Color ,&mColBlN
           CASE viTe=4
                @mFI0+09.5,mCO0+37 Get  vPOR Font "&mLetAri",9  Style "NQ" Size 1,9  Pict "99.999"      Color ,&mColBlN
           CASE viTe=5
                @mFI0+11.5,mCO0+37 Edit vCPT Font "&mLetAri",9  Style "NQ" Size 1,50,50
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vcOd="000"
           STORE "Código no puede ser 000...              " TO mmSj
      CASE viTe=1
           SEEK vcOd
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&LetRom",12 Style "BQ" Size 1,10 Color Scheme 4
                STORE SPACE(50) TO vdEs, vcPt
                STORE 0 TO vpOr, vtOt
                STORE 2 TO vfIj
           ELSE
                DO muE_9220a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9220a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE viTe=4 .AND. vpOr<>0 .AND. vtOt<>0
           STORE "Porcentaje y monto no pueden estar llenos al mismo tiempo..."  ;
                 TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(vcPt))<>0 .AND. vtOt<>0
           STORE "Este campo solo se llena cuando el porcentaje es diferente de 0..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9220a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&LetRom",12 Style "BQ" Size 1,10 Color Scheme 4
 STORE f9220cod TO vcOd
 STORE f9220des TO vdEs
 STORE f9220fij TO vfIj
 STORE f9220por TO vpOr
 STORE f9220tot TO vtOt
 STORE f9220cpt TO vcPt
ENDPROC
*
PROCEDURE Dis_9220a
 DO coLbln
 @mFI0+03.5,mCO0+37 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+07.5,mCO0+37 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "999999.9999"
 @mFI0+09.5,mCO0+37 Say vPOR Font "&mLetAri",9 Style "NQ" Size 1,09.0 Pict "99.999"
 @mFI0+11.5,mCO0+37 Say vCPT Font "&mLetAri",9 Style "NQ" Size 1,50.0 Pict "@S50"
 @mFI0+05.5,mCO0+37 Get vFIJ Font "&mLetAri",9 Style "NQ" Function "*RHT Fijo;Variable" Default vFIJ
 READ TIMEOUT 0.01
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9220a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9220cod WITH vcOd
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
 REPLACE f9220des WITH ALLTRIM(vdEs)
 REPLACE f9220cpt WITH ALLTRIM(vcPt)
 REPLACE f9220fij WITH vfIj
 REPLACE f9220por WITH vpOr
 REPLACE f9220tot WITH vtOt
 REPLACE f9220usu WITH muSu
 REPLACE f9220dat WITH DATE()
 REPLACE f9220tim WITH TIME()
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9220a
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
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9220cod WITH SPACE(03)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9220a
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
 DO reP_9220a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9220a
 PRIVATE ptAm
 STORE 10 TO mcLn
 STORE 96 TO ptAm
 STORE 00 TO vlIn, vpAg
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
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
                DO cb1_0000a WITH "Conceptos de Importación", "PUM9220A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Cód"                  Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+6  Say "Descripción"          Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+41 Say "Tipo"                 Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+51 Say "Monto US$"            Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+69 Say "%"                    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+75 Say "Conceptos Vinculados" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Cód"                  Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+6  Say "Descripción"          Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+41 Say "Tipo"                 Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+49 Say "Monto US$"            Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+65 Say "%"                    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+72 Say "Conceptos Vinculados" Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN     Say F9220COD      Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+5.5 Say F9220DES      Font "&mLetAri",9 Style "NT" Size 1,34 Pict "@S36"
                     DO CASE
                          CASE f9220fij=1
                               @vLIN,mCLN+41 Say "Fijo" Font "&mLetAri",9 Style "NT" Size 1,4
                          CASE f9220fij=2
                               @vLIN,mCLN+41 Say "Var"  Font "&mLetAri",9 Style "NT" Size 1,4
                     ENDCASE
                     @vLIN,mCLN+46.5 Say F9220TOT     Font "&mLetAri",9 Style "NT" Pict "999,999.9999" Size 1,17
                     @vLIN,mCLN+64.5 Say F9220POR     Font "&mLetAri",9 Style "NT" Pict "99.999"       Size 1,9
                     @vLIN,mCLN+75.0 Say F9220CPT     Font "&mLetAri",9 Style "NT" Size 1,48 Pict "@S50"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F9220COD      Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+5.5 Say F9220DES      Font "&mLetSwi",9 Style "NT" Size 1,23 Pict "@S25"
                     DO CASE
                          CASE f9220fij=1
                               @vLIN,mCLN+41 Say "Fijo" Font "&mLetSwi",9 Style "NT"
                          CASE f9220fij=2
                               @vLIN,mCLN+41 Say "Var"  Font "&mLetSwi",9 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+50 Say F9220TOT       Font "&mLetSwi",9 Style "NT" Pict "999,999.9999" Size 1,13
                     @vLIN,mCLN+64 Say F9220POR       Font "&mLetSwi",9 Style "NT" Pict "99.999"       Size 1,7
                     @vLIN,mCLN+72 Say F9220CPT       Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9220a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+25.4 TO vcBi
 STORE mfI0+muFi+3 TO mmF2
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-13,mCO0+mUCO-87 to mFI0+30,mCO0+mUCO+28 Font "&mLetCou",13 Style "NQ" Prompt Field F9220DES+": "+F9220COD Scroll Color Scheme 3 Footer "CONCEPTOS DE IMPORTACIÓN"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Conceptos de Importación"
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
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 @ mfI0+00.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+00.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+2 Say "CÓDIGO:"              Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+2 Say "NOMBRE"               Font "&mLetAri",10 Style "NT"
 @mFI0+07.5,mCO0+2 Say "MONTO US$"            Font "&mLetAri",10 Style "NT"
 @mFI0+09.5,mCO0+2 Say "PORCENTAJE"           Font "&mLetAri",10 Style "NT"
 @mFI0+11.5,mCO0+2 Say "CONCEPTOS VINCULADOS" Font "&mLetAri",10 Style "NT"
 DO coL_fonaz
 @mFI0+05.5,mCO0+58 Say "Si es Fijo aparece automaticámente en Datos Adic." Font "&mLetAri",9 Style "NT"
 @mFI0+07.5,mCO0+58 Say "Si es <> de 0 entonces aparece x defecto"          Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+58 Say "Si es <> de 0 entonces aparece x defecto"          Font "&mLetAri",9 Style "NT"
 DO coL_fonve
 @mFI0+11.5,mCO0+88 Say "Variable Total Compra: TOT"                        Font "&mLetAri",8 Style "NT"
 @mFI0+13.0,mCO0+88 Say "Signos: + - / *"                                   Font "&mLetAri",8 Style "NT"
 DO coLbln
 @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,03.3 Pict "999"         Color ,&mColBlN
 @mFI0+07.5,mCO0+37 Get  vTOT Font "&mLetAri",9  Style "NQ" Size 1,16.0 Pict "999999.9999" Color ,&mColBlN
 @mFI0+09.5,mCO0+37 Get  vPOR Font "&mLetAri",9  Style "NQ" Size 1,09.0 Pict "99.999"      Color ,&mColBlN
 @mFI0+03.5,mCO0+37 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+11.5,mCO0+37 Edit vCPT Font "&mLetAri",9  Style "NQ" Size 1,50,50
 @mFI0+05.5,mCO0+37 Get  vFIJ Font "&mLetAri",9  Style "NQ" Function "*RHT Fijo;Variable" Default vFIJ
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9220a
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+5.321 .AND. mfIl<=mfI0+6.70 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+34.5 .AND. mcCc<=mcO0+42.9 .AND. vfIj<>1
           STORE 1 TO vfIj
           @mFI0+5.5,mCO0+37 Get vFIJ Font "&mLetAri",9 Style "NQ" Function "*RHT Fijo;Variable" Default vFIJ
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.321 .AND. mfIl<=mfI0+6.70 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+42.9 .AND. mcCc<=mcO0+56.1 .AND. vfIj<>2
           STORE 2 TO vfIj
           @mFI0+5.5,mCO0+37 Get vFIJ Font "&mLetAri",9 Style "NQ" Function "*RHT Fijo;Variable" Default vFIJ
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+25.1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+1.7 .AND. mcCc<=mcO0+109.5
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+7.321 .AND. mfIl<=mfI0+8.678 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+1.7 .AND. mcCc<=mcO0+52.1
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+9.393 .AND. mfIl<=mfI0+10.607 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+1.7 .AND. mcCc<=mcO0+109.5
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+11.464 .AND. mfIl<=mfI0+12.678 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+1.7 .AND. mcCc<=mcO0+75.3
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9220a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 1 SAY  ;
   "Los Conceptos Fijos se usan en Datos Adicionales de la Importación.        "
 @ pfIl+01, 1 SAY  ;
   "- Cuando el Cpto. es Fijo, aparece automáticamente.                        "
 @ pfIl+02, 1 SAY  ;
   "- Cuando el Cpto. es Variable, se puede escoger o dejar de hacerlo.        "
 @ pfIl+03, 1 SAY  ;
   "- Cuando el Monto es <> 0, aparece x defecto, con la posibilidad de modi-  "
 @ pfIl+04, 1 SAY  ;
   "  ficarse.                                                                 "
 @ pfIl+05, 1 SAY  ;
   "- Cuando el Porcentaje es <> 0, aparece x defecto,  con la posibilidad de  "
 @ pfIl+06, 1 SAY  ;
   "  modificarse. En este caso los Cptos.Vinculados no pueden estar vacíos.   "
 @ pfIl+07, 1 SAY  ;
   "- El Monto y el Porcentaje no pueden estar llenos al mismo tiempo.         "
 @ pfIl+08, 1 SAY  ;
   "- Los Conceptos vinculados hacen que se sumen o resten los montos de       "
 @ pfIl+09, 1 SAY  ;
   "  estos y si hay un porcentaje se saca el porcentaje de este. Para poner   "
 @ pfIl+10, 1 SAY  ;
   "  los Conceptos deben estar en entre corchetes, unidos con los signos + -  "
 @ pfIl+11, 1 SAY "  / o *. La Variable TOT es el monto de la Importación."
 STORE pfIl+12 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vdEs, vfIj, vpOr, vtOt, vcPt, vtB1,  ;
         vlIn, vpAg
 RELEASE vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
